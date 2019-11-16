; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fc9d_type = type <{ [8 x i8] }>
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
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fc9d = global %G__0x57fc9d_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_413c20.chainlinks2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4153e0.same_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @do_find_break_chain2_efficient_moves(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -760
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 752
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
  %RAX.i863 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 3, i64* %RAX.i863, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %41 to i32*
  %42 = add i64 %7, -12
  %43 = load i32, i32* %EDI.i, align 4
  %44 = add i64 %10, 18
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i32*
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i858 = bitcast %union.anon* %46 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -8
  %49 = load i32, i32* %ESI.i858, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %RDX.i855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -16
  %55 = load i64, i64* %RDX.i855, align 8
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58, align 8
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -4
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %60 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %RDX.i855, align 8
  %RSI.i850 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %66 = add nsw i64 %65, 12099168
  %67 = add i64 %61, 12
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i8*
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  store i64 %70, i64* %RSI.i850, align 8
  %71 = add i64 %59, -20
  %72 = zext i8 %69 to i32
  %73 = add i64 %61, 15
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* %RAX.i863, align 8
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -20
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 3
  store i64 %79, i64* %3, align 8
  %80 = trunc i64 %75 to i32
  %81 = inttoptr i64 %77 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %80, %82
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RAX.i863, align 8
  %85 = icmp ult i32 %80, %82
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %14, align 1
  %87 = and i32 %83, 255
  %88 = tail call i32 @llvm.ctpop.i32(i32 %87)
  %89 = trunc i32 %88 to i8
  %90 = and i8 %89, 1
  %91 = xor i8 %90, 1
  store i8 %91, i8* %21, align 1
  %92 = xor i32 %82, %80
  %93 = xor i32 %92, %83
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %27, align 1
  %97 = icmp eq i32 %83, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %30, align 1
  %99 = lshr i32 %83, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %33, align 1
  %101 = lshr i32 %80, 31
  %102 = lshr i32 %82, 31
  %103 = xor i32 %102, %101
  %104 = xor i32 %99, %101
  %105 = add nuw nsw i32 %104, %103
  %106 = icmp eq i32 %105, 2
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %39, align 1
  %EAX.i840 = bitcast %union.anon* %40 to i32*
  %108 = add i64 %76, -24
  %109 = add i64 %78, 6
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i32*
  store i32 %83, i32* %110, align 4
  %RDI.i837 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -8
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 3
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %112 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = zext i32 %116 to i64
  store i64 %117, i64* %RDI.i837, align 8
  %118 = add i64 %113, -358367
  %119 = add i64 %113, 8
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, -8
  %122 = inttoptr i64 %121 to i64*
  store i64 %119, i64* %122, align 8
  store i64 %121, i64* %6, align 8
  store i64 %118, i64* %3, align 8
  %call2_466f62 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %118, %struct.Memory* %2)
  %123 = load i32, i32* %EAX.i840, align 4
  %124 = load i64, i64* %3, align 8
  %125 = add i32 %123, -2
  %126 = icmp ult i32 %123, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %14, align 1
  %128 = and i32 %125, 255
  %129 = tail call i32 @llvm.ctpop.i32(i32 %128)
  %130 = trunc i32 %129 to i8
  %131 = and i8 %130, 1
  %132 = xor i8 %131, 1
  store i8 %132, i8* %21, align 1
  %133 = xor i32 %125, %123
  %134 = lshr i32 %133, 4
  %135 = trunc i32 %134 to i8
  %136 = and i8 %135, 1
  store i8 %136, i8* %27, align 1
  %137 = icmp eq i32 %125, 0
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %30, align 1
  %139 = lshr i32 %125, 31
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %33, align 1
  %141 = lshr i32 %123, 31
  %142 = xor i32 %139, %141
  %143 = add nuw nsw i32 %142, %141
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %39, align 1
  %.v76 = select i1 %137, i64 9, i64 14
  %146 = add i64 %124, %.v76
  store i64 %146, i64* %3, align 8
  br i1 %137, label %block_466f70, label %block_.L_466f75

block_466f70:                                     ; preds = %entry
  %147 = add i64 %146, 118
  store i64 %147, i64* %3, align 8
  br label %block_.L_466fe6

block_.L_466f75:                                  ; preds = %entry
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i837, align 8
  store i64 3778, i64* %RSI.i850, align 8
  store i64 ptrtoint (%G__0x57fc9d_type* @G__0x57fc9d to i64), i64* %RDX.i855, align 8
  store i64 20, i64* %RAX.i863, align 8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i821 = getelementptr inbounds %union.anon, %union.anon* %148, i64 0, i32 0
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -8
  %151 = add i64 %146, 33
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i32*
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %RCX.i821, align 8
  %155 = add i64 %149, -712
  %156 = add i64 %146, 39
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i32*
  store i32 20, i32* %157, align 4
  %ECX.i815 = bitcast %union.anon* %148 to i32*
  %158 = load i32, i32* %ECX.i815, align 4
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* %3, align 8
  store i64 %159, i64* %RAX.i863, align 8
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -720
  %163 = load i64, i64* %RDX.i855, align 8
  %164 = add i64 %160, 9
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %162 to i64*
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %3, align 8
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %168 = load i32, i32* %EAX.i840, align 8
  %169 = sext i32 %168 to i64
  %170 = lshr i64 %169, 32
  store i64 %170, i64* %167, align 8
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -712
  %173 = add i64 %166, 7
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RCX.i821, align 8
  %177 = add i64 %166, 9
  store i64 %177, i64* %3, align 8
  %178 = zext i32 %168 to i64
  %179 = sext i32 %175 to i64
  %180 = shl nuw i64 %170, 32
  %181 = or i64 %180, %178
  %182 = sdiv i64 %181, %179
  %183 = shl i64 %182, 32
  %184 = ashr exact i64 %183, 32
  %185 = icmp eq i64 %182, %184
  br i1 %185, label %188, label %186

; <label>:186:                                    ; preds = %block_.L_466f75
  %187 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %177, %struct.Memory* %call2_466f62)
  %.pre = load i64, i64* %RAX.i863, align 8
  %.pre50 = load i64, i64* %3, align 8
  %.pre51 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit804

; <label>:188:                                    ; preds = %block_.L_466f75
  %189 = srem i64 %181, %179
  %190 = and i64 %182, 4294967295
  store i64 %190, i64* %RAX.i863, align 8
  %191 = and i64 %189, 4294967295
  store i64 %191, i64* %RDX.i855, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit804

routine_idivl__ecx.exit804:                       ; preds = %188, %186
  %192 = phi i64 [ %.pre51, %186 ], [ %171, %188 ]
  %193 = phi i64 [ %.pre50, %186 ], [ %177, %188 ]
  %194 = phi i64 [ %.pre, %186 ], [ %190, %188 ]
  %195 = phi %struct.Memory* [ %187, %186 ], [ %call2_466f62, %188 ]
  %196 = trunc i64 %194 to i32
  %197 = add i32 %196, -1
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %RAX.i863, align 8
  %199 = icmp eq i32 %196, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %14, align 1
  %201 = and i32 %197, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %21, align 1
  %206 = xor i32 %197, %196
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %27, align 1
  %210 = icmp eq i32 %197, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %30, align 1
  %212 = lshr i32 %197, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %33, align 1
  %214 = lshr i32 %196, 31
  %215 = xor i32 %212, %214
  %216 = add nuw nsw i32 %215, %214
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %39, align 1
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i798 = bitcast %union.anon* %219 to i32*
  %220 = getelementptr inbounds %union.anon, %union.anon* %219, i64 0, i32 0
  %221 = add i64 %192, -8
  %222 = add i64 %193, 7
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = zext i32 %224 to i64
  store i64 %225, i64* %220, align 8
  %226 = add i64 %192, -724
  %227 = add i64 %193, 13
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %226 to i32*
  store i32 %197, i32* %228, align 4
  %229 = load i32, i32* %R8D.i798, align 4
  %230 = zext i32 %229 to i64
  %231 = load i64, i64* %3, align 8
  store i64 %230, i64* %RAX.i863, align 8
  %232 = sext i32 %229 to i64
  %233 = lshr i64 %232, 32
  store i64 %233, i64* %167, align 8
  %234 = load i32, i32* %ECX.i815, align 4
  %235 = add i64 %231, 6
  store i64 %235, i64* %3, align 8
  %236 = sext i32 %234 to i64
  %237 = shl nuw i64 %233, 32
  %238 = or i64 %237, %230
  %239 = sdiv i64 %238, %236
  %240 = shl i64 %239, 32
  %241 = ashr exact i64 %240, 32
  %242 = icmp eq i64 %239, %241
  br i1 %242, label %245, label %243

; <label>:243:                                    ; preds = %routine_idivl__ecx.exit804
  %244 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %235, %struct.Memory* %195)
  %.pre52 = load i64, i64* %RDX.i855, align 8
  %.pre53 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:245:                                    ; preds = %routine_idivl__ecx.exit804
  %246 = srem i64 %238, %236
  %247 = and i64 %239, 4294967295
  store i64 %247, i64* %RAX.i863, align 8
  %248 = and i64 %246, 4294967295
  store i64 %248, i64* %RDX.i855, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %245, %243
  %249 = phi i64 [ %.pre53, %243 ], [ %235, %245 ]
  %250 = phi i64 [ %.pre52, %243 ], [ %248, %245 ]
  %251 = phi %struct.Memory* [ %244, %243 ], [ %195, %245 ]
  %252 = trunc i64 %250 to i32
  %253 = add i32 %252, -1
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RDX.i855, align 8
  %255 = icmp eq i32 %252, 0
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %14, align 1
  %257 = and i32 %253, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %21, align 1
  %262 = xor i32 %253, %252
  %263 = lshr i32 %262, 4
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %27, align 1
  %266 = icmp eq i32 %253, 0
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %30, align 1
  %268 = lshr i32 %253, 31
  %269 = trunc i32 %268 to i8
  store i8 %269, i8* %33, align 1
  %270 = lshr i32 %252, 31
  %271 = xor i32 %268, %270
  %272 = add nuw nsw i32 %271, %270
  %273 = icmp eq i32 %272, 2
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %39, align 1
  %R9.i782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -720
  %277 = add i64 %249, 10
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i64*
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %R9.i782, align 8
  %280 = add i64 %275, -728
  %281 = add i64 %249, 16
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  store i32 %253, i32* %282, align 4
  %283 = load i64, i64* %R9.i782, align 8
  %284 = load i64, i64* %3, align 8
  store i64 %283, i64* %RDX.i855, align 8
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -724
  %287 = add i64 %284, 9
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RCX.i821, align 8
  %291 = add i64 %285, -728
  %292 = add i64 %284, 16
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %220, align 8
  %296 = add i64 %284, -85825
  %297 = add i64 %284, 21
  %298 = load i64, i64* %6, align 8
  %299 = add i64 %298, -8
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  store i64 %299, i64* %6, align 8
  store i64 %296, i64* %3, align 8
  %call2_466fe1 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %296, %struct.Memory* %251)
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_466fe6

block_.L_466fe6:                                  ; preds = %routine_idivl__ecx.exit, %block_466f70
  %301 = phi i64 [ %.pre54, %routine_idivl__ecx.exit ], [ %147, %block_466f70 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_466fe1, %routine_idivl__ecx.exit ], [ %call2_466f62, %block_466f70 ]
  store i64 1, i64* %RDX.i855, align 8
  %302 = load i64, i64* %RBP.i, align 8
  %303 = add i64 %302, -672
  store i64 %303, i64* %RSI.i850, align 8
  %304 = add i64 %302, -8
  %305 = add i64 %301, 15
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RDI.i837, align 8
  %309 = add i64 %301, -340934
  %310 = add i64 %301, 20
  %311 = load i64, i64* %6, align 8
  %312 = add i64 %311, -8
  %313 = inttoptr i64 %312 to i64*
  store i64 %310, i64* %313, align 8
  store i64 %312, i64* %6, align 8
  store i64 %309, i64* %3, align 8
  %call2_466ff5 = tail call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* nonnull %0, i64 %309, %struct.Memory* %MEMORY.0)
  %314 = load i64, i64* %RBP.i, align 8
  %315 = add i64 %314, -32
  %316 = load i32, i32* %EAX.i840, align 4
  %317 = load i64, i64* %3, align 8
  %318 = add i64 %317, 3
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %315 to i32*
  store i32 %316, i32* %319, align 4
  %320 = load i64, i64* %RBP.i, align 8
  %321 = add i64 %320, -32
  %322 = load i64, i64* %3, align 8
  %323 = add i64 %322, 4
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %321 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = add i32 %325, -1
  %327 = icmp eq i32 %325, 0
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %14, align 1
  %329 = and i32 %326, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %21, align 1
  %334 = xor i32 %326, %325
  %335 = lshr i32 %334, 4
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  store i8 %337, i8* %27, align 1
  %338 = icmp eq i32 %326, 0
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %30, align 1
  %340 = lshr i32 %326, 31
  %341 = trunc i32 %340 to i8
  store i8 %341, i8* %33, align 1
  %342 = lshr i32 %325, 31
  %343 = xor i32 %340, %342
  %344 = add nuw nsw i32 %343, %342
  %345 = icmp eq i32 %344, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %39, align 1
  %.v77 = select i1 %338, i64 10, i64 323
  %347 = add i64 %322, %.v77
  store i64 %347, i64* %3, align 8
  br i1 %338, label %block_467007, label %block_.L_467140

block_467007:                                     ; preds = %block_.L_466fe6
  %348 = add i64 %320, -4
  %349 = add i64 %347, 3
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RDI.i837, align 8
  %353 = add i64 %347, -358535
  %354 = add i64 %347, 8
  %355 = load i64, i64* %6, align 8
  %356 = add i64 %355, -8
  %357 = inttoptr i64 %356 to i64*
  store i64 %354, i64* %357, align 8
  store i64 %356, i64* %6, align 8
  store i64 %353, i64* %3, align 8
  %call2_46700a = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %353, %struct.Memory* %call2_466ff5)
  %358 = load i32, i32* %EAX.i840, align 4
  %359 = load i64, i64* %3, align 8
  %360 = add i32 %358, -2
  %361 = icmp ult i32 %358, 2
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %14, align 1
  %363 = and i32 %360, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %21, align 1
  %368 = xor i32 %360, %358
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %27, align 1
  %372 = icmp eq i32 %360, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %30, align 1
  %374 = lshr i32 %360, 31
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %33, align 1
  %376 = lshr i32 %358, 31
  %377 = xor i32 %374, %376
  %378 = add nuw nsw i32 %377, %376
  %379 = icmp eq i32 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %39, align 1
  %381 = icmp ne i8 %375, 0
  %382 = xor i1 %381, %379
  %383 = or i1 %372, %382
  %.v106 = select i1 %383, i64 305, i64 9
  %384 = add i64 %359, %.v106
  store i64 %384, i64* %3, align 8
  br i1 %383, label %block_467007.block_.L_467140_crit_edge, label %block_467018

block_467007.block_.L_467140_crit_edge:           ; preds = %block_467007
  %.pre58 = load i64, i64* %RBP.i, align 8
  br label %block_.L_467140

block_467018:                                     ; preds = %block_467007
  store i64 1, i64* %RSI.i850, align 8
  %385 = load i64, i64* %RBP.i, align 8
  %386 = add i64 %385, -692
  store i64 %386, i64* %RDX.i855, align 8
  %387 = add i64 %385, -672
  %388 = add i64 %384, 18
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  %390 = load i32, i32* %389, align 4
  %391 = zext i32 %390 to i64
  store i64 %391, i64* %RDI.i837, align 8
  %392 = add i64 %384, -358360
  %393 = add i64 %384, 23
  %394 = load i64, i64* %6, align 8
  %395 = add i64 %394, -8
  %396 = inttoptr i64 %395 to i64*
  store i64 %393, i64* %396, align 8
  store i64 %395, i64* %6, align 8
  store i64 %392, i64* %3, align 8
  %call2_46702a = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %392, %struct.Memory* %call2_46700a)
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -692
  %399 = load i64, i64* %3, align 8
  %400 = add i64 %399, 6
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %398 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RDI.i837, align 8
  %404 = add i64 %397, -20
  %405 = add i64 %399, 9
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RSI.i850, align 8
  %409 = add i64 %397, -732
  %410 = load i32, i32* %EAX.i840, align 4
  %411 = add i64 %399, 15
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %409 to i32*
  store i32 %410, i32* %412, align 4
  %413 = load i64, i64* %3, align 8
  %414 = add i64 %413, -339358
  %415 = add i64 %413, 5
  %416 = load i64, i64* %6, align 8
  %417 = add i64 %416, -8
  %418 = inttoptr i64 %417 to i64*
  store i64 %415, i64* %418, align 8
  store i64 %417, i64* %6, align 8
  store i64 %414, i64* %3, align 8
  %call2_46703e = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %414, %struct.Memory* %call2_46702a)
  %419 = load i32, i32* %EAX.i840, align 4
  %420 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %421 = and i32 %419, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %426 = icmp eq i32 %419, 0
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %30, align 1
  %428 = lshr i32 %419, 31
  %429 = trunc i32 %428 to i8
  store i8 %429, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v107 = select i1 %426, i64 9, i64 248
  %430 = add i64 %420, %.v107
  store i64 %430, i64* %3, align 8
  br i1 %426, label %block_46704c, label %block_.L_46713b

block_46704c:                                     ; preds = %block_467018
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -696
  %433 = add i64 %430, 15
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  store i32 0, i32* %434, align 4
  %RCX.i717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_46705b

block_.L_46705b:                                  ; preds = %block_.L_4670ac, %block_46704c
  %435 = phi i64 [ %568, %block_.L_4670ac ], [ %.pre55, %block_46704c ]
  %436 = load i64, i64* %RBP.i, align 8
  %437 = add i64 %436, -696
  %438 = add i64 %435, 6
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i32*
  %440 = load i32, i32* %439, align 4
  %441 = zext i32 %440 to i64
  store i64 %441, i64* %RAX.i863, align 8
  %442 = add i64 %436, -16
  %443 = add i64 %435, 10
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i64*
  %445 = load i64, i64* %444, align 8
  store i64 %445, i64* %RCX.i717, align 8
  %446 = add i64 %445, 400
  %447 = add i64 %435, 16
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = sub i32 %440, %449
  %451 = icmp ult i32 %440, %449
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %14, align 1
  %453 = and i32 %450, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %21, align 1
  %458 = xor i32 %449, %440
  %459 = xor i32 %458, %450
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %27, align 1
  %463 = icmp eq i32 %450, 0
  %464 = zext i1 %463 to i8
  store i8 %464, i8* %30, align 1
  %465 = lshr i32 %450, 31
  %466 = trunc i32 %465 to i8
  store i8 %466, i8* %33, align 1
  %467 = lshr i32 %440, 31
  %468 = lshr i32 %449, 31
  %469 = xor i32 %468, %467
  %470 = xor i32 %465, %467
  %471 = add nuw nsw i32 %470, %469
  %472 = icmp eq i32 %471, 2
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %39, align 1
  %474 = icmp ne i8 %466, 0
  %475 = xor i1 %474, %472
  %.v71 = select i1 %475, i64 22, i64 106
  %476 = add i64 %435, %.v71
  store i64 %476, i64* %3, align 8
  br i1 %475, label %block_467071, label %block_.L_4670c5.loopexit

block_467071:                                     ; preds = %block_.L_46705b
  %477 = add i64 %476, 4
  store i64 %477, i64* %3, align 8
  %478 = load i64, i64* %444, align 8
  store i64 %478, i64* %RAX.i863, align 8
  %479 = add i64 %476, 11
  store i64 %479, i64* %3, align 8
  %480 = load i32, i32* %439, align 4
  %481 = sext i32 %480 to i64
  store i64 %481, i64* %RCX.i717, align 8
  %482 = shl nsw i64 %481, 2
  %483 = add i64 %482, %478
  %484 = add i64 %476, 14
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %483 to i32*
  %486 = load i32, i32* %485, align 4
  %487 = zext i32 %486 to i64
  store i64 %487, i64* %RDX.i855, align 8
  %488 = add i64 %436, -692
  %489 = add i64 %476, 20
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i32*
  %491 = load i32, i32* %490, align 4
  %492 = sub i32 %486, %491
  %493 = icmp ult i32 %486, %491
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %14, align 1
  %495 = and i32 %492, 255
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %21, align 1
  %500 = xor i32 %491, %486
  %501 = xor i32 %500, %492
  %502 = lshr i32 %501, 4
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  store i8 %504, i8* %27, align 1
  %505 = icmp eq i32 %492, 0
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %30, align 1
  %507 = lshr i32 %492, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %33, align 1
  %509 = lshr i32 %486, 31
  %510 = lshr i32 %491, 31
  %511 = xor i32 %510, %509
  %512 = xor i32 %507, %509
  %513 = add nuw nsw i32 %512, %511
  %514 = icmp eq i32 %513, 2
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %39, align 1
  %.v = select i1 %505, i64 26, i64 59
  %516 = add i64 %476, %.v
  store i64 %516, i64* %3, align 8
  br i1 %505, label %block_46708b, label %block_.L_4670ac

block_46708b:                                     ; preds = %block_467071
  %517 = add i64 %516, 4
  store i64 %517, i64* %3, align 8
  %518 = load i64, i64* %444, align 8
  store i64 %518, i64* %RAX.i863, align 8
  %519 = add i64 %516, 11
  store i64 %519, i64* %3, align 8
  %520 = load i32, i32* %439, align 4
  %521 = sext i32 %520 to i64
  store i64 %521, i64* %RCX.i717, align 8
  %522 = shl nsw i64 %521, 2
  %523 = add i64 %518, 200
  %524 = add i64 %523, %522
  %525 = add i64 %516, 18
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %RDX.i855, align 8
  store i8 0, i8* %14, align 1
  %529 = and i32 %527, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %534 = icmp eq i32 %527, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %30, align 1
  %536 = lshr i32 %527, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %538 = add i64 %516, 28
  store i64 %538, i64* %3, align 8
  store i32 %527, i32* %526, align 4
  %539 = load i64, i64* %3, align 8
  %540 = add i64 %539, 30
  store i64 %540, i64* %3, align 8
  %.pre56 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4670c5

block_.L_4670ac:                                  ; preds = %block_467071
  %541 = add i64 %516, 11
  store i64 %541, i64* %3, align 8
  %542 = load i32, i32* %439, align 4
  %543 = add i32 %542, 1
  %544 = zext i32 %543 to i64
  store i64 %544, i64* %RAX.i863, align 8
  %545 = icmp eq i32 %542, -1
  %546 = icmp eq i32 %543, 0
  %547 = or i1 %545, %546
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %14, align 1
  %549 = and i32 %543, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %21, align 1
  %554 = xor i32 %543, %542
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  store i8 %557, i8* %27, align 1
  %558 = zext i1 %546 to i8
  store i8 %558, i8* %30, align 1
  %559 = lshr i32 %543, 31
  %560 = trunc i32 %559 to i8
  store i8 %560, i8* %33, align 1
  %561 = lshr i32 %542, 31
  %562 = xor i32 %559, %561
  %563 = add nuw nsw i32 %562, %559
  %564 = icmp eq i32 %563, 2
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %39, align 1
  %566 = add i64 %516, 20
  store i64 %566, i64* %3, align 8
  store i32 %543, i32* %439, align 4
  %567 = load i64, i64* %3, align 8
  %568 = add i64 %567, -101
  store i64 %568, i64* %3, align 8
  br label %block_.L_46705b

block_.L_4670c5.loopexit:                         ; preds = %block_.L_46705b
  br label %block_.L_4670c5

block_.L_4670c5:                                  ; preds = %block_.L_4670c5.loopexit, %block_46708b
  %569 = phi i64 [ %540, %block_46708b ], [ %476, %block_.L_4670c5.loopexit ]
  %570 = phi i64 [ %.pre56, %block_46708b ], [ %436, %block_.L_4670c5.loopexit ]
  %571 = add i64 %570, -696
  %572 = add i64 %569, 6
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RAX.i863, align 8
  %576 = add i64 %570, -16
  %577 = add i64 %569, 10
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %RCX.i717, align 8
  %580 = add i64 %579, 400
  %581 = add i64 %569, 16
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i32*
  %583 = load i32, i32* %582, align 4
  %584 = sub i32 %574, %583
  %585 = icmp ult i32 %574, %583
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %14, align 1
  %587 = and i32 %584, 255
  %588 = tail call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  store i8 %591, i8* %21, align 1
  %592 = xor i32 %583, %574
  %593 = xor i32 %592, %584
  %594 = lshr i32 %593, 4
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  store i8 %596, i8* %27, align 1
  %597 = icmp eq i32 %584, 0
  %598 = zext i1 %597 to i8
  store i8 %598, i8* %30, align 1
  %599 = lshr i32 %584, 31
  %600 = trunc i32 %599 to i8
  store i8 %600, i8* %33, align 1
  %601 = lshr i32 %574, 31
  %602 = lshr i32 %583, 31
  %603 = xor i32 %602, %601
  %604 = xor i32 %599, %601
  %605 = add nuw nsw i32 %604, %603
  %606 = icmp eq i32 %605, 2
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %39, align 1
  %.v108 = select i1 %597, i64 22, i64 108
  %608 = add i64 %569, %.v108
  store i64 %608, i64* %3, align 8
  br i1 %597, label %block_4670db, label %block_.L_467131

block_4670db:                                     ; preds = %block_.L_4670c5
  %609 = add i64 %608, 4
  store i64 %609, i64* %3, align 8
  %610 = load i64, i64* %578, align 8
  store i64 %610, i64* %RAX.i863, align 8
  %611 = add i64 %610, 400
  %612 = add i64 %608, 11
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = add i32 %614, -50
  %616 = icmp ult i32 %614, 50
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %14, align 1
  %618 = and i32 %615, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %21, align 1
  %623 = xor i32 %614, 16
  %624 = xor i32 %623, %615
  %625 = lshr i32 %624, 4
  %626 = trunc i32 %625 to i8
  %627 = and i8 %626, 1
  store i8 %627, i8* %27, align 1
  %628 = icmp eq i32 %615, 0
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %30, align 1
  %630 = lshr i32 %615, 31
  %631 = trunc i32 %630 to i8
  store i8 %631, i8* %33, align 1
  %632 = lshr i32 %614, 31
  %633 = xor i32 %630, %632
  %634 = add nuw nsw i32 %633, %632
  %635 = icmp eq i32 %634, 2
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %39, align 1
  %637 = icmp ne i8 %631, 0
  %638 = xor i1 %637, %635
  %.v109 = select i1 %638, i64 17, i64 86
  %639 = add i64 %608, %.v109
  store i64 %639, i64* %3, align 8
  br i1 %638, label %block_4670ec, label %block_.L_467131

block_4670ec:                                     ; preds = %block_4670db
  %640 = add i64 %570, -692
  %641 = add i64 %639, 6
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RAX.i863, align 8
  %645 = add i64 %639, 10
  store i64 %645, i64* %3, align 8
  %646 = load i64, i64* %578, align 8
  store i64 %646, i64* %RCX.i717, align 8
  %647 = add i64 %639, 14
  store i64 %647, i64* %3, align 8
  %648 = load i64, i64* %578, align 8
  store i64 %648, i64* %RDX.i855, align 8
  %649 = add i64 %648, 400
  %650 = add i64 %639, 21
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = sext i32 %652 to i64
  store i64 %653, i64* %RDX.i855, align 8
  %654 = shl nsw i64 %653, 2
  %655 = add i64 %654, %646
  %656 = add i64 %639, 24
  store i64 %656, i64* %3, align 8
  %657 = inttoptr i64 %655 to i32*
  store i32 %643, i32* %657, align 4
  %658 = load i64, i64* %RBP.i, align 8
  %659 = add i64 %658, -16
  %660 = load i64, i64* %3, align 8
  %661 = add i64 %660, 4
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %659 to i64*
  %663 = load i64, i64* %662, align 8
  store i64 %663, i64* %RCX.i717, align 8
  %664 = add i64 %660, 8
  store i64 %664, i64* %3, align 8
  %665 = load i64, i64* %662, align 8
  store i64 %665, i64* %RDX.i855, align 8
  %666 = add i64 %665, 400
  %667 = add i64 %660, 15
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = sext i32 %669 to i64
  store i64 %670, i64* %RDX.i855, align 8
  %671 = shl nsw i64 %670, 2
  %672 = add i64 %663, 200
  %673 = add i64 %672, %671
  %674 = add i64 %660, 26
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  store i32 0, i32* %675, align 4
  %676 = load i64, i64* %RBP.i, align 8
  %677 = add i64 %676, -16
  %678 = load i64, i64* %3, align 8
  %679 = add i64 %678, 4
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %677 to i64*
  %681 = load i64, i64* %680, align 8
  store i64 %681, i64* %RCX.i717, align 8
  %682 = add i64 %681, 400
  %683 = add i64 %678, 10
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = add i32 %685, 1
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %RAX.i863, align 8
  %688 = icmp eq i32 %685, -1
  %689 = icmp eq i32 %686, 0
  %690 = or i1 %688, %689
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %14, align 1
  %692 = and i32 %686, 255
  %693 = tail call i32 @llvm.ctpop.i32(i32 %692)
  %694 = trunc i32 %693 to i8
  %695 = and i8 %694, 1
  %696 = xor i8 %695, 1
  store i8 %696, i8* %21, align 1
  %697 = xor i32 %686, %685
  %698 = lshr i32 %697, 4
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  store i8 %700, i8* %27, align 1
  %701 = zext i1 %689 to i8
  store i8 %701, i8* %30, align 1
  %702 = lshr i32 %686, 31
  %703 = trunc i32 %702 to i8
  store i8 %703, i8* %33, align 1
  %704 = lshr i32 %685, 31
  %705 = xor i32 %702, %704
  %706 = add nuw nsw i32 %705, %702
  %707 = icmp eq i32 %706, 2
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %39, align 1
  %709 = add i64 %678, 19
  store i64 %709, i64* %3, align 8
  store i32 %686, i32* %684, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_467131

block_.L_467131:                                  ; preds = %block_.L_4670c5, %block_4670db, %block_4670ec
  %710 = phi i64 [ %639, %block_4670db ], [ %.pre57, %block_4670ec ], [ %608, %block_.L_4670c5 ]
  %711 = add i64 %710, 10
  store i64 %711, i64* %3, align 8
  br label %block_.L_46713b

block_.L_46713b:                                  ; preds = %block_467018, %block_.L_467131
  %712 = phi i64 [ %711, %block_.L_467131 ], [ %430, %block_467018 ]
  %713 = add i64 %712, 1353
  store i64 %713, i64* %3, align 8
  br label %block_.L_467684

block_.L_467140:                                  ; preds = %block_.L_466fe6, %block_467007.block_.L_467140_crit_edge
  %714 = phi i64 [ %347, %block_.L_466fe6 ], [ %384, %block_467007.block_.L_467140_crit_edge ]
  %715 = phi i64 [ %320, %block_.L_466fe6 ], [ %.pre58, %block_467007.block_.L_467140_crit_edge ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_466ff5, %block_.L_466fe6 ], [ %call2_46700a, %block_467007.block_.L_467140_crit_edge ]
  %716 = add i64 %715, -32
  %717 = add i64 %714, 4
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = add i32 %719, -1
  %721 = icmp eq i32 %719, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %14, align 1
  %723 = and i32 %720, 255
  %724 = tail call i32 @llvm.ctpop.i32(i32 %723)
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  %727 = xor i8 %726, 1
  store i8 %727, i8* %21, align 1
  %728 = xor i32 %720, %719
  %729 = lshr i32 %728, 4
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  store i8 %731, i8* %27, align 1
  %732 = icmp eq i32 %720, 0
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %30, align 1
  %734 = lshr i32 %720, 31
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %33, align 1
  %736 = lshr i32 %719, 31
  %737 = xor i32 %734, %736
  %738 = add nuw nsw i32 %737, %736
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %39, align 1
  %741 = icmp ne i8 %735, 0
  %742 = xor i1 %741, %739
  %743 = or i1 %732, %742
  %.v78 = select i1 %743, i64 15, i64 10
  %744 = add i64 %714, %.v78
  store i64 %744, i64* %3, align 8
  br i1 %743, label %block_.L_46714f, label %block_46714a

block_46714a:                                     ; preds = %block_.L_467140
  %745 = add i64 %744, 1338
  store i64 %745, i64* %3, align 8
  br label %block_.L_467684

block_.L_46714f:                                  ; preds = %block_.L_467140
  store i64 2, i64* %RSI.i850, align 8
  %746 = add i64 %715, -680
  store i64 %746, i64* %RDX.i855, align 8
  %747 = add i64 %715, -8
  %748 = add i64 %744, 15
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i32*
  %750 = load i32, i32* %749, align 4
  %751 = zext i32 %750 to i64
  store i64 %751, i64* %RDI.i837, align 8
  %752 = add i64 %744, -358671
  %753 = add i64 %744, 20
  %754 = load i64, i64* %6, align 8
  %755 = add i64 %754, -8
  %756 = inttoptr i64 %755 to i64*
  store i64 %753, i64* %756, align 8
  store i64 %755, i64* %6, align 8
  store i64 %752, i64* %3, align 8
  %call2_46715e = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %752, %struct.Memory* %MEMORY.5)
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, -28
  %759 = load i64, i64* %3, align 8
  %760 = add i64 %759, 7
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %758 to i32*
  store i32 0, i32* %761, align 4
  %762 = load i64, i64* %RBP.i, align 8
  %763 = add i64 %762, -736
  %764 = load i32, i32* %EAX.i840, align 4
  %765 = load i64, i64* %3, align 8
  %766 = add i64 %765, 6
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %763 to i32*
  store i32 %764, i32* %767, align 4
  %RCX.i588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_467170

block_.L_467170:                                  ; preds = %block_.L_4672c9, %block_.L_46714f
  %768 = phi i64 [ %1275, %block_.L_4672c9 ], [ %.pre59, %block_.L_46714f ]
  %769 = load i64, i64* %RBP.i, align 8
  %770 = add i64 %769, -28
  %771 = add i64 %768, 4
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = add i32 %773, -2
  %775 = icmp ult i32 %773, 2
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %14, align 1
  %777 = and i32 %774, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  %782 = xor i32 %774, %773
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %27, align 1
  %786 = icmp eq i32 %774, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %30, align 1
  %788 = lshr i32 %774, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %33, align 1
  %790 = lshr i32 %773, 31
  %791 = xor i32 %788, %790
  %792 = add nuw nsw i32 %791, %790
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %39, align 1
  %795 = icmp ne i8 %789, 0
  %796 = xor i1 %795, %793
  %.v79 = select i1 %796, i64 10, i64 364
  %797 = add i64 %768, %.v79
  store i64 %797, i64* %3, align 8
  br i1 %796, label %block_46717a, label %block_.L_4672dc

block_46717a:                                     ; preds = %block_.L_467170
  store i64 3, i64* %RDX.i855, align 8
  store i64 0, i64* %RAX.i863, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RCX.i588, align 8
  %798 = add i64 %797, 13
  store i64 %798, i64* %3, align 8
  %799 = load i32, i32* %772, align 4
  %800 = sext i32 %799 to i64
  store i64 %800, i64* %RSI.i850, align 8
  %801 = shl nsw i64 %800, 2
  %802 = add i64 %769, -680
  %803 = add i64 %802, %801
  %804 = add i64 %797, 20
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = zext i32 %806 to i64
  store i64 %807, i64* %RDI.i837, align 8
  %808 = add i64 %769, -24
  %809 = add i64 %797, 23
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RSI.i850, align 8
  %813 = add i64 %797, -351178
  %814 = add i64 %797, 28
  %815 = load i64, i64* %6, align 8
  %816 = add i64 %815, -8
  %817 = inttoptr i64 %816 to i64*
  store i64 %814, i64* %817, align 8
  store i64 %816, i64* %6, align 8
  store i64 %813, i64* %3, align 8
  %call2_467191 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %813, %struct.Memory* %call2_46715e)
  %818 = load i32, i32* %EAX.i840, align 4
  %819 = load i64, i64* %3, align 8
  %820 = add i32 %818, -2
  %821 = icmp ult i32 %818, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %14, align 1
  %823 = and i32 %820, 255
  %824 = tail call i32 @llvm.ctpop.i32(i32 %823)
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = xor i8 %826, 1
  store i8 %827, i8* %21, align 1
  %828 = xor i32 %820, %818
  %829 = lshr i32 %828, 4
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  store i8 %831, i8* %27, align 1
  %832 = icmp eq i32 %820, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %30, align 1
  %834 = lshr i32 %820, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %33, align 1
  %836 = lshr i32 %818, 31
  %837 = xor i32 %834, %836
  %838 = add nuw nsw i32 %837, %836
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %39, align 1
  %841 = icmp ne i8 %835, 0
  %842 = xor i1 %841, %839
  %.demorgan = or i1 %832, %842
  %.v100 = select i1 %.demorgan, i64 9, i64 307
  %843 = add i64 %819, %.v100
  store i64 %843, i64* %3, align 8
  br i1 %.demorgan, label %block_46719f, label %block_.L_4672c9

block_46719f:                                     ; preds = %block_46717a
  store i64 1, i64* %RAX.i863, align 8
  %844 = load i64, i64* %RBP.i, align 8
  %845 = add i64 %844, -28
  %846 = add i64 %843, 8
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = sub i32 1, %848
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RAX.i863, align 8
  %851 = icmp ugt i32 %848, 1
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %14, align 1
  %853 = and i32 %849, 255
  %854 = tail call i32 @llvm.ctpop.i32(i32 %853)
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  store i8 %857, i8* %21, align 1
  %858 = xor i32 %849, %848
  %859 = lshr i32 %858, 4
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %27, align 1
  %862 = icmp eq i32 %849, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %30, align 1
  %864 = lshr i32 %849, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %33, align 1
  %866 = lshr i32 %848, 31
  %867 = add nuw nsw i32 %864, %866
  %868 = icmp eq i32 %867, 2
  %869 = zext i1 %868 to i8
  store i8 %869, i8* %39, align 1
  %870 = sext i32 %849 to i64
  store i64 %870, i64* %RCX.i588, align 8
  %871 = shl nsw i64 %870, 2
  %872 = add nsw i64 %871, -680
  %873 = add i64 %872, %844
  %874 = add i64 %843, 18
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = zext i32 %876 to i64
  store i64 %877, i64* %RDI.i837, align 8
  %878 = add i64 %844, -20
  %879 = add i64 %843, 21
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RSI.i850, align 8
  %883 = add i64 %843, -339711
  %884 = add i64 %843, 26
  %885 = load i64, i64* %6, align 8
  %886 = add i64 %885, -8
  %887 = inttoptr i64 %886 to i64*
  store i64 %884, i64* %887, align 8
  store i64 %886, i64* %6, align 8
  store i64 %883, i64* %3, align 8
  %call2_4671b4 = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %883, %struct.Memory* %call2_46715e)
  %888 = load i32, i32* %EAX.i840, align 4
  %889 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %890 = and i32 %888, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %895 = icmp eq i32 %888, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %30, align 1
  %897 = lshr i32 %888, 31
  %898 = trunc i32 %897 to i8
  store i8 %898, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v101 = select i1 %895, i64 9, i64 272
  %899 = add i64 %889, %.v101
  store i64 %899, i64* %3, align 8
  br i1 %895, label %block_4671c2, label %block_.L_4672c9

block_4671c2:                                     ; preds = %block_46719f
  %900 = load i64, i64* %RBP.i, align 8
  %901 = add i64 %900, -700
  %902 = add i64 %899, 15
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  store i32 0, i32* %903, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_4671d1

block_.L_4671d1:                                  ; preds = %block_.L_46722e, %block_4671c2
  %904 = phi i64 [ %1072, %block_.L_46722e ], [ %.pre68, %block_4671c2 ]
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -700
  %907 = add i64 %904, 6
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i32*
  %909 = load i32, i32* %908, align 4
  %910 = zext i32 %909 to i64
  store i64 %910, i64* %RAX.i863, align 8
  %911 = add i64 %905, -16
  %912 = add i64 %904, 10
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i64*
  %914 = load i64, i64* %913, align 8
  store i64 %914, i64* %RCX.i588, align 8
  %915 = add i64 %914, 400
  %916 = add i64 %904, 16
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = sub i32 %909, %918
  %920 = icmp ult i32 %909, %918
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %14, align 1
  %922 = and i32 %919, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %21, align 1
  %927 = xor i32 %918, %909
  %928 = xor i32 %927, %919
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %27, align 1
  %932 = icmp eq i32 %919, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %30, align 1
  %934 = lshr i32 %919, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %33, align 1
  %936 = lshr i32 %909, 31
  %937 = lshr i32 %918, 31
  %938 = xor i32 %937, %936
  %939 = xor i32 %934, %936
  %940 = add nuw nsw i32 %939, %938
  %941 = icmp eq i32 %940, 2
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %39, align 1
  %943 = icmp ne i8 %935, 0
  %944 = xor i1 %943, %941
  %.v102 = select i1 %944, i64 22, i64 118
  %945 = add i64 %904, %.v102
  store i64 %945, i64* %3, align 8
  br i1 %944, label %block_4671e7, label %block_.L_467247.loopexit

block_4671e7:                                     ; preds = %block_.L_4671d1
  store i64 1, i64* %RAX.i863, align 8
  %946 = add i64 %945, 9
  store i64 %946, i64* %3, align 8
  %947 = load i64, i64* %913, align 8
  store i64 %947, i64* %RCX.i588, align 8
  %948 = add i64 %945, 16
  store i64 %948, i64* %3, align 8
  %949 = load i32, i32* %908, align 4
  %950 = sext i32 %949 to i64
  store i64 %950, i64* %RDX.i855, align 8
  %951 = shl nsw i64 %950, 2
  %952 = add i64 %951, %947
  %953 = add i64 %945, 19
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = zext i32 %955 to i64
  store i64 %956, i64* %RSI.i850, align 8
  %957 = add i64 %905, -28
  %958 = add i64 %945, 22
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to i32*
  %960 = load i32, i32* %959, align 4
  %961 = sub i32 1, %960
  %962 = zext i32 %961 to i64
  store i64 %962, i64* %RAX.i863, align 8
  %963 = icmp ugt i32 %960, 1
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %14, align 1
  %965 = and i32 %961, 255
  %966 = tail call i32 @llvm.ctpop.i32(i32 %965)
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = xor i8 %968, 1
  store i8 %969, i8* %21, align 1
  %970 = xor i32 %960, %961
  %971 = lshr i32 %970, 4
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  store i8 %973, i8* %27, align 1
  %974 = icmp eq i32 %961, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %30, align 1
  %976 = lshr i32 %961, 31
  %977 = trunc i32 %976 to i8
  store i8 %977, i8* %33, align 1
  %978 = lshr i32 %960, 31
  %979 = add nuw nsw i32 %976, %978
  %980 = icmp eq i32 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %39, align 1
  %982 = sext i32 %961 to i64
  store i64 %982, i64* %RCX.i588, align 8
  %983 = shl nsw i64 %982, 2
  %984 = add nsw i64 %983, -680
  %985 = add i64 %984, %905
  %986 = add i64 %945, 32
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  %988 = load i32, i32* %987, align 4
  %989 = sub i32 %955, %988
  %990 = icmp ult i32 %955, %988
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %14, align 1
  %992 = and i32 %989, 255
  %993 = tail call i32 @llvm.ctpop.i32(i32 %992)
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  %996 = xor i8 %995, 1
  store i8 %996, i8* %21, align 1
  %997 = xor i32 %988, %955
  %998 = xor i32 %997, %989
  %999 = lshr i32 %998, 4
  %1000 = trunc i32 %999 to i8
  %1001 = and i8 %1000, 1
  store i8 %1001, i8* %27, align 1
  %1002 = icmp eq i32 %989, 0
  %1003 = zext i1 %1002 to i8
  store i8 %1003, i8* %30, align 1
  %1004 = lshr i32 %989, 31
  %1005 = trunc i32 %1004 to i8
  store i8 %1005, i8* %33, align 1
  %1006 = lshr i32 %955, 31
  %1007 = lshr i32 %988, 31
  %1008 = xor i32 %1007, %1006
  %1009 = xor i32 %1004, %1006
  %1010 = add nuw nsw i32 %1009, %1008
  %1011 = icmp eq i32 %1010, 2
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %39, align 1
  %.v105 = select i1 %1002, i64 38, i64 71
  %1013 = add i64 %945, %.v105
  store i64 %1013, i64* %3, align 8
  %1014 = load i64, i64* %RBP.i, align 8
  br i1 %1002, label %block_46720d, label %block_.L_46722e

block_46720d:                                     ; preds = %block_4671e7
  %1015 = add i64 %1014, -16
  %1016 = add i64 %1013, 4
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i64*
  %1018 = load i64, i64* %1017, align 8
  store i64 %1018, i64* %RAX.i863, align 8
  %1019 = add i64 %1014, -700
  %1020 = add i64 %1013, 11
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = sext i32 %1022 to i64
  store i64 %1023, i64* %RCX.i588, align 8
  %1024 = shl nsw i64 %1023, 2
  %1025 = add i64 %1018, 200
  %1026 = add i64 %1025, %1024
  %1027 = add i64 %1013, 18
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = zext i32 %1029 to i64
  store i64 %1030, i64* %RDX.i855, align 8
  store i8 0, i8* %14, align 1
  %1031 = and i32 %1029, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1036 = icmp eq i32 %1029, 0
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %30, align 1
  %1038 = lshr i32 %1029, 31
  %1039 = trunc i32 %1038 to i8
  store i8 %1039, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1040 = add i64 %1013, 28
  store i64 %1040, i64* %3, align 8
  store i32 %1029, i32* %1028, align 4
  %1041 = load i64, i64* %3, align 8
  %1042 = add i64 %1041, 30
  store i64 %1042, i64* %3, align 8
  %.pre69 = load i64, i64* %RBP.i, align 8
  br label %block_.L_467247

block_.L_46722e:                                  ; preds = %block_4671e7
  %1043 = add i64 %1014, -700
  %1044 = add i64 %1013, 11
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  %1046 = load i32, i32* %1045, align 4
  %1047 = add i32 %1046, 1
  %1048 = zext i32 %1047 to i64
  store i64 %1048, i64* %RAX.i863, align 8
  %1049 = icmp eq i32 %1046, -1
  %1050 = icmp eq i32 %1047, 0
  %1051 = or i1 %1049, %1050
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %14, align 1
  %1053 = and i32 %1047, 255
  %1054 = tail call i32 @llvm.ctpop.i32(i32 %1053)
  %1055 = trunc i32 %1054 to i8
  %1056 = and i8 %1055, 1
  %1057 = xor i8 %1056, 1
  store i8 %1057, i8* %21, align 1
  %1058 = xor i32 %1047, %1046
  %1059 = lshr i32 %1058, 4
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  store i8 %1061, i8* %27, align 1
  %1062 = zext i1 %1050 to i8
  store i8 %1062, i8* %30, align 1
  %1063 = lshr i32 %1047, 31
  %1064 = trunc i32 %1063 to i8
  store i8 %1064, i8* %33, align 1
  %1065 = lshr i32 %1046, 31
  %1066 = xor i32 %1063, %1065
  %1067 = add nuw nsw i32 %1066, %1063
  %1068 = icmp eq i32 %1067, 2
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %39, align 1
  %1070 = add i64 %1013, 20
  store i64 %1070, i64* %3, align 8
  store i32 %1047, i32* %1045, align 4
  %1071 = load i64, i64* %3, align 8
  %1072 = add i64 %1071, -113
  store i64 %1072, i64* %3, align 8
  br label %block_.L_4671d1

block_.L_467247.loopexit:                         ; preds = %block_.L_4671d1
  br label %block_.L_467247

block_.L_467247:                                  ; preds = %block_.L_467247.loopexit, %block_46720d
  %1073 = phi i64 [ %1042, %block_46720d ], [ %945, %block_.L_467247.loopexit ]
  %1074 = phi i64 [ %.pre69, %block_46720d ], [ %905, %block_.L_467247.loopexit ]
  %1075 = add i64 %1074, -700
  %1076 = add i64 %1073, 6
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = zext i32 %1078 to i64
  store i64 %1079, i64* %RAX.i863, align 8
  %1080 = add i64 %1074, -16
  %1081 = add i64 %1073, 10
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i64*
  %1083 = load i64, i64* %1082, align 8
  store i64 %1083, i64* %RCX.i588, align 8
  %1084 = add i64 %1083, 400
  %1085 = add i64 %1073, 16
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = sub i32 %1078, %1087
  %1089 = icmp ult i32 %1078, %1087
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %14, align 1
  %1091 = and i32 %1088, 255
  %1092 = tail call i32 @llvm.ctpop.i32(i32 %1091)
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  %1095 = xor i8 %1094, 1
  store i8 %1095, i8* %21, align 1
  %1096 = xor i32 %1087, %1078
  %1097 = xor i32 %1096, %1088
  %1098 = lshr i32 %1097, 4
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  store i8 %1100, i8* %27, align 1
  %1101 = icmp eq i32 %1088, 0
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %30, align 1
  %1103 = lshr i32 %1088, 31
  %1104 = trunc i32 %1103 to i8
  store i8 %1104, i8* %33, align 1
  %1105 = lshr i32 %1078, 31
  %1106 = lshr i32 %1087, 31
  %1107 = xor i32 %1106, %1105
  %1108 = xor i32 %1103, %1105
  %1109 = add nuw nsw i32 %1108, %1107
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %39, align 1
  %.v103 = select i1 %1101, i64 22, i64 120
  %1112 = add i64 %1073, %.v103
  store i64 %1112, i64* %3, align 8
  br i1 %1101, label %block_46725d, label %block_.L_4672bf

block_46725d:                                     ; preds = %block_.L_467247
  %1113 = add i64 %1112, 4
  store i64 %1113, i64* %3, align 8
  %1114 = load i64, i64* %1082, align 8
  store i64 %1114, i64* %RAX.i863, align 8
  %1115 = add i64 %1114, 400
  %1116 = add i64 %1112, 11
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = add i32 %1118, -50
  %1120 = icmp ult i32 %1118, 50
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %14, align 1
  %1122 = and i32 %1119, 255
  %1123 = tail call i32 @llvm.ctpop.i32(i32 %1122)
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = xor i8 %1125, 1
  store i8 %1126, i8* %21, align 1
  %1127 = xor i32 %1118, 16
  %1128 = xor i32 %1127, %1119
  %1129 = lshr i32 %1128, 4
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  store i8 %1131, i8* %27, align 1
  %1132 = icmp eq i32 %1119, 0
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %30, align 1
  %1134 = lshr i32 %1119, 31
  %1135 = trunc i32 %1134 to i8
  store i8 %1135, i8* %33, align 1
  %1136 = lshr i32 %1118, 31
  %1137 = xor i32 %1134, %1136
  %1138 = add nuw nsw i32 %1137, %1136
  %1139 = icmp eq i32 %1138, 2
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %39, align 1
  %1141 = icmp ne i8 %1135, 0
  %1142 = xor i1 %1141, %1139
  %.v104 = select i1 %1142, i64 17, i64 98
  %1143 = add i64 %1112, %.v104
  store i64 %1143, i64* %3, align 8
  br i1 %1142, label %block_46726e, label %block_.L_4672bf

block_46726e:                                     ; preds = %block_46725d
  store i64 1, i64* %RAX.i863, align 8
  %1144 = add i64 %1074, -28
  %1145 = add i64 %1143, 8
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = sub i32 1, %1147
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RAX.i863, align 8
  %1150 = icmp ugt i32 %1147, 1
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %14, align 1
  %1152 = and i32 %1148, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %21, align 1
  %1157 = xor i32 %1148, %1147
  %1158 = lshr i32 %1157, 4
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  store i8 %1160, i8* %27, align 1
  %1161 = icmp eq i32 %1148, 0
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %30, align 1
  %1163 = lshr i32 %1148, 31
  %1164 = trunc i32 %1163 to i8
  store i8 %1164, i8* %33, align 1
  %1165 = lshr i32 %1147, 31
  %1166 = add nuw nsw i32 %1163, %1165
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %39, align 1
  %1169 = sext i32 %1148 to i64
  store i64 %1169, i64* %RCX.i588, align 8
  %1170 = shl nsw i64 %1169, 2
  %1171 = add nsw i64 %1170, -680
  %1172 = add i64 %1171, %1074
  %1173 = add i64 %1143, 18
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RAX.i863, align 8
  %1177 = add i64 %1143, 22
  store i64 %1177, i64* %3, align 8
  %1178 = load i64, i64* %1082, align 8
  store i64 %1178, i64* %RCX.i588, align 8
  %1179 = add i64 %1143, 26
  store i64 %1179, i64* %3, align 8
  %1180 = load i64, i64* %1082, align 8
  store i64 %1180, i64* %RDX.i855, align 8
  %1181 = add i64 %1180, 400
  %1182 = add i64 %1143, 33
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = sext i32 %1184 to i64
  store i64 %1185, i64* %RDX.i855, align 8
  %1186 = shl nsw i64 %1185, 2
  %1187 = add i64 %1186, %1178
  %1188 = add i64 %1143, 36
  store i64 %1188, i64* %3, align 8
  %1189 = inttoptr i64 %1187 to i32*
  store i32 %1175, i32* %1189, align 4
  %1190 = load i64, i64* %RBP.i, align 8
  %1191 = add i64 %1190, -16
  %1192 = load i64, i64* %3, align 8
  %1193 = add i64 %1192, 4
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1191 to i64*
  %1195 = load i64, i64* %1194, align 8
  store i64 %1195, i64* %RCX.i588, align 8
  %1196 = add i64 %1192, 8
  store i64 %1196, i64* %3, align 8
  %1197 = load i64, i64* %1194, align 8
  store i64 %1197, i64* %RDX.i855, align 8
  %1198 = add i64 %1197, 400
  %1199 = add i64 %1192, 15
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = sext i32 %1201 to i64
  store i64 %1202, i64* %RDX.i855, align 8
  %1203 = shl nsw i64 %1202, 2
  %1204 = add i64 %1195, 200
  %1205 = add i64 %1204, %1203
  %1206 = add i64 %1192, 26
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  store i32 0, i32* %1207, align 4
  %1208 = load i64, i64* %RBP.i, align 8
  %1209 = add i64 %1208, -16
  %1210 = load i64, i64* %3, align 8
  %1211 = add i64 %1210, 4
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1209 to i64*
  %1213 = load i64, i64* %1212, align 8
  store i64 %1213, i64* %RCX.i588, align 8
  %1214 = add i64 %1213, 400
  %1215 = add i64 %1210, 10
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = add i32 %1217, 1
  %1219 = zext i32 %1218 to i64
  store i64 %1219, i64* %RAX.i863, align 8
  %1220 = icmp eq i32 %1217, -1
  %1221 = icmp eq i32 %1218, 0
  %1222 = or i1 %1220, %1221
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %14, align 1
  %1224 = and i32 %1218, 255
  %1225 = tail call i32 @llvm.ctpop.i32(i32 %1224)
  %1226 = trunc i32 %1225 to i8
  %1227 = and i8 %1226, 1
  %1228 = xor i8 %1227, 1
  store i8 %1228, i8* %21, align 1
  %1229 = xor i32 %1218, %1217
  %1230 = lshr i32 %1229, 4
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  store i8 %1232, i8* %27, align 1
  %1233 = zext i1 %1221 to i8
  store i8 %1233, i8* %30, align 1
  %1234 = lshr i32 %1218, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %33, align 1
  %1236 = lshr i32 %1217, 31
  %1237 = xor i32 %1234, %1236
  %1238 = add nuw nsw i32 %1237, %1234
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %39, align 1
  %1241 = add i64 %1210, 19
  store i64 %1241, i64* %3, align 8
  store i32 %1218, i32* %1216, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_4672bf

block_.L_4672bf:                                  ; preds = %block_.L_467247, %block_46725d, %block_46726e
  %1242 = phi i64 [ %1143, %block_46725d ], [ %.pre70, %block_46726e ], [ %1112, %block_.L_467247 ]
  %1243 = add i64 %1242, 10
  store i64 %1243, i64* %3, align 8
  br label %block_.L_4672c9

block_.L_4672c9:                                  ; preds = %block_46719f, %block_46717a, %block_.L_4672bf
  %1244 = phi i64 [ %1243, %block_.L_4672bf ], [ %899, %block_46719f ], [ %843, %block_46717a ]
  %1245 = load i64, i64* %RBP.i, align 8
  %1246 = add i64 %1245, -28
  %1247 = add i64 %1244, 8
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = add i32 %1249, 1
  %1251 = zext i32 %1250 to i64
  store i64 %1251, i64* %RAX.i863, align 8
  %1252 = icmp eq i32 %1249, -1
  %1253 = icmp eq i32 %1250, 0
  %1254 = or i1 %1252, %1253
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %14, align 1
  %1256 = and i32 %1250, 255
  %1257 = tail call i32 @llvm.ctpop.i32(i32 %1256)
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = xor i8 %1259, 1
  store i8 %1260, i8* %21, align 1
  %1261 = xor i32 %1250, %1249
  %1262 = lshr i32 %1261, 4
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  store i8 %1264, i8* %27, align 1
  %1265 = zext i1 %1253 to i8
  store i8 %1265, i8* %30, align 1
  %1266 = lshr i32 %1250, 31
  %1267 = trunc i32 %1266 to i8
  store i8 %1267, i8* %33, align 1
  %1268 = lshr i32 %1249, 31
  %1269 = xor i32 %1266, %1268
  %1270 = add nuw nsw i32 %1269, %1266
  %1271 = icmp eq i32 %1270, 2
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %39, align 1
  %1273 = add i64 %1244, 14
  store i64 %1273, i64* %3, align 8
  store i32 %1250, i32* %1248, align 4
  %1274 = load i64, i64* %3, align 8
  %1275 = add i64 %1274, -359
  store i64 %1275, i64* %3, align 8
  br label %block_.L_467170

block_.L_4672dc:                                  ; preds = %block_.L_467170
  %1276 = add i64 %769, -680
  %1277 = add i64 %797, 6
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to i32*
  %1279 = load i32, i32* %1278, align 4
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i863, align 8
  %RCX.i412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %1281 = add i64 %769, -676
  %1282 = add i64 %797, 12
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = add i32 %1284, 19
  %1286 = zext i32 %1285 to i64
  store i64 %1286, i64* %RCX.i412, align 8
  %1287 = lshr i32 %1285, 31
  %1288 = sub i32 %1279, %1285
  %1289 = icmp ult i32 %1279, %1285
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %14, align 1
  %1291 = and i32 %1288, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %21, align 1
  %1296 = xor i32 %1285, %1279
  %1297 = xor i32 %1296, %1288
  %1298 = lshr i32 %1297, 4
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  store i8 %1300, i8* %27, align 1
  %1301 = icmp eq i32 %1288, 0
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %30, align 1
  %1303 = lshr i32 %1288, 31
  %1304 = trunc i32 %1303 to i8
  store i8 %1304, i8* %33, align 1
  %1305 = lshr i32 %1279, 31
  %1306 = xor i32 %1287, %1305
  %1307 = xor i32 %1303, %1305
  %1308 = add nuw nsw i32 %1307, %1306
  %1309 = icmp eq i32 %1308, 2
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %39, align 1
  %.v80 = select i1 %1301, i64 109, i64 26
  %1311 = add i64 %797, %.v80
  store i64 %1311, i64* %3, align 8
  br i1 %1301, label %block_.L_467349, label %block_4672f6

block_4672f6:                                     ; preds = %block_.L_4672dc
  %1312 = load i64, i64* %RBP.i, align 8
  %1313 = add i64 %1312, -680
  %1314 = add i64 %1311, 6
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RAX.i863, align 8
  %1318 = add i64 %1312, -676
  %1319 = add i64 %1311, 12
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i32*
  %1321 = load i32, i32* %1320, align 4
  %1322 = add i32 %1321, -21
  %1323 = zext i32 %1322 to i64
  store i64 %1323, i64* %RCX.i412, align 8
  %1324 = lshr i32 %1322, 31
  %1325 = sub i32 %1316, %1322
  %1326 = icmp ult i32 %1316, %1322
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %14, align 1
  %1328 = and i32 %1325, 255
  %1329 = tail call i32 @llvm.ctpop.i32(i32 %1328)
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  store i8 %1332, i8* %21, align 1
  %1333 = xor i32 %1322, %1316
  %1334 = xor i32 %1333, %1325
  %1335 = lshr i32 %1334, 4
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  store i8 %1337, i8* %27, align 1
  %1338 = icmp eq i32 %1325, 0
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %30, align 1
  %1340 = lshr i32 %1325, 31
  %1341 = trunc i32 %1340 to i8
  store i8 %1341, i8* %33, align 1
  %1342 = lshr i32 %1316, 31
  %1343 = xor i32 %1324, %1342
  %1344 = xor i32 %1340, %1342
  %1345 = add nuw nsw i32 %1344, %1343
  %1346 = icmp eq i32 %1345, 2
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %39, align 1
  %.v81 = select i1 %1338, i64 83, i64 26
  %1348 = add i64 %1311, %.v81
  store i64 %1348, i64* %3, align 8
  br i1 %1338, label %block_.L_467349, label %block_467310

block_467310:                                     ; preds = %block_4672f6
  %1349 = load i64, i64* %RBP.i, align 8
  %1350 = add i64 %1349, -680
  %1351 = add i64 %1348, 6
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = zext i32 %1353 to i64
  store i64 %1354, i64* %RAX.i863, align 8
  %1355 = add i64 %1349, -676
  %1356 = add i64 %1348, 12
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i32*
  %1358 = load i32, i32* %1357, align 4
  %1359 = add i32 %1358, -19
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RCX.i412, align 8
  %1361 = lshr i32 %1359, 31
  %1362 = sub i32 %1353, %1359
  %1363 = icmp ult i32 %1353, %1359
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %14, align 1
  %1365 = and i32 %1362, 255
  %1366 = tail call i32 @llvm.ctpop.i32(i32 %1365)
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  %1369 = xor i8 %1368, 1
  store i8 %1369, i8* %21, align 1
  %1370 = xor i32 %1359, %1353
  %1371 = xor i32 %1370, %1362
  %1372 = lshr i32 %1371, 4
  %1373 = trunc i32 %1372 to i8
  %1374 = and i8 %1373, 1
  store i8 %1374, i8* %27, align 1
  %1375 = icmp eq i32 %1362, 0
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %30, align 1
  %1377 = lshr i32 %1362, 31
  %1378 = trunc i32 %1377 to i8
  store i8 %1378, i8* %33, align 1
  %1379 = lshr i32 %1353, 31
  %1380 = xor i32 %1361, %1379
  %1381 = xor i32 %1377, %1379
  %1382 = add nuw nsw i32 %1381, %1380
  %1383 = icmp eq i32 %1382, 2
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %39, align 1
  %.v82 = select i1 %1375, i64 57, i64 26
  %1385 = add i64 %1348, %.v82
  store i64 %1385, i64* %3, align 8
  br i1 %1375, label %block_.L_467349, label %block_46732a

block_46732a:                                     ; preds = %block_467310
  %1386 = load i64, i64* %RBP.i, align 8
  %1387 = add i64 %1386, -680
  %1388 = add i64 %1385, 6
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %RAX.i863, align 8
  %1392 = add i64 %1386, -676
  %1393 = add i64 %1385, 12
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = add i32 %1395, 21
  %1397 = zext i32 %1396 to i64
  store i64 %1397, i64* %RCX.i412, align 8
  %1398 = lshr i32 %1396, 31
  %1399 = sub i32 %1390, %1396
  %1400 = icmp ult i32 %1390, %1396
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %14, align 1
  %1402 = and i32 %1399, 255
  %1403 = tail call i32 @llvm.ctpop.i32(i32 %1402)
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  store i8 %1406, i8* %21, align 1
  %1407 = xor i32 %1396, %1390
  %1408 = xor i32 %1407, %1399
  %1409 = lshr i32 %1408, 4
  %1410 = trunc i32 %1409 to i8
  %1411 = and i8 %1410, 1
  store i8 %1411, i8* %27, align 1
  %1412 = icmp eq i32 %1399, 0
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %30, align 1
  %1414 = lshr i32 %1399, 31
  %1415 = trunc i32 %1414 to i8
  store i8 %1415, i8* %33, align 1
  %1416 = lshr i32 %1390, 31
  %1417 = xor i32 %1398, %1416
  %1418 = xor i32 %1414, %1416
  %1419 = add nuw nsw i32 %1418, %1417
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %39, align 1
  %.v83 = select i1 %1412, i64 31, i64 26
  %1422 = add i64 %1385, %.v83
  store i64 %1422, i64* %3, align 8
  br i1 %1412, label %block_.L_467349, label %block_467344

block_467344:                                     ; preds = %block_46732a
  %1423 = add i64 %1422, 832
  store i64 %1423, i64* %3, align 8
  br label %block_.L_467684

block_.L_467349:                                  ; preds = %block_46732a, %block_467310, %block_4672f6, %block_.L_4672dc
  %1424 = phi i64 [ %1422, %block_46732a ], [ %1385, %block_467310 ], [ %1348, %block_4672f6 ], [ %1311, %block_.L_4672dc ]
  %1425 = load i64, i64* %RBP.i, align 8
  %1426 = add i64 %1425, -680
  %1427 = add i64 %1424, 6
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1426 to i32*
  %1429 = load i32, i32* %1428, align 4
  %1430 = zext i32 %1429 to i64
  store i64 %1430, i64* %RAX.i863, align 8
  %1431 = add i64 %1425, -676
  %1432 = add i64 %1424, 12
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = sub i32 %1429, %1434
  %1436 = icmp ult i32 %1429, %1434
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %14, align 1
  %1438 = and i32 %1435, 255
  %1439 = tail call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  store i8 %1442, i8* %21, align 1
  %1443 = xor i32 %1434, %1429
  %1444 = xor i32 %1443, %1435
  %1445 = lshr i32 %1444, 4
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  store i8 %1447, i8* %27, align 1
  %1448 = icmp eq i32 %1435, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %30, align 1
  %1450 = lshr i32 %1435, 31
  %1451 = trunc i32 %1450 to i8
  store i8 %1451, i8* %33, align 1
  %1452 = lshr i32 %1429, 31
  %1453 = lshr i32 %1434, 31
  %1454 = xor i32 %1453, %1452
  %1455 = xor i32 %1450, %1452
  %1456 = add nuw nsw i32 %1455, %1454
  %1457 = icmp eq i32 %1456, 2
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %39, align 1
  %1459 = icmp ne i8 %1451, 0
  %1460 = xor i1 %1459, %1457
  %.v84 = select i1 %1460, i64 18, i64 35
  %1461 = add i64 %1424, %.v84
  %1462 = add i64 %1461, 6
  store i64 %1462, i64* %3, align 8
  br i1 %1460, label %block_46735b, label %block_.L_46736c

block_46735b:                                     ; preds = %block_.L_467349
  %1463 = load i32, i32* %1433, align 4
  %1464 = zext i32 %1463 to i64
  store i64 %1464, i64* %RAX.i863, align 8
  %1465 = add i64 %1425, -740
  %1466 = add i64 %1461, 12
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i32*
  store i32 %1463, i32* %1467, align 4
  %1468 = load i64, i64* %3, align 8
  %1469 = add i64 %1468, 17
  store i64 %1469, i64* %3, align 8
  br label %block_.L_467378

block_.L_46736c:                                  ; preds = %block_.L_467349
  %1470 = load i32, i32* %1428, align 4
  %1471 = zext i32 %1470 to i64
  store i64 %1471, i64* %RAX.i863, align 8
  %1472 = add i64 %1425, -740
  %1473 = add i64 %1461, 12
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1472 to i32*
  store i32 %1470, i32* %1474, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_467378

block_.L_467378:                                  ; preds = %block_.L_46736c, %block_46735b
  %1475 = phi i64 [ %.pre60, %block_.L_46736c ], [ %1469, %block_46735b ]
  %1476 = load i64, i64* %RBP.i, align 8
  %1477 = add i64 %1476, -740
  %1478 = add i64 %1475, 6
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i32*
  %1480 = load i32, i32* %1479, align 4
  %1481 = add i32 %1480, -20
  %1482 = zext i32 %1481 to i64
  store i64 %1482, i64* %RAX.i863, align 8
  %1483 = icmp ult i32 %1480, 20
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %14, align 1
  %1485 = and i32 %1481, 255
  %1486 = tail call i32 @llvm.ctpop.i32(i32 %1485)
  %1487 = trunc i32 %1486 to i8
  %1488 = and i8 %1487, 1
  %1489 = xor i8 %1488, 1
  store i8 %1489, i8* %21, align 1
  %1490 = xor i32 %1480, 16
  %1491 = xor i32 %1490, %1481
  %1492 = lshr i32 %1491, 4
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  store i8 %1494, i8* %27, align 1
  %1495 = icmp eq i32 %1481, 0
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %30, align 1
  %1497 = lshr i32 %1481, 31
  %1498 = trunc i32 %1497 to i8
  store i8 %1498, i8* %33, align 1
  %1499 = lshr i32 %1480, 31
  %1500 = xor i32 %1497, %1499
  %1501 = add nuw nsw i32 %1500, %1499
  %1502 = icmp eq i32 %1501, 2
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %39, align 1
  %1504 = add i64 %1476, -684
  %1505 = add i64 %1475, 15
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  store i32 %1481, i32* %1506, align 4
  %1507 = load i64, i64* %RBP.i, align 8
  %1508 = add i64 %1507, -680
  %1509 = load i64, i64* %3, align 8
  %1510 = add i64 %1509, 6
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1508 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RAX.i863, align 8
  %1514 = add i64 %1507, -676
  %1515 = add i64 %1509, 12
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i32*
  %1517 = load i32, i32* %1516, align 4
  %1518 = sub i32 %1512, %1517
  %1519 = icmp ult i32 %1512, %1517
  %1520 = zext i1 %1519 to i8
  store i8 %1520, i8* %14, align 1
  %1521 = and i32 %1518, 255
  %1522 = tail call i32 @llvm.ctpop.i32(i32 %1521)
  %1523 = trunc i32 %1522 to i8
  %1524 = and i8 %1523, 1
  %1525 = xor i8 %1524, 1
  store i8 %1525, i8* %21, align 1
  %1526 = xor i32 %1517, %1512
  %1527 = xor i32 %1526, %1518
  %1528 = lshr i32 %1527, 4
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %27, align 1
  %1531 = icmp eq i32 %1518, 0
  %1532 = zext i1 %1531 to i8
  store i8 %1532, i8* %30, align 1
  %1533 = lshr i32 %1518, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %33, align 1
  %1535 = lshr i32 %1512, 31
  %1536 = lshr i32 %1517, 31
  %1537 = xor i32 %1536, %1535
  %1538 = xor i32 %1533, %1535
  %1539 = add nuw nsw i32 %1538, %1537
  %1540 = icmp eq i32 %1539, 2
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %39, align 1
  %1542 = icmp ne i8 %1534, 0
  %1543 = xor i1 %1542, %1540
  %.v85 = select i1 %1543, i64 18, i64 35
  %1544 = add i64 %1509, %.v85
  %1545 = add i64 %1544, 6
  store i64 %1545, i64* %3, align 8
  br i1 %1543, label %block_467399, label %block_.L_4673aa

block_467399:                                     ; preds = %block_.L_467378
  %1546 = load i32, i32* %1511, align 4
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RAX.i863, align 8
  %1548 = add i64 %1507, -744
  %1549 = add i64 %1544, 12
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  store i32 %1546, i32* %1550, align 4
  %1551 = load i64, i64* %3, align 8
  %1552 = add i64 %1551, 17
  store i64 %1552, i64* %3, align 8
  br label %block_.L_4673b6

block_.L_4673aa:                                  ; preds = %block_.L_467378
  %1553 = load i32, i32* %1516, align 4
  %1554 = zext i32 %1553 to i64
  store i64 %1554, i64* %RAX.i863, align 8
  %1555 = add i64 %1507, -744
  %1556 = add i64 %1544, 12
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i32*
  store i32 %1553, i32* %1557, align 4
  %.pre61 = load i64, i64* %3, align 8
  br label %block_.L_4673b6

block_.L_4673b6:                                  ; preds = %block_.L_4673aa, %block_467399
  %1558 = phi i64 [ %.pre61, %block_.L_4673aa ], [ %1552, %block_467399 ]
  %1559 = load i64, i64* %RBP.i, align 8
  %1560 = add i64 %1559, -744
  %1561 = add i64 %1558, 6
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i32*
  %1563 = load i32, i32* %1562, align 4
  %1564 = add i32 %1563, 20
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RAX.i863, align 8
  %1566 = icmp ugt i32 %1563, -21
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %14, align 1
  %1568 = and i32 %1564, 255
  %1569 = tail call i32 @llvm.ctpop.i32(i32 %1568)
  %1570 = trunc i32 %1569 to i8
  %1571 = and i8 %1570, 1
  %1572 = xor i8 %1571, 1
  store i8 %1572, i8* %21, align 1
  %1573 = xor i32 %1563, 16
  %1574 = xor i32 %1573, %1564
  %1575 = lshr i32 %1574, 4
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  store i8 %1577, i8* %27, align 1
  %1578 = icmp eq i32 %1564, 0
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %30, align 1
  %1580 = lshr i32 %1564, 31
  %1581 = trunc i32 %1580 to i8
  store i8 %1581, i8* %33, align 1
  %1582 = lshr i32 %1563, 31
  %1583 = xor i32 %1580, %1582
  %1584 = add nuw nsw i32 %1583, %1580
  %1585 = icmp eq i32 %1584, 2
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %39, align 1
  %1587 = add i64 %1559, -688
  %1588 = add i64 %1558, 15
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i32*
  store i32 %1564, i32* %1589, align 4
  %1590 = load i64, i64* %RBP.i, align 8
  %1591 = add i64 %1590, -684
  %1592 = load i64, i64* %3, align 8
  %1593 = add i64 %1592, 7
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1591 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = sext i32 %1595 to i64
  store i64 %1596, i64* %RCX.i412, align 8
  %1597 = add nsw i64 %1596, 12099168
  %1598 = add i64 %1592, 15
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i8*
  %1600 = load i8, i8* %1599, align 1
  %1601 = zext i8 %1600 to i64
  store i64 %1601, i64* %RAX.i863, align 8
  %1602 = zext i8 %1600 to i32
  %1603 = add i64 %1590, -24
  %1604 = add i64 %1592, 18
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to i32*
  %1606 = load i32, i32* %1605, align 4
  %1607 = sub i32 %1602, %1606
  %1608 = icmp ult i32 %1602, %1606
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %14, align 1
  %1610 = and i32 %1607, 255
  %1611 = tail call i32 @llvm.ctpop.i32(i32 %1610)
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  %1614 = xor i8 %1613, 1
  store i8 %1614, i8* %21, align 1
  %1615 = xor i32 %1606, %1602
  %1616 = xor i32 %1615, %1607
  %1617 = lshr i32 %1616, 4
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  store i8 %1619, i8* %27, align 1
  %1620 = icmp eq i32 %1607, 0
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %30, align 1
  %1622 = lshr i32 %1607, 31
  %1623 = trunc i32 %1622 to i8
  store i8 %1623, i8* %33, align 1
  %1624 = lshr i32 %1606, 31
  %1625 = add nuw nsw i32 %1622, %1624
  %1626 = icmp eq i32 %1625, 2
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %39, align 1
  %.v86 = select i1 %1620, i64 24, i64 67
  %1628 = add i64 %1592, %.v86
  store i64 %1628, i64* %3, align 8
  br i1 %1620, label %block_4673dd, label %block_.L_467408

block_4673dd:                                     ; preds = %block_.L_4673b6
  %1629 = add i64 %1590, -688
  %1630 = add i64 %1628, 6
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i32*
  %1632 = load i32, i32* %1631, align 4
  %1633 = zext i32 %1632 to i64
  store i64 %1633, i64* %RDI.i837, align 8
  %1634 = add i64 %1628, -359757
  %1635 = add i64 %1628, 11
  %1636 = load i64, i64* %6, align 8
  %1637 = add i64 %1636, -8
  %1638 = inttoptr i64 %1637 to i64*
  store i64 %1635, i64* %1638, align 8
  store i64 %1637, i64* %6, align 8
  store i64 %1634, i64* %3, align 8
  %call2_4673e3 = tail call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* nonnull %0, i64 %1634, %struct.Memory* %call2_46715e)
  %1639 = load i32, i32* %EAX.i840, align 4
  %1640 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1641 = and i32 %1639, 255
  %1642 = tail call i32 @llvm.ctpop.i32(i32 %1641)
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  %1645 = xor i8 %1644, 1
  store i8 %1645, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1646 = icmp eq i32 %1639, 0
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %30, align 1
  %1648 = lshr i32 %1639, 31
  %1649 = trunc i32 %1648 to i8
  store i8 %1649, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v98 = select i1 %1646, i64 32, i64 9
  %1650 = add i64 %1640, %.v98
  store i64 %1650, i64* %3, align 8
  br i1 %1646, label %block_.L_467408, label %block_4673f1

block_4673f1:                                     ; preds = %block_4673dd
  %1651 = load i64, i64* %RBP.i, align 8
  %1652 = add i64 %1651, -684
  %1653 = add i64 %1650, 6
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RDI.i837, align 8
  %1657 = add i64 %1651, -8
  %1658 = add i64 %1650, 9
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  %1660 = load i32, i32* %1659, align 4
  %1661 = zext i32 %1660 to i64
  store i64 %1661, i64* %RSI.i850, align 8
  %1662 = add i64 %1650, -335889
  %1663 = add i64 %1650, 14
  %1664 = load i64, i64* %6, align 8
  %1665 = add i64 %1664, -8
  %1666 = inttoptr i64 %1665 to i64*
  store i64 %1663, i64* %1666, align 8
  store i64 %1665, i64* %6, align 8
  store i64 %1662, i64* %3, align 8
  %call2_4673fa = tail call %struct.Memory* @sub_4153e0.same_string(%struct.State* nonnull %0, i64 %1662, %struct.Memory* %call2_4673e3)
  %1667 = load i32, i32* %EAX.i840, align 4
  %1668 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1669 = and i32 %1667, 255
  %1670 = tail call i32 @llvm.ctpop.i32(i32 %1669)
  %1671 = trunc i32 %1670 to i8
  %1672 = and i8 %1671, 1
  %1673 = xor i8 %1672, 1
  store i8 %1673, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1674 = icmp eq i32 %1667, 0
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %30, align 1
  %1676 = lshr i32 %1667, 31
  %1677 = trunc i32 %1676 to i8
  store i8 %1677, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v99 = select i1 %1674, i64 9, i64 81
  %1678 = add i64 %1668, %.v99
  store i64 %1678, i64* %3, align 8
  br i1 %1674, label %block_.L_467408, label %block_.L_467450

block_.L_467408:                                  ; preds = %block_4673f1, %block_.L_4673b6, %block_4673dd
  %1679 = phi i64 [ %1628, %block_.L_4673b6 ], [ %1650, %block_4673dd ], [ %1678, %block_4673f1 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_46715e, %block_.L_4673b6 ], [ %call2_4673e3, %block_4673dd ], [ %call2_4673fa, %block_4673f1 ]
  %1680 = load i64, i64* %RBP.i, align 8
  %1681 = add i64 %1680, -688
  %1682 = add i64 %1679, 7
  store i64 %1682, i64* %3, align 8
  %1683 = inttoptr i64 %1681 to i32*
  %1684 = load i32, i32* %1683, align 4
  %1685 = sext i32 %1684 to i64
  store i64 %1685, i64* %RAX.i863, align 8
  %1686 = add nsw i64 %1685, 12099168
  %1687 = add i64 %1679, 15
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i8*
  %1689 = load i8, i8* %1688, align 1
  %1690 = zext i8 %1689 to i64
  store i64 %1690, i64* %RCX.i412, align 8
  %1691 = zext i8 %1689 to i32
  %1692 = add i64 %1680, -24
  %1693 = add i64 %1679, 18
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i32*
  %1695 = load i32, i32* %1694, align 4
  %1696 = sub i32 %1691, %1695
  %1697 = icmp ult i32 %1691, %1695
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %14, align 1
  %1699 = and i32 %1696, 255
  %1700 = tail call i32 @llvm.ctpop.i32(i32 %1699)
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  %1703 = xor i8 %1702, 1
  store i8 %1703, i8* %21, align 1
  %1704 = xor i32 %1695, %1691
  %1705 = xor i32 %1704, %1696
  %1706 = lshr i32 %1705, 4
  %1707 = trunc i32 %1706 to i8
  %1708 = and i8 %1707, 1
  store i8 %1708, i8* %27, align 1
  %1709 = icmp eq i32 %1696, 0
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %30, align 1
  %1711 = lshr i32 %1696, 31
  %1712 = trunc i32 %1711 to i8
  store i8 %1712, i8* %33, align 1
  %1713 = lshr i32 %1695, 31
  %1714 = add nuw nsw i32 %1711, %1713
  %1715 = icmp eq i32 %1714, 2
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %39, align 1
  %.v87 = select i1 %1709, i64 24, i64 67
  %1717 = add i64 %1679, %.v87
  store i64 %1717, i64* %3, align 8
  br i1 %1709, label %block_467420, label %block_.L_46744b

block_467420:                                     ; preds = %block_.L_467408
  %1718 = add i64 %1680, -684
  %1719 = add i64 %1717, 6
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i32*
  %1721 = load i32, i32* %1720, align 4
  %1722 = zext i32 %1721 to i64
  store i64 %1722, i64* %RDI.i837, align 8
  %1723 = add i64 %1717, -359824
  %1724 = add i64 %1717, 11
  %1725 = load i64, i64* %6, align 8
  %1726 = add i64 %1725, -8
  %1727 = inttoptr i64 %1726 to i64*
  store i64 %1724, i64* %1727, align 8
  store i64 %1726, i64* %6, align 8
  store i64 %1723, i64* %3, align 8
  %call2_467426 = tail call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* nonnull %0, i64 %1723, %struct.Memory* %MEMORY.14)
  %1728 = load i32, i32* %EAX.i840, align 4
  %1729 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1730 = and i32 %1728, 255
  %1731 = tail call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  store i8 %1734, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1735 = icmp eq i32 %1728, 0
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %30, align 1
  %1737 = lshr i32 %1728, 31
  %1738 = trunc i32 %1737 to i8
  store i8 %1738, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v88 = select i1 %1735, i64 32, i64 9
  %1739 = add i64 %1729, %.v88
  store i64 %1739, i64* %3, align 8
  br i1 %1735, label %block_.L_46744b, label %block_467434

block_467434:                                     ; preds = %block_467420
  %1740 = load i64, i64* %RBP.i, align 8
  %1741 = add i64 %1740, -688
  %1742 = add i64 %1739, 6
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = zext i32 %1744 to i64
  store i64 %1745, i64* %RDI.i837, align 8
  %1746 = add i64 %1740, -8
  %1747 = add i64 %1739, 9
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RSI.i850, align 8
  %1751 = add i64 %1739, -335956
  %1752 = add i64 %1739, 14
  %1753 = load i64, i64* %6, align 8
  %1754 = add i64 %1753, -8
  %1755 = inttoptr i64 %1754 to i64*
  store i64 %1752, i64* %1755, align 8
  store i64 %1754, i64* %6, align 8
  store i64 %1751, i64* %3, align 8
  %call2_46743d = tail call %struct.Memory* @sub_4153e0.same_string(%struct.State* nonnull %0, i64 %1751, %struct.Memory* %call2_467426)
  %1756 = load i32, i32* %EAX.i840, align 4
  %1757 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1758 = and i32 %1756, 255
  %1759 = tail call i32 @llvm.ctpop.i32(i32 %1758)
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = xor i8 %1761, 1
  store i8 %1762, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1763 = icmp eq i32 %1756, 0
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %30, align 1
  %1765 = lshr i32 %1756, 31
  %1766 = trunc i32 %1765 to i8
  store i8 %1766, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v89 = select i1 %1763, i64 9, i64 14
  %1767 = add i64 %1757, %.v89
  store i64 %1767, i64* %3, align 8
  br i1 %1763, label %block_.L_46744b, label %block_.L_467450

block_.L_46744b:                                  ; preds = %block_467434, %block_.L_467408, %block_467420
  %1768 = phi i64 [ %1717, %block_.L_467408 ], [ %1739, %block_467420 ], [ %1767, %block_467434 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_.L_467408 ], [ %call2_467426, %block_467420 ], [ %call2_46743d, %block_467434 ]
  %1769 = add i64 %1768, 569
  store i64 %1769, i64* %3, align 8
  br label %block_.L_467684

block_.L_467450:                                  ; preds = %block_467434, %block_4673f1
  %1770 = phi i64 [ %1767, %block_467434 ], [ %1678, %block_4673f1 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_46743d, %block_467434 ], [ %call2_4673fa, %block_4673f1 ]
  %1771 = load i64, i64* %RBP.i, align 8
  %1772 = add i64 %1771, -680
  %1773 = add i64 %1770, 6
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to i32*
  %1775 = load i32, i32* %1774, align 4
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RDI.i837, align 8
  %1777 = add i64 %1770, -359872
  %1778 = add i64 %1770, 11
  %1779 = load i64, i64* %6, align 8
  %1780 = add i64 %1779, -8
  %1781 = inttoptr i64 %1780 to i64*
  store i64 %1778, i64* %1781, align 8
  store i64 %1780, i64* %6, align 8
  store i64 %1777, i64* %3, align 8
  %call2_467456 = tail call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* nonnull %0, i64 %1777, %struct.Memory* %MEMORY.16)
  %1782 = load i32, i32* %EAX.i840, align 4
  %1783 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1784 = and i32 %1782, 255
  %1785 = tail call i32 @llvm.ctpop.i32(i32 %1784)
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = xor i8 %1787, 1
  store i8 %1788, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1789 = icmp eq i32 %1782, 0
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %30, align 1
  %1791 = lshr i32 %1782, 31
  %1792 = trunc i32 %1791 to i8
  store i8 %1792, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v90 = select i1 %1789, i64 271, i64 9
  %1793 = add i64 %1783, %.v90
  store i64 %1793, i64* %3, align 8
  br i1 %1789, label %block_.L_46756a, label %block_467464

block_467464:                                     ; preds = %block_.L_467450
  %1794 = load i64, i64* %RBP.i, align 8
  %1795 = add i64 %1794, -676
  %1796 = add i64 %1793, 6
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = zext i32 %1798 to i64
  store i64 %1799, i64* %RDI.i837, align 8
  %1800 = add i64 %1794, -20
  %1801 = add i64 %1793, 9
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i32*
  %1803 = load i32, i32* %1802, align 4
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RSI.i850, align 8
  %1805 = add i64 %1793, -340420
  %1806 = add i64 %1793, 14
  %1807 = load i64, i64* %6, align 8
  %1808 = add i64 %1807, -8
  %1809 = inttoptr i64 %1808 to i64*
  store i64 %1806, i64* %1809, align 8
  store i64 %1808, i64* %6, align 8
  store i64 %1805, i64* %3, align 8
  %call2_46746d = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %1805, %struct.Memory* %call2_467456)
  %1810 = load i32, i32* %EAX.i840, align 4
  %1811 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1812 = and i32 %1810, 255
  %1813 = tail call i32 @llvm.ctpop.i32(i32 %1812)
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = xor i8 %1815, 1
  store i8 %1816, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1817 = icmp eq i32 %1810, 0
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %30, align 1
  %1819 = lshr i32 %1810, 31
  %1820 = trunc i32 %1819 to i8
  store i8 %1820, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v91 = select i1 %1817, i64 9, i64 248
  %1821 = add i64 %1811, %.v91
  store i64 %1821, i64* %3, align 8
  br i1 %1817, label %block_46747b, label %block_.L_46756a

block_46747b:                                     ; preds = %block_467464
  %1822 = load i64, i64* %RBP.i, align 8
  %1823 = add i64 %1822, -704
  %1824 = add i64 %1821, 15
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i32*
  store i32 0, i32* %1825, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_46748a

block_.L_46748a:                                  ; preds = %block_.L_4674db, %block_46747b
  %1826 = phi i64 [ %1972, %block_.L_4674db ], [ %.pre62, %block_46747b ]
  %1827 = load i64, i64* %RBP.i, align 8
  %1828 = add i64 %1827, -704
  %1829 = add i64 %1826, 6
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i32*
  %1831 = load i32, i32* %1830, align 4
  %1832 = zext i32 %1831 to i64
  store i64 %1832, i64* %RAX.i863, align 8
  %1833 = add i64 %1827, -16
  %1834 = add i64 %1826, 10
  store i64 %1834, i64* %3, align 8
  %1835 = inttoptr i64 %1833 to i64*
  %1836 = load i64, i64* %1835, align 8
  store i64 %1836, i64* %RCX.i412, align 8
  %1837 = add i64 %1836, 400
  %1838 = add i64 %1826, 16
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i32*
  %1840 = load i32, i32* %1839, align 4
  %1841 = sub i32 %1831, %1840
  %1842 = icmp ult i32 %1831, %1840
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %14, align 1
  %1844 = and i32 %1841, 255
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %21, align 1
  %1849 = xor i32 %1840, %1831
  %1850 = xor i32 %1849, %1841
  %1851 = lshr i32 %1850, 4
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  store i8 %1853, i8* %27, align 1
  %1854 = icmp eq i32 %1841, 0
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %30, align 1
  %1856 = lshr i32 %1841, 31
  %1857 = trunc i32 %1856 to i8
  store i8 %1857, i8* %33, align 1
  %1858 = lshr i32 %1831, 31
  %1859 = lshr i32 %1840, 31
  %1860 = xor i32 %1859, %1858
  %1861 = xor i32 %1856, %1858
  %1862 = add nuw nsw i32 %1861, %1860
  %1863 = icmp eq i32 %1862, 2
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %39, align 1
  %1865 = icmp ne i8 %1857, 0
  %1866 = xor i1 %1865, %1863
  %.v75 = select i1 %1866, i64 22, i64 106
  %1867 = add i64 %1826, %.v75
  store i64 %1867, i64* %3, align 8
  br i1 %1866, label %block_4674a0, label %block_.L_4674f4.loopexit

block_4674a0:                                     ; preds = %block_.L_46748a
  %1868 = add i64 %1867, 4
  store i64 %1868, i64* %3, align 8
  %1869 = load i64, i64* %1835, align 8
  store i64 %1869, i64* %RAX.i863, align 8
  %1870 = add i64 %1867, 11
  store i64 %1870, i64* %3, align 8
  %1871 = load i32, i32* %1830, align 4
  %1872 = sext i32 %1871 to i64
  store i64 %1872, i64* %RCX.i412, align 8
  %1873 = shl nsw i64 %1872, 2
  %1874 = add i64 %1873, %1869
  %1875 = add i64 %1867, 14
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i32*
  %1877 = load i32, i32* %1876, align 4
  %1878 = zext i32 %1877 to i64
  store i64 %1878, i64* %RDX.i855, align 8
  %1879 = add i64 %1827, -676
  %1880 = add i64 %1867, 20
  store i64 %1880, i64* %3, align 8
  %1881 = inttoptr i64 %1879 to i32*
  %1882 = load i32, i32* %1881, align 4
  %1883 = sub i32 %1877, %1882
  %1884 = icmp ult i32 %1877, %1882
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %14, align 1
  %1886 = and i32 %1883, 255
  %1887 = tail call i32 @llvm.ctpop.i32(i32 %1886)
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  %1890 = xor i8 %1889, 1
  store i8 %1890, i8* %21, align 1
  %1891 = xor i32 %1882, %1877
  %1892 = xor i32 %1891, %1883
  %1893 = lshr i32 %1892, 4
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  store i8 %1895, i8* %27, align 1
  %1896 = icmp eq i32 %1883, 0
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %30, align 1
  %1898 = lshr i32 %1883, 31
  %1899 = trunc i32 %1898 to i8
  store i8 %1899, i8* %33, align 1
  %1900 = lshr i32 %1877, 31
  %1901 = lshr i32 %1882, 31
  %1902 = xor i32 %1901, %1900
  %1903 = xor i32 %1898, %1900
  %1904 = add nuw nsw i32 %1903, %1902
  %1905 = icmp eq i32 %1904, 2
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %39, align 1
  %.v74 = select i1 %1896, i64 26, i64 59
  %1907 = add i64 %1867, %.v74
  store i64 %1907, i64* %3, align 8
  br i1 %1896, label %block_4674ba, label %block_.L_4674db

block_4674ba:                                     ; preds = %block_4674a0
  %1908 = add i64 %1907, 4
  store i64 %1908, i64* %3, align 8
  %1909 = load i64, i64* %1835, align 8
  store i64 %1909, i64* %RAX.i863, align 8
  %1910 = add i64 %1907, 11
  store i64 %1910, i64* %3, align 8
  %1911 = load i32, i32* %1830, align 4
  %1912 = sext i32 %1911 to i64
  store i64 %1912, i64* %RCX.i412, align 8
  %1913 = shl nsw i64 %1912, 2
  %1914 = add i64 %1909, 200
  %1915 = add i64 %1914, %1913
  %1916 = add i64 %1907, 18
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = add i32 %1918, 1
  %1920 = zext i32 %1919 to i64
  store i64 %1920, i64* %RDX.i855, align 8
  %1921 = icmp eq i32 %1918, -1
  %1922 = icmp eq i32 %1919, 0
  %1923 = or i1 %1921, %1922
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %14, align 1
  %1925 = and i32 %1919, 255
  %1926 = tail call i32 @llvm.ctpop.i32(i32 %1925)
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  %1929 = xor i8 %1928, 1
  store i8 %1929, i8* %21, align 1
  %1930 = xor i32 %1919, %1918
  %1931 = lshr i32 %1930, 4
  %1932 = trunc i32 %1931 to i8
  %1933 = and i8 %1932, 1
  store i8 %1933, i8* %27, align 1
  %1934 = zext i1 %1922 to i8
  store i8 %1934, i8* %30, align 1
  %1935 = lshr i32 %1919, 31
  %1936 = trunc i32 %1935 to i8
  store i8 %1936, i8* %33, align 1
  %1937 = lshr i32 %1918, 31
  %1938 = xor i32 %1935, %1937
  %1939 = add nuw nsw i32 %1938, %1935
  %1940 = icmp eq i32 %1939, 2
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %39, align 1
  %1942 = add i64 %1907, 28
  store i64 %1942, i64* %3, align 8
  store i32 %1919, i32* %1917, align 4
  %1943 = load i64, i64* %3, align 8
  %1944 = add i64 %1943, 30
  store i64 %1944, i64* %3, align 8
  %.pre63 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4674f4

block_.L_4674db:                                  ; preds = %block_4674a0
  %1945 = add i64 %1907, 11
  store i64 %1945, i64* %3, align 8
  %1946 = load i32, i32* %1830, align 4
  %1947 = add i32 %1946, 1
  %1948 = zext i32 %1947 to i64
  store i64 %1948, i64* %RAX.i863, align 8
  %1949 = icmp eq i32 %1946, -1
  %1950 = icmp eq i32 %1947, 0
  %1951 = or i1 %1949, %1950
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %14, align 1
  %1953 = and i32 %1947, 255
  %1954 = tail call i32 @llvm.ctpop.i32(i32 %1953)
  %1955 = trunc i32 %1954 to i8
  %1956 = and i8 %1955, 1
  %1957 = xor i8 %1956, 1
  store i8 %1957, i8* %21, align 1
  %1958 = xor i32 %1947, %1946
  %1959 = lshr i32 %1958, 4
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  store i8 %1961, i8* %27, align 1
  %1962 = zext i1 %1950 to i8
  store i8 %1962, i8* %30, align 1
  %1963 = lshr i32 %1947, 31
  %1964 = trunc i32 %1963 to i8
  store i8 %1964, i8* %33, align 1
  %1965 = lshr i32 %1946, 31
  %1966 = xor i32 %1963, %1965
  %1967 = add nuw nsw i32 %1966, %1963
  %1968 = icmp eq i32 %1967, 2
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %39, align 1
  %1970 = add i64 %1907, 20
  store i64 %1970, i64* %3, align 8
  store i32 %1947, i32* %1830, align 4
  %1971 = load i64, i64* %3, align 8
  %1972 = add i64 %1971, -101
  store i64 %1972, i64* %3, align 8
  br label %block_.L_46748a

block_.L_4674f4.loopexit:                         ; preds = %block_.L_46748a
  br label %block_.L_4674f4

block_.L_4674f4:                                  ; preds = %block_.L_4674f4.loopexit, %block_4674ba
  %1973 = phi i64 [ %1944, %block_4674ba ], [ %1867, %block_.L_4674f4.loopexit ]
  %1974 = phi i64 [ %.pre63, %block_4674ba ], [ %1827, %block_.L_4674f4.loopexit ]
  %1975 = add i64 %1974, -704
  %1976 = add i64 %1973, 6
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RAX.i863, align 8
  %1980 = add i64 %1974, -16
  %1981 = add i64 %1973, 10
  store i64 %1981, i64* %3, align 8
  %1982 = inttoptr i64 %1980 to i64*
  %1983 = load i64, i64* %1982, align 8
  store i64 %1983, i64* %RCX.i412, align 8
  %1984 = add i64 %1983, 400
  %1985 = add i64 %1973, 16
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i32*
  %1987 = load i32, i32* %1986, align 4
  %1988 = sub i32 %1978, %1987
  %1989 = icmp ult i32 %1978, %1987
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %14, align 1
  %1991 = and i32 %1988, 255
  %1992 = tail call i32 @llvm.ctpop.i32(i32 %1991)
  %1993 = trunc i32 %1992 to i8
  %1994 = and i8 %1993, 1
  %1995 = xor i8 %1994, 1
  store i8 %1995, i8* %21, align 1
  %1996 = xor i32 %1987, %1978
  %1997 = xor i32 %1996, %1988
  %1998 = lshr i32 %1997, 4
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  store i8 %2000, i8* %27, align 1
  %2001 = icmp eq i32 %1988, 0
  %2002 = zext i1 %2001 to i8
  store i8 %2002, i8* %30, align 1
  %2003 = lshr i32 %1988, 31
  %2004 = trunc i32 %2003 to i8
  store i8 %2004, i8* %33, align 1
  %2005 = lshr i32 %1978, 31
  %2006 = lshr i32 %1987, 31
  %2007 = xor i32 %2006, %2005
  %2008 = xor i32 %2003, %2005
  %2009 = add nuw nsw i32 %2008, %2007
  %2010 = icmp eq i32 %2009, 2
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %39, align 1
  %.v96 = select i1 %2001, i64 22, i64 108
  %2012 = add i64 %1973, %.v96
  store i64 %2012, i64* %3, align 8
  br i1 %2001, label %block_46750a, label %block_.L_467560

block_46750a:                                     ; preds = %block_.L_4674f4
  %2013 = add i64 %2012, 4
  store i64 %2013, i64* %3, align 8
  %2014 = load i64, i64* %1982, align 8
  store i64 %2014, i64* %RAX.i863, align 8
  %2015 = add i64 %2014, 400
  %2016 = add i64 %2012, 11
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i32*
  %2018 = load i32, i32* %2017, align 4
  %2019 = add i32 %2018, -50
  %2020 = icmp ult i32 %2018, 50
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %14, align 1
  %2022 = and i32 %2019, 255
  %2023 = tail call i32 @llvm.ctpop.i32(i32 %2022)
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  %2026 = xor i8 %2025, 1
  store i8 %2026, i8* %21, align 1
  %2027 = xor i32 %2018, 16
  %2028 = xor i32 %2027, %2019
  %2029 = lshr i32 %2028, 4
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  store i8 %2031, i8* %27, align 1
  %2032 = icmp eq i32 %2019, 0
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %30, align 1
  %2034 = lshr i32 %2019, 31
  %2035 = trunc i32 %2034 to i8
  store i8 %2035, i8* %33, align 1
  %2036 = lshr i32 %2018, 31
  %2037 = xor i32 %2034, %2036
  %2038 = add nuw nsw i32 %2037, %2036
  %2039 = icmp eq i32 %2038, 2
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %39, align 1
  %2041 = icmp ne i8 %2035, 0
  %2042 = xor i1 %2041, %2039
  %.v97 = select i1 %2042, i64 17, i64 86
  %2043 = add i64 %2012, %.v97
  store i64 %2043, i64* %3, align 8
  br i1 %2042, label %block_46751b, label %block_.L_467560

block_46751b:                                     ; preds = %block_46750a
  %2044 = add i64 %1974, -676
  %2045 = add i64 %2043, 6
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i32*
  %2047 = load i32, i32* %2046, align 4
  %2048 = zext i32 %2047 to i64
  store i64 %2048, i64* %RAX.i863, align 8
  %2049 = add i64 %2043, 10
  store i64 %2049, i64* %3, align 8
  %2050 = load i64, i64* %1982, align 8
  store i64 %2050, i64* %RCX.i412, align 8
  %2051 = add i64 %2043, 14
  store i64 %2051, i64* %3, align 8
  %2052 = load i64, i64* %1982, align 8
  store i64 %2052, i64* %RDX.i855, align 8
  %2053 = add i64 %2052, 400
  %2054 = add i64 %2043, 21
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i32*
  %2056 = load i32, i32* %2055, align 4
  %2057 = sext i32 %2056 to i64
  store i64 %2057, i64* %RDX.i855, align 8
  %2058 = shl nsw i64 %2057, 2
  %2059 = add i64 %2058, %2050
  %2060 = add i64 %2043, 24
  store i64 %2060, i64* %3, align 8
  %2061 = inttoptr i64 %2059 to i32*
  store i32 %2047, i32* %2061, align 4
  %2062 = load i64, i64* %RBP.i, align 8
  %2063 = add i64 %2062, -16
  %2064 = load i64, i64* %3, align 8
  %2065 = add i64 %2064, 4
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2063 to i64*
  %2067 = load i64, i64* %2066, align 8
  store i64 %2067, i64* %RCX.i412, align 8
  %2068 = add i64 %2064, 8
  store i64 %2068, i64* %3, align 8
  %2069 = load i64, i64* %2066, align 8
  store i64 %2069, i64* %RDX.i855, align 8
  %2070 = add i64 %2069, 400
  %2071 = add i64 %2064, 15
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = sext i32 %2073 to i64
  store i64 %2074, i64* %RDX.i855, align 8
  %2075 = shl nsw i64 %2074, 2
  %2076 = add i64 %2067, 200
  %2077 = add i64 %2076, %2075
  %2078 = add i64 %2064, 26
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i32*
  store i32 1, i32* %2079, align 4
  %2080 = load i64, i64* %RBP.i, align 8
  %2081 = add i64 %2080, -16
  %2082 = load i64, i64* %3, align 8
  %2083 = add i64 %2082, 4
  store i64 %2083, i64* %3, align 8
  %2084 = inttoptr i64 %2081 to i64*
  %2085 = load i64, i64* %2084, align 8
  store i64 %2085, i64* %RCX.i412, align 8
  %2086 = add i64 %2085, 400
  %2087 = add i64 %2082, 10
  store i64 %2087, i64* %3, align 8
  %2088 = inttoptr i64 %2086 to i32*
  %2089 = load i32, i32* %2088, align 4
  %2090 = add i32 %2089, 1
  %2091 = zext i32 %2090 to i64
  store i64 %2091, i64* %RAX.i863, align 8
  %2092 = icmp eq i32 %2089, -1
  %2093 = icmp eq i32 %2090, 0
  %2094 = or i1 %2092, %2093
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %14, align 1
  %2096 = and i32 %2090, 255
  %2097 = tail call i32 @llvm.ctpop.i32(i32 %2096)
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  %2100 = xor i8 %2099, 1
  store i8 %2100, i8* %21, align 1
  %2101 = xor i32 %2090, %2089
  %2102 = lshr i32 %2101, 4
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  store i8 %2104, i8* %27, align 1
  %2105 = zext i1 %2093 to i8
  store i8 %2105, i8* %30, align 1
  %2106 = lshr i32 %2090, 31
  %2107 = trunc i32 %2106 to i8
  store i8 %2107, i8* %33, align 1
  %2108 = lshr i32 %2089, 31
  %2109 = xor i32 %2106, %2108
  %2110 = add nuw nsw i32 %2109, %2106
  %2111 = icmp eq i32 %2110, 2
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %39, align 1
  %2113 = add i64 %2082, 19
  store i64 %2113, i64* %3, align 8
  store i32 %2090, i32* %2088, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_467560

block_.L_467560:                                  ; preds = %block_.L_4674f4, %block_46750a, %block_46751b
  %2114 = phi i64 [ %2043, %block_46750a ], [ %.pre64, %block_46751b ], [ %2012, %block_.L_4674f4 ]
  %2115 = add i64 %2114, 10
  store i64 %2115, i64* %3, align 8
  br label %block_.L_46756a

block_.L_46756a:                                  ; preds = %block_467464, %block_.L_467560, %block_.L_467450
  %2116 = phi i64 [ %1793, %block_.L_467450 ], [ %1821, %block_467464 ], [ %2115, %block_.L_467560 ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_467456, %block_.L_467450 ], [ %call2_46746d, %block_467464 ], [ %call2_46746d, %block_.L_467560 ]
  %2117 = load i64, i64* %RBP.i, align 8
  %2118 = add i64 %2117, -676
  %2119 = add i64 %2116, 6
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = zext i32 %2121 to i64
  store i64 %2122, i64* %RDI.i837, align 8
  %2123 = add i64 %2116, -360154
  %2124 = add i64 %2116, 11
  %2125 = load i64, i64* %6, align 8
  %2126 = add i64 %2125, -8
  %2127 = inttoptr i64 %2126 to i64*
  store i64 %2124, i64* %2127, align 8
  store i64 %2126, i64* %6, align 8
  store i64 %2123, i64* %3, align 8
  %call2_467570 = tail call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* nonnull %0, i64 %2123, %struct.Memory* %MEMORY.20)
  %2128 = load i32, i32* %EAX.i840, align 4
  %2129 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2130 = and i32 %2128, 255
  %2131 = tail call i32 @llvm.ctpop.i32(i32 %2130)
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  %2134 = xor i8 %2133, 1
  store i8 %2134, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2135 = icmp eq i32 %2128, 0
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %30, align 1
  %2137 = lshr i32 %2128, 31
  %2138 = trunc i32 %2137 to i8
  store i8 %2138, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v92 = select i1 %2135, i64 271, i64 9
  %2139 = add i64 %2129, %.v92
  store i64 %2139, i64* %3, align 8
  br i1 %2135, label %block_.L_467684, label %block_46757e

block_46757e:                                     ; preds = %block_.L_46756a
  %2140 = load i64, i64* %RBP.i, align 8
  %2141 = add i64 %2140, -680
  %2142 = add i64 %2139, 6
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = zext i32 %2144 to i64
  store i64 %2145, i64* %RDI.i837, align 8
  %2146 = add i64 %2140, -20
  %2147 = add i64 %2139, 9
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i32*
  %2149 = load i32, i32* %2148, align 4
  %2150 = zext i32 %2149 to i64
  store i64 %2150, i64* %RSI.i850, align 8
  %2151 = add i64 %2139, -340702
  %2152 = add i64 %2139, 14
  %2153 = load i64, i64* %6, align 8
  %2154 = add i64 %2153, -8
  %2155 = inttoptr i64 %2154 to i64*
  store i64 %2152, i64* %2155, align 8
  store i64 %2154, i64* %6, align 8
  store i64 %2151, i64* %3, align 8
  %call2_467587 = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %2151, %struct.Memory* %call2_467570)
  %2156 = load i32, i32* %EAX.i840, align 4
  %2157 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2158 = and i32 %2156, 255
  %2159 = tail call i32 @llvm.ctpop.i32(i32 %2158)
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = xor i8 %2161, 1
  store i8 %2162, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2163 = icmp eq i32 %2156, 0
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %30, align 1
  %2165 = lshr i32 %2156, 31
  %2166 = trunc i32 %2165 to i8
  store i8 %2166, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v93 = select i1 %2163, i64 9, i64 248
  %2167 = add i64 %2157, %.v93
  store i64 %2167, i64* %3, align 8
  br i1 %2163, label %block_467595, label %block_.L_467684

block_467595:                                     ; preds = %block_46757e
  %2168 = load i64, i64* %RBP.i, align 8
  %2169 = add i64 %2168, -708
  %2170 = add i64 %2167, 15
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i32*
  store i32 0, i32* %2171, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_4675a4

block_.L_4675a4:                                  ; preds = %block_.L_4675f5, %block_467595
  %2172 = phi i64 [ %2318, %block_.L_4675f5 ], [ %.pre65, %block_467595 ]
  %2173 = load i64, i64* %RBP.i, align 8
  %2174 = add i64 %2173, -708
  %2175 = add i64 %2172, 6
  store i64 %2175, i64* %3, align 8
  %2176 = inttoptr i64 %2174 to i32*
  %2177 = load i32, i32* %2176, align 4
  %2178 = zext i32 %2177 to i64
  store i64 %2178, i64* %RAX.i863, align 8
  %2179 = add i64 %2173, -16
  %2180 = add i64 %2172, 10
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2179 to i64*
  %2182 = load i64, i64* %2181, align 8
  store i64 %2182, i64* %RCX.i412, align 8
  %2183 = add i64 %2182, 400
  %2184 = add i64 %2172, 16
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2183 to i32*
  %2186 = load i32, i32* %2185, align 4
  %2187 = sub i32 %2177, %2186
  %2188 = icmp ult i32 %2177, %2186
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %14, align 1
  %2190 = and i32 %2187, 255
  %2191 = tail call i32 @llvm.ctpop.i32(i32 %2190)
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  %2194 = xor i8 %2193, 1
  store i8 %2194, i8* %21, align 1
  %2195 = xor i32 %2186, %2177
  %2196 = xor i32 %2195, %2187
  %2197 = lshr i32 %2196, 4
  %2198 = trunc i32 %2197 to i8
  %2199 = and i8 %2198, 1
  store i8 %2199, i8* %27, align 1
  %2200 = icmp eq i32 %2187, 0
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %30, align 1
  %2202 = lshr i32 %2187, 31
  %2203 = trunc i32 %2202 to i8
  store i8 %2203, i8* %33, align 1
  %2204 = lshr i32 %2177, 31
  %2205 = lshr i32 %2186, 31
  %2206 = xor i32 %2205, %2204
  %2207 = xor i32 %2202, %2204
  %2208 = add nuw nsw i32 %2207, %2206
  %2209 = icmp eq i32 %2208, 2
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %39, align 1
  %2211 = icmp ne i8 %2203, 0
  %2212 = xor i1 %2211, %2209
  %.v73 = select i1 %2212, i64 22, i64 106
  %2213 = add i64 %2172, %.v73
  store i64 %2213, i64* %3, align 8
  br i1 %2212, label %block_4675ba, label %block_.L_46760e.loopexit

block_4675ba:                                     ; preds = %block_.L_4675a4
  %2214 = add i64 %2213, 4
  store i64 %2214, i64* %3, align 8
  %2215 = load i64, i64* %2181, align 8
  store i64 %2215, i64* %RAX.i863, align 8
  %2216 = add i64 %2213, 11
  store i64 %2216, i64* %3, align 8
  %2217 = load i32, i32* %2176, align 4
  %2218 = sext i32 %2217 to i64
  store i64 %2218, i64* %RCX.i412, align 8
  %2219 = shl nsw i64 %2218, 2
  %2220 = add i64 %2219, %2215
  %2221 = add i64 %2213, 14
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i32*
  %2223 = load i32, i32* %2222, align 4
  %2224 = zext i32 %2223 to i64
  store i64 %2224, i64* %RDX.i855, align 8
  %2225 = add i64 %2173, -680
  %2226 = add i64 %2213, 20
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  %2228 = load i32, i32* %2227, align 4
  %2229 = sub i32 %2223, %2228
  %2230 = icmp ult i32 %2223, %2228
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %14, align 1
  %2232 = and i32 %2229, 255
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2232)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %21, align 1
  %2237 = xor i32 %2228, %2223
  %2238 = xor i32 %2237, %2229
  %2239 = lshr i32 %2238, 4
  %2240 = trunc i32 %2239 to i8
  %2241 = and i8 %2240, 1
  store i8 %2241, i8* %27, align 1
  %2242 = icmp eq i32 %2229, 0
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %30, align 1
  %2244 = lshr i32 %2229, 31
  %2245 = trunc i32 %2244 to i8
  store i8 %2245, i8* %33, align 1
  %2246 = lshr i32 %2223, 31
  %2247 = lshr i32 %2228, 31
  %2248 = xor i32 %2247, %2246
  %2249 = xor i32 %2244, %2246
  %2250 = add nuw nsw i32 %2249, %2248
  %2251 = icmp eq i32 %2250, 2
  %2252 = zext i1 %2251 to i8
  store i8 %2252, i8* %39, align 1
  %.v72 = select i1 %2242, i64 26, i64 59
  %2253 = add i64 %2213, %.v72
  store i64 %2253, i64* %3, align 8
  br i1 %2242, label %block_4675d4, label %block_.L_4675f5

block_4675d4:                                     ; preds = %block_4675ba
  %2254 = add i64 %2253, 4
  store i64 %2254, i64* %3, align 8
  %2255 = load i64, i64* %2181, align 8
  store i64 %2255, i64* %RAX.i863, align 8
  %2256 = add i64 %2253, 11
  store i64 %2256, i64* %3, align 8
  %2257 = load i32, i32* %2176, align 4
  %2258 = sext i32 %2257 to i64
  store i64 %2258, i64* %RCX.i412, align 8
  %2259 = shl nsw i64 %2258, 2
  %2260 = add i64 %2255, 200
  %2261 = add i64 %2260, %2259
  %2262 = add i64 %2253, 18
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i32*
  %2264 = load i32, i32* %2263, align 4
  %2265 = add i32 %2264, 1
  %2266 = zext i32 %2265 to i64
  store i64 %2266, i64* %RDX.i855, align 8
  %2267 = icmp eq i32 %2264, -1
  %2268 = icmp eq i32 %2265, 0
  %2269 = or i1 %2267, %2268
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %14, align 1
  %2271 = and i32 %2265, 255
  %2272 = tail call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  store i8 %2275, i8* %21, align 1
  %2276 = xor i32 %2265, %2264
  %2277 = lshr i32 %2276, 4
  %2278 = trunc i32 %2277 to i8
  %2279 = and i8 %2278, 1
  store i8 %2279, i8* %27, align 1
  %2280 = zext i1 %2268 to i8
  store i8 %2280, i8* %30, align 1
  %2281 = lshr i32 %2265, 31
  %2282 = trunc i32 %2281 to i8
  store i8 %2282, i8* %33, align 1
  %2283 = lshr i32 %2264, 31
  %2284 = xor i32 %2281, %2283
  %2285 = add nuw nsw i32 %2284, %2281
  %2286 = icmp eq i32 %2285, 2
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %39, align 1
  %2288 = add i64 %2253, 28
  store i64 %2288, i64* %3, align 8
  store i32 %2265, i32* %2263, align 4
  %2289 = load i64, i64* %3, align 8
  %2290 = add i64 %2289, 30
  store i64 %2290, i64* %3, align 8
  %.pre66 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46760e

block_.L_4675f5:                                  ; preds = %block_4675ba
  %2291 = add i64 %2253, 11
  store i64 %2291, i64* %3, align 8
  %2292 = load i32, i32* %2176, align 4
  %2293 = add i32 %2292, 1
  %2294 = zext i32 %2293 to i64
  store i64 %2294, i64* %RAX.i863, align 8
  %2295 = icmp eq i32 %2292, -1
  %2296 = icmp eq i32 %2293, 0
  %2297 = or i1 %2295, %2296
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %14, align 1
  %2299 = and i32 %2293, 255
  %2300 = tail call i32 @llvm.ctpop.i32(i32 %2299)
  %2301 = trunc i32 %2300 to i8
  %2302 = and i8 %2301, 1
  %2303 = xor i8 %2302, 1
  store i8 %2303, i8* %21, align 1
  %2304 = xor i32 %2293, %2292
  %2305 = lshr i32 %2304, 4
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  store i8 %2307, i8* %27, align 1
  %2308 = zext i1 %2296 to i8
  store i8 %2308, i8* %30, align 1
  %2309 = lshr i32 %2293, 31
  %2310 = trunc i32 %2309 to i8
  store i8 %2310, i8* %33, align 1
  %2311 = lshr i32 %2292, 31
  %2312 = xor i32 %2309, %2311
  %2313 = add nuw nsw i32 %2312, %2309
  %2314 = icmp eq i32 %2313, 2
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %39, align 1
  %2316 = add i64 %2253, 20
  store i64 %2316, i64* %3, align 8
  store i32 %2293, i32* %2176, align 4
  %2317 = load i64, i64* %3, align 8
  %2318 = add i64 %2317, -101
  store i64 %2318, i64* %3, align 8
  br label %block_.L_4675a4

block_.L_46760e.loopexit:                         ; preds = %block_.L_4675a4
  br label %block_.L_46760e

block_.L_46760e:                                  ; preds = %block_.L_46760e.loopexit, %block_4675d4
  %2319 = phi i64 [ %2290, %block_4675d4 ], [ %2213, %block_.L_46760e.loopexit ]
  %2320 = phi i64 [ %.pre66, %block_4675d4 ], [ %2173, %block_.L_46760e.loopexit ]
  %2321 = add i64 %2320, -708
  %2322 = add i64 %2319, 6
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2321 to i32*
  %2324 = load i32, i32* %2323, align 4
  %2325 = zext i32 %2324 to i64
  store i64 %2325, i64* %RAX.i863, align 8
  %2326 = add i64 %2320, -16
  %2327 = add i64 %2319, 10
  store i64 %2327, i64* %3, align 8
  %2328 = inttoptr i64 %2326 to i64*
  %2329 = load i64, i64* %2328, align 8
  store i64 %2329, i64* %RCX.i412, align 8
  %2330 = add i64 %2329, 400
  %2331 = add i64 %2319, 16
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i32*
  %2333 = load i32, i32* %2332, align 4
  %2334 = sub i32 %2324, %2333
  %2335 = icmp ult i32 %2324, %2333
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %14, align 1
  %2337 = and i32 %2334, 255
  %2338 = tail call i32 @llvm.ctpop.i32(i32 %2337)
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = xor i8 %2340, 1
  store i8 %2341, i8* %21, align 1
  %2342 = xor i32 %2333, %2324
  %2343 = xor i32 %2342, %2334
  %2344 = lshr i32 %2343, 4
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  store i8 %2346, i8* %27, align 1
  %2347 = icmp eq i32 %2334, 0
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %30, align 1
  %2349 = lshr i32 %2334, 31
  %2350 = trunc i32 %2349 to i8
  store i8 %2350, i8* %33, align 1
  %2351 = lshr i32 %2324, 31
  %2352 = lshr i32 %2333, 31
  %2353 = xor i32 %2352, %2351
  %2354 = xor i32 %2349, %2351
  %2355 = add nuw nsw i32 %2354, %2353
  %2356 = icmp eq i32 %2355, 2
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %39, align 1
  %.v94 = select i1 %2347, i64 22, i64 108
  %2358 = add i64 %2319, %.v94
  store i64 %2358, i64* %3, align 8
  br i1 %2347, label %block_467624, label %block_.L_46767a

block_467624:                                     ; preds = %block_.L_46760e
  %2359 = add i64 %2358, 4
  store i64 %2359, i64* %3, align 8
  %2360 = load i64, i64* %2328, align 8
  store i64 %2360, i64* %RAX.i863, align 8
  %2361 = add i64 %2360, 400
  %2362 = add i64 %2358, 11
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2361 to i32*
  %2364 = load i32, i32* %2363, align 4
  %2365 = add i32 %2364, -50
  %2366 = icmp ult i32 %2364, 50
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %14, align 1
  %2368 = and i32 %2365, 255
  %2369 = tail call i32 @llvm.ctpop.i32(i32 %2368)
  %2370 = trunc i32 %2369 to i8
  %2371 = and i8 %2370, 1
  %2372 = xor i8 %2371, 1
  store i8 %2372, i8* %21, align 1
  %2373 = xor i32 %2364, 16
  %2374 = xor i32 %2373, %2365
  %2375 = lshr i32 %2374, 4
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  store i8 %2377, i8* %27, align 1
  %2378 = icmp eq i32 %2365, 0
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %30, align 1
  %2380 = lshr i32 %2365, 31
  %2381 = trunc i32 %2380 to i8
  store i8 %2381, i8* %33, align 1
  %2382 = lshr i32 %2364, 31
  %2383 = xor i32 %2380, %2382
  %2384 = add nuw nsw i32 %2383, %2382
  %2385 = icmp eq i32 %2384, 2
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %39, align 1
  %2387 = icmp ne i8 %2381, 0
  %2388 = xor i1 %2387, %2385
  %.v95 = select i1 %2388, i64 17, i64 86
  %2389 = add i64 %2358, %.v95
  store i64 %2389, i64* %3, align 8
  br i1 %2388, label %block_467635, label %block_.L_46767a

block_467635:                                     ; preds = %block_467624
  %2390 = add i64 %2320, -680
  %2391 = add i64 %2389, 6
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2390 to i32*
  %2393 = load i32, i32* %2392, align 4
  %2394 = zext i32 %2393 to i64
  store i64 %2394, i64* %RAX.i863, align 8
  %2395 = add i64 %2389, 10
  store i64 %2395, i64* %3, align 8
  %2396 = load i64, i64* %2328, align 8
  store i64 %2396, i64* %RCX.i412, align 8
  %2397 = add i64 %2389, 14
  store i64 %2397, i64* %3, align 8
  %2398 = load i64, i64* %2328, align 8
  store i64 %2398, i64* %RDX.i855, align 8
  %2399 = add i64 %2398, 400
  %2400 = add i64 %2389, 21
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2399 to i32*
  %2402 = load i32, i32* %2401, align 4
  %2403 = sext i32 %2402 to i64
  store i64 %2403, i64* %RDX.i855, align 8
  %2404 = shl nsw i64 %2403, 2
  %2405 = add i64 %2404, %2396
  %2406 = add i64 %2389, 24
  store i64 %2406, i64* %3, align 8
  %2407 = inttoptr i64 %2405 to i32*
  store i32 %2393, i32* %2407, align 4
  %2408 = load i64, i64* %RBP.i, align 8
  %2409 = add i64 %2408, -16
  %2410 = load i64, i64* %3, align 8
  %2411 = add i64 %2410, 4
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2409 to i64*
  %2413 = load i64, i64* %2412, align 8
  store i64 %2413, i64* %RCX.i412, align 8
  %2414 = add i64 %2410, 8
  store i64 %2414, i64* %3, align 8
  %2415 = load i64, i64* %2412, align 8
  store i64 %2415, i64* %RDX.i855, align 8
  %2416 = add i64 %2415, 400
  %2417 = add i64 %2410, 15
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = sext i32 %2419 to i64
  store i64 %2420, i64* %RDX.i855, align 8
  %2421 = shl nsw i64 %2420, 2
  %2422 = add i64 %2413, 200
  %2423 = add i64 %2422, %2421
  %2424 = add i64 %2410, 26
  store i64 %2424, i64* %3, align 8
  %2425 = inttoptr i64 %2423 to i32*
  store i32 1, i32* %2425, align 4
  %2426 = load i64, i64* %RBP.i, align 8
  %2427 = add i64 %2426, -16
  %2428 = load i64, i64* %3, align 8
  %2429 = add i64 %2428, 4
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2427 to i64*
  %2431 = load i64, i64* %2430, align 8
  store i64 %2431, i64* %RCX.i412, align 8
  %2432 = add i64 %2431, 400
  %2433 = add i64 %2428, 10
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i32*
  %2435 = load i32, i32* %2434, align 4
  %2436 = add i32 %2435, 1
  %2437 = zext i32 %2436 to i64
  store i64 %2437, i64* %RAX.i863, align 8
  %2438 = icmp eq i32 %2435, -1
  %2439 = icmp eq i32 %2436, 0
  %2440 = or i1 %2438, %2439
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %14, align 1
  %2442 = and i32 %2436, 255
  %2443 = tail call i32 @llvm.ctpop.i32(i32 %2442)
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  %2446 = xor i8 %2445, 1
  store i8 %2446, i8* %21, align 1
  %2447 = xor i32 %2436, %2435
  %2448 = lshr i32 %2447, 4
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  store i8 %2450, i8* %27, align 1
  %2451 = zext i1 %2439 to i8
  store i8 %2451, i8* %30, align 1
  %2452 = lshr i32 %2436, 31
  %2453 = trunc i32 %2452 to i8
  store i8 %2453, i8* %33, align 1
  %2454 = lshr i32 %2435, 31
  %2455 = xor i32 %2452, %2454
  %2456 = add nuw nsw i32 %2455, %2452
  %2457 = icmp eq i32 %2456, 2
  %2458 = zext i1 %2457 to i8
  store i8 %2458, i8* %39, align 1
  %2459 = add i64 %2428, 19
  store i64 %2459, i64* %3, align 8
  store i32 %2436, i32* %2434, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_46767a

block_.L_46767a:                                  ; preds = %block_.L_46760e, %block_467624, %block_467635
  %2460 = phi i64 [ %2389, %block_467624 ], [ %.pre67, %block_467635 ], [ %2358, %block_.L_46760e ]
  %2461 = add i64 %2460, 10
  store i64 %2461, i64* %3, align 8
  br label %block_.L_467684

block_.L_467684:                                  ; preds = %block_46757e, %block_.L_46767a, %block_.L_46756a, %block_.L_46744b, %block_467344, %block_46714a, %block_.L_46713b
  %2462 = phi i64 [ %1769, %block_.L_46744b ], [ %2139, %block_.L_46756a ], [ %2167, %block_46757e ], [ %2461, %block_.L_46767a ], [ %1423, %block_467344 ], [ %745, %block_46714a ], [ %713, %block_.L_46713b ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.15, %block_.L_46744b ], [ %call2_467570, %block_.L_46756a ], [ %call2_467587, %block_46757e ], [ %call2_467587, %block_.L_46767a ], [ %call2_46715e, %block_467344 ], [ %MEMORY.5, %block_46714a ], [ %call2_46703e, %block_.L_46713b ]
  %2463 = load i64, i64* %6, align 8
  %2464 = add i64 %2463, 752
  store i64 %2464, i64* %6, align 8
  %2465 = icmp ugt i64 %2463, -753
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %14, align 1
  %2467 = trunc i64 %2464 to i32
  %2468 = and i32 %2467, 255
  %2469 = tail call i32 @llvm.ctpop.i32(i32 %2468)
  %2470 = trunc i32 %2469 to i8
  %2471 = and i8 %2470, 1
  %2472 = xor i8 %2471, 1
  store i8 %2472, i8* %21, align 1
  %2473 = xor i64 %2463, 16
  %2474 = xor i64 %2473, %2464
  %2475 = lshr i64 %2474, 4
  %2476 = trunc i64 %2475 to i8
  %2477 = and i8 %2476, 1
  store i8 %2477, i8* %27, align 1
  %2478 = icmp eq i64 %2464, 0
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %30, align 1
  %2480 = lshr i64 %2464, 63
  %2481 = trunc i64 %2480 to i8
  store i8 %2481, i8* %33, align 1
  %2482 = lshr i64 %2463, 63
  %2483 = xor i64 %2480, %2482
  %2484 = add nuw nsw i64 %2483, %2480
  %2485 = icmp eq i64 %2484, 2
  %2486 = zext i1 %2485 to i8
  store i8 %2486, i8* %39, align 1
  %2487 = add i64 %2462, 8
  store i64 %2487, i64* %3, align 8
  %2488 = add i64 %2463, 760
  %2489 = inttoptr i64 %2464 to i64*
  %2490 = load i64, i64* %2489, align 8
  store i64 %2490, i64* %RBP.i, align 8
  store i64 %2488, i64* %6, align 8
  %2491 = add i64 %2462, 9
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2488 to i64*
  %2493 = load i64, i64* %2492, align 8
  store i64 %2493, i64* %3, align 8
  %2494 = add i64 %2463, 768
  store i64 %2494, i64* %6, align 8
  ret %struct.Memory* %MEMORY.24
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
define %struct.Memory* @routine_subq__0x2f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -752
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 752
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
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
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
define %struct.Memory* @routine_callq_.countlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_466f75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_466fe6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xec2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3778, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fc9d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fc9d_type* @G__0x57fc9d to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -712
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movq__rdx__MINUS0x2d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -720
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -712
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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
define %struct.Memory* @routine_movl__eax__MINUS0x2d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -724
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movq_MINUS0x2d0__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -720
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -728
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
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
define %struct.Memory* @routine_movl_MINUS0x2d8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -728
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
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2a0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -672
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.chainlinks2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_467140(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jle_.L_467140(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2b4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -692
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2a0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -672
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.findlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -692
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl__eax__MINUS0x2dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -732
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.is_self_atari(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46713b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_467051(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
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
define %struct.Memory* @routine_cmpl_0x190__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 400
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
define %struct.Memory* @routine_jge_.L_4670c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2b8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2b4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -692
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
define %struct.Memory* @routine_jne_.L_4670ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xc8__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 200
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967295
  store i64 %7, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
  %16 = icmp eq i32 %6, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xc8__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 200
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4670c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4670b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x2b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -696
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46705b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_467131(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x32__0x190__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -50
  %10 = icmp ult i32 %8, 50
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
define %struct.Memory* @routine_jge_.L_467131(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -692
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
define %struct.Memory* @routine_movslq_0x190__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x0__0xc8__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 200
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x190__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 400
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
define %struct.Memory* @routine_movl__eax__0x190__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 400
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_467136(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46713b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_467684(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_46714f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x2a8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -680
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -736
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jge_.L_4672dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2a8__rbp__rsi_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -680
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.approxlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_4672c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movl_MINUS0x2a8__rbp__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -680
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4672c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4671c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2bc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -700
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
define %struct.Memory* @routine_jge_.L_467247(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2bc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_cmpl_MINUS0x2a8__rbp__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -680
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46722e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2bc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -700
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
define %struct.Memory* @routine_jmpq_.L_467247(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_467233(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -700
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4671d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4672bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4672bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2a8__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -680
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
define %struct.Memory* @routine_jmpq_.L_4672c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4672c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4672ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jmpq_.L_467170(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2a8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -680
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
define %struct.Memory* @routine_movl_MINUS0x2a4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -676
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
define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_467349(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2a4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -676
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
define %struct.Memory* @routine_jge_.L_46736c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2a4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -676
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
define %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -740
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_467378(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2e4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -740
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
define %struct.Memory* @routine_movl__eax__MINUS0x2ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -684
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4673aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -744
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4673b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -744
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
define %struct.Memory* @routine_movl__eax__MINUS0x2b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -688
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2ac__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -684
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
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_jne_.L_467408(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2b0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -688
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
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
define %struct.Memory* @routine_je_.L_467408(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2ac__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -684
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.same_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_467450(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2b0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -688
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
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_jne_.L_46744b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46744b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2a8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -680
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46756a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2a4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -676
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46756a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_467480(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -704
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -704
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
define %struct.Memory* @routine_jge_.L_4674f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -704
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2a4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -676
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
define %struct.Memory* @routine_jne_.L_4674db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4674f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4674e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -704
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46748a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_467560(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_467560(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0xc8__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 200
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 1, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_467565(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46756a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_467684(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_467684(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46759a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -708
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -708
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
define %struct.Memory* @routine_jge_.L_46760e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -708
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2a8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -680
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
define %struct.Memory* @routine_jne_.L_4675f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46760e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4675fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -708
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4675a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46767a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_46767a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46767f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x2f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 752
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -753
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
