; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x45b298_type = type <{ [8 x i8] }>
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
@G__0x45b298 = global %G__0x45b298_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @TraceDecompose(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %RDI.i556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i556, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %RSI.i553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i553, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i550 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i550, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -36
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 7
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %58 to i32*
  store i32 0, i32* %61, align 4
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -40
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 7
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %63 to i32*
  store i32 0, i32* %66, align 4
  %RAX.i543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4502e2

block_.L_4502e2:                                  ; preds = %block_.L_450313, %entry
  %67 = phi i64 [ %205, %block_.L_450313 ], [ %.pre, %entry ]
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -40
  %70 = add i64 %67, 3
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = zext i32 %72 to i64
  store i64 %73, i64* %RAX.i543, align 8
  %74 = add i64 %68, -8
  %75 = add i64 %67, 7
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %RCX.i540, align 8
  %78 = add i64 %67, 9
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = sub i32 %72, %80
  %82 = icmp ult i32 %72, %80
  %83 = zext i1 %82 to i8
  store i8 %83, i8* %14, align 1
  %84 = and i32 %81, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84)
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %21, align 1
  %89 = xor i32 %80, %72
  %90 = xor i32 %89, %81
  %91 = lshr i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %27, align 1
  %94 = icmp eq i32 %81, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %30, align 1
  %96 = lshr i32 %81, 31
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %33, align 1
  %98 = lshr i32 %72, 31
  %99 = lshr i32 %80, 31
  %100 = xor i32 %99, %98
  %101 = xor i32 %96, %98
  %102 = add nuw nsw i32 %101, %100
  %103 = icmp eq i32 %102, 2
  %104 = zext i1 %103 to i8
  store i8 %104, i8* %39, align 1
  %105 = icmp ne i8 %97, 0
  %106 = xor i1 %105, %103
  %.v29 = select i1 %106, i64 15, i64 68
  %107 = add i64 %67, %.v29
  store i64 %107, i64* %3, align 8
  br i1 %106, label %block_4502f1, label %block_.L_450326

block_4502f1:                                     ; preds = %block_.L_4502e2
  %108 = add i64 %107, 4
  store i64 %108, i64* %3, align 8
  %109 = load i64, i64* %76, align 8
  store i64 %109, i64* %RAX.i543, align 8
  %110 = add i64 %109, 8
  %111 = add i64 %107, 8
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RAX.i543, align 8
  %114 = add i64 %107, 12
  store i64 %114, i64* %3, align 8
  %115 = load i32, i32* %71, align 4
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %RCX.i540, align 8
  %117 = add i64 %113, %116
  %118 = add i64 %107, 16
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i8*
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i64
  %122 = and i64 %121, 4294967295
  store i64 %122, i64* %RDX.i550, align 8
  %123 = sext i8 %120 to i32
  %124 = add nsw i32 %123, -6
  %125 = icmp ult i8 %120, 6
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %14, align 1
  %127 = and i32 %124, 255
  %128 = tail call i32 @llvm.ctpop.i32(i32 %127)
  %129 = trunc i32 %128 to i8
  %130 = and i8 %129, 1
  %131 = xor i8 %130, 1
  store i8 %131, i8* %21, align 1
  %132 = xor i32 %124, %123
  %133 = lshr i32 %132, 4
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  store i8 %135, i8* %27, align 1
  %136 = icmp eq i32 %124, 0
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %30, align 1
  %138 = lshr i32 %124, 31
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %33, align 1
  %140 = lshr i32 %123, 31
  %141 = xor i32 %138, %140
  %142 = add nuw nsw i32 %141, %140
  %143 = icmp eq i32 %142, 2
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %39, align 1
  %.v33 = select i1 %136, i64 25, i64 34
  %145 = add i64 %107, %.v33
  store i64 %145, i64* %3, align 8
  br i1 %136, label %block_45030a, label %block_.L_450313

block_45030a:                                     ; preds = %block_4502f1
  %146 = add i64 %68, -36
  %147 = add i64 %145, 3
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, 1
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %RAX.i543, align 8
  %152 = icmp eq i32 %149, -1
  %153 = icmp eq i32 %150, 0
  %154 = or i1 %152, %153
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %14, align 1
  %156 = and i32 %150, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %21, align 1
  %161 = xor i32 %150, %149
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %27, align 1
  %165 = zext i1 %153 to i8
  store i8 %165, i8* %30, align 1
  %166 = lshr i32 %150, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %33, align 1
  %168 = lshr i32 %149, 31
  %169 = xor i32 %166, %168
  %170 = add nuw nsw i32 %169, %166
  %171 = icmp eq i32 %170, 2
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %39, align 1
  %173 = add i64 %145, 9
  store i64 %173, i64* %3, align 8
  store i32 %150, i32* %148, align 4
  %.pre25 = load i64, i64* %3, align 8
  %.pre26 = load i64, i64* %RBP.i, align 8
  br label %block_.L_450313

block_.L_450313:                                  ; preds = %block_4502f1, %block_45030a
  %174 = phi i64 [ %.pre26, %block_45030a ], [ %68, %block_4502f1 ]
  %175 = phi i64 [ %.pre25, %block_45030a ], [ %145, %block_4502f1 ]
  %176 = add i64 %174, -40
  %177 = add i64 %175, 8
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = add i32 %179, 1
  %181 = zext i32 %180 to i64
  store i64 %181, i64* %RAX.i543, align 8
  %182 = icmp eq i32 %179, -1
  %183 = icmp eq i32 %180, 0
  %184 = or i1 %182, %183
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %14, align 1
  %186 = and i32 %180, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186)
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %21, align 1
  %191 = xor i32 %180, %179
  %192 = lshr i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  store i8 %194, i8* %27, align 1
  %195 = zext i1 %183 to i8
  store i8 %195, i8* %30, align 1
  %196 = lshr i32 %180, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %33, align 1
  %198 = lshr i32 %179, 31
  %199 = xor i32 %196, %198
  %200 = add nuw nsw i32 %199, %196
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %39, align 1
  %203 = add i64 %175, 14
  store i64 %203, i64* %3, align 8
  store i32 %180, i32* %178, align 4
  %204 = load i64, i64* %3, align 8
  %205 = add i64 %204, -63
  store i64 %205, i64* %3, align 8
  br label %block_.L_4502e2

block_.L_450326:                                  ; preds = %block_.L_4502e2
  %206 = add i64 %68, -36
  %207 = add i64 %107, 4
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  store i8 0, i8* %14, align 1
  %210 = and i32 %209, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %215 = icmp eq i32 %209, 0
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %30, align 1
  %217 = lshr i32 %209, 31
  %218 = trunc i32 %217 to i8
  store i8 %218, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v30 = select i1 %215, i64 10, i64 36
  %219 = add i64 %107, %.v30
  store i64 %219, i64* %3, align 8
  br i1 %215, label %block_450330, label %block_.L_45034a

block_450330:                                     ; preds = %block_.L_450326
  %220 = add i64 %68, -24
  %221 = add i64 %219, 4
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %RAX.i543, align 8
  %224 = add i64 %219, 10
  store i64 %224, i64* %3, align 8
  %225 = inttoptr i64 %223 to i32*
  store i32 0, i32* %225, align 4
  %226 = load i64, i64* %RBP.i, align 8
  %227 = add i64 %226, -16
  %228 = load i64, i64* %3, align 8
  %229 = add i64 %228, 4
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %227 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %RAX.i543, align 8
  %232 = add i64 %228, 11
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i64*
  store i64 0, i64* %233, align 8
  %234 = load i64, i64* %3, align 8
  %235 = add i64 %234, 749
  store i64 %235, i64* %3, align 8
  br label %block_.L_450632

block_.L_45034a:                                  ; preds = %block_.L_450326
  store i64 ptrtoint (%G__0x45b298_type* @G__0x45b298 to i64), i64* %RDI.i556, align 8
  store i64 893, i64* %RSI.i553, align 8
  %236 = add i64 %219, 19
  store i64 %236, i64* %3, align 8
  %237 = load i32, i32* %208, align 4
  %238 = sext i32 %237 to i64
  %239 = shl nsw i64 %238, 3
  store i64 %239, i64* %RAX.i543, align 8
  %.lobit = lshr i32 %237, 31
  %240 = trunc i32 %.lobit to i8
  store i8 %240, i8* %14, align 1
  %241 = trunc i64 %239 to i32
  %242 = and i32 %241, 248
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %247 = icmp eq i32 %237, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %30, align 1
  %249 = lshr i64 %238, 60
  %250 = trunc i64 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %239, i64* %RDX.i550, align 8
  %252 = add i64 %219, -41706
  %253 = add i64 %219, 31
  %254 = load i64, i64* %6, align 8
  %255 = add i64 %254, -8
  %256 = inttoptr i64 %255 to i64*
  store i64 %253, i64* %256, align 8
  store i64 %255, i64* %6, align 8
  store i64 %252, i64* %3, align 8
  %call2_450364 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %252, %struct.Memory* %2)
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -32
  %259 = load i64, i64* %RAX.i543, align 8
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 4
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %258 to i64*
  store i64 %259, i64* %262, align 8
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -48
  %265 = load i64, i64* %3, align 8
  %266 = add i64 %265, 7
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %264 to i32*
  store i32 0, i32* %267, align 4
  %268 = load i64, i64* %RBP.i, align 8
  %269 = add i64 %268, -40
  %270 = load i64, i64* %3, align 8
  %271 = add i64 %270, 7
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %269 to i32*
  store i32 0, i32* %272, align 4
  %DL.i263 = bitcast %union.anon* %50 to i8*
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_45037b

block_.L_45037b:                                  ; preds = %block_.L_45060b, %block_.L_45034a
  %273 = phi i64 [ %.pre19, %block_.L_45034a ], [ %1286, %block_.L_45060b ]
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -40
  %276 = add i64 %273, 3
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RAX.i543, align 8
  %280 = add i64 %274, -8
  %281 = add i64 %273, 7
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i64*
  %283 = load i64, i64* %282, align 8
  store i64 %283, i64* %RCX.i540, align 8
  %284 = add i64 %273, 9
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = sub i32 %278, %286
  %288 = icmp ult i32 %278, %286
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %14, align 1
  %290 = and i32 %287, 255
  %291 = tail call i32 @llvm.ctpop.i32(i32 %290)
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  %294 = xor i8 %293, 1
  store i8 %294, i8* %21, align 1
  %295 = xor i32 %286, %278
  %296 = xor i32 %295, %287
  %297 = lshr i32 %296, 4
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  store i8 %299, i8* %27, align 1
  %300 = icmp eq i32 %287, 0
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %30, align 1
  %302 = lshr i32 %287, 31
  %303 = trunc i32 %302 to i8
  store i8 %303, i8* %33, align 1
  %304 = lshr i32 %278, 31
  %305 = lshr i32 %286, 31
  %306 = xor i32 %305, %304
  %307 = xor i32 %302, %304
  %308 = add nuw nsw i32 %307, %306
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %39, align 1
  %311 = icmp ne i8 %303, 0
  %312 = xor i1 %311, %309
  %.v31 = select i1 %312, i64 15, i64 675
  %313 = add i64 %273, %.v31
  store i64 %313, i64* %3, align 8
  br i1 %312, label %block_45038a, label %block_.L_45061e

block_45038a:                                     ; preds = %block_.L_45037b
  %314 = add i64 %313, 4
  store i64 %314, i64* %3, align 8
  %315 = load i64, i64* %282, align 8
  store i64 %315, i64* %RAX.i543, align 8
  %316 = add i64 %315, 8
  %317 = add i64 %313, 8
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i64*
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %RAX.i543, align 8
  %320 = add i64 %313, 12
  store i64 %320, i64* %3, align 8
  %321 = load i32, i32* %277, align 4
  %322 = sext i32 %321 to i64
  store i64 %322, i64* %RCX.i540, align 8
  %323 = add i64 %319, %322
  %324 = add i64 %313, 16
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i8*
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i64
  %328 = and i64 %327, 4294967295
  store i64 %328, i64* %RDX.i550, align 8
  %329 = sext i8 %326 to i32
  %330 = add nsw i32 %329, -6
  %331 = icmp ult i8 %326, 6
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %14, align 1
  %333 = and i32 %330, 255
  %334 = tail call i32 @llvm.ctpop.i32(i32 %333)
  %335 = trunc i32 %334 to i8
  %336 = and i8 %335, 1
  %337 = xor i8 %336, 1
  store i8 %337, i8* %21, align 1
  %338 = xor i32 %330, %329
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %27, align 1
  %342 = icmp eq i32 %330, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %30, align 1
  %344 = lshr i32 %330, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %33, align 1
  %346 = lshr i32 %329, 31
  %347 = xor i32 %344, %346
  %348 = add nuw nsw i32 %347, %346
  %349 = icmp eq i32 %348, 2
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %39, align 1
  %.v32 = select i1 %342, i64 25, i64 641
  %351 = add i64 %313, %.v32
  store i64 %351, i64* %3, align 8
  br i1 %342, label %block_4503a3, label %block_.L_45060b

block_4503a3:                                     ; preds = %block_45038a
  %352 = add i64 %351, 3
  store i64 %352, i64* %3, align 8
  %353 = load i32, i32* %277, align 4
  %354 = add i32 %353, 1
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RAX.i543, align 8
  %356 = icmp eq i32 %353, -1
  %357 = icmp eq i32 %354, 0
  %358 = or i1 %356, %357
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %14, align 1
  %360 = and i32 %354, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %21, align 1
  %365 = xor i32 %354, %353
  %366 = lshr i32 %365, 4
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  store i8 %368, i8* %27, align 1
  %369 = zext i1 %357 to i8
  store i8 %369, i8* %30, align 1
  %370 = lshr i32 %354, 31
  %371 = trunc i32 %370 to i8
  store i8 %371, i8* %33, align 1
  %372 = lshr i32 %353, 31
  %373 = xor i32 %370, %372
  %374 = add nuw nsw i32 %373, %370
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %39, align 1
  %377 = add i64 %274, -44
  %378 = add i64 %351, 9
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i32*
  store i32 %354, i32* %379, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_4503ac

block_.L_4503ac:                                  ; preds = %block_.L_4503d9, %block_4503a3
  %380 = phi i64 [ %487, %block_.L_4503d9 ], [ %.pre21, %block_4503a3 ]
  %381 = load i64, i64* %RBP.i, align 8
  %382 = add i64 %381, -44
  %383 = add i64 %380, 3
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  %385 = load i32, i32* %384, align 4
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RAX.i543, align 8
  %387 = add i64 %381, -8
  %388 = add i64 %380, 7
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i64*
  %390 = load i64, i64* %389, align 8
  store i64 %390, i64* %RCX.i540, align 8
  %391 = add i64 %380, 9
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  %393 = load i32, i32* %392, align 4
  %394 = sub i32 %385, %393
  %395 = icmp ult i32 %385, %393
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %14, align 1
  %397 = and i32 %394, 255
  %398 = tail call i32 @llvm.ctpop.i32(i32 %397)
  %399 = trunc i32 %398 to i8
  %400 = and i8 %399, 1
  %401 = xor i8 %400, 1
  store i8 %401, i8* %21, align 1
  %402 = xor i32 %393, %385
  %403 = xor i32 %402, %394
  %404 = lshr i32 %403, 4
  %405 = trunc i32 %404 to i8
  %406 = and i8 %405, 1
  store i8 %406, i8* %27, align 1
  %407 = icmp eq i32 %394, 0
  %408 = zext i1 %407 to i8
  store i8 %408, i8* %30, align 1
  %409 = lshr i32 %394, 31
  %410 = trunc i32 %409 to i8
  store i8 %410, i8* %33, align 1
  %411 = lshr i32 %385, 31
  %412 = lshr i32 %393, 31
  %413 = xor i32 %412, %411
  %414 = xor i32 %409, %411
  %415 = add nuw nsw i32 %414, %413
  %416 = icmp eq i32 %415, 2
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %39, align 1
  %418 = icmp ne i8 %410, 0
  %419 = xor i1 %418, %416
  %.v28 = select i1 %419, i64 15, i64 64
  %420 = add i64 %380, %.v28
  store i64 %420, i64* %3, align 8
  br i1 %419, label %block_4503bb, label %block_.L_4503ec.loopexit

block_4503bb:                                     ; preds = %block_.L_4503ac
  %421 = add i64 %420, 4
  store i64 %421, i64* %3, align 8
  %422 = load i64, i64* %389, align 8
  store i64 %422, i64* %RAX.i543, align 8
  %423 = add i64 %422, 8
  %424 = add i64 %420, 8
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i64*
  %426 = load i64, i64* %425, align 8
  store i64 %426, i64* %RAX.i543, align 8
  %427 = add i64 %420, 12
  store i64 %427, i64* %3, align 8
  %428 = load i32, i32* %384, align 4
  %429 = sext i32 %428 to i64
  store i64 %429, i64* %RCX.i540, align 8
  %430 = add i64 %426, %429
  %431 = add i64 %420, 16
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i8*
  %433 = load i8, i8* %432, align 1
  %434 = sext i8 %433 to i64
  %435 = and i64 %434, 4294967295
  store i64 %435, i64* %RDX.i550, align 8
  %436 = sext i8 %433 to i32
  %437 = add nsw i32 %436, -7
  %438 = icmp ult i8 %433, 7
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %14, align 1
  %440 = and i32 %437, 255
  %441 = tail call i32 @llvm.ctpop.i32(i32 %440)
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  %444 = xor i8 %443, 1
  store i8 %444, i8* %21, align 1
  %445 = xor i32 %437, %436
  %446 = lshr i32 %445, 4
  %447 = trunc i32 %446 to i8
  %448 = and i8 %447, 1
  store i8 %448, i8* %27, align 1
  %449 = icmp eq i32 %437, 0
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %30, align 1
  %451 = lshr i32 %437, 31
  %452 = trunc i32 %451 to i8
  store i8 %452, i8* %33, align 1
  %453 = lshr i32 %436, 31
  %454 = xor i32 %451, %453
  %455 = add nuw nsw i32 %454, %453
  %456 = icmp eq i32 %455, 2
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %39, align 1
  %.v27 = select i1 %449, i64 25, i64 30
  %458 = add i64 %420, %.v27
  store i64 %458, i64* %3, align 8
  br i1 %449, label %block_4503d4, label %block_.L_4503d9

block_4503d4:                                     ; preds = %block_4503bb
  %459 = add i64 %458, 24
  store i64 %459, i64* %3, align 8
  br label %block_.L_4503ec

block_.L_4503d9:                                  ; preds = %block_4503bb
  %460 = add i64 %458, 8
  store i64 %460, i64* %3, align 8
  %461 = load i32, i32* %384, align 4
  %462 = add i32 %461, 1
  %463 = zext i32 %462 to i64
  store i64 %463, i64* %RAX.i543, align 8
  %464 = icmp eq i32 %461, -1
  %465 = icmp eq i32 %462, 0
  %466 = or i1 %464, %465
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %14, align 1
  %468 = and i32 %462, 255
  %469 = tail call i32 @llvm.ctpop.i32(i32 %468)
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  %472 = xor i8 %471, 1
  store i8 %472, i8* %21, align 1
  %473 = xor i32 %462, %461
  %474 = lshr i32 %473, 4
  %475 = trunc i32 %474 to i8
  %476 = and i8 %475, 1
  store i8 %476, i8* %27, align 1
  %477 = zext i1 %465 to i8
  store i8 %477, i8* %30, align 1
  %478 = lshr i32 %462, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %33, align 1
  %480 = lshr i32 %461, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %478
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %39, align 1
  %485 = add i64 %458, 14
  store i64 %485, i64* %3, align 8
  store i32 %462, i32* %384, align 4
  %486 = load i64, i64* %3, align 8
  %487 = add i64 %486, -59
  store i64 %487, i64* %3, align 8
  br label %block_.L_4503ac

block_.L_4503ec.loopexit:                         ; preds = %block_.L_4503ac
  br label %block_.L_4503ec

block_.L_4503ec:                                  ; preds = %block_.L_4503ec.loopexit, %block_4503d4
  %488 = phi i64 [ %459, %block_4503d4 ], [ %420, %block_.L_4503ec.loopexit ]
  %489 = add i64 %488, 3
  store i64 %489, i64* %3, align 8
  %490 = load i32, i32* %384, align 4
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RAX.i543, align 8
  %492 = add i64 %381, -40
  %493 = add i64 %488, 6
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = sub i32 %490, %495
  %497 = lshr i32 %496, 31
  %498 = add i32 %496, 5
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RAX.i543, align 8
  %500 = icmp ugt i32 %496, -6
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = and i32 %498, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %21, align 1
  %507 = xor i32 %498, %496
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %27, align 1
  %511 = icmp eq i32 %498, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %30, align 1
  %513 = lshr i32 %498, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %33, align 1
  %515 = xor i32 %513, %497
  %516 = add nuw nsw i32 %515, %513
  %517 = icmp eq i32 %516, 2
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %39, align 1
  %519 = add i64 %381, -32
  %520 = add i64 %488, 13
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i64*
  %522 = load i64, i64* %521, align 8
  store i64 %522, i64* %RCX.i540, align 8
  %523 = add i64 %381, -48
  %524 = add i64 %488, 17
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = sext i32 %526 to i64
  %528 = shl nsw i64 %527, 3
  store i64 %528, i64* %RDX.i550, align 8
  %529 = add i64 %528, %522
  store i64 %529, i64* %RCX.i540, align 8
  %530 = icmp ult i64 %529, %522
  %531 = icmp ult i64 %529, %528
  %532 = or i1 %530, %531
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %14, align 1
  %534 = trunc i64 %529 to i32
  %535 = and i32 %534, 255
  %536 = tail call i32 @llvm.ctpop.i32(i32 %535)
  %537 = trunc i32 %536 to i8
  %538 = and i8 %537, 1
  %539 = xor i8 %538, 1
  store i8 %539, i8* %21, align 1
  %540 = xor i64 %528, %522
  %541 = xor i64 %540, %529
  %542 = lshr i64 %541, 4
  %543 = trunc i64 %542 to i8
  %544 = and i8 %543, 1
  store i8 %544, i8* %27, align 1
  %545 = icmp eq i64 %529, 0
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %30, align 1
  %547 = lshr i64 %529, 63
  %548 = trunc i64 %547 to i8
  store i8 %548, i8* %33, align 1
  %549 = lshr i64 %522, 63
  %550 = lshr i64 %527, 60
  %551 = and i64 %550, 1
  %552 = xor i64 %547, %549
  %553 = xor i64 %547, %551
  %554 = add nuw nsw i64 %552, %553
  %555 = icmp eq i64 %554, 2
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %39, align 1
  store i64 %499, i64* %RDI.i556, align 8
  store i64 %529, i64* %RSI.i553, align 8
  %557 = add i64 %488, -11820
  %558 = add i64 %488, 34
  %559 = load i64, i64* %6, align 8
  %560 = add i64 %559, -8
  %561 = inttoptr i64 %560 to i64*
  store i64 %558, i64* %561, align 8
  store i64 %560, i64* %6, align 8
  store i64 %557, i64* %3, align 8
  %call2_450409 = tail call %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* nonnull %0, i64 %557, %struct.Memory* %call2_450364)
  %562 = load i64, i64* %RBP.i, align 8
  %563 = add i64 %562, -44
  %564 = load i64, i64* %3, align 8
  %565 = add i64 %564, 3
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %563 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RAX.i543, align 8
  %569 = add i64 %562, -40
  %570 = add i64 %564, 6
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  %572 = load i32, i32* %571, align 4
  %573 = sub i32 %567, %572
  %574 = lshr i32 %573, 31
  %575 = add i32 %573, 5
  %576 = zext i32 %575 to i64
  store i64 %576, i64* %RAX.i543, align 8
  %577 = icmp ugt i32 %573, -6
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = and i32 %575, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i32 %575, %573
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %27, align 1
  %588 = icmp eq i32 %575, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %30, align 1
  %590 = lshr i32 %575, 31
  %591 = trunc i32 %590 to i8
  store i8 %591, i8* %33, align 1
  %592 = xor i32 %590, %574
  %593 = add nuw nsw i32 %592, %590
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %39, align 1
  %596 = add i64 %562, -32
  %597 = add i64 %564, 13
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i64*
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %RCX.i540, align 8
  %600 = add i64 %562, -48
  %601 = add i64 %564, 17
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = sext i32 %603 to i64
  store i64 %604, i64* %RDX.i550, align 8
  %605 = shl nsw i64 %604, 3
  %606 = add i64 %605, %599
  %607 = add i64 %564, 21
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i64*
  %609 = load i64, i64* %608, align 8
  store i64 %609, i64* %RCX.i540, align 8
  %610 = add i64 %564, 23
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  store i32 %575, i32* %611, align 4
  %612 = load i64, i64* %RBP.i, align 8
  %613 = add i64 %612, -32
  %614 = load i64, i64* %3, align 8
  %615 = add i64 %614, 4
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %613 to i64*
  %617 = load i64, i64* %616, align 8
  store i64 %617, i64* %RCX.i540, align 8
  %618 = add i64 %612, -48
  %619 = add i64 %614, 8
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = sext i32 %621 to i64
  store i64 %622, i64* %RDX.i550, align 8
  %623 = shl nsw i64 %622, 3
  %624 = add i64 %623, %617
  %625 = add i64 %614, 12
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i64*
  %627 = load i64, i64* %626, align 8
  store i64 %627, i64* %RCX.i540, align 8
  %628 = add i64 %627, 8
  %629 = add i64 %614, 16
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i64*
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %RCX.i540, align 8
  %632 = add i64 %614, 19
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i8*
  store i8 4, i8* %633, align 1
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -32
  %636 = load i64, i64* %3, align 8
  %637 = add i64 %636, 4
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %635 to i64*
  %639 = load i64, i64* %638, align 8
  store i64 %639, i64* %RCX.i540, align 8
  %640 = add i64 %634, -48
  %641 = add i64 %636, 8
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = sext i32 %643 to i64
  store i64 %644, i64* %RDX.i550, align 8
  %645 = shl nsw i64 %644, 3
  %646 = add i64 %645, %639
  %647 = add i64 %636, 12
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i64*
  %649 = load i64, i64* %648, align 8
  store i64 %649, i64* %RCX.i540, align 8
  %650 = add i64 %649, 16
  %651 = add i64 %636, 16
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i64*
  %653 = load i64, i64* %652, align 8
  store i64 %653, i64* %RCX.i540, align 8
  %654 = add i64 %636, 22
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i32*
  store i32 0, i32* %655, align 4
  %656 = load i64, i64* %RBP.i, align 8
  %657 = add i64 %656, -32
  %658 = load i64, i64* %3, align 8
  %659 = add i64 %658, 4
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %657 to i64*
  %661 = load i64, i64* %660, align 8
  store i64 %661, i64* %RCX.i540, align 8
  %662 = add i64 %656, -48
  %663 = add i64 %658, 8
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  store i64 %666, i64* %RDX.i550, align 8
  %667 = shl nsw i64 %666, 3
  %668 = add i64 %667, %661
  %669 = add i64 %658, 12
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %RCX.i540, align 8
  %672 = add i64 %671, 24
  %673 = add i64 %658, 16
  store i64 %673, i64* %3, align 8
  %674 = inttoptr i64 %672 to i64*
  %675 = load i64, i64* %674, align 8
  store i64 %675, i64* %RCX.i540, align 8
  %676 = add i64 %658, 22
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  store i32 0, i32* %677, align 4
  %678 = load i64, i64* %RBP.i, align 8
  %679 = add i64 %678, -32
  %680 = load i64, i64* %3, align 8
  %681 = add i64 %680, 4
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %679 to i64*
  %683 = load i64, i64* %682, align 8
  store i64 %683, i64* %RCX.i540, align 8
  %684 = add i64 %678, -48
  %685 = add i64 %680, 8
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i32*
  %687 = load i32, i32* %686, align 4
  %688 = sext i32 %687 to i64
  store i64 %688, i64* %RDX.i550, align 8
  %689 = shl nsw i64 %688, 3
  %690 = add i64 %689, %683
  %691 = add i64 %680, 12
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i64*
  %693 = load i64, i64* %692, align 8
  store i64 %693, i64* %RCX.i540, align 8
  %694 = add i64 %693, 8
  %695 = add i64 %680, 16
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i64*
  %697 = load i64, i64* %696, align 8
  store i64 %697, i64* %RCX.i540, align 8
  %698 = add i64 %697, 1
  %699 = add i64 %680, 20
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i8*
  store i8 5, i8* %700, align 1
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -32
  %703 = load i64, i64* %3, align 8
  %704 = add i64 %703, 4
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %702 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %RCX.i540, align 8
  %707 = add i64 %701, -48
  %708 = add i64 %703, 8
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = sext i32 %710 to i64
  store i64 %711, i64* %RDX.i550, align 8
  %712 = shl nsw i64 %711, 3
  %713 = add i64 %712, %706
  %714 = add i64 %703, 12
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i64*
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* %RCX.i540, align 8
  %717 = add i64 %716, 16
  %718 = add i64 %703, 16
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i64*
  %720 = load i64, i64* %719, align 8
  store i64 %720, i64* %RCX.i540, align 8
  %721 = add i64 %720, 4
  %722 = add i64 %703, 23
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  store i32 0, i32* %723, align 4
  %724 = load i64, i64* %RBP.i, align 8
  %725 = add i64 %724, -32
  %726 = load i64, i64* %3, align 8
  %727 = add i64 %726, 4
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %725 to i64*
  %729 = load i64, i64* %728, align 8
  store i64 %729, i64* %RCX.i540, align 8
  %730 = add i64 %724, -48
  %731 = add i64 %726, 8
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = sext i32 %733 to i64
  store i64 %734, i64* %RDX.i550, align 8
  %735 = shl nsw i64 %734, 3
  %736 = add i64 %735, %729
  %737 = add i64 %726, 12
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i64*
  %739 = load i64, i64* %738, align 8
  store i64 %739, i64* %RCX.i540, align 8
  %740 = add i64 %739, 24
  %741 = add i64 %726, 16
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %RCX.i540, align 8
  %744 = add i64 %743, 4
  %745 = add i64 %726, 23
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  store i32 0, i32* %746, align 4
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -44
  %749 = load i64, i64* %3, align 8
  %750 = add i64 %749, 7
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %748 to i32*
  store i32 2, i32* %751, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_4504ad

block_.L_4504ad:                                  ; preds = %block_.L_45053d, %block_.L_4503ec
  %752 = phi i64 [ %1254, %block_.L_45053d ], [ %.pre22, %block_.L_4503ec ]
  %753 = load i64, i64* %RBP.i, align 8
  %754 = add i64 %753, -8
  %755 = add i64 %752, 4
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i64*
  %757 = load i64, i64* %756, align 8
  store i64 %757, i64* %RAX.i543, align 8
  %758 = add i64 %757, 8
  %759 = add i64 %752, 8
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i64*
  %761 = load i64, i64* %760, align 8
  store i64 %761, i64* %RAX.i543, align 8
  %762 = add i64 %753, -40
  %763 = add i64 %752, 12
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = sext i32 %765 to i64
  store i64 %766, i64* %RCX.i540, align 8
  %767 = add i64 %761, %766
  %768 = add i64 %752, 15
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i8*
  %770 = load i8, i8* %769, align 1
  store i8 %770, i8* %DL.i263, align 1
  %771 = add i64 %753, -32
  %772 = add i64 %752, 19
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i64*
  %774 = load i64, i64* %773, align 8
  store i64 %774, i64* %RAX.i543, align 8
  %775 = add i64 %753, -48
  %776 = add i64 %752, 23
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = sext i32 %778 to i64
  store i64 %779, i64* %RCX.i540, align 8
  %780 = shl nsw i64 %779, 3
  %781 = add i64 %780, %774
  %782 = add i64 %752, 27
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i64*
  %784 = load i64, i64* %783, align 8
  store i64 %784, i64* %RAX.i543, align 8
  %785 = add i64 %784, 8
  %786 = add i64 %752, 31
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i64*
  %788 = load i64, i64* %787, align 8
  store i64 %788, i64* %RAX.i543, align 8
  %789 = add i64 %753, -44
  %790 = add i64 %752, 35
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = sext i32 %792 to i64
  store i64 %793, i64* %RCX.i540, align 8
  %794 = add i64 %788, %793
  %795 = add i64 %752, 38
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i8*
  store i8 %770, i8* %796, align 1
  %797 = load i64, i64* %RBP.i, align 8
  %798 = add i64 %797, -8
  %799 = load i64, i64* %3, align 8
  %800 = add i64 %799, 4
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %798 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RAX.i543, align 8
  %803 = add i64 %802, 16
  %804 = add i64 %799, 8
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RAX.i543, align 8
  %807 = add i64 %797, -40
  %808 = add i64 %799, 12
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RCX.i540, align 8
  %812 = shl nsw i64 %811, 2
  %813 = add i64 %812, %806
  %814 = add i64 %799, 15
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RSI.i553, align 8
  %818 = add i64 %797, -32
  %819 = add i64 %799, 19
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i64*
  %821 = load i64, i64* %820, align 8
  store i64 %821, i64* %RAX.i543, align 8
  %822 = add i64 %797, -48
  %823 = add i64 %799, 23
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = sext i32 %825 to i64
  store i64 %826, i64* %RCX.i540, align 8
  %827 = shl nsw i64 %826, 3
  %828 = add i64 %827, %821
  %829 = add i64 %799, 27
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %RAX.i543, align 8
  %832 = add i64 %831, 16
  %833 = add i64 %799, 31
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i64*
  %835 = load i64, i64* %834, align 8
  store i64 %835, i64* %RAX.i543, align 8
  %836 = add i64 %797, -44
  %837 = add i64 %799, 35
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = sext i32 %839 to i64
  store i64 %840, i64* %RCX.i540, align 8
  %841 = shl nsw i64 %840, 2
  %842 = add i64 %841, %835
  %843 = add i64 %799, 38
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  store i32 %816, i32* %844, align 4
  %845 = load i64, i64* %RBP.i, align 8
  %846 = add i64 %845, -8
  %847 = load i64, i64* %3, align 8
  %848 = add i64 %847, 4
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %846 to i64*
  %850 = load i64, i64* %849, align 8
  store i64 %850, i64* %RAX.i543, align 8
  %851 = add i64 %850, 24
  %852 = add i64 %847, 8
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %RAX.i543, align 8
  %855 = add i64 %845, -40
  %856 = add i64 %847, 12
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = sext i32 %858 to i64
  store i64 %859, i64* %RCX.i540, align 8
  %860 = shl nsw i64 %859, 2
  %861 = add i64 %860, %854
  %862 = add i64 %847, 15
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RSI.i553, align 8
  %866 = add i64 %845, -32
  %867 = add i64 %847, 19
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RAX.i543, align 8
  %870 = add i64 %845, -48
  %871 = add i64 %847, 23
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = sext i32 %873 to i64
  store i64 %874, i64* %RCX.i540, align 8
  %875 = shl nsw i64 %874, 3
  %876 = add i64 %875, %869
  %877 = add i64 %847, 27
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i64*
  %879 = load i64, i64* %878, align 8
  store i64 %879, i64* %RAX.i543, align 8
  %880 = add i64 %879, 24
  %881 = add i64 %847, 31
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i64*
  %883 = load i64, i64* %882, align 8
  store i64 %883, i64* %RAX.i543, align 8
  %884 = add i64 %845, -44
  %885 = add i64 %847, 35
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i32*
  %887 = load i32, i32* %886, align 4
  %888 = sext i32 %887 to i64
  store i64 %888, i64* %RCX.i540, align 8
  %889 = shl nsw i64 %888, 2
  %890 = add i64 %889, %883
  %891 = add i64 %847, 38
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  store i32 %864, i32* %892, align 4
  %893 = load i64, i64* %RBP.i, align 8
  %894 = add i64 %893, -8
  %895 = load i64, i64* %3, align 8
  %896 = add i64 %895, 4
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %894 to i64*
  %898 = load i64, i64* %897, align 8
  store i64 %898, i64* %RAX.i543, align 8
  %899 = add i64 %898, 8
  %900 = add i64 %895, 8
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i64*
  %902 = load i64, i64* %901, align 8
  store i64 %902, i64* %RAX.i543, align 8
  %903 = add i64 %893, -40
  %904 = add i64 %895, 12
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = sext i32 %906 to i64
  store i64 %907, i64* %RCX.i540, align 8
  %908 = add i64 %902, %907
  %909 = add i64 %895, 16
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i8*
  %911 = load i8, i8* %910, align 1
  %912 = sext i8 %911 to i64
  %913 = and i64 %912, 4294967295
  store i64 %913, i64* %RSI.i553, align 8
  %914 = sext i8 %911 to i32
  %915 = add nsw i32 %914, -7
  %916 = icmp ult i8 %911, 7
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %14, align 1
  %918 = and i32 %915, 255
  %919 = tail call i32 @llvm.ctpop.i32(i32 %918)
  %920 = trunc i32 %919 to i8
  %921 = and i8 %920, 1
  %922 = xor i8 %921, 1
  store i8 %922, i8* %21, align 1
  %923 = xor i32 %915, %914
  %924 = lshr i32 %923, 4
  %925 = trunc i32 %924 to i8
  %926 = and i8 %925, 1
  store i8 %926, i8* %27, align 1
  %927 = icmp eq i32 %915, 0
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %30, align 1
  %929 = lshr i32 %915, 31
  %930 = trunc i32 %929 to i8
  store i8 %930, i8* %33, align 1
  %931 = lshr i32 %914, 31
  %932 = xor i32 %929, %931
  %933 = add nuw nsw i32 %932, %931
  %934 = icmp eq i32 %933, 2
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %39, align 1
  %.v = select i1 %927, i64 25, i64 30
  %936 = add i64 %895, %.v
  store i64 %936, i64* %3, align 8
  br i1 %927, label %block_450538, label %block_.L_45053d

block_450538:                                     ; preds = %block_.L_4504ad
  %937 = add i64 %893, -44
  %938 = add i64 %936, 31
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = add i32 %940, 1
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RAX.i543, align 8
  %943 = icmp eq i32 %940, -1
  %944 = icmp eq i32 %941, 0
  %945 = or i1 %943, %944
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %14, align 1
  %947 = and i32 %941, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %21, align 1
  %952 = xor i32 %941, %940
  %953 = lshr i32 %952, 4
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  store i8 %955, i8* %27, align 1
  %956 = zext i1 %944 to i8
  store i8 %956, i8* %30, align 1
  %957 = lshr i32 %941, 31
  %958 = trunc i32 %957 to i8
  store i8 %958, i8* %33, align 1
  %959 = lshr i32 %940, 31
  %960 = xor i32 %957, %959
  %961 = add nuw nsw i32 %960, %957
  %962 = icmp eq i32 %961, 2
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %39, align 1
  %964 = add i64 %936, 37
  store i64 %964, i64* %3, align 8
  store i32 %941, i32* %939, align 4
  %965 = load i64, i64* %RBP.i, align 8
  %966 = add i64 %965, -32
  %967 = load i64, i64* %3, align 8
  %968 = add i64 %967, 4
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %966 to i64*
  %970 = load i64, i64* %969, align 8
  store i64 %970, i64* %RCX.i540, align 8
  %971 = add i64 %965, -48
  %972 = add i64 %967, 8
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i32*
  %974 = load i32, i32* %973, align 4
  %975 = sext i32 %974 to i64
  store i64 %975, i64* %RDX.i550, align 8
  %976 = shl nsw i64 %975, 3
  %977 = add i64 %976, %970
  %978 = add i64 %967, 12
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i64*
  %980 = load i64, i64* %979, align 8
  store i64 %980, i64* %RCX.i540, align 8
  %981 = add i64 %980, 8
  %982 = add i64 %967, 16
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  %984 = load i64, i64* %983, align 8
  store i64 %984, i64* %RCX.i540, align 8
  %985 = add i64 %965, -44
  %986 = add i64 %967, 20
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  %988 = load i32, i32* %987, align 4
  %989 = sext i32 %988 to i64
  store i64 %989, i64* %RDX.i550, align 8
  %990 = add i64 %984, %989
  %991 = add i64 %967, 24
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i8*
  store i8 8, i8* %992, align 1
  %993 = load i64, i64* %RBP.i, align 8
  %994 = add i64 %993, -32
  %995 = load i64, i64* %3, align 8
  %996 = add i64 %995, 4
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %994 to i64*
  %998 = load i64, i64* %997, align 8
  store i64 %998, i64* %RCX.i540, align 8
  %999 = add i64 %993, -48
  %1000 = add i64 %995, 8
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i32*
  %1002 = load i32, i32* %1001, align 4
  %1003 = sext i32 %1002 to i64
  store i64 %1003, i64* %RDX.i550, align 8
  %1004 = shl nsw i64 %1003, 3
  %1005 = add i64 %1004, %998
  %1006 = add i64 %995, 12
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i64*
  %1008 = load i64, i64* %1007, align 8
  store i64 %1008, i64* %RCX.i540, align 8
  %1009 = add i64 %1008, 16
  %1010 = add i64 %995, 16
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i64*
  %1012 = load i64, i64* %1011, align 8
  store i64 %1012, i64* %RCX.i540, align 8
  %1013 = add i64 %993, -44
  %1014 = add i64 %995, 20
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = sext i32 %1016 to i64
  store i64 %1017, i64* %RDX.i550, align 8
  %1018 = shl nsw i64 %1017, 2
  %1019 = add i64 %1018, %1012
  %1020 = add i64 %995, 27
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  store i32 0, i32* %1021, align 4
  %1022 = load i64, i64* %RBP.i, align 8
  %1023 = add i64 %1022, -32
  %1024 = load i64, i64* %3, align 8
  %1025 = add i64 %1024, 4
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1023 to i64*
  %1027 = load i64, i64* %1026, align 8
  store i64 %1027, i64* %RCX.i540, align 8
  %1028 = add i64 %1022, -48
  %1029 = add i64 %1024, 8
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = sext i32 %1031 to i64
  store i64 %1032, i64* %RDX.i550, align 8
  %1033 = shl nsw i64 %1032, 3
  %1034 = add i64 %1033, %1027
  %1035 = add i64 %1024, 12
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i64*
  %1037 = load i64, i64* %1036, align 8
  store i64 %1037, i64* %RCX.i540, align 8
  %1038 = add i64 %1037, 24
  %1039 = add i64 %1024, 16
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i64*
  %1041 = load i64, i64* %1040, align 8
  store i64 %1041, i64* %RCX.i540, align 8
  %1042 = add i64 %1022, -44
  %1043 = add i64 %1024, 20
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = sext i32 %1045 to i64
  store i64 %1046, i64* %RDX.i550, align 8
  %1047 = shl nsw i64 %1046, 2
  %1048 = add i64 %1047, %1041
  %1049 = add i64 %1024, 27
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i32*
  store i32 0, i32* %1050, align 4
  %1051 = load i64, i64* %RBP.i, align 8
  %1052 = add i64 %1051, -44
  %1053 = load i64, i64* %3, align 8
  %1054 = add i64 %1053, 3
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1052 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = add i32 %1056, 1
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RAX.i543, align 8
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
  %1068 = xor i32 %1057, %1056
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %27, align 1
  %1072 = zext i1 %1060 to i8
  store i8 %1072, i8* %30, align 1
  %1073 = lshr i32 %1057, 31
  %1074 = trunc i32 %1073 to i8
  store i8 %1074, i8* %33, align 1
  %1075 = lshr i32 %1056, 31
  %1076 = xor i32 %1073, %1075
  %1077 = add nuw nsw i32 %1076, %1073
  %1078 = icmp eq i32 %1077, 2
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %39, align 1
  %1080 = add i64 %1053, 9
  store i64 %1080, i64* %3, align 8
  store i32 %1057, i32* %1055, align 4
  %1081 = load i64, i64* %RBP.i, align 8
  %1082 = add i64 %1081, -32
  %1083 = load i64, i64* %3, align 8
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1082 to i64*
  %1086 = load i64, i64* %1085, align 8
  store i64 %1086, i64* %RCX.i540, align 8
  %1087 = add i64 %1081, -48
  %1088 = add i64 %1083, 8
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i32*
  %1090 = load i32, i32* %1089, align 4
  %1091 = sext i32 %1090 to i64
  store i64 %1091, i64* %RDX.i550, align 8
  %1092 = shl nsw i64 %1091, 3
  %1093 = add i64 %1092, %1086
  %1094 = add i64 %1083, 12
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i64*
  %1096 = load i64, i64* %1095, align 8
  store i64 %1096, i64* %RCX.i540, align 8
  %1097 = add i64 %1096, 8
  %1098 = add i64 %1083, 16
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i64*
  %1100 = load i64, i64* %1099, align 8
  store i64 %1100, i64* %RCX.i540, align 8
  %1101 = add i64 %1081, -44
  %1102 = add i64 %1083, 20
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = sext i32 %1104 to i64
  store i64 %1105, i64* %RDX.i550, align 8
  %1106 = add i64 %1100, %1105
  %1107 = add i64 %1083, 24
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i8*
  store i8 9, i8* %1108, align 1
  %1109 = load i64, i64* %RBP.i, align 8
  %1110 = add i64 %1109, -32
  %1111 = load i64, i64* %3, align 8
  %1112 = add i64 %1111, 4
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1110 to i64*
  %1114 = load i64, i64* %1113, align 8
  store i64 %1114, i64* %RCX.i540, align 8
  %1115 = add i64 %1109, -48
  %1116 = add i64 %1111, 8
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = sext i32 %1118 to i64
  store i64 %1119, i64* %RDX.i550, align 8
  %1120 = shl nsw i64 %1119, 3
  %1121 = add i64 %1120, %1114
  %1122 = add i64 %1111, 12
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i64*
  %1124 = load i64, i64* %1123, align 8
  store i64 %1124, i64* %RCX.i540, align 8
  %1125 = add i64 %1124, 16
  %1126 = add i64 %1111, 16
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1125 to i64*
  %1128 = load i64, i64* %1127, align 8
  store i64 %1128, i64* %RCX.i540, align 8
  %1129 = add i64 %1109, -44
  %1130 = add i64 %1111, 20
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i32*
  %1132 = load i32, i32* %1131, align 4
  %1133 = sext i32 %1132 to i64
  store i64 %1133, i64* %RDX.i550, align 8
  %1134 = shl nsw i64 %1133, 2
  %1135 = add i64 %1134, %1128
  %1136 = add i64 %1111, 27
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i32*
  store i32 0, i32* %1137, align 4
  %1138 = load i64, i64* %RBP.i, align 8
  %1139 = add i64 %1138, -32
  %1140 = load i64, i64* %3, align 8
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1139 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RCX.i540, align 8
  %1144 = add i64 %1138, -48
  %1145 = add i64 %1140, 8
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = sext i32 %1147 to i64
  store i64 %1148, i64* %RDX.i550, align 8
  %1149 = shl nsw i64 %1148, 3
  %1150 = add i64 %1149, %1143
  %1151 = add i64 %1140, 12
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i64 %1153, i64* %RCX.i540, align 8
  %1154 = add i64 %1153, 24
  %1155 = add i64 %1140, 16
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RCX.i540, align 8
  %1158 = add i64 %1138, -44
  %1159 = add i64 %1140, 20
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = sext i32 %1161 to i64
  store i64 %1162, i64* %RDX.i550, align 8
  %1163 = shl nsw i64 %1162, 2
  %1164 = add i64 %1163, %1157
  %1165 = add i64 %1140, 27
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  store i32 0, i32* %1166, align 4
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -48
  %1169 = load i64, i64* %3, align 8
  %1170 = add i64 %1169, 3
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1168 to i32*
  %1172 = load i32, i32* %1171, align 4
  %1173 = add i32 %1172, 1
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX.i543, align 8
  %1175 = icmp eq i32 %1172, -1
  %1176 = icmp eq i32 %1173, 0
  %1177 = or i1 %1175, %1176
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %14, align 1
  %1179 = and i32 %1173, 255
  %1180 = tail call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  store i8 %1183, i8* %21, align 1
  %1184 = xor i32 %1173, %1172
  %1185 = lshr i32 %1184, 4
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  store i8 %1187, i8* %27, align 1
  %1188 = zext i1 %1176 to i8
  store i8 %1188, i8* %30, align 1
  %1189 = lshr i32 %1173, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %33, align 1
  %1191 = lshr i32 %1172, 31
  %1192 = xor i32 %1189, %1191
  %1193 = add nuw nsw i32 %1192, %1189
  %1194 = icmp eq i32 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %39, align 1
  %1196 = add i64 %1169, 9
  store i64 %1196, i64* %3, align 8
  store i32 %1173, i32* %1171, align 4
  %.pre23 = load i64, i64* %3, align 8
  %.pre24 = load i64, i64* %RBP.i, align 8
  br label %block_.L_45060b

block_.L_45053d:                                  ; preds = %block_.L_4504ad
  %1197 = add i64 %936, 3
  store i64 %1197, i64* %3, align 8
  %1198 = load i32, i32* %905, align 4
  %1199 = add i32 %1198, 1
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RAX.i543, align 8
  %1201 = icmp eq i32 %1198, -1
  %1202 = icmp eq i32 %1199, 0
  %1203 = or i1 %1201, %1202
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %14, align 1
  %1205 = and i32 %1199, 255
  %1206 = tail call i32 @llvm.ctpop.i32(i32 %1205)
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  store i8 %1209, i8* %21, align 1
  %1210 = xor i32 %1199, %1198
  %1211 = lshr i32 %1210, 4
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  store i8 %1213, i8* %27, align 1
  %1214 = zext i1 %1202 to i8
  store i8 %1214, i8* %30, align 1
  %1215 = lshr i32 %1199, 31
  %1216 = trunc i32 %1215 to i8
  store i8 %1216, i8* %33, align 1
  %1217 = lshr i32 %1198, 31
  %1218 = xor i32 %1215, %1217
  %1219 = add nuw nsw i32 %1218, %1215
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %39, align 1
  %1222 = add i64 %936, 9
  store i64 %1222, i64* %3, align 8
  store i32 %1199, i32* %905, align 4
  %1223 = load i64, i64* %RBP.i, align 8
  %1224 = add i64 %1223, -44
  %1225 = load i64, i64* %3, align 8
  %1226 = add i64 %1225, 3
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1224 to i32*
  %1228 = load i32, i32* %1227, align 4
  %1229 = add i32 %1228, 1
  %1230 = zext i32 %1229 to i64
  store i64 %1230, i64* %RAX.i543, align 8
  %1231 = icmp eq i32 %1228, -1
  %1232 = icmp eq i32 %1229, 0
  %1233 = or i1 %1231, %1232
  %1234 = zext i1 %1233 to i8
  store i8 %1234, i8* %14, align 1
  %1235 = and i32 %1229, 255
  %1236 = tail call i32 @llvm.ctpop.i32(i32 %1235)
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  %1239 = xor i8 %1238, 1
  store i8 %1239, i8* %21, align 1
  %1240 = xor i32 %1229, %1228
  %1241 = lshr i32 %1240, 4
  %1242 = trunc i32 %1241 to i8
  %1243 = and i8 %1242, 1
  store i8 %1243, i8* %27, align 1
  %1244 = zext i1 %1232 to i8
  store i8 %1244, i8* %30, align 1
  %1245 = lshr i32 %1229, 31
  %1246 = trunc i32 %1245 to i8
  store i8 %1246, i8* %33, align 1
  %1247 = lshr i32 %1228, 31
  %1248 = xor i32 %1245, %1247
  %1249 = add nuw nsw i32 %1248, %1245
  %1250 = icmp eq i32 %1249, 2
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %39, align 1
  %1252 = add i64 %1225, 9
  store i64 %1252, i64* %3, align 8
  store i32 %1229, i32* %1227, align 4
  %1253 = load i64, i64* %3, align 8
  %1254 = add i64 %1253, -162
  store i64 %1254, i64* %3, align 8
  br label %block_.L_4504ad

block_.L_45060b:                                  ; preds = %block_45038a, %block_450538
  %1255 = phi i64 [ %.pre24, %block_450538 ], [ %274, %block_45038a ]
  %1256 = phi i64 [ %.pre23, %block_450538 ], [ %351, %block_45038a ]
  %1257 = add i64 %1255, -40
  %1258 = add i64 %1256, 8
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = add i32 %1260, 1
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RAX.i543, align 8
  %1263 = icmp eq i32 %1260, -1
  %1264 = icmp eq i32 %1261, 0
  %1265 = or i1 %1263, %1264
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %14, align 1
  %1267 = and i32 %1261, 255
  %1268 = tail call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  store i8 %1271, i8* %21, align 1
  %1272 = xor i32 %1261, %1260
  %1273 = lshr i32 %1272, 4
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  store i8 %1275, i8* %27, align 1
  %1276 = zext i1 %1264 to i8
  store i8 %1276, i8* %30, align 1
  %1277 = lshr i32 %1261, 31
  %1278 = trunc i32 %1277 to i8
  store i8 %1278, i8* %33, align 1
  %1279 = lshr i32 %1260, 31
  %1280 = xor i32 %1277, %1279
  %1281 = add nuw nsw i32 %1280, %1277
  %1282 = icmp eq i32 %1281, 2
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %39, align 1
  %1284 = add i64 %1256, 14
  store i64 %1284, i64* %3, align 8
  store i32 %1261, i32* %1259, align 4
  %1285 = load i64, i64* %3, align 8
  %1286 = add i64 %1285, -670
  store i64 %1286, i64* %3, align 8
  br label %block_.L_45037b

block_.L_45061e:                                  ; preds = %block_.L_45037b
  %1287 = add i64 %274, -32
  %1288 = add i64 %313, 4
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i64*
  %1290 = load i64, i64* %1289, align 8
  store i64 %1290, i64* %RAX.i543, align 8
  %1291 = add i64 %274, -16
  %1292 = add i64 %313, 8
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i64*
  %1294 = load i64, i64* %1293, align 8
  store i64 %1294, i64* %RCX.i540, align 8
  %1295 = add i64 %313, 11
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i64*
  store i64 %1290, i64* %1296, align 8
  %1297 = load i64, i64* %RBP.i, align 8
  %1298 = add i64 %1297, -36
  %1299 = load i64, i64* %3, align 8
  %1300 = add i64 %1299, 3
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1298 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = zext i32 %1302 to i64
  store i64 %1303, i64* %RDX.i550, align 8
  %1304 = add i64 %1297, -24
  %1305 = add i64 %1299, 7
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i64*
  %1307 = load i64, i64* %1306, align 8
  store i64 %1307, i64* %RAX.i543, align 8
  %1308 = add i64 %1299, 9
  store i64 %1308, i64* %3, align 8
  %1309 = inttoptr i64 %1307 to i32*
  store i32 %1302, i32* %1309, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_450632

block_.L_450632:                                  ; preds = %block_.L_45061e, %block_450330
  %1310 = phi i64 [ %.pre20, %block_.L_45061e ], [ %235, %block_450330 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_450364, %block_.L_45061e ], [ %2, %block_450330 ]
  %1311 = load i64, i64* %6, align 8
  %1312 = add i64 %1311, 48
  store i64 %1312, i64* %6, align 8
  %1313 = icmp ugt i64 %1311, -49
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %14, align 1
  %1315 = trunc i64 %1312 to i32
  %1316 = and i32 %1315, 255
  %1317 = tail call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  store i8 %1320, i8* %21, align 1
  %1321 = xor i64 %1311, 16
  %1322 = xor i64 %1321, %1312
  %1323 = lshr i64 %1322, 4
  %1324 = trunc i64 %1323 to i8
  %1325 = and i8 %1324, 1
  store i8 %1325, i8* %27, align 1
  %1326 = icmp eq i64 %1312, 0
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %30, align 1
  %1328 = lshr i64 %1312, 63
  %1329 = trunc i64 %1328 to i8
  store i8 %1329, i8* %33, align 1
  %1330 = lshr i64 %1311, 63
  %1331 = xor i64 %1328, %1330
  %1332 = add nuw nsw i64 %1331, %1328
  %1333 = icmp eq i64 %1332, 2
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %39, align 1
  %1335 = add i64 %1310, 5
  store i64 %1335, i64* %3, align 8
  %1336 = add i64 %1311, 56
  %1337 = inttoptr i64 %1312 to i64*
  %1338 = load i64, i64* %1337, align 8
  store i64 %1338, i64* %RBP.i, align 8
  store i64 %1336, i64* %6, align 8
  %1339 = add i64 %1310, 6
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1336 to i64*
  %1341 = load i64, i64* %1340, align 8
  store i64 %1341, i64* %3, align 8
  %1342 = add i64 %1311, 64
  store i64 %1342, i64* %6, align 8
  ret %struct.Memory* %MEMORY.7
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
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_jge_.L_450326(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x6___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -6
  %8 = icmp ult i32 %4, 6
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
define %struct.Memory* @routine_jne_.L_450313(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jmpq_.L_450318(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4502e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jne_.L_45034a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
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
define %struct.Memory* @routine_movq__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 0, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_450632(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45b298___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45b298_type* @G__0x45b298 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x37d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 893, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_shlq__0x3___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_45061e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45060b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4503ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -7
  %8 = icmp ult i32 %4, 7
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
define %struct.Memory* @routine_jne_.L_4503d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4503ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4503de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4503ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 5
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -6
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
define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7AllocTrace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x4____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 4, i8* %4, align 1
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
define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
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
define %struct.Memory* @routine_movb__0x5__0x1__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 5, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb___rax__rcx_1____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %DL, align 1
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
define %struct.Memory* @routine_movb__dl____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ESI, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -7
  %8 = icmp ult i32 %4, 7
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
define %struct.Memory* @routine_jne_.L_45053d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_450554(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4504ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movb__0x8____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 8, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movb__0x9____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 9, i8* %8, align 1
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
define %struct.Memory* @routine_jmpq_.L_450610(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45037b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl__edx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
