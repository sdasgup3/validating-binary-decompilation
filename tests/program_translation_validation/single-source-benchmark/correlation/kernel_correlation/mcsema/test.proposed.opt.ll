; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x47b__rip__4198309__type = type <{ [16 x i8] }>
%G_0x59f__rip__4198017__type = type <{ [16 x i8] }>
%G_0x6ae__rip__4197746__type = type <{ [16 x i8] }>
%G_0x868__rip__4197296__type = type <{ [16 x i8] }>
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
@G_0x47b__rip__4198309_ = local_unnamed_addr global %G_0x47b__rip__4198309__type zeroinitializer
@G_0x59f__rip__4198017_ = local_unnamed_addr global %G_0x59f__rip__4198017__type zeroinitializer
@G_0x6ae__rip__4197746_ = local_unnamed_addr global %G_0x6ae__rip__4197746__type zeroinitializer
@G_0x868__rip__4197296_ = local_unnamed_addr global %G_0x868__rip__4197296__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_correlation(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %41 = load i64, i64* bitcast (%G_0x868__rip__4197296__type* @G_0x868__rip__4197296_ to i64*), align 8
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
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -8
  %54 = load i32, i32* %ESI.i, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -16
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 5
  store i64 %62, i64* %3, align 8
  %63 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %58, i64 0, i32 0, i32 0, i32 0, i64 0
  %64 = load i64, i64* %63, align 1
  %65 = inttoptr i64 %60 to i64*
  store i64 %64, i64* %65, align 8
  %RDX.i664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -24
  %68 = load i64, i64* %RDX.i664, align 8
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %RCX.i661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -32
  %74 = load i64, i64* %RCX.i661, align 8
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 4
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %73 to i64*
  store i64 %74, i64* %77, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -40
  %80 = load i64, i64* %R8.i, align 8
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %79 to i64*
  store i64 %80, i64* %83, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -48
  %86 = load i64, i64* %R9.i, align 8
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89, align 8
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -72
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 5
  store i64 %93, i64* %3, align 8
  %94 = load i64, i64* %43, align 1
  %95 = inttoptr i64 %91 to i64*
  store i64 %94, i64* %95, align 8
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -56
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 7
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i32*
  store i32 0, i32* %100, align 4
  %RAX.i649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %101 = bitcast %union.VectorReg* %58 to i8*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %103 = bitcast %union.VectorReg* %58 to i32*
  %104 = getelementptr inbounds i8, i8* %101, i64 4
  %105 = bitcast i8* %104 to i32*
  %106 = bitcast i64* %102 to i32*
  %107 = getelementptr inbounds i8, i8* %101, i64 12
  %108 = bitcast i8* %107 to i32*
  %109 = bitcast %union.VectorReg* %58 to double*
  %110 = bitcast i64* %102 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400bd7

block_.L_400bd7:                                  ; preds = %block_.L_400c41, %entry
  %111 = phi i64 [ %345, %block_.L_400c41 ], [ %.pre, %entry ]
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -56
  %114 = add i64 %111, 3
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RAX.i649, align 8
  %118 = add i64 %112, -4
  %119 = add i64 %111, 6
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = sub i32 %116, %121
  %123 = icmp ult i32 %116, %121
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %14, align 1
  %125 = and i32 %122, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %21, align 1
  %130 = xor i32 %121, %116
  %131 = xor i32 %130, %122
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %27, align 1
  %135 = icmp eq i32 %122, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %30, align 1
  %137 = lshr i32 %122, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %33, align 1
  %139 = lshr i32 %116, 31
  %140 = lshr i32 %121, 31
  %141 = xor i32 %140, %139
  %142 = xor i32 %137, %139
  %143 = add nuw nsw i32 %142, %141
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %39, align 1
  %146 = icmp ne i8 %138, 0
  %147 = xor i1 %146, %144
  %.v = select i1 %147, i64 12, i64 147
  %148 = add i64 %111, %.v
  store i64 %148, i64* %3, align 8
  br i1 %147, label %block_400be3, label %block_.L_400c6a

block_400be3:                                     ; preds = %block_.L_400bd7
  store i32 0, i32* %103, align 1
  store i32 0, i32* %105, align 1
  store i32 0, i32* %106, align 1
  store i32 0, i32* %108, align 1
  %149 = add i64 %112, -40
  %150 = add i64 %148, 7
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i64*
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %RAX.i649, align 8
  %153 = add i64 %148, 11
  store i64 %153, i64* %3, align 8
  %154 = load i32, i32* %115, align 4
  %155 = sext i32 %154 to i64
  store i64 %155, i64* %RCX.i661, align 8
  %156 = shl nsw i64 %155, 3
  %157 = add i64 %156, %152
  %158 = add i64 %148, 16
  store i64 %158, i64* %3, align 8
  %159 = load i64, i64* %63, align 1
  %160 = inttoptr i64 %157 to i64*
  store i64 %159, i64* %160, align 8
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -52
  %163 = load i64, i64* %3, align 8
  %164 = add i64 %163, 7
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %162 to i32*
  store i32 0, i32* %165, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400bfa

block_.L_400bfa:                                  ; preds = %block_400c06, %block_400be3
  %166 = phi i64 [ %293, %block_400c06 ], [ %.pre1, %block_400be3 ]
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -52
  %169 = add i64 %166, 3
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %168 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = zext i32 %171 to i64
  store i64 %172, i64* %RAX.i649, align 8
  %173 = add i64 %167, -8
  %174 = add i64 %166, 6
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i32*
  %176 = load i32, i32* %175, align 4
  %177 = sub i32 %171, %176
  %178 = icmp ult i32 %171, %176
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %14, align 1
  %180 = and i32 %177, 255
  %181 = tail call i32 @llvm.ctpop.i32(i32 %180)
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  %184 = xor i8 %183, 1
  store i8 %184, i8* %21, align 1
  %185 = xor i32 %176, %171
  %186 = xor i32 %185, %177
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %27, align 1
  %190 = icmp eq i32 %177, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %30, align 1
  %192 = lshr i32 %177, 31
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %33, align 1
  %194 = lshr i32 %171, 31
  %195 = lshr i32 %176, 31
  %196 = xor i32 %195, %194
  %197 = xor i32 %192, %194
  %198 = add nuw nsw i32 %197, %196
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %39, align 1
  %201 = icmp ne i8 %193, 0
  %202 = xor i1 %201, %199
  %.v11 = select i1 %202, i64 12, i64 71
  %203 = add i64 %166, %.v11
  store i64 %203, i64* %3, align 8
  br i1 %202, label %block_400c06, label %block_.L_400c41

block_400c06:                                     ; preds = %block_.L_400bfa
  %204 = add i64 %167, -24
  %205 = add i64 %203, 4
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RAX.i649, align 8
  %208 = add i64 %203, 8
  store i64 %208, i64* %3, align 8
  %209 = load i32, i32* %170, align 4
  %210 = sext i32 %209 to i64
  %211 = mul nsw i64 %210, 8000
  store i64 %211, i64* %RCX.i661, align 8
  %212 = lshr i64 %211, 63
  %213 = add i64 %211, %207
  store i64 %213, i64* %RAX.i649, align 8
  %214 = icmp ult i64 %213, %207
  %215 = icmp ult i64 %213, %211
  %216 = or i1 %214, %215
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %14, align 1
  %218 = trunc i64 %213 to i32
  %219 = and i32 %218, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %21, align 1
  %224 = xor i64 %207, %213
  %225 = lshr i64 %224, 4
  %226 = trunc i64 %225 to i8
  %227 = and i8 %226, 1
  store i8 %227, i8* %27, align 1
  %228 = icmp eq i64 %213, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %30, align 1
  %230 = lshr i64 %213, 63
  %231 = trunc i64 %230 to i8
  store i8 %231, i8* %33, align 1
  %232 = lshr i64 %207, 63
  %233 = xor i64 %230, %232
  %234 = xor i64 %230, %212
  %235 = add nuw nsw i64 %233, %234
  %236 = icmp eq i64 %235, 2
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %39, align 1
  %238 = add i64 %167, -56
  %239 = add i64 %203, 22
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %RCX.i661, align 8
  %243 = shl nsw i64 %242, 3
  %244 = add i64 %243, %213
  %245 = add i64 %203, 27
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to double*
  %247 = load double, double* %246, align 8
  store double %247, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %248 = add i64 %167, -40
  %249 = add i64 %203, 31
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RAX.i649, align 8
  %252 = add i64 %203, 35
  store i64 %252, i64* %3, align 8
  %253 = load i32, i32* %240, align 4
  %254 = sext i32 %253 to i64
  store i64 %254, i64* %RCX.i661, align 8
  %255 = shl nsw i64 %254, 3
  %256 = add i64 %255, %251
  %257 = add i64 %203, 40
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to double*
  %259 = load double, double* %258, align 8
  %260 = fadd double %247, %259
  store double %260, double* %109, align 1
  store i64 0, i64* %102, align 1
  %261 = add i64 %203, 45
  store i64 %261, i64* %3, align 8
  store double %260, double* %258, align 8
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -52
  %264 = load i64, i64* %3, align 8
  %265 = add i64 %264, 3
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %263 to i32*
  %267 = load i32, i32* %266, align 4
  %268 = add i32 %267, 1
  %269 = zext i32 %268 to i64
  store i64 %269, i64* %RAX.i649, align 8
  %270 = icmp eq i32 %267, -1
  %271 = icmp eq i32 %268, 0
  %272 = or i1 %270, %271
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %14, align 1
  %274 = and i32 %268, 255
  %275 = tail call i32 @llvm.ctpop.i32(i32 %274)
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  store i8 %278, i8* %21, align 1
  %279 = xor i32 %267, %268
  %280 = lshr i32 %279, 4
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  store i8 %282, i8* %27, align 1
  %283 = zext i1 %271 to i8
  store i8 %283, i8* %30, align 1
  %284 = lshr i32 %268, 31
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %33, align 1
  %286 = lshr i32 %267, 31
  %287 = xor i32 %284, %286
  %288 = add nuw nsw i32 %287, %284
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %39, align 1
  %291 = add i64 %264, 9
  store i64 %291, i64* %3, align 8
  store i32 %268, i32* %266, align 4
  %292 = load i64, i64* %3, align 8
  %293 = add i64 %292, -66
  store i64 %293, i64* %3, align 8
  br label %block_.L_400bfa

block_.L_400c41:                                  ; preds = %block_.L_400bfa
  %294 = add i64 %167, -16
  %295 = add i64 %203, 5
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to double*
  %297 = load double, double* %296, align 8
  store double %297, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %298 = add i64 %167, -40
  %299 = add i64 %203, 9
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %RAX.i649, align 8
  %302 = add i64 %167, -56
  %303 = add i64 %203, 13
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  %305 = load i32, i32* %304, align 4
  %306 = sext i32 %305 to i64
  store i64 %306, i64* %RCX.i661, align 8
  %307 = shl nsw i64 %306, 3
  %308 = add i64 %307, %301
  %309 = add i64 %203, 18
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to double*
  %311 = load double, double* %310, align 8
  %312 = fdiv double %311, %297
  store double %312, double* %42, align 1
  store i64 0, i64* %44, align 1
  %313 = add i64 %203, 27
  store i64 %313, i64* %3, align 8
  store double %312, double* %310, align 8
  %314 = load i64, i64* %RBP.i, align 8
  %315 = add i64 %314, -56
  %316 = load i64, i64* %3, align 8
  %317 = add i64 %316, 3
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %315 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = add i32 %319, 1
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RAX.i649, align 8
  %322 = icmp eq i32 %319, -1
  %323 = icmp eq i32 %320, 0
  %324 = or i1 %322, %323
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %14, align 1
  %326 = and i32 %320, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %21, align 1
  %331 = xor i32 %319, %320
  %332 = lshr i32 %331, 4
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  store i8 %334, i8* %27, align 1
  %335 = zext i1 %323 to i8
  store i8 %335, i8* %30, align 1
  %336 = lshr i32 %320, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %33, align 1
  %338 = lshr i32 %319, 31
  %339 = xor i32 %336, %338
  %340 = add nuw nsw i32 %339, %336
  %341 = icmp eq i32 %340, 2
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %39, align 1
  %343 = add i64 %316, 9
  store i64 %343, i64* %3, align 8
  store i32 %320, i32* %318, align 4
  %344 = load i64, i64* %3, align 8
  %345 = add i64 %344, -142
  store i64 %345, i64* %3, align 8
  br label %block_.L_400bd7

block_.L_400c6a:                                  ; preds = %block_.L_400bd7
  %346 = add i64 %148, 7
  store i64 %346, i64* %3, align 8
  store i32 0, i32* %115, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_400c71

block_.L_400c71:                                  ; preds = %block_.L_400d8e, %block_.L_400c6a
  %347 = phi i64 [ %.pre2, %block_.L_400c6a ], [ %788, %block_.L_400d8e ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_400c6a ], [ %709, %block_.L_400d8e ]
  %348 = load i64, i64* %RBP.i, align 8
  %349 = add i64 %348, -56
  %350 = add i64 %347, 3
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %349 to i32*
  %352 = load i32, i32* %351, align 4
  %353 = zext i32 %352 to i64
  store i64 %353, i64* %RAX.i649, align 8
  %354 = add i64 %348, -4
  %355 = add i64 %347, 6
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = sub i32 %352, %357
  %359 = icmp ult i32 %352, %357
  %360 = zext i1 %359 to i8
  store i8 %360, i8* %14, align 1
  %361 = and i32 %358, 255
  %362 = tail call i32 @llvm.ctpop.i32(i32 %361)
  %363 = trunc i32 %362 to i8
  %364 = and i8 %363, 1
  %365 = xor i8 %364, 1
  store i8 %365, i8* %21, align 1
  %366 = xor i32 %357, %352
  %367 = xor i32 %366, %358
  %368 = lshr i32 %367, 4
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  store i8 %370, i8* %27, align 1
  %371 = icmp eq i32 %358, 0
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %30, align 1
  %373 = lshr i32 %358, 31
  %374 = trunc i32 %373 to i8
  store i8 %374, i8* %33, align 1
  %375 = lshr i32 %352, 31
  %376 = lshr i32 %357, 31
  %377 = xor i32 %376, %375
  %378 = xor i32 %373, %375
  %379 = add nuw nsw i32 %378, %377
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %39, align 1
  %382 = icmp ne i8 %374, 0
  %383 = xor i1 %382, %380
  %.v12 = select i1 %383, i64 12, i64 317
  %384 = add i64 %347, %.v12
  store i64 %384, i64* %3, align 8
  br i1 %383, label %block_400c7d, label %block_.L_400dae

block_400c7d:                                     ; preds = %block_.L_400c71
  store i32 0, i32* %103, align 1
  store i32 0, i32* %105, align 1
  store i32 0, i32* %106, align 1
  store i32 0, i32* %108, align 1
  %385 = add i64 %348, -48
  %386 = add i64 %384, 7
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %RAX.i649, align 8
  %389 = add i64 %384, 11
  store i64 %389, i64* %3, align 8
  %390 = load i32, i32* %351, align 4
  %391 = sext i32 %390 to i64
  store i64 %391, i64* %RCX.i661, align 8
  %392 = shl nsw i64 %391, 3
  %393 = add i64 %392, %388
  %394 = add i64 %384, 16
  store i64 %394, i64* %3, align 8
  %395 = load i64, i64* %63, align 1
  %396 = inttoptr i64 %393 to i64*
  store i64 %395, i64* %396, align 8
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -52
  %399 = load i64, i64* %3, align 8
  %400 = add i64 %399, 7
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %398 to i32*
  store i32 0, i32* %401, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400c94

block_.L_400c94:                                  ; preds = %block_400ca0, %block_400c7d
  %402 = phi i64 [ %607, %block_400ca0 ], [ %.pre3, %block_400c7d ]
  %403 = load i64, i64* %RBP.i, align 8
  %404 = add i64 %403, -52
  %405 = add i64 %402, 3
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RAX.i649, align 8
  %409 = add i64 %403, -8
  %410 = add i64 %402, 6
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = sub i32 %407, %412
  %414 = icmp ult i32 %407, %412
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %14, align 1
  %416 = and i32 %413, 255
  %417 = tail call i32 @llvm.ctpop.i32(i32 %416)
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = xor i8 %419, 1
  store i8 %420, i8* %21, align 1
  %421 = xor i32 %412, %407
  %422 = xor i32 %421, %413
  %423 = lshr i32 %422, 4
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  store i8 %425, i8* %27, align 1
  %426 = icmp eq i32 %413, 0
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %30, align 1
  %428 = lshr i32 %413, 31
  %429 = trunc i32 %428 to i8
  store i8 %429, i8* %33, align 1
  %430 = lshr i32 %407, 31
  %431 = lshr i32 %412, 31
  %432 = xor i32 %431, %430
  %433 = xor i32 %428, %430
  %434 = add nuw nsw i32 %433, %432
  %435 = icmp eq i32 %434, 2
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %39, align 1
  %437 = icmp ne i8 %429, 0
  %438 = xor i1 %437, %435
  %.v13 = select i1 %438, i64 12, i64 128
  %439 = add i64 %402, %.v13
  store i64 %439, i64* %3, align 8
  br i1 %438, label %block_400ca0, label %block_.L_400d14

block_400ca0:                                     ; preds = %block_.L_400c94
  %440 = add i64 %403, -24
  %441 = add i64 %439, 4
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %RAX.i649, align 8
  %444 = add i64 %439, 8
  store i64 %444, i64* %3, align 8
  %445 = load i32, i32* %406, align 4
  %446 = sext i32 %445 to i64
  %447 = mul nsw i64 %446, 8000
  store i64 %447, i64* %RCX.i661, align 8
  %448 = lshr i64 %447, 63
  %449 = add i64 %447, %443
  store i64 %449, i64* %RAX.i649, align 8
  %450 = icmp ult i64 %449, %443
  %451 = icmp ult i64 %449, %447
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %14, align 1
  %454 = trunc i64 %449 to i32
  %455 = and i32 %454, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %21, align 1
  %460 = xor i64 %443, %449
  %461 = lshr i64 %460, 4
  %462 = trunc i64 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %27, align 1
  %464 = icmp eq i64 %449, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %30, align 1
  %466 = lshr i64 %449, 63
  %467 = trunc i64 %466 to i8
  store i8 %467, i8* %33, align 1
  %468 = lshr i64 %443, 63
  %469 = xor i64 %466, %468
  %470 = xor i64 %466, %448
  %471 = add nuw nsw i64 %469, %470
  %472 = icmp eq i64 %471, 2
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %39, align 1
  %474 = add i64 %403, -56
  %475 = add i64 %439, 22
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = sext i32 %477 to i64
  store i64 %478, i64* %RCX.i661, align 8
  %479 = shl nsw i64 %478, 3
  %480 = add i64 %479, %449
  %481 = add i64 %439, 27
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to double*
  %483 = load double, double* %482, align 8
  store double %483, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %484 = add i64 %403, -40
  %485 = add i64 %439, 31
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %484 to i64*
  %487 = load i64, i64* %486, align 8
  store i64 %487, i64* %RAX.i649, align 8
  %488 = add i64 %439, 35
  store i64 %488, i64* %3, align 8
  %489 = load i32, i32* %476, align 4
  %490 = sext i32 %489 to i64
  store i64 %490, i64* %RCX.i661, align 8
  %491 = shl nsw i64 %490, 3
  %492 = add i64 %491, %487
  %493 = add i64 %439, 40
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to double*
  %495 = load double, double* %494, align 8
  %496 = fsub double %483, %495
  store double %496, double* %109, align 1
  store i64 0, i64* %102, align 1
  %497 = load i64, i64* %RBP.i, align 8
  %498 = add i64 %497, -24
  %499 = add i64 %439, 44
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RAX.i649, align 8
  %502 = add i64 %497, -52
  %503 = add i64 %439, 48
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = sext i32 %505 to i64
  %507 = mul nsw i64 %506, 8000
  store i64 %507, i64* %RCX.i661, align 8
  %508 = lshr i64 %507, 63
  %509 = add i64 %507, %501
  store i64 %509, i64* %RAX.i649, align 8
  %510 = icmp ult i64 %509, %501
  %511 = icmp ult i64 %509, %507
  %512 = or i1 %510, %511
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %14, align 1
  %514 = trunc i64 %509 to i32
  %515 = and i32 %514, 255
  %516 = tail call i32 @llvm.ctpop.i32(i32 %515)
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  store i8 %519, i8* %21, align 1
  %520 = xor i64 %501, %509
  %521 = lshr i64 %520, 4
  %522 = trunc i64 %521 to i8
  %523 = and i8 %522, 1
  store i8 %523, i8* %27, align 1
  %524 = icmp eq i64 %509, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %30, align 1
  %526 = lshr i64 %509, 63
  %527 = trunc i64 %526 to i8
  store i8 %527, i8* %33, align 1
  %528 = lshr i64 %501, 63
  %529 = xor i64 %526, %528
  %530 = xor i64 %526, %508
  %531 = add nuw nsw i64 %529, %530
  %532 = icmp eq i64 %531, 2
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %39, align 1
  %534 = add i64 %497, -56
  %535 = add i64 %439, 62
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = sext i32 %537 to i64
  store i64 %538, i64* %RCX.i661, align 8
  %539 = shl nsw i64 %538, 3
  %540 = add i64 %539, %509
  %541 = add i64 %439, 67
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to double*
  %543 = load double, double* %542, align 8
  store double %543, double* %42, align 1
  store double 0.000000e+00, double* %45, align 1
  %544 = add i64 %497, -40
  %545 = add i64 %439, 71
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i64*
  %547 = load i64, i64* %546, align 8
  store i64 %547, i64* %RAX.i649, align 8
  %548 = add i64 %439, 75
  store i64 %548, i64* %3, align 8
  %549 = load i32, i32* %536, align 4
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %RCX.i661, align 8
  %551 = shl nsw i64 %550, 3
  %552 = add i64 %551, %547
  %553 = add i64 %439, 80
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to double*
  %555 = load double, double* %554, align 8
  %556 = fsub double %543, %555
  store double %556, double* %42, align 1
  store i64 0, i64* %44, align 1
  %557 = load double, double* %109, align 1
  %558 = fmul double %557, %556
  store double %558, double* %109, align 1
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -48
  %561 = add i64 %439, 88
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %RAX.i649, align 8
  %564 = add i64 %559, -56
  %565 = add i64 %439, 92
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = sext i32 %567 to i64
  store i64 %568, i64* %RCX.i661, align 8
  %569 = shl nsw i64 %568, 3
  %570 = add i64 %569, %563
  %571 = add i64 %439, 97
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to double*
  %573 = load double, double* %572, align 8
  %574 = fadd double %558, %573
  store double %574, double* %109, align 1
  %575 = add i64 %439, 102
  store i64 %575, i64* %3, align 8
  store double %574, double* %572, align 8
  %576 = load i64, i64* %RBP.i, align 8
  %577 = add i64 %576, -52
  %578 = load i64, i64* %3, align 8
  %579 = add i64 %578, 3
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %577 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = add i32 %581, 1
  %583 = zext i32 %582 to i64
  store i64 %583, i64* %RAX.i649, align 8
  %584 = icmp eq i32 %581, -1
  %585 = icmp eq i32 %582, 0
  %586 = or i1 %584, %585
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %14, align 1
  %588 = and i32 %582, 255
  %589 = tail call i32 @llvm.ctpop.i32(i32 %588)
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  %592 = xor i8 %591, 1
  store i8 %592, i8* %21, align 1
  %593 = xor i32 %581, %582
  %594 = lshr i32 %593, 4
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  store i8 %596, i8* %27, align 1
  %597 = zext i1 %585 to i8
  store i8 %597, i8* %30, align 1
  %598 = lshr i32 %582, 31
  %599 = trunc i32 %598 to i8
  store i8 %599, i8* %33, align 1
  %600 = lshr i32 %581, 31
  %601 = xor i32 %598, %600
  %602 = add nuw nsw i32 %601, %598
  %603 = icmp eq i32 %602, 2
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %39, align 1
  %605 = add i64 %578, 9
  store i64 %605, i64* %3, align 8
  store i32 %582, i32* %580, align 4
  %606 = load i64, i64* %3, align 8
  %607 = add i64 %606, -123
  store i64 %607, i64* %3, align 8
  br label %block_.L_400c94

block_.L_400d14:                                  ; preds = %block_.L_400c94
  %608 = add i64 %403, -16
  %609 = add i64 %439, 5
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to double*
  %611 = load double, double* %610, align 8
  store double %611, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %612 = add i64 %403, -48
  %613 = add i64 %439, 9
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %RAX.i649, align 8
  %616 = add i64 %403, -56
  %617 = add i64 %439, 13
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = sext i32 %619 to i64
  store i64 %620, i64* %RCX.i661, align 8
  %621 = shl nsw i64 %620, 3
  %622 = add i64 %621, %615
  %623 = add i64 %439, 18
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to double*
  %625 = load double, double* %624, align 8
  %626 = fdiv double %625, %611
  store double %626, double* %42, align 1
  store i64 0, i64* %44, align 1
  %627 = add i64 %439, 27
  store i64 %627, i64* %3, align 8
  store double %626, double* %624, align 8
  %628 = load i64, i64* %RBP.i, align 8
  %629 = add i64 %628, -48
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, 4
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %629 to i64*
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %RAX.i649, align 8
  %634 = add i64 %628, -56
  %635 = add i64 %630, 8
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = sext i32 %637 to i64
  store i64 %638, i64* %RCX.i661, align 8
  %639 = shl nsw i64 %638, 3
  %640 = add i64 %639, %633
  %641 = add i64 %630, 13
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %644 = add i64 %630, -1695
  %645 = add i64 %630, 18
  %646 = load i64, i64* %6, align 8
  %647 = add i64 %646, -8
  %648 = inttoptr i64 %647 to i64*
  store i64 %645, i64* %648, align 8
  store i64 %647, i64* %6, align 8
  store i64 %644, i64* %3, align 8
  %call2_400d3c = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %644, %struct.Memory* %MEMORY.2)
  %649 = load i64, i64* %RBP.i, align 8
  %650 = add i64 %649, -48
  %651 = load i64, i64* %3, align 8
  %652 = add i64 %651, 4
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %650 to i64*
  %654 = load i64, i64* %653, align 8
  store i64 %654, i64* %RAX.i649, align 8
  %655 = add i64 %649, -56
  %656 = add i64 %651, 8
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  %658 = load i32, i32* %657, align 4
  %659 = sext i32 %658 to i64
  store i64 %659, i64* %RCX.i661, align 8
  %660 = shl nsw i64 %659, 3
  %661 = add i64 %660, %654
  %662 = add i64 %651, 13
  store i64 %662, i64* %3, align 8
  %663 = load i64, i64* %63, align 1
  %664 = inttoptr i64 %661 to i64*
  store i64 %663, i64* %664, align 8
  %665 = load i64, i64* %RBP.i, align 8
  %666 = add i64 %665, -48
  %667 = load i64, i64* %3, align 8
  %668 = add i64 %667, 4
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %666 to i64*
  %670 = load i64, i64* %669, align 8
  store i64 %670, i64* %RAX.i649, align 8
  %671 = add i64 %665, -56
  %672 = add i64 %667, 8
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i32*
  %674 = load i32, i32* %673, align 4
  %675 = sext i32 %674 to i64
  store i64 %675, i64* %RCX.i661, align 8
  %676 = shl nsw i64 %675, 3
  %677 = add i64 %676, %670
  %678 = add i64 %667, 13
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to double*
  %680 = load double, double* %679, align 8
  store double %680, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %681 = add i64 %665, -72
  %682 = add i64 %667, 18
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to double*
  %684 = load double, double* %683, align 8
  store double %684, double* %42, align 1
  store double 0.000000e+00, double* %45, align 1
  %685 = add i64 %667, 22
  store i64 %685, i64* %3, align 8
  %686 = fcmp uno double %684, %680
  br i1 %686, label %687, label %697

; <label>:687:                                    ; preds = %block_.L_400d14
  %688 = fadd double %684, %680
  %689 = bitcast double %688 to i64
  %690 = and i64 %689, 9221120237041090560
  %691 = icmp eq i64 %690, 9218868437227405312
  %692 = and i64 %689, 2251799813685247
  %693 = icmp ne i64 %692, 0
  %694 = and i1 %691, %693
  br i1 %694, label %695, label %703

; <label>:695:                                    ; preds = %687
  %696 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %685, %struct.Memory* %call2_400d3c)
  %.pre4 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:697:                                    ; preds = %block_.L_400d14
  %698 = fcmp ogt double %684, %680
  br i1 %698, label %703, label %699

; <label>:699:                                    ; preds = %697
  %700 = fcmp olt double %684, %680
  br i1 %700, label %703, label %701

; <label>:701:                                    ; preds = %699
  %702 = fcmp oeq double %684, %680
  br i1 %702, label %703, label %707

; <label>:703:                                    ; preds = %701, %699, %697, %687
  %704 = phi i8 [ 0, %697 ], [ 0, %699 ], [ 1, %701 ], [ 1, %687 ]
  %705 = phi i8 [ 0, %697 ], [ 0, %699 ], [ 0, %701 ], [ 1, %687 ]
  %706 = phi i8 [ 0, %697 ], [ 1, %699 ], [ 0, %701 ], [ 1, %687 ]
  store i8 %704, i8* %30, align 1
  store i8 %705, i8* %21, align 1
  store i8 %706, i8* %14, align 1
  br label %707

; <label>:707:                                    ; preds = %703, %701
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %707, %695
  %708 = phi i64 [ %.pre4, %695 ], [ %685, %707 ]
  %709 = phi %struct.Memory* [ %696, %695 ], [ %call2_400d3c, %707 ]
  %710 = load i8, i8* %14, align 1
  %711 = icmp ne i8 %710, 0
  %.v14 = select i1 %711, i64 24, i64 6
  %712 = add i64 %708, %.v14
  store i64 %712, i64* %3, align 8
  %cmpBr_400d64 = icmp eq i8 %710, 1
  br i1 %cmpBr_400d64, label %block_.L_400d7c, label %block_400d6a

block_400d6a:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %713 = load i64, i64* bitcast (%G_0x6ae__rip__4197746__type* @G_0x6ae__rip__4197746_ to i64*), align 8
  store i64 %713, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %714 = load i64, i64* %RBP.i, align 8
  %715 = add i64 %714, -80
  %716 = add i64 %712, 13
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i64*
  store i64 %713, i64* %717, align 8
  %718 = load i64, i64* %3, align 8
  %719 = add i64 %718, 23
  store i64 %719, i64* %3, align 8
  br label %block_.L_400d8e

block_.L_400d7c:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -48
  %722 = add i64 %712, 4
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %RAX.i649, align 8
  %725 = add i64 %720, -56
  %726 = add i64 %712, 8
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = sext i32 %728 to i64
  store i64 %729, i64* %RCX.i661, align 8
  %730 = shl nsw i64 %729, 3
  %731 = add i64 %730, %724
  %732 = add i64 %712, 13
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %735 = add i64 %720, -80
  %736 = add i64 %712, 18
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i64*
  store i64 %734, i64* %737, align 8
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400d8e

block_.L_400d8e:                                  ; preds = %block_.L_400d7c, %block_400d6a
  %738 = phi i64 [ %.pre5, %block_.L_400d7c ], [ %719, %block_400d6a ]
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -80
  %741 = add i64 %738, 5
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %744 = add i64 %739, -48
  %745 = add i64 %738, 9
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i64*
  %747 = load i64, i64* %746, align 8
  store i64 %747, i64* %RAX.i649, align 8
  %748 = add i64 %739, -56
  %749 = add i64 %738, 13
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = sext i32 %751 to i64
  store i64 %752, i64* %RCX.i661, align 8
  %753 = shl nsw i64 %752, 3
  %754 = add i64 %753, %747
  %755 = add i64 %738, 18
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i64*
  store i64 %743, i64* %756, align 8
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, -56
  %759 = load i64, i64* %3, align 8
  %760 = add i64 %759, 3
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %758 to i32*
  %762 = load i32, i32* %761, align 4
  %763 = add i32 %762, 1
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RAX.i649, align 8
  %765 = icmp eq i32 %762, -1
  %766 = icmp eq i32 %763, 0
  %767 = or i1 %765, %766
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %14, align 1
  %769 = and i32 %763, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %21, align 1
  %774 = xor i32 %762, %763
  %775 = lshr i32 %774, 4
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  store i8 %777, i8* %27, align 1
  %778 = zext i1 %766 to i8
  store i8 %778, i8* %30, align 1
  %779 = lshr i32 %763, 31
  %780 = trunc i32 %779 to i8
  store i8 %780, i8* %33, align 1
  %781 = lshr i32 %762, 31
  %782 = xor i32 %779, %781
  %783 = add nuw nsw i32 %782, %779
  %784 = icmp eq i32 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %39, align 1
  %786 = add i64 %759, 9
  store i64 %786, i64* %3, align 8
  store i32 %763, i32* %761, align 4
  %787 = load i64, i64* %3, align 8
  %788 = add i64 %787, -312
  store i64 %788, i64* %3, align 8
  br label %block_.L_400c71

block_.L_400dae:                                  ; preds = %block_.L_400c71
  %789 = add i64 %348, -52
  %790 = add i64 %384, 7
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  store i32 0, i32* %791, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400db5

block_.L_400db5:                                  ; preds = %block_.L_400e4e, %block_.L_400dae
  %792 = phi i64 [ %.pre6, %block_.L_400dae ], [ %1068, %block_.L_400e4e ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.2, %block_.L_400dae ], [ %MEMORY.6, %block_.L_400e4e ]
  %793 = load i64, i64* %RBP.i, align 8
  %794 = add i64 %793, -52
  %795 = add i64 %792, 3
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = zext i32 %797 to i64
  store i64 %798, i64* %RAX.i649, align 8
  %799 = add i64 %793, -8
  %800 = add i64 %792, 6
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = sub i32 %797, %802
  %804 = icmp ult i32 %797, %802
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %14, align 1
  %806 = and i32 %803, 255
  %807 = tail call i32 @llvm.ctpop.i32(i32 %806)
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  store i8 %810, i8* %21, align 1
  %811 = xor i32 %802, %797
  %812 = xor i32 %811, %803
  %813 = lshr i32 %812, 4
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  store i8 %815, i8* %27, align 1
  %816 = icmp eq i32 %803, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %30, align 1
  %818 = lshr i32 %803, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %33, align 1
  %820 = lshr i32 %797, 31
  %821 = lshr i32 %802, 31
  %822 = xor i32 %821, %820
  %823 = xor i32 %818, %820
  %824 = add nuw nsw i32 %823, %822
  %825 = icmp eq i32 %824, 2
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %39, align 1
  %827 = icmp ne i8 %819, 0
  %828 = xor i1 %827, %825
  %.v15 = select i1 %828, i64 12, i64 172
  %829 = add i64 %792, %.v15
  store i64 %829, i64* %3, align 8
  br i1 %828, label %block_400dc1, label %block_.L_400e61

block_400dc1:                                     ; preds = %block_.L_400db5
  %830 = add i64 %793, -56
  %831 = add i64 %829, 7
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  store i32 0, i32* %832, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_400dc8

block_.L_400dc8:                                  ; preds = %block_400dd4, %block_400dc1
  %833 = phi i64 [ %.pre7, %block_400dc1 ], [ %1038, %block_400dd4 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_400dc1 ], [ %call2_400e0a, %block_400dd4 ]
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -56
  %836 = add i64 %833, 3
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RAX.i649, align 8
  %840 = add i64 %834, -4
  %841 = add i64 %833, 6
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = sub i32 %838, %843
  %845 = icmp ult i32 %838, %843
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %14, align 1
  %847 = and i32 %844, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847)
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %21, align 1
  %852 = xor i32 %843, %838
  %853 = xor i32 %852, %844
  %854 = lshr i32 %853, 4
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  store i8 %856, i8* %27, align 1
  %857 = icmp eq i32 %844, 0
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %30, align 1
  %859 = lshr i32 %844, 31
  %860 = trunc i32 %859 to i8
  store i8 %860, i8* %33, align 1
  %861 = lshr i32 %838, 31
  %862 = lshr i32 %843, 31
  %863 = xor i32 %862, %861
  %864 = xor i32 %859, %861
  %865 = add nuw nsw i32 %864, %863
  %866 = icmp eq i32 %865, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %39, align 1
  %868 = icmp ne i8 %860, 0
  %869 = xor i1 %868, %866
  %.v16 = select i1 %869, i64 12, i64 134
  %870 = add i64 %833, %.v16
  store i64 %870, i64* %3, align 8
  br i1 %869, label %block_400dd4, label %block_.L_400e4e

block_400dd4:                                     ; preds = %block_.L_400dc8
  %871 = add i64 %834, -40
  %872 = add i64 %870, 4
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i64*
  %874 = load i64, i64* %873, align 8
  store i64 %874, i64* %RAX.i649, align 8
  %875 = add i64 %870, 8
  store i64 %875, i64* %3, align 8
  %876 = load i32, i32* %837, align 4
  %877 = sext i32 %876 to i64
  store i64 %877, i64* %RCX.i661, align 8
  %878 = shl nsw i64 %877, 3
  %879 = add i64 %878, %874
  %880 = add i64 %870, 13
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to double*
  %882 = load double, double* %881, align 8
  store double %882, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %883 = add i64 %834, -24
  %884 = add i64 %870, 17
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %RAX.i649, align 8
  %887 = add i64 %834, -52
  %888 = add i64 %870, 21
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = sext i32 %890 to i64
  %892 = mul nsw i64 %891, 8000
  store i64 %892, i64* %RCX.i661, align 8
  %893 = lshr i64 %892, 63
  %894 = add i64 %892, %886
  store i64 %894, i64* %RAX.i649, align 8
  %895 = icmp ult i64 %894, %886
  %896 = icmp ult i64 %894, %892
  %897 = or i1 %895, %896
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %14, align 1
  %899 = trunc i64 %894 to i32
  %900 = and i32 %899, 255
  %901 = tail call i32 @llvm.ctpop.i32(i32 %900)
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  %904 = xor i8 %903, 1
  store i8 %904, i8* %21, align 1
  %905 = xor i64 %886, %894
  %906 = lshr i64 %905, 4
  %907 = trunc i64 %906 to i8
  %908 = and i8 %907, 1
  store i8 %908, i8* %27, align 1
  %909 = icmp eq i64 %894, 0
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %30, align 1
  %911 = lshr i64 %894, 63
  %912 = trunc i64 %911 to i8
  store i8 %912, i8* %33, align 1
  %913 = lshr i64 %886, 63
  %914 = xor i64 %911, %913
  %915 = xor i64 %911, %893
  %916 = add nuw nsw i64 %914, %915
  %917 = icmp eq i64 %916, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %39, align 1
  %919 = add i64 %870, 35
  store i64 %919, i64* %3, align 8
  %920 = load i32, i32* %837, align 4
  %921 = sext i32 %920 to i64
  store i64 %921, i64* %RCX.i661, align 8
  %922 = shl nsw i64 %921, 3
  %923 = add i64 %922, %894
  %924 = add i64 %870, 40
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to double*
  %926 = load double, double* %925, align 8
  %927 = fsub double %926, %882
  store double %927, double* %42, align 1
  store i64 0, i64* %44, align 1
  %928 = add i64 %870, 49
  store i64 %928, i64* %3, align 8
  store double %927, double* %925, align 8
  %929 = load i64, i64* %RBP.i, align 8
  %930 = add i64 %929, -16
  %931 = load i64, i64* %3, align 8
  %932 = add i64 %931, 5
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %930 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %935 = add i64 %931, -1909
  %936 = add i64 %931, 10
  %937 = load i64, i64* %6, align 8
  %938 = add i64 %937, -8
  %939 = inttoptr i64 %938 to i64*
  store i64 %936, i64* %939, align 8
  store i64 %938, i64* %6, align 8
  store i64 %935, i64* %3, align 8
  %call2_400e0a = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %935, %struct.Memory* %MEMORY.6)
  %940 = load i64, i64* %RBP.i, align 8
  %941 = add i64 %940, -48
  %942 = load i64, i64* %3, align 8
  %943 = add i64 %942, 4
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %941 to i64*
  %945 = load i64, i64* %944, align 8
  store i64 %945, i64* %RAX.i649, align 8
  %946 = add i64 %940, -56
  %947 = add i64 %942, 8
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = sext i32 %949 to i64
  store i64 %950, i64* %RCX.i661, align 8
  %951 = shl nsw i64 %950, 3
  %952 = add i64 %951, %945
  %953 = add i64 %942, 13
  store i64 %953, i64* %3, align 8
  %954 = load double, double* %109, align 1
  %955 = inttoptr i64 %952 to double*
  %956 = load double, double* %955, align 8
  %957 = fmul double %954, %956
  store double %957, double* %109, align 1
  %958 = add i64 %940, -24
  %959 = add i64 %942, 17
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i64*
  %961 = load i64, i64* %960, align 8
  store i64 %961, i64* %RAX.i649, align 8
  %962 = add i64 %940, -52
  %963 = add i64 %942, 21
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = sext i32 %965 to i64
  %967 = mul nsw i64 %966, 8000
  store i64 %967, i64* %RCX.i661, align 8
  %968 = lshr i64 %967, 63
  %969 = add i64 %967, %961
  store i64 %969, i64* %RAX.i649, align 8
  %970 = icmp ult i64 %969, %961
  %971 = icmp ult i64 %969, %967
  %972 = or i1 %970, %971
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %14, align 1
  %974 = trunc i64 %969 to i32
  %975 = and i32 %974, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %21, align 1
  %980 = xor i64 %961, %969
  %981 = lshr i64 %980, 4
  %982 = trunc i64 %981 to i8
  %983 = and i8 %982, 1
  store i8 %983, i8* %27, align 1
  %984 = icmp eq i64 %969, 0
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %30, align 1
  %986 = lshr i64 %969, 63
  %987 = trunc i64 %986 to i8
  store i8 %987, i8* %33, align 1
  %988 = lshr i64 %961, 63
  %989 = xor i64 %986, %988
  %990 = xor i64 %986, %968
  %991 = add nuw nsw i64 %989, %990
  %992 = icmp eq i64 %991, 2
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %39, align 1
  %994 = load i64, i64* %RBP.i, align 8
  %995 = add i64 %994, -56
  %996 = add i64 %942, 35
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = sext i32 %998 to i64
  store i64 %999, i64* %RCX.i661, align 8
  %1000 = shl nsw i64 %999, 3
  %1001 = add i64 %1000, %969
  %1002 = add i64 %942, 40
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to double*
  %1004 = load double, double* %1003, align 8
  %1005 = fdiv double %1004, %957
  store double %1005, double* %42, align 1
  store i64 0, i64* %44, align 1
  %1006 = add i64 %942, 49
  store i64 %1006, i64* %3, align 8
  store double %1005, double* %1003, align 8
  %1007 = load i64, i64* %RBP.i, align 8
  %1008 = add i64 %1007, -56
  %1009 = load i64, i64* %3, align 8
  %1010 = add i64 %1009, 3
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1008 to i32*
  %1012 = load i32, i32* %1011, align 4
  %1013 = add i32 %1012, 1
  %1014 = zext i32 %1013 to i64
  store i64 %1014, i64* %RAX.i649, align 8
  %1015 = icmp eq i32 %1012, -1
  %1016 = icmp eq i32 %1013, 0
  %1017 = or i1 %1015, %1016
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %14, align 1
  %1019 = and i32 %1013, 255
  %1020 = tail call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  store i8 %1023, i8* %21, align 1
  %1024 = xor i32 %1012, %1013
  %1025 = lshr i32 %1024, 4
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  store i8 %1027, i8* %27, align 1
  %1028 = zext i1 %1016 to i8
  store i8 %1028, i8* %30, align 1
  %1029 = lshr i32 %1013, 31
  %1030 = trunc i32 %1029 to i8
  store i8 %1030, i8* %33, align 1
  %1031 = lshr i32 %1012, 31
  %1032 = xor i32 %1029, %1031
  %1033 = add nuw nsw i32 %1032, %1029
  %1034 = icmp eq i32 %1033, 2
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %39, align 1
  %1036 = add i64 %1009, 9
  store i64 %1036, i64* %3, align 8
  store i32 %1013, i32* %1011, align 4
  %1037 = load i64, i64* %3, align 8
  %1038 = add i64 %1037, -129
  store i64 %1038, i64* %3, align 8
  br label %block_.L_400dc8

block_.L_400e4e:                                  ; preds = %block_.L_400dc8
  %1039 = add i64 %834, -52
  %1040 = add i64 %870, 8
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = add i32 %1042, 1
  %1044 = zext i32 %1043 to i64
  store i64 %1044, i64* %RAX.i649, align 8
  %1045 = icmp eq i32 %1042, -1
  %1046 = icmp eq i32 %1043, 0
  %1047 = or i1 %1045, %1046
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %14, align 1
  %1049 = and i32 %1043, 255
  %1050 = tail call i32 @llvm.ctpop.i32(i32 %1049)
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  %1053 = xor i8 %1052, 1
  store i8 %1053, i8* %21, align 1
  %1054 = xor i32 %1042, %1043
  %1055 = lshr i32 %1054, 4
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  store i8 %1057, i8* %27, align 1
  %1058 = zext i1 %1046 to i8
  store i8 %1058, i8* %30, align 1
  %1059 = lshr i32 %1043, 31
  %1060 = trunc i32 %1059 to i8
  store i8 %1060, i8* %33, align 1
  %1061 = lshr i32 %1042, 31
  %1062 = xor i32 %1059, %1061
  %1063 = add nuw nsw i32 %1062, %1059
  %1064 = icmp eq i32 %1063, 2
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %39, align 1
  %1066 = add i64 %870, 14
  store i64 %1066, i64* %3, align 8
  store i32 %1043, i32* %1041, align 4
  %1067 = load i64, i64* %3, align 8
  %1068 = add i64 %1067, -167
  store i64 %1068, i64* %3, align 8
  br label %block_.L_400db5

block_.L_400e61:                                  ; preds = %block_.L_400db5
  %1069 = add i64 %793, -60
  %1070 = add i64 %829, 7
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  store i32 0, i32* %1071, align 4
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_400e68

block_.L_400e68:                                  ; preds = %block_.L_400f8a, %block_.L_400e61
  %1072 = phi i64 [ %1627, %block_.L_400f8a ], [ %.pre8, %block_.L_400e61 ]
  %1073 = load i64, i64* %RBP.i, align 8
  %1074 = add i64 %1073, -60
  %1075 = add i64 %1072, 3
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = zext i32 %1077 to i64
  store i64 %1078, i64* %RAX.i649, align 8
  %1079 = add i64 %1073, -4
  %1080 = add i64 %1072, 6
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = add i32 %1082, -1
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RCX.i661, align 8
  %1085 = lshr i32 %1083, 31
  %1086 = sub i32 %1077, %1083
  %1087 = icmp ult i32 %1077, %1083
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %14, align 1
  %1089 = and i32 %1086, 255
  %1090 = tail call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  store i8 %1093, i8* %21, align 1
  %1094 = xor i32 %1083, %1077
  %1095 = xor i32 %1094, %1086
  %1096 = lshr i32 %1095, 4
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %27, align 1
  %1099 = icmp eq i32 %1086, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %30, align 1
  %1101 = lshr i32 %1086, 31
  %1102 = trunc i32 %1101 to i8
  store i8 %1102, i8* %33, align 1
  %1103 = lshr i32 %1077, 31
  %1104 = xor i32 %1085, %1103
  %1105 = xor i32 %1101, %1103
  %1106 = add nuw nsw i32 %1105, %1104
  %1107 = icmp eq i32 %1106, 2
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %39, align 1
  %1109 = icmp ne i8 %1102, 0
  %1110 = xor i1 %1109, %1107
  %.v17 = select i1 %1110, i64 17, i64 309
  %1111 = add i64 %1072, %.v17
  %1112 = add i64 %1111, 8
  store i64 %1112, i64* %3, align 8
  br i1 %1110, label %block_400e79, label %block_.L_400f9d

block_400e79:                                     ; preds = %block_.L_400e68
  %1113 = load i64, i64* bitcast (%G_0x59f__rip__4198017__type* @G_0x59f__rip__4198017_ to i64*), align 8
  store i64 %1113, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %1114 = add i64 %1073, -32
  %1115 = add i64 %1111, 12
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RAX.i649, align 8
  %1118 = add i64 %1111, 16
  store i64 %1118, i64* %3, align 8
  %1119 = load i32, i32* %1076, align 4
  %1120 = sext i32 %1119 to i64
  %1121 = mul nsw i64 %1120, 8000
  store i64 %1121, i64* %RCX.i661, align 8
  %1122 = lshr i64 %1121, 63
  %1123 = add i64 %1121, %1117
  store i64 %1123, i64* %RAX.i649, align 8
  %1124 = icmp ult i64 %1123, %1117
  %1125 = icmp ult i64 %1123, %1121
  %1126 = or i1 %1124, %1125
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %14, align 1
  %1128 = trunc i64 %1123 to i32
  %1129 = and i32 %1128, 255
  %1130 = tail call i32 @llvm.ctpop.i32(i32 %1129)
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  %1133 = xor i8 %1132, 1
  store i8 %1133, i8* %21, align 1
  %1134 = xor i64 %1117, %1123
  %1135 = lshr i64 %1134, 4
  %1136 = trunc i64 %1135 to i8
  %1137 = and i8 %1136, 1
  store i8 %1137, i8* %27, align 1
  %1138 = icmp eq i64 %1123, 0
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %30, align 1
  %1140 = lshr i64 %1123, 63
  %1141 = trunc i64 %1140 to i8
  store i8 %1141, i8* %33, align 1
  %1142 = lshr i64 %1117, 63
  %1143 = xor i64 %1140, %1142
  %1144 = xor i64 %1140, %1122
  %1145 = add nuw nsw i64 %1143, %1144
  %1146 = icmp eq i64 %1145, 2
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %39, align 1
  %1148 = add i64 %1111, 30
  store i64 %1148, i64* %3, align 8
  %1149 = load i32, i32* %1076, align 4
  %1150 = sext i32 %1149 to i64
  store i64 %1150, i64* %RCX.i661, align 8
  %1151 = shl nsw i64 %1150, 3
  %1152 = add i64 %1151, %1123
  %1153 = add i64 %1111, 35
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i64*
  store i64 %1113, i64* %1154, align 8
  %1155 = load i64, i64* %RBP.i, align 8
  %1156 = add i64 %1155, -60
  %1157 = load i64, i64* %3, align 8
  %1158 = add i64 %1157, 3
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1156 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = add i32 %1160, 1
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RDX.i664, align 8
  %1163 = icmp eq i32 %1160, -1
  %1164 = icmp eq i32 %1161, 0
  %1165 = or i1 %1163, %1164
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %14, align 1
  %1167 = and i32 %1161, 255
  %1168 = tail call i32 @llvm.ctpop.i32(i32 %1167)
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  store i8 %1171, i8* %21, align 1
  %1172 = xor i32 %1160, %1161
  %1173 = lshr i32 %1172, 4
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  store i8 %1175, i8* %27, align 1
  %1176 = zext i1 %1164 to i8
  store i8 %1176, i8* %30, align 1
  %1177 = lshr i32 %1161, 31
  %1178 = trunc i32 %1177 to i8
  store i8 %1178, i8* %33, align 1
  %1179 = lshr i32 %1160, 31
  %1180 = xor i32 %1177, %1179
  %1181 = add nuw nsw i32 %1180, %1177
  %1182 = icmp eq i32 %1181, 2
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %39, align 1
  %1184 = add i64 %1155, -64
  %1185 = add i64 %1157, 9
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  store i32 %1161, i32* %1186, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_400ea5

block_.L_400ea5:                                  ; preds = %block_.L_400f46, %block_400e79
  %1187 = phi i64 [ %1597, %block_.L_400f46 ], [ %.pre9, %block_400e79 ]
  %1188 = load i64, i64* %RBP.i, align 8
  %1189 = add i64 %1188, -64
  %1190 = add i64 %1187, 3
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1189 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RAX.i649, align 8
  %1194 = add i64 %1188, -4
  %1195 = add i64 %1187, 6
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = sub i32 %1192, %1197
  %1199 = icmp ult i32 %1192, %1197
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %14, align 1
  %1201 = and i32 %1198, 255
  %1202 = tail call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  store i8 %1205, i8* %21, align 1
  %1206 = xor i32 %1197, %1192
  %1207 = xor i32 %1206, %1198
  %1208 = lshr i32 %1207, 4
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  store i8 %1210, i8* %27, align 1
  %1211 = icmp eq i32 %1198, 0
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %30, align 1
  %1213 = lshr i32 %1198, 31
  %1214 = trunc i32 %1213 to i8
  store i8 %1214, i8* %33, align 1
  %1215 = lshr i32 %1192, 31
  %1216 = lshr i32 %1197, 31
  %1217 = xor i32 %1216, %1215
  %1218 = xor i32 %1213, %1215
  %1219 = add nuw nsw i32 %1218, %1217
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %39, align 1
  %1222 = icmp ne i8 %1214, 0
  %1223 = xor i1 %1222, %1220
  %.v18 = select i1 %1223, i64 12, i64 229
  %1224 = add i64 %1187, %.v18
  store i64 %1224, i64* %3, align 8
  br i1 %1223, label %block_400eb1, label %block_.L_400f8a

block_400eb1:                                     ; preds = %block_.L_400ea5
  store i32 0, i32* %103, align 1
  store i32 0, i32* %105, align 1
  store i32 0, i32* %106, align 1
  store i32 0, i32* %108, align 1
  %1225 = add i64 %1188, -32
  %1226 = add i64 %1224, 7
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i64*
  %1228 = load i64, i64* %1227, align 8
  store i64 %1228, i64* %RAX.i649, align 8
  %1229 = add i64 %1188, -60
  %1230 = add i64 %1224, 11
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = sext i32 %1232 to i64
  %1234 = mul nsw i64 %1233, 8000
  store i64 %1234, i64* %RCX.i661, align 8
  %1235 = lshr i64 %1234, 63
  %1236 = add i64 %1234, %1228
  store i64 %1236, i64* %RAX.i649, align 8
  %1237 = icmp ult i64 %1236, %1228
  %1238 = icmp ult i64 %1236, %1234
  %1239 = or i1 %1237, %1238
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %14, align 1
  %1241 = trunc i64 %1236 to i32
  %1242 = and i32 %1241, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %21, align 1
  %1247 = xor i64 %1228, %1236
  %1248 = lshr i64 %1247, 4
  %1249 = trunc i64 %1248 to i8
  %1250 = and i8 %1249, 1
  store i8 %1250, i8* %27, align 1
  %1251 = icmp eq i64 %1236, 0
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %30, align 1
  %1253 = lshr i64 %1236, 63
  %1254 = trunc i64 %1253 to i8
  store i8 %1254, i8* %33, align 1
  %1255 = lshr i64 %1228, 63
  %1256 = xor i64 %1253, %1255
  %1257 = xor i64 %1253, %1235
  %1258 = add nuw nsw i64 %1256, %1257
  %1259 = icmp eq i64 %1258, 2
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %39, align 1
  %1261 = add i64 %1224, 25
  store i64 %1261, i64* %3, align 8
  %1262 = load i32, i32* %1191, align 4
  %1263 = sext i32 %1262 to i64
  store i64 %1263, i64* %RCX.i661, align 8
  %1264 = shl nsw i64 %1263, 3
  %1265 = add i64 %1264, %1236
  %1266 = add i64 %1224, 30
  store i64 %1266, i64* %3, align 8
  %1267 = load i64, i64* %63, align 1
  %1268 = inttoptr i64 %1265 to i64*
  store i64 %1267, i64* %1268, align 8
  %1269 = load i64, i64* %RBP.i, align 8
  %1270 = add i64 %1269, -52
  %1271 = load i64, i64* %3, align 8
  %1272 = add i64 %1271, 7
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1270 to i32*
  store i32 0, i32* %1273, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_400ed6

block_.L_400ed6:                                  ; preds = %block_400ee2, %block_400eb1
  %1274 = phi i64 [ %1477, %block_400ee2 ], [ %.pre10, %block_400eb1 ]
  %1275 = load i64, i64* %RBP.i, align 8
  %1276 = add i64 %1275, -52
  %1277 = add i64 %1274, 3
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to i32*
  %1279 = load i32, i32* %1278, align 4
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i649, align 8
  %1281 = add i64 %1275, -8
  %1282 = add i64 %1274, 6
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = sub i32 %1279, %1284
  %1286 = icmp ult i32 %1279, %1284
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %14, align 1
  %1288 = and i32 %1285, 255
  %1289 = tail call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  store i8 %1292, i8* %21, align 1
  %1293 = xor i32 %1284, %1279
  %1294 = xor i32 %1293, %1285
  %1295 = lshr i32 %1294, 4
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  store i8 %1297, i8* %27, align 1
  %1298 = icmp eq i32 %1285, 0
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %30, align 1
  %1300 = lshr i32 %1285, 31
  %1301 = trunc i32 %1300 to i8
  store i8 %1301, i8* %33, align 1
  %1302 = lshr i32 %1279, 31
  %1303 = lshr i32 %1284, 31
  %1304 = xor i32 %1303, %1302
  %1305 = xor i32 %1300, %1302
  %1306 = add nuw nsw i32 %1305, %1304
  %1307 = icmp eq i32 %1306, 2
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %39, align 1
  %1309 = icmp ne i8 %1301, 0
  %1310 = xor i1 %1309, %1307
  %.v19 = select i1 %1310, i64 12, i64 112
  %1311 = add i64 %1274, %.v19
  store i64 %1311, i64* %3, align 8
  br i1 %1310, label %block_400ee2, label %block_.L_400f46

block_400ee2:                                     ; preds = %block_.L_400ed6
  %1312 = add i64 %1275, -24
  %1313 = add i64 %1311, 4
  store i64 %1313, i64* %3, align 8
  %1314 = inttoptr i64 %1312 to i64*
  %1315 = load i64, i64* %1314, align 8
  store i64 %1315, i64* %RAX.i649, align 8
  %1316 = add i64 %1311, 8
  store i64 %1316, i64* %3, align 8
  %1317 = load i32, i32* %1278, align 4
  %1318 = sext i32 %1317 to i64
  %1319 = mul nsw i64 %1318, 8000
  store i64 %1319, i64* %RCX.i661, align 8
  %1320 = lshr i64 %1319, 63
  %1321 = add i64 %1319, %1315
  store i64 %1321, i64* %RAX.i649, align 8
  %1322 = icmp ult i64 %1321, %1315
  %1323 = icmp ult i64 %1321, %1319
  %1324 = or i1 %1322, %1323
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %14, align 1
  %1326 = trunc i64 %1321 to i32
  %1327 = and i32 %1326, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %21, align 1
  %1332 = xor i64 %1315, %1321
  %1333 = lshr i64 %1332, 4
  %1334 = trunc i64 %1333 to i8
  %1335 = and i8 %1334, 1
  store i8 %1335, i8* %27, align 1
  %1336 = icmp eq i64 %1321, 0
  %1337 = zext i1 %1336 to i8
  store i8 %1337, i8* %30, align 1
  %1338 = lshr i64 %1321, 63
  %1339 = trunc i64 %1338 to i8
  store i8 %1339, i8* %33, align 1
  %1340 = lshr i64 %1315, 63
  %1341 = xor i64 %1338, %1340
  %1342 = xor i64 %1338, %1320
  %1343 = add nuw nsw i64 %1341, %1342
  %1344 = icmp eq i64 %1343, 2
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %39, align 1
  %1346 = add i64 %1275, -60
  %1347 = add i64 %1311, 22
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = sext i32 %1349 to i64
  store i64 %1350, i64* %RCX.i661, align 8
  %1351 = shl nsw i64 %1350, 3
  %1352 = add i64 %1351, %1321
  %1353 = add i64 %1311, 27
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to double*
  %1355 = load double, double* %1354, align 8
  store double %1355, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %1356 = add i64 %1311, 31
  store i64 %1356, i64* %3, align 8
  %1357 = load i64, i64* %1314, align 8
  store i64 %1357, i64* %RAX.i649, align 8
  %1358 = add i64 %1311, 35
  store i64 %1358, i64* %3, align 8
  %1359 = load i32, i32* %1278, align 4
  %1360 = sext i32 %1359 to i64
  %1361 = mul nsw i64 %1360, 8000
  store i64 %1361, i64* %RCX.i661, align 8
  %1362 = lshr i64 %1361, 63
  %1363 = add i64 %1361, %1357
  store i64 %1363, i64* %RAX.i649, align 8
  %1364 = icmp ult i64 %1363, %1357
  %1365 = icmp ult i64 %1363, %1361
  %1366 = or i1 %1364, %1365
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %14, align 1
  %1368 = trunc i64 %1363 to i32
  %1369 = and i32 %1368, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %21, align 1
  %1374 = xor i64 %1357, %1363
  %1375 = lshr i64 %1374, 4
  %1376 = trunc i64 %1375 to i8
  %1377 = and i8 %1376, 1
  store i8 %1377, i8* %27, align 1
  %1378 = icmp eq i64 %1363, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %30, align 1
  %1380 = lshr i64 %1363, 63
  %1381 = trunc i64 %1380 to i8
  store i8 %1381, i8* %33, align 1
  %1382 = lshr i64 %1357, 63
  %1383 = xor i64 %1380, %1382
  %1384 = xor i64 %1380, %1362
  %1385 = add nuw nsw i64 %1383, %1384
  %1386 = icmp eq i64 %1385, 2
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %39, align 1
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -64
  %1390 = add i64 %1311, 49
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  %1392 = load i32, i32* %1391, align 4
  %1393 = sext i32 %1392 to i64
  store i64 %1393, i64* %RCX.i661, align 8
  %1394 = shl nsw i64 %1393, 3
  %1395 = add i64 %1394, %1363
  %1396 = add i64 %1311, 54
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to double*
  %1398 = load double, double* %1397, align 8
  %1399 = fmul double %1355, %1398
  store double %1399, double* %109, align 1
  store i64 0, i64* %102, align 1
  %1400 = add i64 %1388, -32
  %1401 = add i64 %1311, 58
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i64*
  %1403 = load i64, i64* %1402, align 8
  store i64 %1403, i64* %RAX.i649, align 8
  %1404 = add i64 %1388, -60
  %1405 = add i64 %1311, 62
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i32*
  %1407 = load i32, i32* %1406, align 4
  %1408 = sext i32 %1407 to i64
  %1409 = mul nsw i64 %1408, 8000
  store i64 %1409, i64* %RCX.i661, align 8
  %1410 = lshr i64 %1409, 63
  %1411 = add i64 %1409, %1403
  store i64 %1411, i64* %RAX.i649, align 8
  %1412 = icmp ult i64 %1411, %1403
  %1413 = icmp ult i64 %1411, %1409
  %1414 = or i1 %1412, %1413
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %14, align 1
  %1416 = trunc i64 %1411 to i32
  %1417 = and i32 %1416, 255
  %1418 = tail call i32 @llvm.ctpop.i32(i32 %1417)
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = xor i8 %1420, 1
  store i8 %1421, i8* %21, align 1
  %1422 = xor i64 %1403, %1411
  %1423 = lshr i64 %1422, 4
  %1424 = trunc i64 %1423 to i8
  %1425 = and i8 %1424, 1
  store i8 %1425, i8* %27, align 1
  %1426 = icmp eq i64 %1411, 0
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %30, align 1
  %1428 = lshr i64 %1411, 63
  %1429 = trunc i64 %1428 to i8
  store i8 %1429, i8* %33, align 1
  %1430 = lshr i64 %1403, 63
  %1431 = xor i64 %1428, %1430
  %1432 = xor i64 %1428, %1410
  %1433 = add nuw nsw i64 %1431, %1432
  %1434 = icmp eq i64 %1433, 2
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %39, align 1
  %1436 = add i64 %1311, 76
  store i64 %1436, i64* %3, align 8
  %1437 = load i32, i32* %1391, align 4
  %1438 = sext i32 %1437 to i64
  store i64 %1438, i64* %RCX.i661, align 8
  %1439 = shl nsw i64 %1438, 3
  %1440 = add i64 %1439, %1411
  %1441 = add i64 %1311, 81
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to double*
  %1443 = load double, double* %1442, align 8
  %1444 = fadd double %1399, %1443
  store double %1444, double* %109, align 1
  store i64 0, i64* %102, align 1
  %1445 = add i64 %1311, 86
  store i64 %1445, i64* %3, align 8
  store double %1444, double* %1442, align 8
  %1446 = load i64, i64* %RBP.i, align 8
  %1447 = add i64 %1446, -52
  %1448 = load i64, i64* %3, align 8
  %1449 = add i64 %1448, 3
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1447 to i32*
  %1451 = load i32, i32* %1450, align 4
  %1452 = add i32 %1451, 1
  %1453 = zext i32 %1452 to i64
  store i64 %1453, i64* %RAX.i649, align 8
  %1454 = icmp eq i32 %1451, -1
  %1455 = icmp eq i32 %1452, 0
  %1456 = or i1 %1454, %1455
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %14, align 1
  %1458 = and i32 %1452, 255
  %1459 = tail call i32 @llvm.ctpop.i32(i32 %1458)
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = xor i8 %1461, 1
  store i8 %1462, i8* %21, align 1
  %1463 = xor i32 %1451, %1452
  %1464 = lshr i32 %1463, 4
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  store i8 %1466, i8* %27, align 1
  %1467 = zext i1 %1455 to i8
  store i8 %1467, i8* %30, align 1
  %1468 = lshr i32 %1452, 31
  %1469 = trunc i32 %1468 to i8
  store i8 %1469, i8* %33, align 1
  %1470 = lshr i32 %1451, 31
  %1471 = xor i32 %1468, %1470
  %1472 = add nuw nsw i32 %1471, %1468
  %1473 = icmp eq i32 %1472, 2
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %39, align 1
  %1475 = add i64 %1448, 9
  store i64 %1475, i64* %3, align 8
  store i32 %1452, i32* %1450, align 4
  %1476 = load i64, i64* %3, align 8
  %1477 = add i64 %1476, -107
  store i64 %1477, i64* %3, align 8
  br label %block_.L_400ed6

block_.L_400f46:                                  ; preds = %block_.L_400ed6
  %1478 = add i64 %1275, -32
  %1479 = add i64 %1311, 4
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i64*
  %1481 = load i64, i64* %1480, align 8
  store i64 %1481, i64* %RAX.i649, align 8
  %1482 = add i64 %1275, -60
  %1483 = add i64 %1311, 8
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i32*
  %1485 = load i32, i32* %1484, align 4
  %1486 = sext i32 %1485 to i64
  %1487 = mul nsw i64 %1486, 8000
  store i64 %1487, i64* %RCX.i661, align 8
  %1488 = lshr i64 %1487, 63
  %1489 = add i64 %1487, %1481
  store i64 %1489, i64* %RAX.i649, align 8
  %1490 = icmp ult i64 %1489, %1481
  %1491 = icmp ult i64 %1489, %1487
  %1492 = or i1 %1490, %1491
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %14, align 1
  %1494 = trunc i64 %1489 to i32
  %1495 = and i32 %1494, 255
  %1496 = tail call i32 @llvm.ctpop.i32(i32 %1495)
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  %1499 = xor i8 %1498, 1
  store i8 %1499, i8* %21, align 1
  %1500 = xor i64 %1481, %1489
  %1501 = lshr i64 %1500, 4
  %1502 = trunc i64 %1501 to i8
  %1503 = and i8 %1502, 1
  store i8 %1503, i8* %27, align 1
  %1504 = icmp eq i64 %1489, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %30, align 1
  %1506 = lshr i64 %1489, 63
  %1507 = trunc i64 %1506 to i8
  store i8 %1507, i8* %33, align 1
  %1508 = lshr i64 %1481, 63
  %1509 = xor i64 %1506, %1508
  %1510 = xor i64 %1506, %1488
  %1511 = add nuw nsw i64 %1509, %1510
  %1512 = icmp eq i64 %1511, 2
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %39, align 1
  %1514 = add i64 %1275, -64
  %1515 = add i64 %1311, 22
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i32*
  %1517 = load i32, i32* %1516, align 4
  %1518 = sext i32 %1517 to i64
  store i64 %1518, i64* %RCX.i661, align 8
  %1519 = shl nsw i64 %1518, 3
  %1520 = add i64 %1519, %1489
  %1521 = add i64 %1311, 27
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i64*
  %1523 = load i64, i64* %1522, align 8
  store i64 %1523, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %1524 = add i64 %1311, 31
  store i64 %1524, i64* %3, align 8
  %1525 = load i64, i64* %1480, align 8
  store i64 %1525, i64* %RAX.i649, align 8
  %1526 = add i64 %1311, 35
  store i64 %1526, i64* %3, align 8
  %1527 = load i32, i32* %1516, align 4
  %1528 = sext i32 %1527 to i64
  %1529 = mul nsw i64 %1528, 8000
  store i64 %1529, i64* %RCX.i661, align 8
  %1530 = lshr i64 %1529, 63
  %1531 = add i64 %1529, %1525
  store i64 %1531, i64* %RAX.i649, align 8
  %1532 = icmp ult i64 %1531, %1525
  %1533 = icmp ult i64 %1531, %1529
  %1534 = or i1 %1532, %1533
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %14, align 1
  %1536 = trunc i64 %1531 to i32
  %1537 = and i32 %1536, 255
  %1538 = tail call i32 @llvm.ctpop.i32(i32 %1537)
  %1539 = trunc i32 %1538 to i8
  %1540 = and i8 %1539, 1
  %1541 = xor i8 %1540, 1
  store i8 %1541, i8* %21, align 1
  %1542 = xor i64 %1525, %1531
  %1543 = lshr i64 %1542, 4
  %1544 = trunc i64 %1543 to i8
  %1545 = and i8 %1544, 1
  store i8 %1545, i8* %27, align 1
  %1546 = icmp eq i64 %1531, 0
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %30, align 1
  %1548 = lshr i64 %1531, 63
  %1549 = trunc i64 %1548 to i8
  store i8 %1549, i8* %33, align 1
  %1550 = lshr i64 %1525, 63
  %1551 = xor i64 %1548, %1550
  %1552 = xor i64 %1548, %1530
  %1553 = add nuw nsw i64 %1551, %1552
  %1554 = icmp eq i64 %1553, 2
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %39, align 1
  %1556 = load i64, i64* %RBP.i, align 8
  %1557 = add i64 %1556, -60
  %1558 = add i64 %1311, 49
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  %1560 = load i32, i32* %1559, align 4
  %1561 = sext i32 %1560 to i64
  store i64 %1561, i64* %RCX.i661, align 8
  %1562 = shl nsw i64 %1561, 3
  %1563 = add i64 %1562, %1531
  %1564 = add i64 %1311, 54
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i64*
  store i64 %1523, i64* %1565, align 8
  %1566 = load i64, i64* %RBP.i, align 8
  %1567 = add i64 %1566, -64
  %1568 = load i64, i64* %3, align 8
  %1569 = add i64 %1568, 3
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1567 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = add i32 %1571, 1
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RAX.i649, align 8
  %1574 = icmp eq i32 %1571, -1
  %1575 = icmp eq i32 %1572, 0
  %1576 = or i1 %1574, %1575
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %14, align 1
  %1578 = and i32 %1572, 255
  %1579 = tail call i32 @llvm.ctpop.i32(i32 %1578)
  %1580 = trunc i32 %1579 to i8
  %1581 = and i8 %1580, 1
  %1582 = xor i8 %1581, 1
  store i8 %1582, i8* %21, align 1
  %1583 = xor i32 %1571, %1572
  %1584 = lshr i32 %1583, 4
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  store i8 %1586, i8* %27, align 1
  %1587 = zext i1 %1575 to i8
  store i8 %1587, i8* %30, align 1
  %1588 = lshr i32 %1572, 31
  %1589 = trunc i32 %1588 to i8
  store i8 %1589, i8* %33, align 1
  %1590 = lshr i32 %1571, 31
  %1591 = xor i32 %1588, %1590
  %1592 = add nuw nsw i32 %1591, %1588
  %1593 = icmp eq i32 %1592, 2
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %39, align 1
  %1595 = add i64 %1568, 9
  store i64 %1595, i64* %3, align 8
  store i32 %1572, i32* %1570, align 4
  %1596 = load i64, i64* %3, align 8
  %1597 = add i64 %1596, -224
  store i64 %1597, i64* %3, align 8
  br label %block_.L_400ea5

block_.L_400f8a:                                  ; preds = %block_.L_400ea5
  %1598 = add i64 %1188, -60
  %1599 = add i64 %1224, 8
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  %1602 = add i32 %1601, 1
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RAX.i649, align 8
  %1604 = icmp eq i32 %1601, -1
  %1605 = icmp eq i32 %1602, 0
  %1606 = or i1 %1604, %1605
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %14, align 1
  %1608 = and i32 %1602, 255
  %1609 = tail call i32 @llvm.ctpop.i32(i32 %1608)
  %1610 = trunc i32 %1609 to i8
  %1611 = and i8 %1610, 1
  %1612 = xor i8 %1611, 1
  store i8 %1612, i8* %21, align 1
  %1613 = xor i32 %1601, %1602
  %1614 = lshr i32 %1613, 4
  %1615 = trunc i32 %1614 to i8
  %1616 = and i8 %1615, 1
  store i8 %1616, i8* %27, align 1
  %1617 = zext i1 %1605 to i8
  store i8 %1617, i8* %30, align 1
  %1618 = lshr i32 %1602, 31
  %1619 = trunc i32 %1618 to i8
  store i8 %1619, i8* %33, align 1
  %1620 = lshr i32 %1601, 31
  %1621 = xor i32 %1618, %1620
  %1622 = add nuw nsw i32 %1621, %1618
  %1623 = icmp eq i32 %1622, 2
  %1624 = zext i1 %1623 to i8
  store i8 %1624, i8* %39, align 1
  %1625 = add i64 %1224, 14
  store i64 %1625, i64* %3, align 8
  store i32 %1602, i32* %1600, align 4
  %1626 = load i64, i64* %3, align 8
  %1627 = add i64 %1626, -304
  store i64 %1627, i64* %3, align 8
  br label %block_.L_400e68

block_.L_400f9d:                                  ; preds = %block_.L_400e68
  %1628 = load i64, i64* bitcast (%G_0x47b__rip__4198309__type* @G_0x47b__rip__4198309_ to i64*), align 8
  store i64 %1628, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %1629 = add i64 %1073, -32
  %1630 = add i64 %1111, 12
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i64*
  %1632 = load i64, i64* %1631, align 8
  store i64 %1632, i64* %RAX.i649, align 8
  %1633 = add i64 %1111, 15
  store i64 %1633, i64* %3, align 8
  %1634 = load i32, i32* %1081, align 4
  %1635 = add i32 %1634, -1
  %1636 = zext i32 %1635 to i64
  store i64 %1636, i64* %RCX.i661, align 8
  %1637 = sext i32 %1635 to i64
  %1638 = mul nsw i64 %1637, 8000
  store i64 %1638, i64* %RDX.i664, align 8
  %1639 = lshr i64 %1638, 63
  %1640 = add i64 %1638, %1632
  store i64 %1640, i64* %RAX.i649, align 8
  %1641 = icmp ult i64 %1640, %1632
  %1642 = icmp ult i64 %1640, %1638
  %1643 = or i1 %1641, %1642
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %14, align 1
  %1645 = trunc i64 %1640 to i32
  %1646 = and i32 %1645, 255
  %1647 = tail call i32 @llvm.ctpop.i32(i32 %1646)
  %1648 = trunc i32 %1647 to i8
  %1649 = and i8 %1648, 1
  %1650 = xor i8 %1649, 1
  store i8 %1650, i8* %21, align 1
  %1651 = xor i64 %1632, %1640
  %1652 = lshr i64 %1651, 4
  %1653 = trunc i64 %1652 to i8
  %1654 = and i8 %1653, 1
  store i8 %1654, i8* %27, align 1
  %1655 = icmp eq i64 %1640, 0
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %30, align 1
  %1657 = lshr i64 %1640, 63
  %1658 = trunc i64 %1657 to i8
  store i8 %1658, i8* %33, align 1
  %1659 = lshr i64 %1632, 63
  %1660 = xor i64 %1657, %1659
  %1661 = xor i64 %1657, %1639
  %1662 = add nuw nsw i64 %1660, %1661
  %1663 = icmp eq i64 %1662, 2
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %39, align 1
  %1665 = load i64, i64* %RBP.i, align 8
  %1666 = add i64 %1665, -4
  %1667 = add i64 %1111, 34
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = add i32 %1669, -1
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RCX.i661, align 8
  %1672 = sext i32 %1670 to i64
  store i64 %1672, i64* %RDX.i664, align 8
  %1673 = shl nsw i64 %1672, 3
  %1674 = add i64 %1673, %1640
  %1675 = add i64 %1111, 45
  store i64 %1675, i64* %3, align 8
  %1676 = load i64, i64* %63, align 1
  %1677 = inttoptr i64 %1674 to i64*
  store i64 %1676, i64* %1677, align 8
  %1678 = load i64, i64* %6, align 8
  %1679 = load i64, i64* %3, align 8
  %1680 = add i64 %1678, 80
  store i64 %1680, i64* %6, align 8
  %1681 = icmp ugt i64 %1678, -81
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %14, align 1
  %1683 = trunc i64 %1680 to i32
  %1684 = and i32 %1683, 255
  %1685 = tail call i32 @llvm.ctpop.i32(i32 %1684)
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = xor i8 %1687, 1
  store i8 %1688, i8* %21, align 1
  %1689 = xor i64 %1678, 16
  %1690 = xor i64 %1689, %1680
  %1691 = lshr i64 %1690, 4
  %1692 = trunc i64 %1691 to i8
  %1693 = and i8 %1692, 1
  store i8 %1693, i8* %27, align 1
  %1694 = icmp eq i64 %1680, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %30, align 1
  %1696 = lshr i64 %1680, 63
  %1697 = trunc i64 %1696 to i8
  store i8 %1697, i8* %33, align 1
  %1698 = lshr i64 %1678, 63
  %1699 = xor i64 %1696, %1698
  %1700 = add nuw nsw i64 %1699, %1696
  %1701 = icmp eq i64 %1700, 2
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %39, align 1
  %1703 = add i64 %1679, 5
  store i64 %1703, i64* %3, align 8
  %1704 = add i64 %1678, 88
  %1705 = inttoptr i64 %1680 to i64*
  %1706 = load i64, i64* %1705, align 8
  store i64 %1706, i64* %RBP.i, align 8
  store i64 %1704, i64* %6, align 8
  %1707 = add i64 %1679, 6
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1704 to i64*
  %1709 = load i64, i64* %1708, align 8
  store i64 %1709, i64* %3, align 8
  %1710 = add i64 %1678, 96
  store i64 %1710, i64* %6, align 8
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
  %5 = load i64, i64* bitcast (%G_0x868__rip__4197296__type* @G_0x868__rip__4197296_ to i64*), align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %20 = xor i32 %6, %7
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x6ae__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6ae__rip__4197746__type* @G_0x6ae__rip__4197746_ to i64*), align 8
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
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400db5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  %18 = xor i32 %6, %7
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x59f__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x59f__rip__4198017__type* @G_0x59f__rip__4198017_ to i64*), align 8
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
  %20 = xor i32 %6, %7
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
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
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ed6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f8f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x47b__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x47b__rip__4198309__type* @G_0x47b__rip__4198309_ to i64*), align 8
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
