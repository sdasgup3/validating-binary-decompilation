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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @unRLE_obuf_to_output_FAST(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RDI.i1744 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = add i64 %7, -24
  %13 = load i64, i64* %RDI.i1744, align 8
  %14 = add i64 %10, 7
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %RBP.i, align 8
  %17 = add i64 %16, -16
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 4
  store i64 %19, i64* %3, align 8
  %20 = inttoptr i64 %17 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %RDI.i1744, align 8
  %22 = add i64 %21, 20
  %23 = add i64 %18, 8
  store i64 %23, i64* %3, align 8
  %24 = inttoptr i64 %22 to i8*
  %25 = load i8, i8* %24, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %26, align 1
  %27 = zext i8 %25 to i32
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = icmp eq i8 %25, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1
  %37 = lshr i8 %25, 7
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %39, align 1
  %.v118 = select i1 %34, i64 1647, i64 14
  %40 = add i64 %18, %.v118
  store i64 %40, i64* %3, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i691 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  br i1 %34, label %block_.L_4079b7, label %block_.L_40735b.preheader

block_.L_40735b.preheader:                        ; preds = %entry
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL.i1712 = bitcast %union.anon* %42 to i8*
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1697 = getelementptr inbounds %union.anon, %union.anon* %43, i64 0, i32 0
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1689 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %R8.i1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %RCX.i1597 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %ECX.i1591 = bitcast %union.anon* %42 to i32*
  %DL.i1535 = bitcast %union.anon* %43 to i8*
  %DIL.i1404 = bitcast %union.anon* %11 to i8*
  %SIL.i1311 = bitcast %union.anon* %44 to i8*
  br label %block_.L_40735b

block_.L_40735b:                                  ; preds = %block_.L_40735b.backedge, %block_.L_40735b.preheader
  %45 = phi i64 [ %40, %block_.L_40735b.preheader ], [ %.pre, %block_.L_40735b.backedge ]
  %.sink37 = phi i64 [ 5, %block_.L_40735b.preheader ], [ %.sink37.be, %block_.L_40735b.backedge ]
  %46 = add i64 %45, %.sink37
  store i64 %46, i64* %3, align 8
  %47 = add i64 %46, 5
  br label %block_.L_407360

block_.L_407360:                                  ; preds = %block_.L_40743b, %block_.L_40735b
  %storemerge = phi i64 [ %47, %block_.L_40735b ], [ %429, %block_.L_40743b ]
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -16
  %50 = add i64 %storemerge, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i64*
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %RAX.i691, align 8
  %53 = add i64 %storemerge, 7
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %52 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RAX.i691, align 8
  %56 = add i64 %55, 32
  %57 = add i64 %storemerge, 11
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  store i8 0, i8* %26, align 1
  %60 = and i32 %59, 255
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60)
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  store i8 %64, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %65 = icmp eq i32 %59, 0
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %36, align 1
  %67 = lshr i32 %59, 31
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v113 = select i1 %65, i64 17, i64 26
  %69 = add i64 %storemerge, %.v113
  store i64 %69, i64* %3, align 8
  br i1 %65, label %block_407371, label %block_.L_40737a

block_407371:                                     ; preds = %block_.L_407360
  %70 = add i64 %48, -1
  %71 = add i64 %69, 4
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i8*
  store i8 0, i8* %72, align 1
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 2576
  store i64 %74, i64* %3, align 8
  br label %block_.L_407d85

block_.L_40737a:                                  ; preds = %block_.L_407360
  %75 = add i64 %69, 4
  store i64 %75, i64* %3, align 8
  %76 = load i64, i64* %51, align 8
  store i64 %76, i64* %RAX.i691, align 8
  %77 = add i64 %76, 16
  %78 = add i64 %69, 8
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  store i8 0, i8* %26, align 1
  %81 = and i32 %80, 255
  %82 = tail call i32 @llvm.ctpop.i32(i32 %81)
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %86 = icmp eq i32 %80, 0
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %36, align 1
  %88 = lshr i32 %80, 31
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %86, i64 14, i64 19
  %90 = add i64 %69, %.v
  store i64 %90, i64* %3, align 8
  br i1 %86, label %block_407388, label %block_.L_40738d

block_407388:                                     ; preds = %block_.L_40737a
  %91 = add i64 %90, 188
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* %51, align 8
  store i64 %92, i64* %RAX.i691, align 8
  %93 = add i64 %92, 1092
  %94 = add i64 %90, 194
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  store i64 %97, i64* %RCX.i1597, align 8
  %98 = add i64 %90, 198
  store i64 %98, i64* %3, align 8
  %99 = load i64, i64* %51, align 8
  store i64 %99, i64* %RAX.i691, align 8
  %100 = add i64 %99, 64080
  %101 = add i64 %90, 204
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = add i32 %103, 1
  %105 = zext i32 %104 to i64
  store i64 %105, i64* %RDX.i1697, align 8
  %106 = lshr i32 %104, 31
  %107 = sub i32 %96, %104
  %108 = icmp ult i32 %96, %104
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %26, align 1
  %110 = and i32 %107, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %32, align 1
  %115 = xor i32 %104, %96
  %116 = xor i32 %115, %107
  %117 = lshr i32 %116, 4
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  store i8 %119, i8* %33, align 1
  %120 = icmp eq i32 %107, 0
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %36, align 1
  %122 = lshr i32 %107, 31
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %38, align 1
  %124 = lshr i32 %96, 31
  %125 = xor i32 %106, %124
  %126 = xor i32 %122, %124
  %127 = add nuw nsw i32 %126, %125
  %128 = icmp eq i32 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %39, align 1
  %.v120 = select i1 %120, i64 215, i64 224
  %130 = add i64 %90, %.v120
  store i64 %130, i64* %3, align 8
  br i1 %120, label %block_40745f, label %block_.L_407468

block_.L_40738d:                                  ; preds = %block_.L_40737a
  %131 = add i64 %90, 4
  store i64 %131, i64* %3, align 8
  %132 = load i64, i64* %51, align 8
  store i64 %132, i64* %RAX.i691, align 8
  %133 = add i64 %132, 12
  %134 = add i64 %90, 7
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i8*
  %136 = load i8, i8* %135, align 1
  store i8 %136, i8* %CL.i1712, align 1
  %137 = add i64 %90, 11
  store i64 %137, i64* %3, align 8
  %138 = load i64, i64* %51, align 8
  store i64 %138, i64* %RAX.i691, align 8
  %139 = add i64 %90, 14
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i64*
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %RAX.i691, align 8
  %142 = add i64 %141, 24
  %143 = add i64 %90, 18
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i64*
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %RAX.i691, align 8
  %146 = add i64 %90, 20
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i8*
  store i8 %136, i8* %147, align 1
  %148 = load i64, i64* %RBP.i, align 8
  %149 = add i64 %148, -16
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %150, 4
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %149 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX.i691, align 8
  %154 = add i64 %153, 3184
  %155 = add i64 %150, 10
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 %157, 8
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %RDX.i1697, align 8
  %160 = lshr i32 %157, 24
  %161 = trunc i32 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %26, align 1
  store i8 1, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %163 = icmp eq i32 %158, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %36, align 1
  %165 = lshr i32 %157, 23
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  store i8 %167, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %168 = add i64 %150, 17
  store i64 %168, i64* %3, align 8
  %169 = load i64, i64* %152, align 8
  store i64 %169, i64* %RAX.i691, align 8
  %170 = add i64 %169, 3184
  %171 = add i64 %150, 23
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = lshr i32 %173, 23
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = lshr i32 %173, 24
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RSI.i1689, align 8
  store i8 %176, i8* %26, align 1
  %179 = tail call i32 @llvm.ctpop.i32(i32 %177)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %183 = icmp eq i32 %177, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %185 = add i64 %150, 30
  store i64 %185, i64* %3, align 8
  %186 = load i64, i64* %152, align 8
  store i64 %186, i64* %RAX.i691, align 8
  %187 = add i64 %186, 12
  %188 = add i64 %150, 34
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i8*
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i64
  store i64 %191, i64* %RDI.i1744, align 8
  %192 = zext i8 %190 to i64
  %193 = xor i64 %192, %178
  %194 = trunc i64 %193 to i32
  store i8 0, i8* %26, align 1
  %195 = tail call i32 @llvm.ctpop.i32(i32 %194)
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  store i8 %198, i8* %32, align 1
  %199 = icmp eq i32 %194, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i64 %193, i64* %RSI.i1689, align 8
  store i64 %193, i64* %RAX.i691, align 8
  %201 = shl nuw nsw i64 %193, 2
  %202 = add nuw nsw i64 %201, 6390128
  %203 = add i64 %150, 47
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i32*
  %205 = load i32, i32* %204, align 4
  %206 = xor i32 %205, %158
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %RDX.i1697, align 8
  store i8 0, i8* %26, align 1
  %208 = and i32 %205, 255
  %209 = tail call i32 @llvm.ctpop.i32(i32 %208)
  %210 = trunc i32 %209 to i8
  %211 = and i8 %210, 1
  %212 = xor i8 %211, 1
  store i8 %212, i8* %32, align 1
  %213 = icmp eq i32 %206, 0
  %214 = zext i1 %213 to i8
  store i8 %214, i8* %36, align 1
  %215 = lshr i32 %206, 31
  %216 = trunc i32 %215 to i8
  store i8 %216, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %217 = load i64, i64* %RBP.i, align 8
  %218 = add i64 %217, -16
  %219 = add i64 %150, 51
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i64*
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %RAX.i691, align 8
  %222 = add i64 %221, 3184
  %223 = add i64 %150, 57
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  store i32 %206, i32* %224, align 4
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -16
  %227 = load i64, i64* %3, align 8
  %228 = add i64 %227, 4
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %226 to i64*
  %230 = load i64, i64* %229, align 8
  store i64 %230, i64* %RAX.i691, align 8
  %231 = add i64 %230, 16
  %232 = add i64 %227, 7
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = add i32 %234, -1
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RDX.i1697, align 8
  %237 = icmp ne i32 %234, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %26, align 1
  %239 = and i32 %235, 255
  %240 = tail call i32 @llvm.ctpop.i32(i32 %239)
  %241 = trunc i32 %240 to i8
  %242 = and i8 %241, 1
  %243 = xor i8 %242, 1
  store i8 %243, i8* %32, align 1
  %244 = xor i32 %234, 16
  %245 = xor i32 %244, %235
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  store i8 %248, i8* %33, align 1
  %249 = icmp eq i32 %235, 0
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %36, align 1
  %251 = lshr i32 %235, 31
  %252 = trunc i32 %251 to i8
  store i8 %252, i8* %38, align 1
  %253 = lshr i32 %234, 31
  %254 = xor i32 %251, %253
  %255 = xor i32 %251, 1
  %256 = add nuw nsw i32 %254, %255
  %257 = icmp eq i32 %256, 2
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %39, align 1
  %259 = add i64 %227, 13
  store i64 %259, i64* %3, align 8
  store i32 %235, i32* %233, align 4
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -16
  %262 = load i64, i64* %3, align 8
  %263 = add i64 %262, 4
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %261 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %RAX.i691, align 8
  %266 = add i64 %262, 7
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i64*
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %RAX.i691, align 8
  %269 = add i64 %268, 24
  %270 = add i64 %262, 11
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i64*
  %272 = load i64, i64* %271, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %R8.i1644, align 8
  %274 = icmp eq i64 %272, -1
  %275 = icmp eq i64 %273, 0
  %276 = or i1 %274, %275
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %26, align 1
  %278 = trunc i64 %273 to i32
  %279 = and i32 %278, 255
  %280 = tail call i32 @llvm.ctpop.i32(i32 %279)
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = xor i8 %282, 1
  store i8 %283, i8* %32, align 1
  %284 = xor i64 %273, %272
  %285 = lshr i64 %284, 4
  %286 = trunc i64 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %33, align 1
  %288 = zext i1 %275 to i8
  store i8 %288, i8* %36, align 1
  %289 = lshr i64 %273, 63
  %290 = trunc i64 %289 to i8
  store i8 %290, i8* %38, align 1
  %291 = lshr i64 %272, 63
  %292 = xor i64 %289, %291
  %293 = add nuw nsw i64 %292, %289
  %294 = icmp eq i64 %293, 2
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %39, align 1
  %296 = add i64 %262, 19
  store i64 %296, i64* %3, align 8
  store i64 %273, i64* %271, align 8
  %297 = load i64, i64* %RBP.i, align 8
  %298 = add i64 %297, -16
  %299 = load i64, i64* %3, align 8
  %300 = add i64 %299, 4
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %298 to i64*
  %302 = load i64, i64* %301, align 8
  store i64 %302, i64* %RAX.i691, align 8
  %303 = add i64 %299, 7
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i64*
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %RAX.i691, align 8
  %306 = add i64 %305, 32
  %307 = add i64 %299, 10
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = add i32 %309, -1
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RDX.i1697, align 8
  %312 = icmp ne i32 %309, 0
  %313 = zext i1 %312 to i8
  store i8 %313, i8* %26, align 1
  %314 = and i32 %310, 255
  %315 = tail call i32 @llvm.ctpop.i32(i32 %314)
  %316 = trunc i32 %315 to i8
  %317 = and i8 %316, 1
  %318 = xor i8 %317, 1
  store i8 %318, i8* %32, align 1
  %319 = xor i32 %309, 16
  %320 = xor i32 %319, %310
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  store i8 %323, i8* %33, align 1
  %324 = icmp eq i32 %310, 0
  %325 = zext i1 %324 to i8
  store i8 %325, i8* %36, align 1
  %326 = lshr i32 %310, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %38, align 1
  %328 = lshr i32 %309, 31
  %329 = xor i32 %326, %328
  %330 = xor i32 %326, 1
  %331 = add nuw nsw i32 %329, %330
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %39, align 1
  %334 = add i64 %299, 16
  store i64 %334, i64* %3, align 8
  store i32 %310, i32* %308, align 4
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -16
  %337 = load i64, i64* %3, align 8
  %338 = add i64 %337, 4
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %336 to i64*
  %340 = load i64, i64* %339, align 8
  store i64 %340, i64* %RAX.i691, align 8
  %341 = add i64 %337, 7
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i64*
  %343 = load i64, i64* %342, align 8
  store i64 %343, i64* %RAX.i691, align 8
  %344 = add i64 %343, 36
  %345 = add i64 %337, 10
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = add i32 %347, 1
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RDX.i1697, align 8
  %350 = icmp eq i32 %347, -1
  %351 = icmp eq i32 %348, 0
  %352 = or i1 %350, %351
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %26, align 1
  %354 = and i32 %348, 255
  %355 = tail call i32 @llvm.ctpop.i32(i32 %354)
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  %358 = xor i8 %357, 1
  store i8 %358, i8* %32, align 1
  %359 = xor i32 %348, %347
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  store i8 %362, i8* %33, align 1
  %363 = zext i1 %351 to i8
  store i8 %363, i8* %36, align 1
  %364 = lshr i32 %348, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %38, align 1
  %366 = lshr i32 %347, 31
  %367 = xor i32 %364, %366
  %368 = add nuw nsw i32 %367, %364
  %369 = icmp eq i32 %368, 2
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %39, align 1
  %371 = add i64 %337, 16
  store i64 %371, i64* %3, align 8
  store i32 %348, i32* %346, align 4
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -16
  %374 = load i64, i64* %3, align 8
  %375 = add i64 %374, 4
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %373 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %RAX.i691, align 8
  %378 = add i64 %374, 7
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i64*
  %380 = load i64, i64* %379, align 8
  store i64 %380, i64* %RAX.i691, align 8
  %381 = add i64 %380, 36
  %382 = add i64 %374, 11
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i32*
  %384 = load i32, i32* %383, align 4
  store i8 0, i8* %26, align 1
  %385 = and i32 %384, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385)
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %390 = icmp eq i32 %384, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %36, align 1
  %392 = lshr i32 %384, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v119 = select i1 %390, i64 17, i64 33
  %394 = add i64 %374, %.v119
  store i64 %394, i64* %3, align 8
  br i1 %390, label %block_40742b, label %block_.L_40743b

block_40742b:                                     ; preds = %block_.L_40738d
  %395 = add i64 %394, 4
  store i64 %395, i64* %3, align 8
  %396 = load i64, i64* %376, align 8
  store i64 %396, i64* %RAX.i691, align 8
  %397 = add i64 %394, 7
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX.i691, align 8
  %400 = add i64 %399, 40
  %401 = add i64 %394, 10
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i32*
  %403 = load i32, i32* %402, align 4
  %404 = add i32 %403, 1
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RCX.i1597, align 8
  %406 = icmp eq i32 %403, -1
  %407 = icmp eq i32 %404, 0
  %408 = or i1 %406, %407
  %409 = zext i1 %408 to i8
  store i8 %409, i8* %26, align 1
  %410 = and i32 %404, 255
  %411 = tail call i32 @llvm.ctpop.i32(i32 %410)
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  %414 = xor i8 %413, 1
  store i8 %414, i8* %32, align 1
  %415 = xor i32 %404, %403
  %416 = lshr i32 %415, 4
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  store i8 %418, i8* %33, align 1
  %419 = zext i1 %407 to i8
  store i8 %419, i8* %36, align 1
  %420 = lshr i32 %404, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %38, align 1
  %422 = lshr i32 %403, 31
  %423 = xor i32 %420, %422
  %424 = add nuw nsw i32 %423, %420
  %425 = icmp eq i32 %424, 2
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %39, align 1
  %427 = add i64 %394, 16
  store i64 %427, i64* %3, align 8
  store i32 %404, i32* %402, align 4
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_40743b

block_.L_40743b:                                  ; preds = %block_.L_40738d, %block_40742b
  %428 = phi i64 [ %.pre92, %block_40742b ], [ %394, %block_.L_40738d ]
  %429 = add i64 %428, -219
  %430 = add i64 %428, 5
  store i64 %430, i64* %3, align 8
  br label %block_.L_407360

block_40745f:                                     ; preds = %block_407388
  %431 = add i64 %48, -1
  %432 = add i64 %130, 4
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i8*
  store i8 0, i8* %433, align 1
  %434 = load i64, i64* %3, align 8
  %435 = add i64 %434, 2338
  store i64 %435, i64* %3, align 8
  br label %block_.L_407d85

block_.L_407468:                                  ; preds = %block_407388
  %436 = add i64 %130, 4
  store i64 %436, i64* %3, align 8
  %437 = load i64, i64* %51, align 8
  store i64 %437, i64* %RAX.i691, align 8
  %438 = add i64 %437, 1092
  %439 = add i64 %130, 10
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i32*
  %441 = load i32, i32* %440, align 4
  %442 = zext i32 %441 to i64
  store i64 %442, i64* %RCX.i1597, align 8
  %443 = add i64 %130, 14
  store i64 %443, i64* %3, align 8
  %444 = load i64, i64* %51, align 8
  store i64 %444, i64* %RAX.i691, align 8
  %445 = add i64 %444, 64080
  %446 = add i64 %130, 20
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = add i32 %448, 1
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RDX.i1697, align 8
  %451 = lshr i32 %449, 31
  %452 = sub i32 %441, %449
  %453 = icmp ult i32 %441, %449
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %26, align 1
  %455 = and i32 %452, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %32, align 1
  %460 = xor i32 %449, %441
  %461 = xor i32 %460, %452
  %462 = lshr i32 %461, 4
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %33, align 1
  %465 = icmp eq i32 %452, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %36, align 1
  %467 = lshr i32 %452, 31
  %468 = trunc i32 %467 to i8
  store i8 %468, i8* %38, align 1
  %469 = lshr i32 %441, 31
  %470 = xor i32 %451, %469
  %471 = xor i32 %467, %469
  %472 = add nuw nsw i32 %471, %470
  %473 = icmp eq i32 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %39, align 1
  %475 = icmp ne i8 %468, 0
  %476 = xor i1 %475, %473
  %477 = or i1 %465, %476
  %.v121 = select i1 %477, i64 40, i64 31
  %478 = add i64 %130, %.v121
  store i64 %478, i64* %3, align 8
  br i1 %477, label %block_.L_407490, label %block_407487

block_407487:                                     ; preds = %block_.L_407468
  %479 = add i64 %48, -1
  %480 = add i64 %478, 4
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i8*
  store i8 1, i8* %481, align 1
  %482 = load i64, i64* %3, align 8
  %483 = add i64 %482, 2298
  store i64 %483, i64* %3, align 8
  br label %block_.L_407d85

block_.L_407490:                                  ; preds = %block_.L_407468
  %484 = add i64 %478, 4
  store i64 %484, i64* %3, align 8
  %485 = load i64, i64* %51, align 8
  store i64 %485, i64* %RAX.i691, align 8
  %486 = add i64 %485, 16
  %487 = add i64 %478, 11
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i32*
  store i32 1, i32* %488, align 4
  %489 = load i64, i64* %RBP.i, align 8
  %490 = add i64 %489, -16
  %491 = load i64, i64* %3, align 8
  %492 = add i64 %491, 4
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %490 to i64*
  %494 = load i64, i64* %493, align 8
  store i64 %494, i64* %RAX.i691, align 8
  %495 = add i64 %494, 64
  %496 = add i64 %491, 7
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RCX.i1597, align 8
  %500 = trunc i32 %498 to i8
  store i8 %500, i8* %DL.i1535, align 1
  %501 = add i64 %491, 13
  store i64 %501, i64* %3, align 8
  %502 = load i64, i64* %493, align 8
  store i64 %502, i64* %RAX.i691, align 8
  %503 = add i64 %502, 12
  %504 = add i64 %491, 16
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i8*
  store i8 %500, i8* %505, align 1
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -16
  %508 = load i64, i64* %3, align 8
  %509 = add i64 %508, 4
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %507 to i64*
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %RAX.i691, align 8
  %512 = add i64 %511, 3152
  %513 = add i64 %508, 11
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i64*
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %RAX.i691, align 8
  %516 = add i64 %508, 15
  store i64 %516, i64* %3, align 8
  %517 = load i64, i64* %510, align 8
  store i64 %517, i64* %RSI.i1689, align 8
  %518 = add i64 %517, 60
  %519 = add i64 %508, 18
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RCX.i1597, align 8
  store i64 %522, i64* %RSI.i1689, align 8
  %523 = shl nuw nsw i64 %522, 2
  %524 = add i64 %515, %523
  %525 = add i64 %508, 23
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %RCX.i1597, align 8
  %529 = add i64 %508, 27
  store i64 %529, i64* %3, align 8
  %530 = load i64, i64* %510, align 8
  store i64 %530, i64* %RAX.i691, align 8
  %531 = add i64 %530, 60
  %532 = add i64 %508, 30
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  store i32 %527, i32* %533, align 4
  %534 = load i64, i64* %RBP.i, align 8
  %535 = add i64 %534, -16
  %536 = load i64, i64* %3, align 8
  %537 = add i64 %536, 4
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %535 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RAX.i691, align 8
  %540 = add i64 %539, 60
  %541 = add i64 %536, 7
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  %543 = load i32, i32* %542, align 4
  %544 = and i32 %543, 255
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RCX.i1597, align 8
  store i8 0, i8* %26, align 1
  %546 = tail call i32 @llvm.ctpop.i32(i32 %544)
  %547 = trunc i32 %546 to i8
  %548 = and i8 %547, 1
  %549 = xor i8 %548, 1
  store i8 %549, i8* %32, align 1
  %550 = icmp eq i32 %544, 0
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %552 = trunc i32 %543 to i8
  store i8 %552, i8* %DL.i1535, align 1
  %553 = add i64 %534, -17
  %554 = add i64 %536, 18
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i8*
  store i8 %552, i8* %555, align 1
  %556 = load i64, i64* %RBP.i, align 8
  %557 = add i64 %556, -16
  %558 = load i64, i64* %3, align 8
  %559 = add i64 %558, 4
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %557 to i64*
  %561 = load i64, i64* %560, align 8
  store i64 %561, i64* %RAX.i691, align 8
  %562 = add i64 %561, 60
  %563 = add i64 %558, 7
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i32*
  %565 = load i32, i32* %564, align 4
  %566 = lshr i32 %565, 7
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = lshr i32 %565, 8
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RCX.i1597, align 8
  store i8 %568, i8* %26, align 1
  %571 = and i32 %569, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %576 = icmp eq i32 %569, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %578 = add i64 %558, 13
  store i64 %578, i64* %3, align 8
  store i32 %569, i32* %564, align 4
  %579 = load i64, i64* %RBP.i, align 8
  %580 = add i64 %579, -16
  %581 = load i64, i64* %3, align 8
  %582 = add i64 %581, 4
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %580 to i64*
  %584 = load i64, i64* %583, align 8
  store i64 %584, i64* %RAX.i691, align 8
  %585 = add i64 %584, 24
  %586 = add i64 %581, 8
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  store i8 0, i8* %26, align 1
  %589 = and i32 %588, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %594 = icmp eq i32 %588, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %36, align 1
  %596 = lshr i32 %588, 31
  %597 = trunc i32 %596 to i8
  store i8 %597, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v122 = select i1 %594, i64 14, i64 82
  %598 = add i64 %581, %.v122
  store i64 %598, i64* %3, align 8
  br i1 %594, label %block_4074f6, label %block_.L_40753a

block_4074f6:                                     ; preds = %block_.L_407490
  %599 = add i64 %598, 4
  store i64 %599, i64* %3, align 8
  %600 = load i64, i64* %583, align 8
  store i64 %600, i64* %RAX.i691, align 8
  %601 = add i64 %600, 28
  %602 = add i64 %598, 8
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = sext i32 %604 to i64
  store i64 %605, i64* %RAX.i691, align 8
  %606 = shl nsw i64 %605, 2
  %607 = add nsw i64 %606, 6391152
  %608 = add i64 %598, 15
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RCX.i1597, align 8
  %612 = add i64 %598, 19
  store i64 %612, i64* %3, align 8
  %613 = load i64, i64* %583, align 8
  store i64 %613, i64* %RAX.i691, align 8
  %614 = add i64 %613, 24
  %615 = add i64 %598, 22
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  store i32 %610, i32* %616, align 4
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -16
  %619 = load i64, i64* %3, align 8
  %620 = add i64 %619, 4
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %618 to i64*
  %622 = load i64, i64* %621, align 8
  store i64 %622, i64* %RAX.i691, align 8
  %623 = add i64 %622, 28
  %624 = add i64 %619, 7
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  %626 = load i32, i32* %625, align 4
  %627 = add i32 %626, 1
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RCX.i1597, align 8
  %629 = icmp eq i32 %626, -1
  %630 = icmp eq i32 %627, 0
  %631 = or i1 %629, %630
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %26, align 1
  %633 = and i32 %627, 255
  %634 = tail call i32 @llvm.ctpop.i32(i32 %633)
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  %637 = xor i8 %636, 1
  store i8 %637, i8* %32, align 1
  %638 = xor i32 %627, %626
  %639 = lshr i32 %638, 4
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  store i8 %641, i8* %33, align 1
  %642 = zext i1 %630 to i8
  store i8 %642, i8* %36, align 1
  %643 = lshr i32 %627, 31
  %644 = trunc i32 %643 to i8
  store i8 %644, i8* %38, align 1
  %645 = lshr i32 %626, 31
  %646 = xor i32 %643, %645
  %647 = add nuw nsw i32 %646, %643
  %648 = icmp eq i32 %647, 2
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %39, align 1
  %650 = add i64 %619, 13
  store i64 %650, i64* %3, align 8
  store i32 %627, i32* %625, align 4
  %651 = load i64, i64* %RBP.i, align 8
  %652 = add i64 %651, -16
  %653 = load i64, i64* %3, align 8
  %654 = add i64 %653, 4
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %652 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %RAX.i691, align 8
  %657 = add i64 %656, 28
  %658 = add i64 %653, 11
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = add i32 %660, -512
  %662 = icmp ult i32 %660, 512
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %26, align 1
  %664 = and i32 %661, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664)
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %32, align 1
  %669 = xor i32 %661, %660
  %670 = lshr i32 %669, 4
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  store i8 %672, i8* %33, align 1
  %673 = icmp eq i32 %661, 0
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %36, align 1
  %675 = lshr i32 %661, 31
  %676 = trunc i32 %675 to i8
  store i8 %676, i8* %38, align 1
  %677 = lshr i32 %660, 31
  %678 = xor i32 %675, %677
  %679 = add nuw nsw i32 %678, %677
  %680 = icmp eq i32 %679, 2
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %39, align 1
  %.v137 = select i1 %673, i64 17, i64 28
  %682 = add i64 %653, %.v137
  store i64 %682, i64* %3, align 8
  br i1 %673, label %block_40752a, label %block_.L_407535

block_40752a:                                     ; preds = %block_4074f6
  %683 = add i64 %682, 4
  store i64 %683, i64* %3, align 8
  %684 = load i64, i64* %655, align 8
  store i64 %684, i64* %RAX.i691, align 8
  %685 = add i64 %684, 28
  %686 = add i64 %682, 11
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  store i32 0, i32* %687, align 4
  %.pre78 = load i64, i64* %3, align 8
  %.pre80.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_407535

block_.L_407535:                                  ; preds = %block_4074f6, %block_40752a
  %.pre80 = phi i64 [ %.pre80.pre, %block_40752a ], [ %651, %block_4074f6 ]
  %688 = phi i64 [ %.pre78, %block_40752a ], [ %682, %block_4074f6 ]
  %689 = add i64 %688, 5
  store i64 %689, i64* %3, align 8
  br label %block_.L_40753a

block_.L_40753a:                                  ; preds = %block_.L_407490, %block_.L_407535
  %690 = phi i64 [ %.pre80, %block_.L_407535 ], [ %579, %block_.L_407490 ]
  %691 = phi i64 [ %689, %block_.L_407535 ], [ %598, %block_.L_407490 ]
  store i64 0, i64* %RAX.i691, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %32, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i64 1, i64* %RCX.i1597, align 8
  %692 = add i64 %690, -16
  %693 = add i64 %691, 11
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i64*
  %695 = load i64, i64* %694, align 8
  store i64 %695, i64* %RDX.i1697, align 8
  %696 = add i64 %695, 24
  %697 = add i64 %691, 14
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = add i32 %699, -1
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RSI.i1689, align 8
  %702 = icmp ne i32 %699, 0
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %26, align 1
  %704 = and i32 %700, 255
  %705 = tail call i32 @llvm.ctpop.i32(i32 %704)
  %706 = trunc i32 %705 to i8
  %707 = and i8 %706, 1
  %708 = xor i8 %707, 1
  store i8 %708, i8* %32, align 1
  %709 = xor i32 %699, 16
  %710 = xor i32 %709, %700
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %33, align 1
  %714 = icmp eq i32 %700, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %36, align 1
  %716 = lshr i32 %700, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %38, align 1
  %718 = lshr i32 %699, 31
  %719 = xor i32 %716, %718
  %720 = xor i32 %716, 1
  %721 = add nuw nsw i32 %719, %720
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %39, align 1
  %724 = add i64 %691, 20
  store i64 %724, i64* %3, align 8
  store i32 %700, i32* %698, align 4
  %725 = load i64, i64* %RBP.i, align 8
  %726 = add i64 %725, -16
  %727 = load i64, i64* %3, align 8
  %728 = add i64 %727, 4
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %726 to i64*
  %730 = load i64, i64* %729, align 8
  store i64 %730, i64* %RDX.i1697, align 8
  %731 = add i64 %730, 24
  %732 = add i64 %727, 8
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i32*
  %734 = load i32, i32* %733, align 4
  %735 = add i32 %734, -1
  %736 = icmp eq i32 %734, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %26, align 1
  %738 = and i32 %735, 255
  %739 = tail call i32 @llvm.ctpop.i32(i32 %738)
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %32, align 1
  %743 = xor i32 %735, %734
  %744 = lshr i32 %743, 4
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  store i8 %746, i8* %33, align 1
  %747 = icmp eq i32 %735, 0
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %36, align 1
  %749 = lshr i32 %735, 31
  %750 = trunc i32 %749 to i8
  store i8 %750, i8* %38, align 1
  %751 = lshr i32 %734, 31
  %752 = xor i32 %749, %751
  %753 = add nuw nsw i32 %752, %751
  %754 = icmp eq i32 %753, 2
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %39, align 1
  %756 = load i32, i32* %ECX.i1591, align 4
  %757 = zext i32 %756 to i64
  %758 = load i64, i64* %RAX.i691, align 8
  %759 = select i1 %747, i64 %757, i64 %758
  %760 = and i64 %759, 4294967295
  store i64 %760, i64* %RAX.i691, align 8
  %761 = add i64 %725, -17
  %762 = add i64 %727, 15
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i8*
  %764 = load i8, i8* %763, align 1
  %765 = zext i8 %764 to i64
  %766 = and i64 %759, 4294967295
  %767 = xor i64 %766, %765
  %768 = trunc i64 %767 to i32
  store i64 %767, i64* %RCX.i1597, align 8
  store i8 0, i8* %26, align 1
  %769 = and i32 %768, 255
  %770 = tail call i32 @llvm.ctpop.i32(i32 %769)
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  %773 = xor i8 %772, 1
  store i8 %773, i8* %32, align 1
  %774 = icmp eq i32 %768, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %36, align 1
  %776 = lshr i32 %768, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %778 = trunc i64 %767 to i8
  store i8 %778, i8* %DIL.i1404, align 1
  %779 = add i64 %727, 24
  store i64 %779, i64* %3, align 8
  store i8 %778, i8* %763, align 1
  %780 = load i64, i64* %RBP.i, align 8
  %781 = add i64 %780, -16
  %782 = load i64, i64* %3, align 8
  %783 = add i64 %782, 4
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %781 to i64*
  %785 = load i64, i64* %784, align 8
  store i64 %785, i64* %RDX.i1697, align 8
  %786 = add i64 %785, 1092
  %787 = add i64 %782, 10
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  %789 = load i32, i32* %788, align 4
  %790 = add i32 %789, 1
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RAX.i691, align 8
  %792 = icmp eq i32 %789, -1
  %793 = icmp eq i32 %790, 0
  %794 = or i1 %792, %793
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %26, align 1
  %796 = and i32 %790, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %32, align 1
  %801 = xor i32 %790, %789
  %802 = lshr i32 %801, 4
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  store i8 %804, i8* %33, align 1
  %805 = zext i1 %793 to i8
  store i8 %805, i8* %36, align 1
  %806 = lshr i32 %790, 31
  %807 = trunc i32 %806 to i8
  store i8 %807, i8* %38, align 1
  %808 = lshr i32 %789, 31
  %809 = xor i32 %806, %808
  %810 = add nuw nsw i32 %809, %806
  %811 = icmp eq i32 %810, 2
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %39, align 1
  %813 = add i64 %782, 19
  store i64 %813, i64* %3, align 8
  store i32 %790, i32* %788, align 4
  %814 = load i64, i64* %RBP.i, align 8
  %815 = add i64 %814, -16
  %816 = load i64, i64* %3, align 8
  %817 = add i64 %816, 4
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %815 to i64*
  %819 = load i64, i64* %818, align 8
  store i64 %819, i64* %RDX.i1697, align 8
  %820 = add i64 %819, 1092
  %821 = add i64 %816, 10
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RAX.i691, align 8
  %825 = add i64 %816, 14
  store i64 %825, i64* %3, align 8
  %826 = load i64, i64* %818, align 8
  store i64 %826, i64* %RDX.i1697, align 8
  %827 = add i64 %826, 64080
  %828 = add i64 %816, 20
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i32*
  %830 = load i32, i32* %829, align 4
  %831 = add i32 %830, 1
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RCX.i1597, align 8
  %833 = lshr i32 %831, 31
  %834 = sub i32 %823, %831
  %835 = icmp ult i32 %823, %831
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %26, align 1
  %837 = and i32 %834, 255
  %838 = tail call i32 @llvm.ctpop.i32(i32 %837)
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  store i8 %841, i8* %32, align 1
  %842 = xor i32 %831, %823
  %843 = xor i32 %842, %834
  %844 = lshr i32 %843, 4
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  store i8 %846, i8* %33, align 1
  %847 = icmp eq i32 %834, 0
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %36, align 1
  %849 = lshr i32 %834, 31
  %850 = trunc i32 %849 to i8
  store i8 %850, i8* %38, align 1
  %851 = lshr i32 %823, 31
  %852 = xor i32 %833, %851
  %853 = xor i32 %849, %851
  %854 = add nuw nsw i32 %853, %852
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %39, align 1
  %.v123 = select i1 %847, i64 31, i64 36
  %857 = add i64 %816, %.v123
  store i64 %857, i64* %3, align 8
  br i1 %847, label %block_.L_40735b.backedge, label %block_.L_40759d

block_.L_40759d:                                  ; preds = %block_.L_40753a
  %858 = add i64 %814, -17
  %859 = add i64 %857, 4
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i8*
  %861 = load i8, i8* %860, align 1
  %862 = zext i8 %861 to i64
  store i64 %862, i64* %RAX.i691, align 8
  %863 = add i64 %857, 8
  store i64 %863, i64* %3, align 8
  %864 = load i64, i64* %818, align 8
  store i64 %864, i64* %RCX.i1597, align 8
  %865 = zext i8 %861 to i32
  %866 = add i64 %864, 64
  %867 = add i64 %857, 11
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = sub i32 %865, %869
  %871 = icmp ult i32 %865, %869
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %26, align 1
  %873 = and i32 %870, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %32, align 1
  %878 = xor i32 %869, %865
  %879 = xor i32 %878, %870
  %880 = lshr i32 %879, 4
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  store i8 %882, i8* %33, align 1
  %883 = icmp eq i32 %870, 0
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %36, align 1
  %885 = lshr i32 %870, 31
  %886 = trunc i32 %885 to i8
  store i8 %886, i8* %38, align 1
  %887 = lshr i32 %869, 31
  %888 = add nuw nsw i32 %885, %887
  %889 = icmp eq i32 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %39, align 1
  %.v124 = select i1 %883, i64 33, i64 17
  %891 = add i64 %857, %.v124
  %892 = add i64 %891, 4
  store i64 %892, i64* %3, align 8
  br i1 %883, label %block_.L_4075be, label %block_4075ae

block_4075ae:                                     ; preds = %block_.L_40759d
  %893 = load i8, i8* %860, align 1
  %894 = zext i8 %893 to i64
  store i64 %894, i64* %RAX.i691, align 8
  %895 = add i64 %891, 8
  store i64 %895, i64* %3, align 8
  %896 = load i64, i64* %818, align 8
  store i64 %896, i64* %RCX.i1597, align 8
  %897 = add i64 %896, 64
  %898 = zext i8 %893 to i32
  %899 = add i64 %891, 11
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %897 to i32*
  store i32 %898, i32* %900, align 4
  br label %block_.L_40735b.backedge

block_.L_40735b.backedge:                         ; preds = %block_.L_40777a, %block_.L_40765a, %block_.L_40753a, %block_4075ae, %block_4076ce, %block_4077ee, %block_.L_407976
  %.sink37.be = phi i64 [ -1623, %block_.L_407976 ], [ -1182, %block_4077ee ], [ -894, %block_4076ce ], [ -606, %block_4075ae ], [ -573, %block_.L_40753a ], [ -861, %block_.L_40765a ], [ -1149, %block_.L_40777a ]
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40735b

block_.L_4075be:                                  ; preds = %block_.L_40759d
  %901 = load i64, i64* %818, align 8
  store i64 %901, i64* %RAX.i691, align 8
  %902 = add i64 %901, 16
  %903 = add i64 %891, 11
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  store i32 2, i32* %904, align 4
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -16
  %907 = load i64, i64* %3, align 8
  %908 = add i64 %907, 4
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %906 to i64*
  %910 = load i64, i64* %909, align 8
  store i64 %910, i64* %RAX.i691, align 8
  %911 = add i64 %910, 3152
  %912 = add i64 %907, 11
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i64*
  %914 = load i64, i64* %913, align 8
  store i64 %914, i64* %RAX.i691, align 8
  %915 = add i64 %907, 15
  store i64 %915, i64* %3, align 8
  %916 = load i64, i64* %909, align 8
  store i64 %916, i64* %RCX.i1597, align 8
  %917 = add i64 %916, 60
  %918 = add i64 %907, 18
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = zext i32 %920 to i64
  store i64 %921, i64* %RDX.i1697, align 8
  store i64 %921, i64* %RCX.i1597, align 8
  %922 = shl nuw nsw i64 %921, 2
  %923 = add i64 %914, %922
  %924 = add i64 %907, 23
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i32*
  %926 = load i32, i32* %925, align 4
  %927 = zext i32 %926 to i64
  store i64 %927, i64* %RDX.i1697, align 8
  %928 = add i64 %907, 27
  store i64 %928, i64* %3, align 8
  %929 = load i64, i64* %909, align 8
  store i64 %929, i64* %RAX.i691, align 8
  %930 = add i64 %929, 60
  %931 = add i64 %907, 30
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  store i32 %926, i32* %932, align 4
  %933 = load i64, i64* %RBP.i, align 8
  %934 = add i64 %933, -16
  %935 = load i64, i64* %3, align 8
  %936 = add i64 %935, 4
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %934 to i64*
  %938 = load i64, i64* %937, align 8
  store i64 %938, i64* %RAX.i691, align 8
  %939 = add i64 %938, 60
  %940 = add i64 %935, 7
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = and i32 %942, 255
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RDX.i1697, align 8
  store i8 0, i8* %26, align 1
  %945 = tail call i32 @llvm.ctpop.i32(i32 %943)
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  %948 = xor i8 %947, 1
  store i8 %948, i8* %32, align 1
  %949 = icmp eq i32 %943, 0
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %951 = trunc i32 %942 to i8
  store i8 %951, i8* %SIL.i1311, align 1
  %952 = add i64 %933, -17
  %953 = add i64 %935, 20
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i8*
  store i8 %951, i8* %954, align 1
  %955 = load i64, i64* %RBP.i, align 8
  %956 = add i64 %955, -16
  %957 = load i64, i64* %3, align 8
  %958 = add i64 %957, 4
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %956 to i64*
  %960 = load i64, i64* %959, align 8
  store i64 %960, i64* %RAX.i691, align 8
  %961 = add i64 %960, 60
  %962 = add i64 %957, 7
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i32*
  %964 = load i32, i32* %963, align 4
  %965 = lshr i32 %964, 7
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = lshr i32 %964, 8
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RDX.i1697, align 8
  store i8 %967, i8* %26, align 1
  %970 = and i32 %968, 255
  %971 = tail call i32 @llvm.ctpop.i32(i32 %970)
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  %974 = xor i8 %973, 1
  store i8 %974, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %975 = icmp eq i32 %968, 0
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %977 = add i64 %957, 13
  store i64 %977, i64* %3, align 8
  store i32 %968, i32* %963, align 4
  %978 = load i64, i64* %RBP.i, align 8
  %979 = add i64 %978, -16
  %980 = load i64, i64* %3, align 8
  %981 = add i64 %980, 4
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %979 to i64*
  %983 = load i64, i64* %982, align 8
  store i64 %983, i64* %RAX.i691, align 8
  %984 = add i64 %983, 24
  %985 = add i64 %980, 8
  store i64 %985, i64* %3, align 8
  %986 = inttoptr i64 %984 to i32*
  %987 = load i32, i32* %986, align 4
  store i8 0, i8* %26, align 1
  %988 = and i32 %987, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988)
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %993 = icmp eq i32 %987, 0
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %36, align 1
  %995 = lshr i32 %987, 31
  %996 = trunc i32 %995 to i8
  store i8 %996, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v125 = select i1 %993, i64 14, i64 82
  %997 = add i64 %980, %.v125
  store i64 %997, i64* %3, align 8
  br i1 %993, label %block_407616, label %block_.L_40765a

block_407616:                                     ; preds = %block_.L_4075be
  %998 = add i64 %997, 4
  store i64 %998, i64* %3, align 8
  %999 = load i64, i64* %982, align 8
  store i64 %999, i64* %RAX.i691, align 8
  %1000 = add i64 %999, 28
  %1001 = add i64 %997, 8
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = sext i32 %1003 to i64
  store i64 %1004, i64* %RAX.i691, align 8
  %1005 = shl nsw i64 %1004, 2
  %1006 = add nsw i64 %1005, 6391152
  %1007 = add i64 %997, 15
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RCX.i1597, align 8
  %1011 = add i64 %997, 19
  store i64 %1011, i64* %3, align 8
  %1012 = load i64, i64* %982, align 8
  store i64 %1012, i64* %RAX.i691, align 8
  %1013 = add i64 %1012, 24
  %1014 = add i64 %997, 22
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1013 to i32*
  store i32 %1009, i32* %1015, align 4
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -16
  %1018 = load i64, i64* %3, align 8
  %1019 = add i64 %1018, 4
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1017 to i64*
  %1021 = load i64, i64* %1020, align 8
  store i64 %1021, i64* %RAX.i691, align 8
  %1022 = add i64 %1021, 28
  %1023 = add i64 %1018, 7
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = add i32 %1025, 1
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RCX.i1597, align 8
  %1028 = icmp eq i32 %1025, -1
  %1029 = icmp eq i32 %1026, 0
  %1030 = or i1 %1028, %1029
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %26, align 1
  %1032 = and i32 %1026, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %32, align 1
  %1037 = xor i32 %1026, %1025
  %1038 = lshr i32 %1037, 4
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  store i8 %1040, i8* %33, align 1
  %1041 = zext i1 %1029 to i8
  store i8 %1041, i8* %36, align 1
  %1042 = lshr i32 %1026, 31
  %1043 = trunc i32 %1042 to i8
  store i8 %1043, i8* %38, align 1
  %1044 = lshr i32 %1025, 31
  %1045 = xor i32 %1042, %1044
  %1046 = add nuw nsw i32 %1045, %1042
  %1047 = icmp eq i32 %1046, 2
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %39, align 1
  %1049 = add i64 %1018, 13
  store i64 %1049, i64* %3, align 8
  store i32 %1026, i32* %1024, align 4
  %1050 = load i64, i64* %RBP.i, align 8
  %1051 = add i64 %1050, -16
  %1052 = load i64, i64* %3, align 8
  %1053 = add i64 %1052, 4
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1051 to i64*
  %1055 = load i64, i64* %1054, align 8
  store i64 %1055, i64* %RAX.i691, align 8
  %1056 = add i64 %1055, 28
  %1057 = add i64 %1052, 11
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = add i32 %1059, -512
  %1061 = icmp ult i32 %1059, 512
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %26, align 1
  %1063 = and i32 %1060, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %32, align 1
  %1068 = xor i32 %1060, %1059
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %33, align 1
  %1072 = icmp eq i32 %1060, 0
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %36, align 1
  %1074 = lshr i32 %1060, 31
  %1075 = trunc i32 %1074 to i8
  store i8 %1075, i8* %38, align 1
  %1076 = lshr i32 %1059, 31
  %1077 = xor i32 %1074, %1076
  %1078 = add nuw nsw i32 %1077, %1076
  %1079 = icmp eq i32 %1078, 2
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %39, align 1
  %.v136 = select i1 %1072, i64 17, i64 28
  %1081 = add i64 %1052, %.v136
  store i64 %1081, i64* %3, align 8
  br i1 %1072, label %block_40764a, label %block_.L_407655

block_40764a:                                     ; preds = %block_407616
  %1082 = add i64 %1081, 4
  store i64 %1082, i64* %3, align 8
  %1083 = load i64, i64* %1054, align 8
  store i64 %1083, i64* %RAX.i691, align 8
  %1084 = add i64 %1083, 28
  %1085 = add i64 %1081, 11
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  store i32 0, i32* %1086, align 4
  %.pre81 = load i64, i64* %3, align 8
  %.pre83.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_407655

block_.L_407655:                                  ; preds = %block_407616, %block_40764a
  %.pre83 = phi i64 [ %.pre83.pre, %block_40764a ], [ %1050, %block_407616 ]
  %1087 = phi i64 [ %.pre81, %block_40764a ], [ %1081, %block_407616 ]
  %1088 = add i64 %1087, 5
  store i64 %1088, i64* %3, align 8
  br label %block_.L_40765a

block_.L_40765a:                                  ; preds = %block_.L_4075be, %block_.L_407655
  %1089 = phi i64 [ %.pre83, %block_.L_407655 ], [ %978, %block_.L_4075be ]
  %1090 = phi i64 [ %1088, %block_.L_407655 ], [ %997, %block_.L_4075be ]
  store i64 0, i64* %RAX.i691, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %32, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i64 1, i64* %RCX.i1597, align 8
  %1091 = add i64 %1089, -16
  %1092 = add i64 %1090, 11
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i64*
  %1094 = load i64, i64* %1093, align 8
  store i64 %1094, i64* %RDX.i1697, align 8
  %1095 = add i64 %1094, 24
  %1096 = add i64 %1090, 14
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i32*
  %1098 = load i32, i32* %1097, align 4
  %1099 = add i32 %1098, -1
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RSI.i1689, align 8
  %1101 = icmp ne i32 %1098, 0
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %26, align 1
  %1103 = and i32 %1099, 255
  %1104 = tail call i32 @llvm.ctpop.i32(i32 %1103)
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = xor i8 %1106, 1
  store i8 %1107, i8* %32, align 1
  %1108 = xor i32 %1098, 16
  %1109 = xor i32 %1108, %1099
  %1110 = lshr i32 %1109, 4
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  store i8 %1112, i8* %33, align 1
  %1113 = icmp eq i32 %1099, 0
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %36, align 1
  %1115 = lshr i32 %1099, 31
  %1116 = trunc i32 %1115 to i8
  store i8 %1116, i8* %38, align 1
  %1117 = lshr i32 %1098, 31
  %1118 = xor i32 %1115, %1117
  %1119 = xor i32 %1115, 1
  %1120 = add nuw nsw i32 %1118, %1119
  %1121 = icmp eq i32 %1120, 2
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %39, align 1
  %1123 = add i64 %1090, 20
  store i64 %1123, i64* %3, align 8
  store i32 %1099, i32* %1097, align 4
  %1124 = load i64, i64* %RBP.i, align 8
  %1125 = add i64 %1124, -16
  %1126 = load i64, i64* %3, align 8
  %1127 = add i64 %1126, 4
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1125 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RDX.i1697, align 8
  %1130 = add i64 %1129, 24
  %1131 = add i64 %1126, 8
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i32*
  %1133 = load i32, i32* %1132, align 4
  %1134 = add i32 %1133, -1
  %1135 = icmp eq i32 %1133, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %26, align 1
  %1137 = and i32 %1134, 255
  %1138 = tail call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %32, align 1
  %1142 = xor i32 %1134, %1133
  %1143 = lshr i32 %1142, 4
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  store i8 %1145, i8* %33, align 1
  %1146 = icmp eq i32 %1134, 0
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %36, align 1
  %1148 = lshr i32 %1134, 31
  %1149 = trunc i32 %1148 to i8
  store i8 %1149, i8* %38, align 1
  %1150 = lshr i32 %1133, 31
  %1151 = xor i32 %1148, %1150
  %1152 = add nuw nsw i32 %1151, %1150
  %1153 = icmp eq i32 %1152, 2
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %39, align 1
  %1155 = load i32, i32* %ECX.i1591, align 4
  %1156 = zext i32 %1155 to i64
  %1157 = load i64, i64* %RAX.i691, align 8
  %1158 = select i1 %1146, i64 %1156, i64 %1157
  %1159 = and i64 %1158, 4294967295
  store i64 %1159, i64* %RAX.i691, align 8
  %1160 = add i64 %1124, -17
  %1161 = add i64 %1126, 15
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i8*
  %1163 = load i8, i8* %1162, align 1
  %1164 = zext i8 %1163 to i64
  %1165 = and i64 %1158, 4294967295
  %1166 = xor i64 %1165, %1164
  %1167 = trunc i64 %1166 to i32
  store i64 %1166, i64* %RCX.i1597, align 8
  store i8 0, i8* %26, align 1
  %1168 = and i32 %1167, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %32, align 1
  %1173 = icmp eq i32 %1167, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %36, align 1
  %1175 = lshr i32 %1167, 31
  %1176 = trunc i32 %1175 to i8
  store i8 %1176, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %1177 = trunc i64 %1166 to i8
  store i8 %1177, i8* %DIL.i1404, align 1
  %1178 = add i64 %1126, 24
  store i64 %1178, i64* %3, align 8
  store i8 %1177, i8* %1162, align 1
  %1179 = load i64, i64* %RBP.i, align 8
  %1180 = add i64 %1179, -16
  %1181 = load i64, i64* %3, align 8
  %1182 = add i64 %1181, 4
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1180 to i64*
  %1184 = load i64, i64* %1183, align 8
  store i64 %1184, i64* %RDX.i1697, align 8
  %1185 = add i64 %1184, 1092
  %1186 = add i64 %1181, 10
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i32*
  %1188 = load i32, i32* %1187, align 4
  %1189 = add i32 %1188, 1
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RAX.i691, align 8
  %1191 = icmp eq i32 %1188, -1
  %1192 = icmp eq i32 %1189, 0
  %1193 = or i1 %1191, %1192
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %26, align 1
  %1195 = and i32 %1189, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %32, align 1
  %1200 = xor i32 %1189, %1188
  %1201 = lshr i32 %1200, 4
  %1202 = trunc i32 %1201 to i8
  %1203 = and i8 %1202, 1
  store i8 %1203, i8* %33, align 1
  %1204 = zext i1 %1192 to i8
  store i8 %1204, i8* %36, align 1
  %1205 = lshr i32 %1189, 31
  %1206 = trunc i32 %1205 to i8
  store i8 %1206, i8* %38, align 1
  %1207 = lshr i32 %1188, 31
  %1208 = xor i32 %1205, %1207
  %1209 = add nuw nsw i32 %1208, %1205
  %1210 = icmp eq i32 %1209, 2
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %39, align 1
  %1212 = add i64 %1181, 19
  store i64 %1212, i64* %3, align 8
  store i32 %1189, i32* %1187, align 4
  %1213 = load i64, i64* %RBP.i, align 8
  %1214 = add i64 %1213, -16
  %1215 = load i64, i64* %3, align 8
  %1216 = add i64 %1215, 4
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1214 to i64*
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %RDX.i1697, align 8
  %1219 = add i64 %1218, 1092
  %1220 = add i64 %1215, 10
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = zext i32 %1222 to i64
  store i64 %1223, i64* %RAX.i691, align 8
  %1224 = add i64 %1215, 14
  store i64 %1224, i64* %3, align 8
  %1225 = load i64, i64* %1217, align 8
  store i64 %1225, i64* %RDX.i1697, align 8
  %1226 = add i64 %1225, 64080
  %1227 = add i64 %1215, 20
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = add i32 %1229, 1
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RCX.i1597, align 8
  %1232 = lshr i32 %1230, 31
  %1233 = sub i32 %1222, %1230
  %1234 = icmp ult i32 %1222, %1230
  %1235 = zext i1 %1234 to i8
  store i8 %1235, i8* %26, align 1
  %1236 = and i32 %1233, 255
  %1237 = tail call i32 @llvm.ctpop.i32(i32 %1236)
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = xor i8 %1239, 1
  store i8 %1240, i8* %32, align 1
  %1241 = xor i32 %1230, %1222
  %1242 = xor i32 %1241, %1233
  %1243 = lshr i32 %1242, 4
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  store i8 %1245, i8* %33, align 1
  %1246 = icmp eq i32 %1233, 0
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %36, align 1
  %1248 = lshr i32 %1233, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %38, align 1
  %1250 = lshr i32 %1222, 31
  %1251 = xor i32 %1232, %1250
  %1252 = xor i32 %1248, %1250
  %1253 = add nuw nsw i32 %1252, %1251
  %1254 = icmp eq i32 %1253, 2
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %39, align 1
  %.v126 = select i1 %1246, i64 31, i64 36
  %1256 = add i64 %1215, %.v126
  store i64 %1256, i64* %3, align 8
  br i1 %1246, label %block_.L_40735b.backedge, label %block_.L_4076bd

block_.L_4076bd:                                  ; preds = %block_.L_40765a
  %1257 = add i64 %1213, -17
  %1258 = add i64 %1256, 4
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1257 to i8*
  %1260 = load i8, i8* %1259, align 1
  %1261 = zext i8 %1260 to i64
  store i64 %1261, i64* %RAX.i691, align 8
  %1262 = add i64 %1256, 8
  store i64 %1262, i64* %3, align 8
  %1263 = load i64, i64* %1217, align 8
  store i64 %1263, i64* %RCX.i1597, align 8
  %1264 = zext i8 %1260 to i32
  %1265 = add i64 %1263, 64
  %1266 = add i64 %1256, 11
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i32*
  %1268 = load i32, i32* %1267, align 4
  %1269 = sub i32 %1264, %1268
  %1270 = icmp ult i32 %1264, %1268
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %26, align 1
  %1272 = and i32 %1269, 255
  %1273 = tail call i32 @llvm.ctpop.i32(i32 %1272)
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  %1276 = xor i8 %1275, 1
  store i8 %1276, i8* %32, align 1
  %1277 = xor i32 %1268, %1264
  %1278 = xor i32 %1277, %1269
  %1279 = lshr i32 %1278, 4
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  store i8 %1281, i8* %33, align 1
  %1282 = icmp eq i32 %1269, 0
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %36, align 1
  %1284 = lshr i32 %1269, 31
  %1285 = trunc i32 %1284 to i8
  store i8 %1285, i8* %38, align 1
  %1286 = lshr i32 %1268, 31
  %1287 = add nuw nsw i32 %1284, %1286
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %39, align 1
  %.v127 = select i1 %1282, i64 33, i64 17
  %1290 = add i64 %1256, %.v127
  %1291 = add i64 %1290, 4
  store i64 %1291, i64* %3, align 8
  br i1 %1282, label %block_.L_4076de, label %block_4076ce

block_4076ce:                                     ; preds = %block_.L_4076bd
  %1292 = load i8, i8* %1259, align 1
  %1293 = zext i8 %1292 to i64
  store i64 %1293, i64* %RAX.i691, align 8
  %1294 = add i64 %1290, 8
  store i64 %1294, i64* %3, align 8
  %1295 = load i64, i64* %1217, align 8
  store i64 %1295, i64* %RCX.i1597, align 8
  %1296 = add i64 %1295, 64
  %1297 = zext i8 %1292 to i32
  %1298 = add i64 %1290, 11
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1296 to i32*
  store i32 %1297, i32* %1299, align 4
  br label %block_.L_40735b.backedge

block_.L_4076de:                                  ; preds = %block_.L_4076bd
  %1300 = load i64, i64* %1217, align 8
  store i64 %1300, i64* %RAX.i691, align 8
  %1301 = add i64 %1300, 16
  %1302 = add i64 %1290, 11
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  store i32 3, i32* %1303, align 4
  %1304 = load i64, i64* %RBP.i, align 8
  %1305 = add i64 %1304, -16
  %1306 = load i64, i64* %3, align 8
  %1307 = add i64 %1306, 4
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1305 to i64*
  %1309 = load i64, i64* %1308, align 8
  store i64 %1309, i64* %RAX.i691, align 8
  %1310 = add i64 %1309, 3152
  %1311 = add i64 %1306, 11
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i64*
  %1313 = load i64, i64* %1312, align 8
  store i64 %1313, i64* %RAX.i691, align 8
  %1314 = add i64 %1306, 15
  store i64 %1314, i64* %3, align 8
  %1315 = load i64, i64* %1308, align 8
  store i64 %1315, i64* %RCX.i1597, align 8
  %1316 = add i64 %1315, 60
  %1317 = add i64 %1306, 18
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1316 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = zext i32 %1319 to i64
  store i64 %1320, i64* %RDX.i1697, align 8
  store i64 %1320, i64* %RCX.i1597, align 8
  %1321 = shl nuw nsw i64 %1320, 2
  %1322 = add i64 %1313, %1321
  %1323 = add i64 %1306, 23
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RDX.i1697, align 8
  %1327 = add i64 %1306, 27
  store i64 %1327, i64* %3, align 8
  %1328 = load i64, i64* %1308, align 8
  store i64 %1328, i64* %RAX.i691, align 8
  %1329 = add i64 %1328, 60
  %1330 = add i64 %1306, 30
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i32*
  store i32 %1325, i32* %1331, align 4
  %1332 = load i64, i64* %RBP.i, align 8
  %1333 = add i64 %1332, -16
  %1334 = load i64, i64* %3, align 8
  %1335 = add i64 %1334, 4
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1333 to i64*
  %1337 = load i64, i64* %1336, align 8
  store i64 %1337, i64* %RAX.i691, align 8
  %1338 = add i64 %1337, 60
  %1339 = add i64 %1334, 7
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to i32*
  %1341 = load i32, i32* %1340, align 4
  %1342 = and i32 %1341, 255
  %1343 = zext i32 %1342 to i64
  store i64 %1343, i64* %RDX.i1697, align 8
  store i8 0, i8* %26, align 1
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1342)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %32, align 1
  %1348 = icmp eq i32 %1342, 0
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %1350 = trunc i32 %1341 to i8
  store i8 %1350, i8* %SIL.i1311, align 1
  %1351 = add i64 %1332, -17
  %1352 = add i64 %1334, 20
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i8*
  store i8 %1350, i8* %1353, align 1
  %1354 = load i64, i64* %RBP.i, align 8
  %1355 = add i64 %1354, -16
  %1356 = load i64, i64* %3, align 8
  %1357 = add i64 %1356, 4
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1355 to i64*
  %1359 = load i64, i64* %1358, align 8
  store i64 %1359, i64* %RAX.i691, align 8
  %1360 = add i64 %1359, 60
  %1361 = add i64 %1356, 7
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i32*
  %1363 = load i32, i32* %1362, align 4
  %1364 = lshr i32 %1363, 7
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = lshr i32 %1363, 8
  %1368 = zext i32 %1367 to i64
  store i64 %1368, i64* %RDX.i1697, align 8
  store i8 %1366, i8* %26, align 1
  %1369 = and i32 %1367, 255
  %1370 = tail call i32 @llvm.ctpop.i32(i32 %1369)
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  %1373 = xor i8 %1372, 1
  store i8 %1373, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1374 = icmp eq i32 %1367, 0
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %1376 = add i64 %1356, 13
  store i64 %1376, i64* %3, align 8
  store i32 %1367, i32* %1362, align 4
  %1377 = load i64, i64* %RBP.i, align 8
  %1378 = add i64 %1377, -16
  %1379 = load i64, i64* %3, align 8
  %1380 = add i64 %1379, 4
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1378 to i64*
  %1382 = load i64, i64* %1381, align 8
  store i64 %1382, i64* %RAX.i691, align 8
  %1383 = add i64 %1382, 24
  %1384 = add i64 %1379, 8
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  store i8 0, i8* %26, align 1
  %1387 = and i32 %1386, 255
  %1388 = tail call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  store i8 %1391, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1392 = icmp eq i32 %1386, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %36, align 1
  %1394 = lshr i32 %1386, 31
  %1395 = trunc i32 %1394 to i8
  store i8 %1395, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v128 = select i1 %1392, i64 14, i64 82
  %1396 = add i64 %1379, %.v128
  store i64 %1396, i64* %3, align 8
  br i1 %1392, label %block_407736, label %block_.L_40777a

block_407736:                                     ; preds = %block_.L_4076de
  %1397 = add i64 %1396, 4
  store i64 %1397, i64* %3, align 8
  %1398 = load i64, i64* %1381, align 8
  store i64 %1398, i64* %RAX.i691, align 8
  %1399 = add i64 %1398, 28
  %1400 = add i64 %1396, 8
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to i32*
  %1402 = load i32, i32* %1401, align 4
  %1403 = sext i32 %1402 to i64
  store i64 %1403, i64* %RAX.i691, align 8
  %1404 = shl nsw i64 %1403, 2
  %1405 = add nsw i64 %1404, 6391152
  %1406 = add i64 %1396, 15
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1405 to i32*
  %1408 = load i32, i32* %1407, align 4
  %1409 = zext i32 %1408 to i64
  store i64 %1409, i64* %RCX.i1597, align 8
  %1410 = add i64 %1396, 19
  store i64 %1410, i64* %3, align 8
  %1411 = load i64, i64* %1381, align 8
  store i64 %1411, i64* %RAX.i691, align 8
  %1412 = add i64 %1411, 24
  %1413 = add i64 %1396, 22
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  store i32 %1408, i32* %1414, align 4
  %1415 = load i64, i64* %RBP.i, align 8
  %1416 = add i64 %1415, -16
  %1417 = load i64, i64* %3, align 8
  %1418 = add i64 %1417, 4
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1416 to i64*
  %1420 = load i64, i64* %1419, align 8
  store i64 %1420, i64* %RAX.i691, align 8
  %1421 = add i64 %1420, 28
  %1422 = add i64 %1417, 7
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i32*
  %1424 = load i32, i32* %1423, align 4
  %1425 = add i32 %1424, 1
  %1426 = zext i32 %1425 to i64
  store i64 %1426, i64* %RCX.i1597, align 8
  %1427 = icmp eq i32 %1424, -1
  %1428 = icmp eq i32 %1425, 0
  %1429 = or i1 %1427, %1428
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %26, align 1
  %1431 = and i32 %1425, 255
  %1432 = tail call i32 @llvm.ctpop.i32(i32 %1431)
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  %1435 = xor i8 %1434, 1
  store i8 %1435, i8* %32, align 1
  %1436 = xor i32 %1425, %1424
  %1437 = lshr i32 %1436, 4
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  store i8 %1439, i8* %33, align 1
  %1440 = zext i1 %1428 to i8
  store i8 %1440, i8* %36, align 1
  %1441 = lshr i32 %1425, 31
  %1442 = trunc i32 %1441 to i8
  store i8 %1442, i8* %38, align 1
  %1443 = lshr i32 %1424, 31
  %1444 = xor i32 %1441, %1443
  %1445 = add nuw nsw i32 %1444, %1441
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %39, align 1
  %1448 = add i64 %1417, 13
  store i64 %1448, i64* %3, align 8
  store i32 %1425, i32* %1423, align 4
  %1449 = load i64, i64* %RBP.i, align 8
  %1450 = add i64 %1449, -16
  %1451 = load i64, i64* %3, align 8
  %1452 = add i64 %1451, 4
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1450 to i64*
  %1454 = load i64, i64* %1453, align 8
  store i64 %1454, i64* %RAX.i691, align 8
  %1455 = add i64 %1454, 28
  %1456 = add i64 %1451, 11
  store i64 %1456, i64* %3, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = add i32 %1458, -512
  %1460 = icmp ult i32 %1458, 512
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %26, align 1
  %1462 = and i32 %1459, 255
  %1463 = tail call i32 @llvm.ctpop.i32(i32 %1462)
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  %1466 = xor i8 %1465, 1
  store i8 %1466, i8* %32, align 1
  %1467 = xor i32 %1459, %1458
  %1468 = lshr i32 %1467, 4
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  store i8 %1470, i8* %33, align 1
  %1471 = icmp eq i32 %1459, 0
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %36, align 1
  %1473 = lshr i32 %1459, 31
  %1474 = trunc i32 %1473 to i8
  store i8 %1474, i8* %38, align 1
  %1475 = lshr i32 %1458, 31
  %1476 = xor i32 %1473, %1475
  %1477 = add nuw nsw i32 %1476, %1475
  %1478 = icmp eq i32 %1477, 2
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %39, align 1
  %.v135 = select i1 %1471, i64 17, i64 28
  %1480 = add i64 %1451, %.v135
  store i64 %1480, i64* %3, align 8
  br i1 %1471, label %block_40776a, label %block_.L_407775

block_40776a:                                     ; preds = %block_407736
  %1481 = add i64 %1480, 4
  store i64 %1481, i64* %3, align 8
  %1482 = load i64, i64* %1453, align 8
  store i64 %1482, i64* %RAX.i691, align 8
  %1483 = add i64 %1482, 28
  %1484 = add i64 %1480, 11
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1483 to i32*
  store i32 0, i32* %1485, align 4
  %.pre84 = load i64, i64* %3, align 8
  %.pre86.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_407775

block_.L_407775:                                  ; preds = %block_407736, %block_40776a
  %.pre86 = phi i64 [ %.pre86.pre, %block_40776a ], [ %1449, %block_407736 ]
  %1486 = phi i64 [ %.pre84, %block_40776a ], [ %1480, %block_407736 ]
  %1487 = add i64 %1486, 5
  store i64 %1487, i64* %3, align 8
  br label %block_.L_40777a

block_.L_40777a:                                  ; preds = %block_.L_4076de, %block_.L_407775
  %1488 = phi i64 [ %.pre86, %block_.L_407775 ], [ %1377, %block_.L_4076de ]
  %1489 = phi i64 [ %1487, %block_.L_407775 ], [ %1396, %block_.L_4076de ]
  store i64 0, i64* %RAX.i691, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %32, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i64 1, i64* %RCX.i1597, align 8
  %1490 = add i64 %1488, -16
  %1491 = add i64 %1489, 11
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i64*
  %1493 = load i64, i64* %1492, align 8
  store i64 %1493, i64* %RDX.i1697, align 8
  %1494 = add i64 %1493, 24
  %1495 = add i64 %1489, 14
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1494 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = add i32 %1497, -1
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RSI.i1689, align 8
  %1500 = icmp ne i32 %1497, 0
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %26, align 1
  %1502 = and i32 %1498, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %32, align 1
  %1507 = xor i32 %1497, 16
  %1508 = xor i32 %1507, %1498
  %1509 = lshr i32 %1508, 4
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  store i8 %1511, i8* %33, align 1
  %1512 = icmp eq i32 %1498, 0
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %36, align 1
  %1514 = lshr i32 %1498, 31
  %1515 = trunc i32 %1514 to i8
  store i8 %1515, i8* %38, align 1
  %1516 = lshr i32 %1497, 31
  %1517 = xor i32 %1514, %1516
  %1518 = xor i32 %1514, 1
  %1519 = add nuw nsw i32 %1517, %1518
  %1520 = icmp eq i32 %1519, 2
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %39, align 1
  %1522 = add i64 %1489, 20
  store i64 %1522, i64* %3, align 8
  store i32 %1498, i32* %1496, align 4
  %1523 = load i64, i64* %RBP.i, align 8
  %1524 = add i64 %1523, -16
  %1525 = load i64, i64* %3, align 8
  %1526 = add i64 %1525, 4
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1524 to i64*
  %1528 = load i64, i64* %1527, align 8
  store i64 %1528, i64* %RDX.i1697, align 8
  %1529 = add i64 %1528, 24
  %1530 = add i64 %1525, 8
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to i32*
  %1532 = load i32, i32* %1531, align 4
  %1533 = add i32 %1532, -1
  %1534 = icmp eq i32 %1532, 0
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %26, align 1
  %1536 = and i32 %1533, 255
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %32, align 1
  %1541 = xor i32 %1533, %1532
  %1542 = lshr i32 %1541, 4
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  store i8 %1544, i8* %33, align 1
  %1545 = icmp eq i32 %1533, 0
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %36, align 1
  %1547 = lshr i32 %1533, 31
  %1548 = trunc i32 %1547 to i8
  store i8 %1548, i8* %38, align 1
  %1549 = lshr i32 %1532, 31
  %1550 = xor i32 %1547, %1549
  %1551 = add nuw nsw i32 %1550, %1549
  %1552 = icmp eq i32 %1551, 2
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %39, align 1
  %1554 = load i32, i32* %ECX.i1591, align 4
  %1555 = zext i32 %1554 to i64
  %1556 = load i64, i64* %RAX.i691, align 8
  %1557 = select i1 %1545, i64 %1555, i64 %1556
  %1558 = and i64 %1557, 4294967295
  store i64 %1558, i64* %RAX.i691, align 8
  %1559 = add i64 %1523, -17
  %1560 = add i64 %1525, 15
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i8*
  %1562 = load i8, i8* %1561, align 1
  %1563 = zext i8 %1562 to i64
  %1564 = and i64 %1557, 4294967295
  %1565 = xor i64 %1564, %1563
  %1566 = trunc i64 %1565 to i32
  store i64 %1565, i64* %RCX.i1597, align 8
  store i8 0, i8* %26, align 1
  %1567 = and i32 %1566, 255
  %1568 = tail call i32 @llvm.ctpop.i32(i32 %1567)
  %1569 = trunc i32 %1568 to i8
  %1570 = and i8 %1569, 1
  %1571 = xor i8 %1570, 1
  store i8 %1571, i8* %32, align 1
  %1572 = icmp eq i32 %1566, 0
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %36, align 1
  %1574 = lshr i32 %1566, 31
  %1575 = trunc i32 %1574 to i8
  store i8 %1575, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %1576 = trunc i64 %1565 to i8
  store i8 %1576, i8* %DIL.i1404, align 1
  %1577 = add i64 %1525, 24
  store i64 %1577, i64* %3, align 8
  store i8 %1576, i8* %1561, align 1
  %1578 = load i64, i64* %RBP.i, align 8
  %1579 = add i64 %1578, -16
  %1580 = load i64, i64* %3, align 8
  %1581 = add i64 %1580, 4
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1579 to i64*
  %1583 = load i64, i64* %1582, align 8
  store i64 %1583, i64* %RDX.i1697, align 8
  %1584 = add i64 %1583, 1092
  %1585 = add i64 %1580, 10
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i32*
  %1587 = load i32, i32* %1586, align 4
  %1588 = add i32 %1587, 1
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RAX.i691, align 8
  %1590 = icmp eq i32 %1587, -1
  %1591 = icmp eq i32 %1588, 0
  %1592 = or i1 %1590, %1591
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %26, align 1
  %1594 = and i32 %1588, 255
  %1595 = tail call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  store i8 %1598, i8* %32, align 1
  %1599 = xor i32 %1588, %1587
  %1600 = lshr i32 %1599, 4
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  store i8 %1602, i8* %33, align 1
  %1603 = zext i1 %1591 to i8
  store i8 %1603, i8* %36, align 1
  %1604 = lshr i32 %1588, 31
  %1605 = trunc i32 %1604 to i8
  store i8 %1605, i8* %38, align 1
  %1606 = lshr i32 %1587, 31
  %1607 = xor i32 %1604, %1606
  %1608 = add nuw nsw i32 %1607, %1604
  %1609 = icmp eq i32 %1608, 2
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %39, align 1
  %1611 = add i64 %1580, 19
  store i64 %1611, i64* %3, align 8
  store i32 %1588, i32* %1586, align 4
  %1612 = load i64, i64* %RBP.i, align 8
  %1613 = add i64 %1612, -16
  %1614 = load i64, i64* %3, align 8
  %1615 = add i64 %1614, 4
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1613 to i64*
  %1617 = load i64, i64* %1616, align 8
  store i64 %1617, i64* %RDX.i1697, align 8
  %1618 = add i64 %1617, 1092
  %1619 = add i64 %1614, 10
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i32*
  %1621 = load i32, i32* %1620, align 4
  %1622 = zext i32 %1621 to i64
  store i64 %1622, i64* %RAX.i691, align 8
  %1623 = add i64 %1614, 14
  store i64 %1623, i64* %3, align 8
  %1624 = load i64, i64* %1616, align 8
  store i64 %1624, i64* %RDX.i1697, align 8
  %1625 = add i64 %1624, 64080
  %1626 = add i64 %1614, 20
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1625 to i32*
  %1628 = load i32, i32* %1627, align 4
  %1629 = add i32 %1628, 1
  %1630 = zext i32 %1629 to i64
  store i64 %1630, i64* %RCX.i1597, align 8
  %1631 = lshr i32 %1629, 31
  %1632 = sub i32 %1621, %1629
  %1633 = icmp ult i32 %1621, %1629
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %26, align 1
  %1635 = and i32 %1632, 255
  %1636 = tail call i32 @llvm.ctpop.i32(i32 %1635)
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %32, align 1
  %1640 = xor i32 %1629, %1621
  %1641 = xor i32 %1640, %1632
  %1642 = lshr i32 %1641, 4
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  store i8 %1644, i8* %33, align 1
  %1645 = icmp eq i32 %1632, 0
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %36, align 1
  %1647 = lshr i32 %1632, 31
  %1648 = trunc i32 %1647 to i8
  store i8 %1648, i8* %38, align 1
  %1649 = lshr i32 %1621, 31
  %1650 = xor i32 %1631, %1649
  %1651 = xor i32 %1647, %1649
  %1652 = add nuw nsw i32 %1651, %1650
  %1653 = icmp eq i32 %1652, 2
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %39, align 1
  %.v129 = select i1 %1645, i64 31, i64 36
  %1655 = add i64 %1614, %.v129
  store i64 %1655, i64* %3, align 8
  br i1 %1645, label %block_.L_40735b.backedge, label %block_.L_4077dd

block_.L_4077dd:                                  ; preds = %block_.L_40777a
  %1656 = add i64 %1612, -17
  %1657 = add i64 %1655, 4
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to i8*
  %1659 = load i8, i8* %1658, align 1
  %1660 = zext i8 %1659 to i64
  store i64 %1660, i64* %RAX.i691, align 8
  %1661 = add i64 %1655, 8
  store i64 %1661, i64* %3, align 8
  %1662 = load i64, i64* %1616, align 8
  store i64 %1662, i64* %RCX.i1597, align 8
  %1663 = zext i8 %1659 to i32
  %1664 = add i64 %1662, 64
  %1665 = add i64 %1655, 11
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i32*
  %1667 = load i32, i32* %1666, align 4
  %1668 = sub i32 %1663, %1667
  %1669 = icmp ult i32 %1663, %1667
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %26, align 1
  %1671 = and i32 %1668, 255
  %1672 = tail call i32 @llvm.ctpop.i32(i32 %1671)
  %1673 = trunc i32 %1672 to i8
  %1674 = and i8 %1673, 1
  %1675 = xor i8 %1674, 1
  store i8 %1675, i8* %32, align 1
  %1676 = xor i32 %1667, %1663
  %1677 = xor i32 %1676, %1668
  %1678 = lshr i32 %1677, 4
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  store i8 %1680, i8* %33, align 1
  %1681 = icmp eq i32 %1668, 0
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %36, align 1
  %1683 = lshr i32 %1668, 31
  %1684 = trunc i32 %1683 to i8
  store i8 %1684, i8* %38, align 1
  %1685 = lshr i32 %1667, 31
  %1686 = add nuw nsw i32 %1683, %1685
  %1687 = icmp eq i32 %1686, 2
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %39, align 1
  %.v130 = select i1 %1681, i64 33, i64 17
  %1689 = add i64 %1655, %.v130
  %1690 = add i64 %1689, 4
  store i64 %1690, i64* %3, align 8
  br i1 %1681, label %block_.L_4077fe, label %block_4077ee

block_4077ee:                                     ; preds = %block_.L_4077dd
  %1691 = load i8, i8* %1658, align 1
  %1692 = zext i8 %1691 to i64
  store i64 %1692, i64* %RAX.i691, align 8
  %1693 = add i64 %1689, 8
  store i64 %1693, i64* %3, align 8
  %1694 = load i64, i64* %1616, align 8
  store i64 %1694, i64* %RCX.i1597, align 8
  %1695 = add i64 %1694, 64
  %1696 = zext i8 %1691 to i32
  %1697 = add i64 %1689, 11
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1695 to i32*
  store i32 %1696, i32* %1698, align 4
  br label %block_.L_40735b.backedge

block_.L_4077fe:                                  ; preds = %block_.L_4077dd
  %1699 = load i64, i64* %1616, align 8
  store i64 %1699, i64* %RAX.i691, align 8
  %1700 = add i64 %1699, 3152
  %1701 = add i64 %1689, 11
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1700 to i64*
  %1703 = load i64, i64* %1702, align 8
  store i64 %1703, i64* %RAX.i691, align 8
  %1704 = add i64 %1689, 15
  store i64 %1704, i64* %3, align 8
  %1705 = load i64, i64* %1616, align 8
  store i64 %1705, i64* %RCX.i1597, align 8
  %1706 = add i64 %1705, 60
  %1707 = add i64 %1689, 18
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i32*
  %1709 = load i32, i32* %1708, align 4
  %1710 = zext i32 %1709 to i64
  store i64 %1710, i64* %RDX.i1697, align 8
  store i64 %1710, i64* %RCX.i1597, align 8
  %1711 = shl nuw nsw i64 %1710, 2
  %1712 = add i64 %1703, %1711
  %1713 = add i64 %1689, 23
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = zext i32 %1715 to i64
  store i64 %1716, i64* %RDX.i1697, align 8
  %1717 = add i64 %1689, 27
  store i64 %1717, i64* %3, align 8
  %1718 = load i64, i64* %1616, align 8
  store i64 %1718, i64* %RAX.i691, align 8
  %1719 = add i64 %1718, 60
  %1720 = add i64 %1689, 30
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1719 to i32*
  store i32 %1715, i32* %1721, align 4
  %1722 = load i64, i64* %RBP.i, align 8
  %1723 = add i64 %1722, -16
  %1724 = load i64, i64* %3, align 8
  %1725 = add i64 %1724, 4
  store i64 %1725, i64* %3, align 8
  %1726 = inttoptr i64 %1723 to i64*
  %1727 = load i64, i64* %1726, align 8
  store i64 %1727, i64* %RAX.i691, align 8
  %1728 = add i64 %1727, 60
  %1729 = add i64 %1724, 7
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i32*
  %1731 = load i32, i32* %1730, align 4
  %1732 = and i32 %1731, 255
  %1733 = zext i32 %1732 to i64
  store i64 %1733, i64* %RDX.i1697, align 8
  store i8 0, i8* %26, align 1
  %1734 = tail call i32 @llvm.ctpop.i32(i32 %1732)
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  store i8 %1737, i8* %32, align 1
  %1738 = icmp eq i32 %1732, 0
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %1740 = trunc i32 %1731 to i8
  store i8 %1740, i8* %SIL.i1311, align 1
  %1741 = add i64 %1722, -17
  %1742 = add i64 %1724, 20
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i8*
  store i8 %1740, i8* %1743, align 1
  %1744 = load i64, i64* %RBP.i, align 8
  %1745 = add i64 %1744, -16
  %1746 = load i64, i64* %3, align 8
  %1747 = add i64 %1746, 4
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1745 to i64*
  %1749 = load i64, i64* %1748, align 8
  store i64 %1749, i64* %RAX.i691, align 8
  %1750 = add i64 %1749, 60
  %1751 = add i64 %1746, 7
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = lshr i32 %1753, 7
  %1755 = trunc i32 %1754 to i8
  %1756 = and i8 %1755, 1
  %1757 = lshr i32 %1753, 8
  %1758 = zext i32 %1757 to i64
  store i64 %1758, i64* %RDX.i1697, align 8
  store i8 %1756, i8* %26, align 1
  %1759 = and i32 %1757, 255
  %1760 = tail call i32 @llvm.ctpop.i32(i32 %1759)
  %1761 = trunc i32 %1760 to i8
  %1762 = and i8 %1761, 1
  %1763 = xor i8 %1762, 1
  store i8 %1763, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1764 = icmp eq i32 %1757, 0
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %1766 = add i64 %1746, 13
  store i64 %1766, i64* %3, align 8
  store i32 %1757, i32* %1752, align 4
  %1767 = load i64, i64* %RBP.i, align 8
  %1768 = add i64 %1767, -16
  %1769 = load i64, i64* %3, align 8
  %1770 = add i64 %1769, 4
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1768 to i64*
  %1772 = load i64, i64* %1771, align 8
  store i64 %1772, i64* %RAX.i691, align 8
  %1773 = add i64 %1772, 24
  %1774 = add i64 %1769, 8
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i32*
  %1776 = load i32, i32* %1775, align 4
  store i8 0, i8* %26, align 1
  %1777 = and i32 %1776, 255
  %1778 = tail call i32 @llvm.ctpop.i32(i32 %1777)
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = xor i8 %1780, 1
  store i8 %1781, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %1782 = icmp eq i32 %1776, 0
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %36, align 1
  %1784 = lshr i32 %1776, 31
  %1785 = trunc i32 %1784 to i8
  store i8 %1785, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v131 = select i1 %1782, i64 14, i64 82
  %1786 = add i64 %1769, %.v131
  store i64 %1786, i64* %3, align 8
  br i1 %1782, label %block_40784b, label %block_.L_40788f

block_40784b:                                     ; preds = %block_.L_4077fe
  %1787 = add i64 %1786, 4
  store i64 %1787, i64* %3, align 8
  %1788 = load i64, i64* %1771, align 8
  store i64 %1788, i64* %RAX.i691, align 8
  %1789 = add i64 %1788, 28
  %1790 = add i64 %1786, 8
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i32*
  %1792 = load i32, i32* %1791, align 4
  %1793 = sext i32 %1792 to i64
  store i64 %1793, i64* %RAX.i691, align 8
  %1794 = shl nsw i64 %1793, 2
  %1795 = add nsw i64 %1794, 6391152
  %1796 = add i64 %1786, 15
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = zext i32 %1798 to i64
  store i64 %1799, i64* %RCX.i1597, align 8
  %1800 = add i64 %1786, 19
  store i64 %1800, i64* %3, align 8
  %1801 = load i64, i64* %1771, align 8
  store i64 %1801, i64* %RAX.i691, align 8
  %1802 = add i64 %1801, 24
  %1803 = add i64 %1786, 22
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  store i32 %1798, i32* %1804, align 4
  %1805 = load i64, i64* %RBP.i, align 8
  %1806 = add i64 %1805, -16
  %1807 = load i64, i64* %3, align 8
  %1808 = add i64 %1807, 4
  store i64 %1808, i64* %3, align 8
  %1809 = inttoptr i64 %1806 to i64*
  %1810 = load i64, i64* %1809, align 8
  store i64 %1810, i64* %RAX.i691, align 8
  %1811 = add i64 %1810, 28
  %1812 = add i64 %1807, 7
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  %1814 = load i32, i32* %1813, align 4
  %1815 = add i32 %1814, 1
  %1816 = zext i32 %1815 to i64
  store i64 %1816, i64* %RCX.i1597, align 8
  %1817 = icmp eq i32 %1814, -1
  %1818 = icmp eq i32 %1815, 0
  %1819 = or i1 %1817, %1818
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %26, align 1
  %1821 = and i32 %1815, 255
  %1822 = tail call i32 @llvm.ctpop.i32(i32 %1821)
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  %1825 = xor i8 %1824, 1
  store i8 %1825, i8* %32, align 1
  %1826 = xor i32 %1815, %1814
  %1827 = lshr i32 %1826, 4
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  store i8 %1829, i8* %33, align 1
  %1830 = zext i1 %1818 to i8
  store i8 %1830, i8* %36, align 1
  %1831 = lshr i32 %1815, 31
  %1832 = trunc i32 %1831 to i8
  store i8 %1832, i8* %38, align 1
  %1833 = lshr i32 %1814, 31
  %1834 = xor i32 %1831, %1833
  %1835 = add nuw nsw i32 %1834, %1831
  %1836 = icmp eq i32 %1835, 2
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %39, align 1
  %1838 = add i64 %1807, 13
  store i64 %1838, i64* %3, align 8
  store i32 %1815, i32* %1813, align 4
  %1839 = load i64, i64* %RBP.i, align 8
  %1840 = add i64 %1839, -16
  %1841 = load i64, i64* %3, align 8
  %1842 = add i64 %1841, 4
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1840 to i64*
  %1844 = load i64, i64* %1843, align 8
  store i64 %1844, i64* %RAX.i691, align 8
  %1845 = add i64 %1844, 28
  %1846 = add i64 %1841, 11
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to i32*
  %1848 = load i32, i32* %1847, align 4
  %1849 = add i32 %1848, -512
  %1850 = icmp ult i32 %1848, 512
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %26, align 1
  %1852 = and i32 %1849, 255
  %1853 = tail call i32 @llvm.ctpop.i32(i32 %1852)
  %1854 = trunc i32 %1853 to i8
  %1855 = and i8 %1854, 1
  %1856 = xor i8 %1855, 1
  store i8 %1856, i8* %32, align 1
  %1857 = xor i32 %1849, %1848
  %1858 = lshr i32 %1857, 4
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  store i8 %1860, i8* %33, align 1
  %1861 = icmp eq i32 %1849, 0
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %36, align 1
  %1863 = lshr i32 %1849, 31
  %1864 = trunc i32 %1863 to i8
  store i8 %1864, i8* %38, align 1
  %1865 = lshr i32 %1848, 31
  %1866 = xor i32 %1863, %1865
  %1867 = add nuw nsw i32 %1866, %1865
  %1868 = icmp eq i32 %1867, 2
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %39, align 1
  %.v134 = select i1 %1861, i64 17, i64 28
  %1870 = add i64 %1841, %.v134
  store i64 %1870, i64* %3, align 8
  br i1 %1861, label %block_40787f, label %block_.L_40788a

block_40787f:                                     ; preds = %block_40784b
  %1871 = add i64 %1870, 4
  store i64 %1871, i64* %3, align 8
  %1872 = load i64, i64* %1843, align 8
  store i64 %1872, i64* %RAX.i691, align 8
  %1873 = add i64 %1872, 28
  %1874 = add i64 %1870, 11
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1873 to i32*
  store i32 0, i32* %1875, align 4
  %.pre87 = load i64, i64* %3, align 8
  %.pre89.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40788a

block_.L_40788a:                                  ; preds = %block_40784b, %block_40787f
  %.pre89 = phi i64 [ %.pre89.pre, %block_40787f ], [ %1839, %block_40784b ]
  %1876 = phi i64 [ %.pre87, %block_40787f ], [ %1870, %block_40784b ]
  %1877 = add i64 %1876, 5
  store i64 %1877, i64* %3, align 8
  br label %block_.L_40788f

block_.L_40788f:                                  ; preds = %block_.L_4077fe, %block_.L_40788a
  %1878 = phi i64 [ %.pre89, %block_.L_40788a ], [ %1767, %block_.L_4077fe ]
  %1879 = phi i64 [ %1877, %block_.L_40788a ], [ %1786, %block_.L_4077fe ]
  store i64 0, i64* %RAX.i691, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %32, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i64 1, i64* %RCX.i1597, align 8
  %1880 = add i64 %1878, -16
  %1881 = add i64 %1879, 11
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i64*
  %1883 = load i64, i64* %1882, align 8
  store i64 %1883, i64* %RDX.i1697, align 8
  %1884 = add i64 %1883, 24
  %1885 = add i64 %1879, 14
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i32*
  %1887 = load i32, i32* %1886, align 4
  %1888 = add i32 %1887, -1
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %RSI.i1689, align 8
  %1890 = icmp ne i32 %1887, 0
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %26, align 1
  %1892 = and i32 %1888, 255
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %32, align 1
  %1897 = xor i32 %1887, 16
  %1898 = xor i32 %1897, %1888
  %1899 = lshr i32 %1898, 4
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  store i8 %1901, i8* %33, align 1
  %1902 = icmp eq i32 %1888, 0
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %36, align 1
  %1904 = lshr i32 %1888, 31
  %1905 = trunc i32 %1904 to i8
  store i8 %1905, i8* %38, align 1
  %1906 = lshr i32 %1887, 31
  %1907 = xor i32 %1904, %1906
  %1908 = xor i32 %1904, 1
  %1909 = add nuw nsw i32 %1907, %1908
  %1910 = icmp eq i32 %1909, 2
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %39, align 1
  %1912 = add i64 %1879, 20
  store i64 %1912, i64* %3, align 8
  store i32 %1888, i32* %1886, align 4
  %1913 = load i64, i64* %RBP.i, align 8
  %1914 = add i64 %1913, -16
  %1915 = load i64, i64* %3, align 8
  %1916 = add i64 %1915, 4
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1914 to i64*
  %1918 = load i64, i64* %1917, align 8
  store i64 %1918, i64* %RDX.i1697, align 8
  %1919 = add i64 %1918, 24
  %1920 = add i64 %1915, 8
  store i64 %1920, i64* %3, align 8
  %1921 = inttoptr i64 %1919 to i32*
  %1922 = load i32, i32* %1921, align 4
  %1923 = add i32 %1922, -1
  %1924 = icmp eq i32 %1922, 0
  %1925 = zext i1 %1924 to i8
  store i8 %1925, i8* %26, align 1
  %1926 = and i32 %1923, 255
  %1927 = tail call i32 @llvm.ctpop.i32(i32 %1926)
  %1928 = trunc i32 %1927 to i8
  %1929 = and i8 %1928, 1
  %1930 = xor i8 %1929, 1
  store i8 %1930, i8* %32, align 1
  %1931 = xor i32 %1923, %1922
  %1932 = lshr i32 %1931, 4
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  store i8 %1934, i8* %33, align 1
  %1935 = icmp eq i32 %1923, 0
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %36, align 1
  %1937 = lshr i32 %1923, 31
  %1938 = trunc i32 %1937 to i8
  store i8 %1938, i8* %38, align 1
  %1939 = lshr i32 %1922, 31
  %1940 = xor i32 %1937, %1939
  %1941 = add nuw nsw i32 %1940, %1939
  %1942 = icmp eq i32 %1941, 2
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %39, align 1
  %1944 = load i32, i32* %ECX.i1591, align 4
  %1945 = zext i32 %1944 to i64
  %1946 = load i64, i64* %RAX.i691, align 8
  %1947 = select i1 %1935, i64 %1945, i64 %1946
  %1948 = and i64 %1947, 4294967295
  store i64 %1948, i64* %RAX.i691, align 8
  %1949 = add i64 %1913, -17
  %1950 = add i64 %1915, 15
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i8*
  %1952 = load i8, i8* %1951, align 1
  %1953 = zext i8 %1952 to i64
  %1954 = and i64 %1947, 4294967295
  %1955 = xor i64 %1954, %1953
  %1956 = trunc i64 %1955 to i32
  store i64 %1955, i64* %RCX.i1597, align 8
  store i8 0, i8* %26, align 1
  %1957 = and i32 %1956, 255
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957)
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %32, align 1
  %1962 = icmp eq i32 %1956, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %36, align 1
  %1964 = lshr i32 %1956, 31
  %1965 = trunc i32 %1964 to i8
  store i8 %1965, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %1966 = trunc i64 %1955 to i8
  store i8 %1966, i8* %DIL.i1404, align 1
  %1967 = add i64 %1915, 24
  store i64 %1967, i64* %3, align 8
  store i8 %1966, i8* %1951, align 1
  %1968 = load i64, i64* %RBP.i, align 8
  %1969 = add i64 %1968, -16
  %1970 = load i64, i64* %3, align 8
  %1971 = add i64 %1970, 4
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1969 to i64*
  %1973 = load i64, i64* %1972, align 8
  store i64 %1973, i64* %RDX.i1697, align 8
  %1974 = add i64 %1973, 1092
  %1975 = add i64 %1970, 10
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1974 to i32*
  %1977 = load i32, i32* %1976, align 4
  %1978 = add i32 %1977, 1
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RAX.i691, align 8
  %1980 = icmp eq i32 %1977, -1
  %1981 = icmp eq i32 %1978, 0
  %1982 = or i1 %1980, %1981
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %26, align 1
  %1984 = and i32 %1978, 255
  %1985 = tail call i32 @llvm.ctpop.i32(i32 %1984)
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  %1988 = xor i8 %1987, 1
  store i8 %1988, i8* %32, align 1
  %1989 = xor i32 %1978, %1977
  %1990 = lshr i32 %1989, 4
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  store i8 %1992, i8* %33, align 1
  %1993 = zext i1 %1981 to i8
  store i8 %1993, i8* %36, align 1
  %1994 = lshr i32 %1978, 31
  %1995 = trunc i32 %1994 to i8
  store i8 %1995, i8* %38, align 1
  %1996 = lshr i32 %1977, 31
  %1997 = xor i32 %1994, %1996
  %1998 = add nuw nsw i32 %1997, %1994
  %1999 = icmp eq i32 %1998, 2
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %39, align 1
  %2001 = add i64 %1970, 19
  store i64 %2001, i64* %3, align 8
  store i32 %1978, i32* %1976, align 4
  %2002 = load i64, i64* %RBP.i, align 8
  %2003 = add i64 %2002, -17
  %2004 = load i64, i64* %3, align 8
  %2005 = add i64 %2004, 4
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2003 to i8*
  %2007 = load i8, i8* %2006, align 1
  %2008 = zext i8 %2007 to i32
  %2009 = add nuw nsw i32 %2008, 4
  %2010 = zext i32 %2009 to i64
  store i64 %2010, i64* %RAX.i691, align 8
  store i8 0, i8* %26, align 1
  %2011 = and i32 %2009, 255
  %2012 = tail call i32 @llvm.ctpop.i32(i32 %2011)
  %2013 = trunc i32 %2012 to i8
  %2014 = and i8 %2013, 1
  %2015 = xor i8 %2014, 1
  store i8 %2015, i8* %32, align 1
  %2016 = xor i32 %2009, %2008
  %2017 = lshr i32 %2016, 4
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  store i8 %2019, i8* %33, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %2020 = add i64 %2002, -16
  %2021 = add i64 %2004, 11
  store i64 %2021, i64* %3, align 8
  %2022 = inttoptr i64 %2020 to i64*
  %2023 = load i64, i64* %2022, align 8
  store i64 %2023, i64* %RDX.i1697, align 8
  %2024 = add i64 %2023, 16
  %2025 = add i64 %2004, 14
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i32*
  store i32 %2009, i32* %2026, align 4
  %2027 = load i64, i64* %RBP.i, align 8
  %2028 = add i64 %2027, -16
  %2029 = load i64, i64* %3, align 8
  %2030 = add i64 %2029, 4
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2028 to i64*
  %2032 = load i64, i64* %2031, align 8
  store i64 %2032, i64* %RDX.i1697, align 8
  %2033 = add i64 %2032, 3152
  %2034 = add i64 %2029, 11
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i64*
  %2036 = load i64, i64* %2035, align 8
  store i64 %2036, i64* %RDX.i1697, align 8
  %2037 = add i64 %2029, 15
  store i64 %2037, i64* %3, align 8
  %2038 = load i64, i64* %2031, align 8
  store i64 %2038, i64* %R8.i1644, align 8
  %2039 = add i64 %2038, 60
  %2040 = add i64 %2029, 19
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i32*
  %2042 = load i32, i32* %2041, align 4
  %2043 = zext i32 %2042 to i64
  store i64 %2043, i64* %RAX.i691, align 8
  store i64 %2043, i64* %R8.i1644, align 8
  %2044 = shl nuw nsw i64 %2043, 2
  %2045 = add i64 %2036, %2044
  %2046 = add i64 %2029, 26
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i32*
  %2048 = load i32, i32* %2047, align 4
  %2049 = zext i32 %2048 to i64
  store i64 %2049, i64* %RAX.i691, align 8
  %2050 = add i64 %2029, 30
  store i64 %2050, i64* %3, align 8
  %2051 = load i64, i64* %2031, align 8
  store i64 %2051, i64* %RDX.i1697, align 8
  %2052 = add i64 %2051, 60
  %2053 = add i64 %2029, 33
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to i32*
  store i32 %2048, i32* %2054, align 4
  %2055 = load i64, i64* %RBP.i, align 8
  %2056 = add i64 %2055, -16
  %2057 = load i64, i64* %3, align 8
  %2058 = add i64 %2057, 4
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2056 to i64*
  %2060 = load i64, i64* %2059, align 8
  store i64 %2060, i64* %RDX.i1697, align 8
  %2061 = add i64 %2060, 60
  %2062 = add i64 %2057, 7
  store i64 %2062, i64* %3, align 8
  %2063 = inttoptr i64 %2061 to i32*
  %2064 = load i32, i32* %2063, align 4
  %2065 = and i32 %2064, 255
  store i8 0, i8* %26, align 1
  %2066 = tail call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  store i8 %2069, i8* %32, align 1
  %2070 = icmp eq i32 %2065, 0
  %2071 = zext i1 %2070 to i8
  store i8 %2071, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %2072 = trunc i32 %2064 to i8
  store i8 %2072, i8* %DIL.i1404, align 1
  %.mask = and i32 %2064, 255
  %2073 = zext i32 %.mask to i64
  store i64 %2073, i64* %RAX.i691, align 8
  %2074 = add i64 %2057, 23
  store i64 %2074, i64* %3, align 8
  %2075 = load i64, i64* %2059, align 8
  store i64 %2075, i64* %RDX.i1697, align 8
  %2076 = add i64 %2075, 64
  %2077 = add i64 %2057, 26
  store i64 %2077, i64* %3, align 8
  %2078 = inttoptr i64 %2076 to i32*
  store i32 %.mask, i32* %2078, align 4
  %2079 = load i64, i64* %RBP.i, align 8
  %2080 = add i64 %2079, -16
  %2081 = load i64, i64* %3, align 8
  %2082 = add i64 %2081, 4
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2080 to i64*
  %2084 = load i64, i64* %2083, align 8
  store i64 %2084, i64* %RDX.i1697, align 8
  %2085 = add i64 %2084, 60
  %2086 = add i64 %2081, 7
  store i64 %2086, i64* %3, align 8
  %2087 = inttoptr i64 %2085 to i32*
  %2088 = load i32, i32* %2087, align 4
  %2089 = lshr i32 %2088, 7
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = lshr i32 %2088, 8
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RAX.i691, align 8
  store i8 %2091, i8* %26, align 1
  %2094 = and i32 %2092, 255
  %2095 = tail call i32 @llvm.ctpop.i32(i32 %2094)
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = xor i8 %2097, 1
  store i8 %2098, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %2099 = icmp eq i32 %2092, 0
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %2101 = add i64 %2081, 13
  store i64 %2101, i64* %3, align 8
  store i32 %2092, i32* %2087, align 4
  %2102 = load i64, i64* %RBP.i, align 8
  %2103 = add i64 %2102, -16
  %2104 = load i64, i64* %3, align 8
  %2105 = add i64 %2104, 4
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2103 to i64*
  %2107 = load i64, i64* %2106, align 8
  store i64 %2107, i64* %RDX.i1697, align 8
  %2108 = add i64 %2107, 24
  %2109 = add i64 %2104, 8
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i32*
  %2111 = load i32, i32* %2110, align 4
  store i8 0, i8* %26, align 1
  %2112 = and i32 %2111, 255
  %2113 = tail call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  store i8 %2116, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %2117 = icmp eq i32 %2111, 0
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %36, align 1
  %2119 = lshr i32 %2111, 31
  %2120 = trunc i32 %2119 to i8
  store i8 %2120, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v132 = select i1 %2117, i64 14, i64 82
  %2121 = add i64 %2104, %.v132
  store i64 %2121, i64* %3, align 8
  br i1 %2117, label %block_407932, label %block_.L_407976

block_407932:                                     ; preds = %block_.L_40788f
  %2122 = add i64 %2121, 4
  store i64 %2122, i64* %3, align 8
  %2123 = load i64, i64* %2106, align 8
  store i64 %2123, i64* %RAX.i691, align 8
  %2124 = add i64 %2123, 28
  %2125 = add i64 %2121, 8
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i32*
  %2127 = load i32, i32* %2126, align 4
  %2128 = sext i32 %2127 to i64
  store i64 %2128, i64* %RAX.i691, align 8
  %2129 = shl nsw i64 %2128, 2
  %2130 = add nsw i64 %2129, 6391152
  %2131 = add i64 %2121, 15
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2130 to i32*
  %2133 = load i32, i32* %2132, align 4
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RCX.i1597, align 8
  %2135 = add i64 %2121, 19
  store i64 %2135, i64* %3, align 8
  %2136 = load i64, i64* %2106, align 8
  store i64 %2136, i64* %RAX.i691, align 8
  %2137 = add i64 %2136, 24
  %2138 = add i64 %2121, 22
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i32*
  store i32 %2133, i32* %2139, align 4
  %2140 = load i64, i64* %RBP.i, align 8
  %2141 = add i64 %2140, -16
  %2142 = load i64, i64* %3, align 8
  %2143 = add i64 %2142, 4
  store i64 %2143, i64* %3, align 8
  %2144 = inttoptr i64 %2141 to i64*
  %2145 = load i64, i64* %2144, align 8
  store i64 %2145, i64* %RAX.i691, align 8
  %2146 = add i64 %2145, 28
  %2147 = add i64 %2142, 7
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i32*
  %2149 = load i32, i32* %2148, align 4
  %2150 = add i32 %2149, 1
  %2151 = zext i32 %2150 to i64
  store i64 %2151, i64* %RCX.i1597, align 8
  %2152 = icmp eq i32 %2149, -1
  %2153 = icmp eq i32 %2150, 0
  %2154 = or i1 %2152, %2153
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %26, align 1
  %2156 = and i32 %2150, 255
  %2157 = tail call i32 @llvm.ctpop.i32(i32 %2156)
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = xor i8 %2159, 1
  store i8 %2160, i8* %32, align 1
  %2161 = xor i32 %2150, %2149
  %2162 = lshr i32 %2161, 4
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  store i8 %2164, i8* %33, align 1
  %2165 = zext i1 %2153 to i8
  store i8 %2165, i8* %36, align 1
  %2166 = lshr i32 %2150, 31
  %2167 = trunc i32 %2166 to i8
  store i8 %2167, i8* %38, align 1
  %2168 = lshr i32 %2149, 31
  %2169 = xor i32 %2166, %2168
  %2170 = add nuw nsw i32 %2169, %2166
  %2171 = icmp eq i32 %2170, 2
  %2172 = zext i1 %2171 to i8
  store i8 %2172, i8* %39, align 1
  %2173 = add i64 %2142, 13
  store i64 %2173, i64* %3, align 8
  store i32 %2150, i32* %2148, align 4
  %2174 = load i64, i64* %RBP.i, align 8
  %2175 = add i64 %2174, -16
  %2176 = load i64, i64* %3, align 8
  %2177 = add i64 %2176, 4
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2175 to i64*
  %2179 = load i64, i64* %2178, align 8
  store i64 %2179, i64* %RAX.i691, align 8
  %2180 = add i64 %2179, 28
  %2181 = add i64 %2176, 11
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i32*
  %2183 = load i32, i32* %2182, align 4
  %2184 = add i32 %2183, -512
  %2185 = icmp ult i32 %2183, 512
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %26, align 1
  %2187 = and i32 %2184, 255
  %2188 = tail call i32 @llvm.ctpop.i32(i32 %2187)
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  %2191 = xor i8 %2190, 1
  store i8 %2191, i8* %32, align 1
  %2192 = xor i32 %2184, %2183
  %2193 = lshr i32 %2192, 4
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  store i8 %2195, i8* %33, align 1
  %2196 = icmp eq i32 %2184, 0
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %36, align 1
  %2198 = lshr i32 %2184, 31
  %2199 = trunc i32 %2198 to i8
  store i8 %2199, i8* %38, align 1
  %2200 = lshr i32 %2183, 31
  %2201 = xor i32 %2198, %2200
  %2202 = add nuw nsw i32 %2201, %2200
  %2203 = icmp eq i32 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %39, align 1
  %.v133 = select i1 %2196, i64 17, i64 28
  %2205 = add i64 %2176, %.v133
  store i64 %2205, i64* %3, align 8
  br i1 %2196, label %block_407966, label %block_.L_407971

block_407966:                                     ; preds = %block_407932
  %2206 = add i64 %2205, 4
  store i64 %2206, i64* %3, align 8
  %2207 = load i64, i64* %2178, align 8
  store i64 %2207, i64* %RAX.i691, align 8
  %2208 = add i64 %2207, 28
  %2209 = add i64 %2205, 11
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i32*
  store i32 0, i32* %2210, align 4
  %.pre90 = load i64, i64* %3, align 8
  %.pre91.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_407971

block_.L_407971:                                  ; preds = %block_407932, %block_407966
  %.pre91 = phi i64 [ %.pre91.pre, %block_407966 ], [ %2174, %block_407932 ]
  %2211 = phi i64 [ %.pre90, %block_407966 ], [ %2205, %block_407932 ]
  %2212 = add i64 %2211, 5
  store i64 %2212, i64* %3, align 8
  br label %block_.L_407976

block_.L_407976:                                  ; preds = %block_.L_40788f, %block_.L_407971
  %2213 = phi i64 [ %.pre91, %block_.L_407971 ], [ %2102, %block_.L_40788f ]
  %2214 = phi i64 [ %2212, %block_.L_407971 ], [ %2121, %block_.L_40788f ]
  store i64 0, i64* %RAX.i691, align 8
  store i8 0, i8* %26, align 1
  store i8 1, i8* %32, align 1
  store i8 1, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i64 1, i64* %RCX.i1597, align 8
  %2215 = add i64 %2213, -16
  %2216 = add i64 %2214, 11
  store i64 %2216, i64* %3, align 8
  %2217 = inttoptr i64 %2215 to i64*
  %2218 = load i64, i64* %2217, align 8
  store i64 %2218, i64* %RDX.i1697, align 8
  %2219 = add i64 %2218, 24
  %2220 = add i64 %2214, 14
  store i64 %2220, i64* %3, align 8
  %2221 = inttoptr i64 %2219 to i32*
  %2222 = load i32, i32* %2221, align 4
  %2223 = add i32 %2222, -1
  %2224 = zext i32 %2223 to i64
  store i64 %2224, i64* %RSI.i1689, align 8
  %2225 = icmp ne i32 %2222, 0
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %26, align 1
  %2227 = and i32 %2223, 255
  %2228 = tail call i32 @llvm.ctpop.i32(i32 %2227)
  %2229 = trunc i32 %2228 to i8
  %2230 = and i8 %2229, 1
  %2231 = xor i8 %2230, 1
  store i8 %2231, i8* %32, align 1
  %2232 = xor i32 %2222, 16
  %2233 = xor i32 %2232, %2223
  %2234 = lshr i32 %2233, 4
  %2235 = trunc i32 %2234 to i8
  %2236 = and i8 %2235, 1
  store i8 %2236, i8* %33, align 1
  %2237 = icmp eq i32 %2223, 0
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %36, align 1
  %2239 = lshr i32 %2223, 31
  %2240 = trunc i32 %2239 to i8
  store i8 %2240, i8* %38, align 1
  %2241 = lshr i32 %2222, 31
  %2242 = xor i32 %2239, %2241
  %2243 = xor i32 %2239, 1
  %2244 = add nuw nsw i32 %2242, %2243
  %2245 = icmp eq i32 %2244, 2
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %39, align 1
  %2247 = add i64 %2214, 20
  store i64 %2247, i64* %3, align 8
  store i32 %2223, i32* %2221, align 4
  %2248 = load i64, i64* %RBP.i, align 8
  %2249 = add i64 %2248, -16
  %2250 = load i64, i64* %3, align 8
  %2251 = add i64 %2250, 4
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2249 to i64*
  %2253 = load i64, i64* %2252, align 8
  store i64 %2253, i64* %RDX.i1697, align 8
  %2254 = add i64 %2253, 24
  %2255 = add i64 %2250, 8
  store i64 %2255, i64* %3, align 8
  %2256 = inttoptr i64 %2254 to i32*
  %2257 = load i32, i32* %2256, align 4
  %2258 = add i32 %2257, -1
  %2259 = icmp eq i32 %2257, 0
  %2260 = zext i1 %2259 to i8
  store i8 %2260, i8* %26, align 1
  %2261 = and i32 %2258, 255
  %2262 = tail call i32 @llvm.ctpop.i32(i32 %2261)
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  %2265 = xor i8 %2264, 1
  store i8 %2265, i8* %32, align 1
  %2266 = xor i32 %2258, %2257
  %2267 = lshr i32 %2266, 4
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  store i8 %2269, i8* %33, align 1
  %2270 = icmp eq i32 %2258, 0
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %36, align 1
  %2272 = lshr i32 %2258, 31
  %2273 = trunc i32 %2272 to i8
  store i8 %2273, i8* %38, align 1
  %2274 = lshr i32 %2257, 31
  %2275 = xor i32 %2272, %2274
  %2276 = add nuw nsw i32 %2275, %2274
  %2277 = icmp eq i32 %2276, 2
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %39, align 1
  %2279 = load i32, i32* %ECX.i1591, align 4
  %2280 = zext i32 %2279 to i64
  %2281 = load i64, i64* %RAX.i691, align 8
  %2282 = select i1 %2270, i64 %2280, i64 %2281
  %2283 = and i64 %2282, 4294967295
  store i64 %2283, i64* %RAX.i691, align 8
  %2284 = add i64 %2250, 15
  store i64 %2284, i64* %3, align 8
  %2285 = load i64, i64* %2252, align 8
  store i64 %2285, i64* %RDX.i1697, align 8
  %2286 = add i64 %2285, 64
  %2287 = add i64 %2250, 18
  store i64 %2287, i64* %3, align 8
  %2288 = trunc i64 %2282 to i32
  %2289 = inttoptr i64 %2286 to i32*
  %2290 = load i32, i32* %2289, align 4
  %2291 = xor i32 %2290, %2288
  %2292 = zext i32 %2291 to i64
  store i64 %2292, i64* %RAX.i691, align 8
  store i8 0, i8* %26, align 1
  %2293 = and i32 %2291, 255
  %2294 = tail call i32 @llvm.ctpop.i32(i32 %2293)
  %2295 = trunc i32 %2294 to i8
  %2296 = and i8 %2295, 1
  %2297 = xor i8 %2296, 1
  store i8 %2297, i8* %32, align 1
  %2298 = icmp eq i32 %2291, 0
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %36, align 1
  %2300 = lshr i32 %2291, 31
  %2301 = trunc i32 %2300 to i8
  store i8 %2301, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %2302 = add i64 %2250, 21
  store i64 %2302, i64* %3, align 8
  store i32 %2291, i32* %2289, align 4
  %2303 = load i64, i64* %RBP.i, align 8
  %2304 = add i64 %2303, -16
  %2305 = load i64, i64* %3, align 8
  %2306 = add i64 %2305, 4
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2304 to i64*
  %2308 = load i64, i64* %2307, align 8
  store i64 %2308, i64* %RDX.i1697, align 8
  %2309 = add i64 %2308, 1092
  %2310 = add i64 %2305, 10
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i32*
  %2312 = load i32, i32* %2311, align 4
  %2313 = add i32 %2312, 1
  %2314 = zext i32 %2313 to i64
  store i64 %2314, i64* %RAX.i691, align 8
  %2315 = icmp eq i32 %2312, -1
  %2316 = icmp eq i32 %2313, 0
  %2317 = or i1 %2315, %2316
  %2318 = zext i1 %2317 to i8
  store i8 %2318, i8* %26, align 1
  %2319 = and i32 %2313, 255
  %2320 = tail call i32 @llvm.ctpop.i32(i32 %2319)
  %2321 = trunc i32 %2320 to i8
  %2322 = and i8 %2321, 1
  %2323 = xor i8 %2322, 1
  store i8 %2323, i8* %32, align 1
  %2324 = xor i32 %2313, %2312
  %2325 = lshr i32 %2324, 4
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  store i8 %2327, i8* %33, align 1
  %2328 = zext i1 %2316 to i8
  store i8 %2328, i8* %36, align 1
  %2329 = lshr i32 %2313, 31
  %2330 = trunc i32 %2329 to i8
  store i8 %2330, i8* %38, align 1
  %2331 = lshr i32 %2312, 31
  %2332 = xor i32 %2329, %2331
  %2333 = add nuw nsw i32 %2332, %2329
  %2334 = icmp eq i32 %2333, 2
  %2335 = zext i1 %2334 to i8
  store i8 %2335, i8* %39, align 1
  %2336 = add i64 %2305, 19
  store i64 %2336, i64* %3, align 8
  store i32 %2313, i32* %2311, align 4
  br label %block_.L_40735b.backedge

block_.L_4079b7:                                  ; preds = %entry
  %2337 = add i64 %40, 4
  store i64 %2337, i64* %3, align 8
  %2338 = load i64, i64* %20, align 8
  store i64 %2338, i64* %RAX.i691, align 8
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i689 = getelementptr inbounds %union.anon, %union.anon* %2339, i64 0, i32 0
  %2340 = add i64 %2338, 3184
  %2341 = add i64 %40, 10
  store i64 %2341, i64* %3, align 8
  %2342 = inttoptr i64 %2340 to i32*
  %2343 = load i32, i32* %2342, align 4
  %2344 = zext i32 %2343 to i64
  store i64 %2344, i64* %RCX.i689, align 8
  %2345 = add i64 %16, -24
  %2346 = add i64 %40, 13
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i32*
  store i32 %2343, i32* %2347, align 4
  %2348 = load i64, i64* %RBP.i, align 8
  %2349 = add i64 %2348, -16
  %2350 = load i64, i64* %3, align 8
  %2351 = add i64 %2350, 4
  store i64 %2351, i64* %3, align 8
  %2352 = inttoptr i64 %2349 to i64*
  %2353 = load i64, i64* %2352, align 8
  store i64 %2353, i64* %RAX.i691, align 8
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i679 = bitcast %union.anon* %2354 to i8*
  %2355 = add i64 %2353, 12
  %2356 = add i64 %2350, 7
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i8*
  %2358 = load i8, i8* %2357, align 1
  store i8 %2358, i8* %DL.i679, align 1
  %2359 = add i64 %2348, -25
  %2360 = add i64 %2350, 10
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i8*
  store i8 %2358, i8* %2361, align 1
  %2362 = load i64, i64* %RBP.i, align 8
  %2363 = add i64 %2362, -16
  %2364 = load i64, i64* %3, align 8
  %2365 = add i64 %2364, 4
  store i64 %2365, i64* %3, align 8
  %2366 = inttoptr i64 %2363 to i64*
  %2367 = load i64, i64* %2366, align 8
  store i64 %2367, i64* %RAX.i691, align 8
  %2368 = add i64 %2367, 16
  %2369 = add i64 %2364, 7
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RCX.i689, align 8
  %2373 = add i64 %2362, -32
  %2374 = add i64 %2364, 10
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  store i32 %2371, i32* %2375, align 4
  %2376 = load i64, i64* %RBP.i, align 8
  %2377 = add i64 %2376, -16
  %2378 = load i64, i64* %3, align 8
  %2379 = add i64 %2378, 4
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2377 to i64*
  %2381 = load i64, i64* %2380, align 8
  store i64 %2381, i64* %RAX.i691, align 8
  %2382 = add i64 %2381, 1092
  %2383 = add i64 %2378, 10
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2382 to i32*
  %2385 = load i32, i32* %2384, align 4
  %2386 = zext i32 %2385 to i64
  store i64 %2386, i64* %RCX.i689, align 8
  %2387 = add i64 %2376, -36
  %2388 = add i64 %2378, 13
  store i64 %2388, i64* %3, align 8
  %2389 = inttoptr i64 %2387 to i32*
  store i32 %2385, i32* %2389, align 4
  %2390 = load i64, i64* %RBP.i, align 8
  %2391 = add i64 %2390, -16
  %2392 = load i64, i64* %3, align 8
  %2393 = add i64 %2392, 4
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2391 to i64*
  %2395 = load i64, i64* %2394, align 8
  store i64 %2395, i64* %RAX.i691, align 8
  %2396 = add i64 %2395, 64
  %2397 = add i64 %2392, 7
  store i64 %2397, i64* %3, align 8
  %2398 = inttoptr i64 %2396 to i32*
  %2399 = load i32, i32* %2398, align 4
  %2400 = zext i32 %2399 to i64
  store i64 %2400, i64* %RCX.i689, align 8
  %2401 = add i64 %2390, -40
  %2402 = add i64 %2392, 10
  store i64 %2402, i64* %3, align 8
  %2403 = inttoptr i64 %2401 to i32*
  store i32 %2399, i32* %2403, align 4
  %2404 = load i64, i64* %RBP.i, align 8
  %2405 = add i64 %2404, -16
  %2406 = load i64, i64* %3, align 8
  %2407 = add i64 %2406, 4
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2405 to i64*
  %2409 = load i64, i64* %2408, align 8
  store i64 %2409, i64* %RAX.i691, align 8
  %2410 = add i64 %2409, 3152
  %2411 = add i64 %2406, 11
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to i64*
  %2413 = load i64, i64* %2412, align 8
  store i64 %2413, i64* %RAX.i691, align 8
  %2414 = add i64 %2404, -48
  %2415 = add i64 %2406, 15
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2414 to i64*
  store i64 %2413, i64* %2416, align 8
  %2417 = load i64, i64* %RBP.i, align 8
  %2418 = add i64 %2417, -16
  %2419 = load i64, i64* %3, align 8
  %2420 = add i64 %2419, 4
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2418 to i64*
  %2422 = load i64, i64* %2421, align 8
  store i64 %2422, i64* %RAX.i691, align 8
  %2423 = add i64 %2422, 60
  %2424 = add i64 %2419, 7
  store i64 %2424, i64* %3, align 8
  %2425 = inttoptr i64 %2423 to i32*
  %2426 = load i32, i32* %2425, align 4
  %2427 = zext i32 %2426 to i64
  store i64 %2427, i64* %RCX.i689, align 8
  %2428 = add i64 %2417, -52
  %2429 = add i64 %2419, 10
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i32*
  store i32 %2426, i32* %2430, align 4
  %2431 = load i64, i64* %RBP.i, align 8
  %2432 = add i64 %2431, -16
  %2433 = load i64, i64* %3, align 8
  %2434 = add i64 %2433, 4
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2432 to i64*
  %2436 = load i64, i64* %2435, align 8
  store i64 %2436, i64* %RAX.i691, align 8
  %2437 = add i64 %2433, 7
  store i64 %2437, i64* %3, align 8
  %2438 = inttoptr i64 %2436 to i64*
  %2439 = load i64, i64* %2438, align 8
  store i64 %2439, i64* %RAX.i691, align 8
  %2440 = add i64 %2439, 24
  %2441 = add i64 %2433, 11
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2440 to i64*
  %2443 = load i64, i64* %2442, align 8
  store i64 %2443, i64* %RAX.i691, align 8
  %2444 = add i64 %2431, -64
  %2445 = add i64 %2433, 15
  store i64 %2445, i64* %3, align 8
  %2446 = inttoptr i64 %2444 to i64*
  store i64 %2443, i64* %2446, align 8
  %2447 = load i64, i64* %RBP.i, align 8
  %2448 = add i64 %2447, -16
  %2449 = load i64, i64* %3, align 8
  %2450 = add i64 %2449, 4
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2448 to i64*
  %2452 = load i64, i64* %2451, align 8
  store i64 %2452, i64* %RAX.i691, align 8
  %2453 = add i64 %2449, 7
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2452 to i64*
  %2455 = load i64, i64* %2454, align 8
  store i64 %2455, i64* %RAX.i691, align 8
  %2456 = add i64 %2455, 32
  %2457 = add i64 %2449, 10
  store i64 %2457, i64* %3, align 8
  %2458 = inttoptr i64 %2456 to i32*
  %2459 = load i32, i32* %2458, align 4
  %2460 = zext i32 %2459 to i64
  store i64 %2460, i64* %RCX.i689, align 8
  %2461 = add i64 %2447, -68
  %2462 = add i64 %2449, 13
  store i64 %2462, i64* %3, align 8
  %2463 = inttoptr i64 %2461 to i32*
  store i32 %2459, i32* %2463, align 4
  %2464 = load i64, i64* %RBP.i, align 8
  %2465 = add i64 %2464, -68
  %2466 = load i64, i64* %3, align 8
  %2467 = add i64 %2466, 3
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2465 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = zext i32 %2469 to i64
  store i64 %2470, i64* %RCX.i689, align 8
  %2471 = add i64 %2464, -72
  %2472 = add i64 %2466, 6
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i32*
  store i32 %2469, i32* %2473, align 4
  %2474 = load i64, i64* %RBP.i, align 8
  %2475 = add i64 %2474, -16
  %2476 = load i64, i64* %3, align 8
  %2477 = add i64 %2476, 4
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2475 to i64*
  %2479 = load i64, i64* %2478, align 8
  store i64 %2479, i64* %RAX.i691, align 8
  %2480 = add i64 %2479, 64080
  %2481 = add i64 %2476, 10
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = add i32 %2483, 1
  %2485 = zext i32 %2484 to i64
  store i64 %2485, i64* %RCX.i689, align 8
  %2486 = icmp eq i32 %2483, -1
  %2487 = icmp eq i32 %2484, 0
  %2488 = or i1 %2486, %2487
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %26, align 1
  %2490 = and i32 %2484, 255
  %2491 = tail call i32 @llvm.ctpop.i32(i32 %2490)
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  %2494 = xor i8 %2493, 1
  store i8 %2494, i8* %32, align 1
  %2495 = xor i32 %2484, %2483
  %2496 = lshr i32 %2495, 4
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  store i8 %2498, i8* %33, align 1
  %2499 = zext i1 %2487 to i8
  store i8 %2499, i8* %36, align 1
  %2500 = lshr i32 %2484, 31
  %2501 = trunc i32 %2500 to i8
  store i8 %2501, i8* %38, align 1
  %2502 = lshr i32 %2483, 31
  %2503 = xor i32 %2500, %2502
  %2504 = add nuw nsw i32 %2503, %2500
  %2505 = icmp eq i32 %2504, 2
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %39, align 1
  %2507 = add i64 %2474, -76
  %2508 = add i64 %2476, 16
  store i64 %2508, i64* %3, align 8
  %2509 = inttoptr i64 %2507 to i32*
  store i32 %2484, i32* %2509, align 4
  %AL.i438 = bitcast %union.anon* %41 to i8*
  %CL.i439 = bitcast %union.anon* %2339 to i8*
  %RDX.i432 = getelementptr inbounds %union.anon, %union.anon* %2354, i64 0, i32 0
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i427 = getelementptr inbounds %union.anon, %union.anon* %2510, i64 0, i32 0
  %SIL.i346 = bitcast %union.anon* %2510 to i8*
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_407a3a

block_.L_407a3a:                                  ; preds = %block_.L_407a3a.backedge, %block_.L_4079b7
  %2511 = phi i64 [ %.sink65, %block_.L_407a3a.backedge ], [ %.pre93, %block_.L_4079b7 ]
  %2512 = load i64, i64* %RBP.i, align 8
  %2513 = add i64 %2512, -32
  %2514 = add i64 %2511, 4
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2513 to i32*
  %2516 = load i32, i32* %2515, align 4
  store i8 0, i8* %26, align 1
  %2517 = and i32 %2516, 255
  %2518 = tail call i32 @llvm.ctpop.i32(i32 %2517)
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  %2521 = xor i8 %2520, 1
  store i8 %2521, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %2522 = icmp eq i32 %2516, 0
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %36, align 1
  %2524 = lshr i32 %2516, 31
  %2525 = trunc i32 %2524 to i8
  store i8 %2525, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %2526 = icmp ne i8 %2525, 0
  %2527 = or i1 %2522, %2526
  %.v138 = select i1 %2527, i64 210, i64 10
  %2528 = add i64 %2511, %.v138
  store i64 %2528, i64* %3, align 8
  br i1 %2527, label %block_.L_407b0c, label %block_407a44

block_407a44:                                     ; preds = %block_.L_407a3a
  %2529 = add i64 %2528, 5
  br label %block_.L_407a49

block_.L_407a49:                                  ; preds = %block_.L_407a67, %block_407a44
  %2530 = phi i64 [ %2512, %block_407a44 ], [ %.pre94, %block_.L_407a67 ]
  %storemerge35 = phi i64 [ %2529, %block_407a44 ], [ %2737, %block_.L_407a67 ]
  %2531 = add i64 %2530, -68
  %2532 = add i64 %storemerge35, 4
  store i64 %2532, i64* %3, align 8
  %2533 = inttoptr i64 %2531 to i32*
  %2534 = load i32, i32* %2533, align 4
  store i8 0, i8* %26, align 1
  %2535 = and i32 %2534, 255
  %2536 = tail call i32 @llvm.ctpop.i32(i32 %2535)
  %2537 = trunc i32 %2536 to i8
  %2538 = and i8 %2537, 1
  %2539 = xor i8 %2538, 1
  store i8 %2539, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %2540 = icmp eq i32 %2534, 0
  %2541 = zext i1 %2540 to i8
  store i8 %2541, i8* %36, align 1
  %2542 = lshr i32 %2534, 31
  %2543 = trunc i32 %2542 to i8
  store i8 %2543, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v139 = select i1 %2540, i64 10, i64 15
  %2544 = add i64 %storemerge35, %.v139
  store i64 %2544, i64* %3, align 8
  br i1 %2540, label %block_.L_407cd1.loopexit, label %block_.L_407a58

block_.L_407a58:                                  ; preds = %block_.L_407a49
  %2545 = add i64 %2530, -32
  %2546 = add i64 %2544, 4
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2545 to i32*
  %2548 = load i32, i32* %2547, align 4
  %2549 = add i32 %2548, -1
  %2550 = icmp eq i32 %2548, 0
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %26, align 1
  %2552 = and i32 %2549, 255
  %2553 = tail call i32 @llvm.ctpop.i32(i32 %2552)
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  %2556 = xor i8 %2555, 1
  store i8 %2556, i8* %32, align 1
  %2557 = xor i32 %2549, %2548
  %2558 = lshr i32 %2557, 4
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  store i8 %2560, i8* %33, align 1
  %2561 = icmp eq i32 %2549, 0
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %36, align 1
  %2563 = lshr i32 %2549, 31
  %2564 = trunc i32 %2563 to i8
  store i8 %2564, i8* %38, align 1
  %2565 = lshr i32 %2548, 31
  %2566 = xor i32 %2563, %2565
  %2567 = add nuw nsw i32 %2566, %2565
  %2568 = icmp eq i32 %2567, 2
  %2569 = zext i1 %2568 to i8
  store i8 %2569, i8* %39, align 1
  %.v140 = select i1 %2561, i64 10, i64 15
  %2570 = add i64 %2544, %.v140
  store i64 %2570, i64* %3, align 8
  br i1 %2561, label %block_.L_407ab8.loopexit, label %block_.L_407a67

block_.L_407a67:                                  ; preds = %block_.L_407a58
  %2571 = add i64 %2530, -25
  %2572 = add i64 %2570, 3
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2571 to i8*
  %2574 = load i8, i8* %2573, align 1
  store i8 %2574, i8* %AL.i438, align 1
  %2575 = add i64 %2530, -64
  %2576 = add i64 %2570, 7
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2575 to i64*
  %2578 = load i64, i64* %2577, align 8
  store i64 %2578, i64* %RCX.i689, align 8
  %2579 = add i64 %2570, 9
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2578 to i8*
  store i8 %2574, i8* %2580, align 1
  %2581 = load i64, i64* %RBP.i, align 8
  %2582 = add i64 %2581, -24
  %2583 = load i64, i64* %3, align 8
  %2584 = add i64 %2583, 3
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2582 to i32*
  %2586 = load i32, i32* %2585, align 4
  %2587 = shl i32 %2586, 8
  %2588 = zext i32 %2587 to i64
  store i64 %2588, i64* %RDX.i432, align 8
  %2589 = lshr i32 %2586, 24
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  store i8 %2591, i8* %26, align 1
  store i8 1, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %2592 = icmp eq i32 %2587, 0
  %2593 = zext i1 %2592 to i8
  store i8 %2593, i8* %36, align 1
  %2594 = lshr i32 %2586, 23
  %2595 = trunc i32 %2594 to i8
  %2596 = and i8 %2595, 1
  store i8 %2596, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %2597 = add i64 %2583, 9
  store i64 %2597, i64* %3, align 8
  %2598 = load i32, i32* %2585, align 4
  %2599 = lshr i32 %2598, 23
  %2600 = trunc i32 %2599 to i8
  %2601 = and i8 %2600, 1
  %2602 = lshr i32 %2598, 24
  %2603 = zext i32 %2602 to i64
  store i64 %2603, i64* %RSI.i427, align 8
  store i8 %2601, i8* %26, align 1
  %2604 = tail call i32 @llvm.ctpop.i32(i32 %2602)
  %2605 = trunc i32 %2604 to i8
  %2606 = and i8 %2605, 1
  %2607 = xor i8 %2606, 1
  store i8 %2607, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %2608 = icmp eq i32 %2602, 0
  %2609 = zext i1 %2608 to i8
  store i8 %2609, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %2610 = add i64 %2581, -25
  %2611 = add i64 %2583, 16
  store i64 %2611, i64* %3, align 8
  %2612 = inttoptr i64 %2610 to i8*
  %2613 = load i8, i8* %2612, align 1
  %2614 = zext i8 %2613 to i64
  store i64 %2614, i64* %RDI.i1744, align 8
  %2615 = zext i8 %2613 to i64
  %2616 = xor i64 %2615, %2603
  %2617 = trunc i64 %2616 to i32
  store i8 0, i8* %26, align 1
  %2618 = tail call i32 @llvm.ctpop.i32(i32 %2617)
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  %2621 = xor i8 %2620, 1
  store i8 %2621, i8* %32, align 1
  %2622 = icmp eq i32 %2617, 0
  %2623 = zext i1 %2622 to i8
  store i8 %2623, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i64 %2616, i64* %RSI.i427, align 8
  store i64 %2616, i64* %RCX.i689, align 8
  %2624 = shl nuw nsw i64 %2616, 2
  %2625 = add nuw nsw i64 %2624, 6390128
  %2626 = add i64 %2583, 29
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to i32*
  %2628 = load i32, i32* %2627, align 4
  %2629 = xor i32 %2628, %2587
  %2630 = zext i32 %2629 to i64
  store i64 %2630, i64* %RDX.i432, align 8
  store i8 0, i8* %26, align 1
  %2631 = and i32 %2628, 255
  %2632 = tail call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  store i8 %2635, i8* %32, align 1
  %2636 = icmp eq i32 %2629, 0
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %36, align 1
  %2638 = lshr i32 %2629, 31
  %2639 = trunc i32 %2638 to i8
  store i8 %2639, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %2640 = load i64, i64* %RBP.i, align 8
  %2641 = add i64 %2640, -24
  %2642 = add i64 %2583, 32
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i32*
  store i32 %2629, i32* %2643, align 4
  %2644 = load i64, i64* %RBP.i, align 8
  %2645 = add i64 %2644, -32
  %2646 = load i64, i64* %3, align 8
  %2647 = add i64 %2646, 3
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2645 to i32*
  %2649 = load i32, i32* %2648, align 4
  %2650 = add i32 %2649, -1
  %2651 = zext i32 %2650 to i64
  store i64 %2651, i64* %RDX.i432, align 8
  %2652 = icmp ne i32 %2649, 0
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %26, align 1
  %2654 = and i32 %2650, 255
  %2655 = tail call i32 @llvm.ctpop.i32(i32 %2654)
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  store i8 %2658, i8* %32, align 1
  %2659 = xor i32 %2649, 16
  %2660 = xor i32 %2659, %2650
  %2661 = lshr i32 %2660, 4
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  store i8 %2663, i8* %33, align 1
  %2664 = icmp eq i32 %2650, 0
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %36, align 1
  %2666 = lshr i32 %2650, 31
  %2667 = trunc i32 %2666 to i8
  store i8 %2667, i8* %38, align 1
  %2668 = lshr i32 %2649, 31
  %2669 = xor i32 %2666, %2668
  %2670 = xor i32 %2666, 1
  %2671 = add nuw nsw i32 %2669, %2670
  %2672 = icmp eq i32 %2671, 2
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %39, align 1
  %2674 = add i64 %2646, 9
  store i64 %2674, i64* %3, align 8
  store i32 %2650, i32* %2648, align 4
  %2675 = load i64, i64* %RBP.i, align 8
  %2676 = add i64 %2675, -64
  %2677 = load i64, i64* %3, align 8
  %2678 = add i64 %2677, 4
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2676 to i64*
  %2680 = load i64, i64* %2679, align 8
  %2681 = add i64 %2680, 1
  store i64 %2681, i64* %RCX.i689, align 8
  %2682 = icmp eq i64 %2680, -1
  %2683 = icmp eq i64 %2681, 0
  %2684 = or i1 %2682, %2683
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %26, align 1
  %2686 = trunc i64 %2681 to i32
  %2687 = and i32 %2686, 255
  %2688 = tail call i32 @llvm.ctpop.i32(i32 %2687)
  %2689 = trunc i32 %2688 to i8
  %2690 = and i8 %2689, 1
  %2691 = xor i8 %2690, 1
  store i8 %2691, i8* %32, align 1
  %2692 = xor i64 %2681, %2680
  %2693 = lshr i64 %2692, 4
  %2694 = trunc i64 %2693 to i8
  %2695 = and i8 %2694, 1
  store i8 %2695, i8* %33, align 1
  %2696 = zext i1 %2683 to i8
  store i8 %2696, i8* %36, align 1
  %2697 = lshr i64 %2681, 63
  %2698 = trunc i64 %2697 to i8
  store i8 %2698, i8* %38, align 1
  %2699 = lshr i64 %2680, 63
  %2700 = xor i64 %2697, %2699
  %2701 = add nuw nsw i64 %2700, %2697
  %2702 = icmp eq i64 %2701, 2
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %39, align 1
  %2704 = add i64 %2677, 12
  store i64 %2704, i64* %3, align 8
  store i64 %2681, i64* %2679, align 8
  %2705 = load i64, i64* %RBP.i, align 8
  %2706 = add i64 %2705, -68
  %2707 = load i64, i64* %3, align 8
  %2708 = add i64 %2707, 3
  store i64 %2708, i64* %3, align 8
  %2709 = inttoptr i64 %2706 to i32*
  %2710 = load i32, i32* %2709, align 4
  %2711 = add i32 %2710, -1
  %2712 = zext i32 %2711 to i64
  store i64 %2712, i64* %RDX.i432, align 8
  %2713 = icmp ne i32 %2710, 0
  %2714 = zext i1 %2713 to i8
  store i8 %2714, i8* %26, align 1
  %2715 = and i32 %2711, 255
  %2716 = tail call i32 @llvm.ctpop.i32(i32 %2715)
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  %2719 = xor i8 %2718, 1
  store i8 %2719, i8* %32, align 1
  %2720 = xor i32 %2710, 16
  %2721 = xor i32 %2720, %2711
  %2722 = lshr i32 %2721, 4
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  store i8 %2724, i8* %33, align 1
  %2725 = icmp eq i32 %2711, 0
  %2726 = zext i1 %2725 to i8
  store i8 %2726, i8* %36, align 1
  %2727 = lshr i32 %2711, 31
  %2728 = trunc i32 %2727 to i8
  store i8 %2728, i8* %38, align 1
  %2729 = lshr i32 %2710, 31
  %2730 = xor i32 %2727, %2729
  %2731 = xor i32 %2727, 1
  %2732 = add nuw nsw i32 %2730, %2731
  %2733 = icmp eq i32 %2732, 2
  %2734 = zext i1 %2733 to i8
  store i8 %2734, i8* %39, align 1
  %2735 = add i64 %2707, 9
  store i64 %2735, i64* %3, align 8
  store i32 %2711, i32* %2709, align 4
  %2736 = load i64, i64* %3, align 8
  %2737 = add i64 %2736, -101
  %2738 = add i64 %2736, 5
  store i64 %2738, i64* %3, align 8
  %.pre94 = load i64, i64* %RBP.i, align 8
  br label %block_.L_407a49

block_.L_407ab8.loopexit:                         ; preds = %block_.L_407a58
  br label %block_.L_407ab8

block_.L_407ab8:                                  ; preds = %block_.L_407ab8.loopexit, %block_.L_407b88, %block_407b7c
  %2739 = phi i64 [ %.pre98, %block_407b7c ], [ %3058, %block_.L_407b88 ], [ %2530, %block_.L_407ab8.loopexit ]
  %2740 = phi i64 [ %.pre97, %block_407b7c ], [ %3130, %block_.L_407b88 ], [ %2570, %block_.L_407ab8.loopexit ]
  %.sink41 = phi i64 [ -203, %block_407b7c ], [ -220, %block_.L_407b88 ], [ 86, %block_.L_407ab8.loopexit ]
  %2741 = add i64 %2740, %.sink41
  %2742 = add i64 %2739, -68
  %2743 = add i64 %2741, 4
  store i64 %2743, i64* %3, align 8
  %2744 = inttoptr i64 %2742 to i32*
  %2745 = load i32, i32* %2744, align 4
  store i8 0, i8* %26, align 1
  %2746 = and i32 %2745, 255
  %2747 = tail call i32 @llvm.ctpop.i32(i32 %2746)
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  %2750 = xor i8 %2749, 1
  store i8 %2750, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %2751 = icmp eq i32 %2745, 0
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %36, align 1
  %2753 = lshr i32 %2745, 31
  %2754 = trunc i32 %2753 to i8
  store i8 %2754, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %.v141 = select i1 %2751, i64 10, i64 22
  %2755 = add i64 %2741, %.v141
  store i64 %2755, i64* %3, align 8
  br i1 %2751, label %block_.L_407cd1.sink.split, label %block_.L_407ace

block_.L_407ace:                                  ; preds = %block_.L_407ab8
  %2756 = add i64 %2739, -25
  %2757 = add i64 %2755, 3
  store i64 %2757, i64* %3, align 8
  %2758 = inttoptr i64 %2756 to i8*
  %2759 = load i8, i8* %2758, align 1
  store i8 %2759, i8* %AL.i438, align 1
  %2760 = add i64 %2739, -64
  %2761 = add i64 %2755, 7
  store i64 %2761, i64* %3, align 8
  %2762 = inttoptr i64 %2760 to i64*
  %2763 = load i64, i64* %2762, align 8
  store i64 %2763, i64* %RCX.i689, align 8
  %2764 = add i64 %2755, 9
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2763 to i8*
  store i8 %2759, i8* %2765, align 1
  %2766 = load i64, i64* %RBP.i, align 8
  %2767 = add i64 %2766, -24
  %2768 = load i64, i64* %3, align 8
  %2769 = add i64 %2768, 3
  store i64 %2769, i64* %3, align 8
  %2770 = inttoptr i64 %2767 to i32*
  %2771 = load i32, i32* %2770, align 4
  %2772 = shl i32 %2771, 8
  %2773 = zext i32 %2772 to i64
  store i64 %2773, i64* %RDX.i432, align 8
  %2774 = lshr i32 %2771, 24
  %2775 = trunc i32 %2774 to i8
  %2776 = and i8 %2775, 1
  store i8 %2776, i8* %26, align 1
  store i8 1, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %2777 = icmp eq i32 %2772, 0
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %36, align 1
  %2779 = lshr i32 %2771, 23
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  store i8 %2781, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %2782 = add i64 %2768, 9
  store i64 %2782, i64* %3, align 8
  %2783 = load i32, i32* %2770, align 4
  %2784 = lshr i32 %2783, 23
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = lshr i32 %2783, 24
  %2788 = zext i32 %2787 to i64
  store i64 %2788, i64* %RSI.i427, align 8
  store i8 %2786, i8* %26, align 1
  %2789 = tail call i32 @llvm.ctpop.i32(i32 %2787)
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  %2792 = xor i8 %2791, 1
  store i8 %2792, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %2793 = icmp eq i32 %2787, 0
  %2794 = zext i1 %2793 to i8
  store i8 %2794, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %2795 = add i64 %2766, -25
  %2796 = add i64 %2768, 16
  store i64 %2796, i64* %3, align 8
  %2797 = inttoptr i64 %2795 to i8*
  %2798 = load i8, i8* %2797, align 1
  %2799 = zext i8 %2798 to i64
  store i64 %2799, i64* %RDI.i1744, align 8
  %2800 = zext i8 %2798 to i64
  %2801 = xor i64 %2800, %2788
  %2802 = trunc i64 %2801 to i32
  store i8 0, i8* %26, align 1
  %2803 = tail call i32 @llvm.ctpop.i32(i32 %2802)
  %2804 = trunc i32 %2803 to i8
  %2805 = and i8 %2804, 1
  %2806 = xor i8 %2805, 1
  store i8 %2806, i8* %32, align 1
  %2807 = icmp eq i32 %2802, 0
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i64 %2801, i64* %RSI.i427, align 8
  store i64 %2801, i64* %RCX.i689, align 8
  %2809 = shl nuw nsw i64 %2801, 2
  %2810 = add nuw nsw i64 %2809, 6390128
  %2811 = add i64 %2768, 29
  store i64 %2811, i64* %3, align 8
  %2812 = inttoptr i64 %2810 to i32*
  %2813 = load i32, i32* %2812, align 4
  %2814 = xor i32 %2813, %2772
  %2815 = zext i32 %2814 to i64
  store i64 %2815, i64* %RDX.i432, align 8
  store i8 0, i8* %26, align 1
  %2816 = and i32 %2813, 255
  %2817 = tail call i32 @llvm.ctpop.i32(i32 %2816)
  %2818 = trunc i32 %2817 to i8
  %2819 = and i8 %2818, 1
  %2820 = xor i8 %2819, 1
  store i8 %2820, i8* %32, align 1
  %2821 = icmp eq i32 %2814, 0
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %36, align 1
  %2823 = lshr i32 %2814, 31
  %2824 = trunc i32 %2823 to i8
  store i8 %2824, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %2825 = load i64, i64* %RBP.i, align 8
  %2826 = add i64 %2825, -24
  %2827 = add i64 %2768, 32
  store i64 %2827, i64* %3, align 8
  %2828 = inttoptr i64 %2826 to i32*
  store i32 %2814, i32* %2828, align 4
  %2829 = load i64, i64* %RBP.i, align 8
  %2830 = add i64 %2829, -64
  %2831 = load i64, i64* %3, align 8
  %2832 = add i64 %2831, 4
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2830 to i64*
  %2834 = load i64, i64* %2833, align 8
  %2835 = add i64 %2834, 1
  store i64 %2835, i64* %RCX.i689, align 8
  %2836 = icmp eq i64 %2834, -1
  %2837 = icmp eq i64 %2835, 0
  %2838 = or i1 %2836, %2837
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %26, align 1
  %2840 = trunc i64 %2835 to i32
  %2841 = and i32 %2840, 255
  %2842 = tail call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  store i8 %2845, i8* %32, align 1
  %2846 = xor i64 %2835, %2834
  %2847 = lshr i64 %2846, 4
  %2848 = trunc i64 %2847 to i8
  %2849 = and i8 %2848, 1
  store i8 %2849, i8* %33, align 1
  %2850 = zext i1 %2837 to i8
  store i8 %2850, i8* %36, align 1
  %2851 = lshr i64 %2835, 63
  %2852 = trunc i64 %2851 to i8
  store i8 %2852, i8* %38, align 1
  %2853 = lshr i64 %2834, 63
  %2854 = xor i64 %2851, %2853
  %2855 = add nuw nsw i64 %2854, %2851
  %2856 = icmp eq i64 %2855, 2
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %39, align 1
  %2858 = add i64 %2831, 12
  store i64 %2858, i64* %3, align 8
  store i64 %2835, i64* %2833, align 8
  %2859 = load i64, i64* %RBP.i, align 8
  %2860 = add i64 %2859, -68
  %2861 = load i64, i64* %3, align 8
  %2862 = add i64 %2861, 3
  store i64 %2862, i64* %3, align 8
  %2863 = inttoptr i64 %2860 to i32*
  %2864 = load i32, i32* %2863, align 4
  %2865 = add i32 %2864, -1
  %2866 = zext i32 %2865 to i64
  store i64 %2866, i64* %RDX.i432, align 8
  %2867 = icmp ne i32 %2864, 0
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %26, align 1
  %2869 = and i32 %2865, 255
  %2870 = tail call i32 @llvm.ctpop.i32(i32 %2869)
  %2871 = trunc i32 %2870 to i8
  %2872 = and i8 %2871, 1
  %2873 = xor i8 %2872, 1
  store i8 %2873, i8* %32, align 1
  %2874 = xor i32 %2864, 16
  %2875 = xor i32 %2874, %2865
  %2876 = lshr i32 %2875, 4
  %2877 = trunc i32 %2876 to i8
  %2878 = and i8 %2877, 1
  store i8 %2878, i8* %33, align 1
  %2879 = icmp eq i32 %2865, 0
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %36, align 1
  %2881 = lshr i32 %2865, 31
  %2882 = trunc i32 %2881 to i8
  store i8 %2882, i8* %38, align 1
  %2883 = lshr i32 %2864, 31
  %2884 = xor i32 %2881, %2883
  %2885 = xor i32 %2881, 1
  %2886 = add nuw nsw i32 %2884, %2885
  %2887 = icmp eq i32 %2886, 2
  %2888 = zext i1 %2887 to i8
  store i8 %2888, i8* %39, align 1
  %2889 = add i64 %2861, 9
  store i64 %2889, i64* %3, align 8
  store i32 %2865, i32* %2863, align 4
  %.pre95 = load i64, i64* %RBP.i, align 8
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_407b0c

block_.L_407b0c:                                  ; preds = %block_.L_407ace, %block_.L_407a3a
  %2890 = phi i64 [ %.pre96, %block_.L_407ace ], [ %2528, %block_.L_407a3a ]
  %2891 = phi i64 [ %.pre95, %block_.L_407ace ], [ %2512, %block_.L_407a3a ]
  %2892 = add i64 %2891, -36
  %2893 = add i64 %2890, 3
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i32*
  %2895 = load i32, i32* %2894, align 4
  %2896 = zext i32 %2895 to i64
  store i64 %2896, i64* %RAX.i691, align 8
  %2897 = add i64 %2891, -76
  %2898 = add i64 %2890, 6
  store i64 %2898, i64* %3, align 8
  %2899 = inttoptr i64 %2897 to i32*
  %2900 = load i32, i32* %2899, align 4
  %2901 = sub i32 %2895, %2900
  %2902 = icmp ult i32 %2895, %2900
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %26, align 1
  %2904 = and i32 %2901, 255
  %2905 = tail call i32 @llvm.ctpop.i32(i32 %2904)
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = xor i8 %2907, 1
  store i8 %2908, i8* %32, align 1
  %2909 = xor i32 %2900, %2895
  %2910 = xor i32 %2909, %2901
  %2911 = lshr i32 %2910, 4
  %2912 = trunc i32 %2911 to i8
  %2913 = and i8 %2912, 1
  store i8 %2913, i8* %33, align 1
  %2914 = icmp eq i32 %2901, 0
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %36, align 1
  %2916 = lshr i32 %2901, 31
  %2917 = trunc i32 %2916 to i8
  store i8 %2917, i8* %38, align 1
  %2918 = lshr i32 %2895, 31
  %2919 = lshr i32 %2900, 31
  %2920 = xor i32 %2919, %2918
  %2921 = xor i32 %2916, %2918
  %2922 = add nuw nsw i32 %2921, %2920
  %2923 = icmp eq i32 %2922, 2
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %39, align 1
  %2925 = icmp ne i8 %2917, 0
  %2926 = xor i1 %2925, %2923
  %2927 = or i1 %2914, %2926
  %.v142 = select i1 %2927, i64 21, i64 12
  %2928 = add i64 %2890, %.v142
  store i64 %2928, i64* %3, align 8
  br i1 %2927, label %block_.L_407b21, label %block_407b18

block_407b18:                                     ; preds = %block_.L_407b0c
  %2929 = add i64 %2891, -1
  %2930 = add i64 %2928, 4
  store i64 %2930, i64* %3, align 8
  %2931 = inttoptr i64 %2929 to i8*
  store i8 1, i8* %2931, align 1
  %2932 = load i64, i64* %3, align 8
  %2933 = add i64 %2932, 617
  store i64 %2933, i64* %3, align 8
  br label %block_.L_407d85

block_.L_407b21:                                  ; preds = %block_.L_407b0c
  %2934 = add i64 %2928, 3
  store i64 %2934, i64* %3, align 8
  %2935 = load i32, i32* %2894, align 4
  %2936 = zext i32 %2935 to i64
  store i64 %2936, i64* %RAX.i691, align 8
  %2937 = add i64 %2928, 6
  store i64 %2937, i64* %3, align 8
  %2938 = load i32, i32* %2899, align 4
  %2939 = sub i32 %2935, %2938
  %2940 = icmp ult i32 %2935, %2938
  %2941 = zext i1 %2940 to i8
  store i8 %2941, i8* %26, align 1
  %2942 = and i32 %2939, 255
  %2943 = tail call i32 @llvm.ctpop.i32(i32 %2942)
  %2944 = trunc i32 %2943 to i8
  %2945 = and i8 %2944, 1
  %2946 = xor i8 %2945, 1
  store i8 %2946, i8* %32, align 1
  %2947 = xor i32 %2938, %2935
  %2948 = xor i32 %2947, %2939
  %2949 = lshr i32 %2948, 4
  %2950 = trunc i32 %2949 to i8
  %2951 = and i8 %2950, 1
  store i8 %2951, i8* %33, align 1
  %2952 = icmp eq i32 %2939, 0
  %2953 = zext i1 %2952 to i8
  store i8 %2953, i8* %36, align 1
  %2954 = lshr i32 %2939, 31
  %2955 = trunc i32 %2954 to i8
  store i8 %2955, i8* %38, align 1
  %2956 = lshr i32 %2935, 31
  %2957 = lshr i32 %2938, 31
  %2958 = xor i32 %2957, %2956
  %2959 = xor i32 %2954, %2956
  %2960 = add nuw nsw i32 %2959, %2958
  %2961 = icmp eq i32 %2960, 2
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %39, align 1
  %.v143 = select i1 %2952, i64 12, i64 24
  %2963 = add i64 %2928, %.v143
  store i64 %2963, i64* %3, align 8
  br i1 %2952, label %block_.L_407cd1.sink.split, label %block_.L_407b39

block_.L_407b39:                                  ; preds = %block_.L_407b21
  %2964 = add i64 %2891, -40
  %2965 = add i64 %2963, 3
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to i32*
  %2967 = load i32, i32* %2966, align 4
  %2968 = zext i32 %2967 to i64
  store i64 %2968, i64* %RAX.i691, align 8
  %2969 = trunc i32 %2967 to i8
  store i8 %2969, i8* %CL.i439, align 1
  %2970 = add i64 %2891, -25
  %2971 = add i64 %2963, 8
  store i64 %2971, i64* %3, align 8
  %2972 = inttoptr i64 %2970 to i8*
  store i8 %2969, i8* %2972, align 1
  %2973 = load i64, i64* %RBP.i, align 8
  %2974 = add i64 %2973, -48
  %2975 = load i64, i64* %3, align 8
  %2976 = add i64 %2975, 4
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2974 to i64*
  %2978 = load i64, i64* %2977, align 8
  store i64 %2978, i64* %RDX.i432, align 8
  %2979 = add i64 %2973, -52
  %2980 = add i64 %2975, 7
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i32*
  %2982 = load i32, i32* %2981, align 4
  %2983 = zext i32 %2982 to i64
  store i64 %2983, i64* %RAX.i691, align 8
  store i64 %2983, i64* %RSI.i427, align 8
  %2984 = shl nuw nsw i64 %2983, 2
  %2985 = add i64 %2978, %2984
  %2986 = add i64 %2975, 12
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to i32*
  %2988 = load i32, i32* %2987, align 4
  %2989 = zext i32 %2988 to i64
  store i64 %2989, i64* %RAX.i691, align 8
  %2990 = add i64 %2975, 15
  store i64 %2990, i64* %3, align 8
  store i32 %2988, i32* %2981, align 4
  %2991 = load i64, i64* %RBP.i, align 8
  %2992 = add i64 %2991, -52
  %2993 = load i64, i64* %3, align 8
  %2994 = add i64 %2993, 3
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2992 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = and i32 %2996, 255
  %2998 = zext i32 %2997 to i64
  store i64 %2998, i64* %RAX.i691, align 8
  store i8 0, i8* %26, align 1
  %2999 = tail call i32 @llvm.ctpop.i32(i32 %2997)
  %3000 = trunc i32 %2999 to i8
  %3001 = and i8 %3000, 1
  %3002 = xor i8 %3001, 1
  store i8 %3002, i8* %32, align 1
  %3003 = icmp eq i32 %2997, 0
  %3004 = zext i1 %3003 to i8
  store i8 %3004, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %3005 = trunc i32 %2996 to i8
  store i8 %3005, i8* %CL.i439, align 1
  %3006 = add i64 %2991, -17
  %3007 = add i64 %2993, 13
  store i64 %3007, i64* %3, align 8
  %3008 = inttoptr i64 %3006 to i8*
  store i8 %3005, i8* %3008, align 1
  %3009 = load i64, i64* %RBP.i, align 8
  %3010 = add i64 %3009, -52
  %3011 = load i64, i64* %3, align 8
  %3012 = add i64 %3011, 3
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3010 to i32*
  %3014 = load i32, i32* %3013, align 4
  %3015 = lshr i32 %3014, 7
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = lshr i32 %3014, 8
  %3019 = zext i32 %3018 to i64
  store i64 %3019, i64* %RAX.i691, align 8
  store i8 %3017, i8* %26, align 1
  %3020 = and i32 %3018, 255
  %3021 = tail call i32 @llvm.ctpop.i32(i32 %3020)
  %3022 = trunc i32 %3021 to i8
  %3023 = and i8 %3022, 1
  %3024 = xor i8 %3023, 1
  store i8 %3024, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %3025 = icmp eq i32 %3018, 0
  %3026 = zext i1 %3025 to i8
  store i8 %3026, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %3027 = add i64 %3011, 9
  store i64 %3027, i64* %3, align 8
  store i32 %3018, i32* %3013, align 4
  %3028 = load i64, i64* %RBP.i, align 8
  %3029 = add i64 %3028, -36
  %3030 = load i64, i64* %3, align 8
  %3031 = add i64 %3030, 3
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3029 to i32*
  %3033 = load i32, i32* %3032, align 4
  %3034 = add i32 %3033, 1
  %3035 = zext i32 %3034 to i64
  store i64 %3035, i64* %RAX.i691, align 8
  %3036 = icmp eq i32 %3033, -1
  %3037 = icmp eq i32 %3034, 0
  %3038 = or i1 %3036, %3037
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %26, align 1
  %3040 = and i32 %3034, 255
  %3041 = tail call i32 @llvm.ctpop.i32(i32 %3040)
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  %3044 = xor i8 %3043, 1
  store i8 %3044, i8* %32, align 1
  %3045 = xor i32 %3034, %3033
  %3046 = lshr i32 %3045, 4
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  store i8 %3048, i8* %33, align 1
  %3049 = zext i1 %3037 to i8
  store i8 %3049, i8* %36, align 1
  %3050 = lshr i32 %3034, 31
  %3051 = trunc i32 %3050 to i8
  store i8 %3051, i8* %38, align 1
  %3052 = lshr i32 %3033, 31
  %3053 = xor i32 %3050, %3052
  %3054 = add nuw nsw i32 %3053, %3050
  %3055 = icmp eq i32 %3054, 2
  %3056 = zext i1 %3055 to i8
  store i8 %3056, i8* %39, align 1
  %3057 = add i64 %3030, 9
  store i64 %3057, i64* %3, align 8
  store i32 %3034, i32* %3032, align 4
  %3058 = load i64, i64* %RBP.i, align 8
  %3059 = add i64 %3058, -17
  %3060 = load i64, i64* %3, align 8
  %3061 = add i64 %3060, 4
  store i64 %3061, i64* %3, align 8
  %3062 = inttoptr i64 %3059 to i8*
  %3063 = load i8, i8* %3062, align 1
  %3064 = zext i8 %3063 to i64
  store i64 %3064, i64* %RAX.i691, align 8
  %3065 = zext i8 %3063 to i32
  %3066 = add i64 %3058, -40
  %3067 = add i64 %3060, 7
  store i64 %3067, i64* %3, align 8
  %3068 = inttoptr i64 %3066 to i32*
  %3069 = load i32, i32* %3068, align 4
  %3070 = sub i32 %3065, %3069
  %3071 = icmp ult i32 %3065, %3069
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %26, align 1
  %3073 = and i32 %3070, 255
  %3074 = tail call i32 @llvm.ctpop.i32(i32 %3073)
  %3075 = trunc i32 %3074 to i8
  %3076 = and i8 %3075, 1
  %3077 = xor i8 %3076, 1
  store i8 %3077, i8* %32, align 1
  %3078 = xor i32 %3069, %3065
  %3079 = xor i32 %3078, %3070
  %3080 = lshr i32 %3079, 4
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  store i8 %3082, i8* %33, align 1
  %3083 = icmp eq i32 %3070, 0
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %36, align 1
  %3085 = lshr i32 %3070, 31
  %3086 = trunc i32 %3085 to i8
  store i8 %3086, i8* %38, align 1
  %3087 = lshr i32 %3069, 31
  %3088 = add nuw nsw i32 %3085, %3087
  %3089 = icmp eq i32 %3088, 2
  %3090 = zext i1 %3089 to i8
  store i8 %3090, i8* %39, align 1
  %.v144 = select i1 %3083, i64 25, i64 13
  %3091 = add i64 %3060, %.v144
  store i64 %3091, i64* %3, align 8
  br i1 %3083, label %block_.L_407b88, label %block_407b7c

block_407b7c:                                     ; preds = %block_.L_407b39
  %3092 = add i64 %3091, 4
  store i64 %3092, i64* %3, align 8
  %3093 = load i8, i8* %3062, align 1
  %3094 = zext i8 %3093 to i64
  store i64 %3094, i64* %RAX.i691, align 8
  %3095 = zext i8 %3093 to i32
  %3096 = add i64 %3091, 7
  store i64 %3096, i64* %3, align 8
  store i32 %3095, i32* %3068, align 4
  %.pre97 = load i64, i64* %3, align 8
  %.pre98 = load i64, i64* %RBP.i, align 8
  br label %block_.L_407ab8

block_.L_407b88:                                  ; preds = %block_.L_407b39
  %3097 = add i64 %3058, -36
  %3098 = add i64 %3091, 3
  store i64 %3098, i64* %3, align 8
  %3099 = inttoptr i64 %3097 to i32*
  %3100 = load i32, i32* %3099, align 4
  %3101 = zext i32 %3100 to i64
  store i64 %3101, i64* %RAX.i691, align 8
  %3102 = add i64 %3058, -76
  %3103 = add i64 %3091, 6
  store i64 %3103, i64* %3, align 8
  %3104 = inttoptr i64 %3102 to i32*
  %3105 = load i32, i32* %3104, align 4
  %3106 = sub i32 %3100, %3105
  %3107 = icmp ult i32 %3100, %3105
  %3108 = zext i1 %3107 to i8
  store i8 %3108, i8* %26, align 1
  %3109 = and i32 %3106, 255
  %3110 = tail call i32 @llvm.ctpop.i32(i32 %3109)
  %3111 = trunc i32 %3110 to i8
  %3112 = and i8 %3111, 1
  %3113 = xor i8 %3112, 1
  store i8 %3113, i8* %32, align 1
  %3114 = xor i32 %3105, %3100
  %3115 = xor i32 %3114, %3106
  %3116 = lshr i32 %3115, 4
  %3117 = trunc i32 %3116 to i8
  %3118 = and i8 %3117, 1
  store i8 %3118, i8* %33, align 1
  %3119 = icmp eq i32 %3106, 0
  %3120 = zext i1 %3119 to i8
  store i8 %3120, i8* %36, align 1
  %3121 = lshr i32 %3106, 31
  %3122 = trunc i32 %3121 to i8
  store i8 %3122, i8* %38, align 1
  %3123 = lshr i32 %3100, 31
  %3124 = lshr i32 %3105, 31
  %3125 = xor i32 %3124, %3123
  %3126 = xor i32 %3121, %3123
  %3127 = add nuw nsw i32 %3126, %3125
  %3128 = icmp eq i32 %3127, 2
  %3129 = zext i1 %3128 to i8
  store i8 %3129, i8* %39, align 1
  %.v145 = select i1 %3119, i64 12, i64 17
  %3130 = add i64 %3091, %.v145
  store i64 %3130, i64* %3, align 8
  br i1 %3119, label %block_.L_407ab8, label %block_.L_407b99

block_.L_407b99:                                  ; preds = %block_.L_407b88
  %3131 = add i64 %3058, -32
  %3132 = add i64 %3130, 7
  store i64 %3132, i64* %3, align 8
  %3133 = inttoptr i64 %3131 to i32*
  store i32 2, i32* %3133, align 4
  %3134 = load i64, i64* %RBP.i, align 8
  %3135 = add i64 %3134, -48
  %3136 = load i64, i64* %3, align 8
  %3137 = add i64 %3136, 4
  store i64 %3137, i64* %3, align 8
  %3138 = inttoptr i64 %3135 to i64*
  %3139 = load i64, i64* %3138, align 8
  store i64 %3139, i64* %RAX.i691, align 8
  %3140 = add i64 %3134, -52
  %3141 = add i64 %3136, 7
  store i64 %3141, i64* %3, align 8
  %3142 = inttoptr i64 %3140 to i32*
  %3143 = load i32, i32* %3142, align 4
  %3144 = zext i32 %3143 to i64
  store i64 %3144, i64* %RCX.i689, align 8
  store i64 %3144, i64* %RDX.i432, align 8
  %3145 = shl nuw nsw i64 %3144, 2
  %3146 = add i64 %3139, %3145
  %3147 = add i64 %3136, 12
  store i64 %3147, i64* %3, align 8
  %3148 = inttoptr i64 %3146 to i32*
  %3149 = load i32, i32* %3148, align 4
  %3150 = zext i32 %3149 to i64
  store i64 %3150, i64* %RCX.i689, align 8
  %3151 = add i64 %3136, 15
  store i64 %3151, i64* %3, align 8
  store i32 %3149, i32* %3142, align 4
  %3152 = load i64, i64* %RBP.i, align 8
  %3153 = add i64 %3152, -52
  %3154 = load i64, i64* %3, align 8
  %3155 = add i64 %3154, 3
  store i64 %3155, i64* %3, align 8
  %3156 = inttoptr i64 %3153 to i32*
  %3157 = load i32, i32* %3156, align 4
  %3158 = and i32 %3157, 255
  %3159 = zext i32 %3158 to i64
  store i64 %3159, i64* %RCX.i689, align 8
  store i8 0, i8* %26, align 1
  %3160 = tail call i32 @llvm.ctpop.i32(i32 %3158)
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  %3163 = xor i8 %3162, 1
  store i8 %3163, i8* %32, align 1
  %3164 = icmp eq i32 %3158, 0
  %3165 = zext i1 %3164 to i8
  store i8 %3165, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %3166 = trunc i32 %3157 to i8
  store i8 %3166, i8* %SIL.i346, align 1
  %3167 = add i64 %3152, -17
  %3168 = add i64 %3154, 16
  store i64 %3168, i64* %3, align 8
  %3169 = inttoptr i64 %3167 to i8*
  store i8 %3166, i8* %3169, align 1
  %3170 = load i64, i64* %RBP.i, align 8
  %3171 = add i64 %3170, -52
  %3172 = load i64, i64* %3, align 8
  %3173 = add i64 %3172, 3
  store i64 %3173, i64* %3, align 8
  %3174 = inttoptr i64 %3171 to i32*
  %3175 = load i32, i32* %3174, align 4
  %3176 = lshr i32 %3175, 7
  %3177 = trunc i32 %3176 to i8
  %3178 = and i8 %3177, 1
  %3179 = lshr i32 %3175, 8
  %3180 = zext i32 %3179 to i64
  store i64 %3180, i64* %RCX.i689, align 8
  store i8 %3178, i8* %26, align 1
  %3181 = and i32 %3179, 255
  %3182 = tail call i32 @llvm.ctpop.i32(i32 %3181)
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = xor i8 %3184, 1
  store i8 %3185, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %3186 = icmp eq i32 %3179, 0
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %3188 = add i64 %3172, 9
  store i64 %3188, i64* %3, align 8
  store i32 %3179, i32* %3174, align 4
  %3189 = load i64, i64* %RBP.i, align 8
  %3190 = add i64 %3189, -36
  %3191 = load i64, i64* %3, align 8
  %3192 = add i64 %3191, 3
  store i64 %3192, i64* %3, align 8
  %3193 = inttoptr i64 %3190 to i32*
  %3194 = load i32, i32* %3193, align 4
  %3195 = add i32 %3194, 1
  %3196 = zext i32 %3195 to i64
  store i64 %3196, i64* %RCX.i689, align 8
  %3197 = icmp eq i32 %3194, -1
  %3198 = icmp eq i32 %3195, 0
  %3199 = or i1 %3197, %3198
  %3200 = zext i1 %3199 to i8
  store i8 %3200, i8* %26, align 1
  %3201 = and i32 %3195, 255
  %3202 = tail call i32 @llvm.ctpop.i32(i32 %3201)
  %3203 = trunc i32 %3202 to i8
  %3204 = and i8 %3203, 1
  %3205 = xor i8 %3204, 1
  store i8 %3205, i8* %32, align 1
  %3206 = xor i32 %3195, %3194
  %3207 = lshr i32 %3206, 4
  %3208 = trunc i32 %3207 to i8
  %3209 = and i8 %3208, 1
  store i8 %3209, i8* %33, align 1
  %3210 = zext i1 %3198 to i8
  store i8 %3210, i8* %36, align 1
  %3211 = lshr i32 %3195, 31
  %3212 = trunc i32 %3211 to i8
  store i8 %3212, i8* %38, align 1
  %3213 = lshr i32 %3194, 31
  %3214 = xor i32 %3211, %3213
  %3215 = add nuw nsw i32 %3214, %3211
  %3216 = icmp eq i32 %3215, 2
  %3217 = zext i1 %3216 to i8
  store i8 %3217, i8* %39, align 1
  %3218 = add i64 %3191, 9
  store i64 %3218, i64* %3, align 8
  store i32 %3195, i32* %3193, align 4
  %3219 = load i64, i64* %RBP.i, align 8
  %3220 = add i64 %3219, -36
  %3221 = load i64, i64* %3, align 8
  %3222 = add i64 %3221, 3
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3220 to i32*
  %3224 = load i32, i32* %3223, align 4
  %3225 = zext i32 %3224 to i64
  store i64 %3225, i64* %RCX.i689, align 8
  %3226 = add i64 %3219, -76
  %3227 = add i64 %3221, 6
  store i64 %3227, i64* %3, align 8
  %3228 = inttoptr i64 %3226 to i32*
  %3229 = load i32, i32* %3228, align 4
  %3230 = sub i32 %3224, %3229
  %3231 = icmp ult i32 %3224, %3229
  %3232 = zext i1 %3231 to i8
  store i8 %3232, i8* %26, align 1
  %3233 = and i32 %3230, 255
  %3234 = tail call i32 @llvm.ctpop.i32(i32 %3233)
  %3235 = trunc i32 %3234 to i8
  %3236 = and i8 %3235, 1
  %3237 = xor i8 %3236, 1
  store i8 %3237, i8* %32, align 1
  %3238 = xor i32 %3229, %3224
  %3239 = xor i32 %3238, %3230
  %3240 = lshr i32 %3239, 4
  %3241 = trunc i32 %3240 to i8
  %3242 = and i8 %3241, 1
  store i8 %3242, i8* %33, align 1
  %3243 = icmp eq i32 %3230, 0
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %36, align 1
  %3245 = lshr i32 %3230, 31
  %3246 = trunc i32 %3245 to i8
  store i8 %3246, i8* %38, align 1
  %3247 = lshr i32 %3224, 31
  %3248 = lshr i32 %3229, 31
  %3249 = xor i32 %3248, %3247
  %3250 = xor i32 %3245, %3247
  %3251 = add nuw nsw i32 %3250, %3249
  %3252 = icmp eq i32 %3251, 2
  %3253 = zext i1 %3252 to i8
  store i8 %3253, i8* %39, align 1
  %.v146 = select i1 %3243, i64 12, i64 17
  %3254 = add i64 %3221, %.v146
  store i64 %3254, i64* %3, align 8
  br i1 %3243, label %block_407bdd, label %block_.L_407be2

block_407bdd:                                     ; preds = %block_.L_407b99
  %3255 = add i64 %3254, -419
  br label %block_.L_407a3a.backedge

block_.L_407a3a.backedge:                         ; preds = %block_407bdd, %block_407bef, %block_407c3f, %block_407c51, %block_.L_407c5d
  %.sink65 = phi i64 [ %3255, %block_407bdd ], [ %3294, %block_407bef ], [ %3419, %block_407c3f ], [ %3458, %block_407c51 ], [ %3649, %block_.L_407c5d ]
  store i64 %.sink65, i64* %3, align 8
  br label %block_.L_407a3a

block_.L_407be2:                                  ; preds = %block_.L_407b99
  %3256 = add i64 %3219, -17
  %3257 = add i64 %3254, 4
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3256 to i8*
  %3259 = load i8, i8* %3258, align 1
  %3260 = zext i8 %3259 to i64
  store i64 %3260, i64* %RAX.i691, align 8
  %3261 = zext i8 %3259 to i32
  %3262 = add i64 %3219, -40
  %3263 = add i64 %3254, 7
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i32*
  %3265 = load i32, i32* %3264, align 4
  %3266 = sub i32 %3261, %3265
  %3267 = icmp ult i32 %3261, %3265
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %26, align 1
  %3269 = and i32 %3266, 255
  %3270 = tail call i32 @llvm.ctpop.i32(i32 %3269)
  %3271 = trunc i32 %3270 to i8
  %3272 = and i8 %3271, 1
  %3273 = xor i8 %3272, 1
  store i8 %3273, i8* %32, align 1
  %3274 = xor i32 %3265, %3261
  %3275 = xor i32 %3274, %3266
  %3276 = lshr i32 %3275, 4
  %3277 = trunc i32 %3276 to i8
  %3278 = and i8 %3277, 1
  store i8 %3278, i8* %33, align 1
  %3279 = icmp eq i32 %3266, 0
  %3280 = zext i1 %3279 to i8
  store i8 %3280, i8* %36, align 1
  %3281 = lshr i32 %3266, 31
  %3282 = trunc i32 %3281 to i8
  store i8 %3282, i8* %38, align 1
  %3283 = lshr i32 %3265, 31
  %3284 = add nuw nsw i32 %3281, %3283
  %3285 = icmp eq i32 %3284, 2
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %39, align 1
  %.v147 = select i1 %3279, i64 25, i64 13
  %3287 = add i64 %3254, %.v147
  store i64 %3287, i64* %3, align 8
  br i1 %3279, label %block_.L_407bfb, label %block_407bef

block_407bef:                                     ; preds = %block_.L_407be2
  %3288 = add i64 %3287, 4
  store i64 %3288, i64* %3, align 8
  %3289 = load i8, i8* %3258, align 1
  %3290 = zext i8 %3289 to i64
  store i64 %3290, i64* %RAX.i691, align 8
  %3291 = zext i8 %3289 to i32
  %3292 = add i64 %3287, 7
  store i64 %3292, i64* %3, align 8
  store i32 %3291, i32* %3264, align 4
  %3293 = load i64, i64* %3, align 8
  %3294 = add i64 %3293, -444
  br label %block_.L_407a3a.backedge

block_.L_407bfb:                                  ; preds = %block_.L_407be2
  %3295 = add i64 %3219, -32
  %3296 = add i64 %3287, 7
  store i64 %3296, i64* %3, align 8
  %3297 = inttoptr i64 %3295 to i32*
  store i32 3, i32* %3297, align 4
  %3298 = load i64, i64* %RBP.i, align 8
  %3299 = add i64 %3298, -48
  %3300 = load i64, i64* %3, align 8
  %3301 = add i64 %3300, 4
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3299 to i64*
  %3303 = load i64, i64* %3302, align 8
  store i64 %3303, i64* %RAX.i691, align 8
  %3304 = add i64 %3298, -52
  %3305 = add i64 %3300, 7
  store i64 %3305, i64* %3, align 8
  %3306 = inttoptr i64 %3304 to i32*
  %3307 = load i32, i32* %3306, align 4
  %3308 = zext i32 %3307 to i64
  store i64 %3308, i64* %RCX.i689, align 8
  store i64 %3308, i64* %RDX.i432, align 8
  %3309 = shl nuw nsw i64 %3308, 2
  %3310 = add i64 %3303, %3309
  %3311 = add i64 %3300, 12
  store i64 %3311, i64* %3, align 8
  %3312 = inttoptr i64 %3310 to i32*
  %3313 = load i32, i32* %3312, align 4
  %3314 = zext i32 %3313 to i64
  store i64 %3314, i64* %RCX.i689, align 8
  %3315 = add i64 %3300, 15
  store i64 %3315, i64* %3, align 8
  store i32 %3313, i32* %3306, align 4
  %3316 = load i64, i64* %RBP.i, align 8
  %3317 = add i64 %3316, -52
  %3318 = load i64, i64* %3, align 8
  %3319 = add i64 %3318, 3
  store i64 %3319, i64* %3, align 8
  %3320 = inttoptr i64 %3317 to i32*
  %3321 = load i32, i32* %3320, align 4
  %3322 = and i32 %3321, 255
  %3323 = zext i32 %3322 to i64
  store i64 %3323, i64* %RCX.i689, align 8
  store i8 0, i8* %26, align 1
  %3324 = tail call i32 @llvm.ctpop.i32(i32 %3322)
  %3325 = trunc i32 %3324 to i8
  %3326 = and i8 %3325, 1
  %3327 = xor i8 %3326, 1
  store i8 %3327, i8* %32, align 1
  %3328 = icmp eq i32 %3322, 0
  %3329 = zext i1 %3328 to i8
  store i8 %3329, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %3330 = trunc i32 %3321 to i8
  store i8 %3330, i8* %SIL.i346, align 1
  %3331 = add i64 %3316, -17
  %3332 = add i64 %3318, 16
  store i64 %3332, i64* %3, align 8
  %3333 = inttoptr i64 %3331 to i8*
  store i8 %3330, i8* %3333, align 1
  %3334 = load i64, i64* %RBP.i, align 8
  %3335 = add i64 %3334, -52
  %3336 = load i64, i64* %3, align 8
  %3337 = add i64 %3336, 3
  store i64 %3337, i64* %3, align 8
  %3338 = inttoptr i64 %3335 to i32*
  %3339 = load i32, i32* %3338, align 4
  %3340 = lshr i32 %3339, 7
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  %3343 = lshr i32 %3339, 8
  %3344 = zext i32 %3343 to i64
  store i64 %3344, i64* %RCX.i689, align 8
  store i8 %3342, i8* %26, align 1
  %3345 = and i32 %3343, 255
  %3346 = tail call i32 @llvm.ctpop.i32(i32 %3345)
  %3347 = trunc i32 %3346 to i8
  %3348 = and i8 %3347, 1
  %3349 = xor i8 %3348, 1
  store i8 %3349, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %3350 = icmp eq i32 %3343, 0
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %3352 = add i64 %3336, 9
  store i64 %3352, i64* %3, align 8
  store i32 %3343, i32* %3338, align 4
  %3353 = load i64, i64* %RBP.i, align 8
  %3354 = add i64 %3353, -36
  %3355 = load i64, i64* %3, align 8
  %3356 = add i64 %3355, 3
  store i64 %3356, i64* %3, align 8
  %3357 = inttoptr i64 %3354 to i32*
  %3358 = load i32, i32* %3357, align 4
  %3359 = add i32 %3358, 1
  %3360 = zext i32 %3359 to i64
  store i64 %3360, i64* %RCX.i689, align 8
  %3361 = icmp eq i32 %3358, -1
  %3362 = icmp eq i32 %3359, 0
  %3363 = or i1 %3361, %3362
  %3364 = zext i1 %3363 to i8
  store i8 %3364, i8* %26, align 1
  %3365 = and i32 %3359, 255
  %3366 = tail call i32 @llvm.ctpop.i32(i32 %3365)
  %3367 = trunc i32 %3366 to i8
  %3368 = and i8 %3367, 1
  %3369 = xor i8 %3368, 1
  store i8 %3369, i8* %32, align 1
  %3370 = xor i32 %3359, %3358
  %3371 = lshr i32 %3370, 4
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  store i8 %3373, i8* %33, align 1
  %3374 = zext i1 %3362 to i8
  store i8 %3374, i8* %36, align 1
  %3375 = lshr i32 %3359, 31
  %3376 = trunc i32 %3375 to i8
  store i8 %3376, i8* %38, align 1
  %3377 = lshr i32 %3358, 31
  %3378 = xor i32 %3375, %3377
  %3379 = add nuw nsw i32 %3378, %3375
  %3380 = icmp eq i32 %3379, 2
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %39, align 1
  %3382 = add i64 %3355, 9
  store i64 %3382, i64* %3, align 8
  store i32 %3359, i32* %3357, align 4
  %3383 = load i64, i64* %RBP.i, align 8
  %3384 = add i64 %3383, -36
  %3385 = load i64, i64* %3, align 8
  %3386 = add i64 %3385, 3
  store i64 %3386, i64* %3, align 8
  %3387 = inttoptr i64 %3384 to i32*
  %3388 = load i32, i32* %3387, align 4
  %3389 = zext i32 %3388 to i64
  store i64 %3389, i64* %RCX.i689, align 8
  %3390 = add i64 %3383, -76
  %3391 = add i64 %3385, 6
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3390 to i32*
  %3393 = load i32, i32* %3392, align 4
  %3394 = sub i32 %3388, %3393
  %3395 = icmp ult i32 %3388, %3393
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %26, align 1
  %3397 = and i32 %3394, 255
  %3398 = tail call i32 @llvm.ctpop.i32(i32 %3397)
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  %3401 = xor i8 %3400, 1
  store i8 %3401, i8* %32, align 1
  %3402 = xor i32 %3393, %3388
  %3403 = xor i32 %3402, %3394
  %3404 = lshr i32 %3403, 4
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  store i8 %3406, i8* %33, align 1
  %3407 = icmp eq i32 %3394, 0
  %3408 = zext i1 %3407 to i8
  store i8 %3408, i8* %36, align 1
  %3409 = lshr i32 %3394, 31
  %3410 = trunc i32 %3409 to i8
  store i8 %3410, i8* %38, align 1
  %3411 = lshr i32 %3388, 31
  %3412 = lshr i32 %3393, 31
  %3413 = xor i32 %3412, %3411
  %3414 = xor i32 %3409, %3411
  %3415 = add nuw nsw i32 %3414, %3413
  %3416 = icmp eq i32 %3415, 2
  %3417 = zext i1 %3416 to i8
  store i8 %3417, i8* %39, align 1
  %.v148 = select i1 %3407, i64 12, i64 17
  %3418 = add i64 %3385, %.v148
  store i64 %3418, i64* %3, align 8
  br i1 %3407, label %block_407c3f, label %block_.L_407c44

block_407c3f:                                     ; preds = %block_.L_407bfb
  %3419 = add i64 %3418, -517
  br label %block_.L_407a3a.backedge

block_.L_407c44:                                  ; preds = %block_.L_407bfb
  %3420 = add i64 %3383, -17
  %3421 = add i64 %3418, 4
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3420 to i8*
  %3423 = load i8, i8* %3422, align 1
  %3424 = zext i8 %3423 to i64
  store i64 %3424, i64* %RAX.i691, align 8
  %3425 = zext i8 %3423 to i32
  %3426 = add i64 %3383, -40
  %3427 = add i64 %3418, 7
  store i64 %3427, i64* %3, align 8
  %3428 = inttoptr i64 %3426 to i32*
  %3429 = load i32, i32* %3428, align 4
  %3430 = sub i32 %3425, %3429
  %3431 = icmp ult i32 %3425, %3429
  %3432 = zext i1 %3431 to i8
  store i8 %3432, i8* %26, align 1
  %3433 = and i32 %3430, 255
  %3434 = tail call i32 @llvm.ctpop.i32(i32 %3433)
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  %3437 = xor i8 %3436, 1
  store i8 %3437, i8* %32, align 1
  %3438 = xor i32 %3429, %3425
  %3439 = xor i32 %3438, %3430
  %3440 = lshr i32 %3439, 4
  %3441 = trunc i32 %3440 to i8
  %3442 = and i8 %3441, 1
  store i8 %3442, i8* %33, align 1
  %3443 = icmp eq i32 %3430, 0
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %36, align 1
  %3445 = lshr i32 %3430, 31
  %3446 = trunc i32 %3445 to i8
  store i8 %3446, i8* %38, align 1
  %3447 = lshr i32 %3429, 31
  %3448 = add nuw nsw i32 %3445, %3447
  %3449 = icmp eq i32 %3448, 2
  %3450 = zext i1 %3449 to i8
  store i8 %3450, i8* %39, align 1
  %.v149 = select i1 %3443, i64 25, i64 13
  %3451 = add i64 %3418, %.v149
  store i64 %3451, i64* %3, align 8
  br i1 %3443, label %block_.L_407c5d, label %block_407c51

block_407c51:                                     ; preds = %block_.L_407c44
  %3452 = add i64 %3451, 4
  store i64 %3452, i64* %3, align 8
  %3453 = load i8, i8* %3422, align 1
  %3454 = zext i8 %3453 to i64
  store i64 %3454, i64* %RAX.i691, align 8
  %3455 = zext i8 %3453 to i32
  %3456 = add i64 %3451, 7
  store i64 %3456, i64* %3, align 8
  store i32 %3455, i32* %3428, align 4
  %3457 = load i64, i64* %3, align 8
  %3458 = add i64 %3457, -542
  br label %block_.L_407a3a.backedge

block_.L_407c5d:                                  ; preds = %block_.L_407c44
  %3459 = add i64 %3383, -48
  %3460 = add i64 %3451, 4
  store i64 %3460, i64* %3, align 8
  %3461 = inttoptr i64 %3459 to i64*
  %3462 = load i64, i64* %3461, align 8
  store i64 %3462, i64* %RAX.i691, align 8
  %3463 = add i64 %3383, -52
  %3464 = add i64 %3451, 7
  store i64 %3464, i64* %3, align 8
  %3465 = inttoptr i64 %3463 to i32*
  %3466 = load i32, i32* %3465, align 4
  %3467 = zext i32 %3466 to i64
  store i64 %3467, i64* %RCX.i689, align 8
  store i64 %3467, i64* %RDX.i432, align 8
  %3468 = shl nuw nsw i64 %3467, 2
  %3469 = add i64 %3462, %3468
  %3470 = add i64 %3451, 12
  store i64 %3470, i64* %3, align 8
  %3471 = inttoptr i64 %3469 to i32*
  %3472 = load i32, i32* %3471, align 4
  %3473 = zext i32 %3472 to i64
  store i64 %3473, i64* %RCX.i689, align 8
  %3474 = add i64 %3451, 15
  store i64 %3474, i64* %3, align 8
  store i32 %3472, i32* %3465, align 4
  %3475 = load i64, i64* %RBP.i, align 8
  %3476 = add i64 %3475, -52
  %3477 = load i64, i64* %3, align 8
  %3478 = add i64 %3477, 3
  store i64 %3478, i64* %3, align 8
  %3479 = inttoptr i64 %3476 to i32*
  %3480 = load i32, i32* %3479, align 4
  %3481 = and i32 %3480, 255
  %3482 = zext i32 %3481 to i64
  store i64 %3482, i64* %RCX.i689, align 8
  store i8 0, i8* %26, align 1
  %3483 = tail call i32 @llvm.ctpop.i32(i32 %3481)
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  %3486 = xor i8 %3485, 1
  store i8 %3486, i8* %32, align 1
  %3487 = icmp eq i32 %3481, 0
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %3489 = trunc i32 %3480 to i8
  store i8 %3489, i8* %SIL.i346, align 1
  %3490 = add i64 %3475, -17
  %3491 = add i64 %3477, 16
  store i64 %3491, i64* %3, align 8
  %3492 = inttoptr i64 %3490 to i8*
  store i8 %3489, i8* %3492, align 1
  %3493 = load i64, i64* %RBP.i, align 8
  %3494 = add i64 %3493, -52
  %3495 = load i64, i64* %3, align 8
  %3496 = add i64 %3495, 3
  store i64 %3496, i64* %3, align 8
  %3497 = inttoptr i64 %3494 to i32*
  %3498 = load i32, i32* %3497, align 4
  %3499 = lshr i32 %3498, 7
  %3500 = trunc i32 %3499 to i8
  %3501 = and i8 %3500, 1
  %3502 = lshr i32 %3498, 8
  %3503 = zext i32 %3502 to i64
  store i64 %3503, i64* %RCX.i689, align 8
  store i8 %3501, i8* %26, align 1
  %3504 = and i32 %3502, 255
  %3505 = tail call i32 @llvm.ctpop.i32(i32 %3504)
  %3506 = trunc i32 %3505 to i8
  %3507 = and i8 %3506, 1
  %3508 = xor i8 %3507, 1
  store i8 %3508, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %3509 = icmp eq i32 %3502, 0
  %3510 = zext i1 %3509 to i8
  store i8 %3510, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %3511 = add i64 %3495, 9
  store i64 %3511, i64* %3, align 8
  store i32 %3502, i32* %3497, align 4
  %3512 = load i64, i64* %RBP.i, align 8
  %3513 = add i64 %3512, -36
  %3514 = load i64, i64* %3, align 8
  %3515 = add i64 %3514, 3
  store i64 %3515, i64* %3, align 8
  %3516 = inttoptr i64 %3513 to i32*
  %3517 = load i32, i32* %3516, align 4
  %3518 = add i32 %3517, 1
  %3519 = zext i32 %3518 to i64
  store i64 %3519, i64* %RCX.i689, align 8
  %3520 = icmp eq i32 %3517, -1
  %3521 = icmp eq i32 %3518, 0
  %3522 = or i1 %3520, %3521
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %26, align 1
  %3524 = and i32 %3518, 255
  %3525 = tail call i32 @llvm.ctpop.i32(i32 %3524)
  %3526 = trunc i32 %3525 to i8
  %3527 = and i8 %3526, 1
  %3528 = xor i8 %3527, 1
  store i8 %3528, i8* %32, align 1
  %3529 = xor i32 %3518, %3517
  %3530 = lshr i32 %3529, 4
  %3531 = trunc i32 %3530 to i8
  %3532 = and i8 %3531, 1
  store i8 %3532, i8* %33, align 1
  %3533 = zext i1 %3521 to i8
  store i8 %3533, i8* %36, align 1
  %3534 = lshr i32 %3518, 31
  %3535 = trunc i32 %3534 to i8
  store i8 %3535, i8* %38, align 1
  %3536 = lshr i32 %3517, 31
  %3537 = xor i32 %3534, %3536
  %3538 = add nuw nsw i32 %3537, %3534
  %3539 = icmp eq i32 %3538, 2
  %3540 = zext i1 %3539 to i8
  store i8 %3540, i8* %39, align 1
  %3541 = add i64 %3514, 9
  store i64 %3541, i64* %3, align 8
  store i32 %3518, i32* %3516, align 4
  %3542 = load i64, i64* %RBP.i, align 8
  %3543 = add i64 %3542, -17
  %3544 = load i64, i64* %3, align 8
  %3545 = add i64 %3544, 4
  store i64 %3545, i64* %3, align 8
  %3546 = inttoptr i64 %3543 to i8*
  %3547 = load i8, i8* %3546, align 1
  %3548 = zext i8 %3547 to i32
  %3549 = add nuw nsw i32 %3548, 4
  %3550 = zext i32 %3549 to i64
  store i64 %3550, i64* %RCX.i689, align 8
  store i8 0, i8* %26, align 1
  %3551 = and i32 %3549, 255
  %3552 = tail call i32 @llvm.ctpop.i32(i32 %3551)
  %3553 = trunc i32 %3552 to i8
  %3554 = and i8 %3553, 1
  %3555 = xor i8 %3554, 1
  store i8 %3555, i8* %32, align 1
  %3556 = xor i32 %3549, %3548
  %3557 = lshr i32 %3556, 4
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  store i8 %3559, i8* %33, align 1
  store i8 0, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %3560 = add i64 %3542, -32
  %3561 = add i64 %3544, 10
  store i64 %3561, i64* %3, align 8
  %3562 = inttoptr i64 %3560 to i32*
  store i32 %3549, i32* %3562, align 4
  %3563 = load i64, i64* %RBP.i, align 8
  %3564 = add i64 %3563, -48
  %3565 = load i64, i64* %3, align 8
  %3566 = add i64 %3565, 4
  store i64 %3566, i64* %3, align 8
  %3567 = inttoptr i64 %3564 to i64*
  %3568 = load i64, i64* %3567, align 8
  store i64 %3568, i64* %RAX.i691, align 8
  %3569 = add i64 %3563, -52
  %3570 = add i64 %3565, 7
  store i64 %3570, i64* %3, align 8
  %3571 = inttoptr i64 %3569 to i32*
  %3572 = load i32, i32* %3571, align 4
  %3573 = zext i32 %3572 to i64
  store i64 %3573, i64* %RCX.i689, align 8
  store i64 %3573, i64* %RDX.i432, align 8
  %3574 = shl nuw nsw i64 %3573, 2
  %3575 = add i64 %3568, %3574
  %3576 = add i64 %3565, 12
  store i64 %3576, i64* %3, align 8
  %3577 = inttoptr i64 %3575 to i32*
  %3578 = load i32, i32* %3577, align 4
  %3579 = zext i32 %3578 to i64
  store i64 %3579, i64* %RCX.i689, align 8
  %3580 = add i64 %3565, 15
  store i64 %3580, i64* %3, align 8
  store i32 %3578, i32* %3571, align 4
  %3581 = load i64, i64* %RBP.i, align 8
  %3582 = add i64 %3581, -52
  %3583 = load i64, i64* %3, align 8
  %3584 = add i64 %3583, 3
  store i64 %3584, i64* %3, align 8
  %3585 = inttoptr i64 %3582 to i32*
  %3586 = load i32, i32* %3585, align 4
  %3587 = and i32 %3586, 255
  store i8 0, i8* %26, align 1
  %3588 = tail call i32 @llvm.ctpop.i32(i32 %3587)
  %3589 = trunc i32 %3588 to i8
  %3590 = and i8 %3589, 1
  %3591 = xor i8 %3590, 1
  store i8 %3591, i8* %32, align 1
  %3592 = icmp eq i32 %3587, 0
  %3593 = zext i1 %3592 to i8
  store i8 %3593, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  %3594 = trunc i32 %3586 to i8
  store i8 %3594, i8* %SIL.i346, align 1
  %.mask117 = and i32 %3586, 255
  %3595 = zext i32 %.mask117 to i64
  store i64 %3595, i64* %RCX.i689, align 8
  %3596 = add i64 %3581, -40
  %3597 = add i64 %3583, 19
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i32*
  store i32 %.mask117, i32* %3598, align 4
  %3599 = load i64, i64* %RBP.i, align 8
  %3600 = add i64 %3599, -52
  %3601 = load i64, i64* %3, align 8
  %3602 = add i64 %3601, 3
  store i64 %3602, i64* %3, align 8
  %3603 = inttoptr i64 %3600 to i32*
  %3604 = load i32, i32* %3603, align 4
  %3605 = lshr i32 %3604, 7
  %3606 = trunc i32 %3605 to i8
  %3607 = and i8 %3606, 1
  %3608 = lshr i32 %3604, 8
  %3609 = zext i32 %3608 to i64
  store i64 %3609, i64* %RCX.i689, align 8
  store i8 %3607, i8* %26, align 1
  %3610 = and i32 %3608, 255
  %3611 = tail call i32 @llvm.ctpop.i32(i32 %3610)
  %3612 = trunc i32 %3611 to i8
  %3613 = and i8 %3612, 1
  %3614 = xor i8 %3613, 1
  store i8 %3614, i8* %32, align 1
  store i8 0, i8* %33, align 1
  %3615 = icmp eq i32 %3608, 0
  %3616 = zext i1 %3615 to i8
  store i8 %3616, i8* %36, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %39, align 1
  %3617 = add i64 %3601, 9
  store i64 %3617, i64* %3, align 8
  store i32 %3608, i32* %3603, align 4
  %3618 = load i64, i64* %RBP.i, align 8
  %3619 = add i64 %3618, -36
  %3620 = load i64, i64* %3, align 8
  %3621 = add i64 %3620, 3
  store i64 %3621, i64* %3, align 8
  %3622 = inttoptr i64 %3619 to i32*
  %3623 = load i32, i32* %3622, align 4
  %3624 = add i32 %3623, 1
  %3625 = zext i32 %3624 to i64
  store i64 %3625, i64* %RCX.i689, align 8
  %3626 = icmp eq i32 %3623, -1
  %3627 = icmp eq i32 %3624, 0
  %3628 = or i1 %3626, %3627
  %3629 = zext i1 %3628 to i8
  store i8 %3629, i8* %26, align 1
  %3630 = and i32 %3624, 255
  %3631 = tail call i32 @llvm.ctpop.i32(i32 %3630)
  %3632 = trunc i32 %3631 to i8
  %3633 = and i8 %3632, 1
  %3634 = xor i8 %3633, 1
  store i8 %3634, i8* %32, align 1
  %3635 = xor i32 %3624, %3623
  %3636 = lshr i32 %3635, 4
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  store i8 %3638, i8* %33, align 1
  %3639 = zext i1 %3627 to i8
  store i8 %3639, i8* %36, align 1
  %3640 = lshr i32 %3624, 31
  %3641 = trunc i32 %3640 to i8
  store i8 %3641, i8* %38, align 1
  %3642 = lshr i32 %3623, 31
  %3643 = xor i32 %3640, %3642
  %3644 = add nuw nsw i32 %3643, %3640
  %3645 = icmp eq i32 %3644, 2
  %3646 = zext i1 %3645 to i8
  store i8 %3646, i8* %39, align 1
  %3647 = add i64 %3620, 9
  store i64 %3647, i64* %3, align 8
  store i32 %3624, i32* %3622, align 4
  %3648 = load i64, i64* %3, align 8
  %3649 = add i64 %3648, -658
  br label %block_.L_407a3a.backedge

block_.L_407cd1.sink.split:                       ; preds = %block_.L_407b21, %block_.L_407ab8
  %3650 = phi i64 [ %2755, %block_.L_407ab8 ], [ %2963, %block_.L_407b21 ]
  %.sink46 = phi i64 [ %2739, %block_.L_407ab8 ], [ %2891, %block_.L_407b21 ]
  %.sink = phi i32 [ 1, %block_.L_407ab8 ], [ 0, %block_.L_407b21 ]
  %.sink39.ph = phi i64 [ 520, %block_.L_407ab8 ], [ 413, %block_.L_407b21 ]
  %3651 = add i64 %.sink46, -32
  %3652 = add i64 %3650, 7
  store i64 %3652, i64* %3, align 8
  %3653 = inttoptr i64 %3651 to i32*
  store i32 %.sink, i32* %3653, align 4
  %.pre99 = load i64, i64* %3, align 8
  %.pre100 = load i64, i64* %RBP.i, align 8
  br label %block_.L_407cd1

block_.L_407cd1.loopexit:                         ; preds = %block_.L_407a49
  br label %block_.L_407cd1

block_.L_407cd1:                                  ; preds = %block_.L_407cd1.loopexit, %block_.L_407cd1.sink.split
  %3654 = phi i64 [ %.pre100, %block_.L_407cd1.sink.split ], [ %2530, %block_.L_407cd1.loopexit ]
  %3655 = phi i64 [ %.pre99, %block_.L_407cd1.sink.split ], [ %2544, %block_.L_407cd1.loopexit ]
  %.sink39 = phi i64 [ %.sink39.ph, %block_.L_407cd1.sink.split ], [ 638, %block_.L_407cd1.loopexit ]
  %3656 = add i64 %3655, %.sink39
  %3657 = add i64 %3654, -16
  %3658 = add i64 %3656, 4
  store i64 %3658, i64* %3, align 8
  %3659 = inttoptr i64 %3657 to i64*
  %3660 = load i64, i64* %3659, align 8
  store i64 %3660, i64* %RAX.i691, align 8
  %3661 = add i64 %3656, 7
  store i64 %3661, i64* %3, align 8
  %3662 = inttoptr i64 %3660 to i64*
  %3663 = load i64, i64* %3662, align 8
  store i64 %3663, i64* %RAX.i691, align 8
  %3664 = add i64 %3663, 36
  %3665 = add i64 %3656, 10
  store i64 %3665, i64* %3, align 8
  %3666 = inttoptr i64 %3664 to i32*
  %3667 = load i32, i32* %3666, align 4
  %3668 = zext i32 %3667 to i64
  store i64 %3668, i64* %RCX.i689, align 8
  %3669 = add i64 %3654, -80
  %3670 = add i64 %3656, 13
  store i64 %3670, i64* %3, align 8
  %3671 = inttoptr i64 %3669 to i32*
  store i32 %3667, i32* %3671, align 4
  %3672 = load i64, i64* %RBP.i, align 8
  %3673 = add i64 %3672, -72
  %3674 = load i64, i64* %3, align 8
  %3675 = add i64 %3674, 3
  store i64 %3675, i64* %3, align 8
  %3676 = inttoptr i64 %3673 to i32*
  %3677 = load i32, i32* %3676, align 4
  %3678 = zext i32 %3677 to i64
  store i64 %3678, i64* %RCX.i689, align 8
  %3679 = add i64 %3672, -68
  %3680 = add i64 %3674, 6
  store i64 %3680, i64* %3, align 8
  %3681 = inttoptr i64 %3679 to i32*
  %3682 = load i32, i32* %3681, align 4
  %3683 = sub i32 %3677, %3682
  %3684 = zext i32 %3683 to i64
  store i64 %3684, i64* %RCX.i689, align 8
  %3685 = icmp ult i32 %3677, %3682
  %3686 = zext i1 %3685 to i8
  store i8 %3686, i8* %26, align 1
  %3687 = and i32 %3683, 255
  %3688 = tail call i32 @llvm.ctpop.i32(i32 %3687)
  %3689 = trunc i32 %3688 to i8
  %3690 = and i8 %3689, 1
  %3691 = xor i8 %3690, 1
  store i8 %3691, i8* %32, align 1
  %3692 = xor i32 %3682, %3677
  %3693 = xor i32 %3692, %3683
  %3694 = lshr i32 %3693, 4
  %3695 = trunc i32 %3694 to i8
  %3696 = and i8 %3695, 1
  store i8 %3696, i8* %33, align 1
  %3697 = icmp eq i32 %3683, 0
  %3698 = zext i1 %3697 to i8
  store i8 %3698, i8* %36, align 1
  %3699 = lshr i32 %3683, 31
  %3700 = trunc i32 %3699 to i8
  store i8 %3700, i8* %38, align 1
  %3701 = lshr i32 %3677, 31
  %3702 = lshr i32 %3682, 31
  %3703 = xor i32 %3702, %3701
  %3704 = xor i32 %3699, %3701
  %3705 = add nuw nsw i32 %3704, %3703
  %3706 = icmp eq i32 %3705, 2
  %3707 = zext i1 %3706 to i8
  store i8 %3707, i8* %39, align 1
  %3708 = add i64 %3672, -16
  %3709 = add i64 %3674, 10
  store i64 %3709, i64* %3, align 8
  %3710 = inttoptr i64 %3708 to i64*
  %3711 = load i64, i64* %3710, align 8
  store i64 %3711, i64* %RAX.i691, align 8
  %3712 = add i64 %3674, 13
  store i64 %3712, i64* %3, align 8
  %3713 = inttoptr i64 %3711 to i64*
  %3714 = load i64, i64* %3713, align 8
  store i64 %3714, i64* %RAX.i691, align 8
  %3715 = add i64 %3714, 36
  %3716 = add i64 %3674, 16
  store i64 %3716, i64* %3, align 8
  %3717 = inttoptr i64 %3715 to i32*
  %3718 = load i32, i32* %3717, align 4
  %3719 = add i32 %3718, %3683
  %3720 = zext i32 %3719 to i64
  store i64 %3720, i64* %RCX.i689, align 8
  %3721 = icmp ult i32 %3719, %3683
  %3722 = icmp ult i32 %3719, %3718
  %3723 = or i1 %3721, %3722
  %3724 = zext i1 %3723 to i8
  store i8 %3724, i8* %26, align 1
  %3725 = and i32 %3719, 255
  %3726 = tail call i32 @llvm.ctpop.i32(i32 %3725)
  %3727 = trunc i32 %3726 to i8
  %3728 = and i8 %3727, 1
  %3729 = xor i8 %3728, 1
  store i8 %3729, i8* %32, align 1
  %3730 = xor i32 %3718, %3683
  %3731 = xor i32 %3730, %3719
  %3732 = lshr i32 %3731, 4
  %3733 = trunc i32 %3732 to i8
  %3734 = and i8 %3733, 1
  store i8 %3734, i8* %33, align 1
  %3735 = icmp eq i32 %3719, 0
  %3736 = zext i1 %3735 to i8
  store i8 %3736, i8* %36, align 1
  %3737 = lshr i32 %3719, 31
  %3738 = trunc i32 %3737 to i8
  store i8 %3738, i8* %38, align 1
  %3739 = lshr i32 %3718, 31
  %3740 = xor i32 %3737, %3699
  %3741 = xor i32 %3737, %3739
  %3742 = add nuw nsw i32 %3740, %3741
  %3743 = icmp eq i32 %3742, 2
  %3744 = zext i1 %3743 to i8
  store i8 %3744, i8* %39, align 1
  %3745 = add i64 %3674, 19
  store i64 %3745, i64* %3, align 8
  store i32 %3719, i32* %3717, align 4
  %3746 = load i64, i64* %RBP.i, align 8
  %3747 = add i64 %3746, -16
  %3748 = load i64, i64* %3, align 8
  %3749 = add i64 %3748, 4
  store i64 %3749, i64* %3, align 8
  %3750 = inttoptr i64 %3747 to i64*
  %3751 = load i64, i64* %3750, align 8
  store i64 %3751, i64* %RAX.i691, align 8
  %3752 = add i64 %3748, 7
  store i64 %3752, i64* %3, align 8
  %3753 = inttoptr i64 %3751 to i64*
  %3754 = load i64, i64* %3753, align 8
  store i64 %3754, i64* %RAX.i691, align 8
  %3755 = add i64 %3754, 36
  %3756 = add i64 %3748, 10
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i32*
  %3758 = load i32, i32* %3757, align 4
  %3759 = zext i32 %3758 to i64
  store i64 %3759, i64* %RCX.i689, align 8
  %3760 = add i64 %3746, -80
  %3761 = add i64 %3748, 13
  store i64 %3761, i64* %3, align 8
  %3762 = inttoptr i64 %3760 to i32*
  %3763 = load i32, i32* %3762, align 4
  %3764 = sub i32 %3758, %3763
  %3765 = icmp ult i32 %3758, %3763
  %3766 = zext i1 %3765 to i8
  store i8 %3766, i8* %26, align 1
  %3767 = and i32 %3764, 255
  %3768 = tail call i32 @llvm.ctpop.i32(i32 %3767)
  %3769 = trunc i32 %3768 to i8
  %3770 = and i8 %3769, 1
  %3771 = xor i8 %3770, 1
  store i8 %3771, i8* %32, align 1
  %3772 = xor i32 %3763, %3758
  %3773 = xor i32 %3772, %3764
  %3774 = lshr i32 %3773, 4
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  store i8 %3776, i8* %33, align 1
  %3777 = icmp eq i32 %3764, 0
  %3778 = zext i1 %3777 to i8
  store i8 %3778, i8* %36, align 1
  %3779 = lshr i32 %3764, 31
  %3780 = trunc i32 %3779 to i8
  store i8 %3780, i8* %38, align 1
  %3781 = lshr i32 %3758, 31
  %3782 = lshr i32 %3763, 31
  %3783 = xor i32 %3782, %3781
  %3784 = xor i32 %3779, %3781
  %3785 = add nuw nsw i32 %3784, %3783
  %3786 = icmp eq i32 %3785, 2
  %3787 = zext i1 %3786 to i8
  store i8 %3787, i8* %39, align 1
  %.v150 = select i1 %3765, i64 19, i64 35
  %3788 = add i64 %3748, %.v150
  store i64 %3788, i64* %3, align 8
  br i1 %3765, label %block_407d04, label %block_.L_407d14

block_407d04:                                     ; preds = %block_.L_407cd1
  %3789 = add i64 %3788, 4
  store i64 %3789, i64* %3, align 8
  %3790 = load i64, i64* %3750, align 8
  store i64 %3790, i64* %RAX.i691, align 8
  %3791 = add i64 %3788, 7
  store i64 %3791, i64* %3, align 8
  %3792 = inttoptr i64 %3790 to i64*
  %3793 = load i64, i64* %3792, align 8
  store i64 %3793, i64* %RAX.i691, align 8
  %3794 = add i64 %3793, 40
  %3795 = add i64 %3788, 10
  store i64 %3795, i64* %3, align 8
  %3796 = inttoptr i64 %3794 to i32*
  %3797 = load i32, i32* %3796, align 4
  %3798 = add i32 %3797, 1
  %3799 = zext i32 %3798 to i64
  store i64 %3799, i64* %RCX.i689, align 8
  %3800 = icmp eq i32 %3797, -1
  %3801 = icmp eq i32 %3798, 0
  %3802 = or i1 %3800, %3801
  %3803 = zext i1 %3802 to i8
  store i8 %3803, i8* %26, align 1
  %3804 = and i32 %3798, 255
  %3805 = tail call i32 @llvm.ctpop.i32(i32 %3804)
  %3806 = trunc i32 %3805 to i8
  %3807 = and i8 %3806, 1
  %3808 = xor i8 %3807, 1
  store i8 %3808, i8* %32, align 1
  %3809 = xor i32 %3798, %3797
  %3810 = lshr i32 %3809, 4
  %3811 = trunc i32 %3810 to i8
  %3812 = and i8 %3811, 1
  store i8 %3812, i8* %33, align 1
  %3813 = zext i1 %3801 to i8
  store i8 %3813, i8* %36, align 1
  %3814 = lshr i32 %3798, 31
  %3815 = trunc i32 %3814 to i8
  store i8 %3815, i8* %38, align 1
  %3816 = lshr i32 %3797, 31
  %3817 = xor i32 %3814, %3816
  %3818 = add nuw nsw i32 %3817, %3814
  %3819 = icmp eq i32 %3818, 2
  %3820 = zext i1 %3819 to i8
  store i8 %3820, i8* %39, align 1
  %3821 = add i64 %3788, 16
  store i64 %3821, i64* %3, align 8
  store i32 %3798, i32* %3796, align 4
  %.pre101 = load i64, i64* %RBP.i, align 8
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_407d14

block_.L_407d14:                                  ; preds = %block_.L_407cd1, %block_407d04
  %3822 = phi i64 [ %.pre102, %block_407d04 ], [ %3788, %block_.L_407cd1 ]
  %3823 = phi i64 [ %.pre101, %block_407d04 ], [ %3746, %block_.L_407cd1 ]
  %3824 = add i64 %3823, -24
  %3825 = add i64 %3822, 3
  store i64 %3825, i64* %3, align 8
  %3826 = inttoptr i64 %3824 to i32*
  %3827 = load i32, i32* %3826, align 4
  %3828 = zext i32 %3827 to i64
  store i64 %3828, i64* %RAX.i691, align 8
  %3829 = add i64 %3823, -16
  %3830 = add i64 %3822, 7
  store i64 %3830, i64* %3, align 8
  %3831 = inttoptr i64 %3829 to i64*
  %3832 = load i64, i64* %3831, align 8
  store i64 %3832, i64* %RCX.i689, align 8
  %3833 = add i64 %3832, 3184
  %3834 = add i64 %3822, 13
  store i64 %3834, i64* %3, align 8
  %3835 = inttoptr i64 %3833 to i32*
  store i32 %3827, i32* %3835, align 4
  %3836 = load i64, i64* %RBP.i, align 8
  %3837 = add i64 %3836, -25
  %3838 = load i64, i64* %3, align 8
  %3839 = add i64 %3838, 3
  store i64 %3839, i64* %3, align 8
  %3840 = inttoptr i64 %3837 to i8*
  %3841 = load i8, i8* %3840, align 1
  store i8 %3841, i8* %DL.i679, align 1
  %3842 = add i64 %3836, -16
  %3843 = add i64 %3838, 7
  store i64 %3843, i64* %3, align 8
  %3844 = inttoptr i64 %3842 to i64*
  %3845 = load i64, i64* %3844, align 8
  store i64 %3845, i64* %RCX.i689, align 8
  %3846 = add i64 %3845, 12
  %3847 = add i64 %3838, 10
  store i64 %3847, i64* %3, align 8
  %3848 = inttoptr i64 %3846 to i8*
  store i8 %3841, i8* %3848, align 1
  %3849 = load i64, i64* %RBP.i, align 8
  %3850 = add i64 %3849, -32
  %3851 = load i64, i64* %3, align 8
  %3852 = add i64 %3851, 3
  store i64 %3852, i64* %3, align 8
  %3853 = inttoptr i64 %3850 to i32*
  %3854 = load i32, i32* %3853, align 4
  %3855 = zext i32 %3854 to i64
  store i64 %3855, i64* %RAX.i691, align 8
  %3856 = add i64 %3849, -16
  %3857 = add i64 %3851, 7
  store i64 %3857, i64* %3, align 8
  %3858 = inttoptr i64 %3856 to i64*
  %3859 = load i64, i64* %3858, align 8
  store i64 %3859, i64* %RCX.i689, align 8
  %3860 = add i64 %3859, 16
  %3861 = add i64 %3851, 10
  store i64 %3861, i64* %3, align 8
  %3862 = inttoptr i64 %3860 to i32*
  store i32 %3854, i32* %3862, align 4
  %3863 = load i64, i64* %RBP.i, align 8
  %3864 = add i64 %3863, -36
  %3865 = load i64, i64* %3, align 8
  %3866 = add i64 %3865, 3
  store i64 %3866, i64* %3, align 8
  %3867 = inttoptr i64 %3864 to i32*
  %3868 = load i32, i32* %3867, align 4
  %3869 = zext i32 %3868 to i64
  store i64 %3869, i64* %RAX.i691, align 8
  %3870 = add i64 %3863, -16
  %3871 = add i64 %3865, 7
  store i64 %3871, i64* %3, align 8
  %3872 = inttoptr i64 %3870 to i64*
  %3873 = load i64, i64* %3872, align 8
  store i64 %3873, i64* %RCX.i689, align 8
  %3874 = add i64 %3873, 1092
  %3875 = add i64 %3865, 13
  store i64 %3875, i64* %3, align 8
  %3876 = inttoptr i64 %3874 to i32*
  store i32 %3868, i32* %3876, align 4
  %3877 = load i64, i64* %RBP.i, align 8
  %3878 = add i64 %3877, -40
  %3879 = load i64, i64* %3, align 8
  %3880 = add i64 %3879, 3
  store i64 %3880, i64* %3, align 8
  %3881 = inttoptr i64 %3878 to i32*
  %3882 = load i32, i32* %3881, align 4
  %3883 = zext i32 %3882 to i64
  store i64 %3883, i64* %RAX.i691, align 8
  %3884 = add i64 %3877, -16
  %3885 = add i64 %3879, 7
  store i64 %3885, i64* %3, align 8
  %3886 = inttoptr i64 %3884 to i64*
  %3887 = load i64, i64* %3886, align 8
  store i64 %3887, i64* %RCX.i689, align 8
  %3888 = add i64 %3887, 64
  %3889 = add i64 %3879, 10
  store i64 %3889, i64* %3, align 8
  %3890 = inttoptr i64 %3888 to i32*
  store i32 %3882, i32* %3890, align 4
  %3891 = load i64, i64* %RBP.i, align 8
  %3892 = add i64 %3891, -48
  %3893 = load i64, i64* %3, align 8
  %3894 = add i64 %3893, 4
  store i64 %3894, i64* %3, align 8
  %3895 = inttoptr i64 %3892 to i64*
  %3896 = load i64, i64* %3895, align 8
  store i64 %3896, i64* %RCX.i689, align 8
  %RSI.i40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3897 = add i64 %3891, -16
  %3898 = add i64 %3893, 8
  store i64 %3898, i64* %3, align 8
  %3899 = inttoptr i64 %3897 to i64*
  %3900 = load i64, i64* %3899, align 8
  store i64 %3900, i64* %RSI.i40, align 8
  %3901 = add i64 %3900, 3152
  %3902 = add i64 %3893, 15
  store i64 %3902, i64* %3, align 8
  %3903 = inttoptr i64 %3901 to i64*
  store i64 %3896, i64* %3903, align 8
  %3904 = load i64, i64* %RBP.i, align 8
  %3905 = add i64 %3904, -52
  %3906 = load i64, i64* %3, align 8
  %3907 = add i64 %3906, 3
  store i64 %3907, i64* %3, align 8
  %3908 = inttoptr i64 %3905 to i32*
  %3909 = load i32, i32* %3908, align 4
  %3910 = zext i32 %3909 to i64
  store i64 %3910, i64* %RAX.i691, align 8
  %3911 = add i64 %3904, -16
  %3912 = add i64 %3906, 7
  store i64 %3912, i64* %3, align 8
  %3913 = inttoptr i64 %3911 to i64*
  %3914 = load i64, i64* %3913, align 8
  store i64 %3914, i64* %RCX.i689, align 8
  %3915 = add i64 %3914, 60
  %3916 = add i64 %3906, 10
  store i64 %3916, i64* %3, align 8
  %3917 = inttoptr i64 %3915 to i32*
  store i32 %3909, i32* %3917, align 4
  %3918 = load i64, i64* %RBP.i, align 8
  %3919 = add i64 %3918, -64
  %3920 = load i64, i64* %3, align 8
  %3921 = add i64 %3920, 4
  store i64 %3921, i64* %3, align 8
  %3922 = inttoptr i64 %3919 to i64*
  %3923 = load i64, i64* %3922, align 8
  store i64 %3923, i64* %RCX.i689, align 8
  %3924 = add i64 %3918, -16
  %3925 = add i64 %3920, 8
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3924 to i64*
  %3927 = load i64, i64* %3926, align 8
  store i64 %3927, i64* %RSI.i40, align 8
  %3928 = add i64 %3920, 11
  store i64 %3928, i64* %3, align 8
  %3929 = inttoptr i64 %3927 to i64*
  %3930 = load i64, i64* %3929, align 8
  store i64 %3930, i64* %RSI.i40, align 8
  %3931 = add i64 %3930, 24
  %3932 = add i64 %3920, 15
  store i64 %3932, i64* %3, align 8
  %3933 = inttoptr i64 %3931 to i64*
  store i64 %3923, i64* %3933, align 8
  %3934 = load i64, i64* %RBP.i, align 8
  %3935 = add i64 %3934, -68
  %3936 = load i64, i64* %3, align 8
  %3937 = add i64 %3936, 3
  store i64 %3937, i64* %3, align 8
  %3938 = inttoptr i64 %3935 to i32*
  %3939 = load i32, i32* %3938, align 4
  %3940 = zext i32 %3939 to i64
  store i64 %3940, i64* %RAX.i691, align 8
  %3941 = add i64 %3934, -16
  %3942 = add i64 %3936, 7
  store i64 %3942, i64* %3, align 8
  %3943 = inttoptr i64 %3941 to i64*
  %3944 = load i64, i64* %3943, align 8
  store i64 %3944, i64* %RCX.i689, align 8
  %3945 = add i64 %3936, 10
  store i64 %3945, i64* %3, align 8
  %3946 = inttoptr i64 %3944 to i64*
  %3947 = load i64, i64* %3946, align 8
  store i64 %3947, i64* %RCX.i689, align 8
  %3948 = add i64 %3947, 32
  %3949 = add i64 %3936, 13
  store i64 %3949, i64* %3, align 8
  %3950 = inttoptr i64 %3948 to i32*
  store i32 %3939, i32* %3950, align 4
  %3951 = load i64, i64* %RBP.i, align 8
  %3952 = add i64 %3951, -1
  %3953 = load i64, i64* %3, align 8
  %3954 = add i64 %3953, 4
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3952 to i8*
  store i8 0, i8* %3955, align 1
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_407d85

block_.L_407d85:                                  ; preds = %block_.L_407d14, %block_407b18, %block_407487, %block_40745f, %block_407371
  %3956 = phi i64 [ %.pre103, %block_.L_407d14 ], [ %2933, %block_407b18 ], [ %483, %block_407487 ], [ %435, %block_40745f ], [ %74, %block_407371 ]
  %RAX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3957 = load i64, i64* %RBP.i, align 8
  %3958 = add i64 %3957, -1
  %3959 = add i64 %3956, 4
  store i64 %3959, i64* %3, align 8
  %3960 = inttoptr i64 %3958 to i8*
  %3961 = load i8, i8* %3960, align 1
  %3962 = zext i8 %3961 to i64
  store i64 %3962, i64* %RAX.i, align 8
  %3963 = add i64 %3956, 5
  store i64 %3963, i64* %3, align 8
  %3964 = load i64, i64* %6, align 8
  %3965 = add i64 %3964, 8
  %3966 = inttoptr i64 %3964 to i64*
  %3967 = load i64, i64* %3966, align 8
  store i64 %3967, i64* %RBP.i, align 8
  store i64 %3965, i64* %6, align 8
  %3968 = add i64 %3956, 6
  store i64 %3968, i64* %3, align 8
  %3969 = inttoptr i64 %3965 to i64*
  %3970 = load i64, i64* %3969, align 8
  store i64 %3970, i64* %3, align 8
  %3971 = add i64 %3964, 16
  store i64 %3971, i64* %6, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__0x14__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = zext i8 %8 to i32
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i8 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i8 %8, 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4079b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40735b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407360(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_jne_.L_40737a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x0__MINUS0x1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407d85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_jne_.L_40738d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407440(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_0xc__rax____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %CL, align 1
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
define %struct.Memory* @routine_movb__cl____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i8 %6, i8* %5, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc70__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3184
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
define %struct.Memory* @routine_shll__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 24
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = icmp eq i32 %6, 0
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %14, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %18 = lshr i32 %.tr, 23
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  store i8 %20, i8* %17, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc70__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x18___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 23
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 24
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 255
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  store i8 %18, i8* %14, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = icmp eq i32 %11, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xc__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = xor i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RSI, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl_0x618170___rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6390128
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %12, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %12, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xc70__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 3184
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__edx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %R8, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movq__r8__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movl__edx__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 32
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_movl__edx__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 36
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_jne_.L_40743b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_movl__ecx__0x28__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x444__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1092
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
define %struct.Memory* @routine_movl_0xfa50__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64080
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jne_.L_407468(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_407490(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1__MINUS0x1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 1, i8* %7, align 1
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
define %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xc50__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x3c__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rsi_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_andl__0xff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 255
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x11__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -17
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 7
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 8
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 16777215
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_40753a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movl_0x618570___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6391152
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
define %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movl__ecx__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x200__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -512
  %10 = icmp ult i32 %8, 512
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
define %struct.Memory* @routine_jne_.L_407535(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40753a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__esi__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x11__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -17
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = xor i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RCX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dil__MINUS0x11__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -17
  %6 = load i8, i8* %DIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x444__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 1092
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
define %struct.Memory* @routine_movl__eax__0x444__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 1092
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xfa50__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 64080
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
define %struct.Memory* @routine_jne_.L_40759d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_MINUS0x11__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -17
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
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
define %struct.Memory* @routine_cmpl_0x40__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 64
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
define %struct.Memory* @routine_je_.L_4075be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movl__edx__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_andl__0xff___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 255
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x11__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -17
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 7
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 8
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 16777215
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40765a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_407655(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40765a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4076bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4076de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40777a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_407775(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40777a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4077dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4077fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40788f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40788a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40788f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -5
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
define %struct.Memory* @routine_movl__eax__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_0xc50__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 3152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x3c__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_andl__0xff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 255
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__dil___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %DIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x40__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 7
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 8
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 16777215
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_jne_.L_407976(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_407971(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407976(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl_0x40__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc70__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3184
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
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_0xc__rax____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x19__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -25
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
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
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_0x20__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xfa50__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64080
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jle_.L_407b0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407a49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_407a58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407cd1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jne_.L_407a67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407ab3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x19__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -25
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
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
define %struct.Memory* @routine_movb__al____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i8 %6, i8* %5, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movzbl_MINUS0x19__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -25
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl_0x618170___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6390128
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = xor i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %12, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %12, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RCX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_407ab8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_407ace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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
define %struct.Memory* @routine_jle_.L_407b21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_407b39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x19__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -25
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
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
define %struct.Memory* @routine_movl___rdx__rsi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -17
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
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
define %struct.Memory* @routine_je_.L_407b88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_407b99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %SIL, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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
define %struct.Memory* @routine_jne_.L_407be2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_407a3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_407bfb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_407c44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_407c5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -5
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
define %struct.Memory* @routine_movzbl__sil___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %SIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 36
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl_0x24__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 36
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
define %struct.Memory* @routine_movl__ecx__0x24__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -80
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
define %struct.Memory* @routine_jae_.L_407d14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xc70__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 3184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x19__rbp____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -25
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__0x444__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 1092
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0xc50__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 3152
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x3c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x18__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x20__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_MINUS0x1__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
