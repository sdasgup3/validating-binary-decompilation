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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400690.lrand48_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @simulate(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -136
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i238 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 31, i64* %RAX.i238, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i, align 4
  %22 = add i64 %10, 18
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %RSI.i418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RSI.i418, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %3, align 8
  %35 = bitcast [32 x %union.VectorReg]* %30 to double*
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %37 = load i64, i64* %36, align 1
  %38 = inttoptr i64 %32 to i64*
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i559 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = load i64, i64* %RBP.i, align 8
  %41 = add i64 %40, -32
  %42 = load i64, i64* %RDX.i559, align 8
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -44
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 7
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 0, i32* %50, align 4
  %RDI.i586 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* inttoptr (i64 6299764 to i32*), align 4
  %53 = add i32 %52, -1
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RDI.i586, align 8
  %55 = icmp eq i32 %52, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %12, align 1
  %57 = and i32 %53, 255
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57)
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %13, align 1
  %62 = xor i32 %53, %52
  %63 = lshr i32 %62, 4
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %14, align 1
  %66 = icmp eq i32 %53, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %15, align 1
  %68 = lshr i32 %53, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %16, align 1
  %70 = lshr i32 %52, 31
  %71 = xor i32 %68, %70
  %72 = add nuw nsw i32 %71, %70
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %17, align 1
  %EAX.i581 = bitcast %union.anon* %18 to i32*
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -92
  %77 = load i32, i32* %EAX.i581, align 4
  %78 = add i64 %51, 13
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %EDI.i, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %3, align 8
  store i64 %81, i64* %RAX.i238, align 8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %84 = sext i32 %80 to i64
  %85 = lshr i64 %84, 32
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -92
  %88 = add i64 %82, 6
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RDI.i586, align 8
  %92 = add i64 %82, 8
  store i64 %92, i64* %3, align 8
  %93 = bitcast %union.anon* %39 to i32*
  %94 = sext i32 %90 to i64
  %95 = shl nuw i64 %85, 32
  %96 = or i64 %95, %81
  %97 = sdiv i64 %96, %94
  %98 = shl i64 %97, 32
  %99 = ashr exact i64 %98, 32
  %100 = icmp eq i64 %97, %99
  br i1 %100, label %103, label %101

; <label>:101:                                    ; preds = %entry
  %102 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %92, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre24 = load i32, i32* %EAX.i581, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit571

; <label>:103:                                    ; preds = %entry
  %104 = srem i64 %96, %94
  %105 = and i64 %97, 4294967295
  store i64 %105, i64* %RAX.i238, align 8
  %106 = and i64 %104, 4294967295
  store i64 %106, i64* %RDX.i559, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %107 = trunc i64 %97 to i32
  br label %routine_idivl__edi.exit571

routine_idivl__edi.exit571:                       ; preds = %103, %101
  %108 = phi i64 [ %.pre25, %101 ], [ %92, %103 ]
  %109 = phi i32 [ %.pre24, %101 ], [ %107, %103 ]
  %110 = phi i64 [ %.pre, %101 ], [ %86, %103 ]
  %111 = phi %struct.Memory* [ %102, %101 ], [ %2, %103 ]
  %112 = add i64 %110, -60
  %113 = add i64 %108, 3
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  store i32 %109, i32* %114, align 4
  %115 = load i64, i64* %3, align 8
  %116 = load i32, i32* inttoptr (i64 6299764 to i32*), align 4
  %117 = add i32 %116, -1
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX.i238, align 8
  %119 = icmp eq i32 %116, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %12, align 1
  %121 = and i32 %117, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %13, align 1
  %126 = xor i32 %117, %116
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %14, align 1
  %130 = icmp eq i32 %117, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %15, align 1
  %132 = lshr i32 %117, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %16, align 1
  %134 = lshr i32 %116, 31
  %135 = xor i32 %132, %134
  %136 = add nuw nsw i32 %135, %134
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %17, align 1
  %139 = sext i32 %117 to i64
  %140 = lshr i64 %139, 32
  store i64 %140, i64* %83, align 8
  %141 = load i32, i32* %EDI.i, align 4
  %142 = add i64 %115, 13
  store i64 %142, i64* %3, align 8
  %143 = sext i32 %141 to i64
  %144 = shl nuw i64 %140, 32
  %145 = or i64 %144, %118
  %146 = sdiv i64 %145, %143
  %147 = shl i64 %146, 32
  %148 = ashr exact i64 %147, 32
  %149 = icmp eq i64 %146, %148
  br i1 %149, label %152, label %150

; <label>:150:                                    ; preds = %routine_idivl__edi.exit571
  %151 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %142, %struct.Memory* %111)
  %.pre26 = load i32, i32* %93, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit

; <label>:152:                                    ; preds = %routine_idivl__edi.exit571
  %153 = srem i64 %145, %143
  %154 = and i64 %146, 4294967295
  store i64 %154, i64* %RAX.i238, align 8
  %155 = and i64 %153, 4294967295
  store i64 %155, i64* %RDX.i559, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %156 = trunc i64 %153 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %152, %150
  %157 = phi i64 [ %.pre27, %150 ], [ %142, %152 ]
  %158 = phi i32 [ %.pre26, %150 ], [ %156, %152 ]
  %159 = phi %struct.Memory* [ %151, %150 ], [ %111, %152 ]
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -56
  %162 = add i64 %157, 3
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i32*
  store i32 %158, i32* %163, align 4
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -16
  %166 = load i64, i64* %3, align 8
  %167 = add i64 %166, 4
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %165 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %RSI.i418, align 8
  %170 = add i64 %164, -40
  %171 = add i64 %166, 8
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i64*
  store i64 %169, i64* %172, align 8
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -64
  %175 = load i64, i64* %3, align 8
  %176 = add i64 %175, 7
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %174 to i32*
  store i32 0, i32* %177, align 4
  %RCX.i512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %179 = bitcast i64* %178 to double*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %182 = bitcast %union.VectorReg* %181 to double*
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_400c7e

block_.L_400c7e:                                  ; preds = %block_.L_400f4d, %routine_idivl__edi.exit
  %183 = phi i64 [ %.pre28, %routine_idivl__edi.exit ], [ %1573, %block_.L_400f4d ]
  %MEMORY.0 = phi %struct.Memory* [ %159, %routine_idivl__edi.exit ], [ %1482, %block_.L_400f4d ]
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -64
  %186 = add i64 %183, 3
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX.i238, align 8
  %190 = add i64 %184, -4
  %191 = add i64 %183, 6
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = sub i32 %188, %193
  %195 = icmp ult i32 %188, %193
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %12, align 1
  %197 = and i32 %194, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %13, align 1
  %202 = xor i32 %193, %188
  %203 = xor i32 %202, %194
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %14, align 1
  %207 = icmp eq i32 %194, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %15, align 1
  %209 = lshr i32 %194, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %16, align 1
  %211 = lshr i32 %188, 31
  %212 = lshr i32 %193, 31
  %213 = xor i32 %212, %211
  %214 = xor i32 %209, %211
  %215 = add nuw nsw i32 %214, %213
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %17, align 1
  %218 = icmp ne i8 %210, 0
  %219 = xor i1 %218, %216
  %.v54 = select i1 %219, i64 12, i64 762
  %220 = add i64 %183, %.v54
  store i64 %220, i64* %3, align 8
  br i1 %219, label %block_400c8a, label %block_.L_400f78

block_400c8a:                                     ; preds = %block_.L_400c7e
  %221 = add i64 %184, -48
  %222 = add i64 %220, 7
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i32*
  store i32 0, i32* %223, align 4
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -52
  %226 = load i64, i64* %3, align 8
  %227 = add i64 %226, 7
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %225 to i32*
  store i32 0, i32* %228, align 4
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -68
  %231 = load i64, i64* %3, align 8
  %232 = add i64 %231, 7
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %230 to i32*
  store i32 0, i32* %233, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_400c9f

block_.L_400c9f:                                  ; preds = %block_.L_400da2, %block_400c8a
  %234 = phi i64 [ %.pre32, %block_400c8a ], [ %754, %block_.L_400da2 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400c8a ], [ %MEMORY.2, %block_.L_400da2 ]
  %235 = load i64, i64* %RBP.i, align 8
  %236 = add i64 %235, -68
  %237 = add i64 %234, 3
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RAX.i238, align 8
  %241 = add i64 %235, -60
  %242 = add i64 %234, 6
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = sub i32 %239, %244
  %246 = icmp ult i32 %239, %244
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %12, align 1
  %248 = and i32 %245, 255
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %13, align 1
  %253 = xor i32 %244, %239
  %254 = xor i32 %253, %245
  %255 = lshr i32 %254, 4
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  store i8 %257, i8* %14, align 1
  %258 = icmp eq i32 %245, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %15, align 1
  %260 = lshr i32 %245, 31
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %16, align 1
  %262 = lshr i32 %239, 31
  %263 = lshr i32 %244, 31
  %264 = xor i32 %263, %262
  %265 = xor i32 %260, %262
  %266 = add nuw nsw i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %17, align 1
  %269 = icmp ne i8 %261, 0
  %270 = xor i1 %269, %267
  %.v57 = select i1 %270, i64 12, i64 278
  %271 = add i64 %234, %.v57
  store i64 %271, i64* %3, align 8
  br i1 %270, label %block_400cab, label %block_.L_400db5

block_400cab:                                     ; preds = %block_.L_400c9f
  %272 = add i64 %271, -1563
  %273 = add i64 %271, 5
  %274 = load i64, i64* %6, align 8
  %275 = add i64 %274, -8
  %276 = inttoptr i64 %275 to i64*
  store i64 %273, i64* %276, align 8
  store i64 %275, i64* %6, align 8
  store i64 %272, i64* %3, align 8
  %call2_400cab = tail call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* nonnull %0, i64 %272, %struct.Memory* %MEMORY.1)
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -80
  %279 = load i64, i64* %RAX.i238, align 8
  %280 = load i64, i64* %3, align 8
  %281 = add i64 %280, 4
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %278 to i64*
  store i64 %279, i64* %282, align 8
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -72
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 7
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i32*
  store i32 0, i32* %287, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_400cbb

block_.L_400cbb:                                  ; preds = %block_.L_400d5f, %block_400cab
  %288 = phi i64 [ %.pre47, %block_400cab ], [ %724, %block_.L_400d5f ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_400cab, %block_400cab ], [ %605, %block_.L_400d5f ]
  %289 = load i64, i64* %RBP.i, align 8
  %290 = add i64 %289, -72
  %291 = add i64 %288, 4
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = add i32 %293, -31
  %295 = icmp ult i32 %293, 31
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %12, align 1
  %297 = and i32 %294, 255
  %298 = tail call i32 @llvm.ctpop.i32(i32 %297)
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  %301 = xor i8 %300, 1
  store i8 %301, i8* %13, align 1
  %302 = xor i32 %293, 16
  %303 = xor i32 %302, %294
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %14, align 1
  %307 = icmp eq i32 %294, 0
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %15, align 1
  %309 = lshr i32 %294, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %16, align 1
  %311 = lshr i32 %293, 31
  %312 = xor i32 %309, %311
  %313 = add nuw nsw i32 %312, %311
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %17, align 1
  %316 = icmp ne i8 %310, 0
  %317 = xor i1 %316, %314
  %.v = select i1 %317, i64 10, i64 231
  %318 = add i64 %288, %.v
  store i64 %318, i64* %3, align 8
  br i1 %317, label %block_400cc5, label %block_.L_400da2

block_400cc5:                                     ; preds = %block_.L_400cbb
  %319 = add i64 %289, -32
  %320 = add i64 %318, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RAX.i238, align 8
  %323 = add i64 %289, -68
  %324 = add i64 %318, 8
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %327, 31
  %329 = trunc i64 %328 to i32
  %330 = and i64 %328, 4294967295
  store i64 %330, i64* %RCX.i512, align 8
  %331 = mul i64 %327, 133143986176
  %332 = ashr exact i64 %331, 32
  %333 = icmp ne i64 %332, %328
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %12, align 1
  %335 = and i32 %329, 255
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335)
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %340 = lshr i32 %329, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %16, align 1
  store i8 %334, i8* %17, align 1
  %342 = add i64 %318, 11
  store i64 %342, i64* %3, align 8
  %343 = trunc i64 %328 to i32
  %344 = load i32, i32* %292, align 4
  %345 = add i32 %344, %343
  %346 = zext i32 %345 to i64
  store i64 %346, i64* %RCX.i512, align 8
  %347 = icmp ult i32 %345, %343
  %348 = icmp ult i32 %345, %344
  %349 = or i1 %347, %348
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %12, align 1
  %351 = and i32 %345, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %13, align 1
  %356 = xor i32 %344, %343
  %357 = xor i32 %356, %345
  %358 = lshr i32 %357, 4
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  store i8 %360, i8* %14, align 1
  %361 = icmp eq i32 %345, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %15, align 1
  %363 = lshr i32 %345, 31
  %364 = trunc i32 %363 to i8
  store i8 %364, i8* %16, align 1
  %365 = lshr i32 %343, 31
  %366 = lshr i32 %344, 31
  %367 = xor i32 %363, %365
  %368 = xor i32 %363, %366
  %369 = add nuw nsw i32 %367, %368
  %370 = icmp eq i32 %369, 2
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %17, align 1
  %372 = sext i32 %345 to i64
  store i64 %372, i64* %RDX.i559, align 8
  %373 = add i64 %322, %372
  %374 = add i64 %318, 18
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i8*
  %376 = load i8, i8* %375, align 1
  %377 = sext i8 %376 to i64
  %378 = and i64 %377, 4294967295
  store i64 %378, i64* %RCX.i512, align 8
  %379 = sext i8 %376 to i32
  %380 = add nsw i32 %379, -49
  %381 = icmp ult i8 %376, 49
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %12, align 1
  %383 = and i32 %380, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %13, align 1
  %388 = xor i32 %379, 16
  %389 = xor i32 %388, %380
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %14, align 1
  %393 = icmp eq i32 %380, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %15, align 1
  %395 = lshr i32 %380, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %16, align 1
  %397 = lshr i32 %379, 31
  %398 = xor i32 %395, %397
  %399 = add nuw nsw i32 %398, %397
  %400 = icmp eq i32 %399, 2
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %17, align 1
  %.v61 = select i1 %393, i64 27, i64 52
  %402 = add i64 %318, %.v61
  store i64 %402, i64* %3, align 8
  br i1 %393, label %block_400ce0, label %block_.L_400cf9

block_400ce0:                                     ; preds = %block_400cc5
  %403 = load i64, i64* %RBP.i, align 8
  %404 = add i64 %403, -40
  %405 = add i64 %402, 4
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RAX.i238, align 8
  %408 = add i64 %402, 6
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = zext i32 %410 to i64
  store i64 %411, i64* %RCX.i512, align 8
  %412 = add i64 %403, -48
  %413 = add i64 %402, 9
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = add i32 %415, %410
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RCX.i512, align 8
  %418 = icmp ult i32 %416, %410
  %419 = icmp ult i32 %416, %415
  %420 = or i1 %418, %419
  %421 = zext i1 %420 to i8
  store i8 %421, i8* %12, align 1
  %422 = and i32 %416, 255
  %423 = tail call i32 @llvm.ctpop.i32(i32 %422)
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  %426 = xor i8 %425, 1
  store i8 %426, i8* %13, align 1
  %427 = xor i32 %415, %410
  %428 = xor i32 %427, %416
  %429 = lshr i32 %428, 4
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %14, align 1
  %432 = icmp eq i32 %416, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %15, align 1
  %434 = lshr i32 %416, 31
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %16, align 1
  %436 = lshr i32 %410, 31
  %437 = lshr i32 %415, 31
  %438 = xor i32 %434, %436
  %439 = xor i32 %434, %437
  %440 = add nuw nsw i32 %438, %439
  %441 = icmp eq i32 %440, 2
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %17, align 1
  %443 = add i64 %402, 12
  store i64 %443, i64* %3, align 8
  store i32 %416, i32* %414, align 4
  %444 = load i64, i64* %RBP.i, align 8
  %445 = add i64 %444, -40
  %446 = load i64, i64* %3, align 8
  %447 = add i64 %446, 4
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %445 to i64*
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %RAX.i238, align 8
  %450 = add i64 %449, 4
  %451 = add i64 %446, 7
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RCX.i512, align 8
  %455 = add i64 %444, -52
  %456 = add i64 %446, 10
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = add i32 %458, %453
  %460 = zext i32 %459 to i64
  store i64 %460, i64* %RCX.i512, align 8
  %461 = icmp ult i32 %459, %453
  %462 = icmp ult i32 %459, %458
  %463 = or i1 %461, %462
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %12, align 1
  %465 = and i32 %459, 255
  %466 = tail call i32 @llvm.ctpop.i32(i32 %465)
  %467 = trunc i32 %466 to i8
  %468 = and i8 %467, 1
  %469 = xor i8 %468, 1
  store i8 %469, i8* %13, align 1
  %470 = xor i32 %458, %453
  %471 = xor i32 %470, %459
  %472 = lshr i32 %471, 4
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  store i8 %474, i8* %14, align 1
  %475 = icmp eq i32 %459, 0
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %15, align 1
  %477 = lshr i32 %459, 31
  %478 = trunc i32 %477 to i8
  store i8 %478, i8* %16, align 1
  %479 = lshr i32 %453, 31
  %480 = lshr i32 %458, 31
  %481 = xor i32 %477, %479
  %482 = xor i32 %477, %480
  %483 = add nuw nsw i32 %481, %482
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %17, align 1
  %486 = add i64 %446, 13
  store i64 %486, i64* %3, align 8
  store i32 %459, i32* %457, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_400cf9

block_.L_400cf9:                                  ; preds = %block_400cc5, %block_400ce0
  %487 = phi i64 [ %.pre48, %block_400ce0 ], [ %402, %block_400cc5 ]
  %488 = load i64, i64* %RBP.i, align 8
  %489 = add i64 %488, -40
  %490 = add i64 %487, 4
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %RAX.i238, align 8
  %493 = add i64 %492, 8
  %494 = add i64 %487, 8
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RAX.i238, align 8
  %497 = add i64 %487, 11
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  store i64 %500, i64* %RAX.i238, align 8
  %501 = add i64 %488, -80
  %502 = add i64 %487, 15
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  %504 = load i64, i64* %503, align 8
  %505 = add i64 %504, %500
  %506 = and i64 %505, 1
  store i64 %506, i64* %RAX.i238, align 8
  store i8 0, i8* %12, align 1
  %507 = trunc i64 %506 to i32
  %508 = tail call i32 @llvm.ctpop.i32(i32 %507)
  %509 = trunc i32 %508 to i8
  %510 = xor i8 %509, 1
  store i8 %510, i8* %13, align 1
  %511 = trunc i64 %506 to i8
  %512 = xor i8 %511, 1
  store i8 %512, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %506, i64* %RCX.i512, align 8
  %513 = add i64 %487, 25
  store i64 %513, i64* %3, align 8
  %514 = load i64, i64* %491, align 8
  store i64 %514, i64* %RAX.i238, align 8
  %515 = add i64 %487, 27
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  store i32 %507, i32* %516, align 4
  %517 = load i64, i64* %3, align 8
  %518 = add i64 %517, -1668
  %519 = add i64 %517, 5
  %520 = load i64, i64* %6, align 8
  %521 = add i64 %520, -8
  %522 = inttoptr i64 %521 to i64*
  store i64 %519, i64* %522, align 8
  store i64 %521, i64* %6, align 8
  store i64 %518, i64* %3, align 8
  %call2_400d14 = tail call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* nonnull %0, i64 %518, %struct.Memory* %MEMORY.2)
  %523 = load i64, i64* %3, align 8
  %524 = add i64 %523, 935
  %525 = add i64 %523, 8
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i64*
  %527 = load i64, i64* %526, align 8
  store i64 %527, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  store i64 1000, i64* %RCX.i512, align 8
  %528 = load i64, i64* %RBP.i, align 8
  %529 = add i64 %528, -104
  %530 = add i64 %523, 19
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i64*
  store i64 1000, i64* %531, align 8
  %532 = load i64, i64* %3, align 8
  %533 = load i64, i64* %180, align 8
  %534 = ashr i64 %533, 63
  store i64 %534, i64* %83, align 8
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -104
  %537 = add i64 %532, 6
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RSI.i418, align 8
  %540 = add i64 %532, 9
  store i64 %540, i64* %3, align 8
  %541 = sext i64 %539 to i128
  %542 = and i128 %541, -18446744073709551616
  %543 = zext i64 %534 to i128
  %544 = shl nuw i128 %543, 64
  %545 = zext i64 %533 to i128
  %546 = or i128 %544, %545
  %547 = zext i64 %539 to i128
  %548 = or i128 %542, %547
  %549 = sdiv i128 %546, %548
  %550 = trunc i128 %549 to i64
  %551 = and i128 %549, 18446744073709551615
  %552 = sext i64 %550 to i128
  %553 = and i128 %552, -18446744073709551616
  %554 = or i128 %553, %551
  %555 = icmp eq i128 %549, %554
  br i1 %555, label %558, label %556

; <label>:556:                                    ; preds = %block_.L_400cf9
  %557 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %540, %struct.Memory* %call2_400d14)
  %.pre49 = load i64, i64* %RDX.i559, align 8
  %.pre50 = load i64, i64* %3, align 8
  %.pre51 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit434

; <label>:558:                                    ; preds = %block_.L_400cf9
  %559 = srem i128 %546, %548
  %560 = trunc i128 %559 to i64
  store i64 %550, i64* %180, align 8
  store i64 %560, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit434

routine_idivq__rsi.exit434:                       ; preds = %558, %556
  %561 = phi i64 [ %.pre51, %556 ], [ %535, %558 ]
  %562 = phi i64 [ %.pre50, %556 ], [ %540, %558 ]
  %563 = phi i64 [ %.pre49, %556 ], [ %560, %558 ]
  %564 = phi %struct.Memory* [ %557, %556 ], [ %call2_400d14, %558 ]
  %565 = sitofp i64 %563 to double
  %566 = load double, double* %35, align 1
  %567 = fdiv double %565, %566
  store double %567, double* %182, align 1
  %568 = add i64 %561, -88
  %569 = add i64 %562, 14
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to double*
  store double %567, double* %570, align 8
  %571 = load i64, i64* %RBP.i, align 8
  %572 = add i64 %571, -24
  %573 = load i64, i64* %3, align 8
  %574 = add i64 %573, 5
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %572 to i64*
  %576 = load i64, i64* %575, align 8
  store i64 %576, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  %577 = add i64 %571, -88
  %578 = add i64 %573, 10
  store i64 %578, i64* %3, align 8
  %579 = bitcast i64 %576 to double
  %580 = inttoptr i64 %577 to double*
  %581 = load double, double* %580, align 8
  %582 = fcmp uno double %579, %581
  br i1 %582, label %583, label %593

; <label>:583:                                    ; preds = %routine_idivq__rsi.exit434
  %584 = fadd double %579, %581
  %585 = bitcast double %584 to i64
  %586 = and i64 %585, 9221120237041090560
  %587 = icmp eq i64 %586, 9218868437227405312
  %588 = and i64 %585, 2251799813685247
  %589 = icmp ne i64 %588, 0
  %590 = and i1 %587, %589
  br i1 %590, label %591, label %599

; <label>:591:                                    ; preds = %583
  %592 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %578, %struct.Memory* %564)
  %.pre52 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit416

; <label>:593:                                    ; preds = %routine_idivq__rsi.exit434
  %594 = fcmp ogt double %579, %581
  br i1 %594, label %599, label %595

; <label>:595:                                    ; preds = %593
  %596 = fcmp olt double %579, %581
  br i1 %596, label %599, label %597

; <label>:597:                                    ; preds = %595
  %598 = fcmp oeq double %579, %581
  br i1 %598, label %599, label %603

; <label>:599:                                    ; preds = %597, %595, %593, %583
  %600 = phi i8 [ 0, %593 ], [ 0, %595 ], [ 1, %597 ], [ 1, %583 ]
  %601 = phi i8 [ 0, %593 ], [ 0, %595 ], [ 0, %597 ], [ 1, %583 ]
  %602 = phi i8 [ 0, %593 ], [ 1, %595 ], [ 0, %597 ], [ 1, %583 ]
  store i8 %600, i8* %15, align 1
  store i8 %601, i8* %13, align 1
  store i8 %602, i8* %12, align 1
  br label %603

; <label>:603:                                    ; preds = %599, %597
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit416

routine_ucomisd_MINUS0x58__rbp____xmm0.exit416:   ; preds = %603, %591
  %604 = phi i64 [ %.pre52, %591 ], [ %578, %603 ]
  %605 = phi %struct.Memory* [ %592, %591 ], [ %564, %603 ]
  %606 = add i64 %604, 18
  %607 = add i64 %604, 6
  %608 = load i8, i8* %12, align 1
  %609 = load i8, i8* %15, align 1
  %610 = or i8 %609, %608
  %611 = icmp ne i8 %610, 0
  %612 = select i1 %611, i64 %606, i64 %607
  store i64 %612, i64* %3, align 8
  br i1 %611, label %block_.L_400d5f, label %block_400d53

block_400d53:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit416
  %613 = load i64, i64* %RBP.i, align 8
  %614 = add i64 %613, -80
  %615 = add i64 %612, 4
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i64*
  %617 = load i64, i64* %616, align 8
  %618 = xor i64 %617, 1
  store i64 %618, i64* %RAX.i238, align 8
  store i8 0, i8* %12, align 1
  %619 = trunc i64 %618 to i32
  %620 = and i32 %619, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %13, align 1
  %625 = icmp eq i64 %618, 0
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %15, align 1
  %627 = lshr i64 %617, 63
  %628 = trunc i64 %627 to i8
  store i8 %628, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %629 = add i64 %612, 12
  store i64 %629, i64* %3, align 8
  store i64 %618, i64* %616, align 8
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_400d5f

block_.L_400d5f:                                  ; preds = %block_400d53, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit416
  %630 = phi i64 [ %.pre53, %block_400d53 ], [ %606, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit416 ]
  %631 = load i64, i64* %RBP.i, align 8
  %632 = add i64 %631, -40
  %633 = add i64 %630, 4
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i64*
  %635 = load i64, i64* %634, align 8
  store i64 %635, i64* %RAX.i238, align 8
  %636 = add i64 %635, 8
  %637 = add i64 %630, 8
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RAX.i238, align 8
  %640 = add i64 %639, 4
  %641 = add i64 %630, 12
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = sext i32 %643 to i64
  store i64 %644, i64* %RAX.i238, align 8
  %645 = add i64 %631, -80
  %646 = add i64 %630, 16
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i64*
  %648 = load i64, i64* %647, align 8
  %649 = add i64 %648, %644
  %650 = and i64 %649, 1
  store i64 %650, i64* %RAX.i238, align 8
  store i8 0, i8* %12, align 1
  %651 = trunc i64 %650 to i32
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = xor i8 %653, 1
  store i8 %654, i8* %13, align 1
  %655 = trunc i64 %650 to i8
  %656 = xor i8 %655, 1
  store i8 %656, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %650, i64* %RCX.i512, align 8
  %657 = add i64 %630, 26
  store i64 %657, i64* %3, align 8
  %658 = load i64, i64* %634, align 8
  store i64 %658, i64* %RAX.i238, align 8
  %659 = add i64 %658, 4
  %660 = add i64 %630, 29
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  store i32 %651, i32* %661, align 4
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -40
  %664 = load i64, i64* %3, align 8
  %665 = add i64 %664, 4
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %663 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %RAX.i238, align 8
  %668 = add i64 %667, 8
  %669 = add i64 %664, 8
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %RAX.i238, align 8
  %672 = add i64 %664, 12
  store i64 %672, i64* %3, align 8
  store i64 %671, i64* %666, align 8
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -80
  %675 = load i64, i64* %3, align 8
  %676 = add i64 %675, 4
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %674 to i64*
  %678 = load i64, i64* %677, align 8
  %679 = trunc i64 %678 to i8
  %680 = and i8 %679, 1
  %681 = ashr i64 %678, 1
  store i64 %681, i64* %RAX.i238, align 8
  store i8 %680, i8* %12, align 1
  %682 = trunc i64 %681 to i32
  %683 = and i32 %682, 255
  %684 = tail call i32 @llvm.ctpop.i32(i32 %683)
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  %687 = xor i8 %686, 1
  store i8 %687, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %688 = icmp eq i64 %681, 0
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %15, align 1
  %690 = lshr i64 %681, 63
  %691 = trunc i64 %690 to i8
  store i8 %691, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %692 = add i64 %675, 11
  store i64 %692, i64* %3, align 8
  store i64 %681, i64* %677, align 8
  %693 = load i64, i64* %RBP.i, align 8
  %694 = add i64 %693, -72
  %695 = load i64, i64* %3, align 8
  %696 = add i64 %695, 3
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %694 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = add i32 %698, 1
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RAX.i238, align 8
  %701 = icmp eq i32 %698, -1
  %702 = icmp eq i32 %699, 0
  %703 = or i1 %701, %702
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %12, align 1
  %705 = and i32 %699, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %13, align 1
  %710 = xor i32 %699, %698
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %14, align 1
  %714 = zext i1 %702 to i8
  store i8 %714, i8* %15, align 1
  %715 = lshr i32 %699, 31
  %716 = trunc i32 %715 to i8
  store i8 %716, i8* %16, align 1
  %717 = lshr i32 %698, 31
  %718 = xor i32 %715, %717
  %719 = add nuw nsw i32 %718, %715
  %720 = icmp eq i32 %719, 2
  %721 = zext i1 %720 to i8
  store i8 %721, i8* %17, align 1
  %722 = add i64 %695, 9
  store i64 %722, i64* %3, align 8
  store i32 %699, i32* %697, align 4
  %723 = load i64, i64* %3, align 8
  %724 = add i64 %723, -226
  store i64 %724, i64* %3, align 8
  br label %block_.L_400cbb

block_.L_400da2:                                  ; preds = %block_.L_400cbb
  %725 = add i64 %289, -68
  %726 = add i64 %318, 8
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = add i32 %728, 1
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RAX.i238, align 8
  %731 = icmp eq i32 %728, -1
  %732 = icmp eq i32 %729, 0
  %733 = or i1 %731, %732
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %12, align 1
  %735 = and i32 %729, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %13, align 1
  %740 = xor i32 %729, %728
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %14, align 1
  %744 = zext i1 %732 to i8
  store i8 %744, i8* %15, align 1
  %745 = lshr i32 %729, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %16, align 1
  %747 = lshr i32 %728, 31
  %748 = xor i32 %745, %747
  %749 = add nuw nsw i32 %748, %745
  %750 = icmp eq i32 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %17, align 1
  %752 = add i64 %318, 14
  store i64 %752, i64* %3, align 8
  store i32 %729, i32* %727, align 4
  %753 = load i64, i64* %3, align 8
  %754 = add i64 %753, -273
  store i64 %754, i64* %3, align 8
  br label %block_.L_400c9f

block_.L_400db5:                                  ; preds = %block_.L_400c9f
  %755 = add i64 %271, -1829
  %756 = add i64 %271, 5
  %757 = load i64, i64* %6, align 8
  %758 = add i64 %757, -8
  %759 = inttoptr i64 %758 to i64*
  store i64 %756, i64* %759, align 8
  store i64 %758, i64* %6, align 8
  store i64 %755, i64* %3, align 8
  %call2_400db5 = tail call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* nonnull %0, i64 %755, %struct.Memory* %MEMORY.1)
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -80
  %762 = load i64, i64* %RAX.i238, align 8
  %763 = load i64, i64* %3, align 8
  %764 = add i64 %763, 4
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %761 to i64*
  store i64 %762, i64* %765, align 8
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -72
  %768 = load i64, i64* %3, align 8
  %769 = add i64 %768, 7
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %767 to i32*
  store i32 0, i32* %770, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_400dc5

block_.L_400dc5:                                  ; preds = %block_.L_400e6b, %block_.L_400db5
  %771 = phi i64 [ %.pre33, %block_.L_400db5 ], [ %1214, %block_.L_400e6b ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_400db5, %block_.L_400db5 ], [ %1095, %block_.L_400e6b ]
  %772 = load i64, i64* %RBP.i, align 8
  %773 = add i64 %772, -72
  %774 = add i64 %771, 3
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i32*
  %776 = load i32, i32* %775, align 4
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %RAX.i238, align 8
  %778 = add i64 %772, -56
  %779 = add i64 %771, 6
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i32*
  %781 = load i32, i32* %780, align 4
  %782 = sub i32 %776, %781
  %783 = icmp ult i32 %776, %781
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %12, align 1
  %785 = and i32 %782, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %13, align 1
  %790 = xor i32 %781, %776
  %791 = xor i32 %790, %782
  %792 = lshr i32 %791, 4
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  store i8 %794, i8* %14, align 1
  %795 = icmp eq i32 %782, 0
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %15, align 1
  %797 = lshr i32 %782, 31
  %798 = trunc i32 %797 to i8
  store i8 %798, i8* %16, align 1
  %799 = lshr i32 %776, 31
  %800 = lshr i32 %781, 31
  %801 = xor i32 %800, %799
  %802 = xor i32 %797, %799
  %803 = add nuw nsw i32 %802, %801
  %804 = icmp eq i32 %803, 2
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %17, align 1
  %806 = icmp ne i8 %798, 0
  %807 = xor i1 %806, %804
  %.v58 = select i1 %807, i64 12, i64 233
  %808 = add i64 %771, %.v58
  store i64 %808, i64* %3, align 8
  br i1 %807, label %block_400dd1, label %block_.L_400eae

block_400dd1:                                     ; preds = %block_.L_400dc5
  %809 = add i64 %772, -32
  %810 = add i64 %808, 4
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i64*
  %812 = load i64, i64* %811, align 8
  store i64 %812, i64* %RAX.i238, align 8
  %813 = add i64 %772, -60
  %814 = add i64 %808, 8
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = sext i32 %816 to i64
  %818 = mul nsw i64 %817, 31
  %819 = trunc i64 %818 to i32
  %820 = and i64 %818, 4294967295
  store i64 %820, i64* %RCX.i512, align 8
  %821 = mul i64 %817, 133143986176
  %822 = ashr exact i64 %821, 32
  %823 = icmp ne i64 %822, %818
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %12, align 1
  %825 = and i32 %819, 255
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %830 = lshr i32 %819, 31
  %831 = trunc i32 %830 to i8
  store i8 %831, i8* %16, align 1
  store i8 %824, i8* %17, align 1
  %832 = add i64 %808, 11
  store i64 %832, i64* %3, align 8
  %833 = trunc i64 %818 to i32
  %834 = load i32, i32* %775, align 4
  %835 = add i32 %834, %833
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RCX.i512, align 8
  %837 = icmp ult i32 %835, %833
  %838 = icmp ult i32 %835, %834
  %839 = or i1 %837, %838
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %12, align 1
  %841 = and i32 %835, 255
  %842 = tail call i32 @llvm.ctpop.i32(i32 %841)
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  %845 = xor i8 %844, 1
  store i8 %845, i8* %13, align 1
  %846 = xor i32 %834, %833
  %847 = xor i32 %846, %835
  %848 = lshr i32 %847, 4
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %14, align 1
  %851 = icmp eq i32 %835, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %15, align 1
  %853 = lshr i32 %835, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %16, align 1
  %855 = lshr i32 %833, 31
  %856 = lshr i32 %834, 31
  %857 = xor i32 %853, %855
  %858 = xor i32 %853, %856
  %859 = add nuw nsw i32 %857, %858
  %860 = icmp eq i32 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %17, align 1
  %862 = sext i32 %835 to i64
  store i64 %862, i64* %RDX.i559, align 8
  %863 = add i64 %812, %862
  %864 = add i64 %808, 18
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i8*
  %866 = load i8, i8* %865, align 1
  %867 = sext i8 %866 to i64
  %868 = and i64 %867, 4294967295
  store i64 %868, i64* %RCX.i512, align 8
  %869 = sext i8 %866 to i32
  %870 = add nsw i32 %869, -49
  %871 = icmp ult i8 %866, 49
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %12, align 1
  %873 = and i32 %870, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %13, align 1
  %878 = xor i32 %869, 16
  %879 = xor i32 %878, %870
  %880 = lshr i32 %879, 4
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  store i8 %882, i8* %14, align 1
  %883 = icmp eq i32 %870, 0
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %15, align 1
  %885 = lshr i32 %870, 31
  %886 = trunc i32 %885 to i8
  store i8 %886, i8* %16, align 1
  %887 = lshr i32 %869, 31
  %888 = xor i32 %885, %887
  %889 = add nuw nsw i32 %888, %887
  %890 = icmp eq i32 %889, 2
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %17, align 1
  %.v60 = select i1 %883, i64 27, i64 52
  %892 = add i64 %808, %.v60
  store i64 %892, i64* %3, align 8
  br i1 %883, label %block_400dec, label %block_.L_400e05

block_400dec:                                     ; preds = %block_400dd1
  %893 = load i64, i64* %RBP.i, align 8
  %894 = add i64 %893, -40
  %895 = add i64 %892, 4
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i64*
  %897 = load i64, i64* %896, align 8
  store i64 %897, i64* %RAX.i238, align 8
  %898 = add i64 %892, 6
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i32*
  %900 = load i32, i32* %899, align 4
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RCX.i512, align 8
  %902 = add i64 %893, -48
  %903 = add i64 %892, 9
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  %905 = load i32, i32* %904, align 4
  %906 = add i32 %905, %900
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RCX.i512, align 8
  %908 = icmp ult i32 %906, %900
  %909 = icmp ult i32 %906, %905
  %910 = or i1 %908, %909
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %12, align 1
  %912 = and i32 %906, 255
  %913 = tail call i32 @llvm.ctpop.i32(i32 %912)
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  store i8 %916, i8* %13, align 1
  %917 = xor i32 %905, %900
  %918 = xor i32 %917, %906
  %919 = lshr i32 %918, 4
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  store i8 %921, i8* %14, align 1
  %922 = icmp eq i32 %906, 0
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %15, align 1
  %924 = lshr i32 %906, 31
  %925 = trunc i32 %924 to i8
  store i8 %925, i8* %16, align 1
  %926 = lshr i32 %900, 31
  %927 = lshr i32 %905, 31
  %928 = xor i32 %924, %926
  %929 = xor i32 %924, %927
  %930 = add nuw nsw i32 %928, %929
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %17, align 1
  %933 = add i64 %892, 12
  store i64 %933, i64* %3, align 8
  store i32 %906, i32* %904, align 4
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -40
  %936 = load i64, i64* %3, align 8
  %937 = add i64 %936, 4
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %935 to i64*
  %939 = load i64, i64* %938, align 8
  store i64 %939, i64* %RAX.i238, align 8
  %940 = add i64 %939, 4
  %941 = add i64 %936, 7
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i32*
  %943 = load i32, i32* %942, align 4
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RCX.i512, align 8
  %945 = add i64 %934, -52
  %946 = add i64 %936, 10
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  %948 = load i32, i32* %947, align 4
  %949 = add i32 %948, %943
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RCX.i512, align 8
  %951 = icmp ult i32 %949, %943
  %952 = icmp ult i32 %949, %948
  %953 = or i1 %951, %952
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %12, align 1
  %955 = and i32 %949, 255
  %956 = tail call i32 @llvm.ctpop.i32(i32 %955)
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  store i8 %959, i8* %13, align 1
  %960 = xor i32 %948, %943
  %961 = xor i32 %960, %949
  %962 = lshr i32 %961, 4
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  store i8 %964, i8* %14, align 1
  %965 = icmp eq i32 %949, 0
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %15, align 1
  %967 = lshr i32 %949, 31
  %968 = trunc i32 %967 to i8
  store i8 %968, i8* %16, align 1
  %969 = lshr i32 %943, 31
  %970 = lshr i32 %948, 31
  %971 = xor i32 %967, %969
  %972 = xor i32 %967, %970
  %973 = add nuw nsw i32 %971, %972
  %974 = icmp eq i32 %973, 2
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %17, align 1
  %976 = add i64 %936, 13
  store i64 %976, i64* %3, align 8
  store i32 %949, i32* %947, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_400e05

block_.L_400e05:                                  ; preds = %block_400dd1, %block_400dec
  %977 = phi i64 [ %.pre41, %block_400dec ], [ %892, %block_400dd1 ]
  %978 = load i64, i64* %RBP.i, align 8
  %979 = add i64 %978, -40
  %980 = add i64 %977, 4
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i64*
  %982 = load i64, i64* %981, align 8
  store i64 %982, i64* %RAX.i238, align 8
  %983 = add i64 %982, 8
  %984 = add i64 %977, 8
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i64*
  %986 = load i64, i64* %985, align 8
  store i64 %986, i64* %RAX.i238, align 8
  %987 = add i64 %977, 11
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = sext i32 %989 to i64
  store i64 %990, i64* %RAX.i238, align 8
  %991 = add i64 %978, -80
  %992 = add i64 %977, 15
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i64*
  %994 = load i64, i64* %993, align 8
  %995 = add i64 %994, %990
  %996 = and i64 %995, 1
  store i64 %996, i64* %RAX.i238, align 8
  store i8 0, i8* %12, align 1
  %997 = trunc i64 %996 to i32
  %998 = tail call i32 @llvm.ctpop.i32(i32 %997)
  %999 = trunc i32 %998 to i8
  %1000 = xor i8 %999, 1
  store i8 %1000, i8* %13, align 1
  %1001 = trunc i64 %996 to i8
  %1002 = xor i8 %1001, 1
  store i8 %1002, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %996, i64* %RCX.i512, align 8
  %1003 = add i64 %977, 25
  store i64 %1003, i64* %3, align 8
  %1004 = load i64, i64* %981, align 8
  store i64 %1004, i64* %RAX.i238, align 8
  %1005 = add i64 %977, 27
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  store i32 %997, i32* %1006, align 4
  %1007 = load i64, i64* %3, align 8
  %1008 = add i64 %1007, -1936
  %1009 = add i64 %1007, 5
  %1010 = load i64, i64* %6, align 8
  %1011 = add i64 %1010, -8
  %1012 = inttoptr i64 %1011 to i64*
  store i64 %1009, i64* %1012, align 8
  store i64 %1011, i64* %6, align 8
  store i64 %1008, i64* %3, align 8
  %call2_400e20 = tail call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* nonnull %0, i64 %1008, %struct.Memory* %MEMORY.5)
  %1013 = load i64, i64* %3, align 8
  %1014 = add i64 %1013, 667
  %1015 = add i64 %1013, 8
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1014 to i64*
  %1017 = load i64, i64* %1016, align 8
  store i64 %1017, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  store i64 1000, i64* %RCX.i512, align 8
  %1018 = load i64, i64* %RBP.i, align 8
  %1019 = add i64 %1018, -112
  %1020 = add i64 %1013, 19
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i64*
  store i64 1000, i64* %1021, align 8
  %1022 = load i64, i64* %3, align 8
  %1023 = load i64, i64* %180, align 8
  %1024 = ashr i64 %1023, 63
  store i64 %1024, i64* %83, align 8
  %1025 = load i64, i64* %RBP.i, align 8
  %1026 = add i64 %1025, -112
  %1027 = add i64 %1022, 6
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i64*
  %1029 = load i64, i64* %1028, align 8
  store i64 %1029, i64* %RSI.i418, align 8
  %1030 = add i64 %1022, 9
  store i64 %1030, i64* %3, align 8
  %1031 = sext i64 %1029 to i128
  %1032 = and i128 %1031, -18446744073709551616
  %1033 = zext i64 %1024 to i128
  %1034 = shl nuw i128 %1033, 64
  %1035 = zext i64 %1023 to i128
  %1036 = or i128 %1034, %1035
  %1037 = zext i64 %1029 to i128
  %1038 = or i128 %1032, %1037
  %1039 = sdiv i128 %1036, %1038
  %1040 = trunc i128 %1039 to i64
  %1041 = and i128 %1039, 18446744073709551615
  %1042 = sext i64 %1040 to i128
  %1043 = and i128 %1042, -18446744073709551616
  %1044 = or i128 %1043, %1041
  %1045 = icmp eq i128 %1039, %1044
  br i1 %1045, label %1048, label %1046

; <label>:1046:                                   ; preds = %block_.L_400e05
  %1047 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1030, %struct.Memory* %call2_400e20)
  %.pre42 = load i64, i64* %RDX.i559, align 8
  %.pre43 = load i64, i64* %3, align 8
  %.pre44 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit253

; <label>:1048:                                   ; preds = %block_.L_400e05
  %1049 = srem i128 %1036, %1038
  %1050 = trunc i128 %1049 to i64
  store i64 %1040, i64* %180, align 8
  store i64 %1050, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit253

routine_idivq__rsi.exit253:                       ; preds = %1048, %1046
  %1051 = phi i64 [ %.pre44, %1046 ], [ %1025, %1048 ]
  %1052 = phi i64 [ %.pre43, %1046 ], [ %1030, %1048 ]
  %1053 = phi i64 [ %.pre42, %1046 ], [ %1050, %1048 ]
  %1054 = phi %struct.Memory* [ %1047, %1046 ], [ %call2_400e20, %1048 ]
  %1055 = sitofp i64 %1053 to double
  %1056 = load double, double* %35, align 1
  %1057 = fdiv double %1055, %1056
  store double %1057, double* %182, align 1
  %1058 = add i64 %1051, -88
  %1059 = add i64 %1052, 14
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to double*
  store double %1057, double* %1060, align 8
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -24
  %1063 = load i64, i64* %3, align 8
  %1064 = add i64 %1063, 5
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1062 to i64*
  %1066 = load i64, i64* %1065, align 8
  store i64 %1066, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  %1067 = add i64 %1061, -88
  %1068 = add i64 %1063, 10
  store i64 %1068, i64* %3, align 8
  %1069 = bitcast i64 %1066 to double
  %1070 = inttoptr i64 %1067 to double*
  %1071 = load double, double* %1070, align 8
  %1072 = fcmp uno double %1069, %1071
  br i1 %1072, label %1073, label %1083

; <label>:1073:                                   ; preds = %routine_idivq__rsi.exit253
  %1074 = fadd double %1069, %1071
  %1075 = bitcast double %1074 to i64
  %1076 = and i64 %1075, 9221120237041090560
  %1077 = icmp eq i64 %1076, 9218868437227405312
  %1078 = and i64 %1075, 2251799813685247
  %1079 = icmp ne i64 %1078, 0
  %1080 = and i1 %1077, %1079
  br i1 %1080, label %1081, label %1089

; <label>:1081:                                   ; preds = %1073
  %1082 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1068, %struct.Memory* %1054)
  %.pre45 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit236

; <label>:1083:                                   ; preds = %routine_idivq__rsi.exit253
  %1084 = fcmp ogt double %1069, %1071
  br i1 %1084, label %1089, label %1085

; <label>:1085:                                   ; preds = %1083
  %1086 = fcmp olt double %1069, %1071
  br i1 %1086, label %1089, label %1087

; <label>:1087:                                   ; preds = %1085
  %1088 = fcmp oeq double %1069, %1071
  br i1 %1088, label %1089, label %1093

; <label>:1089:                                   ; preds = %1087, %1085, %1083, %1073
  %1090 = phi i8 [ 0, %1083 ], [ 0, %1085 ], [ 1, %1087 ], [ 1, %1073 ]
  %1091 = phi i8 [ 0, %1083 ], [ 0, %1085 ], [ 0, %1087 ], [ 1, %1073 ]
  %1092 = phi i8 [ 0, %1083 ], [ 1, %1085 ], [ 0, %1087 ], [ 1, %1073 ]
  store i8 %1090, i8* %15, align 1
  store i8 %1091, i8* %13, align 1
  store i8 %1092, i8* %12, align 1
  br label %1093

; <label>:1093:                                   ; preds = %1089, %1087
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit236

routine_ucomisd_MINUS0x58__rbp____xmm0.exit236:   ; preds = %1093, %1081
  %1094 = phi i64 [ %.pre45, %1081 ], [ %1068, %1093 ]
  %1095 = phi %struct.Memory* [ %1082, %1081 ], [ %1054, %1093 ]
  %1096 = add i64 %1094, 18
  %1097 = add i64 %1094, 6
  %1098 = load i8, i8* %12, align 1
  %1099 = load i8, i8* %15, align 1
  %1100 = or i8 %1099, %1098
  %1101 = icmp ne i8 %1100, 0
  %1102 = select i1 %1101, i64 %1096, i64 %1097
  store i64 %1102, i64* %3, align 8
  br i1 %1101, label %block_.L_400e6b, label %block_400e5f

block_400e5f:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit236
  %1103 = load i64, i64* %RBP.i, align 8
  %1104 = add i64 %1103, -80
  %1105 = add i64 %1102, 4
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i64*
  %1107 = load i64, i64* %1106, align 8
  %1108 = xor i64 %1107, 1
  store i64 %1108, i64* %RAX.i238, align 8
  store i8 0, i8* %12, align 1
  %1109 = trunc i64 %1108 to i32
  %1110 = and i32 %1109, 255
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110)
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %13, align 1
  %1115 = icmp eq i64 %1108, 0
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %15, align 1
  %1117 = lshr i64 %1107, 63
  %1118 = trunc i64 %1117 to i8
  store i8 %1118, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1119 = add i64 %1102, 12
  store i64 %1119, i64* %3, align 8
  store i64 %1108, i64* %1106, align 8
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_400e6b

block_.L_400e6b:                                  ; preds = %block_400e5f, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit236
  %1120 = phi i64 [ %.pre46, %block_400e5f ], [ %1096, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit236 ]
  %1121 = load i64, i64* %RBP.i, align 8
  %1122 = add i64 %1121, -40
  %1123 = add i64 %1120, 4
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i64*
  %1125 = load i64, i64* %1124, align 8
  store i64 %1125, i64* %RAX.i238, align 8
  %1126 = add i64 %1125, 8
  %1127 = add i64 %1120, 8
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RAX.i238, align 8
  %1130 = add i64 %1129, 4
  %1131 = add i64 %1120, 12
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = sext i32 %1133 to i64
  store i64 %1134, i64* %RAX.i238, align 8
  %1135 = add i64 %1121, -80
  %1136 = add i64 %1120, 16
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i64*
  %1138 = load i64, i64* %1137, align 8
  %1139 = add i64 %1138, %1134
  %1140 = and i64 %1139, 1
  store i64 %1140, i64* %RAX.i238, align 8
  store i8 0, i8* %12, align 1
  %1141 = trunc i64 %1140 to i32
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = xor i8 %1143, 1
  store i8 %1144, i8* %13, align 1
  %1145 = trunc i64 %1140 to i8
  %1146 = xor i8 %1145, 1
  store i8 %1146, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %1140, i64* %RCX.i512, align 8
  %1147 = add i64 %1120, 26
  store i64 %1147, i64* %3, align 8
  %1148 = load i64, i64* %1124, align 8
  store i64 %1148, i64* %RAX.i238, align 8
  %1149 = add i64 %1148, 4
  %1150 = add i64 %1120, 29
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  store i32 %1141, i32* %1151, align 4
  %1152 = load i64, i64* %RBP.i, align 8
  %1153 = add i64 %1152, -40
  %1154 = load i64, i64* %3, align 8
  %1155 = add i64 %1154, 4
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1153 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RAX.i238, align 8
  %1158 = add i64 %1157, 8
  %1159 = add i64 %1154, 8
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i64*
  %1161 = load i64, i64* %1160, align 8
  store i64 %1161, i64* %RAX.i238, align 8
  %1162 = add i64 %1154, 12
  store i64 %1162, i64* %3, align 8
  store i64 %1161, i64* %1156, align 8
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -80
  %1165 = load i64, i64* %3, align 8
  %1166 = add i64 %1165, 4
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1164 to i64*
  %1168 = load i64, i64* %1167, align 8
  %1169 = trunc i64 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = ashr i64 %1168, 1
  store i64 %1171, i64* %RAX.i238, align 8
  store i8 %1170, i8* %12, align 1
  %1172 = trunc i64 %1171 to i32
  %1173 = and i32 %1172, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1178 = icmp eq i64 %1171, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %15, align 1
  %1180 = lshr i64 %1171, 63
  %1181 = trunc i64 %1180 to i8
  store i8 %1181, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1182 = add i64 %1165, 11
  store i64 %1182, i64* %3, align 8
  store i64 %1171, i64* %1167, align 8
  %1183 = load i64, i64* %RBP.i, align 8
  %1184 = add i64 %1183, -72
  %1185 = load i64, i64* %3, align 8
  %1186 = add i64 %1185, 3
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1184 to i32*
  %1188 = load i32, i32* %1187, align 4
  %1189 = add i32 %1188, 1
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RAX.i238, align 8
  %1191 = icmp eq i32 %1188, -1
  %1192 = icmp eq i32 %1189, 0
  %1193 = or i1 %1191, %1192
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %12, align 1
  %1195 = and i32 %1189, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %13, align 1
  %1200 = xor i32 %1189, %1188
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %14, align 1
  %1204 = zext i1 %1192 to i8
  store i8 %1204, i8* %15, align 1
  %1205 = lshr i32 %1189, 31
  %1206 = trunc i32 %1205 to i8
  store i8 %1206, i8* %16, align 1
  %1207 = lshr i32 %1188, 31
  %1208 = xor i32 %1205, %1207
  %1209 = add nuw nsw i32 %1208, %1205
  %1210 = icmp eq i32 %1209, 2
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %17, align 1
  %1212 = add i64 %1185, 9
  store i64 %1212, i64* %3, align 8
  store i32 %1189, i32* %1187, align 4
  %1213 = load i64, i64* %3, align 8
  %1214 = add i64 %1213, -228
  store i64 %1214, i64* %3, align 8
  br label %block_.L_400dc5

block_.L_400eae:                                  ; preds = %block_.L_400dc5
  %1215 = add i64 %808, -2078
  %1216 = add i64 %808, 5
  %1217 = load i64, i64* %6, align 8
  %1218 = add i64 %1217, -8
  %1219 = inttoptr i64 %1218 to i64*
  store i64 %1216, i64* %1219, align 8
  store i64 %1218, i64* %6, align 8
  store i64 %1215, i64* %3, align 8
  %call2_400eae = tail call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* nonnull %0, i64 %1215, %struct.Memory* %MEMORY.5)
  %1220 = load i64, i64* %RBP.i, align 8
  %1221 = add i64 %1220, -80
  %1222 = load i64, i64* %RAX.i238, align 8
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, 4
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1221 to i64*
  store i64 %1222, i64* %1225, align 8
  %1226 = load i64, i64* %RBP.i, align 8
  %1227 = add i64 %1226, -32
  %1228 = load i64, i64* %3, align 8
  %1229 = add i64 %1228, 4
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1227 to i64*
  %1231 = load i64, i64* %1230, align 8
  store i64 %1231, i64* %RAX.i238, align 8
  %1232 = load i32, i32* inttoptr (i64 6299764 to i32*), align 4
  %1233 = add i32 %1232, -1
  %1234 = zext i32 %1233 to i64
  store i64 %1234, i64* %RCX.i512, align 8
  %1235 = icmp eq i32 %1232, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %12, align 1
  %1237 = and i32 %1233, 255
  %1238 = tail call i32 @llvm.ctpop.i32(i32 %1237)
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  %1241 = xor i8 %1240, 1
  store i8 %1241, i8* %13, align 1
  %1242 = xor i32 %1233, %1232
  %1243 = lshr i32 %1242, 4
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  store i8 %1245, i8* %14, align 1
  %1246 = icmp eq i32 %1233, 0
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %15, align 1
  %1248 = lshr i32 %1233, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %16, align 1
  %1250 = lshr i32 %1232, 31
  %1251 = xor i32 %1248, %1250
  %1252 = add nuw nsw i32 %1251, %1250
  %1253 = icmp eq i32 %1252, 2
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %17, align 1
  %1255 = sext i32 %1233 to i64
  store i64 %1255, i64* %RDX.i559, align 8
  %1256 = add i64 %1231, %1255
  %1257 = add i64 %1228, 21
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i8*
  %1259 = load i8, i8* %1258, align 1
  %1260 = sext i8 %1259 to i64
  %1261 = and i64 %1260, 4294967295
  store i64 %1261, i64* %RCX.i512, align 8
  %1262 = sext i8 %1259 to i32
  %1263 = add nsw i32 %1262, -49
  %1264 = icmp ult i8 %1259, 49
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %12, align 1
  %1266 = and i32 %1263, 255
  %1267 = tail call i32 @llvm.ctpop.i32(i32 %1266)
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  %1270 = xor i8 %1269, 1
  store i8 %1270, i8* %13, align 1
  %1271 = xor i32 %1262, 16
  %1272 = xor i32 %1271, %1263
  %1273 = lshr i32 %1272, 4
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  store i8 %1275, i8* %14, align 1
  %1276 = icmp eq i32 %1263, 0
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %15, align 1
  %1278 = lshr i32 %1263, 31
  %1279 = trunc i32 %1278 to i8
  store i8 %1279, i8* %16, align 1
  %1280 = lshr i32 %1262, 31
  %1281 = xor i32 %1278, %1280
  %1282 = add nuw nsw i32 %1281, %1280
  %1283 = icmp eq i32 %1282, 2
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %17, align 1
  %.v59 = select i1 %1276, i64 30, i64 55
  %1285 = add i64 %1228, %.v59
  store i64 %1285, i64* %3, align 8
  br i1 %1276, label %block_400ed5, label %block_.L_400eee

block_400ed5:                                     ; preds = %block_.L_400eae
  %1286 = add i64 %1226, -40
  %1287 = add i64 %1285, 4
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i64*
  %1289 = load i64, i64* %1288, align 8
  store i64 %1289, i64* %RAX.i238, align 8
  %1290 = add i64 %1285, 6
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i32*
  %1292 = load i32, i32* %1291, align 4
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RCX.i512, align 8
  %1294 = add i64 %1226, -48
  %1295 = add i64 %1285, 9
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = add i32 %1297, %1292
  %1299 = zext i32 %1298 to i64
  store i64 %1299, i64* %RCX.i512, align 8
  %1300 = icmp ult i32 %1298, %1292
  %1301 = icmp ult i32 %1298, %1297
  %1302 = or i1 %1300, %1301
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %12, align 1
  %1304 = and i32 %1298, 255
  %1305 = tail call i32 @llvm.ctpop.i32(i32 %1304)
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = xor i8 %1307, 1
  store i8 %1308, i8* %13, align 1
  %1309 = xor i32 %1297, %1292
  %1310 = xor i32 %1309, %1298
  %1311 = lshr i32 %1310, 4
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  store i8 %1313, i8* %14, align 1
  %1314 = icmp eq i32 %1298, 0
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %15, align 1
  %1316 = lshr i32 %1298, 31
  %1317 = trunc i32 %1316 to i8
  store i8 %1317, i8* %16, align 1
  %1318 = lshr i32 %1292, 31
  %1319 = lshr i32 %1297, 31
  %1320 = xor i32 %1316, %1318
  %1321 = xor i32 %1316, %1319
  %1322 = add nuw nsw i32 %1320, %1321
  %1323 = icmp eq i32 %1322, 2
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %17, align 1
  %1325 = add i64 %1285, 12
  store i64 %1325, i64* %3, align 8
  store i32 %1298, i32* %1296, align 4
  %1326 = load i64, i64* %RBP.i, align 8
  %1327 = add i64 %1326, -40
  %1328 = load i64, i64* %3, align 8
  %1329 = add i64 %1328, 4
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1327 to i64*
  %1331 = load i64, i64* %1330, align 8
  store i64 %1331, i64* %RAX.i238, align 8
  %1332 = add i64 %1331, 4
  %1333 = add i64 %1328, 7
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RCX.i512, align 8
  %1337 = add i64 %1326, -52
  %1338 = add i64 %1328, 10
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i32*
  %1340 = load i32, i32* %1339, align 4
  %1341 = add i32 %1340, %1335
  %1342 = zext i32 %1341 to i64
  store i64 %1342, i64* %RCX.i512, align 8
  %1343 = icmp ult i32 %1341, %1335
  %1344 = icmp ult i32 %1341, %1340
  %1345 = or i1 %1343, %1344
  %1346 = zext i1 %1345 to i8
  store i8 %1346, i8* %12, align 1
  %1347 = and i32 %1341, 255
  %1348 = tail call i32 @llvm.ctpop.i32(i32 %1347)
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 1
  %1351 = xor i8 %1350, 1
  store i8 %1351, i8* %13, align 1
  %1352 = xor i32 %1340, %1335
  %1353 = xor i32 %1352, %1341
  %1354 = lshr i32 %1353, 4
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  store i8 %1356, i8* %14, align 1
  %1357 = icmp eq i32 %1341, 0
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %15, align 1
  %1359 = lshr i32 %1341, 31
  %1360 = trunc i32 %1359 to i8
  store i8 %1360, i8* %16, align 1
  %1361 = lshr i32 %1335, 31
  %1362 = lshr i32 %1340, 31
  %1363 = xor i32 %1359, %1361
  %1364 = xor i32 %1359, %1362
  %1365 = add nuw nsw i32 %1363, %1364
  %1366 = icmp eq i32 %1365, 2
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %17, align 1
  %1368 = add i64 %1328, 13
  store i64 %1368, i64* %3, align 8
  store i32 %1341, i32* %1339, align 4
  %.pre34 = load i64, i64* %RBP.i, align 8
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_400eee

block_.L_400eee:                                  ; preds = %block_.L_400eae, %block_400ed5
  %1369 = phi i64 [ %.pre35, %block_400ed5 ], [ %1285, %block_.L_400eae ]
  %1370 = phi i64 [ %.pre34, %block_400ed5 ], [ %1226, %block_.L_400eae ]
  %1371 = add i64 %1370, -48
  %1372 = add i64 %1369, 4
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1371 to i32*
  %1374 = load i32, i32* %1373, align 4
  %1375 = sext i32 %1374 to i64
  store i64 %1375, i64* %RAX.i238, align 8
  %1376 = add i64 %1370, -80
  %1377 = add i64 %1369, 8
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i64*
  %1379 = load i64, i64* %1378, align 8
  %1380 = add i64 %1379, %1375
  %1381 = and i64 %1380, 1
  store i64 %1381, i64* %RAX.i238, align 8
  store i8 0, i8* %12, align 1
  %1382 = trunc i64 %1381 to i32
  %1383 = tail call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = xor i8 %1384, 1
  store i8 %1385, i8* %13, align 1
  %1386 = trunc i64 %1381 to i8
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %1381, i64* %RCX.i512, align 8
  %1388 = add i64 %1370, -40
  %1389 = add i64 %1369, 18
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i64*
  %1391 = load i64, i64* %1390, align 8
  store i64 %1391, i64* %RAX.i238, align 8
  %1392 = add i64 %1369, 20
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  store i32 %1382, i32* %1393, align 4
  %1394 = load i64, i64* %3, align 8
  %1395 = add i64 %1394, -2162
  %1396 = add i64 %1394, 5
  %1397 = load i64, i64* %6, align 8
  %1398 = add i64 %1397, -8
  %1399 = inttoptr i64 %1398 to i64*
  store i64 %1396, i64* %1399, align 8
  store i64 %1398, i64* %6, align 8
  store i64 %1395, i64* %3, align 8
  %call2_400f02 = tail call %struct.Memory* @sub_400690.lrand48_plt(%struct.State* nonnull %0, i64 %1395, %struct.Memory* %call2_400eae)
  %1400 = load i64, i64* %3, align 8
  %1401 = add i64 %1400, 433
  %1402 = add i64 %1400, 8
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i64*
  %1404 = load i64, i64* %1403, align 8
  store i64 %1404, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  store i64 10000, i64* %RCX.i512, align 8
  %1405 = load i64, i64* %RBP.i, align 8
  %1406 = add i64 %1405, -120
  %1407 = add i64 %1400, 19
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i64*
  store i64 10000, i64* %1408, align 8
  %1409 = load i64, i64* %3, align 8
  %1410 = load i64, i64* %180, align 8
  %1411 = ashr i64 %1410, 63
  store i64 %1411, i64* %83, align 8
  %1412 = load i64, i64* %RBP.i, align 8
  %1413 = add i64 %1412, -120
  %1414 = add i64 %1409, 6
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i64*
  %1416 = load i64, i64* %1415, align 8
  store i64 %1416, i64* %RSI.i418, align 8
  %1417 = add i64 %1409, 9
  store i64 %1417, i64* %3, align 8
  %1418 = sext i64 %1416 to i128
  %1419 = and i128 %1418, -18446744073709551616
  %1420 = zext i64 %1411 to i128
  %1421 = shl nuw i128 %1420, 64
  %1422 = zext i64 %1410 to i128
  %1423 = or i128 %1421, %1422
  %1424 = zext i64 %1416 to i128
  %1425 = or i128 %1419, %1424
  %1426 = sdiv i128 %1423, %1425
  %1427 = trunc i128 %1426 to i64
  %1428 = and i128 %1426, 18446744073709551615
  %1429 = sext i64 %1427 to i128
  %1430 = and i128 %1429, -18446744073709551616
  %1431 = or i128 %1430, %1428
  %1432 = icmp eq i128 %1426, %1431
  br i1 %1432, label %1435, label %1433

; <label>:1433:                                   ; preds = %block_.L_400eee
  %1434 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1417, %struct.Memory* %call2_400f02)
  %.pre36 = load i64, i64* %RDX.i559, align 8
  %.pre37 = load i64, i64* %3, align 8
  %.pre38 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit

; <label>:1435:                                   ; preds = %block_.L_400eee
  %1436 = srem i128 %1423, %1425
  %1437 = trunc i128 %1436 to i64
  store i64 %1427, i64* %180, align 8
  store i64 %1437, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit

routine_idivq__rsi.exit:                          ; preds = %1435, %1433
  %1438 = phi i64 [ %.pre38, %1433 ], [ %1412, %1435 ]
  %1439 = phi i64 [ %.pre37, %1433 ], [ %1417, %1435 ]
  %1440 = phi i64 [ %.pre36, %1433 ], [ %1437, %1435 ]
  %1441 = phi %struct.Memory* [ %1434, %1433 ], [ %call2_400f02, %1435 ]
  %1442 = sitofp i64 %1440 to double
  %1443 = load double, double* %35, align 1
  %1444 = fdiv double %1442, %1443
  store double %1444, double* %182, align 1
  %1445 = add i64 %1438, -88
  %1446 = add i64 %1439, 14
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to double*
  store double %1444, double* %1447, align 8
  %1448 = load i64, i64* %RBP.i, align 8
  %1449 = add i64 %1448, -24
  %1450 = load i64, i64* %3, align 8
  %1451 = add i64 %1450, 5
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1449 to i64*
  %1453 = load i64, i64* %1452, align 8
  store i64 %1453, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  %1454 = add i64 %1448, -88
  %1455 = add i64 %1450, 10
  store i64 %1455, i64* %3, align 8
  %1456 = bitcast i64 %1453 to double
  %1457 = inttoptr i64 %1454 to double*
  %1458 = load double, double* %1457, align 8
  %1459 = fcmp uno double %1456, %1458
  br i1 %1459, label %1460, label %1470

; <label>:1460:                                   ; preds = %routine_idivq__rsi.exit
  %1461 = fadd double %1456, %1458
  %1462 = bitcast double %1461 to i64
  %1463 = and i64 %1462, 9221120237041090560
  %1464 = icmp eq i64 %1463, 9218868437227405312
  %1465 = and i64 %1462, 2251799813685247
  %1466 = icmp ne i64 %1465, 0
  %1467 = and i1 %1464, %1466
  br i1 %1467, label %1468, label %1476

; <label>:1468:                                   ; preds = %1460
  %1469 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1455, %struct.Memory* %1441)
  %.pre39 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit

; <label>:1470:                                   ; preds = %routine_idivq__rsi.exit
  %1471 = fcmp ogt double %1456, %1458
  br i1 %1471, label %1476, label %1472

; <label>:1472:                                   ; preds = %1470
  %1473 = fcmp olt double %1456, %1458
  br i1 %1473, label %1476, label %1474

; <label>:1474:                                   ; preds = %1472
  %1475 = fcmp oeq double %1456, %1458
  br i1 %1475, label %1476, label %1480

; <label>:1476:                                   ; preds = %1474, %1472, %1470, %1460
  %1477 = phi i8 [ 0, %1470 ], [ 0, %1472 ], [ 1, %1474 ], [ 1, %1460 ]
  %1478 = phi i8 [ 0, %1470 ], [ 0, %1472 ], [ 0, %1474 ], [ 1, %1460 ]
  %1479 = phi i8 [ 0, %1470 ], [ 1, %1472 ], [ 0, %1474 ], [ 1, %1460 ]
  store i8 %1477, i8* %15, align 1
  store i8 %1478, i8* %13, align 1
  store i8 %1479, i8* %12, align 1
  br label %1480

; <label>:1480:                                   ; preds = %1476, %1474
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit

routine_ucomisd_MINUS0x58__rbp____xmm0.exit:      ; preds = %1480, %1468
  %1481 = phi i64 [ %.pre39, %1468 ], [ %1455, %1480 ]
  %1482 = phi %struct.Memory* [ %1469, %1468 ], [ %1441, %1480 ]
  %1483 = add i64 %1481, 18
  %1484 = add i64 %1481, 6
  %1485 = load i8, i8* %12, align 1
  %1486 = load i8, i8* %15, align 1
  %1487 = or i8 %1486, %1485
  %1488 = icmp ne i8 %1487, 0
  %1489 = select i1 %1488, i64 %1483, i64 %1484
  store i64 %1489, i64* %3, align 8
  br i1 %1488, label %block_.L_400f4d, label %block_400f41

block_400f41:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit
  %1490 = load i64, i64* %RBP.i, align 8
  %1491 = add i64 %1490, -80
  %1492 = add i64 %1489, 4
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i64*
  %1494 = load i64, i64* %1493, align 8
  %1495 = xor i64 %1494, 1
  store i64 %1495, i64* %RAX.i238, align 8
  store i8 0, i8* %12, align 1
  %1496 = trunc i64 %1495 to i32
  %1497 = and i32 %1496, 255
  %1498 = tail call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %13, align 1
  %1502 = icmp eq i64 %1495, 0
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %15, align 1
  %1504 = lshr i64 %1494, 63
  %1505 = trunc i64 %1504 to i8
  store i8 %1505, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1506 = add i64 %1489, 12
  store i64 %1506, i64* %3, align 8
  store i64 %1495, i64* %1493, align 8
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_400f4d

block_.L_400f4d:                                  ; preds = %block_400f41, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit
  %1507 = phi i64 [ %.pre40, %block_400f41 ], [ %1483, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit ]
  %1508 = load i64, i64* %RBP.i, align 8
  %1509 = add i64 %1508, -52
  %1510 = add i64 %1507, 4
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = sext i32 %1512 to i64
  store i64 %1513, i64* %RAX.i238, align 8
  %1514 = add i64 %1508, -80
  %1515 = add i64 %1507, 8
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i64*
  %1517 = load i64, i64* %1516, align 8
  %1518 = add i64 %1517, %1513
  %1519 = and i64 %1518, 1
  store i64 %1519, i64* %RAX.i238, align 8
  store i8 0, i8* %12, align 1
  %1520 = trunc i64 %1519 to i32
  %1521 = tail call i32 @llvm.ctpop.i32(i32 %1520)
  %1522 = trunc i32 %1521 to i8
  %1523 = xor i8 %1522, 1
  store i8 %1523, i8* %13, align 1
  %1524 = trunc i64 %1519 to i8
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %1519, i64* %RCX.i512, align 8
  %1526 = add i64 %1508, -40
  %1527 = add i64 %1507, 18
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i64*
  %1529 = load i64, i64* %1528, align 8
  store i64 %1529, i64* %RAX.i238, align 8
  %1530 = add i64 %1529, 4
  %1531 = add i64 %1507, 21
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1530 to i32*
  store i32 %1520, i32* %1532, align 4
  %1533 = load i64, i64* %RBP.i, align 8
  %1534 = add i64 %1533, -16
  %1535 = load i64, i64* %3, align 8
  %1536 = add i64 %1535, 4
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1534 to i64*
  %1538 = load i64, i64* %1537, align 8
  store i64 %1538, i64* %RAX.i238, align 8
  %1539 = add i64 %1533, -40
  %1540 = add i64 %1535, 8
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i64*
  store i64 %1538, i64* %1541, align 8
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -64
  %1544 = load i64, i64* %3, align 8
  %1545 = add i64 %1544, 3
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1543 to i32*
  %1547 = load i32, i32* %1546, align 4
  %1548 = add i32 %1547, 1
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RAX.i238, align 8
  %1550 = icmp eq i32 %1547, -1
  %1551 = icmp eq i32 %1548, 0
  %1552 = or i1 %1550, %1551
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %12, align 1
  %1554 = and i32 %1548, 255
  %1555 = tail call i32 @llvm.ctpop.i32(i32 %1554)
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  store i8 %1558, i8* %13, align 1
  %1559 = xor i32 %1548, %1547
  %1560 = lshr i32 %1559, 4
  %1561 = trunc i32 %1560 to i8
  %1562 = and i8 %1561, 1
  store i8 %1562, i8* %14, align 1
  %1563 = zext i1 %1551 to i8
  store i8 %1563, i8* %15, align 1
  %1564 = lshr i32 %1548, 31
  %1565 = trunc i32 %1564 to i8
  store i8 %1565, i8* %16, align 1
  %1566 = lshr i32 %1547, 31
  %1567 = xor i32 %1564, %1566
  %1568 = add nuw nsw i32 %1567, %1564
  %1569 = icmp eq i32 %1568, 2
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %17, align 1
  %1571 = add i64 %1544, 9
  store i64 %1571, i64* %3, align 8
  store i32 %1548, i32* %1546, align 4
  %1572 = load i64, i64* %3, align 8
  %1573 = add i64 %1572, -757
  store i64 %1573, i64* %3, align 8
  br label %block_.L_400c7e

block_.L_400f78:                                  ; preds = %block_.L_400c7e
  %1574 = add i64 %184, -68
  %1575 = add i64 %220, 7
  store i64 %1575, i64* %3, align 8
  %1576 = inttoptr i64 %1574 to i32*
  store i32 0, i32* %1576, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_400f7f

block_.L_400f7f:                                  ; preds = %block_.L_400fa9, %block_.L_400f78
  %1577 = phi i64 [ %1696, %block_.L_400fa9 ], [ %.pre29, %block_.L_400f78 ]
  %1578 = load i64, i64* %RBP.i, align 8
  %1579 = add i64 %1578, -68
  %1580 = add i64 %1577, 3
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = zext i32 %1582 to i64
  store i64 %1583, i64* %RAX.i238, align 8
  %1584 = load i32, i32* inttoptr (i64 6299764 to i32*), align 4
  %1585 = sub i32 %1582, %1584
  %1586 = icmp ult i32 %1582, %1584
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %12, align 1
  %1588 = and i32 %1585, 255
  %1589 = tail call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  store i8 %1592, i8* %13, align 1
  %1593 = xor i32 %1584, %1582
  %1594 = xor i32 %1593, %1585
  %1595 = lshr i32 %1594, 4
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  store i8 %1597, i8* %14, align 1
  %1598 = icmp eq i32 %1585, 0
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %15, align 1
  %1600 = lshr i32 %1585, 31
  %1601 = trunc i32 %1600 to i8
  store i8 %1601, i8* %16, align 1
  %1602 = lshr i32 %1582, 31
  %1603 = lshr i32 %1584, 31
  %1604 = xor i32 %1603, %1602
  %1605 = xor i32 %1600, %1602
  %1606 = add nuw nsw i32 %1605, %1604
  %1607 = icmp eq i32 %1606, 2
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %17, align 1
  %1609 = icmp ne i8 %1601, 0
  %1610 = xor i1 %1609, %1607
  %.v55 = select i1 %1610, i64 16, i64 68
  %1611 = add i64 %1577, %.v55
  store i64 %1611, i64* %3, align 8
  br i1 %1610, label %block_400f8f, label %block_.L_400fc3

block_400f8f:                                     ; preds = %block_.L_400f7f
  %1612 = add i64 %1578, -40
  %1613 = add i64 %1611, 4
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to i64*
  %1615 = load i64, i64* %1614, align 8
  store i64 %1615, i64* %RAX.i238, align 8
  %1616 = add i64 %1611, 6
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1615 to i32*
  %1618 = load i32, i32* %1617, align 4
  %1619 = zext i32 %1618 to i64
  store i64 %1619, i64* %RCX.i512, align 8
  %1620 = add i64 %1611, 10
  store i64 %1620, i64* %3, align 8
  %1621 = load i64, i64* %1614, align 8
  store i64 %1621, i64* %RAX.i238, align 8
  %1622 = add i64 %1621, 4
  %1623 = add i64 %1611, 13
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = sub i32 %1618, %1625
  %1627 = icmp ult i32 %1618, %1625
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %12, align 1
  %1629 = and i32 %1626, 255
  %1630 = tail call i32 @llvm.ctpop.i32(i32 %1629)
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  %1633 = xor i8 %1632, 1
  store i8 %1633, i8* %13, align 1
  %1634 = xor i32 %1625, %1618
  %1635 = xor i32 %1634, %1626
  %1636 = lshr i32 %1635, 4
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  store i8 %1638, i8* %14, align 1
  %1639 = icmp eq i32 %1626, 0
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %15, align 1
  %1641 = lshr i32 %1626, 31
  %1642 = trunc i32 %1641 to i8
  store i8 %1642, i8* %16, align 1
  %1643 = lshr i32 %1618, 31
  %1644 = lshr i32 %1625, 31
  %1645 = xor i32 %1644, %1643
  %1646 = xor i32 %1641, %1643
  %1647 = add nuw nsw i32 %1646, %1645
  %1648 = icmp eq i32 %1647, 2
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %17, align 1
  %.v56 = select i1 %1639, i64 26, i64 19
  %1650 = add i64 %1611, %.v56
  store i64 %1650, i64* %3, align 8
  br i1 %1639, label %block_.L_400fa9, label %block_400fa2

block_400fa2:                                     ; preds = %block_400f8f
  %1651 = add i64 %1578, -44
  %1652 = add i64 %1650, 7
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i32*
  store i32 1, i32* %1653, align 4
  %.pre30 = load i64, i64* %RBP.i, align 8
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_400fa9

block_.L_400fa9:                                  ; preds = %block_400fa2, %block_400f8f
  %1654 = phi i64 [ %.pre31, %block_400fa2 ], [ %1650, %block_400f8f ]
  %1655 = phi i64 [ %.pre30, %block_400fa2 ], [ %1578, %block_400f8f ]
  %1656 = add i64 %1655, -40
  %1657 = add i64 %1654, 4
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i64*
  %1659 = load i64, i64* %1658, align 8
  store i64 %1659, i64* %RAX.i238, align 8
  %1660 = add i64 %1659, 8
  %1661 = add i64 %1654, 8
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to i64*
  %1663 = load i64, i64* %1662, align 8
  store i64 %1663, i64* %RAX.i238, align 8
  %1664 = add i64 %1654, 12
  store i64 %1664, i64* %3, align 8
  store i64 %1663, i64* %1658, align 8
  %1665 = load i64, i64* %RBP.i, align 8
  %1666 = add i64 %1665, -68
  %1667 = load i64, i64* %3, align 8
  %1668 = add i64 %1667, 3
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1666 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = add i32 %1670, 1
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RAX.i238, align 8
  %1673 = icmp eq i32 %1670, -1
  %1674 = icmp eq i32 %1671, 0
  %1675 = or i1 %1673, %1674
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %12, align 1
  %1677 = and i32 %1671, 255
  %1678 = tail call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %13, align 1
  %1682 = xor i32 %1671, %1670
  %1683 = lshr i32 %1682, 4
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  store i8 %1685, i8* %14, align 1
  %1686 = zext i1 %1674 to i8
  store i8 %1686, i8* %15, align 1
  %1687 = lshr i32 %1671, 31
  %1688 = trunc i32 %1687 to i8
  store i8 %1688, i8* %16, align 1
  %1689 = lshr i32 %1670, 31
  %1690 = xor i32 %1687, %1689
  %1691 = add nuw nsw i32 %1690, %1687
  %1692 = icmp eq i32 %1691, 2
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %17, align 1
  %1694 = add i64 %1667, 9
  store i64 %1694, i64* %3, align 8
  store i32 %1671, i32* %1669, align 4
  %1695 = load i64, i64* %3, align 8
  %1696 = add i64 %1695, -63
  store i64 %1696, i64* %3, align 8
  br label %block_.L_400f7f

block_.L_400fc3:                                  ; preds = %block_.L_400f7f
  %1697 = add i64 %1578, -44
  %1698 = add i64 %1611, 3
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1697 to i32*
  %1700 = load i32, i32* %1699, align 4
  %1701 = zext i32 %1700 to i64
  store i64 %1701, i64* %RAX.i238, align 8
  %1702 = load i64, i64* %6, align 8
  %1703 = add i64 %1702, 128
  store i64 %1703, i64* %6, align 8
  %1704 = icmp ugt i64 %1702, -129
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %12, align 1
  %1706 = trunc i64 %1703 to i32
  %1707 = and i32 %1706, 255
  %1708 = tail call i32 @llvm.ctpop.i32(i32 %1707)
  %1709 = trunc i32 %1708 to i8
  %1710 = and i8 %1709, 1
  %1711 = xor i8 %1710, 1
  store i8 %1711, i8* %13, align 1
  %1712 = xor i64 %1703, %1702
  %1713 = lshr i64 %1712, 4
  %1714 = trunc i64 %1713 to i8
  %1715 = and i8 %1714, 1
  store i8 %1715, i8* %14, align 1
  %1716 = icmp eq i64 %1703, 0
  %1717 = zext i1 %1716 to i8
  store i8 %1717, i8* %15, align 1
  %1718 = lshr i64 %1703, 63
  %1719 = trunc i64 %1718 to i8
  store i8 %1719, i8* %16, align 1
  %1720 = lshr i64 %1702, 63
  %1721 = xor i64 %1718, %1720
  %1722 = add nuw nsw i64 %1721, %1718
  %1723 = icmp eq i64 %1722, 2
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %17, align 1
  %1725 = add i64 %1611, 11
  store i64 %1725, i64* %3, align 8
  %1726 = add i64 %1702, 136
  %1727 = inttoptr i64 %1703 to i64*
  %1728 = load i64, i64* %1727, align 8
  store i64 %1728, i64* %RBP.i, align 8
  store i64 %1726, i64* %6, align 8
  %1729 = add i64 %1611, 12
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1726 to i64*
  %1731 = load i64, i64* %1730, align 8
  store i64 %1731, i64* %3, align 8
  %1732 = add i64 %1702, 144
  store i64 %1732, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movl__0x1f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 31, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x602074___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299764 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x602074___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299764 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400f78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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
define %struct.Memory* @routine_jge_.L_400db5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.lrand48_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1f__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %8, 31
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
define %struct.Memory* @routine_jge_.L_400da2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x1f__MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 31
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 133143986176
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
define %struct.Memory* @routine_addl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x31___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -49
  %8 = icmp ult i32 %4, 49
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400cf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movslq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RAX, align 8
  %11 = icmp ult i64 %10, %3
  %12 = icmp ult i64 %10, %9
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %9, %3
  %24 = xor i64 %23, %10
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %10, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %3, 63
  %36 = lshr i64 %9, 63
  %37 = xor i64 %32, %35
  %38 = xor i64 %32, %36
  %39 = add nuw nsw i64 %37, %38
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
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
define %struct.Memory* @routine_movsd_0x39f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 935
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3e8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1000, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cqto(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = ashr i64 %7, 63
  store i64 %8, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivq__rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400488
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400488
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
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
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq__rdx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = sitofp i64 %4 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

define %struct.Memory* @routine_ucomisd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fcmp uno double %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400488
  %14 = fadd double %9, %11
  %15 = bitcast double %14 to i64
  %16 = and i64 %15, 9221120237041090560
  %17 = icmp eq i64 %16, 9218868437227405312
  %18 = and i64 %15, 2251799813685247
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = fcmp ogt double %9, %11
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt double %9, %11
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq double %9, %11
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %13
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %13 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %13 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %13 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %21
  %40 = phi %struct.Memory* [ %22, %21 ], [ %2, %36 ]
  ret %struct.Memory* %40
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400d5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i64 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i8
  %7 = and i8 %6, 1
  %8 = ashr i64 %3, 1
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %11 = trunc i64 %8 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  store i8 %16, i8* %10, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %19 = icmp eq i64 %8, 0
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = lshr i64 %8, 63
  %23 = trunc i64 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
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
define %struct.Memory* @routine_jmpq_.L_400cbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400da7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_400c9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jge_.L_400eae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x1f__MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
  %10 = mul nsw i64 %9, 31
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 133143986176
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
define %struct.Memory* @routine_jne_.L_400e05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x293__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 667
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400e6b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400dc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x602074___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* inttoptr (i64 6299764 to i32*), align 4
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_400eee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movsd_0x1a9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 433
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2710___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10000, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400f4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jmpq_.L_400c7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x602074___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* inttoptr (i64 6299764 to i32*), align 4
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
define %struct.Memory* @routine_jge_.L_400fc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_400fa9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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
