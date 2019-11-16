; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x4c1d94_type = type <{ [8 x i8] }>
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
@G__0x4c1d94 = global %G__0x4c1d94_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45a1c0.get_mem4Dshort(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_459720.get_mem2D(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @alloc_colocated(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -216
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 208
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
  %RAX.i43 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %EAX.i90 = bitcast %union.anon* %40 to i32*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i91 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 1, i64* %RCX.i91, align 8
  store i64 4880, i64* %RAX.i43, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i113 = bitcast %union.anon* %42 to i32*
  %43 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  store i64 4880, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %44 to i32*
  %45 = add i64 %7, -12
  %46 = load i32, i32* %EDI.i, align 4
  %47 = add i64 %10, 28
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i162 = bitcast %union.anon* %49 to i32*
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -8
  %52 = load i32, i32* %ESI.i162, align 4
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i178 = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -12
  %59 = load i32, i32* %EDX.i178, align 4
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %RDI.i223 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %63 = load i64, i64* %RCX.i91, align 8
  %64 = load i64, i64* %3, align 8
  store i64 %63, i64* %RDI.i223, align 8
  %RSI.i229 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %65 = load i64, i64* %43, align 8
  store i64 %65, i64* %RSI.i229, align 8
  %66 = add i64 %64, -343795
  %67 = add i64 %64, 11
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, -8
  %70 = inttoptr i64 %69 to i64*
  store i64 %67, i64* %70, align 8
  store i64 %69, i64* %6, align 8
  store i64 %66, i64* %3, align 8
  %71 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2)
  %RDX.i281 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %72 = load i64, i64* %3, align 8
  store i64 0, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RCX.i91, align 8
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -24
  %75 = load i64, i64* %RAX.i43, align 8
  %76 = add i64 %72, 8
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %74 to i64*
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %RCX.i91, align 8
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -24
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %80 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %78, %84
  %86 = icmp ult i64 %78, %84
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %14, align 1
  %88 = trunc i64 %85 to i32
  %89 = and i32 %88, 255
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89)
  %91 = trunc i32 %90 to i8
  %92 = and i8 %91, 1
  %93 = xor i8 %92, 1
  store i8 %93, i8* %21, align 1
  %94 = xor i64 %84, %78
  %95 = xor i64 %94, %85
  %96 = lshr i64 %95, 4
  %97 = trunc i64 %96 to i8
  %98 = and i8 %97, 1
  store i8 %98, i8* %27, align 1
  %99 = icmp eq i64 %85, 0
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %30, align 1
  %101 = lshr i64 %85, 63
  %102 = trunc i64 %101 to i8
  store i8 %102, i8* %33, align 1
  %103 = lshr i64 %78, 63
  %104 = lshr i64 %84, 63
  %105 = xor i64 %104, %103
  %106 = xor i64 %101, %103
  %107 = add nuw nsw i64 %106, %105
  %108 = icmp eq i64 %107, 2
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %39, align 1
  %.v = select i1 %99, i64 10, i64 25
  %110 = add i64 %81, %.v
  store i64 %110, i64* %3, align 8
  br i1 %99, label %block_454ff0, label %block_.L_454fff

block_454ff0:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x4c1d94_type* @G__0x4c1d94 to i64), i64* %RDI.i223, align 8
  %111 = add i64 %110, 17408
  %112 = add i64 %110, 15
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*
  store i64 %112, i64* %115, align 8
  store i64 %114, i64* %6, align 8
  store i64 %111, i64* %3, align 8
  %call2_454ffa = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %111, %struct.Memory* %71)
  %.pre = load i64, i64* %3, align 8
  %.pre2 = load i64, i64* %RBP.i, align 8
  br label %block_.L_454fff

block_.L_454fff:                                  ; preds = %entry, %block_454ff0
  %116 = phi i64 [ %79, %entry ], [ %.pre2, %block_454ff0 ]
  %117 = phi i64 [ %110, %entry ], [ %.pre, %block_454ff0 ]
  %MEMORY.0 = phi %struct.Memory* [ %71, %entry ], [ %call2_454ffa, %block_454ff0 ]
  store i64 2, i64* %RSI.i229, align 8
  store i64 4, i64* %RAX.i43, align 8
  %118 = add i64 %116, -4
  %119 = add i64 %117, 13
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %118 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RCX.i91, align 8
  %123 = add i64 %116, -24
  %124 = add i64 %117, 17
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %RDX.i281, align 8
  %ECX.i509 = bitcast %union.anon* %41 to i32*
  %127 = add i64 %126, 4
  %128 = add i64 %117, 20
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i32*
  store i32 %121, i32* %129, align 4
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -8
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 3
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %131 to i32*
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RCX.i91, align 8
  %137 = add i64 %130, -24
  %138 = add i64 %132, 7
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RDX.i281, align 8
  %141 = add i64 %140, 8
  %142 = add i64 %132, 10
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  store i32 %135, i32* %143, align 4
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -24
  %146 = load i64, i64* %3, align 8
  %147 = add i64 %146, 4
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %145 to i64*
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 1600
  store i64 %150, i64* %RDX.i281, align 8
  %151 = icmp ugt i64 %149, -1601
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %14, align 1
  %153 = trunc i64 %150 to i32
  %154 = and i32 %153, 255
  %155 = tail call i32 @llvm.ctpop.i32(i32 %154)
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  %158 = xor i8 %157, 1
  store i8 %158, i8* %21, align 1
  %159 = xor i64 %150, %149
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %27, align 1
  %163 = icmp eq i64 %150, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %30, align 1
  %165 = lshr i64 %150, 63
  %166 = trunc i64 %165 to i8
  store i8 %166, i8* %33, align 1
  %167 = lshr i64 %149, 63
  %168 = xor i64 %165, %167
  %169 = add nuw nsw i64 %168, %165
  %170 = icmp eq i64 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %39, align 1
  %172 = add i64 %144, -4
  %173 = add i64 %146, 14
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RCX.i91, align 8
  %177 = add i64 %144, -28
  %178 = load i32, i32* %EAX.i90, align 4
  %179 = add i64 %146, 17
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %177 to i32*
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* %ECX.i509, align 4
  %182 = zext i32 %181 to i64
  %183 = load i64, i64* %3, align 8
  store i64 %182, i64* %RAX.i43, align 8
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -40
  %186 = load i64, i64* %RDX.i281, align 8
  %187 = add i64 %183, 6
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %185 to i64*
  store i64 %186, i64* %188, align 8
  %189 = load i64, i64* %3, align 8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %191 = load i32, i32* %EAX.i90, align 8
  %192 = sext i32 %191 to i64
  %193 = lshr i64 %192, 32
  store i64 %193, i64* %190, align 8
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -28
  %196 = add i64 %189, 4
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  store i64 %199, i64* %RCX.i91, align 8
  %200 = add i64 %189, 6
  store i64 %200, i64* %3, align 8
  %201 = zext i32 %191 to i64
  %202 = sext i32 %198 to i64
  %203 = shl nuw i64 %193, 32
  %204 = or i64 %203, %201
  %205 = sdiv i64 %204, %202
  %206 = shl i64 %205, 32
  %207 = ashr exact i64 %206, 32
  %208 = icmp eq i64 %205, %207
  br i1 %208, label %211, label %209

; <label>:209:                                    ; preds = %block_.L_454fff
  %210 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %200, %struct.Memory* %MEMORY.0)
  %.pre3 = load i64, i64* %RBP.i, align 8
  %.pre4 = load i64, i64* %3, align 8
  %.pre5 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit778

; <label>:211:                                    ; preds = %block_.L_454fff
  %212 = srem i64 %204, %202
  %213 = and i64 %205, 4294967295
  store i64 %213, i64* %RAX.i43, align 8
  %214 = and i64 %212, 4294967295
  store i64 %214, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %215 = trunc i64 %205 to i32
  br label %routine_idivl__ecx.exit778

routine_idivl__ecx.exit778:                       ; preds = %211, %209
  %216 = phi i32 [ %.pre5, %209 ], [ %215, %211 ]
  %217 = phi i64 [ %.pre4, %209 ], [ %200, %211 ]
  %218 = phi i64 [ %.pre3, %209 ], [ %194, %211 ]
  %219 = phi %struct.Memory* [ %210, %209 ], [ %MEMORY.0, %211 ]
  %220 = add i64 %218, -8
  %221 = add i64 %217, 3
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RDI.i223, align 8
  %225 = add i64 %218, -44
  %226 = add i64 %217, 6
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  store i32 %216, i32* %227, align 4
  %228 = load i32, i32* %EDI.i, align 4
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %3, align 8
  store i64 %229, i64* %RAX.i43, align 8
  %231 = sext i32 %228 to i64
  %232 = lshr i64 %231, 32
  store i64 %232, i64* %190, align 8
  %233 = load i32, i32* %ECX.i509, align 4
  %234 = add i64 %230, 5
  store i64 %234, i64* %3, align 8
  %235 = sext i32 %233 to i64
  %236 = shl nuw i64 %232, 32
  %237 = or i64 %236, %229
  %238 = sdiv i64 %237, %235
  %239 = shl i64 %238, 32
  %240 = ashr exact i64 %239, 32
  %241 = icmp eq i64 %238, %240
  br i1 %241, label %244, label %242

; <label>:242:                                    ; preds = %routine_idivl__ecx.exit778
  %243 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %234, %struct.Memory* %219)
  %.pre6 = load i64, i64* %3, align 8
  %.pre7 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit762

; <label>:244:                                    ; preds = %routine_idivl__ecx.exit778
  %245 = srem i64 %237, %235
  %246 = and i64 %238, 4294967295
  store i64 %246, i64* %RAX.i43, align 8
  %247 = and i64 %245, 4294967295
  store i64 %247, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %248 = trunc i64 %238 to i32
  br label %routine_idivl__ecx.exit762

routine_idivl__ecx.exit762:                       ; preds = %244, %242
  %249 = phi i32 [ %.pre7, %242 ], [ %248, %244 ]
  %250 = phi i64 [ %.pre6, %242 ], [ %234, %244 ]
  %251 = phi %struct.Memory* [ %243, %242 ], [ %219, %244 ]
  %252 = load i64, i64* %RBP.i, align 8
  %253 = add i64 %252, -40
  %254 = add i64 %250, 4
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RDI.i223, align 8
  %257 = add i64 %252, -44
  %258 = add i64 %250, 8
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %43, align 8
  store i64 %261, i64* %RDX.i281, align 8
  %262 = zext i32 %249 to i64
  store i64 %262, i64* %RCX.i91, align 8
  %263 = add i64 %250, 20683
  %264 = add i64 %250, 18
  %265 = load i64, i64* %6, align 8
  %266 = add i64 %265, -8
  %267 = inttoptr i64 %266 to i64*
  store i64 %264, i64* %267, align 8
  store i64 %266, i64* %6, align 8
  store i64 %263, i64* %3, align 8
  %call2_455052 = tail call %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* nonnull %0, i64 %263, %struct.Memory* %251)
  %268 = load i64, i64* %3, align 8
  store i64 2, i64* %RSI.i229, align 8
  store i64 4, i64* %RCX.i91, align 8
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -24
  %271 = add i64 %268, 14
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i64*
  %273 = load i64, i64* %272, align 8
  %274 = add i64 %273, 1608
  store i64 %274, i64* %RDI.i223, align 8
  %275 = icmp ugt i64 %273, -1609
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %14, align 1
  %277 = trunc i64 %274 to i32
  %278 = and i32 %277, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  %283 = xor i64 %274, %273
  %284 = lshr i64 %283, 4
  %285 = trunc i64 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %27, align 1
  %287 = icmp eq i64 %274, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %30, align 1
  %289 = lshr i64 %274, 63
  %290 = trunc i64 %289 to i8
  store i8 %290, i8* %33, align 1
  %291 = lshr i64 %273, 63
  %292 = xor i64 %289, %291
  %293 = add nuw nsw i64 %292, %289
  %294 = icmp eq i64 %293, 2
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %39, align 1
  %296 = add i64 %269, -4
  %297 = add i64 %268, 24
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %RDX.i281, align 8
  %301 = add i64 %269, -48
  %302 = load i32, i32* %EAX.i90, align 4
  %303 = add i64 %268, 27
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %301 to i32*
  store i32 %302, i32* %304, align 4
  %305 = load i32, i32* %EDX.i178, align 4
  %306 = zext i32 %305 to i64
  %307 = load i64, i64* %3, align 8
  store i64 %306, i64* %RAX.i43, align 8
  %308 = sext i32 %305 to i64
  %309 = lshr i64 %308, 32
  store i64 %309, i64* %190, align 8
  %310 = load i32, i32* %ECX.i509, align 4
  %311 = add i64 %307, 5
  store i64 %311, i64* %3, align 8
  %312 = sext i32 %310 to i64
  %313 = shl nuw i64 %309, 32
  %314 = or i64 %313, %306
  %315 = sdiv i64 %314, %312
  %316 = shl i64 %315, 32
  %317 = ashr exact i64 %316, 32
  %318 = icmp eq i64 %315, %317
  br i1 %318, label %321, label %319

; <label>:319:                                    ; preds = %routine_idivl__ecx.exit762
  %320 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %311, %struct.Memory* %call2_455052)
  %.pre8 = load i64, i64* %3, align 8
  %.pre9 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit724

; <label>:321:                                    ; preds = %routine_idivl__ecx.exit762
  %322 = srem i64 %314, %312
  %323 = and i64 %315, 4294967295
  store i64 %323, i64* %RAX.i43, align 8
  %324 = and i64 %322, 4294967295
  store i64 %324, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %325 = trunc i64 %315 to i32
  br label %routine_idivl__ecx.exit724

routine_idivl__ecx.exit724:                       ; preds = %321, %319
  %326 = phi i32 [ %.pre9, %319 ], [ %325, %321 ]
  %327 = phi i64 [ %.pre8, %319 ], [ %311, %321 ]
  %328 = phi %struct.Memory* [ %320, %319 ], [ %call2_455052, %321 ]
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -8
  %331 = add i64 %327, 4
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %43, align 8
  %335 = add i64 %329, -52
  %336 = add i64 %327, 7
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i32*
  store i32 %326, i32* %337, align 4
  %338 = load i32, i32* %R8D.i113, align 4
  %339 = zext i32 %338 to i64
  %340 = load i64, i64* %3, align 8
  store i64 %339, i64* %RAX.i43, align 8
  %341 = sext i32 %338 to i64
  %342 = lshr i64 %341, 32
  store i64 %342, i64* %190, align 8
  %343 = load i32, i32* %ECX.i509, align 4
  %344 = add i64 %340, 6
  store i64 %344, i64* %3, align 8
  %345 = sext i32 %343 to i64
  %346 = shl nuw i64 %342, 32
  %347 = or i64 %346, %339
  %348 = sdiv i64 %347, %345
  %349 = shl i64 %348, 32
  %350 = ashr exact i64 %349, 32
  %351 = icmp eq i64 %348, %350
  br i1 %351, label %354, label %352

; <label>:352:                                    ; preds = %routine_idivl__ecx.exit724
  %353 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %344, %struct.Memory* %328)
  %.pre10 = load i64, i64* %3, align 8
  %.pre11 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit708

; <label>:354:                                    ; preds = %routine_idivl__ecx.exit724
  %355 = srem i64 %347, %345
  %356 = and i64 %348, 4294967295
  store i64 %356, i64* %RAX.i43, align 8
  %357 = and i64 %355, 4294967295
  store i64 %357, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %358 = trunc i64 %348 to i32
  br label %routine_idivl__ecx.exit708

routine_idivl__ecx.exit708:                       ; preds = %354, %352
  %359 = phi i32 [ %.pre11, %352 ], [ %358, %354 ]
  %360 = phi i64 [ %.pre10, %352 ], [ %344, %354 ]
  %361 = phi %struct.Memory* [ %353, %352 ], [ %328, %354 ]
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -52
  %364 = add i64 %360, 3
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i32*
  %366 = load i32, i32* %365, align 4
  %367 = zext i32 %366 to i64
  store i64 %367, i64* %RDX.i281, align 8
  %368 = zext i32 %359 to i64
  store i64 %368, i64* %RCX.i91, align 8
  %369 = add i64 %360, 19116
  %370 = add i64 %360, 12
  %371 = load i64, i64* %6, align 8
  %372 = add i64 %371, -8
  %373 = inttoptr i64 %372 to i64*
  store i64 %370, i64* %373, align 8
  store i64 %372, i64* %6, align 8
  store i64 %369, i64* %3, align 8
  %call2_45508b = tail call %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* nonnull %0, i64 %369, %struct.Memory* %361)
  %374 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i91, align 8
  store i64 4, i64* %RDX.i281, align 8
  %375 = load i64, i64* %RBP.i, align 8
  %376 = add i64 %375, -24
  %377 = add i64 %374, 14
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i64*
  %379 = load i64, i64* %378, align 8
  %380 = add i64 %379, 1616
  store i64 %380, i64* %RDI.i223, align 8
  %381 = icmp ugt i64 %379, -1617
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %14, align 1
  %383 = trunc i64 %380 to i32
  %384 = and i32 %383, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384)
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %21, align 1
  %389 = xor i64 %379, 16
  %390 = xor i64 %389, %380
  %391 = lshr i64 %390, 4
  %392 = trunc i64 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %27, align 1
  %394 = icmp eq i64 %380, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %30, align 1
  %396 = lshr i64 %380, 63
  %397 = trunc i64 %396 to i8
  store i8 %397, i8* %33, align 1
  %398 = lshr i64 %379, 63
  %399 = xor i64 %396, %398
  %400 = add nuw nsw i64 %399, %396
  %401 = icmp eq i64 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %39, align 1
  %403 = add i64 %375, -4
  %404 = add i64 %374, 24
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RSI.i229, align 8
  %408 = add i64 %375, -56
  %409 = load i32, i32* %EAX.i90, align 4
  %410 = add i64 %374, 27
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %408 to i32*
  store i32 %409, i32* %411, align 4
  %412 = load i32, i32* %ESI.i162, align 4
  %413 = zext i32 %412 to i64
  %414 = load i64, i64* %3, align 8
  store i64 %413, i64* %RAX.i43, align 8
  %415 = load i64, i64* %RBP.i, align 8
  %416 = add i64 %415, -60
  %417 = load i32, i32* %EDX.i178, align 4
  %418 = add i64 %414, 5
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %416 to i32*
  store i32 %417, i32* %419, align 4
  %420 = load i64, i64* %3, align 8
  %421 = load i32, i32* %EAX.i90, align 8
  %422 = sext i32 %421 to i64
  %423 = lshr i64 %422, 32
  store i64 %423, i64* %190, align 8
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -60
  %426 = add i64 %420, 4
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RSI.i229, align 8
  %430 = add i64 %420, 6
  store i64 %430, i64* %3, align 8
  %431 = zext i32 %421 to i64
  %432 = sext i32 %428 to i64
  %433 = shl nuw i64 %423, 32
  %434 = or i64 %433, %431
  %435 = sdiv i64 %434, %432
  %436 = shl i64 %435, 32
  %437 = ashr exact i64 %436, 32
  %438 = icmp eq i64 %435, %437
  br i1 %438, label %441, label %439

; <label>:439:                                    ; preds = %routine_idivl__ecx.exit708
  %440 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %430, %struct.Memory* %call2_45508b)
  %.pre12 = load i64, i64* %RBP.i, align 8
  %.pre13 = load i64, i64* %3, align 8
  %.pre14 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__esi.exit667

; <label>:441:                                    ; preds = %routine_idivl__ecx.exit708
  %442 = srem i64 %434, %432
  %443 = and i64 %435, 4294967295
  store i64 %443, i64* %RAX.i43, align 8
  %444 = and i64 %442, 4294967295
  store i64 %444, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %445 = trunc i64 %435 to i32
  br label %routine_idivl__esi.exit667

routine_idivl__esi.exit667:                       ; preds = %441, %439
  %446 = phi i32 [ %.pre14, %439 ], [ %445, %441 ]
  %447 = phi i64 [ %.pre13, %439 ], [ %430, %441 ]
  %448 = phi i64 [ %.pre12, %439 ], [ %424, %441 ]
  %449 = phi %struct.Memory* [ %440, %439 ], [ %call2_45508b, %441 ]
  %450 = add i64 %448, -8
  %451 = add i64 %447, 4
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %43, align 8
  %455 = add i64 %448, -64
  %456 = add i64 %447, 7
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  store i32 %446, i32* %457, align 4
  %458 = load i32, i32* %R8D.i113, align 4
  %459 = zext i32 %458 to i64
  %460 = load i64, i64* %3, align 8
  store i64 %459, i64* %RAX.i43, align 8
  %461 = sext i32 %458 to i64
  %462 = lshr i64 %461, 32
  store i64 %462, i64* %190, align 8
  %463 = load i32, i32* %ESI.i162, align 4
  %464 = add i64 %460, 6
  store i64 %464, i64* %3, align 8
  %465 = sext i32 %463 to i64
  %466 = shl nuw i64 %462, 32
  %467 = or i64 %466, %459
  %468 = sdiv i64 %467, %465
  %469 = shl i64 %468, 32
  %470 = ashr exact i64 %469, 32
  %471 = icmp eq i64 %468, %470
  br i1 %471, label %474, label %472

; <label>:472:                                    ; preds = %routine_idivl__esi.exit667
  %473 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %464, %struct.Memory* %449)
  %.pre15 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit652

; <label>:474:                                    ; preds = %routine_idivl__esi.exit667
  %475 = srem i64 %467, %465
  %476 = and i64 %468, 4294967295
  store i64 %476, i64* %RAX.i43, align 8
  %477 = and i64 %475, 4294967295
  store i64 %477, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit652

routine_idivl__esi.exit652:                       ; preds = %474, %472
  %478 = phi i64 [ %.pre15, %472 ], [ %464, %474 ]
  %479 = phi %struct.Memory* [ %473, %472 ], [ %449, %474 ]
  %480 = load i32, i32* %ECX.i509, align 4
  %481 = zext i32 %480 to i64
  store i64 %481, i64* %RSI.i229, align 8
  %482 = load i64, i64* %RBP.i, align 8
  %483 = add i64 %482, -64
  %484 = add i64 %478, 6
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = zext i32 %486 to i64
  store i64 %487, i64* %43, align 8
  store i64 %487, i64* %RDX.i281, align 8
  %488 = add i64 %482, -68
  %489 = add i64 %478, 12
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i32*
  store i32 %480, i32* %490, align 4
  %491 = load i32, i32* %EAX.i90, align 4
  %492 = zext i32 %491 to i64
  %493 = load i64, i64* %3, align 8
  store i64 %492, i64* %RCX.i91, align 8
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -68
  %496 = add i64 %493, 6
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %43, align 8
  %500 = add i64 %493, 20721
  %501 = add i64 %493, 11
  %502 = load i64, i64* %6, align 8
  %503 = add i64 %502, -8
  %504 = inttoptr i64 %503 to i64*
  store i64 %501, i64* %504, align 8
  store i64 %503, i64* %6, align 8
  store i64 %500, i64* %3, align 8
  %call2_4550d5 = tail call %struct.Memory* @sub_45a1c0.get_mem4Dshort(%struct.State* nonnull %0, i64 %500, %struct.Memory* %479)
  %505 = load i64, i64* %3, align 8
  store i64 4, i64* %RCX.i91, align 8
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -24
  %508 = add i64 %505, 9
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i64*
  %510 = load i64, i64* %509, align 8
  %511 = add i64 %510, 1624
  store i64 %511, i64* %RDI.i223, align 8
  %512 = icmp ugt i64 %510, -1625
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %14, align 1
  %514 = trunc i64 %511 to i32
  %515 = and i32 %514, 255
  %516 = tail call i32 @llvm.ctpop.i32(i32 %515)
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  %519 = xor i8 %518, 1
  store i8 %519, i8* %21, align 1
  %520 = xor i64 %510, 16
  %521 = xor i64 %520, %511
  %522 = lshr i64 %521, 4
  %523 = trunc i64 %522 to i8
  %524 = and i8 %523, 1
  store i8 %524, i8* %27, align 1
  %525 = icmp eq i64 %511, 0
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %30, align 1
  %527 = lshr i64 %511, 63
  %528 = trunc i64 %527 to i8
  store i8 %528, i8* %33, align 1
  %529 = lshr i64 %510, 63
  %530 = xor i64 %527, %529
  %531 = add nuw nsw i64 %530, %527
  %532 = icmp eq i64 %531, 2
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %39, align 1
  %534 = add i64 %506, -4
  %535 = add i64 %505, 19
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RDX.i281, align 8
  %539 = add i64 %506, -72
  %540 = load i32, i32* %EAX.i90, align 4
  %541 = add i64 %505, 22
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %539 to i32*
  store i32 %540, i32* %542, align 4
  %543 = load i32, i32* %EDX.i178, align 4
  %544 = zext i32 %543 to i64
  %545 = load i64, i64* %3, align 8
  store i64 %544, i64* %RAX.i43, align 8
  %546 = sext i32 %543 to i64
  %547 = lshr i64 %546, 32
  store i64 %547, i64* %190, align 8
  %548 = load i32, i32* %ECX.i509, align 4
  %549 = add i64 %545, 5
  store i64 %549, i64* %3, align 8
  %550 = sext i32 %548 to i64
  %551 = shl nuw i64 %547, 32
  %552 = or i64 %551, %544
  %553 = sdiv i64 %552, %550
  %554 = shl i64 %553, 32
  %555 = ashr exact i64 %554, 32
  %556 = icmp eq i64 %553, %555
  br i1 %556, label %559, label %557

; <label>:557:                                    ; preds = %routine_idivl__esi.exit652
  %558 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %549, %struct.Memory* %call2_4550d5)
  %.pre16 = load i64, i64* %3, align 8
  %.pre17 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit610

; <label>:559:                                    ; preds = %routine_idivl__esi.exit652
  %560 = srem i64 %552, %550
  %561 = and i64 %553, 4294967295
  store i64 %561, i64* %RAX.i43, align 8
  %562 = and i64 %560, 4294967295
  store i64 %562, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %563 = trunc i64 %553 to i32
  br label %routine_idivl__ecx.exit610

routine_idivl__ecx.exit610:                       ; preds = %559, %557
  %564 = phi i32 [ %.pre17, %557 ], [ %563, %559 ]
  %565 = phi i64 [ %.pre16, %557 ], [ %549, %559 ]
  %566 = phi %struct.Memory* [ %558, %557 ], [ %call2_4550d5, %559 ]
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -8
  %569 = add i64 %565, 3
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %568 to i32*
  %571 = load i32, i32* %570, align 4
  %572 = zext i32 %571 to i64
  store i64 %572, i64* %RSI.i229, align 8
  %573 = add i64 %567, -76
  %574 = add i64 %565, 6
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i32*
  store i32 %564, i32* %575, align 4
  %576 = load i32, i32* %ESI.i162, align 4
  %577 = zext i32 %576 to i64
  %578 = load i64, i64* %3, align 8
  store i64 %577, i64* %RAX.i43, align 8
  %579 = sext i32 %576 to i64
  %580 = lshr i64 %579, 32
  store i64 %580, i64* %190, align 8
  %581 = load i32, i32* %ECX.i509, align 4
  %582 = add i64 %578, 5
  store i64 %582, i64* %3, align 8
  %583 = sext i32 %581 to i64
  %584 = shl nuw i64 %580, 32
  %585 = or i64 %584, %577
  %586 = sdiv i64 %585, %583
  %587 = shl i64 %586, 32
  %588 = ashr exact i64 %587, 32
  %589 = icmp eq i64 %586, %588
  br i1 %589, label %592, label %590

; <label>:590:                                    ; preds = %routine_idivl__ecx.exit610
  %591 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %582, %struct.Memory* %566)
  %.pre18 = load i64, i64* %3, align 8
  %.pre19 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit594

; <label>:592:                                    ; preds = %routine_idivl__ecx.exit610
  %593 = srem i64 %585, %583
  %594 = and i64 %586, 4294967295
  store i64 %594, i64* %RAX.i43, align 8
  %595 = and i64 %593, 4294967295
  store i64 %595, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %596 = trunc i64 %586 to i32
  br label %routine_idivl__ecx.exit594

routine_idivl__ecx.exit594:                       ; preds = %592, %590
  %597 = phi i32 [ %.pre19, %590 ], [ %596, %592 ]
  %598 = phi i64 [ %.pre18, %590 ], [ %582, %592 ]
  %599 = phi %struct.Memory* [ %591, %590 ], [ %566, %592 ]
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -76
  %602 = add i64 %598, 3
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RSI.i229, align 8
  %606 = zext i32 %597 to i64
  store i64 %606, i64* %RDX.i281, align 8
  %607 = add i64 %598, 17952
  %608 = add i64 %598, 10
  %609 = load i64, i64* %6, align 8
  %610 = add i64 %609, -8
  %611 = inttoptr i64 %610 to i64*
  store i64 %608, i64* %611, align 8
  store i64 %610, i64* %6, align 8
  store i64 %607, i64* %3, align 8
  %call2_455105 = tail call %struct.Memory* @sub_459720.get_mem2D(%struct.State* nonnull %0, i64 %607, %struct.Memory* %599)
  %612 = load i64, i64* %3, align 8
  store i64 4, i64* %RCX.i91, align 8
  %613 = load i64, i64* %RBP.i, align 8
  %614 = add i64 %613, -24
  %615 = add i64 %612, 9
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i64*
  %617 = load i64, i64* %616, align 8
  %618 = add i64 %617, 4872
  store i64 %618, i64* %RDI.i223, align 8
  %619 = icmp ugt i64 %617, -4873
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %14, align 1
  %621 = trunc i64 %618 to i32
  %622 = and i32 %621, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %21, align 1
  %627 = xor i64 %618, %617
  %628 = lshr i64 %627, 4
  %629 = trunc i64 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %27, align 1
  %631 = icmp eq i64 %618, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %30, align 1
  %633 = lshr i64 %618, 63
  %634 = trunc i64 %633 to i8
  store i8 %634, i8* %33, align 1
  %635 = lshr i64 %617, 63
  %636 = xor i64 %633, %635
  %637 = add nuw nsw i64 %636, %633
  %638 = icmp eq i64 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %39, align 1
  %640 = add i64 %613, -4
  %641 = add i64 %612, 19
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RDX.i281, align 8
  %645 = add i64 %613, -80
  %646 = load i32, i32* %EAX.i90, align 4
  %647 = add i64 %612, 22
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %645 to i32*
  store i32 %646, i32* %648, align 4
  %649 = load i32, i32* %EDX.i178, align 4
  %650 = zext i32 %649 to i64
  %651 = load i64, i64* %3, align 8
  store i64 %650, i64* %RAX.i43, align 8
  %652 = sext i32 %649 to i64
  %653 = lshr i64 %652, 32
  store i64 %653, i64* %190, align 8
  %654 = load i32, i32* %ECX.i509, align 4
  %655 = add i64 %651, 5
  store i64 %655, i64* %3, align 8
  %656 = sext i32 %654 to i64
  %657 = shl nuw i64 %653, 32
  %658 = or i64 %657, %650
  %659 = sdiv i64 %658, %656
  %660 = shl i64 %659, 32
  %661 = ashr exact i64 %660, 32
  %662 = icmp eq i64 %659, %661
  br i1 %662, label %665, label %663

; <label>:663:                                    ; preds = %routine_idivl__ecx.exit594
  %664 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %655, %struct.Memory* %call2_455105)
  %.pre20 = load i64, i64* %3, align 8
  %.pre21 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit564

; <label>:665:                                    ; preds = %routine_idivl__ecx.exit594
  %666 = srem i64 %658, %656
  %667 = and i64 %659, 4294967295
  store i64 %667, i64* %RAX.i43, align 8
  %668 = and i64 %666, 4294967295
  store i64 %668, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %669 = trunc i64 %659 to i32
  br label %routine_idivl__ecx.exit564

routine_idivl__ecx.exit564:                       ; preds = %665, %663
  %670 = phi i32 [ %.pre21, %663 ], [ %669, %665 ]
  %671 = phi i64 [ %.pre20, %663 ], [ %655, %665 ]
  %672 = phi %struct.Memory* [ %664, %663 ], [ %call2_455105, %665 ]
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -8
  %675 = add i64 %671, 3
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  %677 = load i32, i32* %676, align 4
  %678 = zext i32 %677 to i64
  store i64 %678, i64* %RSI.i229, align 8
  %679 = add i64 %673, -84
  %680 = add i64 %671, 6
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i32*
  store i32 %670, i32* %681, align 4
  %682 = load i32, i32* %ESI.i162, align 4
  %683 = zext i32 %682 to i64
  %684 = load i64, i64* %3, align 8
  store i64 %683, i64* %RAX.i43, align 8
  %685 = sext i32 %682 to i64
  %686 = lshr i64 %685, 32
  store i64 %686, i64* %190, align 8
  %687 = load i32, i32* %ECX.i509, align 4
  %688 = add i64 %684, 5
  store i64 %688, i64* %3, align 8
  %689 = sext i32 %687 to i64
  %690 = shl nuw i64 %686, 32
  %691 = or i64 %690, %683
  %692 = sdiv i64 %691, %689
  %693 = shl i64 %692, 32
  %694 = ashr exact i64 %693, 32
  %695 = icmp eq i64 %692, %694
  br i1 %695, label %698, label %696

; <label>:696:                                    ; preds = %routine_idivl__ecx.exit564
  %697 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %688, %struct.Memory* %672)
  %.pre22 = load i64, i64* %3, align 8
  %.pre23 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit548

; <label>:698:                                    ; preds = %routine_idivl__ecx.exit564
  %699 = srem i64 %691, %689
  %700 = and i64 %692, 4294967295
  store i64 %700, i64* %RAX.i43, align 8
  %701 = and i64 %699, 4294967295
  store i64 %701, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %702 = trunc i64 %692 to i32
  br label %routine_idivl__ecx.exit548

routine_idivl__ecx.exit548:                       ; preds = %698, %696
  %703 = phi i32 [ %.pre23, %696 ], [ %702, %698 ]
  %704 = phi i64 [ %.pre22, %696 ], [ %688, %698 ]
  %705 = phi %struct.Memory* [ %697, %696 ], [ %672, %698 ]
  %706 = load i64, i64* %RBP.i, align 8
  %707 = add i64 %706, -84
  %708 = add i64 %704, 3
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RSI.i229, align 8
  %712 = zext i32 %703 to i64
  store i64 %712, i64* %RDX.i281, align 8
  %713 = add i64 %704, 17904
  %714 = add i64 %704, 10
  %715 = load i64, i64* %6, align 8
  %716 = add i64 %715, -8
  %717 = inttoptr i64 %716 to i64*
  store i64 %714, i64* %717, align 8
  store i64 %716, i64* %6, align 8
  store i64 %713, i64* %3, align 8
  %call2_455135 = tail call %struct.Memory* @sub_459720.get_mem2D(%struct.State* nonnull %0, i64 %713, %struct.Memory* %705)
  %718 = load i64, i64* %RBP.i, align 8
  %719 = add i64 %718, -12
  %720 = load i64, i64* %3, align 8
  %721 = add i64 %720, 4
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %719 to i32*
  %723 = load i32, i32* %722, align 4
  store i8 0, i8* %14, align 1
  %724 = and i32 %723, 255
  %725 = tail call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  store i8 %728, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %729 = icmp eq i32 %723, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %30, align 1
  %731 = lshr i32 %723, 31
  %732 = trunc i32 %731 to i8
  store i8 %732, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %733 = add i64 %718, -88
  %734 = load i32, i32* %EAX.i90, align 4
  %735 = add i64 %720, 7
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %733 to i32*
  store i32 %734, i32* %736, align 4
  %737 = load i64, i64* %3, align 8
  %738 = load i8, i8* %30, align 1
  %739 = icmp ne i8 %738, 0
  %.v85 = select i1 %739, i64 664, i64 6
  %740 = add i64 %737, %.v85
  store i64 %740, i64* %3, align 8
  %cmpBr_455141 = icmp eq i8 %738, 1
  br i1 %cmpBr_455141, label %block_.L_4553d9, label %block_455147

block_455147:                                     ; preds = %routine_idivl__ecx.exit548
  store i64 2, i64* %RAX.i43, align 8
  store i64 4, i64* %RCX.i91, align 8
  %741 = load i64, i64* %RBP.i, align 8
  %742 = add i64 %741, -24
  %743 = add i64 %740, 14
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i64*
  %745 = load i64, i64* %744, align 8
  %746 = add i64 %745, 3216
  store i64 %746, i64* %RDX.i281, align 8
  %747 = icmp ugt i64 %745, -3217
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %14, align 1
  %749 = trunc i64 %746 to i32
  %750 = and i32 %749, 255
  %751 = tail call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  store i8 %754, i8* %21, align 1
  %755 = xor i64 %745, 16
  %756 = xor i64 %755, %746
  %757 = lshr i64 %756, 4
  %758 = trunc i64 %757 to i8
  %759 = and i8 %758, 1
  store i8 %759, i8* %27, align 1
  %760 = icmp eq i64 %746, 0
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %30, align 1
  %762 = lshr i64 %746, 63
  %763 = trunc i64 %762 to i8
  store i8 %763, i8* %33, align 1
  %764 = lshr i64 %745, 63
  %765 = xor i64 %762, %764
  %766 = add nuw nsw i64 %765, %762
  %767 = icmp eq i64 %766, 2
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %39, align 1
  %769 = add i64 %741, -4
  %770 = add i64 %740, 24
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = zext i32 %772 to i64
  store i64 %773, i64* %RSI.i229, align 8
  %774 = add i64 %741, -92
  %775 = add i64 %740, 27
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  store i32 2, i32* %776, align 4
  %777 = load i32, i32* %ESI.i162, align 4
  %778 = zext i32 %777 to i64
  %779 = load i64, i64* %3, align 8
  store i64 %778, i64* %RAX.i43, align 8
  %780 = load i64, i64* %RBP.i, align 8
  %781 = add i64 %780, -104
  %782 = load i64, i64* %RDX.i281, align 8
  %783 = add i64 %779, 6
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %781 to i64*
  store i64 %782, i64* %784, align 8
  %785 = load i64, i64* %3, align 8
  %786 = load i32, i32* %EAX.i90, align 8
  %787 = sext i32 %786 to i64
  %788 = lshr i64 %787, 32
  store i64 %788, i64* %190, align 8
  %789 = load i32, i32* %ECX.i509, align 4
  %790 = add i64 %785, 3
  store i64 %790, i64* %3, align 8
  %791 = zext i32 %786 to i64
  %792 = sext i32 %789 to i64
  %793 = shl nuw i64 %788, 32
  %794 = or i64 %793, %791
  %795 = sdiv i64 %794, %792
  %796 = shl i64 %795, 32
  %797 = ashr exact i64 %796, 32
  %798 = icmp eq i64 %795, %797
  br i1 %798, label %801, label %799

; <label>:799:                                    ; preds = %block_455147
  %800 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %790, %struct.Memory* %call2_455135)
  %.pre24 = load i64, i64* %3, align 8
  %.pre25 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit507

; <label>:801:                                    ; preds = %block_455147
  %802 = srem i64 %794, %792
  %803 = and i64 %795, 4294967295
  store i64 %803, i64* %RAX.i43, align 8
  %804 = and i64 %802, 4294967295
  store i64 %804, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %805 = trunc i64 %795 to i32
  br label %routine_idivl__ecx.exit507

routine_idivl__ecx.exit507:                       ; preds = %801, %799
  %806 = phi i32 [ %.pre25, %799 ], [ %805, %801 ]
  %807 = phi i64 [ %.pre24, %799 ], [ %790, %801 ]
  %808 = phi %struct.Memory* [ %800, %799 ], [ %call2_455135, %801 ]
  %809 = load i64, i64* %RBP.i, align 8
  %810 = add i64 %809, -8
  %811 = add i64 %807, 3
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = zext i32 %813 to i64
  store i64 %814, i64* %RSI.i229, align 8
  %815 = add i64 %809, -108
  %816 = add i64 %807, 6
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  store i32 %806, i32* %817, align 4
  %818 = load i32, i32* %ESI.i162, align 4
  %819 = zext i32 %818 to i64
  %820 = load i64, i64* %3, align 8
  store i64 %819, i64* %RAX.i43, align 8
  %821 = sext i32 %818 to i64
  %822 = lshr i64 %821, 32
  store i64 %822, i64* %190, align 8
  %823 = load i32, i32* %ECX.i509, align 4
  %824 = add i64 %820, 5
  store i64 %824, i64* %3, align 8
  %825 = sext i32 %823 to i64
  %826 = shl nuw i64 %822, 32
  %827 = or i64 %826, %819
  %828 = sdiv i64 %827, %825
  %829 = shl i64 %828, 32
  %830 = ashr exact i64 %829, 32
  %831 = icmp eq i64 %828, %830
  br i1 %831, label %834, label %832

; <label>:832:                                    ; preds = %routine_idivl__ecx.exit507
  %833 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %824, %struct.Memory* %808)
  %.pre26 = load i64, i64* %3, align 8
  %.pre27 = load i32, i32* %EAX.i90, align 8
  br label %routine_idivl__ecx.exit491

; <label>:834:                                    ; preds = %routine_idivl__ecx.exit507
  %835 = srem i64 %827, %825
  %836 = and i64 %828, 4294967295
  store i64 %836, i64* %RAX.i43, align 8
  %837 = and i64 %835, 4294967295
  store i64 %837, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %838 = trunc i64 %828 to i32
  br label %routine_idivl__ecx.exit491

routine_idivl__ecx.exit491:                       ; preds = %834, %832
  %839 = phi i32 [ %.pre27, %832 ], [ %838, %834 ]
  %840 = phi i64 [ %.pre26, %832 ], [ %824, %834 ]
  %841 = phi %struct.Memory* [ %833, %832 ], [ %808, %834 ]
  %842 = sext i32 %839 to i64
  %843 = lshr i64 %842, 32
  store i64 %843, i64* %190, align 8
  %844 = load i64, i64* %RBP.i, align 8
  %845 = add i64 %844, -92
  %846 = add i64 %840, 4
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RCX.i91, align 8
  %850 = add i64 %840, 6
  store i64 %850, i64* %3, align 8
  %851 = zext i32 %839 to i64
  %852 = sext i32 %848 to i64
  %853 = shl nuw i64 %843, 32
  %854 = or i64 %853, %851
  %855 = sdiv i64 %854, %852
  %856 = shl i64 %855, 32
  %857 = ashr exact i64 %856, 32
  %858 = icmp eq i64 %855, %857
  br i1 %858, label %861, label %859

; <label>:859:                                    ; preds = %routine_idivl__ecx.exit491
  %860 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %850, %struct.Memory* %841)
  %.pre28 = load i64, i64* %RBP.i, align 8
  %.pre29 = load i64, i64* %3, align 8
  %.pre30 = load i32, i32* %ECX.i509, align 4
  %.pre31 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit481

; <label>:861:                                    ; preds = %routine_idivl__ecx.exit491
  %862 = srem i64 %854, %852
  %863 = and i64 %855, 4294967295
  store i64 %863, i64* %RAX.i43, align 8
  %864 = and i64 %862, 4294967295
  store i64 %864, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %865 = trunc i64 %855 to i32
  br label %routine_idivl__ecx.exit481

routine_idivl__ecx.exit481:                       ; preds = %861, %859
  %866 = phi i32 [ %.pre31, %859 ], [ %865, %861 ]
  %867 = phi i32 [ %.pre30, %859 ], [ %848, %861 ]
  %868 = phi i64 [ %.pre29, %859 ], [ %850, %861 ]
  %869 = phi i64 [ %.pre28, %859 ], [ %844, %861 ]
  %870 = phi %struct.Memory* [ %860, %859 ], [ %841, %861 ]
  %871 = add i64 %869, -104
  %872 = add i64 %868, 4
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i64*
  %874 = load i64, i64* %873, align 8
  store i64 %874, i64* %RDI.i223, align 8
  %875 = zext i32 %867 to i64
  store i64 %875, i64* %RSI.i229, align 8
  %876 = add i64 %869, -108
  %877 = add i64 %868, 10
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i32*
  %879 = load i32, i32* %878, align 4
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %43, align 8
  store i64 %880, i64* %RDX.i281, align 8
  %881 = zext i32 %866 to i64
  store i64 %881, i64* %RCX.i91, align 8
  %882 = add i64 %868, 20372
  %883 = add i64 %868, 20
  %884 = load i64, i64* %6, align 8
  %885 = add i64 %884, -8
  %886 = inttoptr i64 %885 to i64*
  store i64 %883, i64* %886, align 8
  store i64 %885, i64* %6, align 8
  store i64 %882, i64* %3, align 8
  %call2_45518b = tail call %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* nonnull %0, i64 %882, %struct.Memory* %870)
  %887 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i91, align 8
  store i64 4, i64* %RDX.i281, align 8
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -24
  %890 = add i64 %887, 14
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i64*
  %892 = load i64, i64* %891, align 8
  %893 = add i64 %892, 3224
  store i64 %893, i64* %RDI.i223, align 8
  %894 = icmp ugt i64 %892, -3225
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %14, align 1
  %896 = trunc i64 %893 to i32
  %897 = and i32 %896, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %21, align 1
  %902 = xor i64 %892, 16
  %903 = xor i64 %902, %893
  %904 = lshr i64 %903, 4
  %905 = trunc i64 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %27, align 1
  %907 = icmp eq i64 %893, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %30, align 1
  %909 = lshr i64 %893, 63
  %910 = trunc i64 %909 to i8
  store i8 %910, i8* %33, align 1
  %911 = lshr i64 %892, 63
  %912 = xor i64 %909, %911
  %913 = add nuw nsw i64 %912, %909
  %914 = icmp eq i64 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %39, align 1
  %916 = add i64 %888, -4
  %917 = add i64 %887, 24
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to i32*
  %919 = load i32, i32* %918, align 4
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RSI.i229, align 8
  %921 = add i64 %888, -112
  %922 = load i32, i32* %EAX.i90, align 4
  %923 = add i64 %887, 27
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %921 to i32*
  store i32 %922, i32* %924, align 4
  %925 = load i32, i32* %ESI.i162, align 4
  %926 = zext i32 %925 to i64
  %927 = load i64, i64* %3, align 8
  store i64 %926, i64* %RAX.i43, align 8
  %928 = load i64, i64* %RBP.i, align 8
  %929 = add i64 %928, -116
  %930 = load i32, i32* %EDX.i178, align 4
  %931 = add i64 %927, 5
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %929 to i32*
  store i32 %930, i32* %932, align 4
  %933 = load i64, i64* %3, align 8
  %934 = load i32, i32* %EAX.i90, align 8
  %935 = sext i32 %934 to i64
  %936 = lshr i64 %935, 32
  store i64 %936, i64* %190, align 8
  %937 = load i64, i64* %RBP.i, align 8
  %938 = add i64 %937, -116
  %939 = add i64 %933, 4
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RSI.i229, align 8
  %943 = add i64 %933, 6
  store i64 %943, i64* %3, align 8
  %944 = zext i32 %934 to i64
  %945 = sext i32 %941 to i64
  %946 = shl nuw i64 %936, 32
  %947 = or i64 %946, %944
  %948 = sdiv i64 %947, %945
  %949 = shl i64 %948, 32
  %950 = ashr exact i64 %949, 32
  %951 = icmp eq i64 %948, %950
  br i1 %951, label %954, label %952

; <label>:952:                                    ; preds = %routine_idivl__ecx.exit481
  %953 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %943, %struct.Memory* %call2_45518b)
  %.pre32 = load i64, i64* %RBP.i, align 8
  %.pre33 = load i64, i64* %3, align 8
  %.pre34 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__esi.exit435

; <label>:954:                                    ; preds = %routine_idivl__ecx.exit481
  %955 = srem i64 %947, %945
  %956 = and i64 %948, 4294967295
  store i64 %956, i64* %RAX.i43, align 8
  %957 = and i64 %955, 4294967295
  store i64 %957, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %958 = trunc i64 %948 to i32
  br label %routine_idivl__esi.exit435

routine_idivl__esi.exit435:                       ; preds = %954, %952
  %959 = phi i32 [ %.pre34, %952 ], [ %958, %954 ]
  %960 = phi i64 [ %.pre33, %952 ], [ %943, %954 ]
  %961 = phi i64 [ %.pre32, %952 ], [ %937, %954 ]
  %962 = phi %struct.Memory* [ %953, %952 ], [ %call2_45518b, %954 ]
  %963 = add i64 %961, -8
  %964 = add i64 %960, 4
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i32*
  %966 = load i32, i32* %965, align 4
  %967 = zext i32 %966 to i64
  store i64 %967, i64* %43, align 8
  %968 = add i64 %961, -120
  %969 = add i64 %960, 7
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  store i32 %959, i32* %970, align 4
  %971 = load i32, i32* %R8D.i113, align 4
  %972 = zext i32 %971 to i64
  %973 = load i64, i64* %3, align 8
  store i64 %972, i64* %RAX.i43, align 8
  %974 = sext i32 %971 to i64
  %975 = lshr i64 %974, 32
  store i64 %975, i64* %190, align 8
  %976 = load i32, i32* %ESI.i162, align 4
  %977 = add i64 %973, 6
  store i64 %977, i64* %3, align 8
  %978 = sext i32 %976 to i64
  %979 = shl nuw i64 %975, 32
  %980 = or i64 %979, %972
  %981 = sdiv i64 %980, %978
  %982 = shl i64 %981, 32
  %983 = ashr exact i64 %982, 32
  %984 = icmp eq i64 %981, %983
  br i1 %984, label %987, label %985

; <label>:985:                                    ; preds = %routine_idivl__esi.exit435
  %986 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %977, %struct.Memory* %962)
  %.pre35 = load i64, i64* %3, align 8
  %.pre36 = load i32, i32* %EAX.i90, align 8
  br label %routine_idivl__esi.exit420

; <label>:987:                                    ; preds = %routine_idivl__esi.exit435
  %988 = srem i64 %980, %978
  %989 = and i64 %981, 4294967295
  store i64 %989, i64* %RAX.i43, align 8
  %990 = and i64 %988, 4294967295
  store i64 %990, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %991 = trunc i64 %981 to i32
  br label %routine_idivl__esi.exit420

routine_idivl__esi.exit420:                       ; preds = %987, %985
  %992 = phi i32 [ %.pre36, %985 ], [ %991, %987 ]
  %993 = phi i64 [ %.pre35, %985 ], [ %977, %987 ]
  %994 = phi %struct.Memory* [ %986, %985 ], [ %962, %987 ]
  %995 = sext i32 %992 to i64
  %996 = lshr i64 %995, 32
  store i64 %996, i64* %190, align 8
  %997 = load i32, i32* %ECX.i509, align 4
  %998 = add i64 %993, 3
  store i64 %998, i64* %3, align 8
  %999 = zext i32 %992 to i64
  %1000 = sext i32 %997 to i64
  %1001 = shl nuw i64 %996, 32
  %1002 = or i64 %1001, %999
  %1003 = sdiv i64 %1002, %1000
  %1004 = shl i64 %1003, 32
  %1005 = ashr exact i64 %1004, 32
  %1006 = icmp eq i64 %1003, %1005
  br i1 %1006, label %1009, label %1007

; <label>:1007:                                   ; preds = %routine_idivl__esi.exit420
  %1008 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %998, %struct.Memory* %994)
  %.pre37 = load i32, i32* %ECX.i509, align 4
  %.pre38 = load i64, i64* %3, align 8
  %.pre39 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit415

; <label>:1009:                                   ; preds = %routine_idivl__esi.exit420
  %1010 = srem i64 %1002, %1000
  %1011 = and i64 %1003, 4294967295
  store i64 %1011, i64* %RAX.i43, align 8
  %1012 = and i64 %1010, 4294967295
  store i64 %1012, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1013 = trunc i64 %1003 to i32
  br label %routine_idivl__ecx.exit415

routine_idivl__ecx.exit415:                       ; preds = %1009, %1007
  %1014 = phi i32 [ %.pre39, %1007 ], [ %1013, %1009 ]
  %1015 = phi i64 [ %.pre38, %1007 ], [ %998, %1009 ]
  %1016 = phi i32 [ %.pre37, %1007 ], [ %997, %1009 ]
  %1017 = phi %struct.Memory* [ %1008, %1007 ], [ %994, %1009 ]
  %1018 = zext i32 %1016 to i64
  store i64 %1018, i64* %RSI.i229, align 8
  %1019 = load i64, i64* %RBP.i, align 8
  %1020 = add i64 %1019, -120
  %1021 = add i64 %1015, 5
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  %1023 = load i32, i32* %1022, align 4
  %1024 = zext i32 %1023 to i64
  store i64 %1024, i64* %RDX.i281, align 8
  %1025 = zext i32 %1014 to i64
  store i64 %1025, i64* %RCX.i91, align 8
  %1026 = add i64 %1015, 18794
  %1027 = add i64 %1015, 14
  %1028 = load i64, i64* %6, align 8
  %1029 = add i64 %1028, -8
  %1030 = inttoptr i64 %1029 to i64*
  store i64 %1027, i64* %1030, align 8
  store i64 %1029, i64* %6, align 8
  store i64 %1026, i64* %3, align 8
  %call2_4551cf = tail call %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* nonnull %0, i64 %1026, %struct.Memory* %1017)
  %1031 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i91, align 8
  store i64 4, i64* %RDX.i281, align 8
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -24
  %1034 = add i64 %1031, 14
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i64*
  %1036 = load i64, i64* %1035, align 8
  %1037 = add i64 %1036, 3232
  store i64 %1037, i64* %RDI.i223, align 8
  %1038 = icmp ugt i64 %1036, -3233
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %14, align 1
  %1040 = trunc i64 %1037 to i32
  %1041 = and i32 %1040, 255
  %1042 = tail call i32 @llvm.ctpop.i32(i32 %1041)
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  store i8 %1045, i8* %21, align 1
  %1046 = xor i64 %1037, %1036
  %1047 = lshr i64 %1046, 4
  %1048 = trunc i64 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %27, align 1
  %1050 = icmp eq i64 %1037, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %30, align 1
  %1052 = lshr i64 %1037, 63
  %1053 = trunc i64 %1052 to i8
  store i8 %1053, i8* %33, align 1
  %1054 = lshr i64 %1036, 63
  %1055 = xor i64 %1052, %1054
  %1056 = add nuw nsw i64 %1055, %1052
  %1057 = icmp eq i64 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %39, align 1
  %1059 = add i64 %1032, -4
  %1060 = add i64 %1031, 24
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RSI.i229, align 8
  %1064 = add i64 %1032, -124
  %1065 = load i32, i32* %EAX.i90, align 4
  %1066 = add i64 %1031, 27
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1064 to i32*
  store i32 %1065, i32* %1067, align 4
  %1068 = load i32, i32* %ESI.i162, align 4
  %1069 = zext i32 %1068 to i64
  %1070 = load i64, i64* %3, align 8
  store i64 %1069, i64* %RAX.i43, align 8
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -128
  %1073 = load i32, i32* %EDX.i178, align 4
  %1074 = add i64 %1070, 5
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1072 to i32*
  store i32 %1073, i32* %1075, align 4
  %1076 = load i64, i64* %3, align 8
  %1077 = load i32, i32* %EAX.i90, align 8
  %1078 = sext i32 %1077 to i64
  %1079 = lshr i64 %1078, 32
  store i64 %1079, i64* %190, align 8
  %1080 = load i64, i64* %RBP.i, align 8
  %1081 = add i64 %1080, -128
  %1082 = add i64 %1076, 4
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = zext i32 %1084 to i64
  store i64 %1085, i64* %RSI.i229, align 8
  %1086 = add i64 %1076, 6
  store i64 %1086, i64* %3, align 8
  %1087 = zext i32 %1077 to i64
  %1088 = sext i32 %1084 to i64
  %1089 = shl nuw i64 %1079, 32
  %1090 = or i64 %1089, %1087
  %1091 = sdiv i64 %1090, %1088
  %1092 = shl i64 %1091, 32
  %1093 = ashr exact i64 %1092, 32
  %1094 = icmp eq i64 %1091, %1093
  br i1 %1094, label %1097, label %1095

; <label>:1095:                                   ; preds = %routine_idivl__ecx.exit415
  %1096 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1086, %struct.Memory* %call2_4551cf)
  %.pre40 = load i64, i64* %RBP.i, align 8
  %.pre41 = load i64, i64* %3, align 8
  %.pre42 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__esi.exit372

; <label>:1097:                                   ; preds = %routine_idivl__ecx.exit415
  %1098 = srem i64 %1090, %1088
  %1099 = and i64 %1091, 4294967295
  store i64 %1099, i64* %RAX.i43, align 8
  %1100 = and i64 %1098, 4294967295
  store i64 %1100, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1101 = trunc i64 %1091 to i32
  br label %routine_idivl__esi.exit372

routine_idivl__esi.exit372:                       ; preds = %1097, %1095
  %1102 = phi i32 [ %.pre42, %1095 ], [ %1101, %1097 ]
  %1103 = phi i64 [ %.pre41, %1095 ], [ %1086, %1097 ]
  %1104 = phi i64 [ %.pre40, %1095 ], [ %1080, %1097 ]
  %1105 = phi %struct.Memory* [ %1096, %1095 ], [ %call2_4551cf, %1097 ]
  %1106 = add i64 %1104, -8
  %1107 = add i64 %1103, 4
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  %1109 = load i32, i32* %1108, align 4
  %1110 = zext i32 %1109 to i64
  store i64 %1110, i64* %43, align 8
  %1111 = add i64 %1104, -132
  %1112 = add i64 %1103, 10
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  store i32 %1102, i32* %1113, align 4
  %1114 = load i32, i32* %R8D.i113, align 4
  %1115 = zext i32 %1114 to i64
  %1116 = load i64, i64* %3, align 8
  store i64 %1115, i64* %RAX.i43, align 8
  %1117 = sext i32 %1114 to i64
  %1118 = lshr i64 %1117, 32
  store i64 %1118, i64* %190, align 8
  %1119 = load i32, i32* %ESI.i162, align 4
  %1120 = add i64 %1116, 6
  store i64 %1120, i64* %3, align 8
  %1121 = sext i32 %1119 to i64
  %1122 = shl nuw i64 %1118, 32
  %1123 = or i64 %1122, %1115
  %1124 = sdiv i64 %1123, %1121
  %1125 = shl i64 %1124, 32
  %1126 = ashr exact i64 %1125, 32
  %1127 = icmp eq i64 %1124, %1126
  br i1 %1127, label %1130, label %1128

; <label>:1128:                                   ; preds = %routine_idivl__esi.exit372
  %1129 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1120, %struct.Memory* %1105)
  %.pre43 = load i64, i64* %3, align 8
  %.pre44 = load i32, i32* %EAX.i90, align 8
  br label %routine_idivl__esi.exit358

; <label>:1130:                                   ; preds = %routine_idivl__esi.exit372
  %1131 = srem i64 %1123, %1121
  %1132 = and i64 %1124, 4294967295
  store i64 %1132, i64* %RAX.i43, align 8
  %1133 = and i64 %1131, 4294967295
  store i64 %1133, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1134 = trunc i64 %1124 to i32
  br label %routine_idivl__esi.exit358

routine_idivl__esi.exit358:                       ; preds = %1130, %1128
  %1135 = phi i32 [ %.pre44, %1128 ], [ %1134, %1130 ]
  %1136 = phi i64 [ %.pre43, %1128 ], [ %1120, %1130 ]
  %1137 = phi %struct.Memory* [ %1129, %1128 ], [ %1105, %1130 ]
  %1138 = sext i32 %1135 to i64
  %1139 = lshr i64 %1138, 32
  store i64 %1139, i64* %190, align 8
  %1140 = load i32, i32* %ECX.i509, align 4
  %1141 = add i64 %1136, 3
  store i64 %1141, i64* %3, align 8
  %1142 = zext i32 %1135 to i64
  %1143 = sext i32 %1140 to i64
  %1144 = shl nuw i64 %1139, 32
  %1145 = or i64 %1144, %1142
  %1146 = sdiv i64 %1145, %1143
  %1147 = shl i64 %1146, 32
  %1148 = ashr exact i64 %1147, 32
  %1149 = icmp eq i64 %1146, %1148
  br i1 %1149, label %1152, label %1150

; <label>:1150:                                   ; preds = %routine_idivl__esi.exit358
  %1151 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1141, %struct.Memory* %1137)
  %.pre45 = load i32, i32* %ECX.i509, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit351

; <label>:1152:                                   ; preds = %routine_idivl__esi.exit358
  %1153 = srem i64 %1145, %1143
  %1154 = and i64 %1146, 4294967295
  store i64 %1154, i64* %RAX.i43, align 8
  %1155 = and i64 %1153, 4294967295
  store i64 %1155, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit351

routine_idivl__ecx.exit351:                       ; preds = %1152, %1150
  %1156 = phi i64 [ %.pre46, %1150 ], [ %1141, %1152 ]
  %1157 = phi i32 [ %.pre45, %1150 ], [ %1140, %1152 ]
  %1158 = phi %struct.Memory* [ %1151, %1150 ], [ %1137, %1152 ]
  %1159 = zext i32 %1157 to i64
  store i64 %1159, i64* %RSI.i229, align 8
  %1160 = load i64, i64* %RBP.i, align 8
  %1161 = add i64 %1160, -132
  %1162 = add i64 %1156, 9
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = zext i32 %1164 to i64
  store i64 %1165, i64* %43, align 8
  store i64 %1165, i64* %RDX.i281, align 8
  %1166 = add i64 %1160, -136
  %1167 = add i64 %1156, 18
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to i32*
  store i32 %1157, i32* %1168, align 4
  %1169 = load i32, i32* %EAX.i90, align 4
  %1170 = zext i32 %1169 to i64
  %1171 = load i64, i64* %3, align 8
  store i64 %1170, i64* %RCX.i91, align 8
  %1172 = load i64, i64* %RBP.i, align 8
  %1173 = add i64 %1172, -136
  %1174 = add i64 %1171, 9
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = zext i32 %1176 to i64
  store i64 %1177, i64* %43, align 8
  %1178 = add i64 %1171, 20385
  %1179 = add i64 %1171, 14
  %1180 = load i64, i64* %6, align 8
  %1181 = add i64 %1180, -8
  %1182 = inttoptr i64 %1181 to i64*
  store i64 %1179, i64* %1182, align 8
  store i64 %1181, i64* %6, align 8
  store i64 %1178, i64* %3, align 8
  %call2_455228 = tail call %struct.Memory* @sub_45a1c0.get_mem4Dshort(%struct.State* nonnull %0, i64 %1178, %struct.Memory* %1158)
  %1183 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i91, align 8
  store i64 4, i64* %RDX.i281, align 8
  %1184 = load i64, i64* %RBP.i, align 8
  %1185 = add i64 %1184, -24
  %1186 = add i64 %1183, 14
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i64*
  %1188 = load i64, i64* %1187, align 8
  %1189 = add i64 %1188, 3240
  store i64 %1189, i64* %RDI.i223, align 8
  %1190 = icmp ugt i64 %1188, -3241
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %14, align 1
  %1192 = trunc i64 %1189 to i32
  %1193 = and i32 %1192, 255
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %21, align 1
  %1198 = xor i64 %1189, %1188
  %1199 = lshr i64 %1198, 4
  %1200 = trunc i64 %1199 to i8
  %1201 = and i8 %1200, 1
  store i8 %1201, i8* %27, align 1
  %1202 = icmp eq i64 %1189, 0
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %30, align 1
  %1204 = lshr i64 %1189, 63
  %1205 = trunc i64 %1204 to i8
  store i8 %1205, i8* %33, align 1
  %1206 = lshr i64 %1188, 63
  %1207 = xor i64 %1204, %1206
  %1208 = add nuw nsw i64 %1207, %1204
  %1209 = icmp eq i64 %1208, 2
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %39, align 1
  %1211 = add i64 %1184, -4
  %1212 = add i64 %1183, 24
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %RSI.i229, align 8
  %1216 = add i64 %1184, -140
  %1217 = load i32, i32* %EAX.i90, align 4
  %1218 = add i64 %1183, 30
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1216 to i32*
  store i32 %1217, i32* %1219, align 4
  %1220 = load i32, i32* %ESI.i162, align 4
  %1221 = zext i32 %1220 to i64
  %1222 = load i64, i64* %3, align 8
  store i64 %1221, i64* %RAX.i43, align 8
  %1223 = load i64, i64* %RBP.i, align 8
  %1224 = add i64 %1223, -144
  %1225 = load i32, i32* %EDX.i178, align 4
  %1226 = add i64 %1222, 8
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1224 to i32*
  store i32 %1225, i32* %1227, align 4
  %1228 = load i64, i64* %3, align 8
  %1229 = load i32, i32* %EAX.i90, align 8
  %1230 = sext i32 %1229 to i64
  %1231 = lshr i64 %1230, 32
  store i64 %1231, i64* %190, align 8
  %1232 = load i64, i64* %RBP.i, align 8
  %1233 = add i64 %1232, -144
  %1234 = add i64 %1228, 7
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1233 to i32*
  %1236 = load i32, i32* %1235, align 4
  %1237 = zext i32 %1236 to i64
  store i64 %1237, i64* %RSI.i229, align 8
  %1238 = add i64 %1228, 9
  store i64 %1238, i64* %3, align 8
  %1239 = zext i32 %1229 to i64
  %1240 = sext i32 %1236 to i64
  %1241 = shl nuw i64 %1231, 32
  %1242 = or i64 %1241, %1239
  %1243 = sdiv i64 %1242, %1240
  %1244 = shl i64 %1243, 32
  %1245 = ashr exact i64 %1244, 32
  %1246 = icmp eq i64 %1243, %1245
  br i1 %1246, label %1249, label %1247

; <label>:1247:                                   ; preds = %routine_idivl__ecx.exit351
  %1248 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1238, %struct.Memory* %call2_455228)
  %.pre47 = load i64, i64* %RBP.i, align 8
  %.pre48 = load i64, i64* %3, align 8
  %.pre49 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__esi.exit301

; <label>:1249:                                   ; preds = %routine_idivl__ecx.exit351
  %1250 = srem i64 %1242, %1240
  %1251 = and i64 %1243, 4294967295
  store i64 %1251, i64* %RAX.i43, align 8
  %1252 = and i64 %1250, 4294967295
  store i64 %1252, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1253 = trunc i64 %1243 to i32
  br label %routine_idivl__esi.exit301

routine_idivl__esi.exit301:                       ; preds = %1249, %1247
  %1254 = phi i32 [ %.pre49, %1247 ], [ %1253, %1249 ]
  %1255 = phi i64 [ %.pre48, %1247 ], [ %1238, %1249 ]
  %1256 = phi i64 [ %.pre47, %1247 ], [ %1232, %1249 ]
  %1257 = phi %struct.Memory* [ %1248, %1247 ], [ %call2_455228, %1249 ]
  %1258 = add i64 %1256, -8
  %1259 = add i64 %1255, 4
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %43, align 8
  %1263 = add i64 %1256, -148
  %1264 = add i64 %1255, 10
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  store i32 %1254, i32* %1265, align 4
  %1266 = load i32, i32* %R8D.i113, align 4
  %1267 = zext i32 %1266 to i64
  %1268 = load i64, i64* %3, align 8
  store i64 %1267, i64* %RAX.i43, align 8
  %1269 = sext i32 %1266 to i64
  %1270 = lshr i64 %1269, 32
  store i64 %1270, i64* %190, align 8
  %1271 = load i32, i32* %ESI.i162, align 4
  %1272 = add i64 %1268, 6
  store i64 %1272, i64* %3, align 8
  %1273 = sext i32 %1271 to i64
  %1274 = shl nuw i64 %1270, 32
  %1275 = or i64 %1274, %1267
  %1276 = sdiv i64 %1275, %1273
  %1277 = shl i64 %1276, 32
  %1278 = ashr exact i64 %1277, 32
  %1279 = icmp eq i64 %1276, %1278
  br i1 %1279, label %1282, label %1280

; <label>:1280:                                   ; preds = %routine_idivl__esi.exit301
  %1281 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1272, %struct.Memory* %1257)
  %.pre50 = load i64, i64* %3, align 8
  %.pre51 = load i32, i32* %EAX.i90, align 8
  br label %routine_idivl__esi.exit285

; <label>:1282:                                   ; preds = %routine_idivl__esi.exit301
  %1283 = srem i64 %1275, %1273
  %1284 = and i64 %1276, 4294967295
  store i64 %1284, i64* %RAX.i43, align 8
  %1285 = and i64 %1283, 4294967295
  store i64 %1285, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1286 = trunc i64 %1276 to i32
  br label %routine_idivl__esi.exit285

routine_idivl__esi.exit285:                       ; preds = %1282, %1280
  %1287 = phi i32 [ %.pre51, %1280 ], [ %1286, %1282 ]
  %1288 = phi i64 [ %.pre50, %1280 ], [ %1272, %1282 ]
  %1289 = phi %struct.Memory* [ %1281, %1280 ], [ %1257, %1282 ]
  %1290 = sext i32 %1287 to i64
  %1291 = lshr i64 %1290, 32
  store i64 %1291, i64* %190, align 8
  %1292 = load i32, i32* %ECX.i509, align 4
  %1293 = add i64 %1288, 3
  store i64 %1293, i64* %3, align 8
  %1294 = zext i32 %1287 to i64
  %1295 = sext i32 %1292 to i64
  %1296 = shl nuw i64 %1291, 32
  %1297 = or i64 %1296, %1294
  %1298 = sdiv i64 %1297, %1295
  %1299 = shl i64 %1298, 32
  %1300 = ashr exact i64 %1299, 32
  %1301 = icmp eq i64 %1298, %1300
  br i1 %1301, label %1304, label %1302

; <label>:1302:                                   ; preds = %routine_idivl__esi.exit285
  %1303 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1293, %struct.Memory* %1289)
  %.pre52 = load i64, i64* %3, align 8
  %.pre53 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit278

; <label>:1304:                                   ; preds = %routine_idivl__esi.exit285
  %1305 = srem i64 %1297, %1295
  %1306 = and i64 %1298, 4294967295
  store i64 %1306, i64* %RAX.i43, align 8
  %1307 = and i64 %1305, 4294967295
  store i64 %1307, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1308 = trunc i64 %1298 to i32
  br label %routine_idivl__ecx.exit278

routine_idivl__ecx.exit278:                       ; preds = %1304, %1302
  %1309 = phi i32 [ %.pre53, %1302 ], [ %1308, %1304 ]
  %1310 = phi i64 [ %.pre52, %1302 ], [ %1293, %1304 ]
  %1311 = phi %struct.Memory* [ %1303, %1302 ], [ %1289, %1304 ]
  %1312 = load i64, i64* %RBP.i, align 8
  %1313 = add i64 %1312, -148
  %1314 = add i64 %1310, 6
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RSI.i229, align 8
  %1318 = zext i32 %1309 to i64
  store i64 %1318, i64* %RDX.i281, align 8
  %1319 = add i64 %1310, 17585
  %1320 = add i64 %1310, 13
  %1321 = load i64, i64* %6, align 8
  %1322 = add i64 %1321, -8
  %1323 = inttoptr i64 %1322 to i64*
  store i64 %1320, i64* %1323, align 8
  store i64 %1322, i64* %6, align 8
  store i64 %1319, i64* %3, align 8
  %call2_455277 = tail call %struct.Memory* @sub_459720.get_mem2D(%struct.State* nonnull %0, i64 %1319, %struct.Memory* %1311)
  %1324 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i91, align 8
  store i64 4, i64* %RDX.i281, align 8
  %1325 = load i64, i64* %RBP.i, align 8
  %1326 = add i64 %1325, -24
  %1327 = add i64 %1324, 14
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i64*
  %1329 = load i64, i64* %1328, align 8
  %1330 = add i64 %1329, 4832
  store i64 %1330, i64* %RDI.i223, align 8
  %1331 = icmp ugt i64 %1329, -4833
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %14, align 1
  %1333 = trunc i64 %1330 to i32
  %1334 = and i32 %1333, 255
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  store i8 %1338, i8* %21, align 1
  %1339 = xor i64 %1330, %1329
  %1340 = lshr i64 %1339, 4
  %1341 = trunc i64 %1340 to i8
  %1342 = and i8 %1341, 1
  store i8 %1342, i8* %27, align 1
  %1343 = icmp eq i64 %1330, 0
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %30, align 1
  %1345 = lshr i64 %1330, 63
  %1346 = trunc i64 %1345 to i8
  store i8 %1346, i8* %33, align 1
  %1347 = lshr i64 %1329, 63
  %1348 = xor i64 %1345, %1347
  %1349 = add nuw nsw i64 %1348, %1345
  %1350 = icmp eq i64 %1349, 2
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %39, align 1
  %1352 = add i64 %1325, -4
  %1353 = add i64 %1324, 24
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RSI.i229, align 8
  %1357 = add i64 %1325, -152
  %1358 = load i32, i32* %EAX.i90, align 4
  %1359 = add i64 %1324, 30
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1357 to i32*
  store i32 %1358, i32* %1360, align 4
  %1361 = load i32, i32* %ESI.i162, align 4
  %1362 = zext i32 %1361 to i64
  %1363 = load i64, i64* %3, align 8
  store i64 %1362, i64* %RAX.i43, align 8
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -156
  %1366 = load i32, i32* %EDX.i178, align 4
  %1367 = add i64 %1363, 8
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1365 to i32*
  store i32 %1366, i32* %1368, align 4
  %1369 = load i64, i64* %3, align 8
  %1370 = load i32, i32* %EAX.i90, align 8
  %1371 = sext i32 %1370 to i64
  %1372 = lshr i64 %1371, 32
  store i64 %1372, i64* %190, align 8
  %1373 = load i64, i64* %RBP.i, align 8
  %1374 = add i64 %1373, -156
  %1375 = add i64 %1369, 7
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = zext i32 %1377 to i64
  store i64 %1378, i64* %RSI.i229, align 8
  %1379 = add i64 %1369, 9
  store i64 %1379, i64* %3, align 8
  %1380 = zext i32 %1370 to i64
  %1381 = sext i32 %1377 to i64
  %1382 = shl nuw i64 %1372, 32
  %1383 = or i64 %1382, %1380
  %1384 = sdiv i64 %1383, %1381
  %1385 = shl i64 %1384, 32
  %1386 = ashr exact i64 %1385, 32
  %1387 = icmp eq i64 %1384, %1386
  br i1 %1387, label %1390, label %1388

; <label>:1388:                                   ; preds = %routine_idivl__ecx.exit278
  %1389 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1379, %struct.Memory* %call2_455277)
  %.pre54 = load i64, i64* %RBP.i, align 8
  %.pre55 = load i64, i64* %3, align 8
  %.pre56 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__esi.exit242

; <label>:1390:                                   ; preds = %routine_idivl__ecx.exit278
  %1391 = srem i64 %1383, %1381
  %1392 = and i64 %1384, 4294967295
  store i64 %1392, i64* %RAX.i43, align 8
  %1393 = and i64 %1391, 4294967295
  store i64 %1393, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1394 = trunc i64 %1384 to i32
  br label %routine_idivl__esi.exit242

routine_idivl__esi.exit242:                       ; preds = %1390, %1388
  %1395 = phi i32 [ %.pre56, %1388 ], [ %1394, %1390 ]
  %1396 = phi i64 [ %.pre55, %1388 ], [ %1379, %1390 ]
  %1397 = phi i64 [ %.pre54, %1388 ], [ %1373, %1390 ]
  %1398 = phi %struct.Memory* [ %1389, %1388 ], [ %call2_455277, %1390 ]
  %1399 = add i64 %1397, -8
  %1400 = add i64 %1396, 4
  store i64 %1400, i64* %3, align 8
  %1401 = inttoptr i64 %1399 to i32*
  %1402 = load i32, i32* %1401, align 4
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %43, align 8
  %1404 = add i64 %1397, -160
  %1405 = add i64 %1396, 10
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i32*
  store i32 %1395, i32* %1406, align 4
  %1407 = load i32, i32* %R8D.i113, align 4
  %1408 = zext i32 %1407 to i64
  %1409 = load i64, i64* %3, align 8
  store i64 %1408, i64* %RAX.i43, align 8
  %1410 = sext i32 %1407 to i64
  %1411 = lshr i64 %1410, 32
  store i64 %1411, i64* %190, align 8
  %1412 = load i32, i32* %ESI.i162, align 4
  %1413 = add i64 %1409, 6
  store i64 %1413, i64* %3, align 8
  %1414 = sext i32 %1412 to i64
  %1415 = shl nuw i64 %1411, 32
  %1416 = or i64 %1415, %1408
  %1417 = sdiv i64 %1416, %1414
  %1418 = shl i64 %1417, 32
  %1419 = ashr exact i64 %1418, 32
  %1420 = icmp eq i64 %1417, %1419
  br i1 %1420, label %1423, label %1421

; <label>:1421:                                   ; preds = %routine_idivl__esi.exit242
  %1422 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1413, %struct.Memory* %1398)
  %.pre57 = load i64, i64* %3, align 8
  %.pre58 = load i32, i32* %EAX.i90, align 8
  br label %routine_idivl__esi.exit227

; <label>:1423:                                   ; preds = %routine_idivl__esi.exit242
  %1424 = srem i64 %1416, %1414
  %1425 = and i64 %1417, 4294967295
  store i64 %1425, i64* %RAX.i43, align 8
  %1426 = and i64 %1424, 4294967295
  store i64 %1426, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1427 = trunc i64 %1417 to i32
  br label %routine_idivl__esi.exit227

routine_idivl__esi.exit227:                       ; preds = %1423, %1421
  %1428 = phi i32 [ %.pre58, %1421 ], [ %1427, %1423 ]
  %1429 = phi i64 [ %.pre57, %1421 ], [ %1413, %1423 ]
  %1430 = phi %struct.Memory* [ %1422, %1421 ], [ %1398, %1423 ]
  %1431 = sext i32 %1428 to i64
  %1432 = lshr i64 %1431, 32
  store i64 %1432, i64* %190, align 8
  %1433 = load i32, i32* %ECX.i509, align 4
  %1434 = add i64 %1429, 3
  store i64 %1434, i64* %3, align 8
  %1435 = zext i32 %1428 to i64
  %1436 = sext i32 %1433 to i64
  %1437 = shl nuw i64 %1432, 32
  %1438 = or i64 %1437, %1435
  %1439 = sdiv i64 %1438, %1436
  %1440 = shl i64 %1439, 32
  %1441 = ashr exact i64 %1440, 32
  %1442 = icmp eq i64 %1439, %1441
  br i1 %1442, label %1445, label %1443

; <label>:1443:                                   ; preds = %routine_idivl__esi.exit227
  %1444 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1434, %struct.Memory* %1430)
  %.pre59 = load i32, i32* %ECX.i509, align 4
  %.pre60 = load i64, i64* %3, align 8
  %.pre61 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit220

; <label>:1445:                                   ; preds = %routine_idivl__esi.exit227
  %1446 = srem i64 %1438, %1436
  %1447 = and i64 %1439, 4294967295
  store i64 %1447, i64* %RAX.i43, align 8
  %1448 = and i64 %1446, 4294967295
  store i64 %1448, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1449 = trunc i64 %1439 to i32
  br label %routine_idivl__ecx.exit220

routine_idivl__ecx.exit220:                       ; preds = %1445, %1443
  %1450 = phi i32 [ %.pre61, %1443 ], [ %1449, %1445 ]
  %1451 = phi i64 [ %.pre60, %1443 ], [ %1434, %1445 ]
  %1452 = phi i32 [ %.pre59, %1443 ], [ %1433, %1445 ]
  %1453 = phi %struct.Memory* [ %1444, %1443 ], [ %1430, %1445 ]
  %1454 = zext i32 %1452 to i64
  store i64 %1454, i64* %RSI.i229, align 8
  %1455 = load i64, i64* %RBP.i, align 8
  %1456 = add i64 %1455, -160
  %1457 = add i64 %1451, 8
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i32*
  %1459 = load i32, i32* %1458, align 4
  %1460 = zext i32 %1459 to i64
  store i64 %1460, i64* %RDX.i281, align 8
  %1461 = zext i32 %1450 to i64
  store i64 %1461, i64* %RCX.i91, align 8
  %1462 = add i64 %1451, 20050
  %1463 = add i64 %1451, 17
  %1464 = load i64, i64* %6, align 8
  %1465 = add i64 %1464, -8
  %1466 = inttoptr i64 %1465 to i64*
  store i64 %1463, i64* %1466, align 8
  store i64 %1465, i64* %6, align 8
  store i64 %1462, i64* %3, align 8
  %call2_4552ca = tail call %struct.Memory* @sub_45a110.get_mem3Dshort(%struct.State* nonnull %0, i64 %1462, %struct.Memory* %1453)
  %1467 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i91, align 8
  store i64 4, i64* %RDX.i281, align 8
  %1468 = load i64, i64* %RBP.i, align 8
  %1469 = add i64 %1468, -24
  %1470 = add i64 %1467, 14
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i64*
  %1472 = load i64, i64* %1471, align 8
  %1473 = add i64 %1472, 4840
  store i64 %1473, i64* %RDI.i223, align 8
  %1474 = icmp ugt i64 %1472, -4841
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %14, align 1
  %1476 = trunc i64 %1473 to i32
  %1477 = and i32 %1476, 255
  %1478 = tail call i32 @llvm.ctpop.i32(i32 %1477)
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  store i8 %1481, i8* %21, align 1
  %1482 = xor i64 %1473, %1472
  %1483 = lshr i64 %1482, 4
  %1484 = trunc i64 %1483 to i8
  %1485 = and i8 %1484, 1
  store i8 %1485, i8* %27, align 1
  %1486 = icmp eq i64 %1473, 0
  %1487 = zext i1 %1486 to i8
  store i8 %1487, i8* %30, align 1
  %1488 = lshr i64 %1473, 63
  %1489 = trunc i64 %1488 to i8
  store i8 %1489, i8* %33, align 1
  %1490 = lshr i64 %1472, 63
  %1491 = xor i64 %1488, %1490
  %1492 = add nuw nsw i64 %1491, %1488
  %1493 = icmp eq i64 %1492, 2
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %39, align 1
  %1495 = add i64 %1468, -4
  %1496 = add i64 %1467, 24
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RSI.i229, align 8
  %1500 = add i64 %1468, -164
  %1501 = load i32, i32* %EAX.i90, align 4
  %1502 = add i64 %1467, 30
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1500 to i32*
  store i32 %1501, i32* %1503, align 4
  %1504 = load i32, i32* %ESI.i162, align 4
  %1505 = zext i32 %1504 to i64
  %1506 = load i64, i64* %3, align 8
  store i64 %1505, i64* %RAX.i43, align 8
  %1507 = load i64, i64* %RBP.i, align 8
  %1508 = add i64 %1507, -168
  %1509 = load i32, i32* %EDX.i178, align 4
  %1510 = add i64 %1506, 8
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1508 to i32*
  store i32 %1509, i32* %1511, align 4
  %1512 = load i64, i64* %3, align 8
  %1513 = load i32, i32* %EAX.i90, align 8
  %1514 = sext i32 %1513 to i64
  %1515 = lshr i64 %1514, 32
  store i64 %1515, i64* %190, align 8
  %1516 = load i64, i64* %RBP.i, align 8
  %1517 = add i64 %1516, -168
  %1518 = add i64 %1512, 7
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = zext i32 %1520 to i64
  store i64 %1521, i64* %RSI.i229, align 8
  %1522 = add i64 %1512, 9
  store i64 %1522, i64* %3, align 8
  %1523 = zext i32 %1513 to i64
  %1524 = sext i32 %1520 to i64
  %1525 = shl nuw i64 %1515, 32
  %1526 = or i64 %1525, %1523
  %1527 = sdiv i64 %1526, %1524
  %1528 = shl i64 %1527, 32
  %1529 = ashr exact i64 %1528, 32
  %1530 = icmp eq i64 %1527, %1529
  br i1 %1530, label %1533, label %1531

; <label>:1531:                                   ; preds = %routine_idivl__ecx.exit220
  %1532 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1522, %struct.Memory* %call2_4552ca)
  %.pre62 = load i64, i64* %RBP.i, align 8
  %.pre63 = load i64, i64* %3, align 8
  %.pre64 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__esi.exit176

; <label>:1533:                                   ; preds = %routine_idivl__ecx.exit220
  %1534 = srem i64 %1526, %1524
  %1535 = and i64 %1527, 4294967295
  store i64 %1535, i64* %RAX.i43, align 8
  %1536 = and i64 %1534, 4294967295
  store i64 %1536, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1537 = trunc i64 %1527 to i32
  br label %routine_idivl__esi.exit176

routine_idivl__esi.exit176:                       ; preds = %1533, %1531
  %1538 = phi i32 [ %.pre64, %1531 ], [ %1537, %1533 ]
  %1539 = phi i64 [ %.pre63, %1531 ], [ %1522, %1533 ]
  %1540 = phi i64 [ %.pre62, %1531 ], [ %1516, %1533 ]
  %1541 = phi %struct.Memory* [ %1532, %1531 ], [ %call2_4552ca, %1533 ]
  %1542 = add i64 %1540, -8
  %1543 = add i64 %1539, 4
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1542 to i32*
  %1545 = load i32, i32* %1544, align 4
  %1546 = zext i32 %1545 to i64
  store i64 %1546, i64* %43, align 8
  %1547 = add i64 %1540, -172
  %1548 = add i64 %1539, 10
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  store i32 %1538, i32* %1549, align 4
  %1550 = load i32, i32* %R8D.i113, align 4
  %1551 = zext i32 %1550 to i64
  %1552 = load i64, i64* %3, align 8
  store i64 %1551, i64* %RAX.i43, align 8
  %1553 = sext i32 %1550 to i64
  %1554 = lshr i64 %1553, 32
  store i64 %1554, i64* %190, align 8
  %1555 = load i32, i32* %ESI.i162, align 4
  %1556 = add i64 %1552, 6
  store i64 %1556, i64* %3, align 8
  %1557 = sext i32 %1555 to i64
  %1558 = shl nuw i64 %1554, 32
  %1559 = or i64 %1558, %1551
  %1560 = sdiv i64 %1559, %1557
  %1561 = shl i64 %1560, 32
  %1562 = ashr exact i64 %1561, 32
  %1563 = icmp eq i64 %1560, %1562
  br i1 %1563, label %1566, label %1564

; <label>:1564:                                   ; preds = %routine_idivl__esi.exit176
  %1565 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1556, %struct.Memory* %1541)
  %.pre65 = load i64, i64* %3, align 8
  %.pre66 = load i32, i32* %EAX.i90, align 8
  br label %routine_idivl__esi.exit160

; <label>:1566:                                   ; preds = %routine_idivl__esi.exit176
  %1567 = srem i64 %1559, %1557
  %1568 = and i64 %1560, 4294967295
  store i64 %1568, i64* %RAX.i43, align 8
  %1569 = and i64 %1567, 4294967295
  store i64 %1569, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1570 = trunc i64 %1560 to i32
  br label %routine_idivl__esi.exit160

routine_idivl__esi.exit160:                       ; preds = %1566, %1564
  %1571 = phi i32 [ %.pre66, %1564 ], [ %1570, %1566 ]
  %1572 = phi i64 [ %.pre65, %1564 ], [ %1556, %1566 ]
  %1573 = phi %struct.Memory* [ %1565, %1564 ], [ %1541, %1566 ]
  %1574 = sext i32 %1571 to i64
  %1575 = lshr i64 %1574, 32
  store i64 %1575, i64* %190, align 8
  %1576 = load i32, i32* %ECX.i509, align 4
  %1577 = add i64 %1572, 3
  store i64 %1577, i64* %3, align 8
  %1578 = zext i32 %1571 to i64
  %1579 = sext i32 %1576 to i64
  %1580 = shl nuw i64 %1575, 32
  %1581 = or i64 %1580, %1578
  %1582 = sdiv i64 %1581, %1579
  %1583 = shl i64 %1582, 32
  %1584 = ashr exact i64 %1583, 32
  %1585 = icmp eq i64 %1582, %1584
  br i1 %1585, label %1588, label %1586

; <label>:1586:                                   ; preds = %routine_idivl__esi.exit160
  %1587 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1577, %struct.Memory* %1573)
  %.pre67 = load i32, i32* %ECX.i509, align 4
  %.pre68 = load i64, i64* %3, align 8
  %.pre69 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit154

; <label>:1588:                                   ; preds = %routine_idivl__esi.exit160
  %1589 = srem i64 %1581, %1579
  %1590 = and i64 %1582, 4294967295
  store i64 %1590, i64* %RAX.i43, align 8
  %1591 = and i64 %1589, 4294967295
  store i64 %1591, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1592 = trunc i64 %1582 to i32
  br label %routine_idivl__ecx.exit154

routine_idivl__ecx.exit154:                       ; preds = %1588, %1586
  %1593 = phi i32 [ %.pre69, %1586 ], [ %1592, %1588 ]
  %1594 = phi i64 [ %.pre68, %1586 ], [ %1577, %1588 ]
  %1595 = phi i32 [ %.pre67, %1586 ], [ %1576, %1588 ]
  %1596 = phi %struct.Memory* [ %1587, %1586 ], [ %1573, %1588 ]
  %1597 = zext i32 %1595 to i64
  store i64 %1597, i64* %RSI.i229, align 8
  %1598 = load i64, i64* %RBP.i, align 8
  %1599 = add i64 %1598, -172
  %1600 = add i64 %1594, 8
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = zext i32 %1602 to i64
  store i64 %1603, i64* %RDX.i281, align 8
  %1604 = zext i32 %1593 to i64
  store i64 %1604, i64* %RCX.i91, align 8
  %1605 = add i64 %1594, 18463
  %1606 = add i64 %1594, 17
  %1607 = load i64, i64* %6, align 8
  %1608 = add i64 %1607, -8
  %1609 = inttoptr i64 %1608 to i64*
  store i64 %1606, i64* %1609, align 8
  store i64 %1608, i64* %6, align 8
  store i64 %1605, i64* %3, align 8
  %call2_45531d = tail call %struct.Memory* @sub_459b30.get_mem3Dint64(%struct.State* nonnull %0, i64 %1605, %struct.Memory* %1596)
  %1610 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i91, align 8
  store i64 4, i64* %RDX.i281, align 8
  %1611 = load i64, i64* %RBP.i, align 8
  %1612 = add i64 %1611, -24
  %1613 = add i64 %1610, 14
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to i64*
  %1615 = load i64, i64* %1614, align 8
  %1616 = add i64 %1615, 4848
  store i64 %1616, i64* %RDI.i223, align 8
  %1617 = icmp ugt i64 %1615, -4849
  %1618 = zext i1 %1617 to i8
  store i8 %1618, i8* %14, align 1
  %1619 = trunc i64 %1616 to i32
  %1620 = and i32 %1619, 255
  %1621 = tail call i32 @llvm.ctpop.i32(i32 %1620)
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  %1624 = xor i8 %1623, 1
  store i8 %1624, i8* %21, align 1
  %1625 = xor i64 %1615, 16
  %1626 = xor i64 %1625, %1616
  %1627 = lshr i64 %1626, 4
  %1628 = trunc i64 %1627 to i8
  %1629 = and i8 %1628, 1
  store i8 %1629, i8* %27, align 1
  %1630 = icmp eq i64 %1616, 0
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %30, align 1
  %1632 = lshr i64 %1616, 63
  %1633 = trunc i64 %1632 to i8
  store i8 %1633, i8* %33, align 1
  %1634 = lshr i64 %1615, 63
  %1635 = xor i64 %1632, %1634
  %1636 = add nuw nsw i64 %1635, %1632
  %1637 = icmp eq i64 %1636, 2
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %39, align 1
  %1639 = add i64 %1611, -4
  %1640 = add i64 %1610, 24
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i32*
  %1642 = load i32, i32* %1641, align 4
  %1643 = zext i32 %1642 to i64
  store i64 %1643, i64* %RSI.i229, align 8
  %1644 = add i64 %1611, -176
  %1645 = load i32, i32* %EAX.i90, align 4
  %1646 = add i64 %1610, 30
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1644 to i32*
  store i32 %1645, i32* %1647, align 4
  %1648 = load i32, i32* %ESI.i162, align 4
  %1649 = zext i32 %1648 to i64
  %1650 = load i64, i64* %3, align 8
  store i64 %1649, i64* %RAX.i43, align 8
  %1651 = load i64, i64* %RBP.i, align 8
  %1652 = add i64 %1651, -180
  %1653 = load i32, i32* %EDX.i178, align 4
  %1654 = add i64 %1650, 8
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1652 to i32*
  store i32 %1653, i32* %1655, align 4
  %1656 = load i64, i64* %3, align 8
  %1657 = load i32, i32* %EAX.i90, align 8
  %1658 = sext i32 %1657 to i64
  %1659 = lshr i64 %1658, 32
  store i64 %1659, i64* %190, align 8
  %1660 = load i64, i64* %RBP.i, align 8
  %1661 = add i64 %1660, -180
  %1662 = add i64 %1656, 7
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  %1665 = zext i32 %1664 to i64
  store i64 %1665, i64* %RSI.i229, align 8
  %1666 = add i64 %1656, 9
  store i64 %1666, i64* %3, align 8
  %1667 = zext i32 %1657 to i64
  %1668 = sext i32 %1664 to i64
  %1669 = shl nuw i64 %1659, 32
  %1670 = or i64 %1669, %1667
  %1671 = sdiv i64 %1670, %1668
  %1672 = shl i64 %1671, 32
  %1673 = ashr exact i64 %1672, 32
  %1674 = icmp eq i64 %1671, %1673
  br i1 %1674, label %1677, label %1675

; <label>:1675:                                   ; preds = %routine_idivl__ecx.exit154
  %1676 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1666, %struct.Memory* %call2_45531d)
  %.pre70 = load i64, i64* %RBP.i, align 8
  %.pre71 = load i64, i64* %3, align 8
  %.pre72 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__esi.exit110

; <label>:1677:                                   ; preds = %routine_idivl__ecx.exit154
  %1678 = srem i64 %1670, %1668
  %1679 = and i64 %1671, 4294967295
  store i64 %1679, i64* %RAX.i43, align 8
  %1680 = and i64 %1678, 4294967295
  store i64 %1680, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1681 = trunc i64 %1671 to i32
  br label %routine_idivl__esi.exit110

routine_idivl__esi.exit110:                       ; preds = %1677, %1675
  %1682 = phi i32 [ %.pre72, %1675 ], [ %1681, %1677 ]
  %1683 = phi i64 [ %.pre71, %1675 ], [ %1666, %1677 ]
  %1684 = phi i64 [ %.pre70, %1675 ], [ %1660, %1677 ]
  %1685 = phi %struct.Memory* [ %1676, %1675 ], [ %call2_45531d, %1677 ]
  %1686 = add i64 %1684, -8
  %1687 = add i64 %1683, 4
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i32*
  %1689 = load i32, i32* %1688, align 4
  %1690 = zext i32 %1689 to i64
  store i64 %1690, i64* %43, align 8
  %1691 = add i64 %1684, -184
  %1692 = add i64 %1683, 10
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1691 to i32*
  store i32 %1682, i32* %1693, align 4
  %1694 = load i32, i32* %R8D.i113, align 4
  %1695 = zext i32 %1694 to i64
  %1696 = load i64, i64* %3, align 8
  store i64 %1695, i64* %RAX.i43, align 8
  %1697 = sext i32 %1694 to i64
  %1698 = lshr i64 %1697, 32
  store i64 %1698, i64* %190, align 8
  %1699 = load i32, i32* %ESI.i162, align 4
  %1700 = add i64 %1696, 6
  store i64 %1700, i64* %3, align 8
  %1701 = sext i32 %1699 to i64
  %1702 = shl nuw i64 %1698, 32
  %1703 = or i64 %1702, %1695
  %1704 = sdiv i64 %1703, %1701
  %1705 = shl i64 %1704, 32
  %1706 = ashr exact i64 %1705, 32
  %1707 = icmp eq i64 %1704, %1706
  br i1 %1707, label %1710, label %1708

; <label>:1708:                                   ; preds = %routine_idivl__esi.exit110
  %1709 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1700, %struct.Memory* %1685)
  %.pre73 = load i64, i64* %3, align 8
  %.pre74 = load i32, i32* %EAX.i90, align 8
  br label %routine_idivl__esi.exit95

; <label>:1710:                                   ; preds = %routine_idivl__esi.exit110
  %1711 = srem i64 %1703, %1701
  %1712 = and i64 %1704, 4294967295
  store i64 %1712, i64* %RAX.i43, align 8
  %1713 = and i64 %1711, 4294967295
  store i64 %1713, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1714 = trunc i64 %1704 to i32
  br label %routine_idivl__esi.exit95

routine_idivl__esi.exit95:                        ; preds = %1710, %1708
  %1715 = phi i32 [ %.pre74, %1708 ], [ %1714, %1710 ]
  %1716 = phi i64 [ %.pre73, %1708 ], [ %1700, %1710 ]
  %1717 = phi %struct.Memory* [ %1709, %1708 ], [ %1685, %1710 ]
  %1718 = sext i32 %1715 to i64
  %1719 = lshr i64 %1718, 32
  store i64 %1719, i64* %190, align 8
  %1720 = load i32, i32* %ECX.i509, align 4
  %1721 = add i64 %1716, 3
  store i64 %1721, i64* %3, align 8
  %1722 = zext i32 %1715 to i64
  %1723 = sext i32 %1720 to i64
  %1724 = shl nuw i64 %1719, 32
  %1725 = or i64 %1724, %1722
  %1726 = sdiv i64 %1725, %1723
  %1727 = shl i64 %1726, 32
  %1728 = ashr exact i64 %1727, 32
  %1729 = icmp eq i64 %1726, %1728
  br i1 %1729, label %1732, label %1730

; <label>:1730:                                   ; preds = %routine_idivl__esi.exit95
  %1731 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1721, %struct.Memory* %1717)
  %.pre75 = load i32, i32* %ECX.i509, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit88

; <label>:1732:                                   ; preds = %routine_idivl__esi.exit95
  %1733 = srem i64 %1725, %1723
  %1734 = and i64 %1726, 4294967295
  store i64 %1734, i64* %RAX.i43, align 8
  %1735 = and i64 %1733, 4294967295
  store i64 %1735, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit88

routine_idivl__ecx.exit88:                        ; preds = %1732, %1730
  %1736 = phi i64 [ %.pre76, %1730 ], [ %1721, %1732 ]
  %1737 = phi i32 [ %.pre75, %1730 ], [ %1720, %1732 ]
  %1738 = phi %struct.Memory* [ %1731, %1730 ], [ %1717, %1732 ]
  %1739 = zext i32 %1737 to i64
  store i64 %1739, i64* %RSI.i229, align 8
  %1740 = load i64, i64* %RBP.i, align 8
  %1741 = add i64 %1740, -184
  %1742 = add i64 %1736, 9
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %43, align 8
  store i64 %1745, i64* %RDX.i281, align 8
  %1746 = add i64 %1740, -188
  %1747 = add i64 %1736, 18
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  store i32 %1737, i32* %1748, align 4
  %1749 = load i32, i32* %EAX.i90, align 4
  %1750 = zext i32 %1749 to i64
  %1751 = load i64, i64* %3, align 8
  store i64 %1750, i64* %RCX.i91, align 8
  %1752 = load i64, i64* %RBP.i, align 8
  %1753 = add i64 %1752, -188
  %1754 = add i64 %1751, 9
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = zext i32 %1756 to i64
  store i64 %1757, i64* %43, align 8
  %1758 = add i64 %1751, 20042
  %1759 = add i64 %1751, 14
  %1760 = load i64, i64* %6, align 8
  %1761 = add i64 %1760, -8
  %1762 = inttoptr i64 %1761 to i64*
  store i64 %1759, i64* %1762, align 8
  store i64 %1761, i64* %6, align 8
  store i64 %1758, i64* %3, align 8
  %call2_45537f = tail call %struct.Memory* @sub_45a1c0.get_mem4Dshort(%struct.State* nonnull %0, i64 %1758, %struct.Memory* %1738)
  %1763 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i91, align 8
  store i64 4, i64* %RDX.i281, align 8
  %1764 = load i64, i64* %RBP.i, align 8
  %1765 = add i64 %1764, -24
  %1766 = add i64 %1763, 14
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i64*
  %1768 = load i64, i64* %1767, align 8
  %1769 = add i64 %1768, 4856
  store i64 %1769, i64* %RDI.i223, align 8
  %1770 = icmp ugt i64 %1768, -4857
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %14, align 1
  %1772 = trunc i64 %1769 to i32
  %1773 = and i32 %1772, 255
  %1774 = tail call i32 @llvm.ctpop.i32(i32 %1773)
  %1775 = trunc i32 %1774 to i8
  %1776 = and i8 %1775, 1
  %1777 = xor i8 %1776, 1
  store i8 %1777, i8* %21, align 1
  %1778 = xor i64 %1768, 16
  %1779 = xor i64 %1778, %1769
  %1780 = lshr i64 %1779, 4
  %1781 = trunc i64 %1780 to i8
  %1782 = and i8 %1781, 1
  store i8 %1782, i8* %27, align 1
  %1783 = icmp eq i64 %1769, 0
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %30, align 1
  %1785 = lshr i64 %1769, 63
  %1786 = trunc i64 %1785 to i8
  store i8 %1786, i8* %33, align 1
  %1787 = lshr i64 %1768, 63
  %1788 = xor i64 %1785, %1787
  %1789 = add nuw nsw i64 %1788, %1785
  %1790 = icmp eq i64 %1789, 2
  %1791 = zext i1 %1790 to i8
  store i8 %1791, i8* %39, align 1
  %1792 = add i64 %1764, -4
  %1793 = add i64 %1763, 24
  store i64 %1793, i64* %3, align 8
  %1794 = inttoptr i64 %1792 to i32*
  %1795 = load i32, i32* %1794, align 4
  %1796 = zext i32 %1795 to i64
  store i64 %1796, i64* %RSI.i229, align 8
  %1797 = add i64 %1764, -192
  %1798 = load i32, i32* %EAX.i90, align 4
  %1799 = add i64 %1763, 30
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1797 to i32*
  store i32 %1798, i32* %1800, align 4
  %1801 = load i32, i32* %ESI.i162, align 4
  %1802 = zext i32 %1801 to i64
  %1803 = load i64, i64* %3, align 8
  store i64 %1802, i64* %RAX.i43, align 8
  %1804 = load i64, i64* %RBP.i, align 8
  %1805 = add i64 %1804, -196
  %1806 = load i32, i32* %EDX.i178, align 4
  %1807 = add i64 %1803, 8
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1805 to i32*
  store i32 %1806, i32* %1808, align 4
  %1809 = load i64, i64* %3, align 8
  %1810 = load i32, i32* %EAX.i90, align 8
  %1811 = sext i32 %1810 to i64
  %1812 = lshr i64 %1811, 32
  store i64 %1812, i64* %190, align 8
  %1813 = load i64, i64* %RBP.i, align 8
  %1814 = add i64 %1813, -196
  %1815 = add i64 %1809, 7
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i32*
  %1817 = load i32, i32* %1816, align 4
  %1818 = zext i32 %1817 to i64
  store i64 %1818, i64* %RSI.i229, align 8
  %1819 = add i64 %1809, 9
  store i64 %1819, i64* %3, align 8
  %1820 = zext i32 %1810 to i64
  %1821 = sext i32 %1817 to i64
  %1822 = shl nuw i64 %1812, 32
  %1823 = or i64 %1822, %1820
  %1824 = sdiv i64 %1823, %1821
  %1825 = shl i64 %1824, 32
  %1826 = ashr exact i64 %1825, 32
  %1827 = icmp eq i64 %1824, %1826
  br i1 %1827, label %1830, label %1828

; <label>:1828:                                   ; preds = %routine_idivl__ecx.exit88
  %1829 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1819, %struct.Memory* %call2_45537f)
  %.pre77 = load i64, i64* %RBP.i, align 8
  %.pre78 = load i64, i64* %3, align 8
  %.pre79 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__esi.exit41

; <label>:1830:                                   ; preds = %routine_idivl__ecx.exit88
  %1831 = srem i64 %1823, %1821
  %1832 = and i64 %1824, 4294967295
  store i64 %1832, i64* %RAX.i43, align 8
  %1833 = and i64 %1831, 4294967295
  store i64 %1833, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1834 = trunc i64 %1824 to i32
  br label %routine_idivl__esi.exit41

routine_idivl__esi.exit41:                        ; preds = %1830, %1828
  %1835 = phi i32 [ %.pre79, %1828 ], [ %1834, %1830 ]
  %1836 = phi i64 [ %.pre78, %1828 ], [ %1819, %1830 ]
  %1837 = phi i64 [ %.pre77, %1828 ], [ %1813, %1830 ]
  %1838 = phi %struct.Memory* [ %1829, %1828 ], [ %call2_45537f, %1830 ]
  %1839 = add i64 %1837, -8
  %1840 = add i64 %1836, 4
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i32*
  %1842 = load i32, i32* %1841, align 4
  %1843 = zext i32 %1842 to i64
  store i64 %1843, i64* %43, align 8
  %1844 = add i64 %1837, -200
  %1845 = add i64 %1836, 10
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i32*
  store i32 %1835, i32* %1846, align 4
  %1847 = load i32, i32* %R8D.i113, align 4
  %1848 = zext i32 %1847 to i64
  %1849 = load i64, i64* %3, align 8
  store i64 %1848, i64* %RAX.i43, align 8
  %1850 = sext i32 %1847 to i64
  %1851 = lshr i64 %1850, 32
  store i64 %1851, i64* %190, align 8
  %1852 = load i32, i32* %ESI.i162, align 4
  %1853 = add i64 %1849, 6
  store i64 %1853, i64* %3, align 8
  %1854 = sext i32 %1852 to i64
  %1855 = shl nuw i64 %1851, 32
  %1856 = or i64 %1855, %1848
  %1857 = sdiv i64 %1856, %1854
  %1858 = shl i64 %1857, 32
  %1859 = ashr exact i64 %1858, 32
  %1860 = icmp eq i64 %1857, %1859
  br i1 %1860, label %1863, label %1861

; <label>:1861:                                   ; preds = %routine_idivl__esi.exit41
  %1862 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1853, %struct.Memory* %1838)
  %.pre80 = load i64, i64* %3, align 8
  %.pre81 = load i32, i32* %EAX.i90, align 8
  br label %routine_idivl__esi.exit

; <label>:1863:                                   ; preds = %routine_idivl__esi.exit41
  %1864 = srem i64 %1856, %1854
  %1865 = and i64 %1857, 4294967295
  store i64 %1865, i64* %RAX.i43, align 8
  %1866 = and i64 %1864, 4294967295
  store i64 %1866, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1867 = trunc i64 %1857 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %1863, %1861
  %1868 = phi i32 [ %.pre81, %1861 ], [ %1867, %1863 ]
  %1869 = phi i64 [ %.pre80, %1861 ], [ %1853, %1863 ]
  %1870 = phi %struct.Memory* [ %1862, %1861 ], [ %1838, %1863 ]
  %1871 = sext i32 %1868 to i64
  %1872 = lshr i64 %1871, 32
  store i64 %1872, i64* %190, align 8
  %1873 = load i32, i32* %ECX.i509, align 4
  %1874 = add i64 %1869, 3
  store i64 %1874, i64* %3, align 8
  %1875 = zext i32 %1868 to i64
  %1876 = sext i32 %1873 to i64
  %1877 = shl nuw i64 %1872, 32
  %1878 = or i64 %1877, %1875
  %1879 = sdiv i64 %1878, %1876
  %1880 = shl i64 %1879, 32
  %1881 = ashr exact i64 %1880, 32
  %1882 = icmp eq i64 %1879, %1881
  br i1 %1882, label %1885, label %1883

; <label>:1883:                                   ; preds = %routine_idivl__esi.exit
  %1884 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1874, %struct.Memory* %1870)
  %.pre82 = load i64, i64* %3, align 8
  %.pre83 = load i32, i32* %EAX.i90, align 4
  br label %routine_idivl__ecx.exit

; <label>:1885:                                   ; preds = %routine_idivl__esi.exit
  %1886 = srem i64 %1878, %1876
  %1887 = and i64 %1879, 4294967295
  store i64 %1887, i64* %RAX.i43, align 8
  %1888 = and i64 %1886, 4294967295
  store i64 %1888, i64* %RDX.i281, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1889 = trunc i64 %1879 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1885, %1883
  %1890 = phi i32 [ %.pre83, %1883 ], [ %1889, %1885 ]
  %1891 = phi i64 [ %.pre82, %1883 ], [ %1874, %1885 ]
  %1892 = phi %struct.Memory* [ %1884, %1883 ], [ %1870, %1885 ]
  %1893 = load i64, i64* %RBP.i, align 8
  %1894 = add i64 %1893, -200
  %1895 = add i64 %1891, 6
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  %1898 = zext i32 %1897 to i64
  store i64 %1898, i64* %RSI.i229, align 8
  %1899 = zext i32 %1890 to i64
  store i64 %1899, i64* %RDX.i281, align 8
  %1900 = add i64 %1891, 17242
  %1901 = add i64 %1891, 13
  %1902 = load i64, i64* %6, align 8
  %1903 = add i64 %1902, -8
  %1904 = inttoptr i64 %1903 to i64*
  store i64 %1901, i64* %1904, align 8
  store i64 %1903, i64* %6, align 8
  store i64 %1900, i64* %3, align 8
  %call2_4553ce = tail call %struct.Memory* @sub_459720.get_mem2D(%struct.State* nonnull %0, i64 %1900, %struct.Memory* %1892)
  %1905 = load i64, i64* %RBP.i, align 8
  %1906 = add i64 %1905, -204
  %1907 = load i32, i32* %EAX.i90, align 4
  %1908 = load i64, i64* %3, align 8
  %1909 = add i64 %1908, 6
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1906 to i32*
  store i32 %1907, i32* %1910, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_4553d9

block_.L_4553d9:                                  ; preds = %routine_idivl__ecx.exit, %routine_idivl__ecx.exit548
  %1911 = phi i64 [ %740, %routine_idivl__ecx.exit548 ], [ %.pre84, %routine_idivl__ecx.exit ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_455135, %routine_idivl__ecx.exit548 ], [ %call2_4553ce, %routine_idivl__ecx.exit ]
  %1912 = load i64, i64* %RBP.i, align 8
  %1913 = add i64 %1912, -12
  %1914 = add i64 %1911, 3
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1913 to i32*
  %1916 = load i32, i32* %1915, align 4
  %1917 = zext i32 %1916 to i64
  store i64 %1917, i64* %RAX.i43, align 8
  %1918 = add i64 %1912, -24
  %1919 = add i64 %1911, 7
  store i64 %1919, i64* %3, align 8
  %1920 = inttoptr i64 %1918 to i64*
  %1921 = load i64, i64* %1920, align 8
  store i64 %1921, i64* %RCX.i91, align 8
  %1922 = add i64 %1911, 9
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i32*
  store i32 %1916, i32* %1923, align 4
  %1924 = load i64, i64* %RBP.i, align 8
  %1925 = add i64 %1924, -24
  %1926 = load i64, i64* %3, align 8
  %1927 = add i64 %1926, 4
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1925 to i64*
  %1929 = load i64, i64* %1928, align 8
  store i64 %1929, i64* %RAX.i43, align 8
  %1930 = load i64, i64* %6, align 8
  %1931 = add i64 %1930, 208
  store i64 %1931, i64* %6, align 8
  %1932 = icmp ugt i64 %1930, -209
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %14, align 1
  %1934 = trunc i64 %1931 to i32
  %1935 = and i32 %1934, 255
  %1936 = tail call i32 @llvm.ctpop.i32(i32 %1935)
  %1937 = trunc i32 %1936 to i8
  %1938 = and i8 %1937, 1
  %1939 = xor i8 %1938, 1
  store i8 %1939, i8* %21, align 1
  %1940 = xor i64 %1930, 16
  %1941 = xor i64 %1940, %1931
  %1942 = lshr i64 %1941, 4
  %1943 = trunc i64 %1942 to i8
  %1944 = and i8 %1943, 1
  store i8 %1944, i8* %27, align 1
  %1945 = icmp eq i64 %1931, 0
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %30, align 1
  %1947 = lshr i64 %1931, 63
  %1948 = trunc i64 %1947 to i8
  store i8 %1948, i8* %33, align 1
  %1949 = lshr i64 %1930, 63
  %1950 = xor i64 %1947, %1949
  %1951 = add nuw nsw i64 %1950, %1947
  %1952 = icmp eq i64 %1951, 2
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %39, align 1
  %1954 = add i64 %1926, 12
  store i64 %1954, i64* %3, align 8
  %1955 = add i64 %1930, 216
  %1956 = inttoptr i64 %1931 to i64*
  %1957 = load i64, i64* %1956, align 8
  store i64 %1957, i64* %RBP.i, align 8
  store i64 %1955, i64* %6, align 8
  %1958 = add i64 %1926, 13
  store i64 %1958, i64* %3, align 8
  %1959 = inttoptr i64 %1955 to i64*
  %1960 = load i64, i64* %1959, align 8
  store i64 %1960, i64* %3, align 8
  %1961 = add i64 %1930, 224
  store i64 %1961, i64* %6, align 8
  ret %struct.Memory* %MEMORY.1
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
define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 208
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
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x1310___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4880, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__r8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.calloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = sub i64 %3, %9
  %11 = icmp ult i64 %3, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %10 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %9, %3
  %22 = xor i64 %21, %10
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %10, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %9, 63
  %35 = xor i64 %34, %33
  %36 = xor i64 %30, %33
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_454fff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c1d94___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c1d94_type* @G__0x4c1d94 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__ecx__0x4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__ecx__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x640___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1600
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -1601
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
define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movl__r8d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.get_mem3Dshort(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x648___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1608
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -1609
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_callq_.get_mem3Dint64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x650___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1616
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -1617
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_callq_.get_mem4Dshort(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x658___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1624
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -1625
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.get_mem2D(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x1308___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4872
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -4873
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_je_.L_4553d9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc90___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3216
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -3217
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
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
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
define %struct.Memory* @routine_addq__0xc98___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3224
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -3225
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
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_addq__0xca0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3232
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -3233
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
define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x80__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xca8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3240
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -3241
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
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x90__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_addq__0x12e0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4832
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -4833
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
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_addq__0x12e8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4840
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -4841
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
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_addq__0x12f0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4848
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -4849
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
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
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
define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x12f8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4856
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -4857
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
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
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
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
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
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -209
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
