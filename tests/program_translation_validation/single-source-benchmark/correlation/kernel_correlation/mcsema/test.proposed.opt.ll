; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x47b__rip__type = type <{ [8 x i8] }>
%G_0x59f__rip__type = type <{ [8 x i8] }>
%G_0x6ae__rip__type = type <{ [8 x i8] }>
%G_0x868__rip__type = type <{ [8 x i8] }>
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
@G_0x47b__rip_ = local_unnamed_addr global %G_0x47b__rip__type zeroinitializer
@G_0x59f__rip_ = local_unnamed_addr global %G_0x59f__rip__type zeroinitializer
@G_0x6ae__rip_ = local_unnamed_addr global %G_0x6ae__rip__type zeroinitializer
@G_0x868__rip_ = local_unnamed_addr global %G_0x868__rip__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_correlation(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %RSP.i383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -88
  store i64 %11, i64* %RSP.i383, align 8
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %41 = load i64, i64* bitcast (%G_0x868__rip__type* @G_0x868__rip_ to i64*), align 8
  %42 = bitcast %union.VectorReg* %40 to double*
  %43 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %41, i64* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %45 = bitcast i64* %44 to double*
  store double 0.000000e+00, double* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %46 to i32*
  %47 = add i64 %7, -12
  %48 = load i32, i32* %EDI.i, align 4
  %49 = add i64 %10, 18
  store i64 %49, i64* %PC.i, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -8
  %54 = load i32, i32* %ESI.i, align 4
  %55 = load i64, i64* %PC.i, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %PC.i, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -16
  %61 = load i64, i64* %PC.i, align 8
  %62 = add i64 %61, 5
  store i64 %62, i64* %PC.i, align 8
  %63 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  %64 = load i64, i64* %63, align 1
  %65 = inttoptr i64 %60 to i64*
  store i64 %64, i64* %65, align 8
  %RDX.i664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -24
  %68 = load i64, i64* %RDX.i664, align 8
  %69 = load i64, i64* %PC.i, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC.i, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %RCX.i661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -32
  %74 = load i64, i64* %RCX.i661, align 8
  %75 = load i64, i64* %PC.i, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %PC.i, align 8
  %77 = inttoptr i64 %73 to i64*
  store i64 %74, i64* %77, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -40
  %80 = load i64, i64* %R8.i, align 8
  %81 = load i64, i64* %PC.i, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC.i, align 8
  %83 = inttoptr i64 %79 to i64*
  store i64 %80, i64* %83, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -48
  %86 = load i64, i64* %R9.i, align 8
  %87 = load i64, i64* %PC.i, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %PC.i, align 8
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -72
  %92 = load i64, i64* %PC.i, align 8
  %93 = add i64 %92, 5
  store i64 %93, i64* %PC.i, align 8
  %94 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0
  %95 = load i64, i64* %94, align 1
  %96 = inttoptr i64 %91 to i64*
  store i64 %95, i64* %96, align 8
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -56
  %99 = load i64, i64* %PC.i, align 8
  %100 = add i64 %99, 7
  store i64 %100, i64* %PC.i, align 8
  %101 = inttoptr i64 %98 to i32*
  store i32 0, i32* %101, align 4
  %RAX.i649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %102 = bitcast %union.VectorReg* %58 to i8*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %104 = bitcast %union.VectorReg* %58 to i32*
  %105 = getelementptr inbounds i8, i8* %102, i64 4
  %106 = bitcast i8* %105 to i32*
  %107 = bitcast i64* %103 to i32*
  %108 = getelementptr inbounds i8, i8* %102, i64 12
  %109 = bitcast i8* %108 to i32*
  %110 = bitcast %union.VectorReg* %58 to double*
  %111 = bitcast i64* %103 to double*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400bd7

block_.L_400bd7:                                  ; preds = %block_.L_400c41, %entry
  %112 = phi i64 [ %349, %block_.L_400c41 ], [ %.pre, %entry ]
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -56
  %115 = add i64 %112, 3
  store i64 %115, i64* %PC.i, align 8
  %116 = inttoptr i64 %114 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX.i649, align 8
  %119 = add i64 %113, -4
  %120 = add i64 %112, 6
  store i64 %120, i64* %PC.i, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %117, %122
  %124 = icmp ult i32 %117, %122
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %14, align 1
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1
  %131 = xor i32 %122, %117
  %132 = xor i32 %131, %123
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %27, align 1
  %136 = icmp eq i32 %123, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %30, align 1
  %138 = lshr i32 %123, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %33, align 1
  %140 = lshr i32 %117, 31
  %141 = lshr i32 %122, 31
  %142 = xor i32 %141, %140
  %143 = xor i32 %138, %140
  %144 = add nuw nsw i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %39, align 1
  %147 = icmp ne i8 %139, 0
  %148 = xor i1 %147, %145
  %.v = select i1 %148, i64 12, i64 147
  %149 = add i64 %112, %.v
  store i64 %149, i64* %3, align 8
  br i1 %148, label %block_400be3, label %block_.L_400c6a

block_400be3:                                     ; preds = %block_.L_400bd7
  store i32 0, i32* %104, align 1
  store i32 0, i32* %106, align 1
  store i32 0, i32* %107, align 1
  store i32 0, i32* %109, align 1
  %150 = add i64 %113, -40
  %151 = add i64 %149, 7
  store i64 %151, i64* %PC.i, align 8
  %152 = inttoptr i64 %150 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX.i649, align 8
  %154 = add i64 %149, 11
  store i64 %154, i64* %PC.i, align 8
  %155 = load i32, i32* %116, align 4
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %RCX.i661, align 8
  %157 = shl nsw i64 %156, 3
  %158 = add i64 %157, %153
  %159 = add i64 %149, 16
  store i64 %159, i64* %PC.i, align 8
  %160 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  %161 = load i64, i64* %160, align 1
  %162 = inttoptr i64 %158 to i64*
  store i64 %161, i64* %162, align 8
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -52
  %165 = load i64, i64* %PC.i, align 8
  %166 = add i64 %165, 7
  store i64 %166, i64* %PC.i, align 8
  %167 = inttoptr i64 %164 to i32*
  store i32 0, i32* %167, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400bfa

block_.L_400bfa:                                  ; preds = %block_400c06, %block_400be3
  %168 = phi i64 [ %296, %block_400c06 ], [ %.pre1, %block_400be3 ]
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -52
  %171 = add i64 %168, 3
  store i64 %171, i64* %PC.i, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RAX.i649, align 8
  %175 = add i64 %169, -8
  %176 = add i64 %168, 6
  store i64 %176, i64* %PC.i, align 8
  %177 = inttoptr i64 %175 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = sub i32 %173, %178
  %180 = icmp ult i32 %173, %178
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %14, align 1
  %182 = and i32 %179, 255
  %183 = tail call i32 @llvm.ctpop.i32(i32 %182)
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  %186 = xor i8 %185, 1
  store i8 %186, i8* %21, align 1
  %187 = xor i32 %178, %173
  %188 = xor i32 %187, %179
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %27, align 1
  %192 = icmp eq i32 %179, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %30, align 1
  %194 = lshr i32 %179, 31
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %33, align 1
  %196 = lshr i32 %173, 31
  %197 = lshr i32 %178, 31
  %198 = xor i32 %197, %196
  %199 = xor i32 %194, %196
  %200 = add nuw nsw i32 %199, %198
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %39, align 1
  %203 = icmp ne i8 %195, 0
  %204 = xor i1 %203, %201
  %.v11 = select i1 %204, i64 12, i64 71
  %205 = add i64 %168, %.v11
  store i64 %205, i64* %3, align 8
  br i1 %204, label %block_400c06, label %block_.L_400c41

block_400c06:                                     ; preds = %block_.L_400bfa
  %206 = add i64 %169, -24
  %207 = add i64 %205, 4
  store i64 %207, i64* %PC.i, align 8
  %208 = inttoptr i64 %206 to i64*
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %RAX.i649, align 8
  %210 = add i64 %205, 8
  store i64 %210, i64* %PC.i, align 8
  %211 = load i32, i32* %172, align 4
  %212 = sext i32 %211 to i64
  %213 = mul nsw i64 %212, 8000
  store i64 %213, i64* %RCX.i661, align 8
  %214 = lshr i64 %213, 63
  %215 = add i64 %213, %209
  store i64 %215, i64* %RAX.i649, align 8
  %216 = icmp ult i64 %215, %209
  %217 = icmp ult i64 %215, %213
  %218 = or i1 %216, %217
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %14, align 1
  %220 = trunc i64 %215 to i32
  %221 = and i32 %220, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %21, align 1
  %226 = xor i64 %209, %215
  %227 = lshr i64 %226, 4
  %228 = trunc i64 %227 to i8
  %229 = and i8 %228, 1
  store i8 %229, i8* %27, align 1
  %230 = icmp eq i64 %215, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %30, align 1
  %232 = lshr i64 %215, 63
  %233 = trunc i64 %232 to i8
  store i8 %233, i8* %33, align 1
  %234 = lshr i64 %209, 63
  %235 = xor i64 %232, %234
  %236 = xor i64 %232, %214
  %237 = add nuw nsw i64 %235, %236
  %238 = icmp eq i64 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %39, align 1
  %240 = add i64 %169, -56
  %241 = add i64 %205, 22
  store i64 %241, i64* %PC.i, align 8
  %242 = inttoptr i64 %240 to i32*
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  store i64 %244, i64* %RCX.i661, align 8
  %245 = shl nsw i64 %244, 3
  %246 = add i64 %245, %215
  %247 = add i64 %205, 27
  store i64 %247, i64* %PC.i, align 8
  %248 = inttoptr i64 %246 to double*
  %249 = load double, double* %248, align 8
  store double %249, double* %110, align 1
  store double 0.000000e+00, double* %111, align 1
  %250 = add i64 %169, -40
  %251 = add i64 %205, 31
  store i64 %251, i64* %PC.i, align 8
  %252 = inttoptr i64 %250 to i64*
  %253 = load i64, i64* %252, align 8
  store i64 %253, i64* %RAX.i649, align 8
  %254 = add i64 %205, 35
  store i64 %254, i64* %PC.i, align 8
  %255 = load i32, i32* %242, align 4
  %256 = sext i32 %255 to i64
  store i64 %256, i64* %RCX.i661, align 8
  %257 = shl nsw i64 %256, 3
  %258 = add i64 %257, %253
  %259 = add i64 %205, 40
  store i64 %259, i64* %PC.i, align 8
  %260 = inttoptr i64 %258 to double*
  %261 = load double, double* %260, align 8
  %262 = fadd double %249, %261
  store double %262, double* %110, align 1
  store i64 0, i64* %103, align 1
  %263 = add i64 %205, 45
  store i64 %263, i64* %PC.i, align 8
  store double %262, double* %260, align 8
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -52
  %266 = load i64, i64* %PC.i, align 8
  %267 = add i64 %266, 3
  store i64 %267, i64* %PC.i, align 8
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %269, 1
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX.i649, align 8
  %272 = icmp eq i32 %269, -1
  %273 = icmp eq i32 %270, 0
  %274 = or i1 %272, %273
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %14, align 1
  %276 = and i32 %270, 255
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %21, align 1
  %281 = xor i32 %269, %270
  %282 = lshr i32 %281, 4
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  store i8 %284, i8* %27, align 1
  %285 = icmp eq i32 %270, 0
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %30, align 1
  %287 = lshr i32 %270, 31
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* %33, align 1
  %289 = lshr i32 %269, 31
  %290 = xor i32 %287, %289
  %291 = add nuw nsw i32 %290, %287
  %292 = icmp eq i32 %291, 2
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %39, align 1
  %294 = add i64 %266, 9
  store i64 %294, i64* %PC.i, align 8
  store i32 %270, i32* %268, align 4
  %295 = load i64, i64* %PC.i, align 8
  %296 = add i64 %295, -66
  store i64 %296, i64* %3, align 8
  br label %block_.L_400bfa

block_.L_400c41:                                  ; preds = %block_.L_400bfa
  %297 = add i64 %169, -16
  %298 = add i64 %205, 5
  store i64 %298, i64* %PC.i, align 8
  %299 = inttoptr i64 %297 to double*
  %300 = load double, double* %299, align 8
  store double %300, double* %110, align 1
  store double 0.000000e+00, double* %111, align 1
  %301 = add i64 %169, -40
  %302 = add i64 %205, 9
  store i64 %302, i64* %PC.i, align 8
  %303 = inttoptr i64 %301 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %RAX.i649, align 8
  %305 = add i64 %169, -56
  %306 = add i64 %205, 13
  store i64 %306, i64* %PC.i, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  store i64 %309, i64* %RCX.i661, align 8
  %310 = shl nsw i64 %309, 3
  %311 = add i64 %310, %304
  %312 = add i64 %205, 18
  store i64 %312, i64* %PC.i, align 8
  %313 = inttoptr i64 %311 to double*
  %314 = load double, double* %313, align 8
  %315 = fdiv double %314, %300
  store double %315, double* %42, align 1
  store i64 0, i64* %44, align 1
  %316 = add i64 %205, 27
  store i64 %316, i64* %PC.i, align 8
  store double %315, double* %313, align 8
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -56
  %319 = load i64, i64* %PC.i, align 8
  %320 = add i64 %319, 3
  store i64 %320, i64* %PC.i, align 8
  %321 = inttoptr i64 %318 to i32*
  %322 = load i32, i32* %321, align 4
  %323 = add i32 %322, 1
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX.i649, align 8
  %325 = icmp eq i32 %322, -1
  %326 = icmp eq i32 %323, 0
  %327 = or i1 %325, %326
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %14, align 1
  %329 = and i32 %323, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %21, align 1
  %334 = xor i32 %322, %323
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %27, align 1
  %338 = icmp eq i32 %323, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %30, align 1
  %340 = lshr i32 %323, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %33, align 1
  %342 = lshr i32 %322, 31
  %343 = xor i32 %340, %342
  %344 = add nuw nsw i32 %343, %340
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %39, align 1
  %347 = add i64 %319, 9
  store i64 %347, i64* %PC.i, align 8
  store i32 %323, i32* %321, align 4
  %348 = load i64, i64* %PC.i, align 8
  %349 = add i64 %348, -142
  store i64 %349, i64* %3, align 8
  br label %block_.L_400bd7

block_.L_400c6a:                                  ; preds = %block_.L_400bd7
  %350 = add i64 %149, 7
  store i64 %350, i64* %PC.i, align 8
  store i32 0, i32* %116, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c71

block_.L_400c71:                                  ; preds = %block_.L_400d8e, %block_.L_400c6a
  %351 = phi i64 [ %.pre2, %block_.L_400c6a ], [ %800, %block_.L_400d8e ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_400c6a ], [ %717, %block_.L_400d8e ]
  %352 = load i64, i64* %RBP.i, align 8
  %353 = add i64 %352, -56
  %354 = add i64 %351, 3
  store i64 %354, i64* %PC.i, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX.i649, align 8
  %358 = add i64 %352, -4
  %359 = add i64 %351, 6
  store i64 %359, i64* %PC.i, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = sub i32 %356, %361
  %363 = icmp ult i32 %356, %361
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %14, align 1
  %365 = and i32 %362, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %21, align 1
  %370 = xor i32 %361, %356
  %371 = xor i32 %370, %362
  %372 = lshr i32 %371, 4
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  store i8 %374, i8* %27, align 1
  %375 = icmp eq i32 %362, 0
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %30, align 1
  %377 = lshr i32 %362, 31
  %378 = trunc i32 %377 to i8
  store i8 %378, i8* %33, align 1
  %379 = lshr i32 %356, 31
  %380 = lshr i32 %361, 31
  %381 = xor i32 %380, %379
  %382 = xor i32 %377, %379
  %383 = add nuw nsw i32 %382, %381
  %384 = icmp eq i32 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %39, align 1
  %386 = icmp ne i8 %378, 0
  %387 = xor i1 %386, %384
  %.v12 = select i1 %387, i64 12, i64 317
  %388 = add i64 %351, %.v12
  store i64 %388, i64* %3, align 8
  br i1 %387, label %block_400c7d, label %block_.L_400dae

block_400c7d:                                     ; preds = %block_.L_400c71
  store i32 0, i32* %104, align 1
  store i32 0, i32* %106, align 1
  store i32 0, i32* %107, align 1
  store i32 0, i32* %109, align 1
  %389 = add i64 %352, -48
  %390 = add i64 %388, 7
  store i64 %390, i64* %PC.i, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %RAX.i649, align 8
  %393 = add i64 %388, 11
  store i64 %393, i64* %PC.i, align 8
  %394 = load i32, i32* %355, align 4
  %395 = sext i32 %394 to i64
  store i64 %395, i64* %RCX.i661, align 8
  %396 = shl nsw i64 %395, 3
  %397 = add i64 %396, %392
  %398 = add i64 %388, 16
  store i64 %398, i64* %PC.i, align 8
  %399 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  %400 = load i64, i64* %399, align 1
  %401 = inttoptr i64 %397 to i64*
  store i64 %400, i64* %401, align 8
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -52
  %404 = load i64, i64* %PC.i, align 8
  %405 = add i64 %404, 7
  store i64 %405, i64* %PC.i, align 8
  %406 = inttoptr i64 %403 to i32*
  store i32 0, i32* %406, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400c94

block_.L_400c94:                                  ; preds = %block_400ca0, %block_400c7d
  %407 = phi i64 [ %613, %block_400ca0 ], [ %.pre3, %block_400c7d ]
  %408 = load i64, i64* %RBP.i, align 8
  %409 = add i64 %408, -52
  %410 = add i64 %407, 3
  store i64 %410, i64* %PC.i, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RAX.i649, align 8
  %414 = add i64 %408, -8
  %415 = add i64 %407, 6
  store i64 %415, i64* %PC.i, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = sub i32 %412, %417
  %419 = icmp ult i32 %412, %417
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %14, align 1
  %421 = and i32 %418, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %21, align 1
  %426 = xor i32 %417, %412
  %427 = xor i32 %426, %418
  %428 = lshr i32 %427, 4
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  store i8 %430, i8* %27, align 1
  %431 = icmp eq i32 %418, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %30, align 1
  %433 = lshr i32 %418, 31
  %434 = trunc i32 %433 to i8
  store i8 %434, i8* %33, align 1
  %435 = lshr i32 %412, 31
  %436 = lshr i32 %417, 31
  %437 = xor i32 %436, %435
  %438 = xor i32 %433, %435
  %439 = add nuw nsw i32 %438, %437
  %440 = icmp eq i32 %439, 2
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %39, align 1
  %442 = icmp ne i8 %434, 0
  %443 = xor i1 %442, %440
  %.v13 = select i1 %443, i64 12, i64 128
  %444 = add i64 %407, %.v13
  store i64 %444, i64* %3, align 8
  br i1 %443, label %block_400ca0, label %block_.L_400d14

block_400ca0:                                     ; preds = %block_.L_400c94
  %445 = add i64 %408, -24
  %446 = add i64 %444, 4
  store i64 %446, i64* %PC.i, align 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RAX.i649, align 8
  %449 = add i64 %444, 8
  store i64 %449, i64* %PC.i, align 8
  %450 = load i32, i32* %411, align 4
  %451 = sext i32 %450 to i64
  %452 = mul nsw i64 %451, 8000
  store i64 %452, i64* %RCX.i661, align 8
  %453 = lshr i64 %452, 63
  %454 = add i64 %452, %448
  store i64 %454, i64* %RAX.i649, align 8
  %455 = icmp ult i64 %454, %448
  %456 = icmp ult i64 %454, %452
  %457 = or i1 %455, %456
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %14, align 1
  %459 = trunc i64 %454 to i32
  %460 = and i32 %459, 255
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460)
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %21, align 1
  %465 = xor i64 %448, %454
  %466 = lshr i64 %465, 4
  %467 = trunc i64 %466 to i8
  %468 = and i8 %467, 1
  store i8 %468, i8* %27, align 1
  %469 = icmp eq i64 %454, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %30, align 1
  %471 = lshr i64 %454, 63
  %472 = trunc i64 %471 to i8
  store i8 %472, i8* %33, align 1
  %473 = lshr i64 %448, 63
  %474 = xor i64 %471, %473
  %475 = xor i64 %471, %453
  %476 = add nuw nsw i64 %474, %475
  %477 = icmp eq i64 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %39, align 1
  %479 = add i64 %408, -56
  %480 = add i64 %444, 22
  store i64 %480, i64* %PC.i, align 8
  %481 = inttoptr i64 %479 to i32*
  %482 = load i32, i32* %481, align 4
  %483 = sext i32 %482 to i64
  store i64 %483, i64* %RCX.i661, align 8
  %484 = shl nsw i64 %483, 3
  %485 = add i64 %484, %454
  %486 = add i64 %444, 27
  store i64 %486, i64* %PC.i, align 8
  %487 = inttoptr i64 %485 to double*
  %488 = load double, double* %487, align 8
  store double %488, double* %110, align 1
  store double 0.000000e+00, double* %111, align 1
  %489 = add i64 %408, -40
  %490 = add i64 %444, 31
  store i64 %490, i64* %PC.i, align 8
  %491 = inttoptr i64 %489 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %RAX.i649, align 8
  %493 = add i64 %444, 35
  store i64 %493, i64* %PC.i, align 8
  %494 = load i32, i32* %481, align 4
  %495 = sext i32 %494 to i64
  store i64 %495, i64* %RCX.i661, align 8
  %496 = shl nsw i64 %495, 3
  %497 = add i64 %496, %492
  %498 = add i64 %444, 40
  store i64 %498, i64* %PC.i, align 8
  %499 = inttoptr i64 %497 to double*
  %500 = load double, double* %499, align 8
  %501 = fsub double %488, %500
  store double %501, double* %110, align 1
  store i64 0, i64* %103, align 1
  %502 = load i64, i64* %RBP.i, align 8
  %503 = add i64 %502, -24
  %504 = add i64 %444, 44
  store i64 %504, i64* %PC.i, align 8
  %505 = inttoptr i64 %503 to i64*
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %RAX.i649, align 8
  %507 = add i64 %502, -52
  %508 = add i64 %444, 48
  store i64 %508, i64* %PC.i, align 8
  %509 = inttoptr i64 %507 to i32*
  %510 = load i32, i32* %509, align 4
  %511 = sext i32 %510 to i64
  %512 = mul nsw i64 %511, 8000
  store i64 %512, i64* %RCX.i661, align 8
  %513 = lshr i64 %512, 63
  %514 = add i64 %512, %506
  store i64 %514, i64* %RAX.i649, align 8
  %515 = icmp ult i64 %514, %506
  %516 = icmp ult i64 %514, %512
  %517 = or i1 %515, %516
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %14, align 1
  %519 = trunc i64 %514 to i32
  %520 = and i32 %519, 255
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %21, align 1
  %525 = xor i64 %506, %514
  %526 = lshr i64 %525, 4
  %527 = trunc i64 %526 to i8
  %528 = and i8 %527, 1
  store i8 %528, i8* %27, align 1
  %529 = icmp eq i64 %514, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %30, align 1
  %531 = lshr i64 %514, 63
  %532 = trunc i64 %531 to i8
  store i8 %532, i8* %33, align 1
  %533 = lshr i64 %506, 63
  %534 = xor i64 %531, %533
  %535 = xor i64 %531, %513
  %536 = add nuw nsw i64 %534, %535
  %537 = icmp eq i64 %536, 2
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %39, align 1
  %539 = add i64 %502, -56
  %540 = add i64 %444, 62
  store i64 %540, i64* %PC.i, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = sext i32 %542 to i64
  store i64 %543, i64* %RCX.i661, align 8
  %544 = shl nsw i64 %543, 3
  %545 = add i64 %544, %514
  %546 = add i64 %444, 67
  store i64 %546, i64* %PC.i, align 8
  %547 = inttoptr i64 %545 to double*
  %548 = load double, double* %547, align 8
  store double %548, double* %42, align 1
  store double 0.000000e+00, double* %45, align 1
  %549 = add i64 %502, -40
  %550 = add i64 %444, 71
  store i64 %550, i64* %PC.i, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RAX.i649, align 8
  %553 = add i64 %444, 75
  store i64 %553, i64* %PC.i, align 8
  %554 = load i32, i32* %541, align 4
  %555 = sext i32 %554 to i64
  store i64 %555, i64* %RCX.i661, align 8
  %556 = shl nsw i64 %555, 3
  %557 = add i64 %556, %552
  %558 = add i64 %444, 80
  store i64 %558, i64* %PC.i, align 8
  %559 = inttoptr i64 %557 to double*
  %560 = load double, double* %559, align 8
  %561 = fsub double %548, %560
  store double %561, double* %42, align 1
  store i64 0, i64* %44, align 1
  %562 = load double, double* %110, align 1
  %563 = fmul double %562, %561
  store double %563, double* %110, align 1
  %564 = load i64, i64* %RBP.i, align 8
  %565 = add i64 %564, -48
  %566 = add i64 %444, 88
  store i64 %566, i64* %PC.i, align 8
  %567 = inttoptr i64 %565 to i64*
  %568 = load i64, i64* %567, align 8
  store i64 %568, i64* %RAX.i649, align 8
  %569 = add i64 %564, -56
  %570 = add i64 %444, 92
  store i64 %570, i64* %PC.i, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = sext i32 %572 to i64
  store i64 %573, i64* %RCX.i661, align 8
  %574 = shl nsw i64 %573, 3
  %575 = add i64 %574, %568
  %576 = add i64 %444, 97
  store i64 %576, i64* %PC.i, align 8
  %577 = inttoptr i64 %575 to double*
  %578 = load double, double* %577, align 8
  %579 = fadd double %563, %578
  store double %579, double* %110, align 1
  %580 = add i64 %444, 102
  store i64 %580, i64* %PC.i, align 8
  store double %579, double* %577, align 8
  %581 = load i64, i64* %RBP.i, align 8
  %582 = add i64 %581, -52
  %583 = load i64, i64* %PC.i, align 8
  %584 = add i64 %583, 3
  store i64 %584, i64* %PC.i, align 8
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = add i32 %586, 1
  %588 = zext i32 %587 to i64
  store i64 %588, i64* %RAX.i649, align 8
  %589 = icmp eq i32 %586, -1
  %590 = icmp eq i32 %587, 0
  %591 = or i1 %589, %590
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %14, align 1
  %593 = and i32 %587, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593)
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %21, align 1
  %598 = xor i32 %586, %587
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %27, align 1
  %602 = icmp eq i32 %587, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %30, align 1
  %604 = lshr i32 %587, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %33, align 1
  %606 = lshr i32 %586, 31
  %607 = xor i32 %604, %606
  %608 = add nuw nsw i32 %607, %604
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %39, align 1
  %611 = add i64 %583, 9
  store i64 %611, i64* %PC.i, align 8
  store i32 %587, i32* %585, align 4
  %612 = load i64, i64* %PC.i, align 8
  %613 = add i64 %612, -123
  store i64 %613, i64* %3, align 8
  br label %block_.L_400c94

block_.L_400d14:                                  ; preds = %block_.L_400c94
  %614 = add i64 %408, -16
  %615 = add i64 %444, 5
  store i64 %615, i64* %PC.i, align 8
  %616 = inttoptr i64 %614 to double*
  %617 = load double, double* %616, align 8
  store double %617, double* %110, align 1
  store double 0.000000e+00, double* %111, align 1
  %618 = add i64 %408, -48
  %619 = add i64 %444, 9
  store i64 %619, i64* %PC.i, align 8
  %620 = inttoptr i64 %618 to i64*
  %621 = load i64, i64* %620, align 8
  store i64 %621, i64* %RAX.i649, align 8
  %622 = add i64 %408, -56
  %623 = add i64 %444, 13
  store i64 %623, i64* %PC.i, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = sext i32 %625 to i64
  store i64 %626, i64* %RCX.i661, align 8
  %627 = shl nsw i64 %626, 3
  %628 = add i64 %627, %621
  %629 = add i64 %444, 18
  store i64 %629, i64* %PC.i, align 8
  %630 = inttoptr i64 %628 to double*
  %631 = load double, double* %630, align 8
  %632 = fdiv double %631, %617
  store double %632, double* %42, align 1
  store i64 0, i64* %44, align 1
  %633 = add i64 %444, 27
  store i64 %633, i64* %PC.i, align 8
  store double %632, double* %630, align 8
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -48
  %636 = load i64, i64* %PC.i, align 8
  %637 = add i64 %636, 4
  store i64 %637, i64* %PC.i, align 8
  %638 = inttoptr i64 %635 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RAX.i649, align 8
  %640 = add i64 %634, -56
  %641 = add i64 %636, 8
  store i64 %641, i64* %PC.i, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = sext i32 %643 to i64
  store i64 %644, i64* %RCX.i661, align 8
  %645 = shl nsw i64 %644, 3
  %646 = add i64 %645, %639
  %647 = add i64 %636, 13
  store i64 %647, i64* %PC.i, align 8
  %648 = inttoptr i64 %646 to i64*
  %649 = load i64, i64* %648, align 8
  %650 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %649, i64* %650, align 1
  store double 0.000000e+00, double* %111, align 1
  %651 = add i64 %636, -1695
  %652 = add i64 %636, 18
  %653 = load i64, i64* %6, align 8
  %654 = add i64 %653, -8
  %655 = inttoptr i64 %654 to i64*
  store i64 %652, i64* %655, align 8
  store i64 %654, i64* %6, align 8
  store i64 %651, i64* %3, align 8
  %call2_400d3c = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %651, %struct.Memory* %MEMORY.2)
  %656 = load i64, i64* %RBP.i, align 8
  %657 = add i64 %656, -48
  %658 = load i64, i64* %PC.i, align 8
  %659 = add i64 %658, 4
  store i64 %659, i64* %PC.i, align 8
  %660 = inttoptr i64 %657 to i64*
  %661 = load i64, i64* %660, align 8
  store i64 %661, i64* %RAX.i649, align 8
  %662 = add i64 %656, -56
  %663 = add i64 %658, 8
  store i64 %663, i64* %PC.i, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  store i64 %666, i64* %RCX.i661, align 8
  %667 = shl nsw i64 %666, 3
  %668 = add i64 %667, %661
  %669 = add i64 %658, 13
  store i64 %669, i64* %PC.i, align 8
  %670 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  %671 = load i64, i64* %670, align 1
  %672 = inttoptr i64 %668 to i64*
  store i64 %671, i64* %672, align 8
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -48
  %675 = load i64, i64* %PC.i, align 8
  %676 = add i64 %675, 4
  store i64 %676, i64* %PC.i, align 8
  %677 = inttoptr i64 %674 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %RAX.i649, align 8
  %679 = add i64 %673, -56
  %680 = add i64 %675, 8
  store i64 %680, i64* %PC.i, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = sext i32 %682 to i64
  store i64 %683, i64* %RCX.i661, align 8
  %684 = shl nsw i64 %683, 3
  %685 = add i64 %684, %678
  %686 = add i64 %675, 13
  store i64 %686, i64* %PC.i, align 8
  %687 = inttoptr i64 %685 to double*
  %688 = load double, double* %687, align 8
  store double %688, double* %110, align 1
  store double 0.000000e+00, double* %111, align 1
  %689 = add i64 %673, -72
  %690 = add i64 %675, 18
  store i64 %690, i64* %PC.i, align 8
  %691 = inttoptr i64 %689 to double*
  %692 = load double, double* %691, align 8
  store double %692, double* %42, align 1
  store double 0.000000e+00, double* %45, align 1
  %693 = add i64 %675, 22
  store i64 %693, i64* %PC.i, align 8
  %694 = fcmp uno double %692, %688
  br i1 %694, label %695, label %705

; <label>:695:                                    ; preds = %block_.L_400d14
  %696 = fadd double %692, %688
  %697 = bitcast double %696 to i64
  %698 = and i64 %697, 9221120237041090560
  %699 = icmp eq i64 %698, 9218868437227405312
  %700 = and i64 %697, 2251799813685247
  %701 = icmp ne i64 %700, 0
  %702 = and i1 %699, %701
  br i1 %702, label %703, label %711

; <label>:703:                                    ; preds = %695
  %704 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %693, %struct.Memory* %call2_400d3c)
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:705:                                    ; preds = %block_.L_400d14
  %706 = fcmp ogt double %692, %688
  br i1 %706, label %711, label %707

; <label>:707:                                    ; preds = %705
  %708 = fcmp olt double %692, %688
  br i1 %708, label %711, label %709

; <label>:709:                                    ; preds = %707
  %710 = fcmp oeq double %692, %688
  br i1 %710, label %711, label %715

; <label>:711:                                    ; preds = %709, %707, %705, %695
  %712 = phi i8 [ 0, %705 ], [ 0, %707 ], [ 1, %709 ], [ 1, %695 ]
  %713 = phi i8 [ 0, %705 ], [ 0, %707 ], [ 0, %709 ], [ 1, %695 ]
  %714 = phi i8 [ 0, %705 ], [ 1, %707 ], [ 0, %709 ], [ 1, %695 ]
  store i8 %712, i8* %30, align 1
  store i8 %713, i8* %21, align 1
  store i8 %714, i8* %14, align 1
  br label %715

; <label>:715:                                    ; preds = %711, %709
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %715, %703
  %716 = phi i64 [ %.pre4, %703 ], [ %693, %715 ]
  %717 = phi %struct.Memory* [ %704, %703 ], [ %call2_400d3c, %715 ]
  %718 = load i8, i8* %14, align 1
  %719 = icmp ne i8 %718, 0
  %.v14 = select i1 %719, i64 24, i64 6
  %720 = add i64 %716, %.v14
  store i64 %720, i64* %3, align 8
  %cmpBr_400d64 = icmp eq i8 %718, 1
  br i1 %cmpBr_400d64, label %block_.L_400d7c, label %block_400d6a

block_400d6a:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %721 = load i64, i64* bitcast (%G_0x6ae__rip__type* @G_0x6ae__rip_ to i64*), align 8
  %722 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %721, i64* %722, align 1
  store double 0.000000e+00, double* %111, align 1
  %723 = load i64, i64* %RBP.i, align 8
  %724 = add i64 %723, -80
  %725 = add i64 %720, 13
  store i64 %725, i64* %PC.i, align 8
  %726 = inttoptr i64 %724 to i64*
  store i64 %721, i64* %726, align 8
  %727 = load i64, i64* %PC.i, align 8
  %728 = add i64 %727, 23
  store i64 %728, i64* %3, align 8
  br label %block_.L_400d8e

block_.L_400d7c:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -48
  %731 = add i64 %720, 4
  store i64 %731, i64* %PC.i, align 8
  %732 = inttoptr i64 %730 to i64*
  %733 = load i64, i64* %732, align 8
  store i64 %733, i64* %RAX.i649, align 8
  %734 = add i64 %729, -56
  %735 = add i64 %720, 8
  store i64 %735, i64* %PC.i, align 8
  %736 = inttoptr i64 %734 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = sext i32 %737 to i64
  store i64 %738, i64* %RCX.i661, align 8
  %739 = shl nsw i64 %738, 3
  %740 = add i64 %739, %733
  %741 = add i64 %720, 13
  store i64 %741, i64* %PC.i, align 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742, align 8
  %744 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %743, i64* %744, align 1
  store double 0.000000e+00, double* %111, align 1
  %745 = add i64 %729, -80
  %746 = add i64 %720, 18
  store i64 %746, i64* %PC.i, align 8
  %747 = inttoptr i64 %745 to i64*
  store i64 %743, i64* %747, align 8
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400d8e

block_.L_400d8e:                                  ; preds = %block_.L_400d7c, %block_400d6a
  %748 = phi i64 [ %.pre5, %block_.L_400d7c ], [ %728, %block_400d6a ]
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -80
  %751 = add i64 %748, 5
  store i64 %751, i64* %PC.i, align 8
  %752 = inttoptr i64 %750 to i64*
  %753 = load i64, i64* %752, align 8
  %754 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %753, i64* %754, align 1
  store double 0.000000e+00, double* %111, align 1
  %755 = add i64 %749, -48
  %756 = add i64 %748, 9
  store i64 %756, i64* %PC.i, align 8
  %757 = inttoptr i64 %755 to i64*
  %758 = load i64, i64* %757, align 8
  store i64 %758, i64* %RAX.i649, align 8
  %759 = add i64 %749, -56
  %760 = add i64 %748, 13
  store i64 %760, i64* %PC.i, align 8
  %761 = inttoptr i64 %759 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = sext i32 %762 to i64
  store i64 %763, i64* %RCX.i661, align 8
  %764 = shl nsw i64 %763, 3
  %765 = add i64 %764, %758
  %766 = add i64 %748, 18
  store i64 %766, i64* %PC.i, align 8
  %767 = inttoptr i64 %765 to i64*
  store i64 %753, i64* %767, align 8
  %768 = load i64, i64* %RBP.i, align 8
  %769 = add i64 %768, -56
  %770 = load i64, i64* %PC.i, align 8
  %771 = add i64 %770, 3
  store i64 %771, i64* %PC.i, align 8
  %772 = inttoptr i64 %769 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = add i32 %773, 1
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %RAX.i649, align 8
  %776 = icmp eq i32 %773, -1
  %777 = icmp eq i32 %774, 0
  %778 = or i1 %776, %777
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %14, align 1
  %780 = and i32 %774, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %21, align 1
  %785 = xor i32 %773, %774
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %27, align 1
  %789 = icmp eq i32 %774, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %30, align 1
  %791 = lshr i32 %774, 31
  %792 = trunc i32 %791 to i8
  store i8 %792, i8* %33, align 1
  %793 = lshr i32 %773, 31
  %794 = xor i32 %791, %793
  %795 = add nuw nsw i32 %794, %791
  %796 = icmp eq i32 %795, 2
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %39, align 1
  %798 = add i64 %770, 9
  store i64 %798, i64* %PC.i, align 8
  store i32 %774, i32* %772, align 4
  %799 = load i64, i64* %PC.i, align 8
  %800 = add i64 %799, -312
  store i64 %800, i64* %3, align 8
  br label %block_.L_400c71

block_.L_400dae:                                  ; preds = %block_.L_400c71
  %801 = add i64 %352, -52
  %802 = add i64 %388, 7
  store i64 %802, i64* %PC.i, align 8
  %803 = inttoptr i64 %801 to i32*
  store i32 0, i32* %803, align 4
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400db5

block_.L_400db5:                                  ; preds = %block_.L_400e4e, %block_.L_400dae
  %804 = phi i64 [ %.pre6, %block_.L_400dae ], [ %1083, %block_.L_400e4e ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.2, %block_.L_400dae ], [ %MEMORY.6, %block_.L_400e4e ]
  %805 = load i64, i64* %RBP.i, align 8
  %806 = add i64 %805, -52
  %807 = add i64 %804, 3
  store i64 %807, i64* %PC.i, align 8
  %808 = inttoptr i64 %806 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = zext i32 %809 to i64
  store i64 %810, i64* %RAX.i649, align 8
  %811 = add i64 %805, -8
  %812 = add i64 %804, 6
  store i64 %812, i64* %PC.i, align 8
  %813 = inttoptr i64 %811 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = sub i32 %809, %814
  %816 = icmp ult i32 %809, %814
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %14, align 1
  %818 = and i32 %815, 255
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %21, align 1
  %823 = xor i32 %814, %809
  %824 = xor i32 %823, %815
  %825 = lshr i32 %824, 4
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  store i8 %827, i8* %27, align 1
  %828 = icmp eq i32 %815, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %30, align 1
  %830 = lshr i32 %815, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %33, align 1
  %832 = lshr i32 %809, 31
  %833 = lshr i32 %814, 31
  %834 = xor i32 %833, %832
  %835 = xor i32 %830, %832
  %836 = add nuw nsw i32 %835, %834
  %837 = icmp eq i32 %836, 2
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %39, align 1
  %839 = icmp ne i8 %831, 0
  %840 = xor i1 %839, %837
  %.v15 = select i1 %840, i64 12, i64 172
  %841 = add i64 %804, %.v15
  store i64 %841, i64* %3, align 8
  br i1 %840, label %block_400dc1, label %block_.L_400e61

block_400dc1:                                     ; preds = %block_.L_400db5
  %842 = add i64 %805, -56
  %843 = add i64 %841, 7
  store i64 %843, i64* %PC.i, align 8
  %844 = inttoptr i64 %842 to i32*
  store i32 0, i32* %844, align 4
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %block_.L_400dc8

block_.L_400dc8:                                  ; preds = %block_400dd4, %block_400dc1
  %845 = phi i64 [ %.pre7, %block_400dc1 ], [ %1052, %block_400dd4 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_400dc1 ], [ %call2_400e0a, %block_400dd4 ]
  %846 = load i64, i64* %RBP.i, align 8
  %847 = add i64 %846, -56
  %848 = add i64 %845, 3
  store i64 %848, i64* %PC.i, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = zext i32 %850 to i64
  store i64 %851, i64* %RAX.i649, align 8
  %852 = add i64 %846, -4
  %853 = add i64 %845, 6
  store i64 %853, i64* %PC.i, align 8
  %854 = inttoptr i64 %852 to i32*
  %855 = load i32, i32* %854, align 4
  %856 = sub i32 %850, %855
  %857 = icmp ult i32 %850, %855
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %14, align 1
  %859 = and i32 %856, 255
  %860 = tail call i32 @llvm.ctpop.i32(i32 %859)
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  %863 = xor i8 %862, 1
  store i8 %863, i8* %21, align 1
  %864 = xor i32 %855, %850
  %865 = xor i32 %864, %856
  %866 = lshr i32 %865, 4
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  store i8 %868, i8* %27, align 1
  %869 = icmp eq i32 %856, 0
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %30, align 1
  %871 = lshr i32 %856, 31
  %872 = trunc i32 %871 to i8
  store i8 %872, i8* %33, align 1
  %873 = lshr i32 %850, 31
  %874 = lshr i32 %855, 31
  %875 = xor i32 %874, %873
  %876 = xor i32 %871, %873
  %877 = add nuw nsw i32 %876, %875
  %878 = icmp eq i32 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %39, align 1
  %880 = icmp ne i8 %872, 0
  %881 = xor i1 %880, %878
  %.v16 = select i1 %881, i64 12, i64 134
  %882 = add i64 %845, %.v16
  store i64 %882, i64* %3, align 8
  br i1 %881, label %block_400dd4, label %block_.L_400e4e

block_400dd4:                                     ; preds = %block_.L_400dc8
  %883 = add i64 %846, -40
  %884 = add i64 %882, 4
  store i64 %884, i64* %PC.i, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %RAX.i649, align 8
  %887 = add i64 %882, 8
  store i64 %887, i64* %PC.i, align 8
  %888 = load i32, i32* %849, align 4
  %889 = sext i32 %888 to i64
  store i64 %889, i64* %RCX.i661, align 8
  %890 = shl nsw i64 %889, 3
  %891 = add i64 %890, %886
  %892 = add i64 %882, 13
  store i64 %892, i64* %PC.i, align 8
  %893 = inttoptr i64 %891 to double*
  %894 = load double, double* %893, align 8
  store double %894, double* %110, align 1
  store double 0.000000e+00, double* %111, align 1
  %895 = add i64 %846, -24
  %896 = add i64 %882, 17
  store i64 %896, i64* %PC.i, align 8
  %897 = inttoptr i64 %895 to i64*
  %898 = load i64, i64* %897, align 8
  store i64 %898, i64* %RAX.i649, align 8
  %899 = add i64 %846, -52
  %900 = add i64 %882, 21
  store i64 %900, i64* %PC.i, align 8
  %901 = inttoptr i64 %899 to i32*
  %902 = load i32, i32* %901, align 4
  %903 = sext i32 %902 to i64
  %904 = mul nsw i64 %903, 8000
  store i64 %904, i64* %RCX.i661, align 8
  %905 = lshr i64 %904, 63
  %906 = add i64 %904, %898
  store i64 %906, i64* %RAX.i649, align 8
  %907 = icmp ult i64 %906, %898
  %908 = icmp ult i64 %906, %904
  %909 = or i1 %907, %908
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %14, align 1
  %911 = trunc i64 %906 to i32
  %912 = and i32 %911, 255
  %913 = tail call i32 @llvm.ctpop.i32(i32 %912)
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  store i8 %916, i8* %21, align 1
  %917 = xor i64 %898, %906
  %918 = lshr i64 %917, 4
  %919 = trunc i64 %918 to i8
  %920 = and i8 %919, 1
  store i8 %920, i8* %27, align 1
  %921 = icmp eq i64 %906, 0
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %30, align 1
  %923 = lshr i64 %906, 63
  %924 = trunc i64 %923 to i8
  store i8 %924, i8* %33, align 1
  %925 = lshr i64 %898, 63
  %926 = xor i64 %923, %925
  %927 = xor i64 %923, %905
  %928 = add nuw nsw i64 %926, %927
  %929 = icmp eq i64 %928, 2
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %39, align 1
  %931 = add i64 %882, 35
  store i64 %931, i64* %PC.i, align 8
  %932 = load i32, i32* %849, align 4
  %933 = sext i32 %932 to i64
  store i64 %933, i64* %RCX.i661, align 8
  %934 = shl nsw i64 %933, 3
  %935 = add i64 %934, %906
  %936 = add i64 %882, 40
  store i64 %936, i64* %PC.i, align 8
  %937 = inttoptr i64 %935 to double*
  %938 = load double, double* %937, align 8
  %939 = fsub double %938, %894
  store double %939, double* %42, align 1
  store i64 0, i64* %44, align 1
  %940 = add i64 %882, 49
  store i64 %940, i64* %PC.i, align 8
  store double %939, double* %937, align 8
  %941 = load i64, i64* %RBP.i, align 8
  %942 = add i64 %941, -16
  %943 = load i64, i64* %PC.i, align 8
  %944 = add i64 %943, 5
  store i64 %944, i64* %PC.i, align 8
  %945 = inttoptr i64 %942 to i64*
  %946 = load i64, i64* %945, align 8
  %947 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %946, i64* %947, align 1
  store double 0.000000e+00, double* %111, align 1
  %948 = add i64 %943, -1909
  %949 = add i64 %943, 10
  %950 = load i64, i64* %6, align 8
  %951 = add i64 %950, -8
  %952 = inttoptr i64 %951 to i64*
  store i64 %949, i64* %952, align 8
  store i64 %951, i64* %6, align 8
  store i64 %948, i64* %3, align 8
  %call2_400e0a = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %948, %struct.Memory* %MEMORY.6)
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -48
  %955 = load i64, i64* %PC.i, align 8
  %956 = add i64 %955, 4
  store i64 %956, i64* %PC.i, align 8
  %957 = inttoptr i64 %954 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %RAX.i649, align 8
  %959 = add i64 %953, -56
  %960 = add i64 %955, 8
  store i64 %960, i64* %PC.i, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = sext i32 %962 to i64
  store i64 %963, i64* %RCX.i661, align 8
  %964 = shl nsw i64 %963, 3
  %965 = add i64 %964, %958
  %966 = add i64 %955, 13
  store i64 %966, i64* %PC.i, align 8
  %967 = load double, double* %110, align 1
  %968 = inttoptr i64 %965 to double*
  %969 = load double, double* %968, align 8
  %970 = fmul double %967, %969
  store double %970, double* %110, align 1
  %971 = add i64 %953, -24
  %972 = add i64 %955, 17
  store i64 %972, i64* %PC.i, align 8
  %973 = inttoptr i64 %971 to i64*
  %974 = load i64, i64* %973, align 8
  store i64 %974, i64* %RAX.i649, align 8
  %975 = add i64 %953, -52
  %976 = add i64 %955, 21
  store i64 %976, i64* %PC.i, align 8
  %977 = inttoptr i64 %975 to i32*
  %978 = load i32, i32* %977, align 4
  %979 = sext i32 %978 to i64
  %980 = mul nsw i64 %979, 8000
  store i64 %980, i64* %RCX.i661, align 8
  %981 = lshr i64 %980, 63
  %982 = add i64 %980, %974
  store i64 %982, i64* %RAX.i649, align 8
  %983 = icmp ult i64 %982, %974
  %984 = icmp ult i64 %982, %980
  %985 = or i1 %983, %984
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %14, align 1
  %987 = trunc i64 %982 to i32
  %988 = and i32 %987, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988)
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %21, align 1
  %993 = xor i64 %974, %982
  %994 = lshr i64 %993, 4
  %995 = trunc i64 %994 to i8
  %996 = and i8 %995, 1
  store i8 %996, i8* %27, align 1
  %997 = icmp eq i64 %982, 0
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %30, align 1
  %999 = lshr i64 %982, 63
  %1000 = trunc i64 %999 to i8
  store i8 %1000, i8* %33, align 1
  %1001 = lshr i64 %974, 63
  %1002 = xor i64 %999, %1001
  %1003 = xor i64 %999, %981
  %1004 = add nuw nsw i64 %1002, %1003
  %1005 = icmp eq i64 %1004, 2
  %1006 = zext i1 %1005 to i8
  store i8 %1006, i8* %39, align 1
  %1007 = load i64, i64* %RBP.i, align 8
  %1008 = add i64 %1007, -56
  %1009 = add i64 %955, 35
  store i64 %1009, i64* %PC.i, align 8
  %1010 = inttoptr i64 %1008 to i32*
  %1011 = load i32, i32* %1010, align 4
  %1012 = sext i32 %1011 to i64
  store i64 %1012, i64* %RCX.i661, align 8
  %1013 = shl nsw i64 %1012, 3
  %1014 = add i64 %1013, %982
  %1015 = add i64 %955, 40
  store i64 %1015, i64* %PC.i, align 8
  %1016 = inttoptr i64 %1014 to double*
  %1017 = load double, double* %1016, align 8
  %1018 = fdiv double %1017, %970
  store double %1018, double* %42, align 1
  store i64 0, i64* %44, align 1
  %1019 = add i64 %955, 49
  store i64 %1019, i64* %PC.i, align 8
  store double %1018, double* %1016, align 8
  %1020 = load i64, i64* %RBP.i, align 8
  %1021 = add i64 %1020, -56
  %1022 = load i64, i64* %PC.i, align 8
  %1023 = add i64 %1022, 3
  store i64 %1023, i64* %PC.i, align 8
  %1024 = inttoptr i64 %1021 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = add i32 %1025, 1
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RAX.i649, align 8
  %1028 = icmp eq i32 %1025, -1
  %1029 = icmp eq i32 %1026, 0
  %1030 = or i1 %1028, %1029
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %14, align 1
  %1032 = and i32 %1026, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %21, align 1
  %1037 = xor i32 %1025, %1026
  %1038 = lshr i32 %1037, 4
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  store i8 %1040, i8* %27, align 1
  %1041 = icmp eq i32 %1026, 0
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %30, align 1
  %1043 = lshr i32 %1026, 31
  %1044 = trunc i32 %1043 to i8
  store i8 %1044, i8* %33, align 1
  %1045 = lshr i32 %1025, 31
  %1046 = xor i32 %1043, %1045
  %1047 = add nuw nsw i32 %1046, %1043
  %1048 = icmp eq i32 %1047, 2
  %1049 = zext i1 %1048 to i8
  store i8 %1049, i8* %39, align 1
  %1050 = add i64 %1022, 9
  store i64 %1050, i64* %PC.i, align 8
  store i32 %1026, i32* %1024, align 4
  %1051 = load i64, i64* %PC.i, align 8
  %1052 = add i64 %1051, -129
  store i64 %1052, i64* %3, align 8
  br label %block_.L_400dc8

block_.L_400e4e:                                  ; preds = %block_.L_400dc8
  %1053 = add i64 %846, -52
  %1054 = add i64 %882, 8
  store i64 %1054, i64* %PC.i, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = add i32 %1056, 1
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RAX.i649, align 8
  %1059 = icmp eq i32 %1056, -1
  %1060 = icmp eq i32 %1057, 0
  %1061 = or i1 %1059, %1060
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %14, align 1
  %1063 = and i32 %1057, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  %1068 = xor i32 %1056, %1057
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %27, align 1
  %1072 = icmp eq i32 %1057, 0
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %30, align 1
  %1074 = lshr i32 %1057, 31
  %1075 = trunc i32 %1074 to i8
  store i8 %1075, i8* %33, align 1
  %1076 = lshr i32 %1056, 31
  %1077 = xor i32 %1074, %1076
  %1078 = add nuw nsw i32 %1077, %1074
  %1079 = icmp eq i32 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %39, align 1
  %1081 = add i64 %882, 14
  store i64 %1081, i64* %PC.i, align 8
  store i32 %1057, i32* %1055, align 4
  %1082 = load i64, i64* %PC.i, align 8
  %1083 = add i64 %1082, -167
  store i64 %1083, i64* %3, align 8
  br label %block_.L_400db5

block_.L_400e61:                                  ; preds = %block_.L_400db5
  %1084 = add i64 %805, -60
  %1085 = add i64 %841, 7
  store i64 %1085, i64* %PC.i, align 8
  %1086 = inttoptr i64 %1084 to i32*
  store i32 0, i32* %1086, align 4
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e68

block_.L_400e68:                                  ; preds = %block_.L_400f8a, %block_.L_400e61
  %1087 = phi i64 [ %1649, %block_.L_400f8a ], [ %.pre8, %block_.L_400e61 ]
  %1088 = load i64, i64* %RBP.i, align 8
  %1089 = add i64 %1088, -60
  %1090 = add i64 %1087, 3
  store i64 %1090, i64* %PC.i, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX.i649, align 8
  %1094 = add i64 %1088, -4
  %1095 = add i64 %1087, 6
  store i64 %1095, i64* %PC.i, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = add i32 %1097, -1
  %1099 = zext i32 %1098 to i64
  store i64 %1099, i64* %RCX.i661, align 8
  %1100 = lshr i32 %1098, 31
  %1101 = sub i32 %1092, %1098
  %1102 = icmp ult i32 %1092, %1098
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %14, align 1
  %1104 = and i32 %1101, 255
  %1105 = tail call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  store i8 %1108, i8* %21, align 1
  %1109 = xor i32 %1098, %1092
  %1110 = xor i32 %1109, %1101
  %1111 = lshr i32 %1110, 4
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  store i8 %1113, i8* %27, align 1
  %1114 = icmp eq i32 %1101, 0
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %30, align 1
  %1116 = lshr i32 %1101, 31
  %1117 = trunc i32 %1116 to i8
  store i8 %1117, i8* %33, align 1
  %1118 = lshr i32 %1092, 31
  %1119 = xor i32 %1100, %1118
  %1120 = xor i32 %1116, %1118
  %1121 = add nuw nsw i32 %1120, %1119
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %39, align 1
  %1124 = icmp ne i8 %1117, 0
  %1125 = xor i1 %1124, %1122
  %.v17 = select i1 %1125, i64 17, i64 309
  %1126 = add i64 %1087, %.v17
  %1127 = add i64 %1126, 8
  store i64 %1127, i64* %PC.i, align 8
  br i1 %1125, label %block_400e79, label %block_.L_400f9d

block_400e79:                                     ; preds = %block_.L_400e68
  %1128 = load i64, i64* bitcast (%G_0x59f__rip__type* @G_0x59f__rip_ to i64*), align 8
  %1129 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1128, i64* %1129, align 1
  store double 0.000000e+00, double* %111, align 1
  %1130 = add i64 %1088, -32
  %1131 = add i64 %1126, 12
  store i64 %1131, i64* %PC.i, align 8
  %1132 = inttoptr i64 %1130 to i64*
  %1133 = load i64, i64* %1132, align 8
  store i64 %1133, i64* %RAX.i649, align 8
  %1134 = add i64 %1126, 16
  store i64 %1134, i64* %PC.i, align 8
  %1135 = load i32, i32* %1091, align 4
  %1136 = sext i32 %1135 to i64
  %1137 = mul nsw i64 %1136, 8000
  store i64 %1137, i64* %RCX.i661, align 8
  %1138 = lshr i64 %1137, 63
  %1139 = add i64 %1137, %1133
  store i64 %1139, i64* %RAX.i649, align 8
  %1140 = icmp ult i64 %1139, %1133
  %1141 = icmp ult i64 %1139, %1137
  %1142 = or i1 %1140, %1141
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %14, align 1
  %1144 = trunc i64 %1139 to i32
  %1145 = and i32 %1144, 255
  %1146 = tail call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  store i8 %1149, i8* %21, align 1
  %1150 = xor i64 %1133, %1139
  %1151 = lshr i64 %1150, 4
  %1152 = trunc i64 %1151 to i8
  %1153 = and i8 %1152, 1
  store i8 %1153, i8* %27, align 1
  %1154 = icmp eq i64 %1139, 0
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %30, align 1
  %1156 = lshr i64 %1139, 63
  %1157 = trunc i64 %1156 to i8
  store i8 %1157, i8* %33, align 1
  %1158 = lshr i64 %1133, 63
  %1159 = xor i64 %1156, %1158
  %1160 = xor i64 %1156, %1138
  %1161 = add nuw nsw i64 %1159, %1160
  %1162 = icmp eq i64 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %39, align 1
  %1164 = add i64 %1126, 30
  store i64 %1164, i64* %PC.i, align 8
  %1165 = load i32, i32* %1091, align 4
  %1166 = sext i32 %1165 to i64
  store i64 %1166, i64* %RCX.i661, align 8
  %1167 = shl nsw i64 %1166, 3
  %1168 = add i64 %1167, %1139
  %1169 = add i64 %1126, 35
  store i64 %1169, i64* %PC.i, align 8
  %1170 = inttoptr i64 %1168 to i64*
  store i64 %1128, i64* %1170, align 8
  %1171 = load i64, i64* %RBP.i, align 8
  %1172 = add i64 %1171, -60
  %1173 = load i64, i64* %PC.i, align 8
  %1174 = add i64 %1173, 3
  store i64 %1174, i64* %PC.i, align 8
  %1175 = inttoptr i64 %1172 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = add i32 %1176, 1
  %1178 = zext i32 %1177 to i64
  store i64 %1178, i64* %RDX.i664, align 8
  %1179 = icmp eq i32 %1176, -1
  %1180 = icmp eq i32 %1177, 0
  %1181 = or i1 %1179, %1180
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %14, align 1
  %1183 = and i32 %1177, 255
  %1184 = tail call i32 @llvm.ctpop.i32(i32 %1183)
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = xor i8 %1186, 1
  store i8 %1187, i8* %21, align 1
  %1188 = xor i32 %1176, %1177
  %1189 = lshr i32 %1188, 4
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  store i8 %1191, i8* %27, align 1
  %1192 = icmp eq i32 %1177, 0
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %30, align 1
  %1194 = lshr i32 %1177, 31
  %1195 = trunc i32 %1194 to i8
  store i8 %1195, i8* %33, align 1
  %1196 = lshr i32 %1176, 31
  %1197 = xor i32 %1194, %1196
  %1198 = add nuw nsw i32 %1197, %1194
  %1199 = icmp eq i32 %1198, 2
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %39, align 1
  %1201 = add i64 %1171, -64
  %1202 = add i64 %1173, 9
  store i64 %1202, i64* %PC.i, align 8
  %1203 = inttoptr i64 %1201 to i32*
  store i32 %1177, i32* %1203, align 4
  %.pre9 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ea5

block_.L_400ea5:                                  ; preds = %block_.L_400f46, %block_400e79
  %1204 = phi i64 [ %1618, %block_.L_400f46 ], [ %.pre9, %block_400e79 ]
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -64
  %1207 = add i64 %1204, 3
  store i64 %1207, i64* %PC.i, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RAX.i649, align 8
  %1211 = add i64 %1205, -4
  %1212 = add i64 %1204, 6
  store i64 %1212, i64* %PC.i, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sub i32 %1209, %1214
  %1216 = icmp ult i32 %1209, %1214
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %14, align 1
  %1218 = and i32 %1215, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %21, align 1
  %1223 = xor i32 %1214, %1209
  %1224 = xor i32 %1223, %1215
  %1225 = lshr i32 %1224, 4
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  store i8 %1227, i8* %27, align 1
  %1228 = icmp eq i32 %1215, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %30, align 1
  %1230 = lshr i32 %1215, 31
  %1231 = trunc i32 %1230 to i8
  store i8 %1231, i8* %33, align 1
  %1232 = lshr i32 %1209, 31
  %1233 = lshr i32 %1214, 31
  %1234 = xor i32 %1233, %1232
  %1235 = xor i32 %1230, %1232
  %1236 = add nuw nsw i32 %1235, %1234
  %1237 = icmp eq i32 %1236, 2
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %39, align 1
  %1239 = icmp ne i8 %1231, 0
  %1240 = xor i1 %1239, %1237
  %.v18 = select i1 %1240, i64 12, i64 229
  %1241 = add i64 %1204, %.v18
  store i64 %1241, i64* %3, align 8
  br i1 %1240, label %block_400eb1, label %block_.L_400f8a

block_400eb1:                                     ; preds = %block_.L_400ea5
  store i32 0, i32* %104, align 1
  store i32 0, i32* %106, align 1
  store i32 0, i32* %107, align 1
  store i32 0, i32* %109, align 1
  %1242 = add i64 %1205, -32
  %1243 = add i64 %1241, 7
  store i64 %1243, i64* %PC.i, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RAX.i649, align 8
  %1246 = add i64 %1205, -60
  %1247 = add i64 %1241, 11
  store i64 %1247, i64* %PC.i, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = sext i32 %1249 to i64
  %1251 = mul nsw i64 %1250, 8000
  store i64 %1251, i64* %RCX.i661, align 8
  %1252 = lshr i64 %1251, 63
  %1253 = add i64 %1251, %1245
  store i64 %1253, i64* %RAX.i649, align 8
  %1254 = icmp ult i64 %1253, %1245
  %1255 = icmp ult i64 %1253, %1251
  %1256 = or i1 %1254, %1255
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %14, align 1
  %1258 = trunc i64 %1253 to i32
  %1259 = and i32 %1258, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  %1264 = xor i64 %1245, %1253
  %1265 = lshr i64 %1264, 4
  %1266 = trunc i64 %1265 to i8
  %1267 = and i8 %1266, 1
  store i8 %1267, i8* %27, align 1
  %1268 = icmp eq i64 %1253, 0
  %1269 = zext i1 %1268 to i8
  store i8 %1269, i8* %30, align 1
  %1270 = lshr i64 %1253, 63
  %1271 = trunc i64 %1270 to i8
  store i8 %1271, i8* %33, align 1
  %1272 = lshr i64 %1245, 63
  %1273 = xor i64 %1270, %1272
  %1274 = xor i64 %1270, %1252
  %1275 = add nuw nsw i64 %1273, %1274
  %1276 = icmp eq i64 %1275, 2
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %39, align 1
  %1278 = add i64 %1241, 25
  store i64 %1278, i64* %PC.i, align 8
  %1279 = load i32, i32* %1208, align 4
  %1280 = sext i32 %1279 to i64
  store i64 %1280, i64* %RCX.i661, align 8
  %1281 = shl nsw i64 %1280, 3
  %1282 = add i64 %1281, %1253
  %1283 = add i64 %1241, 30
  store i64 %1283, i64* %PC.i, align 8
  %1284 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  %1285 = load i64, i64* %1284, align 1
  %1286 = inttoptr i64 %1282 to i64*
  store i64 %1285, i64* %1286, align 8
  %1287 = load i64, i64* %RBP.i, align 8
  %1288 = add i64 %1287, -52
  %1289 = load i64, i64* %PC.i, align 8
  %1290 = add i64 %1289, 7
  store i64 %1290, i64* %PC.i, align 8
  %1291 = inttoptr i64 %1288 to i32*
  store i32 0, i32* %1291, align 4
  %.pre10 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ed6

block_.L_400ed6:                                  ; preds = %block_400ee2, %block_400eb1
  %1292 = phi i64 [ %1496, %block_400ee2 ], [ %.pre10, %block_400eb1 ]
  %1293 = load i64, i64* %RBP.i, align 8
  %1294 = add i64 %1293, -52
  %1295 = add i64 %1292, 3
  store i64 %1295, i64* %PC.i, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RAX.i649, align 8
  %1299 = add i64 %1293, -8
  %1300 = add i64 %1292, 6
  store i64 %1300, i64* %PC.i, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = sub i32 %1297, %1302
  %1304 = icmp ult i32 %1297, %1302
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %14, align 1
  %1306 = and i32 %1303, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306)
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %21, align 1
  %1311 = xor i32 %1302, %1297
  %1312 = xor i32 %1311, %1303
  %1313 = lshr i32 %1312, 4
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %27, align 1
  %1316 = icmp eq i32 %1303, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %30, align 1
  %1318 = lshr i32 %1303, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %33, align 1
  %1320 = lshr i32 %1297, 31
  %1321 = lshr i32 %1302, 31
  %1322 = xor i32 %1321, %1320
  %1323 = xor i32 %1318, %1320
  %1324 = add nuw nsw i32 %1323, %1322
  %1325 = icmp eq i32 %1324, 2
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %39, align 1
  %1327 = icmp ne i8 %1319, 0
  %1328 = xor i1 %1327, %1325
  %.v19 = select i1 %1328, i64 12, i64 112
  %1329 = add i64 %1292, %.v19
  store i64 %1329, i64* %3, align 8
  br i1 %1328, label %block_400ee2, label %block_.L_400f46

block_400ee2:                                     ; preds = %block_.L_400ed6
  %1330 = add i64 %1293, -24
  %1331 = add i64 %1329, 4
  store i64 %1331, i64* %PC.i, align 8
  %1332 = inttoptr i64 %1330 to i64*
  %1333 = load i64, i64* %1332, align 8
  store i64 %1333, i64* %RAX.i649, align 8
  %1334 = add i64 %1329, 8
  store i64 %1334, i64* %PC.i, align 8
  %1335 = load i32, i32* %1296, align 4
  %1336 = sext i32 %1335 to i64
  %1337 = mul nsw i64 %1336, 8000
  store i64 %1337, i64* %RCX.i661, align 8
  %1338 = lshr i64 %1337, 63
  %1339 = add i64 %1337, %1333
  store i64 %1339, i64* %RAX.i649, align 8
  %1340 = icmp ult i64 %1339, %1333
  %1341 = icmp ult i64 %1339, %1337
  %1342 = or i1 %1340, %1341
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %14, align 1
  %1344 = trunc i64 %1339 to i32
  %1345 = and i32 %1344, 255
  %1346 = tail call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  store i8 %1349, i8* %21, align 1
  %1350 = xor i64 %1333, %1339
  %1351 = lshr i64 %1350, 4
  %1352 = trunc i64 %1351 to i8
  %1353 = and i8 %1352, 1
  store i8 %1353, i8* %27, align 1
  %1354 = icmp eq i64 %1339, 0
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %30, align 1
  %1356 = lshr i64 %1339, 63
  %1357 = trunc i64 %1356 to i8
  store i8 %1357, i8* %33, align 1
  %1358 = lshr i64 %1333, 63
  %1359 = xor i64 %1356, %1358
  %1360 = xor i64 %1356, %1338
  %1361 = add nuw nsw i64 %1359, %1360
  %1362 = icmp eq i64 %1361, 2
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %39, align 1
  %1364 = add i64 %1293, -60
  %1365 = add i64 %1329, 22
  store i64 %1365, i64* %PC.i, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  %1368 = sext i32 %1367 to i64
  store i64 %1368, i64* %RCX.i661, align 8
  %1369 = shl nsw i64 %1368, 3
  %1370 = add i64 %1369, %1339
  %1371 = add i64 %1329, 27
  store i64 %1371, i64* %PC.i, align 8
  %1372 = inttoptr i64 %1370 to double*
  %1373 = load double, double* %1372, align 8
  store double %1373, double* %110, align 1
  store double 0.000000e+00, double* %111, align 1
  %1374 = add i64 %1329, 31
  store i64 %1374, i64* %PC.i, align 8
  %1375 = load i64, i64* %1332, align 8
  store i64 %1375, i64* %RAX.i649, align 8
  %1376 = add i64 %1329, 35
  store i64 %1376, i64* %PC.i, align 8
  %1377 = load i32, i32* %1296, align 4
  %1378 = sext i32 %1377 to i64
  %1379 = mul nsw i64 %1378, 8000
  store i64 %1379, i64* %RCX.i661, align 8
  %1380 = lshr i64 %1379, 63
  %1381 = add i64 %1379, %1375
  store i64 %1381, i64* %RAX.i649, align 8
  %1382 = icmp ult i64 %1381, %1375
  %1383 = icmp ult i64 %1381, %1379
  %1384 = or i1 %1382, %1383
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %14, align 1
  %1386 = trunc i64 %1381 to i32
  %1387 = and i32 %1386, 255
  %1388 = tail call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  store i8 %1391, i8* %21, align 1
  %1392 = xor i64 %1375, %1381
  %1393 = lshr i64 %1392, 4
  %1394 = trunc i64 %1393 to i8
  %1395 = and i8 %1394, 1
  store i8 %1395, i8* %27, align 1
  %1396 = icmp eq i64 %1381, 0
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %30, align 1
  %1398 = lshr i64 %1381, 63
  %1399 = trunc i64 %1398 to i8
  store i8 %1399, i8* %33, align 1
  %1400 = lshr i64 %1375, 63
  %1401 = xor i64 %1398, %1400
  %1402 = xor i64 %1398, %1380
  %1403 = add nuw nsw i64 %1401, %1402
  %1404 = icmp eq i64 %1403, 2
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %39, align 1
  %1406 = load i64, i64* %RBP.i, align 8
  %1407 = add i64 %1406, -64
  %1408 = add i64 %1329, 49
  store i64 %1408, i64* %PC.i, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = sext i32 %1410 to i64
  store i64 %1411, i64* %RCX.i661, align 8
  %1412 = shl nsw i64 %1411, 3
  %1413 = add i64 %1412, %1381
  %1414 = add i64 %1329, 54
  store i64 %1414, i64* %PC.i, align 8
  %1415 = inttoptr i64 %1413 to double*
  %1416 = load double, double* %1415, align 8
  %1417 = fmul double %1373, %1416
  store double %1417, double* %110, align 1
  store i64 0, i64* %103, align 1
  %1418 = add i64 %1406, -32
  %1419 = add i64 %1329, 58
  store i64 %1419, i64* %PC.i, align 8
  %1420 = inttoptr i64 %1418 to i64*
  %1421 = load i64, i64* %1420, align 8
  store i64 %1421, i64* %RAX.i649, align 8
  %1422 = add i64 %1406, -60
  %1423 = add i64 %1329, 62
  store i64 %1423, i64* %PC.i, align 8
  %1424 = inttoptr i64 %1422 to i32*
  %1425 = load i32, i32* %1424, align 4
  %1426 = sext i32 %1425 to i64
  %1427 = mul nsw i64 %1426, 8000
  store i64 %1427, i64* %RCX.i661, align 8
  %1428 = lshr i64 %1427, 63
  %1429 = add i64 %1427, %1421
  store i64 %1429, i64* %RAX.i649, align 8
  %1430 = icmp ult i64 %1429, %1421
  %1431 = icmp ult i64 %1429, %1427
  %1432 = or i1 %1430, %1431
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %14, align 1
  %1434 = trunc i64 %1429 to i32
  %1435 = and i32 %1434, 255
  %1436 = tail call i32 @llvm.ctpop.i32(i32 %1435)
  %1437 = trunc i32 %1436 to i8
  %1438 = and i8 %1437, 1
  %1439 = xor i8 %1438, 1
  store i8 %1439, i8* %21, align 1
  %1440 = xor i64 %1421, %1429
  %1441 = lshr i64 %1440, 4
  %1442 = trunc i64 %1441 to i8
  %1443 = and i8 %1442, 1
  store i8 %1443, i8* %27, align 1
  %1444 = icmp eq i64 %1429, 0
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %30, align 1
  %1446 = lshr i64 %1429, 63
  %1447 = trunc i64 %1446 to i8
  store i8 %1447, i8* %33, align 1
  %1448 = lshr i64 %1421, 63
  %1449 = xor i64 %1446, %1448
  %1450 = xor i64 %1446, %1428
  %1451 = add nuw nsw i64 %1449, %1450
  %1452 = icmp eq i64 %1451, 2
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %39, align 1
  %1454 = add i64 %1329, 76
  store i64 %1454, i64* %PC.i, align 8
  %1455 = load i32, i32* %1409, align 4
  %1456 = sext i32 %1455 to i64
  store i64 %1456, i64* %RCX.i661, align 8
  %1457 = shl nsw i64 %1456, 3
  %1458 = add i64 %1457, %1429
  %1459 = add i64 %1329, 81
  store i64 %1459, i64* %PC.i, align 8
  %1460 = inttoptr i64 %1458 to double*
  %1461 = load double, double* %1460, align 8
  %1462 = fadd double %1417, %1461
  store double %1462, double* %110, align 1
  store i64 0, i64* %103, align 1
  %1463 = add i64 %1329, 86
  store i64 %1463, i64* %PC.i, align 8
  store double %1462, double* %1460, align 8
  %1464 = load i64, i64* %RBP.i, align 8
  %1465 = add i64 %1464, -52
  %1466 = load i64, i64* %PC.i, align 8
  %1467 = add i64 %1466, 3
  store i64 %1467, i64* %PC.i, align 8
  %1468 = inttoptr i64 %1465 to i32*
  %1469 = load i32, i32* %1468, align 4
  %1470 = add i32 %1469, 1
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RAX.i649, align 8
  %1472 = icmp eq i32 %1469, -1
  %1473 = icmp eq i32 %1470, 0
  %1474 = or i1 %1472, %1473
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %14, align 1
  %1476 = and i32 %1470, 255
  %1477 = tail call i32 @llvm.ctpop.i32(i32 %1476)
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  store i8 %1480, i8* %21, align 1
  %1481 = xor i32 %1469, %1470
  %1482 = lshr i32 %1481, 4
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  store i8 %1484, i8* %27, align 1
  %1485 = icmp eq i32 %1470, 0
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %30, align 1
  %1487 = lshr i32 %1470, 31
  %1488 = trunc i32 %1487 to i8
  store i8 %1488, i8* %33, align 1
  %1489 = lshr i32 %1469, 31
  %1490 = xor i32 %1487, %1489
  %1491 = add nuw nsw i32 %1490, %1487
  %1492 = icmp eq i32 %1491, 2
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %39, align 1
  %1494 = add i64 %1466, 9
  store i64 %1494, i64* %PC.i, align 8
  store i32 %1470, i32* %1468, align 4
  %1495 = load i64, i64* %PC.i, align 8
  %1496 = add i64 %1495, -107
  store i64 %1496, i64* %3, align 8
  br label %block_.L_400ed6

block_.L_400f46:                                  ; preds = %block_.L_400ed6
  %1497 = add i64 %1293, -32
  %1498 = add i64 %1329, 4
  store i64 %1498, i64* %PC.i, align 8
  %1499 = inttoptr i64 %1497 to i64*
  %1500 = load i64, i64* %1499, align 8
  store i64 %1500, i64* %RAX.i649, align 8
  %1501 = add i64 %1293, -60
  %1502 = add i64 %1329, 8
  store i64 %1502, i64* %PC.i, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = sext i32 %1504 to i64
  %1506 = mul nsw i64 %1505, 8000
  store i64 %1506, i64* %RCX.i661, align 8
  %1507 = lshr i64 %1506, 63
  %1508 = add i64 %1506, %1500
  store i64 %1508, i64* %RAX.i649, align 8
  %1509 = icmp ult i64 %1508, %1500
  %1510 = icmp ult i64 %1508, %1506
  %1511 = or i1 %1509, %1510
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %14, align 1
  %1513 = trunc i64 %1508 to i32
  %1514 = and i32 %1513, 255
  %1515 = tail call i32 @llvm.ctpop.i32(i32 %1514)
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  %1518 = xor i8 %1517, 1
  store i8 %1518, i8* %21, align 1
  %1519 = xor i64 %1500, %1508
  %1520 = lshr i64 %1519, 4
  %1521 = trunc i64 %1520 to i8
  %1522 = and i8 %1521, 1
  store i8 %1522, i8* %27, align 1
  %1523 = icmp eq i64 %1508, 0
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %30, align 1
  %1525 = lshr i64 %1508, 63
  %1526 = trunc i64 %1525 to i8
  store i8 %1526, i8* %33, align 1
  %1527 = lshr i64 %1500, 63
  %1528 = xor i64 %1525, %1527
  %1529 = xor i64 %1525, %1507
  %1530 = add nuw nsw i64 %1528, %1529
  %1531 = icmp eq i64 %1530, 2
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %39, align 1
  %1533 = add i64 %1293, -64
  %1534 = add i64 %1329, 22
  store i64 %1534, i64* %PC.i, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = sext i32 %1536 to i64
  store i64 %1537, i64* %RCX.i661, align 8
  %1538 = shl nsw i64 %1537, 3
  %1539 = add i64 %1538, %1508
  %1540 = add i64 %1329, 27
  store i64 %1540, i64* %PC.i, align 8
  %1541 = inttoptr i64 %1539 to i64*
  %1542 = load i64, i64* %1541, align 8
  %1543 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1542, i64* %1543, align 1
  store double 0.000000e+00, double* %111, align 1
  %1544 = add i64 %1329, 31
  store i64 %1544, i64* %PC.i, align 8
  %1545 = load i64, i64* %1499, align 8
  store i64 %1545, i64* %RAX.i649, align 8
  %1546 = add i64 %1329, 35
  store i64 %1546, i64* %PC.i, align 8
  %1547 = load i32, i32* %1535, align 4
  %1548 = sext i32 %1547 to i64
  %1549 = mul nsw i64 %1548, 8000
  store i64 %1549, i64* %RCX.i661, align 8
  %1550 = lshr i64 %1549, 63
  %1551 = add i64 %1549, %1545
  store i64 %1551, i64* %RAX.i649, align 8
  %1552 = icmp ult i64 %1551, %1545
  %1553 = icmp ult i64 %1551, %1549
  %1554 = or i1 %1552, %1553
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %14, align 1
  %1556 = trunc i64 %1551 to i32
  %1557 = and i32 %1556, 255
  %1558 = tail call i32 @llvm.ctpop.i32(i32 %1557)
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  store i8 %1561, i8* %21, align 1
  %1562 = xor i64 %1545, %1551
  %1563 = lshr i64 %1562, 4
  %1564 = trunc i64 %1563 to i8
  %1565 = and i8 %1564, 1
  store i8 %1565, i8* %27, align 1
  %1566 = icmp eq i64 %1551, 0
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %30, align 1
  %1568 = lshr i64 %1551, 63
  %1569 = trunc i64 %1568 to i8
  store i8 %1569, i8* %33, align 1
  %1570 = lshr i64 %1545, 63
  %1571 = xor i64 %1568, %1570
  %1572 = xor i64 %1568, %1550
  %1573 = add nuw nsw i64 %1571, %1572
  %1574 = icmp eq i64 %1573, 2
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %39, align 1
  %1576 = load i64, i64* %RBP.i, align 8
  %1577 = add i64 %1576, -60
  %1578 = add i64 %1329, 49
  store i64 %1578, i64* %PC.i, align 8
  %1579 = inttoptr i64 %1577 to i32*
  %1580 = load i32, i32* %1579, align 4
  %1581 = sext i32 %1580 to i64
  store i64 %1581, i64* %RCX.i661, align 8
  %1582 = shl nsw i64 %1581, 3
  %1583 = add i64 %1582, %1551
  %1584 = add i64 %1329, 54
  store i64 %1584, i64* %PC.i, align 8
  %1585 = inttoptr i64 %1583 to i64*
  store i64 %1542, i64* %1585, align 8
  %1586 = load i64, i64* %RBP.i, align 8
  %1587 = add i64 %1586, -64
  %1588 = load i64, i64* %PC.i, align 8
  %1589 = add i64 %1588, 3
  store i64 %1589, i64* %PC.i, align 8
  %1590 = inttoptr i64 %1587 to i32*
  %1591 = load i32, i32* %1590, align 4
  %1592 = add i32 %1591, 1
  %1593 = zext i32 %1592 to i64
  store i64 %1593, i64* %RAX.i649, align 8
  %1594 = icmp eq i32 %1591, -1
  %1595 = icmp eq i32 %1592, 0
  %1596 = or i1 %1594, %1595
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %14, align 1
  %1598 = and i32 %1592, 255
  %1599 = tail call i32 @llvm.ctpop.i32(i32 %1598)
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %21, align 1
  %1603 = xor i32 %1591, %1592
  %1604 = lshr i32 %1603, 4
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  store i8 %1606, i8* %27, align 1
  %1607 = icmp eq i32 %1592, 0
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %30, align 1
  %1609 = lshr i32 %1592, 31
  %1610 = trunc i32 %1609 to i8
  store i8 %1610, i8* %33, align 1
  %1611 = lshr i32 %1591, 31
  %1612 = xor i32 %1609, %1611
  %1613 = add nuw nsw i32 %1612, %1609
  %1614 = icmp eq i32 %1613, 2
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %39, align 1
  %1616 = add i64 %1588, 9
  store i64 %1616, i64* %PC.i, align 8
  store i32 %1592, i32* %1590, align 4
  %1617 = load i64, i64* %PC.i, align 8
  %1618 = add i64 %1617, -224
  store i64 %1618, i64* %3, align 8
  br label %block_.L_400ea5

block_.L_400f8a:                                  ; preds = %block_.L_400ea5
  %1619 = add i64 %1205, -60
  %1620 = add i64 %1241, 8
  store i64 %1620, i64* %PC.i, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = add i32 %1622, 1
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RAX.i649, align 8
  %1625 = icmp eq i32 %1622, -1
  %1626 = icmp eq i32 %1623, 0
  %1627 = or i1 %1625, %1626
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %14, align 1
  %1629 = and i32 %1623, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %21, align 1
  %1634 = xor i32 %1622, %1623
  %1635 = lshr i32 %1634, 4
  %1636 = trunc i32 %1635 to i8
  %1637 = and i8 %1636, 1
  store i8 %1637, i8* %27, align 1
  %1638 = icmp eq i32 %1623, 0
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %30, align 1
  %1640 = lshr i32 %1623, 31
  %1641 = trunc i32 %1640 to i8
  store i8 %1641, i8* %33, align 1
  %1642 = lshr i32 %1622, 31
  %1643 = xor i32 %1640, %1642
  %1644 = add nuw nsw i32 %1643, %1640
  %1645 = icmp eq i32 %1644, 2
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %39, align 1
  %1647 = add i64 %1241, 14
  store i64 %1647, i64* %PC.i, align 8
  store i32 %1623, i32* %1621, align 4
  %1648 = load i64, i64* %PC.i, align 8
  %1649 = add i64 %1648, -304
  store i64 %1649, i64* %3, align 8
  br label %block_.L_400e68

block_.L_400f9d:                                  ; preds = %block_.L_400e68
  %1650 = load i64, i64* bitcast (%G_0x47b__rip__type* @G_0x47b__rip_ to i64*), align 8
  %1651 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1650, i64* %1651, align 1
  store double 0.000000e+00, double* %111, align 1
  %1652 = add i64 %1088, -32
  %1653 = add i64 %1126, 12
  store i64 %1653, i64* %PC.i, align 8
  %1654 = inttoptr i64 %1652 to i64*
  %1655 = load i64, i64* %1654, align 8
  store i64 %1655, i64* %RAX.i649, align 8
  %1656 = add i64 %1126, 15
  store i64 %1656, i64* %PC.i, align 8
  %1657 = load i32, i32* %1096, align 4
  %1658 = add i32 %1657, -1
  %1659 = zext i32 %1658 to i64
  store i64 %1659, i64* %RCX.i661, align 8
  %1660 = sext i32 %1658 to i64
  %1661 = mul nsw i64 %1660, 8000
  store i64 %1661, i64* %RDX.i664, align 8
  %1662 = lshr i64 %1661, 63
  %1663 = add i64 %1661, %1655
  store i64 %1663, i64* %RAX.i649, align 8
  %1664 = icmp ult i64 %1663, %1655
  %1665 = icmp ult i64 %1663, %1661
  %1666 = or i1 %1664, %1665
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %14, align 1
  %1668 = trunc i64 %1663 to i32
  %1669 = and i32 %1668, 255
  %1670 = tail call i32 @llvm.ctpop.i32(i32 %1669)
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = xor i8 %1672, 1
  store i8 %1673, i8* %21, align 1
  %1674 = xor i64 %1655, %1663
  %1675 = lshr i64 %1674, 4
  %1676 = trunc i64 %1675 to i8
  %1677 = and i8 %1676, 1
  store i8 %1677, i8* %27, align 1
  %1678 = icmp eq i64 %1663, 0
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %30, align 1
  %1680 = lshr i64 %1663, 63
  %1681 = trunc i64 %1680 to i8
  store i8 %1681, i8* %33, align 1
  %1682 = lshr i64 %1655, 63
  %1683 = xor i64 %1680, %1682
  %1684 = xor i64 %1680, %1662
  %1685 = add nuw nsw i64 %1683, %1684
  %1686 = icmp eq i64 %1685, 2
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %39, align 1
  %1688 = load i64, i64* %RBP.i, align 8
  %1689 = add i64 %1688, -4
  %1690 = add i64 %1126, 34
  store i64 %1690, i64* %PC.i, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = add i32 %1692, -1
  %1694 = zext i32 %1693 to i64
  store i64 %1694, i64* %RCX.i661, align 8
  %1695 = sext i32 %1693 to i64
  store i64 %1695, i64* %RDX.i664, align 8
  %1696 = shl nsw i64 %1695, 3
  %1697 = add i64 %1696, %1663
  %1698 = add i64 %1126, 45
  store i64 %1698, i64* %PC.i, align 8
  %1699 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  %1700 = load i64, i64* %1699, align 1
  %1701 = inttoptr i64 %1697 to i64*
  store i64 %1700, i64* %1701, align 8
  %1702 = load i64, i64* %RSP.i383, align 8
  %1703 = load i64, i64* %PC.i, align 8
  %1704 = add i64 %1702, 80
  store i64 %1704, i64* %RSP.i383, align 8
  %1705 = icmp ugt i64 %1702, -81
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %14, align 1
  %1707 = trunc i64 %1704 to i32
  %1708 = and i32 %1707, 255
  %1709 = tail call i32 @llvm.ctpop.i32(i32 %1708)
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  %1712 = xor i8 %1711, 1
  store i8 %1712, i8* %21, align 1
  %1713 = xor i64 %1702, 16
  %1714 = xor i64 %1713, %1704
  %1715 = lshr i64 %1714, 4
  %1716 = trunc i64 %1715 to i8
  %1717 = and i8 %1716, 1
  store i8 %1717, i8* %27, align 1
  %1718 = icmp eq i64 %1704, 0
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %30, align 1
  %1720 = lshr i64 %1704, 63
  %1721 = trunc i64 %1720 to i8
  store i8 %1721, i8* %33, align 1
  %1722 = lshr i64 %1702, 63
  %1723 = xor i64 %1720, %1722
  %1724 = add nuw nsw i64 %1723, %1720
  %1725 = icmp eq i64 %1724, 2
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %39, align 1
  %1727 = add i64 %1703, 5
  store i64 %1727, i64* %PC.i, align 8
  %1728 = add i64 %1702, 88
  %1729 = inttoptr i64 %1704 to i64*
  %1730 = load i64, i64* %1729, align 8
  store i64 %1730, i64* %RBP.i, align 8
  store i64 %1728, i64* %6, align 8
  %1731 = add i64 %1703, 6
  store i64 %1731, i64* %PC.i, align 8
  %1732 = inttoptr i64 %1728 to i64*
  %1733 = load i64, i64* %1732, align 8
  store i64 %1733, i64* %3, align 8
  %1734 = add i64 %1702, 96
  store i64 %1734, i64* %6, align 8
  ret %struct.Memory* %MEMORY.5
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x868__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x868__rip__type* @G_0x868__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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

define %struct.Memory* @routine_jge_.L_400c6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400c41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imulq__0x1f40___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %10 = mul nsw i128 %9, 8000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400bfa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400bd7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400dae(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400d14(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c94(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400478
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400478
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

define %struct.Memory* @routine_jb_.L_400d7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6ae__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6ae__rip__type* @G_0x6ae__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d8e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400c71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400e61(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400e4e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dc8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400db5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %18 = trunc i64 %3 to i32
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
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

define %struct.Memory* @routine_jge_.L_400f9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x59f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x59f__rip__type* @G_0x59f__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400f8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_400f46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ed6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ea5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f8f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e68(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x47b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x47b__rip__type* @G_0x47b__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imulq__0x1f40___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %10 = mul nsw i128 %9, 8000
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 192
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

define %struct.Memory* @routine_addq__rdx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
