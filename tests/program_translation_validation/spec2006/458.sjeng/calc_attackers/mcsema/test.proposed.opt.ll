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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline
define %struct.Memory* @calc_attackers(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %11 to i32*
  %12 = add i64 %7, -16
  %13 = load i32, i32* %EDI.i, align 4
  %14 = add i64 %10, 6
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %15, align 4
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %16 to i32*
  %17 = load i64, i64* %RBP.i, align 8
  %18 = add i64 %17, -12
  %19 = load i32, i32* %ESI.i, align 4
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 3
  store i64 %21, i64* %3, align 8
  %22 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %22, align 4
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -24
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 7
  store i64 %26, i64* %3, align 8
  %27 = inttoptr i64 %24 to i32*
  store i32 0, i32* %27, align 4
  %RAX.i566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %28 = load i64, i64* %RBP.i, align 8
  %29 = add i64 %28, -8
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 4
  store i64 %31, i64* %3, align 8
  %32 = inttoptr i64 %29 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %RAX.i566, align 8
  %35 = shl nsw i64 %34, 2
  %36 = add nsw i64 %35, 8807744
  %37 = add i64 %30, 12
  store i64 %37, i64* %3, align 8
  %38 = inttoptr i64 %36 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %40, align 1
  %41 = and i32 %39, 255
  %42 = tail call i32 @llvm.ctpop.i32(i32 %41)
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  %48 = icmp eq i32 %39, 0
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %49, i8* %50, align 1
  %51 = lshr i32 %39, 31
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %52, i8* %53, align 1
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %54, align 1
  %.v177 = select i1 %48, i64 18, i64 30
  %55 = add i64 %30, %.v177
  store i64 %55, i64* %3, align 8
  br i1 %48, label %block_400f23, label %block_.L_400f2f

block_400f23:                                     ; preds = %entry
  %56 = add i64 %28, -4
  %57 = add i64 %55, 7
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  store i32 0, i32* %58, align 4
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 1186
  store i64 %60, i64* %3, align 8
  br label %block_.L_4013cc

block_.L_400f2f:                                  ; preds = %entry
  store i64 2, i64* %RAX.i566, align 8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i555 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %62 = add i64 %28, -12
  %63 = add i64 %55, 8
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %RCX.i555, align 8
  %67 = add i64 %28, -28
  %68 = add i64 %55, 11
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i32*
  store i32 2, i32* %69, align 4
  %ECX.i549 = bitcast %union.anon* %61 to i32*
  %70 = load i32, i32* %ECX.i549, align 4
  %71 = zext i32 %70 to i64
  %72 = load i64, i64* %3, align 8
  store i64 %71, i64* %RAX.i566, align 8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %74 = sext i32 %70 to i64
  %75 = lshr i64 %74, 32
  store i64 %75, i64* %73, align 8
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -28
  %78 = add i64 %72, 6
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %RCX.i555, align 8
  %82 = add i64 %72, 8
  store i64 %82, i64* %3, align 8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %84 = bitcast %union.anon* %83 to i32*
  %85 = sext i32 %80 to i64
  %86 = shl nuw i64 %75, 32
  %87 = or i64 %86, %71
  %88 = sdiv i64 %87, %85
  %89 = shl i64 %88, 32
  %90 = ashr exact i64 %89, 32
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %94, label %92

; <label>:92:                                     ; preds = %block_.L_400f2f
  %93 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %82, %struct.Memory* %2)
  %.pre = load i32, i32* %84, align 4
  %.pre129 = load i64, i64* %3, align 8
  %.pre130 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit541

; <label>:94:                                     ; preds = %block_.L_400f2f
  %95 = srem i64 %87, %85
  %96 = and i64 %88, 4294967295
  store i64 %96, i64* %RAX.i566, align 8
  %97 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0
  %98 = and i64 %95, 4294967295
  store i64 %98, i64* %97, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %99 = trunc i64 %95 to i32
  br label %routine_idivl__ecx.exit541

routine_idivl__ecx.exit541:                       ; preds = %94, %92
  %100 = phi i64 [ %.pre130, %92 ], [ %76, %94 ]
  %101 = phi i64 [ %.pre129, %92 ], [ %82, %94 ]
  %102 = phi i32 [ %.pre, %92 ], [ %99, %94 ]
  %103 = phi %struct.Memory* [ %93, %92 ], [ %2, %94 ]
  store i8 0, i8* %40, align 1
  %104 = and i32 %102, 255
  %105 = tail call i32 @llvm.ctpop.i32(i32 %104)
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  store i8 %108, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %109 = icmp eq i32 %102, 0
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %50, align 1
  %111 = lshr i32 %102, 31
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %.v = select i1 %109, i64 585, i64 9
  %113 = add i64 %101, %.v
  %114 = add i64 %100, -20
  %115 = add i64 %113, 7
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 0, i32* %116, align 4
  %.pre145 = load i64, i64* %3, align 8
  br i1 %109, label %block_.L_401192.preheader, label %block_.L_400f52.preheader

block_.L_400f52.preheader:                        ; preds = %routine_idivl__ecx.exit541
  br label %block_.L_400f52

block_.L_401192.preheader:                        ; preds = %routine_idivl__ecx.exit541
  br label %block_.L_401192

block_.L_400f52:                                  ; preds = %block_.L_400f52.preheader, %block_.L_401008
  %117 = phi i64 [ %473, %block_.L_401008 ], [ %.pre145, %block_.L_400f52.preheader ]
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -20
  %120 = add i64 %117, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %122, -4
  %124 = icmp ult i32 %122, 4
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %40, align 1
  %126 = and i32 %123, 255
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %46, align 1
  %131 = xor i32 %123, %122
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %47, align 1
  %135 = icmp eq i32 %123, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %50, align 1
  %137 = lshr i32 %123, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %53, align 1
  %139 = lshr i32 %122, 31
  %140 = xor i32 %137, %139
  %141 = add nuw nsw i32 %140, %139
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %54, align 1
  %144 = icmp ne i8 %138, 0
  %145 = xor i1 %144, %142
  %.v178 = select i1 %145, i64 10, i64 206
  %146 = add i64 %117, %.v178
  store i64 %146, i64* %3, align 8
  br i1 %145, label %block_400f5c, label %block_.L_401020.loopexit

block_400f5c:                                     ; preds = %block_.L_400f52
  %147 = add i64 %118, -8
  %148 = add i64 %146, 3
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RAX.i566, align 8
  %152 = add i64 %146, 7
  store i64 %152, i64* %3, align 8
  %153 = load i32, i32* %121, align 4
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %RCX.i555, align 8
  %155 = shl nsw i64 %154, 2
  %156 = add nsw i64 %155, 4347152
  %157 = add i64 %146, 14
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = add i32 %159, %150
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RAX.i566, align 8
  %162 = icmp ult i32 %160, %150
  %163 = icmp ult i32 %160, %159
  %164 = or i1 %162, %163
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %40, align 1
  %166 = and i32 %160, 255
  %167 = tail call i32 @llvm.ctpop.i32(i32 %166)
  %168 = trunc i32 %167 to i8
  %169 = and i8 %168, 1
  %170 = xor i8 %169, 1
  store i8 %170, i8* %46, align 1
  %171 = xor i32 %159, %150
  %172 = xor i32 %171, %160
  %173 = lshr i32 %172, 4
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  store i8 %175, i8* %47, align 1
  %176 = icmp eq i32 %160, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %50, align 1
  %178 = lshr i32 %160, 31
  %179 = trunc i32 %178 to i8
  store i8 %179, i8* %53, align 1
  %180 = lshr i32 %150, 31
  %181 = lshr i32 %159, 31
  %182 = xor i32 %178, %180
  %183 = xor i32 %178, %181
  %184 = add nuw nsw i32 %182, %183
  %185 = icmp eq i32 %184, 2
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %54, align 1
  %187 = add i64 %118, -16
  %188 = add i64 %146, 17
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  store i32 %160, i32* %189, align 4
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -16
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 4
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %191 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %RCX.i555, align 8
  %197 = shl nsw i64 %196, 2
  %198 = add nsw i64 %197, 8807744
  %199 = add i64 %192, 12
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = add i32 %201, -5
  %203 = icmp ult i32 %201, 5
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %40, align 1
  %205 = and i32 %202, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %46, align 1
  %210 = xor i32 %202, %201
  %211 = lshr i32 %210, 4
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %47, align 1
  %214 = icmp eq i32 %202, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %50, align 1
  %216 = lshr i32 %202, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %53, align 1
  %218 = lshr i32 %201, 31
  %219 = xor i32 %216, %218
  %220 = add nuw nsw i32 %219, %218
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %54, align 1
  %.v185 = select i1 %214, i64 18, i64 32
  %223 = add i64 %192, %.v185
  store i64 %223, i64* %3, align 8
  br i1 %214, label %block_400f7f, label %block_.L_400f8d

block_400f7f:                                     ; preds = %block_400f5c
  %224 = add i64 %190, -24
  %225 = add i64 %223, 3
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = add i32 %227, 1
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RAX.i566, align 8
  %230 = icmp eq i32 %227, -1
  %231 = icmp eq i32 %228, 0
  %232 = or i1 %230, %231
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %40, align 1
  %234 = and i32 %228, 255
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %46, align 1
  %239 = xor i32 %228, %227
  %240 = lshr i32 %239, 4
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  store i8 %242, i8* %47, align 1
  %243 = zext i1 %231 to i8
  store i8 %243, i8* %50, align 1
  %244 = lshr i32 %228, 31
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %53, align 1
  %246 = lshr i32 %227, 31
  %247 = xor i32 %244, %246
  %248 = add nuw nsw i32 %247, %244
  %249 = icmp eq i32 %248, 2
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %54, align 1
  %251 = add i64 %223, 9
  store i64 %251, i64* %3, align 8
  store i32 %228, i32* %226, align 4
  %252 = load i64, i64* %3, align 8
  %253 = add i64 %252, 152
  store i64 %253, i64* %3, align 8
  %.pre132 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401020

block_.L_400f8d:                                  ; preds = %block_400f5c
  %254 = add i64 %223, 5
  br label %block_.L_400f92

block_.L_400f92:                                  ; preds = %block_.L_400fed, %block_.L_400f8d
  %255 = phi i64 [ %190, %block_.L_400f8d ], [ %.pre143, %block_.L_400fed ]
  %storemerge35 = phi i64 [ %254, %block_.L_400f8d ], [ %440, %block_.L_400fed ]
  %256 = add i64 %255, -16
  %257 = add i64 %storemerge35, 4
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  store i64 %260, i64* %RAX.i566, align 8
  %261 = shl nsw i64 %260, 2
  %262 = add nsw i64 %261, 8807744
  %263 = add i64 %storemerge35, 12
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  %265 = load i32, i32* %264, align 4
  store i8 0, i8* %40, align 1
  %266 = and i32 %265, 255
  %267 = tail call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  store i8 %270, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %271 = icmp eq i32 %265, 0
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %50, align 1
  %273 = lshr i32 %265, 31
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %.v172 = select i1 %271, i64 118, i64 18
  %275 = add i64 %storemerge35, %.v172
  store i64 %275, i64* %3, align 8
  br i1 %271, label %block_.L_401008.loopexit, label %block_400fa4

block_400fa4:                                     ; preds = %block_.L_400f92
  %276 = add i64 %275, 4
  store i64 %276, i64* %3, align 8
  %277 = load i32, i32* %258, align 4
  %278 = sext i32 %277 to i64
  store i64 %278, i64* %RAX.i566, align 8
  %279 = shl nsw i64 %278, 2
  %280 = add nsw i64 %279, 8807744
  %281 = add i64 %275, 12
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = add i32 %283, -7
  %285 = icmp ult i32 %283, 7
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %40, align 1
  %287 = and i32 %284, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %46, align 1
  %292 = xor i32 %284, %283
  %293 = lshr i32 %292, 4
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %47, align 1
  %296 = icmp eq i32 %284, 0
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %50, align 1
  %298 = lshr i32 %284, 31
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %53, align 1
  %300 = lshr i32 %283, 31
  %301 = xor i32 %298, %300
  %302 = add nuw nsw i32 %301, %300
  %303 = icmp eq i32 %302, 2
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %54, align 1
  %.v171 = select i1 %296, i64 36, i64 18
  %305 = add i64 %275, %.v171
  store i64 %305, i64* %3, align 8
  br i1 %296, label %block_.L_400fc8, label %block_400fb6

block_400fb6:                                     ; preds = %block_400fa4
  %306 = add i64 %305, 4
  store i64 %306, i64* %3, align 8
  %307 = load i32, i32* %258, align 4
  %308 = sext i32 %307 to i64
  store i64 %308, i64* %RAX.i566, align 8
  %309 = shl nsw i64 %308, 2
  %310 = add nsw i64 %309, 8807744
  %311 = add i64 %305, 12
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  %313 = load i32, i32* %312, align 4
  %314 = add i32 %313, -9
  %315 = icmp ult i32 %313, 9
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %40, align 1
  %317 = and i32 %314, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %46, align 1
  %322 = xor i32 %314, %313
  %323 = lshr i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %47, align 1
  %326 = icmp eq i32 %314, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %50, align 1
  %328 = lshr i32 %314, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %53, align 1
  %330 = lshr i32 %313, 31
  %331 = xor i32 %328, %330
  %332 = add nuw nsw i32 %331, %330
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %54, align 1
  %.v170 = select i1 %326, i64 18, i64 32
  %335 = add i64 %305, %.v170
  store i64 %335, i64* %3, align 8
  br i1 %326, label %block_.L_400fc8, label %block_.L_400fd6

block_.L_400fc8:                                  ; preds = %block_400fb6, %block_400fa4
  %336 = phi i64 [ %335, %block_400fb6 ], [ %305, %block_400fa4 ]
  %337 = add i64 %255, -24
  %338 = add i64 %336, 3
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = add i32 %340, 1
  %342 = zext i32 %341 to i64
  store i64 %342, i64* %RAX.i566, align 8
  %343 = icmp eq i32 %340, -1
  %344 = icmp eq i32 %341, 0
  %345 = or i1 %343, %344
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %40, align 1
  %347 = and i32 %341, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347)
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %46, align 1
  %352 = xor i32 %341, %340
  %353 = lshr i32 %352, 4
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  store i8 %355, i8* %47, align 1
  %356 = zext i1 %344 to i8
  store i8 %356, i8* %50, align 1
  %357 = lshr i32 %341, 31
  %358 = trunc i32 %357 to i8
  store i8 %358, i8* %53, align 1
  %359 = lshr i32 %340, 31
  %360 = xor i32 %357, %359
  %361 = add nuw nsw i32 %360, %357
  %362 = icmp eq i32 %361, 2
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %54, align 1
  %364 = add i64 %336, 9
  store i64 %364, i64* %3, align 8
  store i32 %341, i32* %339, align 4
  %365 = load i64, i64* %3, align 8
  %366 = add i64 %365, 55
  %.pre144.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_401008.sink.split

block_.L_400fd6:                                  ; preds = %block_400fb6
  %367 = add i64 %335, 4
  store i64 %367, i64* %3, align 8
  %368 = load i32, i32* %258, align 4
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RAX.i566, align 8
  %370 = shl nsw i64 %369, 2
  %371 = add nsw i64 %370, 8807744
  %372 = add i64 %335, 12
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = add i32 %374, -13
  %376 = icmp ult i32 %374, 13
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %40, align 1
  %378 = and i32 %375, 255
  %379 = tail call i32 @llvm.ctpop.i32(i32 %378)
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  %382 = xor i8 %381, 1
  store i8 %382, i8* %46, align 1
  %383 = xor i32 %375, %374
  %384 = lshr i32 %383, 4
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  store i8 %386, i8* %47, align 1
  %387 = icmp eq i32 %375, 0
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %50, align 1
  %389 = lshr i32 %375, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %53, align 1
  %391 = lshr i32 %374, 31
  %392 = xor i32 %389, %391
  %393 = add nuw nsw i32 %392, %391
  %394 = icmp eq i32 %393, 2
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %54, align 1
  %.v169 = select i1 %387, i64 23, i64 18
  %396 = add i64 %335, %.v169
  store i64 %396, i64* %3, align 8
  br i1 %387, label %block_.L_400fed, label %block_400fe8

block_400fe8:                                     ; preds = %block_.L_400fd6
  %397 = add i64 %396, 32
  br label %block_.L_401008.sink.split

block_.L_400fed:                                  ; preds = %block_.L_400fd6
  %398 = add i64 %255, -20
  %399 = add i64 %396, 9
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  store i64 %402, i64* %RAX.i566, align 8
  %403 = shl nsw i64 %402, 2
  %404 = add nsw i64 %403, 4347152
  %405 = add i64 %396, 16
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RCX.i555, align 8
  %409 = add i64 %396, 19
  store i64 %409, i64* %3, align 8
  %410 = load i32, i32* %258, align 4
  %411 = add i32 %410, %407
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RCX.i555, align 8
  %413 = icmp ult i32 %411, %407
  %414 = icmp ult i32 %411, %410
  %415 = or i1 %413, %414
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %40, align 1
  %417 = and i32 %411, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %46, align 1
  %422 = xor i32 %410, %407
  %423 = xor i32 %422, %411
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %47, align 1
  %427 = icmp eq i32 %411, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %50, align 1
  %429 = lshr i32 %411, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %53, align 1
  %431 = lshr i32 %407, 31
  %432 = lshr i32 %410, 31
  %433 = xor i32 %429, %431
  %434 = xor i32 %429, %432
  %435 = add nuw nsw i32 %433, %434
  %436 = icmp eq i32 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %54, align 1
  %438 = add i64 %396, 22
  store i64 %438, i64* %3, align 8
  store i32 %411, i32* %258, align 4
  %439 = load i64, i64* %3, align 8
  %440 = add i64 %439, -113
  %441 = add i64 %439, 5
  store i64 %441, i64* %3, align 8
  %.pre143 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400f92

block_.L_401008.sink.split:                       ; preds = %block_.L_400fc8, %block_400fe8
  %.pre144 = phi i64 [ %255, %block_400fe8 ], [ %.pre144.pre, %block_.L_400fc8 ]
  %.sink = phi i64 [ %397, %block_400fe8 ], [ %366, %block_.L_400fc8 ]
  store i64 %.sink, i64* %3, align 8
  br label %block_.L_401008

block_.L_401008.loopexit:                         ; preds = %block_.L_400f92
  br label %block_.L_401008

block_.L_401008:                                  ; preds = %block_.L_401008.loopexit, %block_.L_401008.sink.split
  %442 = phi i64 [ %.pre144, %block_.L_401008.sink.split ], [ %255, %block_.L_401008.loopexit ]
  %443 = phi i64 [ %.sink, %block_.L_401008.sink.split ], [ %275, %block_.L_401008.loopexit ]
  %444 = add i64 %442, -20
  %445 = add i64 %443, 13
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = add i32 %447, 1
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX.i566, align 8
  %450 = icmp eq i32 %447, -1
  %451 = icmp eq i32 %448, 0
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %40, align 1
  %454 = and i32 %448, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %46, align 1
  %459 = xor i32 %448, %447
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %47, align 1
  %463 = zext i1 %451 to i8
  store i8 %463, i8* %50, align 1
  %464 = lshr i32 %448, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %53, align 1
  %466 = lshr i32 %447, 31
  %467 = xor i32 %464, %466
  %468 = add nuw nsw i32 %467, %464
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %54, align 1
  %471 = add i64 %443, 19
  store i64 %471, i64* %3, align 8
  store i32 %448, i32* %446, align 4
  %472 = load i64, i64* %3, align 8
  %473 = add i64 %472, -201
  store i64 %473, i64* %3, align 8
  br label %block_.L_400f52

block_.L_401020.loopexit:                         ; preds = %block_.L_400f52
  br label %block_.L_401020

block_.L_401020:                                  ; preds = %block_.L_401020.loopexit, %block_400f7f
  %474 = phi i64 [ %253, %block_400f7f ], [ %146, %block_.L_401020.loopexit ]
  %475 = phi i64 [ %.pre132, %block_400f7f ], [ %118, %block_.L_401020.loopexit ]
  %476 = add i64 %475, -20
  %477 = add i64 %474, 7
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  store i32 0, i32* %478, align 4
  %479 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_401027

block_.L_401027:                                  ; preds = %block_.L_401119, %block_.L_401020
  %480 = phi i64 [ %.pre133, %block_.L_401020 ], [ %921, %block_.L_401119 ]
  %MEMORY.5 = phi %struct.Memory* [ %103, %block_.L_401020 ], [ %MEMORY.6, %block_.L_401119 ]
  %481 = load i64, i64* %RBP.i, align 8
  %482 = add i64 %481, -20
  %483 = add i64 %480, 4
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = add i32 %485, -4
  %487 = icmp ult i32 %485, 4
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %40, align 1
  %489 = and i32 %486, 255
  %490 = tail call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %46, align 1
  %494 = xor i32 %486, %485
  %495 = lshr i32 %494, 4
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %47, align 1
  %498 = icmp eq i32 %486, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %50, align 1
  %500 = lshr i32 %486, 31
  %501 = trunc i32 %500 to i8
  store i8 %501, i8* %53, align 1
  %502 = lshr i32 %485, 31
  %503 = xor i32 %500, %502
  %504 = add nuw nsw i32 %503, %502
  %505 = icmp eq i32 %504, 2
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %54, align 1
  %507 = icmp ne i8 %501, 0
  %508 = xor i1 %507, %505
  %.v179 = select i1 %508, i64 10, i64 271
  %509 = add i64 %480, %.v179
  store i64 %509, i64* %3, align 8
  br i1 %508, label %block_401031, label %block_.L_401136.loopexit

block_401031:                                     ; preds = %block_.L_401027
  %510 = add i64 %481, -8
  %511 = add i64 %509, 3
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %510 to i32*
  %513 = load i32, i32* %512, align 4
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RAX.i566, align 8
  %515 = add i64 %509, 7
  store i64 %515, i64* %3, align 8
  %516 = load i32, i32* %484, align 4
  %517 = sext i32 %516 to i64
  store i64 %517, i64* %RCX.i555, align 8
  %518 = shl nsw i64 %517, 2
  %519 = add nsw i64 %518, 4347168
  %520 = add i64 %509, 14
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = add i32 %522, %513
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RAX.i566, align 8
  %525 = icmp ult i32 %523, %513
  %526 = icmp ult i32 %523, %522
  %527 = or i1 %525, %526
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %40, align 1
  %529 = and i32 %523, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %46, align 1
  %534 = xor i32 %522, %513
  %535 = xor i32 %534, %523
  %536 = lshr i32 %535, 4
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  store i8 %538, i8* %47, align 1
  %539 = icmp eq i32 %523, 0
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %50, align 1
  %541 = lshr i32 %523, 31
  %542 = trunc i32 %541 to i8
  store i8 %542, i8* %53, align 1
  %543 = lshr i32 %513, 31
  %544 = lshr i32 %522, 31
  %545 = xor i32 %541, %543
  %546 = xor i32 %541, %544
  %547 = add nuw nsw i32 %545, %546
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %54, align 1
  %550 = add i64 %481, -16
  %551 = add i64 %509, 17
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  store i32 %523, i32* %552, align 4
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -16
  %555 = load i64, i64* %3, align 8
  %556 = add i64 %555, 4
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %554 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = sext i32 %558 to i64
  store i64 %559, i64* %RCX.i555, align 8
  %560 = shl nsw i64 %559, 2
  %561 = add nsw i64 %560, 8807744
  %562 = add i64 %555, 12
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = add i32 %564, -1
  %566 = icmp eq i32 %564, 0
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %40, align 1
  %568 = and i32 %565, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %46, align 1
  %573 = xor i32 %565, %564
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %47, align 1
  %577 = icmp eq i32 %565, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %50, align 1
  %579 = lshr i32 %565, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %53, align 1
  %581 = lshr i32 %564, 31
  %582 = xor i32 %579, %581
  %583 = add nuw nsw i32 %582, %581
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %54, align 1
  %.v182 = select i1 %577, i64 18, i64 60
  %586 = add i64 %555, %.v182
  store i64 %586, i64* %3, align 8
  br i1 %577, label %block_401054, label %block_.L_40107e

block_401054:                                     ; preds = %block_401031
  store i64 2, i64* %RAX.i566, align 8
  %587 = add i64 %553, -20
  %588 = add i64 %586, 8
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = zext i32 %590 to i64
  store i64 %591, i64* %RCX.i555, align 8
  %592 = add i64 %553, -32
  %593 = add i64 %586, 11
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  store i32 2, i32* %594, align 4
  %595 = load i32, i32* %ECX.i549, align 4
  %596 = zext i32 %595 to i64
  %597 = load i64, i64* %3, align 8
  store i64 %596, i64* %RAX.i566, align 8
  %598 = sext i32 %595 to i64
  %599 = lshr i64 %598, 32
  store i64 %599, i64* %73, align 8
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -32
  %602 = add i64 %597, 6
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RCX.i555, align 8
  %606 = add i64 %597, 8
  store i64 %606, i64* %3, align 8
  %607 = sext i32 %604 to i64
  %608 = shl nuw i64 %599, 32
  %609 = or i64 %608, %596
  %610 = sdiv i64 %609, %607
  %611 = shl i64 %610, 32
  %612 = ashr exact i64 %611, 32
  %613 = icmp eq i64 %610, %612
  br i1 %613, label %616, label %614

; <label>:614:                                    ; preds = %block_401054
  %615 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %606, %struct.Memory* %MEMORY.5)
  %.pre134 = load i32, i32* %84, align 4
  %.pre135 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit403

; <label>:616:                                    ; preds = %block_401054
  %617 = srem i64 %609, %607
  %618 = and i64 %610, 4294967295
  store i64 %618, i64* %RAX.i566, align 8
  %619 = and i64 %617, 4294967295
  store i64 %619, i64* %479, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %620 = trunc i64 %617 to i32
  br label %routine_idivl__ecx.exit403

routine_idivl__ecx.exit403:                       ; preds = %616, %614
  %621 = phi i64 [ %.pre135, %614 ], [ %606, %616 ]
  %622 = phi i32 [ %.pre134, %614 ], [ %620, %616 ]
  %623 = phi %struct.Memory* [ %615, %614 ], [ %MEMORY.5, %616 ]
  store i8 0, i8* %40, align 1
  %624 = and i32 %622, 255
  %625 = tail call i32 @llvm.ctpop.i32(i32 %624)
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  %628 = xor i8 %627, 1
  store i8 %628, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %629 = icmp eq i32 %622, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %50, align 1
  %631 = lshr i32 %622, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %.v184 = select i1 %629, i64 23, i64 9
  %633 = add i64 %621, %.v184
  store i64 %633, i64* %3, align 8
  %.pre136 = load i64, i64* %RBP.i, align 8
  br i1 %629, label %block_.L_40107e, label %block_401070

block_401070:                                     ; preds = %routine_idivl__ecx.exit403
  %634 = add i64 %.pre136, -24
  %635 = add i64 %633, 3
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = add i64 %633, 6
  store i64 %638, i64* %3, align 8
  %639 = add i32 %637, 1
  %640 = zext i32 %639 to i64
  store i64 %640, i64* %RAX.i566, align 8
  %641 = icmp eq i32 %637, -1
  %642 = icmp eq i32 %639, 0
  %643 = or i1 %641, %642
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %40, align 1
  %645 = and i32 %639, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %46, align 1
  %650 = xor i32 %639, %637
  br label %block_.L_401136.sink.split

block_.L_40107e:                                  ; preds = %routine_idivl__ecx.exit403, %block_401031
  %651 = phi i64 [ %586, %block_401031 ], [ %633, %routine_idivl__ecx.exit403 ]
  %652 = phi i64 [ %553, %block_401031 ], [ %.pre136, %routine_idivl__ecx.exit403 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_401031 ], [ %623, %routine_idivl__ecx.exit403 ]
  %653 = add i64 %652, -16
  %654 = add i64 %651, 4
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i32*
  %656 = load i32, i32* %655, align 4
  %657 = sext i32 %656 to i64
  store i64 %657, i64* %RAX.i566, align 8
  %658 = shl nsw i64 %657, 2
  %659 = add nsw i64 %658, 8807744
  %660 = add i64 %651, 12
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i32*
  %662 = load i32, i32* %661, align 4
  %663 = add i32 %662, -5
  %664 = icmp ult i32 %662, 5
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %40, align 1
  %666 = and i32 %663, 255
  %667 = tail call i32 @llvm.ctpop.i32(i32 %666)
  %668 = trunc i32 %667 to i8
  %669 = and i8 %668, 1
  %670 = xor i8 %669, 1
  store i8 %670, i8* %46, align 1
  %671 = xor i32 %663, %662
  %672 = lshr i32 %671, 4
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  store i8 %674, i8* %47, align 1
  %675 = icmp eq i32 %663, 0
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %50, align 1
  %677 = lshr i32 %663, 31
  %678 = trunc i32 %677 to i8
  store i8 %678, i8* %53, align 1
  %679 = lshr i32 %662, 31
  %680 = xor i32 %677, %679
  %681 = add nuw nsw i32 %680, %679
  %682 = icmp eq i32 %681, 2
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %54, align 1
  %.v183 = select i1 %675, i64 18, i64 32
  %684 = add i64 %651, %.v183
  store i64 %684, i64* %3, align 8
  br i1 %675, label %block_401090, label %block_.L_40109e

block_401090:                                     ; preds = %block_.L_40107e
  %685 = add i64 %652, -24
  %686 = add i64 %684, 3
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = add i64 %684, 6
  store i64 %689, i64* %3, align 8
  %690 = add i32 %688, 1
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RAX.i566, align 8
  %692 = icmp eq i32 %688, -1
  %693 = icmp eq i32 %690, 0
  %694 = or i1 %692, %693
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %40, align 1
  %696 = and i32 %690, 255
  %697 = tail call i32 @llvm.ctpop.i32(i32 %696)
  %698 = trunc i32 %697 to i8
  %699 = and i8 %698, 1
  %700 = xor i8 %699, 1
  store i8 %700, i8* %46, align 1
  %701 = xor i32 %690, %688
  br label %block_.L_401136.sink.split

block_.L_40109e:                                  ; preds = %block_.L_40107e
  %702 = add i64 %684, 5
  br label %block_.L_4010a3

block_.L_4010a3:                                  ; preds = %block_.L_4010fe, %block_.L_40109e
  %703 = phi i64 [ %652, %block_.L_40109e ], [ %.pre141, %block_.L_4010fe ]
  %storemerge34 = phi i64 [ %702, %block_.L_40109e ], [ %888, %block_.L_4010fe ]
  %704 = add i64 %703, -16
  %705 = add i64 %storemerge34, 4
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  %708 = sext i32 %707 to i64
  store i64 %708, i64* %RAX.i566, align 8
  %709 = shl nsw i64 %708, 2
  %710 = add nsw i64 %709, 8807744
  %711 = add i64 %storemerge34, 12
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  store i8 0, i8* %40, align 1
  %714 = and i32 %713, 255
  %715 = tail call i32 @llvm.ctpop.i32(i32 %714)
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  %718 = xor i8 %717, 1
  store i8 %718, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %719 = icmp eq i32 %713, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %50, align 1
  %721 = lshr i32 %713, 31
  %722 = trunc i32 %721 to i8
  store i8 %722, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %.v168 = select i1 %719, i64 118, i64 18
  %723 = add i64 %storemerge34, %.v168
  store i64 %723, i64* %3, align 8
  br i1 %719, label %block_.L_401119.loopexit, label %block_4010b5

block_4010b5:                                     ; preds = %block_.L_4010a3
  %724 = add i64 %723, 4
  store i64 %724, i64* %3, align 8
  %725 = load i32, i32* %706, align 4
  %726 = sext i32 %725 to i64
  store i64 %726, i64* %RAX.i566, align 8
  %727 = shl nsw i64 %726, 2
  %728 = add nsw i64 %727, 8807744
  %729 = add i64 %723, 12
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = add i32 %731, -11
  %733 = icmp ult i32 %731, 11
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %40, align 1
  %735 = and i32 %732, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %46, align 1
  %740 = xor i32 %732, %731
  %741 = lshr i32 %740, 4
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %47, align 1
  %744 = icmp eq i32 %732, 0
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %50, align 1
  %746 = lshr i32 %732, 31
  %747 = trunc i32 %746 to i8
  store i8 %747, i8* %53, align 1
  %748 = lshr i32 %731, 31
  %749 = xor i32 %746, %748
  %750 = add nuw nsw i32 %749, %748
  %751 = icmp eq i32 %750, 2
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %54, align 1
  %.v167 = select i1 %744, i64 36, i64 18
  %753 = add i64 %723, %.v167
  store i64 %753, i64* %3, align 8
  br i1 %744, label %block_.L_4010d9, label %block_4010c7

block_4010c7:                                     ; preds = %block_4010b5
  %754 = add i64 %753, 4
  store i64 %754, i64* %3, align 8
  %755 = load i32, i32* %706, align 4
  %756 = sext i32 %755 to i64
  store i64 %756, i64* %RAX.i566, align 8
  %757 = shl nsw i64 %756, 2
  %758 = add nsw i64 %757, 8807744
  %759 = add i64 %753, 12
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  %761 = load i32, i32* %760, align 4
  %762 = add i32 %761, -9
  %763 = icmp ult i32 %761, 9
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %40, align 1
  %765 = and i32 %762, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %46, align 1
  %770 = xor i32 %762, %761
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %47, align 1
  %774 = icmp eq i32 %762, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %50, align 1
  %776 = lshr i32 %762, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %53, align 1
  %778 = lshr i32 %761, 31
  %779 = xor i32 %776, %778
  %780 = add nuw nsw i32 %779, %778
  %781 = icmp eq i32 %780, 2
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %54, align 1
  %.v166 = select i1 %774, i64 18, i64 32
  %783 = add i64 %753, %.v166
  store i64 %783, i64* %3, align 8
  br i1 %774, label %block_.L_4010d9, label %block_.L_4010e7

block_.L_4010d9:                                  ; preds = %block_4010c7, %block_4010b5
  %784 = phi i64 [ %783, %block_4010c7 ], [ %753, %block_4010b5 ]
  %785 = add i64 %703, -24
  %786 = add i64 %784, 3
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = add i32 %788, 1
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RAX.i566, align 8
  %791 = icmp eq i32 %788, -1
  %792 = icmp eq i32 %789, 0
  %793 = or i1 %791, %792
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %40, align 1
  %795 = and i32 %789, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %46, align 1
  %800 = xor i32 %789, %788
  %801 = lshr i32 %800, 4
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %47, align 1
  %804 = zext i1 %792 to i8
  store i8 %804, i8* %50, align 1
  %805 = lshr i32 %789, 31
  %806 = trunc i32 %805 to i8
  store i8 %806, i8* %53, align 1
  %807 = lshr i32 %788, 31
  %808 = xor i32 %805, %807
  %809 = add nuw nsw i32 %808, %805
  %810 = icmp eq i32 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %54, align 1
  %812 = add i64 %784, 9
  store i64 %812, i64* %3, align 8
  store i32 %789, i32* %787, align 4
  %813 = load i64, i64* %3, align 8
  %814 = add i64 %813, 55
  %.pre142.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_401119.sink.split

block_.L_4010e7:                                  ; preds = %block_4010c7
  %815 = add i64 %783, 4
  store i64 %815, i64* %3, align 8
  %816 = load i32, i32* %706, align 4
  %817 = sext i32 %816 to i64
  store i64 %817, i64* %RAX.i566, align 8
  %818 = shl nsw i64 %817, 2
  %819 = add nsw i64 %818, 8807744
  %820 = add i64 %783, 12
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i32*
  %822 = load i32, i32* %821, align 4
  %823 = add i32 %822, -13
  %824 = icmp ult i32 %822, 13
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %40, align 1
  %826 = and i32 %823, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %46, align 1
  %831 = xor i32 %823, %822
  %832 = lshr i32 %831, 4
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  store i8 %834, i8* %47, align 1
  %835 = icmp eq i32 %823, 0
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %50, align 1
  %837 = lshr i32 %823, 31
  %838 = trunc i32 %837 to i8
  store i8 %838, i8* %53, align 1
  %839 = lshr i32 %822, 31
  %840 = xor i32 %837, %839
  %841 = add nuw nsw i32 %840, %839
  %842 = icmp eq i32 %841, 2
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %54, align 1
  %.v165 = select i1 %835, i64 23, i64 18
  %844 = add i64 %783, %.v165
  store i64 %844, i64* %3, align 8
  br i1 %835, label %block_.L_4010fe, label %block_4010f9

block_4010f9:                                     ; preds = %block_.L_4010e7
  %845 = add i64 %844, 32
  br label %block_.L_401119.sink.split

block_.L_4010fe:                                  ; preds = %block_.L_4010e7
  %846 = add i64 %703, -20
  %847 = add i64 %844, 9
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i32*
  %849 = load i32, i32* %848, align 4
  %850 = sext i32 %849 to i64
  store i64 %850, i64* %RAX.i566, align 8
  %851 = shl nsw i64 %850, 2
  %852 = add nsw i64 %851, 4347168
  %853 = add i64 %844, 16
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  %855 = load i32, i32* %854, align 4
  %856 = zext i32 %855 to i64
  store i64 %856, i64* %RCX.i555, align 8
  %857 = add i64 %844, 19
  store i64 %857, i64* %3, align 8
  %858 = load i32, i32* %706, align 4
  %859 = add i32 %858, %855
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RCX.i555, align 8
  %861 = icmp ult i32 %859, %855
  %862 = icmp ult i32 %859, %858
  %863 = or i1 %861, %862
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %40, align 1
  %865 = and i32 %859, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %46, align 1
  %870 = xor i32 %858, %855
  %871 = xor i32 %870, %859
  %872 = lshr i32 %871, 4
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  store i8 %874, i8* %47, align 1
  %875 = icmp eq i32 %859, 0
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %50, align 1
  %877 = lshr i32 %859, 31
  %878 = trunc i32 %877 to i8
  store i8 %878, i8* %53, align 1
  %879 = lshr i32 %855, 31
  %880 = lshr i32 %858, 31
  %881 = xor i32 %877, %879
  %882 = xor i32 %877, %880
  %883 = add nuw nsw i32 %881, %882
  %884 = icmp eq i32 %883, 2
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %54, align 1
  %886 = add i64 %844, 22
  store i64 %886, i64* %3, align 8
  store i32 %859, i32* %706, align 4
  %887 = load i64, i64* %3, align 8
  %888 = add i64 %887, -113
  %889 = add i64 %887, 5
  store i64 %889, i64* %3, align 8
  %.pre141 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4010a3

block_.L_401119.sink.split:                       ; preds = %block_.L_4010d9, %block_4010f9
  %.pre142 = phi i64 [ %703, %block_4010f9 ], [ %.pre142.pre, %block_.L_4010d9 ]
  %.sink57 = phi i64 [ %845, %block_4010f9 ], [ %814, %block_.L_4010d9 ]
  store i64 %.sink57, i64* %3, align 8
  br label %block_.L_401119

block_.L_401119.loopexit:                         ; preds = %block_.L_4010a3
  br label %block_.L_401119

block_.L_401119:                                  ; preds = %block_.L_401119.loopexit, %block_.L_401119.sink.split
  %890 = phi i64 [ %.pre142, %block_.L_401119.sink.split ], [ %703, %block_.L_401119.loopexit ]
  %891 = phi i64 [ %.sink57, %block_.L_401119.sink.split ], [ %723, %block_.L_401119.loopexit ]
  %892 = add i64 %890, -20
  %893 = add i64 %891, 18
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = add i32 %895, 1
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX.i566, align 8
  %898 = icmp eq i32 %895, -1
  %899 = icmp eq i32 %896, 0
  %900 = or i1 %898, %899
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %40, align 1
  %902 = and i32 %896, 255
  %903 = tail call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  store i8 %906, i8* %46, align 1
  %907 = xor i32 %896, %895
  %908 = lshr i32 %907, 4
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  store i8 %910, i8* %47, align 1
  %911 = zext i1 %899 to i8
  store i8 %911, i8* %50, align 1
  %912 = lshr i32 %896, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %53, align 1
  %914 = lshr i32 %895, 31
  %915 = xor i32 %912, %914
  %916 = add nuw nsw i32 %915, %912
  %917 = icmp eq i32 %916, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %54, align 1
  %919 = add i64 %891, 24
  store i64 %919, i64* %3, align 8
  store i32 %896, i32* %894, align 4
  %920 = load i64, i64* %3, align 8
  %921 = add i64 %920, -266
  store i64 %921, i64* %3, align 8
  br label %block_.L_401027

block_.L_401136.sink.split:                       ; preds = %block_401070, %block_401090
  %922 = phi i64 [ %638, %block_401070 ], [ %689, %block_401090 ]
  %923 = phi i32 [ %639, %block_401070 ], [ %690, %block_401090 ]
  %924 = phi i64 [ %.pre136, %block_401070 ], [ %652, %block_401090 ]
  %.sink88 = phi i32 [ %650, %block_401070 ], [ %701, %block_401090 ]
  %.sink54 = phi i32 [ %637, %block_401070 ], [ %688, %block_401090 ]
  %.sink40 = phi i64 [ 189, %block_401070 ], [ 157, %block_401090 ]
  %MEMORY.10.ph = phi %struct.Memory* [ %623, %block_401070 ], [ %MEMORY.6, %block_401090 ]
  %925 = lshr i32 %.sink88, 4
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  store i8 %927, i8* %47, align 1
  %928 = icmp eq i32 %923, 0
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %50, align 1
  %930 = lshr i32 %923, 31
  %931 = trunc i32 %930 to i8
  store i8 %931, i8* %53, align 1
  %932 = lshr i32 %.sink54, 31
  %933 = xor i32 %932, %930
  %934 = add nuw nsw i32 %933, %930
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %54, align 1
  %937 = add i64 %924, -24
  %938 = add i64 %922, 3
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  store i32 %923, i32* %939, align 4
  %940 = load i64, i64* %3, align 8
  %941 = add i64 %940, %.sink40
  store i64 %941, i64* %3, align 8
  %.pre137 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401136

block_.L_401136.loopexit:                         ; preds = %block_.L_401027
  br label %block_.L_401136

block_.L_401136:                                  ; preds = %block_.L_401136.loopexit, %block_.L_401136.sink.split
  %942 = phi i64 [ %941, %block_.L_401136.sink.split ], [ %509, %block_.L_401136.loopexit ]
  %943 = phi i64 [ %.pre137, %block_.L_401136.sink.split ], [ %481, %block_.L_401136.loopexit ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.10.ph, %block_.L_401136.sink.split ], [ %MEMORY.5, %block_.L_401136.loopexit ]
  %944 = add i64 %943, -20
  %945 = add i64 %942, 7
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  store i32 0, i32* %946, align 4
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_40113d

block_.L_40113d:                                  ; preds = %block_.L_401173, %block_.L_401136
  %947 = phi i64 [ %1113, %block_.L_401173 ], [ %.pre138, %block_.L_401136 ]
  %948 = load i64, i64* %RBP.i, align 8
  %949 = add i64 %948, -20
  %950 = add i64 %947, 4
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = add i32 %952, -8
  %954 = icmp ult i32 %952, 8
  %955 = zext i1 %954 to i8
  store i8 %955, i8* %40, align 1
  %956 = and i32 %953, 255
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956)
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %46, align 1
  %961 = xor i32 %953, %952
  %962 = lshr i32 %961, 4
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  store i8 %964, i8* %47, align 1
  %965 = icmp eq i32 %953, 0
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %50, align 1
  %967 = lshr i32 %953, 31
  %968 = trunc i32 %967 to i8
  store i8 %968, i8* %53, align 1
  %969 = lshr i32 %952, 31
  %970 = xor i32 %967, %969
  %971 = add nuw nsw i32 %970, %969
  %972 = icmp eq i32 %971, 2
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %54, align 1
  %974 = icmp ne i8 %968, 0
  %975 = xor i1 %974, %972
  %.v180 = select i1 %975, i64 10, i64 73
  %976 = add i64 %947, %.v180
  store i64 %976, i64* %3, align 8
  br i1 %975, label %block_401147, label %block_.L_401186

block_401147:                                     ; preds = %block_.L_40113d
  %977 = add i64 %948, -8
  %978 = add i64 %976, 3
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RAX.i566, align 8
  %982 = add i64 %976, 7
  store i64 %982, i64* %3, align 8
  %983 = load i32, i32* %951, align 4
  %984 = sext i32 %983 to i64
  store i64 %984, i64* %RCX.i555, align 8
  %985 = shl nsw i64 %984, 2
  %986 = add nsw i64 %985, 4347184
  %987 = add i64 %976, 14
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = add i32 %989, %980
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %RAX.i566, align 8
  %992 = icmp ult i32 %990, %980
  %993 = icmp ult i32 %990, %989
  %994 = or i1 %992, %993
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %40, align 1
  %996 = and i32 %990, 255
  %997 = tail call i32 @llvm.ctpop.i32(i32 %996)
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  store i8 %1000, i8* %46, align 1
  %1001 = xor i32 %989, %980
  %1002 = xor i32 %1001, %990
  %1003 = lshr i32 %1002, 4
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  store i8 %1005, i8* %47, align 1
  %1006 = icmp eq i32 %990, 0
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %50, align 1
  %1008 = lshr i32 %990, 31
  %1009 = trunc i32 %1008 to i8
  store i8 %1009, i8* %53, align 1
  %1010 = lshr i32 %980, 31
  %1011 = lshr i32 %989, 31
  %1012 = xor i32 %1008, %1010
  %1013 = xor i32 %1008, %1011
  %1014 = add nuw nsw i32 %1012, %1013
  %1015 = icmp eq i32 %1014, 2
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %54, align 1
  %1017 = add i64 %948, -16
  %1018 = add i64 %976, 17
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  store i32 %990, i32* %1019, align 4
  %1020 = load i64, i64* %RBP.i, align 8
  %1021 = add i64 %1020, -16
  %1022 = load i64, i64* %3, align 8
  %1023 = add i64 %1022, 4
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1021 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = sext i32 %1025 to i64
  store i64 %1026, i64* %RCX.i555, align 8
  %1027 = shl nsw i64 %1026, 2
  %1028 = add nsw i64 %1027, 8807744
  %1029 = add i64 %1022, 12
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = add i32 %1031, -3
  %1033 = icmp ult i32 %1031, 3
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %40, align 1
  %1035 = and i32 %1032, 255
  %1036 = tail call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  store i8 %1039, i8* %46, align 1
  %1040 = xor i32 %1032, %1031
  %1041 = lshr i32 %1040, 4
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  store i8 %1043, i8* %47, align 1
  %1044 = icmp eq i32 %1032, 0
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %50, align 1
  %1046 = lshr i32 %1032, 31
  %1047 = trunc i32 %1046 to i8
  store i8 %1047, i8* %53, align 1
  %1048 = lshr i32 %1031, 31
  %1049 = xor i32 %1046, %1048
  %1050 = add nuw nsw i32 %1049, %1048
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %54, align 1
  %.v181 = select i1 %1044, i64 18, i64 27
  %1053 = add i64 %1022, %.v181
  store i64 %1053, i64* %3, align 8
  br i1 %1044, label %block_40116a, label %block_.L_401173

block_40116a:                                     ; preds = %block_401147
  %1054 = add i64 %1020, -24
  %1055 = add i64 %1053, 3
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = add i32 %1057, 1
  %1059 = zext i32 %1058 to i64
  store i64 %1059, i64* %RAX.i566, align 8
  %1060 = icmp eq i32 %1057, -1
  %1061 = icmp eq i32 %1058, 0
  %1062 = or i1 %1060, %1061
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %40, align 1
  %1064 = and i32 %1058, 255
  %1065 = tail call i32 @llvm.ctpop.i32(i32 %1064)
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = xor i8 %1067, 1
  store i8 %1068, i8* %46, align 1
  %1069 = xor i32 %1058, %1057
  %1070 = lshr i32 %1069, 4
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  store i8 %1072, i8* %47, align 1
  %1073 = zext i1 %1061 to i8
  store i8 %1073, i8* %50, align 1
  %1074 = lshr i32 %1058, 31
  %1075 = trunc i32 %1074 to i8
  store i8 %1075, i8* %53, align 1
  %1076 = lshr i32 %1057, 31
  %1077 = xor i32 %1074, %1076
  %1078 = add nuw nsw i32 %1077, %1074
  %1079 = icmp eq i32 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %54, align 1
  %1081 = add i64 %1053, 9
  store i64 %1081, i64* %3, align 8
  store i32 %1058, i32* %1056, align 4
  %.pre139 = load i64, i64* %3, align 8
  %.pre140 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401173

block_.L_401173:                                  ; preds = %block_401147, %block_40116a
  %1082 = phi i64 [ %.pre140, %block_40116a ], [ %1020, %block_401147 ]
  %1083 = phi i64 [ %.pre139, %block_40116a ], [ %1053, %block_401147 ]
  %1084 = add i64 %1082, -20
  %1085 = add i64 %1083, 8
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = add i32 %1087, 1
  %1089 = zext i32 %1088 to i64
  store i64 %1089, i64* %RAX.i566, align 8
  %1090 = icmp eq i32 %1087, -1
  %1091 = icmp eq i32 %1088, 0
  %1092 = or i1 %1090, %1091
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %40, align 1
  %1094 = and i32 %1088, 255
  %1095 = tail call i32 @llvm.ctpop.i32(i32 %1094)
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  store i8 %1098, i8* %46, align 1
  %1099 = xor i32 %1088, %1087
  %1100 = lshr i32 %1099, 4
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  store i8 %1102, i8* %47, align 1
  %1103 = zext i1 %1091 to i8
  store i8 %1103, i8* %50, align 1
  %1104 = lshr i32 %1088, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %53, align 1
  %1106 = lshr i32 %1087, 31
  %1107 = xor i32 %1104, %1106
  %1108 = add nuw nsw i32 %1107, %1104
  %1109 = icmp eq i32 %1108, 2
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %54, align 1
  %1111 = add i64 %1083, 14
  store i64 %1111, i64* %3, align 8
  store i32 %1088, i32* %1086, align 4
  %1112 = load i64, i64* %3, align 8
  %1113 = add i64 %1112, -68
  store i64 %1113, i64* %3, align 8
  br label %block_.L_40113d

block_.L_401186:                                  ; preds = %block_.L_40113d
  %1114 = add i64 %976, 576
  br label %block_.L_4013c6

block_.L_401192:                                  ; preds = %block_.L_401192.preheader, %block_.L_401243
  %1115 = phi i64 [ %1470, %block_.L_401243 ], [ %.pre145, %block_.L_401192.preheader ]
  %1116 = load i64, i64* %RBP.i, align 8
  %1117 = add i64 %1116, -20
  %1118 = add i64 %1115, 4
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  %1120 = load i32, i32* %1119, align 4
  %1121 = add i32 %1120, -4
  %1122 = icmp ult i32 %1120, 4
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %40, align 1
  %1124 = and i32 %1121, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %46, align 1
  %1129 = xor i32 %1121, %1120
  %1130 = lshr i32 %1129, 4
  %1131 = trunc i32 %1130 to i8
  %1132 = and i8 %1131, 1
  store i8 %1132, i8* %47, align 1
  %1133 = icmp eq i32 %1121, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %50, align 1
  %1135 = lshr i32 %1121, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %53, align 1
  %1137 = lshr i32 %1120, 31
  %1138 = xor i32 %1135, %1137
  %1139 = add nuw nsw i32 %1138, %1137
  %1140 = icmp eq i32 %1139, 2
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %54, align 1
  %1142 = icmp ne i8 %1136, 0
  %1143 = xor i1 %1142, %1140
  %.v186 = select i1 %1143, i64 10, i64 201
  %1144 = add i64 %1115, %.v186
  store i64 %1144, i64* %3, align 8
  br i1 %1143, label %block_40119c, label %block_.L_40125b.loopexit

block_40119c:                                     ; preds = %block_.L_401192
  %1145 = add i64 %1116, -8
  %1146 = add i64 %1144, 3
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RAX.i566, align 8
  %1150 = add i64 %1144, 7
  store i64 %1150, i64* %3, align 8
  %1151 = load i32, i32* %1119, align 4
  %1152 = sext i32 %1151 to i64
  store i64 %1152, i64* %RCX.i555, align 8
  %1153 = shl nsw i64 %1152, 2
  %1154 = add nsw i64 %1153, 4347152
  %1155 = add i64 %1144, 14
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = add i32 %1157, %1148
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RAX.i566, align 8
  %1160 = icmp ult i32 %1158, %1148
  %1161 = icmp ult i32 %1158, %1157
  %1162 = or i1 %1160, %1161
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %40, align 1
  %1164 = and i32 %1158, 255
  %1165 = tail call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  store i8 %1168, i8* %46, align 1
  %1169 = xor i32 %1157, %1148
  %1170 = xor i32 %1169, %1158
  %1171 = lshr i32 %1170, 4
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  store i8 %1173, i8* %47, align 1
  %1174 = icmp eq i32 %1158, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %50, align 1
  %1176 = lshr i32 %1158, 31
  %1177 = trunc i32 %1176 to i8
  store i8 %1177, i8* %53, align 1
  %1178 = lshr i32 %1148, 31
  %1179 = lshr i32 %1157, 31
  %1180 = xor i32 %1176, %1178
  %1181 = xor i32 %1176, %1179
  %1182 = add nuw nsw i32 %1180, %1181
  %1183 = icmp eq i32 %1182, 2
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %54, align 1
  %1185 = add i64 %1116, -16
  %1186 = add i64 %1144, 17
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i32*
  store i32 %1158, i32* %1187, align 4
  %1188 = load i64, i64* %RBP.i, align 8
  %1189 = add i64 %1188, -16
  %1190 = load i64, i64* %3, align 8
  %1191 = add i64 %1190, 4
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1189 to i32*
  %1193 = load i32, i32* %1192, align 4
  %1194 = sext i32 %1193 to i64
  store i64 %1194, i64* %RCX.i555, align 8
  %1195 = shl nsw i64 %1194, 2
  %1196 = add nsw i64 %1195, 8807744
  %1197 = add i64 %1190, 12
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = add i32 %1199, -6
  %1201 = icmp ult i32 %1199, 6
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %40, align 1
  %1203 = and i32 %1200, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203)
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %46, align 1
  %1208 = xor i32 %1200, %1199
  %1209 = lshr i32 %1208, 4
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  store i8 %1211, i8* %47, align 1
  %1212 = icmp eq i32 %1200, 0
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %50, align 1
  %1214 = lshr i32 %1200, 31
  %1215 = trunc i32 %1214 to i8
  store i8 %1215, i8* %53, align 1
  %1216 = lshr i32 %1199, 31
  %1217 = xor i32 %1214, %1216
  %1218 = add nuw nsw i32 %1217, %1216
  %1219 = icmp eq i32 %1218, 2
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %54, align 1
  %.v193 = select i1 %1212, i64 18, i64 32
  %1221 = add i64 %1190, %.v193
  store i64 %1221, i64* %3, align 8
  br i1 %1212, label %block_4011bf, label %block_.L_4011cd

block_4011bf:                                     ; preds = %block_40119c
  %1222 = add i64 %1188, -24
  %1223 = add i64 %1221, 3
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i32*
  %1225 = load i32, i32* %1224, align 4
  %1226 = add i32 %1225, 1
  %1227 = zext i32 %1226 to i64
  store i64 %1227, i64* %RAX.i566, align 8
  %1228 = icmp eq i32 %1225, -1
  %1229 = icmp eq i32 %1226, 0
  %1230 = or i1 %1228, %1229
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %40, align 1
  %1232 = and i32 %1226, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %46, align 1
  %1237 = xor i32 %1226, %1225
  %1238 = lshr i32 %1237, 4
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  store i8 %1240, i8* %47, align 1
  %1241 = zext i1 %1229 to i8
  store i8 %1241, i8* %50, align 1
  %1242 = lshr i32 %1226, 31
  %1243 = trunc i32 %1242 to i8
  store i8 %1243, i8* %53, align 1
  %1244 = lshr i32 %1225, 31
  %1245 = xor i32 %1242, %1244
  %1246 = add nuw nsw i32 %1245, %1242
  %1247 = icmp eq i32 %1246, 2
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %54, align 1
  %1249 = add i64 %1221, 9
  store i64 %1249, i64* %3, align 8
  store i32 %1226, i32* %1224, align 4
  %1250 = load i64, i64* %3, align 8
  %1251 = add i64 %1250, 147
  store i64 %1251, i64* %3, align 8
  %.pre146 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40125b

block_.L_4011cd:                                  ; preds = %block_40119c
  %1252 = add i64 %1221, 5
  br label %block_.L_4011d2

block_.L_4011d2:                                  ; preds = %block_.L_40122d, %block_.L_4011cd
  %1253 = phi i64 [ %1188, %block_.L_4011cd ], [ %.pre158, %block_.L_40122d ]
  %storemerge37 = phi i64 [ %1252, %block_.L_4011cd ], [ %1435, %block_.L_40122d ]
  %1254 = add i64 %1253, -16
  %1255 = add i64 %storemerge37, 4
  store i64 %1255, i64* %3, align 8
  %1256 = inttoptr i64 %1254 to i32*
  %1257 = load i32, i32* %1256, align 4
  %1258 = sext i32 %1257 to i64
  store i64 %1258, i64* %RAX.i566, align 8
  %1259 = shl nsw i64 %1258, 2
  %1260 = add nsw i64 %1259, 8807744
  %1261 = add i64 %storemerge37, 12
  store i64 %1261, i64* %3, align 8
  %1262 = inttoptr i64 %1260 to i32*
  %1263 = load i32, i32* %1262, align 4
  store i8 0, i8* %40, align 1
  %1264 = and i32 %1263, 255
  %1265 = tail call i32 @llvm.ctpop.i32(i32 %1264)
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %1269 = icmp eq i32 %1263, 0
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %50, align 1
  %1271 = lshr i32 %1263, 31
  %1272 = trunc i32 %1271 to i8
  store i8 %1272, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %.v194 = select i1 %1269, i64 113, i64 18
  %1273 = add i64 %storemerge37, %.v194
  store i64 %1273, i64* %3, align 8
  br i1 %1269, label %block_.L_401243.loopexit, label %block_4011e4

block_4011e4:                                     ; preds = %block_.L_4011d2
  %1274 = add i64 %1273, 4
  store i64 %1274, i64* %3, align 8
  %1275 = load i32, i32* %1256, align 4
  %1276 = sext i32 %1275 to i64
  store i64 %1276, i64* %RAX.i566, align 8
  %1277 = shl nsw i64 %1276, 2
  %1278 = add nsw i64 %1277, 8807744
  %1279 = add i64 %1273, 12
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = add i32 %1281, -8
  %1283 = icmp ult i32 %1281, 8
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %40, align 1
  %1285 = and i32 %1282, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %46, align 1
  %1290 = xor i32 %1282, %1281
  %1291 = lshr i32 %1290, 4
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  store i8 %1293, i8* %47, align 1
  %1294 = icmp eq i32 %1282, 0
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %50, align 1
  %1296 = lshr i32 %1282, 31
  %1297 = trunc i32 %1296 to i8
  store i8 %1297, i8* %53, align 1
  %1298 = lshr i32 %1281, 31
  %1299 = xor i32 %1296, %1298
  %1300 = add nuw nsw i32 %1299, %1298
  %1301 = icmp eq i32 %1300, 2
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %54, align 1
  %.v195 = select i1 %1294, i64 36, i64 18
  %1303 = add i64 %1273, %.v195
  store i64 %1303, i64* %3, align 8
  br i1 %1294, label %block_.L_401208, label %block_4011f6

block_4011f6:                                     ; preds = %block_4011e4
  %1304 = add i64 %1303, 4
  store i64 %1304, i64* %3, align 8
  %1305 = load i32, i32* %1256, align 4
  %1306 = sext i32 %1305 to i64
  store i64 %1306, i64* %RAX.i566, align 8
  %1307 = shl nsw i64 %1306, 2
  %1308 = add nsw i64 %1307, 8807744
  %1309 = add i64 %1303, 12
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = add i32 %1311, -10
  %1313 = icmp ult i32 %1311, 10
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %40, align 1
  %1315 = and i32 %1312, 255
  %1316 = tail call i32 @llvm.ctpop.i32(i32 %1315)
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  %1319 = xor i8 %1318, 1
  store i8 %1319, i8* %46, align 1
  %1320 = xor i32 %1312, %1311
  %1321 = lshr i32 %1320, 4
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  store i8 %1323, i8* %47, align 1
  %1324 = icmp eq i32 %1312, 0
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %50, align 1
  %1326 = lshr i32 %1312, 31
  %1327 = trunc i32 %1326 to i8
  store i8 %1327, i8* %53, align 1
  %1328 = lshr i32 %1311, 31
  %1329 = xor i32 %1326, %1328
  %1330 = add nuw nsw i32 %1329, %1328
  %1331 = icmp eq i32 %1330, 2
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %54, align 1
  %.v196 = select i1 %1324, i64 18, i64 32
  %1333 = add i64 %1303, %.v196
  store i64 %1333, i64* %3, align 8
  br i1 %1324, label %block_.L_401208, label %block_.L_401216

block_.L_401208:                                  ; preds = %block_4011f6, %block_4011e4
  %1334 = phi i64 [ %1333, %block_4011f6 ], [ %1303, %block_4011e4 ]
  %1335 = add i64 %1253, -24
  %1336 = add i64 %1334, 3
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = add i32 %1338, 1
  %1340 = zext i32 %1339 to i64
  store i64 %1340, i64* %RAX.i566, align 8
  %1341 = icmp eq i32 %1338, -1
  %1342 = icmp eq i32 %1339, 0
  %1343 = or i1 %1341, %1342
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %40, align 1
  %1345 = and i32 %1339, 255
  %1346 = tail call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  store i8 %1349, i8* %46, align 1
  %1350 = xor i32 %1339, %1338
  %1351 = lshr i32 %1350, 4
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  store i8 %1353, i8* %47, align 1
  %1354 = zext i1 %1342 to i8
  store i8 %1354, i8* %50, align 1
  %1355 = lshr i32 %1339, 31
  %1356 = trunc i32 %1355 to i8
  store i8 %1356, i8* %53, align 1
  %1357 = lshr i32 %1338, 31
  %1358 = xor i32 %1355, %1357
  %1359 = add nuw nsw i32 %1358, %1355
  %1360 = icmp eq i32 %1359, 2
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %54, align 1
  %1362 = add i64 %1334, 9
  store i64 %1362, i64* %3, align 8
  store i32 %1339, i32* %1337, align 4
  %.pre159 = load i64, i64* %3, align 8
  %.pre160.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_401243.sink.split

block_.L_401216:                                  ; preds = %block_4011f6
  %1363 = add i64 %1333, 4
  store i64 %1363, i64* %3, align 8
  %1364 = load i32, i32* %1256, align 4
  %1365 = sext i32 %1364 to i64
  store i64 %1365, i64* %RAX.i566, align 8
  %1366 = shl nsw i64 %1365, 2
  %1367 = add nsw i64 %1366, 8807744
  %1368 = add i64 %1333, 12
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i32*
  %1370 = load i32, i32* %1369, align 4
  %1371 = add i32 %1370, -13
  %1372 = icmp ult i32 %1370, 13
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %40, align 1
  %1374 = and i32 %1371, 255
  %1375 = tail call i32 @llvm.ctpop.i32(i32 %1374)
  %1376 = trunc i32 %1375 to i8
  %1377 = and i8 %1376, 1
  %1378 = xor i8 %1377, 1
  store i8 %1378, i8* %46, align 1
  %1379 = xor i32 %1371, %1370
  %1380 = lshr i32 %1379, 4
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  store i8 %1382, i8* %47, align 1
  %1383 = icmp eq i32 %1371, 0
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %50, align 1
  %1385 = lshr i32 %1371, 31
  %1386 = trunc i32 %1385 to i8
  store i8 %1386, i8* %53, align 1
  %1387 = lshr i32 %1370, 31
  %1388 = xor i32 %1385, %1387
  %1389 = add nuw nsw i32 %1388, %1387
  %1390 = icmp eq i32 %1389, 2
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %54, align 1
  %.v197 = select i1 %1383, i64 23, i64 18
  %1392 = add i64 %1333, %.v197
  store i64 %1392, i64* %3, align 8
  br i1 %1383, label %block_.L_40122d, label %block_.L_401243.sink.split.loopexit

block_.L_40122d:                                  ; preds = %block_.L_401216
  %1393 = add i64 %1253, -20
  %1394 = add i64 %1392, 4
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1393 to i32*
  %1396 = load i32, i32* %1395, align 4
  %1397 = sext i32 %1396 to i64
  store i64 %1397, i64* %RAX.i566, align 8
  %1398 = shl nsw i64 %1397, 2
  %1399 = add nsw i64 %1398, 4347152
  %1400 = add i64 %1392, 11
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to i32*
  %1402 = load i32, i32* %1401, align 4
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %RCX.i555, align 8
  %1404 = add i64 %1392, 14
  store i64 %1404, i64* %3, align 8
  %1405 = load i32, i32* %1256, align 4
  %1406 = add i32 %1405, %1402
  %1407 = zext i32 %1406 to i64
  store i64 %1407, i64* %RCX.i555, align 8
  %1408 = icmp ult i32 %1406, %1402
  %1409 = icmp ult i32 %1406, %1405
  %1410 = or i1 %1408, %1409
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %40, align 1
  %1412 = and i32 %1406, 255
  %1413 = tail call i32 @llvm.ctpop.i32(i32 %1412)
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  %1416 = xor i8 %1415, 1
  store i8 %1416, i8* %46, align 1
  %1417 = xor i32 %1405, %1402
  %1418 = xor i32 %1417, %1406
  %1419 = lshr i32 %1418, 4
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  store i8 %1421, i8* %47, align 1
  %1422 = icmp eq i32 %1406, 0
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %50, align 1
  %1424 = lshr i32 %1406, 31
  %1425 = trunc i32 %1424 to i8
  store i8 %1425, i8* %53, align 1
  %1426 = lshr i32 %1402, 31
  %1427 = lshr i32 %1405, 31
  %1428 = xor i32 %1424, %1426
  %1429 = xor i32 %1424, %1427
  %1430 = add nuw nsw i32 %1428, %1429
  %1431 = icmp eq i32 %1430, 2
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %54, align 1
  %1433 = add i64 %1392, 17
  store i64 %1433, i64* %3, align 8
  store i32 %1406, i32* %1256, align 4
  %1434 = load i64, i64* %3, align 8
  %1435 = add i64 %1434, -108
  %1436 = add i64 %1434, 5
  store i64 %1436, i64* %3, align 8
  %.pre158 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4011d2

block_.L_401243.sink.split.loopexit:              ; preds = %block_.L_401216
  br label %block_.L_401243.sink.split

block_.L_401243.sink.split:                       ; preds = %block_.L_401243.sink.split.loopexit, %block_.L_401208
  %.pre160 = phi i64 [ %.pre160.pre, %block_.L_401208 ], [ %1253, %block_.L_401243.sink.split.loopexit ]
  %1437 = phi i64 [ %.pre159, %block_.L_401208 ], [ %1392, %block_.L_401243.sink.split.loopexit ]
  %.sink60 = phi i64 [ 50, %block_.L_401208 ], [ 27, %block_.L_401243.sink.split.loopexit ]
  %1438 = add i64 %1437, %.sink60
  store i64 %1438, i64* %3, align 8
  br label %block_.L_401243

block_.L_401243.loopexit:                         ; preds = %block_.L_4011d2
  br label %block_.L_401243

block_.L_401243:                                  ; preds = %block_.L_401243.loopexit, %block_.L_401243.sink.split
  %1439 = phi i64 [ %.pre160, %block_.L_401243.sink.split ], [ %1253, %block_.L_401243.loopexit ]
  %1440 = phi i64 [ %1438, %block_.L_401243.sink.split ], [ %1273, %block_.L_401243.loopexit ]
  %1441 = add i64 %1439, -20
  %1442 = add i64 %1440, 13
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = add i32 %1444, 1
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RAX.i566, align 8
  %1447 = icmp eq i32 %1444, -1
  %1448 = icmp eq i32 %1445, 0
  %1449 = or i1 %1447, %1448
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %40, align 1
  %1451 = and i32 %1445, 255
  %1452 = tail call i32 @llvm.ctpop.i32(i32 %1451)
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  %1455 = xor i8 %1454, 1
  store i8 %1455, i8* %46, align 1
  %1456 = xor i32 %1445, %1444
  %1457 = lshr i32 %1456, 4
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  store i8 %1459, i8* %47, align 1
  %1460 = zext i1 %1448 to i8
  store i8 %1460, i8* %50, align 1
  %1461 = lshr i32 %1445, 31
  %1462 = trunc i32 %1461 to i8
  store i8 %1462, i8* %53, align 1
  %1463 = lshr i32 %1444, 31
  %1464 = xor i32 %1461, %1463
  %1465 = add nuw nsw i32 %1464, %1461
  %1466 = icmp eq i32 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %54, align 1
  %1468 = add i64 %1440, 19
  store i64 %1468, i64* %3, align 8
  store i32 %1445, i32* %1443, align 4
  %1469 = load i64, i64* %3, align 8
  %1470 = add i64 %1469, -196
  store i64 %1470, i64* %3, align 8
  br label %block_.L_401192

block_.L_40125b.loopexit:                         ; preds = %block_.L_401192
  br label %block_.L_40125b

block_.L_40125b:                                  ; preds = %block_.L_40125b.loopexit, %block_4011bf
  %1471 = phi i64 [ %1251, %block_4011bf ], [ %1144, %block_.L_40125b.loopexit ]
  %1472 = phi i64 [ %.pre146, %block_4011bf ], [ %1116, %block_.L_40125b.loopexit ]
  %1473 = add i64 %1472, -20
  %1474 = add i64 %1471, 7
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  store i32 0, i32* %1475, align 4
  %1476 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_401262

block_.L_401262:                                  ; preds = %block_.L_401354, %block_.L_40125b
  %1477 = phi i64 [ %.pre147, %block_.L_40125b ], [ %1919, %block_.L_401354 ]
  %MEMORY.18 = phi %struct.Memory* [ %103, %block_.L_40125b ], [ %MEMORY.19, %block_.L_401354 ]
  %1478 = load i64, i64* %RBP.i, align 8
  %1479 = add i64 %1478, -20
  %1480 = add i64 %1477, 4
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = add i32 %1482, -4
  %1484 = icmp ult i32 %1482, 4
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %40, align 1
  %1486 = and i32 %1483, 255
  %1487 = tail call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %46, align 1
  %1491 = xor i32 %1483, %1482
  %1492 = lshr i32 %1491, 4
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  store i8 %1494, i8* %47, align 1
  %1495 = icmp eq i32 %1483, 0
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %50, align 1
  %1497 = lshr i32 %1483, 31
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, i8* %53, align 1
  %1499 = lshr i32 %1482, 31
  %1500 = xor i32 %1497, %1499
  %1501 = add nuw nsw i32 %1500, %1499
  %1502 = icmp eq i32 %1501, 2
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %54, align 1
  %1504 = icmp ne i8 %1498, 0
  %1505 = xor i1 %1504, %1502
  %.v187 = select i1 %1505, i64 10, i64 271
  %1506 = add i64 %1477, %.v187
  store i64 %1506, i64* %3, align 8
  br i1 %1505, label %block_40126c, label %block_.L_401371.loopexit

block_40126c:                                     ; preds = %block_.L_401262
  %1507 = add i64 %1478, -8
  %1508 = add i64 %1506, 3
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RAX.i566, align 8
  %1512 = add i64 %1506, 7
  store i64 %1512, i64* %3, align 8
  %1513 = load i32, i32* %1481, align 4
  %1514 = sext i32 %1513 to i64
  store i64 %1514, i64* %RCX.i555, align 8
  %1515 = shl nsw i64 %1514, 2
  %1516 = add nsw i64 %1515, 4347168
  %1517 = add i64 %1506, 14
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1516 to i32*
  %1519 = load i32, i32* %1518, align 4
  %1520 = add i32 %1519, %1510
  %1521 = zext i32 %1520 to i64
  store i64 %1521, i64* %RAX.i566, align 8
  %1522 = icmp ult i32 %1520, %1510
  %1523 = icmp ult i32 %1520, %1519
  %1524 = or i1 %1522, %1523
  %1525 = zext i1 %1524 to i8
  store i8 %1525, i8* %40, align 1
  %1526 = and i32 %1520, 255
  %1527 = tail call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = xor i8 %1529, 1
  store i8 %1530, i8* %46, align 1
  %1531 = xor i32 %1519, %1510
  %1532 = xor i32 %1531, %1520
  %1533 = lshr i32 %1532, 4
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  store i8 %1535, i8* %47, align 1
  %1536 = icmp eq i32 %1520, 0
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %50, align 1
  %1538 = lshr i32 %1520, 31
  %1539 = trunc i32 %1538 to i8
  store i8 %1539, i8* %53, align 1
  %1540 = lshr i32 %1510, 31
  %1541 = lshr i32 %1519, 31
  %1542 = xor i32 %1538, %1540
  %1543 = xor i32 %1538, %1541
  %1544 = add nuw nsw i32 %1542, %1543
  %1545 = icmp eq i32 %1544, 2
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %54, align 1
  %1547 = add i64 %1478, -16
  %1548 = add i64 %1506, 17
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  store i32 %1520, i32* %1549, align 4
  %1550 = load i64, i64* %RBP.i, align 8
  %1551 = add i64 %1550, -16
  %1552 = load i64, i64* %3, align 8
  %1553 = add i64 %1552, 4
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1551 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = sext i32 %1555 to i64
  store i64 %1556, i64* %RCX.i555, align 8
  %1557 = shl nsw i64 %1556, 2
  %1558 = add nsw i64 %1557, 8807744
  %1559 = add i64 %1552, 12
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i32*
  %1561 = load i32, i32* %1560, align 4
  %1562 = add i32 %1561, -2
  %1563 = icmp ult i32 %1561, 2
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %40, align 1
  %1565 = and i32 %1562, 255
  %1566 = tail call i32 @llvm.ctpop.i32(i32 %1565)
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = xor i8 %1568, 1
  store i8 %1569, i8* %46, align 1
  %1570 = xor i32 %1562, %1561
  %1571 = lshr i32 %1570, 4
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  store i8 %1573, i8* %47, align 1
  %1574 = icmp eq i32 %1562, 0
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %50, align 1
  %1576 = lshr i32 %1562, 31
  %1577 = trunc i32 %1576 to i8
  store i8 %1577, i8* %53, align 1
  %1578 = lshr i32 %1561, 31
  %1579 = xor i32 %1576, %1578
  %1580 = add nuw nsw i32 %1579, %1578
  %1581 = icmp eq i32 %1580, 2
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %54, align 1
  %.v190 = select i1 %1574, i64 18, i64 60
  %1583 = add i64 %1552, %.v190
  store i64 %1583, i64* %3, align 8
  br i1 %1574, label %block_40128f, label %block_.L_4012b9

block_40128f:                                     ; preds = %block_40126c
  store i64 2, i64* %RAX.i566, align 8
  %1584 = add i64 %1550, -20
  %1585 = add i64 %1583, 8
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i32*
  %1587 = load i32, i32* %1586, align 4
  %1588 = zext i32 %1587 to i64
  store i64 %1588, i64* %RCX.i555, align 8
  %1589 = add i64 %1550, -36
  %1590 = add i64 %1583, 11
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1589 to i32*
  store i32 2, i32* %1591, align 4
  %1592 = load i32, i32* %ECX.i549, align 4
  %1593 = zext i32 %1592 to i64
  %1594 = load i64, i64* %3, align 8
  store i64 %1593, i64* %RAX.i566, align 8
  %1595 = sext i32 %1592 to i64
  %1596 = lshr i64 %1595, 32
  store i64 %1596, i64* %73, align 8
  %1597 = load i64, i64* %RBP.i, align 8
  %1598 = add i64 %1597, -36
  %1599 = add i64 %1594, 6
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  %1602 = zext i32 %1601 to i64
  store i64 %1602, i64* %RCX.i555, align 8
  %1603 = add i64 %1594, 8
  store i64 %1603, i64* %3, align 8
  %1604 = sext i32 %1601 to i64
  %1605 = shl nuw i64 %1596, 32
  %1606 = or i64 %1605, %1593
  %1607 = sdiv i64 %1606, %1604
  %1608 = shl i64 %1607, 32
  %1609 = ashr exact i64 %1608, 32
  %1610 = icmp eq i64 %1607, %1609
  br i1 %1610, label %1613, label %1611

; <label>:1611:                                   ; preds = %block_40128f
  %1612 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1603, %struct.Memory* %MEMORY.18)
  %.pre148 = load i32, i32* %84, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1613:                                   ; preds = %block_40128f
  %1614 = srem i64 %1606, %1604
  %1615 = and i64 %1607, 4294967295
  store i64 %1615, i64* %RAX.i566, align 8
  %1616 = and i64 %1614, 4294967295
  store i64 %1616, i64* %1476, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %1617 = trunc i64 %1614 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1613, %1611
  %1618 = phi i64 [ %.pre149, %1611 ], [ %1603, %1613 ]
  %1619 = phi i32 [ %.pre148, %1611 ], [ %1617, %1613 ]
  %1620 = phi %struct.Memory* [ %1612, %1611 ], [ %MEMORY.18, %1613 ]
  store i8 0, i8* %40, align 1
  %1621 = and i32 %1619, 255
  %1622 = tail call i32 @llvm.ctpop.i32(i32 %1621)
  %1623 = trunc i32 %1622 to i8
  %1624 = and i8 %1623, 1
  %1625 = xor i8 %1624, 1
  store i8 %1625, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %1626 = icmp eq i32 %1619, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %50, align 1
  %1628 = lshr i32 %1619, 31
  %1629 = trunc i32 %1628 to i8
  store i8 %1629, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %.v192 = select i1 %1626, i64 9, i64 23
  %1630 = add i64 %1618, %.v192
  store i64 %1630, i64* %3, align 8
  %1631 = load i64, i64* %RBP.i, align 8
  br i1 %1626, label %block_4012ab, label %block_.L_4012b9

block_4012ab:                                     ; preds = %routine_idivl__ecx.exit
  %1632 = add i64 %1631, -24
  %1633 = add i64 %1630, 3
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i32*
  %1635 = load i32, i32* %1634, align 4
  %1636 = add i64 %1630, 6
  store i64 %1636, i64* %3, align 8
  %1637 = add i32 %1635, 1
  %1638 = zext i32 %1637 to i64
  store i64 %1638, i64* %RAX.i566, align 8
  %1639 = icmp eq i32 %1635, -1
  %1640 = icmp eq i32 %1637, 0
  %1641 = or i1 %1639, %1640
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %40, align 1
  %1643 = and i32 %1637, 255
  %1644 = tail call i32 @llvm.ctpop.i32(i32 %1643)
  %1645 = trunc i32 %1644 to i8
  %1646 = and i8 %1645, 1
  %1647 = xor i8 %1646, 1
  store i8 %1647, i8* %46, align 1
  %1648 = xor i32 %1637, %1635
  br label %block_.L_401371.sink.split

block_.L_4012b9:                                  ; preds = %routine_idivl__ecx.exit, %block_40126c
  %1649 = phi i64 [ %1583, %block_40126c ], [ %1630, %routine_idivl__ecx.exit ]
  %1650 = phi i64 [ %1550, %block_40126c ], [ %1631, %routine_idivl__ecx.exit ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_40126c ], [ %1620, %routine_idivl__ecx.exit ]
  %1651 = add i64 %1650, -16
  %1652 = add i64 %1649, 4
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i32*
  %1654 = load i32, i32* %1653, align 4
  %1655 = sext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i566, align 8
  %1656 = shl nsw i64 %1655, 2
  %1657 = add nsw i64 %1656, 8807744
  %1658 = add i64 %1649, 12
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = add i32 %1660, -6
  %1662 = icmp ult i32 %1660, 6
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %40, align 1
  %1664 = and i32 %1661, 255
  %1665 = tail call i32 @llvm.ctpop.i32(i32 %1664)
  %1666 = trunc i32 %1665 to i8
  %1667 = and i8 %1666, 1
  %1668 = xor i8 %1667, 1
  store i8 %1668, i8* %46, align 1
  %1669 = xor i32 %1661, %1660
  %1670 = lshr i32 %1669, 4
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  store i8 %1672, i8* %47, align 1
  %1673 = icmp eq i32 %1661, 0
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %50, align 1
  %1675 = lshr i32 %1661, 31
  %1676 = trunc i32 %1675 to i8
  store i8 %1676, i8* %53, align 1
  %1677 = lshr i32 %1660, 31
  %1678 = xor i32 %1675, %1677
  %1679 = add nuw nsw i32 %1678, %1677
  %1680 = icmp eq i32 %1679, 2
  %1681 = zext i1 %1680 to i8
  store i8 %1681, i8* %54, align 1
  %.v191 = select i1 %1673, i64 18, i64 32
  %1682 = add i64 %1649, %.v191
  store i64 %1682, i64* %3, align 8
  br i1 %1673, label %block_4012cb, label %block_.L_4012d9

block_4012cb:                                     ; preds = %block_.L_4012b9
  %1683 = add i64 %1650, -24
  %1684 = add i64 %1682, 3
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1683 to i32*
  %1686 = load i32, i32* %1685, align 4
  %1687 = add i64 %1682, 6
  store i64 %1687, i64* %3, align 8
  %1688 = add i32 %1686, 1
  %1689 = zext i32 %1688 to i64
  store i64 %1689, i64* %RAX.i566, align 8
  %1690 = icmp eq i32 %1686, -1
  %1691 = icmp eq i32 %1688, 0
  %1692 = or i1 %1690, %1691
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %40, align 1
  %1694 = and i32 %1688, 255
  %1695 = tail call i32 @llvm.ctpop.i32(i32 %1694)
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  store i8 %1698, i8* %46, align 1
  %1699 = xor i32 %1688, %1686
  br label %block_.L_401371.sink.split

block_.L_4012d9:                                  ; preds = %block_.L_4012b9
  %1700 = add i64 %1682, 5
  br label %block_.L_4012de

block_.L_4012de:                                  ; preds = %block_.L_401339, %block_.L_4012d9
  %1701 = phi i64 [ %1650, %block_.L_4012d9 ], [ %.pre156, %block_.L_401339 ]
  %storemerge36 = phi i64 [ %1700, %block_.L_4012d9 ], [ %1886, %block_.L_401339 ]
  %1702 = add i64 %1701, -16
  %1703 = add i64 %storemerge36, 4
  store i64 %1703, i64* %3, align 8
  %1704 = inttoptr i64 %1702 to i32*
  %1705 = load i32, i32* %1704, align 4
  %1706 = sext i32 %1705 to i64
  store i64 %1706, i64* %RAX.i566, align 8
  %1707 = shl nsw i64 %1706, 2
  %1708 = add nsw i64 %1707, 8807744
  %1709 = add i64 %storemerge36, 12
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i32*
  %1711 = load i32, i32* %1710, align 4
  store i8 0, i8* %40, align 1
  %1712 = and i32 %1711, 255
  %1713 = tail call i32 @llvm.ctpop.i32(i32 %1712)
  %1714 = trunc i32 %1713 to i8
  %1715 = and i8 %1714, 1
  %1716 = xor i8 %1715, 1
  store i8 %1716, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %1717 = icmp eq i32 %1711, 0
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %50, align 1
  %1719 = lshr i32 %1711, 31
  %1720 = trunc i32 %1719 to i8
  store i8 %1720, i8* %53, align 1
  store i8 0, i8* %54, align 1
  %.v176 = select i1 %1717, i64 118, i64 18
  %1721 = add i64 %storemerge36, %.v176
  store i64 %1721, i64* %3, align 8
  br i1 %1717, label %block_.L_401354.loopexit, label %block_4012f0

block_4012f0:                                     ; preds = %block_.L_4012de
  %1722 = add i64 %1721, 4
  store i64 %1722, i64* %3, align 8
  %1723 = load i32, i32* %1704, align 4
  %1724 = sext i32 %1723 to i64
  store i64 %1724, i64* %RAX.i566, align 8
  %1725 = shl nsw i64 %1724, 2
  %1726 = add nsw i64 %1725, 8807744
  %1727 = add i64 %1721, 12
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  %1729 = load i32, i32* %1728, align 4
  %1730 = add i32 %1729, -12
  %1731 = icmp ult i32 %1729, 12
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %40, align 1
  %1733 = and i32 %1730, 255
  %1734 = tail call i32 @llvm.ctpop.i32(i32 %1733)
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  store i8 %1737, i8* %46, align 1
  %1738 = xor i32 %1730, %1729
  %1739 = lshr i32 %1738, 4
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  store i8 %1741, i8* %47, align 1
  %1742 = icmp eq i32 %1730, 0
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %50, align 1
  %1744 = lshr i32 %1730, 31
  %1745 = trunc i32 %1744 to i8
  store i8 %1745, i8* %53, align 1
  %1746 = lshr i32 %1729, 31
  %1747 = xor i32 %1744, %1746
  %1748 = add nuw nsw i32 %1747, %1746
  %1749 = icmp eq i32 %1748, 2
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %54, align 1
  %.v175 = select i1 %1742, i64 36, i64 18
  %1751 = add i64 %1721, %.v175
  store i64 %1751, i64* %3, align 8
  br i1 %1742, label %block_.L_401314, label %block_401302

block_401302:                                     ; preds = %block_4012f0
  %1752 = add i64 %1751, 4
  store i64 %1752, i64* %3, align 8
  %1753 = load i32, i32* %1704, align 4
  %1754 = sext i32 %1753 to i64
  store i64 %1754, i64* %RAX.i566, align 8
  %1755 = shl nsw i64 %1754, 2
  %1756 = add nsw i64 %1755, 8807744
  %1757 = add i64 %1751, 12
  store i64 %1757, i64* %3, align 8
  %1758 = inttoptr i64 %1756 to i32*
  %1759 = load i32, i32* %1758, align 4
  %1760 = add i32 %1759, -10
  %1761 = icmp ult i32 %1759, 10
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %40, align 1
  %1763 = and i32 %1760, 255
  %1764 = tail call i32 @llvm.ctpop.i32(i32 %1763)
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  %1767 = xor i8 %1766, 1
  store i8 %1767, i8* %46, align 1
  %1768 = xor i32 %1760, %1759
  %1769 = lshr i32 %1768, 4
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  store i8 %1771, i8* %47, align 1
  %1772 = icmp eq i32 %1760, 0
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %50, align 1
  %1774 = lshr i32 %1760, 31
  %1775 = trunc i32 %1774 to i8
  store i8 %1775, i8* %53, align 1
  %1776 = lshr i32 %1759, 31
  %1777 = xor i32 %1774, %1776
  %1778 = add nuw nsw i32 %1777, %1776
  %1779 = icmp eq i32 %1778, 2
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %54, align 1
  %.v174 = select i1 %1772, i64 18, i64 32
  %1781 = add i64 %1751, %.v174
  store i64 %1781, i64* %3, align 8
  br i1 %1772, label %block_.L_401314, label %block_.L_401322

block_.L_401314:                                  ; preds = %block_401302, %block_4012f0
  %1782 = phi i64 [ %1781, %block_401302 ], [ %1751, %block_4012f0 ]
  %1783 = add i64 %1701, -24
  %1784 = add i64 %1782, 3
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i32*
  %1786 = load i32, i32* %1785, align 4
  %1787 = add i32 %1786, 1
  %1788 = zext i32 %1787 to i64
  store i64 %1788, i64* %RAX.i566, align 8
  %1789 = icmp eq i32 %1786, -1
  %1790 = icmp eq i32 %1787, 0
  %1791 = or i1 %1789, %1790
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %40, align 1
  %1793 = and i32 %1787, 255
  %1794 = tail call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  store i8 %1797, i8* %46, align 1
  %1798 = xor i32 %1787, %1786
  %1799 = lshr i32 %1798, 4
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  store i8 %1801, i8* %47, align 1
  %1802 = zext i1 %1790 to i8
  store i8 %1802, i8* %50, align 1
  %1803 = lshr i32 %1787, 31
  %1804 = trunc i32 %1803 to i8
  store i8 %1804, i8* %53, align 1
  %1805 = lshr i32 %1786, 31
  %1806 = xor i32 %1803, %1805
  %1807 = add nuw nsw i32 %1806, %1803
  %1808 = icmp eq i32 %1807, 2
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %54, align 1
  %1810 = add i64 %1782, 9
  store i64 %1810, i64* %3, align 8
  store i32 %1787, i32* %1785, align 4
  %1811 = load i64, i64* %3, align 8
  %1812 = add i64 %1811, 55
  %.pre157.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_401354.sink.split

block_.L_401322:                                  ; preds = %block_401302
  %1813 = add i64 %1781, 4
  store i64 %1813, i64* %3, align 8
  %1814 = load i32, i32* %1704, align 4
  %1815 = sext i32 %1814 to i64
  store i64 %1815, i64* %RAX.i566, align 8
  %1816 = shl nsw i64 %1815, 2
  %1817 = add nsw i64 %1816, 8807744
  %1818 = add i64 %1781, 12
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i32*
  %1820 = load i32, i32* %1819, align 4
  %1821 = add i32 %1820, -13
  %1822 = icmp ult i32 %1820, 13
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %40, align 1
  %1824 = and i32 %1821, 255
  %1825 = tail call i32 @llvm.ctpop.i32(i32 %1824)
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = xor i8 %1827, 1
  store i8 %1828, i8* %46, align 1
  %1829 = xor i32 %1821, %1820
  %1830 = lshr i32 %1829, 4
  %1831 = trunc i32 %1830 to i8
  %1832 = and i8 %1831, 1
  store i8 %1832, i8* %47, align 1
  %1833 = icmp eq i32 %1821, 0
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %50, align 1
  %1835 = lshr i32 %1821, 31
  %1836 = trunc i32 %1835 to i8
  store i8 %1836, i8* %53, align 1
  %1837 = lshr i32 %1820, 31
  %1838 = xor i32 %1835, %1837
  %1839 = add nuw nsw i32 %1838, %1837
  %1840 = icmp eq i32 %1839, 2
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %54, align 1
  %.v173 = select i1 %1833, i64 23, i64 18
  %1842 = add i64 %1781, %.v173
  store i64 %1842, i64* %3, align 8
  br i1 %1833, label %block_.L_401339, label %block_401334

block_401334:                                     ; preds = %block_.L_401322
  %1843 = add i64 %1842, 32
  br label %block_.L_401354.sink.split

block_.L_401339:                                  ; preds = %block_.L_401322
  %1844 = add i64 %1701, -20
  %1845 = add i64 %1842, 9
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  %1847 = load i32, i32* %1846, align 4
  %1848 = sext i32 %1847 to i64
  store i64 %1848, i64* %RAX.i566, align 8
  %1849 = shl nsw i64 %1848, 2
  %1850 = add nsw i64 %1849, 4347168
  %1851 = add i64 %1842, 16
  store i64 %1851, i64* %3, align 8
  %1852 = inttoptr i64 %1850 to i32*
  %1853 = load i32, i32* %1852, align 4
  %1854 = zext i32 %1853 to i64
  store i64 %1854, i64* %RCX.i555, align 8
  %1855 = add i64 %1842, 19
  store i64 %1855, i64* %3, align 8
  %1856 = load i32, i32* %1704, align 4
  %1857 = add i32 %1856, %1853
  %1858 = zext i32 %1857 to i64
  store i64 %1858, i64* %RCX.i555, align 8
  %1859 = icmp ult i32 %1857, %1853
  %1860 = icmp ult i32 %1857, %1856
  %1861 = or i1 %1859, %1860
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %40, align 1
  %1863 = and i32 %1857, 255
  %1864 = tail call i32 @llvm.ctpop.i32(i32 %1863)
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  %1867 = xor i8 %1866, 1
  store i8 %1867, i8* %46, align 1
  %1868 = xor i32 %1856, %1853
  %1869 = xor i32 %1868, %1857
  %1870 = lshr i32 %1869, 4
  %1871 = trunc i32 %1870 to i8
  %1872 = and i8 %1871, 1
  store i8 %1872, i8* %47, align 1
  %1873 = icmp eq i32 %1857, 0
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %50, align 1
  %1875 = lshr i32 %1857, 31
  %1876 = trunc i32 %1875 to i8
  store i8 %1876, i8* %53, align 1
  %1877 = lshr i32 %1853, 31
  %1878 = lshr i32 %1856, 31
  %1879 = xor i32 %1875, %1877
  %1880 = xor i32 %1875, %1878
  %1881 = add nuw nsw i32 %1879, %1880
  %1882 = icmp eq i32 %1881, 2
  %1883 = zext i1 %1882 to i8
  store i8 %1883, i8* %54, align 1
  %1884 = add i64 %1842, 22
  store i64 %1884, i64* %3, align 8
  store i32 %1857, i32* %1704, align 4
  %1885 = load i64, i64* %3, align 8
  %1886 = add i64 %1885, -113
  %1887 = add i64 %1885, 5
  store i64 %1887, i64* %3, align 8
  %.pre156 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4012de

block_.L_401354.sink.split:                       ; preds = %block_.L_401314, %block_401334
  %.pre157 = phi i64 [ %1701, %block_401334 ], [ %.pre157.pre, %block_.L_401314 ]
  %.sink80 = phi i64 [ %1843, %block_401334 ], [ %1812, %block_.L_401314 ]
  store i64 %.sink80, i64* %3, align 8
  br label %block_.L_401354

block_.L_401354.loopexit:                         ; preds = %block_.L_4012de
  br label %block_.L_401354

block_.L_401354:                                  ; preds = %block_.L_401354.loopexit, %block_.L_401354.sink.split
  %1888 = phi i64 [ %.pre157, %block_.L_401354.sink.split ], [ %1701, %block_.L_401354.loopexit ]
  %1889 = phi i64 [ %.sink80, %block_.L_401354.sink.split ], [ %1721, %block_.L_401354.loopexit ]
  %1890 = add i64 %1888, -20
  %1891 = add i64 %1889, 18
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i32*
  %1893 = load i32, i32* %1892, align 4
  %1894 = add i32 %1893, 1
  %1895 = zext i32 %1894 to i64
  store i64 %1895, i64* %RAX.i566, align 8
  %1896 = icmp eq i32 %1893, -1
  %1897 = icmp eq i32 %1894, 0
  %1898 = or i1 %1896, %1897
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %40, align 1
  %1900 = and i32 %1894, 255
  %1901 = tail call i32 @llvm.ctpop.i32(i32 %1900)
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  %1904 = xor i8 %1903, 1
  store i8 %1904, i8* %46, align 1
  %1905 = xor i32 %1894, %1893
  %1906 = lshr i32 %1905, 4
  %1907 = trunc i32 %1906 to i8
  %1908 = and i8 %1907, 1
  store i8 %1908, i8* %47, align 1
  %1909 = zext i1 %1897 to i8
  store i8 %1909, i8* %50, align 1
  %1910 = lshr i32 %1894, 31
  %1911 = trunc i32 %1910 to i8
  store i8 %1911, i8* %53, align 1
  %1912 = lshr i32 %1893, 31
  %1913 = xor i32 %1910, %1912
  %1914 = add nuw nsw i32 %1913, %1910
  %1915 = icmp eq i32 %1914, 2
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %54, align 1
  %1917 = add i64 %1889, 24
  store i64 %1917, i64* %3, align 8
  store i32 %1894, i32* %1892, align 4
  %1918 = load i64, i64* %3, align 8
  %1919 = add i64 %1918, -266
  store i64 %1919, i64* %3, align 8
  br label %block_.L_401262

block_.L_401371.sink.split:                       ; preds = %block_4012ab, %block_4012cb
  %1920 = phi i64 [ %1636, %block_4012ab ], [ %1687, %block_4012cb ]
  %1921 = phi i32 [ %1637, %block_4012ab ], [ %1688, %block_4012cb ]
  %1922 = phi i64 [ %1631, %block_4012ab ], [ %1650, %block_4012cb ]
  %.sink96 = phi i32 [ %1648, %block_4012ab ], [ %1699, %block_4012cb ]
  %.sink77 = phi i32 [ %1635, %block_4012ab ], [ %1686, %block_4012cb ]
  %.sink63 = phi i64 [ 189, %block_4012ab ], [ 157, %block_4012cb ]
  %MEMORY.23.ph = phi %struct.Memory* [ %1620, %block_4012ab ], [ %MEMORY.19, %block_4012cb ]
  %1923 = lshr i32 %.sink96, 4
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  store i8 %1925, i8* %47, align 1
  %1926 = icmp eq i32 %1921, 0
  %1927 = zext i1 %1926 to i8
  store i8 %1927, i8* %50, align 1
  %1928 = lshr i32 %1921, 31
  %1929 = trunc i32 %1928 to i8
  store i8 %1929, i8* %53, align 1
  %1930 = lshr i32 %.sink77, 31
  %1931 = xor i32 %1930, %1928
  %1932 = add nuw nsw i32 %1931, %1928
  %1933 = icmp eq i32 %1932, 2
  %1934 = zext i1 %1933 to i8
  store i8 %1934, i8* %54, align 1
  %1935 = add i64 %1922, -24
  %1936 = add i64 %1920, 3
  store i64 %1936, i64* %3, align 8
  %1937 = inttoptr i64 %1935 to i32*
  store i32 %1921, i32* %1937, align 4
  %1938 = load i64, i64* %3, align 8
  %1939 = add i64 %1938, %.sink63
  store i64 %1939, i64* %3, align 8
  %.pre151 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401371

block_.L_401371.loopexit:                         ; preds = %block_.L_401262
  br label %block_.L_401371

block_.L_401371:                                  ; preds = %block_.L_401371.loopexit, %block_.L_401371.sink.split
  %1940 = phi i64 [ %1939, %block_.L_401371.sink.split ], [ %1506, %block_.L_401371.loopexit ]
  %1941 = phi i64 [ %.pre151, %block_.L_401371.sink.split ], [ %1478, %block_.L_401371.loopexit ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.23.ph, %block_.L_401371.sink.split ], [ %MEMORY.18, %block_.L_401371.loopexit ]
  %1942 = add i64 %1941, -20
  %1943 = add i64 %1940, 7
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i32*
  store i32 0, i32* %1944, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_401378

block_.L_401378:                                  ; preds = %block_.L_4013ae, %block_.L_401371
  %1945 = phi i64 [ %2111, %block_.L_4013ae ], [ %.pre152, %block_.L_401371 ]
  %1946 = load i64, i64* %RBP.i, align 8
  %1947 = add i64 %1946, -20
  %1948 = add i64 %1945, 4
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1947 to i32*
  %1950 = load i32, i32* %1949, align 4
  %1951 = add i32 %1950, -8
  %1952 = icmp ult i32 %1950, 8
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %40, align 1
  %1954 = and i32 %1951, 255
  %1955 = tail call i32 @llvm.ctpop.i32(i32 %1954)
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  store i8 %1958, i8* %46, align 1
  %1959 = xor i32 %1951, %1950
  %1960 = lshr i32 %1959, 4
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  store i8 %1962, i8* %47, align 1
  %1963 = icmp eq i32 %1951, 0
  %1964 = zext i1 %1963 to i8
  store i8 %1964, i8* %50, align 1
  %1965 = lshr i32 %1951, 31
  %1966 = trunc i32 %1965 to i8
  store i8 %1966, i8* %53, align 1
  %1967 = lshr i32 %1950, 31
  %1968 = xor i32 %1965, %1967
  %1969 = add nuw nsw i32 %1968, %1967
  %1970 = icmp eq i32 %1969, 2
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %54, align 1
  %1972 = icmp ne i8 %1966, 0
  %1973 = xor i1 %1972, %1970
  %.v188 = select i1 %1973, i64 10, i64 73
  %1974 = add i64 %1945, %.v188
  store i64 %1974, i64* %3, align 8
  br i1 %1973, label %block_401382, label %block_.L_4013c1

block_401382:                                     ; preds = %block_.L_401378
  %1975 = add i64 %1946, -8
  %1976 = add i64 %1974, 3
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RAX.i566, align 8
  %1980 = add i64 %1974, 7
  store i64 %1980, i64* %3, align 8
  %1981 = load i32, i32* %1949, align 4
  %1982 = sext i32 %1981 to i64
  store i64 %1982, i64* %RCX.i555, align 8
  %1983 = shl nsw i64 %1982, 2
  %1984 = add nsw i64 %1983, 4347184
  %1985 = add i64 %1974, 14
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i32*
  %1987 = load i32, i32* %1986, align 4
  %1988 = add i32 %1987, %1978
  %1989 = zext i32 %1988 to i64
  store i64 %1989, i64* %RAX.i566, align 8
  %1990 = icmp ult i32 %1988, %1978
  %1991 = icmp ult i32 %1988, %1987
  %1992 = or i1 %1990, %1991
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %40, align 1
  %1994 = and i32 %1988, 255
  %1995 = tail call i32 @llvm.ctpop.i32(i32 %1994)
  %1996 = trunc i32 %1995 to i8
  %1997 = and i8 %1996, 1
  %1998 = xor i8 %1997, 1
  store i8 %1998, i8* %46, align 1
  %1999 = xor i32 %1987, %1978
  %2000 = xor i32 %1999, %1988
  %2001 = lshr i32 %2000, 4
  %2002 = trunc i32 %2001 to i8
  %2003 = and i8 %2002, 1
  store i8 %2003, i8* %47, align 1
  %2004 = icmp eq i32 %1988, 0
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %50, align 1
  %2006 = lshr i32 %1988, 31
  %2007 = trunc i32 %2006 to i8
  store i8 %2007, i8* %53, align 1
  %2008 = lshr i32 %1978, 31
  %2009 = lshr i32 %1987, 31
  %2010 = xor i32 %2006, %2008
  %2011 = xor i32 %2006, %2009
  %2012 = add nuw nsw i32 %2010, %2011
  %2013 = icmp eq i32 %2012, 2
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %54, align 1
  %2015 = add i64 %1946, -16
  %2016 = add i64 %1974, 17
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i32*
  store i32 %1988, i32* %2017, align 4
  %2018 = load i64, i64* %RBP.i, align 8
  %2019 = add i64 %2018, -16
  %2020 = load i64, i64* %3, align 8
  %2021 = add i64 %2020, 4
  store i64 %2021, i64* %3, align 8
  %2022 = inttoptr i64 %2019 to i32*
  %2023 = load i32, i32* %2022, align 4
  %2024 = sext i32 %2023 to i64
  store i64 %2024, i64* %RCX.i555, align 8
  %2025 = shl nsw i64 %2024, 2
  %2026 = add nsw i64 %2025, 8807744
  %2027 = add i64 %2020, 12
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = add i32 %2029, -4
  %2031 = icmp ult i32 %2029, 4
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %40, align 1
  %2033 = and i32 %2030, 255
  %2034 = tail call i32 @llvm.ctpop.i32(i32 %2033)
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  %2037 = xor i8 %2036, 1
  store i8 %2037, i8* %46, align 1
  %2038 = xor i32 %2030, %2029
  %2039 = lshr i32 %2038, 4
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  store i8 %2041, i8* %47, align 1
  %2042 = icmp eq i32 %2030, 0
  %2043 = zext i1 %2042 to i8
  store i8 %2043, i8* %50, align 1
  %2044 = lshr i32 %2030, 31
  %2045 = trunc i32 %2044 to i8
  store i8 %2045, i8* %53, align 1
  %2046 = lshr i32 %2029, 31
  %2047 = xor i32 %2044, %2046
  %2048 = add nuw nsw i32 %2047, %2046
  %2049 = icmp eq i32 %2048, 2
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %54, align 1
  %.v189 = select i1 %2042, i64 18, i64 27
  %2051 = add i64 %2020, %.v189
  store i64 %2051, i64* %3, align 8
  br i1 %2042, label %block_4013a5, label %block_.L_4013ae

block_4013a5:                                     ; preds = %block_401382
  %2052 = add i64 %2018, -24
  %2053 = add i64 %2051, 3
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to i32*
  %2055 = load i32, i32* %2054, align 4
  %2056 = add i32 %2055, 1
  %2057 = zext i32 %2056 to i64
  store i64 %2057, i64* %RAX.i566, align 8
  %2058 = icmp eq i32 %2055, -1
  %2059 = icmp eq i32 %2056, 0
  %2060 = or i1 %2058, %2059
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %40, align 1
  %2062 = and i32 %2056, 255
  %2063 = tail call i32 @llvm.ctpop.i32(i32 %2062)
  %2064 = trunc i32 %2063 to i8
  %2065 = and i8 %2064, 1
  %2066 = xor i8 %2065, 1
  store i8 %2066, i8* %46, align 1
  %2067 = xor i32 %2056, %2055
  %2068 = lshr i32 %2067, 4
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  store i8 %2070, i8* %47, align 1
  %2071 = zext i1 %2059 to i8
  store i8 %2071, i8* %50, align 1
  %2072 = lshr i32 %2056, 31
  %2073 = trunc i32 %2072 to i8
  store i8 %2073, i8* %53, align 1
  %2074 = lshr i32 %2055, 31
  %2075 = xor i32 %2072, %2074
  %2076 = add nuw nsw i32 %2075, %2072
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %54, align 1
  %2079 = add i64 %2051, 9
  store i64 %2079, i64* %3, align 8
  store i32 %2056, i32* %2054, align 4
  %.pre154 = load i64, i64* %3, align 8
  %.pre155 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4013ae

block_.L_4013ae:                                  ; preds = %block_401382, %block_4013a5
  %2080 = phi i64 [ %.pre155, %block_4013a5 ], [ %2018, %block_401382 ]
  %2081 = phi i64 [ %.pre154, %block_4013a5 ], [ %2051, %block_401382 ]
  %2082 = add i64 %2080, -20
  %2083 = add i64 %2081, 8
  store i64 %2083, i64* %3, align 8
  %2084 = inttoptr i64 %2082 to i32*
  %2085 = load i32, i32* %2084, align 4
  %2086 = add i32 %2085, 1
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RAX.i566, align 8
  %2088 = icmp eq i32 %2085, -1
  %2089 = icmp eq i32 %2086, 0
  %2090 = or i1 %2088, %2089
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %40, align 1
  %2092 = and i32 %2086, 255
  %2093 = tail call i32 @llvm.ctpop.i32(i32 %2092)
  %2094 = trunc i32 %2093 to i8
  %2095 = and i8 %2094, 1
  %2096 = xor i8 %2095, 1
  store i8 %2096, i8* %46, align 1
  %2097 = xor i32 %2086, %2085
  %2098 = lshr i32 %2097, 4
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  store i8 %2100, i8* %47, align 1
  %2101 = zext i1 %2089 to i8
  store i8 %2101, i8* %50, align 1
  %2102 = lshr i32 %2086, 31
  %2103 = trunc i32 %2102 to i8
  store i8 %2103, i8* %53, align 1
  %2104 = lshr i32 %2085, 31
  %2105 = xor i32 %2102, %2104
  %2106 = add nuw nsw i32 %2105, %2102
  %2107 = icmp eq i32 %2106, 2
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %54, align 1
  %2109 = add i64 %2081, 14
  store i64 %2109, i64* %3, align 8
  store i32 %2086, i32* %2084, align 4
  %2110 = load i64, i64* %3, align 8
  %2111 = add i64 %2110, -68
  store i64 %2111, i64* %3, align 8
  br label %block_.L_401378

block_.L_4013c1:                                  ; preds = %block_.L_401378
  %2112 = add i64 %1974, 5
  store i64 %2112, i64* %3, align 8
  br label %block_.L_4013c6

block_.L_4013c6:                                  ; preds = %block_.L_4013c1, %block_.L_401186
  %2113 = phi i64 [ %948, %block_.L_401186 ], [ %1946, %block_.L_4013c1 ]
  %storemerge = phi i64 [ %1114, %block_.L_401186 ], [ %2112, %block_.L_4013c1 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.10, %block_.L_401186 ], [ %MEMORY.23, %block_.L_4013c1 ]
  %2114 = add i64 %2113, -24
  %2115 = add i64 %storemerge, 3
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i32*
  %2117 = load i32, i32* %2116, align 4
  %2118 = zext i32 %2117 to i64
  store i64 %2118, i64* %RAX.i566, align 8
  %2119 = add i64 %2113, -4
  %2120 = add i64 %storemerge, 6
  store i64 %2120, i64* %3, align 8
  %2121 = inttoptr i64 %2119 to i32*
  store i32 %2117, i32* %2121, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_4013cc

block_.L_4013cc:                                  ; preds = %block_.L_4013c6, %block_400f23
  %2122 = phi i64 [ %.pre153, %block_.L_4013c6 ], [ %60, %block_400f23 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.26, %block_.L_4013c6 ], [ %2, %block_400f23 ]
  %2123 = load i64, i64* %RBP.i, align 8
  %2124 = add i64 %2123, -4
  %2125 = add i64 %2122, 3
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i32*
  %2127 = load i32, i32* %2126, align 4
  %2128 = zext i32 %2127 to i64
  store i64 %2128, i64* %RAX.i566, align 8
  %2129 = add i64 %2122, 4
  store i64 %2129, i64* %3, align 8
  %2130 = load i64, i64* %6, align 8
  %2131 = add i64 %2130, 8
  %2132 = inttoptr i64 %2130 to i64*
  %2133 = load i64, i64* %2132, align 8
  store i64 %2133, i64* %RBP.i, align 8
  store i64 %2131, i64* %6, align 8
  %2134 = add i64 %2122, 5
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2131 to i64*
  %2136 = load i64, i64* %2135, align 8
  store i64 %2136, i64* %3, align 8
  %2137 = add i64 %2130, 16
  store i64 %2137, i64* %6, align 8
  ret %struct.Memory* %MEMORY.27
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = and i32 %9, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400f2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4013cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_40118b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jge_.L_401020(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x425510___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4347152
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -5
  %11 = icmp ult i32 %9, 5
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400f8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jmpq_.L_401020(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_401008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x7__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -7
  %11 = icmp ult i32 %9, 7
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_400fc8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x9__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -9
  %11 = icmp ult i32 %9, 9
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400fd6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xd__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -13
  %11 = icmp ult i32 %9, 13
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_400fed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_400ff2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_0x425510___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347152
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
define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40100d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401012(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jmpq_.L_400f52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401136(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x425520___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4347168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp eq i32 %9, 0
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40107e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_je_.L_40107e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401136(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -5
  %11 = icmp ult i32 %9, 5
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40109e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4010a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_401119(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xb__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -11
  %11 = icmp ult i32 %9, 11
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4010d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4010e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401119(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4010fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401103(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x425520___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 4347168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40111e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401123(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401128(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401027(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_401186(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0x425530___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 4347184
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -3
  %11 = icmp ult i32 %9, 3
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401173(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401178(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40113d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4013c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40125b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x6__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -6
  %11 = icmp ult i32 %9, 6
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4011cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40125b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4011d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_401243(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x8__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -8
  %11 = icmp ult i32 %9, 8
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_401208(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xa__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -10
  %11 = icmp ult i32 %9, 10
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401216(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401243(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40122d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401248(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40124d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401192(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401371(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -2
  %11 = icmp ult i32 %9, 2
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4012b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jmpq_.L_401371(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -6
  %11 = icmp ult i32 %9, 6
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4012d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4012de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_401354(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xc__0x866540___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -12
  %11 = icmp ult i32 %9, 12
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_401314(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401322(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401354(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_401339(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40133e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401359(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40135e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401363(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401262(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4013c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__0x866540___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8807744
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %9, 4
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
  %20 = xor i32 %10, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %10, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %10, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %9, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4013ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4013b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401378(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
