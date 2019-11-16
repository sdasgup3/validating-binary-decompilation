; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G__0x580741_type = type <{ [8 x i8] }>
%G__0x580768_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xab0fe0 = local_unnamed_addr global %G_0xab0fe0_type zeroinitializer
@G__0x580741 = global %G__0x580741_type zeroinitializer
@G__0x580768 = global %G__0x580768_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4523e0.status_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4524d0.safety_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @update_status(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -72
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 64
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i284 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i284, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 20
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i279 = bitcast %union.anon* %45 to i32*
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -8
  %48 = load i32, i32* %ESI.i279, align 4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %51, align 4
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i276 = bitcast %union.anon* %52 to i32*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -12
  %55 = load i32, i32* %EDX.i276, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i273 = getelementptr inbounds %union.anon, %union.anon* %59, i64 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -4
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %66, 76
  store i64 %67, i64* %RCX.i273, align 8
  %68 = lshr i64 %67, 63
  %69 = load i64, i64* %RAX.i284, align 8
  %70 = add i64 %67, %69
  store i64 %70, i64* %RAX.i284, align 8
  %71 = icmp ult i64 %70, %69
  %72 = icmp ult i64 %70, %67
  %73 = or i1 %71, %72
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %14, align 1
  %75 = trunc i64 %70 to i32
  %76 = and i32 %75, 255
  %77 = tail call i32 @llvm.ctpop.i32(i32 %76)
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  store i8 %80, i8* %21, align 1
  %81 = xor i64 %67, %69
  %82 = xor i64 %81, %70
  %83 = lshr i64 %82, 4
  %84 = trunc i64 %83 to i8
  %85 = and i8 %84, 1
  store i8 %85, i8* %26, align 1
  %86 = icmp eq i64 %70, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %29, align 1
  %88 = lshr i64 %70, 63
  %89 = trunc i64 %88 to i8
  store i8 %89, i8* %32, align 1
  %90 = lshr i64 %69, 63
  %91 = xor i64 %88, %90
  %92 = xor i64 %88, %68
  %93 = add nuw nsw i64 %91, %92
  %94 = icmp eq i64 %93, 2
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %38, align 1
  %RDX.i266 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %96 = add i64 %70, 64
  %97 = add i64 %62, 14
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RDX.i266, align 8
  %101 = add i64 %60, -8
  %102 = add i64 %62, 17
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = sub i32 %99, %104
  %106 = icmp ult i32 %99, %104
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %14, align 1
  %108 = and i32 %105, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1
  %113 = xor i32 %104, %99
  %114 = xor i32 %113, %105
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %26, align 1
  %118 = icmp eq i32 %105, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1
  %120 = lshr i32 %105, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %32, align 1
  %122 = lshr i32 %99, 31
  %123 = lshr i32 %104, 31
  %124 = xor i32 %123, %122
  %125 = xor i32 %120, %122
  %126 = add nuw nsw i32 %125, %124
  %127 = icmp eq i32 %126, 2
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %38, align 1
  %.v = select i1 %118, i64 298, i64 23
  %129 = add i64 %62, %.v
  store i64 %129, i64* %3, align 8
  br i1 %118, label %entry.block_.L_4703d5_crit_edge, label %block_4702c2

entry.block_.L_4703d5_crit_edge:                  ; preds = %entry
  %.pre15 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4703d5

block_4702c2:                                     ; preds = %entry
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i284, align 8
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -4
  %132 = add i64 %129, 14
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = mul nsw i64 %135, 76
  store i64 %136, i64* %RCX.i273, align 8
  %137 = lshr i64 %136, 63
  %138 = add i64 %136, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %138, i64* %RAX.i284, align 8
  %139 = icmp ult i64 %138, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %140 = icmp ult i64 %138, %136
  %141 = or i1 %139, %140
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %14, align 1
  %143 = trunc i64 %138 to i32
  %144 = and i32 %143, 252
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %21, align 1
  %149 = xor i64 %136, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %150 = xor i64 %149, %138
  %151 = lshr i64 %150, 4
  %152 = trunc i64 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %26, align 1
  %154 = icmp eq i64 %138, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %29, align 1
  %156 = lshr i64 %138, 63
  %157 = trunc i64 %156 to i8
  store i8 %157, i8* %32, align 1
  %158 = xor i64 %156, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %159 = xor i64 %156, %137
  %160 = add nuw nsw i64 %158, %159
  %161 = icmp eq i64 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %38, align 1
  %163 = add i64 %136, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 64)
  %164 = add i64 %129, 25
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  %166 = load i32, i32* %165, align 4
  %167 = add i32 %166, -2
  %168 = icmp ult i32 %166, 2
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %14, align 1
  %170 = and i32 %167, 255
  %171 = tail call i32 @llvm.ctpop.i32(i32 %170)
  %172 = trunc i32 %171 to i8
  %173 = and i8 %172, 1
  %174 = xor i8 %173, 1
  store i8 %174, i8* %21, align 1
  %175 = xor i32 %167, %166
  %176 = lshr i32 %175, 4
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  store i8 %178, i8* %26, align 1
  %179 = icmp eq i32 %167, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %29, align 1
  %181 = lshr i32 %167, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %32, align 1
  %183 = lshr i32 %166, 31
  %184 = xor i32 %181, %183
  %185 = add nuw nsw i32 %184, %183
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %38, align 1
  %.v22 = select i1 %179, i64 31, i64 41
  %188 = add i64 %129, %.v22
  store i64 %188, i64* %3, align 8
  br i1 %179, label %block_4702e1, label %block_.L_4702eb

block_4702e1:                                     ; preds = %block_4702c2
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -8
  %191 = add i64 %188, 4
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  store i8 0, i8* %14, align 1
  %194 = and i32 %193, 255
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194)
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %199 = icmp eq i32 %193, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %29, align 1
  %201 = lshr i32 %193, 31
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v32 = select i1 %199, i64 244, i64 10
  %203 = add i64 %188, %.v32
  store i64 %203, i64* %3, align 8
  br i1 %199, label %block_.L_4703d5, label %block_.L_4702eb

block_.L_4702eb:                                  ; preds = %block_4702c2, %block_4702e1
  %204 = phi i64 [ %203, %block_4702e1 ], [ %188, %block_4702c2 ]
  %205 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %206 = and i32 %205, 64
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RAX.i284, align 8
  %EAX.i240 = bitcast %union.anon* %39 to i32*
  store i8 0, i8* %14, align 1
  %208 = tail call i32 @llvm.ctpop.i32(i32 %206)
  %209 = trunc i32 %208 to i8
  %210 = xor i8 %209, 1
  store i8 %210, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit20 = lshr exact i32 %206, 6
  %211 = trunc i32 %.lobit20 to i8
  %212 = xor i8 %211, 1
  store i8 %212, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %213 = icmp eq i8 %212, 0
  %.v23 = select i1 %213, i64 24, i64 19
  %214 = add i64 %204, %.v23
  store i64 %214, i64* %3, align 8
  br i1 %213, label %block_.L_470303, label %block_4702fe

block_4702fe:                                     ; preds = %block_.L_4702eb
  %215 = add i64 %214, 82
  store i64 %215, i64* %3, align 8
  %.pre18 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %.pre19 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  br label %block_.L_470350

block_.L_470303:                                  ; preds = %block_.L_4702eb
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i284, align 8
  %RSI.i233 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -4
  %218 = add i64 %214, 13
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = zext i32 %220 to i64
  store i64 %221, i64* %RSI.i233, align 8
  %222 = add i64 %214, 17
  store i64 %222, i64* %3, align 8
  %223 = load i32, i32* %219, align 4
  %224 = sext i32 %223 to i64
  %225 = mul nsw i64 %224, 76
  store i64 %225, i64* %RCX.i273, align 8
  %226 = lshr i64 %225, 63
  %227 = add i64 %225, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %227, i64* %RAX.i284, align 8
  %228 = icmp ult i64 %227, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %229 = icmp ult i64 %227, %225
  %230 = or i1 %228, %229
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %14, align 1
  %232 = trunc i64 %227 to i32
  %233 = and i32 %232, 252
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %21, align 1
  %238 = xor i64 %225, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %239 = xor i64 %238, %227
  %240 = lshr i64 %239, 4
  %241 = trunc i64 %240 to i8
  %242 = and i8 %241, 1
  store i8 %242, i8* %26, align 1
  %243 = icmp eq i64 %227, 0
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %29, align 1
  %245 = lshr i64 %227, 63
  %246 = trunc i64 %245 to i8
  store i8 %246, i8* %32, align 1
  %247 = xor i64 %245, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %248 = xor i64 %245, %226
  %249 = add nuw nsw i64 %247, %248
  %250 = icmp eq i64 %249, 2
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %38, align 1
  %RDI.i223 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %252 = add i64 %225, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 64)
  %253 = add i64 %214, 27
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = zext i32 %255 to i64
  store i64 %256, i64* %RDI.i223, align 8
  %257 = add i64 %216, -20
  %258 = add i64 %214, 30
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i32*
  store i32 %220, i32* %259, align 4
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, -122689
  %262 = add i64 %260, 5
  %263 = load i64, i64* %6, align 8
  %264 = add i64 %263, -8
  %265 = inttoptr i64 %264 to i64*
  store i64 %262, i64* %265, align 8
  store i64 %264, i64* %6, align 8
  store i64 %261, i64* %3, align 8
  %call2_470321 = tail call %struct.Memory* @sub_4523e0.status_to_string(%struct.State* nonnull %0, i64 %261, %struct.Memory* %2)
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -8
  %268 = load i64, i64* %3, align 8
  %269 = add i64 %268, 3
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = zext i32 %271 to i64
  store i64 %272, i64* %RDI.i223, align 8
  %273 = add i64 %266, -32
  %274 = load i64, i64* %RAX.i284, align 8
  %275 = add i64 %268, 7
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %273 to i64*
  store i64 %274, i64* %276, align 8
  %277 = load i64, i64* %3, align 8
  %278 = add i64 %277, -122701
  %279 = add i64 %277, 5
  %280 = load i64, i64* %6, align 8
  %281 = add i64 %280, -8
  %282 = inttoptr i64 %281 to i64*
  store i64 %279, i64* %282, align 8
  store i64 %281, i64* %6, align 8
  store i64 %278, i64* %3, align 8
  %call2_47032d = tail call %struct.Memory* @sub_4523e0.status_to_string(%struct.State* nonnull %0, i64 %278, %struct.Memory* %call2_470321)
  %283 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x580741_type* @G__0x580741 to i64), i64* %RDI.i223, align 8
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -20
  %286 = add i64 %283, 13
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RSI.i233, align 8
  %290 = add i64 %284, -32
  %291 = add i64 %283, 17
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i64*
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %RDX.i266, align 8
  %294 = load i64, i64* %RAX.i284, align 8
  store i64 %294, i64* %RCX.i273, align 8
  %AL.i198 = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i198, align 1
  %295 = add i64 %283, -124290
  %296 = add i64 %283, 27
  %297 = load i64, i64* %6, align 8
  %298 = add i64 %297, -8
  %299 = inttoptr i64 %298 to i64*
  store i64 %296, i64* %299, align 8
  store i64 %298, i64* %6, align 8
  store i64 %295, i64* %3, align 8
  %call2_470348 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %295, %struct.Memory* %call2_47032d)
  %300 = load i64, i64* %RBP.i, align 8
  %301 = add i64 %300, -36
  %302 = load i32, i32* %EAX.i240, align 4
  %303 = load i64, i64* %3, align 8
  %304 = add i64 %303, 3
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %301 to i32*
  store i32 %302, i32* %305, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_470350

block_.L_470350:                                  ; preds = %block_.L_470303, %block_4702fe
  %RSI.i165.pre-phi = phi i64* [ %RSI.i233, %block_.L_470303 ], [ %.pre19, %block_4702fe ]
  %RDI.i168.pre-phi = phi i64* [ %RDI.i223, %block_.L_470303 ], [ %.pre18, %block_4702fe ]
  %306 = phi i64 [ %.pre, %block_.L_470303 ], [ %215, %block_4702fe ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_470348, %block_.L_470303 ], [ %2, %block_4702fe ]
  %307 = load i64, i64* %RBP.i, align 8
  %308 = add i64 %307, -16
  %309 = add i64 %306, 7
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i32*
  store i32 21, i32* %310, align 4
  %.pre13 = load i64, i64* %3, align 8
  br label %block_.L_470357

block_.L_470357:                                  ; preds = %block_.L_4703bd, %block_.L_470350
  %311 = phi i64 [ %.pre13, %block_.L_470350 ], [ %492, %block_.L_4703bd ]
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -16
  %314 = add i64 %311, 7
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = add i32 %316, -400
  %318 = icmp ult i32 %316, 400
  %319 = zext i1 %318 to i8
  store i8 %319, i8* %14, align 1
  %320 = and i32 %317, 255
  %321 = tail call i32 @llvm.ctpop.i32(i32 %320)
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = xor i8 %323, 1
  store i8 %324, i8* %21, align 1
  %325 = xor i32 %316, 16
  %326 = xor i32 %325, %317
  %327 = lshr i32 %326, 4
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  store i8 %329, i8* %26, align 1
  %330 = icmp eq i32 %317, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %29, align 1
  %332 = lshr i32 %317, 31
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %32, align 1
  %334 = lshr i32 %316, 31
  %335 = xor i32 %332, %334
  %336 = add nuw nsw i32 %335, %334
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %38, align 1
  %339 = icmp ne i8 %333, 0
  %340 = xor i1 %339, %337
  %.v24 = select i1 %340, i64 13, i64 121
  %341 = add i64 %311, %.v24
  store i64 %341, i64* %3, align 8
  br i1 %340, label %block_470364, label %block_.L_4703d0

block_470364:                                     ; preds = %block_.L_470357
  %342 = add i64 %341, 4
  store i64 %342, i64* %3, align 8
  %343 = load i32, i32* %315, align 4
  %344 = sext i32 %343 to i64
  store i64 %344, i64* %RAX.i284, align 8
  %345 = add nsw i64 %344, 12099168
  %346 = add i64 %341, 12
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i8*
  %348 = load i8, i8* %347, align 1
  %349 = zext i8 %348 to i64
  store i64 %349, i64* %RCX.i273, align 8
  %350 = zext i8 %348 to i32
  %351 = add nsw i32 %350, -1
  %352 = icmp eq i8 %348, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %14, align 1
  %354 = and i32 %351, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %21, align 1
  %359 = xor i32 %351, %350
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %26, align 1
  %363 = icmp eq i32 %351, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %29, align 1
  %365 = lshr i32 %351, 31
  %366 = trunc i32 %365 to i8
  store i8 %366, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v29 = select i1 %363, i64 42, i64 21
  %367 = add i64 %341, %.v29
  store i64 %367, i64* %3, align 8
  br i1 %363, label %block_.L_47038e, label %block_470379

block_470379:                                     ; preds = %block_470364
  %368 = add i64 %367, 4
  store i64 %368, i64* %3, align 8
  %369 = load i32, i32* %315, align 4
  %370 = sext i32 %369 to i64
  store i64 %370, i64* %RAX.i284, align 8
  %371 = add nsw i64 %370, 12099168
  %372 = add i64 %367, 12
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i8*
  %374 = load i8, i8* %373, align 1
  %375 = zext i8 %374 to i64
  store i64 %375, i64* %RCX.i273, align 8
  %376 = zext i8 %374 to i32
  %377 = add nsw i32 %376, -2
  %378 = icmp ult i8 %374, 2
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %14, align 1
  %380 = and i32 %377, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %21, align 1
  %385 = xor i32 %377, %376
  %386 = lshr i32 %385, 4
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %26, align 1
  %389 = icmp eq i32 %377, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %29, align 1
  %391 = lshr i32 %377, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v30 = select i1 %389, i64 21, i64 68
  %393 = add i64 %367, %.v30
  store i64 %393, i64* %3, align 8
  br i1 %389, label %block_.L_47038e, label %block_.L_4703bd

block_.L_47038e:                                  ; preds = %block_470379, %block_470364
  %394 = phi i64 [ %393, %block_470379 ], [ %367, %block_470364 ]
  %395 = add i64 %312, -4
  %396 = add i64 %394, 3
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i32*
  %398 = load i32, i32* %397, align 4
  %399 = zext i32 %398 to i64
  store i64 %399, i64* %RDI.i168.pre-phi, align 8
  %400 = add i64 %394, 6
  store i64 %400, i64* %3, align 8
  %401 = load i32, i32* %315, align 4
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RSI.i165.pre-phi, align 8
  %403 = add i64 %394, -329566
  %404 = add i64 %394, 11
  %405 = load i64, i64* %6, align 8
  %406 = add i64 %405, -8
  %407 = inttoptr i64 %406 to i64*
  store i64 %404, i64* %407, align 8
  store i64 %406, i64* %6, align 8
  store i64 %403, i64* %3, align 8
  %call2_470394 = tail call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* nonnull %0, i64 %403, %struct.Memory* %MEMORY.1)
  %408 = load i32, i32* %EAX.i240, align 4
  %409 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %410 = and i32 %408, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %415 = icmp eq i32 %408, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %29, align 1
  %417 = lshr i32 %408, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v31 = select i1 %415, i64 36, i64 9
  %419 = add i64 %409, %.v31
  store i64 %419, i64* %3, align 8
  br i1 %415, label %block_.L_4703bd, label %block_4703a2

block_4703a2:                                     ; preds = %block_.L_47038e
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i284, align 8
  %420 = load i64, i64* %RBP.i, align 8
  %421 = add i64 %420, -8
  %422 = add i64 %419, 13
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %RCX.i273, align 8
  %426 = add i64 %420, -16
  %427 = add i64 %419, 17
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  %431 = mul nsw i64 %430, 76
  store i64 %431, i64* %RDX.i266, align 8
  %432 = lshr i64 %431, 63
  %433 = add i64 %431, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %433, i64* %RAX.i284, align 8
  %434 = icmp ult i64 %433, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %435 = icmp ult i64 %433, %431
  %436 = or i1 %434, %435
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %14, align 1
  %438 = trunc i64 %433 to i32
  %439 = and i32 %438, 252
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439)
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %21, align 1
  %444 = xor i64 %431, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %445 = xor i64 %444, %433
  %446 = lshr i64 %445, 4
  %447 = trunc i64 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %26, align 1
  %449 = icmp eq i64 %433, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %29, align 1
  %451 = lshr i64 %433, 63
  %452 = trunc i64 %451 to i8
  store i8 %452, i8* %32, align 1
  %453 = xor i64 %451, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %454 = xor i64 %451, %432
  %455 = add nuw nsw i64 %453, %454
  %456 = icmp eq i64 %455, 2
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %38, align 1
  %458 = add i64 %431, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 64)
  %459 = add i64 %419, 27
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  store i32 %424, i32* %460, align 4
  %.pre14 = load i64, i64* %3, align 8
  br label %block_.L_4703bd

block_.L_4703bd:                                  ; preds = %block_470379, %block_4703a2, %block_.L_47038e
  %461 = phi i64 [ %.pre14, %block_4703a2 ], [ %419, %block_.L_47038e ], [ %393, %block_470379 ]
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -16
  %464 = add i64 %461, 8
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %463 to i32*
  %466 = load i32, i32* %465, align 4
  %467 = add i32 %466, 1
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RAX.i284, align 8
  %469 = icmp eq i32 %466, -1
  %470 = icmp eq i32 %467, 0
  %471 = or i1 %469, %470
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %14, align 1
  %473 = and i32 %467, 255
  %474 = tail call i32 @llvm.ctpop.i32(i32 %473)
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  %477 = xor i8 %476, 1
  store i8 %477, i8* %21, align 1
  %478 = xor i32 %467, %466
  %479 = lshr i32 %478, 4
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  store i8 %481, i8* %26, align 1
  %482 = zext i1 %470 to i8
  store i8 %482, i8* %29, align 1
  %483 = lshr i32 %467, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %32, align 1
  %485 = lshr i32 %466, 31
  %486 = xor i32 %483, %485
  %487 = add nuw nsw i32 %486, %483
  %488 = icmp eq i32 %487, 2
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %38, align 1
  %490 = add i64 %461, 14
  store i64 %490, i64* %3, align 8
  store i32 %467, i32* %465, align 4
  %491 = load i64, i64* %3, align 8
  %492 = add i64 %491, -116
  store i64 %492, i64* %3, align 8
  br label %block_.L_470357

block_.L_4703d0:                                  ; preds = %block_.L_470357
  %493 = add i64 %341, 5
  store i64 %493, i64* %3, align 8
  br label %block_.L_4703d5

block_.L_4703d5:                                  ; preds = %entry.block_.L_4703d5_crit_edge, %block_.L_4703d0, %block_4702e1
  %494 = phi i64 [ %.pre15, %entry.block_.L_4703d5_crit_edge ], [ %312, %block_.L_4703d0 ], [ %189, %block_4702e1 ]
  %495 = phi i64 [ %129, %entry.block_.L_4703d5_crit_edge ], [ %493, %block_.L_4703d0 ], [ %203, %block_4702e1 ]
  %MEMORY.5 = phi %struct.Memory* [ %2, %entry.block_.L_4703d5_crit_edge ], [ %MEMORY.1, %block_.L_4703d0 ], [ %2, %block_4702e1 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i284, align 8
  %496 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %496, i64* %RCX.i273, align 8
  %497 = add i64 %494, -4
  %498 = add i64 %495, 22
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = sext i32 %500 to i64
  %502 = mul nsw i64 %501, 76
  store i64 %502, i64* %RDX.i266, align 8
  %503 = lshr i64 %502, 63
  %504 = add i64 %502, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %504, i64* %RAX.i284, align 8
  %505 = icmp ult i64 %504, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %506 = icmp ult i64 %504, %502
  %507 = or i1 %505, %506
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %14, align 1
  %509 = trunc i64 %504 to i32
  %510 = and i32 %509, 252
  %511 = tail call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  store i8 %514, i8* %21, align 1
  %515 = xor i64 %502, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %516 = xor i64 %515, %504
  %517 = lshr i64 %516, 4
  %518 = trunc i64 %517 to i8
  %519 = and i8 %518, 1
  store i8 %519, i8* %26, align 1
  %520 = icmp eq i64 %504, 0
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %29, align 1
  %522 = lshr i64 %504, 63
  %523 = trunc i64 %522 to i8
  store i8 %523, i8* %32, align 1
  %524 = xor i64 %522, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %525 = xor i64 %522, %503
  %526 = add nuw nsw i64 %524, %525
  %527 = icmp eq i64 %526, 2
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %38, align 1
  %529 = add i64 %502, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %530 = add i64 %495, 33
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = sext i32 %532 to i64
  %534 = mul nsw i64 %533, 104
  store i64 %534, i64* %RAX.i284, align 8
  %535 = lshr i64 %534, 63
  %536 = load i64, i64* %RCX.i273, align 8
  %537 = add i64 %534, %536
  store i64 %537, i64* %RCX.i273, align 8
  %538 = icmp ult i64 %537, %536
  %539 = icmp ult i64 %537, %534
  %540 = or i1 %538, %539
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %14, align 1
  %542 = trunc i64 %537 to i32
  %543 = and i32 %542, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %21, align 1
  %548 = xor i64 %534, %536
  %549 = xor i64 %548, %537
  %550 = lshr i64 %549, 4
  %551 = trunc i64 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %26, align 1
  %553 = icmp eq i64 %537, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %29, align 1
  %555 = lshr i64 %537, 63
  %556 = trunc i64 %555 to i8
  store i8 %556, i8* %32, align 1
  %557 = lshr i64 %536, 63
  %558 = xor i64 %555, %557
  %559 = xor i64 %555, %535
  %560 = add nuw nsw i64 %558, %559
  %561 = icmp eq i64 %560, 2
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %38, align 1
  %RSI.i113 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %563 = add i64 %537, 60
  %564 = add i64 %495, 43
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i32*
  %566 = load i32, i32* %565, align 4
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RSI.i113, align 8
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -12
  %570 = add i64 %495, 46
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = sub i32 %566, %572
  %574 = icmp ult i32 %566, %572
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %14, align 1
  %576 = and i32 %573, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %21, align 1
  %581 = xor i32 %572, %566
  %582 = xor i32 %581, %573
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %26, align 1
  %586 = icmp eq i32 %573, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %29, align 1
  %588 = lshr i32 %573, 31
  %589 = trunc i32 %588 to i8
  store i8 %589, i8* %32, align 1
  %590 = lshr i32 %566, 31
  %591 = lshr i32 %572, 31
  %592 = xor i32 %591, %590
  %593 = xor i32 %588, %590
  %594 = add nuw nsw i32 %593, %592
  %595 = icmp eq i32 %594, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %38, align 1
  %.v25 = select i1 %586, i64 278, i64 52
  %597 = add i64 %495, %.v25
  store i64 %597, i64* %3, align 8
  br i1 %586, label %block_.L_4704eb, label %block_470409

block_470409:                                     ; preds = %block_.L_4703d5
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i284, align 8
  %598 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %598, i64* %RCX.i273, align 8
  %599 = add i64 %568, -4
  %600 = add i64 %597, 22
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i32*
  %602 = load i32, i32* %601, align 4
  %603 = sext i32 %602 to i64
  %604 = mul nsw i64 %603, 76
  store i64 %604, i64* %RDX.i266, align 8
  %605 = lshr i64 %604, 63
  %606 = add i64 %604, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %606, i64* %RAX.i284, align 8
  %607 = icmp ult i64 %606, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %608 = icmp ult i64 %606, %604
  %609 = or i1 %607, %608
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %14, align 1
  %611 = trunc i64 %606 to i32
  %612 = and i32 %611, 252
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %21, align 1
  %617 = xor i64 %604, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %618 = xor i64 %617, %606
  %619 = lshr i64 %618, 4
  %620 = trunc i64 %619 to i8
  %621 = and i8 %620, 1
  store i8 %621, i8* %26, align 1
  %622 = icmp eq i64 %606, 0
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %29, align 1
  %624 = lshr i64 %606, 63
  %625 = trunc i64 %624 to i8
  store i8 %625, i8* %32, align 1
  %626 = xor i64 %624, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %627 = xor i64 %624, %605
  %628 = add nuw nsw i64 %626, %627
  %629 = icmp eq i64 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %38, align 1
  %631 = add i64 %604, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %632 = add i64 %597, 33
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = sext i32 %634 to i64
  %636 = mul nsw i64 %635, 104
  store i64 %636, i64* %RAX.i284, align 8
  %637 = lshr i64 %636, 63
  %638 = load i64, i64* %RCX.i273, align 8
  %639 = add i64 %636, %638
  store i64 %639, i64* %RCX.i273, align 8
  %640 = icmp ult i64 %639, %638
  %641 = icmp ult i64 %639, %636
  %642 = or i1 %640, %641
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %14, align 1
  %644 = trunc i64 %639 to i32
  %645 = and i32 %644, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %21, align 1
  %650 = xor i64 %636, %638
  %651 = xor i64 %650, %639
  %652 = lshr i64 %651, 4
  %653 = trunc i64 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %26, align 1
  %655 = icmp eq i64 %639, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %29, align 1
  %657 = lshr i64 %639, 63
  %658 = trunc i64 %657 to i8
  store i8 %658, i8* %32, align 1
  %659 = lshr i64 %638, 63
  %660 = xor i64 %657, %659
  %661 = xor i64 %657, %637
  %662 = add nuw nsw i64 %660, %661
  %663 = icmp eq i64 %662, 2
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %38, align 1
  %665 = add i64 %639, 60
  %666 = add i64 %597, 44
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = add i32 %668, -2
  %670 = icmp ult i32 %668, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %14, align 1
  %672 = and i32 %669, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %21, align 1
  %677 = xor i32 %669, %668
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %26, align 1
  %681 = icmp eq i32 %669, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %29, align 1
  %683 = lshr i32 %669, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %32, align 1
  %685 = lshr i32 %668, 31
  %686 = xor i32 %683, %685
  %687 = add nuw nsw i32 %686, %685
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %38, align 1
  %.v26 = select i1 %681, i64 50, i64 60
  %690 = add i64 %597, %.v26
  store i64 %690, i64* %3, align 8
  br i1 %681, label %block_47043b, label %block_.L_470445

block_47043b:                                     ; preds = %block_470409
  %691 = load i64, i64* %RBP.i, align 8
  %692 = add i64 %691, -12
  %693 = add i64 %690, 4
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  store i8 0, i8* %14, align 1
  %696 = and i32 %695, 255
  %697 = tail call i32 @llvm.ctpop.i32(i32 %696)
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = xor i8 %699, 1
  store i8 %700, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %701 = icmp eq i32 %695, 0
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %29, align 1
  %703 = lshr i32 %695, 31
  %704 = trunc i32 %703 to i8
  store i8 %704, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v28 = select i1 %701, i64 176, i64 10
  %705 = add i64 %690, %.v28
  store i64 %705, i64* %3, align 8
  br i1 %701, label %block_.L_4704eb, label %block_.L_470445

block_.L_470445:                                  ; preds = %block_470409, %block_47043b
  %706 = phi i64 [ %705, %block_47043b ], [ %690, %block_470409 ]
  %707 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %708 = and i32 %707, 64
  %709 = zext i32 %708 to i64
  store i64 %709, i64* %RAX.i284, align 8
  store i8 0, i8* %14, align 1
  %710 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %711 = trunc i32 %710 to i8
  %712 = xor i8 %711, 1
  store i8 %712, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit21 = lshr exact i32 %708, 6
  %713 = trunc i32 %.lobit21 to i8
  %714 = xor i8 %713, 1
  store i8 %714, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %715 = icmp eq i8 %714, 0
  %.v27 = select i1 %715, i64 24, i64 19
  %716 = add i64 %706, %.v27
  store i64 %716, i64* %3, align 8
  br i1 %715, label %block_.L_47045d, label %block_470458

block_470458:                                     ; preds = %block_.L_470445
  %717 = add i64 %716, 101
  store i64 %717, i64* %3, align 8
  br label %block_.L_4704bd

block_.L_47045d:                                  ; preds = %block_.L_470445
  %EAX.i77 = bitcast %union.anon* %39 to i32*
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i284, align 8
  %718 = load i64, i64* %RBP.i, align 8
  %719 = add i64 %718, -4
  %720 = add i64 %716, 13
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RSI.i113, align 8
  %724 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %724, i64* %RCX.i273, align 8
  %725 = add i64 %716, 25
  store i64 %725, i64* %3, align 8
  %726 = load i32, i32* %721, align 4
  %727 = sext i32 %726 to i64
  %728 = mul nsw i64 %727, 76
  store i64 %728, i64* %RDX.i266, align 8
  %729 = lshr i64 %728, 63
  %730 = add i64 %728, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %730, i64* %RAX.i284, align 8
  %731 = icmp ult i64 %730, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %732 = icmp ult i64 %730, %728
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %14, align 1
  %735 = trunc i64 %730 to i32
  %736 = and i32 %735, 252
  %737 = tail call i32 @llvm.ctpop.i32(i32 %736)
  %738 = trunc i32 %737 to i8
  %739 = and i8 %738, 1
  %740 = xor i8 %739, 1
  store i8 %740, i8* %21, align 1
  %741 = xor i64 %728, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
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
  %750 = xor i64 %748, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %751 = xor i64 %748, %729
  %752 = add nuw nsw i64 %750, %751
  %753 = icmp eq i64 %752, 2
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %38, align 1
  %755 = add i64 %728, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %756 = add i64 %716, 36
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = sext i32 %758 to i64
  %760 = mul nsw i64 %759, 104
  store i64 %760, i64* %RAX.i284, align 8
  %761 = lshr i64 %760, 63
  %762 = add i64 %760, %724
  store i64 %762, i64* %RCX.i273, align 8
  %763 = icmp ult i64 %762, %724
  %764 = icmp ult i64 %762, %760
  %765 = or i1 %763, %764
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %14, align 1
  %767 = trunc i64 %762 to i32
  %768 = and i32 %767, 255
  %769 = tail call i32 @llvm.ctpop.i32(i32 %768)
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  %772 = xor i8 %771, 1
  store i8 %772, i8* %21, align 1
  %773 = xor i64 %760, %724
  %774 = xor i64 %773, %762
  %775 = lshr i64 %774, 4
  %776 = trunc i64 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %26, align 1
  %778 = icmp eq i64 %762, 0
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %29, align 1
  %780 = lshr i64 %762, 63
  %781 = trunc i64 %780 to i8
  store i8 %781, i8* %32, align 1
  %782 = lshr i64 %724, 63
  %783 = xor i64 %780, %782
  %784 = xor i64 %780, %761
  %785 = add nuw nsw i64 %783, %784
  %786 = icmp eq i64 %785, 2
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %38, align 1
  %RDI.i51 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %788 = add i64 %762, 60
  %789 = add i64 %716, 46
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  %791 = load i32, i32* %790, align 4
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RDI.i51, align 8
  %793 = load i64, i64* %RBP.i, align 8
  %794 = add i64 %793, -40
  %795 = load i32, i32* %ESI.i279, align 4
  %796 = add i64 %716, 49
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %794 to i32*
  store i32 %795, i32* %797, align 4
  %798 = load i64, i64* %3, align 8
  %799 = add i64 %798, -122814
  %800 = add i64 %798, 5
  %801 = load i64, i64* %6, align 8
  %802 = add i64 %801, -8
  %803 = inttoptr i64 %802 to i64*
  store i64 %800, i64* %803, align 8
  store i64 %802, i64* %6, align 8
  store i64 %799, i64* %3, align 8
  %call2_47048e = tail call %struct.Memory* @sub_4524d0.safety_to_string(%struct.State* nonnull %0, i64 %799, %struct.Memory* %MEMORY.5)
  %804 = load i64, i64* %RBP.i, align 8
  %805 = add i64 %804, -12
  %806 = load i64, i64* %3, align 8
  %807 = add i64 %806, 3
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %805 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %RDI.i51, align 8
  %811 = add i64 %804, -48
  %812 = load i64, i64* %RAX.i284, align 8
  %813 = add i64 %806, 7
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %811 to i64*
  store i64 %812, i64* %814, align 8
  %815 = load i64, i64* %3, align 8
  %816 = add i64 %815, -122826
  %817 = add i64 %815, 5
  %818 = load i64, i64* %6, align 8
  %819 = add i64 %818, -8
  %820 = inttoptr i64 %819 to i64*
  store i64 %817, i64* %820, align 8
  store i64 %819, i64* %6, align 8
  store i64 %816, i64* %3, align 8
  %call2_47049a = tail call %struct.Memory* @sub_4524d0.safety_to_string(%struct.State* nonnull %0, i64 %816, %struct.Memory* %call2_47048e)
  %821 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x580768_type* @G__0x580768 to i64), i64* %RDI.i51, align 8
  %822 = load i64, i64* %RBP.i, align 8
  %823 = add i64 %822, -40
  %824 = add i64 %821, 13
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %RSI.i113, align 8
  %828 = add i64 %822, -48
  %829 = add i64 %821, 17
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %RDX.i266, align 8
  %832 = load i64, i64* %RAX.i284, align 8
  store i64 %832, i64* %RCX.i273, align 8
  %AL.i = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i, align 1
  %833 = add i64 %821, -124655
  %834 = add i64 %821, 27
  %835 = load i64, i64* %6, align 8
  %836 = add i64 %835, -8
  %837 = inttoptr i64 %836 to i64*
  store i64 %834, i64* %837, align 8
  store i64 %836, i64* %6, align 8
  store i64 %833, i64* %3, align 8
  %call2_4704b5 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %833, %struct.Memory* %call2_47049a)
  %838 = load i64, i64* %RBP.i, align 8
  %839 = add i64 %838, -52
  %840 = load i32, i32* %EAX.i77, align 4
  %841 = load i64, i64* %3, align 8
  %842 = add i64 %841, 3
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %839 to i32*
  store i32 %840, i32* %843, align 4
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_4704bd

block_.L_4704bd:                                  ; preds = %block_.L_47045d, %block_470458
  %844 = phi i64 [ %.pre16, %block_.L_47045d ], [ %717, %block_470458 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_4704b5, %block_.L_47045d ], [ %MEMORY.5, %block_470458 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i284, align 8
  %845 = load i64, i64* %RBP.i, align 8
  %846 = add i64 %845, -12
  %847 = add i64 %844, 13
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i32*
  %849 = load i32, i32* %848, align 4
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RCX.i273, align 8
  %851 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %851, i64* %RDX.i266, align 8
  %852 = add i64 %845, -4
  %853 = add i64 %844, 25
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  %855 = load i32, i32* %854, align 4
  %856 = sext i32 %855 to i64
  %857 = mul nsw i64 %856, 76
  store i64 %857, i64* %RSI.i113, align 8
  %858 = lshr i64 %857, 63
  %859 = add i64 %857, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %859, i64* %RAX.i284, align 8
  %860 = icmp ult i64 %859, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %861 = icmp ult i64 %859, %857
  %862 = or i1 %860, %861
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %14, align 1
  %864 = trunc i64 %859 to i32
  %865 = and i32 %864, 252
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %21, align 1
  %870 = xor i64 %857, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %871 = xor i64 %870, %859
  %872 = lshr i64 %871, 4
  %873 = trunc i64 %872 to i8
  %874 = and i8 %873, 1
  store i8 %874, i8* %26, align 1
  %875 = icmp eq i64 %859, 0
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %29, align 1
  %877 = lshr i64 %859, 63
  %878 = trunc i64 %877 to i8
  store i8 %878, i8* %32, align 1
  %879 = xor i64 %877, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %880 = xor i64 %877, %858
  %881 = add nuw nsw i64 %879, %880
  %882 = icmp eq i64 %881, 2
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %38, align 1
  %884 = add i64 %857, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %885 = add i64 %844, 36
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i32*
  %887 = load i32, i32* %886, align 4
  %888 = sext i32 %887 to i64
  %889 = mul nsw i64 %888, 104
  store i64 %889, i64* %RAX.i284, align 8
  %890 = lshr i64 %889, 63
  %891 = load i64, i64* %RDX.i266, align 8
  %892 = add i64 %889, %891
  store i64 %892, i64* %RDX.i266, align 8
  %893 = icmp ult i64 %892, %891
  %894 = icmp ult i64 %892, %889
  %895 = or i1 %893, %894
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %14, align 1
  %897 = trunc i64 %892 to i32
  %898 = and i32 %897, 255
  %899 = tail call i32 @llvm.ctpop.i32(i32 %898)
  %900 = trunc i32 %899 to i8
  %901 = and i8 %900, 1
  %902 = xor i8 %901, 1
  store i8 %902, i8* %21, align 1
  %903 = xor i64 %889, %891
  %904 = xor i64 %903, %892
  %905 = lshr i64 %904, 4
  %906 = trunc i64 %905 to i8
  %907 = and i8 %906, 1
  store i8 %907, i8* %26, align 1
  %908 = icmp eq i64 %892, 0
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %29, align 1
  %910 = lshr i64 %892, 63
  %911 = trunc i64 %910 to i8
  store i8 %911, i8* %32, align 1
  %912 = lshr i64 %891, 63
  %913 = xor i64 %910, %912
  %914 = xor i64 %910, %890
  %915 = add nuw nsw i64 %913, %914
  %916 = icmp eq i64 %915, 2
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %38, align 1
  %ECX.i = bitcast %union.anon* %59 to i32*
  %918 = add i64 %892, 60
  %919 = load i32, i32* %ECX.i, align 4
  %920 = add i64 %844, 46
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %918 to i32*
  store i32 %919, i32* %921, align 4
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_4704eb

block_.L_4704eb:                                  ; preds = %block_.L_4704bd, %block_47043b, %block_.L_4703d5
  %922 = phi i64 [ %597, %block_.L_4703d5 ], [ %.pre17, %block_.L_4704bd ], [ %705, %block_47043b ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.5, %block_.L_4703d5 ], [ %MEMORY.7, %block_.L_4704bd ], [ %MEMORY.5, %block_47043b ]
  %923 = load i64, i64* %6, align 8
  %924 = add i64 %923, 64
  store i64 %924, i64* %6, align 8
  %925 = icmp ugt i64 %923, -65
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %14, align 1
  %927 = trunc i64 %924 to i32
  %928 = and i32 %927, 255
  %929 = tail call i32 @llvm.ctpop.i32(i32 %928)
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  %932 = xor i8 %931, 1
  store i8 %932, i8* %21, align 1
  %933 = xor i64 %924, %923
  %934 = lshr i64 %933, 4
  %935 = trunc i64 %934 to i8
  %936 = and i8 %935, 1
  store i8 %936, i8* %26, align 1
  %937 = icmp eq i64 %924, 0
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %29, align 1
  %939 = lshr i64 %924, 63
  %940 = trunc i64 %939 to i8
  store i8 %940, i8* %32, align 1
  %941 = lshr i64 %923, 63
  %942 = xor i64 %939, %941
  %943 = add nuw nsw i64 %942, %939
  %944 = icmp eq i64 %943, 2
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %38, align 1
  %946 = add i64 %922, 5
  store i64 %946, i64* %3, align 8
  %947 = add i64 %923, 72
  %948 = inttoptr i64 %924 to i64*
  %949 = load i64, i64* %948, align 8
  store i64 %949, i64* %RBP.i, align 8
  store i64 %947, i64* %6, align 8
  %950 = add i64 %922, 6
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %947 to i64*
  %952 = load i64, i64* %951, align 8
  store i64 %952, i64* %3, align 8
  %953 = add i64 %923, 80
  store i64 %953, i64* %6, align 8
  ret %struct.Memory* %MEMORY.8
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
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
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
define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 76
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x40__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_je_.L_4703d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_jne_.L_4702eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x40___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 64
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 6
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_jne_.L_470303(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_470350(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x40__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_callq_.status_to_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580741___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580741_type* @G__0x580741 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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
define %struct.Memory* @routine_jge_.L_4703d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_47038e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_4703bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.is_same_dragon(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4703bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 76
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
define %struct.Memory* @routine_movl__ecx__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4703c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_470357(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4703d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 104
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_addq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x3c__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_je_.L_4704eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x3c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_jne_.L_470445(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47045d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4704bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.safety_to_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580768___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580768_type* @G__0x580768 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0fe0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 76
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x3c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -65
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
