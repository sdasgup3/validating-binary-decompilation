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

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_439140.false_margin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @compute_primary_domains(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RBX.i877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %11 = load i64, i64* %RBX.i877, align 8
  %12 = add i64 %10, 4
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %7, -2520
  store i64 %16, i64* %6, align 8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i930 = bitcast %union.anon* %23 to i32*
  %RAX.i931 = getelementptr inbounds %union.anon, %union.anon* %23, i64 0, i32 0
  store i64 0, i64* %RAX.i931, align 8
  store i8 0, i8* %17, align 1
  store i8 1, i8* %18, align 1
  store i8 1, i8* %20, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %19, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i928 = bitcast %union.anon* %24 to i32*
  %25 = getelementptr inbounds %union.anon, %union.anon* %24, i64 0, i32 0
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  store i64 400, i64* %26, align 8
  %R11.i924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %27 = load i64, i64* %RBP.i, align 8
  %28 = add i64 %27, -880
  store i64 %28, i64* %R11.i924, align 8
  %29 = add i64 %27, -480
  store i64 %29, i64* %RBX.i877, align 8
  store i64 3, i64* %25, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %30 to i32*
  %31 = add i64 %27, -12
  %32 = load i32, i32* %EDI.i, align 4
  %33 = add i64 %15, 41
  store i64 %33, i64* %3, align 8
  %34 = inttoptr i64 %31 to i32*
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i913 = getelementptr inbounds %union.anon, %union.anon* %35, i64 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -24
  %38 = load i64, i64* %RSI.i913, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i910 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -32
  %45 = load i64, i64* %RDX.i910, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i907 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -40
  %52 = load i64, i64* %RCX.i907, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -44
  %59 = load i32, i32* %R8D.i, align 4
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* %R9D.i928, align 4
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -12
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %65 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = sub i32 %63, %69
  %71 = zext i32 %70 to i64
  store i64 %71, i64* %25, align 8
  %72 = icmp ult i32 %63, %69
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %17, align 1
  %74 = and i32 %70, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %18, align 1
  %79 = xor i32 %69, %63
  %80 = xor i32 %79, %70
  %81 = lshr i32 %80, 4
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %19, align 1
  %84 = icmp eq i32 %70, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %20, align 1
  %86 = lshr i32 %70, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %21, align 1
  %88 = lshr i32 %63, 31
  %89 = lshr i32 %69, 31
  %90 = xor i32 %89, %88
  %91 = xor i32 %86, %88
  %92 = add nuw nsw i32 %91, %90
  %93 = icmp eq i32 %92, 2
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %22, align 1
  %95 = add i64 %64, -48
  %96 = add i64 %66, 8
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  store i32 %70, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -2484
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 10
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i32*
  store i32 0, i32* %102, align 4
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -2488
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 10
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %104 to i32*
  store i32 0, i32* %107, align 4
  %RDI.i894 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %108 = load i64, i64* %RBX.i877, align 8
  %109 = load i64, i64* %3, align 8
  store i64 %108, i64* %RDI.i894, align 8
  %110 = load i32, i32* %EAX.i930, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RSI.i913, align 8
  %112 = load i64, i64* %26, align 8
  store i64 %112, i64* %RDX.i910, align 8
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -2496
  %115 = add i64 %109, 15
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i64*
  store i64 %112, i64* %116, align 8
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -2504
  %119 = load i64, i64* %R11.i924, align 8
  %120 = load i64, i64* %3, align 8
  %121 = add i64 %120, 7
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %118 to i64*
  store i64 %119, i64* %122, align 8
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -2508
  %125 = load i32, i32* %EAX.i930, align 4
  %126 = load i64, i64* %3, align 8
  %127 = add i64 %126, 6
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %124 to i32*
  store i32 %125, i32* %128, align 4
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, -226774
  %131 = add i64 %129, 5
  %132 = load i64, i64* %6, align 8
  %133 = add i64 %132, -8
  %134 = inttoptr i64 %133 to i64*
  store i64 %131, i64* %134, align 8
  store i64 %133, i64* %6, align 8
  store i64 %130, i64* %3, align 8
  %135 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -2504
  %138 = load i64, i64* %3, align 8
  %139 = add i64 %138, 7
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %137 to i64*
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %RDI.i894, align 8
  %142 = add i64 %136, -2508
  %143 = add i64 %138, 13
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %RSI.i913, align 8
  %147 = add i64 %136, -2496
  %148 = add i64 %138, 20
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %RDX.i910, align 8
  %151 = add i64 %138, -226779
  %152 = add i64 %138, 25
  %153 = load i64, i64* %6, align 8
  %154 = add i64 %153, -8
  %155 = inttoptr i64 %154 to i64*
  store i64 %152, i64* %155, align 8
  store i64 %154, i64* %6, align 8
  store i64 %151, i64* %3, align 8
  %156 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %135)
  %157 = load i64, i64* %RBP.i, align 8
  %158 = add i64 %157, -64
  %159 = load i64, i64* %3, align 8
  %160 = add i64 %159, 7
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %158 to i32*
  store i32 21, i32* %161, align 4
  %ECX.i851 = bitcast %union.anon* %49 to i32*
  %CL.i580 = bitcast %union.anon* %49 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43866b

block_.L_43866b:                                  ; preds = %block_.L_4388d8, %entry
  %162 = phi i64 [ %.pre, %entry ], [ %925, %block_.L_4388d8 ]
  %MEMORY.0 = phi %struct.Memory* [ %156, %entry ], [ %MEMORY.14, %block_.L_4388d8 ]
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -64
  %165 = add i64 %162, 7
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = add i32 %167, -400
  %169 = icmp ult i32 %167, 400
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %17, align 1
  %171 = and i32 %168, 255
  %172 = tail call i32 @llvm.ctpop.i32(i32 %171)
  %173 = trunc i32 %172 to i8
  %174 = and i8 %173, 1
  %175 = xor i8 %174, 1
  store i8 %175, i8* %18, align 1
  %176 = xor i32 %167, 16
  %177 = xor i32 %176, %168
  %178 = lshr i32 %177, 4
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  store i8 %180, i8* %19, align 1
  %181 = icmp eq i32 %168, 0
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %20, align 1
  %183 = lshr i32 %168, 31
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %21, align 1
  %185 = lshr i32 %167, 31
  %186 = xor i32 %183, %185
  %187 = add nuw nsw i32 %186, %185
  %188 = icmp eq i32 %187, 2
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %22, align 1
  %190 = icmp ne i8 %184, 0
  %191 = xor i1 %190, %188
  %.v80 = select i1 %191, i64 13, i64 635
  %192 = add i64 %162, %.v80
  store i64 %192, i64* %3, align 8
  br i1 %191, label %block_438678, label %block_.L_4388e6

block_438678:                                     ; preds = %block_.L_43866b
  %193 = add i64 %192, 4
  store i64 %193, i64* %3, align 8
  %194 = load i32, i32* %166, align 4
  %195 = sext i32 %194 to i64
  store i64 %195, i64* %RAX.i931, align 8
  %196 = add nsw i64 %195, 12099168
  %197 = add i64 %192, 12
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i8*
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i64
  store i64 %200, i64* %RCX.i907, align 8
  %201 = zext i8 %199 to i32
  %202 = add nsw i32 %201, -3
  %203 = icmp ult i8 %199, 3
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %17, align 1
  %205 = and i32 %202, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %18, align 1
  %210 = xor i32 %202, %201
  %211 = lshr i32 %210, 4
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %19, align 1
  %214 = icmp eq i32 %202, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %20, align 1
  %216 = lshr i32 %202, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v102 = select i1 %214, i64 21, i64 26
  %218 = add i64 %192, %.v102
  store i64 %218, i64* %3, align 8
  br i1 %214, label %block_43868d, label %block_.L_438692

block_43868d:                                     ; preds = %block_438678
  %219 = add i64 %218, 587
  br label %block_.L_4388d8

block_.L_438692:                                  ; preds = %block_438678
  %220 = add i64 %163, -32
  %221 = add i64 %218, 4
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %RAX.i931, align 8
  %224 = add i64 %218, 8
  store i64 %224, i64* %3, align 8
  %225 = load i32, i32* %166, align 4
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %RCX.i907, align 8
  %227 = shl nsw i64 %226, 2
  %228 = add i64 %227, %223
  %229 = add i64 %218, 12
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i32*
  %231 = load i32, i32* %230, align 4
  store i8 0, i8* %17, align 1
  %232 = and i32 %231, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232)
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %237 = icmp eq i32 %231, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %20, align 1
  %239 = lshr i32 %231, 31
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v103 = select i1 %237, i64 88, i64 18
  %241 = add i64 %218, %.v103
  store i64 %241, i64* %3, align 8
  br i1 %237, label %block_.L_4386ea, label %block_4386a4

block_4386a4:                                     ; preds = %block_.L_438692
  %242 = add i64 %241, 4
  store i64 %242, i64* %3, align 8
  %243 = load i32, i32* %166, align 4
  %244 = sext i32 %243 to i64
  store i64 %244, i64* %RAX.i931, align 8
  %245 = add nsw i64 %244, 12099168
  %246 = add i64 %241, 12
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i8*
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i64
  store i64 %249, i64* %RCX.i907, align 8
  %250 = zext i8 %248 to i32
  %251 = add i64 %163, -12
  %252 = add i64 %241, 15
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  %254 = load i32, i32* %253, align 4
  %255 = sub i32 %250, %254
  %256 = icmp ult i32 %250, %254
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %17, align 1
  %258 = and i32 %255, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258)
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %18, align 1
  %263 = xor i32 %254, %250
  %264 = xor i32 %263, %255
  %265 = lshr i32 %264, 4
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %19, align 1
  %268 = icmp eq i32 %255, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %20, align 1
  %270 = lshr i32 %255, 31
  %271 = trunc i32 %270 to i8
  store i8 %271, i8* %21, align 1
  %272 = lshr i32 %254, 31
  %273 = add nuw nsw i32 %270, %272
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %22, align 1
  %.v104 = select i1 %268, i64 21, i64 53
  %276 = add i64 %241, %.v104
  store i64 %276, i64* %3, align 8
  br i1 %268, label %block_4386b9, label %block_.L_4386d9

block_4386b9:                                     ; preds = %block_4386a4
  %277 = add i64 %163, -24
  %278 = add i64 %276, 4
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %277 to i64*
  %280 = load i64, i64* %279, align 8
  store i64 %280, i64* %RAX.i931, align 8
  %281 = add i64 %276, 8
  store i64 %281, i64* %3, align 8
  %282 = load i32, i32* %166, align 4
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %RCX.i907, align 8
  %284 = shl nsw i64 %283, 2
  %285 = add i64 %284, %280
  %286 = add i64 %276, 15
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %285 to i32*
  store i32 1, i32* %287, align 4
  %288 = load i64, i64* %RBP.i, align 8
  %289 = add i64 %288, -64
  %290 = load i64, i64* %3, align 8
  %291 = add i64 %290, 4
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %289 to i32*
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  store i64 %294, i64* %RAX.i931, align 8
  %295 = add nsw i64 %294, -880
  %296 = add i64 %295, %288
  %297 = add i64 %290, 12
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i8*
  store i8 1, i8* %298, align 1
  %299 = load i64, i64* %3, align 8
  %300 = add i64 %299, 17
  store i64 %300, i64* %3, align 8
  br label %block_.L_4386e5

block_.L_4386d9:                                  ; preds = %block_4386a4
  %301 = add i64 %276, 4
  store i64 %301, i64* %3, align 8
  %302 = load i32, i32* %166, align 4
  %303 = sext i32 %302 to i64
  store i64 %303, i64* %RAX.i931, align 8
  %304 = add nsw i64 %303, -880
  %305 = add i64 %304, %163
  %306 = add i64 %276, 12
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i8*
  store i8 -1, i8* %307, align 1
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_4386e5

block_.L_4386e5:                                  ; preds = %block_.L_4386d9, %block_4386b9
  %308 = phi i64 [ %.pre63, %block_.L_4386d9 ], [ %300, %block_4386b9 ]
  %309 = add i64 %308, 499
  br label %block_.L_4388d8

block_.L_4386ea:                                  ; preds = %block_.L_438692
  %310 = add i64 %163, -76
  %311 = add i64 %241, 7
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  store i32 0, i32* %312, align 4
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -72
  %315 = load i64, i64* %3, align 8
  %316 = add i64 %315, 7
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %314 to i32*
  store i32 0, i32* %317, align 4
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -60
  %320 = load i64, i64* %3, align 8
  %321 = add i64 %320, 7
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %319 to i32*
  store i32 0, i32* %322, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_4386ff

block_.L_4386ff:                                  ; preds = %block_.L_43876e, %block_.L_4386ea
  %323 = phi i64 [ %524, %block_.L_43876e ], [ %.pre64, %block_.L_4386ea ]
  %324 = load i64, i64* %RBP.i, align 8
  %325 = add i64 %324, -60
  %326 = add i64 %323, 4
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = add i32 %328, -4
  %330 = icmp ult i32 %328, 4
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %17, align 1
  %332 = and i32 %329, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %18, align 1
  %337 = xor i32 %329, %328
  %338 = lshr i32 %337, 4
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %19, align 1
  %341 = icmp eq i32 %329, 0
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %20, align 1
  %343 = lshr i32 %329, 31
  %344 = trunc i32 %343 to i8
  store i8 %344, i8* %21, align 1
  %345 = lshr i32 %328, 31
  %346 = xor i32 %343, %345
  %347 = add nuw nsw i32 %346, %345
  %348 = icmp eq i32 %347, 2
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %22, align 1
  %350 = icmp ne i8 %344, 0
  %351 = xor i1 %350, %348
  %.v79 = select i1 %351, i64 10, i64 130
  %352 = add i64 %323, %.v79
  store i64 %352, i64* %3, align 8
  br i1 %351, label %block_438709, label %block_.L_438781

block_438709:                                     ; preds = %block_.L_4386ff
  %353 = add i64 %324, -64
  %354 = add i64 %352, 3
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX.i931, align 8
  %358 = add i64 %352, 7
  store i64 %358, i64* %3, align 8
  %359 = load i32, i32* %327, align 4
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %RCX.i907, align 8
  %361 = shl nsw i64 %360, 2
  %362 = add nsw i64 %361, 8053168
  %363 = add i64 %352, 14
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, %356
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RAX.i931, align 8
  %368 = icmp ult i32 %366, %356
  %369 = icmp ult i32 %366, %365
  %370 = or i1 %368, %369
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %17, align 1
  %372 = and i32 %366, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %18, align 1
  %377 = xor i32 %365, %356
  %378 = xor i32 %377, %366
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %19, align 1
  %382 = icmp eq i32 %366, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %20, align 1
  %384 = lshr i32 %366, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %21, align 1
  %386 = lshr i32 %356, 31
  %387 = lshr i32 %365, 31
  %388 = xor i32 %384, %386
  %389 = xor i32 %384, %387
  %390 = add nuw nsw i32 %388, %389
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %22, align 1
  %393 = add i64 %324, -68
  %394 = add i64 %352, 17
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  store i32 %366, i32* %395, align 4
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -68
  %398 = load i64, i64* %3, align 8
  %399 = add i64 %398, 4
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %397 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  store i64 %402, i64* %RCX.i907, align 8
  %403 = add nsw i64 %402, 12099168
  %404 = add i64 %398, 12
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i8*
  %406 = load i8, i8* %405, align 1
  %407 = zext i8 %406 to i64
  store i64 %407, i64* %RAX.i931, align 8
  %408 = zext i8 %406 to i32
  %409 = add nsw i32 %408, -3
  %410 = icmp ult i8 %406, 3
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %17, align 1
  %412 = and i32 %409, 255
  %413 = tail call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %18, align 1
  %417 = xor i32 %409, %408
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %19, align 1
  %421 = icmp eq i32 %409, 0
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %20, align 1
  %423 = lshr i32 %409, 31
  %424 = trunc i32 %423 to i8
  store i8 %424, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v112 = select i1 %421, i64 84, i64 21
  %425 = add i64 %398, %.v112
  store i64 %425, i64* %3, align 8
  br i1 %421, label %block_.L_43876e, label %block_43872f

block_43872f:                                     ; preds = %block_438709
  %426 = add i64 %396, -32
  %427 = add i64 %425, 4
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i64*
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %RAX.i931, align 8
  %430 = add i64 %425, 8
  store i64 %430, i64* %3, align 8
  %431 = load i32, i32* %400, align 4
  %432 = sext i32 %431 to i64
  store i64 %432, i64* %RCX.i907, align 8
  %433 = shl nsw i64 %432, 2
  %434 = add i64 %433, %429
  %435 = add i64 %425, 12
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  store i8 0, i8* %17, align 1
  %438 = and i32 %437, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %443 = icmp eq i32 %437, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %20, align 1
  %445 = lshr i32 %437, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v113 = select i1 %443, i64 63, i64 18
  %447 = add i64 %425, %.v113
  store i64 %447, i64* %3, align 8
  br i1 %443, label %block_.L_43876e, label %block_438741

block_438741:                                     ; preds = %block_43872f
  %448 = add i64 %447, 4
  store i64 %448, i64* %3, align 8
  %449 = load i32, i32* %400, align 4
  %450 = sext i32 %449 to i64
  store i64 %450, i64* %RAX.i931, align 8
  %451 = add nsw i64 %450, 12099168
  %452 = add i64 %447, 12
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i8*
  %454 = load i8, i8* %453, align 1
  %455 = zext i8 %454 to i64
  store i64 %455, i64* %RCX.i907, align 8
  %456 = zext i8 %454 to i32
  %457 = add i64 %396, -12
  %458 = add i64 %447, 15
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = sub i32 %456, %460
  %462 = icmp ult i32 %456, %460
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %17, align 1
  %464 = and i32 %461, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464)
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %18, align 1
  %469 = xor i32 %460, %456
  %470 = xor i32 %469, %461
  %471 = lshr i32 %470, 4
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  store i8 %473, i8* %19, align 1
  %474 = icmp eq i32 %461, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %20, align 1
  %476 = lshr i32 %461, 31
  %477 = trunc i32 %476 to i8
  store i8 %477, i8* %21, align 1
  %478 = lshr i32 %460, 31
  %479 = add nuw nsw i32 %476, %478
  %480 = icmp eq i32 %479, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %22, align 1
  %.v114 = select i1 %474, i64 21, i64 33
  %482 = add i64 %447, %.v114
  store i64 %482, i64* %3, align 8
  br i1 %474, label %block_438756, label %block_.L_438762

block_438756:                                     ; preds = %block_438741
  %483 = add i64 %396, -72
  %484 = add i64 %482, 7
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  store i32 1, i32* %485, align 4
  %486 = load i64, i64* %3, align 8
  %487 = add i64 %486, 12
  store i64 %487, i64* %3, align 8
  br label %block_.L_438769

block_.L_438762:                                  ; preds = %block_438741
  %488 = add i64 %396, -76
  %489 = add i64 %482, 7
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i32*
  store i32 1, i32* %490, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_438769

block_.L_438769:                                  ; preds = %block_.L_438762, %block_438756
  %491 = phi i64 [ %.pre70, %block_.L_438762 ], [ %487, %block_438756 ]
  %492 = add i64 %491, 5
  store i64 %492, i64* %3, align 8
  %.pre71 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43876e

block_.L_43876e:                                  ; preds = %block_.L_438769, %block_43872f, %block_438709
  %493 = phi i64 [ %.pre71, %block_.L_438769 ], [ %396, %block_43872f ], [ %396, %block_438709 ]
  %494 = phi i64 [ %492, %block_.L_438769 ], [ %447, %block_43872f ], [ %425, %block_438709 ]
  %495 = add i64 %493, -60
  %496 = add i64 %494, 8
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = add i32 %498, 1
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX.i931, align 8
  %501 = icmp eq i32 %498, -1
  %502 = icmp eq i32 %499, 0
  %503 = or i1 %501, %502
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %17, align 1
  %505 = and i32 %499, 255
  %506 = tail call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  store i8 %509, i8* %18, align 1
  %510 = xor i32 %499, %498
  %511 = lshr i32 %510, 4
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  store i8 %513, i8* %19, align 1
  %514 = zext i1 %502 to i8
  store i8 %514, i8* %20, align 1
  %515 = lshr i32 %499, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %21, align 1
  %517 = lshr i32 %498, 31
  %518 = xor i32 %515, %517
  %519 = add nuw nsw i32 %518, %515
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %22, align 1
  %522 = add i64 %494, 14
  store i64 %522, i64* %3, align 8
  store i32 %499, i32* %497, align 4
  %523 = load i64, i64* %3, align 8
  %524 = add i64 %523, -125
  store i64 %524, i64* %3, align 8
  br label %block_.L_4386ff

block_.L_438781:                                  ; preds = %block_.L_4386ff
  %525 = add i64 %324, -72
  %526 = add i64 %352, 4
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  store i8 0, i8* %17, align 1
  %529 = and i32 %528, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %534 = icmp eq i32 %528, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %20, align 1
  %536 = lshr i32 %528, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v78 = select i1 %534, i64 217, i64 10
  %538 = add i64 %352, %.v78
  store i64 %538, i64* %3, align 8
  br i1 %534, label %block_.L_43885a, label %block_43878b

block_43878b:                                     ; preds = %block_.L_438781
  %539 = add i64 %324, -44
  %540 = add i64 %538, 4
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  store i8 0, i8* %17, align 1
  %543 = and i32 %542, 255
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %548 = icmp eq i32 %542, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %20, align 1
  %550 = lshr i32 %542, 31
  %551 = trunc i32 %550 to i8
  store i8 %551, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v = select i1 %548, i64 131, i64 10
  %552 = add i64 %538, %.v
  %553 = add i64 %324, -64
  %554 = add i64 %552, 4
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  store i64 %557, i64* %RAX.i931, align 8
  %558 = add nsw i64 %557, 12099168
  %559 = add i64 %552, 12
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i8*
  %561 = load i8, i8* %560, align 1
  %562 = zext i8 %561 to i64
  store i64 %562, i64* %RCX.i907, align 8
  %563 = zext i8 %561 to i32
  %564 = add i64 %552, 15
  store i64 %564, i64* %3, align 8
  store i8 0, i8* %17, align 1
  %565 = tail call i32 @llvm.ctpop.i32(i32 %563)
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  %568 = xor i8 %567, 1
  store i8 %568, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %569 = icmp eq i8 %561, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %20, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  br i1 %548, label %block_.L_43880e, label %block_438795

block_438795:                                     ; preds = %block_43878b
  %.v105 = select i1 %569, i64 21, i64 89
  %571 = add i64 %552, %.v105
  store i64 %571, i64* %3, align 8
  br i1 %569, label %block_4387aa, label %block_.L_4387ee

block_4387aa:                                     ; preds = %block_438795
  %572 = add i64 %571, 3
  store i64 %572, i64* %3, align 8
  %573 = load i32, i32* %555, align 4
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RDI.i894, align 8
  %575 = add i64 %324, -12
  %576 = add i64 %571, 6
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %575 to i32*
  %578 = load i32, i32* %577, align 4
  %579 = zext i32 %578 to i64
  store i64 %579, i64* %RSI.i913, align 8
  %580 = add i64 %324, -32
  %581 = add i64 %571, 10
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i64*
  %583 = load i64, i64* %582, align 8
  store i64 %583, i64* %RDX.i910, align 8
  %584 = add i64 %571, 2454
  %585 = add i64 %571, 15
  %586 = load i64, i64* %6, align 8
  %587 = add i64 %586, -8
  %588 = inttoptr i64 %587 to i64*
  store i64 %585, i64* %588, align 8
  store i64 %587, i64* %6, align 8
  store i64 %584, i64* %3, align 8
  %call2_4387b4 = tail call %struct.Memory* @sub_439140.false_margin(%struct.State* nonnull %0, i64 %584, %struct.Memory* %MEMORY.0)
  %589 = load i32, i32* %EAX.i930, align 4
  %590 = load i64, i64* %3, align 8
  store i8 0, i8* %17, align 1
  %591 = and i32 %589, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %596 = icmp eq i32 %589, 0
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %20, align 1
  %598 = lshr i32 %589, 31
  %599 = trunc i32 %598 to i8
  store i8 %599, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v108 = select i1 %596, i64 9, i64 33
  %600 = add i64 %590, %.v108
  store i64 %600, i64* %3, align 8
  br i1 %596, label %block_4387c2, label %block_.L_4387da

block_4387c2:                                     ; preds = %block_4387aa
  %601 = load i64, i64* %RBP.i, align 8
  %602 = add i64 %601, -64
  %603 = add i64 %600, 3
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  %605 = load i32, i32* %604, align 4
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RDI.i894, align 8
  %607 = add i64 %601, -48
  %608 = add i64 %600, 6
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i32*
  %610 = load i32, i32* %609, align 4
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RSI.i913, align 8
  %612 = add i64 %601, -32
  %613 = add i64 %600, 10
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %RDX.i910, align 8
  %616 = add i64 %600, 2430
  %617 = add i64 %600, 15
  %618 = load i64, i64* %6, align 8
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %617, i64* %620, align 8
  store i64 %619, i64* %6, align 8
  store i64 %616, i64* %3, align 8
  %call2_4387cc = tail call %struct.Memory* @sub_439140.false_margin(%struct.State* nonnull %0, i64 %616, %struct.Memory* %MEMORY.0)
  %621 = load i32, i32* %EAX.i930, align 4
  %622 = load i64, i64* %3, align 8
  store i8 0, i8* %17, align 1
  %623 = and i32 %621, 255
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623)
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %628 = icmp eq i32 %621, 0
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %20, align 1
  %630 = lshr i32 %621, 31
  %631 = trunc i32 %630 to i8
  store i8 %631, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v109 = select i1 %628, i64 29, i64 9
  %632 = add i64 %622, %.v109
  store i64 %632, i64* %3, align 8
  br i1 %628, label %block_4387c2.block_.L_4387ee_crit_edge, label %block_.L_4387da

block_4387c2.block_.L_4387ee_crit_edge:           ; preds = %block_4387c2
  %.pre65 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4387ee

block_.L_4387da:                                  ; preds = %block_4387aa, %block_4387c2
  %633 = phi i64 [ %632, %block_4387c2 ], [ %600, %block_4387aa ]
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -40
  %636 = add i64 %633, 4
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i64*
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %RAX.i931, align 8
  %639 = add i64 %634, -64
  %640 = add i64 %633, 8
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = sext i32 %642 to i64
  store i64 %643, i64* %RCX.i907, align 8
  %644 = shl nsw i64 %643, 2
  %645 = add i64 %644, %638
  %646 = add i64 %633, 15
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  store i32 1, i32* %647, align 4
  %648 = load i64, i64* %3, align 8
  %649 = add i64 %648, 32
  store i64 %649, i64* %3, align 8
  br label %block_.L_438809

block_.L_4387ee:                                  ; preds = %block_438795, %block_4387c2.block_.L_4387ee_crit_edge
  %650 = phi i64 [ %632, %block_4387c2.block_.L_4387ee_crit_edge ], [ %571, %block_438795 ]
  %651 = phi i64 [ %.pre65, %block_4387c2.block_.L_4387ee_crit_edge ], [ %324, %block_438795 ]
  %652 = add i64 %651, -24
  %653 = add i64 %650, 4
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i64*
  %655 = load i64, i64* %654, align 8
  store i64 %655, i64* %RAX.i931, align 8
  %656 = add i64 %651, -64
  %657 = add i64 %650, 8
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = sext i32 %659 to i64
  store i64 %660, i64* %RCX.i907, align 8
  %661 = shl nsw i64 %660, 2
  %662 = add i64 %661, %655
  %663 = add i64 %650, 15
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  store i32 1, i32* %664, align 4
  %665 = load i64, i64* %RBP.i, align 8
  %666 = add i64 %665, -64
  %667 = load i64, i64* %3, align 8
  %668 = add i64 %667, 4
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %666 to i32*
  %670 = load i32, i32* %669, align 4
  %671 = sext i32 %670 to i64
  store i64 %671, i64* %RAX.i931, align 8
  %672 = add nsw i64 %671, -880
  %673 = add i64 %672, %665
  %674 = add i64 %667, 12
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i8*
  store i8 1, i8* %675, align 1
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_438809

block_.L_438809:                                  ; preds = %block_.L_4387ee, %block_.L_4387da
  %676 = phi i64 [ %.pre66, %block_.L_4387ee ], [ %649, %block_.L_4387da ]
  %677 = add i64 %676, 76
  br label %block_.L_438855

block_.L_43880e:                                  ; preds = %block_43878b
  %.v110 = select i1 %569, i64 21, i64 39
  %678 = add i64 %552, %.v110
  store i64 %678, i64* %3, align 8
  br i1 %569, label %block_438823, label %block_.L_438835

block_438823:                                     ; preds = %block_.L_43880e
  %679 = add i64 %324, -40
  %680 = add i64 %678, 4
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i64*
  %682 = load i64, i64* %681, align 8
  store i64 %682, i64* %RAX.i931, align 8
  %683 = add i64 %678, 8
  store i64 %683, i64* %3, align 8
  %684 = load i32, i32* %555, align 4
  %685 = sext i32 %684 to i64
  store i64 %685, i64* %RCX.i907, align 8
  %686 = shl nsw i64 %685, 2
  %687 = add i64 %686, %682
  %688 = add i64 %678, 12
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  store i8 0, i8* %17, align 1
  %691 = and i32 %690, 255
  %692 = tail call i32 @llvm.ctpop.i32(i32 %691)
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  store i8 %695, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %696 = icmp eq i32 %690, 0
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %20, align 1
  %698 = lshr i32 %690, 31
  %699 = trunc i32 %698 to i8
  store i8 %699, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v111 = select i1 %696, i64 18, i64 45
  %700 = add i64 %678, %.v111
  store i64 %700, i64* %3, align 8
  br i1 %696, label %block_.L_438835, label %block_.L_438850

block_.L_438835:                                  ; preds = %block_438823, %block_.L_43880e
  %701 = phi i64 [ %700, %block_438823 ], [ %678, %block_.L_43880e ]
  %702 = add i64 %324, -24
  %703 = add i64 %701, 4
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %702 to i64*
  %705 = load i64, i64* %704, align 8
  store i64 %705, i64* %RAX.i931, align 8
  %706 = add i64 %701, 8
  store i64 %706, i64* %3, align 8
  %707 = load i32, i32* %555, align 4
  %708 = sext i32 %707 to i64
  store i64 %708, i64* %RCX.i907, align 8
  %709 = shl nsw i64 %708, 2
  %710 = add i64 %709, %705
  %711 = add i64 %701, 15
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  store i32 1, i32* %712, align 4
  %713 = load i64, i64* %RBP.i, align 8
  %714 = add i64 %713, -64
  %715 = load i64, i64* %3, align 8
  %716 = add i64 %715, 4
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %714 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = sext i32 %718 to i64
  store i64 %719, i64* %RAX.i931, align 8
  %720 = add nsw i64 %719, -880
  %721 = add i64 %720, %713
  %722 = add i64 %715, 12
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i8*
  store i8 1, i8* %723, align 1
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_438850

block_.L_438850:                                  ; preds = %block_438823, %block_.L_438835
  %724 = phi i64 [ %.pre67, %block_.L_438835 ], [ %700, %block_438823 ]
  %725 = add i64 %724, 5
  store i64 %725, i64* %3, align 8
  br label %block_.L_438855

block_.L_438855:                                  ; preds = %block_.L_438850, %block_.L_438809
  %storemerge = phi i64 [ %677, %block_.L_438809 ], [ %725, %block_.L_438850 ]
  %726 = add i64 %storemerge, 35
  store i64 %726, i64* %3, align 8
  br label %block_.L_438878

block_.L_43885a:                                  ; preds = %block_.L_438781
  %727 = add i64 %324, -64
  %728 = add i64 %538, 3
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RAX.i931, align 8
  %732 = add i64 %324, -2484
  %733 = add i64 %538, 9
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = zext i32 %735 to i64
  store i64 %736, i64* %RCX.i907, align 8
  %737 = add i32 %735, 1
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RDX.i910, align 8
  %739 = icmp eq i32 %735, -1
  %740 = icmp eq i32 %737, 0
  %741 = or i1 %739, %740
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %17, align 1
  %743 = and i32 %737, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %18, align 1
  %748 = xor i32 %737, %735
  %749 = lshr i32 %748, 4
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  store i8 %751, i8* %19, align 1
  %752 = zext i1 %740 to i8
  store i8 %752, i8* %20, align 1
  %753 = lshr i32 %737, 31
  %754 = trunc i32 %753 to i8
  store i8 %754, i8* %21, align 1
  %755 = lshr i32 %735, 31
  %756 = xor i32 %753, %755
  %757 = add nuw nsw i32 %756, %753
  %758 = icmp eq i32 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %22, align 1
  %760 = add i64 %538, 20
  store i64 %760, i64* %3, align 8
  store i32 %737, i32* %734, align 4
  %761 = load i32, i32* %ECX.i851, align 4
  %762 = load i64, i64* %3, align 8
  %763 = sext i32 %761 to i64
  store i64 %763, i64* %RSI.i913, align 8
  %764 = load i64, i64* %RBP.i, align 8
  %765 = shl nsw i64 %763, 2
  %766 = add nsw i64 %765, -2480
  %767 = add i64 %766, %764
  %768 = load i32, i32* %EAX.i930, align 4
  %769 = add i64 %762, 10
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %767 to i32*
  store i32 %768, i32* %770, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_438878

block_.L_438878:                                  ; preds = %block_.L_43885a, %block_.L_438855
  %771 = phi i64 [ %.pre68, %block_.L_43885a ], [ %726, %block_.L_438855 ]
  %772 = load i64, i64* %RBP.i, align 8
  %773 = add i64 %772, -76
  %774 = add i64 %771, 4
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i32*
  %776 = load i32, i32* %775, align 4
  store i8 0, i8* %17, align 1
  %777 = and i32 %776, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %782 = icmp eq i32 %776, 0
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %20, align 1
  %784 = lshr i32 %776, 31
  %785 = trunc i32 %784 to i8
  store i8 %785, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v106 = select i1 %782, i64 48, i64 10
  %786 = add i64 %771, %.v106
  store i64 %786, i64* %3, align 8
  %787 = add i64 %772, -64
  br i1 %782, label %block_.L_4388a8, label %block_438882

block_438882:                                     ; preds = %block_.L_438878
  %788 = add i64 %786, 4
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = sext i32 %790 to i64
  store i64 %791, i64* %RAX.i931, align 8
  %792 = add nsw i64 %791, -480
  %793 = add i64 %792, %772
  %794 = add i64 %786, 12
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i8*
  store i8 1, i8* %795, align 1
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -64
  %798 = load i64, i64* %3, align 8
  %799 = add i64 %798, 4
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %797 to i32*
  %801 = load i32, i32* %800, align 4
  %802 = sext i32 %801 to i64
  store i64 %802, i64* %RAX.i931, align 8
  %803 = add nsw i64 %802, -880
  %804 = add i64 %803, %796
  %805 = add i64 %798, 11
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i8*
  %807 = load i8, i8* %806, align 1
  %808 = add i8 %807, -1
  store i8 %808, i8* %CL.i580, align 1
  %809 = icmp ne i8 %807, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %17, align 1
  %811 = zext i8 %808 to i32
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %18, align 1
  %816 = xor i8 %807, 16
  %817 = xor i8 %816, %808
  %818 = lshr i8 %817, 4
  %819 = and i8 %818, 1
  store i8 %819, i8* %19, align 1
  %820 = icmp eq i8 %808, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %20, align 1
  %822 = lshr i8 %808, 7
  store i8 %822, i8* %21, align 1
  %823 = lshr i8 %807, 7
  %824 = xor i8 %822, %823
  %825 = xor i8 %822, 1
  %826 = add nuw nsw i8 %824, %825
  %827 = icmp eq i8 %826, 2
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %22, align 1
  %829 = add i64 %796, -880
  %830 = add i64 %829, %802
  %831 = add i64 %798, 21
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i8*
  store i8 %808, i8* %832, align 1
  %833 = load i64, i64* %3, align 8
  %834 = add i64 %833, 48
  br label %block_.L_4388d3

block_.L_4388a8:                                  ; preds = %block_.L_438878
  %835 = add i64 %786, 3
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %787 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = zext i32 %837 to i64
  store i64 %838, i64* %RDI.i894, align 8
  %839 = add i64 %786, -168472
  %840 = add i64 %786, 8
  %841 = load i64, i64* %6, align 8
  %842 = add i64 %841, -8
  %843 = inttoptr i64 %842 to i64*
  store i64 %840, i64* %843, align 8
  store i64 %842, i64* %6, align 8
  store i64 %839, i64* %3, align 8
  %call2_4388ab = tail call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* nonnull %0, i64 %839, %struct.Memory* %MEMORY.0)
  %844 = load i32, i32* %EAX.i930, align 4
  %845 = load i64, i64* %3, align 8
  store i8 0, i8* %17, align 1
  %846 = and i32 %844, 255
  %847 = tail call i32 @llvm.ctpop.i32(i32 %846)
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  store i8 %850, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %851 = icmp eq i32 %844, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %20, align 1
  %853 = lshr i32 %844, 31
  %854 = trunc i32 %853 to i8
  store i8 %854, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v107 = select i1 %851, i64 30, i64 9
  %855 = add i64 %845, %.v107
  store i64 %855, i64* %3, align 8
  br i1 %851, label %block_.L_4388ce, label %block_4388b9

block_4388b9:                                     ; preds = %block_.L_4388a8
  %856 = load i64, i64* %RBP.i, align 8
  %857 = add i64 %856, -64
  %858 = add i64 %855, 4
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = sext i32 %860 to i64
  store i64 %861, i64* %RAX.i931, align 8
  %862 = add nsw i64 %861, -880
  %863 = add i64 %862, %856
  %864 = add i64 %855, 11
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i8*
  %866 = load i8, i8* %865, align 1
  %867 = add i8 %866, -1
  store i8 %867, i8* %CL.i580, align 1
  %868 = icmp ne i8 %866, 0
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %17, align 1
  %870 = zext i8 %867 to i32
  %871 = tail call i32 @llvm.ctpop.i32(i32 %870)
  %872 = trunc i32 %871 to i8
  %873 = and i8 %872, 1
  %874 = xor i8 %873, 1
  store i8 %874, i8* %18, align 1
  %875 = xor i8 %866, 16
  %876 = xor i8 %875, %867
  %877 = lshr i8 %876, 4
  %878 = and i8 %877, 1
  store i8 %878, i8* %19, align 1
  %879 = icmp eq i8 %867, 0
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %20, align 1
  %881 = lshr i8 %867, 7
  store i8 %881, i8* %21, align 1
  %882 = lshr i8 %866, 7
  %883 = xor i8 %881, %882
  %884 = xor i8 %881, 1
  %885 = add nuw nsw i8 %883, %884
  %886 = icmp eq i8 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %22, align 1
  %888 = add i64 %856, -880
  %889 = add i64 %888, %861
  %890 = add i64 %855, 21
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i8*
  store i8 %867, i8* %891, align 1
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_4388ce

block_.L_4388ce:                                  ; preds = %block_4388b9, %block_.L_4388a8
  %892 = phi i64 [ %.pre69, %block_4388b9 ], [ %855, %block_.L_4388a8 ]
  %893 = add i64 %892, 5
  store i64 %893, i64* %3, align 8
  br label %block_.L_4388d3

block_.L_4388d3:                                  ; preds = %block_.L_4388ce, %block_438882
  %storemerge38 = phi i64 [ %834, %block_438882 ], [ %893, %block_.L_4388ce ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.0, %block_438882 ], [ %call2_4388ab, %block_.L_4388ce ]
  %894 = add i64 %storemerge38, 5
  br label %block_.L_4388d8

block_.L_4388d8:                                  ; preds = %block_.L_4388d3, %block_.L_4386e5, %block_43868d
  %.sink = phi i64 [ %894, %block_.L_4388d3 ], [ %309, %block_.L_4386e5 ], [ %219, %block_43868d ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.13, %block_.L_4388d3 ], [ %MEMORY.0, %block_.L_4386e5 ], [ %MEMORY.0, %block_43868d ]
  %895 = load i64, i64* %RBP.i, align 8
  %896 = add i64 %895, -64
  %897 = add i64 %.sink, 3
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = add i32 %899, 1
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RAX.i931, align 8
  %902 = icmp eq i32 %899, -1
  %903 = icmp eq i32 %900, 0
  %904 = or i1 %902, %903
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %17, align 1
  %906 = and i32 %900, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906)
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %18, align 1
  %911 = xor i32 %900, %899
  %912 = lshr i32 %911, 4
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %19, align 1
  %915 = zext i1 %903 to i8
  store i8 %915, i8* %20, align 1
  %916 = lshr i32 %900, 31
  %917 = trunc i32 %916 to i8
  store i8 %917, i8* %21, align 1
  %918 = lshr i32 %899, 31
  %919 = xor i32 %916, %918
  %920 = add nuw nsw i32 %919, %916
  %921 = icmp eq i32 %920, 2
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %22, align 1
  %923 = add i64 %.sink, 9
  store i64 %923, i64* %3, align 8
  store i32 %900, i32* %898, align 4
  %924 = load i64, i64* %3, align 8
  %925 = add i64 %924, -630
  store i64 %925, i64* %3, align 8
  br label %block_.L_43866b

block_.L_4388e6:                                  ; preds = %block_.L_43866b
  %926 = add i64 %163, -2484
  %927 = add i64 %192, 7
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to i32*
  %929 = load i32, i32* %928, align 4
  store i8 0, i8* %17, align 1
  %930 = and i32 %929, 255
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930)
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %935 = icmp eq i32 %929, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %20, align 1
  %937 = lshr i32 %929, 31
  %938 = trunc i32 %937 to i8
  store i8 %938, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v81 = select i1 %935, i64 935, i64 13
  %939 = add i64 %192, %.v81
  store i64 %939, i64* %3, align 8
  br i1 %935, label %block_.L_438c8d, label %block_4388f3

block_4388f3:                                     ; preds = %block_.L_4388e6
  %940 = add i64 %939, 6
  store i64 %940, i64* %3, align 8
  %941 = load i32, i32* %928, align 4
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RAX.i931, align 8
  %943 = add i64 %163, -60
  %944 = add i64 %939, 9
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  store i32 %941, i32* %945, align 4
  %ESI.i91 = bitcast %union.anon* %35 to i32*
  %DL.i66 = bitcast %union.anon* %42 to i8*
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_4388fc

block_.L_4388fc:                                  ; preds = %block_.L_438c83, %block_4388f3
  %946 = phi i64 [ %2539, %block_.L_438c83 ], [ %.pre51, %block_4388f3 ]
  %947 = load i64, i64* %RBP.i, align 8
  %948 = add i64 %947, -60
  %949 = add i64 %946, 4
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i32*
  %951 = load i32, i32* %950, align 4
  store i8 0, i8* %17, align 1
  %952 = and i32 %951, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %957 = icmp eq i32 %951, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %20, align 1
  %959 = lshr i32 %951, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v82 = select i1 %957, i64 10, i64 19
  %961 = add i64 %946, %.v82
  store i64 %961, i64* %3, align 8
  br i1 %957, label %block_438906, label %block_.L_43890f

block_438906:                                     ; preds = %block_.L_4388fc
  %962 = add i64 %947, -2484
  %963 = add i64 %961, 6
  store i64 %963, i64* %3, align 8
  %964 = inttoptr i64 %962 to i32*
  %965 = load i32, i32* %964, align 4
  %966 = zext i32 %965 to i64
  store i64 %966, i64* %RAX.i931, align 8
  %967 = add i64 %961, 9
  store i64 %967, i64* %3, align 8
  store i32 %965, i32* %950, align 4
  %.pre52 = load i64, i64* %RBP.i, align 8
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_43890f

block_.L_43890f:                                  ; preds = %block_.L_4388fc, %block_438906
  %968 = phi i64 [ %.pre53, %block_438906 ], [ %961, %block_.L_4388fc ]
  %969 = phi i64 [ %.pre52, %block_438906 ], [ %947, %block_.L_4388fc ]
  %970 = add i64 %969, -60
  %971 = add i64 %968, 3
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i32*
  %973 = load i32, i32* %972, align 4
  %974 = add i32 %973, -1
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RAX.i931, align 8
  %976 = icmp ne i32 %973, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %17, align 1
  %978 = and i32 %974, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %18, align 1
  %983 = xor i32 %973, 16
  %984 = xor i32 %983, %974
  %985 = lshr i32 %984, 4
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  store i8 %987, i8* %19, align 1
  %988 = icmp eq i32 %974, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %20, align 1
  %990 = lshr i32 %974, 31
  %991 = trunc i32 %990 to i8
  store i8 %991, i8* %21, align 1
  %992 = lshr i32 %973, 31
  %993 = xor i32 %990, %992
  %994 = xor i32 %990, 1
  %995 = add nuw nsw i32 %993, %994
  %996 = icmp eq i32 %995, 2
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %22, align 1
  %998 = add i64 %968, 9
  store i64 %998, i64* %3, align 8
  store i32 %974, i32* %972, align 4
  %999 = load i32, i32* %EAX.i930, align 4
  %1000 = load i64, i64* %3, align 8
  %1001 = sext i32 %999 to i64
  store i64 %1001, i64* %RCX.i907, align 8
  %1002 = load i64, i64* %RBP.i, align 8
  %1003 = shl nsw i64 %1001, 2
  %1004 = add nsw i64 %1003, -2480
  %1005 = add i64 %1004, %1002
  %1006 = add i64 %1000, 10
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = zext i32 %1008 to i64
  store i64 %1009, i64* %RAX.i931, align 8
  %1010 = add i64 %1002, -64
  %1011 = add i64 %1000, 13
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  store i32 %1008, i32* %1012, align 4
  %1013 = load i64, i64* %RBP.i, align 8
  %1014 = add i64 %1013, -64
  %1015 = load i64, i64* %3, align 8
  %1016 = add i64 %1015, 3
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1014 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = add i32 %1018, 20
  %1020 = lshr i32 %1019, 31
  %1021 = add i32 %1018, 21
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RAX.i931, align 8
  %1023 = icmp eq i32 %1019, -1
  %1024 = icmp eq i32 %1021, 0
  %1025 = or i1 %1023, %1024
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %17, align 1
  %1027 = and i32 %1021, 255
  %1028 = tail call i32 @llvm.ctpop.i32(i32 %1027)
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  store i8 %1031, i8* %18, align 1
  %1032 = xor i32 %1021, %1019
  %1033 = lshr i32 %1032, 4
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  store i8 %1035, i8* %19, align 1
  %1036 = zext i1 %1024 to i8
  store i8 %1036, i8* %20, align 1
  %1037 = lshr i32 %1021, 31
  %1038 = trunc i32 %1037 to i8
  store i8 %1038, i8* %21, align 1
  %1039 = xor i32 %1037, %1020
  %1040 = add nuw nsw i32 %1039, %1037
  %1041 = icmp eq i32 %1040, 2
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %22, align 1
  %1043 = sext i32 %1021 to i64
  store i64 %1043, i64* %RCX.i907, align 8
  %1044 = add nsw i64 %1043, 12099168
  %1045 = add i64 %1015, 20
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i8*
  %1047 = load i8, i8* %1046, align 1
  %1048 = zext i8 %1047 to i64
  store i64 %1048, i64* %RAX.i931, align 8
  %1049 = zext i8 %1047 to i32
  %1050 = add nsw i32 %1049, -3
  %1051 = icmp ult i8 %1047, 3
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %17, align 1
  %1053 = and i32 %1050, 255
  %1054 = tail call i32 @llvm.ctpop.i32(i32 %1053)
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  %1057 = xor i8 %1056, 1
  store i8 %1057, i8* %18, align 1
  %1058 = xor i32 %1050, %1049
  %1059 = lshr i32 %1058, 4
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  store i8 %1061, i8* %19, align 1
  %1062 = icmp eq i32 %1050, 0
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %20, align 1
  %1064 = lshr i32 %1050, 31
  %1065 = trunc i32 %1064 to i8
  store i8 %1065, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v83 = select i1 %1062, i64 88, i64 29
  %1066 = add i64 %1015, %.v83
  store i64 %1066, i64* %3, align 8
  %.pre54 = load i64, i64* %RBP.i, align 8
  br i1 %1062, label %block_.L_43897d, label %block_438942

block_438942:                                     ; preds = %block_.L_43890f
  %1067 = add i64 %.pre54, -64
  %1068 = add i64 %1066, 3
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  %1071 = add i32 %1070, 20
  %1072 = lshr i32 %1071, 31
  %1073 = add i32 %1070, 21
  %1074 = zext i32 %1073 to i64
  store i64 %1074, i64* %RAX.i931, align 8
  %1075 = icmp eq i32 %1071, -1
  %1076 = icmp eq i32 %1073, 0
  %1077 = or i1 %1075, %1076
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %17, align 1
  %1079 = and i32 %1073, 255
  %1080 = tail call i32 @llvm.ctpop.i32(i32 %1079)
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  %1083 = xor i8 %1082, 1
  store i8 %1083, i8* %18, align 1
  %1084 = xor i32 %1073, %1071
  %1085 = lshr i32 %1084, 4
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  store i8 %1087, i8* %19, align 1
  %1088 = zext i1 %1076 to i8
  store i8 %1088, i8* %20, align 1
  %1089 = lshr i32 %1073, 31
  %1090 = trunc i32 %1089 to i8
  store i8 %1090, i8* %21, align 1
  %1091 = xor i32 %1089, %1072
  %1092 = add nuw nsw i32 %1091, %1089
  %1093 = icmp eq i32 %1092, 2
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %22, align 1
  %1095 = sext i32 %1073 to i64
  store i64 %1095, i64* %RCX.i907, align 8
  %1096 = add nsw i64 %1095, -880
  %1097 = add i64 %1096, %.pre54
  %1098 = add i64 %1066, 20
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i8*
  %1100 = load i8, i8* %1099, align 1
  %1101 = sext i8 %1100 to i64
  %1102 = and i64 %1101, 4294967295
  store i64 %1102, i64* %RAX.i931, align 8
  %1103 = add i64 %1066, 24
  store i64 %1103, i64* %3, align 8
  %1104 = load i32, i32* %1069, align 4
  %1105 = sext i32 %1104 to i64
  store i64 %1105, i64* %RCX.i907, align 8
  %1106 = add nsw i64 %1105, -480
  %1107 = add i64 %1106, %.pre54
  %1108 = add i64 %1066, 32
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i8*
  %1110 = load i8, i8* %1109, align 1
  %1111 = sext i8 %1110 to i64
  %1112 = and i64 %1111, 4294967295
  store i64 %1112, i64* %RDX.i910, align 8
  %1113 = add i64 %1066, 35
  store i64 %1113, i64* %3, align 8
  %1114 = load i32, i32* %1069, align 4
  %1115 = add i32 %1114, 20
  %1116 = zext i32 %1115 to i64
  store i64 %1116, i64* %RSI.i913, align 8
  %1117 = icmp ugt i32 %1114, -21
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %17, align 1
  %1119 = and i32 %1115, 255
  %1120 = tail call i32 @llvm.ctpop.i32(i32 %1119)
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  %1123 = xor i8 %1122, 1
  store i8 %1123, i8* %18, align 1
  %1124 = xor i32 %1114, 16
  %1125 = xor i32 %1124, %1115
  %1126 = lshr i32 %1125, 4
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  store i8 %1128, i8* %19, align 1
  %1129 = icmp eq i32 %1115, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %20, align 1
  %1131 = lshr i32 %1115, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %21, align 1
  %1133 = lshr i32 %1114, 31
  %1134 = xor i32 %1131, %1133
  %1135 = add nuw nsw i32 %1134, %1131
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %22, align 1
  %1138 = sext i32 %1115 to i64
  store i64 %1138, i64* %RCX.i907, align 8
  %1139 = load i64, i64* %RBP.i, align 8
  %1140 = add nsw i64 %1138, -880
  %1141 = add i64 %1140, %1139
  %1142 = add i64 %1066, 49
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i8*
  %1144 = load i8, i8* %1143, align 1
  %1145 = sext i8 %1144 to i64
  %1146 = and i64 %1145, 4294967295
  store i64 %1146, i64* %RSI.i913, align 8
  %1147 = sext i8 %1144 to i32
  %1148 = sext i8 %1110 to i32
  %1149 = sub nsw i32 %1148, %1147
  %1150 = zext i32 %1149 to i64
  store i64 %1150, i64* %RDX.i910, align 8
  %1151 = lshr i32 %1149, 31
  %1152 = load i32, i32* %EAX.i930, align 4
  %1153 = sub i32 %1152, %1149
  %1154 = icmp ult i32 %1152, %1149
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %17, align 1
  %1156 = and i32 %1153, 255
  %1157 = tail call i32 @llvm.ctpop.i32(i32 %1156)
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  %1160 = xor i8 %1159, 1
  store i8 %1160, i8* %18, align 1
  %1161 = xor i32 %1149, %1152
  %1162 = xor i32 %1161, %1153
  %1163 = lshr i32 %1162, 4
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  store i8 %1165, i8* %19, align 1
  %1166 = icmp eq i32 %1153, 0
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %20, align 1
  %1168 = lshr i32 %1153, 31
  %1169 = trunc i32 %1168 to i8
  store i8 %1169, i8* %21, align 1
  %1170 = lshr i32 %1152, 31
  %1171 = xor i32 %1151, %1170
  %1172 = xor i32 %1168, %1170
  %1173 = add nuw nsw i32 %1172, %1171
  %1174 = icmp eq i32 %1173, 2
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %22, align 1
  %1176 = icmp ne i8 %1169, 0
  %1177 = xor i1 %1176, %1174
  %.demorgan = or i1 %1166, %1177
  %.v84 = select i1 %.demorgan, i64 59, i64 675
  %1178 = add i64 %1066, %.v84
  store i64 %1178, i64* %3, align 8
  br i1 %.demorgan, label %block_.L_43897d, label %block_.L_438be5

block_.L_43897d:                                  ; preds = %block_.L_43890f, %block_438942
  %1179 = phi i64 [ %1178, %block_438942 ], [ %1066, %block_.L_43890f ]
  %1180 = phi i64 [ %1139, %block_438942 ], [ %.pre54, %block_.L_43890f ]
  %1181 = add i64 %1180, -64
  %1182 = add i64 %1179, 3
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = add i32 %1184, 20
  %1186 = icmp eq i32 %1185, 0
  %1187 = zext i1 %1186 to i8
  %1188 = lshr i32 %1185, 31
  %1189 = add i32 %1184, 19
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RAX.i931, align 8
  store i8 %1187, i8* %17, align 1
  %1191 = and i32 %1189, 255
  %1192 = tail call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  store i8 %1195, i8* %18, align 1
  %1196 = xor i32 %1189, %1185
  %1197 = lshr i32 %1196, 4
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  store i8 %1199, i8* %19, align 1
  %1200 = icmp eq i32 %1189, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %20, align 1
  %1202 = lshr i32 %1189, 31
  %1203 = trunc i32 %1202 to i8
  store i8 %1203, i8* %21, align 1
  %1204 = xor i32 %1202, %1188
  %1205 = add nuw nsw i32 %1204, %1188
  %1206 = icmp eq i32 %1205, 2
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %22, align 1
  %1208 = sext i32 %1189 to i64
  store i64 %1208, i64* %RCX.i907, align 8
  %1209 = add nsw i64 %1208, 12099168
  %1210 = add i64 %1179, 20
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i8*
  %1212 = load i8, i8* %1211, align 1
  %1213 = zext i8 %1212 to i64
  store i64 %1213, i64* %RAX.i931, align 8
  %1214 = zext i8 %1212 to i32
  %1215 = add nsw i32 %1214, -3
  %1216 = icmp ult i8 %1212, 3
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %17, align 1
  %1218 = and i32 %1215, 255
  %1219 = tail call i32 @llvm.ctpop.i32(i32 %1218)
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = xor i8 %1221, 1
  store i8 %1222, i8* %18, align 1
  %1223 = xor i32 %1215, %1214
  %1224 = lshr i32 %1223, 4
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  store i8 %1226, i8* %19, align 1
  %1227 = icmp eq i32 %1215, 0
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %20, align 1
  %1229 = lshr i32 %1215, 31
  %1230 = trunc i32 %1229 to i8
  store i8 %1230, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v87 = select i1 %1227, i64 88, i64 29
  %1231 = add i64 %1179, %.v87
  store i64 %1231, i64* %3, align 8
  %.pre55 = load i64, i64* %RBP.i, align 8
  br i1 %1227, label %block_.L_4389d5, label %block_43899a

block_43899a:                                     ; preds = %block_.L_43897d
  %1232 = add i64 %.pre55, -64
  %1233 = add i64 %1231, 3
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = add i32 %1235, 20
  %1237 = icmp eq i32 %1236, 0
  %1238 = zext i1 %1237 to i8
  %1239 = lshr i32 %1236, 31
  %1240 = add i32 %1235, 19
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RAX.i931, align 8
  store i8 %1238, i8* %17, align 1
  %1242 = and i32 %1240, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %18, align 1
  %1247 = xor i32 %1240, %1236
  %1248 = lshr i32 %1247, 4
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  store i8 %1250, i8* %19, align 1
  %1251 = icmp eq i32 %1240, 0
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %20, align 1
  %1253 = lshr i32 %1240, 31
  %1254 = trunc i32 %1253 to i8
  store i8 %1254, i8* %21, align 1
  %1255 = xor i32 %1253, %1239
  %1256 = add nuw nsw i32 %1255, %1239
  %1257 = icmp eq i32 %1256, 2
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %22, align 1
  %1259 = sext i32 %1240 to i64
  store i64 %1259, i64* %RCX.i907, align 8
  %1260 = add nsw i64 %1259, -880
  %1261 = add i64 %1260, %.pre55
  %1262 = add i64 %1231, 20
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i8*
  %1264 = load i8, i8* %1263, align 1
  %1265 = sext i8 %1264 to i64
  %1266 = and i64 %1265, 4294967295
  store i64 %1266, i64* %RAX.i931, align 8
  %1267 = add i64 %1231, 24
  store i64 %1267, i64* %3, align 8
  %1268 = load i32, i32* %1234, align 4
  %1269 = sext i32 %1268 to i64
  store i64 %1269, i64* %RCX.i907, align 8
  %1270 = add nsw i64 %1269, -480
  %1271 = add i64 %1270, %.pre55
  %1272 = add i64 %1231, 32
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i8*
  %1274 = load i8, i8* %1273, align 1
  %1275 = sext i8 %1274 to i64
  %1276 = and i64 %1275, 4294967295
  store i64 %1276, i64* %RDX.i910, align 8
  %1277 = add i64 %1231, 35
  store i64 %1277, i64* %3, align 8
  %1278 = load i32, i32* %1234, align 4
  %1279 = add i32 %1278, 20
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RSI.i913, align 8
  %1281 = icmp ugt i32 %1278, -21
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %17, align 1
  %1283 = and i32 %1279, 255
  %1284 = tail call i32 @llvm.ctpop.i32(i32 %1283)
  %1285 = trunc i32 %1284 to i8
  %1286 = and i8 %1285, 1
  %1287 = xor i8 %1286, 1
  store i8 %1287, i8* %18, align 1
  %1288 = xor i32 %1278, 16
  %1289 = xor i32 %1288, %1279
  %1290 = lshr i32 %1289, 4
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  store i8 %1292, i8* %19, align 1
  %1293 = icmp eq i32 %1279, 0
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %20, align 1
  %1295 = lshr i32 %1279, 31
  %1296 = trunc i32 %1295 to i8
  store i8 %1296, i8* %21, align 1
  %1297 = lshr i32 %1278, 31
  %1298 = xor i32 %1295, %1297
  %1299 = add nuw nsw i32 %1298, %1295
  %1300 = icmp eq i32 %1299, 2
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %22, align 1
  %1302 = sext i32 %1279 to i64
  store i64 %1302, i64* %RCX.i907, align 8
  %1303 = load i64, i64* %RBP.i, align 8
  %1304 = add nsw i64 %1302, -880
  %1305 = add i64 %1304, %1303
  %1306 = add i64 %1231, 49
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i8*
  %1308 = load i8, i8* %1307, align 1
  %1309 = sext i8 %1308 to i64
  %1310 = and i64 %1309, 4294967295
  store i64 %1310, i64* %RSI.i913, align 8
  %1311 = sext i8 %1308 to i32
  %1312 = sext i8 %1274 to i32
  %1313 = sub nsw i32 %1312, %1311
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RDX.i910, align 8
  %1315 = lshr i32 %1313, 31
  %1316 = load i32, i32* %EAX.i930, align 4
  %1317 = sub i32 %1316, %1313
  %1318 = icmp ult i32 %1316, %1313
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %17, align 1
  %1320 = and i32 %1317, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %18, align 1
  %1325 = xor i32 %1313, %1316
  %1326 = xor i32 %1325, %1317
  %1327 = lshr i32 %1326, 4
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  store i8 %1329, i8* %19, align 1
  %1330 = icmp eq i32 %1317, 0
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %20, align 1
  %1332 = lshr i32 %1317, 31
  %1333 = trunc i32 %1332 to i8
  store i8 %1333, i8* %21, align 1
  %1334 = lshr i32 %1316, 31
  %1335 = xor i32 %1315, %1334
  %1336 = xor i32 %1332, %1334
  %1337 = add nuw nsw i32 %1336, %1335
  %1338 = icmp eq i32 %1337, 2
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %22, align 1
  %1340 = icmp ne i8 %1333, 0
  %1341 = xor i1 %1340, %1338
  %.demorgan72 = or i1 %1330, %1341
  %.v88 = select i1 %.demorgan72, i64 59, i64 587
  %1342 = add i64 %1231, %.v88
  store i64 %1342, i64* %3, align 8
  br i1 %.demorgan72, label %block_.L_4389d5, label %block_.L_438be5

block_.L_4389d5:                                  ; preds = %block_.L_43897d, %block_43899a
  %1343 = phi i64 [ %1342, %block_43899a ], [ %1231, %block_.L_43897d ]
  %1344 = phi i64 [ %1303, %block_43899a ], [ %.pre55, %block_.L_43897d ]
  %1345 = add i64 %1344, -64
  %1346 = add i64 %1343, 3
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = add i32 %1348, 20
  %1350 = lshr i32 %1349, 31
  %1351 = add i32 %1348, 21
  %1352 = zext i32 %1351 to i64
  store i64 %1352, i64* %RAX.i931, align 8
  %1353 = icmp eq i32 %1349, -1
  %1354 = icmp eq i32 %1351, 0
  %1355 = or i1 %1353, %1354
  %1356 = zext i1 %1355 to i8
  store i8 %1356, i8* %17, align 1
  %1357 = and i32 %1351, 255
  %1358 = tail call i32 @llvm.ctpop.i32(i32 %1357)
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %18, align 1
  %1362 = xor i32 %1351, %1349
  %1363 = lshr i32 %1362, 4
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  store i8 %1365, i8* %19, align 1
  %1366 = zext i1 %1354 to i8
  store i8 %1366, i8* %20, align 1
  %1367 = lshr i32 %1351, 31
  %1368 = trunc i32 %1367 to i8
  store i8 %1368, i8* %21, align 1
  %1369 = xor i32 %1367, %1350
  %1370 = add nuw nsw i32 %1369, %1367
  %1371 = icmp eq i32 %1370, 2
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %22, align 1
  %1373 = sext i32 %1351 to i64
  store i64 %1373, i64* %RCX.i907, align 8
  %1374 = add nsw i64 %1373, 12099168
  %1375 = add i64 %1343, 20
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i8*
  %1377 = load i8, i8* %1376, align 1
  %1378 = zext i8 %1377 to i64
  store i64 %1378, i64* %RAX.i931, align 8
  %1379 = zext i8 %1377 to i32
  %1380 = add nsw i32 %1379, -3
  %1381 = icmp ult i8 %1377, 3
  %1382 = zext i1 %1381 to i8
  store i8 %1382, i8* %17, align 1
  %1383 = and i32 %1380, 255
  %1384 = tail call i32 @llvm.ctpop.i32(i32 %1383)
  %1385 = trunc i32 %1384 to i8
  %1386 = and i8 %1385, 1
  %1387 = xor i8 %1386, 1
  store i8 %1387, i8* %18, align 1
  %1388 = xor i32 %1380, %1379
  %1389 = lshr i32 %1388, 4
  %1390 = trunc i32 %1389 to i8
  %1391 = and i8 %1390, 1
  store i8 %1391, i8* %19, align 1
  %1392 = icmp eq i32 %1380, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %20, align 1
  %1394 = lshr i32 %1380, 31
  %1395 = trunc i32 %1394 to i8
  store i8 %1395, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v89 = select i1 %1392, i64 88, i64 29
  %1396 = add i64 %1343, %.v89
  store i64 %1396, i64* %3, align 8
  %.pre56 = load i64, i64* %RBP.i, align 8
  br i1 %1392, label %block_.L_438a2d, label %block_4389f2

block_4389f2:                                     ; preds = %block_.L_4389d5
  %1397 = add i64 %.pre56, -64
  %1398 = add i64 %1396, 3
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i32*
  %1400 = load i32, i32* %1399, align 4
  %1401 = add i32 %1400, 20
  %1402 = lshr i32 %1401, 31
  %1403 = add i32 %1400, 21
  %1404 = zext i32 %1403 to i64
  store i64 %1404, i64* %RAX.i931, align 8
  %1405 = icmp eq i32 %1401, -1
  %1406 = icmp eq i32 %1403, 0
  %1407 = or i1 %1405, %1406
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %17, align 1
  %1409 = and i32 %1403, 255
  %1410 = tail call i32 @llvm.ctpop.i32(i32 %1409)
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  %1413 = xor i8 %1412, 1
  store i8 %1413, i8* %18, align 1
  %1414 = xor i32 %1403, %1401
  %1415 = lshr i32 %1414, 4
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  store i8 %1417, i8* %19, align 1
  %1418 = zext i1 %1406 to i8
  store i8 %1418, i8* %20, align 1
  %1419 = lshr i32 %1403, 31
  %1420 = trunc i32 %1419 to i8
  store i8 %1420, i8* %21, align 1
  %1421 = xor i32 %1419, %1402
  %1422 = add nuw nsw i32 %1421, %1419
  %1423 = icmp eq i32 %1422, 2
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %22, align 1
  %1425 = sext i32 %1403 to i64
  store i64 %1425, i64* %RCX.i907, align 8
  %1426 = add nsw i64 %1425, -880
  %1427 = add i64 %1426, %.pre56
  %1428 = add i64 %1396, 20
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i8*
  %1430 = load i8, i8* %1429, align 1
  %1431 = sext i8 %1430 to i64
  %1432 = and i64 %1431, 4294967295
  store i64 %1432, i64* %RAX.i931, align 8
  %1433 = add i64 %1396, 24
  store i64 %1433, i64* %3, align 8
  %1434 = load i32, i32* %1399, align 4
  %1435 = sext i32 %1434 to i64
  store i64 %1435, i64* %RCX.i907, align 8
  %1436 = add nsw i64 %1435, -480
  %1437 = add i64 %1436, %.pre56
  %1438 = add i64 %1396, 32
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i8*
  %1440 = load i8, i8* %1439, align 1
  %1441 = sext i8 %1440 to i64
  %1442 = and i64 %1441, 4294967295
  store i64 %1442, i64* %RDX.i910, align 8
  %1443 = add i64 %1396, 35
  store i64 %1443, i64* %3, align 8
  %1444 = load i32, i32* %1399, align 4
  %1445 = add i32 %1444, 1
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RSI.i913, align 8
  %1447 = icmp eq i32 %1444, -1
  %1448 = icmp eq i32 %1445, 0
  %1449 = or i1 %1447, %1448
  %1450 = zext i1 %1449 to i8
  store i8 %1450, i8* %17, align 1
  %1451 = and i32 %1445, 255
  %1452 = tail call i32 @llvm.ctpop.i32(i32 %1451)
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  %1455 = xor i8 %1454, 1
  store i8 %1455, i8* %18, align 1
  %1456 = xor i32 %1445, %1444
  %1457 = lshr i32 %1456, 4
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  store i8 %1459, i8* %19, align 1
  %1460 = zext i1 %1448 to i8
  store i8 %1460, i8* %20, align 1
  %1461 = lshr i32 %1445, 31
  %1462 = trunc i32 %1461 to i8
  store i8 %1462, i8* %21, align 1
  %1463 = lshr i32 %1444, 31
  %1464 = xor i32 %1461, %1463
  %1465 = add nuw nsw i32 %1464, %1461
  %1466 = icmp eq i32 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %22, align 1
  %1468 = sext i32 %1445 to i64
  store i64 %1468, i64* %RCX.i907, align 8
  %1469 = load i64, i64* %RBP.i, align 8
  %1470 = add nsw i64 %1468, -880
  %1471 = add i64 %1470, %1469
  %1472 = add i64 %1396, 49
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i8*
  %1474 = load i8, i8* %1473, align 1
  %1475 = sext i8 %1474 to i64
  %1476 = and i64 %1475, 4294967295
  store i64 %1476, i64* %RSI.i913, align 8
  %1477 = sext i8 %1474 to i32
  %1478 = sext i8 %1440 to i32
  %1479 = sub nsw i32 %1478, %1477
  %1480 = zext i32 %1479 to i64
  store i64 %1480, i64* %RDX.i910, align 8
  %1481 = lshr i32 %1479, 31
  %1482 = load i32, i32* %EAX.i930, align 4
  %1483 = sub i32 %1482, %1479
  %1484 = icmp ult i32 %1482, %1479
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %17, align 1
  %1486 = and i32 %1483, 255
  %1487 = tail call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %18, align 1
  %1491 = xor i32 %1479, %1482
  %1492 = xor i32 %1491, %1483
  %1493 = lshr i32 %1492, 4
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  store i8 %1495, i8* %19, align 1
  %1496 = icmp eq i32 %1483, 0
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %20, align 1
  %1498 = lshr i32 %1483, 31
  %1499 = trunc i32 %1498 to i8
  store i8 %1499, i8* %21, align 1
  %1500 = lshr i32 %1482, 31
  %1501 = xor i32 %1481, %1500
  %1502 = xor i32 %1498, %1500
  %1503 = add nuw nsw i32 %1502, %1501
  %1504 = icmp eq i32 %1503, 2
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %22, align 1
  %1506 = icmp ne i8 %1499, 0
  %1507 = xor i1 %1506, %1504
  %.demorgan73 = or i1 %1496, %1507
  %.v90 = select i1 %.demorgan73, i64 59, i64 499
  %1508 = add i64 %1396, %.v90
  store i64 %1508, i64* %3, align 8
  br i1 %.demorgan73, label %block_.L_438a2d, label %block_.L_438be5

block_.L_438a2d:                                  ; preds = %block_.L_4389d5, %block_4389f2
  %1509 = phi i64 [ %1508, %block_4389f2 ], [ %1396, %block_.L_4389d5 ]
  %1510 = phi i64 [ %1469, %block_4389f2 ], [ %.pre56, %block_.L_4389d5 ]
  %1511 = add i64 %1510, -64
  %1512 = add i64 %1509, 3
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i32*
  %1514 = load i32, i32* %1513, align 4
  %1515 = add i32 %1514, -20
  %1516 = lshr i32 %1515, 31
  %1517 = add i32 %1514, -19
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %RAX.i931, align 8
  %1519 = icmp eq i32 %1515, -1
  %1520 = icmp eq i32 %1517, 0
  %1521 = or i1 %1519, %1520
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %17, align 1
  %1523 = and i32 %1517, 255
  %1524 = tail call i32 @llvm.ctpop.i32(i32 %1523)
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  %1527 = xor i8 %1526, 1
  store i8 %1527, i8* %18, align 1
  %1528 = xor i32 %1517, %1515
  %1529 = lshr i32 %1528, 4
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  store i8 %1531, i8* %19, align 1
  %1532 = zext i1 %1520 to i8
  store i8 %1532, i8* %20, align 1
  %1533 = lshr i32 %1517, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %21, align 1
  %1535 = xor i32 %1533, %1516
  %1536 = add nuw nsw i32 %1535, %1533
  %1537 = icmp eq i32 %1536, 2
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %22, align 1
  %1539 = sext i32 %1517 to i64
  store i64 %1539, i64* %RCX.i907, align 8
  %1540 = add nsw i64 %1539, 12099168
  %1541 = add i64 %1509, 20
  store i64 %1541, i64* %3, align 8
  %1542 = inttoptr i64 %1540 to i8*
  %1543 = load i8, i8* %1542, align 1
  %1544 = zext i8 %1543 to i64
  store i64 %1544, i64* %RAX.i931, align 8
  %1545 = zext i8 %1543 to i32
  %1546 = add nsw i32 %1545, -3
  %1547 = icmp ult i8 %1543, 3
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %17, align 1
  %1549 = and i32 %1546, 255
  %1550 = tail call i32 @llvm.ctpop.i32(i32 %1549)
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  %1553 = xor i8 %1552, 1
  store i8 %1553, i8* %18, align 1
  %1554 = xor i32 %1546, %1545
  %1555 = lshr i32 %1554, 4
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  store i8 %1557, i8* %19, align 1
  %1558 = icmp eq i32 %1546, 0
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %20, align 1
  %1560 = lshr i32 %1546, 31
  %1561 = trunc i32 %1560 to i8
  store i8 %1561, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v91 = select i1 %1558, i64 88, i64 29
  %1562 = add i64 %1509, %.v91
  store i64 %1562, i64* %3, align 8
  %.pre57 = load i64, i64* %RBP.i, align 8
  br i1 %1558, label %block_.L_438a85, label %block_438a4a

block_438a4a:                                     ; preds = %block_.L_438a2d
  %1563 = add i64 %.pre57, -64
  %1564 = add i64 %1562, 3
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = add i32 %1566, -20
  %1568 = lshr i32 %1567, 31
  %1569 = add i32 %1566, -19
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RAX.i931, align 8
  %1571 = icmp eq i32 %1567, -1
  %1572 = icmp eq i32 %1569, 0
  %1573 = or i1 %1571, %1572
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %17, align 1
  %1575 = and i32 %1569, 255
  %1576 = tail call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  store i8 %1579, i8* %18, align 1
  %1580 = xor i32 %1569, %1567
  %1581 = lshr i32 %1580, 4
  %1582 = trunc i32 %1581 to i8
  %1583 = and i8 %1582, 1
  store i8 %1583, i8* %19, align 1
  %1584 = zext i1 %1572 to i8
  store i8 %1584, i8* %20, align 1
  %1585 = lshr i32 %1569, 31
  %1586 = trunc i32 %1585 to i8
  store i8 %1586, i8* %21, align 1
  %1587 = xor i32 %1585, %1568
  %1588 = add nuw nsw i32 %1587, %1585
  %1589 = icmp eq i32 %1588, 2
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %22, align 1
  %1591 = sext i32 %1569 to i64
  store i64 %1591, i64* %RCX.i907, align 8
  %1592 = add nsw i64 %1591, -880
  %1593 = add i64 %1592, %.pre57
  %1594 = add i64 %1562, 20
  store i64 %1594, i64* %3, align 8
  %1595 = inttoptr i64 %1593 to i8*
  %1596 = load i8, i8* %1595, align 1
  %1597 = sext i8 %1596 to i64
  %1598 = and i64 %1597, 4294967295
  store i64 %1598, i64* %RAX.i931, align 8
  %1599 = add i64 %1562, 24
  store i64 %1599, i64* %3, align 8
  %1600 = load i32, i32* %1565, align 4
  %1601 = sext i32 %1600 to i64
  store i64 %1601, i64* %RCX.i907, align 8
  %1602 = add nsw i64 %1601, -480
  %1603 = add i64 %1602, %.pre57
  %1604 = add i64 %1562, 32
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to i8*
  %1606 = load i8, i8* %1605, align 1
  %1607 = sext i8 %1606 to i64
  %1608 = and i64 %1607, 4294967295
  store i64 %1608, i64* %RDX.i910, align 8
  %1609 = add i64 %1562, 35
  store i64 %1609, i64* %3, align 8
  %1610 = load i32, i32* %1565, align 4
  %1611 = add i32 %1610, 1
  %1612 = zext i32 %1611 to i64
  store i64 %1612, i64* %RSI.i913, align 8
  %1613 = icmp eq i32 %1610, -1
  %1614 = icmp eq i32 %1611, 0
  %1615 = or i1 %1613, %1614
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %17, align 1
  %1617 = and i32 %1611, 255
  %1618 = tail call i32 @llvm.ctpop.i32(i32 %1617)
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  %1621 = xor i8 %1620, 1
  store i8 %1621, i8* %18, align 1
  %1622 = xor i32 %1611, %1610
  %1623 = lshr i32 %1622, 4
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %19, align 1
  %1626 = zext i1 %1614 to i8
  store i8 %1626, i8* %20, align 1
  %1627 = lshr i32 %1611, 31
  %1628 = trunc i32 %1627 to i8
  store i8 %1628, i8* %21, align 1
  %1629 = lshr i32 %1610, 31
  %1630 = xor i32 %1627, %1629
  %1631 = add nuw nsw i32 %1630, %1627
  %1632 = icmp eq i32 %1631, 2
  %1633 = zext i1 %1632 to i8
  store i8 %1633, i8* %22, align 1
  %1634 = sext i32 %1611 to i64
  store i64 %1634, i64* %RCX.i907, align 8
  %1635 = load i64, i64* %RBP.i, align 8
  %1636 = add nsw i64 %1634, -880
  %1637 = add i64 %1636, %1635
  %1638 = add i64 %1562, 49
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i8*
  %1640 = load i8, i8* %1639, align 1
  %1641 = sext i8 %1640 to i64
  %1642 = and i64 %1641, 4294967295
  store i64 %1642, i64* %RSI.i913, align 8
  %1643 = sext i8 %1640 to i32
  %1644 = sext i8 %1606 to i32
  %1645 = sub nsw i32 %1644, %1643
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RDX.i910, align 8
  %1647 = lshr i32 %1645, 31
  %1648 = load i32, i32* %EAX.i930, align 4
  %1649 = sub i32 %1648, %1645
  %1650 = icmp ult i32 %1648, %1645
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %17, align 1
  %1652 = and i32 %1649, 255
  %1653 = tail call i32 @llvm.ctpop.i32(i32 %1652)
  %1654 = trunc i32 %1653 to i8
  %1655 = and i8 %1654, 1
  %1656 = xor i8 %1655, 1
  store i8 %1656, i8* %18, align 1
  %1657 = xor i32 %1645, %1648
  %1658 = xor i32 %1657, %1649
  %1659 = lshr i32 %1658, 4
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  store i8 %1661, i8* %19, align 1
  %1662 = icmp eq i32 %1649, 0
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %20, align 1
  %1664 = lshr i32 %1649, 31
  %1665 = trunc i32 %1664 to i8
  store i8 %1665, i8* %21, align 1
  %1666 = lshr i32 %1648, 31
  %1667 = xor i32 %1647, %1666
  %1668 = xor i32 %1664, %1666
  %1669 = add nuw nsw i32 %1668, %1667
  %1670 = icmp eq i32 %1669, 2
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %22, align 1
  %1672 = icmp ne i8 %1665, 0
  %1673 = xor i1 %1672, %1670
  %.demorgan74 = or i1 %1662, %1673
  %.v92 = select i1 %.demorgan74, i64 59, i64 411
  %1674 = add i64 %1562, %.v92
  store i64 %1674, i64* %3, align 8
  br i1 %.demorgan74, label %block_.L_438a85, label %block_.L_438be5

block_.L_438a85:                                  ; preds = %block_.L_438a2d, %block_438a4a
  %1675 = phi i64 [ %1674, %block_438a4a ], [ %1562, %block_.L_438a2d ]
  %1676 = phi i64 [ %1635, %block_438a4a ], [ %.pre57, %block_.L_438a2d ]
  %1677 = add i64 %1676, -64
  %1678 = add i64 %1675, 3
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1677 to i32*
  %1680 = load i32, i32* %1679, align 4
  %1681 = add i32 %1680, 20
  %1682 = icmp eq i32 %1681, 0
  %1683 = zext i1 %1682 to i8
  %1684 = lshr i32 %1681, 31
  %1685 = add i32 %1680, 19
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %RAX.i931, align 8
  store i8 %1683, i8* %17, align 1
  %1687 = and i32 %1685, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %18, align 1
  %1692 = xor i32 %1685, %1681
  %1693 = lshr i32 %1692, 4
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  store i8 %1695, i8* %19, align 1
  %1696 = icmp eq i32 %1685, 0
  %1697 = zext i1 %1696 to i8
  store i8 %1697, i8* %20, align 1
  %1698 = lshr i32 %1685, 31
  %1699 = trunc i32 %1698 to i8
  store i8 %1699, i8* %21, align 1
  %1700 = xor i32 %1698, %1684
  %1701 = add nuw nsw i32 %1700, %1684
  %1702 = icmp eq i32 %1701, 2
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %22, align 1
  %1704 = sext i32 %1685 to i64
  store i64 %1704, i64* %RCX.i907, align 8
  %1705 = add nsw i64 %1704, 12099168
  %1706 = add i64 %1675, 20
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i8*
  %1708 = load i8, i8* %1707, align 1
  %1709 = zext i8 %1708 to i64
  store i64 %1709, i64* %RAX.i931, align 8
  %1710 = zext i8 %1708 to i32
  %1711 = add nsw i32 %1710, -3
  %1712 = icmp ult i8 %1708, 3
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %17, align 1
  %1714 = and i32 %1711, 255
  %1715 = tail call i32 @llvm.ctpop.i32(i32 %1714)
  %1716 = trunc i32 %1715 to i8
  %1717 = and i8 %1716, 1
  %1718 = xor i8 %1717, 1
  store i8 %1718, i8* %18, align 1
  %1719 = xor i32 %1711, %1710
  %1720 = lshr i32 %1719, 4
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  store i8 %1722, i8* %19, align 1
  %1723 = icmp eq i32 %1711, 0
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %20, align 1
  %1725 = lshr i32 %1711, 31
  %1726 = trunc i32 %1725 to i8
  store i8 %1726, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v93 = select i1 %1723, i64 88, i64 29
  %1727 = add i64 %1675, %.v93
  store i64 %1727, i64* %3, align 8
  %.pre58 = load i64, i64* %RBP.i, align 8
  br i1 %1723, label %block_.L_438add, label %block_438aa2

block_438aa2:                                     ; preds = %block_.L_438a85
  %1728 = add i64 %.pre58, -64
  %1729 = add i64 %1727, 3
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i32*
  %1731 = load i32, i32* %1730, align 4
  %1732 = add i32 %1731, 20
  %1733 = icmp eq i32 %1732, 0
  %1734 = zext i1 %1733 to i8
  %1735 = lshr i32 %1732, 31
  %1736 = add i32 %1731, 19
  %1737 = zext i32 %1736 to i64
  store i64 %1737, i64* %RAX.i931, align 8
  store i8 %1734, i8* %17, align 1
  %1738 = and i32 %1736, 255
  %1739 = tail call i32 @llvm.ctpop.i32(i32 %1738)
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  %1742 = xor i8 %1741, 1
  store i8 %1742, i8* %18, align 1
  %1743 = xor i32 %1736, %1732
  %1744 = lshr i32 %1743, 4
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  store i8 %1746, i8* %19, align 1
  %1747 = icmp eq i32 %1736, 0
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %20, align 1
  %1749 = lshr i32 %1736, 31
  %1750 = trunc i32 %1749 to i8
  store i8 %1750, i8* %21, align 1
  %1751 = xor i32 %1749, %1735
  %1752 = add nuw nsw i32 %1751, %1735
  %1753 = icmp eq i32 %1752, 2
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %22, align 1
  %1755 = sext i32 %1736 to i64
  store i64 %1755, i64* %RCX.i907, align 8
  %1756 = add nsw i64 %1755, -880
  %1757 = add i64 %1756, %.pre58
  %1758 = add i64 %1727, 20
  store i64 %1758, i64* %3, align 8
  %1759 = inttoptr i64 %1757 to i8*
  %1760 = load i8, i8* %1759, align 1
  %1761 = sext i8 %1760 to i64
  %1762 = and i64 %1761, 4294967295
  store i64 %1762, i64* %RAX.i931, align 8
  %1763 = add i64 %1727, 24
  store i64 %1763, i64* %3, align 8
  %1764 = load i32, i32* %1730, align 4
  %1765 = sext i32 %1764 to i64
  store i64 %1765, i64* %RCX.i907, align 8
  %1766 = add nsw i64 %1765, -480
  %1767 = add i64 %1766, %.pre58
  %1768 = add i64 %1727, 32
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i8*
  %1770 = load i8, i8* %1769, align 1
  %1771 = sext i8 %1770 to i64
  %1772 = and i64 %1771, 4294967295
  store i64 %1772, i64* %RDX.i910, align 8
  %1773 = add i64 %1727, 35
  store i64 %1773, i64* %3, align 8
  %1774 = load i32, i32* %1730, align 4
  %1775 = add i32 %1774, -1
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RSI.i913, align 8
  %1777 = icmp eq i32 %1774, 0
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %17, align 1
  %1779 = and i32 %1775, 255
  %1780 = tail call i32 @llvm.ctpop.i32(i32 %1779)
  %1781 = trunc i32 %1780 to i8
  %1782 = and i8 %1781, 1
  %1783 = xor i8 %1782, 1
  store i8 %1783, i8* %18, align 1
  %1784 = xor i32 %1775, %1774
  %1785 = lshr i32 %1784, 4
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  store i8 %1787, i8* %19, align 1
  %1788 = icmp eq i32 %1775, 0
  %1789 = zext i1 %1788 to i8
  store i8 %1789, i8* %20, align 1
  %1790 = lshr i32 %1775, 31
  %1791 = trunc i32 %1790 to i8
  store i8 %1791, i8* %21, align 1
  %1792 = lshr i32 %1774, 31
  %1793 = xor i32 %1790, %1792
  %1794 = add nuw nsw i32 %1793, %1792
  %1795 = icmp eq i32 %1794, 2
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %22, align 1
  %1797 = sext i32 %1775 to i64
  store i64 %1797, i64* %RCX.i907, align 8
  %1798 = load i64, i64* %RBP.i, align 8
  %1799 = add nsw i64 %1797, -880
  %1800 = add i64 %1799, %1798
  %1801 = add i64 %1727, 49
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i8*
  %1803 = load i8, i8* %1802, align 1
  %1804 = sext i8 %1803 to i64
  %1805 = and i64 %1804, 4294967295
  store i64 %1805, i64* %RSI.i913, align 8
  %1806 = sext i8 %1803 to i32
  %1807 = sext i8 %1770 to i32
  %1808 = sub nsw i32 %1807, %1806
  %1809 = zext i32 %1808 to i64
  store i64 %1809, i64* %RDX.i910, align 8
  %1810 = lshr i32 %1808, 31
  %1811 = load i32, i32* %EAX.i930, align 4
  %1812 = sub i32 %1811, %1808
  %1813 = icmp ult i32 %1811, %1808
  %1814 = zext i1 %1813 to i8
  store i8 %1814, i8* %17, align 1
  %1815 = and i32 %1812, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %18, align 1
  %1820 = xor i32 %1808, %1811
  %1821 = xor i32 %1820, %1812
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %19, align 1
  %1825 = icmp eq i32 %1812, 0
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %20, align 1
  %1827 = lshr i32 %1812, 31
  %1828 = trunc i32 %1827 to i8
  store i8 %1828, i8* %21, align 1
  %1829 = lshr i32 %1811, 31
  %1830 = xor i32 %1810, %1829
  %1831 = xor i32 %1827, %1829
  %1832 = add nuw nsw i32 %1831, %1830
  %1833 = icmp eq i32 %1832, 2
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %22, align 1
  %1835 = icmp ne i8 %1828, 0
  %1836 = xor i1 %1835, %1833
  %.demorgan75 = or i1 %1825, %1836
  %.v94 = select i1 %.demorgan75, i64 59, i64 323
  %1837 = add i64 %1727, %.v94
  store i64 %1837, i64* %3, align 8
  br i1 %.demorgan75, label %block_.L_438add, label %block_.L_438be5

block_.L_438add:                                  ; preds = %block_.L_438a85, %block_438aa2
  %1838 = phi i64 [ %1837, %block_438aa2 ], [ %1727, %block_.L_438a85 ]
  %1839 = phi i64 [ %1798, %block_438aa2 ], [ %.pre58, %block_.L_438a85 ]
  %1840 = add i64 %1839, -64
  %1841 = add i64 %1838, 3
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i32*
  %1843 = load i32, i32* %1842, align 4
  %1844 = add i32 %1843, -20
  %1845 = icmp eq i32 %1844, 0
  %1846 = zext i1 %1845 to i8
  %1847 = lshr i32 %1844, 31
  %1848 = add i32 %1843, -21
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RAX.i931, align 8
  store i8 %1846, i8* %17, align 1
  %1850 = and i32 %1848, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %18, align 1
  %1855 = xor i32 %1848, %1844
  %1856 = lshr i32 %1855, 4
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  store i8 %1858, i8* %19, align 1
  %1859 = icmp eq i32 %1848, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %20, align 1
  %1861 = lshr i32 %1848, 31
  %1862 = trunc i32 %1861 to i8
  store i8 %1862, i8* %21, align 1
  %1863 = xor i32 %1861, %1847
  %1864 = add nuw nsw i32 %1863, %1847
  %1865 = icmp eq i32 %1864, 2
  %1866 = zext i1 %1865 to i8
  store i8 %1866, i8* %22, align 1
  %1867 = sext i32 %1848 to i64
  store i64 %1867, i64* %RCX.i907, align 8
  %1868 = add nsw i64 %1867, 12099168
  %1869 = add i64 %1838, 20
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to i8*
  %1871 = load i8, i8* %1870, align 1
  %1872 = zext i8 %1871 to i64
  store i64 %1872, i64* %RAX.i931, align 8
  %1873 = zext i8 %1871 to i32
  %1874 = add nsw i32 %1873, -3
  %1875 = icmp ult i8 %1871, 3
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %17, align 1
  %1877 = and i32 %1874, 255
  %1878 = tail call i32 @llvm.ctpop.i32(i32 %1877)
  %1879 = trunc i32 %1878 to i8
  %1880 = and i8 %1879, 1
  %1881 = xor i8 %1880, 1
  store i8 %1881, i8* %18, align 1
  %1882 = xor i32 %1874, %1873
  %1883 = lshr i32 %1882, 4
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  store i8 %1885, i8* %19, align 1
  %1886 = icmp eq i32 %1874, 0
  %1887 = zext i1 %1886 to i8
  store i8 %1887, i8* %20, align 1
  %1888 = lshr i32 %1874, 31
  %1889 = trunc i32 %1888 to i8
  store i8 %1889, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v95 = select i1 %1886, i64 88, i64 29
  %1890 = add i64 %1838, %.v95
  store i64 %1890, i64* %3, align 8
  %.pre59 = load i64, i64* %RBP.i, align 8
  br i1 %1886, label %block_.L_438b35, label %block_438afa

block_438afa:                                     ; preds = %block_.L_438add
  %1891 = add i64 %.pre59, -64
  %1892 = add i64 %1890, 3
  store i64 %1892, i64* %3, align 8
  %1893 = inttoptr i64 %1891 to i32*
  %1894 = load i32, i32* %1893, align 4
  %1895 = add i32 %1894, -20
  %1896 = icmp eq i32 %1895, 0
  %1897 = zext i1 %1896 to i8
  %1898 = lshr i32 %1895, 31
  %1899 = add i32 %1894, -21
  %1900 = zext i32 %1899 to i64
  store i64 %1900, i64* %RAX.i931, align 8
  store i8 %1897, i8* %17, align 1
  %1901 = and i32 %1899, 255
  %1902 = tail call i32 @llvm.ctpop.i32(i32 %1901)
  %1903 = trunc i32 %1902 to i8
  %1904 = and i8 %1903, 1
  %1905 = xor i8 %1904, 1
  store i8 %1905, i8* %18, align 1
  %1906 = xor i32 %1899, %1895
  %1907 = lshr i32 %1906, 4
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  store i8 %1909, i8* %19, align 1
  %1910 = icmp eq i32 %1899, 0
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %20, align 1
  %1912 = lshr i32 %1899, 31
  %1913 = trunc i32 %1912 to i8
  store i8 %1913, i8* %21, align 1
  %1914 = xor i32 %1912, %1898
  %1915 = add nuw nsw i32 %1914, %1898
  %1916 = icmp eq i32 %1915, 2
  %1917 = zext i1 %1916 to i8
  store i8 %1917, i8* %22, align 1
  %1918 = sext i32 %1899 to i64
  store i64 %1918, i64* %RCX.i907, align 8
  %1919 = add nsw i64 %1918, -880
  %1920 = add i64 %1919, %.pre59
  %1921 = add i64 %1890, 20
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i8*
  %1923 = load i8, i8* %1922, align 1
  %1924 = sext i8 %1923 to i64
  %1925 = and i64 %1924, 4294967295
  store i64 %1925, i64* %RAX.i931, align 8
  %1926 = add i64 %1890, 24
  store i64 %1926, i64* %3, align 8
  %1927 = load i32, i32* %1893, align 4
  %1928 = sext i32 %1927 to i64
  store i64 %1928, i64* %RCX.i907, align 8
  %1929 = add nsw i64 %1928, -480
  %1930 = add i64 %1929, %.pre59
  %1931 = add i64 %1890, 32
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i8*
  %1933 = load i8, i8* %1932, align 1
  %1934 = sext i8 %1933 to i64
  %1935 = and i64 %1934, 4294967295
  store i64 %1935, i64* %RDX.i910, align 8
  %1936 = add i64 %1890, 35
  store i64 %1936, i64* %3, align 8
  %1937 = load i32, i32* %1893, align 4
  %1938 = add i32 %1937, -1
  %1939 = zext i32 %1938 to i64
  store i64 %1939, i64* %RSI.i913, align 8
  %1940 = icmp eq i32 %1937, 0
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %17, align 1
  %1942 = and i32 %1938, 255
  %1943 = tail call i32 @llvm.ctpop.i32(i32 %1942)
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  %1946 = xor i8 %1945, 1
  store i8 %1946, i8* %18, align 1
  %1947 = xor i32 %1938, %1937
  %1948 = lshr i32 %1947, 4
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  store i8 %1950, i8* %19, align 1
  %1951 = icmp eq i32 %1938, 0
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %20, align 1
  %1953 = lshr i32 %1938, 31
  %1954 = trunc i32 %1953 to i8
  store i8 %1954, i8* %21, align 1
  %1955 = lshr i32 %1937, 31
  %1956 = xor i32 %1953, %1955
  %1957 = add nuw nsw i32 %1956, %1955
  %1958 = icmp eq i32 %1957, 2
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %22, align 1
  %1960 = sext i32 %1938 to i64
  store i64 %1960, i64* %RCX.i907, align 8
  %1961 = load i64, i64* %RBP.i, align 8
  %1962 = add nsw i64 %1960, -880
  %1963 = add i64 %1962, %1961
  %1964 = add i64 %1890, 49
  store i64 %1964, i64* %3, align 8
  %1965 = inttoptr i64 %1963 to i8*
  %1966 = load i8, i8* %1965, align 1
  %1967 = sext i8 %1966 to i64
  %1968 = and i64 %1967, 4294967295
  store i64 %1968, i64* %RSI.i913, align 8
  %1969 = sext i8 %1966 to i32
  %1970 = sext i8 %1933 to i32
  %1971 = sub nsw i32 %1970, %1969
  %1972 = zext i32 %1971 to i64
  store i64 %1972, i64* %RDX.i910, align 8
  %1973 = lshr i32 %1971, 31
  %1974 = load i32, i32* %EAX.i930, align 4
  %1975 = sub i32 %1974, %1971
  %1976 = icmp ult i32 %1974, %1971
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %17, align 1
  %1978 = and i32 %1975, 255
  %1979 = tail call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  store i8 %1982, i8* %18, align 1
  %1983 = xor i32 %1971, %1974
  %1984 = xor i32 %1983, %1975
  %1985 = lshr i32 %1984, 4
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  store i8 %1987, i8* %19, align 1
  %1988 = icmp eq i32 %1975, 0
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %20, align 1
  %1990 = lshr i32 %1975, 31
  %1991 = trunc i32 %1990 to i8
  store i8 %1991, i8* %21, align 1
  %1992 = lshr i32 %1974, 31
  %1993 = xor i32 %1973, %1992
  %1994 = xor i32 %1990, %1992
  %1995 = add nuw nsw i32 %1994, %1993
  %1996 = icmp eq i32 %1995, 2
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %22, align 1
  %1998 = icmp ne i8 %1991, 0
  %1999 = xor i1 %1998, %1996
  %.demorgan76 = or i1 %1988, %1999
  %.v96 = select i1 %.demorgan76, i64 59, i64 235
  %2000 = add i64 %1890, %.v96
  store i64 %2000, i64* %3, align 8
  br i1 %.demorgan76, label %block_.L_438b35, label %block_.L_438be5

block_.L_438b35:                                  ; preds = %block_.L_438add, %block_438afa
  %2001 = phi i64 [ %2000, %block_438afa ], [ %1890, %block_.L_438add ]
  %2002 = phi i64 [ %1961, %block_438afa ], [ %.pre59, %block_.L_438add ]
  %2003 = add i64 %2002, -64
  %2004 = add i64 %2001, 3
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i32*
  %2006 = load i32, i32* %2005, align 4
  %2007 = add i32 %2006, -20
  %2008 = icmp eq i32 %2007, 0
  %2009 = zext i1 %2008 to i8
  %2010 = lshr i32 %2007, 31
  %2011 = add i32 %2006, -21
  %2012 = zext i32 %2011 to i64
  store i64 %2012, i64* %RAX.i931, align 8
  store i8 %2009, i8* %17, align 1
  %2013 = and i32 %2011, 255
  %2014 = tail call i32 @llvm.ctpop.i32(i32 %2013)
  %2015 = trunc i32 %2014 to i8
  %2016 = and i8 %2015, 1
  %2017 = xor i8 %2016, 1
  store i8 %2017, i8* %18, align 1
  %2018 = xor i32 %2011, %2007
  %2019 = lshr i32 %2018, 4
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  store i8 %2021, i8* %19, align 1
  %2022 = icmp eq i32 %2011, 0
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %20, align 1
  %2024 = lshr i32 %2011, 31
  %2025 = trunc i32 %2024 to i8
  store i8 %2025, i8* %21, align 1
  %2026 = xor i32 %2024, %2010
  %2027 = add nuw nsw i32 %2026, %2010
  %2028 = icmp eq i32 %2027, 2
  %2029 = zext i1 %2028 to i8
  store i8 %2029, i8* %22, align 1
  %2030 = sext i32 %2011 to i64
  store i64 %2030, i64* %RCX.i907, align 8
  %2031 = add nsw i64 %2030, 12099168
  %2032 = add i64 %2001, 20
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to i8*
  %2034 = load i8, i8* %2033, align 1
  %2035 = zext i8 %2034 to i64
  store i64 %2035, i64* %RAX.i931, align 8
  %2036 = zext i8 %2034 to i32
  %2037 = add nsw i32 %2036, -3
  %2038 = icmp ult i8 %2034, 3
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %17, align 1
  %2040 = and i32 %2037, 255
  %2041 = tail call i32 @llvm.ctpop.i32(i32 %2040)
  %2042 = trunc i32 %2041 to i8
  %2043 = and i8 %2042, 1
  %2044 = xor i8 %2043, 1
  store i8 %2044, i8* %18, align 1
  %2045 = xor i32 %2037, %2036
  %2046 = lshr i32 %2045, 4
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  store i8 %2048, i8* %19, align 1
  %2049 = icmp eq i32 %2037, 0
  %2050 = zext i1 %2049 to i8
  store i8 %2050, i8* %20, align 1
  %2051 = lshr i32 %2037, 31
  %2052 = trunc i32 %2051 to i8
  store i8 %2052, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v97 = select i1 %2049, i64 88, i64 29
  %2053 = add i64 %2001, %.v97
  store i64 %2053, i64* %3, align 8
  %.pre60 = load i64, i64* %RBP.i, align 8
  br i1 %2049, label %block_.L_438b8d, label %block_438b52

block_438b52:                                     ; preds = %block_.L_438b35
  %2054 = add i64 %.pre60, -64
  %2055 = add i64 %2053, 3
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2054 to i32*
  %2057 = load i32, i32* %2056, align 4
  %2058 = add i32 %2057, -20
  %2059 = icmp eq i32 %2058, 0
  %2060 = zext i1 %2059 to i8
  %2061 = lshr i32 %2058, 31
  %2062 = add i32 %2057, -21
  %2063 = zext i32 %2062 to i64
  store i64 %2063, i64* %RAX.i931, align 8
  store i8 %2060, i8* %17, align 1
  %2064 = and i32 %2062, 255
  %2065 = tail call i32 @llvm.ctpop.i32(i32 %2064)
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  %2068 = xor i8 %2067, 1
  store i8 %2068, i8* %18, align 1
  %2069 = xor i32 %2062, %2058
  %2070 = lshr i32 %2069, 4
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  store i8 %2072, i8* %19, align 1
  %2073 = icmp eq i32 %2062, 0
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %20, align 1
  %2075 = lshr i32 %2062, 31
  %2076 = trunc i32 %2075 to i8
  store i8 %2076, i8* %21, align 1
  %2077 = xor i32 %2075, %2061
  %2078 = add nuw nsw i32 %2077, %2061
  %2079 = icmp eq i32 %2078, 2
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %22, align 1
  %2081 = sext i32 %2062 to i64
  store i64 %2081, i64* %RCX.i907, align 8
  %2082 = add nsw i64 %2081, -880
  %2083 = add i64 %2082, %.pre60
  %2084 = add i64 %2053, 20
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2083 to i8*
  %2086 = load i8, i8* %2085, align 1
  %2087 = sext i8 %2086 to i64
  %2088 = and i64 %2087, 4294967295
  store i64 %2088, i64* %RAX.i931, align 8
  %2089 = add i64 %2053, 24
  store i64 %2089, i64* %3, align 8
  %2090 = load i32, i32* %2056, align 4
  %2091 = sext i32 %2090 to i64
  store i64 %2091, i64* %RCX.i907, align 8
  %2092 = add nsw i64 %2091, -480
  %2093 = add i64 %2092, %.pre60
  %2094 = add i64 %2053, 32
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2093 to i8*
  %2096 = load i8, i8* %2095, align 1
  %2097 = sext i8 %2096 to i64
  %2098 = and i64 %2097, 4294967295
  store i64 %2098, i64* %RDX.i910, align 8
  %2099 = add i64 %2053, 35
  store i64 %2099, i64* %3, align 8
  %2100 = load i32, i32* %2056, align 4
  %2101 = add i32 %2100, -20
  %2102 = zext i32 %2101 to i64
  store i64 %2102, i64* %RSI.i913, align 8
  %2103 = icmp ult i32 %2100, 20
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %17, align 1
  %2105 = and i32 %2101, 255
  %2106 = tail call i32 @llvm.ctpop.i32(i32 %2105)
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  %2109 = xor i8 %2108, 1
  store i8 %2109, i8* %18, align 1
  %2110 = xor i32 %2100, 16
  %2111 = xor i32 %2110, %2101
  %2112 = lshr i32 %2111, 4
  %2113 = trunc i32 %2112 to i8
  %2114 = and i8 %2113, 1
  store i8 %2114, i8* %19, align 1
  %2115 = icmp eq i32 %2101, 0
  %2116 = zext i1 %2115 to i8
  store i8 %2116, i8* %20, align 1
  %2117 = lshr i32 %2101, 31
  %2118 = trunc i32 %2117 to i8
  store i8 %2118, i8* %21, align 1
  %2119 = lshr i32 %2100, 31
  %2120 = xor i32 %2117, %2119
  %2121 = add nuw nsw i32 %2120, %2119
  %2122 = icmp eq i32 %2121, 2
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %22, align 1
  %2124 = sext i32 %2101 to i64
  store i64 %2124, i64* %RCX.i907, align 8
  %2125 = load i64, i64* %RBP.i, align 8
  %2126 = add nsw i64 %2124, -880
  %2127 = add i64 %2126, %2125
  %2128 = add i64 %2053, 49
  store i64 %2128, i64* %3, align 8
  %2129 = inttoptr i64 %2127 to i8*
  %2130 = load i8, i8* %2129, align 1
  %2131 = sext i8 %2130 to i64
  %2132 = and i64 %2131, 4294967295
  store i64 %2132, i64* %RSI.i913, align 8
  %2133 = sext i8 %2130 to i32
  %2134 = sext i8 %2096 to i32
  %2135 = sub nsw i32 %2134, %2133
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RDX.i910, align 8
  %2137 = lshr i32 %2135, 31
  %2138 = load i32, i32* %EAX.i930, align 4
  %2139 = sub i32 %2138, %2135
  %2140 = icmp ult i32 %2138, %2135
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %17, align 1
  %2142 = and i32 %2139, 255
  %2143 = tail call i32 @llvm.ctpop.i32(i32 %2142)
  %2144 = trunc i32 %2143 to i8
  %2145 = and i8 %2144, 1
  %2146 = xor i8 %2145, 1
  store i8 %2146, i8* %18, align 1
  %2147 = xor i32 %2135, %2138
  %2148 = xor i32 %2147, %2139
  %2149 = lshr i32 %2148, 4
  %2150 = trunc i32 %2149 to i8
  %2151 = and i8 %2150, 1
  store i8 %2151, i8* %19, align 1
  %2152 = icmp eq i32 %2139, 0
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %20, align 1
  %2154 = lshr i32 %2139, 31
  %2155 = trunc i32 %2154 to i8
  store i8 %2155, i8* %21, align 1
  %2156 = lshr i32 %2138, 31
  %2157 = xor i32 %2137, %2156
  %2158 = xor i32 %2154, %2156
  %2159 = add nuw nsw i32 %2158, %2157
  %2160 = icmp eq i32 %2159, 2
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %22, align 1
  %2162 = icmp ne i8 %2155, 0
  %2163 = xor i1 %2162, %2160
  %.demorgan77 = or i1 %2152, %2163
  %.v98 = select i1 %.demorgan77, i64 59, i64 147
  %2164 = add i64 %2053, %.v98
  store i64 %2164, i64* %3, align 8
  br i1 %.demorgan77, label %block_.L_438b8d, label %block_.L_438be5

block_.L_438b8d:                                  ; preds = %block_.L_438b35, %block_438b52
  %2165 = phi i64 [ %2164, %block_438b52 ], [ %2053, %block_.L_438b35 ]
  %2166 = phi i64 [ %2125, %block_438b52 ], [ %.pre60, %block_.L_438b35 ]
  %2167 = add i64 %2166, -64
  %2168 = add i64 %2165, 3
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = add i32 %2170, -20
  %2172 = lshr i32 %2171, 31
  %2173 = add i32 %2170, -19
  %2174 = zext i32 %2173 to i64
  store i64 %2174, i64* %RAX.i931, align 8
  %2175 = icmp eq i32 %2171, -1
  %2176 = icmp eq i32 %2173, 0
  %2177 = or i1 %2175, %2176
  %2178 = zext i1 %2177 to i8
  store i8 %2178, i8* %17, align 1
  %2179 = and i32 %2173, 255
  %2180 = tail call i32 @llvm.ctpop.i32(i32 %2179)
  %2181 = trunc i32 %2180 to i8
  %2182 = and i8 %2181, 1
  %2183 = xor i8 %2182, 1
  store i8 %2183, i8* %18, align 1
  %2184 = xor i32 %2173, %2171
  %2185 = lshr i32 %2184, 4
  %2186 = trunc i32 %2185 to i8
  %2187 = and i8 %2186, 1
  store i8 %2187, i8* %19, align 1
  %2188 = zext i1 %2176 to i8
  store i8 %2188, i8* %20, align 1
  %2189 = lshr i32 %2173, 31
  %2190 = trunc i32 %2189 to i8
  store i8 %2190, i8* %21, align 1
  %2191 = xor i32 %2189, %2172
  %2192 = add nuw nsw i32 %2191, %2189
  %2193 = icmp eq i32 %2192, 2
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %22, align 1
  %2195 = sext i32 %2173 to i64
  store i64 %2195, i64* %RCX.i907, align 8
  %2196 = add nsw i64 %2195, 12099168
  %2197 = add i64 %2165, 20
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i8*
  %2199 = load i8, i8* %2198, align 1
  %2200 = zext i8 %2199 to i64
  store i64 %2200, i64* %RAX.i931, align 8
  %2201 = zext i8 %2199 to i32
  %2202 = add nsw i32 %2201, -3
  %2203 = icmp ult i8 %2199, 3
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %17, align 1
  %2205 = and i32 %2202, 255
  %2206 = tail call i32 @llvm.ctpop.i32(i32 %2205)
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = xor i8 %2208, 1
  store i8 %2209, i8* %18, align 1
  %2210 = xor i32 %2202, %2201
  %2211 = lshr i32 %2210, 4
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  store i8 %2213, i8* %19, align 1
  %2214 = icmp eq i32 %2202, 0
  %2215 = zext i1 %2214 to i8
  store i8 %2215, i8* %20, align 1
  %2216 = lshr i32 %2202, 31
  %2217 = trunc i32 %2216 to i8
  store i8 %2217, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v99 = select i1 %2214, i64 221, i64 29
  %2218 = add i64 %2165, %.v99
  store i64 %2218, i64* %3, align 8
  %.pre62 = load i64, i64* %RBP.i, align 8
  br i1 %2214, label %block_.L_438c6a, label %block_438baa

block_438baa:                                     ; preds = %block_.L_438b8d
  %2219 = add i64 %.pre62, -64
  %2220 = add i64 %2218, 3
  store i64 %2220, i64* %3, align 8
  %2221 = inttoptr i64 %2219 to i32*
  %2222 = load i32, i32* %2221, align 4
  %2223 = add i32 %2222, -20
  %2224 = lshr i32 %2223, 31
  %2225 = add i32 %2222, -19
  %2226 = zext i32 %2225 to i64
  store i64 %2226, i64* %RAX.i931, align 8
  %2227 = icmp eq i32 %2223, -1
  %2228 = icmp eq i32 %2225, 0
  %2229 = or i1 %2227, %2228
  %2230 = zext i1 %2229 to i8
  store i8 %2230, i8* %17, align 1
  %2231 = and i32 %2225, 255
  %2232 = tail call i32 @llvm.ctpop.i32(i32 %2231)
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  %2235 = xor i8 %2234, 1
  store i8 %2235, i8* %18, align 1
  %2236 = xor i32 %2225, %2223
  %2237 = lshr i32 %2236, 4
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  store i8 %2239, i8* %19, align 1
  %2240 = zext i1 %2228 to i8
  store i8 %2240, i8* %20, align 1
  %2241 = lshr i32 %2225, 31
  %2242 = trunc i32 %2241 to i8
  store i8 %2242, i8* %21, align 1
  %2243 = xor i32 %2241, %2224
  %2244 = add nuw nsw i32 %2243, %2241
  %2245 = icmp eq i32 %2244, 2
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %22, align 1
  %2247 = sext i32 %2225 to i64
  store i64 %2247, i64* %RCX.i907, align 8
  %2248 = add nsw i64 %2247, -880
  %2249 = add i64 %2248, %.pre62
  %2250 = add i64 %2218, 20
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i8*
  %2252 = load i8, i8* %2251, align 1
  %2253 = sext i8 %2252 to i64
  %2254 = and i64 %2253, 4294967295
  store i64 %2254, i64* %RAX.i931, align 8
  %2255 = add i64 %2218, 24
  store i64 %2255, i64* %3, align 8
  %2256 = load i32, i32* %2221, align 4
  %2257 = sext i32 %2256 to i64
  store i64 %2257, i64* %RCX.i907, align 8
  %2258 = add nsw i64 %2257, -480
  %2259 = add i64 %2258, %.pre62
  %2260 = add i64 %2218, 32
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i8*
  %2262 = load i8, i8* %2261, align 1
  %2263 = sext i8 %2262 to i64
  %2264 = and i64 %2263, 4294967295
  store i64 %2264, i64* %RDX.i910, align 8
  %2265 = add i64 %2218, 35
  store i64 %2265, i64* %3, align 8
  %2266 = load i32, i32* %2221, align 4
  %2267 = add i32 %2266, -20
  %2268 = zext i32 %2267 to i64
  store i64 %2268, i64* %RSI.i913, align 8
  %2269 = icmp ult i32 %2266, 20
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %17, align 1
  %2271 = and i32 %2267, 255
  %2272 = tail call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  store i8 %2275, i8* %18, align 1
  %2276 = xor i32 %2266, 16
  %2277 = xor i32 %2276, %2267
  %2278 = lshr i32 %2277, 4
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  store i8 %2280, i8* %19, align 1
  %2281 = icmp eq i32 %2267, 0
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %20, align 1
  %2283 = lshr i32 %2267, 31
  %2284 = trunc i32 %2283 to i8
  store i8 %2284, i8* %21, align 1
  %2285 = lshr i32 %2266, 31
  %2286 = xor i32 %2283, %2285
  %2287 = add nuw nsw i32 %2286, %2285
  %2288 = icmp eq i32 %2287, 2
  %2289 = zext i1 %2288 to i8
  store i8 %2289, i8* %22, align 1
  %2290 = sext i32 %2267 to i64
  store i64 %2290, i64* %RCX.i907, align 8
  %2291 = load i64, i64* %RBP.i, align 8
  %2292 = add nsw i64 %2290, -880
  %2293 = add i64 %2292, %2291
  %2294 = add i64 %2218, 49
  store i64 %2294, i64* %3, align 8
  %2295 = inttoptr i64 %2293 to i8*
  %2296 = load i8, i8* %2295, align 1
  %2297 = sext i8 %2296 to i64
  %2298 = and i64 %2297, 4294967295
  store i64 %2298, i64* %RSI.i913, align 8
  %2299 = sext i8 %2296 to i32
  %2300 = sext i8 %2262 to i32
  %2301 = sub nsw i32 %2300, %2299
  %2302 = zext i32 %2301 to i64
  store i64 %2302, i64* %RDX.i910, align 8
  %2303 = lshr i32 %2301, 31
  %2304 = load i32, i32* %EAX.i930, align 4
  %2305 = sub i32 %2304, %2301
  %2306 = icmp ult i32 %2304, %2301
  %2307 = zext i1 %2306 to i8
  store i8 %2307, i8* %17, align 1
  %2308 = and i32 %2305, 255
  %2309 = tail call i32 @llvm.ctpop.i32(i32 %2308)
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  %2312 = xor i8 %2311, 1
  store i8 %2312, i8* %18, align 1
  %2313 = xor i32 %2301, %2304
  %2314 = xor i32 %2313, %2305
  %2315 = lshr i32 %2314, 4
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  store i8 %2317, i8* %19, align 1
  %2318 = icmp eq i32 %2305, 0
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %20, align 1
  %2320 = lshr i32 %2305, 31
  %2321 = trunc i32 %2320 to i8
  store i8 %2321, i8* %21, align 1
  %2322 = lshr i32 %2304, 31
  %2323 = xor i32 %2303, %2322
  %2324 = xor i32 %2320, %2322
  %2325 = add nuw nsw i32 %2324, %2323
  %2326 = icmp eq i32 %2325, 2
  %2327 = zext i1 %2326 to i8
  store i8 %2327, i8* %22, align 1
  %2328 = icmp ne i8 %2321, 0
  %2329 = xor i1 %2328, %2326
  %2330 = or i1 %2318, %2329
  %.v100 = select i1 %2330, i64 192, i64 59
  %2331 = add i64 %2218, %.v100
  store i64 %2331, i64* %3, align 8
  br i1 %2330, label %block_.L_438c6a, label %block_.L_438be5

block_.L_438be5:                                  ; preds = %block_438b52, %block_438afa, %block_438aa2, %block_438a4a, %block_4389f2, %block_43899a, %block_438942, %block_438baa
  %2332 = phi i64 [ %2331, %block_438baa ], [ %2164, %block_438b52 ], [ %2000, %block_438afa ], [ %1837, %block_438aa2 ], [ %1674, %block_438a4a ], [ %1508, %block_4389f2 ], [ %1342, %block_43899a ], [ %1178, %block_438942 ]
  %2333 = phi i64 [ %2291, %block_438baa ], [ %2125, %block_438b52 ], [ %1961, %block_438afa ], [ %1798, %block_438aa2 ], [ %1635, %block_438a4a ], [ %1469, %block_4389f2 ], [ %1303, %block_43899a ], [ %1139, %block_438942 ]
  %2334 = add i64 %2333, -24
  %2335 = add i64 %2332, 4
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i64*
  %2337 = load i64, i64* %2336, align 8
  store i64 %2337, i64* %RAX.i931, align 8
  %2338 = add i64 %2333, -64
  %2339 = add i64 %2332, 8
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2338 to i32*
  %2341 = load i32, i32* %2340, align 4
  %2342 = sext i32 %2341 to i64
  store i64 %2342, i64* %RCX.i907, align 8
  %2343 = shl nsw i64 %2342, 2
  %2344 = add i64 %2343, %2337
  %2345 = add i64 %2332, 15
  store i64 %2345, i64* %3, align 8
  %2346 = inttoptr i64 %2344 to i32*
  store i32 1, i32* %2346, align 4
  %2347 = load i64, i64* %RBP.i, align 8
  %2348 = add i64 %2347, -64
  %2349 = load i64, i64* %3, align 8
  %2350 = add i64 %2349, 4
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2348 to i32*
  %2352 = load i32, i32* %2351, align 4
  %2353 = sext i32 %2352 to i64
  store i64 %2353, i64* %RAX.i931, align 8
  %2354 = add nsw i64 %2353, -880
  %2355 = add i64 %2354, %2347
  %2356 = add i64 %2349, 11
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i8*
  %2358 = load i8, i8* %2357, align 1
  %2359 = add i8 %2358, 1
  store i8 %2359, i8* %DL.i66, align 1
  %2360 = icmp eq i8 %2358, -1
  %2361 = icmp eq i8 %2359, 0
  %2362 = or i1 %2360, %2361
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %17, align 1
  %2364 = zext i8 %2359 to i32
  %2365 = tail call i32 @llvm.ctpop.i32(i32 %2364)
  %2366 = trunc i32 %2365 to i8
  %2367 = and i8 %2366, 1
  %2368 = xor i8 %2367, 1
  store i8 %2368, i8* %18, align 1
  %2369 = xor i8 %2359, %2358
  %2370 = lshr i8 %2369, 4
  %2371 = and i8 %2370, 1
  store i8 %2371, i8* %19, align 1
  %2372 = zext i1 %2361 to i8
  store i8 %2372, i8* %20, align 1
  %2373 = lshr i8 %2359, 7
  store i8 %2373, i8* %21, align 1
  %2374 = lshr i8 %2358, 7
  %2375 = xor i8 %2373, %2374
  %2376 = add nuw nsw i8 %2375, %2373
  %2377 = icmp eq i8 %2376, 2
  %2378 = zext i1 %2377 to i8
  store i8 %2378, i8* %22, align 1
  %2379 = add i64 %2347, -880
  %2380 = add i64 %2379, %2353
  %2381 = add i64 %2349, 21
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i8*
  store i8 %2359, i8* %2382, align 1
  %2383 = load i64, i64* %RBP.i, align 8
  %2384 = add i64 %2383, -2484
  %2385 = load i64, i64* %3, align 8
  %2386 = add i64 %2385, 6
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2384 to i32*
  %2388 = load i32, i32* %2387, align 4
  %2389 = add i32 %2388, -1
  %2390 = zext i32 %2389 to i64
  store i64 %2390, i64* %RSI.i913, align 8
  %2391 = add i64 %2385, 15
  store i64 %2391, i64* %3, align 8
  store i32 %2389, i32* %2387, align 4
  %2392 = load i32, i32* %ESI.i91, align 4
  %2393 = load i64, i64* %3, align 8
  store i8 0, i8* %17, align 1
  %2394 = and i32 %2392, 255
  %2395 = tail call i32 @llvm.ctpop.i32(i32 %2394)
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = xor i8 %2397, 1
  store i8 %2398, i8* %18, align 1
  store i8 0, i8* %19, align 1
  %2399 = icmp eq i32 %2392, 0
  %2400 = zext i1 %2399 to i8
  store i8 %2400, i8* %20, align 1
  %2401 = lshr i32 %2392, 31
  %2402 = trunc i32 %2401 to i8
  store i8 %2402, i8* %21, align 1
  store i8 0, i8* %22, align 1
  %.v85 = select i1 %2399, i64 9, i64 14
  %2403 = add i64 %2393, %.v85
  store i64 %2403, i64* %3, align 8
  br i1 %2399, label %block_438c21, label %block_.L_438c26

block_438c21:                                     ; preds = %block_.L_438be5
  %2404 = add i64 %2403, 103
  br label %block_.L_438c88

block_.L_438c26:                                  ; preds = %block_.L_438be5
  %2405 = load i64, i64* %RBP.i, align 8
  %2406 = add i64 %2405, -60
  %2407 = add i64 %2403, 3
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2406 to i32*
  %2409 = load i32, i32* %2408, align 4
  %2410 = zext i32 %2409 to i64
  store i64 %2410, i64* %RAX.i931, align 8
  %2411 = add i64 %2405, -2484
  %2412 = add i64 %2403, 9
  store i64 %2412, i64* %3, align 8
  %2413 = inttoptr i64 %2411 to i32*
  %2414 = load i32, i32* %2413, align 4
  %2415 = sub i32 %2409, %2414
  %2416 = icmp ult i32 %2409, %2414
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %17, align 1
  %2418 = and i32 %2415, 255
  %2419 = tail call i32 @llvm.ctpop.i32(i32 %2418)
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = xor i8 %2421, 1
  store i8 %2422, i8* %18, align 1
  %2423 = xor i32 %2414, %2409
  %2424 = xor i32 %2423, %2415
  %2425 = lshr i32 %2424, 4
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  store i8 %2427, i8* %19, align 1
  %2428 = icmp eq i32 %2415, 0
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %20, align 1
  %2430 = lshr i32 %2415, 31
  %2431 = trunc i32 %2430 to i8
  store i8 %2431, i8* %21, align 1
  %2432 = lshr i32 %2409, 31
  %2433 = lshr i32 %2414, 31
  %2434 = xor i32 %2433, %2432
  %2435 = xor i32 %2430, %2432
  %2436 = add nuw nsw i32 %2435, %2434
  %2437 = icmp eq i32 %2436, 2
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %22, align 1
  %2439 = icmp ne i8 %2431, 0
  %2440 = xor i1 %2439, %2437
  %.v86 = select i1 %2440, i64 15, i64 45
  %2441 = add i64 %2403, %.v86
  store i64 %2441, i64* %3, align 8
  br i1 %2440, label %block_438c35, label %block_.L_438c53

block_438c35:                                     ; preds = %block_.L_438c26
  %2442 = add i64 %2441, 7
  store i64 %2442, i64* %3, align 8
  %2443 = load i32, i32* %2413, align 4
  %2444 = sext i32 %2443 to i64
  store i64 %2444, i64* %RAX.i931, align 8
  %2445 = shl nsw i64 %2444, 2
  %2446 = add i64 %2405, -2480
  %2447 = add i64 %2446, %2445
  %2448 = add i64 %2441, 14
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2447 to i32*
  %2450 = load i32, i32* %2449, align 4
  %2451 = zext i32 %2450 to i64
  store i64 %2451, i64* %RCX.i907, align 8
  %2452 = add i64 %2441, 18
  store i64 %2452, i64* %3, align 8
  %2453 = load i32, i32* %2408, align 4
  %2454 = sext i32 %2453 to i64
  store i64 %2454, i64* %RAX.i931, align 8
  %2455 = shl nsw i64 %2454, 2
  %2456 = add i64 %2446, %2455
  %2457 = add i64 %2441, 25
  store i64 %2457, i64* %3, align 8
  %2458 = inttoptr i64 %2456 to i32*
  store i32 %2450, i32* %2458, align 4
  %2459 = load i64, i64* %3, align 8
  %2460 = add i64 %2459, 14
  store i64 %2460, i64* %3, align 8
  br label %block_.L_438c5c

block_.L_438c53:                                  ; preds = %block_.L_438c26
  %2461 = add i64 %2441, 3
  store i64 %2461, i64* %3, align 8
  %2462 = load i32, i32* %2408, align 4
  %2463 = add i32 %2462, -1
  %2464 = zext i32 %2463 to i64
  store i64 %2464, i64* %RAX.i931, align 8
  %2465 = icmp ne i32 %2462, 0
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %17, align 1
  %2467 = and i32 %2463, 255
  %2468 = tail call i32 @llvm.ctpop.i32(i32 %2467)
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  %2471 = xor i8 %2470, 1
  store i8 %2471, i8* %18, align 1
  %2472 = xor i32 %2462, 16
  %2473 = xor i32 %2472, %2463
  %2474 = lshr i32 %2473, 4
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  store i8 %2476, i8* %19, align 1
  %2477 = icmp eq i32 %2463, 0
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %20, align 1
  %2479 = lshr i32 %2463, 31
  %2480 = trunc i32 %2479 to i8
  store i8 %2480, i8* %21, align 1
  %2481 = lshr i32 %2462, 31
  %2482 = xor i32 %2479, %2481
  %2483 = xor i32 %2479, 1
  %2484 = add nuw nsw i32 %2482, %2483
  %2485 = icmp eq i32 %2484, 2
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %22, align 1
  %2487 = add i64 %2441, 9
  store i64 %2487, i64* %3, align 8
  store i32 %2463, i32* %2408, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_438c5c

block_.L_438c5c:                                  ; preds = %block_.L_438c53, %block_438c35
  %2488 = phi i64 [ %.pre61, %block_.L_438c53 ], [ %2460, %block_438c35 ]
  %2489 = load i64, i64* %RBP.i, align 8
  %2490 = add i64 %2489, -60
  %2491 = add i64 %2488, 3
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i32*
  %2493 = load i32, i32* %2492, align 4
  %2494 = zext i32 %2493 to i64
  store i64 %2494, i64* %RAX.i931, align 8
  %2495 = add i64 %2489, -2488
  %2496 = add i64 %2488, 9
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i32*
  store i32 %2493, i32* %2497, align 4
  %2498 = load i64, i64* %3, align 8
  %2499 = add i64 %2498, 30
  br label %block_.L_438c83

block_.L_438c6a:                                  ; preds = %block_.L_438b8d, %block_438baa
  %2500 = phi i64 [ %2331, %block_438baa ], [ %2218, %block_.L_438b8d ]
  %2501 = phi i64 [ %2291, %block_438baa ], [ %.pre62, %block_.L_438b8d ]
  %2502 = add i64 %2501, -60
  %2503 = add i64 %2500, 3
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2502 to i32*
  %2505 = load i32, i32* %2504, align 4
  %2506 = zext i32 %2505 to i64
  store i64 %2506, i64* %RAX.i931, align 8
  %2507 = add i64 %2501, -2488
  %2508 = add i64 %2500, 9
  store i64 %2508, i64* %3, align 8
  %2509 = inttoptr i64 %2507 to i32*
  %2510 = load i32, i32* %2509, align 4
  %2511 = sub i32 %2505, %2510
  %2512 = icmp ult i32 %2505, %2510
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %17, align 1
  %2514 = and i32 %2511, 255
  %2515 = tail call i32 @llvm.ctpop.i32(i32 %2514)
  %2516 = trunc i32 %2515 to i8
  %2517 = and i8 %2516, 1
  %2518 = xor i8 %2517, 1
  store i8 %2518, i8* %18, align 1
  %2519 = xor i32 %2510, %2505
  %2520 = xor i32 %2519, %2511
  %2521 = lshr i32 %2520, 4
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  store i8 %2523, i8* %19, align 1
  %2524 = icmp eq i32 %2511, 0
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %20, align 1
  %2526 = lshr i32 %2511, 31
  %2527 = trunc i32 %2526 to i8
  store i8 %2527, i8* %21, align 1
  %2528 = lshr i32 %2505, 31
  %2529 = lshr i32 %2510, 31
  %2530 = xor i32 %2529, %2528
  %2531 = xor i32 %2526, %2528
  %2532 = add nuw nsw i32 %2531, %2530
  %2533 = icmp eq i32 %2532, 2
  %2534 = zext i1 %2533 to i8
  store i8 %2534, i8* %22, align 1
  %.v101 = select i1 %2524, i64 15, i64 20
  %2535 = add i64 %2500, %.v101
  store i64 %2535, i64* %3, align 8
  br i1 %2524, label %block_438c79, label %block_.L_438c7e

block_438c79:                                     ; preds = %block_.L_438c6a
  %2536 = add i64 %2535, 15
  %2537 = add i64 %2535, 5
  store i64 %2537, i64* %3, align 8
  br label %block_.L_438c88

block_.L_438c7e:                                  ; preds = %block_.L_438c6a
  %2538 = add i64 %2535, 5
  store i64 %2538, i64* %3, align 8
  br label %block_.L_438c83

block_.L_438c83:                                  ; preds = %block_.L_438c7e, %block_.L_438c5c
  %storemerge40 = phi i64 [ %2499, %block_.L_438c5c ], [ %2538, %block_.L_438c7e ]
  %2539 = add i64 %storemerge40, -903
  store i64 %2539, i64* %3, align 8
  br label %block_.L_4388fc

block_.L_438c88:                                  ; preds = %block_438c79, %block_438c21
  %storemerge39 = phi i64 [ %2404, %block_438c21 ], [ %2536, %block_438c79 ]
  %2540 = add i64 %storemerge39, 5
  store i64 %2540, i64* %3, align 8
  br label %block_.L_438c8d

block_.L_438c8d:                                  ; preds = %block_.L_438c88, %block_.L_4388e6
  %2541 = phi i64 [ %2540, %block_.L_438c88 ], [ %939, %block_.L_4388e6 ]
  %2542 = load i64, i64* %6, align 8
  %2543 = add i64 %2542, 2504
  store i64 %2543, i64* %6, align 8
  %2544 = icmp ugt i64 %2542, -2505
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %17, align 1
  %2546 = trunc i64 %2543 to i32
  %2547 = and i32 %2546, 255
  %2548 = tail call i32 @llvm.ctpop.i32(i32 %2547)
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = xor i8 %2550, 1
  store i8 %2551, i8* %18, align 1
  %2552 = xor i64 %2543, %2542
  %2553 = lshr i64 %2552, 4
  %2554 = trunc i64 %2553 to i8
  %2555 = and i8 %2554, 1
  store i8 %2555, i8* %19, align 1
  %2556 = icmp eq i64 %2543, 0
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %20, align 1
  %2558 = lshr i64 %2543, 63
  %2559 = trunc i64 %2558 to i8
  store i8 %2559, i8* %21, align 1
  %2560 = lshr i64 %2542, 63
  %2561 = xor i64 %2558, %2560
  %2562 = add nuw nsw i64 %2561, %2558
  %2563 = icmp eq i64 %2562, 2
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %22, align 1
  %2565 = add i64 %2541, 8
  store i64 %2565, i64* %3, align 8
  %2566 = add i64 %2542, 2512
  %2567 = inttoptr i64 %2543 to i64*
  %2568 = load i64, i64* %2567, align 8
  store i64 %2568, i64* %RBX.i877, align 8
  store i64 %2566, i64* %6, align 8
  %2569 = add i64 %2541, 9
  store i64 %2569, i64* %3, align 8
  %2570 = add i64 %2542, 2520
  %2571 = inttoptr i64 %2566 to i64*
  %2572 = load i64, i64* %2571, align 8
  store i64 %2572, i64* %RBP.i, align 8
  store i64 %2570, i64* %6, align 8
  %2573 = add i64 %2541, 10
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2570 to i64*
  %2575 = load i64, i64* %2574, align 8
  store i64 %2575, i64* %3, align 8
  %2576 = add i64 %2542, 2528
  store i64 %2576, i64* %6, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x9c8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -2504
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 2504
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
define %struct.Memory* @routine_movl__0x190___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 400, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x370__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -880
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1e0__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 3, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -12
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %5, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %5, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %5
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %5, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x9b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2484
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x9b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__r10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x9c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2496
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x9c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2504
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2508
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x9c8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9cc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2508
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x9c0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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
define %struct.Memory* @routine_jge_.L_4388e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_jne_.L_438692(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4388d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4386ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_4386d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 1, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1__MINUS0x370__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -880
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 1, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4386e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0xff__MINUS0x370__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -880
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 -1, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_438781(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_je_.L_43876e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jne_.L_438762(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438769(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43876e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438773(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4386ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_43885a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_je_.L_43880e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4387ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_callq_.false_margin(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4387da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_je_.L_4387ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_438809(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438855(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_438835(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_438850(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_438878(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9b4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2484
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
define %struct.Memory* @routine_movl__edx__MINUS0x9b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2484
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x9b0__rbp__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2480
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_je_.L_4388a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1__MINUS0x1e0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -480
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 1, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x370__rbp__rax_1____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -880
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i8*
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addb__0xff___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i8 %4, -1
  store i8 %7, i8* %CL, align 1
  %8 = icmp ne i8 %4, 0
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = zext i8 %7 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i8 %4, 16
  %18 = xor i8 %17, %7
  %19 = lshr i8 %18, 4
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i8 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i8 %7, 7
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i8 %4, 7
  %28 = xor i8 %25, %27
  %29 = xor i8 %25, 1
  %30 = add nuw nsw i8 %28, %29
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x370__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -880
  %7 = add i64 %6, %5
  %8 = load i8, i8* %CL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4388d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.is_edge_vertex(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4388ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43866b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x9b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2484
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
define %struct.Memory* @routine_je_.L_438c8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x9b4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2484
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jne_.L_43890f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9b0__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2480
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43897d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_MINUS0x370__rbp__rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -880
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -480
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x14___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -21
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_MINUS0x370__rbp__rcx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -880
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jg_.L_438be5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %15, i64 %rel_off1, i64 %rel_off2
  %17 = add i64 %.v, %3
  store i64 %17, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_4389d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_438a2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_438a85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_438add(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_438b35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_438b8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_438c6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_438c6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_MINUS0x370__rbp__rax_1____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -880
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i8*
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addb__0x1___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i8 %4, 1
  store i8 %7, i8* %DL, align 1
  %8 = icmp eq i8 %4, -1
  %9 = icmp eq i8 %7, 0
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = zext i8 %7 to i32
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i8 %7, %4
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = zext i1 %9 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i8 %7, 7
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i8 %4, 7
  %28 = xor i8 %25, %27
  %29 = add nuw nsw i8 %28, %25
  %30 = icmp eq i8 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x370__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -880
  %7 = add i64 %6, %5
  %8 = load i8, i8* %DL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9b4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2484
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
define %struct.Memory* @routine_movl__esi__MINUS0x9b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2484
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jne_.L_438c26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_438c88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x9b4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -2484
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
define %struct.Memory* @routine_jge_.L_438c53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x9b4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2484
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9b0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2480
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl__ecx__MINUS0x9b0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2480
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
define %struct.Memory* @routine_jmpq_.L_438c5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x9b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2488
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438c83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x9b8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -2488
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
define %struct.Memory* @routine_jne_.L_438c7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4388fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_438c8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x9c8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2504
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -2505
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
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
