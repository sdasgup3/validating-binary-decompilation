; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @intrapred_luma_16x16(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -712
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 704
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
  %39 = add i64 %7, -12
  %40 = add i64 %10, 17
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i243 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %44, i64* %RAX.i243, align 8
  %45 = add i64 %44, 6424
  %46 = add i64 %43, 15
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %45 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -184
  %51 = add i64 %43, 22
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i64*
  store i64 %48, i64* %52, align 8
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %54, i64* %RAX.i243, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1277 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %56 = add i64 %54, 12
  %57 = add i64 %53, 11
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %RCX.i1277, align 8
  %ECX.i1273 = bitcast %union.anon* %55 to i32*
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -188
  %63 = add i64 %53, 17
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i32*
  store i32 %59, i32* %64, align 4
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -148
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 10
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1266 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %RDI.i1258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RDX.i1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8.i1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %EAX.i1233 = bitcast %union.anon* %42 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4039c3

block_.L_4039c3:                                  ; preds = %block_4039d0, %entry
  %71 = phi i64 [ %199, %block_4039d0 ], [ %.pre, %entry ]
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -148
  %74 = add i64 %71, 7
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, -17
  %78 = icmp ult i32 %76, 17
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %14, align 1
  %80 = and i32 %77, 255
  %81 = tail call i32 @llvm.ctpop.i32(i32 %80)
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, i8* %21, align 1
  %85 = xor i32 %76, 16
  %86 = xor i32 %85, %77
  %87 = lshr i32 %86, 4
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  store i8 %89, i8* %26, align 1
  %90 = icmp eq i32 %77, 0
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %29, align 1
  %92 = lshr i32 %77, 31
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %32, align 1
  %94 = lshr i32 %76, 31
  %95 = xor i32 %92, %94
  %96 = add nuw nsw i32 %95, %94
  %97 = icmp eq i32 %96, 2
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %38, align 1
  %99 = icmp ne i8 %93, 0
  %100 = xor i1 %99, %97
  %.v114 = select i1 %100, i64 13, i64 87
  %101 = add i64 %71, %.v114
  store i64 %101, i64* %3, align 8
  br i1 %100, label %block_4039d0, label %block_.L_403a1a

block_4039d0:                                     ; preds = %block_.L_4039c3
  store i64 4294967295, i64* %RSI.i1266, align 8
  store i64 1, i64* %RCX.i1277, align 8
  %102 = add i64 %72, -624
  store i64 %102, i64* %RAX.i243, align 8
  %103 = add i64 %72, -188
  %104 = add i64 %101, 23
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  store i64 %107, i64* %RDI.i1258, align 8
  %108 = add i64 %101, 29
  store i64 %108, i64* %3, align 8
  %109 = load i32, i32* %75, align 4
  %110 = add i32 %109, -1
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RDX.i1255, align 8
  %112 = icmp eq i32 %109, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %14, align 1
  %114 = and i32 %110, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %21, align 1
  %119 = xor i32 %110, %109
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  store i8 %122, i8* %26, align 1
  %123 = icmp eq i32 %110, 0
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %29, align 1
  %125 = lshr i32 %110, 31
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %32, align 1
  %127 = lshr i32 %109, 31
  %128 = xor i32 %125, %127
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %38, align 1
  %132 = add i64 %101, 39
  store i64 %132, i64* %3, align 8
  %133 = load i32, i32* %75, align 4
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %134, 24
  %136 = lshr i64 %135, 63
  %137 = add i64 %135, %102
  store i64 %137, i64* %RAX.i243, align 8
  %138 = icmp ult i64 %137, %102
  %139 = icmp ult i64 %137, %135
  %140 = or i1 %138, %139
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %14, align 1
  %142 = trunc i64 %137 to i32
  %143 = and i32 %142, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143)
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %21, align 1
  %148 = xor i64 %135, %102
  %149 = xor i64 %148, %137
  %150 = lshr i64 %149, 4
  %151 = trunc i64 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %26, align 1
  %153 = icmp eq i64 %137, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %29, align 1
  %155 = lshr i64 %137, 63
  %156 = trunc i64 %155 to i8
  store i8 %156, i8* %32, align 1
  %157 = lshr i64 %102, 63
  %158 = xor i64 %155, %157
  %159 = xor i64 %155, %136
  %160 = add nuw nsw i64 %158, %159
  %161 = icmp eq i64 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %38, align 1
  store i64 %137, i64* %R8.i1251, align 8
  %163 = add i64 %101, 292832
  %164 = add i64 %101, 54
  %165 = load i64, i64* %6, align 8
  %166 = add i64 %165, -8
  %167 = inttoptr i64 %166 to i64*
  store i64 %164, i64* %167, align 8
  store i64 %166, i64* %6, align 8
  store i64 %163, i64* %3, align 8
  %call2_403a01 = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %163, %struct.Memory* %2)
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -148
  %170 = load i64, i64* %3, align 8
  %171 = add i64 %170, 6
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = add i32 %173, 1
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX.i243, align 8
  %176 = icmp eq i32 %173, -1
  %177 = icmp eq i32 %174, 0
  %178 = or i1 %176, %177
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %14, align 1
  %180 = and i32 %174, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180)
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %21, align 1
  %185 = xor i32 %174, %173
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  store i8 %188, i8* %26, align 1
  %189 = zext i1 %177 to i8
  store i8 %189, i8* %29, align 1
  %190 = lshr i32 %174, 31
  %191 = trunc i32 %190 to i8
  store i8 %191, i8* %32, align 1
  %192 = lshr i32 %173, 31
  %193 = xor i32 %190, %192
  %194 = add nuw nsw i32 %193, %190
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %38, align 1
  %197 = add i64 %170, 15
  store i64 %197, i64* %3, align 8
  store i32 %174, i32* %172, align 4
  %198 = load i64, i64* %3, align 8
  %199 = add i64 %198, -82
  store i64 %199, i64* %3, align 8
  br label %block_.L_4039c3

block_.L_403a1a:                                  ; preds = %block_.L_4039c3
  %ESI.i1229 = bitcast %union.anon* %70 to i32*
  store i64 0, i64* %RSI.i1266, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1227 = getelementptr inbounds %union.anon, %union.anon* %200, i64 0, i32 0
  store i64 4294967295, i64* %RDX.i1227, align 8
  store i64 1, i64* %RCX.i1277, align 8
  %201 = add i64 %72, -216
  store i64 %201, i64* %R8.i1251, align 8
  %RDI.i1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %202 = add i64 %72, -188
  %203 = add i64 %101, 25
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = zext i32 %205 to i64
  store i64 %206, i64* %RDI.i1219, align 8
  %207 = add i64 %101, 292758
  %208 = add i64 %101, 30
  %209 = load i64, i64* %6, align 8
  %210 = add i64 %209, -8
  %211 = inttoptr i64 %210 to i64*
  store i64 %208, i64* %211, align 8
  store i64 %210, i64* %6, align 8
  store i64 %207, i64* %3, align 8
  %call2_403a33 = tail call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* nonnull %0, i64 %207, %struct.Memory* %2)
  %212 = load i64, i64* %3, align 8
  %213 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %213, i64* %R8.i1251, align 8
  %214 = add i64 %213, 216
  %215 = add i64 %212, 16
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i32*
  %217 = load i32, i32* %216, align 4
  store i8 0, i8* %14, align 1
  %218 = and i32 %217, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218)
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %223 = icmp eq i32 %217, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %29, align 1
  %225 = lshr i32 %217, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v115 = select i1 %223, i64 22, i64 63
  %227 = add i64 %212, %.v115
  store i64 %227, i64* %3, align 8
  %228 = load i64, i64* %RBP.i, align 8
  %229 = add i64 %228, -216
  br i1 %223, label %block_403a4e, label %block_.L_403a77

block_403a4e:                                     ; preds = %block_.L_403a1a
  %230 = add i64 %227, 6
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i32*
  %232 = load i32, i32* %231, align 4
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RAX.i243, align 8
  %234 = add i64 %228, -628
  %235 = add i64 %227, 12
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i32*
  store i32 %232, i32* %236, align 4
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -600
  %239 = load i64, i64* %3, align 8
  %240 = add i64 %239, 6
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %238 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RAX.i243, align 8
  %244 = add i64 %237, -632
  %245 = add i64 %239, 12
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i32*
  store i32 %242, i32* %246, align 4
  %247 = load i64, i64* %RBP.i, align 8
  %248 = add i64 %247, -624
  %249 = load i64, i64* %3, align 8
  %250 = add i64 %249, 6
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %248 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RAX.i243, align 8
  %254 = add i64 %247, -636
  %255 = add i64 %249, 12
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 %252, i32* %256, align 4
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 321
  store i64 %258, i64* %3, align 8
  br label %block_.L_403bb3

block_.L_403a77:                                  ; preds = %block_.L_403a1a
  %259 = add i64 %227, 7
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %229 to i32*
  %261 = load i32, i32* %260, align 4
  store i8 0, i8* %14, align 1
  %262 = and i32 %261, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %267 = icmp eq i32 %261, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %29, align 1
  %269 = lshr i32 %261, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v116 = select i1 %267, i64 49, i64 13
  %271 = add i64 %227, %.v116
  store i64 %271, i64* %3, align 8
  br i1 %267, label %block_.L_403aa8, label %block_403a84

block_403a84:                                     ; preds = %block_.L_403a77
  %272 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %272, i64* %RAX.i243, align 8
  %273 = add i64 %272, 71784
  %274 = add i64 %271, 15
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RAX.i243, align 8
  %277 = add i64 %228, -212
  %278 = add i64 %271, 22
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  store i64 %281, i64* %RCX.i1277, align 8
  %282 = shl nsw i64 %281, 2
  %283 = add i64 %282, %276
  %284 = add i64 %271, 25
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RDX.i1227, align 8
  %288 = add i64 %228, -640
  %289 = add i64 %271, 31
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  store i32 %286, i32* %290, align 4
  %291 = load i64, i64* %3, align 8
  %292 = add i64 %291, 18
  br label %block_.L_403ab5

block_.L_403aa8:                                  ; preds = %block_.L_403a77
  store i64 0, i64* %RAX.i243, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %293 = add i64 %228, -640
  %294 = add i64 %271, 8
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i32*
  store i32 0, i32* %295, align 4
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, 5
  store i64 %297, i64* %3, align 8
  br label %block_.L_403ab5

block_.L_403ab5:                                  ; preds = %block_.L_403aa8, %block_403a84
  %storemerge = phi i64 [ %292, %block_403a84 ], [ %297, %block_.L_403aa8 ]
  %298 = load i64, i64* %RBP.i, align 8
  %299 = add i64 %298, -640
  %300 = add i64 %storemerge, 6
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RAX.i243, align 8
  %304 = add i64 %298, -628
  %305 = add i64 %storemerge, 12
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i32*
  store i32 %302, i32* %306, align 4
  %307 = load i64, i64* %RBP.i, align 8
  %308 = add i64 %307, -148
  %309 = load i64, i64* %3, align 8
  %310 = add i64 %309, 10
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %308 to i32*
  store i32 1, i32* %311, align 4
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -632
  %314 = load i64, i64* %3, align 8
  %315 = add i64 %314, 10
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to i32*
  store i32 1, i32* %316, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_403ad5

block_.L_403ad5:                                  ; preds = %block_.L_403b43, %block_.L_403ab5
  %317 = phi i64 [ %503, %block_.L_403b43 ], [ %.pre60, %block_.L_403ab5 ]
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -148
  %320 = add i64 %317, 7
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = add i32 %322, -17
  %324 = icmp ult i32 %322, 17
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %14, align 1
  %326 = and i32 %323, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %21, align 1
  %331 = xor i32 %322, 16
  %332 = xor i32 %331, %323
  %333 = lshr i32 %332, 4
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  store i8 %335, i8* %26, align 1
  %336 = icmp eq i32 %323, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %29, align 1
  %338 = lshr i32 %323, 31
  %339 = trunc i32 %338 to i8
  store i8 %339, i8* %32, align 1
  %340 = lshr i32 %322, 31
  %341 = xor i32 %338, %340
  %342 = add nuw nsw i32 %341, %340
  %343 = icmp eq i32 %342, 2
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %38, align 1
  %345 = icmp ne i8 %339, 0
  %346 = xor i1 %345, %343
  %.v113 = select i1 %346, i64 13, i64 148
  %347 = add i64 %317, %.v113
  %348 = add i64 %318, -624
  %349 = add i64 %347, 7
  store i64 %349, i64* %3, align 8
  br i1 %346, label %block_403ae2, label %block_.L_403b69

block_403ae2:                                     ; preds = %block_.L_403ad5
  store i64 %348, i64* %RAX.i243, align 8
  %350 = add i64 %347, 14
  store i64 %350, i64* %3, align 8
  %351 = load i32, i32* %321, align 4
  %352 = sext i32 %351 to i64
  %353 = mul nsw i64 %352, 24
  store i64 %353, i64* %RCX.i1277, align 8
  %354 = lshr i64 %353, 63
  %355 = add i64 %353, %348
  store i64 %355, i64* %RAX.i243, align 8
  %356 = icmp ult i64 %355, %348
  %357 = icmp ult i64 %355, %353
  %358 = or i1 %356, %357
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %14, align 1
  %360 = trunc i64 %355 to i32
  %361 = and i32 %360, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361)
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %21, align 1
  %366 = xor i64 %353, %348
  %367 = xor i64 %366, %355
  %368 = lshr i64 %367, 4
  %369 = trunc i64 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %26, align 1
  %371 = icmp eq i64 %355, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %29, align 1
  %373 = lshr i64 %355, 63
  %374 = trunc i64 %373 to i8
  store i8 %374, i8* %32, align 1
  %375 = lshr i64 %348, 63
  %376 = xor i64 %373, %375
  %377 = xor i64 %373, %354
  %378 = add nuw nsw i64 %376, %377
  %379 = icmp eq i64 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %38, align 1
  %381 = inttoptr i64 %355 to i32*
  %382 = add i64 %347, 24
  store i64 %382, i64* %3, align 8
  %383 = load i32, i32* %381, align 4
  store i8 0, i8* %14, align 1
  %384 = and i32 %383, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384)
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %389 = icmp eq i32 %383, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %29, align 1
  %391 = lshr i32 %383, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v140 = select i1 %389, i64 84, i64 30
  %393 = add i64 %347, %.v140
  store i64 %393, i64* %3, align 8
  br i1 %389, label %block_.L_403b36, label %block_403b00

block_403b00:                                     ; preds = %block_403ae2
  store i64 %348, i64* %RAX.i243, align 8
  %394 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %394, i64* %RCX.i1277, align 8
  %395 = add i64 %394, 71784
  %396 = add i64 %393, 22
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %RCX.i1277, align 8
  %399 = add i64 %393, 29
  store i64 %399, i64* %3, align 8
  %400 = load i32, i32* %321, align 4
  %401 = sext i32 %400 to i64
  %402 = mul nsw i64 %401, 24
  store i64 %402, i64* %RDX.i1227, align 8
  %403 = lshr i64 %402, 63
  %404 = add i64 %402, %348
  store i64 %404, i64* %RAX.i243, align 8
  %405 = icmp ult i64 %404, %348
  %406 = icmp ult i64 %404, %402
  %407 = or i1 %405, %406
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %14, align 1
  %409 = trunc i64 %404 to i32
  %410 = and i32 %409, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %21, align 1
  %415 = xor i64 %402, %348
  %416 = xor i64 %415, %404
  %417 = lshr i64 %416, 4
  %418 = trunc i64 %417 to i8
  %419 = and i8 %418, 1
  store i8 %419, i8* %26, align 1
  %420 = icmp eq i64 %404, 0
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %29, align 1
  %422 = lshr i64 %404, 63
  %423 = trunc i64 %422 to i8
  store i8 %423, i8* %32, align 1
  %424 = xor i64 %422, %375
  %425 = xor i64 %422, %403
  %426 = add nuw nsw i64 %424, %425
  %427 = icmp eq i64 %426, 2
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %38, align 1
  %429 = add i64 %404, 4
  %430 = add i64 %393, 40
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %429 to i32*
  %432 = load i32, i32* %431, align 4
  %433 = sext i32 %432 to i64
  store i64 %433, i64* %RAX.i243, align 8
  %434 = shl nsw i64 %433, 2
  %435 = add i64 %434, %398
  %436 = add i64 %393, 43
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to i32*
  %438 = load i32, i32* %437, align 4
  %439 = zext i32 %438 to i64
  store i64 %439, i64* %RSI.i1266, align 8
  %440 = add i64 %318, -644
  %441 = add i64 %393, 49
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i32*
  store i32 %438, i32* %442, align 4
  %443 = load i64, i64* %3, align 8
  %444 = add i64 %443, 18
  br label %block_.L_403b43

block_.L_403b36:                                  ; preds = %block_403ae2
  store i64 0, i64* %RAX.i243, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %445 = add i64 %318, -644
  %446 = add i64 %393, 8
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i32*
  store i32 0, i32* %447, align 4
  %448 = load i64, i64* %3, align 8
  %449 = add i64 %448, 5
  store i64 %449, i64* %3, align 8
  br label %block_.L_403b43

block_.L_403b43:                                  ; preds = %block_.L_403b36, %block_403b00
  %storemerge37 = phi i64 [ %444, %block_403b00 ], [ %449, %block_.L_403b36 ]
  %450 = load i64, i64* %RBP.i, align 8
  %451 = add i64 %450, -644
  %452 = add i64 %storemerge37, 6
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RAX.i243, align 8
  %456 = add i64 %450, -632
  %457 = add i64 %storemerge37, 12
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = and i32 %459, %454
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RAX.i243, align 8
  store i8 0, i8* %14, align 1
  %462 = and i32 %460, 255
  %463 = tail call i32 @llvm.ctpop.i32(i32 %462)
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  %466 = xor i8 %465, 1
  store i8 %466, i8* %21, align 1
  %467 = icmp eq i32 %460, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %29, align 1
  %469 = lshr i32 %460, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %471 = add i64 %storemerge37, 18
  store i64 %471, i64* %3, align 8
  store i32 %460, i32* %458, align 4
  %472 = load i64, i64* %RBP.i, align 8
  %473 = add i64 %472, -148
  %474 = load i64, i64* %3, align 8
  %475 = add i64 %474, 6
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %473 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = add i32 %477, 1
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RAX.i243, align 8
  %480 = icmp eq i32 %477, -1
  %481 = icmp eq i32 %478, 0
  %482 = or i1 %480, %481
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %14, align 1
  %484 = and i32 %478, 255
  %485 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %486 = trunc i32 %485 to i8
  %487 = and i8 %486, 1
  %488 = xor i8 %487, 1
  store i8 %488, i8* %21, align 1
  %489 = xor i32 %478, %477
  %490 = lshr i32 %489, 4
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  store i8 %492, i8* %26, align 1
  %493 = zext i1 %481 to i8
  store i8 %493, i8* %29, align 1
  %494 = lshr i32 %478, 31
  %495 = trunc i32 %494 to i8
  store i8 %495, i8* %32, align 1
  %496 = lshr i32 %477, 31
  %497 = xor i32 %494, %496
  %498 = add nuw nsw i32 %497, %494
  %499 = icmp eq i32 %498, 2
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %38, align 1
  %501 = add i64 %474, 15
  store i64 %501, i64* %3, align 8
  store i32 %478, i32* %476, align 4
  %502 = load i64, i64* %3, align 8
  %503 = add i64 %502, -143
  store i64 %503, i64* %3, align 8
  br label %block_.L_403ad5

block_.L_403b69:                                  ; preds = %block_.L_403ad5
  %504 = inttoptr i64 %348 to i32*
  %505 = load i32, i32* %504, align 4
  store i8 0, i8* %14, align 1
  %506 = and i32 %505, 255
  %507 = tail call i32 @llvm.ctpop.i32(i32 %506)
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  store i8 %510, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %511 = icmp eq i32 %505, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %29, align 1
  %513 = lshr i32 %505, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v117 = select i1 %511, i64 49, i64 13
  %515 = add i64 %347, %.v117
  store i64 %515, i64* %3, align 8
  br i1 %511, label %block_.L_403b9a, label %block_403b76

block_403b76:                                     ; preds = %block_.L_403b69
  %516 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %516, i64* %RAX.i243, align 8
  %517 = add i64 %516, 71784
  %518 = add i64 %515, 15
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RAX.i243, align 8
  %521 = add i64 %318, -620
  %522 = add i64 %515, 22
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i32*
  %524 = load i32, i32* %523, align 4
  %525 = sext i32 %524 to i64
  store i64 %525, i64* %RCX.i1277, align 8
  %526 = shl nsw i64 %525, 2
  %527 = add i64 %526, %520
  %528 = add i64 %515, 25
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = zext i32 %530 to i64
  store i64 %531, i64* %RDX.i1227, align 8
  %532 = add i64 %318, -648
  %533 = add i64 %515, 31
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  store i32 %530, i32* %534, align 4
  %535 = load i64, i64* %3, align 8
  %536 = add i64 %535, 18
  br label %block_.L_403ba7

block_.L_403b9a:                                  ; preds = %block_.L_403b69
  store i64 0, i64* %RAX.i243, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %537 = add i64 %318, -648
  %538 = add i64 %515, 8
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  store i32 0, i32* %539, align 4
  %540 = load i64, i64* %3, align 8
  %541 = add i64 %540, 5
  store i64 %541, i64* %3, align 8
  br label %block_.L_403ba7

block_.L_403ba7:                                  ; preds = %block_.L_403b9a, %block_403b76
  %storemerge38 = phi i64 [ %536, %block_403b76 ], [ %541, %block_.L_403b9a ]
  %542 = load i64, i64* %RBP.i, align 8
  %543 = add i64 %542, -648
  %544 = add i64 %storemerge38, 6
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i32*
  %546 = load i32, i32* %545, align 4
  %547 = zext i32 %546 to i64
  store i64 %547, i64* %RAX.i243, align 8
  %548 = add i64 %542, -636
  %549 = add i64 %storemerge38, 12
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i32*
  store i32 %546, i32* %550, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_403bb3

block_.L_403bb3:                                  ; preds = %block_.L_403ba7, %block_403a4e
  %551 = phi i64 [ %.pre61, %block_.L_403ba7 ], [ %258, %block_403a4e ]
  %552 = load i64, i64* %RBP.i, align 8
  %553 = add i64 %552, -12
  %554 = add i64 %551, 7
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  store i32 0, i32* %555, align 4
  %556 = load i64, i64* %RBP.i, align 8
  %557 = add i64 %556, -8
  %558 = load i64, i64* %3, align 8
  %559 = add i64 %558, 7
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %557 to i32*
  store i32 0, i32* %560, align 4
  %561 = load i64, i64* %RBP.i, align 8
  %562 = add i64 %561, -148
  %563 = load i64, i64* %3, align 8
  %564 = add i64 %563, 10
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %562 to i32*
  store i32 0, i32* %565, align 4
  %EDX.i1004 = bitcast %union.anon* %200 to i32*
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_403bcb

block_.L_403bcb:                                  ; preds = %block_.L_403c6a, %block_.L_403bb3
  %566 = phi i64 [ %879, %block_.L_403c6a ], [ %.pre62, %block_.L_403bb3 ]
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -148
  %569 = add i64 %566, 7
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = add i32 %571, -16
  %573 = icmp ult i32 %571, 16
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %14, align 1
  %575 = and i32 %572, 255
  %576 = tail call i32 @llvm.ctpop.i32(i32 %575)
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  %579 = xor i8 %578, 1
  store i8 %579, i8* %21, align 1
  %580 = xor i32 %571, 16
  %581 = xor i32 %580, %572
  %582 = lshr i32 %581, 4
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  store i8 %584, i8* %26, align 1
  %585 = icmp eq i32 %572, 0
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %29, align 1
  %587 = lshr i32 %572, 31
  %588 = trunc i32 %587 to i8
  store i8 %588, i8* %32, align 1
  %589 = lshr i32 %571, 31
  %590 = xor i32 %587, %589
  %591 = add nuw nsw i32 %590, %589
  %592 = icmp eq i32 %591, 2
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %38, align 1
  %594 = icmp ne i8 %588, 0
  %595 = xor i1 %594, %592
  %.v = select i1 %595, i64 13, i64 184
  %596 = add i64 %566, %.v
  %597 = add i64 %567, -628
  %598 = add i64 %596, 7
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  store i8 0, i8* %14, align 1
  %601 = and i32 %600, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601)
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %606 = icmp eq i32 %600, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %29, align 1
  %608 = lshr i32 %600, 31
  %609 = trunc i32 %608 to i8
  store i8 %609, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br i1 %595, label %block_403bd8, label %block_.L_403c83

block_403bd8:                                     ; preds = %block_.L_403bcb
  %.v138 = select i1 %606, i64 56, i64 13
  %610 = add i64 %596, %.v138
  store i64 %610, i64* %3, align 8
  br i1 %606, label %block_.L_403c10, label %block_403be5

block_403be5:                                     ; preds = %block_403bd8
  %611 = add i64 %567, -184
  %612 = add i64 %610, 7
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %RAX.i243, align 8
  %615 = add i64 %567, -196
  %616 = add i64 %610, 14
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = sext i32 %618 to i64
  store i64 %619, i64* %RCX.i1277, align 8
  %620 = shl nsw i64 %619, 3
  %621 = add i64 %620, %614
  %622 = add i64 %610, 18
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i64*
  %624 = load i64, i64* %623, align 8
  store i64 %624, i64* %RAX.i243, align 8
  %625 = add i64 %567, -200
  %626 = add i64 %610, 24
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i32*
  %628 = load i32, i32* %627, align 4
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RDX.i1227, align 8
  %630 = add i64 %610, 30
  store i64 %630, i64* %3, align 8
  %631 = load i32, i32* %570, align 4
  %632 = add i32 %631, %628
  %633 = zext i32 %632 to i64
  store i64 %633, i64* %RDX.i1227, align 8
  %634 = icmp ult i32 %632, %628
  %635 = icmp ult i32 %632, %631
  %636 = or i1 %634, %635
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %14, align 1
  %638 = and i32 %632, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %21, align 1
  %643 = xor i32 %631, %628
  %644 = xor i32 %643, %632
  %645 = lshr i32 %644, 4
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  store i8 %647, i8* %26, align 1
  %648 = icmp eq i32 %632, 0
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %29, align 1
  %650 = lshr i32 %632, 31
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* %32, align 1
  %652 = lshr i32 %628, 31
  %653 = lshr i32 %631, 31
  %654 = xor i32 %650, %652
  %655 = xor i32 %650, %653
  %656 = add nuw nsw i32 %654, %655
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %38, align 1
  %659 = sext i32 %632 to i64
  store i64 %659, i64* %RCX.i1277, align 8
  %660 = shl nsw i64 %659, 1
  %661 = add i64 %624, %660
  %662 = add i64 %610, 37
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i16*
  %664 = load i16, i16* %663, align 2
  %665 = zext i16 %664 to i64
  store i64 %665, i64* %RDX.i1227, align 8
  %666 = add i64 %567, -8
  %667 = add i64 %610, 40
  store i64 %667, i64* %3, align 8
  %668 = zext i16 %664 to i32
  %669 = inttoptr i64 %666 to i32*
  %670 = load i32, i32* %669, align 4
  %671 = add i32 %670, %668
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RDX.i1227, align 8
  %673 = icmp ult i32 %671, %668
  %674 = icmp ult i32 %671, %670
  %675 = or i1 %673, %674
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %14, align 1
  %677 = and i32 %671, 255
  %678 = tail call i32 @llvm.ctpop.i32(i32 %677)
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = xor i8 %680, 1
  store i8 %681, i8* %21, align 1
  %682 = xor i32 %670, %668
  %683 = xor i32 %682, %671
  %684 = lshr i32 %683, 4
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %26, align 1
  %687 = icmp eq i32 %671, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %29, align 1
  %689 = lshr i32 %671, 31
  %690 = trunc i32 %689 to i8
  store i8 %690, i8* %32, align 1
  %691 = lshr i32 %670, 31
  %692 = xor i32 %689, %691
  %693 = add nuw nsw i32 %692, %689
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %38, align 1
  %696 = load i64, i64* %RBP.i, align 8
  %697 = add i64 %696, -8
  %698 = add i64 %610, 43
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  store i32 %671, i32* %699, align 4
  %.pre106 = load i64, i64* %RBP.i, align 8
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_403c10

block_.L_403c10:                                  ; preds = %block_403be5, %block_403bd8
  %700 = phi i64 [ %.pre107, %block_403be5 ], [ %610, %block_403bd8 ]
  %701 = phi i64 [ %.pre106, %block_403be5 ], [ %567, %block_403bd8 ]
  %702 = add i64 %701, -632
  %703 = add i64 %700, 7
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i32*
  %705 = load i32, i32* %704, align 4
  store i8 0, i8* %14, align 1
  %706 = and i32 %705, 255
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706)
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %711 = icmp eq i32 %705, 0
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %29, align 1
  %713 = lshr i32 %705, 31
  %714 = trunc i32 %713 to i8
  store i8 %714, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v139 = select i1 %711, i64 90, i64 13
  %715 = add i64 %700, %.v139
  store i64 %715, i64* %3, align 8
  br i1 %711, label %block_.L_403c6a, label %block_403c1d

block_403c1d:                                     ; preds = %block_.L_403c10
  %716 = add i64 %701, -624
  store i64 %716, i64* %RAX.i243, align 8
  %717 = add i64 %701, -184
  %718 = add i64 %715, 14
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i64*
  %720 = load i64, i64* %719, align 8
  store i64 %720, i64* %RCX.i1277, align 8
  %721 = add i64 %701, -148
  %722 = add i64 %715, 20
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = add i32 %724, 1
  %726 = zext i32 %725 to i64
  store i64 %726, i64* %RDX.i1227, align 8
  %727 = sext i32 %725 to i64
  %728 = mul nsw i64 %727, 24
  store i64 %728, i64* %RSI.i1266, align 8
  %729 = lshr i64 %728, 63
  %730 = add i64 %728, %716
  store i64 %730, i64* %RDI.i1219, align 8
  %731 = icmp ult i64 %730, %716
  %732 = icmp ult i64 %730, %728
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %14, align 1
  %735 = trunc i64 %730 to i32
  %736 = and i32 %735, 255
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736)
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %21, align 1
  %741 = xor i64 %728, %716
  %742 = xor i64 %741, %730
  %743 = lshr i64 %742, 4
  %744 = trunc i64 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %26, align 1
  %746 = icmp eq i64 %730, 0
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %29, align 1
  %748 = lshr i64 %730, 63
  %749 = trunc i64 %748 to i8
  store i8 %749, i8* %32, align 1
  %750 = lshr i64 %716, 63
  %751 = xor i64 %748, %750
  %752 = xor i64 %748, %729
  %753 = add nuw nsw i64 %751, %752
  %754 = icmp eq i64 %753, 2
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %38, align 1
  %756 = add i64 %730, 20
  %757 = add i64 %715, 40
  store i64 %757, i64* %3, align 8
  %758 = inttoptr i64 %756 to i32*
  %759 = load i32, i32* %758, align 4
  %760 = sext i32 %759 to i64
  store i64 %760, i64* %RSI.i1266, align 8
  %761 = load i64, i64* %RCX.i1277, align 8
  %762 = shl nsw i64 %760, 3
  %763 = add i64 %762, %761
  %764 = add i64 %715, 44
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i64*
  %766 = load i64, i64* %765, align 8
  store i64 %766, i64* %RCX.i1277, align 8
  %767 = load i64, i64* %RBP.i, align 8
  %768 = add i64 %767, -148
  %769 = add i64 %715, 50
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i32*
  %771 = load i32, i32* %770, align 4
  %772 = add i32 %771, 1
  %773 = zext i32 %772 to i64
  store i64 %773, i64* %RDX.i1227, align 8
  %774 = sext i32 %772 to i64
  %775 = mul nsw i64 %774, 24
  store i64 %775, i64* %RSI.i1266, align 8
  %776 = lshr i64 %775, 63
  %777 = load i64, i64* %RAX.i243, align 8
  %778 = add i64 %775, %777
  store i64 %778, i64* %RAX.i243, align 8
  %779 = icmp ult i64 %778, %777
  %780 = icmp ult i64 %778, %775
  %781 = or i1 %779, %780
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %14, align 1
  %783 = trunc i64 %778 to i32
  %784 = and i32 %783, 255
  %785 = tail call i32 @llvm.ctpop.i32(i32 %784)
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = xor i8 %787, 1
  store i8 %788, i8* %21, align 1
  %789 = xor i64 %775, %777
  %790 = xor i64 %789, %778
  %791 = lshr i64 %790, 4
  %792 = trunc i64 %791 to i8
  %793 = and i8 %792, 1
  store i8 %793, i8* %26, align 1
  %794 = icmp eq i64 %778, 0
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %29, align 1
  %796 = lshr i64 %778, 63
  %797 = trunc i64 %796 to i8
  store i8 %797, i8* %32, align 1
  %798 = lshr i64 %777, 63
  %799 = xor i64 %796, %798
  %800 = xor i64 %796, %776
  %801 = add nuw nsw i64 %799, %800
  %802 = icmp eq i64 %801, 2
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %38, align 1
  %804 = add i64 %778, 16
  %805 = add i64 %715, 67
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = sext i32 %807 to i64
  store i64 %808, i64* %RAX.i243, align 8
  %809 = load i64, i64* %RCX.i1277, align 8
  %810 = shl nsw i64 %808, 1
  %811 = add i64 %810, %809
  %812 = add i64 %715, 71
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i16*
  %814 = load i16, i16* %813, align 2
  %815 = zext i16 %814 to i64
  store i64 %815, i64* %RDX.i1227, align 8
  %816 = load i64, i64* %RBP.i, align 8
  %817 = add i64 %816, -12
  %818 = add i64 %715, 74
  store i64 %818, i64* %3, align 8
  %819 = zext i16 %814 to i32
  %820 = inttoptr i64 %817 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = add i32 %821, %819
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RDX.i1227, align 8
  %824 = icmp ult i32 %822, %819
  %825 = icmp ult i32 %822, %821
  %826 = or i1 %824, %825
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %14, align 1
  %828 = and i32 %822, 255
  %829 = tail call i32 @llvm.ctpop.i32(i32 %828)
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  store i8 %832, i8* %21, align 1
  %833 = xor i32 %821, %819
  %834 = xor i32 %833, %822
  %835 = lshr i32 %834, 4
  %836 = trunc i32 %835 to i8
  %837 = and i8 %836, 1
  store i8 %837, i8* %26, align 1
  %838 = icmp eq i32 %822, 0
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %29, align 1
  %840 = lshr i32 %822, 31
  %841 = trunc i32 %840 to i8
  store i8 %841, i8* %32, align 1
  %842 = lshr i32 %821, 31
  %843 = xor i32 %840, %842
  %844 = add nuw nsw i32 %843, %840
  %845 = icmp eq i32 %844, 2
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %38, align 1
  %847 = add i64 %715, 77
  store i64 %847, i64* %3, align 8
  store i32 %822, i32* %820, align 4
  %.pre108 = load i64, i64* %3, align 8
  %.pre109 = load i64, i64* %RBP.i, align 8
  br label %block_.L_403c6a

block_.L_403c6a:                                  ; preds = %block_403c1d, %block_.L_403c10
  %848 = phi i64 [ %.pre109, %block_403c1d ], [ %701, %block_.L_403c10 ]
  %849 = phi i64 [ %.pre108, %block_403c1d ], [ %715, %block_.L_403c10 ]
  %850 = add i64 %848, -148
  %851 = add i64 %849, 11
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = add i32 %853, 1
  %855 = zext i32 %854 to i64
  store i64 %855, i64* %RAX.i243, align 8
  %856 = icmp eq i32 %853, -1
  %857 = icmp eq i32 %854, 0
  %858 = or i1 %856, %857
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %14, align 1
  %860 = and i32 %854, 255
  %861 = tail call i32 @llvm.ctpop.i32(i32 %860)
  %862 = trunc i32 %861 to i8
  %863 = and i8 %862, 1
  %864 = xor i8 %863, 1
  store i8 %864, i8* %21, align 1
  %865 = xor i32 %854, %853
  %866 = lshr i32 %865, 4
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  store i8 %868, i8* %26, align 1
  %869 = zext i1 %857 to i8
  store i8 %869, i8* %29, align 1
  %870 = lshr i32 %854, 31
  %871 = trunc i32 %870 to i8
  store i8 %871, i8* %32, align 1
  %872 = lshr i32 %853, 31
  %873 = xor i32 %870, %872
  %874 = add nuw nsw i32 %873, %870
  %875 = icmp eq i32 %874, 2
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %38, align 1
  %877 = add i64 %849, 20
  store i64 %877, i64* %3, align 8
  store i32 %854, i32* %852, align 4
  %878 = load i64, i64* %3, align 8
  %879 = add i64 %878, -179
  store i64 %879, i64* %3, align 8
  br label %block_.L_403bcb

block_.L_403c83:                                  ; preds = %block_.L_403bcb
  %.v118 = select i1 %606, i64 60, i64 13
  %880 = add i64 %596, %.v118
  store i64 %880, i64* %3, align 8
  br i1 %606, label %block_.L_403cbf, label %block_403c90

block_403c90:                                     ; preds = %block_.L_403c83
  %881 = add i64 %567, -632
  %882 = add i64 %880, 7
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i32*
  %884 = load i32, i32* %883, align 4
  store i8 0, i8* %14, align 1
  %885 = and i32 %884, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %890 = icmp eq i32 %884, 0
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %29, align 1
  %892 = lshr i32 %884, 31
  %893 = trunc i32 %892 to i8
  store i8 %893, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v119 = select i1 %890, i64 47, i64 13
  %894 = add i64 %880, %.v119
  store i64 %894, i64* %3, align 8
  br i1 %890, label %block_.L_403cbf, label %block_403c9d

block_403c9d:                                     ; preds = %block_403c90
  store i64 32, i64* %RAX.i243, align 8
  %895 = add i64 %567, -8
  %896 = add i64 %894, 8
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  %898 = load i32, i32* %897, align 4
  %899 = zext i32 %898 to i64
  store i64 %899, i64* %RCX.i1277, align 8
  %900 = add i64 %567, -12
  %901 = add i64 %894, 11
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = add i32 %903, %898
  %905 = lshr i32 %904, 31
  %906 = add i32 %904, 16
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RCX.i1277, align 8
  %908 = icmp ugt i32 %904, -17
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %14, align 1
  %910 = and i32 %906, 255
  %911 = tail call i32 @llvm.ctpop.i32(i32 %910)
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = xor i8 %913, 1
  store i8 %914, i8* %21, align 1
  %915 = xor i32 %904, 16
  %916 = xor i32 %915, %906
  %917 = lshr i32 %916, 4
  %918 = trunc i32 %917 to i8
  %919 = and i8 %918, 1
  store i8 %919, i8* %26, align 1
  %920 = icmp eq i32 %906, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %29, align 1
  %922 = lshr i32 %906, 31
  %923 = trunc i32 %922 to i8
  store i8 %923, i8* %32, align 1
  %924 = xor i32 %922, %905
  %925 = add nuw nsw i32 %924, %922
  %926 = icmp eq i32 %925, 2
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %38, align 1
  %928 = add i64 %567, -652
  %929 = add i64 %894, 20
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i32*
  store i32 32, i32* %930, align 4
  %931 = load i32, i32* %ECX.i1273, align 4
  %932 = zext i32 %931 to i64
  %933 = load i64, i64* %3, align 8
  store i64 %932, i64* %RAX.i243, align 8
  %934 = sext i32 %931 to i64
  %935 = lshr i64 %934, 32
  store i64 %935, i64* %RDX.i1255, align 8
  %936 = load i64, i64* %RBP.i, align 8
  %937 = add i64 %936, -652
  %938 = add i64 %933, 9
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = zext i32 %940 to i64
  store i64 %941, i64* %RCX.i1277, align 8
  %942 = add i64 %933, 11
  store i64 %942, i64* %3, align 8
  %943 = sext i32 %940 to i64
  %944 = shl nuw i64 %935, 32
  %945 = or i64 %944, %932
  %946 = sdiv i64 %945, %943
  %947 = shl i64 %946, 32
  %948 = ashr exact i64 %947, 32
  %949 = icmp eq i64 %946, %948
  br i1 %949, label %952, label %950

; <label>:950:                                    ; preds = %block_403c9d
  %951 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %942, %struct.Memory* %call2_403a33)
  %.pre63 = load i64, i64* %RBP.i, align 8
  %.pre64 = load i32, i32* %EAX.i1233, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit925

; <label>:952:                                    ; preds = %block_403c9d
  %953 = srem i64 %945, %943
  %954 = and i64 %946, 4294967295
  store i64 %954, i64* %RAX.i243, align 8
  %955 = and i64 %953, 4294967295
  store i64 %955, i64* %RDX.i1227, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %956 = trunc i64 %946 to i32
  br label %routine_idivl__ecx.exit925

routine_idivl__ecx.exit925:                       ; preds = %952, %950
  %957 = phi i64 [ %.pre65, %950 ], [ %942, %952 ]
  %958 = phi i32 [ %.pre64, %950 ], [ %956, %952 ]
  %959 = phi i64 [ %.pre63, %950 ], [ %936, %952 ]
  %960 = phi %struct.Memory* [ %951, %950 ], [ %call2_403a33, %952 ]
  %961 = add i64 %959, -4
  %962 = add i64 %957, 3
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i32*
  store i32 %958, i32* %963, align 4
  %.pre66 = load i64, i64* %RBP.i, align 8
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_403cbf

block_.L_403cbf:                                  ; preds = %routine_idivl__ecx.exit925, %block_403c90, %block_.L_403c83
  %964 = phi i64 [ %880, %block_.L_403c83 ], [ %894, %block_403c90 ], [ %.pre67, %routine_idivl__ecx.exit925 ]
  %965 = phi i64 [ %567, %block_.L_403c83 ], [ %567, %block_403c90 ], [ %.pre66, %routine_idivl__ecx.exit925 ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_403a33, %block_.L_403c83 ], [ %call2_403a33, %block_403c90 ], [ %960, %routine_idivl__ecx.exit925 ]
  %966 = add i64 %965, -628
  %967 = add i64 %964, 7
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %966 to i32*
  %969 = load i32, i32* %968, align 4
  store i8 0, i8* %14, align 1
  %970 = and i32 %969, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970)
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %975 = icmp eq i32 %969, 0
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %29, align 1
  %977 = lshr i32 %969, 31
  %978 = trunc i32 %977 to i8
  store i8 %978, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v120 = select i1 %975, i64 13, i64 57
  %979 = add i64 %964, %.v120
  store i64 %979, i64* %3, align 8
  br i1 %975, label %block_403ccc, label %block_.L_403cf8

block_403ccc:                                     ; preds = %block_.L_403cbf
  %980 = add i64 %965, -632
  %981 = add i64 %979, 7
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  %983 = load i32, i32* %982, align 4
  store i8 0, i8* %14, align 1
  %984 = and i32 %983, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %989 = icmp eq i32 %983, 0
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %29, align 1
  %991 = lshr i32 %983, 31
  %992 = trunc i32 %991 to i8
  store i8 %992, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v137 = select i1 %989, i64 44, i64 13
  %993 = add i64 %979, %.v137
  store i64 %993, i64* %3, align 8
  br i1 %989, label %block_.L_403cf8, label %block_403cd9

block_403cd9:                                     ; preds = %block_403ccc
  store i64 16, i64* %RAX.i243, align 8
  %994 = add i64 %965, -12
  %995 = add i64 %993, 8
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = add i32 %997, 8
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RCX.i1277, align 8
  %1000 = icmp ugt i32 %997, -9
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %14, align 1
  %1002 = and i32 %998, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %21, align 1
  %1007 = xor i32 %998, %997
  %1008 = lshr i32 %1007, 4
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  store i8 %1010, i8* %26, align 1
  %1011 = icmp eq i32 %998, 0
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %29, align 1
  %1013 = lshr i32 %998, 31
  %1014 = trunc i32 %1013 to i8
  store i8 %1014, i8* %32, align 1
  %1015 = lshr i32 %997, 31
  %1016 = xor i32 %1013, %1015
  %1017 = add nuw nsw i32 %1016, %1013
  %1018 = icmp eq i32 %1017, 2
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %38, align 1
  %1020 = add i64 %965, -656
  %1021 = add i64 %993, 17
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  store i32 16, i32* %1022, align 4
  %1023 = load i32, i32* %ECX.i1273, align 4
  %1024 = zext i32 %1023 to i64
  %1025 = load i64, i64* %3, align 8
  store i64 %1024, i64* %RAX.i243, align 8
  %1026 = sext i32 %1023 to i64
  %1027 = lshr i64 %1026, 32
  store i64 %1027, i64* %RDX.i1255, align 8
  %1028 = load i64, i64* %RBP.i, align 8
  %1029 = add i64 %1028, -656
  %1030 = add i64 %1025, 9
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RCX.i1277, align 8
  %1034 = add i64 %1025, 11
  store i64 %1034, i64* %3, align 8
  %1035 = sext i32 %1032 to i64
  %1036 = shl nuw i64 %1027, 32
  %1037 = or i64 %1036, %1024
  %1038 = sdiv i64 %1037, %1035
  %1039 = shl i64 %1038, 32
  %1040 = ashr exact i64 %1039, 32
  %1041 = icmp eq i64 %1038, %1040
  br i1 %1041, label %1044, label %1042

; <label>:1042:                                   ; preds = %block_403cd9
  %1043 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1034, %struct.Memory* %MEMORY.9)
  %.pre68 = load i64, i64* %RBP.i, align 8
  %.pre69 = load i32, i32* %EAX.i1233, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit893

; <label>:1044:                                   ; preds = %block_403cd9
  %1045 = srem i64 %1037, %1035
  %1046 = and i64 %1038, 4294967295
  store i64 %1046, i64* %RAX.i243, align 8
  %1047 = and i64 %1045, 4294967295
  store i64 %1047, i64* %RDX.i1227, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1048 = trunc i64 %1038 to i32
  br label %routine_idivl__ecx.exit893

routine_idivl__ecx.exit893:                       ; preds = %1044, %1042
  %1049 = phi i64 [ %.pre70, %1042 ], [ %1034, %1044 ]
  %1050 = phi i32 [ %.pre69, %1042 ], [ %1048, %1044 ]
  %1051 = phi i64 [ %.pre68, %1042 ], [ %1028, %1044 ]
  %1052 = phi %struct.Memory* [ %1043, %1042 ], [ %MEMORY.9, %1044 ]
  %1053 = add i64 %1051, -4
  %1054 = add i64 %1049, 3
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  store i32 %1050, i32* %1055, align 4
  %.pre71 = load i64, i64* %RBP.i, align 8
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_403cf8

block_.L_403cf8:                                  ; preds = %block_.L_403cbf, %routine_idivl__ecx.exit893, %block_403ccc
  %1056 = phi i64 [ %979, %block_.L_403cbf ], [ %993, %block_403ccc ], [ %.pre72, %routine_idivl__ecx.exit893 ]
  %1057 = phi i64 [ %965, %block_.L_403cbf ], [ %965, %block_403ccc ], [ %.pre71, %routine_idivl__ecx.exit893 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_403cbf ], [ %MEMORY.9, %block_403ccc ], [ %1052, %routine_idivl__ecx.exit893 ]
  %1058 = add i64 %1057, -628
  %1059 = add i64 %1056, 7
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i32*
  %1061 = load i32, i32* %1060, align 4
  store i8 0, i8* %14, align 1
  %1062 = and i32 %1061, 255
  %1063 = tail call i32 @llvm.ctpop.i32(i32 %1062)
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  %1066 = xor i8 %1065, 1
  store i8 %1066, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1067 = icmp eq i32 %1061, 0
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %29, align 1
  %1069 = lshr i32 %1061, 31
  %1070 = trunc i32 %1069 to i8
  store i8 %1070, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v121 = select i1 %1067, i64 57, i64 13
  %1071 = add i64 %1056, %.v121
  store i64 %1071, i64* %3, align 8
  br i1 %1067, label %block_.L_403d31, label %block_403d05

block_403d05:                                     ; preds = %block_.L_403cf8
  %1072 = add i64 %1057, -632
  %1073 = add i64 %1071, 7
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  store i8 0, i8* %14, align 1
  %1076 = and i32 %1075, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1081 = icmp eq i32 %1075, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %29, align 1
  %1083 = lshr i32 %1075, 31
  %1084 = trunc i32 %1083 to i8
  store i8 %1084, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v122 = select i1 %1081, i64 13, i64 44
  %1085 = add i64 %1071, %.v122
  store i64 %1085, i64* %3, align 8
  br i1 %1081, label %block_403d12, label %block_.L_403d31

block_403d12:                                     ; preds = %block_403d05
  store i64 16, i64* %RAX.i243, align 8
  %1086 = add i64 %1057, -8
  %1087 = add i64 %1085, 8
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = add i32 %1089, 8
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RCX.i1277, align 8
  %1092 = icmp ugt i32 %1089, -9
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %14, align 1
  %1094 = and i32 %1090, 255
  %1095 = tail call i32 @llvm.ctpop.i32(i32 %1094)
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  store i8 %1098, i8* %21, align 1
  %1099 = xor i32 %1090, %1089
  %1100 = lshr i32 %1099, 4
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  store i8 %1102, i8* %26, align 1
  %1103 = icmp eq i32 %1090, 0
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %29, align 1
  %1105 = lshr i32 %1090, 31
  %1106 = trunc i32 %1105 to i8
  store i8 %1106, i8* %32, align 1
  %1107 = lshr i32 %1089, 31
  %1108 = xor i32 %1105, %1107
  %1109 = add nuw nsw i32 %1108, %1105
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %38, align 1
  %1112 = add i64 %1057, -660
  %1113 = add i64 %1085, 17
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  store i32 16, i32* %1114, align 4
  %1115 = load i32, i32* %ECX.i1273, align 4
  %1116 = zext i32 %1115 to i64
  %1117 = load i64, i64* %3, align 8
  store i64 %1116, i64* %RAX.i243, align 8
  %1118 = sext i32 %1115 to i64
  %1119 = lshr i64 %1118, 32
  store i64 %1119, i64* %RDX.i1255, align 8
  %1120 = load i64, i64* %RBP.i, align 8
  %1121 = add i64 %1120, -660
  %1122 = add i64 %1117, 9
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i32*
  %1124 = load i32, i32* %1123, align 4
  %1125 = zext i32 %1124 to i64
  store i64 %1125, i64* %RCX.i1277, align 8
  %1126 = add i64 %1117, 11
  store i64 %1126, i64* %3, align 8
  %1127 = sext i32 %1124 to i64
  %1128 = shl nuw i64 %1119, 32
  %1129 = or i64 %1128, %1116
  %1130 = sdiv i64 %1129, %1127
  %1131 = shl i64 %1130, 32
  %1132 = ashr exact i64 %1131, 32
  %1133 = icmp eq i64 %1130, %1132
  br i1 %1133, label %1136, label %1134

; <label>:1134:                                   ; preds = %block_403d12
  %1135 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1126, %struct.Memory* %MEMORY.10)
  %.pre73 = load i64, i64* %RBP.i, align 8
  %.pre74 = load i32, i32* %EAX.i1233, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit862

; <label>:1136:                                   ; preds = %block_403d12
  %1137 = srem i64 %1129, %1127
  %1138 = and i64 %1130, 4294967295
  store i64 %1138, i64* %RAX.i243, align 8
  %1139 = and i64 %1137, 4294967295
  store i64 %1139, i64* %RDX.i1227, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1140 = trunc i64 %1130 to i32
  br label %routine_idivl__ecx.exit862

routine_idivl__ecx.exit862:                       ; preds = %1136, %1134
  %1141 = phi i64 [ %.pre75, %1134 ], [ %1126, %1136 ]
  %1142 = phi i32 [ %.pre74, %1134 ], [ %1140, %1136 ]
  %1143 = phi i64 [ %.pre73, %1134 ], [ %1120, %1136 ]
  %1144 = phi %struct.Memory* [ %1135, %1134 ], [ %MEMORY.10, %1136 ]
  %1145 = add i64 %1143, -4
  %1146 = add i64 %1141, 3
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  store i32 %1142, i32* %1147, align 4
  %.pre76 = load i64, i64* %RBP.i, align 8
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_403d31

block_.L_403d31:                                  ; preds = %block_403d05, %routine_idivl__ecx.exit862, %block_.L_403cf8
  %1148 = phi i64 [ %1071, %block_.L_403cf8 ], [ %1085, %block_403d05 ], [ %.pre77, %routine_idivl__ecx.exit862 ]
  %1149 = phi i64 [ %1057, %block_.L_403cf8 ], [ %1057, %block_403d05 ], [ %.pre76, %routine_idivl__ecx.exit862 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.10, %block_.L_403cf8 ], [ %MEMORY.10, %block_403d05 ], [ %1144, %routine_idivl__ecx.exit862 ]
  %1150 = add i64 %1149, -628
  %1151 = add i64 %1148, 7
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  store i8 0, i8* %14, align 1
  %1154 = and i32 %1153, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1159 = icmp eq i32 %1153, 0
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %29, align 1
  %1161 = lshr i32 %1153, 31
  %1162 = trunc i32 %1161 to i8
  store i8 %1162, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v123 = select i1 %1159, i64 13, i64 43
  %1163 = add i64 %1148, %.v123
  store i64 %1163, i64* %3, align 8
  br i1 %1159, label %block_403d3e, label %block_.L_403d5c

block_403d3e:                                     ; preds = %block_.L_403d31
  %1164 = add i64 %1149, -632
  %1165 = add i64 %1163, 7
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  store i8 0, i8* %14, align 1
  %1168 = and i32 %1167, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1173 = icmp eq i32 %1167, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %29, align 1
  %1175 = lshr i32 %1167, 31
  %1176 = trunc i32 %1175 to i8
  store i8 %1176, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v136 = select i1 %1173, i64 13, i64 30
  %1177 = add i64 %1163, %.v136
  store i64 %1177, i64* %3, align 8
  br i1 %1173, label %block_403d4b, label %block_.L_403d5c

block_403d4b:                                     ; preds = %block_403d3e
  %1178 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1178, i64* %RAX.i243, align 8
  %1179 = add i64 %1178, 72680
  %1180 = add i64 %1177, 14
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  %1182 = load i32, i32* %1181, align 4
  %1183 = zext i32 %1182 to i64
  store i64 %1183, i64* %RCX.i1277, align 8
  %1184 = add i64 %1149, -4
  %1185 = add i64 %1177, 17
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  store i32 %1182, i32* %1186, align 4
  %.pre78 = load i64, i64* %RBP.i, align 8
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_403d5c

block_.L_403d5c:                                  ; preds = %block_403d3e, %block_.L_403d31, %block_403d4b
  %1187 = phi i64 [ %.pre79, %block_403d4b ], [ %1177, %block_403d3e ], [ %1163, %block_.L_403d31 ]
  %1188 = phi i64 [ %.pre78, %block_403d4b ], [ %1149, %block_403d3e ], [ %1149, %block_.L_403d31 ]
  %1189 = add i64 %1188, -148
  %1190 = add i64 %1187, 10
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  store i32 0, i32* %1191, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_403d66

block_.L_403d66:                                  ; preds = %block_.L_403e15, %block_.L_403d5c
  %1192 = phi i64 [ %1460, %block_.L_403e15 ], [ %.pre80, %block_.L_403d5c ]
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -148
  %1195 = add i64 %1192, 7
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = add i32 %1197, -16
  %1199 = icmp ult i32 %1197, 16
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %14, align 1
  %1201 = and i32 %1198, 255
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %21, align 1
  %1206 = xor i32 %1197, 16
  %1207 = xor i32 %1206, %1198
  %1208 = lshr i32 %1207, 4
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  store i8 %1210, i8* %26, align 1
  %1211 = icmp eq i32 %1198, 0
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %29, align 1
  %1213 = lshr i32 %1198, 31
  %1214 = trunc i32 %1213 to i8
  store i8 %1214, i8* %32, align 1
  %1215 = lshr i32 %1197, 31
  %1216 = xor i32 %1213, %1215
  %1217 = add nuw nsw i32 %1216, %1215
  %1218 = icmp eq i32 %1217, 2
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %38, align 1
  %1220 = icmp ne i8 %1214, 0
  %1221 = xor i1 %1220, %1218
  %.v124 = select i1 %1221, i64 13, i64 200
  %1222 = add i64 %1192, %.v124
  store i64 %1222, i64* %3, align 8
  br i1 %1221, label %block_403d73, label %block_.L_403e2e

block_403d73:                                     ; preds = %block_.L_403d66
  %1223 = add i64 %1193, -628
  %1224 = add i64 %1222, 7
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  store i8 0, i8* %14, align 1
  %1227 = and i32 %1226, 255
  %1228 = tail call i32 @llvm.ctpop.i32(i32 %1227)
  %1229 = trunc i32 %1228 to i8
  %1230 = and i8 %1229, 1
  %1231 = xor i8 %1230, 1
  store i8 %1231, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1232 = icmp eq i32 %1226, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %29, align 1
  %1234 = lshr i32 %1226, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v134 = select i1 %1232, i64 64, i64 13
  %1236 = add i64 %1222, %.v134
  store i64 %1236, i64* %3, align 8
  br i1 %1232, label %block_.L_403db3, label %block_403d80

block_403d80:                                     ; preds = %block_403d73
  %1237 = add i64 %1193, -184
  %1238 = add i64 %1236, 7
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i64*
  %1240 = load i64, i64* %1239, align 8
  store i64 %1240, i64* %RAX.i243, align 8
  %1241 = add i64 %1193, -196
  %1242 = add i64 %1236, 14
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i32*
  %1244 = load i32, i32* %1243, align 4
  %1245 = sext i32 %1244 to i64
  store i64 %1245, i64* %RCX.i1277, align 8
  %1246 = shl nsw i64 %1245, 3
  %1247 = add i64 %1246, %1240
  %1248 = add i64 %1236, 18
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i64*
  %1250 = load i64, i64* %1249, align 8
  store i64 %1250, i64* %RAX.i243, align 8
  %1251 = add i64 %1193, -200
  %1252 = add i64 %1236, 24
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i32*
  %1254 = load i32, i32* %1253, align 4
  %1255 = zext i32 %1254 to i64
  store i64 %1255, i64* %RDX.i1227, align 8
  %1256 = add i64 %1236, 30
  store i64 %1256, i64* %3, align 8
  %1257 = load i32, i32* %1196, align 4
  %1258 = add i32 %1257, %1254
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RDX.i1227, align 8
  %1260 = icmp ult i32 %1258, %1254
  %1261 = icmp ult i32 %1258, %1257
  %1262 = or i1 %1260, %1261
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %14, align 1
  %1264 = and i32 %1258, 255
  %1265 = tail call i32 @llvm.ctpop.i32(i32 %1264)
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %21, align 1
  %1269 = xor i32 %1257, %1254
  %1270 = xor i32 %1269, %1258
  %1271 = lshr i32 %1270, 4
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  store i8 %1273, i8* %26, align 1
  %1274 = icmp eq i32 %1258, 0
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %29, align 1
  %1276 = lshr i32 %1258, 31
  %1277 = trunc i32 %1276 to i8
  store i8 %1277, i8* %32, align 1
  %1278 = lshr i32 %1254, 31
  %1279 = lshr i32 %1257, 31
  %1280 = xor i32 %1276, %1278
  %1281 = xor i32 %1276, %1279
  %1282 = add nuw nsw i32 %1280, %1281
  %1283 = icmp eq i32 %1282, 2
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %38, align 1
  %1285 = sext i32 %1258 to i64
  store i64 %1285, i64* %RCX.i1277, align 8
  %1286 = shl nsw i64 %1285, 1
  %1287 = add i64 %1250, %1286
  %1288 = add i64 %1236, 37
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i16*
  %1290 = load i16, i16* %1289, align 2
  %1291 = zext i16 %1290 to i64
  store i64 %1291, i64* %RDX.i1227, align 8
  %1292 = add i64 %1236, 44
  store i64 %1292, i64* %3, align 8
  %1293 = load i32, i32* %1196, align 4
  %1294 = sext i32 %1293 to i64
  store i64 %1294, i64* %RAX.i243, align 8
  %1295 = shl nsw i64 %1294, 3
  %1296 = add i64 %1193, -144
  %1297 = add i64 %1296, %1295
  %1298 = zext i16 %1290 to i32
  %1299 = add i64 %1236, 51
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1297 to i32*
  store i32 %1298, i32* %1300, align 4
  %.pre102 = load i64, i64* %RBP.i, align 8
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_403db3

block_.L_403db3:                                  ; preds = %block_403d80, %block_403d73
  %1301 = phi i64 [ %.pre103, %block_403d80 ], [ %1236, %block_403d73 ]
  %1302 = phi i64 [ %.pre102, %block_403d80 ], [ %1193, %block_403d73 ]
  %1303 = add i64 %1302, -632
  %1304 = add i64 %1301, 7
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  store i8 0, i8* %14, align 1
  %1307 = and i32 %1306, 255
  %1308 = tail call i32 @llvm.ctpop.i32(i32 %1307)
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = xor i8 %1310, 1
  store i8 %1311, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1312 = icmp eq i32 %1306, 0
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %29, align 1
  %1314 = lshr i32 %1306, 31
  %1315 = trunc i32 %1314 to i8
  store i8 %1315, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v135 = select i1 %1312, i64 98, i64 13
  %1316 = add i64 %1301, %.v135
  store i64 %1316, i64* %3, align 8
  br i1 %1312, label %block_.L_403e15, label %block_403dc0

block_403dc0:                                     ; preds = %block_.L_403db3
  %1317 = add i64 %1302, -624
  store i64 %1317, i64* %RAX.i243, align 8
  %1318 = add i64 %1302, -184
  %1319 = add i64 %1316, 14
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i64*
  %1321 = load i64, i64* %1320, align 8
  store i64 %1321, i64* %RCX.i1277, align 8
  %1322 = add i64 %1302, -148
  %1323 = add i64 %1316, 20
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = add i32 %1325, 1
  %1327 = zext i32 %1326 to i64
  store i64 %1327, i64* %RDX.i1227, align 8
  %1328 = sext i32 %1326 to i64
  %1329 = mul nsw i64 %1328, 24
  store i64 %1329, i64* %RSI.i1266, align 8
  %1330 = lshr i64 %1329, 63
  %1331 = add i64 %1329, %1317
  store i64 %1331, i64* %RDI.i1219, align 8
  %1332 = icmp ult i64 %1331, %1317
  %1333 = icmp ult i64 %1331, %1329
  %1334 = or i1 %1332, %1333
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %14, align 1
  %1336 = trunc i64 %1331 to i32
  %1337 = and i32 %1336, 255
  %1338 = tail call i32 @llvm.ctpop.i32(i32 %1337)
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  store i8 %1341, i8* %21, align 1
  %1342 = xor i64 %1329, %1317
  %1343 = xor i64 %1342, %1331
  %1344 = lshr i64 %1343, 4
  %1345 = trunc i64 %1344 to i8
  %1346 = and i8 %1345, 1
  store i8 %1346, i8* %26, align 1
  %1347 = icmp eq i64 %1331, 0
  %1348 = zext i1 %1347 to i8
  store i8 %1348, i8* %29, align 1
  %1349 = lshr i64 %1331, 63
  %1350 = trunc i64 %1349 to i8
  store i8 %1350, i8* %32, align 1
  %1351 = lshr i64 %1317, 63
  %1352 = xor i64 %1349, %1351
  %1353 = xor i64 %1349, %1330
  %1354 = add nuw nsw i64 %1352, %1353
  %1355 = icmp eq i64 %1354, 2
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %38, align 1
  %1357 = add i64 %1331, 20
  %1358 = add i64 %1316, 40
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i32*
  %1360 = load i32, i32* %1359, align 4
  %1361 = sext i32 %1360 to i64
  store i64 %1361, i64* %RSI.i1266, align 8
  %1362 = load i64, i64* %RCX.i1277, align 8
  %1363 = shl nsw i64 %1361, 3
  %1364 = add i64 %1363, %1362
  %1365 = add i64 %1316, 44
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366, align 8
  store i64 %1367, i64* %RCX.i1277, align 8
  %1368 = load i64, i64* %RBP.i, align 8
  %1369 = add i64 %1368, -148
  %1370 = add i64 %1316, 50
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i32*
  %1372 = load i32, i32* %1371, align 4
  %1373 = add i32 %1372, 1
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RDX.i1227, align 8
  %1375 = sext i32 %1373 to i64
  %1376 = mul nsw i64 %1375, 24
  store i64 %1376, i64* %RSI.i1266, align 8
  %1377 = lshr i64 %1376, 63
  %1378 = load i64, i64* %RAX.i243, align 8
  %1379 = add i64 %1376, %1378
  store i64 %1379, i64* %RAX.i243, align 8
  %1380 = icmp ult i64 %1379, %1378
  %1381 = icmp ult i64 %1379, %1376
  %1382 = or i1 %1380, %1381
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %14, align 1
  %1384 = trunc i64 %1379 to i32
  %1385 = and i32 %1384, 255
  %1386 = tail call i32 @llvm.ctpop.i32(i32 %1385)
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = xor i8 %1388, 1
  store i8 %1389, i8* %21, align 1
  %1390 = xor i64 %1376, %1378
  %1391 = xor i64 %1390, %1379
  %1392 = lshr i64 %1391, 4
  %1393 = trunc i64 %1392 to i8
  %1394 = and i8 %1393, 1
  store i8 %1394, i8* %26, align 1
  %1395 = icmp eq i64 %1379, 0
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %29, align 1
  %1397 = lshr i64 %1379, 63
  %1398 = trunc i64 %1397 to i8
  store i8 %1398, i8* %32, align 1
  %1399 = lshr i64 %1378, 63
  %1400 = xor i64 %1397, %1399
  %1401 = xor i64 %1397, %1377
  %1402 = add nuw nsw i64 %1400, %1401
  %1403 = icmp eq i64 %1402, 2
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %38, align 1
  %1405 = add i64 %1379, 16
  %1406 = add i64 %1316, 67
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = sext i32 %1408 to i64
  store i64 %1409, i64* %RAX.i243, align 8
  %1410 = load i64, i64* %RCX.i1277, align 8
  %1411 = shl nsw i64 %1409, 1
  %1412 = add i64 %1411, %1410
  %1413 = add i64 %1316, 71
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i16*
  %1415 = load i16, i16* %1414, align 2
  %1416 = zext i16 %1415 to i64
  store i64 %1416, i64* %RDX.i1227, align 8
  %1417 = load i64, i64* %RBP.i, align 8
  %1418 = add i64 %1417, -148
  %1419 = add i64 %1316, 78
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = sext i32 %1421 to i64
  store i64 %1422, i64* %RAX.i243, align 8
  %1423 = shl nsw i64 %1422, 3
  %1424 = add i64 %1417, -140
  %1425 = add i64 %1424, %1423
  %1426 = zext i16 %1415 to i32
  %1427 = add i64 %1316, 85
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1425 to i32*
  store i32 %1426, i32* %1428, align 4
  %.pre104 = load i64, i64* %3, align 8
  %.pre105 = load i64, i64* %RBP.i, align 8
  br label %block_.L_403e15

block_.L_403e15:                                  ; preds = %block_403dc0, %block_.L_403db3
  %1429 = phi i64 [ %.pre105, %block_403dc0 ], [ %1302, %block_.L_403db3 ]
  %1430 = phi i64 [ %.pre104, %block_403dc0 ], [ %1316, %block_.L_403db3 ]
  %1431 = add i64 %1429, -148
  %1432 = add i64 %1430, 11
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = add i32 %1434, 1
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RAX.i243, align 8
  %1437 = icmp eq i32 %1434, -1
  %1438 = icmp eq i32 %1435, 0
  %1439 = or i1 %1437, %1438
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %14, align 1
  %1441 = and i32 %1435, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %21, align 1
  %1446 = xor i32 %1435, %1434
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %26, align 1
  %1450 = zext i1 %1438 to i8
  store i8 %1450, i8* %29, align 1
  %1451 = lshr i32 %1435, 31
  %1452 = trunc i32 %1451 to i8
  store i8 %1452, i8* %32, align 1
  %1453 = lshr i32 %1434, 31
  %1454 = xor i32 %1451, %1453
  %1455 = add nuw nsw i32 %1454, %1451
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %38, align 1
  %1458 = add i64 %1430, 20
  store i64 %1458, i64* %3, align 8
  store i32 %1435, i32* %1433, align 4
  %1459 = load i64, i64* %3, align 8
  %1460 = add i64 %1459, -195
  store i64 %1460, i64* %3, align 8
  br label %block_.L_403d66

block_.L_403e2e:                                  ; preds = %block_.L_403d66
  %1461 = add i64 %1193, -152
  %1462 = add i64 %1222, 10
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i32*
  store i32 0, i32* %1463, align 4
  %CX.i720 = bitcast %union.anon* %55 to i16*
  %DX.i721 = bitcast %union.anon* %200 to i16*
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_403e38

block_.L_403e38:                                  ; preds = %block_.L_403f19, %block_.L_403e2e
  %1464 = phi i64 [ %1823, %block_.L_403f19 ], [ %.pre81, %block_.L_403e2e ]
  %1465 = load i64, i64* %RBP.i, align 8
  %1466 = add i64 %1465, -152
  %1467 = add i64 %1464, 7
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i32*
  %1469 = load i32, i32* %1468, align 4
  %1470 = add i32 %1469, -16
  %1471 = icmp ult i32 %1469, 16
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %14, align 1
  %1473 = and i32 %1470, 255
  %1474 = tail call i32 @llvm.ctpop.i32(i32 %1473)
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  store i8 %1477, i8* %21, align 1
  %1478 = xor i32 %1469, 16
  %1479 = xor i32 %1478, %1470
  %1480 = lshr i32 %1479, 4
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  store i8 %1482, i8* %26, align 1
  %1483 = icmp eq i32 %1470, 0
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %29, align 1
  %1485 = lshr i32 %1470, 31
  %1486 = trunc i32 %1485 to i8
  store i8 %1486, i8* %32, align 1
  %1487 = lshr i32 %1469, 31
  %1488 = xor i32 %1485, %1487
  %1489 = add nuw nsw i32 %1488, %1487
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %38, align 1
  %1492 = icmp ne i8 %1486, 0
  %1493 = xor i1 %1492, %1490
  %.v125 = select i1 %1493, i64 13, i64 250
  %1494 = add i64 %1464, %.v125
  store i64 %1494, i64* %3, align 8
  br i1 %1493, label %block_403e45, label %block_.L_403f32

block_403e45:                                     ; preds = %block_.L_403e38
  %1495 = add i64 %1465, -148
  %1496 = add i64 %1494, 10
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i32*
  store i32 0, i32* %1497, align 4
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_403e4f

block_.L_403e4f:                                  ; preds = %block_403e5c, %block_403e45
  %1498 = phi i64 [ %1793, %block_403e5c ], [ %.pre101, %block_403e45 ]
  %1499 = load i64, i64* %RBP.i, align 8
  %1500 = add i64 %1499, -148
  %1501 = add i64 %1498, 7
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = add i32 %1503, -16
  %1505 = icmp ult i32 %1503, 16
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %14, align 1
  %1507 = and i32 %1504, 255
  %1508 = tail call i32 @llvm.ctpop.i32(i32 %1507)
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = xor i8 %1510, 1
  store i8 %1511, i8* %21, align 1
  %1512 = xor i32 %1503, 16
  %1513 = xor i32 %1512, %1504
  %1514 = lshr i32 %1513, 4
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  store i8 %1516, i8* %26, align 1
  %1517 = icmp eq i32 %1504, 0
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %29, align 1
  %1519 = lshr i32 %1504, 31
  %1520 = trunc i32 %1519 to i8
  store i8 %1520, i8* %32, align 1
  %1521 = lshr i32 %1503, 31
  %1522 = xor i32 %1519, %1521
  %1523 = add nuw nsw i32 %1522, %1521
  %1524 = icmp eq i32 %1523, 2
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %38, align 1
  %1526 = icmp ne i8 %1520, 0
  %1527 = xor i1 %1526, %1524
  %.v112 = select i1 %1527, i64 13, i64 202
  %1528 = add i64 %1498, %.v112
  store i64 %1528, i64* %3, align 8
  br i1 %1527, label %block_403e5c, label %block_.L_403f19

block_403e5c:                                     ; preds = %block_.L_403e4f
  %1529 = add i64 %1528, 7
  store i64 %1529, i64* %3, align 8
  %1530 = load i32, i32* %1502, align 4
  %1531 = sext i32 %1530 to i64
  store i64 %1531, i64* %RAX.i243, align 8
  %1532 = shl nsw i64 %1531, 3
  %1533 = add i64 %1499, -144
  %1534 = add i64 %1533, %1532
  %1535 = add i64 %1528, 14
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RCX.i1277, align 8
  %1539 = trunc i32 %1537 to i16
  store i16 %1539, i16* %DX.i721, align 2
  %1540 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1541 = add i64 %1540, 4792
  store i64 %1541, i64* %RAX.i243, align 8
  %1542 = icmp ugt i64 %1540, -4793
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %14, align 1
  %1544 = trunc i64 %1541 to i32
  %1545 = and i32 %1544, 255
  %1546 = tail call i32 @llvm.ctpop.i32(i32 %1545)
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  %1549 = xor i8 %1548, 1
  store i8 %1549, i8* %21, align 1
  %1550 = xor i64 %1540, 16
  %1551 = xor i64 %1550, %1541
  %1552 = lshr i64 %1551, 4
  %1553 = trunc i64 %1552 to i8
  %1554 = and i8 %1553, 1
  store i8 %1554, i8* %26, align 1
  %1555 = icmp eq i64 %1541, 0
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %29, align 1
  %1557 = lshr i64 %1541, 63
  %1558 = trunc i64 %1557 to i8
  store i8 %1558, i8* %32, align 1
  %1559 = lshr i64 %1540, 63
  %1560 = xor i64 %1557, %1559
  %1561 = add nuw nsw i64 %1560, %1557
  %1562 = icmp eq i64 %1561, 2
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %38, align 1
  %1564 = add i64 %1499, -152
  %1565 = add i64 %1528, 38
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  %1567 = load i32, i32* %1566, align 4
  %1568 = sext i32 %1567 to i64
  %1569 = shl nsw i64 %1568, 5
  store i64 %1569, i64* %RSI.i1266, align 8
  %1570 = add i64 %1569, %1541
  store i64 %1570, i64* %RAX.i243, align 8
  %1571 = icmp ult i64 %1570, %1541
  %1572 = icmp ult i64 %1570, %1569
  %1573 = or i1 %1571, %1572
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %14, align 1
  %1575 = trunc i64 %1570 to i32
  %1576 = and i32 %1575, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %21, align 1
  %1581 = xor i64 %1541, %1570
  %1582 = lshr i64 %1581, 4
  %1583 = trunc i64 %1582 to i8
  %1584 = and i8 %1583, 1
  store i8 %1584, i8* %26, align 1
  %1585 = icmp eq i64 %1570, 0
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %29, align 1
  %1587 = lshr i64 %1570, 63
  %1588 = trunc i64 %1587 to i8
  store i8 %1588, i8* %32, align 1
  %1589 = lshr i64 %1568, 58
  %1590 = and i64 %1589, 1
  %1591 = xor i64 %1587, %1557
  %1592 = xor i64 %1587, %1590
  %1593 = add nuw nsw i64 %1591, %1592
  %1594 = icmp eq i64 %1593, 2
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %38, align 1
  %1596 = load i64, i64* %RBP.i, align 8
  %1597 = add i64 %1596, -148
  %1598 = add i64 %1528, 52
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = sext i32 %1600 to i64
  store i64 %1601, i64* %RSI.i1266, align 8
  %1602 = shl nsw i64 %1601, 1
  %1603 = add i64 %1602, %1570
  %1604 = load i16, i16* %DX.i721, align 2
  %1605 = add i64 %1528, 56
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1603 to i16*
  store i16 %1604, i16* %1606, align 2
  %1607 = load i64, i64* %RBP.i, align 8
  %1608 = add i64 %1607, -152
  %1609 = load i64, i64* %3, align 8
  %1610 = add i64 %1609, 7
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1608 to i32*
  %1612 = load i32, i32* %1611, align 4
  %1613 = sext i32 %1612 to i64
  store i64 %1613, i64* %RAX.i243, align 8
  %1614 = shl nsw i64 %1613, 3
  %1615 = add i64 %1607, -140
  %1616 = add i64 %1615, %1614
  %1617 = add i64 %1609, 14
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i32*
  %1619 = load i32, i32* %1618, align 4
  %1620 = zext i32 %1619 to i64
  store i64 %1620, i64* %RCX.i1277, align 8
  %1621 = trunc i32 %1619 to i16
  store i16 %1621, i16* %DX.i721, align 2
  %1622 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1623 = add i64 %1622, 4792
  %1624 = lshr i64 %1623, 63
  %1625 = add i64 %1622, 5304
  store i64 %1625, i64* %RAX.i243, align 8
  %1626 = icmp ugt i64 %1623, -513
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %14, align 1
  %1628 = trunc i64 %1625 to i32
  %1629 = and i32 %1628, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %21, align 1
  %1634 = xor i64 %1625, %1623
  %1635 = lshr i64 %1634, 4
  %1636 = trunc i64 %1635 to i8
  %1637 = and i8 %1636, 1
  store i8 %1637, i8* %26, align 1
  %1638 = icmp eq i64 %1625, 0
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %29, align 1
  %1640 = lshr i64 %1625, 63
  %1641 = trunc i64 %1640 to i8
  store i8 %1641, i8* %32, align 1
  %1642 = xor i64 %1640, %1624
  %1643 = add nuw nsw i64 %1642, %1640
  %1644 = icmp eq i64 %1643, 2
  %1645 = zext i1 %1644 to i8
  store i8 %1645, i8* %38, align 1
  %1646 = add i64 %1609, 44
  store i64 %1646, i64* %3, align 8
  %1647 = load i32, i32* %1611, align 4
  %1648 = sext i32 %1647 to i64
  %1649 = shl nsw i64 %1648, 5
  store i64 %1649, i64* %RSI.i1266, align 8
  %1650 = add i64 %1649, %1625
  store i64 %1650, i64* %RAX.i243, align 8
  %1651 = icmp ult i64 %1650, %1625
  %1652 = icmp ult i64 %1650, %1649
  %1653 = or i1 %1651, %1652
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %14, align 1
  %1655 = trunc i64 %1650 to i32
  %1656 = and i32 %1655, 255
  %1657 = tail call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  store i8 %1660, i8* %21, align 1
  %1661 = xor i64 %1625, %1650
  %1662 = lshr i64 %1661, 4
  %1663 = trunc i64 %1662 to i8
  %1664 = and i8 %1663, 1
  store i8 %1664, i8* %26, align 1
  %1665 = icmp eq i64 %1650, 0
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %29, align 1
  %1667 = lshr i64 %1650, 63
  %1668 = trunc i64 %1667 to i8
  store i8 %1668, i8* %32, align 1
  %1669 = lshr i64 %1648, 58
  %1670 = and i64 %1669, 1
  %1671 = xor i64 %1667, %1640
  %1672 = xor i64 %1667, %1670
  %1673 = add nuw nsw i64 %1671, %1672
  %1674 = icmp eq i64 %1673, 2
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %38, align 1
  %1676 = load i64, i64* %RBP.i, align 8
  %1677 = add i64 %1676, -148
  %1678 = add i64 %1609, 58
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1677 to i32*
  %1680 = load i32, i32* %1679, align 4
  %1681 = sext i32 %1680 to i64
  store i64 %1681, i64* %RSI.i1266, align 8
  %1682 = shl nsw i64 %1681, 1
  %1683 = add i64 %1682, %1650
  %1684 = load i16, i16* %DX.i721, align 2
  %1685 = add i64 %1609, 62
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1683 to i16*
  store i16 %1684, i16* %1686, align 2
  %1687 = load i64, i64* %RBP.i, align 8
  %1688 = add i64 %1687, -4
  %1689 = load i64, i64* %3, align 8
  %1690 = add i64 %1689, 3
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1688 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = zext i32 %1692 to i64
  store i64 %1693, i64* %RCX.i1277, align 8
  %1694 = trunc i32 %1692 to i16
  store i16 %1694, i16* %DX.i721, align 2
  %1695 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1696 = add i64 %1695, 4792
  %1697 = lshr i64 %1696, 63
  %1698 = add i64 %1695, 5816
  store i64 %1698, i64* %RAX.i243, align 8
  %1699 = icmp ugt i64 %1696, -1025
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %14, align 1
  %1701 = trunc i64 %1698 to i32
  %1702 = and i32 %1701, 255
  %1703 = tail call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  store i8 %1706, i8* %21, align 1
  %1707 = xor i64 %1698, %1696
  %1708 = lshr i64 %1707, 4
  %1709 = trunc i64 %1708 to i8
  %1710 = and i8 %1709, 1
  store i8 %1710, i8* %26, align 1
  %1711 = icmp eq i64 %1698, 0
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %29, align 1
  %1713 = lshr i64 %1698, 63
  %1714 = trunc i64 %1713 to i8
  store i8 %1714, i8* %32, align 1
  %1715 = xor i64 %1713, %1697
  %1716 = add nuw nsw i64 %1715, %1713
  %1717 = icmp eq i64 %1716, 2
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %38, align 1
  %1719 = add i64 %1687, -152
  %1720 = add i64 %1689, 33
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1719 to i32*
  %1722 = load i32, i32* %1721, align 4
  %1723 = sext i32 %1722 to i64
  %1724 = shl nsw i64 %1723, 5
  store i64 %1724, i64* %RSI.i1266, align 8
  %1725 = add i64 %1724, %1698
  store i64 %1725, i64* %RAX.i243, align 8
  %1726 = icmp ult i64 %1725, %1698
  %1727 = icmp ult i64 %1725, %1724
  %1728 = or i1 %1726, %1727
  %1729 = zext i1 %1728 to i8
  store i8 %1729, i8* %14, align 1
  %1730 = trunc i64 %1725 to i32
  %1731 = and i32 %1730, 255
  %1732 = tail call i32 @llvm.ctpop.i32(i32 %1731)
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  %1735 = xor i8 %1734, 1
  store i8 %1735, i8* %21, align 1
  %1736 = xor i64 %1698, %1725
  %1737 = lshr i64 %1736, 4
  %1738 = trunc i64 %1737 to i8
  %1739 = and i8 %1738, 1
  store i8 %1739, i8* %26, align 1
  %1740 = icmp eq i64 %1725, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %29, align 1
  %1742 = lshr i64 %1725, 63
  %1743 = trunc i64 %1742 to i8
  store i8 %1743, i8* %32, align 1
  %1744 = lshr i64 %1723, 58
  %1745 = and i64 %1744, 1
  %1746 = xor i64 %1742, %1713
  %1747 = xor i64 %1742, %1745
  %1748 = add nuw nsw i64 %1746, %1747
  %1749 = icmp eq i64 %1748, 2
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %38, align 1
  %1751 = load i64, i64* %RBP.i, align 8
  %1752 = add i64 %1751, -148
  %1753 = add i64 %1689, 47
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1752 to i32*
  %1755 = load i32, i32* %1754, align 4
  %1756 = sext i32 %1755 to i64
  store i64 %1756, i64* %RSI.i1266, align 8
  %1757 = shl nsw i64 %1756, 1
  %1758 = add i64 %1757, %1725
  %1759 = load i16, i16* %DX.i721, align 2
  %1760 = add i64 %1689, 51
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1758 to i16*
  store i16 %1759, i16* %1761, align 2
  %1762 = load i64, i64* %RBP.i, align 8
  %1763 = add i64 %1762, -148
  %1764 = load i64, i64* %3, align 8
  %1765 = add i64 %1764, 6
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1763 to i32*
  %1767 = load i32, i32* %1766, align 4
  %1768 = add i32 %1767, 1
  %1769 = zext i32 %1768 to i64
  store i64 %1769, i64* %RAX.i243, align 8
  %1770 = icmp eq i32 %1767, -1
  %1771 = icmp eq i32 %1768, 0
  %1772 = or i1 %1770, %1771
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %14, align 1
  %1774 = and i32 %1768, 255
  %1775 = tail call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  store i8 %1778, i8* %21, align 1
  %1779 = xor i32 %1768, %1767
  %1780 = lshr i32 %1779, 4
  %1781 = trunc i32 %1780 to i8
  %1782 = and i8 %1781, 1
  store i8 %1782, i8* %26, align 1
  %1783 = zext i1 %1771 to i8
  store i8 %1783, i8* %29, align 1
  %1784 = lshr i32 %1768, 31
  %1785 = trunc i32 %1784 to i8
  store i8 %1785, i8* %32, align 1
  %1786 = lshr i32 %1767, 31
  %1787 = xor i32 %1784, %1786
  %1788 = add nuw nsw i32 %1787, %1784
  %1789 = icmp eq i32 %1788, 2
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %38, align 1
  %1791 = add i64 %1764, 15
  store i64 %1791, i64* %3, align 8
  store i32 %1768, i32* %1766, align 4
  %1792 = load i64, i64* %3, align 8
  %1793 = add i64 %1792, -197
  store i64 %1793, i64* %3, align 8
  br label %block_.L_403e4f

block_.L_403f19:                                  ; preds = %block_.L_403e4f
  %1794 = add i64 %1499, -152
  %1795 = add i64 %1528, 11
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i32*
  %1797 = load i32, i32* %1796, align 4
  %1798 = add i32 %1797, 1
  %1799 = zext i32 %1798 to i64
  store i64 %1799, i64* %RAX.i243, align 8
  %1800 = icmp eq i32 %1797, -1
  %1801 = icmp eq i32 %1798, 0
  %1802 = or i1 %1800, %1801
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %14, align 1
  %1804 = and i32 %1798, 255
  %1805 = tail call i32 @llvm.ctpop.i32(i32 %1804)
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = xor i8 %1807, 1
  store i8 %1808, i8* %21, align 1
  %1809 = xor i32 %1798, %1797
  %1810 = lshr i32 %1809, 4
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  store i8 %1812, i8* %26, align 1
  %1813 = zext i1 %1801 to i8
  store i8 %1813, i8* %29, align 1
  %1814 = lshr i32 %1798, 31
  %1815 = trunc i32 %1814 to i8
  store i8 %1815, i8* %32, align 1
  %1816 = lshr i32 %1797, 31
  %1817 = xor i32 %1814, %1816
  %1818 = add nuw nsw i32 %1817, %1814
  %1819 = icmp eq i32 %1818, 2
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %38, align 1
  %1821 = add i64 %1528, 20
  store i64 %1821, i64* %3, align 8
  store i32 %1798, i32* %1796, align 4
  %1822 = load i64, i64* %3, align 8
  %1823 = add i64 %1822, -245
  store i64 %1823, i64* %3, align 8
  br label %block_.L_403e38

block_.L_403f32:                                  ; preds = %block_.L_403e38
  %1824 = add i64 %1465, -628
  %1825 = add i64 %1494, 7
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i32*
  %1827 = load i32, i32* %1826, align 4
  store i8 0, i8* %14, align 1
  %1828 = and i32 %1827, 255
  %1829 = tail call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  store i8 %1832, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1833 = icmp eq i32 %1827, 0
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %29, align 1
  %1835 = lshr i32 %1827, 31
  %1836 = trunc i32 %1835 to i8
  store i8 %1836, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v126 = select i1 %1833, i64 39, i64 13
  %1837 = add i64 %1494, %.v126
  store i64 %1837, i64* %3, align 8
  br i1 %1833, label %block_.L_403f59, label %block_403f3f

block_403f3f:                                     ; preds = %block_.L_403f32
  %1838 = add i64 %1465, -632
  %1839 = add i64 %1837, 7
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  %1841 = load i32, i32* %1840, align 4
  store i8 0, i8* %14, align 1
  %1842 = and i32 %1841, 255
  %1843 = tail call i32 @llvm.ctpop.i32(i32 %1842)
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  %1846 = xor i8 %1845, 1
  store i8 %1846, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1847 = icmp eq i32 %1841, 0
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %29, align 1
  %1849 = lshr i32 %1841, 31
  %1850 = trunc i32 %1849 to i8
  store i8 %1850, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v127 = select i1 %1847, i64 26, i64 13
  %1851 = add i64 %1837, %.v127
  store i64 %1851, i64* %3, align 8
  br i1 %1847, label %block_.L_403f59, label %block_403f4c

block_403f4c:                                     ; preds = %block_403f3f
  %1852 = add i64 %1465, -636
  %1853 = add i64 %1851, 7
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1852 to i32*
  %1855 = load i32, i32* %1854, align 4
  store i8 0, i8* %14, align 1
  %1856 = and i32 %1855, 255
  %1857 = tail call i32 @llvm.ctpop.i32(i32 %1856)
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  %1860 = xor i8 %1859, 1
  store i8 %1860, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1861 = icmp eq i32 %1855, 0
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %29, align 1
  %1863 = lshr i32 %1855, 31
  %1864 = trunc i32 %1863 to i8
  store i8 %1864, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v128 = select i1 %1861, i64 13, i64 18
  %1865 = add i64 %1851, %.v128
  store i64 %1865, i64* %3, align 8
  br i1 %1861, label %block_.L_403f59, label %block_.L_403f5e

block_.L_403f59:                                  ; preds = %block_403f4c, %block_403f3f, %block_.L_403f32
  %1866 = phi i64 [ %1865, %block_403f4c ], [ %1851, %block_403f3f ], [ %1837, %block_.L_403f32 ]
  %1867 = add i64 %1866, 1144
  store i64 %1867, i64* %3, align 8
  br label %block_.L_4043d1

block_.L_403f5e:                                  ; preds = %block_403f4c
  %1868 = add i64 %1465, -156
  %1869 = add i64 %1865, 10
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i32*
  store i32 0, i32* %1870, align 4
  %1871 = load i64, i64* %RBP.i, align 8
  %1872 = add i64 %1871, -160
  %1873 = load i64, i64* %3, align 8
  %1874 = add i64 %1873, 10
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1872 to i32*
  store i32 0, i32* %1875, align 4
  %1876 = load i64, i64* %RBP.i, align 8
  %1877 = add i64 %1876, -148
  %1878 = load i64, i64* %3, align 8
  %1879 = add i64 %1878, 10
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1877 to i32*
  store i32 1, i32* %1880, align 4
  %R9.i461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_403f7c

block_.L_403f7c:                                  ; preds = %block_.L_40405e, %block_.L_403f5e
  %1882 = phi i64 [ %2527, %block_.L_40405e ], [ %.pre82, %block_.L_403f5e ]
  %1883 = load i64, i64* %RBP.i, align 8
  %1884 = add i64 %1883, -148
  %1885 = add i64 %1882, 7
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i32*
  %1887 = load i32, i32* %1886, align 4
  %1888 = add i32 %1887, -9
  %1889 = icmp ult i32 %1887, 9
  %1890 = zext i1 %1889 to i8
  store i8 %1890, i8* %14, align 1
  %1891 = and i32 %1888, 255
  %1892 = tail call i32 @llvm.ctpop.i32(i32 %1891)
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  store i8 %1895, i8* %21, align 1
  %1896 = xor i32 %1888, %1887
  %1897 = lshr i32 %1896, 4
  %1898 = trunc i32 %1897 to i8
  %1899 = and i8 %1898, 1
  store i8 %1899, i8* %26, align 1
  %1900 = icmp eq i32 %1888, 0
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %29, align 1
  %1902 = lshr i32 %1888, 31
  %1903 = trunc i32 %1902 to i8
  store i8 %1903, i8* %32, align 1
  %1904 = lshr i32 %1887, 31
  %1905 = xor i32 %1902, %1904
  %1906 = add nuw nsw i32 %1905, %1904
  %1907 = icmp eq i32 %1906, 2
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %38, align 1
  %1909 = icmp ne i8 %1903, 0
  %1910 = xor i1 %1909, %1907
  %.v111 = select i1 %1910, i64 13, i64 411
  %1911 = add i64 %1882, %.v111
  store i64 %1911, i64* %3, align 8
  br i1 %1910, label %block_403f89, label %block_.L_404117

block_403f89:                                     ; preds = %block_.L_403f7c
  %1912 = add i64 %1911, 7
  store i64 %1912, i64* %3, align 8
  %1913 = load i32, i32* %1886, align 4
  %1914 = add i32 %1913, -8
  %1915 = icmp ult i32 %1913, 8
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %14, align 1
  %1917 = and i32 %1914, 255
  %1918 = tail call i32 @llvm.ctpop.i32(i32 %1917)
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  %1921 = xor i8 %1920, 1
  store i8 %1921, i8* %21, align 1
  %1922 = xor i32 %1914, %1913
  %1923 = lshr i32 %1922, 4
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  store i8 %1925, i8* %26, align 1
  %1926 = icmp eq i32 %1914, 0
  %1927 = zext i1 %1926 to i8
  store i8 %1927, i8* %29, align 1
  %1928 = lshr i32 %1914, 31
  %1929 = trunc i32 %1928 to i8
  store i8 %1929, i8* %32, align 1
  %1930 = lshr i32 %1913, 31
  %1931 = xor i32 %1928, %1930
  %1932 = add nuw nsw i32 %1931, %1930
  %1933 = icmp eq i32 %1932, 2
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %38, align 1
  %1935 = icmp ne i8 %1929, 0
  %1936 = xor i1 %1935, %1933
  %.v110 = select i1 %1936, i64 13, i64 121
  %1937 = add i64 %1911, %.v110
  %1938 = add i64 %1937, 6
  store i64 %1938, i64* %3, align 8
  %1939 = load i32, i32* %1886, align 4
  %1940 = zext i32 %1939 to i64
  store i64 %1940, i64* %RAX.i243, align 8
  %1941 = add i64 %1883, -184
  %1942 = add i64 %1937, 13
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i64*
  %1944 = load i64, i64* %1943, align 8
  store i64 %1944, i64* %RCX.i1277, align 8
  %1945 = add i64 %1883, -196
  %1946 = add i64 %1937, 20
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = sext i32 %1948 to i64
  store i64 %1949, i64* %RDX.i1227, align 8
  %1950 = shl nsw i64 %1949, 3
  %1951 = add i64 %1950, %1944
  %1952 = add i64 %1937, 24
  store i64 %1952, i64* %3, align 8
  %1953 = inttoptr i64 %1951 to i64*
  %1954 = load i64, i64* %1953, align 8
  store i64 %1954, i64* %RCX.i1277, align 8
  %1955 = add i64 %1883, -200
  %1956 = add i64 %1937, 30
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to i32*
  %1958 = load i32, i32* %1957, align 4
  %1959 = add i32 %1958, 7
  %1960 = zext i32 %1959 to i64
  store i64 %1960, i64* %RSI.i1266, align 8
  %1961 = icmp ugt i32 %1958, -8
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %14, align 1
  %1963 = and i32 %1959, 255
  %1964 = tail call i32 @llvm.ctpop.i32(i32 %1963)
  %1965 = trunc i32 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = xor i8 %1966, 1
  store i8 %1967, i8* %21, align 1
  %1968 = xor i32 %1959, %1958
  %1969 = lshr i32 %1968, 4
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  store i8 %1971, i8* %26, align 1
  %1972 = icmp eq i32 %1959, 0
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %29, align 1
  %1974 = lshr i32 %1959, 31
  %1975 = trunc i32 %1974 to i8
  store i8 %1975, i8* %32, align 1
  %1976 = lshr i32 %1958, 31
  %1977 = xor i32 %1974, %1976
  %1978 = add nuw nsw i32 %1977, %1974
  %1979 = icmp eq i32 %1978, 2
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %38, align 1
  %1981 = load i64, i64* %RBP.i, align 8
  %1982 = add i64 %1981, -148
  %1983 = add i64 %1937, 39
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = add i32 %1985, %1959
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RSI.i1266, align 8
  %1988 = icmp ult i32 %1986, %1959
  %1989 = icmp ult i32 %1986, %1985
  %1990 = or i1 %1988, %1989
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %14, align 1
  %1992 = and i32 %1986, 255
  %1993 = tail call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %21, align 1
  %1997 = xor i32 %1985, %1959
  %1998 = xor i32 %1997, %1986
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  store i8 %2001, i8* %26, align 1
  %2002 = icmp eq i32 %1986, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %29, align 1
  %2004 = lshr i32 %1986, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %32, align 1
  %2006 = lshr i32 %1985, 31
  %2007 = xor i32 %2004, %1974
  %2008 = xor i32 %2004, %2006
  %2009 = add nuw nsw i32 %2007, %2008
  %2010 = icmp eq i32 %2009, 2
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %38, align 1
  %2012 = sext i32 %1986 to i64
  store i64 %2012, i64* %RDX.i1227, align 8
  %2013 = shl nsw i64 %2012, 1
  %2014 = add i64 %1954, %2013
  %2015 = add i64 %1937, 46
  store i64 %2015, i64* %3, align 8
  %2016 = inttoptr i64 %2014 to i16*
  %2017 = load i16, i16* %2016, align 2
  %2018 = zext i16 %2017 to i64
  store i64 %2018, i64* %RSI.i1266, align 8
  %2019 = add i64 %1981, -184
  %2020 = add i64 %1937, 53
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i64*
  %2022 = load i64, i64* %2021, align 8
  store i64 %2022, i64* %RCX.i1277, align 8
  br i1 %1936, label %block_403f96, label %block_.L_404002

block_403f96:                                     ; preds = %block_403f89
  %2023 = add i64 %1981, -196
  %2024 = add i64 %1937, 60
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i32*
  %2026 = load i32, i32* %2025, align 4
  %2027 = sext i32 %2026 to i64
  store i64 %2027, i64* %RDX.i1227, align 8
  %2028 = shl nsw i64 %2027, 3
  %2029 = add i64 %2028, %2022
  %2030 = add i64 %1937, 64
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2029 to i64*
  %2032 = load i64, i64* %2031, align 8
  store i64 %2032, i64* %RCX.i1277, align 8
  %2033 = add i64 %1981, -200
  %2034 = add i64 %1937, 70
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  %2036 = load i32, i32* %2035, align 4
  %2037 = add i32 %2036, 7
  %2038 = zext i32 %2037 to i64
  store i64 %2038, i64* %RDI.i1219, align 8
  %2039 = icmp ugt i32 %2036, -8
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %14, align 1
  %2041 = and i32 %2037, 255
  %2042 = tail call i32 @llvm.ctpop.i32(i32 %2041)
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  %2045 = xor i8 %2044, 1
  store i8 %2045, i8* %21, align 1
  %2046 = xor i32 %2037, %2036
  %2047 = lshr i32 %2046, 4
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  store i8 %2049, i8* %26, align 1
  %2050 = icmp eq i32 %2037, 0
  %2051 = zext i1 %2050 to i8
  store i8 %2051, i8* %29, align 1
  %2052 = lshr i32 %2037, 31
  %2053 = trunc i32 %2052 to i8
  store i8 %2053, i8* %32, align 1
  %2054 = lshr i32 %2036, 31
  %2055 = xor i32 %2052, %2054
  %2056 = add nuw nsw i32 %2055, %2052
  %2057 = icmp eq i32 %2056, 2
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %38, align 1
  %2059 = add i64 %1937, 79
  store i64 %2059, i64* %3, align 8
  %2060 = load i32, i32* %1984, align 4
  %2061 = sub i32 %2037, %2060
  %2062 = zext i32 %2061 to i64
  store i64 %2062, i64* %RDI.i1219, align 8
  %2063 = icmp ult i32 %2037, %2060
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %14, align 1
  %2065 = and i32 %2061, 255
  %2066 = tail call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  store i8 %2069, i8* %21, align 1
  %2070 = xor i32 %2060, %2037
  %2071 = xor i32 %2070, %2061
  %2072 = lshr i32 %2071, 4
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  store i8 %2074, i8* %26, align 1
  %2075 = icmp eq i32 %2061, 0
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %29, align 1
  %2077 = lshr i32 %2061, 31
  %2078 = trunc i32 %2077 to i8
  store i8 %2078, i8* %32, align 1
  %2079 = lshr i32 %2060, 31
  %2080 = xor i32 %2079, %2052
  %2081 = xor i32 %2077, %2052
  %2082 = add nuw nsw i32 %2081, %2080
  %2083 = icmp eq i32 %2082, 2
  %2084 = zext i1 %2083 to i8
  store i8 %2084, i8* %38, align 1
  %2085 = sext i32 %2061 to i64
  store i64 %2085, i64* %RDX.i1227, align 8
  %2086 = shl nsw i64 %2085, 1
  %2087 = add i64 %2032, %2086
  %2088 = add i64 %1937, 86
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i16*
  %2090 = load i16, i16* %2089, align 2
  %2091 = zext i16 %2090 to i64
  store i64 %2091, i64* %RDI.i1219, align 8
  %2092 = zext i16 %2090 to i32
  %2093 = zext i16 %2017 to i32
  %2094 = sub nsw i32 %2093, %2092
  %2095 = zext i32 %2094 to i64
  store i64 %2095, i64* %RSI.i1266, align 8
  %2096 = load i64, i64* %RAX.i243, align 8
  %2097 = shl i64 %2096, 32
  %2098 = ashr exact i64 %2097, 32
  %2099 = sext i32 %2094 to i64
  %2100 = mul nsw i64 %2099, %2098
  %2101 = trunc i64 %2100 to i32
  %2102 = and i64 %2100, 4294967295
  store i64 %2102, i64* %RAX.i243, align 8
  %2103 = shl i64 %2100, 32
  %2104 = ashr exact i64 %2103, 32
  %2105 = icmp ne i64 %2104, %2100
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %14, align 1
  %2107 = and i32 %2101, 255
  %2108 = tail call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  store i8 %2111, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2112 = lshr i32 %2101, 31
  %2113 = trunc i32 %2112 to i8
  store i8 %2113, i8* %32, align 1
  store i8 %2106, i8* %38, align 1
  %2114 = load i64, i64* %RBP.i, align 8
  %2115 = add i64 %2114, -156
  %2116 = add i64 %1937, 97
  store i64 %2116, i64* %3, align 8
  %2117 = trunc i64 %2100 to i32
  %2118 = inttoptr i64 %2115 to i32*
  %2119 = load i32, i32* %2118, align 4
  %2120 = add i32 %2119, %2117
  %2121 = zext i32 %2120 to i64
  store i64 %2121, i64* %RAX.i243, align 8
  %2122 = icmp ult i32 %2120, %2117
  %2123 = icmp ult i32 %2120, %2119
  %2124 = or i1 %2122, %2123
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %14, align 1
  %2126 = and i32 %2120, 255
  %2127 = tail call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  store i8 %2130, i8* %21, align 1
  %2131 = xor i32 %2119, %2117
  %2132 = xor i32 %2131, %2120
  %2133 = lshr i32 %2132, 4
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  store i8 %2135, i8* %26, align 1
  %2136 = icmp eq i32 %2120, 0
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %29, align 1
  %2138 = lshr i32 %2120, 31
  %2139 = trunc i32 %2138 to i8
  store i8 %2139, i8* %32, align 1
  %2140 = lshr i32 %2117, 31
  %2141 = lshr i32 %2119, 31
  %2142 = xor i32 %2138, %2140
  %2143 = xor i32 %2138, %2141
  %2144 = add nuw nsw i32 %2142, %2143
  %2145 = icmp eq i32 %2144, 2
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %38, align 1
  %2147 = add i64 %1937, 103
  store i64 %2147, i64* %3, align 8
  store i32 %2120, i32* %2118, align 4
  %2148 = load i64, i64* %3, align 8
  %2149 = add i64 %2148, 97
  store i64 %2149, i64* %3, align 8
  br label %block_.L_40405e

block_.L_404002:                                  ; preds = %block_403f89
  %2150 = add i64 %1981, -604
  %2151 = add i64 %1937, 60
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i32*
  %2153 = load i32, i32* %2152, align 4
  %2154 = sext i32 %2153 to i64
  store i64 %2154, i64* %RDX.i1227, align 8
  %2155 = shl nsw i64 %2154, 3
  %2156 = add i64 %2155, %2022
  %2157 = add i64 %1937, 64
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i64*
  %2159 = load i64, i64* %2158, align 8
  store i64 %2159, i64* %RCX.i1277, align 8
  %2160 = add i64 %1981, -608
  %2161 = add i64 %1937, 71
  store i64 %2161, i64* %3, align 8
  %2162 = inttoptr i64 %2160 to i32*
  %2163 = load i32, i32* %2162, align 4
  %2164 = sext i32 %2163 to i64
  store i64 %2164, i64* %RDX.i1227, align 8
  %2165 = shl nsw i64 %2164, 1
  %2166 = add i64 %2165, %2159
  %2167 = add i64 %1937, 75
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2166 to i16*
  %2169 = load i16, i16* %2168, align 2
  %2170 = zext i16 %2169 to i64
  store i64 %2170, i64* %RDI.i1219, align 8
  %2171 = zext i16 %2169 to i32
  %2172 = zext i16 %2017 to i32
  %2173 = sub nsw i32 %2172, %2171
  %2174 = zext i32 %2173 to i64
  store i64 %2174, i64* %RSI.i1266, align 8
  %2175 = load i64, i64* %RAX.i243, align 8
  %2176 = shl i64 %2175, 32
  %2177 = ashr exact i64 %2176, 32
  %2178 = sext i32 %2173 to i64
  %2179 = mul nsw i64 %2178, %2177
  %2180 = trunc i64 %2179 to i32
  %2181 = and i64 %2179, 4294967295
  store i64 %2181, i64* %RAX.i243, align 8
  %2182 = shl i64 %2179, 32
  %2183 = ashr exact i64 %2182, 32
  %2184 = icmp ne i64 %2183, %2179
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %14, align 1
  %2186 = and i32 %2180, 255
  %2187 = tail call i32 @llvm.ctpop.i32(i32 %2186)
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = xor i8 %2189, 1
  store i8 %2190, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2191 = lshr i32 %2180, 31
  %2192 = trunc i32 %2191 to i8
  store i8 %2192, i8* %32, align 1
  store i8 %2185, i8* %38, align 1
  %2193 = add i64 %1981, -156
  %2194 = add i64 %1937, 86
  store i64 %2194, i64* %3, align 8
  %2195 = trunc i64 %2179 to i32
  %2196 = inttoptr i64 %2193 to i32*
  %2197 = load i32, i32* %2196, align 4
  %2198 = add i32 %2197, %2195
  %2199 = zext i32 %2198 to i64
  store i64 %2199, i64* %RAX.i243, align 8
  %2200 = icmp ult i32 %2198, %2195
  %2201 = icmp ult i32 %2198, %2197
  %2202 = or i1 %2200, %2201
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %14, align 1
  %2204 = and i32 %2198, 255
  %2205 = tail call i32 @llvm.ctpop.i32(i32 %2204)
  %2206 = trunc i32 %2205 to i8
  %2207 = and i8 %2206, 1
  %2208 = xor i8 %2207, 1
  store i8 %2208, i8* %21, align 1
  %2209 = xor i32 %2197, %2195
  %2210 = xor i32 %2209, %2198
  %2211 = lshr i32 %2210, 4
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  store i8 %2213, i8* %26, align 1
  %2214 = icmp eq i32 %2198, 0
  %2215 = zext i1 %2214 to i8
  store i8 %2215, i8* %29, align 1
  %2216 = lshr i32 %2198, 31
  %2217 = trunc i32 %2216 to i8
  store i8 %2217, i8* %32, align 1
  %2218 = lshr i32 %2195, 31
  %2219 = lshr i32 %2197, 31
  %2220 = xor i32 %2216, %2218
  %2221 = xor i32 %2216, %2219
  %2222 = add nuw nsw i32 %2220, %2221
  %2223 = icmp eq i32 %2222, 2
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %38, align 1
  %2225 = load i64, i64* %RBP.i, align 8
  %2226 = add i64 %2225, -156
  %2227 = add i64 %1937, 92
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2226 to i32*
  store i32 %2198, i32* %2228, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_40405e

block_.L_40405e:                                  ; preds = %block_.L_404002, %block_403f96
  %2229 = phi i64 [ %.pre100, %block_.L_404002 ], [ %2149, %block_403f96 ]
  %2230 = load i64, i64* %RBP.i, align 8
  %2231 = add i64 %2230, -624
  store i64 %2231, i64* %RAX.i243, align 8
  store i64 8, i64* %RCX.i1277, align 8
  %2232 = add i64 %2230, -148
  %2233 = add i64 %2229, 18
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  %2235 = load i32, i32* %2234, align 4
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RDX.i1227, align 8
  %2237 = add i64 %2230, -184
  %2238 = add i64 %2229, 25
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i64*
  %2240 = load i64, i64* %2239, align 8
  store i64 %2240, i64* %RSI.i1266, align 8
  %2241 = add i64 %2229, 31
  store i64 %2241, i64* %3, align 8
  %2242 = load i32, i32* %2234, align 4
  %2243 = add i32 %2242, 8
  %2244 = zext i32 %2243 to i64
  store i64 %2244, i64* %RDI.i1219, align 8
  %2245 = sext i32 %2243 to i64
  %2246 = mul nsw i64 %2245, 24
  store i64 %2246, i64* %R8.i1251, align 8
  %2247 = lshr i64 %2246, 63
  %2248 = add i64 %2246, %2231
  store i64 %2248, i64* %R9.i461, align 8
  %2249 = icmp ult i64 %2248, %2231
  %2250 = icmp ult i64 %2248, %2246
  %2251 = or i1 %2249, %2250
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %14, align 1
  %2253 = trunc i64 %2248 to i32
  %2254 = and i32 %2253, 255
  %2255 = tail call i32 @llvm.ctpop.i32(i32 %2254)
  %2256 = trunc i32 %2255 to i8
  %2257 = and i8 %2256, 1
  %2258 = xor i8 %2257, 1
  store i8 %2258, i8* %21, align 1
  %2259 = xor i64 %2246, %2231
  %2260 = xor i64 %2259, %2248
  %2261 = lshr i64 %2260, 4
  %2262 = trunc i64 %2261 to i8
  %2263 = and i8 %2262, 1
  store i8 %2263, i8* %26, align 1
  %2264 = icmp eq i64 %2248, 0
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %29, align 1
  %2266 = lshr i64 %2248, 63
  %2267 = trunc i64 %2266 to i8
  store i8 %2267, i8* %32, align 1
  %2268 = lshr i64 %2231, 63
  %2269 = xor i64 %2266, %2268
  %2270 = xor i64 %2266, %2247
  %2271 = add nuw nsw i64 %2269, %2270
  %2272 = icmp eq i64 %2271, 2
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %38, align 1
  %2274 = add i64 %2248, 20
  %2275 = add i64 %2229, 51
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2274 to i32*
  %2277 = load i32, i32* %2276, align 4
  %2278 = sext i32 %2277 to i64
  store i64 %2278, i64* %R8.i1251, align 8
  %2279 = load i64, i64* %RSI.i1266, align 8
  %2280 = shl nsw i64 %2278, 3
  %2281 = add i64 %2280, %2279
  %2282 = add i64 %2229, 55
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2281 to i64*
  %2284 = load i64, i64* %2283, align 8
  store i64 %2284, i64* %RSI.i1266, align 8
  %2285 = load i64, i64* %RBP.i, align 8
  %2286 = add i64 %2285, -148
  %2287 = add i64 %2229, 61
  store i64 %2287, i64* %3, align 8
  %2288 = inttoptr i64 %2286 to i32*
  %2289 = load i32, i32* %2288, align 4
  %2290 = add i32 %2289, 8
  %2291 = zext i32 %2290 to i64
  store i64 %2291, i64* %RDI.i1219, align 8
  %2292 = sext i32 %2290 to i64
  %2293 = mul nsw i64 %2292, 24
  store i64 %2293, i64* %R8.i1251, align 8
  %2294 = lshr i64 %2293, 63
  %2295 = load i64, i64* %RAX.i243, align 8
  %2296 = add i64 %2293, %2295
  store i64 %2296, i64* %R9.i461, align 8
  %2297 = icmp ult i64 %2296, %2295
  %2298 = icmp ult i64 %2296, %2293
  %2299 = or i1 %2297, %2298
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %14, align 1
  %2301 = trunc i64 %2296 to i32
  %2302 = and i32 %2301, 255
  %2303 = tail call i32 @llvm.ctpop.i32(i32 %2302)
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  store i8 %2306, i8* %21, align 1
  %2307 = xor i64 %2293, %2295
  %2308 = xor i64 %2307, %2296
  %2309 = lshr i64 %2308, 4
  %2310 = trunc i64 %2309 to i8
  %2311 = and i8 %2310, 1
  store i8 %2311, i8* %26, align 1
  %2312 = icmp eq i64 %2296, 0
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %29, align 1
  %2314 = lshr i64 %2296, 63
  %2315 = trunc i64 %2314 to i8
  store i8 %2315, i8* %32, align 1
  %2316 = lshr i64 %2295, 63
  %2317 = xor i64 %2314, %2316
  %2318 = xor i64 %2314, %2294
  %2319 = add nuw nsw i64 %2317, %2318
  %2320 = icmp eq i64 %2319, 2
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %38, align 1
  %2322 = add i64 %2296, 16
  %2323 = add i64 %2229, 81
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i32*
  %2325 = load i32, i32* %2324, align 4
  %2326 = sext i32 %2325 to i64
  store i64 %2326, i64* %R8.i1251, align 8
  %2327 = load i64, i64* %RSI.i1266, align 8
  %2328 = shl nsw i64 %2326, 1
  %2329 = add i64 %2328, %2327
  %2330 = add i64 %2229, 86
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2329 to i16*
  %2332 = load i16, i16* %2331, align 2
  %2333 = zext i16 %2332 to i64
  store i64 %2333, i64* %RDI.i1219, align 8
  %2334 = load i64, i64* %RBP.i, align 8
  %2335 = add i64 %2334, -184
  %2336 = add i64 %2229, 93
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i64*
  %2338 = load i64, i64* %2337, align 8
  store i64 %2338, i64* %RSI.i1266, align 8
  %2339 = load i32, i32* %ECX.i1273, align 4
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %1881, align 8
  %2341 = add i64 %2334, -148
  %2342 = add i64 %2229, 103
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = sub i32 %2339, %2344
  %2346 = zext i32 %2345 to i64
  store i64 %2346, i64* %1881, align 8
  %2347 = sext i32 %2345 to i64
  %2348 = mul nsw i64 %2347, 24
  store i64 %2348, i64* %R8.i1251, align 8
  %2349 = lshr i64 %2348, 63
  %2350 = load i64, i64* %RAX.i243, align 8
  %2351 = add i64 %2348, %2350
  store i64 %2351, i64* %R9.i461, align 8
  %2352 = icmp ult i64 %2351, %2350
  %2353 = icmp ult i64 %2351, %2348
  %2354 = or i1 %2352, %2353
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %14, align 1
  %2356 = trunc i64 %2351 to i32
  %2357 = and i32 %2356, 255
  %2358 = tail call i32 @llvm.ctpop.i32(i32 %2357)
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = xor i8 %2360, 1
  store i8 %2361, i8* %21, align 1
  %2362 = xor i64 %2348, %2350
  %2363 = xor i64 %2362, %2351
  %2364 = lshr i64 %2363, 4
  %2365 = trunc i64 %2364 to i8
  %2366 = and i8 %2365, 1
  store i8 %2366, i8* %26, align 1
  %2367 = icmp eq i64 %2351, 0
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %29, align 1
  %2369 = lshr i64 %2351, 63
  %2370 = trunc i64 %2369 to i8
  store i8 %2370, i8* %32, align 1
  %2371 = lshr i64 %2350, 63
  %2372 = xor i64 %2369, %2371
  %2373 = xor i64 %2369, %2349
  %2374 = add nuw nsw i64 %2372, %2373
  %2375 = icmp eq i64 %2374, 2
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %38, align 1
  %2377 = add i64 %2351, 20
  %2378 = add i64 %2229, 120
  store i64 %2378, i64* %3, align 8
  %2379 = inttoptr i64 %2377 to i32*
  %2380 = load i32, i32* %2379, align 4
  %2381 = sext i32 %2380 to i64
  store i64 %2381, i64* %R8.i1251, align 8
  %2382 = load i64, i64* %RSI.i1266, align 8
  %2383 = shl nsw i64 %2381, 3
  %2384 = add i64 %2383, %2382
  %2385 = add i64 %2229, 124
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i64*
  %2387 = load i64, i64* %2386, align 8
  store i64 %2387, i64* %RSI.i1266, align 8
  %2388 = load i64, i64* %RCX.i1277, align 8
  %2389 = load i64, i64* %RBP.i, align 8
  %2390 = add i64 %2389, -148
  %2391 = add i64 %2229, 130
  store i64 %2391, i64* %3, align 8
  %2392 = trunc i64 %2388 to i32
  %2393 = inttoptr i64 %2390 to i32*
  %2394 = load i32, i32* %2393, align 4
  %2395 = sub i32 %2392, %2394
  %2396 = zext i32 %2395 to i64
  store i64 %2396, i64* %RCX.i1277, align 8
  %2397 = sext i32 %2395 to i64
  %2398 = mul nsw i64 %2397, 24
  store i64 %2398, i64* %R8.i1251, align 8
  %2399 = lshr i64 %2398, 63
  %2400 = load i64, i64* %RAX.i243, align 8
  %2401 = add i64 %2398, %2400
  store i64 %2401, i64* %RAX.i243, align 8
  %2402 = icmp ult i64 %2401, %2400
  %2403 = icmp ult i64 %2401, %2398
  %2404 = or i1 %2402, %2403
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %14, align 1
  %2406 = trunc i64 %2401 to i32
  %2407 = and i32 %2406, 255
  %2408 = tail call i32 @llvm.ctpop.i32(i32 %2407)
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = xor i8 %2410, 1
  store i8 %2411, i8* %21, align 1
  %2412 = xor i64 %2398, %2400
  %2413 = xor i64 %2412, %2401
  %2414 = lshr i64 %2413, 4
  %2415 = trunc i64 %2414 to i8
  %2416 = and i8 %2415, 1
  store i8 %2416, i8* %26, align 1
  %2417 = icmp eq i64 %2401, 0
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %29, align 1
  %2419 = lshr i64 %2401, 63
  %2420 = trunc i64 %2419 to i8
  store i8 %2420, i8* %32, align 1
  %2421 = lshr i64 %2400, 63
  %2422 = xor i64 %2419, %2421
  %2423 = xor i64 %2419, %2399
  %2424 = add nuw nsw i64 %2422, %2423
  %2425 = icmp eq i64 %2424, 2
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %38, align 1
  %2427 = add i64 %2401, 16
  %2428 = add i64 %2229, 144
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = sext i32 %2430 to i64
  store i64 %2431, i64* %RAX.i243, align 8
  %2432 = load i64, i64* %RSI.i1266, align 8
  %2433 = shl nsw i64 %2431, 1
  %2434 = add i64 %2433, %2432
  %2435 = add i64 %2229, 148
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i16*
  %2437 = load i16, i16* %2436, align 2
  %2438 = zext i16 %2437 to i64
  store i64 %2438, i64* %RCX.i1277, align 8
  %2439 = load i64, i64* %RDI.i1219, align 8
  %2440 = zext i16 %2437 to i32
  %2441 = trunc i64 %2439 to i32
  %2442 = sub i32 %2441, %2440
  %2443 = zext i32 %2442 to i64
  store i64 %2443, i64* %RDI.i1219, align 8
  %2444 = load i64, i64* %RDX.i1227, align 8
  %2445 = shl i64 %2444, 32
  %2446 = ashr exact i64 %2445, 32
  %2447 = sext i32 %2442 to i64
  %2448 = mul nsw i64 %2447, %2446
  %2449 = trunc i64 %2448 to i32
  %2450 = and i64 %2448, 4294967295
  store i64 %2450, i64* %RDX.i1227, align 8
  %2451 = shl i64 %2448, 32
  %2452 = ashr exact i64 %2451, 32
  %2453 = icmp ne i64 %2452, %2448
  %2454 = zext i1 %2453 to i8
  store i8 %2454, i8* %14, align 1
  %2455 = and i32 %2449, 255
  %2456 = tail call i32 @llvm.ctpop.i32(i32 %2455)
  %2457 = trunc i32 %2456 to i8
  %2458 = and i8 %2457, 1
  %2459 = xor i8 %2458, 1
  store i8 %2459, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2460 = lshr i32 %2449, 31
  %2461 = trunc i32 %2460 to i8
  store i8 %2461, i8* %32, align 1
  store i8 %2454, i8* %38, align 1
  %2462 = load i64, i64* %RBP.i, align 8
  %2463 = add i64 %2462, -160
  %2464 = add i64 %2229, 159
  store i64 %2464, i64* %3, align 8
  %2465 = trunc i64 %2448 to i32
  %2466 = inttoptr i64 %2463 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = add i32 %2467, %2465
  %2469 = zext i32 %2468 to i64
  store i64 %2469, i64* %RDX.i1227, align 8
  %2470 = icmp ult i32 %2468, %2465
  %2471 = icmp ult i32 %2468, %2467
  %2472 = or i1 %2470, %2471
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %14, align 1
  %2474 = and i32 %2468, 255
  %2475 = tail call i32 @llvm.ctpop.i32(i32 %2474)
  %2476 = trunc i32 %2475 to i8
  %2477 = and i8 %2476, 1
  %2478 = xor i8 %2477, 1
  store i8 %2478, i8* %21, align 1
  %2479 = xor i32 %2467, %2465
  %2480 = xor i32 %2479, %2468
  %2481 = lshr i32 %2480, 4
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  store i8 %2483, i8* %26, align 1
  %2484 = icmp eq i32 %2468, 0
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %29, align 1
  %2486 = lshr i32 %2468, 31
  %2487 = trunc i32 %2486 to i8
  store i8 %2487, i8* %32, align 1
  %2488 = lshr i32 %2465, 31
  %2489 = lshr i32 %2467, 31
  %2490 = xor i32 %2486, %2488
  %2491 = xor i32 %2486, %2489
  %2492 = add nuw nsw i32 %2490, %2491
  %2493 = icmp eq i32 %2492, 2
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %38, align 1
  %2495 = add i64 %2229, 165
  store i64 %2495, i64* %3, align 8
  store i32 %2468, i32* %2466, align 4
  %2496 = load i64, i64* %RBP.i, align 8
  %2497 = add i64 %2496, -148
  %2498 = load i64, i64* %3, align 8
  %2499 = add i64 %2498, 6
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500, align 4
  %2502 = add i32 %2501, 1
  %2503 = zext i32 %2502 to i64
  store i64 %2503, i64* %RAX.i243, align 8
  %2504 = icmp eq i32 %2501, -1
  %2505 = icmp eq i32 %2502, 0
  %2506 = or i1 %2504, %2505
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %14, align 1
  %2508 = and i32 %2502, 255
  %2509 = tail call i32 @llvm.ctpop.i32(i32 %2508)
  %2510 = trunc i32 %2509 to i8
  %2511 = and i8 %2510, 1
  %2512 = xor i8 %2511, 1
  store i8 %2512, i8* %21, align 1
  %2513 = xor i32 %2502, %2501
  %2514 = lshr i32 %2513, 4
  %2515 = trunc i32 %2514 to i8
  %2516 = and i8 %2515, 1
  store i8 %2516, i8* %26, align 1
  %2517 = zext i1 %2505 to i8
  store i8 %2517, i8* %29, align 1
  %2518 = lshr i32 %2502, 31
  %2519 = trunc i32 %2518 to i8
  store i8 %2519, i8* %32, align 1
  %2520 = lshr i32 %2501, 31
  %2521 = xor i32 %2518, %2520
  %2522 = add nuw nsw i32 %2521, %2518
  %2523 = icmp eq i32 %2522, 2
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %38, align 1
  %2525 = add i64 %2498, 15
  store i64 %2525, i64* %3, align 8
  store i32 %2502, i32* %2500, align 4
  %2526 = load i64, i64* %3, align 8
  %2527 = add i64 %2526, -406
  store i64 %2527, i64* %3, align 8
  br label %block_.L_403f7c

block_.L_404117:                                  ; preds = %block_.L_403f7c
  %2528 = add i64 %1883, -156
  %2529 = add i64 %1911, 7
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i32*
  %2531 = load i32, i32* %2530, align 4
  %2532 = mul i32 %2531, 5
  %2533 = add i32 %2532, 32
  %2534 = zext i32 %2533 to i64
  %2535 = shl nuw i64 %2534, 32
  %2536 = ashr i64 %2535, 37
  %2537 = lshr i64 %2536, 1
  %2538 = trunc i64 %2536 to i8
  %2539 = and i8 %2538, 1
  %2540 = trunc i64 %2537 to i32
  %2541 = and i64 %2537, 4294967295
  store i64 %2541, i64* %RAX.i243, align 8
  store i8 %2539, i8* %14, align 1
  %2542 = and i32 %2540, 255
  %2543 = tail call i32 @llvm.ctpop.i32(i32 %2542)
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  %2546 = xor i8 %2545, 1
  store i8 %2546, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2547 = icmp eq i32 %2540, 0
  %2548 = zext i1 %2547 to i8
  store i8 %2548, i8* %29, align 1
  %2549 = lshr i64 %2536, 32
  %2550 = trunc i64 %2549 to i8
  %2551 = and i8 %2550, 1
  store i8 %2551, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2552 = add i64 %1883, -164
  %2553 = trunc i64 %2537 to i32
  %2554 = add i64 %1911, 19
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2552 to i32*
  store i32 %2553, i32* %2555, align 4
  %2556 = load i64, i64* %RBP.i, align 8
  %2557 = add i64 %2556, -160
  %2558 = load i64, i64* %3, align 8
  %2559 = add i64 %2558, 7
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2557 to i32*
  %2561 = load i32, i32* %2560, align 4
  %2562 = mul i32 %2561, 5
  %2563 = add i32 %2562, 32
  %2564 = zext i32 %2563 to i64
  %2565 = shl nuw i64 %2564, 32
  %2566 = ashr i64 %2565, 37
  %2567 = lshr i64 %2566, 1
  %2568 = trunc i64 %2566 to i8
  %2569 = and i8 %2568, 1
  %2570 = trunc i64 %2567 to i32
  %2571 = and i64 %2567, 4294967295
  store i64 %2571, i64* %RAX.i243, align 8
  store i8 %2569, i8* %14, align 1
  %2572 = and i32 %2570, 255
  %2573 = tail call i32 @llvm.ctpop.i32(i32 %2572)
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  store i8 %2576, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2577 = icmp eq i32 %2570, 0
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %29, align 1
  %2579 = lshr i64 %2566, 32
  %2580 = trunc i64 %2579 to i8
  %2581 = and i8 %2580, 1
  store i8 %2581, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2582 = add i64 %2556, -168
  %2583 = trunc i64 %2567 to i32
  %2584 = add i64 %2558, 19
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2582 to i32*
  store i32 %2583, i32* %2585, align 4
  %2586 = load i64, i64* %RBP.i, align 8
  %2587 = add i64 %2586, -184
  %2588 = load i64, i64* %3, align 8
  %2589 = add i64 %2588, 7
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2587 to i64*
  %2591 = load i64, i64* %2590, align 8
  store i64 %2591, i64* %RCX.i1277, align 8
  %2592 = add i64 %2586, -196
  %2593 = add i64 %2588, 14
  store i64 %2593, i64* %3, align 8
  %2594 = inttoptr i64 %2592 to i32*
  %2595 = load i32, i32* %2594, align 4
  %2596 = sext i32 %2595 to i64
  store i64 %2596, i64* %RDX.i1227, align 8
  %2597 = shl nsw i64 %2596, 3
  %2598 = add i64 %2597, %2591
  %2599 = add i64 %2588, 18
  store i64 %2599, i64* %3, align 8
  %2600 = inttoptr i64 %2598 to i64*
  %2601 = load i64, i64* %2600, align 8
  store i64 %2601, i64* %RCX.i1277, align 8
  %2602 = add i64 %2586, -200
  %2603 = add i64 %2588, 24
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i32*
  %2605 = load i32, i32* %2604, align 4
  %2606 = add i32 %2605, 15
  %2607 = zext i32 %2606 to i64
  store i64 %2607, i64* %RAX.i243, align 8
  %2608 = icmp ugt i32 %2605, -16
  %2609 = zext i1 %2608 to i8
  store i8 %2609, i8* %14, align 1
  %2610 = and i32 %2606, 255
  %2611 = tail call i32 @llvm.ctpop.i32(i32 %2610)
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  %2614 = xor i8 %2613, 1
  store i8 %2614, i8* %21, align 1
  %2615 = xor i32 %2606, %2605
  %2616 = lshr i32 %2615, 4
  %2617 = trunc i32 %2616 to i8
  %2618 = and i8 %2617, 1
  store i8 %2618, i8* %26, align 1
  %2619 = icmp eq i32 %2606, 0
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %29, align 1
  %2621 = lshr i32 %2606, 31
  %2622 = trunc i32 %2621 to i8
  store i8 %2622, i8* %32, align 1
  %2623 = lshr i32 %2605, 31
  %2624 = xor i32 %2621, %2623
  %2625 = add nuw nsw i32 %2624, %2621
  %2626 = icmp eq i32 %2625, 2
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %38, align 1
  %2628 = sext i32 %2606 to i64
  store i64 %2628, i64* %RDX.i1227, align 8
  %2629 = shl nsw i64 %2628, 1
  %2630 = add i64 %2601, %2629
  %2631 = add i64 %2588, 34
  store i64 %2631, i64* %3, align 8
  %2632 = inttoptr i64 %2630 to i16*
  %2633 = load i16, i16* %2632, align 2
  %2634 = zext i16 %2633 to i64
  store i64 %2634, i64* %RAX.i243, align 8
  %2635 = add i64 %2588, 41
  store i64 %2635, i64* %3, align 8
  %2636 = load i64, i64* %2590, align 8
  store i64 %2636, i64* %RCX.i1277, align 8
  %2637 = add i64 %2586, -220
  %2638 = add i64 %2588, 48
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i32*
  %2640 = load i32, i32* %2639, align 4
  %2641 = sext i32 %2640 to i64
  store i64 %2641, i64* %RDX.i1227, align 8
  %2642 = shl nsw i64 %2641, 3
  %2643 = add i64 %2642, %2636
  %2644 = add i64 %2588, 52
  store i64 %2644, i64* %3, align 8
  %2645 = inttoptr i64 %2643 to i64*
  %2646 = load i64, i64* %2645, align 8
  store i64 %2646, i64* %RCX.i1277, align 8
  %2647 = add i64 %2586, -224
  %2648 = add i64 %2588, 59
  store i64 %2648, i64* %3, align 8
  %2649 = inttoptr i64 %2647 to i32*
  %2650 = load i32, i32* %2649, align 4
  %2651 = sext i32 %2650 to i64
  store i64 %2651, i64* %RDX.i1227, align 8
  %2652 = shl nsw i64 %2651, 1
  %2653 = add i64 %2652, %2646
  %2654 = add i64 %2588, 63
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i16*
  %2656 = load i16, i16* %2655, align 2
  %2657 = zext i16 %2656 to i64
  store i64 %2657, i64* %RSI.i1266, align 8
  %2658 = zext i16 %2656 to i32
  %2659 = zext i16 %2633 to i32
  %2660 = add nuw nsw i32 %2658, %2659
  %2661 = shl nuw nsw i32 %2660, 4
  %2662 = zext i32 %2661 to i64
  store i64 %2662, i64* %RAX.i243, align 8
  store i8 0, i8* %14, align 1
  %2663 = and i32 %2661, 240
  %2664 = tail call i32 @llvm.ctpop.i32(i32 %2663)
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  %2667 = xor i8 %2666, 1
  store i8 %2667, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2668 = icmp eq i32 %2660, 0
  %2669 = zext i1 %2668 to i8
  store i8 %2669, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2670 = load i64, i64* %RBP.i, align 8
  %2671 = add i64 %2670, -172
  %2672 = add i64 %2588, 74
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i32*
  store i32 %2661, i32* %2673, align 4
  %2674 = load i64, i64* %RBP.i, align 8
  %2675 = add i64 %2674, -152
  %2676 = load i64, i64* %3, align 8
  %2677 = add i64 %2676, 10
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2675 to i32*
  store i32 0, i32* %2678, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_404191

block_.L_404191:                                  ; preds = %block_.L_4043b8, %block_.L_404117
  %2679 = phi i64 [ %.pre83, %block_.L_404117 ], [ %3697, %block_.L_4043b8 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.11, %block_.L_404117 ], [ %MEMORY.22, %block_.L_4043b8 ]
  %2680 = load i64, i64* %RBP.i, align 8
  %2681 = add i64 %2680, -152
  %2682 = add i64 %2679, 7
  store i64 %2682, i64* %3, align 8
  %2683 = inttoptr i64 %2681 to i32*
  %2684 = load i32, i32* %2683, align 4
  %2685 = add i32 %2684, -16
  %2686 = icmp ult i32 %2684, 16
  %2687 = zext i1 %2686 to i8
  store i8 %2687, i8* %14, align 1
  %2688 = and i32 %2685, 255
  %2689 = tail call i32 @llvm.ctpop.i32(i32 %2688)
  %2690 = trunc i32 %2689 to i8
  %2691 = and i8 %2690, 1
  %2692 = xor i8 %2691, 1
  store i8 %2692, i8* %21, align 1
  %2693 = xor i32 %2684, 16
  %2694 = xor i32 %2693, %2685
  %2695 = lshr i32 %2694, 4
  %2696 = trunc i32 %2695 to i8
  %2697 = and i8 %2696, 1
  store i8 %2697, i8* %26, align 1
  %2698 = icmp eq i32 %2685, 0
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %29, align 1
  %2700 = lshr i32 %2685, 31
  %2701 = trunc i32 %2700 to i8
  store i8 %2701, i8* %32, align 1
  %2702 = lshr i32 %2684, 31
  %2703 = xor i32 %2700, %2702
  %2704 = add nuw nsw i32 %2703, %2702
  %2705 = icmp eq i32 %2704, 2
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %38, align 1
  %2707 = icmp ne i8 %2701, 0
  %2708 = xor i1 %2707, %2705
  %.v129 = select i1 %2708, i64 13, i64 576
  %2709 = add i64 %2679, %.v129
  store i64 %2709, i64* %3, align 8
  br i1 %2708, label %block_40419e, label %block_.L_4043d1.loopexit

block_40419e:                                     ; preds = %block_.L_404191
  %2710 = add i64 %2680, -148
  %2711 = add i64 %2709, 10
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to i32*
  store i32 0, i32* %2712, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_4041a8

block_.L_4041a8:                                  ; preds = %block_.L_40436c, %block_40419e
  %2713 = phi i64 [ %.pre84, %block_40419e ], [ %3667, %block_.L_40436c ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.21, %block_40419e ], [ %MEMORY.25, %block_.L_40436c ]
  %2714 = load i64, i64* %RBP.i, align 8
  %2715 = add i64 %2714, -148
  %2716 = add i64 %2713, 7
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i32*
  %2718 = load i32, i32* %2717, align 4
  %2719 = add i32 %2718, -16
  %2720 = icmp ult i32 %2718, 16
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %14, align 1
  %2722 = and i32 %2719, 255
  %2723 = tail call i32 @llvm.ctpop.i32(i32 %2722)
  %2724 = trunc i32 %2723 to i8
  %2725 = and i8 %2724, 1
  %2726 = xor i8 %2725, 1
  store i8 %2726, i8* %21, align 1
  %2727 = xor i32 %2718, 16
  %2728 = xor i32 %2727, %2719
  %2729 = lshr i32 %2728, 4
  %2730 = trunc i32 %2729 to i8
  %2731 = and i8 %2730, 1
  store i8 %2731, i8* %26, align 1
  %2732 = icmp eq i32 %2719, 0
  %2733 = zext i1 %2732 to i8
  store i8 %2733, i8* %29, align 1
  %2734 = lshr i32 %2719, 31
  %2735 = trunc i32 %2734 to i8
  store i8 %2735, i8* %32, align 1
  %2736 = lshr i32 %2718, 31
  %2737 = xor i32 %2734, %2736
  %2738 = add nuw nsw i32 %2737, %2736
  %2739 = icmp eq i32 %2738, 2
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %38, align 1
  %2741 = icmp ne i8 %2735, 0
  %2742 = xor i1 %2741, %2739
  %.v130 = select i1 %2742, i64 13, i64 528
  %2743 = add i64 %2713, %.v130
  %2744 = add i64 %2743, 5
  store i64 %2744, i64* %3, align 8
  br i1 %2742, label %block_4041b5, label %block_.L_4043b8

block_4041b5:                                     ; preds = %block_.L_4041a8
  store i64 32, i64* %RAX.i243, align 8
  %2745 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2745, i64* %RCX.i1277, align 8
  %2746 = add i64 %2745, 72684
  %2747 = add i64 %2743, 19
  store i64 %2747, i64* %3, align 8
  %2748 = inttoptr i64 %2746 to i32*
  %2749 = load i32, i32* %2748, align 4
  %2750 = zext i32 %2749 to i64
  store i64 %2750, i64* %RDX.i1227, align 8
  %2751 = add i64 %2714, -172
  %2752 = add i64 %2743, 25
  store i64 %2752, i64* %3, align 8
  %2753 = inttoptr i64 %2751 to i32*
  %2754 = load i32, i32* %2753, align 4
  %2755 = zext i32 %2754 to i64
  store i64 %2755, i64* %RSI.i1266, align 8
  %2756 = add i64 %2743, 31
  store i64 %2756, i64* %3, align 8
  %2757 = load i32, i32* %2717, align 4
  %2758 = add i32 %2757, -7
  %2759 = zext i32 %2758 to i64
  store i64 %2759, i64* %RDI.i1219, align 8
  %2760 = icmp ult i32 %2757, 7
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %14, align 1
  %2762 = and i32 %2758, 255
  %2763 = tail call i32 @llvm.ctpop.i32(i32 %2762)
  %2764 = trunc i32 %2763 to i8
  %2765 = and i8 %2764, 1
  %2766 = xor i8 %2765, 1
  store i8 %2766, i8* %21, align 1
  %2767 = xor i32 %2758, %2757
  %2768 = lshr i32 %2767, 4
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  store i8 %2770, i8* %26, align 1
  %2771 = icmp eq i32 %2758, 0
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %29, align 1
  %2773 = lshr i32 %2758, 31
  %2774 = trunc i32 %2773 to i8
  store i8 %2774, i8* %32, align 1
  %2775 = lshr i32 %2757, 31
  %2776 = xor i32 %2773, %2775
  %2777 = add nuw nsw i32 %2776, %2775
  %2778 = icmp eq i32 %2777, 2
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %38, align 1
  %2780 = add i64 %2714, -164
  %2781 = add i64 %2743, 41
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i32*
  %2783 = load i32, i32* %2782, align 4
  %2784 = sext i32 %2758 to i64
  %2785 = sext i32 %2783 to i64
  %2786 = mul nsw i64 %2785, %2784
  %2787 = and i64 %2786, 4294967295
  store i64 %2787, i64* %RDI.i1219, align 8
  %2788 = trunc i64 %2786 to i32
  %2789 = add i32 %2788, %2754
  %2790 = zext i32 %2789 to i64
  store i64 %2790, i64* %RSI.i1266, align 8
  %2791 = icmp ult i32 %2789, %2754
  %2792 = icmp ult i32 %2789, %2788
  %2793 = or i1 %2791, %2792
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %14, align 1
  %2795 = and i32 %2789, 255
  %2796 = tail call i32 @llvm.ctpop.i32(i32 %2795)
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = xor i8 %2798, 1
  store i8 %2799, i8* %21, align 1
  %2800 = xor i64 %2786, %2755
  %2801 = trunc i64 %2800 to i32
  %2802 = xor i32 %2801, %2789
  %2803 = lshr i32 %2802, 4
  %2804 = trunc i32 %2803 to i8
  %2805 = and i8 %2804, 1
  store i8 %2805, i8* %26, align 1
  %2806 = icmp eq i32 %2789, 0
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %29, align 1
  %2808 = lshr i32 %2789, 31
  %2809 = trunc i32 %2808 to i8
  store i8 %2809, i8* %32, align 1
  %2810 = lshr i32 %2754, 31
  %2811 = lshr i32 %2788, 31
  %2812 = xor i32 %2808, %2810
  %2813 = xor i32 %2808, %2811
  %2814 = add nuw nsw i32 %2812, %2813
  %2815 = icmp eq i32 %2814, 2
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %38, align 1
  %2817 = load i64, i64* %RBP.i, align 8
  %2818 = add i64 %2817, -152
  %2819 = add i64 %2743, 49
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2818 to i32*
  %2821 = load i32, i32* %2820, align 4
  %2822 = add i32 %2821, -7
  %2823 = zext i32 %2822 to i64
  store i64 %2823, i64* %RDI.i1219, align 8
  %2824 = icmp ult i32 %2821, 7
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %14, align 1
  %2826 = and i32 %2822, 255
  %2827 = tail call i32 @llvm.ctpop.i32(i32 %2826)
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = xor i8 %2829, 1
  store i8 %2830, i8* %21, align 1
  %2831 = xor i32 %2822, %2821
  %2832 = lshr i32 %2831, 4
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  store i8 %2834, i8* %26, align 1
  %2835 = icmp eq i32 %2822, 0
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %29, align 1
  %2837 = lshr i32 %2822, 31
  %2838 = trunc i32 %2837 to i8
  store i8 %2838, i8* %32, align 1
  %2839 = lshr i32 %2821, 31
  %2840 = xor i32 %2837, %2839
  %2841 = add nuw nsw i32 %2840, %2839
  %2842 = icmp eq i32 %2841, 2
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %38, align 1
  %2844 = add i64 %2817, -168
  %2845 = add i64 %2743, 59
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to i32*
  %2847 = load i32, i32* %2846, align 4
  %2848 = sext i32 %2822 to i64
  %2849 = sext i32 %2847 to i64
  %2850 = mul nsw i64 %2849, %2848
  %2851 = and i64 %2850, 4294967295
  store i64 %2851, i64* %RDI.i1219, align 8
  %2852 = load i64, i64* %RSI.i1266, align 8
  %2853 = trunc i64 %2850 to i32
  %2854 = trunc i64 %2852 to i32
  %2855 = add i32 %2853, %2854
  %2856 = lshr i32 %2855, 31
  %2857 = add i32 %2855, 16
  %2858 = zext i32 %2857 to i64
  store i64 %2858, i64* %RSI.i1266, align 8
  %2859 = icmp ugt i32 %2855, -17
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %14, align 1
  %2861 = and i32 %2857, 255
  %2862 = tail call i32 @llvm.ctpop.i32(i32 %2861)
  %2863 = trunc i32 %2862 to i8
  %2864 = and i8 %2863, 1
  %2865 = xor i8 %2864, 1
  store i8 %2865, i8* %21, align 1
  %2866 = xor i32 %2855, 16
  %2867 = xor i32 %2866, %2857
  %2868 = lshr i32 %2867, 4
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  store i8 %2870, i8* %26, align 1
  %2871 = icmp eq i32 %2857, 0
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %29, align 1
  %2873 = lshr i32 %2857, 31
  %2874 = trunc i32 %2873 to i8
  store i8 %2874, i8* %32, align 1
  %2875 = xor i32 %2873, %2856
  %2876 = add nuw nsw i32 %2875, %2873
  %2877 = icmp eq i32 %2876, 2
  %2878 = zext i1 %2877 to i8
  store i8 %2878, i8* %38, align 1
  %2879 = load i64, i64* %RBP.i, align 8
  %2880 = add i64 %2879, -664
  %2881 = load i32, i32* %EAX.i1233, align 4
  %2882 = add i64 %2743, 70
  store i64 %2882, i64* %3, align 8
  %2883 = inttoptr i64 %2880 to i32*
  store i32 %2881, i32* %2883, align 4
  %2884 = load i32, i32* %ESI.i1229, align 4
  %2885 = zext i32 %2884 to i64
  %2886 = load i64, i64* %3, align 8
  store i64 %2885, i64* %RAX.i243, align 8
  %2887 = load i64, i64* %RBP.i, align 8
  %2888 = add i64 %2887, -668
  %2889 = load i32, i32* %EDX.i1004, align 4
  %2890 = add i64 %2886, 8
  store i64 %2890, i64* %3, align 8
  %2891 = inttoptr i64 %2888 to i32*
  store i32 %2889, i32* %2891, align 4
  %2892 = load i64, i64* %3, align 8
  %2893 = load i32, i32* %EAX.i1233, align 8
  %2894 = sext i32 %2893 to i64
  %2895 = lshr i64 %2894, 32
  store i64 %2895, i64* %RDX.i1255, align 8
  %2896 = load i64, i64* %RBP.i, align 8
  %2897 = add i64 %2896, -664
  %2898 = add i64 %2892, 7
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  %2901 = zext i32 %2900 to i64
  store i64 %2901, i64* %RSI.i1266, align 8
  %2902 = add i64 %2892, 9
  store i64 %2902, i64* %3, align 8
  %2903 = zext i32 %2893 to i64
  %2904 = sext i32 %2900 to i64
  %2905 = shl nuw i64 %2895, 32
  %2906 = or i64 %2905, %2903
  %2907 = sdiv i64 %2906, %2904
  %2908 = shl i64 %2907, 32
  %2909 = ashr exact i64 %2908, 32
  %2910 = icmp eq i64 %2907, %2909
  br i1 %2910, label %2913, label %2911

; <label>:2911:                                   ; preds = %block_4041b5
  %2912 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2902, %struct.Memory* %MEMORY.22)
  %.pre85 = load i64, i64* %RBP.i, align 8
  %.pre86 = load i64, i64* %3, align 8
  %.pre87 = load i32, i32* %EAX.i1233, align 4
  br label %routine_idivl__esi.exit241

; <label>:2913:                                   ; preds = %block_4041b5
  %2914 = srem i64 %2906, %2904
  %2915 = and i64 %2907, 4294967295
  store i64 %2915, i64* %RAX.i243, align 8
  %2916 = and i64 %2914, 4294967295
  store i64 %2916, i64* %RDX.i1227, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2917 = trunc i64 %2907 to i32
  br label %routine_idivl__esi.exit241

routine_idivl__esi.exit241:                       ; preds = %2913, %2911
  %2918 = phi i32 [ %.pre87, %2911 ], [ %2917, %2913 ]
  %2919 = phi i64 [ %.pre86, %2911 ], [ %2902, %2913 ]
  %2920 = phi i64 [ %.pre85, %2911 ], [ %2896, %2913 ]
  %2921 = phi %struct.Memory* [ %2912, %2911 ], [ %MEMORY.22, %2913 ]
  %2922 = add i64 %2920, -668
  %2923 = add i64 %2919, 6
  store i64 %2923, i64* %3, align 8
  %2924 = inttoptr i64 %2922 to i32*
  %2925 = load i32, i32* %2924, align 4
  %2926 = zext i32 %2925 to i64
  store i64 %2926, i64* %RDI.i1219, align 8
  %2927 = sub i32 %2925, %2918
  %2928 = icmp ult i32 %2925, %2918
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %14, align 1
  %2930 = and i32 %2927, 255
  %2931 = tail call i32 @llvm.ctpop.i32(i32 %2930)
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  %2934 = xor i8 %2933, 1
  store i8 %2934, i8* %21, align 1
  %2935 = xor i32 %2918, %2925
  %2936 = xor i32 %2935, %2927
  %2937 = lshr i32 %2936, 4
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  store i8 %2939, i8* %26, align 1
  %2940 = icmp eq i32 %2927, 0
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %29, align 1
  %2942 = lshr i32 %2927, 31
  %2943 = trunc i32 %2942 to i8
  store i8 %2943, i8* %32, align 1
  %2944 = lshr i32 %2925, 31
  %2945 = lshr i32 %2918, 31
  %2946 = xor i32 %2945, %2944
  %2947 = xor i32 %2942, %2944
  %2948 = add nuw nsw i32 %2947, %2946
  %2949 = icmp eq i32 %2948, 2
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %38, align 1
  %2951 = icmp ne i8 %2943, 0
  %2952 = xor i1 %2951, %2949
  %.v131 = select i1 %2952, i64 14, i64 39
  %2953 = add i64 %2919, %.v131
  store i64 %2953, i64* %3, align 8
  br i1 %2952, label %block_40421a, label %block_.L_404233

block_40421a:                                     ; preds = %routine_idivl__esi.exit241
  %2954 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2954, i64* %RAX.i243, align 8
  %2955 = add i64 %2954, 72684
  %2956 = add i64 %2953, 14
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to i32*
  %2958 = load i32, i32* %2957, align 4
  %2959 = zext i32 %2958 to i64
  store i64 %2959, i64* %RCX.i1277, align 8
  %2960 = add i64 %2920, -672
  %2961 = add i64 %2953, 20
  store i64 %2961, i64* %3, align 8
  %2962 = inttoptr i64 %2960 to i32*
  store i32 %2958, i32* %2962, align 4
  %2963 = load i64, i64* %3, align 8
  %2964 = add i64 %2963, 78
  store i64 %2964, i64* %3, align 8
  br label %block_.L_40427c

block_.L_404233:                                  ; preds = %routine_idivl__esi.exit241
  store i64 32, i64* %RAX.i243, align 8
  %2965 = add i64 %2920, -172
  %2966 = add i64 %2953, 11
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2965 to i32*
  %2968 = load i32, i32* %2967, align 4
  %2969 = zext i32 %2968 to i64
  store i64 %2969, i64* %RCX.i1277, align 8
  %2970 = add i64 %2920, -148
  %2971 = add i64 %2953, 17
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i32*
  %2973 = load i32, i32* %2972, align 4
  %2974 = add i32 %2973, -7
  %2975 = zext i32 %2974 to i64
  store i64 %2975, i64* %RDX.i1227, align 8
  %2976 = icmp ult i32 %2973, 7
  %2977 = zext i1 %2976 to i8
  store i8 %2977, i8* %14, align 1
  %2978 = and i32 %2974, 255
  %2979 = tail call i32 @llvm.ctpop.i32(i32 %2978)
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = xor i8 %2981, 1
  store i8 %2982, i8* %21, align 1
  %2983 = xor i32 %2974, %2973
  %2984 = lshr i32 %2983, 4
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  store i8 %2986, i8* %26, align 1
  %2987 = icmp eq i32 %2974, 0
  %2988 = zext i1 %2987 to i8
  store i8 %2988, i8* %29, align 1
  %2989 = lshr i32 %2974, 31
  %2990 = trunc i32 %2989 to i8
  store i8 %2990, i8* %32, align 1
  %2991 = lshr i32 %2973, 31
  %2992 = xor i32 %2989, %2991
  %2993 = add nuw nsw i32 %2992, %2991
  %2994 = icmp eq i32 %2993, 2
  %2995 = zext i1 %2994 to i8
  store i8 %2995, i8* %38, align 1
  %2996 = add i64 %2920, -164
  %2997 = add i64 %2953, 27
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i32*
  %2999 = load i32, i32* %2998, align 4
  %3000 = sext i32 %2974 to i64
  %3001 = sext i32 %2999 to i64
  %3002 = mul nsw i64 %3001, %3000
  %3003 = and i64 %3002, 4294967295
  store i64 %3003, i64* %RDX.i1227, align 8
  %3004 = trunc i64 %3002 to i32
  %3005 = add i32 %3004, %2968
  %3006 = zext i32 %3005 to i64
  store i64 %3006, i64* %RCX.i1277, align 8
  %3007 = icmp ult i32 %3005, %2968
  %3008 = icmp ult i32 %3005, %3004
  %3009 = or i1 %3007, %3008
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %14, align 1
  %3011 = and i32 %3005, 255
  %3012 = tail call i32 @llvm.ctpop.i32(i32 %3011)
  %3013 = trunc i32 %3012 to i8
  %3014 = and i8 %3013, 1
  %3015 = xor i8 %3014, 1
  store i8 %3015, i8* %21, align 1
  %3016 = xor i64 %3002, %2969
  %3017 = trunc i64 %3016 to i32
  %3018 = xor i32 %3017, %3005
  %3019 = lshr i32 %3018, 4
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  store i8 %3021, i8* %26, align 1
  %3022 = icmp eq i32 %3005, 0
  %3023 = zext i1 %3022 to i8
  store i8 %3023, i8* %29, align 1
  %3024 = lshr i32 %3005, 31
  %3025 = trunc i32 %3024 to i8
  store i8 %3025, i8* %32, align 1
  %3026 = lshr i32 %2968, 31
  %3027 = lshr i32 %3004, 31
  %3028 = xor i32 %3024, %3026
  %3029 = xor i32 %3024, %3027
  %3030 = add nuw nsw i32 %3028, %3029
  %3031 = icmp eq i32 %3030, 2
  %3032 = zext i1 %3031 to i8
  store i8 %3032, i8* %38, align 1
  %3033 = load i64, i64* %RBP.i, align 8
  %3034 = add i64 %3033, -152
  %3035 = add i64 %2953, 35
  store i64 %3035, i64* %3, align 8
  %3036 = inttoptr i64 %3034 to i32*
  %3037 = load i32, i32* %3036, align 4
  %3038 = add i32 %3037, -7
  %3039 = zext i32 %3038 to i64
  store i64 %3039, i64* %RDX.i1227, align 8
  %3040 = icmp ult i32 %3037, 7
  %3041 = zext i1 %3040 to i8
  store i8 %3041, i8* %14, align 1
  %3042 = and i32 %3038, 255
  %3043 = tail call i32 @llvm.ctpop.i32(i32 %3042)
  %3044 = trunc i32 %3043 to i8
  %3045 = and i8 %3044, 1
  %3046 = xor i8 %3045, 1
  store i8 %3046, i8* %21, align 1
  %3047 = xor i32 %3038, %3037
  %3048 = lshr i32 %3047, 4
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  store i8 %3050, i8* %26, align 1
  %3051 = icmp eq i32 %3038, 0
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %29, align 1
  %3053 = lshr i32 %3038, 31
  %3054 = trunc i32 %3053 to i8
  store i8 %3054, i8* %32, align 1
  %3055 = lshr i32 %3037, 31
  %3056 = xor i32 %3053, %3055
  %3057 = add nuw nsw i32 %3056, %3055
  %3058 = icmp eq i32 %3057, 2
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %38, align 1
  %3060 = add i64 %3033, -168
  %3061 = add i64 %2953, 45
  store i64 %3061, i64* %3, align 8
  %3062 = inttoptr i64 %3060 to i32*
  %3063 = load i32, i32* %3062, align 4
  %3064 = mul i32 %3063, %3038
  %3065 = load i64, i64* %RCX.i1277, align 8
  %3066 = trunc i64 %3065 to i32
  %3067 = add i32 %3064, %3066
  %3068 = lshr i32 %3067, 31
  %3069 = add i32 %3067, 16
  %3070 = zext i32 %3069 to i64
  store i64 %3070, i64* %RCX.i1277, align 8
  %3071 = icmp ugt i32 %3067, -17
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %14, align 1
  %3073 = and i32 %3069, 255
  %3074 = tail call i32 @llvm.ctpop.i32(i32 %3073)
  %3075 = trunc i32 %3074 to i8
  %3076 = and i8 %3075, 1
  %3077 = xor i8 %3076, 1
  store i8 %3077, i8* %21, align 1
  %3078 = xor i32 %3067, 16
  %3079 = xor i32 %3078, %3069
  %3080 = lshr i32 %3079, 4
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  store i8 %3082, i8* %26, align 1
  %3083 = icmp eq i32 %3069, 0
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %29, align 1
  %3085 = lshr i32 %3069, 31
  %3086 = trunc i32 %3085 to i8
  store i8 %3086, i8* %32, align 1
  %3087 = xor i32 %3085, %3068
  %3088 = add nuw nsw i32 %3087, %3085
  %3089 = icmp eq i32 %3088, 2
  %3090 = zext i1 %3089 to i8
  store i8 %3090, i8* %38, align 1
  %3091 = load i64, i64* %RBP.i, align 8
  %3092 = add i64 %3091, -676
  %3093 = load i32, i32* %EAX.i1233, align 4
  %3094 = add i64 %2953, 56
  store i64 %3094, i64* %3, align 8
  %3095 = inttoptr i64 %3092 to i32*
  store i32 %3093, i32* %3095, align 4
  %3096 = load i32, i32* %ECX.i1273, align 4
  %3097 = zext i32 %3096 to i64
  %3098 = load i64, i64* %3, align 8
  store i64 %3097, i64* %RAX.i243, align 8
  %3099 = sext i32 %3096 to i64
  %3100 = lshr i64 %3099, 32
  store i64 %3100, i64* %RDX.i1255, align 8
  %3101 = load i64, i64* %RBP.i, align 8
  %3102 = add i64 %3101, -676
  %3103 = add i64 %3098, 9
  store i64 %3103, i64* %3, align 8
  %3104 = inttoptr i64 %3102 to i32*
  %3105 = load i32, i32* %3104, align 4
  %3106 = zext i32 %3105 to i64
  store i64 %3106, i64* %RCX.i1277, align 8
  %3107 = add i64 %3098, 11
  store i64 %3107, i64* %3, align 8
  %3108 = sext i32 %3105 to i64
  %3109 = shl nuw i64 %3100, 32
  %3110 = or i64 %3109, %3097
  %3111 = sdiv i64 %3110, %3108
  %3112 = shl i64 %3111, 32
  %3113 = ashr exact i64 %3112, 32
  %3114 = icmp eq i64 %3111, %3113
  br i1 %3114, label %3117, label %3115

; <label>:3115:                                   ; preds = %block_.L_404233
  %3116 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3107, %struct.Memory* %2921)
  %.pre88 = load i64, i64* %RBP.i, align 8
  %.pre89 = load i32, i32* %EAX.i1233, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit181

; <label>:3117:                                   ; preds = %block_.L_404233
  %3118 = srem i64 %3110, %3108
  %3119 = and i64 %3111, 4294967295
  store i64 %3119, i64* %RAX.i243, align 8
  %3120 = and i64 %3118, 4294967295
  store i64 %3120, i64* %RDX.i1227, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3121 = trunc i64 %3111 to i32
  br label %routine_idivl__ecx.exit181

routine_idivl__ecx.exit181:                       ; preds = %3117, %3115
  %3122 = phi i64 [ %.pre90, %3115 ], [ %3107, %3117 ]
  %3123 = phi i32 [ %.pre89, %3115 ], [ %3121, %3117 ]
  %3124 = phi i64 [ %.pre88, %3115 ], [ %3101, %3117 ]
  %3125 = phi %struct.Memory* [ %3116, %3115 ], [ %2921, %3117 ]
  %3126 = add i64 %3124, -672
  %3127 = add i64 %3122, 6
  store i64 %3127, i64* %3, align 8
  %3128 = inttoptr i64 %3126 to i32*
  store i32 %3123, i32* %3128, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_40427c

block_.L_40427c:                                  ; preds = %routine_idivl__ecx.exit181, %block_40421a
  %3129 = phi i64 [ %.pre91, %routine_idivl__ecx.exit181 ], [ %2964, %block_40421a ]
  %MEMORY.23 = phi %struct.Memory* [ %3125, %routine_idivl__ecx.exit181 ], [ %2921, %block_40421a ]
  %3130 = load i64, i64* %RBP.i, align 8
  %3131 = add i64 %3130, -672
  %3132 = add i64 %3129, 6
  store i64 %3132, i64* %3, align 8
  %3133 = inttoptr i64 %3131 to i32*
  %3134 = load i32, i32* %3133, align 4
  %3135 = zext i32 %3134 to i64
  store i64 %3135, i64* %RAX.i243, align 8
  store i64 0, i64* %RCX.i1277, align 8
  %3136 = sub i32 0, %3134
  %3137 = icmp ne i32 %3134, 0
  %3138 = zext i1 %3137 to i8
  store i8 %3138, i8* %14, align 1
  %3139 = and i32 %3136, 255
  %3140 = tail call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  store i8 %3143, i8* %21, align 1
  %3144 = xor i32 %3134, %3136
  %3145 = lshr i32 %3144, 4
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  store i8 %3147, i8* %26, align 1
  %3148 = icmp eq i32 %3134, 0
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %29, align 1
  %3150 = lshr i32 %3136, 31
  %3151 = trunc i32 %3150 to i8
  store i8 %3151, i8* %32, align 1
  %3152 = lshr i32 %3134, 31
  %3153 = add nuw nsw i32 %3150, %3152
  %3154 = icmp eq i32 %3153, 2
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %38, align 1
  %3156 = icmp ne i8 %3151, 0
  %3157 = xor i1 %3156, %3154
  %3158 = or i1 %3148, %3157
  %.v132 = select i1 %3158, i64 29, i64 16
  %3159 = add i64 %3129, %.v132
  store i64 %3159, i64* %3, align 8
  br i1 %3158, label %block_.L_404299, label %block_40428c

block_40428c:                                     ; preds = %block_.L_40427c
  store i64 0, i64* %RAX.i243, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3160 = add i64 %3130, -680
  %3161 = add i64 %3159, 8
  store i64 %3161, i64* %3, align 8
  %3162 = inttoptr i64 %3160 to i32*
  store i32 0, i32* %3162, align 4
  %3163 = load i64, i64* %3, align 8
  %3164 = add i64 %3163, 216
  store i64 %3164, i64* %3, align 8
  br label %block_.L_40436c

block_.L_404299:                                  ; preds = %block_.L_40427c
  store i64 32, i64* %RAX.i243, align 8
  %3165 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3165, i64* %RCX.i1277, align 8
  %3166 = add i64 %3165, 72684
  %3167 = add i64 %3159, 19
  store i64 %3167, i64* %3, align 8
  %3168 = inttoptr i64 %3166 to i32*
  %3169 = load i32, i32* %3168, align 4
  %3170 = zext i32 %3169 to i64
  store i64 %3170, i64* %RDX.i1227, align 8
  %3171 = add i64 %3130, -172
  %3172 = add i64 %3159, 25
  store i64 %3172, i64* %3, align 8
  %3173 = inttoptr i64 %3171 to i32*
  %3174 = load i32, i32* %3173, align 4
  %3175 = zext i32 %3174 to i64
  store i64 %3175, i64* %RSI.i1266, align 8
  %3176 = add i64 %3130, -148
  %3177 = add i64 %3159, 31
  store i64 %3177, i64* %3, align 8
  %3178 = inttoptr i64 %3176 to i32*
  %3179 = load i32, i32* %3178, align 4
  %3180 = add i32 %3179, -7
  %3181 = zext i32 %3180 to i64
  store i64 %3181, i64* %RDI.i1219, align 8
  %3182 = icmp ult i32 %3179, 7
  %3183 = zext i1 %3182 to i8
  store i8 %3183, i8* %14, align 1
  %3184 = and i32 %3180, 255
  %3185 = tail call i32 @llvm.ctpop.i32(i32 %3184)
  %3186 = trunc i32 %3185 to i8
  %3187 = and i8 %3186, 1
  %3188 = xor i8 %3187, 1
  store i8 %3188, i8* %21, align 1
  %3189 = xor i32 %3180, %3179
  %3190 = lshr i32 %3189, 4
  %3191 = trunc i32 %3190 to i8
  %3192 = and i8 %3191, 1
  store i8 %3192, i8* %26, align 1
  %3193 = icmp eq i32 %3180, 0
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %29, align 1
  %3195 = lshr i32 %3180, 31
  %3196 = trunc i32 %3195 to i8
  store i8 %3196, i8* %32, align 1
  %3197 = lshr i32 %3179, 31
  %3198 = xor i32 %3195, %3197
  %3199 = add nuw nsw i32 %3198, %3197
  %3200 = icmp eq i32 %3199, 2
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %38, align 1
  %3202 = add i64 %3130, -164
  %3203 = add i64 %3159, 41
  store i64 %3203, i64* %3, align 8
  %3204 = inttoptr i64 %3202 to i32*
  %3205 = load i32, i32* %3204, align 4
  %3206 = sext i32 %3180 to i64
  %3207 = sext i32 %3205 to i64
  %3208 = mul nsw i64 %3207, %3206
  %3209 = and i64 %3208, 4294967295
  store i64 %3209, i64* %RDI.i1219, align 8
  %3210 = trunc i64 %3208 to i32
  %3211 = add i32 %3210, %3174
  %3212 = zext i32 %3211 to i64
  store i64 %3212, i64* %RSI.i1266, align 8
  %3213 = icmp ult i32 %3211, %3174
  %3214 = icmp ult i32 %3211, %3210
  %3215 = or i1 %3213, %3214
  %3216 = zext i1 %3215 to i8
  store i8 %3216, i8* %14, align 1
  %3217 = and i32 %3211, 255
  %3218 = tail call i32 @llvm.ctpop.i32(i32 %3217)
  %3219 = trunc i32 %3218 to i8
  %3220 = and i8 %3219, 1
  %3221 = xor i8 %3220, 1
  store i8 %3221, i8* %21, align 1
  %3222 = xor i64 %3208, %3175
  %3223 = trunc i64 %3222 to i32
  %3224 = xor i32 %3223, %3211
  %3225 = lshr i32 %3224, 4
  %3226 = trunc i32 %3225 to i8
  %3227 = and i8 %3226, 1
  store i8 %3227, i8* %26, align 1
  %3228 = icmp eq i32 %3211, 0
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %29, align 1
  %3230 = lshr i32 %3211, 31
  %3231 = trunc i32 %3230 to i8
  store i8 %3231, i8* %32, align 1
  %3232 = lshr i32 %3174, 31
  %3233 = lshr i32 %3210, 31
  %3234 = xor i32 %3230, %3232
  %3235 = xor i32 %3230, %3233
  %3236 = add nuw nsw i32 %3234, %3235
  %3237 = icmp eq i32 %3236, 2
  %3238 = zext i1 %3237 to i8
  store i8 %3238, i8* %38, align 1
  %3239 = load i64, i64* %RBP.i, align 8
  %3240 = add i64 %3239, -152
  %3241 = add i64 %3159, 49
  store i64 %3241, i64* %3, align 8
  %3242 = inttoptr i64 %3240 to i32*
  %3243 = load i32, i32* %3242, align 4
  %3244 = add i32 %3243, -7
  %3245 = zext i32 %3244 to i64
  store i64 %3245, i64* %RDI.i1219, align 8
  %3246 = icmp ult i32 %3243, 7
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %14, align 1
  %3248 = and i32 %3244, 255
  %3249 = tail call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  store i8 %3252, i8* %21, align 1
  %3253 = xor i32 %3244, %3243
  %3254 = lshr i32 %3253, 4
  %3255 = trunc i32 %3254 to i8
  %3256 = and i8 %3255, 1
  store i8 %3256, i8* %26, align 1
  %3257 = icmp eq i32 %3244, 0
  %3258 = zext i1 %3257 to i8
  store i8 %3258, i8* %29, align 1
  %3259 = lshr i32 %3244, 31
  %3260 = trunc i32 %3259 to i8
  store i8 %3260, i8* %32, align 1
  %3261 = lshr i32 %3243, 31
  %3262 = xor i32 %3259, %3261
  %3263 = add nuw nsw i32 %3262, %3261
  %3264 = icmp eq i32 %3263, 2
  %3265 = zext i1 %3264 to i8
  store i8 %3265, i8* %38, align 1
  %3266 = add i64 %3239, -168
  %3267 = add i64 %3159, 59
  store i64 %3267, i64* %3, align 8
  %3268 = inttoptr i64 %3266 to i32*
  %3269 = load i32, i32* %3268, align 4
  %3270 = sext i32 %3244 to i64
  %3271 = sext i32 %3269 to i64
  %3272 = mul nsw i64 %3271, %3270
  %3273 = and i64 %3272, 4294967295
  store i64 %3273, i64* %RDI.i1219, align 8
  %3274 = load i64, i64* %RSI.i1266, align 8
  %3275 = trunc i64 %3272 to i32
  %3276 = trunc i64 %3274 to i32
  %3277 = add i32 %3275, %3276
  %3278 = lshr i32 %3277, 31
  %3279 = add i32 %3277, 16
  %3280 = zext i32 %3279 to i64
  store i64 %3280, i64* %RSI.i1266, align 8
  %3281 = icmp ugt i32 %3277, -17
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %14, align 1
  %3283 = and i32 %3279, 255
  %3284 = tail call i32 @llvm.ctpop.i32(i32 %3283)
  %3285 = trunc i32 %3284 to i8
  %3286 = and i8 %3285, 1
  %3287 = xor i8 %3286, 1
  store i8 %3287, i8* %21, align 1
  %3288 = xor i32 %3277, 16
  %3289 = xor i32 %3288, %3279
  %3290 = lshr i32 %3289, 4
  %3291 = trunc i32 %3290 to i8
  %3292 = and i8 %3291, 1
  store i8 %3292, i8* %26, align 1
  %3293 = icmp eq i32 %3279, 0
  %3294 = zext i1 %3293 to i8
  store i8 %3294, i8* %29, align 1
  %3295 = lshr i32 %3279, 31
  %3296 = trunc i32 %3295 to i8
  store i8 %3296, i8* %32, align 1
  %3297 = xor i32 %3295, %3278
  %3298 = add nuw nsw i32 %3297, %3295
  %3299 = icmp eq i32 %3298, 2
  %3300 = zext i1 %3299 to i8
  store i8 %3300, i8* %38, align 1
  %3301 = load i64, i64* %RBP.i, align 8
  %3302 = add i64 %3301, -684
  %3303 = load i32, i32* %EAX.i1233, align 4
  %3304 = add i64 %3159, 70
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3302 to i32*
  store i32 %3303, i32* %3305, align 4
  %3306 = load i32, i32* %ESI.i1229, align 4
  %3307 = zext i32 %3306 to i64
  %3308 = load i64, i64* %3, align 8
  store i64 %3307, i64* %RAX.i243, align 8
  %3309 = load i64, i64* %RBP.i, align 8
  %3310 = add i64 %3309, -688
  %3311 = load i32, i32* %EDX.i1004, align 4
  %3312 = add i64 %3308, 8
  store i64 %3312, i64* %3, align 8
  %3313 = inttoptr i64 %3310 to i32*
  store i32 %3311, i32* %3313, align 4
  %3314 = load i64, i64* %3, align 8
  %3315 = load i32, i32* %EAX.i1233, align 8
  %3316 = sext i32 %3315 to i64
  %3317 = lshr i64 %3316, 32
  store i64 %3317, i64* %RDX.i1255, align 8
  %3318 = load i64, i64* %RBP.i, align 8
  %3319 = add i64 %3318, -684
  %3320 = add i64 %3314, 7
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i32*
  %3322 = load i32, i32* %3321, align 4
  %3323 = zext i32 %3322 to i64
  store i64 %3323, i64* %RSI.i1266, align 8
  %3324 = add i64 %3314, 9
  store i64 %3324, i64* %3, align 8
  %3325 = zext i32 %3315 to i64
  %3326 = sext i32 %3322 to i64
  %3327 = shl nuw i64 %3317, 32
  %3328 = or i64 %3327, %3325
  %3329 = sdiv i64 %3328, %3326
  %3330 = shl i64 %3329, 32
  %3331 = ashr exact i64 %3330, 32
  %3332 = icmp eq i64 %3329, %3331
  br i1 %3332, label %3335, label %3333

; <label>:3333:                                   ; preds = %block_.L_404299
  %3334 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3324, %struct.Memory* %MEMORY.23)
  %.pre92 = load i64, i64* %RBP.i, align 8
  %.pre93 = load i64, i64* %3, align 8
  %.pre94 = load i32, i32* %EAX.i1233, align 4
  br label %routine_idivl__esi.exit

; <label>:3335:                                   ; preds = %block_.L_404299
  %3336 = srem i64 %3328, %3326
  %3337 = and i64 %3329, 4294967295
  store i64 %3337, i64* %RAX.i243, align 8
  %3338 = and i64 %3336, 4294967295
  store i64 %3338, i64* %RDX.i1227, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3339 = trunc i64 %3329 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %3335, %3333
  %3340 = phi i32 [ %.pre94, %3333 ], [ %3339, %3335 ]
  %3341 = phi i64 [ %.pre93, %3333 ], [ %3324, %3335 ]
  %3342 = phi i64 [ %.pre92, %3333 ], [ %3318, %3335 ]
  %3343 = phi %struct.Memory* [ %3334, %3333 ], [ %MEMORY.23, %3335 ]
  %3344 = add i64 %3342, -688
  %3345 = add i64 %3341, 6
  store i64 %3345, i64* %3, align 8
  %3346 = inttoptr i64 %3344 to i32*
  %3347 = load i32, i32* %3346, align 4
  %3348 = zext i32 %3347 to i64
  store i64 %3348, i64* %RDI.i1219, align 8
  %3349 = sub i32 %3347, %3340
  %3350 = icmp ult i32 %3347, %3340
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %14, align 1
  %3352 = and i32 %3349, 255
  %3353 = tail call i32 @llvm.ctpop.i32(i32 %3352)
  %3354 = trunc i32 %3353 to i8
  %3355 = and i8 %3354, 1
  %3356 = xor i8 %3355, 1
  store i8 %3356, i8* %21, align 1
  %3357 = xor i32 %3340, %3347
  %3358 = xor i32 %3357, %3349
  %3359 = lshr i32 %3358, 4
  %3360 = trunc i32 %3359 to i8
  %3361 = and i8 %3360, 1
  store i8 %3361, i8* %26, align 1
  %3362 = icmp eq i32 %3349, 0
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %29, align 1
  %3364 = lshr i32 %3349, 31
  %3365 = trunc i32 %3364 to i8
  store i8 %3365, i8* %32, align 1
  %3366 = lshr i32 %3347, 31
  %3367 = lshr i32 %3340, 31
  %3368 = xor i32 %3367, %3366
  %3369 = xor i32 %3364, %3366
  %3370 = add nuw nsw i32 %3369, %3368
  %3371 = icmp eq i32 %3370, 2
  %3372 = zext i1 %3371 to i8
  store i8 %3372, i8* %38, align 1
  %3373 = icmp ne i8 %3365, 0
  %3374 = xor i1 %3373, %3371
  %.v133 = select i1 %3374, i64 14, i64 39
  %3375 = add i64 %3341, %.v133
  store i64 %3375, i64* %3, align 8
  br i1 %3374, label %block_4042fe, label %block_.L_404317

block_4042fe:                                     ; preds = %routine_idivl__esi.exit
  %3376 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3376, i64* %RAX.i243, align 8
  %3377 = add i64 %3376, 72684
  %3378 = add i64 %3375, 14
  store i64 %3378, i64* %3, align 8
  %3379 = inttoptr i64 %3377 to i32*
  %3380 = load i32, i32* %3379, align 4
  %3381 = zext i32 %3380 to i64
  store i64 %3381, i64* %RCX.i1277, align 8
  %3382 = add i64 %3342, -692
  %3383 = add i64 %3375, 20
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i32*
  store i32 %3380, i32* %3384, align 4
  %3385 = load i64, i64* %3, align 8
  %3386 = add i64 %3385, 78
  store i64 %3386, i64* %3, align 8
  br label %block_.L_404360

block_.L_404317:                                  ; preds = %routine_idivl__esi.exit
  store i64 32, i64* %RAX.i243, align 8
  %3387 = add i64 %3342, -172
  %3388 = add i64 %3375, 11
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3387 to i32*
  %3390 = load i32, i32* %3389, align 4
  %3391 = zext i32 %3390 to i64
  store i64 %3391, i64* %RCX.i1277, align 8
  %3392 = add i64 %3342, -148
  %3393 = add i64 %3375, 17
  store i64 %3393, i64* %3, align 8
  %3394 = inttoptr i64 %3392 to i32*
  %3395 = load i32, i32* %3394, align 4
  %3396 = add i32 %3395, -7
  %3397 = zext i32 %3396 to i64
  store i64 %3397, i64* %RDX.i1227, align 8
  %3398 = icmp ult i32 %3395, 7
  %3399 = zext i1 %3398 to i8
  store i8 %3399, i8* %14, align 1
  %3400 = and i32 %3396, 255
  %3401 = tail call i32 @llvm.ctpop.i32(i32 %3400)
  %3402 = trunc i32 %3401 to i8
  %3403 = and i8 %3402, 1
  %3404 = xor i8 %3403, 1
  store i8 %3404, i8* %21, align 1
  %3405 = xor i32 %3396, %3395
  %3406 = lshr i32 %3405, 4
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  store i8 %3408, i8* %26, align 1
  %3409 = icmp eq i32 %3396, 0
  %3410 = zext i1 %3409 to i8
  store i8 %3410, i8* %29, align 1
  %3411 = lshr i32 %3396, 31
  %3412 = trunc i32 %3411 to i8
  store i8 %3412, i8* %32, align 1
  %3413 = lshr i32 %3395, 31
  %3414 = xor i32 %3411, %3413
  %3415 = add nuw nsw i32 %3414, %3413
  %3416 = icmp eq i32 %3415, 2
  %3417 = zext i1 %3416 to i8
  store i8 %3417, i8* %38, align 1
  %3418 = add i64 %3342, -164
  %3419 = add i64 %3375, 27
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3418 to i32*
  %3421 = load i32, i32* %3420, align 4
  %3422 = sext i32 %3396 to i64
  %3423 = sext i32 %3421 to i64
  %3424 = mul nsw i64 %3423, %3422
  %3425 = and i64 %3424, 4294967295
  store i64 %3425, i64* %RDX.i1227, align 8
  %3426 = trunc i64 %3424 to i32
  %3427 = add i32 %3426, %3390
  %3428 = zext i32 %3427 to i64
  store i64 %3428, i64* %RCX.i1277, align 8
  %3429 = icmp ult i32 %3427, %3390
  %3430 = icmp ult i32 %3427, %3426
  %3431 = or i1 %3429, %3430
  %3432 = zext i1 %3431 to i8
  store i8 %3432, i8* %14, align 1
  %3433 = and i32 %3427, 255
  %3434 = tail call i32 @llvm.ctpop.i32(i32 %3433)
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  %3437 = xor i8 %3436, 1
  store i8 %3437, i8* %21, align 1
  %3438 = xor i64 %3424, %3391
  %3439 = trunc i64 %3438 to i32
  %3440 = xor i32 %3439, %3427
  %3441 = lshr i32 %3440, 4
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  store i8 %3443, i8* %26, align 1
  %3444 = icmp eq i32 %3427, 0
  %3445 = zext i1 %3444 to i8
  store i8 %3445, i8* %29, align 1
  %3446 = lshr i32 %3427, 31
  %3447 = trunc i32 %3446 to i8
  store i8 %3447, i8* %32, align 1
  %3448 = lshr i32 %3390, 31
  %3449 = lshr i32 %3426, 31
  %3450 = xor i32 %3446, %3448
  %3451 = xor i32 %3446, %3449
  %3452 = add nuw nsw i32 %3450, %3451
  %3453 = icmp eq i32 %3452, 2
  %3454 = zext i1 %3453 to i8
  store i8 %3454, i8* %38, align 1
  %3455 = load i64, i64* %RBP.i, align 8
  %3456 = add i64 %3455, -152
  %3457 = add i64 %3375, 35
  store i64 %3457, i64* %3, align 8
  %3458 = inttoptr i64 %3456 to i32*
  %3459 = load i32, i32* %3458, align 4
  %3460 = add i32 %3459, -7
  %3461 = zext i32 %3460 to i64
  store i64 %3461, i64* %RDX.i1227, align 8
  %3462 = icmp ult i32 %3459, 7
  %3463 = zext i1 %3462 to i8
  store i8 %3463, i8* %14, align 1
  %3464 = and i32 %3460, 255
  %3465 = tail call i32 @llvm.ctpop.i32(i32 %3464)
  %3466 = trunc i32 %3465 to i8
  %3467 = and i8 %3466, 1
  %3468 = xor i8 %3467, 1
  store i8 %3468, i8* %21, align 1
  %3469 = xor i32 %3460, %3459
  %3470 = lshr i32 %3469, 4
  %3471 = trunc i32 %3470 to i8
  %3472 = and i8 %3471, 1
  store i8 %3472, i8* %26, align 1
  %3473 = icmp eq i32 %3460, 0
  %3474 = zext i1 %3473 to i8
  store i8 %3474, i8* %29, align 1
  %3475 = lshr i32 %3460, 31
  %3476 = trunc i32 %3475 to i8
  store i8 %3476, i8* %32, align 1
  %3477 = lshr i32 %3459, 31
  %3478 = xor i32 %3475, %3477
  %3479 = add nuw nsw i32 %3478, %3477
  %3480 = icmp eq i32 %3479, 2
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %38, align 1
  %3482 = add i64 %3455, -168
  %3483 = add i64 %3375, 45
  store i64 %3483, i64* %3, align 8
  %3484 = inttoptr i64 %3482 to i32*
  %3485 = load i32, i32* %3484, align 4
  %3486 = mul i32 %3485, %3460
  %3487 = load i64, i64* %RCX.i1277, align 8
  %3488 = trunc i64 %3487 to i32
  %3489 = add i32 %3486, %3488
  %3490 = lshr i32 %3489, 31
  %3491 = add i32 %3489, 16
  %3492 = zext i32 %3491 to i64
  store i64 %3492, i64* %RCX.i1277, align 8
  %3493 = icmp ugt i32 %3489, -17
  %3494 = zext i1 %3493 to i8
  store i8 %3494, i8* %14, align 1
  %3495 = and i32 %3491, 255
  %3496 = tail call i32 @llvm.ctpop.i32(i32 %3495)
  %3497 = trunc i32 %3496 to i8
  %3498 = and i8 %3497, 1
  %3499 = xor i8 %3498, 1
  store i8 %3499, i8* %21, align 1
  %3500 = xor i32 %3489, 16
  %3501 = xor i32 %3500, %3491
  %3502 = lshr i32 %3501, 4
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  store i8 %3504, i8* %26, align 1
  %3505 = icmp eq i32 %3491, 0
  %3506 = zext i1 %3505 to i8
  store i8 %3506, i8* %29, align 1
  %3507 = lshr i32 %3491, 31
  %3508 = trunc i32 %3507 to i8
  store i8 %3508, i8* %32, align 1
  %3509 = xor i32 %3507, %3490
  %3510 = add nuw nsw i32 %3509, %3507
  %3511 = icmp eq i32 %3510, 2
  %3512 = zext i1 %3511 to i8
  store i8 %3512, i8* %38, align 1
  %3513 = load i64, i64* %RBP.i, align 8
  %3514 = add i64 %3513, -696
  %3515 = load i32, i32* %EAX.i1233, align 4
  %3516 = add i64 %3375, 56
  store i64 %3516, i64* %3, align 8
  %3517 = inttoptr i64 %3514 to i32*
  store i32 %3515, i32* %3517, align 4
  %3518 = load i32, i32* %ECX.i1273, align 4
  %3519 = zext i32 %3518 to i64
  %3520 = load i64, i64* %3, align 8
  store i64 %3519, i64* %RAX.i243, align 8
  %3521 = sext i32 %3518 to i64
  %3522 = lshr i64 %3521, 32
  store i64 %3522, i64* %RDX.i1255, align 8
  %3523 = load i64, i64* %RBP.i, align 8
  %3524 = add i64 %3523, -696
  %3525 = add i64 %3520, 9
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3524 to i32*
  %3527 = load i32, i32* %3526, align 4
  %3528 = zext i32 %3527 to i64
  store i64 %3528, i64* %RCX.i1277, align 8
  %3529 = add i64 %3520, 11
  store i64 %3529, i64* %3, align 8
  %3530 = sext i32 %3527 to i64
  %3531 = shl nuw i64 %3522, 32
  %3532 = or i64 %3531, %3519
  %3533 = sdiv i64 %3532, %3530
  %3534 = shl i64 %3533, 32
  %3535 = ashr exact i64 %3534, 32
  %3536 = icmp eq i64 %3533, %3535
  br i1 %3536, label %3539, label %3537

; <label>:3537:                                   ; preds = %block_.L_404317
  %3538 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3529, %struct.Memory* %3343)
  %.pre95 = load i64, i64* %RBP.i, align 8
  %.pre96 = load i32, i32* %EAX.i1233, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:3539:                                   ; preds = %block_.L_404317
  %3540 = srem i64 %3532, %3530
  %3541 = and i64 %3533, 4294967295
  store i64 %3541, i64* %RAX.i243, align 8
  %3542 = and i64 %3540, 4294967295
  store i64 %3542, i64* %RDX.i1227, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3543 = trunc i64 %3533 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3539, %3537
  %3544 = phi i64 [ %.pre97, %3537 ], [ %3529, %3539 ]
  %3545 = phi i32 [ %.pre96, %3537 ], [ %3543, %3539 ]
  %3546 = phi i64 [ %.pre95, %3537 ], [ %3523, %3539 ]
  %3547 = phi %struct.Memory* [ %3538, %3537 ], [ %3343, %3539 ]
  %3548 = add i64 %3546, -692
  %3549 = add i64 %3544, 6
  store i64 %3549, i64* %3, align 8
  %3550 = inttoptr i64 %3548 to i32*
  store i32 %3545, i32* %3550, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_404360

block_.L_404360:                                  ; preds = %routine_idivl__ecx.exit, %block_4042fe
  %3551 = phi i64 [ %.pre98, %routine_idivl__ecx.exit ], [ %3386, %block_4042fe ]
  %MEMORY.24 = phi %struct.Memory* [ %3547, %routine_idivl__ecx.exit ], [ %3343, %block_4042fe ]
  %3552 = load i64, i64* %RBP.i, align 8
  %3553 = add i64 %3552, -692
  %3554 = add i64 %3551, 6
  store i64 %3554, i64* %3, align 8
  %3555 = inttoptr i64 %3553 to i32*
  %3556 = load i32, i32* %3555, align 4
  %3557 = zext i32 %3556 to i64
  store i64 %3557, i64* %RAX.i243, align 8
  %3558 = add i64 %3552, -680
  %3559 = add i64 %3551, 12
  store i64 %3559, i64* %3, align 8
  %3560 = inttoptr i64 %3558 to i32*
  store i32 %3556, i32* %3560, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_40436c

block_.L_40436c:                                  ; preds = %block_.L_404360, %block_40428c
  %3561 = phi i64 [ %.pre99, %block_.L_404360 ], [ %3164, %block_40428c ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.24, %block_.L_404360 ], [ %MEMORY.23, %block_40428c ]
  %3562 = load i64, i64* %RBP.i, align 8
  %3563 = add i64 %3562, -680
  %3564 = add i64 %3561, 6
  store i64 %3564, i64* %3, align 8
  %3565 = inttoptr i64 %3563 to i32*
  %3566 = load i32, i32* %3565, align 4
  %3567 = zext i32 %3566 to i64
  store i64 %3567, i64* %RAX.i243, align 8
  %3568 = trunc i32 %3566 to i16
  store i16 %3568, i16* %CX.i720, align 2
  %3569 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3570 = add i64 %3569, 4792
  %3571 = lshr i64 %3570, 63
  %3572 = add i64 %3569, 6328
  store i64 %3572, i64* %RDX.i1227, align 8
  %3573 = icmp ugt i64 %3570, -1537
  %3574 = zext i1 %3573 to i8
  store i8 %3574, i8* %14, align 1
  %3575 = trunc i64 %3572 to i32
  %3576 = and i32 %3575, 255
  %3577 = tail call i32 @llvm.ctpop.i32(i32 %3576)
  %3578 = trunc i32 %3577 to i8
  %3579 = and i8 %3578, 1
  %3580 = xor i8 %3579, 1
  store i8 %3580, i8* %21, align 1
  %3581 = xor i64 %3572, %3570
  %3582 = lshr i64 %3581, 4
  %3583 = trunc i64 %3582 to i8
  %3584 = and i8 %3583, 1
  store i8 %3584, i8* %26, align 1
  %3585 = icmp eq i64 %3572, 0
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %29, align 1
  %3587 = lshr i64 %3572, 63
  %3588 = trunc i64 %3587 to i8
  store i8 %3588, i8* %32, align 1
  %3589 = xor i64 %3587, %3571
  %3590 = add nuw nsw i64 %3589, %3587
  %3591 = icmp eq i64 %3590, 2
  %3592 = zext i1 %3591 to i8
  store i8 %3592, i8* %38, align 1
  %3593 = add i64 %3562, -152
  %3594 = add i64 %3561, 38
  store i64 %3594, i64* %3, align 8
  %3595 = inttoptr i64 %3593 to i32*
  %3596 = load i32, i32* %3595, align 4
  %3597 = sext i32 %3596 to i64
  %3598 = shl nsw i64 %3597, 5
  store i64 %3598, i64* %RSI.i1266, align 8
  %3599 = add i64 %3598, %3572
  store i64 %3599, i64* %RDX.i1227, align 8
  %3600 = icmp ult i64 %3599, %3572
  %3601 = icmp ult i64 %3599, %3598
  %3602 = or i1 %3600, %3601
  %3603 = zext i1 %3602 to i8
  store i8 %3603, i8* %14, align 1
  %3604 = trunc i64 %3599 to i32
  %3605 = and i32 %3604, 255
  %3606 = tail call i32 @llvm.ctpop.i32(i32 %3605)
  %3607 = trunc i32 %3606 to i8
  %3608 = and i8 %3607, 1
  %3609 = xor i8 %3608, 1
  store i8 %3609, i8* %21, align 1
  %3610 = xor i64 %3572, %3599
  %3611 = lshr i64 %3610, 4
  %3612 = trunc i64 %3611 to i8
  %3613 = and i8 %3612, 1
  store i8 %3613, i8* %26, align 1
  %3614 = icmp eq i64 %3599, 0
  %3615 = zext i1 %3614 to i8
  store i8 %3615, i8* %29, align 1
  %3616 = lshr i64 %3599, 63
  %3617 = trunc i64 %3616 to i8
  store i8 %3617, i8* %32, align 1
  %3618 = lshr i64 %3597, 58
  %3619 = and i64 %3618, 1
  %3620 = xor i64 %3616, %3587
  %3621 = xor i64 %3616, %3619
  %3622 = add nuw nsw i64 %3620, %3621
  %3623 = icmp eq i64 %3622, 2
  %3624 = zext i1 %3623 to i8
  store i8 %3624, i8* %38, align 1
  %3625 = load i64, i64* %RBP.i, align 8
  %3626 = add i64 %3625, -148
  %3627 = add i64 %3561, 52
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3626 to i32*
  %3629 = load i32, i32* %3628, align 4
  %3630 = sext i32 %3629 to i64
  store i64 %3630, i64* %RSI.i1266, align 8
  %3631 = shl nsw i64 %3630, 1
  %3632 = add i64 %3631, %3599
  %3633 = load i16, i16* %CX.i720, align 2
  %3634 = add i64 %3561, 56
  store i64 %3634, i64* %3, align 8
  %3635 = inttoptr i64 %3632 to i16*
  store i16 %3633, i16* %3635, align 2
  %3636 = load i64, i64* %RBP.i, align 8
  %3637 = add i64 %3636, -148
  %3638 = load i64, i64* %3, align 8
  %3639 = add i64 %3638, 6
  store i64 %3639, i64* %3, align 8
  %3640 = inttoptr i64 %3637 to i32*
  %3641 = load i32, i32* %3640, align 4
  %3642 = add i32 %3641, 1
  %3643 = zext i32 %3642 to i64
  store i64 %3643, i64* %RAX.i243, align 8
  %3644 = icmp eq i32 %3641, -1
  %3645 = icmp eq i32 %3642, 0
  %3646 = or i1 %3644, %3645
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %14, align 1
  %3648 = and i32 %3642, 255
  %3649 = tail call i32 @llvm.ctpop.i32(i32 %3648)
  %3650 = trunc i32 %3649 to i8
  %3651 = and i8 %3650, 1
  %3652 = xor i8 %3651, 1
  store i8 %3652, i8* %21, align 1
  %3653 = xor i32 %3642, %3641
  %3654 = lshr i32 %3653, 4
  %3655 = trunc i32 %3654 to i8
  %3656 = and i8 %3655, 1
  store i8 %3656, i8* %26, align 1
  %3657 = zext i1 %3645 to i8
  store i8 %3657, i8* %29, align 1
  %3658 = lshr i32 %3642, 31
  %3659 = trunc i32 %3658 to i8
  store i8 %3659, i8* %32, align 1
  %3660 = lshr i32 %3641, 31
  %3661 = xor i32 %3658, %3660
  %3662 = add nuw nsw i32 %3661, %3658
  %3663 = icmp eq i32 %3662, 2
  %3664 = zext i1 %3663 to i8
  store i8 %3664, i8* %38, align 1
  %3665 = add i64 %3638, 15
  store i64 %3665, i64* %3, align 8
  store i32 %3642, i32* %3640, align 4
  %3666 = load i64, i64* %3, align 8
  %3667 = add i64 %3666, -523
  store i64 %3667, i64* %3, align 8
  br label %block_.L_4041a8

block_.L_4043b8:                                  ; preds = %block_.L_4041a8
  %3668 = add i64 %2714, -152
  %3669 = add i64 %2743, 11
  store i64 %3669, i64* %3, align 8
  %3670 = inttoptr i64 %3668 to i32*
  %3671 = load i32, i32* %3670, align 4
  %3672 = add i32 %3671, 1
  %3673 = zext i32 %3672 to i64
  store i64 %3673, i64* %RAX.i243, align 8
  %3674 = icmp eq i32 %3671, -1
  %3675 = icmp eq i32 %3672, 0
  %3676 = or i1 %3674, %3675
  %3677 = zext i1 %3676 to i8
  store i8 %3677, i8* %14, align 1
  %3678 = and i32 %3672, 255
  %3679 = tail call i32 @llvm.ctpop.i32(i32 %3678)
  %3680 = trunc i32 %3679 to i8
  %3681 = and i8 %3680, 1
  %3682 = xor i8 %3681, 1
  store i8 %3682, i8* %21, align 1
  %3683 = xor i32 %3672, %3671
  %3684 = lshr i32 %3683, 4
  %3685 = trunc i32 %3684 to i8
  %3686 = and i8 %3685, 1
  store i8 %3686, i8* %26, align 1
  %3687 = zext i1 %3675 to i8
  store i8 %3687, i8* %29, align 1
  %3688 = lshr i32 %3672, 31
  %3689 = trunc i32 %3688 to i8
  store i8 %3689, i8* %32, align 1
  %3690 = lshr i32 %3671, 31
  %3691 = xor i32 %3688, %3690
  %3692 = add nuw nsw i32 %3691, %3688
  %3693 = icmp eq i32 %3692, 2
  %3694 = zext i1 %3693 to i8
  store i8 %3694, i8* %38, align 1
  %3695 = add i64 %2743, 20
  store i64 %3695, i64* %3, align 8
  store i32 %3672, i32* %3670, align 4
  %3696 = load i64, i64* %3, align 8
  %3697 = add i64 %3696, -571
  store i64 %3697, i64* %3, align 8
  br label %block_.L_404191

block_.L_4043d1.loopexit:                         ; preds = %block_.L_404191
  br label %block_.L_4043d1

block_.L_4043d1:                                  ; preds = %block_.L_4043d1.loopexit, %block_.L_403f59
  %3698 = phi i64 [ %1867, %block_.L_403f59 ], [ %2709, %block_.L_4043d1.loopexit ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.11, %block_.L_403f59 ], [ %MEMORY.21, %block_.L_4043d1.loopexit ]
  %3699 = load i64, i64* %6, align 8
  %3700 = add i64 %3699, 704
  store i64 %3700, i64* %6, align 8
  %3701 = icmp ugt i64 %3699, -705
  %3702 = zext i1 %3701 to i8
  store i8 %3702, i8* %14, align 1
  %3703 = trunc i64 %3700 to i32
  %3704 = and i32 %3703, 255
  %3705 = tail call i32 @llvm.ctpop.i32(i32 %3704)
  %3706 = trunc i32 %3705 to i8
  %3707 = and i8 %3706, 1
  %3708 = xor i8 %3707, 1
  store i8 %3708, i8* %21, align 1
  %3709 = xor i64 %3700, %3699
  %3710 = lshr i64 %3709, 4
  %3711 = trunc i64 %3710 to i8
  %3712 = and i8 %3711, 1
  store i8 %3712, i8* %26, align 1
  %3713 = icmp eq i64 %3700, 0
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %29, align 1
  %3715 = lshr i64 %3700, 63
  %3716 = trunc i64 %3715 to i8
  store i8 %3716, i8* %32, align 1
  %3717 = lshr i64 %3699, 63
  %3718 = xor i64 %3715, %3717
  %3719 = add nuw nsw i64 %3718, %3715
  %3720 = icmp eq i64 %3719, 2
  %3721 = zext i1 %3720 to i8
  store i8 %3721, i8* %38, align 1
  %3722 = add i64 %3698, 8
  store i64 %3722, i64* %3, align 8
  %3723 = add i64 %3699, 712
  %3724 = inttoptr i64 %3700 to i64*
  %3725 = load i64, i64* %3724, align 8
  store i64 %3725, i64* %RBP.i, align 8
  store i64 %3723, i64* %6, align 8
  %3726 = add i64 %3698, 9
  store i64 %3726, i64* %3, align 8
  %3727 = inttoptr i64 %3723 to i64*
  %3728 = load i64, i64* %3727, align 8
  store i64 %3728, i64* %3, align 8
  %3729 = add i64 %3699, 720
  store i64 %3729, i64* %6, align 8
  ret %struct.Memory* %MEMORY.26
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
define %struct.Memory* @routine_subq__0x2c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -704
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 704
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x11__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -17
  %10 = icmp ult i32 %8, 17
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
define %struct.Memory* @routine_jge_.L_403a1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x270__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -624
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movslq_MINUS0x94__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
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
define %struct.Memory* @routine_addq__r8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__rax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.getNeighbour(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4039c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0xffffffff___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xd8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xd8__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_jne_.L_403a77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_movl__eax__MINUS0x274__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -628
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x258__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
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
define %struct.Memory* @routine_movl__eax__MINUS0x278__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -632
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x270__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -624
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
define %struct.Memory* @routine_movl__eax__MINUS0x27c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -636
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403bb3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_je_.L_403aa8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 71784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xd4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -212
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
define %struct.Memory* @routine_movl__edx__MINUS0x280__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -640
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403ab5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x280__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -640
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x280__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -640
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
define %struct.Memory* @routine_movl__0x1__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x278__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -632
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_403b69(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
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
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_403b36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x11868__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 71784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl___rcx__rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x284__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -644
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403b43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x284__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -644
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x284__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -644
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl_MINUS0x278__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -632
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403ad5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x270__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -624
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
define %struct.Memory* @routine_je_.L_403b9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x26c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -620
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
define %struct.Memory* @routine_movl__edx__MINUS0x288__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -648
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403ba7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x288__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -648
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x288__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -648
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
define %struct.Memory* @routine_cmpl__0x10__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
define %struct.Memory* @routine_jge_.L_403c83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x274__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -628
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
define %struct.Memory* @routine_je_.L_403c10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
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
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
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
define %struct.Memory* @routine_addl_MINUS0x94__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x278__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -632
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
define %struct.Memory* @routine_je_.L_403c6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_addq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_0x14__rdi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movzwl___rcx__rax_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jmpq_.L_403c6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403bcb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_403cbf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x20___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 32, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x10___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -17
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
define %struct.Memory* @routine_movl__eax__MINUS0x28c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -652
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cltd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -652
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
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
define %struct.Memory* @routine_jne_.L_403cf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403cf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x10___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -9
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x290__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -656
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x290__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -656
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
define %struct.Memory* @routine_je_.L_403d31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_403d31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x294__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -660
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x294__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -660
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
define %struct.Memory* @routine_jne_.L_403d5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11be8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72680
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_403e2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_403db3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x94__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x90__rbp__rax_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %4, -144
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_403e15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp__rax_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %4, -140
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403e1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403d66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x10__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -16
  %10 = icmp ult i32 %8, 16
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
define %struct.Memory* @routine_jge_.L_403f32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_403f19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x90__rbp__rax_8____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, -144
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__cx___dx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %CX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %DX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x12b8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4792
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -4793
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
define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 59
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 224
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
  %23 = lshr i64 %3, 58
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x94__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__dx____rax__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %DX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8c__rbp__rax_8____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %3, -140
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x200___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 512
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -513
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
define %struct.Memory* @routine_addq__0x400___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1024
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -1025
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
define %struct.Memory* @routine_jmpq_.L_403e4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403f1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_403e38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_403f59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x27c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -636
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
define %struct.Memory* @routine_jne_.L_403f5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4043d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x9__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -9
  %10 = icmp ult i32 %8, 9
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
define %struct.Memory* @routine_jge_.L_404117(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jge_.L_404002(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
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
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x7___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -8
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x94__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x7___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp ugt i32 %6, -8
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x94__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq__edi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_imull__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RAX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x9c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40405e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x25c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -604
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
define %struct.Memory* @routine_movslq_MINUS0x260__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -608
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
define %struct.Memory* @routine_movl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x8___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp ugt i32 %6, -9
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %R9, align 8
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
define %struct.Memory* @routine_movslq_0x14__r9____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movq___rsi__r8_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x10__r9____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movzwl___rsi__r8_2____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x94__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -148
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
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
define %struct.Memory* @routine_movslq__r10d___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x94__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rsi__rax_2____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_imull__edi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RDX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0xa0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_403f7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x5__MINUS0x9c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 5
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 21474836480
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
define %struct.Memory* @routine_addl__0x20___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -33
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 37
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x5__MINUS0xa0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 5
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 21474836480
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xf___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 15
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -16
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rcx__rdx_2____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xdc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
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
define %struct.Memory* @routine_movslq_MINUS0xe0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ESI, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 4
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 28
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 240
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
  %23 = lshr i32 %.tr, 27
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4043d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4043b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11bec__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72684
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
define %struct.Memory* @routine_movl_MINUS0xac__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x7___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp ult i32 %6, 7
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
define %struct.Memory* @routine_imull_MINUS0xa4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDI, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl_MINUS0x98__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0xa8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDI, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x10___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -17
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
define %struct.Memory* @routine_movl__eax__MINUS0x298__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -664
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x29c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -668
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x298__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = shl nuw i64 %14, 32
  %17 = or i64 %16, %10
  %18 = sdiv i64 %17, %15
  %19 = shl i64 %18, 32
  %20 = ashr exact i64 %19, 32
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %24, label %22

; <label>:22:                                     ; preds = %block_400488
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = srem i64 %17, %15
  %26 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %27 = and i64 %18, 4294967295
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %29 = and i64 %25, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %35, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %24, %22
  %36 = phi %struct.Memory* [ %23, %22 ], [ %2, %24 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x29c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDI, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_404233(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72684
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -672
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40427c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_subl__0x7___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -7
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 7
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
define %struct.Memory* @routine_imull_MINUS0xa4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_imull_MINUS0xa8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -676
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2a4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -676
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
define %struct.Memory* @routine_movl__eax__MINUS0x2a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -672
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2a0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -672
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jle_.L_404299(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x2a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -680
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40436c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -684
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -688
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2ac__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -684
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2b0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -688
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_404317(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -692
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_404360(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -696
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
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
define %struct.Memory* @routine_movl__eax__MINUS0x2b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -692
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -692
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
define %struct.Memory* @routine_movl_MINUS0x2a8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -680
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
define %struct.Memory* @routine_movw__ax___cx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %AX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %CX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x12b8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4792
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -4793
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x600___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1536
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -1537
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CX = bitcast %union.anon* %3 to i16*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %CX, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4041a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4043bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_404191(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 704
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -705
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
