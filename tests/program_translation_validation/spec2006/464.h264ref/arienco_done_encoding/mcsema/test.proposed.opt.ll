; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6cb908_type = type <{ [8 x i8] }>
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
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6cb908 = local_unnamed_addr global %G_0x6cb908_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @arienco_done_encoding(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %RDI.i695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %11 = add i64 %7, -16
  %12 = load i64, i64* %RDI.i695, align 8
  %13 = add i64 %10, 7
  store i64 %13, i64* %3, align 8
  %14 = inttoptr i64 %11 to i64*
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %RBP.i, align 8
  %16 = add i64 %15, -8
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 4
  store i64 %18, i64* %3, align 8
  %19 = inttoptr i64 %16 to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %RDI.i695, align 8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i689 = getelementptr inbounds %union.anon, %union.anon* %21, i64 0, i32 0
  %22 = add i64 %20, 8
  %23 = add i64 %17, 7
  store i64 %23, i64* %3, align 8
  %24 = inttoptr i64 %22 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 1
  %27 = icmp slt i32 %25, 0
  %28 = icmp slt i32 %26, 0
  %29 = xor i1 %27, %28
  %30 = zext i32 %26 to i64
  store i64 %30, i64* %RAX.i689, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %25, 31
  %32 = trunc i32 %.lobit to i8
  store i8 %32, i8* %31, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %34 = and i32 %26, 254
  %35 = tail call i32 @llvm.ctpop.i32(i32 %34)
  %36 = trunc i32 %35 to i8
  %37 = and i8 %36, 1
  %38 = xor i8 %37, 1
  store i8 %38, i8* %33, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = icmp eq i32 %26, 0
  %42 = zext i1 %41 to i8
  store i8 %42, i8* %40, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %44 = lshr i32 %25, 30
  %45 = trunc i32 %44 to i8
  %46 = and i8 %45, 1
  store i8 %46, i8* %43, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %48 = zext i1 %29 to i8
  store i8 %48, i8* %47, align 1
  %EAX.i684 = bitcast %union.anon* %21 to i32*
  %49 = add i64 %17, 12
  store i64 %49, i64* %3, align 8
  store i32 %26, i32* %24, align 4
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -8
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RDI.i695, align 8
  %56 = add i64 %52, 6
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %55 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = lshr i32 %58, 9
  %60 = and i32 %59, 1
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RAX.i689, align 8
  store i8 0, i8* %31, align 1
  %62 = tail call i32 @llvm.ctpop.i32(i32 %60)
  %63 = trunc i32 %62 to i8
  %64 = xor i8 %63, 1
  store i8 %64, i8* %33, align 1
  %65 = trunc i32 %60 to i8
  %66 = xor i8 %65, 1
  store i8 %66, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %39, align 1
  %67 = add i64 %52, 16
  store i64 %67, i64* %3, align 8
  %68 = load i64, i64* %54, align 8
  store i64 %68, i64* %RDI.i695, align 8
  %69 = add i64 %68, 8
  %70 = add i64 %52, 19
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %60
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RAX.i689, align 8
  store i8 0, i8* %31, align 1
  %75 = and i32 %73, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %33, align 1
  %80 = icmp eq i32 %73, 0
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %40, align 1
  %82 = lshr i32 %72, 31
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %43, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %39, align 1
  %84 = add i64 %52, 22
  store i64 %84, i64* %3, align 8
  store i32 %73, i32* %71, align 4
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -8
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RDI.i695, align 8
  %91 = add i64 %90, 12
  %92 = add i64 %87, 7
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = add i32 %94, -1
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RAX.i689, align 8
  %97 = add i64 %87, 13
  store i64 %97, i64* %3, align 8
  store i32 %95, i32* %93, align 4
  %98 = load i32, i32* %EAX.i684, align 4
  %99 = load i64, i64* %3, align 8
  store i8 0, i8* %31, align 1
  %100 = and i32 %98, 255
  %101 = tail call i32 @llvm.ctpop.i32(i32 %100)
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  %104 = xor i8 %103, 1
  store i8 %104, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %105 = icmp eq i32 %98, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %40, align 1
  %107 = lshr i32 %98, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %43, align 1
  store i8 0, i8* %47, align 1
  %.v49 = select i1 %105, i64 9, i64 110
  %109 = add i64 %99, %.v49
  store i64 %109, i64* %3, align 8
  br i1 %105, label %block_4015f1, label %entry.block_.L_401656_crit_edge

entry.block_.L_401656_crit_edge:                  ; preds = %entry
  %.pre37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre38 = getelementptr inbounds %union.anon, %union.anon* %.pre37, i64 0, i32 0
  %.pre39 = bitcast %union.anon* %.pre37 to i32*
  %.pre40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %.pre42 = bitcast %union.anon* %.pre40 to i8*
  %.pre44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  br label %block_.L_401656

block_4015f1:                                     ; preds = %entry
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -8
  %112 = add i64 %109, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %111 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RAX.i689, align 8
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i646 = getelementptr inbounds %union.anon, %union.anon* %115, i64 0, i32 0
  %116 = add i64 %114, 8
  %117 = add i64 %109, 7
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %RCX.i646, align 8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL.i643 = bitcast %union.anon* %121 to i8*
  %122 = trunc i32 %119 to i8
  store i8 %122, i8* %DL.i643, align 1
  %123 = add i64 %109, 13
  store i64 %123, i64* %3, align 8
  %124 = load i64, i64* %113, align 8
  store i64 %124, i64* %RAX.i689, align 8
  %125 = add i64 %124, 24
  %126 = add i64 %109, 17
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i64*
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %RAX.i689, align 8
  %RSI.i634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %129 = add i64 %109, 21
  store i64 %129, i64* %3, align 8
  %130 = load i64, i64* %113, align 8
  store i64 %130, i64* %RSI.i634, align 8
  %131 = add i64 %130, 32
  %132 = add i64 %109, 25
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RSI.i634, align 8
  %135 = add i64 %109, 27
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i32*
  %137 = load i32, i32* %136, align 4
  %138 = zext i32 %137 to i64
  store i64 %138, i64* %RCX.i646, align 8
  %ECX.i626 = bitcast %union.anon* %115 to i32*
  %139 = add i32 %137, 1
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RDI.i695, align 8
  %141 = icmp eq i32 %137, -1
  %142 = icmp eq i32 %139, 0
  %143 = or i1 %141, %142
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %31, align 1
  %145 = and i32 %139, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %33, align 1
  %150 = xor i32 %139, %137
  %151 = lshr i32 %150, 4
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %39, align 1
  %154 = zext i1 %142 to i8
  store i8 %154, i8* %40, align 1
  %155 = lshr i32 %139, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %43, align 1
  %157 = lshr i32 %137, 31
  %158 = xor i32 %155, %157
  %159 = add nuw nsw i32 %158, %155
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %47, align 1
  %162 = add i64 %109, 34
  store i64 %162, i64* %3, align 8
  store i32 %139, i32* %136, align 4
  %163 = load i32, i32* %ECX.i626, align 4
  %164 = load i64, i64* %3, align 8
  %165 = sext i32 %163 to i64
  store i64 %165, i64* %RSI.i634, align 8
  %166 = load i64, i64* %RAX.i689, align 8
  %167 = add i64 %166, %165
  %168 = load i8, i8* %DL.i643, align 1
  %169 = add i64 %164, 6
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %167 to i8*
  store i8 %168, i8* %170, align 1
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -8
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, 4
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %172 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RAX.i689, align 8
  %177 = add i64 %176, 12
  %178 = add i64 %173, 11
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i32*
  store i32 8, i32* %179, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_401624

block_.L_401624:                                  ; preds = %block_401632, %block_4015f1
  %180 = phi i64 [ %279, %block_401632 ], [ %.pre, %block_4015f1 ]
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -8
  %183 = add i64 %180, 4
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i64*
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %RAX.i689, align 8
  %186 = add i64 %185, 80
  %187 = add i64 %180, 8
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %186 to i32*
  %189 = load i32, i32* %188, align 4
  %190 = add i32 %189, -7
  %191 = icmp ult i32 %189, 7
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %31, align 1
  %193 = and i32 %190, 255
  %194 = tail call i32 @llvm.ctpop.i32(i32 %193)
  %195 = trunc i32 %194 to i8
  %196 = and i8 %195, 1
  %197 = xor i8 %196, 1
  store i8 %197, i8* %33, align 1
  %198 = xor i32 %190, %189
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  store i8 %201, i8* %39, align 1
  %202 = icmp eq i32 %190, 0
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %40, align 1
  %204 = lshr i32 %190, 31
  %205 = trunc i32 %204 to i8
  store i8 %205, i8* %43, align 1
  %206 = lshr i32 %189, 31
  %207 = xor i32 %204, %206
  %208 = add nuw nsw i32 %207, %206
  %209 = icmp eq i32 %208, 2
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %47, align 1
  %211 = icmp ne i8 %205, 0
  %212 = xor i1 %211, %209
  %213 = or i1 %202, %212
  %.v58 = select i1 %213, i64 45, i64 14
  %214 = add i64 %180, %.v58
  store i64 %214, i64* %3, align 8
  br i1 %213, label %block_.L_401651, label %block_401632

block_401632:                                     ; preds = %block_.L_401624
  %215 = add i64 %214, 4
  store i64 %215, i64* %3, align 8
  %216 = load i64, i64* %184, align 8
  store i64 %216, i64* %RAX.i689, align 8
  %217 = add i64 %216, 80
  %218 = add i64 %214, 7
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %220, -8
  %222 = zext i32 %221 to i64
  store i64 %222, i64* %RCX.i646, align 8
  %223 = icmp ult i32 %220, 8
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %31, align 1
  %225 = and i32 %221, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225)
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %33, align 1
  %230 = xor i32 %221, %220
  %231 = lshr i32 %230, 4
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  store i8 %233, i8* %39, align 1
  %234 = icmp eq i32 %221, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %40, align 1
  %236 = lshr i32 %221, 31
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %43, align 1
  %238 = lshr i32 %220, 31
  %239 = xor i32 %236, %238
  %240 = add nuw nsw i32 %239, %238
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %47, align 1
  %243 = add i64 %214, 13
  store i64 %243, i64* %3, align 8
  store i32 %221, i32* %219, align 4
  %244 = load i64, i64* %RBP.i, align 8
  %245 = add i64 %244, -8
  %246 = load i64, i64* %3, align 8
  %247 = add i64 %246, 4
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %245 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %RAX.i689, align 8
  %250 = add i64 %249, 88
  %251 = add i64 %246, 7
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = add i32 %253, 1
  %255 = zext i32 %254 to i64
  store i64 %255, i64* %RCX.i646, align 8
  %256 = icmp eq i32 %253, -1
  %257 = icmp eq i32 %254, 0
  %258 = or i1 %256, %257
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %31, align 1
  %260 = and i32 %254, 255
  %261 = tail call i32 @llvm.ctpop.i32(i32 %260)
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  store i8 %264, i8* %33, align 1
  %265 = xor i32 %254, %253
  %266 = lshr i32 %265, 4
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  store i8 %268, i8* %39, align 1
  %269 = zext i1 %257 to i8
  store i8 %269, i8* %40, align 1
  %270 = lshr i32 %254, 31
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %43, align 1
  %272 = lshr i32 %253, 31
  %273 = xor i32 %270, %272
  %274 = add nuw nsw i32 %273, %270
  %275 = icmp eq i32 %274, 2
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %47, align 1
  %277 = add i64 %246, 13
  store i64 %277, i64* %3, align 8
  store i32 %254, i32* %252, align 4
  %278 = load i64, i64* %3, align 8
  %279 = add i64 %278, -40
  store i64 %279, i64* %3, align 8
  br label %block_.L_401624

block_.L_401651:                                  ; preds = %block_.L_401624
  %280 = add i64 %214, 5
  store i64 %280, i64* %3, align 8
  br label %block_.L_401656

block_.L_401656:                                  ; preds = %entry.block_.L_401656_crit_edge, %block_.L_401651
  %RSI.i489.pre-phi = phi i64* [ %.pre44, %entry.block_.L_401656_crit_edge ], [ %RSI.i634, %block_.L_401651 ]
  %DL.i536.pre-phi = phi i8* [ %.pre42, %entry.block_.L_401656_crit_edge ], [ %DL.i643, %block_.L_401651 ]
  %ECX.i561.pre-phi = phi i32* [ %.pre39, %entry.block_.L_401656_crit_edge ], [ %ECX.i626, %block_.L_401651 ]
  %RCX.i428.pre-phi = phi i64* [ %.pre38, %entry.block_.L_401656_crit_edge ], [ %RCX.i646, %block_.L_401651 ]
  %281 = phi i64 [ %109, %entry.block_.L_401656_crit_edge ], [ %280, %block_.L_401651 ]
  %282 = add i64 %281, 5
  br label %block_.L_40165b

block_.L_40165b:                                  ; preds = %block_.L_401723, %block_.L_401656
  %storemerge = phi i64 [ %282, %block_.L_401656 ], [ %596, %block_.L_401723 ]
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -8
  %285 = add i64 %storemerge, 4
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RAX.i689, align 8
  %288 = add i64 %287, 16
  %289 = add i64 %storemerge, 8
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  store i8 0, i8* %31, align 1
  %292 = and i32 %291, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %297 = icmp eq i32 %291, 0
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %40, align 1
  %299 = lshr i32 %291, 31
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %43, align 1
  store i8 0, i8* %47, align 1
  %.v = select i1 %297, i64 205, i64 14
  %301 = add i64 %storemerge, %.v
  %302 = add i64 %301, 4
  store i64 %302, i64* %3, align 8
  %303 = load i64, i64* %286, align 8
  store i64 %303, i64* %RAX.i689, align 8
  br i1 %297, label %block_.L_401728, label %block_401669

block_401669:                                     ; preds = %block_.L_40165b
  %304 = add i64 %303, 16
  %305 = add i64 %301, 7
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = add i32 %307, -1
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RCX.i428.pre-phi, align 8
  %310 = icmp ne i32 %307, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %31, align 1
  %312 = and i32 %308, 255
  %313 = tail call i32 @llvm.ctpop.i32(i32 %312)
  %314 = trunc i32 %313 to i8
  %315 = and i8 %314, 1
  %316 = xor i8 %315, 1
  store i8 %316, i8* %33, align 1
  %317 = xor i32 %307, 16
  %318 = xor i32 %317, %308
  %319 = lshr i32 %318, 4
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  store i8 %321, i8* %39, align 1
  %322 = icmp eq i32 %308, 0
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %40, align 1
  %324 = lshr i32 %308, 31
  %325 = trunc i32 %324 to i8
  store i8 %325, i8* %43, align 1
  %326 = lshr i32 %307, 31
  %327 = xor i32 %324, %326
  %328 = xor i32 %324, 1
  %329 = add nuw nsw i32 %327, %328
  %330 = icmp eq i32 %329, 2
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %47, align 1
  %332 = add i64 %301, 13
  store i64 %332, i64* %3, align 8
  store i32 %308, i32* %306, align 4
  %333 = load i64, i64* %RBP.i, align 8
  %334 = add i64 %333, -8
  %335 = load i64, i64* %3, align 8
  %336 = add i64 %335, 4
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %334 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %RAX.i689, align 8
  %339 = add i64 %338, 8
  %340 = add i64 %335, 7
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  %342 = load i32, i32* %341, align 4
  %343 = shl i32 %342, 1
  %344 = icmp slt i32 %342, 0
  %345 = icmp slt i32 %343, 0
  %346 = xor i1 %344, %345
  %347 = zext i32 %343 to i64
  store i64 %347, i64* %RCX.i428.pre-phi, align 8
  %.lobit12 = lshr i32 %342, 31
  %348 = trunc i32 %.lobit12 to i8
  store i8 %348, i8* %31, align 1
  %349 = and i32 %343, 254
  %350 = tail call i32 @llvm.ctpop.i32(i32 %349)
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = xor i8 %352, 1
  store i8 %353, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %354 = icmp eq i32 %343, 0
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %40, align 1
  %356 = lshr i32 %342, 30
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  store i8 %358, i8* %43, align 1
  %359 = zext i1 %346 to i8
  store i8 %359, i8* %47, align 1
  %360 = add i64 %335, 12
  store i64 %360, i64* %3, align 8
  store i32 %343, i32* %341, align 4
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -8
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, 4
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %362 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %RAX.i689, align 8
  %367 = add i64 %363, 6
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = lshr i32 %369, 9
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %DL.i536.pre-phi, align 1
  store i8 0, i8* %31, align 1
  %374 = zext i8 %373 to i32
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374)
  %376 = trunc i32 %375 to i8
  %377 = xor i8 %376, 1
  store i8 %377, i8* %33, align 1
  store i8 %372, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %39, align 1
  %378 = zext i8 %373 to i64
  store i64 %378, i64* %RCX.i428.pre-phi, align 8
  %379 = load i64, i64* %RBP.i, align 8
  %380 = add i64 %379, -8
  %381 = add i64 %363, 31
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i64*
  %383 = load i64, i64* %382, align 8
  store i64 %383, i64* %RAX.i689, align 8
  %384 = add i64 %383, 8
  %385 = add i64 %363, 34
  store i64 %385, i64* %3, align 8
  %386 = zext i8 %373 to i32
  %387 = inttoptr i64 %384 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = or i32 %388, %386
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RCX.i428.pre-phi, align 8
  store i8 0, i8* %31, align 1
  %391 = and i32 %389, 255
  %392 = tail call i32 @llvm.ctpop.i32(i32 %391)
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  %395 = xor i8 %394, 1
  store i8 %395, i8* %33, align 1
  %396 = icmp eq i32 %389, 0
  %397 = zext i1 %396 to i8
  store i8 %397, i8* %40, align 1
  %398 = lshr i32 %388, 31
  %399 = trunc i32 %398 to i8
  store i8 %399, i8* %43, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %39, align 1
  %400 = add i64 %363, 37
  store i64 %400, i64* %3, align 8
  store i32 %389, i32* %387, align 4
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -8
  %403 = load i64, i64* %3, align 8
  %404 = add i64 %403, 4
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %402 to i64*
  %406 = load i64, i64* %405, align 8
  store i64 %406, i64* %RAX.i689, align 8
  %407 = add i64 %406, 12
  %408 = add i64 %403, 7
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = add i32 %410, -1
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RCX.i428.pre-phi, align 8
  %413 = add i64 %403, 13
  store i64 %413, i64* %3, align 8
  store i32 %411, i32* %409, align 4
  %414 = load i32, i32* %ECX.i561.pre-phi, align 4
  %415 = load i64, i64* %3, align 8
  store i8 0, i8* %31, align 1
  %416 = and i32 %414, 255
  %417 = tail call i32 @llvm.ctpop.i32(i32 %416)
  %418 = trunc i32 %417 to i8
  %419 = and i8 %418, 1
  %420 = xor i8 %419, 1
  store i8 %420, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %421 = icmp eq i32 %414, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %40, align 1
  %423 = lshr i32 %414, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %43, align 1
  store i8 0, i8* %47, align 1
  %.v50 = select i1 %421, i64 9, i64 110
  %425 = add i64 %415, %.v50
  store i64 %425, i64* %3, align 8
  br i1 %421, label %block_4016be, label %block_.L_401723

block_4016be:                                     ; preds = %block_401669
  %426 = load i64, i64* %RBP.i, align 8
  %427 = add i64 %426, -8
  %428 = add i64 %425, 4
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i64*
  %430 = load i64, i64* %429, align 8
  store i64 %430, i64* %RAX.i689, align 8
  %431 = add i64 %430, 8
  %432 = add i64 %425, 7
  store i64 %432, i64* %3, align 8
  %433 = inttoptr i64 %431 to i32*
  %434 = load i32, i32* %433, align 4
  %435 = zext i32 %434 to i64
  store i64 %435, i64* %RCX.i428.pre-phi, align 8
  %436 = trunc i32 %434 to i8
  store i8 %436, i8* %DL.i536.pre-phi, align 1
  %437 = add i64 %425, 13
  store i64 %437, i64* %3, align 8
  %438 = load i64, i64* %429, align 8
  store i64 %438, i64* %RAX.i689, align 8
  %439 = add i64 %438, 24
  %440 = add i64 %425, 17
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i64*
  %442 = load i64, i64* %441, align 8
  store i64 %442, i64* %RAX.i689, align 8
  %443 = add i64 %425, 21
  store i64 %443, i64* %3, align 8
  %444 = load i64, i64* %429, align 8
  store i64 %444, i64* %RSI.i489.pre-phi, align 8
  %445 = add i64 %444, 32
  %446 = add i64 %425, 25
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RSI.i489.pre-phi, align 8
  %449 = add i64 %425, 27
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i32*
  %451 = load i32, i32* %450, align 4
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RCX.i428.pre-phi, align 8
  %453 = add i32 %451, 1
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RDI.i695, align 8
  %455 = icmp eq i32 %451, -1
  %456 = icmp eq i32 %453, 0
  %457 = or i1 %455, %456
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %31, align 1
  %459 = and i32 %453, 255
  %460 = tail call i32 @llvm.ctpop.i32(i32 %459)
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %33, align 1
  %464 = xor i32 %453, %451
  %465 = lshr i32 %464, 4
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %39, align 1
  %468 = zext i1 %456 to i8
  store i8 %468, i8* %40, align 1
  %469 = lshr i32 %453, 31
  %470 = trunc i32 %469 to i8
  store i8 %470, i8* %43, align 1
  %471 = lshr i32 %451, 31
  %472 = xor i32 %469, %471
  %473 = add nuw nsw i32 %472, %469
  %474 = icmp eq i32 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %47, align 1
  %476 = add i64 %425, 34
  store i64 %476, i64* %3, align 8
  store i32 %453, i32* %450, align 4
  %477 = load i32, i32* %ECX.i561.pre-phi, align 4
  %478 = load i64, i64* %3, align 8
  %479 = sext i32 %477 to i64
  store i64 %479, i64* %RSI.i489.pre-phi, align 8
  %480 = load i64, i64* %RAX.i689, align 8
  %481 = add i64 %480, %479
  %482 = load i8, i8* %DL.i536.pre-phi, align 1
  %483 = add i64 %478, 6
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %481 to i8*
  store i8 %482, i8* %484, align 1
  %485 = load i64, i64* %RBP.i, align 8
  %486 = add i64 %485, -8
  %487 = load i64, i64* %3, align 8
  %488 = add i64 %487, 4
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %486 to i64*
  %490 = load i64, i64* %489, align 8
  store i64 %490, i64* %RAX.i689, align 8
  %491 = add i64 %490, 12
  %492 = add i64 %487, 11
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  store i32 8, i32* %493, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_4016f1

block_.L_4016f1:                                  ; preds = %block_4016ff, %block_4016be
  %494 = phi i64 [ %593, %block_4016ff ], [ %.pre30, %block_4016be ]
  %495 = load i64, i64* %RBP.i, align 8
  %496 = add i64 %495, -8
  %497 = add i64 %494, 4
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i64*
  %499 = load i64, i64* %498, align 8
  store i64 %499, i64* %RAX.i689, align 8
  %500 = add i64 %499, 80
  %501 = add i64 %494, 8
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = add i32 %503, -7
  %505 = icmp ult i32 %503, 7
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %31, align 1
  %507 = and i32 %504, 255
  %508 = tail call i32 @llvm.ctpop.i32(i32 %507)
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = xor i8 %510, 1
  store i8 %511, i8* %33, align 1
  %512 = xor i32 %504, %503
  %513 = lshr i32 %512, 4
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  store i8 %515, i8* %39, align 1
  %516 = icmp eq i32 %504, 0
  %517 = zext i1 %516 to i8
  store i8 %517, i8* %40, align 1
  %518 = lshr i32 %504, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %43, align 1
  %520 = lshr i32 %503, 31
  %521 = xor i32 %518, %520
  %522 = add nuw nsw i32 %521, %520
  %523 = icmp eq i32 %522, 2
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %47, align 1
  %525 = icmp ne i8 %519, 0
  %526 = xor i1 %525, %523
  %527 = or i1 %516, %526
  %.v51 = select i1 %527, i64 45, i64 14
  %528 = add i64 %494, %.v51
  store i64 %528, i64* %3, align 8
  br i1 %527, label %block_.L_40171e, label %block_4016ff

block_4016ff:                                     ; preds = %block_.L_4016f1
  %529 = add i64 %528, 4
  store i64 %529, i64* %3, align 8
  %530 = load i64, i64* %498, align 8
  store i64 %530, i64* %RAX.i689, align 8
  %531 = add i64 %530, 80
  %532 = add i64 %528, 7
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = add i32 %534, -8
  %536 = zext i32 %535 to i64
  store i64 %536, i64* %RCX.i428.pre-phi, align 8
  %537 = icmp ult i32 %534, 8
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %31, align 1
  %539 = and i32 %535, 255
  %540 = tail call i32 @llvm.ctpop.i32(i32 %539)
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  %543 = xor i8 %542, 1
  store i8 %543, i8* %33, align 1
  %544 = xor i32 %535, %534
  %545 = lshr i32 %544, 4
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %39, align 1
  %548 = icmp eq i32 %535, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %40, align 1
  %550 = lshr i32 %535, 31
  %551 = trunc i32 %550 to i8
  store i8 %551, i8* %43, align 1
  %552 = lshr i32 %534, 31
  %553 = xor i32 %550, %552
  %554 = add nuw nsw i32 %553, %552
  %555 = icmp eq i32 %554, 2
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %47, align 1
  %557 = add i64 %528, 13
  store i64 %557, i64* %3, align 8
  store i32 %535, i32* %533, align 4
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -8
  %560 = load i64, i64* %3, align 8
  %561 = add i64 %560, 4
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %559 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %RAX.i689, align 8
  %564 = add i64 %563, 88
  %565 = add i64 %560, 7
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = add i32 %567, 1
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %RCX.i428.pre-phi, align 8
  %570 = icmp eq i32 %567, -1
  %571 = icmp eq i32 %568, 0
  %572 = or i1 %570, %571
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %31, align 1
  %574 = and i32 %568, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %33, align 1
  %579 = xor i32 %568, %567
  %580 = lshr i32 %579, 4
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %39, align 1
  %583 = zext i1 %571 to i8
  store i8 %583, i8* %40, align 1
  %584 = lshr i32 %568, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %43, align 1
  %586 = lshr i32 %567, 31
  %587 = xor i32 %584, %586
  %588 = add nuw nsw i32 %587, %584
  %589 = icmp eq i32 %588, 2
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %47, align 1
  %591 = add i64 %560, 13
  store i64 %591, i64* %3, align 8
  store i32 %568, i32* %566, align 4
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, -40
  store i64 %593, i64* %3, align 8
  br label %block_.L_4016f1

block_.L_40171e:                                  ; preds = %block_.L_4016f1
  %594 = add i64 %528, 5
  store i64 %594, i64* %3, align 8
  br label %block_.L_401723

block_.L_401723:                                  ; preds = %block_401669, %block_.L_40171e
  %595 = phi i64 [ %594, %block_.L_40171e ], [ %425, %block_401669 ]
  %596 = add i64 %595, -200
  %597 = add i64 %595, 5
  store i64 %597, i64* %3, align 8
  br label %block_.L_40165b

block_.L_401728:                                  ; preds = %block_.L_40165b
  %598 = add i64 %303, 8
  %599 = add i64 %301, 7
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = shl i32 %601, 1
  %603 = icmp slt i32 %601, 0
  %604 = icmp slt i32 %602, 0
  %605 = xor i1 %603, %604
  %606 = zext i32 %602 to i64
  store i64 %606, i64* %RCX.i428.pre-phi, align 8
  %.lobit13 = lshr i32 %601, 31
  %607 = trunc i32 %.lobit13 to i8
  store i8 %607, i8* %31, align 1
  %608 = and i32 %602, 254
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608)
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %613 = icmp eq i32 %602, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %40, align 1
  %615 = lshr i32 %601, 30
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  store i8 %617, i8* %43, align 1
  %618 = zext i1 %605 to i8
  store i8 %618, i8* %47, align 1
  %619 = add i64 %301, 12
  store i64 %619, i64* %3, align 8
  store i32 %602, i32* %600, align 4
  %620 = load i64, i64* %RBP.i, align 8
  %621 = add i64 %620, -8
  %622 = load i64, i64* %3, align 8
  %623 = add i64 %622, 4
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %621 to i64*
  %625 = load i64, i64* %624, align 8
  store i64 %625, i64* %RAX.i689, align 8
  %626 = add i64 %622, 6
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i32*
  %628 = load i32, i32* %627, align 4
  %629 = lshr i32 %628, 8
  %630 = and i32 %629, 1
  %631 = zext i32 %630 to i64
  store i64 %631, i64* %RCX.i428.pre-phi, align 8
  store i8 0, i8* %31, align 1
  %632 = tail call i32 @llvm.ctpop.i32(i32 %630)
  %633 = trunc i32 %632 to i8
  %634 = xor i8 %633, 1
  store i8 %634, i8* %33, align 1
  %635 = trunc i32 %630 to i8
  %636 = xor i8 %635, 1
  store i8 %636, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %39, align 1
  %637 = add i64 %622, 16
  store i64 %637, i64* %3, align 8
  %638 = load i64, i64* %624, align 8
  store i64 %638, i64* %RAX.i689, align 8
  %639 = add i64 %638, 8
  %640 = add i64 %622, 19
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = or i32 %642, %630
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RCX.i428.pre-phi, align 8
  store i8 0, i8* %31, align 1
  %645 = and i32 %643, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %33, align 1
  %650 = icmp eq i32 %643, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %40, align 1
  %652 = lshr i32 %642, 31
  %653 = trunc i32 %652 to i8
  store i8 %653, i8* %43, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %39, align 1
  %654 = add i64 %622, 22
  store i64 %654, i64* %3, align 8
  store i32 %643, i32* %641, align 4
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -8
  %657 = load i64, i64* %3, align 8
  %658 = add i64 %657, 4
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %656 to i64*
  %660 = load i64, i64* %659, align 8
  store i64 %660, i64* %RAX.i689, align 8
  %661 = add i64 %660, 12
  %662 = add i64 %657, 7
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = add i32 %664, -1
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RCX.i428.pre-phi, align 8
  %667 = add i64 %657, 13
  store i64 %667, i64* %3, align 8
  store i32 %665, i32* %663, align 4
  %668 = load i32, i32* %ECX.i561.pre-phi, align 4
  %669 = load i64, i64* %3, align 8
  store i8 0, i8* %31, align 1
  %670 = and i32 %668, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %675 = icmp eq i32 %668, 0
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %40, align 1
  %677 = lshr i32 %668, 31
  %678 = trunc i32 %677 to i8
  store i8 %678, i8* %43, align 1
  store i8 0, i8* %47, align 1
  %.v52 = select i1 %675, i64 9, i64 110
  %679 = add i64 %669, %.v52
  store i64 %679, i64* %3, align 8
  %680 = load i64, i64* %RBP.i, align 8
  br i1 %675, label %block_401761, label %block_.L_4017c6

block_401761:                                     ; preds = %block_.L_401728
  %681 = add i64 %680, -8
  %682 = add i64 %679, 4
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i64*
  %684 = load i64, i64* %683, align 8
  store i64 %684, i64* %RAX.i689, align 8
  %685 = add i64 %684, 8
  %686 = add i64 %679, 7
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = zext i32 %688 to i64
  store i64 %689, i64* %RCX.i428.pre-phi, align 8
  %690 = trunc i32 %688 to i8
  store i8 %690, i8* %DL.i536.pre-phi, align 1
  %691 = add i64 %679, 13
  store i64 %691, i64* %3, align 8
  %692 = load i64, i64* %683, align 8
  store i64 %692, i64* %RAX.i689, align 8
  %693 = add i64 %692, 24
  %694 = add i64 %679, 17
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %RAX.i689, align 8
  %697 = add i64 %679, 21
  store i64 %697, i64* %3, align 8
  %698 = load i64, i64* %683, align 8
  store i64 %698, i64* %RSI.i489.pre-phi, align 8
  %699 = add i64 %698, 32
  %700 = add i64 %679, 25
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %699 to i64*
  %702 = load i64, i64* %701, align 8
  store i64 %702, i64* %RSI.i489.pre-phi, align 8
  %703 = add i64 %679, 27
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i32*
  %705 = load i32, i32* %704, align 4
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %RCX.i428.pre-phi, align 8
  %707 = add i32 %705, 1
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RDI.i695, align 8
  %709 = icmp eq i32 %705, -1
  %710 = icmp eq i32 %707, 0
  %711 = or i1 %709, %710
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %31, align 1
  %713 = and i32 %707, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %33, align 1
  %718 = xor i32 %707, %705
  %719 = lshr i32 %718, 4
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  store i8 %721, i8* %39, align 1
  %722 = zext i1 %710 to i8
  store i8 %722, i8* %40, align 1
  %723 = lshr i32 %707, 31
  %724 = trunc i32 %723 to i8
  store i8 %724, i8* %43, align 1
  %725 = lshr i32 %705, 31
  %726 = xor i32 %723, %725
  %727 = add nuw nsw i32 %726, %723
  %728 = icmp eq i32 %727, 2
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %47, align 1
  %730 = add i64 %679, 34
  store i64 %730, i64* %3, align 8
  store i32 %707, i32* %704, align 4
  %731 = load i32, i32* %ECX.i561.pre-phi, align 4
  %732 = load i64, i64* %3, align 8
  %733 = sext i32 %731 to i64
  store i64 %733, i64* %RSI.i489.pre-phi, align 8
  %734 = load i64, i64* %RAX.i689, align 8
  %735 = add i64 %734, %733
  %736 = load i8, i8* %DL.i536.pre-phi, align 1
  %737 = add i64 %732, 6
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %735 to i8*
  store i8 %736, i8* %738, align 1
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -8
  %741 = load i64, i64* %3, align 8
  %742 = add i64 %741, 4
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %740 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RAX.i689, align 8
  %745 = add i64 %744, 12
  %746 = add i64 %741, 11
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i32*
  store i32 8, i32* %747, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_401794

block_.L_401794:                                  ; preds = %block_4017a2, %block_401761
  %748 = phi i64 [ %847, %block_4017a2 ], [ %.pre31, %block_401761 ]
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -8
  %751 = add i64 %748, 4
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i64*
  %753 = load i64, i64* %752, align 8
  store i64 %753, i64* %RAX.i689, align 8
  %754 = add i64 %753, 80
  %755 = add i64 %748, 8
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i32*
  %757 = load i32, i32* %756, align 4
  %758 = add i32 %757, -7
  %759 = icmp ult i32 %757, 7
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %31, align 1
  %761 = and i32 %758, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %33, align 1
  %766 = xor i32 %758, %757
  %767 = lshr i32 %766, 4
  %768 = trunc i32 %767 to i8
  %769 = and i8 %768, 1
  store i8 %769, i8* %39, align 1
  %770 = icmp eq i32 %758, 0
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %40, align 1
  %772 = lshr i32 %758, 31
  %773 = trunc i32 %772 to i8
  store i8 %773, i8* %43, align 1
  %774 = lshr i32 %757, 31
  %775 = xor i32 %772, %774
  %776 = add nuw nsw i32 %775, %774
  %777 = icmp eq i32 %776, 2
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %47, align 1
  %779 = icmp ne i8 %773, 0
  %780 = xor i1 %779, %777
  %781 = or i1 %770, %780
  %.v57 = select i1 %781, i64 45, i64 14
  %782 = add i64 %748, %.v57
  store i64 %782, i64* %3, align 8
  br i1 %781, label %block_.L_4017c1, label %block_4017a2

block_4017a2:                                     ; preds = %block_.L_401794
  %783 = add i64 %782, 4
  store i64 %783, i64* %3, align 8
  %784 = load i64, i64* %752, align 8
  store i64 %784, i64* %RAX.i689, align 8
  %785 = add i64 %784, 80
  %786 = add i64 %782, 7
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = add i32 %788, -8
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RCX.i428.pre-phi, align 8
  %791 = icmp ult i32 %788, 8
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %31, align 1
  %793 = and i32 %789, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %33, align 1
  %798 = xor i32 %789, %788
  %799 = lshr i32 %798, 4
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  store i8 %801, i8* %39, align 1
  %802 = icmp eq i32 %789, 0
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %40, align 1
  %804 = lshr i32 %789, 31
  %805 = trunc i32 %804 to i8
  store i8 %805, i8* %43, align 1
  %806 = lshr i32 %788, 31
  %807 = xor i32 %804, %806
  %808 = add nuw nsw i32 %807, %806
  %809 = icmp eq i32 %808, 2
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %47, align 1
  %811 = add i64 %782, 13
  store i64 %811, i64* %3, align 8
  store i32 %789, i32* %787, align 4
  %812 = load i64, i64* %RBP.i, align 8
  %813 = add i64 %812, -8
  %814 = load i64, i64* %3, align 8
  %815 = add i64 %814, 4
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %813 to i64*
  %817 = load i64, i64* %816, align 8
  store i64 %817, i64* %RAX.i689, align 8
  %818 = add i64 %817, 88
  %819 = add i64 %814, 7
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = add i32 %821, 1
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RCX.i428.pre-phi, align 8
  %824 = icmp eq i32 %821, -1
  %825 = icmp eq i32 %822, 0
  %826 = or i1 %824, %825
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %31, align 1
  %828 = and i32 %822, 255
  %829 = tail call i32 @llvm.ctpop.i32(i32 %828)
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  store i8 %832, i8* %33, align 1
  %833 = xor i32 %822, %821
  %834 = lshr i32 %833, 4
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  store i8 %836, i8* %39, align 1
  %837 = zext i1 %825 to i8
  store i8 %837, i8* %40, align 1
  %838 = lshr i32 %822, 31
  %839 = trunc i32 %838 to i8
  store i8 %839, i8* %43, align 1
  %840 = lshr i32 %821, 31
  %841 = xor i32 %838, %840
  %842 = add nuw nsw i32 %841, %838
  %843 = icmp eq i32 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %47, align 1
  %845 = add i64 %814, 13
  store i64 %845, i64* %3, align 8
  store i32 %822, i32* %820, align 4
  %846 = load i64, i64* %3, align 8
  %847 = add i64 %846, -40
  store i64 %847, i64* %3, align 8
  br label %block_.L_401794

block_.L_4017c1:                                  ; preds = %block_.L_401794
  %848 = add i64 %782, 5
  store i64 %848, i64* %3, align 8
  br label %block_.L_4017c6

block_.L_4017c6:                                  ; preds = %block_.L_401728, %block_.L_4017c1
  %849 = phi i64 [ %848, %block_.L_4017c1 ], [ %679, %block_.L_401728 ]
  %850 = phi i64 [ %749, %block_.L_4017c1 ], [ %680, %block_.L_401728 ]
  %851 = add i64 %850, -8
  %852 = add i64 %849, 4
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %RAX.i689, align 8
  %855 = add i64 %854, 8
  %856 = add i64 %849, 7
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = shl i32 %858, 1
  %860 = icmp slt i32 %858, 0
  %861 = icmp slt i32 %859, 0
  %862 = xor i1 %860, %861
  %863 = zext i32 %859 to i64
  store i64 %863, i64* %RCX.i428.pre-phi, align 8
  %.lobit14 = lshr i32 %858, 31
  %864 = trunc i32 %.lobit14 to i8
  store i8 %864, i8* %31, align 1
  %865 = and i32 %859, 254
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %870 = icmp eq i32 %859, 0
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %40, align 1
  %872 = lshr i32 %858, 30
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  store i8 %874, i8* %43, align 1
  %875 = zext i1 %862 to i8
  store i8 %875, i8* %47, align 1
  %876 = add i64 %849, 12
  store i64 %876, i64* %3, align 8
  store i32 %859, i32* %857, align 4
  %877 = load i64, i64* %RBP.i, align 8
  %878 = add i64 %877, -8
  %879 = load i64, i64* %3, align 8
  %880 = add i64 %879, 4
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %878 to i64*
  %882 = load i64, i64* %881, align 8
  store i64 %882, i64* %RAX.i689, align 8
  %883 = add i64 %882, 8
  %884 = add i64 %879, 7
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = or i32 %886, 1
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RCX.i428.pre-phi, align 8
  store i8 0, i8* %31, align 1
  %889 = and i32 %887, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889)
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %33, align 1
  store i8 0, i8* %40, align 1
  %894 = lshr i32 %886, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %43, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %39, align 1
  %896 = add i64 %879, 13
  store i64 %896, i64* %3, align 8
  store i32 %887, i32* %885, align 4
  %897 = load i64, i64* %RBP.i, align 8
  %898 = add i64 %897, -8
  %899 = load i64, i64* %3, align 8
  %900 = add i64 %899, 4
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %898 to i64*
  %902 = load i64, i64* %901, align 8
  store i64 %902, i64* %RAX.i689, align 8
  %903 = add i64 %902, 12
  %904 = add i64 %899, 7
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = add i32 %906, -1
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RCX.i428.pre-phi, align 8
  %909 = add i64 %899, 13
  store i64 %909, i64* %3, align 8
  store i32 %907, i32* %905, align 4
  %910 = load i32, i32* %ECX.i561.pre-phi, align 4
  %911 = load i64, i64* %3, align 8
  store i8 0, i8* %31, align 1
  %912 = and i32 %910, 255
  %913 = tail call i32 @llvm.ctpop.i32(i32 %912)
  %914 = trunc i32 %913 to i8
  %915 = and i8 %914, 1
  %916 = xor i8 %915, 1
  store i8 %916, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %917 = icmp eq i32 %910, 0
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %40, align 1
  %919 = lshr i32 %910, 31
  %920 = trunc i32 %919 to i8
  store i8 %920, i8* %43, align 1
  store i8 0, i8* %47, align 1
  %.v53 = select i1 %917, i64 9, i64 110
  %921 = add i64 %911, %.v53
  store i64 %921, i64* %3, align 8
  %922 = load i64, i64* %RBP.i, align 8
  br i1 %917, label %block_4017f6, label %block_.L_40185b

block_4017f6:                                     ; preds = %block_.L_4017c6
  %923 = add i64 %922, -8
  %924 = add i64 %921, 4
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %RAX.i689, align 8
  %927 = add i64 %926, 8
  %928 = add i64 %921, 7
  store i64 %928, i64* %3, align 8
  %929 = inttoptr i64 %927 to i32*
  %930 = load i32, i32* %929, align 4
  %931 = zext i32 %930 to i64
  store i64 %931, i64* %RCX.i428.pre-phi, align 8
  %932 = trunc i32 %930 to i8
  store i8 %932, i8* %DL.i536.pre-phi, align 1
  %933 = add i64 %921, 13
  store i64 %933, i64* %3, align 8
  %934 = load i64, i64* %925, align 8
  store i64 %934, i64* %RAX.i689, align 8
  %935 = add i64 %934, 24
  %936 = add i64 %921, 17
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i64*
  %938 = load i64, i64* %937, align 8
  store i64 %938, i64* %RAX.i689, align 8
  %939 = add i64 %921, 21
  store i64 %939, i64* %3, align 8
  %940 = load i64, i64* %925, align 8
  store i64 %940, i64* %RSI.i489.pre-phi, align 8
  %941 = add i64 %940, 32
  %942 = add i64 %921, 25
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i64*
  %944 = load i64, i64* %943, align 8
  store i64 %944, i64* %RSI.i489.pre-phi, align 8
  %945 = add i64 %921, 27
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %RCX.i428.pre-phi, align 8
  %949 = add i32 %947, 1
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RDI.i695, align 8
  %951 = icmp eq i32 %947, -1
  %952 = icmp eq i32 %949, 0
  %953 = or i1 %951, %952
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %31, align 1
  %955 = and i32 %949, 255
  %956 = tail call i32 @llvm.ctpop.i32(i32 %955)
  %957 = trunc i32 %956 to i8
  %958 = and i8 %957, 1
  %959 = xor i8 %958, 1
  store i8 %959, i8* %33, align 1
  %960 = xor i32 %949, %947
  %961 = lshr i32 %960, 4
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  store i8 %963, i8* %39, align 1
  %964 = zext i1 %952 to i8
  store i8 %964, i8* %40, align 1
  %965 = lshr i32 %949, 31
  %966 = trunc i32 %965 to i8
  store i8 %966, i8* %43, align 1
  %967 = lshr i32 %947, 31
  %968 = xor i32 %965, %967
  %969 = add nuw nsw i32 %968, %965
  %970 = icmp eq i32 %969, 2
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %47, align 1
  %972 = add i64 %921, 34
  store i64 %972, i64* %3, align 8
  store i32 %949, i32* %946, align 4
  %973 = load i32, i32* %ECX.i561.pre-phi, align 4
  %974 = load i64, i64* %3, align 8
  %975 = sext i32 %973 to i64
  store i64 %975, i64* %RSI.i489.pre-phi, align 8
  %976 = load i64, i64* %RAX.i689, align 8
  %977 = add i64 %976, %975
  %978 = load i8, i8* %DL.i536.pre-phi, align 1
  %979 = add i64 %974, 6
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %977 to i8*
  store i8 %978, i8* %980, align 1
  %981 = load i64, i64* %RBP.i, align 8
  %982 = add i64 %981, -8
  %983 = load i64, i64* %3, align 8
  %984 = add i64 %983, 4
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %982 to i64*
  %986 = load i64, i64* %985, align 8
  store i64 %986, i64* %RAX.i689, align 8
  %987 = add i64 %986, 12
  %988 = add i64 %983, 11
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  store i32 8, i32* %989, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_401829

block_.L_401829:                                  ; preds = %block_401837, %block_4017f6
  %990 = phi i64 [ %1089, %block_401837 ], [ %.pre33, %block_4017f6 ]
  %991 = load i64, i64* %RBP.i, align 8
  %992 = add i64 %991, -8
  %993 = add i64 %990, 4
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i64*
  %995 = load i64, i64* %994, align 8
  store i64 %995, i64* %RAX.i689, align 8
  %996 = add i64 %995, 80
  %997 = add i64 %990, 8
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = add i32 %999, -7
  %1001 = icmp ult i32 %999, 7
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %31, align 1
  %1003 = and i32 %1000, 255
  %1004 = tail call i32 @llvm.ctpop.i32(i32 %1003)
  %1005 = trunc i32 %1004 to i8
  %1006 = and i8 %1005, 1
  %1007 = xor i8 %1006, 1
  store i8 %1007, i8* %33, align 1
  %1008 = xor i32 %1000, %999
  %1009 = lshr i32 %1008, 4
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  store i8 %1011, i8* %39, align 1
  %1012 = icmp eq i32 %1000, 0
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %40, align 1
  %1014 = lshr i32 %1000, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %43, align 1
  %1016 = lshr i32 %999, 31
  %1017 = xor i32 %1014, %1016
  %1018 = add nuw nsw i32 %1017, %1016
  %1019 = icmp eq i32 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %47, align 1
  %1021 = icmp ne i8 %1015, 0
  %1022 = xor i1 %1021, %1019
  %1023 = or i1 %1012, %1022
  %.v56 = select i1 %1023, i64 45, i64 14
  %1024 = add i64 %990, %.v56
  store i64 %1024, i64* %3, align 8
  br i1 %1023, label %block_.L_401856, label %block_401837

block_401837:                                     ; preds = %block_.L_401829
  %1025 = add i64 %1024, 4
  store i64 %1025, i64* %3, align 8
  %1026 = load i64, i64* %994, align 8
  store i64 %1026, i64* %RAX.i689, align 8
  %1027 = add i64 %1026, 80
  %1028 = add i64 %1024, 7
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i32*
  %1030 = load i32, i32* %1029, align 4
  %1031 = add i32 %1030, -8
  %1032 = zext i32 %1031 to i64
  store i64 %1032, i64* %RCX.i428.pre-phi, align 8
  %1033 = icmp ult i32 %1030, 8
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %31, align 1
  %1035 = and i32 %1031, 255
  %1036 = tail call i32 @llvm.ctpop.i32(i32 %1035)
  %1037 = trunc i32 %1036 to i8
  %1038 = and i8 %1037, 1
  %1039 = xor i8 %1038, 1
  store i8 %1039, i8* %33, align 1
  %1040 = xor i32 %1031, %1030
  %1041 = lshr i32 %1040, 4
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  store i8 %1043, i8* %39, align 1
  %1044 = icmp eq i32 %1031, 0
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %40, align 1
  %1046 = lshr i32 %1031, 31
  %1047 = trunc i32 %1046 to i8
  store i8 %1047, i8* %43, align 1
  %1048 = lshr i32 %1030, 31
  %1049 = xor i32 %1046, %1048
  %1050 = add nuw nsw i32 %1049, %1048
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %47, align 1
  %1053 = add i64 %1024, 13
  store i64 %1053, i64* %3, align 8
  store i32 %1031, i32* %1029, align 4
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -8
  %1056 = load i64, i64* %3, align 8
  %1057 = add i64 %1056, 4
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1055 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %RAX.i689, align 8
  %1060 = add i64 %1059, 88
  %1061 = add i64 %1056, 7
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = add i32 %1063, 1
  %1065 = zext i32 %1064 to i64
  store i64 %1065, i64* %RCX.i428.pre-phi, align 8
  %1066 = icmp eq i32 %1063, -1
  %1067 = icmp eq i32 %1064, 0
  %1068 = or i1 %1066, %1067
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %31, align 1
  %1070 = and i32 %1064, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %33, align 1
  %1075 = xor i32 %1064, %1063
  %1076 = lshr i32 %1075, 4
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %39, align 1
  %1079 = zext i1 %1067 to i8
  store i8 %1079, i8* %40, align 1
  %1080 = lshr i32 %1064, 31
  %1081 = trunc i32 %1080 to i8
  store i8 %1081, i8* %43, align 1
  %1082 = lshr i32 %1063, 31
  %1083 = xor i32 %1080, %1082
  %1084 = add nuw nsw i32 %1083, %1080
  %1085 = icmp eq i32 %1084, 2
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %47, align 1
  %1087 = add i64 %1056, 13
  store i64 %1087, i64* %3, align 8
  store i32 %1064, i32* %1062, align 4
  %1088 = load i64, i64* %3, align 8
  %1089 = add i64 %1088, -40
  store i64 %1089, i64* %3, align 8
  br label %block_.L_401829

block_.L_401856:                                  ; preds = %block_.L_401829
  %1090 = add i64 %1024, 5
  store i64 %1090, i64* %3, align 8
  br label %block_.L_40185b

block_.L_40185b:                                  ; preds = %block_.L_4017c6, %block_.L_401856
  %1091 = phi i64 [ %991, %block_.L_401856 ], [ %922, %block_.L_4017c6 ]
  %1092 = phi i64 [ %1090, %block_.L_401856 ], [ %921, %block_.L_4017c6 ]
  store i64 8, i64* %RAX.i689, align 8
  %1093 = add i64 %1091, -8
  %1094 = add i64 %1092, 9
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i64*
  %1096 = load i64, i64* %1095, align 8
  store i64 %1096, i64* %RCX.i428.pre-phi, align 8
  %1097 = add i64 %1096, 12
  %1098 = add i64 %1092, 12
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i32*
  %1100 = load i32, i32* %1099, align 4
  %1101 = sub i32 8, %1100
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RAX.i689, align 8
  %1103 = icmp ugt i32 %1100, 8
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %31, align 1
  %1105 = and i32 %1101, 255
  %1106 = tail call i32 @llvm.ctpop.i32(i32 %1105)
  %1107 = trunc i32 %1106 to i8
  %1108 = and i8 %1107, 1
  %1109 = xor i8 %1108, 1
  store i8 %1109, i8* %33, align 1
  %1110 = xor i32 %1100, %1101
  %1111 = lshr i32 %1110, 4
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  store i8 %1113, i8* %39, align 1
  %1114 = icmp eq i32 %1101, 0
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %40, align 1
  %1116 = lshr i32 %1101, 31
  %1117 = trunc i32 %1116 to i8
  store i8 %1117, i8* %43, align 1
  %1118 = lshr i32 %1100, 31
  %1119 = add nuw nsw i32 %1116, %1118
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %47, align 1
  %1122 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %1122, i64* %RCX.i428.pre-phi, align 8
  %RDX.i197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1123 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1123, i64* %RDX.i197, align 8
  %1124 = add i64 %1123, 24
  %1125 = add i64 %1092, 32
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = sext i32 %1127 to i64
  store i64 %1128, i64* %RDX.i197, align 8
  %1129 = shl nsw i64 %1128, 2
  %1130 = add nsw i64 %1129, 1328
  %1131 = add i64 %1130, %1122
  %1132 = add i64 %1092, 39
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = add i32 %1134, %1101
  %1136 = zext i32 %1135 to i64
  store i64 %1136, i64* %RAX.i689, align 8
  %1137 = icmp ult i32 %1135, %1101
  %1138 = icmp ult i32 %1135, %1134
  %1139 = or i1 %1137, %1138
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %31, align 1
  %1141 = and i32 %1135, 255
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  store i8 %1145, i8* %33, align 1
  %1146 = xor i32 %1134, %1101
  %1147 = xor i32 %1146, %1135
  %1148 = lshr i32 %1147, 4
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  store i8 %1150, i8* %39, align 1
  %1151 = icmp eq i32 %1135, 0
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %40, align 1
  %1153 = lshr i32 %1135, 31
  %1154 = trunc i32 %1153 to i8
  store i8 %1154, i8* %43, align 1
  %1155 = lshr i32 %1134, 31
  %1156 = xor i32 %1153, %1116
  %1157 = xor i32 %1153, %1155
  %1158 = add nuw nsw i32 %1156, %1157
  %1159 = icmp eq i32 %1158, 2
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %47, align 1
  %1161 = add i64 %1122, 1328
  %1162 = add i64 %1161, %1129
  %1163 = add i64 %1092, 46
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i32*
  store i32 %1135, i32* %1164, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_401889

block_.L_401889:                                  ; preds = %block_.L_401929, %block_.L_40185b
  %1165 = phi i64 [ %1428, %block_.L_401929 ], [ %.pre35, %block_.L_40185b ]
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -8
  %1168 = add i64 %1165, 4
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i64*
  %1170 = load i64, i64* %1169, align 8
  store i64 %1170, i64* %RAX.i689, align 8
  %1171 = add i64 %1170, 12
  %1172 = add i64 %1165, 8
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i32*
  %1174 = load i32, i32* %1173, align 4
  %1175 = add i32 %1174, -8
  %1176 = icmp ult i32 %1174, 8
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %31, align 1
  %1178 = and i32 %1175, 255
  %1179 = tail call i32 @llvm.ctpop.i32(i32 %1178)
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  store i8 %1182, i8* %33, align 1
  %1183 = xor i32 %1175, %1174
  %1184 = lshr i32 %1183, 4
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %39, align 1
  %1187 = icmp eq i32 %1175, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %40, align 1
  %1189 = lshr i32 %1175, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %43, align 1
  %1191 = lshr i32 %1174, 31
  %1192 = xor i32 %1189, %1191
  %1193 = add nuw nsw i32 %1192, %1191
  %1194 = icmp eq i32 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %47, align 1
  %.v48 = select i1 %1187, i64 165, i64 14
  %1196 = add i64 %1165, %.v48
  %1197 = add i64 %1196, 4
  store i64 %1197, i64* %3, align 8
  %1198 = load i64, i64* %1169, align 8
  store i64 %1198, i64* %RAX.i689, align 8
  br i1 %1187, label %block_.L_40192e, label %block_401897

block_401897:                                     ; preds = %block_.L_401889
  %1199 = add i64 %1198, 8
  %1200 = add i64 %1196, 7
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = shl i32 %1202, 1
  %1204 = icmp slt i32 %1202, 0
  %1205 = icmp slt i32 %1203, 0
  %1206 = xor i1 %1204, %1205
  %1207 = zext i32 %1203 to i64
  store i64 %1207, i64* %RCX.i428.pre-phi, align 8
  %.lobit15 = lshr i32 %1202, 31
  %1208 = trunc i32 %.lobit15 to i8
  store i8 %1208, i8* %31, align 1
  %1209 = and i32 %1203, 254
  %1210 = tail call i32 @llvm.ctpop.i32(i32 %1209)
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = xor i8 %1212, 1
  store i8 %1213, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1214 = icmp eq i32 %1203, 0
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %40, align 1
  %1216 = lshr i32 %1202, 30
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  store i8 %1218, i8* %43, align 1
  %1219 = zext i1 %1206 to i8
  store i8 %1219, i8* %47, align 1
  %1220 = add i64 %1196, 12
  store i64 %1220, i64* %3, align 8
  store i32 %1203, i32* %1201, align 4
  %1221 = load i64, i64* %RBP.i, align 8
  %1222 = add i64 %1221, -8
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, 4
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1222 to i64*
  %1226 = load i64, i64* %1225, align 8
  store i64 %1226, i64* %RAX.i689, align 8
  %1227 = add i64 %1226, 8
  %1228 = add i64 %1223, 7
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RCX.i428.pre-phi, align 8
  %1232 = add i64 %1223, 10
  store i64 %1232, i64* %3, align 8
  store i32 %1230, i32* %1229, align 4
  %1233 = load i64, i64* %RBP.i, align 8
  %1234 = add i64 %1233, -8
  %1235 = load i64, i64* %3, align 8
  %1236 = add i64 %1235, 4
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1234 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RAX.i689, align 8
  %1239 = add i64 %1238, 12
  %1240 = add i64 %1235, 7
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = add i32 %1242, -1
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RCX.i428.pre-phi, align 8
  %1245 = add i64 %1235, 13
  store i64 %1245, i64* %3, align 8
  store i32 %1243, i32* %1241, align 4
  %1246 = load i32, i32* %ECX.i561.pre-phi, align 4
  %1247 = load i64, i64* %3, align 8
  store i8 0, i8* %31, align 1
  %1248 = and i32 %1246, 255
  %1249 = tail call i32 @llvm.ctpop.i32(i32 %1248)
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  %1252 = xor i8 %1251, 1
  store i8 %1252, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1253 = icmp eq i32 %1246, 0
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %40, align 1
  %1255 = lshr i32 %1246, 31
  %1256 = trunc i32 %1255 to i8
  store i8 %1256, i8* %43, align 1
  store i8 0, i8* %47, align 1
  %.v54 = select i1 %1253, i64 9, i64 110
  %1257 = add i64 %1247, %.v54
  store i64 %1257, i64* %3, align 8
  br i1 %1253, label %block_4018c4, label %block_.L_401929

block_4018c4:                                     ; preds = %block_401897
  %1258 = load i64, i64* %RBP.i, align 8
  %1259 = add i64 %1258, -8
  %1260 = add i64 %1257, 4
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i64*
  %1262 = load i64, i64* %1261, align 8
  store i64 %1262, i64* %RAX.i689, align 8
  %1263 = add i64 %1262, 8
  %1264 = add i64 %1257, 7
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RCX.i428.pre-phi, align 8
  %1268 = trunc i32 %1266 to i8
  store i8 %1268, i8* %DL.i536.pre-phi, align 1
  %1269 = add i64 %1257, 13
  store i64 %1269, i64* %3, align 8
  %1270 = load i64, i64* %1261, align 8
  store i64 %1270, i64* %RAX.i689, align 8
  %1271 = add i64 %1270, 24
  %1272 = add i64 %1257, 17
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i64*
  %1274 = load i64, i64* %1273, align 8
  store i64 %1274, i64* %RAX.i689, align 8
  %1275 = add i64 %1257, 21
  store i64 %1275, i64* %3, align 8
  %1276 = load i64, i64* %1261, align 8
  store i64 %1276, i64* %RSI.i489.pre-phi, align 8
  %1277 = add i64 %1276, 32
  %1278 = add i64 %1257, 25
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i64*
  %1280 = load i64, i64* %1279, align 8
  store i64 %1280, i64* %RSI.i489.pre-phi, align 8
  %1281 = add i64 %1257, 27
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1280 to i32*
  %1283 = load i32, i32* %1282, align 4
  %1284 = zext i32 %1283 to i64
  store i64 %1284, i64* %RCX.i428.pre-phi, align 8
  %1285 = add i32 %1283, 1
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RDI.i695, align 8
  %1287 = icmp eq i32 %1283, -1
  %1288 = icmp eq i32 %1285, 0
  %1289 = or i1 %1287, %1288
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %31, align 1
  %1291 = and i32 %1285, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %33, align 1
  %1296 = xor i32 %1285, %1283
  %1297 = lshr i32 %1296, 4
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  store i8 %1299, i8* %39, align 1
  %1300 = zext i1 %1288 to i8
  store i8 %1300, i8* %40, align 1
  %1301 = lshr i32 %1285, 31
  %1302 = trunc i32 %1301 to i8
  store i8 %1302, i8* %43, align 1
  %1303 = lshr i32 %1283, 31
  %1304 = xor i32 %1301, %1303
  %1305 = add nuw nsw i32 %1304, %1301
  %1306 = icmp eq i32 %1305, 2
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %47, align 1
  %1308 = add i64 %1257, 34
  store i64 %1308, i64* %3, align 8
  store i32 %1285, i32* %1282, align 4
  %1309 = load i32, i32* %ECX.i561.pre-phi, align 4
  %1310 = load i64, i64* %3, align 8
  %1311 = sext i32 %1309 to i64
  store i64 %1311, i64* %RSI.i489.pre-phi, align 8
  %1312 = load i64, i64* %RAX.i689, align 8
  %1313 = add i64 %1312, %1311
  %1314 = load i8, i8* %DL.i536.pre-phi, align 1
  %1315 = add i64 %1310, 6
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1313 to i8*
  store i8 %1314, i8* %1316, align 1
  %1317 = load i64, i64* %RBP.i, align 8
  %1318 = add i64 %1317, -8
  %1319 = load i64, i64* %3, align 8
  %1320 = add i64 %1319, 4
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1318 to i64*
  %1322 = load i64, i64* %1321, align 8
  store i64 %1322, i64* %RAX.i689, align 8
  %1323 = add i64 %1322, 12
  %1324 = add i64 %1319, 11
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i32*
  store i32 8, i32* %1325, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_4018f7

block_.L_4018f7:                                  ; preds = %block_401905, %block_4018c4
  %1326 = phi i64 [ %1425, %block_401905 ], [ %.pre36, %block_4018c4 ]
  %1327 = load i64, i64* %RBP.i, align 8
  %1328 = add i64 %1327, -8
  %1329 = add i64 %1326, 4
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i64*
  %1331 = load i64, i64* %1330, align 8
  store i64 %1331, i64* %RAX.i689, align 8
  %1332 = add i64 %1331, 80
  %1333 = add i64 %1326, 8
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = add i32 %1335, -7
  %1337 = icmp ult i32 %1335, 7
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %31, align 1
  %1339 = and i32 %1336, 255
  %1340 = tail call i32 @llvm.ctpop.i32(i32 %1339)
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  store i8 %1343, i8* %33, align 1
  %1344 = xor i32 %1336, %1335
  %1345 = lshr i32 %1344, 4
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  store i8 %1347, i8* %39, align 1
  %1348 = icmp eq i32 %1336, 0
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %40, align 1
  %1350 = lshr i32 %1336, 31
  %1351 = trunc i32 %1350 to i8
  store i8 %1351, i8* %43, align 1
  %1352 = lshr i32 %1335, 31
  %1353 = xor i32 %1350, %1352
  %1354 = add nuw nsw i32 %1353, %1352
  %1355 = icmp eq i32 %1354, 2
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %47, align 1
  %1357 = icmp ne i8 %1351, 0
  %1358 = xor i1 %1357, %1355
  %1359 = or i1 %1348, %1358
  %.v55 = select i1 %1359, i64 45, i64 14
  %1360 = add i64 %1326, %.v55
  store i64 %1360, i64* %3, align 8
  br i1 %1359, label %block_.L_401924, label %block_401905

block_401905:                                     ; preds = %block_.L_4018f7
  %1361 = add i64 %1360, 4
  store i64 %1361, i64* %3, align 8
  %1362 = load i64, i64* %1330, align 8
  store i64 %1362, i64* %RAX.i689, align 8
  %1363 = add i64 %1362, 80
  %1364 = add i64 %1360, 7
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i32*
  %1366 = load i32, i32* %1365, align 4
  %1367 = add i32 %1366, -8
  %1368 = zext i32 %1367 to i64
  store i64 %1368, i64* %RCX.i428.pre-phi, align 8
  %1369 = icmp ult i32 %1366, 8
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %31, align 1
  %1371 = and i32 %1367, 255
  %1372 = tail call i32 @llvm.ctpop.i32(i32 %1371)
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  %1375 = xor i8 %1374, 1
  store i8 %1375, i8* %33, align 1
  %1376 = xor i32 %1367, %1366
  %1377 = lshr i32 %1376, 4
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  store i8 %1379, i8* %39, align 1
  %1380 = icmp eq i32 %1367, 0
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %40, align 1
  %1382 = lshr i32 %1367, 31
  %1383 = trunc i32 %1382 to i8
  store i8 %1383, i8* %43, align 1
  %1384 = lshr i32 %1366, 31
  %1385 = xor i32 %1382, %1384
  %1386 = add nuw nsw i32 %1385, %1384
  %1387 = icmp eq i32 %1386, 2
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %47, align 1
  %1389 = add i64 %1360, 13
  store i64 %1389, i64* %3, align 8
  store i32 %1367, i32* %1365, align 4
  %1390 = load i64, i64* %RBP.i, align 8
  %1391 = add i64 %1390, -8
  %1392 = load i64, i64* %3, align 8
  %1393 = add i64 %1392, 4
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1391 to i64*
  %1395 = load i64, i64* %1394, align 8
  store i64 %1395, i64* %RAX.i689, align 8
  %1396 = add i64 %1395, 88
  %1397 = add i64 %1392, 7
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i32*
  %1399 = load i32, i32* %1398, align 4
  %1400 = add i32 %1399, 1
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RCX.i428.pre-phi, align 8
  %1402 = icmp eq i32 %1399, -1
  %1403 = icmp eq i32 %1400, 0
  %1404 = or i1 %1402, %1403
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %31, align 1
  %1406 = and i32 %1400, 255
  %1407 = tail call i32 @llvm.ctpop.i32(i32 %1406)
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  %1410 = xor i8 %1409, 1
  store i8 %1410, i8* %33, align 1
  %1411 = xor i32 %1400, %1399
  %1412 = lshr i32 %1411, 4
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  store i8 %1414, i8* %39, align 1
  %1415 = zext i1 %1403 to i8
  store i8 %1415, i8* %40, align 1
  %1416 = lshr i32 %1400, 31
  %1417 = trunc i32 %1416 to i8
  store i8 %1417, i8* %43, align 1
  %1418 = lshr i32 %1399, 31
  %1419 = xor i32 %1416, %1418
  %1420 = add nuw nsw i32 %1419, %1416
  %1421 = icmp eq i32 %1420, 2
  %1422 = zext i1 %1421 to i8
  store i8 %1422, i8* %47, align 1
  %1423 = add i64 %1392, 13
  store i64 %1423, i64* %3, align 8
  store i32 %1400, i32* %1398, align 4
  %1424 = load i64, i64* %3, align 8
  %1425 = add i64 %1424, -40
  store i64 %1425, i64* %3, align 8
  br label %block_.L_4018f7

block_.L_401924:                                  ; preds = %block_.L_4018f7
  %1426 = add i64 %1360, 5
  store i64 %1426, i64* %3, align 8
  br label %block_.L_401929

block_.L_401929:                                  ; preds = %block_401897, %block_.L_401924
  %1427 = phi i64 [ %1426, %block_.L_401924 ], [ %1257, %block_401897 ]
  %1428 = add i64 %1427, -160
  store i64 %1428, i64* %3, align 8
  br label %block_.L_401889

block_.L_40192e:                                  ; preds = %block_.L_401889
  %1429 = add i64 %1198, 88
  %1430 = add i64 %1196, 7
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = shl i32 %1432, 3
  %1434 = zext i32 %1433 to i64
  store i64 %1434, i64* %RCX.i428.pre-phi, align 8
  %1435 = lshr i32 %1432, 29
  %1436 = trunc i32 %1435 to i8
  %1437 = and i8 %1436, 1
  store i8 %1437, i8* %31, align 1
  %1438 = and i32 %1433, 248
  %1439 = tail call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  store i8 %1442, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1443 = icmp eq i32 %1433, 0
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %40, align 1
  %1445 = lshr i32 %1432, 28
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  store i8 %1447, i8* %43, align 1
  store i8 0, i8* %47, align 1
  %1448 = add i64 %1196, 14
  store i64 %1448, i64* %3, align 8
  %1449 = load i64, i64* %1169, align 8
  store i64 %1449, i64* %RAX.i689, align 8
  %1450 = add i64 %1449, 80
  %1451 = add i64 %1196, 17
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = add i32 %1453, %1433
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RCX.i428.pre-phi, align 8
  %1456 = icmp ult i32 %1454, %1433
  %1457 = icmp ult i32 %1454, %1453
  %1458 = or i1 %1456, %1457
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %31, align 1
  %1460 = and i32 %1454, 255
  %1461 = tail call i32 @llvm.ctpop.i32(i32 %1460)
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  store i8 %1464, i8* %33, align 1
  %1465 = xor i32 %1453, %1433
  %1466 = xor i32 %1465, %1454
  %1467 = lshr i32 %1466, 4
  %1468 = trunc i32 %1467 to i8
  %1469 = and i8 %1468, 1
  store i8 %1469, i8* %39, align 1
  %1470 = icmp eq i32 %1454, 0
  %1471 = zext i1 %1470 to i8
  store i8 %1471, i8* %40, align 1
  %1472 = lshr i32 %1454, 31
  %1473 = trunc i32 %1472 to i8
  store i8 %1473, i8* %43, align 1
  %1474 = lshr i32 %1432, 28
  %1475 = and i32 %1474, 1
  %1476 = lshr i32 %1453, 31
  %1477 = xor i32 %1472, %1475
  %1478 = xor i32 %1472, %1476
  %1479 = add nuw nsw i32 %1477, %1478
  %1480 = icmp eq i32 %1479, 2
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %47, align 1
  %1482 = add i64 %1196, 21
  store i64 %1482, i64* %3, align 8
  %1483 = load i64, i64* %1169, align 8
  store i64 %1483, i64* %RAX.i689, align 8
  %1484 = add i64 %1483, 88
  %1485 = add i64 %1196, 24
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  store i32 %1454, i32* %1486, align 4
  %1487 = load i64, i64* %RBP.i, align 8
  %1488 = add i64 %1487, -8
  %1489 = load i64, i64* %3, align 8
  %1490 = add i64 %1489, 4
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1488 to i64*
  %1492 = load i64, i64* %1491, align 8
  store i64 %1492, i64* %RAX.i689, align 8
  %1493 = add i64 %1492, 32
  %1494 = add i64 %1489, 8
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %RAX.i689, align 8
  %1497 = add i64 %1489, 10
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = zext i32 %1499 to i64
  store i64 %1500, i64* %RCX.i428.pre-phi, align 8
  %1501 = add i64 %1489, 14
  store i64 %1501, i64* %3, align 8
  %1502 = load i64, i64* %1491, align 8
  store i64 %1502, i64* %RAX.i689, align 8
  %1503 = add i64 %1502, 96
  %1504 = add i64 %1489, 17
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = sub i32 %1499, %1506
  %1508 = zext i32 %1507 to i64
  store i64 %1508, i64* %RCX.i428.pre-phi, align 8
  %1509 = icmp ult i32 %1499, %1506
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %31, align 1
  %1511 = and i32 %1507, 255
  %1512 = tail call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  store i8 %1515, i8* %33, align 1
  %1516 = xor i32 %1506, %1499
  %1517 = xor i32 %1516, %1507
  %1518 = lshr i32 %1517, 4
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %39, align 1
  %1521 = icmp eq i32 %1507, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %40, align 1
  %1523 = lshr i32 %1507, 31
  %1524 = trunc i32 %1523 to i8
  store i8 %1524, i8* %43, align 1
  %1525 = lshr i32 %1499, 31
  %1526 = lshr i32 %1506, 31
  %1527 = xor i32 %1526, %1525
  %1528 = xor i32 %1523, %1525
  %1529 = add nuw nsw i32 %1528, %1527
  %1530 = icmp eq i32 %1529, 2
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %47, align 1
  %1532 = add i64 %1489, 21
  store i64 %1532, i64* %3, align 8
  %1533 = load i64, i64* %1491, align 8
  %1534 = add i64 %1533, 96
  %1535 = add i64 %1489, 24
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  store i32 %1507, i32* %1536, align 4
  %1537 = load i64, i64* %3, align 8
  %1538 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1538, i64* %RAX.i689, align 8
  %1539 = add i64 %1538, 12
  %1540 = add i64 %1537, 11
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  %1542 = load i32, i32* %1541, align 4
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %RCX.i428.pre-phi, align 8
  store i64 %1538, i64* %RAX.i689, align 8
  %1544 = add i64 %1538, 14160
  %1545 = add i64 %1537, 26
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i64*
  %1547 = load i64, i64* %1546, align 8
  store i64 %1547, i64* %RAX.i689, align 8
  %1548 = add i64 %1547, 12
  %1549 = add i64 %1537, 29
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = sub i32 %1542, %1551
  %1553 = zext i32 %1552 to i64
  store i64 %1553, i64* %RCX.i428.pre-phi, align 8
  %1554 = icmp ult i32 %1542, %1551
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %31, align 1
  %1556 = and i32 %1552, 255
  %1557 = tail call i32 @llvm.ctpop.i32(i32 %1556)
  %1558 = trunc i32 %1557 to i8
  %1559 = and i8 %1558, 1
  %1560 = xor i8 %1559, 1
  store i8 %1560, i8* %33, align 1
  %1561 = xor i32 %1551, %1542
  %1562 = xor i32 %1561, %1552
  %1563 = lshr i32 %1562, 4
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  store i8 %1565, i8* %39, align 1
  %1566 = icmp eq i32 %1552, 0
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %40, align 1
  %1568 = lshr i32 %1552, 31
  %1569 = trunc i32 %1568 to i8
  store i8 %1569, i8* %43, align 1
  %1570 = lshr i32 %1542, 31
  %1571 = lshr i32 %1551, 31
  %1572 = xor i32 %1571, %1570
  %1573 = xor i32 %1568, %1570
  %1574 = add nuw nsw i32 %1573, %1572
  %1575 = icmp eq i32 %1574, 2
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %47, align 1
  %1577 = load i64, i64* %RBP.i, align 8
  %1578 = add i64 %1577, -8
  %1579 = add i64 %1537, 33
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1578 to i64*
  %1581 = load i64, i64* %1580, align 8
  store i64 %1581, i64* %RAX.i689, align 8
  %1582 = add i64 %1581, 88
  %1583 = add i64 %1537, 36
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i32*
  %1585 = load i32, i32* %1584, align 4
  %1586 = sub i32 %1585, %1552
  %1587 = zext i32 %1586 to i64
  store i64 %1587, i64* %RDX.i197, align 8
  %1588 = icmp ult i32 %1585, %1552
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %31, align 1
  %1590 = and i32 %1586, 255
  %1591 = tail call i32 @llvm.ctpop.i32(i32 %1590)
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  %1594 = xor i8 %1593, 1
  store i8 %1594, i8* %33, align 1
  %1595 = xor i32 %1552, %1585
  %1596 = xor i32 %1595, %1586
  %1597 = lshr i32 %1596, 4
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  store i8 %1599, i8* %39, align 1
  %1600 = icmp eq i32 %1586, 0
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %40, align 1
  %1602 = lshr i32 %1586, 31
  %1603 = trunc i32 %1602 to i8
  store i8 %1603, i8* %43, align 1
  %1604 = lshr i32 %1585, 31
  %1605 = xor i32 %1568, %1604
  %1606 = xor i32 %1602, %1604
  %1607 = add nuw nsw i32 %1606, %1605
  %1608 = icmp eq i32 %1607, 2
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %47, align 1
  %1610 = add i64 %1537, 41
  store i64 %1610, i64* %3, align 8
  store i32 %1586, i32* %1584, align 4
  %1611 = load i64, i64* %RBP.i, align 8
  %1612 = add i64 %1611, -8
  %1613 = load i64, i64* %3, align 8
  %1614 = add i64 %1613, 4
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1612 to i64*
  %1616 = load i64, i64* %1615, align 8
  store i64 %1616, i64* %RAX.i689, align 8
  %1617 = add i64 %1616, 88
  %1618 = add i64 %1613, 7
  store i64 %1618, i64* %3, align 8
  %1619 = inttoptr i64 %1617 to i32*
  %1620 = load i32, i32* %1619, align 4
  %1621 = add i32 %1620, 31
  %1622 = zext i32 %1621 to i64
  %1623 = shl nuw i64 %1622, 32
  %1624 = ashr i64 %1623, 36
  %1625 = lshr i64 %1624, 1
  %1626 = trunc i64 %1624 to i8
  %1627 = and i8 %1626, 1
  %1628 = trunc i64 %1625 to i32
  %1629 = and i64 %1625, 4294967295
  store i64 %1629, i64* %RCX.i428.pre-phi, align 8
  store i8 %1627, i8* %31, align 1
  %1630 = and i32 %1628, 255
  %1631 = tail call i32 @llvm.ctpop.i32(i32 %1630)
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = xor i8 %1633, 1
  store i8 %1634, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1635 = icmp eq i32 %1628, 0
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %40, align 1
  %1637 = lshr i64 %1624, 32
  %1638 = trunc i64 %1637 to i8
  %1639 = and i8 %1638, 1
  store i8 %1639, i8* %43, align 1
  store i8 0, i8* %47, align 1
  %1640 = add i64 %1613, 17
  store i64 %1640, i64* %3, align 8
  %1641 = load i64, i64* %1615, align 8
  store i64 %1641, i64* %RAX.i689, align 8
  %1642 = add i64 %1641, 88
  %1643 = trunc i64 %1625 to i32
  %1644 = add i64 %1613, 20
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1642 to i32*
  store i32 %1643, i32* %1645, align 4
  %1646 = load i64, i64* %3, align 8
  %1647 = add i64 %1646, 1
  store i64 %1647, i64* %3, align 8
  %1648 = load i64, i64* %6, align 8
  %1649 = add i64 %1648, 8
  %1650 = inttoptr i64 %1648 to i64*
  %1651 = load i64, i64* %1650, align 8
  store i64 %1651, i64* %RBP.i, align 8
  store i64 %1649, i64* %6, align 8
  %1652 = add i64 %1646, 2
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1649 to i64*
  %1654 = load i64, i64* %1653, align 8
  store i64 %1654, i64* %3, align 8
  %1655 = add i64 %1648, 16
  store i64 %1655, i64* %6, align 8
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
define %struct.Memory* @routine_movl_0x8__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl___rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x9___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 8
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 9
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 8388607
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
define %struct.Memory* @routine_andl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_orl_0x8__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %8
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
define %struct.Memory* @routine_movl_0xc__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__eax__0xc__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jne_.L_401656(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
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
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl____rax__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x8__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 8, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jle_.L_401651(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x50__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
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
define %struct.Memory* @routine_subl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 8
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
define %struct.Memory* @routine_movl__ecx__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 80
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x58__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
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
define %struct.Memory* @routine_movl__ecx__0x58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 88
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401624(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401656(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40165b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jbe_.L_401728(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x9___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = lshr i64 %3, 8
  %7 = trunc i64 %6 to i8
  %8 = and i8 %7, 1
  %9 = lshr i64 %3, 9
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 8388607
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
define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
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
define %struct.Memory* @routine_setne__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %DL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %DL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
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
define %struct.Memory* @routine_movzbl__dl___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %DL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_401723(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40171e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4016f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401723(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4017c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4017c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401794(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4017c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40185b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_401856(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401829(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40185b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
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
define %struct.Memory* @routine_subl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
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
define %struct.Memory* @routine_movq_0x6cb908___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb908_type* @G_0x6cb908 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x18__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x530__rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 1328
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x530__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 1328
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_je_.L_40192e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_401929(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_401924(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4018f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401929(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401889(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %.tr = trunc i64 %3 to i32
  %6 = shl i32 %.tr, 3
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = lshr i64 %3, 29
  %10 = trunc i64 %9 to i8
  %11 = and i8 %10, 1
  store i8 %11, i8* %8, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %13 = and i32 %6, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %12, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i32 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i32 %.tr, 28
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x50__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 80
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
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x60__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 96
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
define %struct.Memory* @routine_movl__ecx__0x60__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 96
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 14160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
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
define %struct.Memory* @routine_movl_0x58__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
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
define %struct.Memory* @routine_subl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__0x58__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 88
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1f___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 31
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -32
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x5___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 36
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
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
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
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
