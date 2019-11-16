; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0eec_type = type <{ [4 x i8] }>
%G_0xab0ef8_type = type <{ [8 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x57c8be_type = type <{ [8 x i8] }>
%G__0x57dd2e_type = type <{ [8 x i8] }>
%G__0x57e0a3_type = type <{ [8 x i8] }>
%G__0x57e106_type = type <{ [8 x i8] }>
%G__0x57e10c_type = type <{ [8 x i8] }>
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
@G_0xab0eec = local_unnamed_addr global %G_0xab0eec_type zeroinitializer
@G_0xab0ef8 = local_unnamed_addr global %G_0xab0ef8_type zeroinitializer
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G__0x57c8be = global %G__0x57c8be_type zeroinitializer
@G__0x57dd2e = global %G__0x57dd2e_type zeroinitializer
@G__0x57e0a3 = global %G__0x57e0a3_type zeroinitializer
@G__0x57e106 = global %G__0x57e106_type zeroinitializer
@G__0x57e10c = global %G__0x57e10c_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_444ee0.check_pattern_hard(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @get_next_move_from_list(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -168
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 160
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
  %RDI.i661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -24
  %40 = load i64, i64* %RDI.i661, align 8
  %41 = add i64 %10, 14
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i835 = bitcast %union.anon* %43 to i32*
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -20
  %46 = load i32, i32* %ESI.i835, align 4
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 3
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %49, align 4
  %RDX.i854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -32
  %52 = load i64, i64* %RDX.i854, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i865 = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -36
  %59 = load i32, i32* %ECX.i865, align 4
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -76
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 7
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i32*
  store i32 0, i32* %67, align 4
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %69, i64* %RDX.i854, align 8
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -88
  %72 = add i64 %68, 12
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to i64*
  store i64 %69, i64* %73, align 8
  %RCX.i1053 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %74 = load i64, i64* %3, align 8
  %75 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %RCX.i1053, align 8
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -92
  %79 = add i64 %74, 10
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  store i32 %75, i32* %80, align 4
  %81 = load i64, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -16
  %84 = add i64 %81, 27
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i64*
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %RDX.i854, align 8
  %87 = add i64 %86, 8
  %88 = add i64 %81, 30
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RCX.i1053, align 8
  %92 = add i64 %82, -40
  %93 = add i64 %81, 33
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %92 to i32*
  store i32 %90, i32* %94, align 4
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1036 = getelementptr inbounds %union.anon, %union.anon* %95, i64 0, i32 0
  %EAX.i1030 = bitcast %union.anon* %95 to i32*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %97 = bitcast [32 x %union.VectorReg]* %96 to i8*
  %98 = bitcast [32 x %union.VectorReg]* %96 to i32*
  %99 = getelementptr inbounds i8, i8* %97, i64 4
  %100 = bitcast i8* %99 to float*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %102 = bitcast i64* %101 to float*
  %103 = getelementptr inbounds i8, i8* %97, i64 12
  %104 = bitcast i8* %103 to float*
  %105 = bitcast [32 x %union.VectorReg]* %96 to <2 x float>*
  %106 = bitcast %union.anon* %95 to i64**
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %108 = bitcast %union.VectorReg* %107 to i8*
  %109 = bitcast %union.VectorReg* %107 to <2 x i32>*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %111 = bitcast i64* %110 to <2 x i32>*
  %112 = bitcast %union.VectorReg* %107 to float*
  %113 = getelementptr inbounds i8, i8* %108, i64 4
  %114 = bitcast i8* %113 to i32*
  %115 = bitcast i64* %110 to i32*
  %116 = getelementptr inbounds i8, i8* %108, i64 12
  %117 = bitcast i8* %116 to i32*
  %118 = bitcast %union.VectorReg* %107 to <2 x float>*
  %RSI.i603 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i573 = bitcast %union.anon* %120 to i32*
  %121 = getelementptr inbounds %union.anon, %union.anon* %120, i64 0, i32 0
  %R9.i557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_443787

block_.L_443787:                                  ; preds = %block_.L_443e3e, %entry
  %123 = phi i64 [ %.pre, %entry ], [ %2917, %block_.L_443e3e ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.23, %block_.L_443e3e ]
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -40
  %126 = add i64 %123, 3
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RAX.i1036, align 8
  %130 = add i64 %124, -16
  %131 = add i64 %123, 7
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %RCX.i1053, align 8
  %134 = add i64 %133, 4
  %135 = add i64 %123, 10
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = sub i32 %128, %137
  %139 = icmp ult i32 %128, %137
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %14, align 1
  %141 = and i32 %138, 255
  %142 = tail call i32 @llvm.ctpop.i32(i32 %141)
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  %145 = xor i8 %144, 1
  store i8 %145, i8* %21, align 1
  %146 = xor i32 %137, %128
  %147 = xor i32 %146, %138
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %26, align 1
  %151 = icmp eq i32 %138, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %29, align 1
  %153 = lshr i32 %138, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %32, align 1
  %155 = lshr i32 %128, 31
  %156 = lshr i32 %137, 31
  %157 = xor i32 %156, %155
  %158 = xor i32 %153, %155
  %159 = add nuw nsw i32 %158, %157
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %38, align 1
  %162 = icmp ne i8 %154, 0
  %163 = xor i1 %162, %160
  %.v143 = select i1 %163, i64 16, i64 1733
  %164 = add i64 %123, %.v143
  store i64 %164, i64* %3, align 8
  br i1 %163, label %block_443797, label %block_.L_443e4c.loopexit

block_443797:                                     ; preds = %block_.L_443787
  %165 = add i64 %164, 4
  store i64 %165, i64* %3, align 8
  %166 = load i64, i64* %132, align 8
  store i64 %166, i64* %RAX.i1036, align 8
  %167 = add i64 %166, 24
  %168 = add i64 %164, 8
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i64*
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %RAX.i1036, align 8
  %171 = add i64 %164, 12
  store i64 %171, i64* %3, align 8
  %172 = load i32, i32* %127, align 4
  %173 = sext i32 %172 to i64
  %174 = shl nsw i64 %173, 4
  store i64 %174, i64* %RCX.i1053, align 8
  %175 = add i64 %174, %170
  store i64 %175, i64* %RAX.i1036, align 8
  %176 = icmp ult i64 %175, %170
  %177 = icmp ult i64 %175, %174
  %178 = or i1 %176, %177
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %14, align 1
  %180 = trunc i64 %175 to i32
  %181 = and i32 %180, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181)
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %21, align 1
  %186 = xor i64 %174, %170
  %187 = xor i64 %186, %175
  %188 = lshr i64 %187, 4
  %189 = trunc i64 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %26, align 1
  %191 = icmp eq i64 %175, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %29, align 1
  %193 = lshr i64 %175, 63
  %194 = trunc i64 %193 to i8
  store i8 %194, i8* %32, align 1
  %195 = lshr i64 %170, 63
  %196 = lshr i64 %173, 59
  %197 = and i64 %196, 1
  %198 = xor i64 %193, %195
  %199 = xor i64 %193, %197
  %200 = add nuw nsw i64 %198, %199
  %201 = icmp eq i64 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %38, align 1
  %203 = add i64 %175, 8
  %204 = add i64 %164, 23
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %RAX.i1036, align 8
  %207 = add i64 %206, 124
  %208 = add i64 %164, 28
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %98, align 1
  store float 0.000000e+00, float* %100, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  %211 = add i64 %124, -96
  %212 = add i64 %164, 33
  store i64 %212, i64* %3, align 8
  %213 = load <2 x float>, <2 x float>* %105, align 1
  %214 = extractelement <2 x float> %213, i32 0
  %215 = inttoptr i64 %211 to float*
  store float %214, float* %215, align 4
  %216 = load i64, i64* %RBP.i, align 8
  %217 = add i64 %216, -16
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 4
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %217 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %RAX.i1036, align 8
  %222 = add i64 %221, 24
  %223 = add i64 %218, 8
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i64*
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %RAX.i1036, align 8
  %226 = add i64 %216, -40
  %227 = add i64 %218, 12
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i32*
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = shl nsw i64 %230, 4
  store i64 %231, i64* %RCX.i1053, align 8
  %232 = add i64 %231, %225
  store i64 %232, i64* %RAX.i1036, align 8
  %233 = icmp ult i64 %232, %225
  %234 = icmp ult i64 %232, %231
  %235 = or i1 %233, %234
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %14, align 1
  %237 = trunc i64 %232 to i32
  %238 = and i32 %237, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %21, align 1
  %243 = xor i64 %231, %225
  %244 = xor i64 %243, %232
  %245 = lshr i64 %244, 4
  %246 = trunc i64 %245 to i8
  %247 = and i8 %246, 1
  store i8 %247, i8* %26, align 1
  %248 = icmp eq i64 %232, 0
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %29, align 1
  %250 = lshr i64 %232, 63
  %251 = trunc i64 %250 to i8
  store i8 %251, i8* %32, align 1
  %252 = lshr i64 %225, 63
  %253 = lshr i64 %230, 59
  %254 = and i64 %253, 1
  %255 = xor i64 %250, %252
  %256 = xor i64 %250, %254
  %257 = add nuw nsw i64 %255, %256
  %258 = icmp eq i64 %257, 2
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %38, align 1
  %260 = add i64 %232, 8
  %261 = add i64 %218, 23
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i64*
  %263 = load i64, i64* %262, align 8
  store i64 %263, i64* %RAX.i1036, align 8
  %264 = add i64 %216, -104
  %265 = add i64 %218, 27
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i64*
  store i64 %263, i64* %266, align 8
  %267 = load i64, i64* %RBP.i, align 8
  %268 = add i64 %267, -16
  %269 = load i64, i64* %3, align 8
  %270 = add i64 %269, 4
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %268 to i64*
  %272 = load i64, i64* %271, align 8
  store i64 %272, i64* %RAX.i1036, align 8
  %273 = add i64 %272, 24
  %274 = add i64 %269, 8
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RAX.i1036, align 8
  %277 = add i64 %267, -40
  %278 = add i64 %269, 12
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = shl nsw i64 %281, 4
  store i64 %282, i64* %RCX.i1053, align 8
  %283 = add i64 %282, %276
  store i64 %283, i64* %RAX.i1036, align 8
  %284 = icmp ult i64 %283, %276
  %285 = icmp ult i64 %283, %282
  %286 = or i1 %284, %285
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %14, align 1
  %288 = trunc i64 %283 to i32
  %289 = and i32 %288, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %21, align 1
  %294 = xor i64 %282, %276
  %295 = xor i64 %294, %283
  %296 = lshr i64 %295, 4
  %297 = trunc i64 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %26, align 1
  %299 = icmp eq i64 %283, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %29, align 1
  %301 = lshr i64 %283, 63
  %302 = trunc i64 %301 to i8
  store i8 %302, i8* %32, align 1
  %303 = lshr i64 %276, 63
  %304 = lshr i64 %281, 59
  %305 = and i64 %304, 1
  %306 = xor i64 %301, %303
  %307 = xor i64 %301, %305
  %308 = add nuw nsw i64 %306, %307
  %309 = icmp eq i64 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %38, align 1
  %311 = inttoptr i64 %283 to i32*
  %312 = add i64 %269, 21
  store i64 %312, i64* %3, align 8
  %313 = load i32, i32* %311, align 4
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RDX.i854, align 8
  %315 = add i64 %267, -108
  %316 = add i64 %269, 24
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  store i32 %313, i32* %317, align 4
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -40
  %320 = load i64, i64* %3, align 8
  %321 = add i64 %320, 3
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RDX.i854, align 8
  %325 = add i64 %318, -16
  %326 = add i64 %320, 7
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i64*
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %RAX.i1036, align 8
  %329 = add i64 %328, 12
  %330 = add i64 %320, 10
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = sub i32 %323, %332
  %334 = icmp ult i32 %323, %332
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %14, align 1
  %336 = and i32 %333, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  %341 = xor i32 %332, %323
  %342 = xor i32 %341, %333
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %26, align 1
  %346 = icmp eq i32 %333, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %29, align 1
  %348 = lshr i32 %333, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %32, align 1
  %350 = lshr i32 %323, 31
  %351 = lshr i32 %332, 31
  %352 = xor i32 %351, %350
  %353 = xor i32 %348, %350
  %354 = add nuw nsw i32 %353, %352
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %38, align 1
  %357 = icmp ne i8 %349, 0
  %358 = xor i1 %357, %355
  %.v144 = select i1 %358, i64 428, i64 16
  %359 = add i64 %320, %.v144
  store i64 %359, i64* %3, align 8
  br i1 %358, label %block_.L_443997, label %block_4437fb

block_4437fb:                                     ; preds = %block_443797
  %360 = add i64 %359, 4
  store i64 %360, i64* %3, align 8
  %361 = load i64, i64* %327, align 8
  store i64 %361, i64* %RAX.i1036, align 8
  %362 = add i64 %361, 4
  %363 = add i64 %359, 7
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, -1
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RCX.i1053, align 8
  %368 = icmp eq i32 %365, 0
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %14, align 1
  %370 = and i32 %366, 255
  %371 = tail call i32 @llvm.ctpop.i32(i32 %370)
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  %374 = xor i8 %373, 1
  store i8 %374, i8* %21, align 1
  %375 = xor i32 %366, %365
  %376 = lshr i32 %375, 4
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %26, align 1
  %379 = icmp eq i32 %366, 0
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %29, align 1
  %381 = lshr i32 %366, 31
  %382 = trunc i32 %381 to i8
  store i8 %382, i8* %32, align 1
  %383 = lshr i32 %365, 31
  %384 = xor i32 %381, %383
  %385 = add nuw nsw i32 %384, %383
  %386 = icmp eq i32 %385, 2
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %38, align 1
  %388 = add i64 %318, -44
  %389 = add i64 %359, 13
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i32*
  store i32 %366, i32* %390, align 4
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_443808

block_.L_443808:                                  ; preds = %block_.L_443977, %block_4437fb
  %391 = phi i64 [ %.pre102, %block_4437fb ], [ %1148, %block_.L_443977 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4437fb ], [ %MEMORY.5, %block_.L_443977 ]
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -44
  %394 = add i64 %391, 3
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = zext i32 %396 to i64
  store i64 %397, i64* %RAX.i1036, align 8
  %398 = add i64 %392, -40
  %399 = add i64 %391, 6
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sub i32 %396, %401
  %403 = icmp ult i32 %396, %401
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %14, align 1
  %405 = and i32 %402, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %21, align 1
  %410 = xor i32 %401, %396
  %411 = xor i32 %410, %402
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %26, align 1
  %415 = icmp eq i32 %402, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %29, align 1
  %417 = lshr i32 %402, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %32, align 1
  %419 = lshr i32 %396, 31
  %420 = lshr i32 %401, 31
  %421 = xor i32 %420, %419
  %422 = xor i32 %417, %419
  %423 = add nuw nsw i32 %422, %421
  %424 = icmp eq i32 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %38, align 1
  %426 = icmp ne i8 %418, 0
  %427 = xor i1 %426, %424
  %428 = or i1 %415, %427
  %.v = select i1 %428, i64 386, i64 12
  %429 = add i64 %391, %.v
  %430 = add i64 %392, -16
  %431 = add i64 %429, 4
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %RAX.i1036, align 8
  br i1 %428, label %block_.L_44398a, label %block_443814

block_443814:                                     ; preds = %block_.L_443808
  %434 = add i64 %433, 24
  %435 = add i64 %429, 8
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i64*
  %437 = load i64, i64* %436, align 8
  store i64 %437, i64* %RAX.i1036, align 8
  %438 = add i64 %429, 12
  store i64 %438, i64* %3, align 8
  %439 = load i32, i32* %395, align 4
  %440 = sext i32 %439 to i64
  %441 = shl nsw i64 %440, 4
  store i64 %441, i64* %RCX.i1053, align 8
  %442 = add i64 %441, %437
  store i64 %442, i64* %RAX.i1036, align 8
  %443 = icmp ult i64 %442, %437
  %444 = icmp ult i64 %442, %441
  %445 = or i1 %443, %444
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %14, align 1
  %447 = trunc i64 %442 to i32
  %448 = and i32 %447, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %21, align 1
  %453 = xor i64 %441, %437
  %454 = xor i64 %453, %442
  %455 = lshr i64 %454, 4
  %456 = trunc i64 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %26, align 1
  %458 = icmp eq i64 %442, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %29, align 1
  %460 = lshr i64 %442, 63
  %461 = trunc i64 %460 to i8
  store i8 %461, i8* %32, align 1
  %462 = lshr i64 %437, 63
  %463 = lshr i64 %440, 59
  %464 = and i64 %463, 1
  %465 = xor i64 %460, %462
  %466 = xor i64 %460, %464
  %467 = add nuw nsw i64 %465, %466
  %468 = icmp eq i64 %467, 2
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %38, align 1
  %470 = add i64 %442, 8
  %471 = add i64 %429, 23
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i64*
  %473 = load i64, i64* %472, align 8
  store i64 %473, i64* %RAX.i1036, align 8
  %474 = add i64 %473, 124
  %475 = add i64 %429, 28
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  store i32 %477, i32* %98, align 1
  store float 0.000000e+00, float* %100, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  %478 = add i64 %392, -112
  %479 = add i64 %429, 33
  store i64 %479, i64* %3, align 8
  %480 = load <2 x float>, <2 x float>* %105, align 1
  %481 = extractelement <2 x float> %480, i32 0
  %482 = inttoptr i64 %478 to float*
  store float %481, float* %482, align 4
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -120
  %485 = load i64, i64* %3, align 8
  %486 = add i64 %485, 8
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %484 to i64*
  store i64 0, i64* %487, align 8
  %488 = load i64, i64* %RBP.i, align 8
  %489 = add i64 %488, -124
  %490 = load i64, i64* %3, align 8
  %491 = add i64 %490, 7
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %489 to i32*
  store i32 0, i32* %492, align 4
  %493 = load i64, i64* %RBP.i, align 8
  %494 = add i64 %493, -112
  %495 = load i64, i64* %3, align 8
  %496 = add i64 %495, 5
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %494 to i32*
  %498 = load i32, i32* %497, align 4
  store i32 %498, i32* %98, align 1
  store float 0.000000e+00, float* %100, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  %499 = add i64 %493, -96
  %500 = add i64 %495, 9
  store i64 %500, i64* %3, align 8
  %501 = load <2 x float>, <2 x float>* %105, align 1
  %502 = extractelement <2 x float> %501, i32 0
  %503 = inttoptr i64 %499 to float*
  %504 = load float, float* %503, align 4
  %505 = fcmp uno float %502, %504
  br i1 %505, label %506, label %516

; <label>:506:                                    ; preds = %block_443814
  %507 = fadd float %502, %504
  %508 = bitcast float %507 to i32
  %509 = and i32 %508, 2143289344
  %510 = icmp eq i32 %509, 2139095040
  %511 = and i32 %508, 4194303
  %512 = icmp ne i32 %511, 0
  %513 = and i1 %510, %512
  br i1 %513, label %514, label %522

; <label>:514:                                    ; preds = %506
  %515 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %500, %struct.Memory* %MEMORY.1)
  %.pre103 = load i64, i64* %3, align 8
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit911

; <label>:516:                                    ; preds = %block_443814
  %517 = fcmp ogt float %502, %504
  br i1 %517, label %522, label %518

; <label>:518:                                    ; preds = %516
  %519 = fcmp olt float %502, %504
  br i1 %519, label %522, label %520

; <label>:520:                                    ; preds = %518
  %521 = fcmp oeq float %502, %504
  br i1 %521, label %522, label %526

; <label>:522:                                    ; preds = %520, %518, %516, %506
  %523 = phi i8 [ 0, %516 ], [ 0, %518 ], [ 1, %520 ], [ 1, %506 ]
  %524 = phi i8 [ 0, %516 ], [ 0, %518 ], [ 0, %520 ], [ 1, %506 ]
  %525 = phi i8 [ 0, %516 ], [ 1, %518 ], [ 0, %520 ], [ 1, %506 ]
  store i8 %523, i8* %29, align 1
  store i8 %524, i8* %21, align 1
  store i8 %525, i8* %14, align 1
  br label %526

; <label>:526:                                    ; preds = %522, %520
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit911

routine_ucomiss_MINUS0x60__rbp____xmm0.exit911:   ; preds = %526, %514
  %527 = phi i64 [ %.pre103, %514 ], [ %500, %526 ]
  %528 = phi %struct.Memory* [ %515, %514 ], [ %MEMORY.1, %526 ]
  %529 = load i8, i8* %14, align 1
  %530 = icmp ne i8 %529, 0
  %.v193 = select i1 %530, i64 57, i64 6
  %531 = add i64 %527, %.v193
  store i64 %531, i64* %3, align 8
  %cmpBr_44384d = icmp eq i8 %529, 1
  br i1 %cmpBr_44384d, label %block_.L_443886, label %block_443853

block_443853:                                     ; preds = %routine_ucomiss_MINUS0x60__rbp____xmm0.exit911
  %532 = load i64, i64* %RBP.i, align 8
  %533 = add i64 %532, -16
  %534 = add i64 %531, 4
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i64*
  %536 = load i64, i64* %535, align 8
  store i64 %536, i64* %RAX.i1036, align 8
  %537 = add i64 %536, 24
  %538 = add i64 %531, 8
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %540, i64* %RAX.i1036, align 8
  %541 = add i64 %532, -44
  %542 = add i64 %531, 12
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = sext i32 %544 to i64
  %546 = shl nsw i64 %545, 4
  store i64 %546, i64* %RCX.i1053, align 8
  %547 = add i64 %546, %540
  store i64 %547, i64* %RAX.i1036, align 8
  %548 = icmp ult i64 %547, %540
  %549 = icmp ult i64 %547, %546
  %550 = or i1 %548, %549
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %14, align 1
  %552 = trunc i64 %547 to i32
  %553 = and i32 %552, 255
  %554 = tail call i32 @llvm.ctpop.i32(i32 %553)
  %555 = trunc i32 %554 to i8
  %556 = and i8 %555, 1
  %557 = xor i8 %556, 1
  store i8 %557, i8* %21, align 1
  %558 = xor i64 %546, %540
  %559 = xor i64 %558, %547
  %560 = lshr i64 %559, 4
  %561 = trunc i64 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %26, align 1
  %563 = icmp eq i64 %547, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %29, align 1
  %565 = lshr i64 %547, 63
  %566 = trunc i64 %565 to i8
  store i8 %566, i8* %32, align 1
  %567 = lshr i64 %540, 63
  %568 = lshr i64 %545, 59
  %569 = and i64 %568, 1
  %570 = xor i64 %565, %567
  %571 = xor i64 %565, %569
  %572 = add nuw nsw i64 %570, %571
  %573 = icmp eq i64 %572, 2
  %574 = zext i1 %573 to i8
  store i8 %574, i8* %38, align 1
  %575 = add i64 %547, 8
  %576 = add i64 %531, 23
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %575 to i64*
  %578 = load i64, i64* %577, align 8
  store i64 %578, i64* %RAX.i1036, align 8
  %579 = add i64 %532, -120
  %580 = add i64 %531, 27
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i64*
  store i64 %578, i64* %581, align 8
  %582 = load i64, i64* %RBP.i, align 8
  %583 = add i64 %582, -16
  %584 = load i64, i64* %3, align 8
  %585 = add i64 %584, 4
  store i64 %585, i64* %3, align 8
  %586 = inttoptr i64 %583 to i64*
  %587 = load i64, i64* %586, align 8
  store i64 %587, i64* %RAX.i1036, align 8
  %588 = add i64 %587, 24
  %589 = add i64 %584, 8
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %588 to i64*
  %591 = load i64, i64* %590, align 8
  store i64 %591, i64* %RAX.i1036, align 8
  %592 = add i64 %582, -44
  %593 = add i64 %584, 12
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = sext i32 %595 to i64
  %597 = shl nsw i64 %596, 4
  store i64 %597, i64* %RCX.i1053, align 8
  %598 = add i64 %597, %591
  store i64 %598, i64* %RAX.i1036, align 8
  %599 = icmp ult i64 %598, %591
  %600 = icmp ult i64 %598, %597
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %14, align 1
  %603 = trunc i64 %598 to i32
  %604 = and i32 %603, 255
  %605 = tail call i32 @llvm.ctpop.i32(i32 %604)
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  store i8 %608, i8* %21, align 1
  %609 = xor i64 %597, %591
  %610 = xor i64 %609, %598
  %611 = lshr i64 %610, 4
  %612 = trunc i64 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %26, align 1
  %614 = icmp eq i64 %598, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %29, align 1
  %616 = lshr i64 %598, 63
  %617 = trunc i64 %616 to i8
  store i8 %617, i8* %32, align 1
  %618 = lshr i64 %591, 63
  %619 = lshr i64 %596, 59
  %620 = and i64 %619, 1
  %621 = xor i64 %616, %618
  %622 = xor i64 %616, %620
  %623 = add nuw nsw i64 %621, %622
  %624 = icmp eq i64 %623, 2
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %38, align 1
  %626 = inttoptr i64 %598 to i32*
  %627 = add i64 %584, 21
  store i64 %627, i64* %3, align 8
  %628 = load i32, i32* %626, align 4
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RDX.i854, align 8
  %630 = add i64 %582, -124
  %631 = add i64 %584, 24
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i32*
  store i32 %628, i32* %632, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_443886

block_.L_443886:                                  ; preds = %block_443853, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit911
  %633 = phi i64 [ %.pre104, %block_443853 ], [ %531, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit911 ]
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -112
  %636 = add i64 %633, 5
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  store i32 %638, i32* %98, align 1
  store float 0.000000e+00, float* %100, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  %639 = add i64 %634, -96
  %640 = add i64 %633, 9
  store i64 %640, i64* %3, align 8
  %641 = load <2 x float>, <2 x float>* %105, align 1
  %642 = extractelement <2 x float> %641, i32 0
  %643 = inttoptr i64 %639 to float*
  %644 = load float, float* %643, align 4
  %645 = fcmp uno float %642, %644
  br i1 %645, label %646, label %656

; <label>:646:                                    ; preds = %block_.L_443886
  %647 = fadd float %642, %644
  %648 = bitcast float %647 to i32
  %649 = and i32 %648, 2143289344
  %650 = icmp eq i32 %649, 2139095040
  %651 = and i32 %648, 4194303
  %652 = icmp ne i32 %651, 0
  %653 = and i1 %650, %652
  br i1 %653, label %654, label %662

; <label>:654:                                    ; preds = %646
  %655 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %640, %struct.Memory* %528)
  %.pre105 = load i64, i64* %3, align 8
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863

; <label>:656:                                    ; preds = %block_.L_443886
  %657 = fcmp ogt float %642, %644
  br i1 %657, label %662, label %658

; <label>:658:                                    ; preds = %656
  %659 = fcmp olt float %642, %644
  br i1 %659, label %662, label %660

; <label>:660:                                    ; preds = %658
  %661 = fcmp oeq float %642, %644
  br i1 %661, label %662, label %666

; <label>:662:                                    ; preds = %660, %658, %656, %646
  %663 = phi i8 [ 0, %656 ], [ 0, %658 ], [ 1, %660 ], [ 1, %646 ]
  %664 = phi i8 [ 0, %656 ], [ 0, %658 ], [ 0, %660 ], [ 1, %646 ]
  %665 = phi i8 [ 0, %656 ], [ 1, %658 ], [ 0, %660 ], [ 1, %646 ]
  store i8 %663, i8* %29, align 1
  store i8 %664, i8* %21, align 1
  store i8 %665, i8* %14, align 1
  br label %666

; <label>:666:                                    ; preds = %662, %660
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863

routine_ucomiss_MINUS0x60__rbp____xmm0.exit863:   ; preds = %666, %654
  %667 = phi i64 [ %.pre105, %654 ], [ %640, %666 ]
  %668 = phi %struct.Memory* [ %655, %654 ], [ %528, %666 ]
  %669 = add i64 %667, 88
  %670 = add i64 %667, 6
  %671 = load i8, i8* %14, align 1
  %672 = load i8, i8* %29, align 1
  %673 = or i8 %672, %671
  %674 = icmp eq i8 %673, 0
  %675 = select i1 %674, i64 %669, i64 %670
  store i64 %675, i64* %3, align 8
  %.pre110 = load i64, i64* %RBP.i, align 8
  br i1 %674, label %block_.L_4438e7, label %block_443895

block_443895:                                     ; preds = %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863
  %676 = add i64 %.pre110, -112
  %677 = add i64 %675, 5
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  store i32 %679, i32* %98, align 1
  store float 0.000000e+00, float* %100, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  %680 = add i64 %.pre110, -96
  %681 = add i64 %675, 9
  store i64 %681, i64* %3, align 8
  %682 = load <2 x float>, <2 x float>* %105, align 1
  %683 = extractelement <2 x float> %682, i32 0
  %684 = inttoptr i64 %680 to float*
  %685 = load float, float* %684, align 4
  %686 = fcmp uno float %683, %685
  br i1 %686, label %687, label %697

; <label>:687:                                    ; preds = %block_443895
  %688 = fadd float %683, %685
  %689 = bitcast float %688 to i32
  %690 = and i32 %689, 2143289344
  %691 = icmp eq i32 %690, 2139095040
  %692 = and i32 %689, 4194303
  %693 = icmp ne i32 %692, 0
  %694 = and i1 %691, %693
  br i1 %694, label %695, label %703

; <label>:695:                                    ; preds = %687
  %696 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %681, %struct.Memory* %668)
  %.pre106 = load i64, i64* %3, align 8
  %.pre107 = load i8, i8* %29, align 1
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit852

; <label>:697:                                    ; preds = %block_443895
  %698 = fcmp ogt float %683, %685
  br i1 %698, label %703, label %699

; <label>:699:                                    ; preds = %697
  %700 = fcmp olt float %683, %685
  br i1 %700, label %703, label %701

; <label>:701:                                    ; preds = %699
  %702 = fcmp oeq float %683, %685
  br i1 %702, label %703, label %707

; <label>:703:                                    ; preds = %701, %699, %697, %687
  %704 = phi i8 [ 0, %697 ], [ 0, %699 ], [ 1, %701 ], [ 1, %687 ]
  %705 = phi i8 [ 0, %697 ], [ 0, %699 ], [ 0, %701 ], [ 1, %687 ]
  %706 = phi i8 [ 0, %697 ], [ 1, %699 ], [ 0, %701 ], [ 1, %687 ]
  store i8 %704, i8* %29, align 1
  store i8 %705, i8* %21, align 1
  store i8 %706, i8* %14, align 1
  br label %707

; <label>:707:                                    ; preds = %703, %701
  %708 = phi i8 [ %704, %703 ], [ %672, %701 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit852

routine_ucomiss_MINUS0x60__rbp____xmm0.exit852:   ; preds = %707, %695
  %709 = phi i8 [ %.pre107, %695 ], [ %708, %707 ]
  %710 = phi i64 [ %.pre106, %695 ], [ %681, %707 ]
  %711 = phi %struct.Memory* [ %696, %695 ], [ %668, %707 ]
  %712 = icmp eq i8 %709, 0
  %.v145 = select i1 %712, i64 26, i64 6
  %713 = add i64 %710, %.v145
  store i64 %713, i64* %3, align 8
  br i1 %712, label %block_.L_4438b8, label %block_4438a4

block_4438a4:                                     ; preds = %routine_ucomiss_MINUS0x60__rbp____xmm0.exit852
  %714 = load i8, i8* %21, align 1
  %715 = icmp ne i8 %714, 0
  %.v194 = select i1 %715, i64 20, i64 6
  %716 = add i64 %713, %.v194
  store i64 %716, i64* %3, align 8
  %cmpBr_4438a4 = icmp eq i8 %714, 1
  br i1 %cmpBr_4438a4, label %block_.L_4438b8, label %block_4438aa

block_4438aa:                                     ; preds = %block_4438a4
  %717 = load i64, i64* %RBP.i, align 8
  %718 = add i64 %717, -120
  %719 = add i64 %716, 4
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i64*
  %721 = load i64, i64* %720, align 8
  store i64 %721, i64* %RAX.i1036, align 8
  %722 = add i64 %717, -104
  %723 = add i64 %716, 8
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i64*
  %725 = load i64, i64* %724, align 8
  %726 = sub i64 %721, %725
  %727 = icmp ult i64 %721, %725
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %14, align 1
  %729 = trunc i64 %726 to i32
  %730 = and i32 %729, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %21, align 1
  %735 = xor i64 %725, %721
  %736 = xor i64 %735, %726
  %737 = lshr i64 %736, 4
  %738 = trunc i64 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %26, align 1
  %740 = icmp eq i64 %726, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %29, align 1
  %742 = lshr i64 %726, 63
  %743 = trunc i64 %742 to i8
  store i8 %743, i8* %32, align 1
  %744 = lshr i64 %721, 63
  %745 = lshr i64 %725, 63
  %746 = xor i64 %745, %744
  %747 = xor i64 %742, %744
  %748 = add nuw nsw i64 %747, %746
  %749 = icmp eq i64 %748, 2
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %38, align 1
  %.v146 = select i1 %727, i64 61, i64 14
  %751 = add i64 %716, %.v146
  store i64 %751, i64* %3, align 8
  br i1 %727, label %block_.L_4438e7, label %block_.L_4438b8

block_.L_4438b8:                                  ; preds = %block_4438aa, %block_4438a4, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit852
  %752 = phi i8 [ %741, %block_4438aa ], [ %709, %block_4438a4 ], [ 0, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit852 ]
  %753 = phi i64 [ %751, %block_4438aa ], [ %716, %block_4438a4 ], [ %713, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit852 ]
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -112
  %756 = add i64 %753, 5
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  store i32 %758, i32* %98, align 1
  store float 0.000000e+00, float* %100, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  %759 = add i64 %754, -96
  %760 = add i64 %753, 9
  store i64 %760, i64* %3, align 8
  %761 = load <2 x float>, <2 x float>* %105, align 1
  %762 = extractelement <2 x float> %761, i32 0
  %763 = inttoptr i64 %759 to float*
  %764 = load float, float* %763, align 4
  %765 = fcmp uno float %762, %764
  br i1 %765, label %766, label %776

; <label>:766:                                    ; preds = %block_.L_4438b8
  %767 = fadd float %762, %764
  %768 = bitcast float %767 to i32
  %769 = and i32 %768, 2143289344
  %770 = icmp eq i32 %769, 2139095040
  %771 = and i32 %768, 4194303
  %772 = icmp ne i32 %771, 0
  %773 = and i1 %770, %772
  br i1 %773, label %774, label %782

; <label>:774:                                    ; preds = %766
  %775 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %760, %struct.Memory* %711)
  %.pre108 = load i64, i64* %3, align 8
  %.pre109 = load i8, i8* %29, align 1
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit

; <label>:776:                                    ; preds = %block_.L_4438b8
  %777 = fcmp ogt float %762, %764
  br i1 %777, label %782, label %778

; <label>:778:                                    ; preds = %776
  %779 = fcmp olt float %762, %764
  br i1 %779, label %782, label %780

; <label>:780:                                    ; preds = %778
  %781 = fcmp oeq float %762, %764
  br i1 %781, label %782, label %786

; <label>:782:                                    ; preds = %780, %778, %776, %766
  %783 = phi i8 [ 0, %776 ], [ 0, %778 ], [ 1, %780 ], [ 1, %766 ]
  %784 = phi i8 [ 0, %776 ], [ 0, %778 ], [ 0, %780 ], [ 1, %766 ]
  %785 = phi i8 [ 0, %776 ], [ 1, %778 ], [ 0, %780 ], [ 1, %766 ]
  store i8 %783, i8* %29, align 1
  store i8 %784, i8* %21, align 1
  store i8 %785, i8* %14, align 1
  br label %786

; <label>:786:                                    ; preds = %782, %780
  %787 = phi i8 [ %783, %782 ], [ %752, %780 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss_MINUS0x60__rbp____xmm0.exit

routine_ucomiss_MINUS0x60__rbp____xmm0.exit:      ; preds = %786, %774
  %788 = phi i8 [ %.pre109, %774 ], [ %787, %786 ]
  %789 = phi i64 [ %.pre108, %774 ], [ %760, %786 ]
  %790 = phi %struct.Memory* [ %775, %774 ], [ %711, %786 ]
  %791 = icmp eq i8 %788, 0
  %.v147 = select i1 %791, i64 182, i64 6
  %792 = add i64 %789, %.v147
  store i64 %792, i64* %3, align 8
  br i1 %791, label %block_.L_443977, label %block_4438c7

block_4438c7:                                     ; preds = %routine_ucomiss_MINUS0x60__rbp____xmm0.exit
  %793 = load i8, i8* %21, align 1
  %794 = icmp ne i8 %793, 0
  %.v195 = select i1 %794, i64 176, i64 6
  %795 = add i64 %792, %.v195
  store i64 %795, i64* %3, align 8
  %cmpBr_4438c7 = icmp eq i8 %793, 1
  br i1 %cmpBr_4438c7, label %block_.L_443977, label %block_4438cd

block_4438cd:                                     ; preds = %block_4438c7
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -120
  %798 = add i64 %795, 4
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i64*
  %800 = load i64, i64* %799, align 8
  store i64 %800, i64* %RAX.i1036, align 8
  %801 = add i64 %796, -104
  %802 = add i64 %795, 8
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i64*
  %804 = load i64, i64* %803, align 8
  %805 = sub i64 %800, %804
  %806 = icmp ult i64 %800, %804
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %14, align 1
  %808 = trunc i64 %805 to i32
  %809 = and i32 %808, 255
  %810 = tail call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  store i8 %813, i8* %21, align 1
  %814 = xor i64 %804, %800
  %815 = xor i64 %814, %805
  %816 = lshr i64 %815, 4
  %817 = trunc i64 %816 to i8
  %818 = and i8 %817, 1
  store i8 %818, i8* %26, align 1
  %819 = icmp eq i64 %805, 0
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %29, align 1
  %821 = lshr i64 %805, 63
  %822 = trunc i64 %821 to i8
  store i8 %822, i8* %32, align 1
  %823 = lshr i64 %800, 63
  %824 = lshr i64 %804, 63
  %825 = xor i64 %824, %823
  %826 = xor i64 %821, %823
  %827 = add nuw nsw i64 %826, %825
  %828 = icmp eq i64 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %38, align 1
  %.v148 = select i1 %819, i64 14, i64 170
  %830 = add i64 %795, %.v148
  store i64 %830, i64* %3, align 8
  br i1 %819, label %block_4438db, label %block_.L_443977

block_4438db:                                     ; preds = %block_4438cd
  %831 = add i64 %796, -124
  %832 = add i64 %830, 3
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RAX.i1036, align 8
  %836 = add i64 %796, -108
  %837 = add i64 %830, 6
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = sub i32 %834, %839
  %841 = icmp ult i32 %834, %839
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %14, align 1
  %843 = and i32 %840, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %21, align 1
  %848 = xor i32 %839, %834
  %849 = xor i32 %848, %840
  %850 = lshr i32 %849, 4
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  store i8 %852, i8* %26, align 1
  %853 = icmp eq i32 %840, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %29, align 1
  %855 = lshr i32 %840, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %32, align 1
  %857 = lshr i32 %834, 31
  %858 = lshr i32 %839, 31
  %859 = xor i32 %858, %857
  %860 = xor i32 %855, %857
  %861 = add nuw nsw i32 %860, %859
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %38, align 1
  %864 = icmp ne i8 %856, 0
  %865 = xor i1 %864, %862
  %.v149 = select i1 %865, i64 12, i64 156
  %866 = add i64 %830, %.v149
  store i64 %866, i64* %3, align 8
  br i1 %865, label %block_.L_4438e7, label %block_.L_443977

block_.L_4438e7:                                  ; preds = %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863, %block_4438db, %block_4438aa
  %867 = phi i64 [ %866, %block_4438db ], [ %751, %block_4438aa ], [ %669, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863 ]
  %868 = phi i64 [ %796, %block_4438db ], [ %717, %block_4438aa ], [ %.pre110, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863 ]
  %MEMORY.4 = phi %struct.Memory* [ %790, %block_4438db ], [ %711, %block_4438aa ], [ %668, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit863 ]
  %869 = add i64 %868, -16
  %870 = add i64 %867, 4
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i64*
  %872 = load i64, i64* %871, align 8
  store i64 %872, i64* %RAX.i1036, align 8
  %873 = add i64 %872, 24
  %874 = add i64 %867, 8
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i64*
  %876 = load i64, i64* %875, align 8
  store i64 %876, i64* %RAX.i1036, align 8
  %877 = add i64 %868, -44
  %878 = add i64 %867, 12
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = sext i32 %880 to i64
  %882 = shl nsw i64 %881, 4
  store i64 %882, i64* %RCX.i1053, align 8
  %883 = add i64 %882, %876
  store i64 %883, i64* %RAX.i1036, align 8
  %884 = icmp ult i64 %883, %876
  %885 = icmp ult i64 %883, %882
  %886 = or i1 %884, %885
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %14, align 1
  %888 = trunc i64 %883 to i32
  %889 = and i32 %888, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889)
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %21, align 1
  %894 = xor i64 %882, %876
  %895 = xor i64 %894, %883
  %896 = lshr i64 %895, 4
  %897 = trunc i64 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %26, align 1
  %899 = icmp eq i64 %883, 0
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %29, align 1
  %901 = lshr i64 %883, 63
  %902 = trunc i64 %901 to i8
  store i8 %902, i8* %32, align 1
  %903 = lshr i64 %876, 63
  %904 = lshr i64 %881, 59
  %905 = and i64 %904, 1
  %906 = xor i64 %901, %903
  %907 = xor i64 %901, %905
  %908 = add nuw nsw i64 %906, %907
  %909 = icmp eq i64 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %38, align 1
  %911 = inttoptr i64 %883 to i64*
  %912 = add i64 %867, 22
  store i64 %912, i64* %3, align 8
  %913 = load i64, i64* %911, align 8
  store i64 %913, i64* %RCX.i1053, align 8
  %914 = add i64 %868, -72
  %915 = add i64 %867, 26
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i64*
  store i64 %913, i64* %916, align 8
  %917 = load i64, i64* %RAX.i1036, align 8
  %918 = add i64 %917, 8
  %919 = load i64, i64* %3, align 8
  %920 = add i64 %919, 4
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %918 to i64*
  %922 = load i64, i64* %921, align 8
  store i64 %922, i64* %RAX.i1036, align 8
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -64
  %925 = add i64 %919, 8
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i64*
  store i64 %922, i64* %926, align 8
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -16
  %929 = load i64, i64* %3, align 8
  %930 = add i64 %929, 4
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %928 to i64*
  %932 = load i64, i64* %931, align 8
  store i64 %932, i64* %RAX.i1036, align 8
  %933 = add i64 %932, 24
  %934 = add i64 %929, 8
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i64*
  %936 = load i64, i64* %935, align 8
  store i64 %936, i64* %RAX.i1036, align 8
  %937 = add i64 %927, -44
  %938 = add i64 %929, 12
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = sext i32 %940 to i64
  %942 = shl nsw i64 %941, 4
  store i64 %942, i64* %RCX.i1053, align 8
  %943 = add i64 %942, %936
  store i64 %943, i64* %RAX.i1036, align 8
  %944 = icmp ult i64 %943, %936
  %945 = icmp ult i64 %943, %942
  %946 = or i1 %944, %945
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %14, align 1
  %948 = trunc i64 %943 to i32
  %949 = and i32 %948, 255
  %950 = tail call i32 @llvm.ctpop.i32(i32 %949)
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  store i8 %953, i8* %21, align 1
  %954 = xor i64 %942, %936
  %955 = xor i64 %954, %943
  %956 = lshr i64 %955, 4
  %957 = trunc i64 %956 to i8
  %958 = and i8 %957, 1
  store i8 %958, i8* %26, align 1
  %959 = icmp eq i64 %943, 0
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %29, align 1
  %961 = lshr i64 %943, 63
  %962 = trunc i64 %961 to i8
  store i8 %962, i8* %32, align 1
  %963 = lshr i64 %936, 63
  %964 = lshr i64 %941, 59
  %965 = and i64 %964, 1
  %966 = xor i64 %961, %963
  %967 = xor i64 %961, %965
  %968 = add nuw nsw i64 %966, %967
  %969 = icmp eq i64 %968, 2
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %38, align 1
  %971 = add i64 %929, 23
  store i64 %971, i64* %3, align 8
  %972 = load i64, i64* %931, align 8
  store i64 %972, i64* %RCX.i1053, align 8
  %973 = add i64 %972, 24
  %974 = add i64 %929, 27
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i64*
  %976 = load i64, i64* %975, align 8
  store i64 %976, i64* %RCX.i1053, align 8
  %977 = add i64 %927, -40
  %978 = add i64 %929, 31
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = sext i32 %980 to i64
  %982 = shl nsw i64 %981, 4
  store i64 %982, i64* %RDX.i854, align 8
  %983 = add i64 %982, %976
  store i64 %983, i64* %RCX.i1053, align 8
  %984 = icmp ult i64 %983, %976
  %985 = icmp ult i64 %983, %982
  %986 = or i1 %984, %985
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %14, align 1
  %988 = trunc i64 %983 to i32
  %989 = and i32 %988, 255
  %990 = tail call i32 @llvm.ctpop.i32(i32 %989)
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  %993 = xor i8 %992, 1
  store i8 %993, i8* %21, align 1
  %994 = xor i64 %982, %976
  %995 = xor i64 %994, %983
  %996 = lshr i64 %995, 4
  %997 = trunc i64 %996 to i8
  %998 = and i8 %997, 1
  store i8 %998, i8* %26, align 1
  %999 = icmp eq i64 %983, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %29, align 1
  %1001 = lshr i64 %983, 63
  %1002 = trunc i64 %1001 to i8
  store i8 %1002, i8* %32, align 1
  %1003 = lshr i64 %976, 63
  %1004 = lshr i64 %981, 59
  %1005 = and i64 %1004, 1
  %1006 = xor i64 %1001, %1003
  %1007 = xor i64 %1001, %1005
  %1008 = add nuw nsw i64 %1006, %1007
  %1009 = icmp eq i64 %1008, 2
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %38, align 1
  %1011 = inttoptr i64 %983 to i64*
  %1012 = add i64 %929, 41
  store i64 %1012, i64* %3, align 8
  %1013 = load i64, i64* %1011, align 8
  store i64 %1013, i64* %RDX.i854, align 8
  %1014 = load i64*, i64** %106, align 8
  %1015 = add i64 %929, 44
  store i64 %1015, i64* %3, align 8
  store i64 %1013, i64* %1014, align 8
  %1016 = load i64, i64* %RCX.i1053, align 8
  %1017 = add i64 %1016, 8
  %1018 = load i64, i64* %3, align 8
  %1019 = add i64 %1018, 4
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1017 to i64*
  %1021 = load i64, i64* %1020, align 8
  store i64 %1021, i64* %RCX.i1053, align 8
  %1022 = load i64, i64* %RAX.i1036, align 8
  %1023 = add i64 %1022, 8
  %1024 = add i64 %1018, 8
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i64*
  store i64 %1021, i64* %1025, align 8
  %1026 = load i64, i64* %RBP.i, align 8
  %1027 = add i64 %1026, -16
  %1028 = load i64, i64* %3, align 8
  %1029 = add i64 %1028, 4
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1027 to i64*
  %1031 = load i64, i64* %1030, align 8
  store i64 %1031, i64* %RAX.i1036, align 8
  %1032 = add i64 %1031, 24
  %1033 = add i64 %1028, 8
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i64*
  %1035 = load i64, i64* %1034, align 8
  store i64 %1035, i64* %RAX.i1036, align 8
  %1036 = add i64 %1026, -40
  %1037 = add i64 %1028, 12
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = sext i32 %1039 to i64
  %1041 = shl nsw i64 %1040, 4
  store i64 %1041, i64* %RCX.i1053, align 8
  %1042 = add i64 %1041, %1035
  store i64 %1042, i64* %RAX.i1036, align 8
  %1043 = icmp ult i64 %1042, %1035
  %1044 = icmp ult i64 %1042, %1041
  %1045 = or i1 %1043, %1044
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %14, align 1
  %1047 = trunc i64 %1042 to i32
  %1048 = and i32 %1047, 255
  %1049 = tail call i32 @llvm.ctpop.i32(i32 %1048)
  %1050 = trunc i32 %1049 to i8
  %1051 = and i8 %1050, 1
  %1052 = xor i8 %1051, 1
  store i8 %1052, i8* %21, align 1
  %1053 = xor i64 %1041, %1035
  %1054 = xor i64 %1053, %1042
  %1055 = lshr i64 %1054, 4
  %1056 = trunc i64 %1055 to i8
  %1057 = and i8 %1056, 1
  store i8 %1057, i8* %26, align 1
  %1058 = icmp eq i64 %1042, 0
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %29, align 1
  %1060 = lshr i64 %1042, 63
  %1061 = trunc i64 %1060 to i8
  store i8 %1061, i8* %32, align 1
  %1062 = lshr i64 %1035, 63
  %1063 = lshr i64 %1040, 59
  %1064 = and i64 %1063, 1
  %1065 = xor i64 %1060, %1062
  %1066 = xor i64 %1060, %1064
  %1067 = add nuw nsw i64 %1065, %1066
  %1068 = icmp eq i64 %1067, 2
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %38, align 1
  %1070 = add i64 %1026, -72
  %1071 = add i64 %1028, 23
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i64*
  %1073 = load i64, i64* %1072, align 8
  store i64 %1073, i64* %RCX.i1053, align 8
  %1074 = inttoptr i64 %1042 to i64*
  %1075 = add i64 %1028, 26
  store i64 %1075, i64* %3, align 8
  store i64 %1073, i64* %1074, align 8
  %1076 = load i64, i64* %RBP.i, align 8
  %1077 = add i64 %1076, -64
  %1078 = load i64, i64* %3, align 8
  %1079 = add i64 %1078, 4
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1077 to i64*
  %1081 = load i64, i64* %1080, align 8
  store i64 %1081, i64* %RCX.i1053, align 8
  %1082 = load i64, i64* %RAX.i1036, align 8
  %1083 = add i64 %1082, 8
  %1084 = add i64 %1078, 8
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i64*
  store i64 %1081, i64* %1085, align 8
  %1086 = load i64, i64* %RBP.i, align 8
  %1087 = add i64 %1086, -112
  %1088 = load i64, i64* %3, align 8
  %1089 = add i64 %1088, 5
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1087 to i32*
  %1091 = load i32, i32* %1090, align 4
  store i32 %1091, i32* %98, align 1
  store float 0.000000e+00, float* %100, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  %1092 = add i64 %1086, -96
  %1093 = add i64 %1088, 10
  store i64 %1093, i64* %3, align 8
  %1094 = load <2 x float>, <2 x float>* %105, align 1
  %1095 = extractelement <2 x float> %1094, i32 0
  %1096 = inttoptr i64 %1092 to float*
  store float %1095, float* %1096, align 4
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -120
  %1099 = load i64, i64* %3, align 8
  %1100 = add i64 %1099, 4
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1098 to i64*
  %1102 = load i64, i64* %1101, align 8
  store i64 %1102, i64* %RAX.i1036, align 8
  %1103 = add i64 %1097, -104
  %1104 = add i64 %1099, 8
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i64*
  store i64 %1102, i64* %1105, align 8
  %1106 = load i64, i64* %RBP.i, align 8
  %1107 = add i64 %1106, -124
  %1108 = load i64, i64* %3, align 8
  %1109 = add i64 %1108, 3
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1107 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = zext i32 %1111 to i64
  store i64 %1112, i64* %RSI.i603, align 8
  %1113 = add i64 %1106, -108
  %1114 = add i64 %1108, 6
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  store i32 %1111, i32* %1115, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_443977

block_.L_443977:                                  ; preds = %block_4438cd, %block_4438db, %block_.L_4438e7, %block_4438c7, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit
  %1116 = phi i64 [ %.pre111, %block_.L_4438e7 ], [ %792, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit ], [ %795, %block_4438c7 ], [ %830, %block_4438cd ], [ %866, %block_4438db ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_4438e7 ], [ %790, %routine_ucomiss_MINUS0x60__rbp____xmm0.exit ], [ %790, %block_4438c7 ], [ %790, %block_4438cd ], [ %790, %block_4438db ]
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -44
  %1119 = add i64 %1116, 8
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = add i32 %1121, -1
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RAX.i1036, align 8
  %1124 = icmp ne i32 %1121, 0
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %14, align 1
  %1126 = and i32 %1122, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %21, align 1
  %1131 = xor i32 %1121, 16
  %1132 = xor i32 %1131, %1122
  %1133 = lshr i32 %1132, 4
  %1134 = trunc i32 %1133 to i8
  %1135 = and i8 %1134, 1
  store i8 %1135, i8* %26, align 1
  %1136 = icmp eq i32 %1122, 0
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %29, align 1
  %1138 = lshr i32 %1122, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %32, align 1
  %1140 = lshr i32 %1121, 31
  %1141 = xor i32 %1138, %1140
  %1142 = xor i32 %1138, 1
  %1143 = add nuw nsw i32 %1141, %1142
  %1144 = icmp eq i32 %1143, 2
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %38, align 1
  %1146 = add i64 %1116, 14
  store i64 %1146, i64* %3, align 8
  store i32 %1122, i32* %1120, align 4
  %1147 = load i64, i64* %3, align 8
  %1148 = add i64 %1147, -381
  store i64 %1148, i64* %3, align 8
  br label %block_.L_443808

block_.L_44398a:                                  ; preds = %block_.L_443808
  %1149 = add i64 %433, 12
  %1150 = add i64 %429, 7
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = add i32 %1152, 1
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RCX.i1053, align 8
  %1155 = icmp eq i32 %1152, -1
  %1156 = icmp eq i32 %1153, 0
  %1157 = or i1 %1155, %1156
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %14, align 1
  %1159 = and i32 %1153, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %21, align 1
  %1164 = xor i32 %1153, %1152
  %1165 = lshr i32 %1164, 4
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  store i8 %1167, i8* %26, align 1
  %1168 = zext i1 %1156 to i8
  store i8 %1168, i8* %29, align 1
  %1169 = lshr i32 %1153, 31
  %1170 = trunc i32 %1169 to i8
  store i8 %1170, i8* %32, align 1
  %1171 = lshr i32 %1152, 31
  %1172 = xor i32 %1169, %1171
  %1173 = add nuw nsw i32 %1172, %1169
  %1174 = icmp eq i32 %1173, 2
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %38, align 1
  %1176 = add i64 %429, 13
  store i64 %1176, i64* %3, align 8
  store i32 %1153, i32* %1151, align 4
  %.pre112 = load i64, i64* %RBP.i, align 8
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_443997

block_.L_443997:                                  ; preds = %block_.L_44398a, %block_443797
  %1177 = phi i64 [ %359, %block_443797 ], [ %.pre113, %block_.L_44398a ]
  %1178 = phi i64 [ %318, %block_443797 ], [ %.pre112, %block_.L_44398a ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.0, %block_443797 ], [ %MEMORY.1, %block_.L_44398a ]
  %1179 = add i64 %1178, -16
  %1180 = add i64 %1177, 4
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i64*
  %1182 = load i64, i64* %1181, align 8
  store i64 %1182, i64* %RAX.i1036, align 8
  %1183 = add i64 %1182, 24
  %1184 = add i64 %1177, 8
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i64*
  %1186 = load i64, i64* %1185, align 8
  store i64 %1186, i64* %RAX.i1036, align 8
  %1187 = add i64 %1178, -40
  %1188 = add i64 %1177, 12
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  %1190 = load i32, i32* %1189, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = shl nsw i64 %1191, 4
  store i64 %1192, i64* %RCX.i1053, align 8
  %1193 = add i64 %1192, %1186
  store i64 %1193, i64* %RAX.i1036, align 8
  %1194 = icmp ult i64 %1193, %1186
  %1195 = icmp ult i64 %1193, %1192
  %1196 = or i1 %1194, %1195
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %14, align 1
  %1198 = trunc i64 %1193 to i32
  %1199 = and i32 %1198, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %21, align 1
  %1204 = xor i64 %1192, %1186
  %1205 = xor i64 %1204, %1193
  %1206 = lshr i64 %1205, 4
  %1207 = trunc i64 %1206 to i8
  %1208 = and i8 %1207, 1
  store i8 %1208, i8* %26, align 1
  %1209 = icmp eq i64 %1193, 0
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %29, align 1
  %1211 = lshr i64 %1193, 63
  %1212 = trunc i64 %1211 to i8
  store i8 %1212, i8* %32, align 1
  %1213 = lshr i64 %1186, 63
  %1214 = lshr i64 %1191, 59
  %1215 = and i64 %1214, 1
  %1216 = xor i64 %1211, %1213
  %1217 = xor i64 %1211, %1215
  %1218 = add nuw nsw i64 %1216, %1217
  %1219 = icmp eq i64 %1218, 2
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %38, align 1
  %1221 = inttoptr i64 %1193 to i64*
  %1222 = add i64 %1177, 22
  store i64 %1222, i64* %3, align 8
  %1223 = load i64, i64* %1221, align 8
  store i64 %1223, i64* %RCX.i1053, align 8
  %1224 = add i64 %1178, -72
  %1225 = add i64 %1177, 26
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i64*
  store i64 %1223, i64* %1226, align 8
  %1227 = load i64, i64* %RAX.i1036, align 8
  %1228 = add i64 %1227, 8
  %1229 = load i64, i64* %3, align 8
  %1230 = add i64 %1229, 4
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1228 to i64*
  %1232 = load i64, i64* %1231, align 8
  store i64 %1232, i64* %RAX.i1036, align 8
  %1233 = load i64, i64* %RBP.i, align 8
  %1234 = add i64 %1233, -64
  %1235 = add i64 %1229, 8
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i64*
  store i64 %1232, i64* %1236, align 8
  %1237 = load i64, i64* %RBP.i, align 8
  %1238 = add i64 %1237, -96
  %1239 = load i64, i64* %3, align 8
  %1240 = add i64 %1239, 5
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1238 to i32*
  %1242 = load i32, i32* %1241, align 4
  store i32 %1242, i32* %98, align 1
  store float 0.000000e+00, float* %100, align 1
  store float 0.000000e+00, float* %102, align 1
  store float 0.000000e+00, float* %104, align 1
  %1243 = add i64 %1237, -36
  %1244 = add i64 %1239, 10
  store i64 %1244, i64* %3, align 8
  %1245 = load <2 x i32>, <2 x i32>* %109, align 1
  %1246 = load <2 x i32>, <2 x i32>* %111, align 1
  %1247 = inttoptr i64 %1243 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = sitofp i32 %1248 to float
  store float %1249, float* %112, align 1
  %1250 = extractelement <2 x i32> %1245, i32 1
  store i32 %1250, i32* %114, align 1
  %1251 = extractelement <2 x i32> %1246, i32 0
  store i32 %1251, i32* %115, align 1
  %1252 = extractelement <2 x i32> %1246, i32 1
  store i32 %1252, i32* %117, align 1
  %1253 = add i64 %1239, 13
  store i64 %1253, i64* %3, align 8
  %1254 = load <2 x float>, <2 x float>* %118, align 1
  %1255 = extractelement <2 x float> %1254, i32 0
  %1256 = load <2 x float>, <2 x float>* %105, align 1
  %1257 = extractelement <2 x float> %1256, i32 0
  %1258 = fcmp uno float %1255, %1257
  br i1 %1258, label %1259, label %1269

; <label>:1259:                                   ; preds = %block_.L_443997
  %1260 = fadd float %1255, %1257
  %1261 = bitcast float %1260 to i32
  %1262 = and i32 %1261, 2143289344
  %1263 = icmp eq i32 %1262, 2139095040
  %1264 = and i32 %1261, 4194303
  %1265 = icmp ne i32 %1264, 0
  %1266 = and i1 %1263, %1265
  br i1 %1266, label %1267, label %1275

; <label>:1267:                                   ; preds = %1259
  %1268 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1253, %struct.Memory* %MEMORY.6)
  %.pre114 = load i64, i64* %3, align 8
  %.pre115 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:1269:                                   ; preds = %block_.L_443997
  %1270 = fcmp ogt float %1255, %1257
  br i1 %1270, label %1275, label %1271

; <label>:1271:                                   ; preds = %1269
  %1272 = fcmp olt float %1255, %1257
  br i1 %1272, label %1275, label %1273

; <label>:1273:                                   ; preds = %1271
  %1274 = fcmp oeq float %1255, %1257
  br i1 %1274, label %1275, label %1279

; <label>:1275:                                   ; preds = %1273, %1271, %1269, %1259
  %1276 = phi i8 [ 0, %1269 ], [ 0, %1271 ], [ 1, %1273 ], [ 1, %1259 ]
  %1277 = phi i8 [ 0, %1269 ], [ 0, %1271 ], [ 0, %1273 ], [ 1, %1259 ]
  %1278 = phi i8 [ 0, %1269 ], [ 1, %1271 ], [ 0, %1273 ], [ 1, %1259 ]
  store i8 %1276, i8* %29, align 1
  store i8 %1277, i8* %21, align 1
  store i8 %1278, i8* %14, align 1
  br label %1279

; <label>:1279:                                   ; preds = %1275, %1273
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %1279, %1267
  %1280 = phi i64 [ %.pre115, %1267 ], [ %1237, %1279 ]
  %1281 = phi i64 [ %.pre114, %1267 ], [ %1253, %1279 ]
  %1282 = phi %struct.Memory* [ %1268, %1267 ], [ %MEMORY.6, %1279 ]
  %1283 = load i8, i8* %14, align 1
  %1284 = load i8, i8* %29, align 1
  %1285 = or i8 %1284, %1283
  %1286 = icmp ne i8 %1285, 0
  %.v196 = select i1 %1286, i64 63, i64 6
  %1287 = add i64 %1281, %.v196
  store i64 %1287, i64* %3, align 8
  br i1 %1286, label %block_.L_443a05, label %block_4439cc

block_4439cc:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %1288 = add i64 %1280, -40
  %1289 = add i64 %1287, 3
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = add i32 %1291, 1
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RAX.i1036, align 8
  %1294 = icmp eq i32 %1291, -1
  %1295 = icmp eq i32 %1292, 0
  %1296 = or i1 %1294, %1295
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %14, align 1
  %1298 = and i32 %1292, 255
  %1299 = tail call i32 @llvm.ctpop.i32(i32 %1298)
  %1300 = trunc i32 %1299 to i8
  %1301 = and i8 %1300, 1
  %1302 = xor i8 %1301, 1
  store i8 %1302, i8* %21, align 1
  %1303 = xor i32 %1292, %1291
  %1304 = lshr i32 %1303, 4
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  store i8 %1306, i8* %26, align 1
  %1307 = zext i1 %1295 to i8
  store i8 %1307, i8* %29, align 1
  %1308 = lshr i32 %1292, 31
  %1309 = trunc i32 %1308 to i8
  store i8 %1309, i8* %32, align 1
  %1310 = lshr i32 %1291, 31
  %1311 = xor i32 %1308, %1310
  %1312 = add nuw nsw i32 %1311, %1308
  %1313 = icmp eq i32 %1312, 2
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %38, align 1
  %1315 = add i64 %1280, -16
  %1316 = add i64 %1287, 10
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1315 to i64*
  %1318 = load i64, i64* %1317, align 8
  store i64 %1318, i64* %RCX.i1053, align 8
  %1319 = add i64 %1318, 12
  %1320 = add i64 %1287, 13
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i32*
  store i32 %1292, i32* %1321, align 4
  %1322 = load i64, i64* %RBP.i, align 8
  %1323 = add i64 %1322, -40
  %1324 = load i64, i64* %3, align 8
  %1325 = add i64 %1324, 3
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1323 to i32*
  %1327 = load i32, i32* %1326, align 4
  %1328 = zext i32 %1327 to i64
  store i64 %1328, i64* %RAX.i1036, align 8
  %1329 = add i64 %1322, -16
  %1330 = add i64 %1324, 7
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i64 %1332, i64* %RCX.i1053, align 8
  %1333 = add i64 %1332, 8
  %1334 = add i64 %1324, 10
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  store i32 %1327, i32* %1335, align 4
  %1336 = load i64, i64* %RBP.i, align 8
  %1337 = add i64 %1336, -88
  %1338 = load i64, i64* %3, align 8
  %1339 = add i64 %1338, 4
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1337 to i64*
  %1341 = load i64, i64* %1340, align 8
  store i64 %1341, i64* %RCX.i1053, align 8
  store i64 %1341, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %1342 = add i64 %1336, -92
  %1343 = add i64 %1338, 15
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to i32*
  %1345 = load i32, i32* %1344, align 4
  %1346 = zext i32 %1345 to i64
  store i64 %1346, i64* %RAX.i1036, align 8
  store i32 %1345, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %1347 = add i64 %1336, -4
  %1348 = add i64 %1338, 29
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i32*
  store i32 0, i32* %1349, align 4
  %1350 = load i64, i64* %3, align 8
  %1351 = add i64 %1350, 1154
  store i64 %1351, i64* %3, align 8
  br label %block_.L_443e82

block_.L_443a05:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %1352 = add i64 %1280, -72
  %1353 = add i64 %1287, 3
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RAX.i1036, align 8
  %1357 = add i64 %1280, -56
  %1358 = add i64 %1287, 6
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i32*
  store i32 %1355, i32* %1359, align 4
  %1360 = load i64, i64* %RBP.i, align 8
  %1361 = add i64 %1360, -56
  %1362 = load i64, i64* %3, align 8
  %1363 = add i64 %1362, 7
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1361 to i32*
  %1365 = load i32, i32* %1364, align 4
  %1366 = add i32 %1365, -421
  %1367 = icmp ult i32 %1365, 421
  %1368 = zext i1 %1367 to i8
  store i8 %1368, i8* %14, align 1
  %1369 = and i32 %1366, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %21, align 1
  %1374 = xor i32 %1366, %1365
  %1375 = lshr i32 %1374, 4
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %26, align 1
  %1378 = icmp eq i32 %1366, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %29, align 1
  %1380 = lshr i32 %1366, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %32, align 1
  %1382 = lshr i32 %1365, 31
  %1383 = xor i32 %1380, %1382
  %1384 = add nuw nsw i32 %1383, %1382
  %1385 = icmp eq i32 %1384, 2
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %38, align 1
  %.v150 = select i1 %1367, i64 13, i64 39
  %1387 = add i64 %1362, %.v150
  store i64 %1387, i64* %3, align 8
  br i1 %1367, label %block_443a18, label %block_.L_443a32

block_443a18:                                     ; preds = %block_.L_443a05
  %1388 = add i64 %1387, 4
  store i64 %1388, i64* %3, align 8
  %1389 = load i32, i32* %1364, align 4
  %1390 = sext i32 %1389 to i64
  store i64 %1390, i64* %RAX.i1036, align 8
  %1391 = add nsw i64 %1390, 12099168
  %1392 = add i64 %1387, 12
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i8*
  %1394 = load i8, i8* %1393, align 1
  %1395 = zext i8 %1394 to i64
  store i64 %1395, i64* %RCX.i1053, align 8
  %1396 = zext i8 %1394 to i32
  %1397 = add nsw i32 %1396, -3
  %1398 = icmp ult i8 %1394, 3
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %14, align 1
  %1400 = and i32 %1397, 255
  %1401 = tail call i32 @llvm.ctpop.i32(i32 %1400)
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = xor i8 %1403, 1
  store i8 %1404, i8* %21, align 1
  %1405 = xor i32 %1397, %1396
  %1406 = lshr i32 %1405, 4
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  store i8 %1408, i8* %26, align 1
  %1409 = icmp eq i32 %1397, 0
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %29, align 1
  %1411 = lshr i32 %1397, 31
  %1412 = trunc i32 %1411 to i8
  store i8 %1412, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v167 = select i1 %1409, i64 26, i64 21
  %1413 = add i64 %1387, %.v167
  store i64 %1413, i64* %3, align 8
  br i1 %1409, label %block_.L_443a32, label %block_443a2d

block_443a2d:                                     ; preds = %block_443a18
  %1414 = add i64 %1413, 118
  store i64 %1414, i64* %3, align 8
  br label %block_.L_443aa3

block_.L_443a32:                                  ; preds = %block_.L_443a05, %block_443a18
  %1415 = phi i64 [ %1413, %block_443a18 ], [ %1387, %block_.L_443a05 ]
  store i64 ptrtoint (%G__0x57dd2e_type* @G__0x57dd2e to i64), i64* %RDI.i661, align 8
  store i64 3098, i64* %RSI.i603, align 8
  store i64 ptrtoint (%G__0x57c8be_type* @G__0x57c8be to i64), i64* %RDX.i854, align 8
  store i64 20, i64* %RAX.i1036, align 8
  %1416 = add i64 %1415, 33
  store i64 %1416, i64* %3, align 8
  %1417 = load i32, i32* %1364, align 4
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RCX.i1053, align 8
  %1419 = add i64 %1360, -132
  %1420 = add i64 %1415, 39
  store i64 %1420, i64* %3, align 8
  %1421 = inttoptr i64 %1419 to i32*
  store i32 20, i32* %1421, align 4
  %1422 = load i32, i32* %ECX.i865, align 4
  %1423 = zext i32 %1422 to i64
  %1424 = load i64, i64* %3, align 8
  store i64 %1423, i64* %RAX.i1036, align 8
  %1425 = load i64, i64* %RBP.i, align 8
  %1426 = add i64 %1425, -144
  %1427 = load i64, i64* %RDX.i854, align 8
  %1428 = add i64 %1424, 9
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1426 to i64*
  store i64 %1427, i64* %1429, align 8
  %1430 = load i64, i64* %3, align 8
  %1431 = load i32, i32* %EAX.i1030, align 8
  %1432 = sext i32 %1431 to i64
  %1433 = lshr i64 %1432, 32
  store i64 %1433, i64* %119, align 8
  %1434 = load i64, i64* %RBP.i, align 8
  %1435 = add i64 %1434, -132
  %1436 = add i64 %1430, 7
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RCX.i1053, align 8
  %1440 = add i64 %1430, 9
  store i64 %1440, i64* %3, align 8
  %1441 = zext i32 %1431 to i64
  %1442 = sext i32 %1438 to i64
  %1443 = shl nuw i64 %1433, 32
  %1444 = or i64 %1443, %1441
  %1445 = sdiv i64 %1444, %1442
  %1446 = shl i64 %1445, 32
  %1447 = ashr exact i64 %1446, 32
  %1448 = icmp eq i64 %1445, %1447
  br i1 %1448, label %1451, label %1449

; <label>:1449:                                   ; preds = %block_.L_443a32
  %1450 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1440, %struct.Memory* %1282)
  %.pre116 = load i64, i64* %RAX.i1036, align 8
  %.pre117 = load i64, i64* %3, align 8
  %.pre118 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit579

; <label>:1451:                                   ; preds = %block_.L_443a32
  %1452 = srem i64 %1444, %1442
  %1453 = and i64 %1445, 4294967295
  store i64 %1453, i64* %RAX.i1036, align 8
  %1454 = and i64 %1452, 4294967295
  store i64 %1454, i64* %RDX.i854, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit579

routine_idivl__ecx.exit579:                       ; preds = %1451, %1449
  %1455 = phi i64 [ %.pre118, %1449 ], [ %1434, %1451 ]
  %1456 = phi i64 [ %.pre117, %1449 ], [ %1440, %1451 ]
  %1457 = phi i64 [ %.pre116, %1449 ], [ %1453, %1451 ]
  %1458 = phi %struct.Memory* [ %1450, %1449 ], [ %1282, %1451 ]
  %1459 = trunc i64 %1457 to i32
  %1460 = add i32 %1459, -1
  %1461 = zext i32 %1460 to i64
  store i64 %1461, i64* %RAX.i1036, align 8
  %1462 = icmp eq i32 %1459, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %14, align 1
  %1464 = and i32 %1460, 255
  %1465 = tail call i32 @llvm.ctpop.i32(i32 %1464)
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = xor i8 %1467, 1
  store i8 %1468, i8* %21, align 1
  %1469 = xor i32 %1460, %1459
  %1470 = lshr i32 %1469, 4
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  store i8 %1472, i8* %26, align 1
  %1473 = icmp eq i32 %1460, 0
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %29, align 1
  %1475 = lshr i32 %1460, 31
  %1476 = trunc i32 %1475 to i8
  store i8 %1476, i8* %32, align 1
  %1477 = lshr i32 %1459, 31
  %1478 = xor i32 %1475, %1477
  %1479 = add nuw nsw i32 %1478, %1477
  %1480 = icmp eq i32 %1479, 2
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %38, align 1
  %1482 = add i64 %1455, -56
  %1483 = add i64 %1456, 7
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i32*
  %1485 = load i32, i32* %1484, align 4
  %1486 = zext i32 %1485 to i64
  store i64 %1486, i64* %121, align 8
  %1487 = add i64 %1455, -148
  %1488 = add i64 %1456, 13
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  store i32 %1460, i32* %1489, align 4
  %1490 = load i32, i32* %R8D.i573, align 4
  %1491 = zext i32 %1490 to i64
  %1492 = load i64, i64* %3, align 8
  store i64 %1491, i64* %RAX.i1036, align 8
  %1493 = sext i32 %1490 to i64
  %1494 = lshr i64 %1493, 32
  store i64 %1494, i64* %119, align 8
  %1495 = load i32, i32* %ECX.i865, align 4
  %1496 = add i64 %1492, 6
  store i64 %1496, i64* %3, align 8
  %1497 = sext i32 %1495 to i64
  %1498 = shl nuw i64 %1494, 32
  %1499 = or i64 %1498, %1491
  %1500 = sdiv i64 %1499, %1497
  %1501 = shl i64 %1500, 32
  %1502 = ashr exact i64 %1501, 32
  %1503 = icmp eq i64 %1500, %1502
  br i1 %1503, label %1506, label %1504

; <label>:1504:                                   ; preds = %routine_idivl__ecx.exit579
  %1505 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1496, %struct.Memory* %1458)
  %.pre119 = load i64, i64* %RDX.i854, align 8
  %.pre120 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1506:                                   ; preds = %routine_idivl__ecx.exit579
  %1507 = srem i64 %1499, %1497
  %1508 = and i64 %1500, 4294967295
  store i64 %1508, i64* %RAX.i1036, align 8
  %1509 = and i64 %1507, 4294967295
  store i64 %1509, i64* %RDX.i854, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1506, %1504
  %1510 = phi i64 [ %.pre120, %1504 ], [ %1496, %1506 ]
  %1511 = phi i64 [ %.pre119, %1504 ], [ %1509, %1506 ]
  %1512 = phi %struct.Memory* [ %1505, %1504 ], [ %1458, %1506 ]
  %1513 = trunc i64 %1511 to i32
  %1514 = add i32 %1513, -1
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RDX.i854, align 8
  %1516 = icmp eq i32 %1513, 0
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %14, align 1
  %1518 = and i32 %1514, 255
  %1519 = tail call i32 @llvm.ctpop.i32(i32 %1518)
  %1520 = trunc i32 %1519 to i8
  %1521 = and i8 %1520, 1
  %1522 = xor i8 %1521, 1
  store i8 %1522, i8* %21, align 1
  %1523 = xor i32 %1514, %1513
  %1524 = lshr i32 %1523, 4
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  store i8 %1526, i8* %26, align 1
  %1527 = icmp eq i32 %1514, 0
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %29, align 1
  %1529 = lshr i32 %1514, 31
  %1530 = trunc i32 %1529 to i8
  store i8 %1530, i8* %32, align 1
  %1531 = lshr i32 %1513, 31
  %1532 = xor i32 %1529, %1531
  %1533 = add nuw nsw i32 %1532, %1531
  %1534 = icmp eq i32 %1533, 2
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %38, align 1
  %1536 = load i64, i64* %RBP.i, align 8
  %1537 = add i64 %1536, -144
  %1538 = add i64 %1510, 10
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i64*
  %1540 = load i64, i64* %1539, align 8
  store i64 %1540, i64* %R9.i557, align 8
  %1541 = add i64 %1536, -152
  %1542 = add i64 %1510, 16
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i32*
  store i32 %1514, i32* %1543, align 4
  %1544 = load i64, i64* %R9.i557, align 8
  %1545 = load i64, i64* %3, align 8
  store i64 %1544, i64* %RDX.i854, align 8
  %1546 = load i64, i64* %RBP.i, align 8
  %1547 = add i64 %1546, -148
  %1548 = add i64 %1545, 9
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = zext i32 %1550 to i64
  store i64 %1551, i64* %RCX.i1053, align 8
  %1552 = add i64 %1546, -152
  %1553 = add i64 %1545, 16
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %121, align 8
  %1557 = add i64 %1545, 58882
  %1558 = add i64 %1545, 21
  %1559 = load i64, i64* %6, align 8
  %1560 = add i64 %1559, -8
  %1561 = inttoptr i64 %1560 to i64*
  store i64 %1558, i64* %1561, align 8
  store i64 %1560, i64* %6, align 8
  store i64 %1557, i64* %3, align 8
  %call2_443a9e = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1557, %struct.Memory* %1512)
  %.pre121 = load i64, i64* %RBP.i, align 8
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_443aa3

block_.L_443aa3:                                  ; preds = %routine_idivl__ecx.exit, %block_443a2d
  %1562 = phi i64 [ %.pre122, %routine_idivl__ecx.exit ], [ %1414, %block_443a2d ]
  %1563 = phi i64 [ %.pre121, %routine_idivl__ecx.exit ], [ %1360, %block_443a2d ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_443a9e, %routine_idivl__ecx.exit ], [ %1282, %block_443a2d ]
  %1564 = add i64 %1563, -48
  %1565 = add i64 %1562, 7
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1564 to i32*
  store i32 0, i32* %1566, align 4
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_443aaa

block_.L_443aaa:                                  ; preds = %block_.L_443aec, %block_.L_443aa3
  %1567 = phi i64 [ %1752, %block_.L_443aec ], [ %.pre123, %block_.L_443aa3 ]
  %1568 = load i64, i64* %RBP.i, align 8
  %1569 = add i64 %1568, -48
  %1570 = add i64 %1567, 4
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i32*
  %1572 = load i32, i32* %1571, align 4
  %1573 = add i32 %1572, -3
  %1574 = icmp ult i32 %1572, 3
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %14, align 1
  %1576 = and i32 %1573, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %21, align 1
  %1581 = xor i32 %1573, %1572
  %1582 = lshr i32 %1581, 4
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  store i8 %1584, i8* %26, align 1
  %1585 = icmp eq i32 %1573, 0
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %29, align 1
  %1587 = lshr i32 %1573, 31
  %1588 = trunc i32 %1587 to i8
  store i8 %1588, i8* %32, align 1
  %1589 = lshr i32 %1572, 31
  %1590 = xor i32 %1587, %1589
  %1591 = add nuw nsw i32 %1590, %1589
  %1592 = icmp eq i32 %1591, 2
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %38, align 1
  %1594 = icmp ne i8 %1588, 0
  %1595 = xor i1 %1594, %1592
  %.v151 = select i1 %1595, i64 10, i64 85
  %1596 = add i64 %1567, %.v151
  store i64 %1596, i64* %3, align 8
  br i1 %1595, label %block_443ab4, label %block_.L_443aff.loopexit

block_443ab4:                                     ; preds = %block_.L_443aaa
  %1597 = add i64 %1568, -32
  %1598 = add i64 %1596, 4
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i64*
  %1600 = load i64, i64* %1599, align 8
  store i64 %1600, i64* %RAX.i1036, align 8
  %1601 = add i64 %1596, 8
  store i64 %1601, i64* %3, align 8
  %1602 = load i32, i32* %1571, align 4
  %1603 = sext i32 %1602 to i64
  %1604 = shl nsw i64 %1603, 5
  store i64 %1604, i64* %RCX.i1053, align 8
  %1605 = add i64 %1604, %1600
  store i64 %1605, i64* %RAX.i1036, align 8
  %1606 = icmp ult i64 %1605, %1600
  %1607 = icmp ult i64 %1605, %1604
  %1608 = or i1 %1606, %1607
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %14, align 1
  %1610 = trunc i64 %1605 to i32
  %1611 = and i32 %1610, 255
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = xor i64 %1600, %1605
  %1617 = lshr i64 %1616, 4
  %1618 = trunc i64 %1617 to i8
  %1619 = and i8 %1618, 1
  store i8 %1619, i8* %26, align 1
  %1620 = icmp eq i64 %1605, 0
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %29, align 1
  %1622 = lshr i64 %1605, 63
  %1623 = trunc i64 %1622 to i8
  store i8 %1623, i8* %32, align 1
  %1624 = lshr i64 %1600, 63
  %1625 = lshr i64 %1603, 58
  %1626 = and i64 %1625, 1
  %1627 = xor i64 %1622, %1624
  %1628 = xor i64 %1622, %1626
  %1629 = add nuw nsw i64 %1627, %1628
  %1630 = icmp eq i64 %1629, 2
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %38, align 1
  %1632 = inttoptr i64 %1605 to i32*
  %1633 = add i64 %1596, 17
  store i64 %1633, i64* %3, align 8
  %1634 = load i32, i32* %1632, align 4
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RDX.i854, align 8
  %1636 = add i64 %1568, -56
  %1637 = add i64 %1596, 20
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = sub i32 %1634, %1639
  %1641 = icmp ult i32 %1634, %1639
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %14, align 1
  %1643 = and i32 %1640, 255
  %1644 = tail call i32 @llvm.ctpop.i32(i32 %1643)
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  %1647 = xor i8 %1646, 1
  store i8 %1647, i8* %21, align 1
  %1648 = xor i32 %1639, %1634
  %1649 = xor i32 %1648, %1640
  %1650 = lshr i32 %1649, 4
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  store i8 %1652, i8* %26, align 1
  %1653 = icmp eq i32 %1640, 0
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %29, align 1
  %1655 = lshr i32 %1640, 31
  %1656 = trunc i32 %1655 to i8
  store i8 %1656, i8* %32, align 1
  %1657 = lshr i32 %1634, 31
  %1658 = lshr i32 %1639, 31
  %1659 = xor i32 %1658, %1657
  %1660 = xor i32 %1655, %1657
  %1661 = add nuw nsw i32 %1660, %1659
  %1662 = icmp eq i32 %1661, 2
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %38, align 1
  %.v165 = select i1 %1653, i64 51, i64 26
  %1664 = add i64 %1596, %.v165
  store i64 %1664, i64* %3, align 8
  br i1 %1653, label %block_.L_443ae7, label %block_443ace

block_443ace:                                     ; preds = %block_443ab4
  %1665 = load i64, i64* %RBP.i, align 8
  %1666 = add i64 %1665, -32
  %1667 = add i64 %1664, 4
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i64*
  %1669 = load i64, i64* %1668, align 8
  store i64 %1669, i64* %RAX.i1036, align 8
  %1670 = add i64 %1665, -48
  %1671 = add i64 %1664, 8
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  %1673 = load i32, i32* %1672, align 4
  %1674 = sext i32 %1673 to i64
  %1675 = shl nsw i64 %1674, 5
  store i64 %1675, i64* %RCX.i1053, align 8
  %1676 = add i64 %1675, %1669
  store i64 %1676, i64* %RAX.i1036, align 8
  %1677 = icmp ult i64 %1676, %1669
  %1678 = icmp ult i64 %1676, %1675
  %1679 = or i1 %1677, %1678
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %14, align 1
  %1681 = trunc i64 %1676 to i32
  %1682 = and i32 %1681, 255
  %1683 = tail call i32 @llvm.ctpop.i32(i32 %1682)
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = xor i8 %1685, 1
  store i8 %1686, i8* %21, align 1
  %1687 = xor i64 %1669, %1676
  %1688 = lshr i64 %1687, 4
  %1689 = trunc i64 %1688 to i8
  %1690 = and i8 %1689, 1
  store i8 %1690, i8* %26, align 1
  %1691 = icmp eq i64 %1676, 0
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %29, align 1
  %1693 = lshr i64 %1676, 63
  %1694 = trunc i64 %1693 to i8
  store i8 %1694, i8* %32, align 1
  %1695 = lshr i64 %1669, 63
  %1696 = lshr i64 %1674, 58
  %1697 = and i64 %1696, 1
  %1698 = xor i64 %1693, %1695
  %1699 = xor i64 %1693, %1697
  %1700 = add nuw nsw i64 %1698, %1699
  %1701 = icmp eq i64 %1700, 2
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %38, align 1
  %1703 = add i64 %1676, 4
  %1704 = add i64 %1664, 19
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i32*
  %1706 = load i32, i32* %1705, align 4
  store i8 0, i8* %14, align 1
  %1707 = and i32 %1706, 255
  %1708 = tail call i32 @llvm.ctpop.i32(i32 %1707)
  %1709 = trunc i32 %1708 to i8
  %1710 = and i8 %1709, 1
  %1711 = xor i8 %1710, 1
  store i8 %1711, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1712 = icmp eq i32 %1706, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %29, align 1
  %1714 = lshr i32 %1706, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1716 = xor i1 %1712, true
  %1717 = icmp eq i8 %1715, 0
  %1718 = and i1 %1717, %1716
  %.v166 = select i1 %1718, i64 30, i64 25
  %1719 = add i64 %1664, %.v166
  store i64 %1719, i64* %3, align 8
  br i1 %1718, label %block_.L_443aec, label %block_.L_443ae7

block_.L_443ae7:                                  ; preds = %block_443ace, %block_443ab4
  %1720 = phi i64 [ %1719, %block_443ace ], [ %1664, %block_443ab4 ]
  %1721 = add i64 %1720, 24
  store i64 %1721, i64* %3, align 8
  %.pre124 = load i64, i64* %RBP.i, align 8
  br label %block_.L_443aff

block_.L_443aec:                                  ; preds = %block_443ace
  %1722 = load i64, i64* %RBP.i, align 8
  %1723 = add i64 %1722, -48
  %1724 = add i64 %1719, 8
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i32*
  %1726 = load i32, i32* %1725, align 4
  %1727 = add i32 %1726, 1
  %1728 = zext i32 %1727 to i64
  store i64 %1728, i64* %RAX.i1036, align 8
  %1729 = icmp eq i32 %1726, -1
  %1730 = icmp eq i32 %1727, 0
  %1731 = or i1 %1729, %1730
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %14, align 1
  %1733 = and i32 %1727, 255
  %1734 = tail call i32 @llvm.ctpop.i32(i32 %1733)
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  store i8 %1737, i8* %21, align 1
  %1738 = xor i32 %1727, %1726
  %1739 = lshr i32 %1738, 4
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  store i8 %1741, i8* %26, align 1
  %1742 = zext i1 %1730 to i8
  store i8 %1742, i8* %29, align 1
  %1743 = lshr i32 %1727, 31
  %1744 = trunc i32 %1743 to i8
  store i8 %1744, i8* %32, align 1
  %1745 = lshr i32 %1726, 31
  %1746 = xor i32 %1743, %1745
  %1747 = add nuw nsw i32 %1746, %1743
  %1748 = icmp eq i32 %1747, 2
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %38, align 1
  %1750 = add i64 %1719, 14
  store i64 %1750, i64* %3, align 8
  store i32 %1727, i32* %1725, align 4
  %1751 = load i64, i64* %3, align 8
  %1752 = add i64 %1751, -80
  store i64 %1752, i64* %3, align 8
  br label %block_.L_443aaa

block_.L_443aff.loopexit:                         ; preds = %block_.L_443aaa
  br label %block_.L_443aff

block_.L_443aff:                                  ; preds = %block_.L_443aff.loopexit, %block_.L_443ae7
  %1753 = phi i64 [ %1721, %block_.L_443ae7 ], [ %1596, %block_.L_443aff.loopexit ]
  %1754 = phi i64 [ %.pre124, %block_.L_443ae7 ], [ %1568, %block_.L_443aff.loopexit ]
  %1755 = add i64 %1754, -32
  %1756 = add i64 %1753, 4
  store i64 %1756, i64* %3, align 8
  %1757 = inttoptr i64 %1755 to i64*
  %1758 = load i64, i64* %1757, align 8
  store i64 %1758, i64* %RAX.i1036, align 8
  %1759 = add i64 %1754, -48
  %1760 = add i64 %1753, 8
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1759 to i32*
  %1762 = load i32, i32* %1761, align 4
  %1763 = sext i32 %1762 to i64
  %1764 = shl nsw i64 %1763, 5
  store i64 %1764, i64* %RCX.i1053, align 8
  %1765 = add i64 %1764, %1758
  store i64 %1765, i64* %RAX.i1036, align 8
  %1766 = icmp ult i64 %1765, %1758
  %1767 = icmp ult i64 %1765, %1764
  %1768 = or i1 %1766, %1767
  %1769 = zext i1 %1768 to i8
  store i8 %1769, i8* %14, align 1
  %1770 = trunc i64 %1765 to i32
  %1771 = and i32 %1770, 255
  %1772 = tail call i32 @llvm.ctpop.i32(i32 %1771)
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = xor i8 %1774, 1
  store i8 %1775, i8* %21, align 1
  %1776 = xor i64 %1758, %1765
  %1777 = lshr i64 %1776, 4
  %1778 = trunc i64 %1777 to i8
  %1779 = and i8 %1778, 1
  store i8 %1779, i8* %26, align 1
  %1780 = icmp eq i64 %1765, 0
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %29, align 1
  %1782 = lshr i64 %1765, 63
  %1783 = trunc i64 %1782 to i8
  store i8 %1783, i8* %32, align 1
  %1784 = lshr i64 %1758, 63
  %1785 = lshr i64 %1763, 58
  %1786 = and i64 %1785, 1
  %1787 = xor i64 %1782, %1784
  %1788 = xor i64 %1782, %1786
  %1789 = add nuw nsw i64 %1787, %1788
  %1790 = icmp eq i64 %1789, 2
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %38, align 1
  %1792 = inttoptr i64 %1765 to i32*
  %1793 = add i64 %1753, 17
  store i64 %1793, i64* %3, align 8
  %1794 = load i32, i32* %1792, align 4
  %1795 = zext i32 %1794 to i64
  store i64 %1795, i64* %RDX.i854, align 8
  %1796 = add i64 %1754, -56
  %1797 = add i64 %1753, 20
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i32*
  %1799 = load i32, i32* %1798, align 4
  %1800 = sub i32 %1794, %1799
  %1801 = icmp ult i32 %1794, %1799
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %14, align 1
  %1803 = and i32 %1800, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %21, align 1
  %1808 = xor i32 %1799, %1794
  %1809 = xor i32 %1808, %1800
  %1810 = lshr i32 %1809, 4
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  store i8 %1812, i8* %26, align 1
  %1813 = icmp eq i32 %1800, 0
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %29, align 1
  %1815 = lshr i32 %1800, 31
  %1816 = trunc i32 %1815 to i8
  store i8 %1816, i8* %32, align 1
  %1817 = lshr i32 %1794, 31
  %1818 = lshr i32 %1799, 31
  %1819 = xor i32 %1818, %1817
  %1820 = xor i32 %1815, %1817
  %1821 = add nuw nsw i32 %1820, %1819
  %1822 = icmp eq i32 %1821, 2
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %38, align 1
  %.v152 = select i1 %1813, i64 26, i64 31
  %1824 = add i64 %1753, %.v152
  store i64 %1824, i64* %3, align 8
  br i1 %1813, label %block_443b19, label %block_.L_443b1e

block_443b19:                                     ; preds = %block_.L_443aff
  %1825 = add i64 %1824, 805
  br label %block_.L_443e3e

block_.L_443b1e:                                  ; preds = %block_.L_443aff
  %1826 = load i64, i64* %RBP.i, align 8
  %1827 = add i64 %1826, -48
  %1828 = add i64 %1824, 4
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i32*
  %1830 = load i32, i32* %1829, align 4
  %1831 = add i32 %1830, -3
  %1832 = icmp ult i32 %1830, 3
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %14, align 1
  %1834 = and i32 %1831, 255
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834)
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %21, align 1
  %1839 = xor i32 %1831, %1830
  %1840 = lshr i32 %1839, 4
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  store i8 %1842, i8* %26, align 1
  %1843 = icmp eq i32 %1831, 0
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %29, align 1
  %1845 = lshr i32 %1831, 31
  %1846 = trunc i32 %1845 to i8
  store i8 %1846, i8* %32, align 1
  %1847 = lshr i32 %1830, 31
  %1848 = xor i32 %1845, %1847
  %1849 = add nuw nsw i32 %1848, %1847
  %1850 = icmp eq i32 %1849, 2
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %38, align 1
  %1852 = icmp ne i8 %1846, 0
  %1853 = xor i1 %1852, %1850
  %.v153 = select i1 %1853, i64 10, i64 15
  %1854 = add i64 %1824, %.v153
  store i64 %1854, i64* %3, align 8
  br i1 %1853, label %block_443b28, label %block_.L_443b2d

block_443b28:                                     ; preds = %block_.L_443b1e
  %1855 = add i64 %1854, 45
  store i64 %1855, i64* %3, align 8
  br label %block_.L_443b55

block_.L_443b2d:                                  ; preds = %block_.L_443b1e
  store i64 ptrtoint (%G__0x57dd2e_type* @G__0x57dd2e to i64), i64* %RDI.i661, align 8
  store i64 3105, i64* %RSI.i603, align 8
  store i64 ptrtoint (%G__0x57e106_type* @G__0x57e106 to i64), i64* %RDX.i854, align 8
  store i64 4294967295, i64* %RAX.i1036, align 8
  store i64 4294967295, i64* %RCX.i1053, align 8
  store i64 4294967295, i64* %122, align 8
  %1856 = add i64 %1854, 58723
  %1857 = add i64 %1854, 40
  %1858 = load i64, i64* %6, align 8
  %1859 = add i64 %1858, -8
  %1860 = inttoptr i64 %1859 to i64*
  store i64 %1857, i64* %1860, align 8
  store i64 %1859, i64* %6, align 8
  store i64 %1856, i64* %3, align 8
  %call2_443b50 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1856, %struct.Memory* %MEMORY.8)
  %.pre125 = load i64, i64* %RBP.i, align 8
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_443b55

block_.L_443b55:                                  ; preds = %block_.L_443b2d, %block_443b28
  %1861 = phi i64 [ %.pre126, %block_.L_443b2d ], [ %1855, %block_443b28 ]
  %1862 = phi i64 [ %.pre125, %block_.L_443b2d ], [ %1826, %block_443b28 ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_443b50, %block_.L_443b2d ], [ %MEMORY.8, %block_443b28 ]
  %1863 = add i64 %1862, -56
  %1864 = add i64 %1861, 3
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i32*
  %1866 = load i32, i32* %1865, align 4
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RDI.i661, align 8
  %1868 = add i64 %1862, -20
  %1869 = add i64 %1861, 6
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i32*
  %1871 = load i32, i32* %1870, align 4
  %1872 = zext i32 %1871 to i64
  store i64 %1872, i64* %RSI.i603, align 8
  %1873 = add i64 %1862, -64
  %1874 = add i64 %1861, 10
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i64*
  %1876 = load i64, i64* %1875, align 8
  store i64 %1876, i64* %RDX.i854, align 8
  %1877 = add i64 %1862, -68
  %1878 = add i64 %1861, 13
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RCX.i1053, align 8
  %1882 = add i64 %1861, 5003
  %1883 = add i64 %1861, 18
  %1884 = load i64, i64* %6, align 8
  %1885 = add i64 %1884, -8
  %1886 = inttoptr i64 %1885 to i64*
  store i64 %1883, i64* %1886, align 8
  store i64 %1885, i64* %6, align 8
  store i64 %1882, i64* %3, align 8
  %call2_443b62 = tail call %struct.Memory* @sub_444ee0.check_pattern_hard(%struct.State* nonnull %0, i64 %1882, %struct.Memory* %MEMORY.12)
  %1887 = load i32, i32* %EAX.i1030, align 4
  %1888 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1889 = and i32 %1887, 255
  %1890 = tail call i32 @llvm.ctpop.i32(i32 %1889)
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = xor i8 %1892, 1
  store i8 %1893, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1894 = icmp eq i32 %1887, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %29, align 1
  %1896 = lshr i32 %1887, 31
  %1897 = trunc i32 %1896 to i8
  store i8 %1897, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v154 = select i1 %1894, i64 722, i64 9
  %1898 = add i64 %1888, %.v154
  store i64 %1898, i64* %3, align 8
  br i1 %1894, label %block_.L_443e39, label %block_443b70

block_443b70:                                     ; preds = %block_.L_443b55
  %1899 = load i64, i64* %RBP.i, align 8
  %1900 = add i64 %1899, -56
  %1901 = add i64 %1898, 3
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i32*
  %1903 = load i32, i32* %1902, align 4
  %1904 = zext i32 %1903 to i64
  store i64 %1904, i64* %RAX.i1036, align 8
  %1905 = add i64 %1899, -32
  %1906 = add i64 %1898, 7
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i64*
  %1908 = load i64, i64* %1907, align 8
  store i64 %1908, i64* %RCX.i1053, align 8
  %1909 = add i64 %1899, -48
  %1910 = add i64 %1898, 11
  store i64 %1910, i64* %3, align 8
  %1911 = inttoptr i64 %1909 to i32*
  %1912 = load i32, i32* %1911, align 4
  %1913 = sext i32 %1912 to i64
  %1914 = shl nsw i64 %1913, 5
  store i64 %1914, i64* %RDX.i854, align 8
  %1915 = add i64 %1914, %1908
  store i64 %1915, i64* %RCX.i1053, align 8
  %1916 = icmp ult i64 %1915, %1908
  %1917 = icmp ult i64 %1915, %1914
  %1918 = or i1 %1916, %1917
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %14, align 1
  %1920 = trunc i64 %1915 to i32
  %1921 = and i32 %1920, 255
  %1922 = tail call i32 @llvm.ctpop.i32(i32 %1921)
  %1923 = trunc i32 %1922 to i8
  %1924 = and i8 %1923, 1
  %1925 = xor i8 %1924, 1
  store i8 %1925, i8* %21, align 1
  %1926 = xor i64 %1908, %1915
  %1927 = lshr i64 %1926, 4
  %1928 = trunc i64 %1927 to i8
  %1929 = and i8 %1928, 1
  store i8 %1929, i8* %26, align 1
  %1930 = icmp eq i64 %1915, 0
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %29, align 1
  %1932 = lshr i64 %1915, 63
  %1933 = trunc i64 %1932 to i8
  store i8 %1933, i8* %32, align 1
  %1934 = lshr i64 %1908, 63
  %1935 = lshr i64 %1913, 58
  %1936 = and i64 %1935, 1
  %1937 = xor i64 %1932, %1934
  %1938 = xor i64 %1932, %1936
  %1939 = add nuw nsw i64 %1937, %1938
  %1940 = icmp eq i64 %1939, 2
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %38, align 1
  %1942 = inttoptr i64 %1915 to i32*
  %1943 = add i64 %1898, 20
  store i64 %1943, i64* %3, align 8
  store i32 %1903, i32* %1942, align 4
  %1944 = load i64, i64* %RBP.i, align 8
  %1945 = add i64 %1944, -96
  %1946 = load i64, i64* %3, align 8
  %1947 = add i64 %1946, 5
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1945 to float*
  %1949 = load float, float* %1948, align 4
  %1950 = tail call float @llvm.trunc.f32(float %1949)
  %1951 = tail call float @llvm.fabs.f32(float %1950)
  %1952 = fcmp ogt float %1951, 0x41E0000000000000
  %1953 = fptosi float %1950 to i32
  %1954 = zext i32 %1953 to i64
  %1955 = select i1 %1952, i64 2147483648, i64 %1954
  store i64 %1955, i64* %RAX.i1036, align 8
  %1956 = add i64 %1944, -32
  %1957 = add i64 %1946, 9
  store i64 %1957, i64* %3, align 8
  %1958 = inttoptr i64 %1956 to i64*
  %1959 = load i64, i64* %1958, align 8
  store i64 %1959, i64* %RCX.i1053, align 8
  %1960 = add i64 %1944, -48
  %1961 = add i64 %1946, 13
  store i64 %1961, i64* %3, align 8
  %1962 = inttoptr i64 %1960 to i32*
  %1963 = load i32, i32* %1962, align 4
  %1964 = sext i32 %1963 to i64
  %1965 = shl nsw i64 %1964, 5
  store i64 %1965, i64* %RDX.i854, align 8
  %1966 = add i64 %1965, %1959
  store i64 %1966, i64* %RCX.i1053, align 8
  %1967 = icmp ult i64 %1966, %1959
  %1968 = icmp ult i64 %1966, %1965
  %1969 = or i1 %1967, %1968
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %14, align 1
  %1971 = trunc i64 %1966 to i32
  %1972 = and i32 %1971, 255
  %1973 = tail call i32 @llvm.ctpop.i32(i32 %1972)
  %1974 = trunc i32 %1973 to i8
  %1975 = and i8 %1974, 1
  %1976 = xor i8 %1975, 1
  store i8 %1976, i8* %21, align 1
  %1977 = xor i64 %1959, %1966
  %1978 = lshr i64 %1977, 4
  %1979 = trunc i64 %1978 to i8
  %1980 = and i8 %1979, 1
  store i8 %1980, i8* %26, align 1
  %1981 = icmp eq i64 %1966, 0
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %29, align 1
  %1983 = lshr i64 %1966, 63
  %1984 = trunc i64 %1983 to i8
  store i8 %1984, i8* %32, align 1
  %1985 = lshr i64 %1959, 63
  %1986 = lshr i64 %1964, 58
  %1987 = and i64 %1986, 1
  %1988 = xor i64 %1983, %1985
  %1989 = xor i64 %1983, %1987
  %1990 = add nuw nsw i64 %1988, %1989
  %1991 = icmp eq i64 %1990, 2
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %38, align 1
  %1993 = add i64 %1966, 4
  %1994 = trunc i64 %1955 to i32
  %1995 = add i64 %1946, 23
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1993 to i32*
  store i32 %1994, i32* %1996, align 4
  %1997 = load i64, i64* %RBP.i, align 8
  %1998 = add i64 %1997, -64
  %1999 = load i64, i64* %3, align 8
  %2000 = add i64 %1999, 4
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1998 to i64*
  %2002 = load i64, i64* %2001, align 8
  store i64 %2002, i64* %RCX.i1053, align 8
  %2003 = add i64 %2002, 16
  %2004 = add i64 %1999, 8
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i64*
  %2006 = load i64, i64* %2005, align 8
  store i64 %2006, i64* %RCX.i1053, align 8
  %2007 = add i64 %1997, -32
  %2008 = add i64 %1999, 12
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i64*
  %2010 = load i64, i64* %2009, align 8
  store i64 %2010, i64* %RDX.i854, align 8
  %2011 = add i64 %1997, -48
  %2012 = add i64 %1999, 16
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i32*
  %2014 = load i32, i32* %2013, align 4
  %2015 = sext i32 %2014 to i64
  %2016 = shl nsw i64 %2015, 5
  store i64 %2016, i64* %RSI.i603, align 8
  %2017 = add i64 %2016, %2010
  store i64 %2017, i64* %RDX.i854, align 8
  %2018 = add i64 %2017, 8
  %2019 = add i64 %1999, 27
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i64*
  store i64 %2006, i64* %2020, align 8
  %2021 = load i64, i64* %RBP.i, align 8
  %2022 = add i64 %2021, -76
  %2023 = load i64, i64* %3, align 8
  %2024 = add i64 %2023, 7
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2022 to i32*
  store i32 1, i32* %2025, align 4
  %2026 = load i64, i64* %3, align 8
  %2027 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2028 = and i32 %2027, 255
  %2029 = tail call i32 @llvm.ctpop.i32(i32 %2028)
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = xor i8 %2031, 1
  store i8 %2032, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2033 = icmp eq i32 %2027, 0
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %29, align 1
  %2035 = lshr i32 %2027, 31
  %2036 = trunc i32 %2035 to i8
  store i8 %2036, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v155 = select i1 %2033, i64 14, i64 19
  %2037 = add i64 %2026, %.v155
  store i64 %2037, i64* %3, align 8
  br i1 %2033, label %block_443bcb, label %block_.L_443bd0

block_443bcb:                                     ; preds = %block_443b70
  %2038 = add i64 %2037, 57
  store i64 %2038, i64* %3, align 8
  br label %block_.L_443c04

block_.L_443bd0:                                  ; preds = %block_443b70
  store i64 ptrtoint (%G__0x57e0a3_type* @G__0x57e0a3 to i64), i64* %RDI.i661, align 8
  %2039 = load i64, i64* %RBP.i, align 8
  %2040 = add i64 %2039, -64
  %2041 = add i64 %2037, 14
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2040 to i64*
  %2043 = load i64, i64* %2042, align 8
  store i64 %2043, i64* %RAX.i1036, align 8
  %2044 = add i64 %2043, 16
  %2045 = add i64 %2037, 18
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i64*
  %2047 = load i64, i64* %2046, align 8
  store i64 %2047, i64* %RSI.i603, align 8
  %2048 = add i64 %2039, -56
  %2049 = add i64 %2037, 21
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RDX.i854, align 8
  %2053 = add i64 %2039, -32
  %2054 = add i64 %2037, 25
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i64*
  %2056 = load i64, i64* %2055, align 8
  store i64 %2056, i64* %RAX.i1036, align 8
  %2057 = add i64 %2039, -48
  %2058 = add i64 %2037, 29
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i32*
  %2060 = load i32, i32* %2059, align 4
  %2061 = sext i32 %2060 to i64
  %2062 = shl nsw i64 %2061, 5
  store i64 %2062, i64* %RCX.i1053, align 8
  %2063 = add i64 %2062, %2056
  store i64 %2063, i64* %RAX.i1036, align 8
  %2064 = icmp ult i64 %2063, %2056
  %2065 = icmp ult i64 %2063, %2062
  %2066 = or i1 %2064, %2065
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %14, align 1
  %2068 = trunc i64 %2063 to i32
  %2069 = and i32 %2068, 255
  %2070 = tail call i32 @llvm.ctpop.i32(i32 %2069)
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  %2073 = xor i8 %2072, 1
  store i8 %2073, i8* %21, align 1
  %2074 = xor i64 %2056, %2063
  %2075 = lshr i64 %2074, 4
  %2076 = trunc i64 %2075 to i8
  %2077 = and i8 %2076, 1
  store i8 %2077, i8* %26, align 1
  %2078 = icmp eq i64 %2063, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %29, align 1
  %2080 = lshr i64 %2063, 63
  %2081 = trunc i64 %2080 to i8
  store i8 %2081, i8* %32, align 1
  %2082 = lshr i64 %2056, 63
  %2083 = lshr i64 %2061, 58
  %2084 = and i64 %2083, 1
  %2085 = xor i64 %2080, %2082
  %2086 = xor i64 %2080, %2084
  %2087 = add nuw nsw i64 %2085, %2086
  %2088 = icmp eq i64 %2087, 2
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %38, align 1
  %2090 = add i64 %2063, 4
  %2091 = add i64 %2037, 39
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i32*
  %2093 = load i32, i32* %2092, align 4
  %2094 = zext i32 %2093 to i64
  store i64 %2094, i64* %RCX.i1053, align 8
  %AL.i358 = bitcast %union.anon* %95 to i8*
  store i8 0, i8* %AL.i358, align 1
  %2095 = add i64 %2037, 57824
  %2096 = add i64 %2037, 46
  %2097 = load i64, i64* %6, align 8
  %2098 = add i64 %2097, -8
  %2099 = inttoptr i64 %2098 to i64*
  store i64 %2096, i64* %2099, align 8
  store i64 %2098, i64* %6, align 8
  store i64 %2095, i64* %3, align 8
  %call2_443bf9 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2095, %struct.Memory* %call2_443b62)
  %2100 = load i64, i64* %RBP.i, align 8
  %2101 = add i64 %2100, -156
  %2102 = load i32, i32* %EAX.i1030, align 4
  %2103 = load i64, i64* %3, align 8
  %2104 = add i64 %2103, 6
  store i64 %2104, i64* %3, align 8
  %2105 = inttoptr i64 %2101 to i32*
  store i32 %2102, i32* %2105, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_443c04

block_.L_443c04:                                  ; preds = %block_.L_443bd0, %block_443bcb
  %2106 = phi i64 [ %.pre127, %block_.L_443bd0 ], [ %2038, %block_443bcb ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_443bf9, %block_.L_443bd0 ], [ %call2_443b62, %block_443bcb ]
  %2107 = load i64, i64* %RBP.i, align 8
  %2108 = add i64 %2107, -64
  %2109 = add i64 %2106, 4
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i64*
  %2111 = load i64, i64* %2110, align 8
  store i64 %2111, i64* %RAX.i1036, align 8
  %2112 = add i64 %2111, 120
  %2113 = add i64 %2106, 7
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i32*
  %2115 = load i32, i32* %2114, align 4
  %2116 = and i32 %2115, 512
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %RCX.i1053, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2118 = icmp eq i32 %2116, 0
  %.lobit136 = lshr exact i32 %2116, 9
  %2119 = trunc i32 %.lobit136 to i8
  %2120 = xor i8 %2119, 1
  store i8 %2120, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v156 = select i1 %2118, i64 49, i64 22
  %2121 = add i64 %2106, %.v156
  store i64 %2121, i64* %3, align 8
  br i1 %2118, label %block_.L_443c35, label %block_443c1a

block_443c1a:                                     ; preds = %block_.L_443c04
  %2122 = add i64 %2107, -32
  %2123 = add i64 %2121, 4
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i64*
  %2125 = load i64, i64* %2124, align 8
  store i64 %2125, i64* %RAX.i1036, align 8
  %2126 = add i64 %2107, -48
  %2127 = add i64 %2121, 8
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = sext i32 %2129 to i64
  %2131 = shl nsw i64 %2130, 5
  store i64 %2131, i64* %RCX.i1053, align 8
  %2132 = add i64 %2131, %2125
  store i64 %2132, i64* %RAX.i1036, align 8
  %2133 = icmp ult i64 %2132, %2125
  %2134 = icmp ult i64 %2132, %2131
  %2135 = or i1 %2133, %2134
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %14, align 1
  %2137 = trunc i64 %2132 to i32
  %2138 = and i32 %2137, 255
  %2139 = tail call i32 @llvm.ctpop.i32(i32 %2138)
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  %2142 = xor i8 %2141, 1
  store i8 %2142, i8* %21, align 1
  %2143 = xor i64 %2125, %2132
  %2144 = lshr i64 %2143, 4
  %2145 = trunc i64 %2144 to i8
  %2146 = and i8 %2145, 1
  store i8 %2146, i8* %26, align 1
  %2147 = icmp eq i64 %2132, 0
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %29, align 1
  %2149 = lshr i64 %2132, 63
  %2150 = trunc i64 %2149 to i8
  store i8 %2150, i8* %32, align 1
  %2151 = lshr i64 %2125, 63
  %2152 = lshr i64 %2130, 58
  %2153 = and i64 %2152, 1
  %2154 = xor i64 %2149, %2151
  %2155 = xor i64 %2149, %2153
  %2156 = add nuw nsw i64 %2154, %2155
  %2157 = icmp eq i64 %2156, 2
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %38, align 1
  %2159 = add i64 %2132, 16
  %2160 = add i64 %2121, 22
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2159 to i32*
  store i32 0, i32* %2161, align 4
  %2162 = load i64, i64* %3, align 8
  %2163 = add i64 %2162, 445
  br label %block_.L_443ded

block_.L_443c35:                                  ; preds = %block_.L_443c04
  %2164 = add i64 %2121, 4
  store i64 %2164, i64* %3, align 8
  %2165 = load i64, i64* %2110, align 8
  store i64 %2165, i64* %RAX.i1036, align 8
  %2166 = add i64 %2165, 120
  %2167 = add i64 %2121, 7
  store i64 %2167, i64* %3, align 8
  %2168 = inttoptr i64 %2166 to i32*
  %2169 = load i32, i32* %2168, align 4
  %2170 = and i32 %2169, 2048
  %2171 = zext i32 %2170 to i64
  store i64 %2171, i64* %RCX.i1053, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2172 = icmp eq i32 %2170, 0
  %.lobit139 = lshr exact i32 %2170, 11
  %2173 = trunc i32 %.lobit139 to i8
  %2174 = xor i8 %2173, 1
  store i8 %2174, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v157 = select i1 %2172, i64 413, i64 22
  %2175 = add i64 %2121, %.v157
  store i64 %2175, i64* %3, align 8
  br i1 %2172, label %block_.L_443dd2, label %block_443c4b

block_443c4b:                                     ; preds = %block_.L_443c35
  %2176 = add i64 %2107, -128
  %2177 = add i64 %2175, 7
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2176 to i32*
  store i32 1, i32* %2178, align 4
  %2179 = load i64, i64* %RBP.i, align 8
  %2180 = add i64 %2179, -40
  %2181 = load i64, i64* %3, align 8
  %2182 = add i64 %2181, 3
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2180 to i32*
  %2184 = load i32, i32* %2183, align 4
  %2185 = add i32 %2184, 1
  %2186 = zext i32 %2185 to i64
  store i64 %2186, i64* %RAX.i1036, align 8
  %2187 = icmp eq i32 %2184, -1
  %2188 = icmp eq i32 %2185, 0
  %2189 = or i1 %2187, %2188
  %2190 = zext i1 %2189 to i8
  store i8 %2190, i8* %14, align 1
  %2191 = and i32 %2185, 255
  %2192 = tail call i32 @llvm.ctpop.i32(i32 %2191)
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  %2195 = xor i8 %2194, 1
  store i8 %2195, i8* %21, align 1
  %2196 = xor i32 %2185, %2184
  %2197 = lshr i32 %2196, 4
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  store i8 %2199, i8* %26, align 1
  %2200 = zext i1 %2188 to i8
  store i8 %2200, i8* %29, align 1
  %2201 = lshr i32 %2185, 31
  %2202 = trunc i32 %2201 to i8
  store i8 %2202, i8* %32, align 1
  %2203 = lshr i32 %2184, 31
  %2204 = xor i32 %2201, %2203
  %2205 = add nuw nsw i32 %2204, %2201
  %2206 = icmp eq i32 %2205, 2
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %38, align 1
  %2208 = add i64 %2179, -52
  %2209 = add i64 %2181, 9
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i32*
  store i32 %2185, i32* %2210, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_443c5b

block_.L_443c5b:                                  ; preds = %block_.L_443da5, %block_443c4b
  %2211 = phi i64 [ %.pre128, %block_443c4b ], [ %2735, %block_.L_443da5 ]
  %2212 = load i64, i64* %RBP.i, align 8
  %2213 = add i64 %2212, -52
  %2214 = add i64 %2211, 3
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i32*
  %2216 = load i32, i32* %2215, align 4
  %2217 = zext i32 %2216 to i64
  store i64 %2217, i64* %RAX.i1036, align 8
  %2218 = add i64 %2212, -16
  %2219 = add i64 %2211, 7
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2218 to i64*
  %2221 = load i64, i64* %2220, align 8
  store i64 %2221, i64* %RCX.i1053, align 8
  %2222 = add i64 %2221, 4
  %2223 = add i64 %2211, 10
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2222 to i32*
  %2225 = load i32, i32* %2224, align 4
  %2226 = sub i32 %2216, %2225
  %2227 = icmp ult i32 %2216, %2225
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %14, align 1
  %2229 = and i32 %2226, 255
  %2230 = tail call i32 @llvm.ctpop.i32(i32 %2229)
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  %2233 = xor i8 %2232, 1
  store i8 %2233, i8* %21, align 1
  %2234 = xor i32 %2225, %2216
  %2235 = xor i32 %2234, %2226
  %2236 = lshr i32 %2235, 4
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  store i8 %2238, i8* %26, align 1
  %2239 = icmp eq i32 %2226, 0
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %29, align 1
  %2241 = lshr i32 %2226, 31
  %2242 = trunc i32 %2241 to i8
  store i8 %2242, i8* %32, align 1
  %2243 = lshr i32 %2216, 31
  %2244 = lshr i32 %2225, 31
  %2245 = xor i32 %2244, %2243
  %2246 = xor i32 %2241, %2243
  %2247 = add nuw nsw i32 %2246, %2245
  %2248 = icmp eq i32 %2247, 2
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %38, align 1
  %2250 = icmp ne i8 %2242, 0
  %2251 = xor i1 %2250, %2248
  %.v158 = select i1 %2251, i64 16, i64 349
  %2252 = add i64 %2211, %.v158
  store i64 %2252, i64* %3, align 8
  br i1 %2251, label %block_443c6b, label %block_.L_443db8.loopexit

block_443c6b:                                     ; preds = %block_.L_443c5b
  %2253 = add i64 %2252, 4
  store i64 %2253, i64* %3, align 8
  %2254 = load i64, i64* %2220, align 8
  store i64 %2254, i64* %RAX.i1036, align 8
  %2255 = add i64 %2254, 24
  %2256 = add i64 %2252, 8
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i64*
  %2258 = load i64, i64* %2257, align 8
  store i64 %2258, i64* %RAX.i1036, align 8
  %2259 = add i64 %2252, 12
  store i64 %2259, i64* %3, align 8
  %2260 = load i32, i32* %2215, align 4
  %2261 = sext i32 %2260 to i64
  %2262 = shl nsw i64 %2261, 4
  store i64 %2262, i64* %RCX.i1053, align 8
  %2263 = add i64 %2262, %2258
  store i64 %2263, i64* %RAX.i1036, align 8
  %2264 = icmp ult i64 %2263, %2258
  %2265 = icmp ult i64 %2263, %2262
  %2266 = or i1 %2264, %2265
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %14, align 1
  %2268 = trunc i64 %2263 to i32
  %2269 = and i32 %2268, 255
  %2270 = tail call i32 @llvm.ctpop.i32(i32 %2269)
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  %2273 = xor i8 %2272, 1
  store i8 %2273, i8* %21, align 1
  %2274 = xor i64 %2262, %2258
  %2275 = xor i64 %2274, %2263
  %2276 = lshr i64 %2275, 4
  %2277 = trunc i64 %2276 to i8
  %2278 = and i8 %2277, 1
  store i8 %2278, i8* %26, align 1
  %2279 = icmp eq i64 %2263, 0
  %2280 = zext i1 %2279 to i8
  store i8 %2280, i8* %29, align 1
  %2281 = lshr i64 %2263, 63
  %2282 = trunc i64 %2281 to i8
  store i8 %2282, i8* %32, align 1
  %2283 = lshr i64 %2258, 63
  %2284 = lshr i64 %2261, 59
  %2285 = and i64 %2284, 1
  %2286 = xor i64 %2281, %2283
  %2287 = xor i64 %2281, %2285
  %2288 = add nuw nsw i64 %2286, %2287
  %2289 = icmp eq i64 %2288, 2
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %38, align 1
  %2291 = inttoptr i64 %2263 to i32*
  %2292 = add i64 %2252, 21
  store i64 %2292, i64* %3, align 8
  %2293 = load i32, i32* %2291, align 4
  %2294 = zext i32 %2293 to i64
  store i64 %2294, i64* %RDX.i854, align 8
  %2295 = add i64 %2212, -56
  %2296 = add i64 %2252, 24
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2295 to i32*
  %2298 = load i32, i32* %2297, align 4
  %2299 = sub i32 %2293, %2298
  %2300 = icmp ult i32 %2293, %2298
  %2301 = zext i1 %2300 to i8
  store i8 %2301, i8* %14, align 1
  %2302 = and i32 %2299, 255
  %2303 = tail call i32 @llvm.ctpop.i32(i32 %2302)
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  store i8 %2306, i8* %21, align 1
  %2307 = xor i32 %2298, %2293
  %2308 = xor i32 %2307, %2299
  %2309 = lshr i32 %2308, 4
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  store i8 %2311, i8* %26, align 1
  %2312 = icmp eq i32 %2299, 0
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %29, align 1
  %2314 = lshr i32 %2299, 31
  %2315 = trunc i32 %2314 to i8
  store i8 %2315, i8* %32, align 1
  %2316 = lshr i32 %2293, 31
  %2317 = lshr i32 %2298, 31
  %2318 = xor i32 %2317, %2316
  %2319 = xor i32 %2314, %2316
  %2320 = add nuw nsw i32 %2319, %2318
  %2321 = icmp eq i32 %2320, 2
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %38, align 1
  %.v159 = select i1 %2312, i64 30, i64 314
  %2323 = add i64 %2252, %.v159
  store i64 %2323, i64* %3, align 8
  br i1 %2312, label %block_443c89, label %block_.L_443da5

block_443c89:                                     ; preds = %block_443c6b
  %2324 = load i64, i64* %RBP.i, align 8
  %2325 = add i64 %2324, -16
  %2326 = add i64 %2323, 4
  store i64 %2326, i64* %3, align 8
  %2327 = inttoptr i64 %2325 to i64*
  %2328 = load i64, i64* %2327, align 8
  store i64 %2328, i64* %RAX.i1036, align 8
  %2329 = add i64 %2328, 24
  %2330 = add i64 %2323, 8
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2329 to i64*
  %2332 = load i64, i64* %2331, align 8
  store i64 %2332, i64* %RAX.i1036, align 8
  %2333 = add i64 %2324, -52
  %2334 = add i64 %2323, 12
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2333 to i32*
  %2336 = load i32, i32* %2335, align 4
  %2337 = sext i32 %2336 to i64
  %2338 = shl nsw i64 %2337, 4
  store i64 %2338, i64* %RCX.i1053, align 8
  %2339 = add i64 %2338, %2332
  store i64 %2339, i64* %RAX.i1036, align 8
  %2340 = icmp ult i64 %2339, %2332
  %2341 = icmp ult i64 %2339, %2338
  %2342 = or i1 %2340, %2341
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %14, align 1
  %2344 = trunc i64 %2339 to i32
  %2345 = and i32 %2344, 255
  %2346 = tail call i32 @llvm.ctpop.i32(i32 %2345)
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  %2349 = xor i8 %2348, 1
  store i8 %2349, i8* %21, align 1
  %2350 = xor i64 %2338, %2332
  %2351 = xor i64 %2350, %2339
  %2352 = lshr i64 %2351, 4
  %2353 = trunc i64 %2352 to i8
  %2354 = and i8 %2353, 1
  store i8 %2354, i8* %26, align 1
  %2355 = icmp eq i64 %2339, 0
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %29, align 1
  %2357 = lshr i64 %2339, 63
  %2358 = trunc i64 %2357 to i8
  store i8 %2358, i8* %32, align 1
  %2359 = lshr i64 %2332, 63
  %2360 = lshr i64 %2337, 59
  %2361 = and i64 %2360, 1
  %2362 = xor i64 %2357, %2359
  %2363 = xor i64 %2357, %2361
  %2364 = add nuw nsw i64 %2362, %2363
  %2365 = icmp eq i64 %2364, 2
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %38, align 1
  %2367 = add i64 %2339, 8
  %2368 = add i64 %2323, 23
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2367 to i64*
  %2370 = load i64, i64* %2369, align 8
  store i64 %2370, i64* %RAX.i1036, align 8
  %2371 = add i64 %2370, 120
  %2372 = add i64 %2323, 26
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  %2374 = load i32, i32* %2373, align 4
  %2375 = and i32 %2374, 512
  %2376 = zext i32 %2375 to i64
  store i64 %2376, i64* %RDX.i854, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit140 = lshr exact i32 %2375, 9
  %2377 = trunc i32 %.lobit140 to i8
  %2378 = xor i8 %2377, 1
  store i8 %2378, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2379 = icmp eq i8 %2378, 0
  %.v160 = select i1 %2379, i64 82, i64 41
  %2380 = add i64 %2323, %.v160
  store i64 %2380, i64* %3, align 8
  br i1 %2379, label %block_.L_443cdb, label %block_443cb2

block_443cb2:                                     ; preds = %block_443c89
  %2381 = load i64, i64* %RBP.i, align 8
  %2382 = add i64 %2381, -16
  %2383 = add i64 %2380, 4
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2382 to i64*
  %2385 = load i64, i64* %2384, align 8
  store i64 %2385, i64* %RAX.i1036, align 8
  %2386 = add i64 %2385, 24
  %2387 = add i64 %2380, 8
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i64*
  %2389 = load i64, i64* %2388, align 8
  store i64 %2389, i64* %RAX.i1036, align 8
  %2390 = add i64 %2381, -52
  %2391 = add i64 %2380, 12
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2390 to i32*
  %2393 = load i32, i32* %2392, align 4
  %2394 = sext i32 %2393 to i64
  %2395 = shl nsw i64 %2394, 4
  store i64 %2395, i64* %RCX.i1053, align 8
  %2396 = add i64 %2395, %2389
  store i64 %2396, i64* %RAX.i1036, align 8
  %2397 = icmp ult i64 %2396, %2389
  %2398 = icmp ult i64 %2396, %2395
  %2399 = or i1 %2397, %2398
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %14, align 1
  %2401 = trunc i64 %2396 to i32
  %2402 = and i32 %2401, 255
  %2403 = tail call i32 @llvm.ctpop.i32(i32 %2402)
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  %2406 = xor i8 %2405, 1
  store i8 %2406, i8* %21, align 1
  %2407 = xor i64 %2395, %2389
  %2408 = xor i64 %2407, %2396
  %2409 = lshr i64 %2408, 4
  %2410 = trunc i64 %2409 to i8
  %2411 = and i8 %2410, 1
  store i8 %2411, i8* %26, align 1
  %2412 = icmp eq i64 %2396, 0
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %29, align 1
  %2414 = lshr i64 %2396, 63
  %2415 = trunc i64 %2414 to i8
  store i8 %2415, i8* %32, align 1
  %2416 = lshr i64 %2389, 63
  %2417 = lshr i64 %2394, 59
  %2418 = and i64 %2417, 1
  %2419 = xor i64 %2414, %2416
  %2420 = xor i64 %2414, %2418
  %2421 = add nuw nsw i64 %2419, %2420
  %2422 = icmp eq i64 %2421, 2
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %38, align 1
  %2424 = add i64 %2396, 8
  %2425 = add i64 %2380, 23
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i64*
  %2427 = load i64, i64* %2426, align 8
  store i64 %2427, i64* %RAX.i1036, align 8
  %2428 = add i64 %2427, 120
  %2429 = add i64 %2380, 26
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i32*
  %2431 = load i32, i32* %2430, align 4
  %2432 = and i32 %2431, 2048
  %2433 = zext i32 %2432 to i64
  store i64 %2433, i64* %RDX.i854, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit141 = lshr exact i32 %2432, 11
  %2434 = trunc i32 %.lobit141 to i8
  %2435 = xor i8 %2434, 1
  store i8 %2435, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2436 = icmp eq i8 %2435, 0
  %.v161 = select i1 %2436, i64 243, i64 41
  %2437 = add i64 %2380, %.v161
  store i64 %2437, i64* %3, align 8
  br i1 %2436, label %block_.L_443da5, label %block_.L_443cdb

block_.L_443cdb:                                  ; preds = %block_443cb2, %block_443c89
  %2438 = phi i64 [ %2437, %block_443cb2 ], [ %2380, %block_443c89 ]
  %2439 = load i64, i64* %RBP.i, align 8
  %2440 = add i64 %2439, -56
  %2441 = add i64 %2438, 3
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2440 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = zext i32 %2443 to i64
  store i64 %2444, i64* %RDI.i661, align 8
  %2445 = add i64 %2439, -20
  %2446 = add i64 %2438, 6
  store i64 %2446, i64* %3, align 8
  %2447 = inttoptr i64 %2445 to i32*
  %2448 = load i32, i32* %2447, align 4
  %2449 = zext i32 %2448 to i64
  store i64 %2449, i64* %RSI.i603, align 8
  %2450 = add i64 %2439, -16
  %2451 = add i64 %2438, 10
  store i64 %2451, i64* %3, align 8
  %2452 = inttoptr i64 %2450 to i64*
  %2453 = load i64, i64* %2452, align 8
  store i64 %2453, i64* %RAX.i1036, align 8
  %2454 = add i64 %2453, 24
  %2455 = add i64 %2438, 14
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i64*
  %2457 = load i64, i64* %2456, align 8
  store i64 %2457, i64* %RAX.i1036, align 8
  %2458 = add i64 %2439, -52
  %2459 = add i64 %2438, 18
  store i64 %2459, i64* %3, align 8
  %2460 = inttoptr i64 %2458 to i32*
  %2461 = load i32, i32* %2460, align 4
  %2462 = sext i32 %2461 to i64
  %2463 = shl nsw i64 %2462, 4
  store i64 %2463, i64* %RCX.i1053, align 8
  %2464 = add i64 %2463, %2457
  store i64 %2464, i64* %RAX.i1036, align 8
  %2465 = icmp ult i64 %2464, %2457
  %2466 = icmp ult i64 %2464, %2463
  %2467 = or i1 %2465, %2466
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %14, align 1
  %2469 = trunc i64 %2464 to i32
  %2470 = and i32 %2469, 255
  %2471 = tail call i32 @llvm.ctpop.i32(i32 %2470)
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  %2474 = xor i8 %2473, 1
  store i8 %2474, i8* %21, align 1
  %2475 = xor i64 %2463, %2457
  %2476 = xor i64 %2475, %2464
  %2477 = lshr i64 %2476, 4
  %2478 = trunc i64 %2477 to i8
  %2479 = and i8 %2478, 1
  store i8 %2479, i8* %26, align 1
  %2480 = icmp eq i64 %2464, 0
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %29, align 1
  %2482 = lshr i64 %2464, 63
  %2483 = trunc i64 %2482 to i8
  store i8 %2483, i8* %32, align 1
  %2484 = lshr i64 %2457, 63
  %2485 = lshr i64 %2462, 59
  %2486 = and i64 %2485, 1
  %2487 = xor i64 %2482, %2484
  %2488 = xor i64 %2482, %2486
  %2489 = add nuw nsw i64 %2487, %2488
  %2490 = icmp eq i64 %2489, 2
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %38, align 1
  %2492 = add i64 %2464, 8
  %2493 = add i64 %2438, 29
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2492 to i64*
  %2495 = load i64, i64* %2494, align 8
  store i64 %2495, i64* %RDX.i854, align 8
  %2496 = add i64 %2438, 33
  store i64 %2496, i64* %3, align 8
  %2497 = load i64, i64* %2452, align 8
  store i64 %2497, i64* %RAX.i1036, align 8
  %2498 = add i64 %2497, 24
  %2499 = add i64 %2438, 37
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2498 to i64*
  %2501 = load i64, i64* %2500, align 8
  store i64 %2501, i64* %RAX.i1036, align 8
  %2502 = load i64, i64* %RBP.i, align 8
  %2503 = add i64 %2502, -52
  %2504 = add i64 %2438, 41
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i32*
  %2506 = load i32, i32* %2505, align 4
  %2507 = sext i32 %2506 to i64
  %2508 = shl nsw i64 %2507, 4
  store i64 %2508, i64* %RCX.i1053, align 8
  %2509 = add i64 %2508, %2501
  store i64 %2509, i64* %RAX.i1036, align 8
  %2510 = icmp ult i64 %2509, %2501
  %2511 = icmp ult i64 %2509, %2508
  %2512 = or i1 %2510, %2511
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %14, align 1
  %2514 = trunc i64 %2509 to i32
  %2515 = and i32 %2514, 255
  %2516 = tail call i32 @llvm.ctpop.i32(i32 %2515)
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  %2519 = xor i8 %2518, 1
  store i8 %2519, i8* %21, align 1
  %2520 = xor i64 %2508, %2501
  %2521 = xor i64 %2520, %2509
  %2522 = lshr i64 %2521, 4
  %2523 = trunc i64 %2522 to i8
  %2524 = and i8 %2523, 1
  store i8 %2524, i8* %26, align 1
  %2525 = icmp eq i64 %2509, 0
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %29, align 1
  %2527 = lshr i64 %2509, 63
  %2528 = trunc i64 %2527 to i8
  store i8 %2528, i8* %32, align 1
  %2529 = lshr i64 %2501, 63
  %2530 = lshr i64 %2507, 59
  %2531 = and i64 %2530, 1
  %2532 = xor i64 %2527, %2529
  %2533 = xor i64 %2527, %2531
  %2534 = add nuw nsw i64 %2532, %2533
  %2535 = icmp eq i64 %2534, 2
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %38, align 1
  %2537 = add i64 %2509, 4
  %2538 = add i64 %2438, 51
  store i64 %2538, i64* %3, align 8
  %2539 = inttoptr i64 %2537 to i32*
  %2540 = load i32, i32* %2539, align 4
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RCX.i1053, align 8
  %2542 = add i64 %2438, 4613
  %2543 = add i64 %2438, 56
  %2544 = load i64, i64* %6, align 8
  %2545 = add i64 %2544, -8
  %2546 = inttoptr i64 %2545 to i64*
  store i64 %2543, i64* %2546, align 8
  store i64 %2545, i64* %6, align 8
  store i64 %2542, i64* %3, align 8
  %call2_443d0e = tail call %struct.Memory* @sub_444ee0.check_pattern_hard(%struct.State* nonnull %0, i64 %2542, %struct.Memory* %MEMORY.13)
  %2547 = load i32, i32* %EAX.i1030, align 4
  %2548 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2549 = and i32 %2547, 255
  %2550 = tail call i32 @llvm.ctpop.i32(i32 %2549)
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = xor i8 %2552, 1
  store i8 %2553, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2554 = icmp eq i32 %2547, 0
  %2555 = zext i1 %2554 to i8
  store i8 %2555, i8* %29, align 1
  %2556 = lshr i32 %2547, 31
  %2557 = trunc i32 %2556 to i8
  store i8 %2557, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v162 = select i1 %2554, i64 146, i64 9
  %2558 = add i64 %2548, %.v162
  store i64 %2558, i64* %3, align 8
  br i1 %2554, label %block_.L_443da5, label %block_443d1c

block_443d1c:                                     ; preds = %block_.L_443cdb
  %2559 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2560 = and i32 %2559, 255
  %2561 = tail call i32 @llvm.ctpop.i32(i32 %2560)
  %2562 = trunc i32 %2561 to i8
  %2563 = and i8 %2562, 1
  %2564 = xor i8 %2563, 1
  store i8 %2564, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2565 = icmp eq i32 %2559, 0
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %29, align 1
  %2567 = lshr i32 %2559, 31
  %2568 = trunc i32 %2567 to i8
  store i8 %2568, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v163 = select i1 %2565, i64 14, i64 19
  %2569 = add i64 %2558, %.v163
  store i64 %2569, i64* %3, align 8
  br i1 %2565, label %block_443d2a, label %block_.L_443d2f

block_443d2a:                                     ; preds = %block_443d1c
  %2570 = add i64 %2569, 58
  store i64 %2570, i64* %3, align 8
  br label %block_.L_443d64

block_.L_443d2f:                                  ; preds = %block_443d1c
  store i64 ptrtoint (%G__0x57e10c_type* @G__0x57e10c to i64), i64* %RDI.i661, align 8
  %2571 = load i64, i64* %RBP.i, align 8
  %2572 = add i64 %2571, -16
  %2573 = add i64 %2569, 14
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2572 to i64*
  %2575 = load i64, i64* %2574, align 8
  store i64 %2575, i64* %RAX.i1036, align 8
  %2576 = add i64 %2575, 24
  %2577 = add i64 %2569, 18
  store i64 %2577, i64* %3, align 8
  %2578 = inttoptr i64 %2576 to i64*
  %2579 = load i64, i64* %2578, align 8
  store i64 %2579, i64* %RAX.i1036, align 8
  %2580 = add i64 %2571, -52
  %2581 = add i64 %2569, 22
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i32*
  %2583 = load i32, i32* %2582, align 4
  %2584 = sext i32 %2583 to i64
  %2585 = shl nsw i64 %2584, 4
  store i64 %2585, i64* %RCX.i1053, align 8
  %2586 = add i64 %2585, %2579
  store i64 %2586, i64* %RAX.i1036, align 8
  %2587 = icmp ult i64 %2586, %2579
  %2588 = icmp ult i64 %2586, %2585
  %2589 = or i1 %2587, %2588
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %14, align 1
  %2591 = trunc i64 %2586 to i32
  %2592 = and i32 %2591, 255
  %2593 = tail call i32 @llvm.ctpop.i32(i32 %2592)
  %2594 = trunc i32 %2593 to i8
  %2595 = and i8 %2594, 1
  %2596 = xor i8 %2595, 1
  store i8 %2596, i8* %21, align 1
  %2597 = xor i64 %2585, %2579
  %2598 = xor i64 %2597, %2586
  %2599 = lshr i64 %2598, 4
  %2600 = trunc i64 %2599 to i8
  %2601 = and i8 %2600, 1
  store i8 %2601, i8* %26, align 1
  %2602 = icmp eq i64 %2586, 0
  %2603 = zext i1 %2602 to i8
  store i8 %2603, i8* %29, align 1
  %2604 = lshr i64 %2586, 63
  %2605 = trunc i64 %2604 to i8
  store i8 %2605, i8* %32, align 1
  %2606 = lshr i64 %2579, 63
  %2607 = lshr i64 %2584, 59
  %2608 = and i64 %2607, 1
  %2609 = xor i64 %2604, %2606
  %2610 = xor i64 %2604, %2608
  %2611 = add nuw nsw i64 %2609, %2610
  %2612 = icmp eq i64 %2611, 2
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %38, align 1
  %2614 = add i64 %2586, 8
  %2615 = add i64 %2569, 33
  store i64 %2615, i64* %3, align 8
  %2616 = inttoptr i64 %2614 to i64*
  %2617 = load i64, i64* %2616, align 8
  store i64 %2617, i64* %RAX.i1036, align 8
  %2618 = add i64 %2617, 16
  %2619 = add i64 %2569, 37
  store i64 %2619, i64* %3, align 8
  %2620 = inttoptr i64 %2618 to i64*
  %2621 = load i64, i64* %2620, align 8
  store i64 %2621, i64* %RSI.i603, align 8
  %2622 = add i64 %2571, -56
  %2623 = add i64 %2569, 40
  store i64 %2623, i64* %3, align 8
  %2624 = inttoptr i64 %2622 to i32*
  %2625 = load i32, i32* %2624, align 4
  %2626 = zext i32 %2625 to i64
  store i64 %2626, i64* %RDX.i854, align 8
  %AL.i = bitcast %union.anon* %95 to i8*
  store i8 0, i8* %AL.i, align 1
  %2627 = add i64 %2569, 57473
  %2628 = add i64 %2569, 47
  %2629 = load i64, i64* %6, align 8
  %2630 = add i64 %2629, -8
  %2631 = inttoptr i64 %2630 to i64*
  store i64 %2628, i64* %2631, align 8
  store i64 %2630, i64* %6, align 8
  store i64 %2627, i64* %3, align 8
  %call2_443d59 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2627, %struct.Memory* %MEMORY.13)
  %2632 = load i64, i64* %RBP.i, align 8
  %2633 = add i64 %2632, -160
  %2634 = load i32, i32* %EAX.i1030, align 4
  %2635 = load i64, i64* %3, align 8
  %2636 = add i64 %2635, 6
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2633 to i32*
  store i32 %2634, i32* %2637, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_443d64

block_.L_443d64:                                  ; preds = %block_.L_443d2f, %block_443d2a
  %2638 = phi i64 [ %.pre129, %block_.L_443d2f ], [ %2570, %block_443d2a ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_443d59, %block_.L_443d2f ], [ %MEMORY.13, %block_443d2a ]
  %2639 = load i64, i64* %RBP.i, align 8
  %2640 = add i64 %2639, -16
  %2641 = add i64 %2638, 4
  store i64 %2641, i64* %3, align 8
  %2642 = inttoptr i64 %2640 to i64*
  %2643 = load i64, i64* %2642, align 8
  store i64 %2643, i64* %RAX.i1036, align 8
  %2644 = add i64 %2643, 24
  %2645 = add i64 %2638, 8
  store i64 %2645, i64* %3, align 8
  %2646 = inttoptr i64 %2644 to i64*
  %2647 = load i64, i64* %2646, align 8
  store i64 %2647, i64* %RAX.i1036, align 8
  %2648 = add i64 %2639, -52
  %2649 = add i64 %2638, 12
  store i64 %2649, i64* %3, align 8
  %2650 = inttoptr i64 %2648 to i32*
  %2651 = load i32, i32* %2650, align 4
  %2652 = sext i32 %2651 to i64
  %2653 = shl nsw i64 %2652, 4
  store i64 %2653, i64* %RCX.i1053, align 8
  %2654 = add i64 %2653, %2647
  store i64 %2654, i64* %RAX.i1036, align 8
  %2655 = icmp ult i64 %2654, %2647
  %2656 = icmp ult i64 %2654, %2653
  %2657 = or i1 %2655, %2656
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %14, align 1
  %2659 = trunc i64 %2654 to i32
  %2660 = and i32 %2659, 255
  %2661 = tail call i32 @llvm.ctpop.i32(i32 %2660)
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  %2664 = xor i8 %2663, 1
  store i8 %2664, i8* %21, align 1
  %2665 = xor i64 %2653, %2647
  %2666 = xor i64 %2665, %2654
  %2667 = lshr i64 %2666, 4
  %2668 = trunc i64 %2667 to i8
  %2669 = and i8 %2668, 1
  store i8 %2669, i8* %26, align 1
  %2670 = icmp eq i64 %2654, 0
  %2671 = zext i1 %2670 to i8
  store i8 %2671, i8* %29, align 1
  %2672 = lshr i64 %2654, 63
  %2673 = trunc i64 %2672 to i8
  store i8 %2673, i8* %32, align 1
  %2674 = lshr i64 %2647, 63
  %2675 = lshr i64 %2652, 59
  %2676 = and i64 %2675, 1
  %2677 = xor i64 %2672, %2674
  %2678 = xor i64 %2672, %2676
  %2679 = add nuw nsw i64 %2677, %2678
  %2680 = icmp eq i64 %2679, 2
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %38, align 1
  %2682 = add i64 %2654, 8
  %2683 = add i64 %2638, 23
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2682 to i64*
  %2685 = load i64, i64* %2684, align 8
  store i64 %2685, i64* %RAX.i1036, align 8
  %2686 = add i64 %2685, 120
  %2687 = add i64 %2638, 26
  store i64 %2687, i64* %3, align 8
  %2688 = inttoptr i64 %2686 to i32*
  %2689 = load i32, i32* %2688, align 4
  %2690 = and i32 %2689, 512
  %2691 = zext i32 %2690 to i64
  store i64 %2691, i64* %RDX.i854, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2692 = icmp eq i32 %2690, 0
  %.lobit142 = lshr exact i32 %2690, 9
  %2693 = trunc i32 %.lobit142 to i8
  %2694 = xor i8 %2693, 1
  store i8 %2694, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v164 = select i1 %2692, i64 53, i64 41
  %2695 = add i64 %2638, %.v164
  %2696 = load i64, i64* %RBP.i, align 8
  %2697 = add i64 %2696, -128
  %2698 = add i64 %2695, 7
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i32*
  br i1 %2692, label %block_.L_443d99, label %block_443d8d

block_443d8d:                                     ; preds = %block_.L_443d64
  store i32 0, i32* %2699, align 4
  %2700 = load i64, i64* %3, align 8
  %2701 = add i64 %2700, 12
  store i64 %2701, i64* %3, align 8
  br label %block_.L_443da0

block_.L_443d99:                                  ; preds = %block_.L_443d64
  store i32 2, i32* %2699, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_443da0

block_.L_443da0:                                  ; preds = %block_.L_443d99, %block_443d8d
  %2702 = phi i64 [ %.pre130, %block_.L_443d99 ], [ %2701, %block_443d8d ]
  %2703 = add i64 %2702, 24
  store i64 %2703, i64* %3, align 8
  %.pre131 = load i64, i64* %RBP.i, align 8
  br label %block_.L_443db8

block_.L_443da5:                                  ; preds = %block_443c6b, %block_.L_443cdb, %block_443cb2
  %2704 = phi i64 [ %2558, %block_.L_443cdb ], [ %2437, %block_443cb2 ], [ %2323, %block_443c6b ]
  %2705 = load i64, i64* %RBP.i, align 8
  %2706 = add i64 %2705, -52
  %2707 = add i64 %2704, 8
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i32*
  %2709 = load i32, i32* %2708, align 4
  %2710 = add i32 %2709, 1
  %2711 = zext i32 %2710 to i64
  store i64 %2711, i64* %RAX.i1036, align 8
  %2712 = icmp eq i32 %2709, -1
  %2713 = icmp eq i32 %2710, 0
  %2714 = or i1 %2712, %2713
  %2715 = zext i1 %2714 to i8
  store i8 %2715, i8* %14, align 1
  %2716 = and i32 %2710, 255
  %2717 = tail call i32 @llvm.ctpop.i32(i32 %2716)
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  store i8 %2720, i8* %21, align 1
  %2721 = xor i32 %2710, %2709
  %2722 = lshr i32 %2721, 4
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  store i8 %2724, i8* %26, align 1
  %2725 = zext i1 %2713 to i8
  store i8 %2725, i8* %29, align 1
  %2726 = lshr i32 %2710, 31
  %2727 = trunc i32 %2726 to i8
  store i8 %2727, i8* %32, align 1
  %2728 = lshr i32 %2709, 31
  %2729 = xor i32 %2726, %2728
  %2730 = add nuw nsw i32 %2729, %2726
  %2731 = icmp eq i32 %2730, 2
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %38, align 1
  %2733 = add i64 %2704, 14
  store i64 %2733, i64* %3, align 8
  store i32 %2710, i32* %2708, align 4
  %2734 = load i64, i64* %3, align 8
  %2735 = add i64 %2734, -344
  store i64 %2735, i64* %3, align 8
  br label %block_.L_443c5b

block_.L_443db8.loopexit:                         ; preds = %block_.L_443c5b
  br label %block_.L_443db8

block_.L_443db8:                                  ; preds = %block_.L_443db8.loopexit, %block_.L_443da0
  %2736 = phi i64 [ %2703, %block_.L_443da0 ], [ %2252, %block_.L_443db8.loopexit ]
  %2737 = phi i64 [ %.pre131, %block_.L_443da0 ], [ %2212, %block_.L_443db8.loopexit ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.16, %block_.L_443da0 ], [ %MEMORY.13, %block_.L_443db8.loopexit ]
  %2738 = add i64 %2737, -128
  %2739 = add i64 %2736, 3
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2738 to i32*
  %2741 = load i32, i32* %2740, align 4
  %2742 = zext i32 %2741 to i64
  store i64 %2742, i64* %RAX.i1036, align 8
  %2743 = add i64 %2737, -32
  %2744 = add i64 %2736, 7
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i64*
  %2746 = load i64, i64* %2745, align 8
  store i64 %2746, i64* %RCX.i1053, align 8
  %2747 = add i64 %2737, -48
  %2748 = add i64 %2736, 11
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i32*
  %2750 = load i32, i32* %2749, align 4
  %2751 = sext i32 %2750 to i64
  %2752 = shl nsw i64 %2751, 5
  store i64 %2752, i64* %RDX.i854, align 8
  %2753 = add i64 %2752, %2746
  store i64 %2753, i64* %RCX.i1053, align 8
  %2754 = icmp ult i64 %2753, %2746
  %2755 = icmp ult i64 %2753, %2752
  %2756 = or i1 %2754, %2755
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %14, align 1
  %2758 = trunc i64 %2753 to i32
  %2759 = and i32 %2758, 255
  %2760 = tail call i32 @llvm.ctpop.i32(i32 %2759)
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  %2763 = xor i8 %2762, 1
  store i8 %2763, i8* %21, align 1
  %2764 = xor i64 %2746, %2753
  %2765 = lshr i64 %2764, 4
  %2766 = trunc i64 %2765 to i8
  %2767 = and i8 %2766, 1
  store i8 %2767, i8* %26, align 1
  %2768 = icmp eq i64 %2753, 0
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %29, align 1
  %2770 = lshr i64 %2753, 63
  %2771 = trunc i64 %2770 to i8
  store i8 %2771, i8* %32, align 1
  %2772 = lshr i64 %2746, 63
  %2773 = lshr i64 %2751, 58
  %2774 = and i64 %2773, 1
  %2775 = xor i64 %2770, %2772
  %2776 = xor i64 %2770, %2774
  %2777 = add nuw nsw i64 %2775, %2776
  %2778 = icmp eq i64 %2777, 2
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %38, align 1
  %2780 = add i64 %2753, 16
  %2781 = add i64 %2736, 21
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i32*
  store i32 %2741, i32* %2782, align 4
  %2783 = load i64, i64* %3, align 8
  %2784 = add i64 %2783, 27
  store i64 %2784, i64* %3, align 8
  br label %block_.L_443de8

block_.L_443dd2:                                  ; preds = %block_.L_443c35
  %2785 = add i64 %2107, -32
  %2786 = add i64 %2175, 4
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2785 to i64*
  %2788 = load i64, i64* %2787, align 8
  store i64 %2788, i64* %RAX.i1036, align 8
  %2789 = add i64 %2107, -48
  %2790 = add i64 %2175, 8
  store i64 %2790, i64* %3, align 8
  %2791 = inttoptr i64 %2789 to i32*
  %2792 = load i32, i32* %2791, align 4
  %2793 = sext i32 %2792 to i64
  %2794 = shl nsw i64 %2793, 5
  store i64 %2794, i64* %RCX.i1053, align 8
  %2795 = add i64 %2794, %2788
  store i64 %2795, i64* %RAX.i1036, align 8
  %2796 = icmp ult i64 %2795, %2788
  %2797 = icmp ult i64 %2795, %2794
  %2798 = or i1 %2796, %2797
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %14, align 1
  %2800 = trunc i64 %2795 to i32
  %2801 = and i32 %2800, 255
  %2802 = tail call i32 @llvm.ctpop.i32(i32 %2801)
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  %2805 = xor i8 %2804, 1
  store i8 %2805, i8* %21, align 1
  %2806 = xor i64 %2788, %2795
  %2807 = lshr i64 %2806, 4
  %2808 = trunc i64 %2807 to i8
  %2809 = and i8 %2808, 1
  store i8 %2809, i8* %26, align 1
  %2810 = icmp eq i64 %2795, 0
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %29, align 1
  %2812 = lshr i64 %2795, 63
  %2813 = trunc i64 %2812 to i8
  store i8 %2813, i8* %32, align 1
  %2814 = lshr i64 %2788, 63
  %2815 = lshr i64 %2793, 58
  %2816 = and i64 %2815, 1
  %2817 = xor i64 %2812, %2814
  %2818 = xor i64 %2812, %2816
  %2819 = add nuw nsw i64 %2817, %2818
  %2820 = icmp eq i64 %2819, 2
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %38, align 1
  %2822 = add i64 %2795, 16
  %2823 = add i64 %2175, 22
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i32*
  store i32 2, i32* %2824, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_443de8

block_.L_443de8:                                  ; preds = %block_.L_443dd2, %block_.L_443db8
  %2825 = phi i64 [ %.pre132, %block_.L_443dd2 ], [ %2784, %block_.L_443db8 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.13, %block_.L_443dd2 ], [ %MEMORY.19, %block_.L_443db8 ]
  %2826 = add i64 %2825, 5
  store i64 %2826, i64* %3, align 8
  br label %block_.L_443ded

block_.L_443ded:                                  ; preds = %block_.L_443de8, %block_443c1a
  %storemerge50 = phi i64 [ %2163, %block_443c1a ], [ %2826, %block_.L_443de8 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.13, %block_443c1a ], [ %MEMORY.20, %block_.L_443de8 ]
  %2827 = load i64, i64* %RBP.i, align 8
  %2828 = add i64 %2827, -64
  %2829 = add i64 %storemerge50, 4
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i64*
  %2831 = load i64, i64* %2830, align 8
  store i64 %2831, i64* %RAX.i1036, align 8
  %2832 = add i64 %2831, 120
  %2833 = add i64 %storemerge50, 7
  store i64 %2833, i64* %3, align 8
  %2834 = inttoptr i64 %2832 to i32*
  %2835 = load i32, i32* %2834, align 4
  %2836 = and i32 %2835, 8192
  %2837 = zext i32 %2836 to i64
  store i64 %2837, i64* %RCX.i1053, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2838 = icmp eq i32 %2836, 0
  %.lobit137 = lshr exact i32 %2836, 13
  %2839 = trunc i32 %.lobit137 to i8
  %2840 = xor i8 %2839, 1
  store i8 %2840, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v138 = select i1 %2838, i64 49, i64 22
  %2841 = add i64 %storemerge50, %.v138
  %2842 = add i64 %2827, -32
  %2843 = add i64 %2841, 4
  store i64 %2843, i64* %3, align 8
  %2844 = inttoptr i64 %2842 to i64*
  %2845 = load i64, i64* %2844, align 8
  store i64 %2845, i64* %RAX.i1036, align 8
  %2846 = add i64 %2827, -48
  %2847 = add i64 %2841, 8
  store i64 %2847, i64* %3, align 8
  %2848 = inttoptr i64 %2846 to i32*
  %2849 = load i32, i32* %2848, align 4
  %2850 = sext i32 %2849 to i64
  %2851 = shl nsw i64 %2850, 5
  store i64 %2851, i64* %RCX.i1053, align 8
  %2852 = add i64 %2851, %2845
  store i64 %2852, i64* %RAX.i1036, align 8
  %2853 = icmp ult i64 %2852, %2845
  %2854 = icmp ult i64 %2852, %2851
  %2855 = or i1 %2853, %2854
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %14, align 1
  %2857 = trunc i64 %2852 to i32
  %2858 = and i32 %2857, 255
  %2859 = tail call i32 @llvm.ctpop.i32(i32 %2858)
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  %2862 = xor i8 %2861, 1
  store i8 %2862, i8* %21, align 1
  %2863 = xor i64 %2845, %2852
  %2864 = lshr i64 %2863, 4
  %2865 = trunc i64 %2864 to i8
  %2866 = and i8 %2865, 1
  store i8 %2866, i8* %26, align 1
  %2867 = icmp eq i64 %2852, 0
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %29, align 1
  %2869 = lshr i64 %2852, 63
  %2870 = trunc i64 %2869 to i8
  store i8 %2870, i8* %32, align 1
  %2871 = lshr i64 %2845, 63
  %2872 = lshr i64 %2850, 58
  %2873 = and i64 %2872, 1
  %2874 = xor i64 %2869, %2871
  %2875 = xor i64 %2869, %2873
  %2876 = add nuw nsw i64 %2874, %2875
  %2877 = icmp eq i64 %2876, 2
  %2878 = zext i1 %2877 to i8
  store i8 %2878, i8* %38, align 1
  %2879 = add i64 %2852, 20
  %2880 = add i64 %2841, 22
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2879 to i32*
  br i1 %2838, label %block_.L_443e1e, label %block_443e03

block_443e03:                                     ; preds = %block_.L_443ded
  store i32 1, i32* %2881, align 4
  %2882 = load i64, i64* %3, align 8
  %2883 = add i64 %2882, 27
  store i64 %2883, i64* %3, align 8
  br label %block_.L_443e34

block_.L_443e1e:                                  ; preds = %block_.L_443ded
  store i32 0, i32* %2881, align 4
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_443e34

block_.L_443e34:                                  ; preds = %block_.L_443e1e, %block_443e03
  %2884 = phi i64 [ %.pre133, %block_.L_443e1e ], [ %2883, %block_443e03 ]
  %2885 = add i64 %2884, 24
  store i64 %2885, i64* %3, align 8
  %.pre134 = load i64, i64* %RBP.i, align 8
  br label %block_.L_443e4c

block_.L_443e39:                                  ; preds = %block_.L_443b55
  %2886 = add i64 %1898, 5
  store i64 %2886, i64* %3, align 8
  br label %block_.L_443e3e

block_.L_443e3e:                                  ; preds = %block_.L_443e39, %block_443b19
  %storemerge = phi i64 [ %1825, %block_443b19 ], [ %2886, %block_.L_443e39 ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.8, %block_443b19 ], [ %call2_443b62, %block_.L_443e39 ]
  %2887 = load i64, i64* %RBP.i, align 8
  %2888 = add i64 %2887, -40
  %2889 = add i64 %storemerge, 3
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i32*
  %2891 = load i32, i32* %2890, align 4
  %2892 = add i32 %2891, 1
  %2893 = zext i32 %2892 to i64
  store i64 %2893, i64* %RAX.i1036, align 8
  %2894 = icmp eq i32 %2891, -1
  %2895 = icmp eq i32 %2892, 0
  %2896 = or i1 %2894, %2895
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %14, align 1
  %2898 = and i32 %2892, 255
  %2899 = tail call i32 @llvm.ctpop.i32(i32 %2898)
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  %2902 = xor i8 %2901, 1
  store i8 %2902, i8* %21, align 1
  %2903 = xor i32 %2892, %2891
  %2904 = lshr i32 %2903, 4
  %2905 = trunc i32 %2904 to i8
  %2906 = and i8 %2905, 1
  store i8 %2906, i8* %26, align 1
  %2907 = zext i1 %2895 to i8
  store i8 %2907, i8* %29, align 1
  %2908 = lshr i32 %2892, 31
  %2909 = trunc i32 %2908 to i8
  store i8 %2909, i8* %32, align 1
  %2910 = lshr i32 %2891, 31
  %2911 = xor i32 %2908, %2910
  %2912 = add nuw nsw i32 %2911, %2908
  %2913 = icmp eq i32 %2912, 2
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %38, align 1
  %2915 = add i64 %storemerge, 9
  store i64 %2915, i64* %3, align 8
  store i32 %2892, i32* %2890, align 4
  %2916 = load i64, i64* %3, align 8
  %2917 = add i64 %2916, -1728
  store i64 %2917, i64* %3, align 8
  br label %block_.L_443787

block_.L_443e4c.loopexit:                         ; preds = %block_.L_443787
  br label %block_.L_443e4c

block_.L_443e4c:                                  ; preds = %block_.L_443e4c.loopexit, %block_.L_443e34
  %2918 = phi i64 [ %2885, %block_.L_443e34 ], [ %164, %block_.L_443e4c.loopexit ]
  %2919 = phi i64 [ %.pre134, %block_.L_443e34 ], [ %124, %block_.L_443e4c.loopexit ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.21, %block_.L_443e34 ], [ %MEMORY.0, %block_.L_443e4c.loopexit ]
  %2920 = add i64 %2919, -88
  %2921 = add i64 %2918, 4
  store i64 %2921, i64* %3, align 8
  %2922 = inttoptr i64 %2920 to i64*
  %2923 = load i64, i64* %2922, align 8
  store i64 %2923, i64* %RAX.i1036, align 8
  store i64 %2923, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %2924 = add i64 %2919, -92
  %2925 = add i64 %2918, 15
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2924 to i32*
  %2927 = load i32, i32* %2926, align 4
  %2928 = zext i32 %2927 to i64
  store i64 %2928, i64* %RCX.i1053, align 8
  store i32 %2927, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %2929 = add i64 %2919, -40
  %2930 = add i64 %2918, 25
  store i64 %2930, i64* %3, align 8
  %2931 = inttoptr i64 %2929 to i32*
  %2932 = load i32, i32* %2931, align 4
  %2933 = add i32 %2932, 1
  %2934 = zext i32 %2933 to i64
  store i64 %2934, i64* %RCX.i1053, align 8
  %2935 = icmp eq i32 %2932, -1
  %2936 = icmp eq i32 %2933, 0
  %2937 = or i1 %2935, %2936
  %2938 = zext i1 %2937 to i8
  store i8 %2938, i8* %14, align 1
  %2939 = and i32 %2933, 255
  %2940 = tail call i32 @llvm.ctpop.i32(i32 %2939)
  %2941 = trunc i32 %2940 to i8
  %2942 = and i8 %2941, 1
  %2943 = xor i8 %2942, 1
  store i8 %2943, i8* %21, align 1
  %2944 = xor i32 %2933, %2932
  %2945 = lshr i32 %2944, 4
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  store i8 %2947, i8* %26, align 1
  %2948 = zext i1 %2936 to i8
  store i8 %2948, i8* %29, align 1
  %2949 = lshr i32 %2933, 31
  %2950 = trunc i32 %2949 to i8
  store i8 %2950, i8* %32, align 1
  %2951 = lshr i32 %2932, 31
  %2952 = xor i32 %2949, %2951
  %2953 = add nuw nsw i32 %2952, %2949
  %2954 = icmp eq i32 %2953, 2
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %38, align 1
  %2956 = add i64 %2919, -16
  %2957 = add i64 %2918, 32
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2956 to i64*
  %2959 = load i64, i64* %2958, align 8
  store i64 %2959, i64* %RAX.i1036, align 8
  %2960 = add i64 %2959, 12
  %2961 = add i64 %2918, 35
  store i64 %2961, i64* %3, align 8
  %2962 = inttoptr i64 %2960 to i32*
  store i32 %2933, i32* %2962, align 4
  %2963 = load i64, i64* %RBP.i, align 8
  %2964 = add i64 %2963, -40
  %2965 = load i64, i64* %3, align 8
  %2966 = add i64 %2965, 3
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2964 to i32*
  %2968 = load i32, i32* %2967, align 4
  %2969 = add i32 %2968, 1
  %2970 = zext i32 %2969 to i64
  store i64 %2970, i64* %RCX.i1053, align 8
  %2971 = icmp eq i32 %2968, -1
  %2972 = icmp eq i32 %2969, 0
  %2973 = or i1 %2971, %2972
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %14, align 1
  %2975 = and i32 %2969, 255
  %2976 = tail call i32 @llvm.ctpop.i32(i32 %2975)
  %2977 = trunc i32 %2976 to i8
  %2978 = and i8 %2977, 1
  %2979 = xor i8 %2978, 1
  store i8 %2979, i8* %21, align 1
  %2980 = xor i32 %2969, %2968
  %2981 = lshr i32 %2980, 4
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  store i8 %2983, i8* %26, align 1
  %2984 = zext i1 %2972 to i8
  store i8 %2984, i8* %29, align 1
  %2985 = lshr i32 %2969, 31
  %2986 = trunc i32 %2985 to i8
  store i8 %2986, i8* %32, align 1
  %2987 = lshr i32 %2968, 31
  %2988 = xor i32 %2985, %2987
  %2989 = add nuw nsw i32 %2988, %2985
  %2990 = icmp eq i32 %2989, 2
  %2991 = zext i1 %2990 to i8
  store i8 %2991, i8* %38, align 1
  %2992 = add i64 %2963, -16
  %2993 = add i64 %2965, 10
  store i64 %2993, i64* %3, align 8
  %2994 = inttoptr i64 %2992 to i64*
  %2995 = load i64, i64* %2994, align 8
  store i64 %2995, i64* %RAX.i1036, align 8
  %2996 = add i64 %2995, 8
  %2997 = add i64 %2965, 13
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i32*
  store i32 %2969, i32* %2998, align 4
  %2999 = load i64, i64* %RBP.i, align 8
  %3000 = add i64 %2999, -76
  %3001 = load i64, i64* %3, align 8
  %3002 = add i64 %3001, 3
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3000 to i32*
  %3004 = load i32, i32* %3003, align 4
  %3005 = zext i32 %3004 to i64
  store i64 %3005, i64* %RCX.i1053, align 8
  %3006 = add i64 %2999, -4
  %3007 = add i64 %3001, 6
  store i64 %3007, i64* %3, align 8
  %3008 = inttoptr i64 %3006 to i32*
  store i32 %3004, i32* %3008, align 4
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_443e82

block_.L_443e82:                                  ; preds = %block_.L_443e4c, %block_4439cc
  %3009 = phi i64 [ %.pre135, %block_.L_443e4c ], [ %1351, %block_4439cc ]
  %MEMORY.25 = phi %struct.Memory* [ %MEMORY.24, %block_.L_443e4c ], [ %1282, %block_4439cc ]
  %3010 = load i64, i64* %RBP.i, align 8
  %3011 = add i64 %3010, -4
  %3012 = add i64 %3009, 3
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i32*
  %3014 = load i32, i32* %3013, align 4
  %3015 = zext i32 %3014 to i64
  store i64 %3015, i64* %RAX.i1036, align 8
  %3016 = load i64, i64* %6, align 8
  %3017 = add i64 %3016, 160
  store i64 %3017, i64* %6, align 8
  %3018 = icmp ugt i64 %3016, -161
  %3019 = zext i1 %3018 to i8
  store i8 %3019, i8* %14, align 1
  %3020 = trunc i64 %3017 to i32
  %3021 = and i32 %3020, 255
  %3022 = tail call i32 @llvm.ctpop.i32(i32 %3021)
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  %3025 = xor i8 %3024, 1
  store i8 %3025, i8* %21, align 1
  %3026 = xor i64 %3017, %3016
  %3027 = lshr i64 %3026, 4
  %3028 = trunc i64 %3027 to i8
  %3029 = and i8 %3028, 1
  store i8 %3029, i8* %26, align 1
  %3030 = icmp eq i64 %3017, 0
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %29, align 1
  %3032 = lshr i64 %3017, 63
  %3033 = trunc i64 %3032 to i8
  store i8 %3033, i8* %32, align 1
  %3034 = lshr i64 %3016, 63
  %3035 = xor i64 %3032, %3034
  %3036 = add nuw nsw i64 %3035, %3032
  %3037 = icmp eq i64 %3036, 2
  %3038 = zext i1 %3037 to i8
  store i8 %3038, i8* %38, align 1
  %3039 = add i64 %3009, 11
  store i64 %3039, i64* %3, align 8
  %3040 = add i64 %3016, 168
  %3041 = inttoptr i64 %3017 to i64*
  %3042 = load i64, i64* %3041, align 8
  store i64 %3042, i64* %RBP.i, align 8
  store i64 %3040, i64* %6, align 8
  %3043 = add i64 %3009, 12
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3040 to i64*
  %3045 = load i64, i64* %3044, align 8
  store i64 %3045, i64* %3, align 8
  %3046 = add i64 %3016, 176
  store i64 %3046, i64* %6, align 8
  ret %struct.Memory* %MEMORY.25
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
define %struct.Memory* @routine_subq__0xa0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -160
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 160
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
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0ef8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0eec___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 12
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jge_.L_443e4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
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
  %23 = lshr i64 %3, 59
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
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x7c__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 124
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_movl__edx__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_cmpl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jl_.L_443997(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
define %struct.Memory* @routine_jle_.L_44398a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -112
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  %12 = load float, float* %11, align 4
  %13 = fcmp uno float %10, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %10, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %10, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %10, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %10, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_443886(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_ja_.L_4438e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp eq i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4438b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_4438b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_4438e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_443977(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jp_.L_443977(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_cmpl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -108
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
define %struct.Memory* @routine_jge_.L_443977(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 60
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 240
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
  %23 = lshr i64 %3, 59
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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
define %struct.Memory* @routine_movq___rcx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movl__esi__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44397c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443808(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x60__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -96
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x24__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -36
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_443a05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl__eax__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
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
define %struct.Memory* @routine_jmpq_.L_443e82(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_443a32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_443a32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_443aa3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57dd2e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dd2e_type* @G__0x57dd2e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc1a___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3098, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c8be___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c8be_type* @G__0x57c8be to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movq__rdx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x84__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x90__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movl_MINUS0x98__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jge_.L_443aff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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
define %struct.Memory* @routine_je_.L_443ae7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jg_.L_443aec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_443aff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443af1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443aaa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_443b1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_443e3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_443b2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_443b55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc21___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3105, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e106___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e106_type* @G__0x57e106 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_callq_.check_pattern_hard(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_443e39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 5
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to float*
  %8 = load float, float* %7, align 4
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fcmp ogt float %10, 0x41E0000000000000
  %12 = fptosi float %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_443bd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_443c04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e0a3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e0a3_type* @G__0x57e0a3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl_0x78__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_andl__0x200___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 512
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 9
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_443c35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443ded(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x800___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2048
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 11
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_443dd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jge_.L_443db8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jne_.L_443da5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x78__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_andl__0x200___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 512
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 9
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
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
define %struct.Memory* @routine_jne_.L_443cdb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x800___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2048
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 11
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_443da5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_443d2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_443d64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e10c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e10c_type* @G__0x57e10c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_443d99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443da0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443db8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443daa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443c5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443de8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x2000___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 8192
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 13
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_443e1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443e34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443e4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_443787(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl__ecx__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_addq__0xa0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 160
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -161
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
