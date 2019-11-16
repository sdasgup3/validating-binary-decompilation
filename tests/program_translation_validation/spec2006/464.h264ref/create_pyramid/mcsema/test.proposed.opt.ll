; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6d0278_type = type <{ [8 x i8] }>
%G__0x4bf5b7_type = type <{ [8 x i8] }>
%G__0x4bf5d5_type = type <{ [8 x i8] }>
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
@G_0x6d0278 = local_unnamed_addr global %G_0x6d0278_type zeroinitializer
@G__0x4bf5b7 = global %G__0x4bf5b7_type zeroinitializer
@G__0x4bf5d5 = global %G__0x4bf5d5_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_41e380.gop_pyramid(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @create_pyramid(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i648 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 2, i64* %RAX.i648, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i729 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  %42 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %42, i64* %RCX.i729, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i762 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %44 = add i64 %42, 1236
  %45 = add i64 %10, 26
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %44 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  store i64 %48, i64* %RDX.i762, align 8
  %EAX.i799 = bitcast %union.anon* %40 to i32*
  %49 = add i64 %7, -72
  %50 = add i64 %10, 29
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i32*
  store i32 2, i32* %51, align 4
  %EDX.i1006 = bitcast %union.anon* %43 to i32*
  %52 = load i32, i32* %EDX.i1006, align 4
  %53 = zext i32 %52 to i64
  %54 = load i64, i64* %3, align 8
  store i64 %53, i64* %RAX.i648, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %56 = sext i32 %52 to i64
  %57 = lshr i64 %56, 32
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1009 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -64
  %61 = add i64 %54, 6
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %RSI.i1009, align 8
  %ESI.i1003 = bitcast %union.anon* %58 to i32*
  %65 = add i64 %54, 8
  store i64 %65, i64* %3, align 8
  %66 = sext i32 %63 to i64
  %67 = shl nuw i64 %57, 32
  %68 = or i64 %67, %53
  %69 = sdiv i64 %68, %66
  %70 = shl i64 %69, 32
  %71 = ashr exact i64 %70, 32
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %75, label %73

; <label>:73:                                     ; preds = %entry
  %74 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %65, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre28 = load i32, i32* %EAX.i799, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1004

; <label>:75:                                     ; preds = %entry
  %76 = srem i64 %68, %66
  %77 = and i64 %69, 4294967295
  store i64 %77, i64* %RAX.i648, align 8
  %78 = and i64 %76, 4294967295
  store i64 %78, i64* %RDX.i762, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %79 = trunc i64 %69 to i32
  br label %routine_idivl__esi.exit1004

routine_idivl__esi.exit1004:                      ; preds = %75, %73
  %80 = phi i64 [ %.pre29, %73 ], [ %65, %75 ]
  %81 = phi i32 [ %.pre28, %73 ], [ %79, %75 ]
  %82 = phi i64 [ %.pre, %73 ], [ %59, %75 ]
  %83 = phi %struct.Memory* [ %74, %73 ], [ %2, %75 ]
  %84 = add i64 %82, -12
  %85 = add i64 %80, 3
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i32*
  store i32 %81, i32* %86, align 4
  %87 = load i64, i64* %3, align 8
  %88 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %88, i64* %RCX.i729, align 8
  %89 = add i64 %88, 1320
  %90 = add i64 %87, 15
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, -1
  %94 = icmp eq i32 %92, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %14, align 1
  %96 = and i32 %93, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96)
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %21, align 1
  %101 = xor i32 %93, %92
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %27, align 1
  %105 = icmp eq i32 %93, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %30, align 1
  %107 = lshr i32 %93, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %33, align 1
  %109 = lshr i32 %92, 31
  %110 = xor i32 %107, %109
  %111 = add nuw nsw i32 %110, %109
  %112 = icmp eq i32 %111, 2
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %39, align 1
  %.v52 = select i1 %105, i64 21, i64 308
  %114 = add i64 %87, %.v52
  store i64 %114, i64* %3, align 8
  %115 = load i64, i64* %RBP.i, align 8
  br i1 %105, label %block_41dd2e, label %block_.L_41de4d

block_41dd2e:                                     ; preds = %routine_idivl__esi.exit1004
  %116 = add i64 %115, -4
  %117 = add i64 %114, 7
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  store i32 0, i32* %118, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_41dd35

block_.L_41dd35:                                  ; preds = %block_.L_41de35, %block_41dd2e
  %119 = phi i64 [ %532, %block_.L_41de35 ], [ %.pre30, %block_41dd2e ]
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -4
  %122 = add i64 %119, 3
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %121 to i32*
  %124 = load i32, i32* %123, align 4
  %125 = zext i32 %124 to i64
  store i64 %125, i64* %RAX.i648, align 8
  %126 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %126, i64* %RCX.i729, align 8
  %127 = add i64 %126, 1236
  %128 = add i64 %119, 17
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = sub i32 %124, %130
  %132 = icmp ult i32 %124, %130
  %133 = zext i1 %132 to i8
  store i8 %133, i8* %14, align 1
  %134 = and i32 %131, 255
  %135 = tail call i32 @llvm.ctpop.i32(i32 %134)
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  store i8 %138, i8* %21, align 1
  %139 = xor i32 %130, %124
  %140 = xor i32 %139, %131
  %141 = lshr i32 %140, 4
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 1
  store i8 %143, i8* %27, align 1
  %144 = icmp eq i32 %131, 0
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %30, align 1
  %146 = lshr i32 %131, 31
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %33, align 1
  %148 = lshr i32 %124, 31
  %149 = lshr i32 %130, 31
  %150 = xor i32 %149, %148
  %151 = xor i32 %146, %148
  %152 = add nuw nsw i32 %151, %150
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %39, align 1
  %155 = icmp ne i8 %147, 0
  %156 = xor i1 %155, %153
  %.v61 = select i1 %156, i64 23, i64 275
  %157 = add i64 %119, %.v61
  store i64 %157, i64* %3, align 8
  br i1 %156, label %block_41dd4c, label %block_.L_41de48

block_41dd4c:                                     ; preds = %block_.L_41dd35
  %158 = add i64 %157, 3
  store i64 %158, i64* %3, align 8
  %159 = load i32, i32* %123, align 4
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %RAX.i648, align 8
  %161 = add i64 %120, -12
  %162 = add i64 %157, 6
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = sub i32 %159, %164
  %166 = icmp ult i32 %159, %164
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %14, align 1
  %168 = and i32 %165, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168)
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %21, align 1
  %173 = xor i32 %164, %159
  %174 = xor i32 %173, %165
  %175 = lshr i32 %174, 4
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  store i8 %177, i8* %27, align 1
  %178 = icmp eq i32 %165, 0
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %30, align 1
  %180 = lshr i32 %165, 31
  %181 = trunc i32 %180 to i8
  store i8 %181, i8* %33, align 1
  %182 = lshr i32 %159, 31
  %183 = lshr i32 %164, 31
  %184 = xor i32 %183, %182
  %185 = xor i32 %180, %182
  %186 = add nuw nsw i32 %185, %184
  %187 = icmp eq i32 %186, 2
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %39, align 1
  %189 = icmp ne i8 %181, 0
  %190 = xor i1 %189, %187
  %.v62 = select i1 %190, i64 12, i64 125
  %191 = add i64 %157, %.v62
  %192 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %192, i64* %RAX.i648, align 8
  %193 = add i64 %191, 12
  store i64 %193, i64* %3, align 8
  %194 = load i32, i32* %123, align 4
  %195 = sext i32 %194 to i64
  %196 = mul nsw i64 %195, 24
  store i64 %196, i64* %RCX.i729, align 8
  %197 = lshr i64 %196, 63
  %198 = add i64 %196, %192
  store i64 %198, i64* %RAX.i648, align 8
  %199 = icmp ult i64 %198, %192
  %200 = icmp ult i64 %198, %196
  %201 = or i1 %199, %200
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %14, align 1
  %203 = trunc i64 %198 to i32
  %204 = and i32 %203, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204)
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %21, align 1
  %209 = xor i64 %196, %192
  %210 = xor i64 %209, %198
  %211 = lshr i64 %210, 4
  %212 = trunc i64 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %27, align 1
  %214 = icmp eq i64 %198, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %30, align 1
  %216 = lshr i64 %198, 63
  %217 = trunc i64 %216 to i8
  store i8 %217, i8* %33, align 1
  %218 = lshr i64 %192, 63
  %219 = xor i64 %216, %218
  %220 = xor i64 %216, %197
  %221 = add nuw nsw i64 %219, %220
  %222 = icmp eq i64 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %39, align 1
  %224 = inttoptr i64 %198 to i32*
  %225 = add i64 %191, 25
  store i64 %225, i64* %3, align 8
  store i32 1, i32* %224, align 4
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -4
  %228 = load i64, i64* %3, align 8
  %229 = add i64 %228, 3
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %227 to i32*
  %231 = load i32, i32* %230, align 4
  %232 = zext i32 %231 to i64
  store i64 %232, i64* %RDX.i762, align 8
  br i1 %190, label %block_41dd58, label %block_.L_41ddc9

block_41dd58:                                     ; preds = %block_41dd4c
  %233 = shl i32 %231, 1
  %234 = or i32 %233, 1
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RDX.i762, align 8
  store i8 0, i8* %14, align 1
  %236 = and i32 %234, 255
  %237 = tail call i32 @llvm.ctpop.i32(i32 %236)
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  store i8 %240, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %241 = lshr i32 %231, 30
  %242 = and i32 %241, 1
  %243 = trunc i32 %242 to i8
  store i8 %243, i8* %33, align 1
  %244 = lshr i32 %231, 30
  %245 = and i32 %244, 1
  %246 = xor i32 %242, %245
  %247 = add nuw nsw i32 %246, %242
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %39, align 1
  %250 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %250, i64* %RAX.i648, align 8
  %251 = add i64 %228, 20
  store i64 %251, i64* %3, align 8
  %252 = load i32, i32* %230, align 4
  %253 = sext i32 %252 to i64
  %254 = mul nsw i64 %253, 24
  store i64 %254, i64* %RCX.i729, align 8
  %255 = lshr i64 %254, 63
  %256 = add i64 %254, %250
  %257 = icmp ult i64 %256, %250
  %258 = icmp ult i64 %256, %254
  %259 = or i1 %257, %258
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %14, align 1
  %261 = trunc i64 %256 to i32
  %262 = and i32 %261, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %21, align 1
  %267 = xor i64 %254, %250
  %268 = xor i64 %267, %256
  %269 = lshr i64 %268, 4
  %270 = trunc i64 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %27, align 1
  %272 = icmp eq i64 %256, 0
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %30, align 1
  %274 = lshr i64 %256, 63
  %275 = trunc i64 %274 to i8
  store i8 %275, i8* %33, align 1
  %276 = lshr i64 %250, 63
  %277 = xor i64 %274, %276
  %278 = xor i64 %274, %255
  %279 = add nuw nsw i64 %277, %278
  %280 = icmp eq i64 %279, 2
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %39, align 1
  %282 = add i64 %256, 4
  %283 = add i64 %228, 30
  store i64 %283, i64* %3, align 8
  %284 = inttoptr i64 %282 to i32*
  store i32 %234, i32* %284, align 4
  %285 = load i64, i64* %3, align 8
  %286 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %286, i64* %RAX.i648, align 8
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -4
  %289 = add i64 %285, 12
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = mul nsw i64 %292, 24
  store i64 %293, i64* %RCX.i729, align 8
  %294 = lshr i64 %293, 63
  %295 = add i64 %293, %286
  %296 = icmp ult i64 %295, %286
  %297 = icmp ult i64 %295, %293
  %298 = or i1 %296, %297
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %14, align 1
  %300 = trunc i64 %295 to i32
  %301 = and i32 %300, 255
  %302 = tail call i32 @llvm.ctpop.i32(i32 %301)
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  %305 = xor i8 %304, 1
  store i8 %305, i8* %21, align 1
  %306 = xor i64 %293, %286
  %307 = xor i64 %306, %295
  %308 = lshr i64 %307, 4
  %309 = trunc i64 %308 to i8
  %310 = and i8 %309, 1
  store i8 %310, i8* %27, align 1
  %311 = icmp eq i64 %295, 0
  %312 = zext i1 %311 to i8
  store i8 %312, i8* %30, align 1
  %313 = lshr i64 %295, 63
  %314 = trunc i64 %313 to i8
  store i8 %314, i8* %33, align 1
  %315 = lshr i64 %286, 63
  %316 = xor i64 %313, %315
  %317 = xor i64 %313, %294
  %318 = add nuw nsw i64 %316, %317
  %319 = icmp eq i64 %318, 2
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %39, align 1
  %321 = add i64 %295, 16
  %322 = add i64 %285, 26
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  store i32 0, i32* %323, align 4
  %324 = load i64, i64* %3, align 8
  %325 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %325, i64* %RAX.i648, align 8
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -4
  %328 = add i64 %324, 12
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = sext i32 %330 to i64
  %332 = mul nsw i64 %331, 24
  store i64 %332, i64* %RCX.i729, align 8
  %333 = lshr i64 %332, 63
  %334 = add i64 %332, %325
  store i64 %334, i64* %RAX.i648, align 8
  %335 = icmp ult i64 %334, %325
  %336 = icmp ult i64 %334, %332
  %337 = or i1 %335, %336
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %14, align 1
  %339 = trunc i64 %334 to i32
  %340 = and i32 %339, 255
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340)
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %21, align 1
  %345 = xor i64 %332, %325
  %346 = xor i64 %345, %334
  %347 = lshr i64 %346, 4
  %348 = trunc i64 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %27, align 1
  %350 = icmp eq i64 %334, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %30, align 1
  %352 = lshr i64 %334, 63
  %353 = trunc i64 %352 to i8
  store i8 %353, i8* %33, align 1
  %354 = lshr i64 %325, 63
  %355 = xor i64 %352, %354
  %356 = xor i64 %352, %333
  %357 = add nuw nsw i64 %355, %356
  %358 = icmp eq i64 %357, 2
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %39, align 1
  %360 = add i64 %334, 8
  %361 = add i64 %324, 26
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  store i32 2, i32* %362, align 4
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 113
  store i64 %364, i64* %3, align 8
  br label %block_.L_41de35

block_.L_41ddc9:                                  ; preds = %block_41dd4c
  %365 = add i64 %226, -12
  %366 = add i64 %228, 6
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sub i32 %231, %368
  %370 = lshr i32 %369, 31
  %371 = trunc i32 %370 to i8
  %372 = shl i32 %369, 1
  %373 = icmp slt i32 %369, 0
  %374 = icmp slt i32 %372, 0
  %375 = xor i1 %373, %374
  %376 = zext i32 %372 to i64
  store i64 %376, i64* %RDX.i762, align 8
  store i8 %371, i8* %14, align 1
  %377 = and i32 %372, 254
  %378 = tail call i32 @llvm.ctpop.i32(i32 %377)
  %379 = trunc i32 %378 to i8
  %380 = and i8 %379, 1
  %381 = xor i8 %380, 1
  store i8 %381, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %382 = icmp eq i32 %372, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %30, align 1
  %384 = lshr i32 %369, 30
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  store i8 %386, i8* %33, align 1
  %387 = zext i1 %375 to i8
  store i8 %387, i8* %39, align 1
  %388 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %388, i64* %RAX.i648, align 8
  %389 = add i64 %228, 20
  store i64 %389, i64* %3, align 8
  %390 = load i32, i32* %230, align 4
  %391 = sext i32 %390 to i64
  %392 = mul nsw i64 %391, 24
  store i64 %392, i64* %RCX.i729, align 8
  %393 = lshr i64 %392, 63
  %394 = add i64 %392, %388
  %395 = icmp ult i64 %394, %388
  %396 = icmp ult i64 %394, %392
  %397 = or i1 %395, %396
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %14, align 1
  %399 = trunc i64 %394 to i32
  %400 = and i32 %399, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %21, align 1
  %405 = xor i64 %392, %388
  %406 = xor i64 %405, %394
  %407 = lshr i64 %406, 4
  %408 = trunc i64 %407 to i8
  %409 = and i8 %408, 1
  store i8 %409, i8* %27, align 1
  %410 = icmp eq i64 %394, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %30, align 1
  %412 = lshr i64 %394, 63
  %413 = trunc i64 %412 to i8
  store i8 %413, i8* %33, align 1
  %414 = lshr i64 %388, 63
  %415 = xor i64 %412, %414
  %416 = xor i64 %412, %393
  %417 = add nuw nsw i64 %415, %416
  %418 = icmp eq i64 %417, 2
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %39, align 1
  %420 = add i64 %394, 4
  %421 = add i64 %228, 30
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  store i32 %372, i32* %422, align 4
  %423 = load i64, i64* %3, align 8
  %424 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %424, i64* %RAX.i648, align 8
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -4
  %427 = add i64 %423, 12
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  %431 = mul nsw i64 %430, 24
  store i64 %431, i64* %RCX.i729, align 8
  %432 = lshr i64 %431, 63
  %433 = add i64 %431, %424
  %434 = icmp ult i64 %433, %424
  %435 = icmp ult i64 %433, %431
  %436 = or i1 %434, %435
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %14, align 1
  %438 = trunc i64 %433 to i32
  %439 = and i32 %438, 255
  %440 = tail call i32 @llvm.ctpop.i32(i32 %439)
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  %443 = xor i8 %442, 1
  store i8 %443, i8* %21, align 1
  %444 = xor i64 %431, %424
  %445 = xor i64 %444, %433
  %446 = lshr i64 %445, 4
  %447 = trunc i64 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %27, align 1
  %449 = icmp eq i64 %433, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %30, align 1
  %451 = lshr i64 %433, 63
  %452 = trunc i64 %451 to i8
  store i8 %452, i8* %33, align 1
  %453 = lshr i64 %424, 63
  %454 = xor i64 %451, %453
  %455 = xor i64 %451, %432
  %456 = add nuw nsw i64 %454, %455
  %457 = icmp eq i64 %456, 2
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %39, align 1
  %459 = add i64 %433, 16
  %460 = add i64 %423, 26
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  store i32 1, i32* %461, align 4
  %462 = load i64, i64* %3, align 8
  %463 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %463, i64* %RAX.i648, align 8
  %464 = load i64, i64* %RBP.i, align 8
  %465 = add i64 %464, -4
  %466 = add i64 %462, 12
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i32*
  %468 = load i32, i32* %467, align 4
  %469 = sext i32 %468 to i64
  %470 = mul nsw i64 %469, 24
  store i64 %470, i64* %RCX.i729, align 8
  %471 = lshr i64 %470, 63
  %472 = add i64 %470, %463
  store i64 %472, i64* %RAX.i648, align 8
  %473 = icmp ult i64 %472, %463
  %474 = icmp ult i64 %472, %470
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %14, align 1
  %477 = trunc i64 %472 to i32
  %478 = and i32 %477, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %21, align 1
  %483 = xor i64 %470, %463
  %484 = xor i64 %483, %472
  %485 = lshr i64 %484, 4
  %486 = trunc i64 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %27, align 1
  %488 = icmp eq i64 %472, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %30, align 1
  %490 = lshr i64 %472, 63
  %491 = trunc i64 %490 to i8
  store i8 %491, i8* %33, align 1
  %492 = lshr i64 %463, 63
  %493 = xor i64 %490, %492
  %494 = xor i64 %490, %471
  %495 = add nuw nsw i64 %493, %494
  %496 = icmp eq i64 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %39, align 1
  %498 = add i64 %472, 8
  %499 = add i64 %462, 26
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  store i32 0, i32* %500, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_41de35

block_.L_41de35:                                  ; preds = %block_.L_41ddc9, %block_41dd58
  %501 = phi i64 [ %.pre31, %block_.L_41ddc9 ], [ %364, %block_41dd58 ]
  %502 = load i64, i64* %RBP.i, align 8
  %503 = add i64 %502, -4
  %504 = add i64 %501, 8
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = add i32 %506, 1
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RAX.i648, align 8
  %509 = icmp eq i32 %506, -1
  %510 = icmp eq i32 %507, 0
  %511 = or i1 %509, %510
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %14, align 1
  %513 = and i32 %507, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %21, align 1
  %518 = xor i32 %507, %506
  %519 = lshr i32 %518, 4
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %27, align 1
  %522 = zext i1 %510 to i8
  store i8 %522, i8* %30, align 1
  %523 = lshr i32 %507, 31
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %33, align 1
  %525 = lshr i32 %506, 31
  %526 = xor i32 %523, %525
  %527 = add nuw nsw i32 %526, %523
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  store i8 %529, i8* %39, align 1
  %530 = add i64 %501, 14
  store i64 %530, i64* %3, align 8
  store i32 %507, i32* %505, align 4
  %531 = load i64, i64* %3, align 8
  %532 = add i64 %531, -270
  store i64 %532, i64* %3, align 8
  br label %block_.L_41dd35

block_.L_41de48:                                  ; preds = %block_.L_41dd35
  %533 = add i64 %157, 1324
  br label %block_.L_41e374

block_.L_41de4d:                                  ; preds = %routine_idivl__esi.exit1004
  %534 = add i64 %115, -16
  %535 = add i64 %114, 7
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  store i32 0, i32* %536, align 4
  %537 = load i64, i64* %3, align 8
  %538 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %538, i64* %RAX.i648, align 8
  %539 = add i64 %538, 1236
  %540 = add i64 %537, 14
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = zext i32 %542 to i64
  store i64 %543, i64* %RCX.i729, align 8
  %ECX.i842 = bitcast %union.anon* %41 to i32*
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -20
  %546 = add i64 %537, 17
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  store i32 %542, i32* %547, align 4
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -16
  %550 = load i64, i64* %3, align 8
  %551 = add i64 %550, 3
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %549 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RCX.i729, align 8
  %555 = add i64 %548, -44
  %556 = add i64 %550, 6
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  store i32 %553, i32* %557, align 4
  %558 = load i64, i64* %3, align 8
  %559 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %559, i64* %RAX.i648, align 8
  %560 = add i64 %559, 1236
  %561 = add i64 %558, 14
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RCX.i729, align 8
  %565 = load i64, i64* %RBP.i, align 8
  %566 = add i64 %565, -48
  %567 = add i64 %558, 17
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i32*
  store i32 %563, i32* %568, align 4
  %569 = load i64, i64* %3, align 8
  %570 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %570, i64* %RAX.i648, align 8
  %571 = add i64 %570, 1236
  %572 = add i64 %569, 14
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RCX.i729, align 8
  %576 = load i64, i64* %RBP.i, align 8
  %577 = add i64 %576, -52
  %578 = add i64 %569, 17
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  store i32 %574, i32* %579, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_41de8d

block_.L_41de8d:                                  ; preds = %routine_idivl__ecx.exit797, %block_.L_41de4d
  %580 = phi i64 [ %.pre32, %block_.L_41de4d ], [ %681, %routine_idivl__ecx.exit797 ]
  %MEMORY.2 = phi %struct.Memory* [ %83, %block_.L_41de4d ], [ %646, %routine_idivl__ecx.exit797 ]
  %581 = load i64, i64* %RBP.i, align 8
  %582 = add i64 %581, -20
  %583 = add i64 %580, 4
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = add i32 %585, -2
  %587 = icmp ult i32 %585, 2
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %14, align 1
  %589 = and i32 %586, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %21, align 1
  %594 = xor i32 %586, %585
  %595 = lshr i32 %594, 4
  %596 = trunc i32 %595 to i8
  %597 = and i8 %596, 1
  store i8 %597, i8* %27, align 1
  %598 = icmp eq i32 %586, 0
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %30, align 1
  %600 = lshr i32 %586, 31
  %601 = trunc i32 %600 to i8
  store i8 %601, i8* %33, align 1
  %602 = lshr i32 %585, 31
  %603 = xor i32 %600, %602
  %604 = add nuw nsw i32 %603, %602
  %605 = icmp eq i32 %604, 2
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %39, align 1
  %607 = icmp ne i8 %601, 0
  %608 = xor i1 %607, %605
  %609 = or i1 %598, %608
  %.v53 = select i1 %609, i64 46, i64 10
  %610 = add i64 %580, %.v53
  store i64 %610, i64* %3, align 8
  br i1 %609, label %block_.L_41debb, label %block_41de97

block_41de97:                                     ; preds = %block_.L_41de8d
  store i64 2, i64* %RAX.i648, align 8
  %611 = add i64 %610, 8
  store i64 %611, i64* %3, align 8
  %612 = load i32, i32* %584, align 4
  %613 = zext i32 %612 to i64
  store i64 %613, i64* %RCX.i729, align 8
  %614 = add i64 %581, -68
  %615 = add i64 %610, 11
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  store i32 2, i32* %616, align 4
  %617 = load i32, i32* %ECX.i842, align 4
  %618 = zext i32 %617 to i64
  %619 = load i64, i64* %3, align 8
  store i64 %618, i64* %RAX.i648, align 8
  %620 = sext i32 %617 to i64
  %621 = lshr i64 %620, 32
  store i64 %621, i64* %55, align 8
  %622 = load i64, i64* %RBP.i, align 8
  %623 = add i64 %622, -68
  %624 = add i64 %619, 6
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = zext i32 %626 to i64
  store i64 %627, i64* %RCX.i729, align 8
  %628 = add i64 %619, 8
  store i64 %628, i64* %3, align 8
  %629 = sext i32 %626 to i64
  %630 = shl nuw i64 %621, 32
  %631 = or i64 %630, %618
  %632 = sdiv i64 %631, %629
  %633 = shl i64 %632, 32
  %634 = ashr exact i64 %633, 32
  %635 = icmp eq i64 %632, %634
  br i1 %635, label %638, label %636

; <label>:636:                                    ; preds = %block_41de97
  %637 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %628, %struct.Memory* %MEMORY.2)
  %.pre33 = load i64, i64* %RBP.i, align 8
  %.pre34 = load i32, i32* %EAX.i799, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit797

; <label>:638:                                    ; preds = %block_41de97
  %639 = srem i64 %631, %629
  %640 = and i64 %632, 4294967295
  store i64 %640, i64* %RAX.i648, align 8
  %641 = and i64 %639, 4294967295
  store i64 %641, i64* %RDX.i762, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %642 = trunc i64 %632 to i32
  br label %routine_idivl__ecx.exit797

routine_idivl__ecx.exit797:                       ; preds = %638, %636
  %643 = phi i64 [ %.pre35, %636 ], [ %628, %638 ]
  %644 = phi i32 [ %.pre34, %636 ], [ %642, %638 ]
  %645 = phi i64 [ %.pre33, %636 ], [ %622, %638 ]
  %646 = phi %struct.Memory* [ %637, %636 ], [ %MEMORY.2, %638 ]
  %647 = add i64 %645, -20
  %648 = add i64 %643, 3
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  store i32 %644, i32* %649, align 4
  %650 = load i64, i64* %RBP.i, align 8
  %651 = add i64 %650, -16
  %652 = load i64, i64* %3, align 8
  %653 = add i64 %652, 3
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %651 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = add i32 %655, 1
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RAX.i648, align 8
  %658 = icmp eq i32 %655, -1
  %659 = icmp eq i32 %656, 0
  %660 = or i1 %658, %659
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %14, align 1
  %662 = and i32 %656, 255
  %663 = tail call i32 @llvm.ctpop.i32(i32 %662)
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = xor i8 %665, 1
  store i8 %666, i8* %21, align 1
  %667 = xor i32 %656, %655
  %668 = lshr i32 %667, 4
  %669 = trunc i32 %668 to i8
  %670 = and i8 %669, 1
  store i8 %670, i8* %27, align 1
  %671 = zext i1 %659 to i8
  store i8 %671, i8* %30, align 1
  %672 = lshr i32 %656, 31
  %673 = trunc i32 %672 to i8
  store i8 %673, i8* %33, align 1
  %674 = lshr i32 %655, 31
  %675 = xor i32 %672, %674
  %676 = add nuw nsw i32 %675, %672
  %677 = icmp eq i32 %676, 2
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %39, align 1
  %679 = add i64 %652, 9
  store i64 %679, i64* %3, align 8
  store i32 %656, i32* %654, align 4
  %680 = load i64, i64* %3, align 8
  %681 = add i64 %680, -41
  store i64 %681, i64* %3, align 8
  br label %block_.L_41de8d

block_.L_41debb:                                  ; preds = %block_.L_41de8d
  %682 = add i64 %581, -16
  %683 = add i64 %610, 3
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RAX.i648, align 8
  %687 = add i64 %581, -44
  %688 = add i64 %610, 6
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  store i32 %685, i32* %689, align 4
  %690 = load i64, i64* %RBP.i, align 8
  %691 = add i64 %690, -16
  %692 = load i64, i64* %3, align 8
  %693 = add i64 %692, 3
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %691 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = add i32 %695, 1
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RAX.i648, align 8
  %698 = icmp eq i32 %696, 0
  %699 = zext i1 %698 to i8
  %700 = lshr i32 %696, 31
  %701 = trunc i32 %700 to i8
  %702 = sext i32 %696 to i64
  %703 = shl nsw i64 %702, 2
  store i64 %703, i64* %RCX.i729, align 8
  store i8 %701, i8* %14, align 1
  %704 = trunc i64 %703 to i32
  %705 = and i32 %704, 252
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %699, i8* %30, align 1
  %710 = lshr i64 %702, 61
  %711 = trunc i64 %710 to i8
  %712 = and i8 %711, 1
  store i8 %712, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %RDI.i766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 %703, i64* %RDI.i766, align 8
  %713 = add i64 %692, -118129
  %714 = add i64 %692, 21
  %715 = load i64, i64* %6, align 8
  %716 = add i64 %715, -8
  %717 = inttoptr i64 %716 to i64*
  store i64 %714, i64* %717, align 8
  store i64 %716, i64* %6, align 8
  store i64 %713, i64* %3, align 8
  %718 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %MEMORY.2)
  %719 = load i64, i64* %3, align 8
  store i64 0, i64* %RDX.i762, align 8
  store i64 0, i64* %RCX.i729, align 8
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -32
  %722 = load i64, i64* %RAX.i648, align 8
  %723 = add i64 %719, 8
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %721 to i64*
  store i64 %722, i64* %724, align 8
  %725 = load i64, i64* %RCX.i729, align 8
  %726 = load i64, i64* %RAX.i648, align 8
  %727 = load i64, i64* %3, align 8
  %728 = sub i64 %725, %726
  %729 = icmp ult i64 %725, %726
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %14, align 1
  %731 = trunc i64 %728 to i32
  %732 = and i32 %731, 255
  %733 = tail call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  store i8 %736, i8* %21, align 1
  %737 = xor i64 %726, %725
  %738 = xor i64 %737, %728
  %739 = lshr i64 %738, 4
  %740 = trunc i64 %739 to i8
  %741 = and i8 %740, 1
  store i8 %741, i8* %27, align 1
  %742 = icmp eq i64 %728, 0
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %30, align 1
  %744 = lshr i64 %728, 63
  %745 = trunc i64 %744 to i8
  store i8 %745, i8* %33, align 1
  %746 = lshr i64 %725, 63
  %747 = lshr i64 %726, 63
  %748 = xor i64 %747, %746
  %749 = xor i64 %744, %746
  %750 = add nuw nsw i64 %749, %748
  %751 = icmp eq i64 %750, 2
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %39, align 1
  %.v54 = select i1 %742, i64 9, i64 24
  %753 = add i64 %727, %.v54
  store i64 %753, i64* %3, align 8
  br i1 %742, label %block_41dee7, label %block_.L_41def6

block_41dee7:                                     ; preds = %block_.L_41debb
  store i64 ptrtoint (%G__0x4bf5b7_type* @G__0x4bf5b7 to i64), i64* %RDI.i766, align 8
  %754 = add i64 %753, 242953
  %755 = add i64 %753, 15
  %756 = load i64, i64* %6, align 8
  %757 = add i64 %756, -8
  %758 = inttoptr i64 %757 to i64*
  store i64 %755, i64* %758, align 8
  store i64 %757, i64* %6, align 8
  store i64 %754, i64* %3, align 8
  %call2_41def1 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %754, %struct.Memory* %718)
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_41def6

block_.L_41def6:                                  ; preds = %block_.L_41debb, %block_41dee7
  %759 = phi i64 [ %753, %block_.L_41debb ], [ %.pre36, %block_41dee7 ]
  %MEMORY.3 = phi %struct.Memory* [ %718, %block_.L_41debb ], [ %call2_41def1, %block_41dee7 ]
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -16
  %762 = add i64 %759, 3
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i32*
  %764 = load i32, i32* %763, align 4
  %765 = add i32 %764, 1
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RAX.i648, align 8
  %767 = icmp eq i32 %765, 0
  %768 = zext i1 %767 to i8
  %769 = lshr i32 %765, 31
  %770 = trunc i32 %769 to i8
  %771 = sext i32 %765 to i64
  %772 = shl nsw i64 %771, 2
  store i64 %772, i64* %RCX.i729, align 8
  store i8 %770, i8* %14, align 1
  %773 = trunc i64 %772 to i32
  %774 = and i32 %773, 252
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %768, i8* %30, align 1
  %779 = lshr i64 %771, 61
  %780 = trunc i64 %779 to i8
  %781 = and i8 %780, 1
  store i8 %781, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %772, i64* %RDI.i766, align 8
  %782 = add i64 %759, -118182
  %783 = add i64 %759, 21
  %784 = load i64, i64* %6, align 8
  %785 = add i64 %784, -8
  %786 = inttoptr i64 %785 to i64*
  store i64 %783, i64* %786, align 8
  store i64 %785, i64* %6, align 8
  store i64 %782, i64* %3, align 8
  %787 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %MEMORY.3)
  %788 = load i64, i64* %3, align 8
  store i64 0, i64* %RDX.i762, align 8
  store i64 0, i64* %RCX.i729, align 8
  %789 = load i64, i64* %RBP.i, align 8
  %790 = add i64 %789, -40
  %791 = load i64, i64* %RAX.i648, align 8
  %792 = add i64 %788, 8
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %790 to i64*
  store i64 %791, i64* %793, align 8
  %794 = load i64, i64* %RCX.i729, align 8
  %795 = load i64, i64* %RAX.i648, align 8
  %796 = load i64, i64* %3, align 8
  %797 = sub i64 %794, %795
  %798 = icmp ult i64 %794, %795
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %14, align 1
  %800 = trunc i64 %797 to i32
  %801 = and i32 %800, 255
  %802 = tail call i32 @llvm.ctpop.i32(i32 %801)
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  %805 = xor i8 %804, 1
  store i8 %805, i8* %21, align 1
  %806 = xor i64 %795, %794
  %807 = xor i64 %806, %797
  %808 = lshr i64 %807, 4
  %809 = trunc i64 %808 to i8
  %810 = and i8 %809, 1
  store i8 %810, i8* %27, align 1
  %811 = icmp eq i64 %797, 0
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %30, align 1
  %813 = lshr i64 %797, 63
  %814 = trunc i64 %813 to i8
  store i8 %814, i8* %33, align 1
  %815 = lshr i64 %794, 63
  %816 = lshr i64 %795, 63
  %817 = xor i64 %816, %815
  %818 = xor i64 %813, %815
  %819 = add nuw nsw i64 %818, %817
  %820 = icmp eq i64 %819, 2
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %39, align 1
  %.v55 = select i1 %811, i64 9, i64 24
  %822 = add i64 %796, %.v55
  store i64 %822, i64* %3, align 8
  br i1 %811, label %block_41df1c, label %block_.L_41df2b

block_41df1c:                                     ; preds = %block_.L_41def6
  store i64 ptrtoint (%G__0x4bf5d5_type* @G__0x4bf5d5 to i64), i64* %RDI.i766, align 8
  %823 = add i64 %822, 242900
  %824 = add i64 %822, 15
  %825 = load i64, i64* %6, align 8
  %826 = add i64 %825, -8
  %827 = inttoptr i64 %826 to i64*
  store i64 %824, i64* %827, align 8
  store i64 %826, i64* %6, align 8
  store i64 %823, i64* %3, align 8
  %call2_41df26 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %823, %struct.Memory* %787)
  %.pre37 = load i64, i64* %3, align 8
  br label %block_.L_41df2b

block_.L_41df2b:                                  ; preds = %block_.L_41def6, %block_41df1c
  %828 = phi i64 [ %822, %block_.L_41def6 ], [ %.pre37, %block_41df1c ]
  %MEMORY.4 = phi %struct.Memory* [ %787, %block_.L_41def6 ], [ %call2_41df26, %block_41df1c ]
  %829 = load i64, i64* %RBP.i, align 8
  %830 = add i64 %829, -56
  %831 = add i64 %828, 7
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  store i32 0, i32* %832, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_41df32

block_.L_41df32:                                  ; preds = %block_41df49, %block_.L_41df2b
  %833 = phi i64 [ %976, %block_41df49 ], [ %.pre38, %block_.L_41df2b ]
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -56
  %836 = add i64 %833, 3
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RAX.i648, align 8
  %840 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %840, i64* %RCX.i729, align 8
  %841 = add i64 %840, 1236
  %842 = add i64 %833, 17
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = sub i32 %838, %844
  %846 = icmp ult i32 %838, %844
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %14, align 1
  %848 = and i32 %845, 255
  %849 = tail call i32 @llvm.ctpop.i32(i32 %848)
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  store i8 %852, i8* %21, align 1
  %853 = xor i32 %844, %838
  %854 = xor i32 %853, %845
  %855 = lshr i32 %854, 4
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  store i8 %857, i8* %27, align 1
  %858 = icmp eq i32 %845, 0
  %859 = zext i1 %858 to i8
  store i8 %859, i8* %30, align 1
  %860 = lshr i32 %845, 31
  %861 = trunc i32 %860 to i8
  store i8 %861, i8* %33, align 1
  %862 = lshr i32 %838, 31
  %863 = lshr i32 %844, 31
  %864 = xor i32 %863, %862
  %865 = xor i32 %860, %862
  %866 = add nuw nsw i32 %865, %864
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %39, align 1
  %869 = icmp ne i8 %861, 0
  %870 = xor i1 %869, %867
  %.v56 = select i1 %870, i64 23, i64 88
  %871 = add i64 %833, %.v56
  store i64 %871, i64* %3, align 8
  br i1 %870, label %block_41df49, label %block_.L_41df8a

block_41df49:                                     ; preds = %block_.L_41df32
  %872 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %872, i64* %RAX.i648, align 8
  %873 = add i64 %871, 12
  store i64 %873, i64* %3, align 8
  %874 = load i32, i32* %837, align 4
  %875 = sext i32 %874 to i64
  %876 = mul nsw i64 %875, 24
  store i64 %876, i64* %RCX.i729, align 8
  %877 = lshr i64 %876, 63
  %878 = add i64 %876, %872
  %879 = icmp ult i64 %878, %872
  %880 = icmp ult i64 %878, %876
  %881 = or i1 %879, %880
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %14, align 1
  %883 = trunc i64 %878 to i32
  %884 = and i32 %883, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %21, align 1
  %889 = xor i64 %876, %872
  %890 = xor i64 %889, %878
  %891 = lshr i64 %890, 4
  %892 = trunc i64 %891 to i8
  %893 = and i8 %892, 1
  store i8 %893, i8* %27, align 1
  %894 = icmp eq i64 %878, 0
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %30, align 1
  %896 = lshr i64 %878, 63
  %897 = trunc i64 %896 to i8
  store i8 %897, i8* %33, align 1
  %898 = lshr i64 %872, 63
  %899 = xor i64 %896, %898
  %900 = xor i64 %896, %877
  %901 = add nuw nsw i64 %899, %900
  %902 = icmp eq i64 %901, 2
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %39, align 1
  %904 = add i64 %878, 4
  %905 = add i64 %871, 26
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i32*
  store i32 0, i32* %906, align 4
  %907 = load i64, i64* %3, align 8
  %908 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %908, i64* %RAX.i648, align 8
  %909 = load i64, i64* %RBP.i, align 8
  %910 = add i64 %909, -56
  %911 = add i64 %907, 12
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = sext i32 %913 to i64
  %915 = mul nsw i64 %914, 24
  store i64 %915, i64* %RCX.i729, align 8
  %916 = lshr i64 %915, 63
  %917 = add i64 %915, %908
  store i64 %917, i64* %RAX.i648, align 8
  %918 = icmp ult i64 %917, %908
  %919 = icmp ult i64 %917, %915
  %920 = or i1 %918, %919
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %14, align 1
  %922 = trunc i64 %917 to i32
  %923 = and i32 %922, 255
  %924 = tail call i32 @llvm.ctpop.i32(i32 %923)
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  %927 = xor i8 %926, 1
  store i8 %927, i8* %21, align 1
  %928 = xor i64 %915, %908
  %929 = xor i64 %928, %917
  %930 = lshr i64 %929, 4
  %931 = trunc i64 %930 to i8
  %932 = and i8 %931, 1
  store i8 %932, i8* %27, align 1
  %933 = icmp eq i64 %917, 0
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %30, align 1
  %935 = lshr i64 %917, 63
  %936 = trunc i64 %935 to i8
  store i8 %936, i8* %33, align 1
  %937 = lshr i64 %908, 63
  %938 = xor i64 %935, %937
  %939 = xor i64 %935, %916
  %940 = add nuw nsw i64 %938, %939
  %941 = icmp eq i64 %940, 2
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %39, align 1
  %943 = inttoptr i64 %917 to i32*
  %944 = add i64 %907, 25
  store i64 %944, i64* %3, align 8
  store i32 1, i32* %943, align 4
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -56
  %947 = load i64, i64* %3, align 8
  %948 = add i64 %947, 3
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %946 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = add i32 %950, 1
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RAX.i648, align 8
  %953 = icmp eq i32 %950, -1
  %954 = icmp eq i32 %951, 0
  %955 = or i1 %953, %954
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %14, align 1
  %957 = and i32 %951, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %21, align 1
  %962 = xor i32 %951, %950
  %963 = lshr i32 %962, 4
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  store i8 %965, i8* %27, align 1
  %966 = zext i1 %954 to i8
  store i8 %966, i8* %30, align 1
  %967 = lshr i32 %951, 31
  %968 = trunc i32 %967 to i8
  store i8 %968, i8* %33, align 1
  %969 = lshr i32 %950, 31
  %970 = xor i32 %967, %969
  %971 = add nuw nsw i32 %970, %967
  %972 = icmp eq i32 %971, 2
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %39, align 1
  %974 = add i64 %947, 9
  store i64 %974, i64* %3, align 8
  store i32 %951, i32* %949, align 4
  %975 = load i64, i64* %3, align 8
  %976 = add i64 %975, -83
  store i64 %976, i64* %3, align 8
  br label %block_.L_41df32

block_.L_41df8a:                                  ; preds = %block_.L_41df32
  %977 = add i64 %871, 5
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i620 = bitcast %union.anon* %978 to i32*
  %979 = getelementptr inbounds %union.anon, %union.anon* %978, i64 0, i32 0
  br label %block_.L_41df8f

block_.L_41df8f:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_41df8a
  %980 = phi i64 [ %834, %block_.L_41df8a ], [ %.pre39, %routine_idivl__ecx.exit ]
  %storemerge15 = phi i64 [ %977, %block_.L_41df8a ], [ %1252, %routine_idivl__ecx.exit ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.4, %block_.L_41df8a ], [ %1134, %routine_idivl__ecx.exit ]
  %981 = add i64 %980, -52
  %982 = add i64 %storemerge15, 4
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = add i32 %984, -2
  %986 = icmp ult i32 %984, 2
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %14, align 1
  %988 = and i32 %985, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988)
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %21, align 1
  %993 = xor i32 %985, %984
  %994 = lshr i32 %993, 4
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  store i8 %996, i8* %27, align 1
  %997 = icmp eq i32 %985, 0
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %30, align 1
  %999 = lshr i32 %985, 31
  %1000 = trunc i32 %999 to i8
  store i8 %1000, i8* %33, align 1
  %1001 = lshr i32 %984, 31
  %1002 = xor i32 %999, %1001
  %1003 = add nuw nsw i32 %1002, %1001
  %1004 = icmp eq i32 %1003, 2
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %39, align 1
  %1006 = icmp ne i8 %1000, 0
  %1007 = xor i1 %1006, %1004
  %1008 = or i1 %997, %1007
  %.v57 = select i1 %1008, i64 109, i64 10
  %1009 = add i64 %storemerge15, %.v57
  store i64 2, i64* %RAX.i648, align 8
  %1010 = add i64 %1009, 8
  store i64 %1010, i64* %3, align 8
  %1011 = load i32, i32* %983, align 4
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RCX.i729, align 8
  br i1 %1008, label %block_.L_41dffc, label %block_41df99

block_41df99:                                     ; preds = %block_.L_41df8f
  %1013 = add i64 %980, -72
  %1014 = add i64 %1009, 11
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  store i32 2, i32* %1015, align 4
  %1016 = load i32, i32* %ECX.i842, align 4
  %1017 = zext i32 %1016 to i64
  %1018 = load i64, i64* %3, align 8
  store i64 %1017, i64* %RAX.i648, align 8
  %1019 = sext i32 %1016 to i64
  %1020 = lshr i64 %1019, 32
  store i64 %1020, i64* %55, align 8
  %1021 = load i64, i64* %RBP.i, align 8
  %1022 = add i64 %1021, -72
  %1023 = add i64 %1018, 6
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = zext i32 %1025 to i64
  store i64 %1026, i64* %RCX.i729, align 8
  %1027 = add i64 %1018, 8
  store i64 %1027, i64* %3, align 8
  %1028 = sext i32 %1025 to i64
  %1029 = shl nuw i64 %1020, 32
  %1030 = or i64 %1029, %1017
  %1031 = sdiv i64 %1030, %1028
  %1032 = shl i64 %1031, 32
  %1033 = ashr exact i64 %1032, 32
  %1034 = icmp eq i64 %1031, %1033
  br i1 %1034, label %1037, label %1035

; <label>:1035:                                   ; preds = %block_41df99
  %1036 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1027, %struct.Memory* %MEMORY.6)
  %.pre40 = load i64, i64* %RBP.i, align 8
  %.pre41 = load i32, i32* %EAX.i799, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit646

; <label>:1037:                                   ; preds = %block_41df99
  %1038 = srem i64 %1030, %1028
  %1039 = and i64 %1031, 4294967295
  store i64 %1039, i64* %RAX.i648, align 8
  %1040 = and i64 %1038, 4294967295
  store i64 %1040, i64* %RDX.i762, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1041 = trunc i64 %1031 to i32
  br label %routine_idivl__ecx.exit646

routine_idivl__ecx.exit646:                       ; preds = %1037, %1035
  %1042 = phi i64 [ %.pre42, %1035 ], [ %1027, %1037 ]
  %1043 = phi i32 [ %.pre41, %1035 ], [ %1041, %1037 ]
  %1044 = phi i64 [ %.pre40, %1035 ], [ %1021, %1037 ]
  %1045 = phi %struct.Memory* [ %1036, %1035 ], [ %MEMORY.6, %1037 ]
  %1046 = add i64 %1044, -52
  %1047 = add i64 %1042, 3
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i32*
  store i32 %1043, i32* %1048, align 4
  %1049 = load i64, i64* %RBP.i, align 8
  %1050 = add i64 %1049, -48
  %1051 = load i64, i64* %3, align 8
  %1052 = add i64 %1051, 3
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1050 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RAX.i648, align 8
  %1056 = add i64 %1049, -52
  %1057 = add i64 %1051, 6
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = sub i32 %1054, %1059
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RAX.i648, align 8
  %1062 = icmp ult i32 %1054, %1059
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %14, align 1
  %1064 = and i32 %1060, 255
  %1065 = tail call i32 @llvm.ctpop.i32(i32 %1064)
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  store i8 %1068, i8* %21, align 1
  %1069 = xor i32 %1059, %1054
  %1070 = xor i32 %1069, %1060
  %1071 = lshr i32 %1070, 4
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  store i8 %1073, i8* %27, align 1
  %1074 = icmp eq i32 %1060, 0
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %30, align 1
  %1076 = lshr i32 %1060, 31
  %1077 = trunc i32 %1076 to i8
  store i8 %1077, i8* %33, align 1
  %1078 = lshr i32 %1054, 31
  %1079 = lshr i32 %1059, 31
  %1080 = xor i32 %1079, %1078
  %1081 = xor i32 %1076, %1078
  %1082 = add nuw nsw i32 %1081, %1080
  %1083 = icmp eq i32 %1082, 2
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %39, align 1
  %1085 = add i64 %1049, -32
  %1086 = add i64 %1051, 10
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i64*
  %1088 = load i64, i64* %1087, align 8
  store i64 %1088, i64* %RSI.i1009, align 8
  %1089 = add i64 %1049, -44
  %1090 = add i64 %1051, 14
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = sext i32 %1092 to i64
  store i64 %1093, i64* %RDI.i766, align 8
  %1094 = shl nsw i64 %1093, 2
  %1095 = add i64 %1094, %1088
  %1096 = add i64 %1051, 17
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  store i32 %1060, i32* %1097, align 4
  %1098 = load i64, i64* %RBP.i, align 8
  %1099 = add i64 %1098, -52
  %1100 = load i64, i64* %3, align 8
  %1101 = add i64 %1100, 3
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1099 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RAX.i648, align 8
  %1105 = add i64 %1100, 7
  store i64 %1105, i64* %3, align 8
  %1106 = load i32, i32* %1102, align 4
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %979, align 8
  %1108 = add i64 %1098, -76
  %1109 = add i64 %1100, 10
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  store i32 %1103, i32* %1110, align 4
  %1111 = load i32, i32* %R8D.i620, align 4
  %1112 = zext i32 %1111 to i64
  %1113 = load i64, i64* %3, align 8
  store i64 %1112, i64* %RAX.i648, align 8
  %1114 = sext i32 %1111 to i64
  %1115 = lshr i64 %1114, 32
  store i64 %1115, i64* %55, align 8
  %1116 = load i32, i32* %ECX.i842, align 4
  %1117 = add i64 %1113, 6
  store i64 %1117, i64* %3, align 8
  %1118 = sext i32 %1116 to i64
  %1119 = shl nuw i64 %1115, 32
  %1120 = or i64 %1119, %1112
  %1121 = sdiv i64 %1120, %1118
  %1122 = shl i64 %1121, 32
  %1123 = ashr exact i64 %1122, 32
  %1124 = icmp eq i64 %1121, %1123
  br i1 %1124, label %1127, label %1125

; <label>:1125:                                   ; preds = %routine_idivl__ecx.exit646
  %1126 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1117, %struct.Memory* %1045)
  %.pre43 = load i64, i64* %3, align 8
  %.pre44 = load i32, i32* %EDX.i1006, align 4
  br label %routine_idivl__ecx.exit

; <label>:1127:                                   ; preds = %routine_idivl__ecx.exit646
  %1128 = srem i64 %1120, %1118
  %1129 = and i64 %1121, 4294967295
  store i64 %1129, i64* %RAX.i648, align 8
  %1130 = and i64 %1128, 4294967295
  store i64 %1130, i64* %RDX.i762, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1131 = trunc i64 %1128 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1127, %1125
  %1132 = phi i32 [ %.pre44, %1125 ], [ %1131, %1127 ]
  %1133 = phi i64 [ %.pre43, %1125 ], [ %1117, %1127 ]
  %1134 = phi %struct.Memory* [ %1126, %1125 ], [ %1045, %1127 ]
  %1135 = load i64, i64* %RBP.i, align 8
  %1136 = add i64 %1135, -76
  %1137 = add i64 %1133, 4
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = add i32 %1132, %1139
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %979, align 8
  %1142 = icmp ult i32 %1140, %1139
  %1143 = icmp ult i32 %1140, %1132
  %1144 = or i1 %1142, %1143
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %14, align 1
  %1146 = and i32 %1140, 255
  %1147 = tail call i32 @llvm.ctpop.i32(i32 %1146)
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %21, align 1
  %1151 = xor i32 %1132, %1139
  %1152 = xor i32 %1151, %1140
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %27, align 1
  %1156 = icmp eq i32 %1140, 0
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %30, align 1
  %1158 = lshr i32 %1140, 31
  %1159 = trunc i32 %1158 to i8
  store i8 %1159, i8* %33, align 1
  %1160 = lshr i32 %1139, 31
  %1161 = lshr i32 %1132, 31
  %1162 = xor i32 %1158, %1160
  %1163 = xor i32 %1158, %1161
  %1164 = add nuw nsw i32 %1162, %1163
  %1165 = icmp eq i32 %1164, 2
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %39, align 1
  %1167 = add i64 %1135, -40
  %1168 = add i64 %1133, 11
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i64*
  %1170 = load i64, i64* %1169, align 8
  store i64 %1170, i64* %RSI.i1009, align 8
  %1171 = add i64 %1135, -16
  %1172 = add i64 %1133, 14
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i32*
  %1174 = load i32, i32* %1173, align 4
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RDX.i762, align 8
  %1176 = add i64 %1135, -44
  %1177 = add i64 %1133, 17
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = sub i32 %1174, %1179
  %1181 = zext i32 %1180 to i64
  store i64 %1181, i64* %RDX.i762, align 8
  %1182 = icmp ult i32 %1174, %1179
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %14, align 1
  %1184 = and i32 %1180, 255
  %1185 = tail call i32 @llvm.ctpop.i32(i32 %1184)
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  %1188 = xor i8 %1187, 1
  store i8 %1188, i8* %21, align 1
  %1189 = xor i32 %1179, %1174
  %1190 = xor i32 %1189, %1180
  %1191 = lshr i32 %1190, 4
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  store i8 %1193, i8* %27, align 1
  %1194 = icmp eq i32 %1180, 0
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %30, align 1
  %1196 = lshr i32 %1180, 31
  %1197 = trunc i32 %1196 to i8
  store i8 %1197, i8* %33, align 1
  %1198 = lshr i32 %1174, 31
  %1199 = lshr i32 %1179, 31
  %1200 = xor i32 %1199, %1198
  %1201 = xor i32 %1196, %1198
  %1202 = add nuw nsw i32 %1201, %1200
  %1203 = icmp eq i32 %1202, 2
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %39, align 1
  %1205 = sext i32 %1180 to i64
  store i64 %1205, i64* %RDI.i766, align 8
  %1206 = shl nsw i64 %1205, 2
  %1207 = add i64 %1170, %1206
  %1208 = add i64 %1133, 24
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i32*
  store i32 %1140, i32* %1209, align 4
  %1210 = load i64, i64* %RBP.i, align 8
  %1211 = add i64 %1210, -52
  %1212 = load i64, i64* %3, align 8
  %1213 = add i64 %1212, 3
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1211 to i32*
  %1215 = load i32, i32* %1214, align 4
  %1216 = zext i32 %1215 to i64
  store i64 %1216, i64* %RDX.i762, align 8
  %1217 = add i64 %1210, -48
  %1218 = add i64 %1212, 6
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  store i32 %1215, i32* %1219, align 4
  %1220 = load i64, i64* %RBP.i, align 8
  %1221 = add i64 %1220, -44
  %1222 = load i64, i64* %3, align 8
  %1223 = add i64 %1222, 3
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1221 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = add i32 %1225, -1
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RDX.i762, align 8
  %1228 = icmp ne i32 %1225, 0
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %14, align 1
  %1230 = and i32 %1226, 255
  %1231 = tail call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  store i8 %1234, i8* %21, align 1
  %1235 = xor i32 %1225, 16
  %1236 = xor i32 %1235, %1226
  %1237 = lshr i32 %1236, 4
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  store i8 %1239, i8* %27, align 1
  %1240 = icmp eq i32 %1226, 0
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %30, align 1
  %1242 = lshr i32 %1226, 31
  %1243 = trunc i32 %1242 to i8
  store i8 %1243, i8* %33, align 1
  %1244 = lshr i32 %1225, 31
  %1245 = xor i32 %1242, %1244
  %1246 = xor i32 %1242, 1
  %1247 = add nuw nsw i32 %1245, %1246
  %1248 = icmp eq i32 %1247, 2
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %39, align 1
  %1250 = add i64 %1222, 9
  store i64 %1250, i64* %3, align 8
  store i32 %1226, i32* %1224, align 4
  %1251 = load i64, i64* %3, align 8
  %1252 = add i64 %1251, -104
  %1253 = add i64 %1251, 5
  store i64 %1253, i64* %3, align 8
  %.pre39 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41df8f

block_.L_41dffc:                                  ; preds = %block_.L_41df8f
  %1254 = add i64 %980, -32
  %1255 = add i64 %1009, 12
  store i64 %1255, i64* %3, align 8
  %1256 = inttoptr i64 %1254 to i64*
  %1257 = load i64, i64* %1256, align 8
  store i64 %1257, i64* %RDX.i762, align 8
  %1258 = add i64 %1009, 14
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i32*
  store i32 %1011, i32* %1259, align 4
  %1260 = load i64, i64* %RBP.i, align 8
  %1261 = add i64 %1260, -52
  %1262 = load i64, i64* %3, align 8
  %1263 = add i64 %1262, 3
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1261 to i32*
  %1265 = load i32, i32* %1264, align 4
  %1266 = zext i32 %1265 to i64
  store i64 %1266, i64* %RCX.i729, align 8
  %1267 = add i64 %1262, 6
  store i64 %1267, i64* %3, align 8
  %1268 = load i32, i32* %1264, align 4
  %1269 = zext i32 %1268 to i64
  store i64 %1269, i64* %RSI.i1009, align 8
  %1270 = add i64 %1260, -80
  %1271 = load i32, i32* %EAX.i799, align 4
  %1272 = add i64 %1262, 9
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1270 to i32*
  store i32 %1271, i32* %1273, align 4
  %1274 = load i32, i32* %ESI.i1003, align 4
  %1275 = zext i32 %1274 to i64
  %1276 = load i64, i64* %3, align 8
  store i64 %1275, i64* %RAX.i648, align 8
  %1277 = sext i32 %1274 to i64
  %1278 = lshr i64 %1277, 32
  store i64 %1278, i64* %55, align 8
  %1279 = load i64, i64* %RBP.i, align 8
  %1280 = add i64 %1279, -80
  %1281 = add i64 %1276, 6
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = zext i32 %1283 to i64
  store i64 %1284, i64* %RSI.i1009, align 8
  %1285 = add i64 %1276, 8
  store i64 %1285, i64* %3, align 8
  %1286 = sext i32 %1283 to i64
  %1287 = shl nuw i64 %1278, 32
  %1288 = or i64 %1287, %1275
  %1289 = sdiv i64 %1288, %1286
  %1290 = shl i64 %1289, 32
  %1291 = ashr exact i64 %1290, 32
  %1292 = icmp eq i64 %1289, %1291
  br i1 %1292, label %1295, label %1293

; <label>:1293:                                   ; preds = %block_.L_41dffc
  %1294 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1285, %struct.Memory* %MEMORY.6)
  %.pre45 = load i32, i32* %EDX.i1006, align 4
  %.pre46 = load i64, i64* %3, align 8
  %.pre47 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:1295:                                   ; preds = %block_.L_41dffc
  %1296 = srem i64 %1288, %1286
  %1297 = and i64 %1289, 4294967295
  store i64 %1297, i64* %RAX.i648, align 8
  %1298 = and i64 %1296, 4294967295
  store i64 %1298, i64* %RDX.i762, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1299 = trunc i64 %1296 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %1295, %1293
  %1300 = phi i64 [ %.pre47, %1293 ], [ %1279, %1295 ]
  %1301 = phi i64 [ %.pre46, %1293 ], [ %1285, %1295 ]
  %1302 = phi i32 [ %.pre45, %1293 ], [ %1299, %1295 ]
  %1303 = phi %struct.Memory* [ %1294, %1293 ], [ %MEMORY.6, %1295 ]
  %1304 = load i64, i64* %RCX.i729, align 8
  %1305 = zext i32 %1302 to i64
  %1306 = trunc i64 %1304 to i32
  %1307 = add i32 %1302, %1306
  %1308 = zext i32 %1307 to i64
  store i64 %1308, i64* %RCX.i729, align 8
  %1309 = icmp ult i32 %1307, %1306
  %1310 = icmp ult i32 %1307, %1302
  %1311 = or i1 %1309, %1310
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %14, align 1
  %1313 = and i32 %1307, 255
  %1314 = tail call i32 @llvm.ctpop.i32(i32 %1313)
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  store i8 %1317, i8* %21, align 1
  %1318 = xor i64 %1305, %1304
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
  %1329 = lshr i32 %1302, 31
  %1330 = xor i32 %1326, %1328
  %1331 = xor i32 %1326, %1329
  %1332 = add nuw nsw i32 %1330, %1331
  %1333 = icmp eq i32 %1332, 2
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %39, align 1
  %1335 = add i64 %1300, -40
  %1336 = add i64 %1301, 6
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i64*
  %1338 = load i64, i64* %1337, align 8
  store i64 %1338, i64* %RDI.i766, align 8
  %R8.i533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1339 = add i64 %1300, -16
  %1340 = add i64 %1301, 10
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i32*
  %1342 = load i32, i32* %1341, align 4
  %1343 = sext i32 %1342 to i64
  store i64 %1343, i64* %R8.i533, align 8
  %1344 = shl nsw i64 %1343, 2
  %1345 = add i64 %1344, %1338
  %1346 = add i64 %1301, 14
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  store i32 %1307, i32* %1347, align 4
  %1348 = load i64, i64* %RBP.i, align 8
  %1349 = add i64 %1348, -8
  %1350 = load i64, i64* %3, align 8
  %1351 = add i64 %1350, 7
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1349 to i32*
  store i32 0, i32* %1352, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_41e030

block_.L_41e030:                                  ; preds = %block_41e03f, %routine_idivl__esi.exit
  %1353 = phi i64 [ %1521, %block_41e03f ], [ %.pre48, %routine_idivl__esi.exit ]
  %1354 = load i64, i64* %RBP.i, align 8
  %1355 = add i64 %1354, -8
  %1356 = add i64 %1353, 3
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i32*
  %1358 = load i32, i32* %1357, align 4
  %1359 = zext i32 %1358 to i64
  store i64 %1359, i64* %RAX.i648, align 8
  %1360 = add i64 %1354, -32
  %1361 = add i64 %1353, 7
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i64*
  %1363 = load i64, i64* %1362, align 8
  store i64 %1363, i64* %RCX.i729, align 8
  %1364 = add i64 %1353, 9
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = sub i32 %1358, %1366
  %1368 = icmp ult i32 %1358, %1366
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %14, align 1
  %1370 = and i32 %1367, 255
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  store i8 %1374, i8* %21, align 1
  %1375 = xor i32 %1366, %1358
  %1376 = xor i32 %1375, %1367
  %1377 = lshr i32 %1376, 4
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  store i8 %1379, i8* %27, align 1
  %1380 = icmp eq i32 %1367, 0
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %30, align 1
  %1382 = lshr i32 %1367, 31
  %1383 = trunc i32 %1382 to i8
  store i8 %1383, i8* %33, align 1
  %1384 = lshr i32 %1358, 31
  %1385 = lshr i32 %1366, 31
  %1386 = xor i32 %1385, %1384
  %1387 = xor i32 %1382, %1384
  %1388 = add nuw nsw i32 %1387, %1386
  %1389 = icmp eq i32 %1388, 2
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %39, align 1
  %1391 = icmp ne i8 %1383, 0
  %1392 = xor i1 %1391, %1389
  %.v58 = select i1 %1392, i64 15, i64 72
  %1393 = add i64 %1353, %.v58
  store i64 %1393, i64* %3, align 8
  br i1 %1392, label %block_41e03f, label %block_.L_41e078

block_41e03f:                                     ; preds = %block_.L_41e030
  %1394 = add i64 %1354, -16
  %1395 = add i64 %1393, 3
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = zext i32 %1397 to i64
  store i64 %1398, i64* %RDI.i766, align 8
  %1399 = add i64 %1393, 6
  store i64 %1399, i64* %3, align 8
  %1400 = load i32, i32* %1357, align 4
  %1401 = add i32 %1400, 1
  %1402 = zext i32 %1401 to i64
  store i64 %1402, i64* %RAX.i648, align 8
  %1403 = icmp eq i32 %1400, -1
  %1404 = icmp eq i32 %1401, 0
  %1405 = or i1 %1403, %1404
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %14, align 1
  %1407 = and i32 %1401, 255
  %1408 = tail call i32 @llvm.ctpop.i32(i32 %1407)
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  store i8 %1411, i8* %21, align 1
  %1412 = xor i32 %1401, %1400
  %1413 = lshr i32 %1412, 4
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  store i8 %1415, i8* %27, align 1
  %1416 = zext i1 %1404 to i8
  store i8 %1416, i8* %30, align 1
  %1417 = lshr i32 %1401, 31
  %1418 = trunc i32 %1417 to i8
  store i8 %1418, i8* %33, align 1
  %1419 = lshr i32 %1400, 31
  %1420 = xor i32 %1417, %1419
  %1421 = add nuw nsw i32 %1420, %1417
  %1422 = icmp eq i32 %1421, 2
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %39, align 1
  %1424 = add i64 %1354, -40
  %1425 = add i64 %1393, 13
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to i64*
  %1427 = load i64, i64* %1426, align 8
  store i64 %1427, i64* %RCX.i729, align 8
  %1428 = add i64 %1393, 16
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = mul i32 %1430, %1401
  %1432 = add i32 %1431, -1
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RAX.i648, align 8
  %1434 = icmp eq i32 %1431, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %14, align 1
  %1436 = and i32 %1432, 255
  %1437 = tail call i32 @llvm.ctpop.i32(i32 %1436)
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  store i8 %1440, i8* %21, align 1
  %1441 = xor i32 %1432, %1431
  %1442 = lshr i32 %1441, 4
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  store i8 %1444, i8* %27, align 1
  %1445 = icmp eq i32 %1432, 0
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %30, align 1
  %1447 = lshr i32 %1432, 31
  %1448 = trunc i32 %1447 to i8
  store i8 %1448, i8* %33, align 1
  %1449 = lshr i32 %1431, 31
  %1450 = xor i32 %1447, %1449
  %1451 = add nuw nsw i32 %1450, %1449
  %1452 = icmp eq i32 %1451, 2
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %39, align 1
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -40
  %1456 = add i64 %1393, 23
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i64*
  %1458 = load i64, i64* %1457, align 8
  store i64 %1458, i64* %RCX.i729, align 8
  %1459 = add i64 %1393, 25
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1458 to i32*
  %1461 = load i32, i32* %1460, align 4
  %1462 = add i32 %1461, -1
  %1463 = zext i32 %1462 to i64
  store i64 %1463, i64* %RDX.i762, align 8
  %1464 = icmp eq i32 %1461, 0
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %14, align 1
  %1466 = and i32 %1462, 255
  %1467 = tail call i32 @llvm.ctpop.i32(i32 %1466)
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  %1470 = xor i8 %1469, 1
  store i8 %1470, i8* %21, align 1
  %1471 = xor i32 %1462, %1461
  %1472 = lshr i32 %1471, 4
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  store i8 %1474, i8* %27, align 1
  %1475 = icmp eq i32 %1462, 0
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %30, align 1
  %1477 = lshr i32 %1462, 31
  %1478 = trunc i32 %1477 to i8
  store i8 %1478, i8* %33, align 1
  %1479 = lshr i32 %1461, 31
  %1480 = xor i32 %1477, %1479
  %1481 = add nuw nsw i32 %1480, %1479
  %1482 = icmp eq i32 %1481, 2
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %39, align 1
  %1484 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %1484, i64* %RCX.i729, align 8
  store i64 %1433, i64* %RSI.i1009, align 8
  %1485 = add i64 %1393, 833
  %1486 = add i64 %1393, 43
  %1487 = load i64, i64* %6, align 8
  %1488 = add i64 %1487, -8
  %1489 = inttoptr i64 %1488 to i64*
  store i64 %1486, i64* %1489, align 8
  store i64 %1488, i64* %6, align 8
  store i64 %1485, i64* %3, align 8
  %call2_41e065 = tail call %struct.Memory* @sub_41e380.gop_pyramid(%struct.State* nonnull %0, i64 %1485, %struct.Memory* %1303)
  %1490 = load i64, i64* %RBP.i, align 8
  %1491 = add i64 %1490, -8
  %1492 = load i64, i64* %3, align 8
  %1493 = add i64 %1492, 3
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1491 to i32*
  %1495 = load i32, i32* %1494, align 4
  %1496 = add i32 %1495, 1
  %1497 = zext i32 %1496 to i64
  store i64 %1497, i64* %RAX.i648, align 8
  %1498 = icmp eq i32 %1495, -1
  %1499 = icmp eq i32 %1496, 0
  %1500 = or i1 %1498, %1499
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %14, align 1
  %1502 = and i32 %1496, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %21, align 1
  %1507 = xor i32 %1496, %1495
  %1508 = lshr i32 %1507, 4
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  store i8 %1510, i8* %27, align 1
  %1511 = zext i1 %1499 to i8
  store i8 %1511, i8* %30, align 1
  %1512 = lshr i32 %1496, 31
  %1513 = trunc i32 %1512 to i8
  store i8 %1513, i8* %33, align 1
  %1514 = lshr i32 %1495, 31
  %1515 = xor i32 %1512, %1514
  %1516 = add nuw nsw i32 %1515, %1512
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %39, align 1
  %1519 = add i64 %1492, 9
  store i64 %1519, i64* %3, align 8
  store i32 %1496, i32* %1494, align 4
  %1520 = load i64, i64* %3, align 8
  %1521 = add i64 %1520, -67
  store i64 %1521, i64* %3, align 8
  br label %block_.L_41e030

block_.L_41e078:                                  ; preds = %block_.L_41e030
  %1522 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1522, i64* %RAX.i648, align 8
  %1523 = add i64 %1522, 1236
  %1524 = add i64 %1393, 14
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RCX.i729, align 8
  %1528 = add i64 %1393, 17
  store i64 %1528, i64* %3, align 8
  store i32 %1526, i32* %1357, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_41e089

block_.L_41e089:                                  ; preds = %block_.L_41e35c, %block_.L_41e078
  %1529 = phi i64 [ %2753, %block_.L_41e35c ], [ %.pre49, %block_.L_41e078 ]
  %1530 = load i64, i64* %RBP.i, align 8
  %1531 = add i64 %1530, -8
  %1532 = add i64 %1529, 4
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1531 to i32*
  %1534 = load i32, i32* %1533, align 4
  store i8 0, i8* %14, align 1
  %1535 = and i32 %1534, 255
  %1536 = tail call i32 @llvm.ctpop.i32(i32 %1535)
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  %1539 = xor i8 %1538, 1
  store i8 %1539, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1540 = icmp eq i32 %1534, 0
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %30, align 1
  %1542 = lshr i32 %1534, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1544 = icmp ne i8 %1543, 0
  %1545 = or i1 %1540, %1544
  %.v59 = select i1 %1545, i64 742, i64 10
  %1546 = add i64 %1529, %.v59
  store i64 %1546, i64* %3, align 8
  br i1 %1545, label %block_.L_41e36f, label %block_41e093

block_41e093:                                     ; preds = %block_.L_41e089
  %1547 = add i64 %1530, -56
  %1548 = add i64 %1546, 7
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  store i32 1, i32* %1549, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_41e09a

block_.L_41e09a:                                  ; preds = %block_.L_41e349, %block_41e093
  %1550 = phi i64 [ %2724, %block_.L_41e349 ], [ %.pre50, %block_41e093 ]
  %1551 = load i64, i64* %RBP.i, align 8
  %1552 = add i64 %1551, -56
  %1553 = add i64 %1550, 3
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RAX.i648, align 8
  %1557 = add i64 %1551, -8
  %1558 = add i64 %1550, 6
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  %1560 = load i32, i32* %1559, align 4
  %1561 = sub i32 %1555, %1560
  %1562 = icmp ult i32 %1555, %1560
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %14, align 1
  %1564 = and i32 %1561, 255
  %1565 = tail call i32 @llvm.ctpop.i32(i32 %1564)
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  %1568 = xor i8 %1567, 1
  store i8 %1568, i8* %21, align 1
  %1569 = xor i32 %1560, %1555
  %1570 = xor i32 %1569, %1561
  %1571 = lshr i32 %1570, 4
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  store i8 %1573, i8* %27, align 1
  %1574 = icmp eq i32 %1561, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %30, align 1
  %1576 = lshr i32 %1561, 31
  %1577 = trunc i32 %1576 to i8
  store i8 %1577, i8* %33, align 1
  %1578 = lshr i32 %1555, 31
  %1579 = lshr i32 %1560, 31
  %1580 = xor i32 %1579, %1578
  %1581 = xor i32 %1576, %1578
  %1582 = add nuw nsw i32 %1581, %1580
  %1583 = icmp eq i32 %1582, 2
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %39, align 1
  %1585 = icmp ne i8 %1577, 0
  %1586 = xor i1 %1585, %1583
  %.v = select i1 %1586, i64 12, i64 706
  %1587 = add i64 %1550, %.v
  store i64 %1587, i64* %3, align 8
  br i1 %1586, label %block_41e0a6, label %block_.L_41e35c

block_41e0a6:                                     ; preds = %block_.L_41e09a
  %1588 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %1588, i64* %RAX.i648, align 8
  %1589 = add i64 %1587, 12
  store i64 %1589, i64* %3, align 8
  %1590 = load i32, i32* %1554, align 4
  %1591 = sext i32 %1590 to i64
  %1592 = mul nsw i64 %1591, 24
  store i64 %1592, i64* %RCX.i729, align 8
  %1593 = lshr i64 %1592, 63
  %1594 = add i64 %1592, %1588
  store i64 %1594, i64* %RAX.i648, align 8
  %1595 = icmp ult i64 %1594, %1588
  %1596 = icmp ult i64 %1594, %1592
  %1597 = or i1 %1595, %1596
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %14, align 1
  %1599 = trunc i64 %1594 to i32
  %1600 = and i32 %1599, 255
  %1601 = tail call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  store i8 %1604, i8* %21, align 1
  %1605 = xor i64 %1592, %1588
  %1606 = xor i64 %1605, %1594
  %1607 = lshr i64 %1606, 4
  %1608 = trunc i64 %1607 to i8
  %1609 = and i8 %1608, 1
  store i8 %1609, i8* %27, align 1
  %1610 = icmp eq i64 %1594, 0
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %30, align 1
  %1612 = lshr i64 %1594, 63
  %1613 = trunc i64 %1612 to i8
  store i8 %1613, i8* %33, align 1
  %1614 = lshr i64 %1588, 63
  %1615 = xor i64 %1612, %1614
  %1616 = xor i64 %1612, %1593
  %1617 = add nuw nsw i64 %1615, %1616
  %1618 = icmp eq i64 %1617, 2
  %1619 = zext i1 %1618 to i8
  store i8 %1619, i8* %39, align 1
  %1620 = add i64 %1594, 16
  %1621 = add i64 %1587, 22
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  %1623 = load i32, i32* %1622, align 4
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RDX.i762, align 8
  store i64 %1588, i64* %RAX.i648, align 8
  %1625 = add i64 %1587, 33
  store i64 %1625, i64* %3, align 8
  %1626 = load i32, i32* %1554, align 4
  %1627 = add i32 %1626, -1
  %1628 = zext i32 %1627 to i64
  store i64 %1628, i64* %RSI.i1009, align 8
  %1629 = sext i32 %1627 to i64
  %1630 = mul nsw i64 %1629, 24
  store i64 %1630, i64* %RCX.i729, align 8
  %1631 = lshr i64 %1630, 63
  %1632 = add i64 %1630, %1588
  store i64 %1632, i64* %RAX.i648, align 8
  %1633 = icmp ult i64 %1632, %1588
  %1634 = icmp ult i64 %1632, %1630
  %1635 = or i1 %1633, %1634
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %14, align 1
  %1637 = trunc i64 %1632 to i32
  %1638 = and i32 %1637, 255
  %1639 = tail call i32 @llvm.ctpop.i32(i32 %1638)
  %1640 = trunc i32 %1639 to i8
  %1641 = and i8 %1640, 1
  %1642 = xor i8 %1641, 1
  store i8 %1642, i8* %21, align 1
  %1643 = xor i64 %1630, %1588
  %1644 = xor i64 %1643, %1632
  %1645 = lshr i64 %1644, 4
  %1646 = trunc i64 %1645 to i8
  %1647 = and i8 %1646, 1
  store i8 %1647, i8* %27, align 1
  %1648 = icmp eq i64 %1632, 0
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %30, align 1
  %1650 = lshr i64 %1632, 63
  %1651 = trunc i64 %1650 to i8
  store i8 %1651, i8* %33, align 1
  %1652 = xor i64 %1650, %1614
  %1653 = xor i64 %1650, %1631
  %1654 = add nuw nsw i64 %1652, %1653
  %1655 = icmp eq i64 %1654, 2
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %39, align 1
  %1657 = load i32, i32* %EDX.i1006, align 4
  %1658 = add i64 %1632, 16
  %1659 = add i64 %1587, 49
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i32*
  %1661 = load i32, i32* %1660, align 4
  %1662 = sub i32 %1657, %1661
  %1663 = icmp ult i32 %1657, %1661
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %14, align 1
  %1665 = and i32 %1662, 255
  %1666 = tail call i32 @llvm.ctpop.i32(i32 %1665)
  %1667 = trunc i32 %1666 to i8
  %1668 = and i8 %1667, 1
  %1669 = xor i8 %1668, 1
  store i8 %1669, i8* %21, align 1
  %1670 = xor i32 %1661, %1657
  %1671 = xor i32 %1670, %1662
  %1672 = lshr i32 %1671, 4
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  store i8 %1674, i8* %27, align 1
  %1675 = icmp eq i32 %1662, 0
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %30, align 1
  %1677 = lshr i32 %1662, 31
  %1678 = trunc i32 %1677 to i8
  store i8 %1678, i8* %33, align 1
  %1679 = lshr i32 %1657, 31
  %1680 = lshr i32 %1661, 31
  %1681 = xor i32 %1680, %1679
  %1682 = xor i32 %1677, %1679
  %1683 = add nuw nsw i32 %1682, %1681
  %1684 = icmp eq i32 %1683, 2
  %1685 = zext i1 %1684 to i8
  store i8 %1685, i8* %39, align 1
  %1686 = icmp ne i8 %1678, 0
  %1687 = xor i1 %1686, %1684
  %1688 = or i1 %1675, %1687
  %.v60 = select i1 %1688, i64 675, i64 55
  %1689 = add i64 %1587, %.v60
  store i64 %1689, i64* %3, align 8
  br i1 %1688, label %block_.L_41e349, label %block_41e0dd

block_41e0dd:                                     ; preds = %block_41e0a6
  %1690 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %1690, i64* %RAX.i648, align 8
  %1691 = load i64, i64* %RBP.i, align 8
  %1692 = add i64 %1691, -56
  %1693 = add i64 %1689, 11
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i32*
  %1695 = load i32, i32* %1694, align 4
  %1696 = add i32 %1695, -1
  %1697 = zext i32 %1696 to i64
  store i64 %1697, i64* %RCX.i729, align 8
  %1698 = sext i32 %1696 to i64
  %1699 = mul nsw i64 %1698, 24
  store i64 %1699, i64* %RDX.i762, align 8
  %1700 = lshr i64 %1699, 63
  %1701 = add i64 %1699, %1690
  store i64 %1701, i64* %RAX.i648, align 8
  %1702 = icmp ult i64 %1701, %1690
  %1703 = icmp ult i64 %1701, %1699
  %1704 = or i1 %1702, %1703
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %14, align 1
  %1706 = trunc i64 %1701 to i32
  %1707 = and i32 %1706, 255
  %1708 = tail call i32 @llvm.ctpop.i32(i32 %1707)
  %1709 = trunc i32 %1708 to i8
  %1710 = and i8 %1709, 1
  %1711 = xor i8 %1710, 1
  store i8 %1711, i8* %21, align 1
  %1712 = xor i64 %1699, %1690
  %1713 = xor i64 %1712, %1701
  %1714 = lshr i64 %1713, 4
  %1715 = trunc i64 %1714 to i8
  %1716 = and i8 %1715, 1
  store i8 %1716, i8* %27, align 1
  %1717 = icmp eq i64 %1701, 0
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %30, align 1
  %1719 = lshr i64 %1701, 63
  %1720 = trunc i64 %1719 to i8
  store i8 %1720, i8* %33, align 1
  %1721 = lshr i64 %1690, 63
  %1722 = xor i64 %1719, %1721
  %1723 = xor i64 %1719, %1700
  %1724 = add nuw nsw i64 %1722, %1723
  %1725 = icmp eq i64 %1724, 2
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %39, align 1
  %1727 = add i64 %1701, 4
  %1728 = add i64 %1689, 27
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i32*
  %1730 = load i32, i32* %1729, align 4
  %1731 = zext i32 %1730 to i64
  store i64 %1731, i64* %RCX.i729, align 8
  %1732 = load i64, i64* %RBP.i, align 8
  %1733 = add i64 %1732, -60
  %1734 = add i64 %1689, 30
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i32*
  store i32 %1730, i32* %1735, align 4
  %1736 = load i64, i64* %3, align 8
  %1737 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %1737, i64* %RAX.i648, align 8
  %1738 = load i64, i64* %RBP.i, align 8
  %1739 = add i64 %1738, -56
  %1740 = add i64 %1736, 12
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i32*
  %1742 = load i32, i32* %1741, align 4
  %1743 = sext i32 %1742 to i64
  %1744 = mul nsw i64 %1743, 24
  store i64 %1744, i64* %RDX.i762, align 8
  %1745 = lshr i64 %1744, 63
  %1746 = add i64 %1744, %1737
  store i64 %1746, i64* %RAX.i648, align 8
  %1747 = icmp ult i64 %1746, %1737
  %1748 = icmp ult i64 %1746, %1744
  %1749 = or i1 %1747, %1748
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %14, align 1
  %1751 = trunc i64 %1746 to i32
  %1752 = and i32 %1751, 255
  %1753 = tail call i32 @llvm.ctpop.i32(i32 %1752)
  %1754 = trunc i32 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = xor i8 %1755, 1
  store i8 %1756, i8* %21, align 1
  %1757 = xor i64 %1744, %1737
  %1758 = xor i64 %1757, %1746
  %1759 = lshr i64 %1758, 4
  %1760 = trunc i64 %1759 to i8
  %1761 = and i8 %1760, 1
  store i8 %1761, i8* %27, align 1
  %1762 = icmp eq i64 %1746, 0
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %30, align 1
  %1764 = lshr i64 %1746, 63
  %1765 = trunc i64 %1764 to i8
  store i8 %1765, i8* %33, align 1
  %1766 = lshr i64 %1737, 63
  %1767 = xor i64 %1764, %1766
  %1768 = xor i64 %1764, %1745
  %1769 = add nuw nsw i64 %1767, %1768
  %1770 = icmp eq i64 %1769, 2
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %39, align 1
  %1772 = add i64 %1746, 4
  %1773 = add i64 %1736, 22
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to i32*
  %1775 = load i32, i32* %1774, align 4
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RCX.i729, align 8
  store i64 %1737, i64* %RAX.i648, align 8
  %1777 = add i64 %1736, 33
  store i64 %1777, i64* %3, align 8
  %1778 = load i32, i32* %1741, align 4
  %1779 = add i32 %1778, -1
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RSI.i1009, align 8
  %1781 = sext i32 %1779 to i64
  %1782 = mul nsw i64 %1781, 24
  store i64 %1782, i64* %RDX.i762, align 8
  %1783 = lshr i64 %1782, 63
  %1784 = add i64 %1782, %1737
  store i64 %1784, i64* %RAX.i648, align 8
  %1785 = icmp ult i64 %1784, %1737
  %1786 = icmp ult i64 %1784, %1782
  %1787 = or i1 %1785, %1786
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %14, align 1
  %1789 = trunc i64 %1784 to i32
  %1790 = and i32 %1789, 255
  %1791 = tail call i32 @llvm.ctpop.i32(i32 %1790)
  %1792 = trunc i32 %1791 to i8
  %1793 = and i8 %1792, 1
  %1794 = xor i8 %1793, 1
  store i8 %1794, i8* %21, align 1
  %1795 = xor i64 %1782, %1737
  %1796 = xor i64 %1795, %1784
  %1797 = lshr i64 %1796, 4
  %1798 = trunc i64 %1797 to i8
  %1799 = and i8 %1798, 1
  store i8 %1799, i8* %27, align 1
  %1800 = icmp eq i64 %1784, 0
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %30, align 1
  %1802 = lshr i64 %1784, 63
  %1803 = trunc i64 %1802 to i8
  store i8 %1803, i8* %33, align 1
  %1804 = xor i64 %1802, %1766
  %1805 = xor i64 %1802, %1783
  %1806 = add nuw nsw i64 %1804, %1805
  %1807 = icmp eq i64 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %39, align 1
  %1809 = add i64 %1784, 4
  %1810 = load i32, i32* %ECX.i842, align 4
  %1811 = add i64 %1736, 49
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1809 to i32*
  store i32 %1810, i32* %1812, align 4
  %1813 = load i64, i64* %RBP.i, align 8
  %1814 = add i64 %1813, -60
  %1815 = load i64, i64* %3, align 8
  %1816 = add i64 %1815, 3
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1814 to i32*
  %1818 = load i32, i32* %1817, align 4
  %1819 = zext i32 %1818 to i64
  store i64 %1819, i64* %RCX.i729, align 8
  %1820 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %1820, i64* %RAX.i648, align 8
  %1821 = add i64 %1813, -56
  %1822 = add i64 %1815, 15
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to i32*
  %1824 = load i32, i32* %1823, align 4
  %1825 = sext i32 %1824 to i64
  %1826 = mul nsw i64 %1825, 24
  store i64 %1826, i64* %RDX.i762, align 8
  %1827 = lshr i64 %1826, 63
  %1828 = add i64 %1826, %1820
  %1829 = icmp ult i64 %1828, %1820
  %1830 = icmp ult i64 %1828, %1826
  %1831 = or i1 %1829, %1830
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %14, align 1
  %1833 = trunc i64 %1828 to i32
  %1834 = and i32 %1833, 255
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834)
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %21, align 1
  %1839 = xor i64 %1826, %1820
  %1840 = xor i64 %1839, %1828
  %1841 = lshr i64 %1840, 4
  %1842 = trunc i64 %1841 to i8
  %1843 = and i8 %1842, 1
  store i8 %1843, i8* %27, align 1
  %1844 = icmp eq i64 %1828, 0
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %30, align 1
  %1846 = lshr i64 %1828, 63
  %1847 = trunc i64 %1846 to i8
  store i8 %1847, i8* %33, align 1
  %1848 = lshr i64 %1820, 63
  %1849 = xor i64 %1846, %1848
  %1850 = xor i64 %1846, %1827
  %1851 = add nuw nsw i64 %1849, %1850
  %1852 = icmp eq i64 %1851, 2
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %39, align 1
  %1854 = add i64 %1828, 4
  %1855 = add i64 %1815, 25
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i32*
  store i32 %1818, i32* %1856, align 4
  %1857 = load i64, i64* %3, align 8
  %1858 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %1858, i64* %RAX.i648, align 8
  %1859 = load i64, i64* %RBP.i, align 8
  %1860 = add i64 %1859, -56
  %1861 = add i64 %1857, 11
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i32*
  %1863 = load i32, i32* %1862, align 4
  %1864 = add i32 %1863, -1
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RCX.i729, align 8
  %1866 = sext i32 %1864 to i64
  %1867 = mul nsw i64 %1866, 24
  store i64 %1867, i64* %RDX.i762, align 8
  %1868 = lshr i64 %1867, 63
  %1869 = add i64 %1867, %1858
  store i64 %1869, i64* %RAX.i648, align 8
  %1870 = icmp ult i64 %1869, %1858
  %1871 = icmp ult i64 %1869, %1867
  %1872 = or i1 %1870, %1871
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %14, align 1
  %1874 = trunc i64 %1869 to i32
  %1875 = and i32 %1874, 255
  %1876 = tail call i32 @llvm.ctpop.i32(i32 %1875)
  %1877 = trunc i32 %1876 to i8
  %1878 = and i8 %1877, 1
  %1879 = xor i8 %1878, 1
  store i8 %1879, i8* %21, align 1
  %1880 = xor i64 %1867, %1858
  %1881 = xor i64 %1880, %1869
  %1882 = lshr i64 %1881, 4
  %1883 = trunc i64 %1882 to i8
  %1884 = and i8 %1883, 1
  store i8 %1884, i8* %27, align 1
  %1885 = icmp eq i64 %1869, 0
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %30, align 1
  %1887 = lshr i64 %1869, 63
  %1888 = trunc i64 %1887 to i8
  store i8 %1888, i8* %33, align 1
  %1889 = lshr i64 %1858, 63
  %1890 = xor i64 %1887, %1889
  %1891 = xor i64 %1887, %1868
  %1892 = add nuw nsw i64 %1890, %1891
  %1893 = icmp eq i64 %1892, 2
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %39, align 1
  %1895 = add i64 %1869, 16
  %1896 = add i64 %1857, 27
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1895 to i32*
  %1898 = load i32, i32* %1897, align 4
  %1899 = zext i32 %1898 to i64
  store i64 %1899, i64* %RCX.i729, align 8
  %1900 = load i64, i64* %RBP.i, align 8
  %1901 = add i64 %1900, -60
  %1902 = add i64 %1857, 30
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1901 to i32*
  store i32 %1898, i32* %1903, align 4
  %1904 = load i64, i64* %3, align 8
  %1905 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %1905, i64* %RAX.i648, align 8
  %1906 = load i64, i64* %RBP.i, align 8
  %1907 = add i64 %1906, -56
  %1908 = add i64 %1904, 12
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1907 to i32*
  %1910 = load i32, i32* %1909, align 4
  %1911 = sext i32 %1910 to i64
  %1912 = mul nsw i64 %1911, 24
  store i64 %1912, i64* %RDX.i762, align 8
  %1913 = lshr i64 %1912, 63
  %1914 = add i64 %1912, %1905
  store i64 %1914, i64* %RAX.i648, align 8
  %1915 = icmp ult i64 %1914, %1905
  %1916 = icmp ult i64 %1914, %1912
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
  %1925 = xor i64 %1912, %1905
  %1926 = xor i64 %1925, %1914
  %1927 = lshr i64 %1926, 4
  %1928 = trunc i64 %1927 to i8
  %1929 = and i8 %1928, 1
  store i8 %1929, i8* %27, align 1
  %1930 = icmp eq i64 %1914, 0
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %30, align 1
  %1932 = lshr i64 %1914, 63
  %1933 = trunc i64 %1932 to i8
  store i8 %1933, i8* %33, align 1
  %1934 = lshr i64 %1905, 63
  %1935 = xor i64 %1932, %1934
  %1936 = xor i64 %1932, %1913
  %1937 = add nuw nsw i64 %1935, %1936
  %1938 = icmp eq i64 %1937, 2
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %39, align 1
  %1940 = add i64 %1914, 16
  %1941 = add i64 %1904, 22
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i32*
  %1943 = load i32, i32* %1942, align 4
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RCX.i729, align 8
  store i64 %1905, i64* %RAX.i648, align 8
  %1945 = add i64 %1904, 33
  store i64 %1945, i64* %3, align 8
  %1946 = load i32, i32* %1909, align 4
  %1947 = add i32 %1946, -1
  %1948 = zext i32 %1947 to i64
  store i64 %1948, i64* %RSI.i1009, align 8
  %1949 = sext i32 %1947 to i64
  %1950 = mul nsw i64 %1949, 24
  store i64 %1950, i64* %RDX.i762, align 8
  %1951 = lshr i64 %1950, 63
  %1952 = add i64 %1950, %1905
  store i64 %1952, i64* %RAX.i648, align 8
  %1953 = icmp ult i64 %1952, %1905
  %1954 = icmp ult i64 %1952, %1950
  %1955 = or i1 %1953, %1954
  %1956 = zext i1 %1955 to i8
  store i8 %1956, i8* %14, align 1
  %1957 = trunc i64 %1952 to i32
  %1958 = and i32 %1957, 255
  %1959 = tail call i32 @llvm.ctpop.i32(i32 %1958)
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  %1962 = xor i8 %1961, 1
  store i8 %1962, i8* %21, align 1
  %1963 = xor i64 %1950, %1905
  %1964 = xor i64 %1963, %1952
  %1965 = lshr i64 %1964, 4
  %1966 = trunc i64 %1965 to i8
  %1967 = and i8 %1966, 1
  store i8 %1967, i8* %27, align 1
  %1968 = icmp eq i64 %1952, 0
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %30, align 1
  %1970 = lshr i64 %1952, 63
  %1971 = trunc i64 %1970 to i8
  store i8 %1971, i8* %33, align 1
  %1972 = xor i64 %1970, %1934
  %1973 = xor i64 %1970, %1951
  %1974 = add nuw nsw i64 %1972, %1973
  %1975 = icmp eq i64 %1974, 2
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %39, align 1
  %1977 = add i64 %1952, 16
  %1978 = load i32, i32* %ECX.i842, align 4
  %1979 = add i64 %1904, 49
  store i64 %1979, i64* %3, align 8
  %1980 = inttoptr i64 %1977 to i32*
  store i32 %1978, i32* %1980, align 4
  %1981 = load i64, i64* %RBP.i, align 8
  %1982 = add i64 %1981, -60
  %1983 = load i64, i64* %3, align 8
  %1984 = add i64 %1983, 3
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1982 to i32*
  %1986 = load i32, i32* %1985, align 4
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RCX.i729, align 8
  %1988 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %1988, i64* %RAX.i648, align 8
  %1989 = add i64 %1981, -56
  %1990 = add i64 %1983, 15
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1989 to i32*
  %1992 = load i32, i32* %1991, align 4
  %1993 = sext i32 %1992 to i64
  %1994 = mul nsw i64 %1993, 24
  store i64 %1994, i64* %RDX.i762, align 8
  %1995 = lshr i64 %1994, 63
  %1996 = add i64 %1994, %1988
  %1997 = icmp ult i64 %1996, %1988
  %1998 = icmp ult i64 %1996, %1994
  %1999 = or i1 %1997, %1998
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %14, align 1
  %2001 = trunc i64 %1996 to i32
  %2002 = and i32 %2001, 255
  %2003 = tail call i32 @llvm.ctpop.i32(i32 %2002)
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  %2006 = xor i8 %2005, 1
  store i8 %2006, i8* %21, align 1
  %2007 = xor i64 %1994, %1988
  %2008 = xor i64 %2007, %1996
  %2009 = lshr i64 %2008, 4
  %2010 = trunc i64 %2009 to i8
  %2011 = and i8 %2010, 1
  store i8 %2011, i8* %27, align 1
  %2012 = icmp eq i64 %1996, 0
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %30, align 1
  %2014 = lshr i64 %1996, 63
  %2015 = trunc i64 %2014 to i8
  store i8 %2015, i8* %33, align 1
  %2016 = lshr i64 %1988, 63
  %2017 = xor i64 %2014, %2016
  %2018 = xor i64 %2014, %1995
  %2019 = add nuw nsw i64 %2017, %2018
  %2020 = icmp eq i64 %2019, 2
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %39, align 1
  %2022 = add i64 %1996, 16
  %2023 = add i64 %1983, 25
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i32*
  store i32 %1986, i32* %2024, align 4
  %2025 = load i64, i64* %3, align 8
  %2026 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2026, i64* %RAX.i648, align 8
  %2027 = load i64, i64* %RBP.i, align 8
  %2028 = add i64 %2027, -56
  %2029 = add i64 %2025, 11
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2028 to i32*
  %2031 = load i32, i32* %2030, align 4
  %2032 = add i32 %2031, -1
  %2033 = zext i32 %2032 to i64
  store i64 %2033, i64* %RCX.i729, align 8
  %2034 = sext i32 %2032 to i64
  %2035 = mul nsw i64 %2034, 24
  store i64 %2035, i64* %RDX.i762, align 8
  %2036 = lshr i64 %2035, 63
  %2037 = add i64 %2035, %2026
  store i64 %2037, i64* %RAX.i648, align 8
  %2038 = icmp ult i64 %2037, %2026
  %2039 = icmp ult i64 %2037, %2035
  %2040 = or i1 %2038, %2039
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %14, align 1
  %2042 = trunc i64 %2037 to i32
  %2043 = and i32 %2042, 255
  %2044 = tail call i32 @llvm.ctpop.i32(i32 %2043)
  %2045 = trunc i32 %2044 to i8
  %2046 = and i8 %2045, 1
  %2047 = xor i8 %2046, 1
  store i8 %2047, i8* %21, align 1
  %2048 = xor i64 %2035, %2026
  %2049 = xor i64 %2048, %2037
  %2050 = lshr i64 %2049, 4
  %2051 = trunc i64 %2050 to i8
  %2052 = and i8 %2051, 1
  store i8 %2052, i8* %27, align 1
  %2053 = icmp eq i64 %2037, 0
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %30, align 1
  %2055 = lshr i64 %2037, 63
  %2056 = trunc i64 %2055 to i8
  store i8 %2056, i8* %33, align 1
  %2057 = lshr i64 %2026, 63
  %2058 = xor i64 %2055, %2057
  %2059 = xor i64 %2055, %2036
  %2060 = add nuw nsw i64 %2058, %2059
  %2061 = icmp eq i64 %2060, 2
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %39, align 1
  %2063 = add i64 %2037, 8
  %2064 = add i64 %2025, 27
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i32*
  %2066 = load i32, i32* %2065, align 4
  %2067 = zext i32 %2066 to i64
  store i64 %2067, i64* %RCX.i729, align 8
  %2068 = load i64, i64* %RBP.i, align 8
  %2069 = add i64 %2068, -60
  %2070 = add i64 %2025, 30
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i32*
  store i32 %2066, i32* %2071, align 4
  %2072 = load i64, i64* %3, align 8
  %2073 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2073, i64* %RAX.i648, align 8
  %2074 = load i64, i64* %RBP.i, align 8
  %2075 = add i64 %2074, -56
  %2076 = add i64 %2072, 12
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i32*
  %2078 = load i32, i32* %2077, align 4
  %2079 = sext i32 %2078 to i64
  %2080 = mul nsw i64 %2079, 24
  store i64 %2080, i64* %RDX.i762, align 8
  %2081 = lshr i64 %2080, 63
  %2082 = add i64 %2080, %2073
  store i64 %2082, i64* %RAX.i648, align 8
  %2083 = icmp ult i64 %2082, %2073
  %2084 = icmp ult i64 %2082, %2080
  %2085 = or i1 %2083, %2084
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %14, align 1
  %2087 = trunc i64 %2082 to i32
  %2088 = and i32 %2087, 255
  %2089 = tail call i32 @llvm.ctpop.i32(i32 %2088)
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = xor i8 %2091, 1
  store i8 %2092, i8* %21, align 1
  %2093 = xor i64 %2080, %2073
  %2094 = xor i64 %2093, %2082
  %2095 = lshr i64 %2094, 4
  %2096 = trunc i64 %2095 to i8
  %2097 = and i8 %2096, 1
  store i8 %2097, i8* %27, align 1
  %2098 = icmp eq i64 %2082, 0
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %30, align 1
  %2100 = lshr i64 %2082, 63
  %2101 = trunc i64 %2100 to i8
  store i8 %2101, i8* %33, align 1
  %2102 = lshr i64 %2073, 63
  %2103 = xor i64 %2100, %2102
  %2104 = xor i64 %2100, %2081
  %2105 = add nuw nsw i64 %2103, %2104
  %2106 = icmp eq i64 %2105, 2
  %2107 = zext i1 %2106 to i8
  store i8 %2107, i8* %39, align 1
  %2108 = add i64 %2082, 8
  %2109 = add i64 %2072, 22
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i32*
  %2111 = load i32, i32* %2110, align 4
  %2112 = zext i32 %2111 to i64
  store i64 %2112, i64* %RCX.i729, align 8
  store i64 %2073, i64* %RAX.i648, align 8
  %2113 = add i64 %2072, 33
  store i64 %2113, i64* %3, align 8
  %2114 = load i32, i32* %2077, align 4
  %2115 = add i32 %2114, -1
  %2116 = zext i32 %2115 to i64
  store i64 %2116, i64* %RSI.i1009, align 8
  %2117 = sext i32 %2115 to i64
  %2118 = mul nsw i64 %2117, 24
  store i64 %2118, i64* %RDX.i762, align 8
  %2119 = lshr i64 %2118, 63
  %2120 = add i64 %2118, %2073
  store i64 %2120, i64* %RAX.i648, align 8
  %2121 = icmp ult i64 %2120, %2073
  %2122 = icmp ult i64 %2120, %2118
  %2123 = or i1 %2121, %2122
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %14, align 1
  %2125 = trunc i64 %2120 to i32
  %2126 = and i32 %2125, 255
  %2127 = tail call i32 @llvm.ctpop.i32(i32 %2126)
  %2128 = trunc i32 %2127 to i8
  %2129 = and i8 %2128, 1
  %2130 = xor i8 %2129, 1
  store i8 %2130, i8* %21, align 1
  %2131 = xor i64 %2118, %2073
  %2132 = xor i64 %2131, %2120
  %2133 = lshr i64 %2132, 4
  %2134 = trunc i64 %2133 to i8
  %2135 = and i8 %2134, 1
  store i8 %2135, i8* %27, align 1
  %2136 = icmp eq i64 %2120, 0
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %30, align 1
  %2138 = lshr i64 %2120, 63
  %2139 = trunc i64 %2138 to i8
  store i8 %2139, i8* %33, align 1
  %2140 = xor i64 %2138, %2102
  %2141 = xor i64 %2138, %2119
  %2142 = add nuw nsw i64 %2140, %2141
  %2143 = icmp eq i64 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %39, align 1
  %2145 = add i64 %2120, 8
  %2146 = load i32, i32* %ECX.i842, align 4
  %2147 = add i64 %2072, 49
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2145 to i32*
  store i32 %2146, i32* %2148, align 4
  %2149 = load i64, i64* %RBP.i, align 8
  %2150 = add i64 %2149, -60
  %2151 = load i64, i64* %3, align 8
  %2152 = add i64 %2151, 3
  store i64 %2152, i64* %3, align 8
  %2153 = inttoptr i64 %2150 to i32*
  %2154 = load i32, i32* %2153, align 4
  %2155 = zext i32 %2154 to i64
  store i64 %2155, i64* %RCX.i729, align 8
  %2156 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2156, i64* %RAX.i648, align 8
  %2157 = add i64 %2149, -56
  %2158 = add i64 %2151, 15
  store i64 %2158, i64* %3, align 8
  %2159 = inttoptr i64 %2157 to i32*
  %2160 = load i32, i32* %2159, align 4
  %2161 = sext i32 %2160 to i64
  %2162 = mul nsw i64 %2161, 24
  store i64 %2162, i64* %RDX.i762, align 8
  %2163 = lshr i64 %2162, 63
  %2164 = add i64 %2162, %2156
  %2165 = icmp ult i64 %2164, %2156
  %2166 = icmp ult i64 %2164, %2162
  %2167 = or i1 %2165, %2166
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %14, align 1
  %2169 = trunc i64 %2164 to i32
  %2170 = and i32 %2169, 255
  %2171 = tail call i32 @llvm.ctpop.i32(i32 %2170)
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  %2174 = xor i8 %2173, 1
  store i8 %2174, i8* %21, align 1
  %2175 = xor i64 %2162, %2156
  %2176 = xor i64 %2175, %2164
  %2177 = lshr i64 %2176, 4
  %2178 = trunc i64 %2177 to i8
  %2179 = and i8 %2178, 1
  store i8 %2179, i8* %27, align 1
  %2180 = icmp eq i64 %2164, 0
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %30, align 1
  %2182 = lshr i64 %2164, 63
  %2183 = trunc i64 %2182 to i8
  store i8 %2183, i8* %33, align 1
  %2184 = lshr i64 %2156, 63
  %2185 = xor i64 %2182, %2184
  %2186 = xor i64 %2182, %2163
  %2187 = add nuw nsw i64 %2185, %2186
  %2188 = icmp eq i64 %2187, 2
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %39, align 1
  %2190 = add i64 %2164, 8
  %2191 = add i64 %2151, 25
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  store i32 %2154, i32* %2192, align 4
  %2193 = load i64, i64* %3, align 8
  %2194 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2194, i64* %RAX.i648, align 8
  %2195 = load i64, i64* %RBP.i, align 8
  %2196 = add i64 %2195, -56
  %2197 = add i64 %2193, 11
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i32*
  %2199 = load i32, i32* %2198, align 4
  %2200 = add i32 %2199, -1
  %2201 = zext i32 %2200 to i64
  store i64 %2201, i64* %RCX.i729, align 8
  %2202 = sext i32 %2200 to i64
  %2203 = mul nsw i64 %2202, 24
  store i64 %2203, i64* %RDX.i762, align 8
  %2204 = lshr i64 %2203, 63
  %2205 = add i64 %2203, %2194
  store i64 %2205, i64* %RAX.i648, align 8
  %2206 = icmp ult i64 %2205, %2194
  %2207 = icmp ult i64 %2205, %2203
  %2208 = or i1 %2206, %2207
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %14, align 1
  %2210 = trunc i64 %2205 to i32
  %2211 = and i32 %2210, 255
  %2212 = tail call i32 @llvm.ctpop.i32(i32 %2211)
  %2213 = trunc i32 %2212 to i8
  %2214 = and i8 %2213, 1
  %2215 = xor i8 %2214, 1
  store i8 %2215, i8* %21, align 1
  %2216 = xor i64 %2203, %2194
  %2217 = xor i64 %2216, %2205
  %2218 = lshr i64 %2217, 4
  %2219 = trunc i64 %2218 to i8
  %2220 = and i8 %2219, 1
  store i8 %2220, i8* %27, align 1
  %2221 = icmp eq i64 %2205, 0
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %30, align 1
  %2223 = lshr i64 %2205, 63
  %2224 = trunc i64 %2223 to i8
  store i8 %2224, i8* %33, align 1
  %2225 = lshr i64 %2194, 63
  %2226 = xor i64 %2223, %2225
  %2227 = xor i64 %2223, %2204
  %2228 = add nuw nsw i64 %2226, %2227
  %2229 = icmp eq i64 %2228, 2
  %2230 = zext i1 %2229 to i8
  store i8 %2230, i8* %39, align 1
  %2231 = inttoptr i64 %2205 to i32*
  %2232 = add i64 %2193, 26
  store i64 %2232, i64* %3, align 8
  %2233 = load i32, i32* %2231, align 4
  %2234 = zext i32 %2233 to i64
  store i64 %2234, i64* %RCX.i729, align 8
  %2235 = load i64, i64* %RBP.i, align 8
  %2236 = add i64 %2235, -60
  %2237 = add i64 %2193, 29
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i32*
  store i32 %2233, i32* %2238, align 4
  %2239 = load i64, i64* %3, align 8
  %2240 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2240, i64* %RAX.i648, align 8
  %2241 = load i64, i64* %RBP.i, align 8
  %2242 = add i64 %2241, -56
  %2243 = add i64 %2239, 12
  store i64 %2243, i64* %3, align 8
  %2244 = inttoptr i64 %2242 to i32*
  %2245 = load i32, i32* %2244, align 4
  %2246 = sext i32 %2245 to i64
  %2247 = mul nsw i64 %2246, 24
  store i64 %2247, i64* %RDX.i762, align 8
  %2248 = lshr i64 %2247, 63
  %2249 = add i64 %2247, %2240
  store i64 %2249, i64* %RAX.i648, align 8
  %2250 = icmp ult i64 %2249, %2240
  %2251 = icmp ult i64 %2249, %2247
  %2252 = or i1 %2250, %2251
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %14, align 1
  %2254 = trunc i64 %2249 to i32
  %2255 = and i32 %2254, 255
  %2256 = tail call i32 @llvm.ctpop.i32(i32 %2255)
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  %2259 = xor i8 %2258, 1
  store i8 %2259, i8* %21, align 1
  %2260 = xor i64 %2247, %2240
  %2261 = xor i64 %2260, %2249
  %2262 = lshr i64 %2261, 4
  %2263 = trunc i64 %2262 to i8
  %2264 = and i8 %2263, 1
  store i8 %2264, i8* %27, align 1
  %2265 = icmp eq i64 %2249, 0
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %30, align 1
  %2267 = lshr i64 %2249, 63
  %2268 = trunc i64 %2267 to i8
  store i8 %2268, i8* %33, align 1
  %2269 = lshr i64 %2240, 63
  %2270 = xor i64 %2267, %2269
  %2271 = xor i64 %2267, %2248
  %2272 = add nuw nsw i64 %2270, %2271
  %2273 = icmp eq i64 %2272, 2
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %39, align 1
  %2275 = inttoptr i64 %2249 to i32*
  %2276 = add i64 %2239, 21
  store i64 %2276, i64* %3, align 8
  %2277 = load i32, i32* %2275, align 4
  %2278 = zext i32 %2277 to i64
  store i64 %2278, i64* %RCX.i729, align 8
  store i64 %2240, i64* %RAX.i648, align 8
  %2279 = add i64 %2239, 32
  store i64 %2279, i64* %3, align 8
  %2280 = load i32, i32* %2244, align 4
  %2281 = add i32 %2280, -1
  %2282 = zext i32 %2281 to i64
  store i64 %2282, i64* %RSI.i1009, align 8
  %2283 = sext i32 %2281 to i64
  %2284 = mul nsw i64 %2283, 24
  store i64 %2284, i64* %RDX.i762, align 8
  %2285 = lshr i64 %2284, 63
  %2286 = add i64 %2284, %2240
  store i64 %2286, i64* %RAX.i648, align 8
  %2287 = icmp ult i64 %2286, %2240
  %2288 = icmp ult i64 %2286, %2284
  %2289 = or i1 %2287, %2288
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %14, align 1
  %2291 = trunc i64 %2286 to i32
  %2292 = and i32 %2291, 255
  %2293 = tail call i32 @llvm.ctpop.i32(i32 %2292)
  %2294 = trunc i32 %2293 to i8
  %2295 = and i8 %2294, 1
  %2296 = xor i8 %2295, 1
  store i8 %2296, i8* %21, align 1
  %2297 = xor i64 %2284, %2240
  %2298 = xor i64 %2297, %2286
  %2299 = lshr i64 %2298, 4
  %2300 = trunc i64 %2299 to i8
  %2301 = and i8 %2300, 1
  store i8 %2301, i8* %27, align 1
  %2302 = icmp eq i64 %2286, 0
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %30, align 1
  %2304 = lshr i64 %2286, 63
  %2305 = trunc i64 %2304 to i8
  store i8 %2305, i8* %33, align 1
  %2306 = xor i64 %2304, %2269
  %2307 = xor i64 %2304, %2285
  %2308 = add nuw nsw i64 %2306, %2307
  %2309 = icmp eq i64 %2308, 2
  %2310 = zext i1 %2309 to i8
  store i8 %2310, i8* %39, align 1
  %2311 = inttoptr i64 %2286 to i32*
  %2312 = load i32, i32* %ECX.i842, align 4
  %2313 = add i64 %2239, 47
  store i64 %2313, i64* %3, align 8
  store i32 %2312, i32* %2311, align 4
  %2314 = load i64, i64* %RBP.i, align 8
  %2315 = add i64 %2314, -60
  %2316 = load i64, i64* %3, align 8
  %2317 = add i64 %2316, 3
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2315 to i32*
  %2319 = load i32, i32* %2318, align 4
  %2320 = zext i32 %2319 to i64
  store i64 %2320, i64* %RCX.i729, align 8
  %2321 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2321, i64* %RAX.i648, align 8
  %2322 = add i64 %2314, -56
  %2323 = add i64 %2316, 15
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i32*
  %2325 = load i32, i32* %2324, align 4
  %2326 = sext i32 %2325 to i64
  %2327 = mul nsw i64 %2326, 24
  store i64 %2327, i64* %RDX.i762, align 8
  %2328 = lshr i64 %2327, 63
  %2329 = add i64 %2327, %2321
  %2330 = icmp ult i64 %2329, %2321
  %2331 = icmp ult i64 %2329, %2327
  %2332 = or i1 %2330, %2331
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %14, align 1
  %2334 = trunc i64 %2329 to i32
  %2335 = and i32 %2334, 255
  %2336 = tail call i32 @llvm.ctpop.i32(i32 %2335)
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  %2339 = xor i8 %2338, 1
  store i8 %2339, i8* %21, align 1
  %2340 = xor i64 %2327, %2321
  %2341 = xor i64 %2340, %2329
  %2342 = lshr i64 %2341, 4
  %2343 = trunc i64 %2342 to i8
  %2344 = and i8 %2343, 1
  store i8 %2344, i8* %27, align 1
  %2345 = icmp eq i64 %2329, 0
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %30, align 1
  %2347 = lshr i64 %2329, 63
  %2348 = trunc i64 %2347 to i8
  store i8 %2348, i8* %33, align 1
  %2349 = lshr i64 %2321, 63
  %2350 = xor i64 %2347, %2349
  %2351 = xor i64 %2347, %2328
  %2352 = add nuw nsw i64 %2350, %2351
  %2353 = icmp eq i64 %2352, 2
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %39, align 1
  %2355 = inttoptr i64 %2329 to i32*
  %2356 = add i64 %2316, 24
  store i64 %2356, i64* %3, align 8
  store i32 %2319, i32* %2355, align 4
  %2357 = load i64, i64* %3, align 8
  %2358 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2358, i64* %RAX.i648, align 8
  %2359 = load i64, i64* %RBP.i, align 8
  %2360 = add i64 %2359, -56
  %2361 = add i64 %2357, 11
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i32*
  %2363 = load i32, i32* %2362, align 4
  %2364 = add i32 %2363, -1
  %2365 = zext i32 %2364 to i64
  store i64 %2365, i64* %RCX.i729, align 8
  %2366 = sext i32 %2364 to i64
  %2367 = mul nsw i64 %2366, 24
  store i64 %2367, i64* %RDX.i762, align 8
  %2368 = lshr i64 %2367, 63
  %2369 = add i64 %2367, %2358
  store i64 %2369, i64* %RAX.i648, align 8
  %2370 = icmp ult i64 %2369, %2358
  %2371 = icmp ult i64 %2369, %2367
  %2372 = or i1 %2370, %2371
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %14, align 1
  %2374 = trunc i64 %2369 to i32
  %2375 = and i32 %2374, 255
  %2376 = tail call i32 @llvm.ctpop.i32(i32 %2375)
  %2377 = trunc i32 %2376 to i8
  %2378 = and i8 %2377, 1
  %2379 = xor i8 %2378, 1
  store i8 %2379, i8* %21, align 1
  %2380 = xor i64 %2367, %2358
  %2381 = xor i64 %2380, %2369
  %2382 = lshr i64 %2381, 4
  %2383 = trunc i64 %2382 to i8
  %2384 = and i8 %2383, 1
  store i8 %2384, i8* %27, align 1
  %2385 = icmp eq i64 %2369, 0
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %30, align 1
  %2387 = lshr i64 %2369, 63
  %2388 = trunc i64 %2387 to i8
  store i8 %2388, i8* %33, align 1
  %2389 = lshr i64 %2358, 63
  %2390 = xor i64 %2387, %2389
  %2391 = xor i64 %2387, %2368
  %2392 = add nuw nsw i64 %2390, %2391
  %2393 = icmp eq i64 %2392, 2
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %39, align 1
  %2395 = add i64 %2369, 12
  %2396 = add i64 %2357, 27
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i32*
  %2398 = load i32, i32* %2397, align 4
  %2399 = zext i32 %2398 to i64
  store i64 %2399, i64* %RCX.i729, align 8
  %2400 = load i64, i64* %RBP.i, align 8
  %2401 = add i64 %2400, -60
  %2402 = add i64 %2357, 30
  store i64 %2402, i64* %3, align 8
  %2403 = inttoptr i64 %2401 to i32*
  store i32 %2398, i32* %2403, align 4
  %2404 = load i64, i64* %3, align 8
  %2405 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2405, i64* %RAX.i648, align 8
  %2406 = load i64, i64* %RBP.i, align 8
  %2407 = add i64 %2406, -56
  %2408 = add i64 %2404, 12
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i32*
  %2410 = load i32, i32* %2409, align 4
  %2411 = sext i32 %2410 to i64
  %2412 = mul nsw i64 %2411, 24
  store i64 %2412, i64* %RDX.i762, align 8
  %2413 = lshr i64 %2412, 63
  %2414 = add i64 %2412, %2405
  store i64 %2414, i64* %RAX.i648, align 8
  %2415 = icmp ult i64 %2414, %2405
  %2416 = icmp ult i64 %2414, %2412
  %2417 = or i1 %2415, %2416
  %2418 = zext i1 %2417 to i8
  store i8 %2418, i8* %14, align 1
  %2419 = trunc i64 %2414 to i32
  %2420 = and i32 %2419, 255
  %2421 = tail call i32 @llvm.ctpop.i32(i32 %2420)
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %21, align 1
  %2425 = xor i64 %2412, %2405
  %2426 = xor i64 %2425, %2414
  %2427 = lshr i64 %2426, 4
  %2428 = trunc i64 %2427 to i8
  %2429 = and i8 %2428, 1
  store i8 %2429, i8* %27, align 1
  %2430 = icmp eq i64 %2414, 0
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %30, align 1
  %2432 = lshr i64 %2414, 63
  %2433 = trunc i64 %2432 to i8
  store i8 %2433, i8* %33, align 1
  %2434 = lshr i64 %2405, 63
  %2435 = xor i64 %2432, %2434
  %2436 = xor i64 %2432, %2413
  %2437 = add nuw nsw i64 %2435, %2436
  %2438 = icmp eq i64 %2437, 2
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %39, align 1
  %2440 = add i64 %2414, 12
  %2441 = add i64 %2404, 22
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2440 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = zext i32 %2443 to i64
  store i64 %2444, i64* %RCX.i729, align 8
  store i64 %2405, i64* %RAX.i648, align 8
  %2445 = add i64 %2404, 33
  store i64 %2445, i64* %3, align 8
  %2446 = load i32, i32* %2409, align 4
  %2447 = add i32 %2446, -1
  %2448 = zext i32 %2447 to i64
  store i64 %2448, i64* %RSI.i1009, align 8
  %2449 = sext i32 %2447 to i64
  %2450 = mul nsw i64 %2449, 24
  store i64 %2450, i64* %RDX.i762, align 8
  %2451 = lshr i64 %2450, 63
  %2452 = add i64 %2450, %2405
  store i64 %2452, i64* %RAX.i648, align 8
  %2453 = icmp ult i64 %2452, %2405
  %2454 = icmp ult i64 %2452, %2450
  %2455 = or i1 %2453, %2454
  %2456 = zext i1 %2455 to i8
  store i8 %2456, i8* %14, align 1
  %2457 = trunc i64 %2452 to i32
  %2458 = and i32 %2457, 255
  %2459 = tail call i32 @llvm.ctpop.i32(i32 %2458)
  %2460 = trunc i32 %2459 to i8
  %2461 = and i8 %2460, 1
  %2462 = xor i8 %2461, 1
  store i8 %2462, i8* %21, align 1
  %2463 = xor i64 %2450, %2405
  %2464 = xor i64 %2463, %2452
  %2465 = lshr i64 %2464, 4
  %2466 = trunc i64 %2465 to i8
  %2467 = and i8 %2466, 1
  store i8 %2467, i8* %27, align 1
  %2468 = icmp eq i64 %2452, 0
  %2469 = zext i1 %2468 to i8
  store i8 %2469, i8* %30, align 1
  %2470 = lshr i64 %2452, 63
  %2471 = trunc i64 %2470 to i8
  store i8 %2471, i8* %33, align 1
  %2472 = xor i64 %2470, %2434
  %2473 = xor i64 %2470, %2451
  %2474 = add nuw nsw i64 %2472, %2473
  %2475 = icmp eq i64 %2474, 2
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %39, align 1
  %2477 = add i64 %2452, 12
  %2478 = load i32, i32* %ECX.i842, align 4
  %2479 = add i64 %2404, 49
  store i64 %2479, i64* %3, align 8
  %2480 = inttoptr i64 %2477 to i32*
  store i32 %2478, i32* %2480, align 4
  %2481 = load i64, i64* %RBP.i, align 8
  %2482 = add i64 %2481, -60
  %2483 = load i64, i64* %3, align 8
  %2484 = add i64 %2483, 3
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2482 to i32*
  %2486 = load i32, i32* %2485, align 4
  %2487 = zext i32 %2486 to i64
  store i64 %2487, i64* %RCX.i729, align 8
  %2488 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2488, i64* %RAX.i648, align 8
  %2489 = add i64 %2481, -56
  %2490 = add i64 %2483, 15
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2489 to i32*
  %2492 = load i32, i32* %2491, align 4
  %2493 = sext i32 %2492 to i64
  %2494 = mul nsw i64 %2493, 24
  store i64 %2494, i64* %RDX.i762, align 8
  %2495 = lshr i64 %2494, 63
  %2496 = add i64 %2494, %2488
  %2497 = icmp ult i64 %2496, %2488
  %2498 = icmp ult i64 %2496, %2494
  %2499 = or i1 %2497, %2498
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %14, align 1
  %2501 = trunc i64 %2496 to i32
  %2502 = and i32 %2501, 255
  %2503 = tail call i32 @llvm.ctpop.i32(i32 %2502)
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  %2506 = xor i8 %2505, 1
  store i8 %2506, i8* %21, align 1
  %2507 = xor i64 %2494, %2488
  %2508 = xor i64 %2507, %2496
  %2509 = lshr i64 %2508, 4
  %2510 = trunc i64 %2509 to i8
  %2511 = and i8 %2510, 1
  store i8 %2511, i8* %27, align 1
  %2512 = icmp eq i64 %2496, 0
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %30, align 1
  %2514 = lshr i64 %2496, 63
  %2515 = trunc i64 %2514 to i8
  store i8 %2515, i8* %33, align 1
  %2516 = lshr i64 %2488, 63
  %2517 = xor i64 %2514, %2516
  %2518 = xor i64 %2514, %2495
  %2519 = add nuw nsw i64 %2517, %2518
  %2520 = icmp eq i64 %2519, 2
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %39, align 1
  %2522 = add i64 %2496, 12
  %2523 = add i64 %2483, 25
  store i64 %2523, i64* %3, align 8
  %2524 = inttoptr i64 %2522 to i32*
  store i32 %2486, i32* %2524, align 4
  %2525 = load i64, i64* %3, align 8
  %2526 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2526, i64* %RAX.i648, align 8
  %2527 = load i64, i64* %RBP.i, align 8
  %2528 = add i64 %2527, -56
  %2529 = add i64 %2525, 11
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i32*
  %2531 = load i32, i32* %2530, align 4
  %2532 = add i32 %2531, -1
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RCX.i729, align 8
  %2534 = sext i32 %2532 to i64
  %2535 = mul nsw i64 %2534, 24
  store i64 %2535, i64* %RDX.i762, align 8
  %2536 = lshr i64 %2535, 63
  %2537 = add i64 %2535, %2526
  store i64 %2537, i64* %RAX.i648, align 8
  %2538 = icmp ult i64 %2537, %2526
  %2539 = icmp ult i64 %2537, %2535
  %2540 = or i1 %2538, %2539
  %2541 = zext i1 %2540 to i8
  store i8 %2541, i8* %14, align 1
  %2542 = trunc i64 %2537 to i32
  %2543 = and i32 %2542, 255
  %2544 = tail call i32 @llvm.ctpop.i32(i32 %2543)
  %2545 = trunc i32 %2544 to i8
  %2546 = and i8 %2545, 1
  %2547 = xor i8 %2546, 1
  store i8 %2547, i8* %21, align 1
  %2548 = xor i64 %2535, %2526
  %2549 = xor i64 %2548, %2537
  %2550 = lshr i64 %2549, 4
  %2551 = trunc i64 %2550 to i8
  %2552 = and i8 %2551, 1
  store i8 %2552, i8* %27, align 1
  %2553 = icmp eq i64 %2537, 0
  %2554 = zext i1 %2553 to i8
  store i8 %2554, i8* %30, align 1
  %2555 = lshr i64 %2537, 63
  %2556 = trunc i64 %2555 to i8
  store i8 %2556, i8* %33, align 1
  %2557 = lshr i64 %2526, 63
  %2558 = xor i64 %2555, %2557
  %2559 = xor i64 %2555, %2536
  %2560 = add nuw nsw i64 %2558, %2559
  %2561 = icmp eq i64 %2560, 2
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %39, align 1
  %2563 = add i64 %2537, 20
  %2564 = add i64 %2525, 27
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  %2567 = zext i32 %2566 to i64
  store i64 %2567, i64* %RCX.i729, align 8
  %2568 = load i64, i64* %RBP.i, align 8
  %2569 = add i64 %2568, -60
  %2570 = add i64 %2525, 30
  store i64 %2570, i64* %3, align 8
  %2571 = inttoptr i64 %2569 to i32*
  store i32 %2566, i32* %2571, align 4
  %2572 = load i64, i64* %3, align 8
  %2573 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2573, i64* %RAX.i648, align 8
  %2574 = load i64, i64* %RBP.i, align 8
  %2575 = add i64 %2574, -56
  %2576 = add i64 %2572, 12
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2575 to i32*
  %2578 = load i32, i32* %2577, align 4
  %2579 = sext i32 %2578 to i64
  %2580 = mul nsw i64 %2579, 24
  store i64 %2580, i64* %RDX.i762, align 8
  %2581 = lshr i64 %2580, 63
  %2582 = add i64 %2580, %2573
  store i64 %2582, i64* %RAX.i648, align 8
  %2583 = icmp ult i64 %2582, %2573
  %2584 = icmp ult i64 %2582, %2580
  %2585 = or i1 %2583, %2584
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %14, align 1
  %2587 = trunc i64 %2582 to i32
  %2588 = and i32 %2587, 255
  %2589 = tail call i32 @llvm.ctpop.i32(i32 %2588)
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  %2592 = xor i8 %2591, 1
  store i8 %2592, i8* %21, align 1
  %2593 = xor i64 %2580, %2573
  %2594 = xor i64 %2593, %2582
  %2595 = lshr i64 %2594, 4
  %2596 = trunc i64 %2595 to i8
  %2597 = and i8 %2596, 1
  store i8 %2597, i8* %27, align 1
  %2598 = icmp eq i64 %2582, 0
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %30, align 1
  %2600 = lshr i64 %2582, 63
  %2601 = trunc i64 %2600 to i8
  store i8 %2601, i8* %33, align 1
  %2602 = lshr i64 %2573, 63
  %2603 = xor i64 %2600, %2602
  %2604 = xor i64 %2600, %2581
  %2605 = add nuw nsw i64 %2603, %2604
  %2606 = icmp eq i64 %2605, 2
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %39, align 1
  %2608 = add i64 %2582, 20
  %2609 = add i64 %2572, 22
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to i32*
  %2611 = load i32, i32* %2610, align 4
  %2612 = zext i32 %2611 to i64
  store i64 %2612, i64* %RCX.i729, align 8
  store i64 %2573, i64* %RAX.i648, align 8
  %2613 = add i64 %2572, 33
  store i64 %2613, i64* %3, align 8
  %2614 = load i32, i32* %2577, align 4
  %2615 = add i32 %2614, -1
  %2616 = zext i32 %2615 to i64
  store i64 %2616, i64* %RSI.i1009, align 8
  %2617 = sext i32 %2615 to i64
  %2618 = mul nsw i64 %2617, 24
  store i64 %2618, i64* %RDX.i762, align 8
  %2619 = lshr i64 %2618, 63
  %2620 = add i64 %2618, %2573
  store i64 %2620, i64* %RAX.i648, align 8
  %2621 = icmp ult i64 %2620, %2573
  %2622 = icmp ult i64 %2620, %2618
  %2623 = or i1 %2621, %2622
  %2624 = zext i1 %2623 to i8
  store i8 %2624, i8* %14, align 1
  %2625 = trunc i64 %2620 to i32
  %2626 = and i32 %2625, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %21, align 1
  %2631 = xor i64 %2618, %2573
  %2632 = xor i64 %2631, %2620
  %2633 = lshr i64 %2632, 4
  %2634 = trunc i64 %2633 to i8
  %2635 = and i8 %2634, 1
  store i8 %2635, i8* %27, align 1
  %2636 = icmp eq i64 %2620, 0
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %30, align 1
  %2638 = lshr i64 %2620, 63
  %2639 = trunc i64 %2638 to i8
  store i8 %2639, i8* %33, align 1
  %2640 = xor i64 %2638, %2602
  %2641 = xor i64 %2638, %2619
  %2642 = add nuw nsw i64 %2640, %2641
  %2643 = icmp eq i64 %2642, 2
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %39, align 1
  %2645 = add i64 %2620, 20
  %2646 = load i32, i32* %ECX.i842, align 4
  %2647 = add i64 %2572, 49
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2645 to i32*
  store i32 %2646, i32* %2648, align 4
  %2649 = load i64, i64* %RBP.i, align 8
  %2650 = add i64 %2649, -60
  %2651 = load i64, i64* %3, align 8
  %2652 = add i64 %2651, 3
  store i64 %2652, i64* %3, align 8
  %2653 = inttoptr i64 %2650 to i32*
  %2654 = load i32, i32* %2653, align 4
  %2655 = zext i32 %2654 to i64
  store i64 %2655, i64* %RCX.i729, align 8
  %2656 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %2656, i64* %RAX.i648, align 8
  %2657 = add i64 %2649, -56
  %2658 = add i64 %2651, 15
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to i32*
  %2660 = load i32, i32* %2659, align 4
  %2661 = sext i32 %2660 to i64
  %2662 = mul nsw i64 %2661, 24
  store i64 %2662, i64* %RDX.i762, align 8
  %2663 = lshr i64 %2662, 63
  %2664 = add i64 %2662, %2656
  store i64 %2664, i64* %RAX.i648, align 8
  %2665 = icmp ult i64 %2664, %2656
  %2666 = icmp ult i64 %2664, %2662
  %2667 = or i1 %2665, %2666
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %14, align 1
  %2669 = trunc i64 %2664 to i32
  %2670 = and i32 %2669, 255
  %2671 = tail call i32 @llvm.ctpop.i32(i32 %2670)
  %2672 = trunc i32 %2671 to i8
  %2673 = and i8 %2672, 1
  %2674 = xor i8 %2673, 1
  store i8 %2674, i8* %21, align 1
  %2675 = xor i64 %2662, %2656
  %2676 = xor i64 %2675, %2664
  %2677 = lshr i64 %2676, 4
  %2678 = trunc i64 %2677 to i8
  %2679 = and i8 %2678, 1
  store i8 %2679, i8* %27, align 1
  %2680 = icmp eq i64 %2664, 0
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %30, align 1
  %2682 = lshr i64 %2664, 63
  %2683 = trunc i64 %2682 to i8
  store i8 %2683, i8* %33, align 1
  %2684 = lshr i64 %2656, 63
  %2685 = xor i64 %2682, %2684
  %2686 = xor i64 %2682, %2663
  %2687 = add nuw nsw i64 %2685, %2686
  %2688 = icmp eq i64 %2687, 2
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %39, align 1
  %2690 = add i64 %2664, 20
  %2691 = add i64 %2651, 25
  store i64 %2691, i64* %3, align 8
  %2692 = inttoptr i64 %2690 to i32*
  store i32 %2654, i32* %2692, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_41e349

block_.L_41e349:                                  ; preds = %block_41e0dd, %block_41e0a6
  %2693 = phi i64 [ %.pre51, %block_41e0dd ], [ %1689, %block_41e0a6 ]
  %2694 = load i64, i64* %RBP.i, align 8
  %2695 = add i64 %2694, -56
  %2696 = add i64 %2693, 8
  store i64 %2696, i64* %3, align 8
  %2697 = inttoptr i64 %2695 to i32*
  %2698 = load i32, i32* %2697, align 4
  %2699 = add i32 %2698, 1
  %2700 = zext i32 %2699 to i64
  store i64 %2700, i64* %RAX.i648, align 8
  %2701 = icmp eq i32 %2698, -1
  %2702 = icmp eq i32 %2699, 0
  %2703 = or i1 %2701, %2702
  %2704 = zext i1 %2703 to i8
  store i8 %2704, i8* %14, align 1
  %2705 = and i32 %2699, 255
  %2706 = tail call i32 @llvm.ctpop.i32(i32 %2705)
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  %2709 = xor i8 %2708, 1
  store i8 %2709, i8* %21, align 1
  %2710 = xor i32 %2699, %2698
  %2711 = lshr i32 %2710, 4
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  store i8 %2713, i8* %27, align 1
  %2714 = zext i1 %2702 to i8
  store i8 %2714, i8* %30, align 1
  %2715 = lshr i32 %2699, 31
  %2716 = trunc i32 %2715 to i8
  store i8 %2716, i8* %33, align 1
  %2717 = lshr i32 %2698, 31
  %2718 = xor i32 %2715, %2717
  %2719 = add nuw nsw i32 %2718, %2715
  %2720 = icmp eq i32 %2719, 2
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %39, align 1
  %2722 = add i64 %2693, 14
  store i64 %2722, i64* %3, align 8
  store i32 %2699, i32* %2697, align 4
  %2723 = load i64, i64* %3, align 8
  %2724 = add i64 %2723, -701
  store i64 %2724, i64* %3, align 8
  br label %block_.L_41e09a

block_.L_41e35c:                                  ; preds = %block_.L_41e09a
  %2725 = add i64 %1587, 8
  store i64 %2725, i64* %3, align 8
  %2726 = load i32, i32* %1559, align 4
  %2727 = add i32 %2726, -1
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %RAX.i648, align 8
  %2729 = icmp ne i32 %2726, 0
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %14, align 1
  %2731 = and i32 %2727, 255
  %2732 = tail call i32 @llvm.ctpop.i32(i32 %2731)
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  %2735 = xor i8 %2734, 1
  store i8 %2735, i8* %21, align 1
  %2736 = xor i32 %2726, 16
  %2737 = xor i32 %2736, %2727
  %2738 = lshr i32 %2737, 4
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  store i8 %2740, i8* %27, align 1
  %2741 = icmp eq i32 %2727, 0
  %2742 = zext i1 %2741 to i8
  store i8 %2742, i8* %30, align 1
  %2743 = lshr i32 %2727, 31
  %2744 = trunc i32 %2743 to i8
  store i8 %2744, i8* %33, align 1
  %2745 = lshr i32 %2726, 31
  %2746 = xor i32 %2743, %2745
  %2747 = xor i32 %2743, 1
  %2748 = add nuw nsw i32 %2746, %2747
  %2749 = icmp eq i32 %2748, 2
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %39, align 1
  %2751 = add i64 %1587, 14
  store i64 %2751, i64* %3, align 8
  store i32 %2727, i32* %1559, align 4
  %2752 = load i64, i64* %3, align 8
  %2753 = add i64 %2752, -737
  store i64 %2753, i64* %3, align 8
  br label %block_.L_41e089

block_.L_41e36f:                                  ; preds = %block_.L_41e089
  %2754 = add i64 %1546, 5
  store i64 %2754, i64* %3, align 8
  br label %block_.L_41e374

block_.L_41e374:                                  ; preds = %block_.L_41e36f, %block_.L_41de48
  %storemerge = phi i64 [ %533, %block_.L_41de48 ], [ %2754, %block_.L_41e36f ]
  %MEMORY.11 = phi %struct.Memory* [ %83, %block_.L_41de48 ], [ %1303, %block_.L_41e36f ]
  %2755 = load i64, i64* %6, align 8
  %2756 = add i64 %2755, 80
  store i64 %2756, i64* %6, align 8
  %2757 = icmp ugt i64 %2755, -81
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %14, align 1
  %2759 = trunc i64 %2756 to i32
  %2760 = and i32 %2759, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %21, align 1
  %2765 = xor i64 %2755, 16
  %2766 = xor i64 %2765, %2756
  %2767 = lshr i64 %2766, 4
  %2768 = trunc i64 %2767 to i8
  %2769 = and i8 %2768, 1
  store i8 %2769, i8* %27, align 1
  %2770 = icmp eq i64 %2756, 0
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %30, align 1
  %2772 = lshr i64 %2756, 63
  %2773 = trunc i64 %2772 to i8
  store i8 %2773, i8* %33, align 1
  %2774 = lshr i64 %2755, 63
  %2775 = xor i64 %2772, %2774
  %2776 = add nuw nsw i64 %2775, %2772
  %2777 = icmp eq i64 %2776, 2
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %39, align 1
  %2779 = add i64 %storemerge, 5
  store i64 %2779, i64* %3, align 8
  %2780 = add i64 %2755, 88
  %2781 = inttoptr i64 %2756 to i64*
  %2782 = load i64, i64* %2781, align 8
  store i64 %2782, i64* %RBP.i, align 8
  store i64 %2780, i64* %6, align 8
  %2783 = add i64 %storemerge, 6
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2780 to i64*
  %2785 = load i64, i64* %2784, align 8
  store i64 %2785, i64* %3, align 8
  %2786 = add i64 %2755, 96
  store i64 %2786, i64* %6, align 8
  ret %struct.Memory* %MEMORY.11
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1236
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
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x528__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_41de4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x4d4__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 1236
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_jge_.L_41de48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_41ddc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6d0278___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 1, i32* %4, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
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
define %struct.Memory* @routine_movl__edx__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__0x2__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41de35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x1__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41de3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41dd35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e374(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1236
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jle_.L_41debb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_jmpq_.L_41de8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41def6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bf5b7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bf5b7_type* @G__0x4bf5b7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41df2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4bf5d5___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4bf5d5_type* @G__0x4bf5d5 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jge_.L_41df8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41df32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41df8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jle_.L_41dffc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rsi__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %6 = load i32, i32* %R8D, align 4
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = add i32 %7, %6
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = icmp ult i32 %10, %6
  %13 = icmp ult i32 %10, %7
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
  %23 = xor i32 %7, %6
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %6, 31
  %36 = lshr i32 %7, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_subl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d____rsi__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R8D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__ecx____rdi__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = bitcast i64* %RCX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41e078(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = shl i64 %3, 32
  %10 = ashr exact i64 %9, 32
  %11 = sext i32 %8 to i64
  %12 = mul nsw i64 %11, %10
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RAX, align 8
  %15 = shl i64 %12, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp ne i64 %16, %12
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %18, i8* %31, align 1
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_0x6d0278___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d0278_type* @G_0x6d0278 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_callq_.gop_pyramid(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41e030(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jle_.L_41e36f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41e35c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x10__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
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
define %struct.Memory* @routine_jle_.L_41e349(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movl__ecx__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e34e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e09a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41e361(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41e089(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
