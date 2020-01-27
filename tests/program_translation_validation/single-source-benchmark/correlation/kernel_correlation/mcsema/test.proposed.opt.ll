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
  %347 = phi i64 [ %.pre2, %block_.L_400c6a ], [ %778, %block_.L_400d8e ]
  %MEMORY.2 = phi %struct.Memory* [ %2, %block_.L_400c6a ], [ %699, %block_.L_400d8e ]
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
  %402 = phi i64 [ %597, %block_400ca0 ], [ %.pre3, %block_400c7d ]
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
  %497 = add i64 %439, 44
  store i64 %497, i64* %3, align 8
  %498 = load i64, i64* %442, align 8
  store i64 %498, i64* %RAX.i649, align 8
  %499 = add i64 %439, 48
  store i64 %499, i64* %3, align 8
  %500 = load i32, i32* %406, align 4
  %501 = sext i32 %500 to i64
  %502 = mul nsw i64 %501, 8000
  store i64 %502, i64* %RCX.i661, align 8
  %503 = lshr i64 %502, 63
  %504 = add i64 %502, %498
  store i64 %504, i64* %RAX.i649, align 8
  %505 = icmp ult i64 %504, %498
  %506 = icmp ult i64 %504, %502
  %507 = or i1 %505, %506
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %14, align 1
  %509 = trunc i64 %504 to i32
  %510 = and i32 %509, 255
  %511 = tail call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  store i8 %514, i8* %21, align 1
  %515 = xor i64 %498, %504
  %516 = lshr i64 %515, 4
  %517 = trunc i64 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %27, align 1
  %519 = icmp eq i64 %504, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %30, align 1
  %521 = lshr i64 %504, 63
  %522 = trunc i64 %521 to i8
  store i8 %522, i8* %33, align 1
  %523 = lshr i64 %498, 63
  %524 = xor i64 %521, %523
  %525 = xor i64 %521, %503
  %526 = add nuw nsw i64 %524, %525
  %527 = icmp eq i64 %526, 2
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %39, align 1
  %529 = add i64 %439, 62
  store i64 %529, i64* %3, align 8
  %530 = load i32, i32* %476, align 4
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %RCX.i661, align 8
  %532 = shl nsw i64 %531, 3
  %533 = add i64 %532, %504
  %534 = add i64 %439, 67
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to double*
  %536 = load double, double* %535, align 8
  store double %536, double* %42, align 1
  store double 0.000000e+00, double* %45, align 1
  %537 = add i64 %439, 71
  store i64 %537, i64* %3, align 8
  %538 = load i64, i64* %486, align 8
  store i64 %538, i64* %RAX.i649, align 8
  %539 = add i64 %439, 75
  store i64 %539, i64* %3, align 8
  %540 = load i32, i32* %476, align 4
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %RCX.i661, align 8
  %542 = shl nsw i64 %541, 3
  %543 = add i64 %542, %538
  %544 = add i64 %439, 80
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to double*
  %546 = load double, double* %545, align 8
  %547 = fsub double %536, %546
  store double %547, double* %42, align 1
  store i64 0, i64* %44, align 1
  %548 = fmul double %496, %547
  store double %548, double* %109, align 1
  %549 = load i64, i64* %RBP.i, align 8
  %550 = add i64 %549, -48
  %551 = add i64 %439, 88
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %RAX.i649, align 8
  %554 = add i64 %549, -56
  %555 = add i64 %439, 92
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = sext i32 %557 to i64
  store i64 %558, i64* %RCX.i661, align 8
  %559 = shl nsw i64 %558, 3
  %560 = add i64 %559, %553
  %561 = add i64 %439, 97
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to double*
  %563 = load double, double* %562, align 8
  %564 = fadd double %548, %563
  store double %564, double* %109, align 1
  %565 = add i64 %439, 102
  store i64 %565, i64* %3, align 8
  store double %564, double* %562, align 8
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -52
  %568 = load i64, i64* %3, align 8
  %569 = add i64 %568, 3
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %567 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = add i32 %571, 1
  %573 = zext i32 %572 to i64
  store i64 %573, i64* %RAX.i649, align 8
  %574 = icmp eq i32 %571, -1
  %575 = icmp eq i32 %572, 0
  %576 = or i1 %574, %575
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %14, align 1
  %578 = and i32 %572, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578)
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %21, align 1
  %583 = xor i32 %571, %572
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %27, align 1
  %587 = zext i1 %575 to i8
  store i8 %587, i8* %30, align 1
  %588 = lshr i32 %572, 31
  %589 = trunc i32 %588 to i8
  store i8 %589, i8* %33, align 1
  %590 = lshr i32 %571, 31
  %591 = xor i32 %588, %590
  %592 = add nuw nsw i32 %591, %588
  %593 = icmp eq i32 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %39, align 1
  %595 = add i64 %568, 9
  store i64 %595, i64* %3, align 8
  store i32 %572, i32* %570, align 4
  %596 = load i64, i64* %3, align 8
  %597 = add i64 %596, -123
  store i64 %597, i64* %3, align 8
  br label %block_.L_400c94

block_.L_400d14:                                  ; preds = %block_.L_400c94
  %598 = add i64 %403, -16
  %599 = add i64 %439, 5
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to double*
  %601 = load double, double* %600, align 8
  store double %601, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %602 = add i64 %403, -48
  %603 = add i64 %439, 9
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i64*
  %605 = load i64, i64* %604, align 8
  store i64 %605, i64* %RAX.i649, align 8
  %606 = add i64 %403, -56
  %607 = add i64 %439, 13
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = sext i32 %609 to i64
  store i64 %610, i64* %RCX.i661, align 8
  %611 = shl nsw i64 %610, 3
  %612 = add i64 %611, %605
  %613 = add i64 %439, 18
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to double*
  %615 = load double, double* %614, align 8
  %616 = fdiv double %615, %601
  store double %616, double* %42, align 1
  store i64 0, i64* %44, align 1
  %617 = add i64 %439, 27
  store i64 %617, i64* %3, align 8
  store double %616, double* %614, align 8
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -48
  %620 = load i64, i64* %3, align 8
  %621 = add i64 %620, 4
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %619 to i64*
  %623 = load i64, i64* %622, align 8
  store i64 %623, i64* %RAX.i649, align 8
  %624 = add i64 %618, -56
  %625 = add i64 %620, 8
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = sext i32 %627 to i64
  store i64 %628, i64* %RCX.i661, align 8
  %629 = shl nsw i64 %628, 3
  %630 = add i64 %629, %623
  %631 = add i64 %620, 13
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i64*
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %634 = add i64 %620, -1695
  %635 = add i64 %620, 18
  %636 = load i64, i64* %6, align 8
  %637 = add i64 %636, -8
  %638 = inttoptr i64 %637 to i64*
  store i64 %635, i64* %638, align 8
  store i64 %637, i64* %6, align 8
  store i64 %634, i64* %3, align 8
  %call2_400d3c = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %634, %struct.Memory* %MEMORY.2)
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -48
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, 4
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %640 to i64*
  %644 = load i64, i64* %643, align 8
  store i64 %644, i64* %RAX.i649, align 8
  %645 = add i64 %639, -56
  %646 = add i64 %641, 8
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = sext i32 %648 to i64
  store i64 %649, i64* %RCX.i661, align 8
  %650 = shl nsw i64 %649, 3
  %651 = add i64 %650, %644
  %652 = add i64 %641, 13
  store i64 %652, i64* %3, align 8
  %653 = load i64, i64* %63, align 1
  %654 = inttoptr i64 %651 to i64*
  store i64 %653, i64* %654, align 8
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -48
  %657 = load i64, i64* %3, align 8
  %658 = add i64 %657, 4
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %656 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %RAX.i649, align 8
  %661 = add i64 %655, -56
  %662 = add i64 %657, 8
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = sext i32 %664 to i64
  store i64 %665, i64* %RCX.i661, align 8
  %666 = shl nsw i64 %665, 3
  %667 = add i64 %666, %660
  %668 = add i64 %657, 13
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to double*
  %670 = load double, double* %669, align 8
  store double %670, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %671 = add i64 %655, -72
  %672 = add i64 %657, 18
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to double*
  %674 = load double, double* %673, align 8
  store double %674, double* %42, align 1
  store double 0.000000e+00, double* %45, align 1
  %675 = add i64 %657, 22
  store i64 %675, i64* %3, align 8
  %676 = fcmp uno double %674, %670
  br i1 %676, label %677, label %687

; <label>:677:                                    ; preds = %block_.L_400d14
  %678 = fadd double %674, %670
  %679 = bitcast double %678 to i64
  %680 = and i64 %679, 9221120237041090560
  %681 = icmp eq i64 %680, 9218868437227405312
  %682 = and i64 %679, 2251799813685247
  %683 = icmp ne i64 %682, 0
  %684 = and i1 %681, %683
  br i1 %684, label %685, label %693

; <label>:685:                                    ; preds = %677
  %686 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %675, %struct.Memory* %call2_400d3c)
  %.pre4 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:687:                                    ; preds = %block_.L_400d14
  %688 = fcmp ogt double %674, %670
  br i1 %688, label %693, label %689

; <label>:689:                                    ; preds = %687
  %690 = fcmp olt double %674, %670
  br i1 %690, label %693, label %691

; <label>:691:                                    ; preds = %689
  %692 = fcmp oeq double %674, %670
  br i1 %692, label %693, label %697

; <label>:693:                                    ; preds = %691, %689, %687, %677
  %694 = phi i8 [ 0, %687 ], [ 0, %689 ], [ 1, %691 ], [ 1, %677 ]
  %695 = phi i8 [ 0, %687 ], [ 0, %689 ], [ 0, %691 ], [ 1, %677 ]
  %696 = phi i8 [ 0, %687 ], [ 1, %689 ], [ 0, %691 ], [ 1, %677 ]
  store i8 %694, i8* %30, align 1
  store i8 %695, i8* %21, align 1
  store i8 %696, i8* %14, align 1
  br label %697

; <label>:697:                                    ; preds = %693, %691
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %697, %685
  %698 = phi i64 [ %.pre4, %685 ], [ %675, %697 ]
  %699 = phi %struct.Memory* [ %686, %685 ], [ %call2_400d3c, %697 ]
  %700 = load i8, i8* %14, align 1
  %701 = icmp ne i8 %700, 0
  %.v14 = select i1 %701, i64 24, i64 6
  %702 = add i64 %698, %.v14
  store i64 %702, i64* %3, align 8
  %cmpBr_400d64 = icmp eq i8 %700, 1
  br i1 %cmpBr_400d64, label %block_.L_400d7c, label %block_400d6a

block_400d6a:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %703 = load i64, i64* bitcast (%G_0x6ae__rip__4197746__type* @G_0x6ae__rip__4197746_ to i64*), align 8
  store i64 %703, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %704 = load i64, i64* %RBP.i, align 8
  %705 = add i64 %704, -80
  %706 = add i64 %702, 13
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i64*
  store i64 %703, i64* %707, align 8
  %708 = load i64, i64* %3, align 8
  %709 = add i64 %708, 23
  store i64 %709, i64* %3, align 8
  br label %block_.L_400d8e

block_.L_400d7c:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %710 = load i64, i64* %RBP.i, align 8
  %711 = add i64 %710, -48
  %712 = add i64 %702, 4
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %711 to i64*
  %714 = load i64, i64* %713, align 8
  store i64 %714, i64* %RAX.i649, align 8
  %715 = add i64 %710, -56
  %716 = add i64 %702, 8
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = sext i32 %718 to i64
  store i64 %719, i64* %RCX.i661, align 8
  %720 = shl nsw i64 %719, 3
  %721 = add i64 %720, %714
  %722 = add i64 %702, 13
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %725 = add i64 %710, -80
  %726 = add i64 %702, 18
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i64*
  store i64 %724, i64* %727, align 8
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400d8e

block_.L_400d8e:                                  ; preds = %block_.L_400d7c, %block_400d6a
  %728 = phi i64 [ %.pre5, %block_.L_400d7c ], [ %709, %block_400d6a ]
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -80
  %731 = add i64 %728, 5
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i64*
  %733 = load i64, i64* %732, align 8
  store i64 %733, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %734 = add i64 %729, -48
  %735 = add i64 %728, 9
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i64*
  %737 = load i64, i64* %736, align 8
  store i64 %737, i64* %RAX.i649, align 8
  %738 = add i64 %729, -56
  %739 = add i64 %728, 13
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = sext i32 %741 to i64
  store i64 %742, i64* %RCX.i661, align 8
  %743 = shl nsw i64 %742, 3
  %744 = add i64 %743, %737
  %745 = add i64 %728, 18
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i64*
  store i64 %733, i64* %746, align 8
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -56
  %749 = load i64, i64* %3, align 8
  %750 = add i64 %749, 3
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = add i32 %752, 1
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RAX.i649, align 8
  %755 = icmp eq i32 %752, -1
  %756 = icmp eq i32 %753, 0
  %757 = or i1 %755, %756
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %14, align 1
  %759 = and i32 %753, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %21, align 1
  %764 = xor i32 %752, %753
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %27, align 1
  %768 = zext i1 %756 to i8
  store i8 %768, i8* %30, align 1
  %769 = lshr i32 %753, 31
  %770 = trunc i32 %769 to i8
  store i8 %770, i8* %33, align 1
  %771 = lshr i32 %752, 31
  %772 = xor i32 %769, %771
  %773 = add nuw nsw i32 %772, %769
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %39, align 1
  %776 = add i64 %749, 9
  store i64 %776, i64* %3, align 8
  store i32 %753, i32* %751, align 4
  %777 = load i64, i64* %3, align 8
  %778 = add i64 %777, -312
  store i64 %778, i64* %3, align 8
  br label %block_.L_400c71

block_.L_400dae:                                  ; preds = %block_.L_400c71
  %779 = add i64 %348, -52
  %780 = add i64 %384, 7
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  store i32 0, i32* %781, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400db5

block_.L_400db5:                                  ; preds = %block_.L_400e4e, %block_.L_400dae
  %782 = phi i64 [ %.pre6, %block_.L_400dae ], [ %1055, %block_.L_400e4e ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.2, %block_.L_400dae ], [ %MEMORY.6, %block_.L_400e4e ]
  %783 = load i64, i64* %RBP.i, align 8
  %784 = add i64 %783, -52
  %785 = add i64 %782, 3
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i32*
  %787 = load i32, i32* %786, align 4
  %788 = zext i32 %787 to i64
  store i64 %788, i64* %RAX.i649, align 8
  %789 = add i64 %783, -8
  %790 = add i64 %782, 6
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = sub i32 %787, %792
  %794 = icmp ult i32 %787, %792
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %14, align 1
  %796 = and i32 %793, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %21, align 1
  %801 = xor i32 %792, %787
  %802 = xor i32 %801, %793
  %803 = lshr i32 %802, 4
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  store i8 %805, i8* %27, align 1
  %806 = icmp eq i32 %793, 0
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %30, align 1
  %808 = lshr i32 %793, 31
  %809 = trunc i32 %808 to i8
  store i8 %809, i8* %33, align 1
  %810 = lshr i32 %787, 31
  %811 = lshr i32 %792, 31
  %812 = xor i32 %811, %810
  %813 = xor i32 %808, %810
  %814 = add nuw nsw i32 %813, %812
  %815 = icmp eq i32 %814, 2
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %39, align 1
  %817 = icmp ne i8 %809, 0
  %818 = xor i1 %817, %815
  %.v15 = select i1 %818, i64 12, i64 172
  %819 = add i64 %782, %.v15
  store i64 %819, i64* %3, align 8
  br i1 %818, label %block_400dc1, label %block_.L_400e61

block_400dc1:                                     ; preds = %block_.L_400db5
  %820 = add i64 %783, -56
  %821 = add i64 %819, 7
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  store i32 0, i32* %822, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_400dc8

block_.L_400dc8:                                  ; preds = %block_400dd4, %block_400dc1
  %823 = phi i64 [ %.pre7, %block_400dc1 ], [ %1025, %block_400dd4 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_400dc1 ], [ %call2_400e0a, %block_400dd4 ]
  %824 = load i64, i64* %RBP.i, align 8
  %825 = add i64 %824, -56
  %826 = add i64 %823, 3
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = zext i32 %828 to i64
  store i64 %829, i64* %RAX.i649, align 8
  %830 = add i64 %824, -4
  %831 = add i64 %823, 6
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = sub i32 %828, %833
  %835 = icmp ult i32 %828, %833
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %14, align 1
  %837 = and i32 %834, 255
  %838 = tail call i32 @llvm.ctpop.i32(i32 %837)
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  store i8 %841, i8* %21, align 1
  %842 = xor i32 %833, %828
  %843 = xor i32 %842, %834
  %844 = lshr i32 %843, 4
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  store i8 %846, i8* %27, align 1
  %847 = icmp eq i32 %834, 0
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %30, align 1
  %849 = lshr i32 %834, 31
  %850 = trunc i32 %849 to i8
  store i8 %850, i8* %33, align 1
  %851 = lshr i32 %828, 31
  %852 = lshr i32 %833, 31
  %853 = xor i32 %852, %851
  %854 = xor i32 %849, %851
  %855 = add nuw nsw i32 %854, %853
  %856 = icmp eq i32 %855, 2
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %39, align 1
  %858 = icmp ne i8 %850, 0
  %859 = xor i1 %858, %856
  %.v16 = select i1 %859, i64 12, i64 134
  %860 = add i64 %823, %.v16
  store i64 %860, i64* %3, align 8
  br i1 %859, label %block_400dd4, label %block_.L_400e4e

block_400dd4:                                     ; preds = %block_.L_400dc8
  %861 = add i64 %824, -40
  %862 = add i64 %860, 4
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i64*
  %864 = load i64, i64* %863, align 8
  store i64 %864, i64* %RAX.i649, align 8
  %865 = add i64 %860, 8
  store i64 %865, i64* %3, align 8
  %866 = load i32, i32* %827, align 4
  %867 = sext i32 %866 to i64
  store i64 %867, i64* %RCX.i661, align 8
  %868 = shl nsw i64 %867, 3
  %869 = add i64 %868, %864
  %870 = add i64 %860, 13
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to double*
  %872 = load double, double* %871, align 8
  store double %872, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %873 = add i64 %824, -24
  %874 = add i64 %860, 17
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i64*
  %876 = load i64, i64* %875, align 8
  store i64 %876, i64* %RAX.i649, align 8
  %877 = add i64 %824, -52
  %878 = add i64 %860, 21
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = sext i32 %880 to i64
  %882 = mul nsw i64 %881, 8000
  store i64 %882, i64* %RCX.i661, align 8
  %883 = lshr i64 %882, 63
  %884 = add i64 %882, %876
  store i64 %884, i64* %RAX.i649, align 8
  %885 = icmp ult i64 %884, %876
  %886 = icmp ult i64 %884, %882
  %887 = or i1 %885, %886
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %14, align 1
  %889 = trunc i64 %884 to i32
  %890 = and i32 %889, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  %895 = xor i64 %876, %884
  %896 = lshr i64 %895, 4
  %897 = trunc i64 %896 to i8
  %898 = and i8 %897, 1
  store i8 %898, i8* %27, align 1
  %899 = icmp eq i64 %884, 0
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %30, align 1
  %901 = lshr i64 %884, 63
  %902 = trunc i64 %901 to i8
  store i8 %902, i8* %33, align 1
  %903 = lshr i64 %876, 63
  %904 = xor i64 %901, %903
  %905 = xor i64 %901, %883
  %906 = add nuw nsw i64 %904, %905
  %907 = icmp eq i64 %906, 2
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %39, align 1
  %909 = add i64 %860, 35
  store i64 %909, i64* %3, align 8
  %910 = load i32, i32* %827, align 4
  %911 = sext i32 %910 to i64
  store i64 %911, i64* %RCX.i661, align 8
  %912 = shl nsw i64 %911, 3
  %913 = add i64 %912, %884
  %914 = add i64 %860, 40
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to double*
  %916 = load double, double* %915, align 8
  %917 = fsub double %916, %872
  store double %917, double* %42, align 1
  store i64 0, i64* %44, align 1
  %918 = add i64 %860, 49
  store i64 %918, i64* %3, align 8
  store double %917, double* %915, align 8
  %919 = load i64, i64* %RBP.i, align 8
  %920 = add i64 %919, -16
  %921 = load i64, i64* %3, align 8
  %922 = add i64 %921, 5
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %920 to i64*
  %924 = load i64, i64* %923, align 8
  store i64 %924, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %925 = add i64 %921, -1909
  %926 = add i64 %921, 10
  %927 = load i64, i64* %6, align 8
  %928 = add i64 %927, -8
  %929 = inttoptr i64 %928 to i64*
  store i64 %926, i64* %929, align 8
  store i64 %928, i64* %6, align 8
  store i64 %925, i64* %3, align 8
  %call2_400e0a = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %925, %struct.Memory* %MEMORY.6)
  %930 = load i64, i64* %RBP.i, align 8
  %931 = add i64 %930, -48
  %932 = load i64, i64* %3, align 8
  %933 = add i64 %932, 4
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %931 to i64*
  %935 = load i64, i64* %934, align 8
  store i64 %935, i64* %RAX.i649, align 8
  %936 = add i64 %930, -56
  %937 = add i64 %932, 8
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = sext i32 %939 to i64
  store i64 %940, i64* %RCX.i661, align 8
  %941 = shl nsw i64 %940, 3
  %942 = add i64 %941, %935
  %943 = add i64 %932, 13
  store i64 %943, i64* %3, align 8
  %944 = load double, double* %109, align 1
  %945 = inttoptr i64 %942 to double*
  %946 = load double, double* %945, align 8
  %947 = fmul double %944, %946
  store double %947, double* %109, align 1
  %948 = add i64 %930, -24
  %949 = add i64 %932, 17
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i64*
  %951 = load i64, i64* %950, align 8
  store i64 %951, i64* %RAX.i649, align 8
  %952 = add i64 %930, -52
  %953 = add i64 %932, 21
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = sext i32 %955 to i64
  %957 = mul nsw i64 %956, 8000
  store i64 %957, i64* %RCX.i661, align 8
  %958 = lshr i64 %957, 63
  %959 = add i64 %957, %951
  store i64 %959, i64* %RAX.i649, align 8
  %960 = icmp ult i64 %959, %951
  %961 = icmp ult i64 %959, %957
  %962 = or i1 %960, %961
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %14, align 1
  %964 = trunc i64 %959 to i32
  %965 = and i32 %964, 255
  %966 = tail call i32 @llvm.ctpop.i32(i32 %965)
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = xor i8 %968, 1
  store i8 %969, i8* %21, align 1
  %970 = xor i64 %951, %959
  %971 = lshr i64 %970, 4
  %972 = trunc i64 %971 to i8
  %973 = and i8 %972, 1
  store i8 %973, i8* %27, align 1
  %974 = icmp eq i64 %959, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %30, align 1
  %976 = lshr i64 %959, 63
  %977 = trunc i64 %976 to i8
  store i8 %977, i8* %33, align 1
  %978 = lshr i64 %951, 63
  %979 = xor i64 %976, %978
  %980 = xor i64 %976, %958
  %981 = add nuw nsw i64 %979, %980
  %982 = icmp eq i64 %981, 2
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %39, align 1
  %984 = add i64 %932, 35
  store i64 %984, i64* %3, align 8
  %985 = load i32, i32* %938, align 4
  %986 = sext i32 %985 to i64
  store i64 %986, i64* %RCX.i661, align 8
  %987 = shl nsw i64 %986, 3
  %988 = add i64 %987, %959
  %989 = add i64 %932, 40
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to double*
  %991 = load double, double* %990, align 8
  %992 = fdiv double %991, %947
  store double %992, double* %42, align 1
  store i64 0, i64* %44, align 1
  %993 = add i64 %932, 49
  store i64 %993, i64* %3, align 8
  store double %992, double* %990, align 8
  %994 = load i64, i64* %RBP.i, align 8
  %995 = add i64 %994, -56
  %996 = load i64, i64* %3, align 8
  %997 = add i64 %996, 3
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %995 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = add i32 %999, 1
  %1001 = zext i32 %1000 to i64
  store i64 %1001, i64* %RAX.i649, align 8
  %1002 = icmp eq i32 %999, -1
  %1003 = icmp eq i32 %1000, 0
  %1004 = or i1 %1002, %1003
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %14, align 1
  %1006 = and i32 %1000, 255
  %1007 = tail call i32 @llvm.ctpop.i32(i32 %1006)
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  %1010 = xor i8 %1009, 1
  store i8 %1010, i8* %21, align 1
  %1011 = xor i32 %999, %1000
  %1012 = lshr i32 %1011, 4
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  store i8 %1014, i8* %27, align 1
  %1015 = zext i1 %1003 to i8
  store i8 %1015, i8* %30, align 1
  %1016 = lshr i32 %1000, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %33, align 1
  %1018 = lshr i32 %999, 31
  %1019 = xor i32 %1016, %1018
  %1020 = add nuw nsw i32 %1019, %1016
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %39, align 1
  %1023 = add i64 %996, 9
  store i64 %1023, i64* %3, align 8
  store i32 %1000, i32* %998, align 4
  %1024 = load i64, i64* %3, align 8
  %1025 = add i64 %1024, -129
  store i64 %1025, i64* %3, align 8
  br label %block_.L_400dc8

block_.L_400e4e:                                  ; preds = %block_.L_400dc8
  %1026 = add i64 %824, -52
  %1027 = add i64 %860, 8
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = add i32 %1029, 1
  %1031 = zext i32 %1030 to i64
  store i64 %1031, i64* %RAX.i649, align 8
  %1032 = icmp eq i32 %1029, -1
  %1033 = icmp eq i32 %1030, 0
  %1034 = or i1 %1032, %1033
  %1035 = zext i1 %1034 to i8
  store i8 %1035, i8* %14, align 1
  %1036 = and i32 %1030, 255
  %1037 = tail call i32 @llvm.ctpop.i32(i32 %1036)
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  %1040 = xor i8 %1039, 1
  store i8 %1040, i8* %21, align 1
  %1041 = xor i32 %1029, %1030
  %1042 = lshr i32 %1041, 4
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  store i8 %1044, i8* %27, align 1
  %1045 = zext i1 %1033 to i8
  store i8 %1045, i8* %30, align 1
  %1046 = lshr i32 %1030, 31
  %1047 = trunc i32 %1046 to i8
  store i8 %1047, i8* %33, align 1
  %1048 = lshr i32 %1029, 31
  %1049 = xor i32 %1046, %1048
  %1050 = add nuw nsw i32 %1049, %1046
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %39, align 1
  %1053 = add i64 %860, 14
  store i64 %1053, i64* %3, align 8
  store i32 %1030, i32* %1028, align 4
  %1054 = load i64, i64* %3, align 8
  %1055 = add i64 %1054, -167
  store i64 %1055, i64* %3, align 8
  br label %block_.L_400db5

block_.L_400e61:                                  ; preds = %block_.L_400db5
  %1056 = add i64 %783, -60
  %1057 = add i64 %819, 7
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  store i32 0, i32* %1058, align 4
  %.pre8 = load i64, i64* %3, align 8
  br label %block_.L_400e68

block_.L_400e68:                                  ; preds = %block_.L_400f8a, %block_.L_400e61
  %1059 = phi i64 [ %1614, %block_.L_400f8a ], [ %.pre8, %block_.L_400e61 ]
  %1060 = load i64, i64* %RBP.i, align 8
  %1061 = add i64 %1060, -60
  %1062 = add i64 %1059, 3
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = zext i32 %1064 to i64
  store i64 %1065, i64* %RAX.i649, align 8
  %1066 = add i64 %1060, -4
  %1067 = add i64 %1059, 6
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = add i32 %1069, -1
  %1071 = zext i32 %1070 to i64
  store i64 %1071, i64* %RCX.i661, align 8
  %1072 = lshr i32 %1070, 31
  %1073 = sub i32 %1064, %1070
  %1074 = icmp ult i32 %1064, %1070
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %14, align 1
  %1076 = and i32 %1073, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %21, align 1
  %1081 = xor i32 %1070, %1064
  %1082 = xor i32 %1081, %1073
  %1083 = lshr i32 %1082, 4
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %27, align 1
  %1086 = icmp eq i32 %1073, 0
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %30, align 1
  %1088 = lshr i32 %1073, 31
  %1089 = trunc i32 %1088 to i8
  store i8 %1089, i8* %33, align 1
  %1090 = lshr i32 %1064, 31
  %1091 = xor i32 %1072, %1090
  %1092 = xor i32 %1088, %1090
  %1093 = add nuw nsw i32 %1092, %1091
  %1094 = icmp eq i32 %1093, 2
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %39, align 1
  %1096 = icmp ne i8 %1089, 0
  %1097 = xor i1 %1096, %1094
  %.v17 = select i1 %1097, i64 17, i64 309
  %1098 = add i64 %1059, %.v17
  %1099 = add i64 %1098, 8
  store i64 %1099, i64* %3, align 8
  br i1 %1097, label %block_400e79, label %block_.L_400f9d

block_400e79:                                     ; preds = %block_.L_400e68
  %1100 = load i64, i64* bitcast (%G_0x59f__rip__4198017__type* @G_0x59f__rip__4198017_ to i64*), align 8
  store i64 %1100, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %1101 = add i64 %1060, -32
  %1102 = add i64 %1098, 12
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i64*
  %1104 = load i64, i64* %1103, align 8
  store i64 %1104, i64* %RAX.i649, align 8
  %1105 = add i64 %1098, 16
  store i64 %1105, i64* %3, align 8
  %1106 = load i32, i32* %1063, align 4
  %1107 = sext i32 %1106 to i64
  %1108 = mul nsw i64 %1107, 8000
  store i64 %1108, i64* %RCX.i661, align 8
  %1109 = lshr i64 %1108, 63
  %1110 = add i64 %1108, %1104
  store i64 %1110, i64* %RAX.i649, align 8
  %1111 = icmp ult i64 %1110, %1104
  %1112 = icmp ult i64 %1110, %1108
  %1113 = or i1 %1111, %1112
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %14, align 1
  %1115 = trunc i64 %1110 to i32
  %1116 = and i32 %1115, 255
  %1117 = tail call i32 @llvm.ctpop.i32(i32 %1116)
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = xor i8 %1119, 1
  store i8 %1120, i8* %21, align 1
  %1121 = xor i64 %1104, %1110
  %1122 = lshr i64 %1121, 4
  %1123 = trunc i64 %1122 to i8
  %1124 = and i8 %1123, 1
  store i8 %1124, i8* %27, align 1
  %1125 = icmp eq i64 %1110, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %30, align 1
  %1127 = lshr i64 %1110, 63
  %1128 = trunc i64 %1127 to i8
  store i8 %1128, i8* %33, align 1
  %1129 = lshr i64 %1104, 63
  %1130 = xor i64 %1127, %1129
  %1131 = xor i64 %1127, %1109
  %1132 = add nuw nsw i64 %1130, %1131
  %1133 = icmp eq i64 %1132, 2
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %39, align 1
  %1135 = add i64 %1098, 30
  store i64 %1135, i64* %3, align 8
  %1136 = load i32, i32* %1063, align 4
  %1137 = sext i32 %1136 to i64
  store i64 %1137, i64* %RCX.i661, align 8
  %1138 = shl nsw i64 %1137, 3
  %1139 = add i64 %1138, %1110
  %1140 = add i64 %1098, 35
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i64*
  store i64 %1100, i64* %1141, align 8
  %1142 = load i64, i64* %RBP.i, align 8
  %1143 = add i64 %1142, -60
  %1144 = load i64, i64* %3, align 8
  %1145 = add i64 %1144, 3
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1143 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = add i32 %1147, 1
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RDX.i664, align 8
  %1150 = icmp eq i32 %1147, -1
  %1151 = icmp eq i32 %1148, 0
  %1152 = or i1 %1150, %1151
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %14, align 1
  %1154 = and i32 %1148, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  %1159 = xor i32 %1147, %1148
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  store i8 %1162, i8* %27, align 1
  %1163 = zext i1 %1151 to i8
  store i8 %1163, i8* %30, align 1
  %1164 = lshr i32 %1148, 31
  %1165 = trunc i32 %1164 to i8
  store i8 %1165, i8* %33, align 1
  %1166 = lshr i32 %1147, 31
  %1167 = xor i32 %1164, %1166
  %1168 = add nuw nsw i32 %1167, %1164
  %1169 = icmp eq i32 %1168, 2
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %39, align 1
  %1171 = add i64 %1142, -64
  %1172 = add i64 %1144, 9
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i32*
  store i32 %1148, i32* %1173, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_400ea5

block_.L_400ea5:                                  ; preds = %block_.L_400f46, %block_400e79
  %1174 = phi i64 [ %1584, %block_.L_400f46 ], [ %.pre9, %block_400e79 ]
  %1175 = load i64, i64* %RBP.i, align 8
  %1176 = add i64 %1175, -64
  %1177 = add i64 %1174, 3
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RAX.i649, align 8
  %1181 = add i64 %1175, -4
  %1182 = add i64 %1174, 6
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = sub i32 %1179, %1184
  %1186 = icmp ult i32 %1179, %1184
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %14, align 1
  %1188 = and i32 %1185, 255
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  %1192 = xor i8 %1191, 1
  store i8 %1192, i8* %21, align 1
  %1193 = xor i32 %1184, %1179
  %1194 = xor i32 %1193, %1185
  %1195 = lshr i32 %1194, 4
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  store i8 %1197, i8* %27, align 1
  %1198 = icmp eq i32 %1185, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %30, align 1
  %1200 = lshr i32 %1185, 31
  %1201 = trunc i32 %1200 to i8
  store i8 %1201, i8* %33, align 1
  %1202 = lshr i32 %1179, 31
  %1203 = lshr i32 %1184, 31
  %1204 = xor i32 %1203, %1202
  %1205 = xor i32 %1200, %1202
  %1206 = add nuw nsw i32 %1205, %1204
  %1207 = icmp eq i32 %1206, 2
  %1208 = zext i1 %1207 to i8
  store i8 %1208, i8* %39, align 1
  %1209 = icmp ne i8 %1201, 0
  %1210 = xor i1 %1209, %1207
  %.v18 = select i1 %1210, i64 12, i64 229
  %1211 = add i64 %1174, %.v18
  store i64 %1211, i64* %3, align 8
  br i1 %1210, label %block_400eb1, label %block_.L_400f8a

block_400eb1:                                     ; preds = %block_.L_400ea5
  store i32 0, i32* %103, align 1
  store i32 0, i32* %105, align 1
  store i32 0, i32* %106, align 1
  store i32 0, i32* %108, align 1
  %1212 = add i64 %1175, -32
  %1213 = add i64 %1211, 7
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  store i64 %1215, i64* %RAX.i649, align 8
  %1216 = add i64 %1175, -60
  %1217 = add i64 %1211, 11
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = sext i32 %1219 to i64
  %1221 = mul nsw i64 %1220, 8000
  store i64 %1221, i64* %RCX.i661, align 8
  %1222 = lshr i64 %1221, 63
  %1223 = add i64 %1221, %1215
  store i64 %1223, i64* %RAX.i649, align 8
  %1224 = icmp ult i64 %1223, %1215
  %1225 = icmp ult i64 %1223, %1221
  %1226 = or i1 %1224, %1225
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %14, align 1
  %1228 = trunc i64 %1223 to i32
  %1229 = and i32 %1228, 255
  %1230 = tail call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  store i8 %1233, i8* %21, align 1
  %1234 = xor i64 %1215, %1223
  %1235 = lshr i64 %1234, 4
  %1236 = trunc i64 %1235 to i8
  %1237 = and i8 %1236, 1
  store i8 %1237, i8* %27, align 1
  %1238 = icmp eq i64 %1223, 0
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %30, align 1
  %1240 = lshr i64 %1223, 63
  %1241 = trunc i64 %1240 to i8
  store i8 %1241, i8* %33, align 1
  %1242 = lshr i64 %1215, 63
  %1243 = xor i64 %1240, %1242
  %1244 = xor i64 %1240, %1222
  %1245 = add nuw nsw i64 %1243, %1244
  %1246 = icmp eq i64 %1245, 2
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %39, align 1
  %1248 = add i64 %1211, 25
  store i64 %1248, i64* %3, align 8
  %1249 = load i32, i32* %1178, align 4
  %1250 = sext i32 %1249 to i64
  store i64 %1250, i64* %RCX.i661, align 8
  %1251 = shl nsw i64 %1250, 3
  %1252 = add i64 %1251, %1223
  %1253 = add i64 %1211, 30
  store i64 %1253, i64* %3, align 8
  %1254 = load i64, i64* %63, align 1
  %1255 = inttoptr i64 %1252 to i64*
  store i64 %1254, i64* %1255, align 8
  %1256 = load i64, i64* %RBP.i, align 8
  %1257 = add i64 %1256, -52
  %1258 = load i64, i64* %3, align 8
  %1259 = add i64 %1258, 7
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1257 to i32*
  store i32 0, i32* %1260, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_400ed6

block_.L_400ed6:                                  ; preds = %block_400ee2, %block_400eb1
  %1261 = phi i64 [ %1464, %block_400ee2 ], [ %.pre10, %block_400eb1 ]
  %1262 = load i64, i64* %RBP.i, align 8
  %1263 = add i64 %1262, -52
  %1264 = add i64 %1261, 3
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RAX.i649, align 8
  %1268 = add i64 %1262, -8
  %1269 = add i64 %1261, 6
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i32*
  %1271 = load i32, i32* %1270, align 4
  %1272 = sub i32 %1266, %1271
  %1273 = icmp ult i32 %1266, %1271
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %14, align 1
  %1275 = and i32 %1272, 255
  %1276 = tail call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  store i8 %1279, i8* %21, align 1
  %1280 = xor i32 %1271, %1266
  %1281 = xor i32 %1280, %1272
  %1282 = lshr i32 %1281, 4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  store i8 %1284, i8* %27, align 1
  %1285 = icmp eq i32 %1272, 0
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %30, align 1
  %1287 = lshr i32 %1272, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %33, align 1
  %1289 = lshr i32 %1266, 31
  %1290 = lshr i32 %1271, 31
  %1291 = xor i32 %1290, %1289
  %1292 = xor i32 %1287, %1289
  %1293 = add nuw nsw i32 %1292, %1291
  %1294 = icmp eq i32 %1293, 2
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %39, align 1
  %1296 = icmp ne i8 %1288, 0
  %1297 = xor i1 %1296, %1294
  %.v19 = select i1 %1297, i64 12, i64 112
  %1298 = add i64 %1261, %.v19
  store i64 %1298, i64* %3, align 8
  br i1 %1297, label %block_400ee2, label %block_.L_400f46

block_400ee2:                                     ; preds = %block_.L_400ed6
  %1299 = add i64 %1262, -24
  %1300 = add i64 %1298, 4
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i64*
  %1302 = load i64, i64* %1301, align 8
  store i64 %1302, i64* %RAX.i649, align 8
  %1303 = add i64 %1298, 8
  store i64 %1303, i64* %3, align 8
  %1304 = load i32, i32* %1265, align 4
  %1305 = sext i32 %1304 to i64
  %1306 = mul nsw i64 %1305, 8000
  store i64 %1306, i64* %RCX.i661, align 8
  %1307 = lshr i64 %1306, 63
  %1308 = add i64 %1306, %1302
  store i64 %1308, i64* %RAX.i649, align 8
  %1309 = icmp ult i64 %1308, %1302
  %1310 = icmp ult i64 %1308, %1306
  %1311 = or i1 %1309, %1310
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %14, align 1
  %1313 = trunc i64 %1308 to i32
  %1314 = and i32 %1313, 255
  %1315 = tail call i32 @llvm.ctpop.i32(i32 %1314)
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  %1318 = xor i8 %1317, 1
  store i8 %1318, i8* %21, align 1
  %1319 = xor i64 %1302, %1308
  %1320 = lshr i64 %1319, 4
  %1321 = trunc i64 %1320 to i8
  %1322 = and i8 %1321, 1
  store i8 %1322, i8* %27, align 1
  %1323 = icmp eq i64 %1308, 0
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %30, align 1
  %1325 = lshr i64 %1308, 63
  %1326 = trunc i64 %1325 to i8
  store i8 %1326, i8* %33, align 1
  %1327 = lshr i64 %1302, 63
  %1328 = xor i64 %1325, %1327
  %1329 = xor i64 %1325, %1307
  %1330 = add nuw nsw i64 %1328, %1329
  %1331 = icmp eq i64 %1330, 2
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %39, align 1
  %1333 = add i64 %1262, -60
  %1334 = add i64 %1298, 22
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = sext i32 %1336 to i64
  store i64 %1337, i64* %RCX.i661, align 8
  %1338 = shl nsw i64 %1337, 3
  %1339 = add i64 %1338, %1308
  %1340 = add i64 %1298, 27
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to double*
  %1342 = load double, double* %1341, align 8
  store double %1342, double* %109, align 1
  store double 0.000000e+00, double* %110, align 1
  %1343 = add i64 %1298, 31
  store i64 %1343, i64* %3, align 8
  %1344 = load i64, i64* %1301, align 8
  store i64 %1344, i64* %RAX.i649, align 8
  %1345 = add i64 %1298, 35
  store i64 %1345, i64* %3, align 8
  %1346 = load i32, i32* %1265, align 4
  %1347 = sext i32 %1346 to i64
  %1348 = mul nsw i64 %1347, 8000
  store i64 %1348, i64* %RCX.i661, align 8
  %1349 = lshr i64 %1348, 63
  %1350 = add i64 %1348, %1344
  store i64 %1350, i64* %RAX.i649, align 8
  %1351 = icmp ult i64 %1350, %1344
  %1352 = icmp ult i64 %1350, %1348
  %1353 = or i1 %1351, %1352
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %14, align 1
  %1355 = trunc i64 %1350 to i32
  %1356 = and i32 %1355, 255
  %1357 = tail call i32 @llvm.ctpop.i32(i32 %1356)
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  %1360 = xor i8 %1359, 1
  store i8 %1360, i8* %21, align 1
  %1361 = xor i64 %1344, %1350
  %1362 = lshr i64 %1361, 4
  %1363 = trunc i64 %1362 to i8
  %1364 = and i8 %1363, 1
  store i8 %1364, i8* %27, align 1
  %1365 = icmp eq i64 %1350, 0
  %1366 = zext i1 %1365 to i8
  store i8 %1366, i8* %30, align 1
  %1367 = lshr i64 %1350, 63
  %1368 = trunc i64 %1367 to i8
  store i8 %1368, i8* %33, align 1
  %1369 = lshr i64 %1344, 63
  %1370 = xor i64 %1367, %1369
  %1371 = xor i64 %1367, %1349
  %1372 = add nuw nsw i64 %1370, %1371
  %1373 = icmp eq i64 %1372, 2
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %39, align 1
  %1375 = load i64, i64* %RBP.i, align 8
  %1376 = add i64 %1375, -64
  %1377 = add i64 %1298, 49
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i32*
  %1379 = load i32, i32* %1378, align 4
  %1380 = sext i32 %1379 to i64
  store i64 %1380, i64* %RCX.i661, align 8
  %1381 = shl nsw i64 %1380, 3
  %1382 = add i64 %1381, %1350
  %1383 = add i64 %1298, 54
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to double*
  %1385 = load double, double* %1384, align 8
  %1386 = fmul double %1342, %1385
  store double %1386, double* %109, align 1
  store i64 0, i64* %102, align 1
  %1387 = add i64 %1375, -32
  %1388 = add i64 %1298, 58
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i64*
  %1390 = load i64, i64* %1389, align 8
  store i64 %1390, i64* %RAX.i649, align 8
  %1391 = add i64 %1375, -60
  %1392 = add i64 %1298, 62
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = sext i32 %1394 to i64
  %1396 = mul nsw i64 %1395, 8000
  store i64 %1396, i64* %RCX.i661, align 8
  %1397 = lshr i64 %1396, 63
  %1398 = add i64 %1396, %1390
  store i64 %1398, i64* %RAX.i649, align 8
  %1399 = icmp ult i64 %1398, %1390
  %1400 = icmp ult i64 %1398, %1396
  %1401 = or i1 %1399, %1400
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %14, align 1
  %1403 = trunc i64 %1398 to i32
  %1404 = and i32 %1403, 255
  %1405 = tail call i32 @llvm.ctpop.i32(i32 %1404)
  %1406 = trunc i32 %1405 to i8
  %1407 = and i8 %1406, 1
  %1408 = xor i8 %1407, 1
  store i8 %1408, i8* %21, align 1
  %1409 = xor i64 %1390, %1398
  %1410 = lshr i64 %1409, 4
  %1411 = trunc i64 %1410 to i8
  %1412 = and i8 %1411, 1
  store i8 %1412, i8* %27, align 1
  %1413 = icmp eq i64 %1398, 0
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %30, align 1
  %1415 = lshr i64 %1398, 63
  %1416 = trunc i64 %1415 to i8
  store i8 %1416, i8* %33, align 1
  %1417 = lshr i64 %1390, 63
  %1418 = xor i64 %1415, %1417
  %1419 = xor i64 %1415, %1397
  %1420 = add nuw nsw i64 %1418, %1419
  %1421 = icmp eq i64 %1420, 2
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %39, align 1
  %1423 = add i64 %1298, 76
  store i64 %1423, i64* %3, align 8
  %1424 = load i32, i32* %1378, align 4
  %1425 = sext i32 %1424 to i64
  store i64 %1425, i64* %RCX.i661, align 8
  %1426 = shl nsw i64 %1425, 3
  %1427 = add i64 %1426, %1398
  %1428 = add i64 %1298, 81
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to double*
  %1430 = load double, double* %1429, align 8
  %1431 = fadd double %1386, %1430
  store double %1431, double* %109, align 1
  store i64 0, i64* %102, align 1
  %1432 = add i64 %1298, 86
  store i64 %1432, i64* %3, align 8
  store double %1431, double* %1429, align 8
  %1433 = load i64, i64* %RBP.i, align 8
  %1434 = add i64 %1433, -52
  %1435 = load i64, i64* %3, align 8
  %1436 = add i64 %1435, 3
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1434 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = add i32 %1438, 1
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RAX.i649, align 8
  %1441 = icmp eq i32 %1438, -1
  %1442 = icmp eq i32 %1439, 0
  %1443 = or i1 %1441, %1442
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %14, align 1
  %1445 = and i32 %1439, 255
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1445)
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  store i8 %1449, i8* %21, align 1
  %1450 = xor i32 %1438, %1439
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %27, align 1
  %1454 = zext i1 %1442 to i8
  store i8 %1454, i8* %30, align 1
  %1455 = lshr i32 %1439, 31
  %1456 = trunc i32 %1455 to i8
  store i8 %1456, i8* %33, align 1
  %1457 = lshr i32 %1438, 31
  %1458 = xor i32 %1455, %1457
  %1459 = add nuw nsw i32 %1458, %1455
  %1460 = icmp eq i32 %1459, 2
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %39, align 1
  %1462 = add i64 %1435, 9
  store i64 %1462, i64* %3, align 8
  store i32 %1439, i32* %1437, align 4
  %1463 = load i64, i64* %3, align 8
  %1464 = add i64 %1463, -107
  store i64 %1464, i64* %3, align 8
  br label %block_.L_400ed6

block_.L_400f46:                                  ; preds = %block_.L_400ed6
  %1465 = add i64 %1262, -32
  %1466 = add i64 %1298, 4
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %RAX.i649, align 8
  %1469 = add i64 %1262, -60
  %1470 = add i64 %1298, 8
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = sext i32 %1472 to i64
  %1474 = mul nsw i64 %1473, 8000
  store i64 %1474, i64* %RCX.i661, align 8
  %1475 = lshr i64 %1474, 63
  %1476 = add i64 %1474, %1468
  store i64 %1476, i64* %RAX.i649, align 8
  %1477 = icmp ult i64 %1476, %1468
  %1478 = icmp ult i64 %1476, %1474
  %1479 = or i1 %1477, %1478
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %14, align 1
  %1481 = trunc i64 %1476 to i32
  %1482 = and i32 %1481, 255
  %1483 = tail call i32 @llvm.ctpop.i32(i32 %1482)
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  %1486 = xor i8 %1485, 1
  store i8 %1486, i8* %21, align 1
  %1487 = xor i64 %1468, %1476
  %1488 = lshr i64 %1487, 4
  %1489 = trunc i64 %1488 to i8
  %1490 = and i8 %1489, 1
  store i8 %1490, i8* %27, align 1
  %1491 = icmp eq i64 %1476, 0
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %30, align 1
  %1493 = lshr i64 %1476, 63
  %1494 = trunc i64 %1493 to i8
  store i8 %1494, i8* %33, align 1
  %1495 = lshr i64 %1468, 63
  %1496 = xor i64 %1493, %1495
  %1497 = xor i64 %1493, %1475
  %1498 = add nuw nsw i64 %1496, %1497
  %1499 = icmp eq i64 %1498, 2
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %39, align 1
  %1501 = add i64 %1262, -64
  %1502 = add i64 %1298, 22
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = sext i32 %1504 to i64
  store i64 %1505, i64* %RCX.i661, align 8
  %1506 = shl nsw i64 %1505, 3
  %1507 = add i64 %1506, %1476
  %1508 = add i64 %1298, 27
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i64*
  %1510 = load i64, i64* %1509, align 8
  store i64 %1510, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %1511 = add i64 %1298, 31
  store i64 %1511, i64* %3, align 8
  %1512 = load i64, i64* %1467, align 8
  store i64 %1512, i64* %RAX.i649, align 8
  %1513 = add i64 %1298, 35
  store i64 %1513, i64* %3, align 8
  %1514 = load i32, i32* %1503, align 4
  %1515 = sext i32 %1514 to i64
  %1516 = mul nsw i64 %1515, 8000
  store i64 %1516, i64* %RCX.i661, align 8
  %1517 = lshr i64 %1516, 63
  %1518 = add i64 %1516, %1512
  store i64 %1518, i64* %RAX.i649, align 8
  %1519 = icmp ult i64 %1518, %1512
  %1520 = icmp ult i64 %1518, %1516
  %1521 = or i1 %1519, %1520
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %14, align 1
  %1523 = trunc i64 %1518 to i32
  %1524 = and i32 %1523, 255
  %1525 = tail call i32 @llvm.ctpop.i32(i32 %1524)
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = xor i8 %1527, 1
  store i8 %1528, i8* %21, align 1
  %1529 = xor i64 %1512, %1518
  %1530 = lshr i64 %1529, 4
  %1531 = trunc i64 %1530 to i8
  %1532 = and i8 %1531, 1
  store i8 %1532, i8* %27, align 1
  %1533 = icmp eq i64 %1518, 0
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %30, align 1
  %1535 = lshr i64 %1518, 63
  %1536 = trunc i64 %1535 to i8
  store i8 %1536, i8* %33, align 1
  %1537 = lshr i64 %1512, 63
  %1538 = xor i64 %1535, %1537
  %1539 = xor i64 %1535, %1517
  %1540 = add nuw nsw i64 %1538, %1539
  %1541 = icmp eq i64 %1540, 2
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %39, align 1
  %1543 = load i64, i64* %RBP.i, align 8
  %1544 = add i64 %1543, -60
  %1545 = add i64 %1298, 49
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i32*
  %1547 = load i32, i32* %1546, align 4
  %1548 = sext i32 %1547 to i64
  store i64 %1548, i64* %RCX.i661, align 8
  %1549 = shl nsw i64 %1548, 3
  %1550 = add i64 %1549, %1518
  %1551 = add i64 %1298, 54
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i64*
  store i64 %1510, i64* %1552, align 8
  %1553 = load i64, i64* %RBP.i, align 8
  %1554 = add i64 %1553, -64
  %1555 = load i64, i64* %3, align 8
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1554 to i32*
  %1558 = load i32, i32* %1557, align 4
  %1559 = add i32 %1558, 1
  %1560 = zext i32 %1559 to i64
  store i64 %1560, i64* %RAX.i649, align 8
  %1561 = icmp eq i32 %1558, -1
  %1562 = icmp eq i32 %1559, 0
  %1563 = or i1 %1561, %1562
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %14, align 1
  %1565 = and i32 %1559, 255
  %1566 = tail call i32 @llvm.ctpop.i32(i32 %1565)
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = xor i8 %1568, 1
  store i8 %1569, i8* %21, align 1
  %1570 = xor i32 %1558, %1559
  %1571 = lshr i32 %1570, 4
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  store i8 %1573, i8* %27, align 1
  %1574 = zext i1 %1562 to i8
  store i8 %1574, i8* %30, align 1
  %1575 = lshr i32 %1559, 31
  %1576 = trunc i32 %1575 to i8
  store i8 %1576, i8* %33, align 1
  %1577 = lshr i32 %1558, 31
  %1578 = xor i32 %1575, %1577
  %1579 = add nuw nsw i32 %1578, %1575
  %1580 = icmp eq i32 %1579, 2
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %39, align 1
  %1582 = add i64 %1555, 9
  store i64 %1582, i64* %3, align 8
  store i32 %1559, i32* %1557, align 4
  %1583 = load i64, i64* %3, align 8
  %1584 = add i64 %1583, -224
  store i64 %1584, i64* %3, align 8
  br label %block_.L_400ea5

block_.L_400f8a:                                  ; preds = %block_.L_400ea5
  %1585 = add i64 %1175, -60
  %1586 = add i64 %1211, 8
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i32*
  %1588 = load i32, i32* %1587, align 4
  %1589 = add i32 %1588, 1
  %1590 = zext i32 %1589 to i64
  store i64 %1590, i64* %RAX.i649, align 8
  %1591 = icmp eq i32 %1588, -1
  %1592 = icmp eq i32 %1589, 0
  %1593 = or i1 %1591, %1592
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %14, align 1
  %1595 = and i32 %1589, 255
  %1596 = tail call i32 @llvm.ctpop.i32(i32 %1595)
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = xor i8 %1598, 1
  store i8 %1599, i8* %21, align 1
  %1600 = xor i32 %1588, %1589
  %1601 = lshr i32 %1600, 4
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  store i8 %1603, i8* %27, align 1
  %1604 = zext i1 %1592 to i8
  store i8 %1604, i8* %30, align 1
  %1605 = lshr i32 %1589, 31
  %1606 = trunc i32 %1605 to i8
  store i8 %1606, i8* %33, align 1
  %1607 = lshr i32 %1588, 31
  %1608 = xor i32 %1605, %1607
  %1609 = add nuw nsw i32 %1608, %1605
  %1610 = icmp eq i32 %1609, 2
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %39, align 1
  %1612 = add i64 %1211, 14
  store i64 %1612, i64* %3, align 8
  store i32 %1589, i32* %1587, align 4
  %1613 = load i64, i64* %3, align 8
  %1614 = add i64 %1613, -304
  store i64 %1614, i64* %3, align 8
  br label %block_.L_400e68

block_.L_400f9d:                                  ; preds = %block_.L_400e68
  %1615 = load i64, i64* bitcast (%G_0x47b__rip__4198309__type* @G_0x47b__rip__4198309_ to i64*), align 8
  store i64 %1615, i64* %63, align 1
  store double 0.000000e+00, double* %110, align 1
  %1616 = add i64 %1060, -32
  %1617 = add i64 %1098, 12
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i64*
  %1619 = load i64, i64* %1618, align 8
  store i64 %1619, i64* %RAX.i649, align 8
  %1620 = add i64 %1098, 15
  store i64 %1620, i64* %3, align 8
  %1621 = load i32, i32* %1068, align 4
  %1622 = add i32 %1621, -1
  %1623 = zext i32 %1622 to i64
  store i64 %1623, i64* %RCX.i661, align 8
  %1624 = sext i32 %1622 to i64
  %1625 = mul nsw i64 %1624, 8000
  store i64 %1625, i64* %RDX.i664, align 8
  %1626 = lshr i64 %1625, 63
  %1627 = add i64 %1625, %1619
  store i64 %1627, i64* %RAX.i649, align 8
  %1628 = icmp ult i64 %1627, %1619
  %1629 = icmp ult i64 %1627, %1625
  %1630 = or i1 %1628, %1629
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %14, align 1
  %1632 = trunc i64 %1627 to i32
  %1633 = and i32 %1632, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %21, align 1
  %1638 = xor i64 %1619, %1627
  %1639 = lshr i64 %1638, 4
  %1640 = trunc i64 %1639 to i8
  %1641 = and i8 %1640, 1
  store i8 %1641, i8* %27, align 1
  %1642 = icmp eq i64 %1627, 0
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %30, align 1
  %1644 = lshr i64 %1627, 63
  %1645 = trunc i64 %1644 to i8
  store i8 %1645, i8* %33, align 1
  %1646 = lshr i64 %1619, 63
  %1647 = xor i64 %1644, %1646
  %1648 = xor i64 %1644, %1626
  %1649 = add nuw nsw i64 %1647, %1648
  %1650 = icmp eq i64 %1649, 2
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %39, align 1
  %1652 = add i64 %1098, 34
  store i64 %1652, i64* %3, align 8
  %1653 = load i32, i32* %1068, align 4
  %1654 = add i32 %1653, -1
  %1655 = zext i32 %1654 to i64
  store i64 %1655, i64* %RCX.i661, align 8
  %1656 = sext i32 %1654 to i64
  store i64 %1656, i64* %RDX.i664, align 8
  %1657 = shl nsw i64 %1656, 3
  %1658 = add i64 %1657, %1627
  %1659 = add i64 %1098, 45
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i64*
  store i64 %1615, i64* %1660, align 8
  %1661 = load i64, i64* %6, align 8
  %1662 = load i64, i64* %3, align 8
  %1663 = add i64 %1661, 80
  store i64 %1663, i64* %6, align 8
  %1664 = icmp ugt i64 %1661, -81
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %14, align 1
  %1666 = trunc i64 %1663 to i32
  %1667 = and i32 %1666, 255
  %1668 = tail call i32 @llvm.ctpop.i32(i32 %1667)
  %1669 = trunc i32 %1668 to i8
  %1670 = and i8 %1669, 1
  %1671 = xor i8 %1670, 1
  store i8 %1671, i8* %21, align 1
  %1672 = xor i64 %1661, 16
  %1673 = xor i64 %1672, %1663
  %1674 = lshr i64 %1673, 4
  %1675 = trunc i64 %1674 to i8
  %1676 = and i8 %1675, 1
  store i8 %1676, i8* %27, align 1
  %1677 = icmp eq i64 %1663, 0
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %30, align 1
  %1679 = lshr i64 %1663, 63
  %1680 = trunc i64 %1679 to i8
  store i8 %1680, i8* %33, align 1
  %1681 = lshr i64 %1661, 63
  %1682 = xor i64 %1679, %1681
  %1683 = add nuw nsw i64 %1682, %1679
  %1684 = icmp eq i64 %1683, 2
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %39, align 1
  %1686 = add i64 %1662, 5
  store i64 %1686, i64* %3, align 8
  %1687 = add i64 %1661, 88
  %1688 = inttoptr i64 %1663 to i64*
  %1689 = load i64, i64* %1688, align 8
  store i64 %1689, i64* %RBP.i, align 8
  store i64 %1687, i64* %6, align 8
  %1690 = add i64 %1662, 6
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1687 to i64*
  %1692 = load i64, i64* %1691, align 8
  store i64 %1692, i64* %3, align 8
  %1693 = add i64 %1661, 96
  store i64 %1693, i64* %6, align 8
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
