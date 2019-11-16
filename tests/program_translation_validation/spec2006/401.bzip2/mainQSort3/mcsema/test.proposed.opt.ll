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

declare %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402bb0.mainSimpleSort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402eb0.mmed3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @mainQSort3(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1432
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1424
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
  %RAX.i1321 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, 16
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %RAX.i1321, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i1318 = bitcast %union.anon* %45 to i32*
  %46 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %47 = add i64 %7, 8
  %48 = add i64 %10, 18
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %47 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = zext i32 %50 to i64
  store i64 %51, i64* %46, align 8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i1315 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %53 = add i64 %7, -16
  %54 = load i64, i64* %RDI.i1315, align 8
  %55 = add i64 %10, 22
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %56, align 8
  %RSI.i1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -16
  %59 = load i64, i64* %RSI.i1312, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1309 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -24
  %66 = load i64, i64* %RDX.i1309, align 8
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i64*
  store i64 %66, i64* %69, align 8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1306 = bitcast %union.anon* %70 to i32*
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -28
  %73 = load i32, i32* %ECX.i1306, align 4
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %74, 3
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %72 to i32*
  store i32 %73, i32* %76, align 4
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1303 = bitcast %union.anon* %77 to i32*
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -32
  %80 = load i32, i32* %R8D.i1303, align 4
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %79 to i32*
  store i32 %80, i32* %83, align 4
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1300 = bitcast %union.anon* %84 to i32*
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -36
  %87 = load i32, i32* %R9D.i1300, align 4
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %86 to i32*
  store i32 %87, i32* %90, align 4
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -40
  %93 = load i32, i32* %R10D.i1318, align 4
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 4
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %96, align 4
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -48
  %99 = load i64, i64* %RAX.i1321, align 8
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 4
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %102, align 8
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -80
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 7
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i32*
  store i32 0, i32* %107, align 4
  %RCX.i1290 = getelementptr inbounds %union.anon, %union.anon* %70, i64 0, i32 0
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -32
  %110 = load i64, i64* %3, align 8
  %111 = add i64 %110, 3
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %109 to i32*
  %113 = load i32, i32* %112, align 4
  %114 = zext i32 %113 to i64
  store i64 %114, i64* %RCX.i1290, align 8
  %115 = add i64 %108, -80
  %116 = add i64 %110, 7
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %RAX.i1321, align 8
  %120 = shl nsw i64 %119, 2
  %121 = add i64 %108, -496
  %122 = add i64 %121, %120
  %123 = add i64 %110, 14
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  store i32 %113, i32* %124, align 4
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -36
  %127 = load i64, i64* %3, align 8
  %128 = add i64 %127, 3
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %126 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = zext i32 %130 to i64
  store i64 %131, i64* %RCX.i1290, align 8
  %132 = add i64 %125, -80
  %133 = add i64 %127, 7
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %RAX.i1321, align 8
  %137 = shl nsw i64 %136, 2
  %138 = add i64 %125, -896
  %139 = add i64 %138, %137
  %140 = add i64 %127, 14
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i32*
  store i32 %130, i32* %141, align 4
  %142 = load i64, i64* %RBP.i, align 8
  %143 = add i64 %142, -40
  %144 = load i64, i64* %3, align 8
  %145 = add i64 %144, 3
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %143 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = zext i32 %147 to i64
  store i64 %148, i64* %RCX.i1290, align 8
  %149 = add i64 %142, -80
  %150 = add i64 %144, 7
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %RAX.i1321, align 8
  %154 = shl nsw i64 %153, 2
  %155 = add i64 %142, -1296
  %156 = add i64 %155, %154
  %157 = add i64 %144, 14
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i32*
  store i32 %147, i32* %158, align 4
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -80
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 3
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %160 to i32*
  %164 = load i32, i32* %163, align 4
  %165 = add i32 %164, 1
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RCX.i1290, align 8
  %167 = icmp eq i32 %164, -1
  %168 = icmp eq i32 %165, 0
  %169 = or i1 %167, %168
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %14, align 1
  %171 = and i32 %165, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171)
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %21, align 1
  %176 = xor i32 %165, %164
  %177 = lshr i32 %176, 4
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  store i8 %179, i8* %27, align 1
  %180 = zext i1 %168 to i8
  store i8 %180, i8* %30, align 1
  %181 = lshr i32 %165, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %33, align 1
  %183 = lshr i32 %164, 31
  %184 = xor i32 %181, %183
  %185 = add nuw nsw i32 %184, %181
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %39, align 1
  %188 = add i64 %161, 9
  store i64 %188, i64* %3, align 8
  store i32 %165, i32* %163, align 4
  %EAX.i1238 = bitcast %union.anon* %40 to i32*
  %189 = getelementptr inbounds %union.anon, %union.anon* %77, i64 0, i32 0
  %190 = getelementptr inbounds %union.anon, %union.anon* %84, i64 0, i32 0
  %191 = bitcast i64* %6 to i32**
  %DIL.i1134 = bitcast %union.anon* %52 to i8*
  %R8B.i1108 = bitcast %union.anon* %77 to i8*
  %AL.i = bitcast %union.anon* %40 to i8*
  %EDX.i1065 = bitcast %union.anon* %63 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4023ec

block_.L_4023ec:                                  ; preds = %block_.L_4023ec.backedge, %entry
  %192 = phi i64 [ %.pre, %entry ], [ %.sink36, %block_.L_4023ec.backedge ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.0.be, %block_.L_4023ec.backedge ]
  %193 = load i64, i64* %RBP.i, align 8
  %194 = add i64 %193, -80
  %195 = add i64 %192, 4
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i32*
  %197 = load i32, i32* %196, align 4
  store i8 0, i8* %14, align 1
  %198 = and i32 %197, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %203 = icmp eq i32 %197, 0
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %30, align 1
  %205 = lshr i32 %197, 31
  %206 = trunc i32 %205 to i8
  store i8 %206, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %207 = icmp ne i8 %206, 0
  %208 = or i1 %203, %207
  %.v139 = select i1 %208, i64 1974, i64 10
  %209 = add i64 %192, %.v139
  store i64 %209, i64* %3, align 8
  br i1 %208, label %block_.L_402ba2.loopexit, label %block_4023f6

block_4023f6:                                     ; preds = %block_.L_4023ec
  %210 = add i64 %209, 4
  store i64 %210, i64* %3, align 8
  %211 = load i32, i32* %196, align 4
  %212 = add i32 %211, -100
  %213 = icmp ult i32 %211, 100
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %14, align 1
  %215 = and i32 %212, 255
  %216 = tail call i32 @llvm.ctpop.i32(i32 %215)
  %217 = trunc i32 %216 to i8
  %218 = and i8 %217, 1
  %219 = xor i8 %218, 1
  store i8 %219, i8* %21, align 1
  %220 = xor i32 %212, %211
  %221 = lshr i32 %220, 4
  %222 = trunc i32 %221 to i8
  %223 = and i8 %222, 1
  store i8 %223, i8* %27, align 1
  %224 = icmp eq i32 %212, 0
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %30, align 1
  %226 = lshr i32 %212, 31
  %227 = trunc i32 %226 to i8
  store i8 %227, i8* %33, align 1
  %228 = lshr i32 %211, 31
  %229 = xor i32 %226, %228
  %230 = add nuw nsw i32 %229, %228
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %39, align 1
  %233 = icmp ne i8 %227, 0
  %234 = xor i1 %233, %231
  %.v140 = select i1 %234, i64 20, i64 10
  %235 = add i64 %209, %.v140
  store i64 %235, i64* %3, align 8
  br i1 %234, label %block_.L_40240a, label %block_402400

block_402400:                                     ; preds = %block_4023f6
  store i64 1001, i64* %RDI.i1315, align 8
  %236 = add i64 %235, 11040
  %237 = add i64 %235, 10
  %238 = load i64, i64* %6, align 8
  %239 = add i64 %238, -8
  %240 = inttoptr i64 %239 to i64*
  store i64 %237, i64* %240, align 8
  store i64 %239, i64* %6, align 8
  store i64 %236, i64* %3, align 8
  %call2_402405 = tail call %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* nonnull %0, i64 %236, %struct.Memory* %MEMORY.0)
  %.pre124 = load i64, i64* %RBP.i, align 8
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_40240a

block_.L_40240a:                                  ; preds = %block_402400, %block_4023f6
  %241 = phi i64 [ %.pre125, %block_402400 ], [ %235, %block_4023f6 ]
  %242 = phi i64 [ %.pre124, %block_402400 ], [ %193, %block_4023f6 ]
  %243 = add i64 %242, -80
  %244 = add i64 %241, 3
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = add i32 %246, -1
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %RAX.i1321, align 8
  %249 = icmp ne i32 %246, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %14, align 1
  %251 = and i32 %247, 255
  %252 = tail call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %21, align 1
  %256 = xor i32 %246, 16
  %257 = xor i32 %256, %247
  %258 = lshr i32 %257, 4
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  store i8 %260, i8* %27, align 1
  %261 = icmp eq i32 %247, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %30, align 1
  %263 = lshr i32 %247, 31
  %264 = trunc i32 %263 to i8
  store i8 %264, i8* %33, align 1
  %265 = lshr i32 %246, 31
  %266 = xor i32 %263, %265
  %267 = xor i32 %263, 1
  %268 = add nuw nsw i32 %266, %267
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %39, align 1
  %271 = add i64 %241, 9
  store i64 %271, i64* %3, align 8
  store i32 %247, i32* %245, align 4
  %272 = load i64, i64* %RBP.i, align 8
  %273 = add i64 %272, -80
  %274 = load i64, i64* %3, align 8
  %275 = add i64 %274, 4
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %273 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  store i64 %278, i64* %RCX.i1290, align 8
  %279 = shl nsw i64 %278, 2
  %280 = add i64 %272, -496
  %281 = add i64 %280, %279
  %282 = add i64 %274, 11
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %RAX.i1321, align 8
  %286 = add i64 %272, -84
  %287 = add i64 %274, 14
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  store i32 %284, i32* %288, align 4
  %289 = load i64, i64* %RBP.i, align 8
  %290 = add i64 %289, -80
  %291 = load i64, i64* %3, align 8
  %292 = add i64 %291, 4
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %290 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  store i64 %295, i64* %RCX.i1290, align 8
  %296 = shl nsw i64 %295, 2
  %297 = add i64 %289, -896
  %298 = add i64 %297, %296
  %299 = add i64 %291, 11
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RAX.i1321, align 8
  %303 = add i64 %289, -88
  %304 = add i64 %291, 14
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  store i32 %301, i32* %305, align 4
  %306 = load i64, i64* %RBP.i, align 8
  %307 = add i64 %306, -80
  %308 = load i64, i64* %3, align 8
  %309 = add i64 %308, 4
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %307 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = sext i32 %311 to i64
  store i64 %312, i64* %RCX.i1290, align 8
  %313 = shl nsw i64 %312, 2
  %314 = add i64 %306, -1296
  %315 = add i64 %314, %313
  %316 = add i64 %308, 11
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = zext i32 %318 to i64
  store i64 %319, i64* %RAX.i1321, align 8
  %320 = add i64 %306, -92
  %321 = add i64 %308, 14
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i32*
  store i32 %318, i32* %322, align 4
  %323 = load i64, i64* %RBP.i, align 8
  %324 = add i64 %323, -88
  %325 = load i64, i64* %3, align 8
  %326 = add i64 %325, 3
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %324 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RAX.i1321, align 8
  %330 = add i64 %323, -84
  %331 = add i64 %325, 6
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = sub i32 %328, %333
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RAX.i1321, align 8
  %336 = lshr i32 %334, 31
  %337 = add i32 %334, -20
  %338 = icmp ult i32 %334, 20
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %14, align 1
  %340 = and i32 %337, 255
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340)
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %21, align 1
  %345 = xor i32 %334, 16
  %346 = xor i32 %345, %337
  %347 = lshr i32 %346, 4
  %348 = trunc i32 %347 to i8
  %349 = and i8 %348, 1
  store i8 %349, i8* %27, align 1
  %350 = icmp eq i32 %337, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %30, align 1
  %352 = lshr i32 %337, 31
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %33, align 1
  %354 = xor i32 %352, %336
  %355 = add nuw nsw i32 %354, %336
  %356 = icmp eq i32 %355, 2
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %39, align 1
  %358 = icmp ne i8 %353, 0
  %359 = xor i1 %358, %356
  %.v141 = select i1 %359, i64 25, i64 15
  %360 = add i64 %325, %.v141
  store i64 %360, i64* %3, align 8
  %.pre135 = add i64 %323, -92
  br i1 %359, label %block_.L_40240a.block_.L_402456_crit_edge, label %block_40244c

block_.L_40240a.block_.L_402456_crit_edge:        ; preds = %block_.L_40240a
  %.pre136 = inttoptr i64 %.pre135 to i32*
  br label %block_.L_402456

block_40244c:                                     ; preds = %block_.L_40240a
  %361 = add i64 %360, 4
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %.pre135 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = add i32 %363, -14
  %365 = icmp ult i32 %363, 14
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %14, align 1
  %367 = and i32 %364, 255
  %368 = tail call i32 @llvm.ctpop.i32(i32 %367)
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  store i8 %371, i8* %21, align 1
  %372 = xor i32 %364, %363
  %373 = lshr i32 %372, 4
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  store i8 %375, i8* %27, align 1
  %376 = icmp eq i32 %364, 0
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %30, align 1
  %378 = lshr i32 %364, 31
  %379 = trunc i32 %378 to i8
  store i8 %379, i8* %33, align 1
  %380 = lshr i32 %363, 31
  %381 = xor i32 %378, %380
  %382 = add nuw nsw i32 %381, %380
  %383 = icmp eq i32 %382, 2
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %39, align 1
  %385 = icmp ne i8 %379, 0
  %386 = xor i1 %385, %383
  %387 = or i1 %376, %386
  %.v142 = select i1 %387, i64 76, i64 10
  %388 = add i64 %360, %.v142
  store i64 %388, i64* %3, align 8
  br i1 %387, label %block_.L_402498, label %block_.L_402456

block_.L_402456:                                  ; preds = %block_.L_40240a.block_.L_402456_crit_edge, %block_40244c
  %.pre-phi137 = phi i32* [ %.pre136, %block_.L_40240a.block_.L_402456_crit_edge ], [ %362, %block_40244c ]
  %389 = phi i64 [ %360, %block_.L_40240a.block_.L_402456_crit_edge ], [ %388, %block_40244c ]
  %390 = add i64 %323, -8
  %391 = add i64 %389, 4
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i64*
  %393 = load i64, i64* %392, align 8
  store i64 %393, i64* %RDI.i1315, align 8
  %394 = add i64 %323, -16
  %395 = add i64 %389, 8
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RSI.i1312, align 8
  %398 = add i64 %323, -24
  %399 = add i64 %389, 12
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i64*
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %RDX.i1309, align 8
  %402 = add i64 %323, -28
  %403 = add i64 %389, 15
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = zext i32 %405 to i64
  store i64 %406, i64* %RCX.i1290, align 8
  %407 = add i64 %389, 19
  store i64 %407, i64* %3, align 8
  %408 = load i32, i32* %332, align 4
  %409 = zext i32 %408 to i64
  store i64 %409, i64* %189, align 8
  %410 = add i64 %389, 23
  store i64 %410, i64* %3, align 8
  %411 = load i32, i32* %327, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %190, align 8
  %413 = add i64 %389, 26
  store i64 %413, i64* %3, align 8
  %414 = load i32, i32* %.pre-phi137, align 4
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RAX.i1321, align 8
  %416 = add i64 %323, -48
  %417 = add i64 %389, 30
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %46, align 8
  %420 = load i32*, i32** %191, align 8
  %421 = add i64 %389, 33
  store i64 %421, i64* %3, align 8
  store i32 %414, i32* %420, align 4
  %422 = load i64, i64* %6, align 8
  %423 = add i64 %422, 8
  %424 = load i64, i64* %46, align 8
  %425 = load i64, i64* %3, align 8
  %426 = add i64 %425, 5
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %423 to i64*
  store i64 %424, i64* %427, align 8
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 1844
  %430 = add i64 %428, 5
  %431 = load i64, i64* %6, align 8
  %432 = add i64 %431, -8
  %433 = inttoptr i64 %432 to i64*
  store i64 %430, i64* %433, align 8
  store i64 %432, i64* %6, align 8
  store i64 %429, i64* %3, align 8
  %call2_40247c = tail call %struct.Memory* @sub_402bb0.mainSimpleSort(%struct.State* nonnull %0, i64 %429, %struct.Memory* %MEMORY.0)
  %434 = load i64, i64* %RBP.i, align 8
  %435 = add i64 %434, -48
  %436 = load i64, i64* %3, align 8
  %437 = add i64 %436, 4
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %435 to i64*
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %RDX.i1309, align 8
  %440 = add i64 %436, 7
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  store i8 0, i8* %14, align 1
  %443 = and i32 %442, 255
  %444 = tail call i32 @llvm.ctpop.i32(i32 %443)
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = xor i8 %446, 1
  store i8 %447, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %448 = icmp eq i32 %442, 0
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %30, align 1
  %450 = lshr i32 %442, 31
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %452 = icmp ne i8 %451, 0
  %.v = select i1 %452, i64 6, i64 11
  %453 = add i64 %440, %.v
  store i64 %453, i64* %3, align 8
  br i1 %452, label %block_40248e, label %block_.L_402493

block_40248e:                                     ; preds = %block_.L_402456
  %454 = add i64 %453, 1812
  store i64 %454, i64* %3, align 8
  br label %block_.L_402ba2

block_.L_402493:                                  ; preds = %block_.L_402456
  %455 = add i64 %453, -167
  br label %block_.L_4023ec.backedge

block_.L_4023ec.backedge:                         ; preds = %block_.L_402493, %block_4026d7, %block_.L_402ae9
  %.sink36 = phi i64 [ %455, %block_.L_402493 ], [ %1575, %block_4026d7 ], [ %3353, %block_.L_402ae9 ]
  %MEMORY.0.be = phi %struct.Memory* [ %call2_40247c, %block_.L_402493 ], [ %call2_4024f6, %block_4026d7 ], [ %call2_4024f6, %block_.L_402ae9 ]
  store i64 %.sink36, i64* %3, align 8
  br label %block_.L_4023ec

block_.L_402498:                                  ; preds = %block_40244c
  %456 = add i64 %323, -16
  %457 = add i64 %388, 4
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i64*
  %459 = load i64, i64* %458, align 8
  store i64 %459, i64* %RAX.i1321, align 8
  %460 = add i64 %323, -8
  %461 = add i64 %388, 8
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i64*
  %463 = load i64, i64* %462, align 8
  store i64 %463, i64* %RCX.i1290, align 8
  %464 = add i64 %388, 12
  store i64 %464, i64* %3, align 8
  %465 = load i32, i32* %332, align 4
  %466 = sext i32 %465 to i64
  store i64 %466, i64* %RDX.i1309, align 8
  %467 = shl nsw i64 %466, 2
  %468 = add i64 %467, %463
  %469 = add i64 %388, 15
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RSI.i1312, align 8
  %473 = add i64 %388, 18
  store i64 %473, i64* %3, align 8
  %474 = load i32, i32* %362, align 4
  %475 = add i32 %474, %471
  %476 = zext i32 %475 to i64
  %477 = icmp ult i32 %475, %471
  %478 = icmp ult i32 %475, %474
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %14, align 1
  %481 = and i32 %475, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %21, align 1
  %486 = xor i32 %474, %471
  %487 = xor i32 %486, %475
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %27, align 1
  %491 = icmp eq i32 %475, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %30, align 1
  %493 = lshr i32 %475, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %33, align 1
  %495 = lshr i32 %471, 31
  %496 = lshr i32 %474, 31
  %497 = xor i32 %493, %495
  %498 = xor i32 %493, %496
  %499 = add nuw nsw i32 %497, %498
  %500 = icmp eq i32 %499, 2
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %39, align 1
  store i64 %476, i64* %RSI.i1312, align 8
  store i64 %476, i64* %RCX.i1290, align 8
  %502 = add i64 %459, %476
  %503 = add i64 %388, 26
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i8*
  %505 = load i8, i8* %504, align 1
  store i8 %505, i8* %DIL.i1134, align 1
  %506 = add i64 %388, 30
  store i64 %506, i64* %3, align 8
  %507 = load i64, i64* %458, align 8
  store i64 %507, i64* %RAX.i1321, align 8
  %508 = add i64 %388, 34
  store i64 %508, i64* %3, align 8
  %509 = load i64, i64* %462, align 8
  store i64 %509, i64* %RCX.i1290, align 8
  %510 = add i64 %388, 38
  store i64 %510, i64* %3, align 8
  %511 = load i32, i32* %327, align 4
  %512 = sext i32 %511 to i64
  store i64 %512, i64* %RDX.i1309, align 8
  %513 = shl nsw i64 %512, 2
  %514 = add i64 %513, %509
  %515 = add i64 %388, 41
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RSI.i1312, align 8
  %519 = add i64 %388, 44
  store i64 %519, i64* %3, align 8
  %520 = load i32, i32* %362, align 4
  %521 = add i32 %520, %517
  %522 = zext i32 %521 to i64
  %523 = icmp ult i32 %521, %517
  %524 = icmp ult i32 %521, %520
  %525 = or i1 %523, %524
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %14, align 1
  %527 = and i32 %521, 255
  %528 = tail call i32 @llvm.ctpop.i32(i32 %527)
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  store i8 %531, i8* %21, align 1
  %532 = xor i32 %520, %517
  %533 = xor i32 %532, %521
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  store i8 %536, i8* %27, align 1
  %537 = icmp eq i32 %521, 0
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %30, align 1
  %539 = lshr i32 %521, 31
  %540 = trunc i32 %539 to i8
  store i8 %540, i8* %33, align 1
  %541 = lshr i32 %517, 31
  %542 = lshr i32 %520, 31
  %543 = xor i32 %539, %541
  %544 = xor i32 %539, %542
  %545 = add nuw nsw i32 %543, %544
  %546 = icmp eq i32 %545, 2
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %39, align 1
  store i64 %522, i64* %RSI.i1312, align 8
  store i64 %522, i64* %RCX.i1290, align 8
  %548 = add i64 %507, %522
  %549 = add i64 %388, 52
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i8*
  %551 = load i8, i8* %550, align 1
  store i8 %551, i8* %R8B.i1108, align 1
  %552 = load i64, i64* %RBP.i, align 8
  %553 = add i64 %552, -16
  %554 = add i64 %388, 56
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i64*
  %556 = load i64, i64* %555, align 8
  store i64 %556, i64* %RAX.i1321, align 8
  %557 = add i64 %552, -8
  %558 = add i64 %388, 60
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i64*
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %RCX.i1290, align 8
  %561 = add i64 %552, -84
  %562 = add i64 %388, 63
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = zext i32 %564 to i64
  store i64 %565, i64* %RSI.i1312, align 8
  %566 = add i64 %552, -88
  %567 = add i64 %388, 66
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %566 to i32*
  %569 = load i32, i32* %568, align 4
  %570 = add i32 %569, %564
  %571 = zext i32 %570 to i64
  %572 = shl nuw i64 %571, 32
  %573 = ashr i64 %572, 33
  %574 = trunc i32 %570 to i8
  %575 = and i8 %574, 1
  %576 = trunc i64 %573 to i32
  %577 = and i64 %573, 4294967295
  store i64 %577, i64* %RSI.i1312, align 8
  store i8 %575, i8* %14, align 1
  %578 = and i32 %576, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578)
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %583 = icmp eq i32 %576, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %30, align 1
  %585 = lshr i64 %573, 31
  %586 = trunc i64 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %573, i64* %RDX.i1309, align 8
  %588 = shl nsw i64 %573, 2
  %589 = add i64 %560, %588
  %590 = add i64 %388, 74
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i32*
  %592 = load i32, i32* %591, align 4
  %593 = zext i32 %592 to i64
  store i64 %593, i64* %RSI.i1312, align 8
  %594 = add i64 %552, -92
  %595 = add i64 %388, 77
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = add i32 %597, %592
  %599 = zext i32 %598 to i64
  %600 = icmp ult i32 %598, %592
  %601 = icmp ult i32 %598, %597
  %602 = or i1 %600, %601
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %14, align 1
  %604 = and i32 %598, 255
  %605 = tail call i32 @llvm.ctpop.i32(i32 %604)
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  store i8 %608, i8* %21, align 1
  %609 = xor i32 %597, %592
  %610 = xor i32 %609, %598
  %611 = lshr i32 %610, 4
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %27, align 1
  %614 = icmp eq i32 %598, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %30, align 1
  %616 = lshr i32 %598, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %33, align 1
  %618 = lshr i32 %592, 31
  %619 = lshr i32 %597, 31
  %620 = xor i32 %616, %618
  %621 = xor i32 %616, %619
  %622 = add nuw nsw i32 %620, %621
  %623 = icmp eq i32 %622, 2
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %39, align 1
  store i64 %599, i64* %RCX.i1290, align 8
  %625 = load i8, i8* %DIL.i1134, align 1
  %626 = zext i8 %625 to i64
  store i64 %626, i64* %RDI.i1315, align 8
  %627 = load i8, i8* %R8B.i1108, align 1
  %628 = zext i8 %627 to i64
  store i64 %628, i64* %RSI.i1312, align 8
  %629 = load i64, i64* %RAX.i1321, align 8
  %630 = add i64 %599, %629
  %631 = add i64 %388, 93
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i8*
  %633 = load i8, i8* %632, align 1
  %634 = zext i8 %633 to i64
  store i64 %634, i64* %RDX.i1309, align 8
  %635 = add i64 %388, 2583
  %636 = add i64 %388, 98
  %637 = load i64, i64* %6, align 8
  %638 = add i64 %637, -8
  %639 = inttoptr i64 %638 to i64*
  store i64 %636, i64* %639, align 8
  store i64 %638, i64* %6, align 8
  store i64 %635, i64* %3, align 8
  %call2_4024f6 = tail call %struct.Memory* @sub_402eb0.mmed3(%struct.State* nonnull %0, i64 %635, %struct.Memory* %MEMORY.0)
  %640 = load i8, i8* %AL.i, align 1
  %641 = zext i8 %640 to i64
  %642 = load i64, i64* %3, align 8
  store i64 %641, i64* %RDX.i1309, align 8
  %643 = load i64, i64* %RBP.i, align 8
  %644 = add i64 %643, -76
  %645 = zext i8 %640 to i32
  %646 = add i64 %642, 6
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %644 to i32*
  store i32 %645, i32* %647, align 4
  %648 = load i64, i64* %RBP.i, align 8
  %649 = add i64 %648, -84
  %650 = load i64, i64* %3, align 8
  %651 = add i64 %650, 3
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %649 to i32*
  %653 = load i32, i32* %652, align 4
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RDX.i1309, align 8
  %655 = add i64 %648, -60
  %656 = add i64 %650, 6
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  store i32 %653, i32* %657, align 4
  %658 = load i64, i64* %RBP.i, align 8
  %659 = add i64 %658, -52
  %660 = load i32, i32* %EDX.i1065, align 4
  %661 = load i64, i64* %3, align 8
  %662 = add i64 %661, 3
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %659 to i32*
  store i32 %660, i32* %663, align 4
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -88
  %666 = load i64, i64* %3, align 8
  %667 = add i64 %666, 3
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %665 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RDX.i1309, align 8
  %671 = add i64 %664, -64
  %672 = add i64 %666, 6
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i32*
  store i32 %669, i32* %673, align 4
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -56
  %676 = load i32, i32* %EDX.i1065, align 4
  %677 = load i64, i64* %3, align 8
  %678 = add i64 %677, 3
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %675 to i32*
  store i32 %676, i32* %679, align 4
  br label %block_.L_402513

block_.L_402513:                                  ; preds = %block_.L_40267c, %block_.L_402498
  br label %block_.L_402518

block_.L_402518:                                  ; preds = %block_.L_402518.backedge, %block_.L_402513
  %.sink23 = phi i64 [ 5, %block_.L_402513 ], [ %.sink23.be, %block_.L_402518.backedge ]
  %680 = load i64, i64* %3, align 8
  %681 = add i64 %680, %.sink23
  %682 = load i64, i64* %RBP.i, align 8
  %683 = add i64 %682, -52
  %684 = add i64 %681, 3
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %RAX.i1321, align 8
  %688 = add i64 %682, -56
  %689 = add i64 %681, 6
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = sub i32 %686, %691
  %693 = icmp ult i32 %686, %691
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %14, align 1
  %695 = and i32 %692, 255
  %696 = tail call i32 @llvm.ctpop.i32(i32 %695)
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  %699 = xor i8 %698, 1
  store i8 %699, i8* %21, align 1
  %700 = xor i32 %691, %686
  %701 = xor i32 %700, %692
  %702 = lshr i32 %701, 4
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  store i8 %704, i8* %27, align 1
  %705 = icmp eq i32 %692, 0
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %30, align 1
  %707 = lshr i32 %692, 31
  %708 = trunc i32 %707 to i8
  store i8 %708, i8* %33, align 1
  %709 = lshr i32 %686, 31
  %710 = lshr i32 %691, 31
  %711 = xor i32 %710, %709
  %712 = xor i32 %707, %709
  %713 = add nuw nsw i32 %712, %711
  %714 = icmp eq i32 %713, 2
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %39, align 1
  %716 = icmp ne i8 %708, 0
  %717 = xor i1 %716, %714
  %718 = or i1 %705, %717
  %.v143 = select i1 %718, i64 17, i64 12
  %719 = add i64 %681, %.v143
  store i64 %719, i64* %3, align 8
  br i1 %718, label %block_.L_402529, label %block_402524

block_402524:                                     ; preds = %block_.L_402518
  %720 = add i64 %719, 155
  br label %block_.L_4025bf

block_.L_402529:                                  ; preds = %block_.L_402518
  %721 = add i64 %682, -16
  %722 = add i64 %719, 4
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %RAX.i1321, align 8
  %725 = add i64 %682, -8
  %726 = add i64 %719, 8
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i64*
  %728 = load i64, i64* %727, align 8
  store i64 %728, i64* %RCX.i1290, align 8
  %729 = add i64 %719, 12
  store i64 %729, i64* %3, align 8
  %730 = load i32, i32* %685, align 4
  %731 = sext i32 %730 to i64
  store i64 %731, i64* %RDX.i1309, align 8
  %732 = shl nsw i64 %731, 2
  %733 = add i64 %732, %728
  %734 = add i64 %719, 15
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i32*
  %736 = load i32, i32* %735, align 4
  %737 = zext i32 %736 to i64
  store i64 %737, i64* %RSI.i1312, align 8
  %738 = add i64 %682, -92
  %739 = add i64 %719, 18
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = add i32 %741, %736
  %743 = zext i32 %742 to i64
  %744 = icmp ult i32 %742, %736
  %745 = icmp ult i32 %742, %741
  %746 = or i1 %744, %745
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %14, align 1
  %748 = and i32 %742, 255
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %21, align 1
  %753 = xor i32 %741, %736
  %754 = xor i32 %753, %742
  %755 = lshr i32 %754, 4
  %756 = trunc i32 %755 to i8
  %757 = and i8 %756, 1
  store i8 %757, i8* %27, align 1
  %758 = icmp eq i32 %742, 0
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %30, align 1
  %760 = lshr i32 %742, 31
  %761 = trunc i32 %760 to i8
  store i8 %761, i8* %33, align 1
  %762 = lshr i32 %736, 31
  %763 = lshr i32 %741, 31
  %764 = xor i32 %760, %762
  %765 = xor i32 %760, %763
  %766 = add nuw nsw i32 %764, %765
  %767 = icmp eq i32 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %39, align 1
  store i64 %743, i64* %RSI.i1312, align 8
  store i64 %743, i64* %RCX.i1290, align 8
  %769 = add i64 %724, %743
  %770 = add i64 %719, 26
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i8*
  %772 = load i8, i8* %771, align 1
  %773 = zext i8 %772 to i64
  store i64 %773, i64* %RSI.i1312, align 8
  %774 = add i64 %682, -76
  %775 = add i64 %719, 29
  store i64 %775, i64* %3, align 8
  %776 = zext i8 %772 to i32
  %777 = inttoptr i64 %774 to i32*
  %778 = load i32, i32* %777, align 4
  %779 = sub i32 %776, %778
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RSI.i1312, align 8
  %781 = icmp ult i32 %776, %778
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %14, align 1
  %783 = and i32 %779, 255
  %784 = tail call i32 @llvm.ctpop.i32(i32 %783)
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  %787 = xor i8 %786, 1
  store i8 %787, i8* %21, align 1
  %788 = xor i32 %778, %776
  %789 = xor i32 %788, %779
  %790 = lshr i32 %789, 4
  %791 = trunc i32 %790 to i8
  %792 = and i8 %791, 1
  store i8 %792, i8* %27, align 1
  %793 = icmp eq i32 %779, 0
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %30, align 1
  %795 = lshr i32 %779, 31
  %796 = trunc i32 %795 to i8
  store i8 %796, i8* %33, align 1
  %797 = lshr i32 %778, 31
  %798 = add nuw nsw i32 %795, %797
  %799 = icmp eq i32 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %39, align 1
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -68
  %803 = add i64 %719, 32
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  store i32 %779, i32* %804, align 4
  %805 = load i64, i64* %RBP.i, align 8
  %806 = add i64 %805, -68
  %807 = load i64, i64* %3, align 8
  %808 = add i64 %807, 4
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %806 to i32*
  %810 = load i32, i32* %809, align 4
  store i8 0, i8* %14, align 1
  %811 = and i32 %810, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %816 = icmp eq i32 %810, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %30, align 1
  %818 = lshr i32 %810, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v154 = select i1 %816, i64 10, i64 89
  %820 = add i64 %807, %.v154
  store i64 %820, i64* %3, align 8
  br i1 %816, label %block_402553, label %block_.L_4025a2

block_402553:                                     ; preds = %block_.L_402529
  %821 = add i64 %805, -8
  %822 = add i64 %820, 4
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i64*
  %824 = load i64, i64* %823, align 8
  store i64 %824, i64* %RAX.i1321, align 8
  %825 = add i64 %805, -52
  %826 = add i64 %820, 8
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = sext i32 %828 to i64
  store i64 %829, i64* %RCX.i1290, align 8
  %830 = shl nsw i64 %829, 2
  %831 = add i64 %830, %824
  %832 = add i64 %820, 11
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RDX.i1309, align 8
  %836 = add i64 %805, -1336
  %837 = add i64 %820, 17
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  store i32 %834, i32* %838, align 4
  %839 = load i64, i64* %RBP.i, align 8
  %840 = add i64 %839, -8
  %841 = load i64, i64* %3, align 8
  %842 = add i64 %841, 4
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %840 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %RAX.i1321, align 8
  %845 = add i64 %839, -60
  %846 = add i64 %841, 8
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = sext i32 %848 to i64
  store i64 %849, i64* %RCX.i1290, align 8
  %850 = shl nsw i64 %849, 2
  %851 = add i64 %850, %844
  %852 = add i64 %841, 11
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = zext i32 %854 to i64
  store i64 %855, i64* %RDX.i1309, align 8
  %856 = add i64 %841, 15
  store i64 %856, i64* %3, align 8
  %857 = load i64, i64* %843, align 8
  store i64 %857, i64* %RAX.i1321, align 8
  %858 = add i64 %839, -52
  %859 = add i64 %841, 19
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = sext i32 %861 to i64
  store i64 %862, i64* %RCX.i1290, align 8
  %863 = shl nsw i64 %862, 2
  %864 = add i64 %863, %857
  %865 = add i64 %841, 22
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i32*
  store i32 %854, i32* %866, align 4
  %867 = load i64, i64* %RBP.i, align 8
  %868 = add i64 %867, -1336
  %869 = load i64, i64* %3, align 8
  %870 = add i64 %869, 6
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %868 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RDX.i1309, align 8
  %874 = add i64 %867, -8
  %875 = add i64 %869, 10
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %RAX.i1321, align 8
  %878 = add i64 %867, -60
  %879 = add i64 %869, 14
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = sext i32 %881 to i64
  store i64 %882, i64* %RCX.i1290, align 8
  %883 = shl nsw i64 %882, 2
  %884 = add i64 %883, %877
  %885 = add i64 %869, 17
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i32*
  store i32 %872, i32* %886, align 4
  %887 = load i64, i64* %RBP.i, align 8
  %888 = add i64 %887, -60
  %889 = load i64, i64* %3, align 8
  %890 = add i64 %889, 3
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %888 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = add i32 %892, 1
  %894 = zext i32 %893 to i64
  store i64 %894, i64* %RDX.i1309, align 8
  %895 = icmp eq i32 %892, -1
  %896 = icmp eq i32 %893, 0
  %897 = or i1 %895, %896
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %14, align 1
  %899 = and i32 %893, 255
  %900 = tail call i32 @llvm.ctpop.i32(i32 %899)
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = xor i8 %902, 1
  store i8 %903, i8* %21, align 1
  %904 = xor i32 %893, %892
  %905 = lshr i32 %904, 4
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  store i8 %907, i8* %27, align 1
  %908 = zext i1 %896 to i8
  store i8 %908, i8* %30, align 1
  %909 = lshr i32 %893, 31
  %910 = trunc i32 %909 to i8
  store i8 %910, i8* %33, align 1
  %911 = lshr i32 %892, 31
  %912 = xor i32 %909, %911
  %913 = add nuw nsw i32 %912, %909
  %914 = icmp eq i32 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %39, align 1
  %916 = add i64 %889, 9
  store i64 %916, i64* %3, align 8
  store i32 %893, i32* %891, align 4
  %917 = load i64, i64* %RBP.i, align 8
  %918 = add i64 %917, -52
  %919 = load i64, i64* %3, align 8
  %920 = add i64 %919, 3
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %918 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = add i64 %919, 6
  store i64 %923, i64* %3, align 8
  %924 = add i32 %922, 1
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RDX.i1309, align 8
  %926 = icmp eq i32 %922, -1
  %927 = icmp eq i32 %924, 0
  %928 = or i1 %926, %927
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %14, align 1
  %930 = and i32 %924, 255
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930)
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %21, align 1
  %935 = xor i32 %924, %922
  br label %block_.L_402518.backedge

block_.L_402518.backedge:                         ; preds = %block_402553, %block_.L_4025b1
  %936 = phi i64 [ %923, %block_402553 ], [ %973, %block_.L_4025b1 ]
  %937 = phi i32 [ %924, %block_402553 ], [ %974, %block_.L_4025b1 ]
  %938 = phi i64 [ %917, %block_402553 ], [ %805, %block_.L_4025b1 ]
  %.sink59 = phi i32 [ %935, %block_402553 ], [ %985, %block_.L_4025b1 ]
  %.sink55 = phi i1 [ %927, %block_402553 ], [ %977, %block_.L_4025b1 ]
  %.sink50 = phi i32 [ %922, %block_402553 ], [ %972, %block_.L_4025b1 ]
  %.sink23.be = phi i64 [ -133, %block_402553 ], [ -162, %block_.L_4025b1 ]
  %939 = lshr i32 %.sink59, 4
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  store i8 %941, i8* %27, align 1
  %942 = zext i1 %.sink55 to i8
  store i8 %942, i8* %30, align 1
  %943 = lshr i32 %937, 31
  %944 = trunc i32 %943 to i8
  store i8 %944, i8* %33, align 1
  %945 = lshr i32 %.sink50, 31
  %946 = xor i32 %943, %945
  %947 = add nuw nsw i32 %946, %943
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %39, align 1
  %950 = add i64 %938, -52
  %951 = add i64 %936, 3
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  store i32 %937, i32* %952, align 4
  br label %block_.L_402518

block_.L_4025a2:                                  ; preds = %block_.L_402529
  %953 = add i64 %820, 4
  store i64 %953, i64* %3, align 8
  %954 = load i32, i32* %809, align 4
  store i8 0, i8* %14, align 1
  %955 = and i32 %954, 255
  %956 = tail call i32 @llvm.ctpop.i32(i32 %955)
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  store i8 %959, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %960 = icmp eq i32 %954, 0
  %961 = zext i1 %960 to i8
  store i8 %961, i8* %30, align 1
  %962 = lshr i32 %954, 31
  %963 = trunc i32 %962 to i8
  store i8 %963, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %964 = icmp ne i8 %963, 0
  %965 = or i1 %960, %964
  %.v155 = select i1 %965, i64 15, i64 10
  %966 = add i64 %820, %.v155
  store i64 %966, i64* %3, align 8
  br i1 %965, label %block_.L_4025b1, label %block_4025ac

block_4025ac:                                     ; preds = %block_.L_4025a2
  %967 = add i64 %966, 19
  %968 = add i64 %966, 5
  store i64 %968, i64* %3, align 8
  br label %block_.L_4025bf

block_.L_4025b1:                                  ; preds = %block_.L_4025a2
  %969 = add i64 %805, -52
  %970 = add i64 %966, 3
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = add i64 %966, 6
  store i64 %973, i64* %3, align 8
  %974 = add i32 %972, 1
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RAX.i1321, align 8
  %976 = icmp eq i32 %972, -1
  %977 = icmp eq i32 %974, 0
  %978 = or i1 %976, %977
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %14, align 1
  %980 = and i32 %974, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %21, align 1
  %985 = xor i32 %974, %972
  br label %block_.L_402518.backedge

block_.L_4025bf:                                  ; preds = %block_4025ac, %block_402524
  %986 = phi i64 [ %682, %block_402524 ], [ %805, %block_4025ac ]
  %storemerge = phi i64 [ %720, %block_402524 ], [ %967, %block_4025ac ]
  %987 = add i64 %storemerge, 5
  br label %block_.L_4025c4

block_.L_4025c4:                                  ; preds = %block_.L_4025c4.backedge, %block_.L_4025bf
  %988 = phi i64 [ %986, %block_.L_4025bf ], [ %.pre126, %block_.L_4025c4.backedge ]
  %.sink = phi i64 [ %987, %block_.L_4025bf ], [ %1256, %block_.L_4025c4.backedge ]
  %989 = add i64 %988, -52
  %990 = add i64 %.sink, 3
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = zext i32 %992 to i64
  store i64 %993, i64* %RAX.i1321, align 8
  %994 = add i64 %988, -56
  %995 = add i64 %.sink, 6
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = sub i32 %992, %997
  %999 = icmp ult i32 %992, %997
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %14, align 1
  %1001 = and i32 %998, 255
  %1002 = tail call i32 @llvm.ctpop.i32(i32 %1001)
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  store i8 %1005, i8* %21, align 1
  %1006 = xor i32 %997, %992
  %1007 = xor i32 %1006, %998
  %1008 = lshr i32 %1007, 4
  %1009 = trunc i32 %1008 to i8
  %1010 = and i8 %1009, 1
  store i8 %1010, i8* %27, align 1
  %1011 = icmp eq i32 %998, 0
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %30, align 1
  %1013 = lshr i32 %998, 31
  %1014 = trunc i32 %1013 to i8
  store i8 %1014, i8* %33, align 1
  %1015 = lshr i32 %992, 31
  %1016 = lshr i32 %997, 31
  %1017 = xor i32 %1016, %1015
  %1018 = xor i32 %1013, %1015
  %1019 = add nuw nsw i32 %1018, %1017
  %1020 = icmp eq i32 %1019, 2
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %39, align 1
  %1022 = icmp ne i8 %1014, 0
  %1023 = xor i1 %1022, %1020
  %1024 = or i1 %1011, %1023
  %.v144 = select i1 %1024, i64 17, i64 12
  %1025 = add i64 %.sink, %.v144
  store i64 %1025, i64* %3, align 8
  br i1 %1024, label %block_.L_4025d5, label %block_4025d0

block_4025d0:                                     ; preds = %block_.L_4025c4
  %1026 = add i64 %1025, 155
  br label %block_.L_40266b

block_.L_4025d5:                                  ; preds = %block_.L_4025c4
  %1027 = add i64 %988, -16
  %1028 = add i64 %1025, 4
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %RAX.i1321, align 8
  %1031 = add i64 %988, -8
  %1032 = add i64 %1025, 8
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i64*
  %1034 = load i64, i64* %1033, align 8
  store i64 %1034, i64* %RCX.i1290, align 8
  %1035 = add i64 %1025, 12
  store i64 %1035, i64* %3, align 8
  %1036 = load i32, i32* %996, align 4
  %1037 = sext i32 %1036 to i64
  store i64 %1037, i64* %RDX.i1309, align 8
  %1038 = shl nsw i64 %1037, 2
  %1039 = add i64 %1038, %1034
  %1040 = add i64 %1025, 15
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RSI.i1312, align 8
  %1044 = add i64 %988, -92
  %1045 = add i64 %1025, 18
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i32*
  %1047 = load i32, i32* %1046, align 4
  %1048 = add i32 %1047, %1042
  %1049 = zext i32 %1048 to i64
  %1050 = icmp ult i32 %1048, %1042
  %1051 = icmp ult i32 %1048, %1047
  %1052 = or i1 %1050, %1051
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %14, align 1
  %1054 = and i32 %1048, 255
  %1055 = tail call i32 @llvm.ctpop.i32(i32 %1054)
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  store i8 %1058, i8* %21, align 1
  %1059 = xor i32 %1047, %1042
  %1060 = xor i32 %1059, %1048
  %1061 = lshr i32 %1060, 4
  %1062 = trunc i32 %1061 to i8
  %1063 = and i8 %1062, 1
  store i8 %1063, i8* %27, align 1
  %1064 = icmp eq i32 %1048, 0
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %30, align 1
  %1066 = lshr i32 %1048, 31
  %1067 = trunc i32 %1066 to i8
  store i8 %1067, i8* %33, align 1
  %1068 = lshr i32 %1042, 31
  %1069 = lshr i32 %1047, 31
  %1070 = xor i32 %1066, %1068
  %1071 = xor i32 %1066, %1069
  %1072 = add nuw nsw i32 %1070, %1071
  %1073 = icmp eq i32 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %39, align 1
  store i64 %1049, i64* %RSI.i1312, align 8
  store i64 %1049, i64* %RCX.i1290, align 8
  %1075 = add i64 %1030, %1049
  %1076 = add i64 %1025, 26
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i8*
  %1078 = load i8, i8* %1077, align 1
  %1079 = zext i8 %1078 to i64
  store i64 %1079, i64* %RSI.i1312, align 8
  %1080 = add i64 %988, -76
  %1081 = add i64 %1025, 29
  store i64 %1081, i64* %3, align 8
  %1082 = zext i8 %1078 to i32
  %1083 = inttoptr i64 %1080 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = sub i32 %1082, %1084
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RSI.i1312, align 8
  %1087 = icmp ult i32 %1082, %1084
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %14, align 1
  %1089 = and i32 %1085, 255
  %1090 = tail call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  store i8 %1093, i8* %21, align 1
  %1094 = xor i32 %1084, %1082
  %1095 = xor i32 %1094, %1085
  %1096 = lshr i32 %1095, 4
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %27, align 1
  %1099 = icmp eq i32 %1085, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %30, align 1
  %1101 = lshr i32 %1085, 31
  %1102 = trunc i32 %1101 to i8
  store i8 %1102, i8* %33, align 1
  %1103 = lshr i32 %1084, 31
  %1104 = add nuw nsw i32 %1101, %1103
  %1105 = icmp eq i32 %1104, 2
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %39, align 1
  %1107 = load i64, i64* %RBP.i, align 8
  %1108 = add i64 %1107, -68
  %1109 = add i64 %1025, 32
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  store i32 %1085, i32* %1110, align 4
  %1111 = load i64, i64* %RBP.i, align 8
  %1112 = add i64 %1111, -68
  %1113 = load i64, i64* %3, align 8
  %1114 = add i64 %1113, 4
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1112 to i32*
  %1116 = load i32, i32* %1115, align 4
  store i8 0, i8* %14, align 1
  %1117 = and i32 %1116, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1122 = icmp eq i32 %1116, 0
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %30, align 1
  %1124 = lshr i32 %1116, 31
  %1125 = trunc i32 %1124 to i8
  store i8 %1125, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v153 = select i1 %1122, i64 10, i64 89
  %1126 = add i64 %1113, %.v153
  store i64 %1126, i64* %3, align 8
  br i1 %1122, label %block_4025ff, label %block_.L_40264e

block_4025ff:                                     ; preds = %block_.L_4025d5
  %1127 = add i64 %1111, -8
  %1128 = add i64 %1126, 4
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i64*
  %1130 = load i64, i64* %1129, align 8
  store i64 %1130, i64* %RAX.i1321, align 8
  %1131 = add i64 %1111, -56
  %1132 = add i64 %1126, 8
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = sext i32 %1134 to i64
  store i64 %1135, i64* %RCX.i1290, align 8
  %1136 = shl nsw i64 %1135, 2
  %1137 = add i64 %1136, %1130
  %1138 = add i64 %1126, 11
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RDX.i1309, align 8
  %1142 = add i64 %1111, -1340
  %1143 = add i64 %1126, 17
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  store i32 %1140, i32* %1144, align 4
  %1145 = load i64, i64* %RBP.i, align 8
  %1146 = add i64 %1145, -8
  %1147 = load i64, i64* %3, align 8
  %1148 = add i64 %1147, 4
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1146 to i64*
  %1150 = load i64, i64* %1149, align 8
  store i64 %1150, i64* %RAX.i1321, align 8
  %1151 = add i64 %1145, -64
  %1152 = add i64 %1147, 8
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = sext i32 %1154 to i64
  store i64 %1155, i64* %RCX.i1290, align 8
  %1156 = shl nsw i64 %1155, 2
  %1157 = add i64 %1156, %1150
  %1158 = add i64 %1147, 11
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %RDX.i1309, align 8
  %1162 = add i64 %1147, 15
  store i64 %1162, i64* %3, align 8
  %1163 = load i64, i64* %1149, align 8
  store i64 %1163, i64* %RAX.i1321, align 8
  %1164 = add i64 %1145, -56
  %1165 = add i64 %1147, 19
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = sext i32 %1167 to i64
  store i64 %1168, i64* %RCX.i1290, align 8
  %1169 = shl nsw i64 %1168, 2
  %1170 = add i64 %1169, %1163
  %1171 = add i64 %1147, 22
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i32*
  store i32 %1160, i32* %1172, align 4
  %1173 = load i64, i64* %RBP.i, align 8
  %1174 = add i64 %1173, -1340
  %1175 = load i64, i64* %3, align 8
  %1176 = add i64 %1175, 6
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1174 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = zext i32 %1178 to i64
  store i64 %1179, i64* %RDX.i1309, align 8
  %1180 = add i64 %1173, -8
  %1181 = add i64 %1175, 10
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i64*
  %1183 = load i64, i64* %1182, align 8
  store i64 %1183, i64* %RAX.i1321, align 8
  %1184 = add i64 %1173, -64
  %1185 = add i64 %1175, 14
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  %1187 = load i32, i32* %1186, align 4
  %1188 = sext i32 %1187 to i64
  store i64 %1188, i64* %RCX.i1290, align 8
  %1189 = shl nsw i64 %1188, 2
  %1190 = add i64 %1189, %1183
  %1191 = add i64 %1175, 17
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to i32*
  store i32 %1178, i32* %1192, align 4
  %1193 = load i64, i64* %RBP.i, align 8
  %1194 = add i64 %1193, -64
  %1195 = load i64, i64* %3, align 8
  %1196 = add i64 %1195, 3
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1194 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = add i32 %1198, -1
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RDX.i1309, align 8
  %1201 = icmp ne i32 %1198, 0
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %14, align 1
  %1203 = and i32 %1199, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203)
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %21, align 1
  %1208 = xor i32 %1198, 16
  %1209 = xor i32 %1208, %1199
  %1210 = lshr i32 %1209, 4
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  store i8 %1212, i8* %27, align 1
  %1213 = icmp eq i32 %1199, 0
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %30, align 1
  %1215 = lshr i32 %1199, 31
  %1216 = trunc i32 %1215 to i8
  store i8 %1216, i8* %33, align 1
  %1217 = lshr i32 %1198, 31
  %1218 = xor i32 %1215, %1217
  %1219 = xor i32 %1215, 1
  %1220 = add nuw nsw i32 %1218, %1219
  %1221 = icmp eq i32 %1220, 2
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %39, align 1
  %1223 = add i64 %1195, 9
  store i64 %1223, i64* %3, align 8
  store i32 %1199, i32* %1197, align 4
  %1224 = load i64, i64* %3, align 8
  %.sink109.in.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_4025c4.backedge

block_.L_4025c4.backedge:                         ; preds = %block_.L_40264e, %block_4025ff
  %1225 = phi i64 [ %.sink109.in.pre, %block_4025ff ], [ %1111, %block_.L_40264e ]
  %.sink111 = phi i64 [ %1224, %block_4025ff ], [ %1269, %block_.L_40264e ]
  %RDX.i1309.sink106 = phi i64* [ %RDX.i1309, %block_4025ff ], [ %RAX.i1321, %block_.L_40264e ]
  %EDX.i1065.sink67 = phi i32* [ %EDX.i1065, %block_4025ff ], [ %EAX.i1238, %block_.L_40264e ]
  %.sink61 = phi i64 [ -133, %block_4025ff ], [ -162, %block_.L_40264e ]
  %.sink109 = add i64 %1225, -56
  %1226 = add i64 %.sink111, 3
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %.sink109 to i32*
  %1228 = load i32, i32* %1227, align 4
  %1229 = add i32 %1228, -1
  %1230 = zext i32 %1229 to i64
  store i64 %1230, i64* %RDX.i1309.sink106, align 8
  %1231 = icmp ne i32 %1228, 0
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %14, align 1
  %1233 = and i32 %1229, 255
  %1234 = tail call i32 @llvm.ctpop.i32(i32 %1233)
  %1235 = trunc i32 %1234 to i8
  %1236 = and i8 %1235, 1
  %1237 = xor i8 %1236, 1
  store i8 %1237, i8* %21, align 1
  %1238 = xor i32 %1228, 16
  %1239 = xor i32 %1238, %1229
  %1240 = lshr i32 %1239, 4
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  store i8 %1242, i8* %27, align 1
  %1243 = icmp eq i32 %1229, 0
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %30, align 1
  %1245 = lshr i32 %1229, 31
  %1246 = trunc i32 %1245 to i8
  store i8 %1246, i8* %33, align 1
  %1247 = lshr i32 %1228, 31
  %1248 = xor i32 %1245, %1247
  %1249 = xor i32 %1245, 1
  %1250 = add nuw nsw i32 %1248, %1249
  %1251 = icmp eq i32 %1250, 2
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %39, align 1
  %1253 = load i32, i32* %EDX.i1065.sink67, align 4
  %1254 = add i64 %.sink111, 9
  store i64 %1254, i64* %3, align 8
  store i32 %1253, i32* %1227, align 4
  %1255 = load i64, i64* %3, align 8
  %1256 = add i64 %1255, %.sink61
  %.pre126 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4025c4

block_.L_40264e:                                  ; preds = %block_.L_4025d5
  %1257 = add i64 %1126, 4
  store i64 %1257, i64* %3, align 8
  %1258 = load i32, i32* %1115, align 4
  store i8 0, i8* %14, align 1
  %1259 = and i32 %1258, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1264 = icmp eq i32 %1258, 0
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %30, align 1
  %1266 = lshr i32 %1258, 31
  %1267 = trunc i32 %1266 to i8
  store i8 %1267, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1268 = icmp ne i8 %1267, 0
  %.v21 = select i1 %1268, i64 6, i64 11
  %1269 = add i64 %1257, %.v21
  store i64 %1269, i64* %3, align 8
  br i1 %1268, label %block_402658, label %block_.L_4025c4.backedge

block_402658:                                     ; preds = %block_.L_40264e
  %1270 = add i64 %1269, 19
  %1271 = add i64 %1269, 5
  store i64 %1271, i64* %3, align 8
  br label %block_.L_40266b

block_.L_40266b:                                  ; preds = %block_402658, %block_4025d0
  %1272 = phi i64 [ %988, %block_4025d0 ], [ %1111, %block_402658 ]
  %storemerge20 = phi i64 [ %1026, %block_4025d0 ], [ %1270, %block_402658 ]
  %1273 = add i64 %1272, -52
  %1274 = add i64 %storemerge20, 3
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i32*
  %1276 = load i32, i32* %1275, align 4
  %1277 = zext i32 %1276 to i64
  store i64 %1277, i64* %RAX.i1321, align 8
  %1278 = add i64 %1272, -56
  %1279 = add i64 %storemerge20, 6
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i32*
  %1281 = load i32, i32* %1280, align 4
  %1282 = sub i32 %1276, %1281
  %1283 = icmp ult i32 %1276, %1281
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %14, align 1
  %1285 = and i32 %1282, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %21, align 1
  %1290 = xor i32 %1281, %1276
  %1291 = xor i32 %1290, %1282
  %1292 = lshr i32 %1291, 4
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  store i8 %1294, i8* %27, align 1
  %1295 = icmp eq i32 %1282, 0
  %1296 = zext i1 %1295 to i8
  store i8 %1296, i8* %30, align 1
  %1297 = lshr i32 %1282, 31
  %1298 = trunc i32 %1297 to i8
  store i8 %1298, i8* %33, align 1
  %1299 = lshr i32 %1276, 31
  %1300 = lshr i32 %1281, 31
  %1301 = xor i32 %1300, %1299
  %1302 = xor i32 %1297, %1299
  %1303 = add nuw nsw i32 %1302, %1301
  %1304 = icmp eq i32 %1303, 2
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %39, align 1
  %1306 = icmp ne i8 %1298, 0
  %1307 = xor i1 %1306, %1304
  %1308 = or i1 %1295, %1307
  %.v138 = select i1 %1308, i64 17, i64 12
  %1309 = add i64 %storemerge20, %.v138
  store i64 %1309, i64* %3, align 8
  br i1 %1308, label %block_.L_40267c, label %block_402677

block_402677:                                     ; preds = %block_.L_40266b
  %1310 = add i64 %1272, -64
  %1311 = add i64 %1309, 87
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RAX.i1321, align 8
  %1315 = add i64 %1272, -60
  %1316 = add i64 %1309, 90
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1315 to i32*
  %1318 = load i32, i32* %1317, align 4
  %1319 = sub i32 %1313, %1318
  %1320 = icmp ult i32 %1313, %1318
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %14, align 1
  %1322 = and i32 %1319, 255
  %1323 = tail call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %21, align 1
  %1327 = xor i32 %1318, %1313
  %1328 = xor i32 %1327, %1319
  %1329 = lshr i32 %1328, 4
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  store i8 %1331, i8* %27, align 1
  %1332 = icmp eq i32 %1319, 0
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %30, align 1
  %1334 = lshr i32 %1319, 31
  %1335 = trunc i32 %1334 to i8
  store i8 %1335, i8* %33, align 1
  %1336 = lshr i32 %1313, 31
  %1337 = lshr i32 %1318, 31
  %1338 = xor i32 %1337, %1336
  %1339 = xor i32 %1334, %1336
  %1340 = add nuw nsw i32 %1339, %1338
  %1341 = icmp eq i32 %1340, 2
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %39, align 1
  %1343 = icmp ne i8 %1335, 0
  %1344 = xor i1 %1343, %1341
  %.v145 = select i1 %1344, i64 96, i64 155
  %1345 = add i64 %1309, %.v145
  store i64 %1345, i64* %3, align 8
  br i1 %1344, label %block_4026d7, label %block_.L_402712

block_.L_40267c:                                  ; preds = %block_.L_40266b
  %1346 = add i64 %1272, -8
  %1347 = add i64 %1309, 4
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i64*
  %1349 = load i64, i64* %1348, align 8
  store i64 %1349, i64* %RAX.i1321, align 8
  %1350 = add i64 %1309, 8
  store i64 %1350, i64* %3, align 8
  %1351 = load i32, i32* %1275, align 4
  %1352 = sext i32 %1351 to i64
  store i64 %1352, i64* %RCX.i1290, align 8
  %1353 = shl nsw i64 %1352, 2
  %1354 = add i64 %1353, %1349
  %1355 = add i64 %1309, 11
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i32*
  %1357 = load i32, i32* %1356, align 4
  %1358 = zext i32 %1357 to i64
  store i64 %1358, i64* %RDX.i1309, align 8
  %1359 = add i64 %1272, -1344
  %1360 = add i64 %1309, 17
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  store i32 %1357, i32* %1361, align 4
  %1362 = load i64, i64* %RBP.i, align 8
  %1363 = add i64 %1362, -8
  %1364 = load i64, i64* %3, align 8
  %1365 = add i64 %1364, 4
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1363 to i64*
  %1367 = load i64, i64* %1366, align 8
  store i64 %1367, i64* %RAX.i1321, align 8
  %1368 = add i64 %1362, -56
  %1369 = add i64 %1364, 8
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i32*
  %1371 = load i32, i32* %1370, align 4
  %1372 = sext i32 %1371 to i64
  store i64 %1372, i64* %RCX.i1290, align 8
  %1373 = shl nsw i64 %1372, 2
  %1374 = add i64 %1373, %1367
  %1375 = add i64 %1364, 11
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RDX.i1309, align 8
  %1379 = add i64 %1364, 15
  store i64 %1379, i64* %3, align 8
  %1380 = load i64, i64* %1366, align 8
  store i64 %1380, i64* %RAX.i1321, align 8
  %1381 = add i64 %1362, -52
  %1382 = add i64 %1364, 19
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i32*
  %1384 = load i32, i32* %1383, align 4
  %1385 = sext i32 %1384 to i64
  store i64 %1385, i64* %RCX.i1290, align 8
  %1386 = shl nsw i64 %1385, 2
  %1387 = add i64 %1386, %1380
  %1388 = add i64 %1364, 22
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  store i32 %1377, i32* %1389, align 4
  %1390 = load i64, i64* %RBP.i, align 8
  %1391 = add i64 %1390, -1344
  %1392 = load i64, i64* %3, align 8
  %1393 = add i64 %1392, 6
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1391 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = zext i32 %1395 to i64
  store i64 %1396, i64* %RDX.i1309, align 8
  %1397 = add i64 %1390, -8
  %1398 = add i64 %1392, 10
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i64*
  %1400 = load i64, i64* %1399, align 8
  store i64 %1400, i64* %RAX.i1321, align 8
  %1401 = add i64 %1390, -56
  %1402 = add i64 %1392, 14
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1401 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = sext i32 %1404 to i64
  store i64 %1405, i64* %RCX.i1290, align 8
  %1406 = shl nsw i64 %1405, 2
  %1407 = add i64 %1406, %1400
  %1408 = add i64 %1392, 17
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  store i32 %1395, i32* %1409, align 4
  %1410 = load i64, i64* %RBP.i, align 8
  %1411 = add i64 %1410, -52
  %1412 = load i64, i64* %3, align 8
  %1413 = add i64 %1412, 3
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1411 to i32*
  %1415 = load i32, i32* %1414, align 4
  %1416 = add i32 %1415, 1
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RDX.i1309, align 8
  %1418 = icmp eq i32 %1415, -1
  %1419 = icmp eq i32 %1416, 0
  %1420 = or i1 %1418, %1419
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %14, align 1
  %1422 = and i32 %1416, 255
  %1423 = tail call i32 @llvm.ctpop.i32(i32 %1422)
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  store i8 %1426, i8* %21, align 1
  %1427 = xor i32 %1416, %1415
  %1428 = lshr i32 %1427, 4
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  store i8 %1430, i8* %27, align 1
  %1431 = zext i1 %1419 to i8
  store i8 %1431, i8* %30, align 1
  %1432 = lshr i32 %1416, 31
  %1433 = trunc i32 %1432 to i8
  store i8 %1433, i8* %33, align 1
  %1434 = lshr i32 %1415, 31
  %1435 = xor i32 %1432, %1434
  %1436 = add nuw nsw i32 %1435, %1432
  %1437 = icmp eq i32 %1436, 2
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %39, align 1
  %1439 = add i64 %1412, 9
  store i64 %1439, i64* %3, align 8
  store i32 %1416, i32* %1414, align 4
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -56
  %1442 = load i64, i64* %3, align 8
  %1443 = add i64 %1442, 3
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1441 to i32*
  %1445 = load i32, i32* %1444, align 4
  %1446 = add i32 %1445, -1
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RDX.i1309, align 8
  %1448 = icmp ne i32 %1445, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %14, align 1
  %1450 = and i32 %1446, 255
  %1451 = tail call i32 @llvm.ctpop.i32(i32 %1450)
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = xor i8 %1453, 1
  store i8 %1454, i8* %21, align 1
  %1455 = xor i32 %1445, 16
  %1456 = xor i32 %1455, %1446
  %1457 = lshr i32 %1456, 4
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  store i8 %1459, i8* %27, align 1
  %1460 = icmp eq i32 %1446, 0
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %30, align 1
  %1462 = lshr i32 %1446, 31
  %1463 = trunc i32 %1462 to i8
  store i8 %1463, i8* %33, align 1
  %1464 = lshr i32 %1445, 31
  %1465 = xor i32 %1462, %1464
  %1466 = xor i32 %1462, 1
  %1467 = add nuw nsw i32 %1465, %1466
  %1468 = icmp eq i32 %1467, 2
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %39, align 1
  %1470 = add i64 %1442, 9
  store i64 %1470, i64* %3, align 8
  store i32 %1446, i32* %1444, align 4
  %1471 = load i64, i64* %3, align 8
  %1472 = add i64 %1471, -435
  store i64 %1472, i64* %3, align 8
  br label %block_.L_402513

block_4026d7:                                     ; preds = %block_402677
  %1473 = add i64 %1272, -84
  %1474 = add i64 %1345, 3
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = zext i32 %1476 to i64
  store i64 %1477, i64* %RAX.i1321, align 8
  %1478 = add i64 %1272, -80
  %1479 = add i64 %1345, 7
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = sext i32 %1481 to i64
  store i64 %1482, i64* %RCX.i1290, align 8
  %1483 = shl nsw i64 %1482, 2
  %1484 = add i64 %1272, -496
  %1485 = add i64 %1484, %1483
  %1486 = add i64 %1345, 14
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i32*
  store i32 %1476, i32* %1487, align 4
  %1488 = load i64, i64* %RBP.i, align 8
  %1489 = add i64 %1488, -88
  %1490 = load i64, i64* %3, align 8
  %1491 = add i64 %1490, 3
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1489 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = zext i32 %1493 to i64
  store i64 %1494, i64* %RAX.i1321, align 8
  %1495 = add i64 %1488, -80
  %1496 = add i64 %1490, 7
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = sext i32 %1498 to i64
  store i64 %1499, i64* %RCX.i1290, align 8
  %1500 = shl nsw i64 %1499, 2
  %1501 = add i64 %1488, -896
  %1502 = add i64 %1501, %1500
  %1503 = add i64 %1490, 14
  store i64 %1503, i64* %3, align 8
  %1504 = inttoptr i64 %1502 to i32*
  store i32 %1493, i32* %1504, align 4
  %1505 = load i64, i64* %RBP.i, align 8
  %1506 = add i64 %1505, -92
  %1507 = load i64, i64* %3, align 8
  %1508 = add i64 %1507, 3
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1506 to i32*
  %1510 = load i32, i32* %1509, align 4
  %1511 = add i32 %1510, 1
  %1512 = zext i32 %1511 to i64
  store i64 %1512, i64* %RAX.i1321, align 8
  %1513 = icmp eq i32 %1510, -1
  %1514 = icmp eq i32 %1511, 0
  %1515 = or i1 %1513, %1514
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %14, align 1
  %1517 = and i32 %1511, 255
  %1518 = tail call i32 @llvm.ctpop.i32(i32 %1517)
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  %1521 = xor i8 %1520, 1
  store i8 %1521, i8* %21, align 1
  %1522 = xor i32 %1511, %1510
  %1523 = lshr i32 %1522, 4
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  store i8 %1525, i8* %27, align 1
  %1526 = zext i1 %1514 to i8
  store i8 %1526, i8* %30, align 1
  %1527 = lshr i32 %1511, 31
  %1528 = trunc i32 %1527 to i8
  store i8 %1528, i8* %33, align 1
  %1529 = lshr i32 %1510, 31
  %1530 = xor i32 %1527, %1529
  %1531 = add nuw nsw i32 %1530, %1527
  %1532 = icmp eq i32 %1531, 2
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %39, align 1
  %1534 = add i64 %1505, -80
  %1535 = add i64 %1507, 10
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  %1537 = load i32, i32* %1536, align 4
  %1538 = sext i32 %1537 to i64
  store i64 %1538, i64* %RCX.i1290, align 8
  %1539 = shl nsw i64 %1538, 2
  %1540 = add i64 %1505, -1296
  %1541 = add i64 %1540, %1539
  %1542 = add i64 %1507, 17
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i32*
  store i32 %1511, i32* %1543, align 4
  %1544 = load i64, i64* %RBP.i, align 8
  %1545 = add i64 %1544, -80
  %1546 = load i64, i64* %3, align 8
  %1547 = add i64 %1546, 3
  store i64 %1547, i64* %3, align 8
  %1548 = inttoptr i64 %1545 to i32*
  %1549 = load i32, i32* %1548, align 4
  %1550 = add i32 %1549, 1
  %1551 = zext i32 %1550 to i64
  store i64 %1551, i64* %RAX.i1321, align 8
  %1552 = icmp eq i32 %1549, -1
  %1553 = icmp eq i32 %1550, 0
  %1554 = or i1 %1552, %1553
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %14, align 1
  %1556 = and i32 %1550, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556)
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %21, align 1
  %1561 = xor i32 %1550, %1549
  %1562 = lshr i32 %1561, 4
  %1563 = trunc i32 %1562 to i8
  %1564 = and i8 %1563, 1
  store i8 %1564, i8* %27, align 1
  %1565 = zext i1 %1553 to i8
  store i8 %1565, i8* %30, align 1
  %1566 = lshr i32 %1550, 31
  %1567 = trunc i32 %1566 to i8
  store i8 %1567, i8* %33, align 1
  %1568 = lshr i32 %1549, 31
  %1569 = xor i32 %1566, %1568
  %1570 = add nuw nsw i32 %1569, %1566
  %1571 = icmp eq i32 %1570, 2
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %39, align 1
  %1573 = add i64 %1546, 9
  store i64 %1573, i64* %3, align 8
  store i32 %1550, i32* %1548, align 4
  %1574 = load i64, i64* %3, align 8
  %1575 = add i64 %1574, -801
  br label %block_.L_4023ec.backedge

block_.L_402712:                                  ; preds = %block_402677
  %1576 = add i64 %1345, 3
  store i64 %1576, i64* %3, align 8
  %1577 = load i32, i32* %1317, align 4
  %1578 = zext i32 %1577 to i64
  store i64 %1578, i64* %RAX.i1321, align 8
  %1579 = add i64 %1272, -84
  %1580 = add i64 %1345, 6
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = sub i32 %1577, %1582
  %1584 = zext i32 %1583 to i64
  store i64 %1584, i64* %RAX.i1321, align 8
  %1585 = icmp ult i32 %1577, %1582
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %14, align 1
  %1587 = and i32 %1583, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %21, align 1
  %1592 = xor i32 %1582, %1577
  %1593 = xor i32 %1592, %1583
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %27, align 1
  %1597 = icmp eq i32 %1583, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %30, align 1
  %1599 = lshr i32 %1583, 31
  %1600 = trunc i32 %1599 to i8
  store i8 %1600, i8* %33, align 1
  %1601 = lshr i32 %1577, 31
  %1602 = lshr i32 %1582, 31
  %1603 = xor i32 %1602, %1601
  %1604 = xor i32 %1599, %1601
  %1605 = add nuw nsw i32 %1604, %1603
  %1606 = icmp eq i32 %1605, 2
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %39, align 1
  %1608 = add i64 %1345, 9
  store i64 %1608, i64* %3, align 8
  %1609 = load i32, i32* %1275, align 4
  %1610 = zext i32 %1609 to i64
  store i64 %1610, i64* %RCX.i1290, align 8
  %1611 = add i64 %1345, 12
  store i64 %1611, i64* %3, align 8
  %1612 = load i32, i32* %1317, align 4
  %1613 = sub i32 %1609, %1612
  %1614 = zext i32 %1613 to i64
  store i64 %1614, i64* %RCX.i1290, align 8
  %1615 = lshr i32 %1613, 31
  %1616 = sub i32 %1583, %1613
  %1617 = icmp ult i32 %1583, %1613
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %14, align 1
  %1619 = and i32 %1616, 255
  %1620 = tail call i32 @llvm.ctpop.i32(i32 %1619)
  %1621 = trunc i32 %1620 to i8
  %1622 = and i8 %1621, 1
  %1623 = xor i8 %1622, 1
  store i8 %1623, i8* %21, align 1
  %1624 = xor i32 %1613, %1583
  %1625 = xor i32 %1624, %1616
  %1626 = lshr i32 %1625, 4
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  store i8 %1628, i8* %27, align 1
  %1629 = icmp eq i32 %1616, 0
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %30, align 1
  %1631 = lshr i32 %1616, 31
  %1632 = trunc i32 %1631 to i8
  store i8 %1632, i8* %33, align 1
  %1633 = xor i32 %1615, %1599
  %1634 = xor i32 %1631, %1599
  %1635 = add nuw nsw i32 %1634, %1633
  %1636 = icmp eq i32 %1635, 2
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %39, align 1
  %1638 = icmp ne i8 %1632, 0
  %1639 = xor i1 %1638, %1636
  %.v146 = select i1 %1639, i64 20, i64 37
  %1640 = add i64 %1345, %.v146
  store i64 %1640, i64* %3, align 8
  %1641 = load i64, i64* %RBP.i, align 8
  br i1 %1639, label %block_402726, label %block_.L_402737

block_402726:                                     ; preds = %block_.L_402712
  %1642 = add i64 %1641, -60
  %1643 = add i64 %1640, 3
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RAX.i1321, align 8
  %1647 = add i64 %1641, -84
  %1648 = add i64 %1640, 6
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = sub i32 %1645, %1650
  %1652 = zext i32 %1651 to i64
  store i64 %1652, i64* %RAX.i1321, align 8
  %1653 = icmp ult i32 %1645, %1650
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %14, align 1
  %1655 = and i32 %1651, 255
  %1656 = tail call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  store i8 %1659, i8* %21, align 1
  %1660 = xor i32 %1650, %1645
  %1661 = xor i32 %1660, %1651
  %1662 = lshr i32 %1661, 4
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  store i8 %1664, i8* %27, align 1
  %1665 = icmp eq i32 %1651, 0
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %30, align 1
  %1667 = lshr i32 %1651, 31
  %1668 = trunc i32 %1667 to i8
  store i8 %1668, i8* %33, align 1
  %1669 = lshr i32 %1645, 31
  %1670 = lshr i32 %1650, 31
  %1671 = xor i32 %1670, %1669
  %1672 = xor i32 %1667, %1669
  %1673 = add nuw nsw i32 %1672, %1671
  %1674 = icmp eq i32 %1673, 2
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %39, align 1
  %1676 = add i64 %1641, -1392
  %1677 = add i64 %1640, 12
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  store i32 %1651, i32* %1678, align 4
  %1679 = load i64, i64* %3, align 8
  %1680 = add i64 %1679, 17
  store i64 %1680, i64* %3, align 8
  br label %block_.L_402743

block_.L_402737:                                  ; preds = %block_.L_402712
  %1681 = add i64 %1641, -52
  %1682 = add i64 %1640, 3
  store i64 %1682, i64* %3, align 8
  %1683 = inttoptr i64 %1681 to i32*
  %1684 = load i32, i32* %1683, align 4
  %1685 = zext i32 %1684 to i64
  store i64 %1685, i64* %RAX.i1321, align 8
  %1686 = add i64 %1641, -60
  %1687 = add i64 %1640, 6
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i32*
  %1689 = load i32, i32* %1688, align 4
  %1690 = sub i32 %1684, %1689
  %1691 = zext i32 %1690 to i64
  store i64 %1691, i64* %RAX.i1321, align 8
  %1692 = icmp ult i32 %1684, %1689
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %14, align 1
  %1694 = and i32 %1690, 255
  %1695 = tail call i32 @llvm.ctpop.i32(i32 %1694)
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  store i8 %1698, i8* %21, align 1
  %1699 = xor i32 %1689, %1684
  %1700 = xor i32 %1699, %1690
  %1701 = lshr i32 %1700, 4
  %1702 = trunc i32 %1701 to i8
  %1703 = and i8 %1702, 1
  store i8 %1703, i8* %27, align 1
  %1704 = icmp eq i32 %1690, 0
  %1705 = zext i1 %1704 to i8
  store i8 %1705, i8* %30, align 1
  %1706 = lshr i32 %1690, 31
  %1707 = trunc i32 %1706 to i8
  store i8 %1707, i8* %33, align 1
  %1708 = lshr i32 %1684, 31
  %1709 = lshr i32 %1689, 31
  %1710 = xor i32 %1709, %1708
  %1711 = xor i32 %1706, %1708
  %1712 = add nuw nsw i32 %1711, %1710
  %1713 = icmp eq i32 %1712, 2
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %39, align 1
  %1715 = add i64 %1641, -1392
  %1716 = add i64 %1640, 12
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i32*
  store i32 %1690, i32* %1717, align 4
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_402743

block_.L_402743:                                  ; preds = %block_.L_402737, %block_402726
  %1718 = phi i64 [ %.pre128, %block_.L_402737 ], [ %1680, %block_402726 ]
  %1719 = load i64, i64* %RBP.i, align 8
  %1720 = add i64 %1719, -1392
  %1721 = add i64 %1718, 6
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i32*
  %1723 = load i32, i32* %1722, align 4
  %1724 = zext i32 %1723 to i64
  store i64 %1724, i64* %RAX.i1321, align 8
  %1725 = add i64 %1719, -68
  %1726 = add i64 %1718, 9
  store i64 %1726, i64* %3, align 8
  %1727 = inttoptr i64 %1725 to i32*
  store i32 %1723, i32* %1727, align 4
  %1728 = load i64, i64* %RBP.i, align 8
  %1729 = add i64 %1728, -84
  %1730 = load i64, i64* %3, align 8
  %1731 = add i64 %1730, 3
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1729 to i32*
  %1733 = load i32, i32* %1732, align 4
  %1734 = zext i32 %1733 to i64
  store i64 %1734, i64* %RAX.i1321, align 8
  %1735 = add i64 %1728, -1348
  %1736 = add i64 %1730, 9
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i32*
  store i32 %1733, i32* %1737, align 4
  %1738 = load i64, i64* %RBP.i, align 8
  %1739 = add i64 %1738, -52
  %1740 = load i64, i64* %3, align 8
  %1741 = add i64 %1740, 3
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1739 to i32*
  %1743 = load i32, i32* %1742, align 4
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RAX.i1321, align 8
  %1745 = add i64 %1738, -68
  %1746 = add i64 %1740, 6
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i32*
  %1748 = load i32, i32* %1747, align 4
  %1749 = sub i32 %1743, %1748
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RAX.i1321, align 8
  %1751 = icmp ult i32 %1743, %1748
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %14, align 1
  %1753 = and i32 %1749, 255
  %1754 = tail call i32 @llvm.ctpop.i32(i32 %1753)
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  %1757 = xor i8 %1756, 1
  store i8 %1757, i8* %21, align 1
  %1758 = xor i32 %1748, %1743
  %1759 = xor i32 %1758, %1749
  %1760 = lshr i32 %1759, 4
  %1761 = trunc i32 %1760 to i8
  %1762 = and i8 %1761, 1
  store i8 %1762, i8* %27, align 1
  %1763 = icmp eq i32 %1749, 0
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %30, align 1
  %1765 = lshr i32 %1749, 31
  %1766 = trunc i32 %1765 to i8
  store i8 %1766, i8* %33, align 1
  %1767 = lshr i32 %1743, 31
  %1768 = lshr i32 %1748, 31
  %1769 = xor i32 %1768, %1767
  %1770 = xor i32 %1765, %1767
  %1771 = add nuw nsw i32 %1770, %1769
  %1772 = icmp eq i32 %1771, 2
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %39, align 1
  %1774 = add i64 %1738, -1352
  %1775 = add i64 %1740, 12
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1774 to i32*
  store i32 %1749, i32* %1776, align 4
  %1777 = load i64, i64* %RBP.i, align 8
  %1778 = add i64 %1777, -68
  %1779 = load i64, i64* %3, align 8
  %1780 = add i64 %1779, 3
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1778 to i32*
  %1782 = load i32, i32* %1781, align 4
  %1783 = zext i32 %1782 to i64
  store i64 %1783, i64* %RAX.i1321, align 8
  %1784 = add i64 %1777, -1356
  %1785 = add i64 %1779, 9
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i32*
  store i32 %1782, i32* %1786, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_40276a

block_.L_40276a:                                  ; preds = %block_402777, %block_.L_402743
  %1787 = phi i64 [ %1963, %block_402777 ], [ %.pre129, %block_.L_402743 ]
  %1788 = load i64, i64* %RBP.i, align 8
  %1789 = add i64 %1788, -1356
  %1790 = add i64 %1787, 7
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i32*
  %1792 = load i32, i32* %1791, align 4
  store i8 0, i8* %14, align 1
  %1793 = and i32 %1792, 255
  %1794 = tail call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  store i8 %1797, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1798 = icmp eq i32 %1792, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %30, align 1
  %1800 = lshr i32 %1792, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1802 = icmp ne i8 %1801, 0
  %1803 = or i1 %1798, %1802
  %.v147 = select i1 %1803, i64 131, i64 13
  %1804 = add i64 %1787, %.v147
  store i64 %1804, i64* %3, align 8
  br i1 %1803, label %block_.L_4027ed, label %block_402777

block_402777:                                     ; preds = %block_.L_40276a
  %1805 = add i64 %1788, -8
  %1806 = add i64 %1804, 4
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to i64*
  %1808 = load i64, i64* %1807, align 8
  store i64 %1808, i64* %RAX.i1321, align 8
  %1809 = add i64 %1788, -1348
  %1810 = add i64 %1804, 11
  store i64 %1810, i64* %3, align 8
  %1811 = inttoptr i64 %1809 to i32*
  %1812 = load i32, i32* %1811, align 4
  %1813 = sext i32 %1812 to i64
  store i64 %1813, i64* %RCX.i1290, align 8
  %1814 = shl nsw i64 %1813, 2
  %1815 = add i64 %1814, %1808
  %1816 = add i64 %1804, 14
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1815 to i32*
  %1818 = load i32, i32* %1817, align 4
  %1819 = zext i32 %1818 to i64
  store i64 %1819, i64* %RDX.i1309, align 8
  %1820 = add i64 %1788, -1360
  %1821 = add i64 %1804, 20
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i32*
  store i32 %1818, i32* %1822, align 4
  %1823 = load i64, i64* %RBP.i, align 8
  %1824 = add i64 %1823, -8
  %1825 = load i64, i64* %3, align 8
  %1826 = add i64 %1825, 4
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1824 to i64*
  %1828 = load i64, i64* %1827, align 8
  store i64 %1828, i64* %RAX.i1321, align 8
  %1829 = add i64 %1823, -1352
  %1830 = add i64 %1825, 11
  store i64 %1830, i64* %3, align 8
  %1831 = inttoptr i64 %1829 to i32*
  %1832 = load i32, i32* %1831, align 4
  %1833 = sext i32 %1832 to i64
  store i64 %1833, i64* %RCX.i1290, align 8
  %1834 = shl nsw i64 %1833, 2
  %1835 = add i64 %1834, %1828
  %1836 = add i64 %1825, 14
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i32*
  %1838 = load i32, i32* %1837, align 4
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RDX.i1309, align 8
  %1840 = add i64 %1825, 18
  store i64 %1840, i64* %3, align 8
  %1841 = load i64, i64* %1827, align 8
  store i64 %1841, i64* %RAX.i1321, align 8
  %1842 = add i64 %1823, -1348
  %1843 = add i64 %1825, 25
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1842 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = sext i32 %1845 to i64
  store i64 %1846, i64* %RCX.i1290, align 8
  %1847 = shl nsw i64 %1846, 2
  %1848 = add i64 %1847, %1841
  %1849 = add i64 %1825, 28
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to i32*
  store i32 %1838, i32* %1850, align 4
  %1851 = load i64, i64* %RBP.i, align 8
  %1852 = add i64 %1851, -1360
  %1853 = load i64, i64* %3, align 8
  %1854 = add i64 %1853, 6
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1852 to i32*
  %1856 = load i32, i32* %1855, align 4
  %1857 = zext i32 %1856 to i64
  store i64 %1857, i64* %RDX.i1309, align 8
  %1858 = add i64 %1851, -8
  %1859 = add i64 %1853, 10
  store i64 %1859, i64* %3, align 8
  %1860 = inttoptr i64 %1858 to i64*
  %1861 = load i64, i64* %1860, align 8
  store i64 %1861, i64* %RAX.i1321, align 8
  %1862 = add i64 %1851, -1352
  %1863 = add i64 %1853, 17
  store i64 %1863, i64* %3, align 8
  %1864 = inttoptr i64 %1862 to i32*
  %1865 = load i32, i32* %1864, align 4
  %1866 = sext i32 %1865 to i64
  store i64 %1866, i64* %RCX.i1290, align 8
  %1867 = shl nsw i64 %1866, 2
  %1868 = add i64 %1867, %1861
  %1869 = add i64 %1853, 20
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i32*
  store i32 %1856, i32* %1870, align 4
  %1871 = load i64, i64* %RBP.i, align 8
  %1872 = add i64 %1871, -1348
  %1873 = load i64, i64* %3, align 8
  %1874 = add i64 %1873, 6
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1872 to i32*
  %1876 = load i32, i32* %1875, align 4
  %1877 = add i32 %1876, 1
  %1878 = zext i32 %1877 to i64
  store i64 %1878, i64* %RDX.i1309, align 8
  %1879 = icmp eq i32 %1876, -1
  %1880 = icmp eq i32 %1877, 0
  %1881 = or i1 %1879, %1880
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %14, align 1
  %1883 = and i32 %1877, 255
  %1884 = tail call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  store i8 %1887, i8* %21, align 1
  %1888 = xor i32 %1877, %1876
  %1889 = lshr i32 %1888, 4
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  store i8 %1891, i8* %27, align 1
  %1892 = zext i1 %1880 to i8
  store i8 %1892, i8* %30, align 1
  %1893 = lshr i32 %1877, 31
  %1894 = trunc i32 %1893 to i8
  store i8 %1894, i8* %33, align 1
  %1895 = lshr i32 %1876, 31
  %1896 = xor i32 %1893, %1895
  %1897 = add nuw nsw i32 %1896, %1893
  %1898 = icmp eq i32 %1897, 2
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %39, align 1
  %1900 = add i64 %1873, 15
  store i64 %1900, i64* %3, align 8
  store i32 %1877, i32* %1875, align 4
  %1901 = load i64, i64* %RBP.i, align 8
  %1902 = add i64 %1901, -1352
  %1903 = load i64, i64* %3, align 8
  %1904 = add i64 %1903, 6
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1902 to i32*
  %1906 = load i32, i32* %1905, align 4
  %1907 = add i32 %1906, 1
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RDX.i1309, align 8
  %1909 = icmp eq i32 %1906, -1
  %1910 = icmp eq i32 %1907, 0
  %1911 = or i1 %1909, %1910
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %14, align 1
  %1913 = and i32 %1907, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %21, align 1
  %1918 = xor i32 %1907, %1906
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %27, align 1
  %1922 = zext i1 %1910 to i8
  store i8 %1922, i8* %30, align 1
  %1923 = lshr i32 %1907, 31
  %1924 = trunc i32 %1923 to i8
  store i8 %1924, i8* %33, align 1
  %1925 = lshr i32 %1906, 31
  %1926 = xor i32 %1923, %1925
  %1927 = add nuw nsw i32 %1926, %1923
  %1928 = icmp eq i32 %1927, 2
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %39, align 1
  %1930 = add i64 %1903, 15
  store i64 %1930, i64* %3, align 8
  store i32 %1907, i32* %1905, align 4
  %1931 = load i64, i64* %RBP.i, align 8
  %1932 = add i64 %1931, -1356
  %1933 = load i64, i64* %3, align 8
  %1934 = add i64 %1933, 6
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1932 to i32*
  %1936 = load i32, i32* %1935, align 4
  %1937 = add i32 %1936, -1
  %1938 = zext i32 %1937 to i64
  store i64 %1938, i64* %RDX.i1309, align 8
  %1939 = icmp ne i32 %1936, 0
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %14, align 1
  %1941 = and i32 %1937, 255
  %1942 = tail call i32 @llvm.ctpop.i32(i32 %1941)
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = xor i8 %1944, 1
  store i8 %1945, i8* %21, align 1
  %1946 = xor i32 %1936, 16
  %1947 = xor i32 %1946, %1937
  %1948 = lshr i32 %1947, 4
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  store i8 %1950, i8* %27, align 1
  %1951 = icmp eq i32 %1937, 0
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %30, align 1
  %1953 = lshr i32 %1937, 31
  %1954 = trunc i32 %1953 to i8
  store i8 %1954, i8* %33, align 1
  %1955 = lshr i32 %1936, 31
  %1956 = xor i32 %1953, %1955
  %1957 = xor i32 %1953, 1
  %1958 = add nuw nsw i32 %1956, %1957
  %1959 = icmp eq i32 %1958, 2
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %39, align 1
  %1961 = add i64 %1933, 15
  store i64 %1961, i64* %3, align 8
  store i32 %1937, i32* %1935, align 4
  %1962 = load i64, i64* %3, align 8
  %1963 = add i64 %1962, -126
  store i64 %1963, i64* %3, align 8
  br label %block_.L_40276a

block_.L_4027ed:                                  ; preds = %block_.L_40276a
  %1964 = add i64 %1788, -88
  %1965 = add i64 %1804, 3
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1964 to i32*
  %1967 = load i32, i32* %1966, align 4
  %1968 = zext i32 %1967 to i64
  store i64 %1968, i64* %RAX.i1321, align 8
  %1969 = add i64 %1788, -64
  %1970 = add i64 %1804, 6
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1969 to i32*
  %1972 = load i32, i32* %1971, align 4
  %1973 = sub i32 %1967, %1972
  %1974 = zext i32 %1973 to i64
  store i64 %1974, i64* %RAX.i1321, align 8
  %1975 = icmp ult i32 %1967, %1972
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %14, align 1
  %1977 = and i32 %1973, 255
  %1978 = tail call i32 @llvm.ctpop.i32(i32 %1977)
  %1979 = trunc i32 %1978 to i8
  %1980 = and i8 %1979, 1
  %1981 = xor i8 %1980, 1
  store i8 %1981, i8* %21, align 1
  %1982 = xor i32 %1972, %1967
  %1983 = xor i32 %1982, %1973
  %1984 = lshr i32 %1983, 4
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  store i8 %1986, i8* %27, align 1
  %1987 = icmp eq i32 %1973, 0
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %30, align 1
  %1989 = lshr i32 %1973, 31
  %1990 = trunc i32 %1989 to i8
  store i8 %1990, i8* %33, align 1
  %1991 = lshr i32 %1967, 31
  %1992 = lshr i32 %1972, 31
  %1993 = xor i32 %1992, %1991
  %1994 = xor i32 %1989, %1991
  %1995 = add nuw nsw i32 %1994, %1993
  %1996 = icmp eq i32 %1995, 2
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %39, align 1
  %1998 = add i64 %1804, 9
  store i64 %1998, i64* %3, align 8
  %1999 = load i32, i32* %1971, align 4
  %2000 = zext i32 %1999 to i64
  store i64 %2000, i64* %RCX.i1290, align 8
  %2001 = add i64 %1788, -56
  %2002 = add i64 %1804, 12
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to i32*
  %2004 = load i32, i32* %2003, align 4
  %2005 = sub i32 %1999, %2004
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RCX.i1290, align 8
  %2007 = lshr i32 %2005, 31
  %2008 = sub i32 %1973, %2005
  %2009 = icmp ult i32 %1973, %2005
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %14, align 1
  %2011 = and i32 %2008, 255
  %2012 = tail call i32 @llvm.ctpop.i32(i32 %2011)
  %2013 = trunc i32 %2012 to i8
  %2014 = and i8 %2013, 1
  %2015 = xor i8 %2014, 1
  store i8 %2015, i8* %21, align 1
  %2016 = xor i32 %2005, %1973
  %2017 = xor i32 %2016, %2008
  %2018 = lshr i32 %2017, 4
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  store i8 %2020, i8* %27, align 1
  %2021 = icmp eq i32 %2008, 0
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %30, align 1
  %2023 = lshr i32 %2008, 31
  %2024 = trunc i32 %2023 to i8
  store i8 %2024, i8* %33, align 1
  %2025 = xor i32 %2007, %1989
  %2026 = xor i32 %2023, %1989
  %2027 = add nuw nsw i32 %2026, %2025
  %2028 = icmp eq i32 %2027, 2
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %39, align 1
  %2030 = icmp ne i8 %2024, 0
  %2031 = xor i1 %2030, %2028
  %.v148 = select i1 %2031, i64 20, i64 37
  %2032 = add i64 %1804, %.v148
  store i64 %2032, i64* %3, align 8
  %2033 = load i64, i64* %RBP.i, align 8
  br i1 %2031, label %block_402801, label %block_.L_402812

block_402801:                                     ; preds = %block_.L_4027ed
  %2034 = add i64 %2033, -88
  %2035 = add i64 %2032, 3
  store i64 %2035, i64* %3, align 8
  %2036 = inttoptr i64 %2034 to i32*
  %2037 = load i32, i32* %2036, align 4
  %2038 = zext i32 %2037 to i64
  store i64 %2038, i64* %RAX.i1321, align 8
  %2039 = add i64 %2033, -64
  %2040 = add i64 %2032, 6
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i32*
  %2042 = load i32, i32* %2041, align 4
  %2043 = sub i32 %2037, %2042
  %2044 = zext i32 %2043 to i64
  store i64 %2044, i64* %RAX.i1321, align 8
  %2045 = icmp ult i32 %2037, %2042
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %14, align 1
  %2047 = and i32 %2043, 255
  %2048 = tail call i32 @llvm.ctpop.i32(i32 %2047)
  %2049 = trunc i32 %2048 to i8
  %2050 = and i8 %2049, 1
  %2051 = xor i8 %2050, 1
  store i8 %2051, i8* %21, align 1
  %2052 = xor i32 %2042, %2037
  %2053 = xor i32 %2052, %2043
  %2054 = lshr i32 %2053, 4
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  store i8 %2056, i8* %27, align 1
  %2057 = icmp eq i32 %2043, 0
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %30, align 1
  %2059 = lshr i32 %2043, 31
  %2060 = trunc i32 %2059 to i8
  store i8 %2060, i8* %33, align 1
  %2061 = lshr i32 %2037, 31
  %2062 = lshr i32 %2042, 31
  %2063 = xor i32 %2062, %2061
  %2064 = xor i32 %2059, %2061
  %2065 = add nuw nsw i32 %2064, %2063
  %2066 = icmp eq i32 %2065, 2
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %39, align 1
  %2068 = add i64 %2033, -1396
  %2069 = add i64 %2032, 12
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i32*
  store i32 %2043, i32* %2070, align 4
  %2071 = load i64, i64* %3, align 8
  %2072 = add i64 %2071, 17
  store i64 %2072, i64* %3, align 8
  br label %block_.L_40281e

block_.L_402812:                                  ; preds = %block_.L_4027ed
  %2073 = add i64 %2033, -64
  %2074 = add i64 %2032, 3
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i32*
  %2076 = load i32, i32* %2075, align 4
  %2077 = zext i32 %2076 to i64
  store i64 %2077, i64* %RAX.i1321, align 8
  %2078 = add i64 %2033, -56
  %2079 = add i64 %2032, 6
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2078 to i32*
  %2081 = load i32, i32* %2080, align 4
  %2082 = sub i32 %2076, %2081
  %2083 = zext i32 %2082 to i64
  store i64 %2083, i64* %RAX.i1321, align 8
  %2084 = icmp ult i32 %2076, %2081
  %2085 = zext i1 %2084 to i8
  store i8 %2085, i8* %14, align 1
  %2086 = and i32 %2082, 255
  %2087 = tail call i32 @llvm.ctpop.i32(i32 %2086)
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  %2090 = xor i8 %2089, 1
  store i8 %2090, i8* %21, align 1
  %2091 = xor i32 %2081, %2076
  %2092 = xor i32 %2091, %2082
  %2093 = lshr i32 %2092, 4
  %2094 = trunc i32 %2093 to i8
  %2095 = and i8 %2094, 1
  store i8 %2095, i8* %27, align 1
  %2096 = icmp eq i32 %2082, 0
  %2097 = zext i1 %2096 to i8
  store i8 %2097, i8* %30, align 1
  %2098 = lshr i32 %2082, 31
  %2099 = trunc i32 %2098 to i8
  store i8 %2099, i8* %33, align 1
  %2100 = lshr i32 %2076, 31
  %2101 = lshr i32 %2081, 31
  %2102 = xor i32 %2101, %2100
  %2103 = xor i32 %2098, %2100
  %2104 = add nuw nsw i32 %2103, %2102
  %2105 = icmp eq i32 %2104, 2
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %39, align 1
  %2107 = add i64 %2033, -1396
  %2108 = add i64 %2032, 12
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i32*
  store i32 %2082, i32* %2109, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_40281e

block_.L_40281e:                                  ; preds = %block_.L_402812, %block_402801
  %2110 = phi i64 [ %.pre130, %block_.L_402812 ], [ %2072, %block_402801 ]
  %2111 = load i64, i64* %RBP.i, align 8
  %2112 = add i64 %2111, -1396
  %2113 = add i64 %2110, 6
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i32*
  %2115 = load i32, i32* %2114, align 4
  %2116 = zext i32 %2115 to i64
  store i64 %2116, i64* %RAX.i1321, align 8
  %2117 = add i64 %2111, -72
  %2118 = add i64 %2110, 9
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2117 to i32*
  store i32 %2115, i32* %2119, align 4
  %2120 = load i64, i64* %RBP.i, align 8
  %2121 = add i64 %2120, -52
  %2122 = load i64, i64* %3, align 8
  %2123 = add i64 %2122, 3
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2121 to i32*
  %2125 = load i32, i32* %2124, align 4
  %2126 = zext i32 %2125 to i64
  store i64 %2126, i64* %RAX.i1321, align 8
  %2127 = add i64 %2120, -1364
  %2128 = add i64 %2122, 9
  store i64 %2128, i64* %3, align 8
  %2129 = inttoptr i64 %2127 to i32*
  store i32 %2125, i32* %2129, align 4
  %2130 = load i64, i64* %RBP.i, align 8
  %2131 = add i64 %2130, -88
  %2132 = load i64, i64* %3, align 8
  %2133 = add i64 %2132, 3
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2131 to i32*
  %2135 = load i32, i32* %2134, align 4
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RAX.i1321, align 8
  %2137 = add i64 %2130, -72
  %2138 = add i64 %2132, 6
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = sub i32 %2135, %2140
  %2142 = lshr i32 %2141, 31
  %2143 = add i32 %2141, 1
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RAX.i1321, align 8
  %2145 = icmp eq i32 %2141, -1
  %2146 = icmp eq i32 %2143, 0
  %2147 = or i1 %2145, %2146
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %14, align 1
  %2149 = and i32 %2143, 255
  %2150 = tail call i32 @llvm.ctpop.i32(i32 %2149)
  %2151 = trunc i32 %2150 to i8
  %2152 = and i8 %2151, 1
  %2153 = xor i8 %2152, 1
  store i8 %2153, i8* %21, align 1
  %2154 = xor i32 %2143, %2141
  %2155 = lshr i32 %2154, 4
  %2156 = trunc i32 %2155 to i8
  %2157 = and i8 %2156, 1
  store i8 %2157, i8* %27, align 1
  %2158 = zext i1 %2146 to i8
  store i8 %2158, i8* %30, align 1
  %2159 = lshr i32 %2143, 31
  %2160 = trunc i32 %2159 to i8
  store i8 %2160, i8* %33, align 1
  %2161 = xor i32 %2159, %2142
  %2162 = add nuw nsw i32 %2161, %2159
  %2163 = icmp eq i32 %2162, 2
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %39, align 1
  %2165 = add i64 %2130, -1368
  %2166 = add i64 %2132, 15
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i32*
  store i32 %2143, i32* %2167, align 4
  %2168 = load i64, i64* %RBP.i, align 8
  %2169 = add i64 %2168, -72
  %2170 = load i64, i64* %3, align 8
  %2171 = add i64 %2170, 3
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2169 to i32*
  %2173 = load i32, i32* %2172, align 4
  %2174 = zext i32 %2173 to i64
  store i64 %2174, i64* %RAX.i1321, align 8
  %2175 = add i64 %2168, -1372
  %2176 = add i64 %2170, 9
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to i32*
  store i32 %2173, i32* %2177, align 4
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_402848

block_.L_402848:                                  ; preds = %block_402855, %block_.L_40281e
  %2178 = phi i64 [ %2354, %block_402855 ], [ %.pre131, %block_.L_40281e ]
  %2179 = load i64, i64* %RBP.i, align 8
  %2180 = add i64 %2179, -1372
  %2181 = add i64 %2178, 7
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i32*
  %2183 = load i32, i32* %2182, align 4
  store i8 0, i8* %14, align 1
  %2184 = and i32 %2183, 255
  %2185 = tail call i32 @llvm.ctpop.i32(i32 %2184)
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  %2188 = xor i8 %2187, 1
  store i8 %2188, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2189 = icmp eq i32 %2183, 0
  %2190 = zext i1 %2189 to i8
  store i8 %2190, i8* %30, align 1
  %2191 = lshr i32 %2183, 31
  %2192 = trunc i32 %2191 to i8
  store i8 %2192, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2193 = icmp ne i8 %2192, 0
  %2194 = or i1 %2189, %2193
  %.v149 = select i1 %2194, i64 131, i64 13
  %2195 = add i64 %2178, %.v149
  store i64 %2195, i64* %3, align 8
  br i1 %2194, label %block_.L_4028cb, label %block_402855

block_402855:                                     ; preds = %block_.L_402848
  %2196 = add i64 %2179, -8
  %2197 = add i64 %2195, 4
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i64*
  %2199 = load i64, i64* %2198, align 8
  store i64 %2199, i64* %RAX.i1321, align 8
  %2200 = add i64 %2179, -1364
  %2201 = add i64 %2195, 11
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2200 to i32*
  %2203 = load i32, i32* %2202, align 4
  %2204 = sext i32 %2203 to i64
  store i64 %2204, i64* %RCX.i1290, align 8
  %2205 = shl nsw i64 %2204, 2
  %2206 = add i64 %2205, %2199
  %2207 = add i64 %2195, 14
  store i64 %2207, i64* %3, align 8
  %2208 = inttoptr i64 %2206 to i32*
  %2209 = load i32, i32* %2208, align 4
  %2210 = zext i32 %2209 to i64
  store i64 %2210, i64* %RDX.i1309, align 8
  %2211 = add i64 %2179, -1376
  %2212 = add i64 %2195, 20
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2211 to i32*
  store i32 %2209, i32* %2213, align 4
  %2214 = load i64, i64* %RBP.i, align 8
  %2215 = add i64 %2214, -8
  %2216 = load i64, i64* %3, align 8
  %2217 = add i64 %2216, 4
  store i64 %2217, i64* %3, align 8
  %2218 = inttoptr i64 %2215 to i64*
  %2219 = load i64, i64* %2218, align 8
  store i64 %2219, i64* %RAX.i1321, align 8
  %2220 = add i64 %2214, -1368
  %2221 = add i64 %2216, 11
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i32*
  %2223 = load i32, i32* %2222, align 4
  %2224 = sext i32 %2223 to i64
  store i64 %2224, i64* %RCX.i1290, align 8
  %2225 = shl nsw i64 %2224, 2
  %2226 = add i64 %2225, %2219
  %2227 = add i64 %2216, 14
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2226 to i32*
  %2229 = load i32, i32* %2228, align 4
  %2230 = zext i32 %2229 to i64
  store i64 %2230, i64* %RDX.i1309, align 8
  %2231 = add i64 %2216, 18
  store i64 %2231, i64* %3, align 8
  %2232 = load i64, i64* %2218, align 8
  store i64 %2232, i64* %RAX.i1321, align 8
  %2233 = add i64 %2214, -1364
  %2234 = add i64 %2216, 25
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i32*
  %2236 = load i32, i32* %2235, align 4
  %2237 = sext i32 %2236 to i64
  store i64 %2237, i64* %RCX.i1290, align 8
  %2238 = shl nsw i64 %2237, 2
  %2239 = add i64 %2238, %2232
  %2240 = add i64 %2216, 28
  store i64 %2240, i64* %3, align 8
  %2241 = inttoptr i64 %2239 to i32*
  store i32 %2229, i32* %2241, align 4
  %2242 = load i64, i64* %RBP.i, align 8
  %2243 = add i64 %2242, -1376
  %2244 = load i64, i64* %3, align 8
  %2245 = add i64 %2244, 6
  store i64 %2245, i64* %3, align 8
  %2246 = inttoptr i64 %2243 to i32*
  %2247 = load i32, i32* %2246, align 4
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RDX.i1309, align 8
  %2249 = add i64 %2242, -8
  %2250 = add i64 %2244, 10
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i64*
  %2252 = load i64, i64* %2251, align 8
  store i64 %2252, i64* %RAX.i1321, align 8
  %2253 = add i64 %2242, -1368
  %2254 = add i64 %2244, 17
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i32*
  %2256 = load i32, i32* %2255, align 4
  %2257 = sext i32 %2256 to i64
  store i64 %2257, i64* %RCX.i1290, align 8
  %2258 = shl nsw i64 %2257, 2
  %2259 = add i64 %2258, %2252
  %2260 = add i64 %2244, 20
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i32*
  store i32 %2247, i32* %2261, align 4
  %2262 = load i64, i64* %RBP.i, align 8
  %2263 = add i64 %2262, -1364
  %2264 = load i64, i64* %3, align 8
  %2265 = add i64 %2264, 6
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2263 to i32*
  %2267 = load i32, i32* %2266, align 4
  %2268 = add i32 %2267, 1
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RDX.i1309, align 8
  %2270 = icmp eq i32 %2267, -1
  %2271 = icmp eq i32 %2268, 0
  %2272 = or i1 %2270, %2271
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %14, align 1
  %2274 = and i32 %2268, 255
  %2275 = tail call i32 @llvm.ctpop.i32(i32 %2274)
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  %2278 = xor i8 %2277, 1
  store i8 %2278, i8* %21, align 1
  %2279 = xor i32 %2268, %2267
  %2280 = lshr i32 %2279, 4
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  store i8 %2282, i8* %27, align 1
  %2283 = zext i1 %2271 to i8
  store i8 %2283, i8* %30, align 1
  %2284 = lshr i32 %2268, 31
  %2285 = trunc i32 %2284 to i8
  store i8 %2285, i8* %33, align 1
  %2286 = lshr i32 %2267, 31
  %2287 = xor i32 %2284, %2286
  %2288 = add nuw nsw i32 %2287, %2284
  %2289 = icmp eq i32 %2288, 2
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %39, align 1
  %2291 = add i64 %2264, 15
  store i64 %2291, i64* %3, align 8
  store i32 %2268, i32* %2266, align 4
  %2292 = load i64, i64* %RBP.i, align 8
  %2293 = add i64 %2292, -1368
  %2294 = load i64, i64* %3, align 8
  %2295 = add i64 %2294, 6
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2293 to i32*
  %2297 = load i32, i32* %2296, align 4
  %2298 = add i32 %2297, 1
  %2299 = zext i32 %2298 to i64
  store i64 %2299, i64* %RDX.i1309, align 8
  %2300 = icmp eq i32 %2297, -1
  %2301 = icmp eq i32 %2298, 0
  %2302 = or i1 %2300, %2301
  %2303 = zext i1 %2302 to i8
  store i8 %2303, i8* %14, align 1
  %2304 = and i32 %2298, 255
  %2305 = tail call i32 @llvm.ctpop.i32(i32 %2304)
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  %2308 = xor i8 %2307, 1
  store i8 %2308, i8* %21, align 1
  %2309 = xor i32 %2298, %2297
  %2310 = lshr i32 %2309, 4
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  store i8 %2312, i8* %27, align 1
  %2313 = zext i1 %2301 to i8
  store i8 %2313, i8* %30, align 1
  %2314 = lshr i32 %2298, 31
  %2315 = trunc i32 %2314 to i8
  store i8 %2315, i8* %33, align 1
  %2316 = lshr i32 %2297, 31
  %2317 = xor i32 %2314, %2316
  %2318 = add nuw nsw i32 %2317, %2314
  %2319 = icmp eq i32 %2318, 2
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %39, align 1
  %2321 = add i64 %2294, 15
  store i64 %2321, i64* %3, align 8
  store i32 %2298, i32* %2296, align 4
  %2322 = load i64, i64* %RBP.i, align 8
  %2323 = add i64 %2322, -1372
  %2324 = load i64, i64* %3, align 8
  %2325 = add i64 %2324, 6
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2323 to i32*
  %2327 = load i32, i32* %2326, align 4
  %2328 = add i32 %2327, -1
  %2329 = zext i32 %2328 to i64
  store i64 %2329, i64* %RDX.i1309, align 8
  %2330 = icmp ne i32 %2327, 0
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %14, align 1
  %2332 = and i32 %2328, 255
  %2333 = tail call i32 @llvm.ctpop.i32(i32 %2332)
  %2334 = trunc i32 %2333 to i8
  %2335 = and i8 %2334, 1
  %2336 = xor i8 %2335, 1
  store i8 %2336, i8* %21, align 1
  %2337 = xor i32 %2327, 16
  %2338 = xor i32 %2337, %2328
  %2339 = lshr i32 %2338, 4
  %2340 = trunc i32 %2339 to i8
  %2341 = and i8 %2340, 1
  store i8 %2341, i8* %27, align 1
  %2342 = icmp eq i32 %2328, 0
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %30, align 1
  %2344 = lshr i32 %2328, 31
  %2345 = trunc i32 %2344 to i8
  store i8 %2345, i8* %33, align 1
  %2346 = lshr i32 %2327, 31
  %2347 = xor i32 %2344, %2346
  %2348 = xor i32 %2344, 1
  %2349 = add nuw nsw i32 %2347, %2348
  %2350 = icmp eq i32 %2349, 2
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %39, align 1
  %2352 = add i64 %2324, 15
  store i64 %2352, i64* %3, align 8
  store i32 %2328, i32* %2326, align 4
  %2353 = load i64, i64* %3, align 8
  %2354 = add i64 %2353, -126
  store i64 %2354, i64* %3, align 8
  br label %block_.L_402848

block_.L_4028cb:                                  ; preds = %block_.L_402848
  %2355 = add i64 %2179, -84
  %2356 = add i64 %2195, 3
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  %2358 = load i32, i32* %2357, align 4
  %2359 = zext i32 %2358 to i64
  store i64 %2359, i64* %RAX.i1321, align 8
  %2360 = add i64 %2179, -52
  %2361 = add i64 %2195, 6
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i32*
  %2363 = load i32, i32* %2362, align 4
  %2364 = add i32 %2363, %2358
  %2365 = zext i32 %2364 to i64
  store i64 %2365, i64* %RAX.i1321, align 8
  %2366 = icmp ult i32 %2364, %2358
  %2367 = icmp ult i32 %2364, %2363
  %2368 = or i1 %2366, %2367
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %14, align 1
  %2370 = and i32 %2364, 255
  %2371 = tail call i32 @llvm.ctpop.i32(i32 %2370)
  %2372 = trunc i32 %2371 to i8
  %2373 = and i8 %2372, 1
  %2374 = xor i8 %2373, 1
  store i8 %2374, i8* %21, align 1
  %2375 = xor i32 %2363, %2358
  %2376 = xor i32 %2375, %2364
  %2377 = lshr i32 %2376, 4
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  store i8 %2379, i8* %27, align 1
  %2380 = icmp eq i32 %2364, 0
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %30, align 1
  %2382 = lshr i32 %2364, 31
  %2383 = trunc i32 %2382 to i8
  store i8 %2383, i8* %33, align 1
  %2384 = lshr i32 %2358, 31
  %2385 = lshr i32 %2363, 31
  %2386 = xor i32 %2382, %2384
  %2387 = xor i32 %2382, %2385
  %2388 = add nuw nsw i32 %2386, %2387
  %2389 = icmp eq i32 %2388, 2
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %39, align 1
  %2391 = add i64 %2179, -60
  %2392 = add i64 %2195, 9
  store i64 %2392, i64* %3, align 8
  %2393 = inttoptr i64 %2391 to i32*
  %2394 = load i32, i32* %2393, align 4
  %2395 = sub i32 %2364, %2394
  %2396 = icmp eq i32 %2395, 0
  %2397 = zext i1 %2396 to i8
  %2398 = lshr i32 %2395, 31
  %2399 = add i32 %2395, -1
  %2400 = zext i32 %2399 to i64
  store i64 %2400, i64* %RAX.i1321, align 8
  store i8 %2397, i8* %14, align 1
  %2401 = and i32 %2399, 255
  %2402 = tail call i32 @llvm.ctpop.i32(i32 %2401)
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  %2405 = xor i8 %2404, 1
  store i8 %2405, i8* %21, align 1
  %2406 = xor i32 %2399, %2395
  %2407 = lshr i32 %2406, 4
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  store i8 %2409, i8* %27, align 1
  %2410 = icmp eq i32 %2399, 0
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %30, align 1
  %2412 = lshr i32 %2399, 31
  %2413 = trunc i32 %2412 to i8
  store i8 %2413, i8* %33, align 1
  %2414 = xor i32 %2412, %2398
  %2415 = add nuw nsw i32 %2414, %2398
  %2416 = icmp eq i32 %2415, 2
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %39, align 1
  %2418 = load i64, i64* %RBP.i, align 8
  %2419 = add i64 %2418, -68
  %2420 = add i64 %2195, 15
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i32*
  store i32 %2399, i32* %2421, align 4
  %2422 = load i64, i64* %RBP.i, align 8
  %2423 = add i64 %2422, -88
  %2424 = load i64, i64* %3, align 8
  %2425 = add i64 %2424, 3
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2423 to i32*
  %2427 = load i32, i32* %2426, align 4
  %2428 = zext i32 %2427 to i64
  store i64 %2428, i64* %RAX.i1321, align 8
  %2429 = add i64 %2422, -64
  %2430 = add i64 %2424, 6
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2429 to i32*
  %2432 = load i32, i32* %2431, align 4
  %2433 = zext i32 %2432 to i64
  store i64 %2433, i64* %RCX.i1290, align 8
  %2434 = add i64 %2422, -56
  %2435 = add i64 %2424, 9
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i32*
  %2437 = load i32, i32* %2436, align 4
  %2438 = sub i32 %2432, %2437
  %2439 = zext i32 %2438 to i64
  store i64 %2439, i64* %RCX.i1290, align 8
  %2440 = sub i32 %2427, %2438
  %2441 = lshr i32 %2440, 31
  %2442 = add i32 %2440, 1
  %2443 = zext i32 %2442 to i64
  store i64 %2443, i64* %RAX.i1321, align 8
  %2444 = icmp eq i32 %2440, -1
  %2445 = icmp eq i32 %2442, 0
  %2446 = or i1 %2444, %2445
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %14, align 1
  %2448 = and i32 %2442, 255
  %2449 = tail call i32 @llvm.ctpop.i32(i32 %2448)
  %2450 = trunc i32 %2449 to i8
  %2451 = and i8 %2450, 1
  %2452 = xor i8 %2451, 1
  store i8 %2452, i8* %21, align 1
  %2453 = xor i32 %2442, %2440
  %2454 = lshr i32 %2453, 4
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  store i8 %2456, i8* %27, align 1
  %2457 = zext i1 %2445 to i8
  store i8 %2457, i8* %30, align 1
  %2458 = lshr i32 %2442, 31
  %2459 = trunc i32 %2458 to i8
  store i8 %2459, i8* %33, align 1
  %2460 = xor i32 %2458, %2441
  %2461 = add nuw nsw i32 %2460, %2458
  %2462 = icmp eq i32 %2461, 2
  %2463 = zext i1 %2462 to i8
  store i8 %2463, i8* %39, align 1
  %2464 = load i64, i64* %RBP.i, align 8
  %2465 = add i64 %2464, -72
  %2466 = add i64 %2424, 17
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i32*
  store i32 %2442, i32* %2467, align 4
  %2468 = load i64, i64* %RBP.i, align 8
  %2469 = add i64 %2468, -84
  %2470 = load i64, i64* %3, align 8
  %2471 = add i64 %2470, 3
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2469 to i32*
  %2473 = load i32, i32* %2472, align 4
  %2474 = zext i32 %2473 to i64
  store i64 %2474, i64* %RAX.i1321, align 8
  %2475 = add i64 %2468, -1308
  %2476 = add i64 %2470, 9
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i32*
  store i32 %2473, i32* %2477, align 4
  %2478 = load i64, i64* %RBP.i, align 8
  %2479 = add i64 %2478, -68
  %2480 = load i64, i64* %3, align 8
  %2481 = add i64 %2480, 3
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2479 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %RAX.i1321, align 8
  %2485 = add i64 %2478, -1320
  %2486 = add i64 %2480, 9
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  store i32 %2483, i32* %2487, align 4
  %2488 = load i64, i64* %RBP.i, align 8
  %2489 = add i64 %2488, -92
  %2490 = load i64, i64* %3, align 8
  %2491 = add i64 %2490, 3
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2489 to i32*
  %2493 = load i32, i32* %2492, align 4
  %2494 = zext i32 %2493 to i64
  store i64 %2494, i64* %RAX.i1321, align 8
  %2495 = add i64 %2488, -1332
  %2496 = add i64 %2490, 9
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i32*
  store i32 %2493, i32* %2497, align 4
  %2498 = load i64, i64* %RBP.i, align 8
  %2499 = add i64 %2498, -72
  %2500 = load i64, i64* %3, align 8
  %2501 = add i64 %2500, 3
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2499 to i32*
  %2503 = load i32, i32* %2502, align 4
  %2504 = zext i32 %2503 to i64
  store i64 %2504, i64* %RAX.i1321, align 8
  %2505 = add i64 %2498, -1304
  %2506 = add i64 %2500, 9
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i32*
  store i32 %2503, i32* %2507, align 4
  %2508 = load i64, i64* %RBP.i, align 8
  %2509 = add i64 %2508, -88
  %2510 = load i64, i64* %3, align 8
  %2511 = add i64 %2510, 3
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2509 to i32*
  %2513 = load i32, i32* %2512, align 4
  %2514 = zext i32 %2513 to i64
  store i64 %2514, i64* %RAX.i1321, align 8
  %2515 = add i64 %2508, -1316
  %2516 = add i64 %2510, 9
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  store i32 %2513, i32* %2517, align 4
  %2518 = load i64, i64* %RBP.i, align 8
  %2519 = add i64 %2518, -92
  %2520 = load i64, i64* %3, align 8
  %2521 = add i64 %2520, 3
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2519 to i32*
  %2523 = load i32, i32* %2522, align 4
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RAX.i1321, align 8
  %2525 = add i64 %2518, -1328
  %2526 = add i64 %2520, 9
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i32*
  store i32 %2523, i32* %2527, align 4
  %2528 = load i64, i64* %RBP.i, align 8
  %2529 = add i64 %2528, -68
  %2530 = load i64, i64* %3, align 8
  %2531 = add i64 %2530, 3
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2529 to i32*
  %2533 = load i32, i32* %2532, align 4
  %2534 = add i32 %2533, 1
  %2535 = zext i32 %2534 to i64
  store i64 %2535, i64* %RAX.i1321, align 8
  %2536 = icmp eq i32 %2533, -1
  %2537 = icmp eq i32 %2534, 0
  %2538 = or i1 %2536, %2537
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %14, align 1
  %2540 = and i32 %2534, 255
  %2541 = tail call i32 @llvm.ctpop.i32(i32 %2540)
  %2542 = trunc i32 %2541 to i8
  %2543 = and i8 %2542, 1
  %2544 = xor i8 %2543, 1
  store i8 %2544, i8* %21, align 1
  %2545 = xor i32 %2534, %2533
  %2546 = lshr i32 %2545, 4
  %2547 = trunc i32 %2546 to i8
  %2548 = and i8 %2547, 1
  store i8 %2548, i8* %27, align 1
  %2549 = zext i1 %2537 to i8
  store i8 %2549, i8* %30, align 1
  %2550 = lshr i32 %2534, 31
  %2551 = trunc i32 %2550 to i8
  store i8 %2551, i8* %33, align 1
  %2552 = lshr i32 %2533, 31
  %2553 = xor i32 %2550, %2552
  %2554 = add nuw nsw i32 %2553, %2550
  %2555 = icmp eq i32 %2554, 2
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %39, align 1
  %2557 = add i64 %2528, -1300
  %2558 = add i64 %2530, 12
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2557 to i32*
  store i32 %2534, i32* %2559, align 4
  %2560 = load i64, i64* %RBP.i, align 8
  %2561 = add i64 %2560, -72
  %2562 = load i64, i64* %3, align 8
  %2563 = add i64 %2562, 3
  store i64 %2563, i64* %3, align 8
  %2564 = inttoptr i64 %2561 to i32*
  %2565 = load i32, i32* %2564, align 4
  %2566 = add i32 %2565, -1
  %2567 = zext i32 %2566 to i64
  store i64 %2567, i64* %RAX.i1321, align 8
  %2568 = icmp eq i32 %2565, 0
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %14, align 1
  %2570 = and i32 %2566, 255
  %2571 = tail call i32 @llvm.ctpop.i32(i32 %2570)
  %2572 = trunc i32 %2571 to i8
  %2573 = and i8 %2572, 1
  %2574 = xor i8 %2573, 1
  store i8 %2574, i8* %21, align 1
  %2575 = xor i32 %2566, %2565
  %2576 = lshr i32 %2575, 4
  %2577 = trunc i32 %2576 to i8
  %2578 = and i8 %2577, 1
  store i8 %2578, i8* %27, align 1
  %2579 = icmp eq i32 %2566, 0
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %30, align 1
  %2581 = lshr i32 %2566, 31
  %2582 = trunc i32 %2581 to i8
  store i8 %2582, i8* %33, align 1
  %2583 = lshr i32 %2565, 31
  %2584 = xor i32 %2581, %2583
  %2585 = add nuw nsw i32 %2584, %2583
  %2586 = icmp eq i32 %2585, 2
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %39, align 1
  %2588 = add i64 %2560, -1312
  %2589 = add i64 %2562, 12
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2588 to i32*
  store i32 %2566, i32* %2590, align 4
  %2591 = load i64, i64* %RBP.i, align 8
  %2592 = add i64 %2591, -92
  %2593 = load i64, i64* %3, align 8
  %2594 = add i64 %2593, 3
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2592 to i32*
  %2596 = load i32, i32* %2595, align 4
  %2597 = add i32 %2596, 1
  %2598 = zext i32 %2597 to i64
  store i64 %2598, i64* %RAX.i1321, align 8
  %2599 = icmp eq i32 %2596, -1
  %2600 = icmp eq i32 %2597, 0
  %2601 = or i1 %2599, %2600
  %2602 = zext i1 %2601 to i8
  store i8 %2602, i8* %14, align 1
  %2603 = and i32 %2597, 255
  %2604 = tail call i32 @llvm.ctpop.i32(i32 %2603)
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = xor i8 %2606, 1
  store i8 %2607, i8* %21, align 1
  %2608 = xor i32 %2597, %2596
  %2609 = lshr i32 %2608, 4
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  store i8 %2611, i8* %27, align 1
  %2612 = zext i1 %2600 to i8
  store i8 %2612, i8* %30, align 1
  %2613 = lshr i32 %2597, 31
  %2614 = trunc i32 %2613 to i8
  store i8 %2614, i8* %33, align 1
  %2615 = lshr i32 %2596, 31
  %2616 = xor i32 %2613, %2615
  %2617 = add nuw nsw i32 %2616, %2613
  %2618 = icmp eq i32 %2617, 2
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %39, align 1
  %2620 = add i64 %2591, -1324
  %2621 = add i64 %2593, 12
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2620 to i32*
  store i32 %2597, i32* %2622, align 4
  %2623 = load i64, i64* %RBP.i, align 8
  %2624 = add i64 %2623, -1320
  %2625 = load i64, i64* %3, align 8
  %2626 = add i64 %2625, 6
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2624 to i32*
  %2628 = load i32, i32* %2627, align 4
  %2629 = zext i32 %2628 to i64
  store i64 %2629, i64* %RAX.i1321, align 8
  %2630 = add i64 %2623, -1308
  %2631 = add i64 %2625, 12
  store i64 %2631, i64* %3, align 8
  %2632 = inttoptr i64 %2630 to i32*
  %2633 = load i32, i32* %2632, align 4
  %2634 = sub i32 %2628, %2633
  %2635 = zext i32 %2634 to i64
  store i64 %2635, i64* %RAX.i1321, align 8
  %2636 = icmp ult i32 %2628, %2633
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %14, align 1
  %2638 = and i32 %2634, 255
  %2639 = tail call i32 @llvm.ctpop.i32(i32 %2638)
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  %2642 = xor i8 %2641, 1
  store i8 %2642, i8* %21, align 1
  %2643 = xor i32 %2633, %2628
  %2644 = xor i32 %2643, %2634
  %2645 = lshr i32 %2644, 4
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  store i8 %2647, i8* %27, align 1
  %2648 = icmp eq i32 %2634, 0
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %30, align 1
  %2650 = lshr i32 %2634, 31
  %2651 = trunc i32 %2650 to i8
  store i8 %2651, i8* %33, align 1
  %2652 = lshr i32 %2628, 31
  %2653 = lshr i32 %2633, 31
  %2654 = xor i32 %2653, %2652
  %2655 = xor i32 %2650, %2652
  %2656 = add nuw nsw i32 %2655, %2654
  %2657 = icmp eq i32 %2656, 2
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %39, align 1
  %2659 = add i64 %2623, -1316
  %2660 = add i64 %2625, 18
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = zext i32 %2662 to i64
  store i64 %2663, i64* %RCX.i1290, align 8
  %2664 = add i64 %2623, -1304
  %2665 = add i64 %2625, 24
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to i32*
  %2667 = load i32, i32* %2666, align 4
  %2668 = sub i32 %2662, %2667
  %2669 = zext i32 %2668 to i64
  store i64 %2669, i64* %RCX.i1290, align 8
  %2670 = lshr i32 %2668, 31
  %2671 = sub i32 %2634, %2668
  %2672 = icmp ult i32 %2634, %2668
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %14, align 1
  %2674 = and i32 %2671, 255
  %2675 = tail call i32 @llvm.ctpop.i32(i32 %2674)
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  store i8 %2678, i8* %21, align 1
  %2679 = xor i32 %2668, %2634
  %2680 = xor i32 %2679, %2671
  %2681 = lshr i32 %2680, 4
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  store i8 %2683, i8* %27, align 1
  %2684 = icmp eq i32 %2671, 0
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %30, align 1
  %2686 = lshr i32 %2671, 31
  %2687 = trunc i32 %2686 to i8
  store i8 %2687, i8* %33, align 1
  %2688 = xor i32 %2670, %2650
  %2689 = xor i32 %2686, %2650
  %2690 = add nuw nsw i32 %2689, %2688
  %2691 = icmp eq i32 %2690, 2
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %39, align 1
  %2693 = icmp ne i8 %2687, 0
  %2694 = xor i1 %2693, %2691
  %.v150 = select i1 %2694, i64 32, i64 140
  %2695 = add i64 %2625, %.v150
  store i64 %2695, i64* %3, align 8
  br i1 %2694, label %block_402965, label %block_.L_4029d1

block_402965:                                     ; preds = %block_.L_4028cb
  %2696 = load i64, i64* %RBP.i, align 8
  %2697 = add i64 %2696, -1308
  %2698 = add i64 %2695, 6
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i32*
  %2700 = load i32, i32* %2699, align 4
  %2701 = zext i32 %2700 to i64
  store i64 %2701, i64* %RAX.i1321, align 8
  %2702 = add i64 %2696, -1380
  %2703 = add i64 %2695, 12
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2702 to i32*
  store i32 %2700, i32* %2704, align 4
  %2705 = load i64, i64* %RBP.i, align 8
  %2706 = add i64 %2705, -1304
  %2707 = load i64, i64* %3, align 8
  %2708 = add i64 %2707, 6
  store i64 %2708, i64* %3, align 8
  %2709 = inttoptr i64 %2706 to i32*
  %2710 = load i32, i32* %2709, align 4
  %2711 = zext i32 %2710 to i64
  store i64 %2711, i64* %RAX.i1321, align 8
  %2712 = add i64 %2705, -1308
  %2713 = add i64 %2707, 12
  store i64 %2713, i64* %3, align 8
  %2714 = inttoptr i64 %2712 to i32*
  store i32 %2710, i32* %2714, align 4
  %2715 = load i64, i64* %RBP.i, align 8
  %2716 = add i64 %2715, -1380
  %2717 = load i64, i64* %3, align 8
  %2718 = add i64 %2717, 6
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2716 to i32*
  %2720 = load i32, i32* %2719, align 4
  %2721 = zext i32 %2720 to i64
  store i64 %2721, i64* %RAX.i1321, align 8
  %2722 = add i64 %2715, -1304
  %2723 = add i64 %2717, 12
  store i64 %2723, i64* %3, align 8
  %2724 = inttoptr i64 %2722 to i32*
  store i32 %2720, i32* %2724, align 4
  %2725 = load i64, i64* %RBP.i, align 8
  %2726 = add i64 %2725, -1320
  %2727 = load i64, i64* %3, align 8
  %2728 = add i64 %2727, 6
  store i64 %2728, i64* %3, align 8
  %2729 = inttoptr i64 %2726 to i32*
  %2730 = load i32, i32* %2729, align 4
  %2731 = zext i32 %2730 to i64
  store i64 %2731, i64* %RAX.i1321, align 8
  %2732 = add i64 %2725, -1380
  %2733 = add i64 %2727, 12
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i32*
  store i32 %2730, i32* %2734, align 4
  %2735 = load i64, i64* %RBP.i, align 8
  %2736 = add i64 %2735, -1316
  %2737 = load i64, i64* %3, align 8
  %2738 = add i64 %2737, 6
  store i64 %2738, i64* %3, align 8
  %2739 = inttoptr i64 %2736 to i32*
  %2740 = load i32, i32* %2739, align 4
  %2741 = zext i32 %2740 to i64
  store i64 %2741, i64* %RAX.i1321, align 8
  %2742 = add i64 %2735, -1320
  %2743 = add i64 %2737, 12
  store i64 %2743, i64* %3, align 8
  %2744 = inttoptr i64 %2742 to i32*
  store i32 %2740, i32* %2744, align 4
  %2745 = load i64, i64* %RBP.i, align 8
  %2746 = add i64 %2745, -1380
  %2747 = load i64, i64* %3, align 8
  %2748 = add i64 %2747, 6
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2746 to i32*
  %2750 = load i32, i32* %2749, align 4
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %RAX.i1321, align 8
  %2752 = add i64 %2745, -1316
  %2753 = add i64 %2747, 12
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2752 to i32*
  store i32 %2750, i32* %2754, align 4
  %2755 = load i64, i64* %RBP.i, align 8
  %2756 = add i64 %2755, -1332
  %2757 = load i64, i64* %3, align 8
  %2758 = add i64 %2757, 6
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2756 to i32*
  %2760 = load i32, i32* %2759, align 4
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RAX.i1321, align 8
  %2762 = add i64 %2755, -1380
  %2763 = add i64 %2757, 12
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i32*
  store i32 %2760, i32* %2764, align 4
  %2765 = load i64, i64* %RBP.i, align 8
  %2766 = add i64 %2765, -1328
  %2767 = load i64, i64* %3, align 8
  %2768 = add i64 %2767, 6
  store i64 %2768, i64* %3, align 8
  %2769 = inttoptr i64 %2766 to i32*
  %2770 = load i32, i32* %2769, align 4
  %2771 = zext i32 %2770 to i64
  store i64 %2771, i64* %RAX.i1321, align 8
  %2772 = add i64 %2765, -1332
  %2773 = add i64 %2767, 12
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2772 to i32*
  store i32 %2770, i32* %2774, align 4
  %2775 = load i64, i64* %RBP.i, align 8
  %2776 = add i64 %2775, -1380
  %2777 = load i64, i64* %3, align 8
  %2778 = add i64 %2777, 6
  store i64 %2778, i64* %3, align 8
  %2779 = inttoptr i64 %2776 to i32*
  %2780 = load i32, i32* %2779, align 4
  %2781 = zext i32 %2780 to i64
  store i64 %2781, i64* %RAX.i1321, align 8
  %2782 = add i64 %2775, -1328
  %2783 = add i64 %2777, 12
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2782 to i32*
  store i32 %2780, i32* %2784, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_4029d1

block_.L_4029d1:                                  ; preds = %block_.L_4028cb, %block_402965
  %2785 = phi i64 [ %2695, %block_.L_4028cb ], [ %.pre132, %block_402965 ]
  %2786 = load i64, i64* %RBP.i, align 8
  %2787 = add i64 %2786, -1316
  %2788 = add i64 %2785, 6
  store i64 %2788, i64* %3, align 8
  %2789 = inttoptr i64 %2787 to i32*
  %2790 = load i32, i32* %2789, align 4
  %2791 = zext i32 %2790 to i64
  store i64 %2791, i64* %RAX.i1321, align 8
  %2792 = add i64 %2786, -1304
  %2793 = add i64 %2785, 12
  store i64 %2793, i64* %3, align 8
  %2794 = inttoptr i64 %2792 to i32*
  %2795 = load i32, i32* %2794, align 4
  %2796 = sub i32 %2790, %2795
  %2797 = zext i32 %2796 to i64
  store i64 %2797, i64* %RAX.i1321, align 8
  %2798 = icmp ult i32 %2790, %2795
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %14, align 1
  %2800 = and i32 %2796, 255
  %2801 = tail call i32 @llvm.ctpop.i32(i32 %2800)
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = xor i8 %2803, 1
  store i8 %2804, i8* %21, align 1
  %2805 = xor i32 %2795, %2790
  %2806 = xor i32 %2805, %2796
  %2807 = lshr i32 %2806, 4
  %2808 = trunc i32 %2807 to i8
  %2809 = and i8 %2808, 1
  store i8 %2809, i8* %27, align 1
  %2810 = icmp eq i32 %2796, 0
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %30, align 1
  %2812 = lshr i32 %2796, 31
  %2813 = trunc i32 %2812 to i8
  store i8 %2813, i8* %33, align 1
  %2814 = lshr i32 %2790, 31
  %2815 = lshr i32 %2795, 31
  %2816 = xor i32 %2815, %2814
  %2817 = xor i32 %2812, %2814
  %2818 = add nuw nsw i32 %2817, %2816
  %2819 = icmp eq i32 %2818, 2
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %39, align 1
  %2821 = add i64 %2786, -1312
  %2822 = add i64 %2785, 18
  store i64 %2822, i64* %3, align 8
  %2823 = inttoptr i64 %2821 to i32*
  %2824 = load i32, i32* %2823, align 4
  %2825 = zext i32 %2824 to i64
  store i64 %2825, i64* %RCX.i1290, align 8
  %2826 = add i64 %2786, -1300
  %2827 = add i64 %2785, 24
  store i64 %2827, i64* %3, align 8
  %2828 = inttoptr i64 %2826 to i32*
  %2829 = load i32, i32* %2828, align 4
  %2830 = sub i32 %2824, %2829
  %2831 = zext i32 %2830 to i64
  store i64 %2831, i64* %RCX.i1290, align 8
  %2832 = lshr i32 %2830, 31
  %2833 = sub i32 %2796, %2830
  %2834 = icmp ult i32 %2796, %2830
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %14, align 1
  %2836 = and i32 %2833, 255
  %2837 = tail call i32 @llvm.ctpop.i32(i32 %2836)
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = xor i8 %2839, 1
  store i8 %2840, i8* %21, align 1
  %2841 = xor i32 %2830, %2796
  %2842 = xor i32 %2841, %2833
  %2843 = lshr i32 %2842, 4
  %2844 = trunc i32 %2843 to i8
  %2845 = and i8 %2844, 1
  store i8 %2845, i8* %27, align 1
  %2846 = icmp eq i32 %2833, 0
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %30, align 1
  %2848 = lshr i32 %2833, 31
  %2849 = trunc i32 %2848 to i8
  store i8 %2849, i8* %33, align 1
  %2850 = xor i32 %2832, %2812
  %2851 = xor i32 %2848, %2812
  %2852 = add nuw nsw i32 %2851, %2850
  %2853 = icmp eq i32 %2852, 2
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %39, align 1
  %2855 = icmp ne i8 %2849, 0
  %2856 = xor i1 %2855, %2853
  %.v151 = select i1 %2856, i64 32, i64 140
  %2857 = add i64 %2785, %.v151
  store i64 %2857, i64* %3, align 8
  br i1 %2856, label %block_4029f1, label %block_.L_402a5d

block_4029f1:                                     ; preds = %block_.L_4029d1
  %2858 = load i64, i64* %RBP.i, align 8
  %2859 = add i64 %2858, -1304
  %2860 = add i64 %2857, 6
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = zext i32 %2862 to i64
  store i64 %2863, i64* %RAX.i1321, align 8
  %2864 = add i64 %2858, -1384
  %2865 = add i64 %2857, 12
  store i64 %2865, i64* %3, align 8
  %2866 = inttoptr i64 %2864 to i32*
  store i32 %2862, i32* %2866, align 4
  %2867 = load i64, i64* %RBP.i, align 8
  %2868 = add i64 %2867, -1300
  %2869 = load i64, i64* %3, align 8
  %2870 = add i64 %2869, 6
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2868 to i32*
  %2872 = load i32, i32* %2871, align 4
  %2873 = zext i32 %2872 to i64
  store i64 %2873, i64* %RAX.i1321, align 8
  %2874 = add i64 %2867, -1304
  %2875 = add i64 %2869, 12
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i32*
  store i32 %2872, i32* %2876, align 4
  %2877 = load i64, i64* %RBP.i, align 8
  %2878 = add i64 %2877, -1384
  %2879 = load i64, i64* %3, align 8
  %2880 = add i64 %2879, 6
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2878 to i32*
  %2882 = load i32, i32* %2881, align 4
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RAX.i1321, align 8
  %2884 = add i64 %2877, -1300
  %2885 = add i64 %2879, 12
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i32*
  store i32 %2882, i32* %2886, align 4
  %2887 = load i64, i64* %RBP.i, align 8
  %2888 = add i64 %2887, -1316
  %2889 = load i64, i64* %3, align 8
  %2890 = add i64 %2889, 6
  store i64 %2890, i64* %3, align 8
  %2891 = inttoptr i64 %2888 to i32*
  %2892 = load i32, i32* %2891, align 4
  %2893 = zext i32 %2892 to i64
  store i64 %2893, i64* %RAX.i1321, align 8
  %2894 = add i64 %2887, -1384
  %2895 = add i64 %2889, 12
  store i64 %2895, i64* %3, align 8
  %2896 = inttoptr i64 %2894 to i32*
  store i32 %2892, i32* %2896, align 4
  %2897 = load i64, i64* %RBP.i, align 8
  %2898 = add i64 %2897, -1312
  %2899 = load i64, i64* %3, align 8
  %2900 = add i64 %2899, 6
  store i64 %2900, i64* %3, align 8
  %2901 = inttoptr i64 %2898 to i32*
  %2902 = load i32, i32* %2901, align 4
  %2903 = zext i32 %2902 to i64
  store i64 %2903, i64* %RAX.i1321, align 8
  %2904 = add i64 %2897, -1316
  %2905 = add i64 %2899, 12
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i32*
  store i32 %2902, i32* %2906, align 4
  %2907 = load i64, i64* %RBP.i, align 8
  %2908 = add i64 %2907, -1384
  %2909 = load i64, i64* %3, align 8
  %2910 = add i64 %2909, 6
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2908 to i32*
  %2912 = load i32, i32* %2911, align 4
  %2913 = zext i32 %2912 to i64
  store i64 %2913, i64* %RAX.i1321, align 8
  %2914 = add i64 %2907, -1312
  %2915 = add i64 %2909, 12
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to i32*
  store i32 %2912, i32* %2916, align 4
  %2917 = load i64, i64* %RBP.i, align 8
  %2918 = add i64 %2917, -1328
  %2919 = load i64, i64* %3, align 8
  %2920 = add i64 %2919, 6
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2918 to i32*
  %2922 = load i32, i32* %2921, align 4
  %2923 = zext i32 %2922 to i64
  store i64 %2923, i64* %RAX.i1321, align 8
  %2924 = add i64 %2917, -1384
  %2925 = add i64 %2919, 12
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2924 to i32*
  store i32 %2922, i32* %2926, align 4
  %2927 = load i64, i64* %RBP.i, align 8
  %2928 = add i64 %2927, -1324
  %2929 = load i64, i64* %3, align 8
  %2930 = add i64 %2929, 6
  store i64 %2930, i64* %3, align 8
  %2931 = inttoptr i64 %2928 to i32*
  %2932 = load i32, i32* %2931, align 4
  %2933 = zext i32 %2932 to i64
  store i64 %2933, i64* %RAX.i1321, align 8
  %2934 = add i64 %2927, -1328
  %2935 = add i64 %2929, 12
  store i64 %2935, i64* %3, align 8
  %2936 = inttoptr i64 %2934 to i32*
  store i32 %2932, i32* %2936, align 4
  %2937 = load i64, i64* %RBP.i, align 8
  %2938 = add i64 %2937, -1384
  %2939 = load i64, i64* %3, align 8
  %2940 = add i64 %2939, 6
  store i64 %2940, i64* %3, align 8
  %2941 = inttoptr i64 %2938 to i32*
  %2942 = load i32, i32* %2941, align 4
  %2943 = zext i32 %2942 to i64
  store i64 %2943, i64* %RAX.i1321, align 8
  %2944 = add i64 %2937, -1324
  %2945 = add i64 %2939, 12
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2944 to i32*
  store i32 %2942, i32* %2946, align 4
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_402a5d

block_.L_402a5d:                                  ; preds = %block_.L_4029d1, %block_4029f1
  %2947 = phi i64 [ %2857, %block_.L_4029d1 ], [ %.pre133, %block_4029f1 ]
  %2948 = load i64, i64* %RBP.i, align 8
  %2949 = add i64 %2948, -1320
  %2950 = add i64 %2947, 6
  store i64 %2950, i64* %3, align 8
  %2951 = inttoptr i64 %2949 to i32*
  %2952 = load i32, i32* %2951, align 4
  %2953 = zext i32 %2952 to i64
  store i64 %2953, i64* %RAX.i1321, align 8
  %2954 = add i64 %2948, -1308
  %2955 = add i64 %2947, 12
  store i64 %2955, i64* %3, align 8
  %2956 = inttoptr i64 %2954 to i32*
  %2957 = load i32, i32* %2956, align 4
  %2958 = sub i32 %2952, %2957
  %2959 = zext i32 %2958 to i64
  store i64 %2959, i64* %RAX.i1321, align 8
  %2960 = icmp ult i32 %2952, %2957
  %2961 = zext i1 %2960 to i8
  store i8 %2961, i8* %14, align 1
  %2962 = and i32 %2958, 255
  %2963 = tail call i32 @llvm.ctpop.i32(i32 %2962)
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  %2966 = xor i8 %2965, 1
  store i8 %2966, i8* %21, align 1
  %2967 = xor i32 %2957, %2952
  %2968 = xor i32 %2967, %2958
  %2969 = lshr i32 %2968, 4
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  store i8 %2971, i8* %27, align 1
  %2972 = icmp eq i32 %2958, 0
  %2973 = zext i1 %2972 to i8
  store i8 %2973, i8* %30, align 1
  %2974 = lshr i32 %2958, 31
  %2975 = trunc i32 %2974 to i8
  store i8 %2975, i8* %33, align 1
  %2976 = lshr i32 %2952, 31
  %2977 = lshr i32 %2957, 31
  %2978 = xor i32 %2977, %2976
  %2979 = xor i32 %2974, %2976
  %2980 = add nuw nsw i32 %2979, %2978
  %2981 = icmp eq i32 %2980, 2
  %2982 = zext i1 %2981 to i8
  store i8 %2982, i8* %39, align 1
  %2983 = add i64 %2948, -1316
  %2984 = add i64 %2947, 18
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2983 to i32*
  %2986 = load i32, i32* %2985, align 4
  %2987 = zext i32 %2986 to i64
  store i64 %2987, i64* %RCX.i1290, align 8
  %2988 = add i64 %2948, -1304
  %2989 = add i64 %2947, 24
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2988 to i32*
  %2991 = load i32, i32* %2990, align 4
  %2992 = sub i32 %2986, %2991
  %2993 = zext i32 %2992 to i64
  store i64 %2993, i64* %RCX.i1290, align 8
  %2994 = lshr i32 %2992, 31
  %2995 = sub i32 %2958, %2992
  %2996 = icmp ult i32 %2958, %2992
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %14, align 1
  %2998 = and i32 %2995, 255
  %2999 = tail call i32 @llvm.ctpop.i32(i32 %2998)
  %3000 = trunc i32 %2999 to i8
  %3001 = and i8 %3000, 1
  %3002 = xor i8 %3001, 1
  store i8 %3002, i8* %21, align 1
  %3003 = xor i32 %2992, %2958
  %3004 = xor i32 %3003, %2995
  %3005 = lshr i32 %3004, 4
  %3006 = trunc i32 %3005 to i8
  %3007 = and i8 %3006, 1
  store i8 %3007, i8* %27, align 1
  %3008 = icmp eq i32 %2995, 0
  %3009 = zext i1 %3008 to i8
  store i8 %3009, i8* %30, align 1
  %3010 = lshr i32 %2995, 31
  %3011 = trunc i32 %3010 to i8
  store i8 %3011, i8* %33, align 1
  %3012 = xor i32 %2994, %2974
  %3013 = xor i32 %3010, %2974
  %3014 = add nuw nsw i32 %3013, %3012
  %3015 = icmp eq i32 %3014, 2
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %39, align 1
  %3017 = icmp ne i8 %3011, 0
  %3018 = xor i1 %3017, %3015
  %.v152 = select i1 %3018, i64 32, i64 140
  %3019 = add i64 %2947, %.v152
  store i64 %3019, i64* %3, align 8
  br i1 %3018, label %block_402a7d, label %block_.L_402ae9

block_402a7d:                                     ; preds = %block_.L_402a5d
  %3020 = load i64, i64* %RBP.i, align 8
  %3021 = add i64 %3020, -1308
  %3022 = add i64 %3019, 6
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i32*
  %3024 = load i32, i32* %3023, align 4
  %3025 = zext i32 %3024 to i64
  store i64 %3025, i64* %RAX.i1321, align 8
  %3026 = add i64 %3020, -1388
  %3027 = add i64 %3019, 12
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i32*
  store i32 %3024, i32* %3028, align 4
  %3029 = load i64, i64* %RBP.i, align 8
  %3030 = add i64 %3029, -1304
  %3031 = load i64, i64* %3, align 8
  %3032 = add i64 %3031, 6
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3030 to i32*
  %3034 = load i32, i32* %3033, align 4
  %3035 = zext i32 %3034 to i64
  store i64 %3035, i64* %RAX.i1321, align 8
  %3036 = add i64 %3029, -1308
  %3037 = add i64 %3031, 12
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i32*
  store i32 %3034, i32* %3038, align 4
  %3039 = load i64, i64* %RBP.i, align 8
  %3040 = add i64 %3039, -1388
  %3041 = load i64, i64* %3, align 8
  %3042 = add i64 %3041, 6
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3040 to i32*
  %3044 = load i32, i32* %3043, align 4
  %3045 = zext i32 %3044 to i64
  store i64 %3045, i64* %RAX.i1321, align 8
  %3046 = add i64 %3039, -1304
  %3047 = add i64 %3041, 12
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3046 to i32*
  store i32 %3044, i32* %3048, align 4
  %3049 = load i64, i64* %RBP.i, align 8
  %3050 = add i64 %3049, -1320
  %3051 = load i64, i64* %3, align 8
  %3052 = add i64 %3051, 6
  store i64 %3052, i64* %3, align 8
  %3053 = inttoptr i64 %3050 to i32*
  %3054 = load i32, i32* %3053, align 4
  %3055 = zext i32 %3054 to i64
  store i64 %3055, i64* %RAX.i1321, align 8
  %3056 = add i64 %3049, -1388
  %3057 = add i64 %3051, 12
  store i64 %3057, i64* %3, align 8
  %3058 = inttoptr i64 %3056 to i32*
  store i32 %3054, i32* %3058, align 4
  %3059 = load i64, i64* %RBP.i, align 8
  %3060 = add i64 %3059, -1316
  %3061 = load i64, i64* %3, align 8
  %3062 = add i64 %3061, 6
  store i64 %3062, i64* %3, align 8
  %3063 = inttoptr i64 %3060 to i32*
  %3064 = load i32, i32* %3063, align 4
  %3065 = zext i32 %3064 to i64
  store i64 %3065, i64* %RAX.i1321, align 8
  %3066 = add i64 %3059, -1320
  %3067 = add i64 %3061, 12
  store i64 %3067, i64* %3, align 8
  %3068 = inttoptr i64 %3066 to i32*
  store i32 %3064, i32* %3068, align 4
  %3069 = load i64, i64* %RBP.i, align 8
  %3070 = add i64 %3069, -1388
  %3071 = load i64, i64* %3, align 8
  %3072 = add i64 %3071, 6
  store i64 %3072, i64* %3, align 8
  %3073 = inttoptr i64 %3070 to i32*
  %3074 = load i32, i32* %3073, align 4
  %3075 = zext i32 %3074 to i64
  store i64 %3075, i64* %RAX.i1321, align 8
  %3076 = add i64 %3069, -1316
  %3077 = add i64 %3071, 12
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i32*
  store i32 %3074, i32* %3078, align 4
  %3079 = load i64, i64* %RBP.i, align 8
  %3080 = add i64 %3079, -1332
  %3081 = load i64, i64* %3, align 8
  %3082 = add i64 %3081, 6
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3080 to i32*
  %3084 = load i32, i32* %3083, align 4
  %3085 = zext i32 %3084 to i64
  store i64 %3085, i64* %RAX.i1321, align 8
  %3086 = add i64 %3079, -1388
  %3087 = add i64 %3081, 12
  store i64 %3087, i64* %3, align 8
  %3088 = inttoptr i64 %3086 to i32*
  store i32 %3084, i32* %3088, align 4
  %3089 = load i64, i64* %RBP.i, align 8
  %3090 = add i64 %3089, -1328
  %3091 = load i64, i64* %3, align 8
  %3092 = add i64 %3091, 6
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3090 to i32*
  %3094 = load i32, i32* %3093, align 4
  %3095 = zext i32 %3094 to i64
  store i64 %3095, i64* %RAX.i1321, align 8
  %3096 = add i64 %3089, -1332
  %3097 = add i64 %3091, 12
  store i64 %3097, i64* %3, align 8
  %3098 = inttoptr i64 %3096 to i32*
  store i32 %3094, i32* %3098, align 4
  %3099 = load i64, i64* %RBP.i, align 8
  %3100 = add i64 %3099, -1388
  %3101 = load i64, i64* %3, align 8
  %3102 = add i64 %3101, 6
  store i64 %3102, i64* %3, align 8
  %3103 = inttoptr i64 %3100 to i32*
  %3104 = load i32, i32* %3103, align 4
  %3105 = zext i32 %3104 to i64
  store i64 %3105, i64* %RAX.i1321, align 8
  %3106 = add i64 %3099, -1328
  %3107 = add i64 %3101, 12
  store i64 %3107, i64* %3, align 8
  %3108 = inttoptr i64 %3106 to i32*
  store i32 %3104, i32* %3108, align 4
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_402ae9

block_.L_402ae9:                                  ; preds = %block_.L_402a5d, %block_402a7d
  %3109 = phi i64 [ %3019, %block_.L_402a5d ], [ %.pre134, %block_402a7d ]
  %3110 = load i64, i64* %RBP.i, align 8
  %3111 = add i64 %3110, -1308
  %3112 = add i64 %3109, 6
  store i64 %3112, i64* %3, align 8
  %3113 = inttoptr i64 %3111 to i32*
  %3114 = load i32, i32* %3113, align 4
  %3115 = zext i32 %3114 to i64
  store i64 %3115, i64* %RAX.i1321, align 8
  %3116 = add i64 %3110, -80
  %3117 = add i64 %3109, 10
  store i64 %3117, i64* %3, align 8
  %3118 = inttoptr i64 %3116 to i32*
  %3119 = load i32, i32* %3118, align 4
  %3120 = sext i32 %3119 to i64
  store i64 %3120, i64* %RCX.i1290, align 8
  %3121 = shl nsw i64 %3120, 2
  %3122 = add i64 %3110, -496
  %3123 = add i64 %3122, %3121
  %3124 = add i64 %3109, 17
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3123 to i32*
  store i32 %3114, i32* %3125, align 4
  %3126 = load i64, i64* %RBP.i, align 8
  %3127 = add i64 %3126, -1320
  %3128 = load i64, i64* %3, align 8
  %3129 = add i64 %3128, 6
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3127 to i32*
  %3131 = load i32, i32* %3130, align 4
  %3132 = zext i32 %3131 to i64
  store i64 %3132, i64* %RAX.i1321, align 8
  %3133 = add i64 %3126, -80
  %3134 = add i64 %3128, 10
  store i64 %3134, i64* %3, align 8
  %3135 = inttoptr i64 %3133 to i32*
  %3136 = load i32, i32* %3135, align 4
  %3137 = sext i32 %3136 to i64
  store i64 %3137, i64* %RCX.i1290, align 8
  %3138 = shl nsw i64 %3137, 2
  %3139 = add i64 %3126, -896
  %3140 = add i64 %3139, %3138
  %3141 = add i64 %3128, 17
  store i64 %3141, i64* %3, align 8
  %3142 = inttoptr i64 %3140 to i32*
  store i32 %3131, i32* %3142, align 4
  %3143 = load i64, i64* %RBP.i, align 8
  %3144 = add i64 %3143, -1332
  %3145 = load i64, i64* %3, align 8
  %3146 = add i64 %3145, 6
  store i64 %3146, i64* %3, align 8
  %3147 = inttoptr i64 %3144 to i32*
  %3148 = load i32, i32* %3147, align 4
  %3149 = zext i32 %3148 to i64
  store i64 %3149, i64* %RAX.i1321, align 8
  %3150 = add i64 %3143, -80
  %3151 = add i64 %3145, 10
  store i64 %3151, i64* %3, align 8
  %3152 = inttoptr i64 %3150 to i32*
  %3153 = load i32, i32* %3152, align 4
  %3154 = sext i32 %3153 to i64
  store i64 %3154, i64* %RCX.i1290, align 8
  %3155 = shl nsw i64 %3154, 2
  %3156 = add i64 %3143, -1296
  %3157 = add i64 %3156, %3155
  %3158 = add i64 %3145, 17
  store i64 %3158, i64* %3, align 8
  %3159 = inttoptr i64 %3157 to i32*
  store i32 %3148, i32* %3159, align 4
  %3160 = load i64, i64* %RBP.i, align 8
  %3161 = add i64 %3160, -80
  %3162 = load i64, i64* %3, align 8
  %3163 = add i64 %3162, 3
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3161 to i32*
  %3165 = load i32, i32* %3164, align 4
  %3166 = add i32 %3165, 1
  %3167 = zext i32 %3166 to i64
  store i64 %3167, i64* %RAX.i1321, align 8
  %3168 = icmp eq i32 %3165, -1
  %3169 = icmp eq i32 %3166, 0
  %3170 = or i1 %3168, %3169
  %3171 = zext i1 %3170 to i8
  store i8 %3171, i8* %14, align 1
  %3172 = and i32 %3166, 255
  %3173 = tail call i32 @llvm.ctpop.i32(i32 %3172)
  %3174 = trunc i32 %3173 to i8
  %3175 = and i8 %3174, 1
  %3176 = xor i8 %3175, 1
  store i8 %3176, i8* %21, align 1
  %3177 = xor i32 %3166, %3165
  %3178 = lshr i32 %3177, 4
  %3179 = trunc i32 %3178 to i8
  %3180 = and i8 %3179, 1
  store i8 %3180, i8* %27, align 1
  %3181 = zext i1 %3169 to i8
  store i8 %3181, i8* %30, align 1
  %3182 = lshr i32 %3166, 31
  %3183 = trunc i32 %3182 to i8
  store i8 %3183, i8* %33, align 1
  %3184 = lshr i32 %3165, 31
  %3185 = xor i32 %3182, %3184
  %3186 = add nuw nsw i32 %3185, %3182
  %3187 = icmp eq i32 %3186, 2
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %39, align 1
  %3189 = add i64 %3162, 9
  store i64 %3189, i64* %3, align 8
  store i32 %3166, i32* %3164, align 4
  %3190 = load i64, i64* %RBP.i, align 8
  %3191 = add i64 %3190, -1304
  %3192 = load i64, i64* %3, align 8
  %3193 = add i64 %3192, 6
  store i64 %3193, i64* %3, align 8
  %3194 = inttoptr i64 %3191 to i32*
  %3195 = load i32, i32* %3194, align 4
  %3196 = zext i32 %3195 to i64
  store i64 %3196, i64* %RAX.i1321, align 8
  %3197 = add i64 %3190, -80
  %3198 = add i64 %3192, 10
  store i64 %3198, i64* %3, align 8
  %3199 = inttoptr i64 %3197 to i32*
  %3200 = load i32, i32* %3199, align 4
  %3201 = sext i32 %3200 to i64
  store i64 %3201, i64* %RCX.i1290, align 8
  %3202 = shl nsw i64 %3201, 2
  %3203 = add i64 %3190, -496
  %3204 = add i64 %3203, %3202
  %3205 = add i64 %3192, 17
  store i64 %3205, i64* %3, align 8
  %3206 = inttoptr i64 %3204 to i32*
  store i32 %3195, i32* %3206, align 4
  %3207 = load i64, i64* %RBP.i, align 8
  %3208 = add i64 %3207, -1316
  %3209 = load i64, i64* %3, align 8
  %3210 = add i64 %3209, 6
  store i64 %3210, i64* %3, align 8
  %3211 = inttoptr i64 %3208 to i32*
  %3212 = load i32, i32* %3211, align 4
  %3213 = zext i32 %3212 to i64
  store i64 %3213, i64* %RAX.i1321, align 8
  %3214 = add i64 %3207, -80
  %3215 = add i64 %3209, 10
  store i64 %3215, i64* %3, align 8
  %3216 = inttoptr i64 %3214 to i32*
  %3217 = load i32, i32* %3216, align 4
  %3218 = sext i32 %3217 to i64
  store i64 %3218, i64* %RCX.i1290, align 8
  %3219 = shl nsw i64 %3218, 2
  %3220 = add i64 %3207, -896
  %3221 = add i64 %3220, %3219
  %3222 = add i64 %3209, 17
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i32*
  store i32 %3212, i32* %3223, align 4
  %3224 = load i64, i64* %RBP.i, align 8
  %3225 = add i64 %3224, -1328
  %3226 = load i64, i64* %3, align 8
  %3227 = add i64 %3226, 6
  store i64 %3227, i64* %3, align 8
  %3228 = inttoptr i64 %3225 to i32*
  %3229 = load i32, i32* %3228, align 4
  %3230 = zext i32 %3229 to i64
  store i64 %3230, i64* %RAX.i1321, align 8
  %3231 = add i64 %3224, -80
  %3232 = add i64 %3226, 10
  store i64 %3232, i64* %3, align 8
  %3233 = inttoptr i64 %3231 to i32*
  %3234 = load i32, i32* %3233, align 4
  %3235 = sext i32 %3234 to i64
  store i64 %3235, i64* %RCX.i1290, align 8
  %3236 = shl nsw i64 %3235, 2
  %3237 = add i64 %3224, -1296
  %3238 = add i64 %3237, %3236
  %3239 = add i64 %3226, 17
  store i64 %3239, i64* %3, align 8
  %3240 = inttoptr i64 %3238 to i32*
  store i32 %3229, i32* %3240, align 4
  %3241 = load i64, i64* %RBP.i, align 8
  %3242 = add i64 %3241, -80
  %3243 = load i64, i64* %3, align 8
  %3244 = add i64 %3243, 3
  store i64 %3244, i64* %3, align 8
  %3245 = inttoptr i64 %3242 to i32*
  %3246 = load i32, i32* %3245, align 4
  %3247 = add i32 %3246, 1
  %3248 = zext i32 %3247 to i64
  store i64 %3248, i64* %RAX.i1321, align 8
  %3249 = icmp eq i32 %3246, -1
  %3250 = icmp eq i32 %3247, 0
  %3251 = or i1 %3249, %3250
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %14, align 1
  %3253 = and i32 %3247, 255
  %3254 = tail call i32 @llvm.ctpop.i32(i32 %3253)
  %3255 = trunc i32 %3254 to i8
  %3256 = and i8 %3255, 1
  %3257 = xor i8 %3256, 1
  store i8 %3257, i8* %21, align 1
  %3258 = xor i32 %3247, %3246
  %3259 = lshr i32 %3258, 4
  %3260 = trunc i32 %3259 to i8
  %3261 = and i8 %3260, 1
  store i8 %3261, i8* %27, align 1
  %3262 = zext i1 %3250 to i8
  store i8 %3262, i8* %30, align 1
  %3263 = lshr i32 %3247, 31
  %3264 = trunc i32 %3263 to i8
  store i8 %3264, i8* %33, align 1
  %3265 = lshr i32 %3246, 31
  %3266 = xor i32 %3263, %3265
  %3267 = add nuw nsw i32 %3266, %3263
  %3268 = icmp eq i32 %3267, 2
  %3269 = zext i1 %3268 to i8
  store i8 %3269, i8* %39, align 1
  %3270 = add i64 %3243, 9
  store i64 %3270, i64* %3, align 8
  store i32 %3247, i32* %3245, align 4
  %3271 = load i64, i64* %RBP.i, align 8
  %3272 = add i64 %3271, -1300
  %3273 = load i64, i64* %3, align 8
  %3274 = add i64 %3273, 6
  store i64 %3274, i64* %3, align 8
  %3275 = inttoptr i64 %3272 to i32*
  %3276 = load i32, i32* %3275, align 4
  %3277 = zext i32 %3276 to i64
  store i64 %3277, i64* %RAX.i1321, align 8
  %3278 = add i64 %3271, -80
  %3279 = add i64 %3273, 10
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3278 to i32*
  %3281 = load i32, i32* %3280, align 4
  %3282 = sext i32 %3281 to i64
  store i64 %3282, i64* %RCX.i1290, align 8
  %3283 = shl nsw i64 %3282, 2
  %3284 = add i64 %3271, -496
  %3285 = add i64 %3284, %3283
  %3286 = add i64 %3273, 17
  store i64 %3286, i64* %3, align 8
  %3287 = inttoptr i64 %3285 to i32*
  store i32 %3276, i32* %3287, align 4
  %3288 = load i64, i64* %RBP.i, align 8
  %3289 = add i64 %3288, -1312
  %3290 = load i64, i64* %3, align 8
  %3291 = add i64 %3290, 6
  store i64 %3291, i64* %3, align 8
  %3292 = inttoptr i64 %3289 to i32*
  %3293 = load i32, i32* %3292, align 4
  %3294 = zext i32 %3293 to i64
  store i64 %3294, i64* %RAX.i1321, align 8
  %3295 = add i64 %3288, -80
  %3296 = add i64 %3290, 10
  store i64 %3296, i64* %3, align 8
  %3297 = inttoptr i64 %3295 to i32*
  %3298 = load i32, i32* %3297, align 4
  %3299 = sext i32 %3298 to i64
  store i64 %3299, i64* %RCX.i1290, align 8
  %3300 = shl nsw i64 %3299, 2
  %3301 = add i64 %3288, -896
  %3302 = add i64 %3301, %3300
  %3303 = add i64 %3290, 17
  store i64 %3303, i64* %3, align 8
  %3304 = inttoptr i64 %3302 to i32*
  store i32 %3293, i32* %3304, align 4
  %3305 = load i64, i64* %RBP.i, align 8
  %3306 = add i64 %3305, -1324
  %3307 = load i64, i64* %3, align 8
  %3308 = add i64 %3307, 6
  store i64 %3308, i64* %3, align 8
  %3309 = inttoptr i64 %3306 to i32*
  %3310 = load i32, i32* %3309, align 4
  %3311 = zext i32 %3310 to i64
  store i64 %3311, i64* %RAX.i1321, align 8
  %3312 = add i64 %3305, -80
  %3313 = add i64 %3307, 10
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3312 to i32*
  %3315 = load i32, i32* %3314, align 4
  %3316 = sext i32 %3315 to i64
  store i64 %3316, i64* %RCX.i1290, align 8
  %3317 = shl nsw i64 %3316, 2
  %3318 = add i64 %3305, -1296
  %3319 = add i64 %3318, %3317
  %3320 = add i64 %3307, 17
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i32*
  store i32 %3310, i32* %3321, align 4
  %3322 = load i64, i64* %RBP.i, align 8
  %3323 = add i64 %3322, -80
  %3324 = load i64, i64* %3, align 8
  %3325 = add i64 %3324, 3
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3323 to i32*
  %3327 = load i32, i32* %3326, align 4
  %3328 = add i32 %3327, 1
  %3329 = zext i32 %3328 to i64
  store i64 %3329, i64* %RAX.i1321, align 8
  %3330 = icmp eq i32 %3327, -1
  %3331 = icmp eq i32 %3328, 0
  %3332 = or i1 %3330, %3331
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %14, align 1
  %3334 = and i32 %3328, 255
  %3335 = tail call i32 @llvm.ctpop.i32(i32 %3334)
  %3336 = trunc i32 %3335 to i8
  %3337 = and i8 %3336, 1
  %3338 = xor i8 %3337, 1
  store i8 %3338, i8* %21, align 1
  %3339 = xor i32 %3328, %3327
  %3340 = lshr i32 %3339, 4
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  store i8 %3342, i8* %27, align 1
  %3343 = zext i1 %3331 to i8
  store i8 %3343, i8* %30, align 1
  %3344 = lshr i32 %3328, 31
  %3345 = trunc i32 %3344 to i8
  store i8 %3345, i8* %33, align 1
  %3346 = lshr i32 %3327, 31
  %3347 = xor i32 %3344, %3346
  %3348 = add nuw nsw i32 %3347, %3344
  %3349 = icmp eq i32 %3348, 2
  %3350 = zext i1 %3349 to i8
  store i8 %3350, i8* %39, align 1
  %3351 = add i64 %3324, 9
  store i64 %3351, i64* %3, align 8
  store i32 %3328, i32* %3326, align 4
  %3352 = load i64, i64* %3, align 8
  %3353 = add i64 %3352, -1969
  br label %block_.L_4023ec.backedge

block_.L_402ba2.loopexit:                         ; preds = %block_.L_4023ec
  br label %block_.L_402ba2

block_.L_402ba2:                                  ; preds = %block_.L_402ba2.loopexit, %block_40248e
  %3354 = phi i64 [ %454, %block_40248e ], [ %209, %block_.L_402ba2.loopexit ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_40247c, %block_40248e ], [ %MEMORY.0, %block_.L_402ba2.loopexit ]
  %3355 = load i64, i64* %6, align 8
  %3356 = add i64 %3355, 1424
  store i64 %3356, i64* %6, align 8
  %3357 = icmp ugt i64 %3355, -1425
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %14, align 1
  %3359 = trunc i64 %3356 to i32
  %3360 = and i32 %3359, 255
  %3361 = tail call i32 @llvm.ctpop.i32(i32 %3360)
  %3362 = trunc i32 %3361 to i8
  %3363 = and i8 %3362, 1
  %3364 = xor i8 %3363, 1
  store i8 %3364, i8* %21, align 1
  %3365 = xor i64 %3355, 16
  %3366 = xor i64 %3365, %3356
  %3367 = lshr i64 %3366, 4
  %3368 = trunc i64 %3367 to i8
  %3369 = and i8 %3368, 1
  store i8 %3369, i8* %27, align 1
  %3370 = icmp eq i64 %3356, 0
  %3371 = zext i1 %3370 to i8
  store i8 %3371, i8* %30, align 1
  %3372 = lshr i64 %3356, 63
  %3373 = trunc i64 %3372 to i8
  store i8 %3373, i8* %33, align 1
  %3374 = lshr i64 %3355, 63
  %3375 = xor i64 %3372, %3374
  %3376 = add nuw nsw i64 %3375, %3372
  %3377 = icmp eq i64 %3376, 2
  %3378 = zext i1 %3377 to i8
  store i8 %3378, i8* %39, align 1
  %3379 = add i64 %3354, 8
  store i64 %3379, i64* %3, align 8
  %3380 = add i64 %3355, 1432
  %3381 = inttoptr i64 %3356 to i64*
  %3382 = load i64, i64* %3381, align 8
  store i64 %3382, i64* %RBP.i, align 8
  store i64 %3380, i64* %6, align 8
  %3383 = add i64 %3354, 9
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3380 to i64*
  %3385 = load i64, i64* %3384, align 8
  store i64 %3385, i64* %3, align 8
  %3386 = add i64 %3355, 1440
  store i64 %3386, i64* %6, align 8
  ret %struct.Memory* %MEMORY.15
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
define %struct.Memory* @routine_subq__0x590___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1424
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1424
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
define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
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
define %struct.Memory* @routine_movl_0x10__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1f0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -496
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x380__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -896
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x510__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1296
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jle_.L_402ba2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x64__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -100
  %10 = icmp ult i32 %8, 100
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
define %struct.Memory* @routine_jl_.L_40240a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3e9___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1001, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.BZ2_bz__AssertH__fail(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl_MINUS0x1f0__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -496
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x380__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -896
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x510__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1296
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_subl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_cmpl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -20
  %8 = icmp ult i32 %4, 20
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
define %struct.Memory* @routine_jl_.L_402456(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xe__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -14
  %10 = icmp ult i32 %8, 14
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
define %struct.Memory* @routine_jle_.L_402498(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.mainSimpleSort(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
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
define %struct.Memory* @routine_jge_.L_402493(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_402ba2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4023ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x5c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb___rax__rcx_1____dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movb___rax__rcx_1____r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_addl_MINUS0x58__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RSI, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %13, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %10, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %24 = lshr i64 %7, 31
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  store i8 %26, i8* %23, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
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
define %struct.Memory* @routine_movzbl__dil___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i8, i8* %DIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__r8b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i8, i8* %R8B, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.mmed3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl__al___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_402518(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jle_.L_402529(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4025bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movzbl___rax__rcx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jne_.L_4025a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x538__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1336
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x538__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1336
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jle_.L_4025b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4025c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4025d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40266b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_40264e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x53c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1340
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x53c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1340
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jge_.L_40265d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40267c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4026cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x540__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1344
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x540__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1344
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
define %struct.Memory* @routine_jmpq_.L_402513(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_402712(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__eax__MINUS0x1f0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -496
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x380__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -896
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x510__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1296
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_402737(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x570__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1392
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402743(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl_MINUS0x570__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1392
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
define %struct.Memory* @routine_movl__eax__MINUS0x544__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1348
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_movl__eax__MINUS0x548__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1352
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x54c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1356
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x54c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1356
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
define %struct.Memory* @routine_jle_.L_4027ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x544__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1348
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
define %struct.Memory* @routine_movl__edx__MINUS0x550__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1360
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x548__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1352
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
define %struct.Memory* @routine_movl_MINUS0x550__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1360
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
define %struct.Memory* @routine_movl_MINUS0x544__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1348
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
define %struct.Memory* @routine_movl__edx__MINUS0x544__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1348
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x548__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1352
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
define %struct.Memory* @routine_movl__edx__MINUS0x548__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1352
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1356
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
define %struct.Memory* @routine_movl__edx__MINUS0x54c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1356
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40276a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_subl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_jge_.L_402812(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x574__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1396
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40281e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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
define %struct.Memory* @routine_movl_MINUS0x574__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1396
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
define %struct.Memory* @routine_movl__eax__MINUS0x554__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1364
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_movl__eax__MINUS0x558__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1368
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x55c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1372
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x55c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1372
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
define %struct.Memory* @routine_jle_.L_4028cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x554__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1364
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
define %struct.Memory* @routine_movl__edx__MINUS0x560__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1376
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x558__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1368
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
define %struct.Memory* @routine_movl_MINUS0x560__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1376
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
define %struct.Memory* @routine_movl_MINUS0x554__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1364
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
define %struct.Memory* @routine_movl__edx__MINUS0x554__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1364
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x558__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1368
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
define %struct.Memory* @routine_movl__edx__MINUS0x558__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1368
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x55c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1372
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
define %struct.Memory* @routine_movl__edx__MINUS0x55c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1372
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402848(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x51c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x528__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x534__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x518__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1304
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x524__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x530__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1328
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x514__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x520__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1312
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x52c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x528__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1320
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
define %struct.Memory* @routine_subl_MINUS0x51c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1308
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl_MINUS0x524__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1316
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
define %struct.Memory* @routine_subl_MINUS0x518__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1304
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
define %struct.Memory* @routine_jge_.L_4029d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x51c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1308
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
define %struct.Memory* @routine_movl__eax__MINUS0x564__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1380
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x518__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1304
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
define %struct.Memory* @routine_movl_MINUS0x564__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1380
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
define %struct.Memory* @routine_movl_MINUS0x524__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1316
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
define %struct.Memory* @routine_movl_MINUS0x534__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1332
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
define %struct.Memory* @routine_movl_MINUS0x530__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1328
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
define %struct.Memory* @routine_subl_MINUS0x518__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1304
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl_MINUS0x520__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1312
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
define %struct.Memory* @routine_subl_MINUS0x514__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1300
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
define %struct.Memory* @routine_jge_.L_402a5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x568__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1384
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x514__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1300
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
define %struct.Memory* @routine_movl_MINUS0x568__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1384
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
define %struct.Memory* @routine_movl_MINUS0x520__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1312
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
define %struct.Memory* @routine_movl_MINUS0x52c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1324
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
define %struct.Memory* @routine_jge_.L_402ae9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x56c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1388
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x56c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1388
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
define %struct.Memory* @routine_addq__0x590___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1424
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1425
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
