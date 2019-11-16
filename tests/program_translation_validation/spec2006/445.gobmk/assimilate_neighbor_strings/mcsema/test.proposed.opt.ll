; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99da00_type = type <{ [4 x i8] }>
%G_0x99da04_type = type <{ [4 x i8] }>
%G_0x99da08_type = type <{ [4 x i8] }>
%G_0xa0e710_type = type <{ [8 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a321_type = type <{ [8 x i8] }>
%G__0x99da00_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
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
@G_0x99da00 = local_unnamed_addr global %G_0x99da00_type zeroinitializer
@G_0x99da04 = local_unnamed_addr global %G_0x99da04_type zeroinitializer
@G_0x99da08 = local_unnamed_addr global %G_0x99da08_type zeroinitializer
@G_0xa0e710 = local_unnamed_addr global %G_0xa0e710_type zeroinitializer
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a321 = global %G__0x57a321_type zeroinitializer
@G__0x99da00 = global %G__0x99da00_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40cd50.assimilate_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @assimilate_neighbor_strings(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1746 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x99da00_type* @G__0x99da00 to i64), i64* %RAX.i1746, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1744 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 3, i64* %RCX.i1744, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1741 = bitcast %union.anon* %42 to i32*
  %43 = add i64 %7, -12
  %44 = load i32, i32* %EDI.i1741, align 4
  %45 = add i64 %10, 25
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %46, align 4
  %RDX.i1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -4
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 4
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %48 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %RDX.i1738, align 8
  %RDI.i1736 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %54 = add nsw i64 %53, 12099168
  %55 = add i64 %49, 12
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %54 to i8*
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i64
  store i64 %58, i64* %RDI.i1736, align 8
  %59 = add i64 %47, -12
  %60 = zext i8 %57 to i32
  %61 = add i64 %49, 15
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %62, align 4
  %63 = load i64, i64* %RCX.i1744, align 8
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -12
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 3
  store i64 %67, i64* %3, align 8
  %68 = trunc i64 %63 to i32
  %69 = inttoptr i64 %65 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %68, %70
  %ECX.i1726 = bitcast %union.anon* %41 to i32*
  %72 = add i64 %64, -16
  %73 = add i64 %66, 6
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  store i32 %71, i32* %74, align 4
  %75 = load i64, i64* %3, align 8
  %76 = load i64*, i64** bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64**), align 8
  %77 = load i64, i64* %RAX.i1746, align 8
  %78 = add i64 %75, 11
  store i64 %78, i64* %3, align 8
  store i64 %77, i64* %76, align 8
  %79 = load i64, i64* %3, align 8
  %80 = load i32, i32* bitcast (%G_0x99da00_type* @G_0x99da00 to i32*), align 8
  %81 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %81, i64* %RAX.i1746, align 8
  %82 = add i64 %81, 16
  store i64 %82, i64* %RDX.i1738, align 8
  store i64 %82, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %83 = add i64 %81, 8
  %84 = add i64 %79, 33
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i32*
  store i32 %80, i32* %85, align 4
  %86 = load i64, i64* %3, align 8
  %87 = load i32, i32* bitcast (%G_0x99da00_type* @G_0x99da00 to i32*), align 8
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RCX.i1744, align 8
  %89 = add i32 %87, 1
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RDI.i1736, align 8
  %91 = icmp eq i32 %87, -1
  %92 = icmp eq i32 %89, 0
  %93 = or i1 %91, %92
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %14, align 1
  %95 = and i32 %89, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95)
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %21, align 1
  %100 = xor i32 %89, %87
  %101 = lshr i32 %100, 4
  %102 = trunc i32 %101 to i8
  %103 = and i8 %102, 1
  store i8 %103, i8* %27, align 1
  %104 = zext i1 %92 to i8
  store i8 %104, i8* %30, align 1
  %105 = lshr i32 %89, 31
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %33, align 1
  %107 = lshr i32 %87, 31
  %108 = xor i32 %105, %107
  %109 = add nuw nsw i32 %108, %105
  %110 = icmp eq i32 %109, 2
  %111 = zext i1 %110 to i8
  store i8 %111, i8* %39, align 1
  store i32 %89, i32* bitcast (%G_0x99da00_type* @G_0x99da00 to i32*), align 8
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -8
  %114 = add i64 %86, 22
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  store i32 %87, i32* %115, align 4
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -8
  %118 = load i64, i64* %3, align 8
  %119 = add i64 %118, 7
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %117 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = add i32 %121, -240
  %123 = icmp ult i32 %121, 240
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %14, align 1
  %125 = and i32 %122, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %21, align 1
  %130 = xor i32 %121, 16
  %131 = xor i32 %130, %122
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %27, align 1
  %135 = icmp eq i32 %122, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %30, align 1
  %137 = lshr i32 %122, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %33, align 1
  %139 = lshr i32 %121, 31
  %140 = xor i32 %137, %139
  %141 = add nuw nsw i32 %140, %139
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %39, align 1
  %144 = icmp ne i8 %138, 0
  %145 = xor i1 %144, %142
  %.v = select i1 %145, i64 13, i64 18
  %146 = add i64 %118, %.v
  store i64 %146, i64* %3, align 8
  br i1 %145, label %block_40c0ee, label %block_.L_40c0f3

block_40c0ee:                                     ; preds = %entry
  %147 = add i64 %146, 94
  store i64 %147, i64* %3, align 8
  br label %block_.L_40c14c

block_.L_40c0f3:                                  ; preds = %entry
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i1736, align 8
  %RSI.i1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 3296, i64* %RSI.i1688, align 8
  store i64 ptrtoint (%G__0x57a321_type* @G__0x57a321 to i64), i64* %RDX.i1738, align 8
  store i64 20, i64* %RAX.i1746, align 8
  %148 = add i64 %116, -4
  %149 = add i64 %146, 33
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  store i64 %152, i64* %RCX.i1744, align 8
  %EAX.i1678 = bitcast %union.anon* %40 to i32*
  %153 = add i64 %116, -20
  %154 = add i64 %146, 36
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 20, i32* %155, align 4
  %156 = load i32, i32* %ECX.i1726, align 4
  %157 = zext i32 %156 to i64
  %158 = load i64, i64* %3, align 8
  store i64 %157, i64* %RAX.i1746, align 8
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -32
  %161 = load i64, i64* %RDX.i1738, align 8
  %162 = add i64 %158, 6
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %163, align 8
  %164 = load i64, i64* %3, align 8
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %166 = load i32, i32* %EAX.i1678, align 8
  %167 = sext i32 %166 to i64
  %168 = lshr i64 %167, 32
  store i64 %168, i64* %165, align 8
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -20
  %171 = add i64 %164, 4
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RCX.i1744, align 8
  %175 = add i64 %164, 6
  store i64 %175, i64* %3, align 8
  %176 = zext i32 %166 to i64
  %177 = sext i32 %173 to i64
  %178 = shl nuw i64 %168, 32
  %179 = or i64 %178, %176
  %180 = sdiv i64 %179, %177
  %181 = shl i64 %180, 32
  %182 = ashr exact i64 %181, 32
  %183 = icmp eq i64 %180, %182
  br i1 %183, label %186, label %184

; <label>:184:                                    ; preds = %block_.L_40c0f3
  %185 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %175, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i1746, align 8
  %.pre36 = load i64, i64* %3, align 8
  %.pre37 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1664

; <label>:186:                                    ; preds = %block_.L_40c0f3
  %187 = srem i64 %179, %177
  %188 = and i64 %180, 4294967295
  store i64 %188, i64* %RAX.i1746, align 8
  %189 = and i64 %187, 4294967295
  store i64 %189, i64* %RDX.i1738, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit1664

routine_idivl__ecx.exit1664:                      ; preds = %186, %184
  %190 = phi i64 [ %.pre37, %184 ], [ %169, %186 ]
  %191 = phi i64 [ %.pre36, %184 ], [ %175, %186 ]
  %192 = phi i64 [ %.pre, %184 ], [ %188, %186 ]
  %193 = phi %struct.Memory* [ %185, %184 ], [ %2, %186 ]
  %194 = trunc i64 %192 to i32
  %195 = add i32 %194, -1
  %196 = zext i32 %195 to i64
  store i64 %196, i64* %RAX.i1746, align 8
  %197 = icmp eq i32 %194, 0
  %198 = zext i1 %197 to i8
  store i8 %198, i8* %14, align 1
  %199 = and i32 %195, 255
  %200 = tail call i32 @llvm.ctpop.i32(i32 %199)
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 1
  %203 = xor i8 %202, 1
  store i8 %203, i8* %21, align 1
  %204 = xor i32 %195, %194
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %27, align 1
  %208 = icmp eq i32 %195, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %30, align 1
  %210 = lshr i32 %195, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %33, align 1
  %212 = lshr i32 %194, 31
  %213 = xor i32 %210, %212
  %214 = add nuw nsw i32 %213, %212
  %215 = icmp eq i32 %214, 2
  %216 = zext i1 %215 to i8
  store i8 %216, i8* %39, align 1
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1658 = bitcast %union.anon* %217 to i32*
  %218 = getelementptr inbounds %union.anon, %union.anon* %217, i64 0, i32 0
  %219 = add i64 %190, -4
  %220 = add i64 %191, 7
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %219 to i32*
  %222 = load i32, i32* %221, align 4
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %218, align 8
  %224 = add i64 %190, -36
  %225 = add i64 %191, 10
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i32*
  store i32 %195, i32* %226, align 4
  %227 = load i32, i32* %R8D.i1658, align 4
  %228 = zext i32 %227 to i64
  %229 = load i64, i64* %3, align 8
  store i64 %228, i64* %RAX.i1746, align 8
  %230 = sext i32 %227 to i64
  %231 = lshr i64 %230, 32
  store i64 %231, i64* %165, align 8
  %232 = load i32, i32* %ECX.i1726, align 4
  %233 = add i64 %229, 6
  store i64 %233, i64* %3, align 8
  %234 = sext i32 %232 to i64
  %235 = shl nuw i64 %231, 32
  %236 = or i64 %235, %228
  %237 = sdiv i64 %236, %234
  %238 = shl i64 %237, 32
  %239 = ashr exact i64 %238, 32
  %240 = icmp eq i64 %237, %239
  br i1 %240, label %243, label %241

; <label>:241:                                    ; preds = %routine_idivl__ecx.exit1664
  %242 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %233, %struct.Memory* %193)
  %.pre38 = load i64, i64* %RDX.i1738, align 8
  %.pre39 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:243:                                    ; preds = %routine_idivl__ecx.exit1664
  %244 = srem i64 %236, %234
  %245 = and i64 %237, 4294967295
  store i64 %245, i64* %RAX.i1746, align 8
  %246 = and i64 %244, 4294967295
  store i64 %246, i64* %RDX.i1738, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %243, %241
  %247 = phi i64 [ %.pre39, %241 ], [ %233, %243 ]
  %248 = phi i64 [ %.pre38, %241 ], [ %246, %243 ]
  %249 = phi %struct.Memory* [ %242, %241 ], [ %193, %243 ]
  %250 = trunc i64 %248 to i32
  %251 = add i32 %250, -1
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RDX.i1738, align 8
  %253 = icmp eq i32 %250, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %14, align 1
  %255 = and i32 %251, 255
  %256 = tail call i32 @llvm.ctpop.i32(i32 %255)
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  %259 = xor i8 %258, 1
  store i8 %259, i8* %21, align 1
  %260 = xor i32 %251, %250
  %261 = lshr i32 %260, 4
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  store i8 %263, i8* %27, align 1
  %264 = icmp eq i32 %251, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %30, align 1
  %266 = lshr i32 %251, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %33, align 1
  %268 = lshr i32 %250, 31
  %269 = xor i32 %266, %268
  %270 = add nuw nsw i32 %269, %268
  %271 = icmp eq i32 %270, 2
  %272 = zext i1 %271 to i8
  store i8 %272, i8* %39, align 1
  %R9.i1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -32
  %275 = add i64 %247, 7
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %R9.i1642, align 8
  %278 = add i64 %273, -40
  %279 = add i64 %247, 10
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  store i32 %251, i32* %280, align 4
  %281 = load i64, i64* %R9.i1642, align 8
  %282 = load i64, i64* %3, align 8
  store i64 %281, i64* %RDX.i1738, align 8
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -36
  %285 = add i64 %282, 6
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RCX.i1744, align 8
  %289 = add i64 %283, -40
  %290 = add i64 %282, 10
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %218, align 8
  %294 = add i64 %282, 286547
  %295 = add i64 %282, 15
  %296 = load i64, i64* %6, align 8
  %297 = add i64 %296, -8
  %298 = inttoptr i64 %297 to i64*
  store i64 %295, i64* %298, align 8
  store i64 %297, i64* %6, align 8
  store i64 %294, i64* %3, align 8
  %call2_40c147 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %294, %struct.Memory* %249)
  %.pre40 = load i64, i64* %3, align 8
  %.pre41 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40c14c

block_.L_40c14c:                                  ; preds = %routine_idivl__ecx.exit, %block_40c0ee
  %299 = phi i64 [ %.pre41, %routine_idivl__ecx.exit ], [ %116, %block_40c0ee ]
  %300 = phi i64 [ %.pre40, %routine_idivl__ecx.exit ], [ %147, %block_40c0ee ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_40c147, %routine_idivl__ecx.exit ], [ %2, %block_40c0ee ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %301 = add i64 %299, -8
  %302 = add i64 %300, 13
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = zext i32 %304 to i64
  store i64 %305, i64* %RCX.i1744, align 8
  %306 = add i64 %299, -4
  %307 = add i64 %300, 17
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = sext i32 %309 to i64
  store i64 %310, i64* %RDX.i1738, align 8
  %311 = shl nsw i64 %310, 2
  %312 = add nsw i64 %311, 11187184
  %313 = add i64 %300, 24
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i32*
  store i32 %304, i32* %314, align 4
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -4
  %317 = load i64, i64* %3, align 8
  %318 = add i64 %317, 3
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %316 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RCX.i1744, align 8
  %322 = add i64 %317, 7
  store i64 %322, i64* %3, align 8
  %323 = load i32, i32* %319, align 4
  %324 = sext i32 %323 to i64
  store i64 %324, i64* %RDX.i1738, align 8
  %325 = shl nsw i64 %324, 2
  %326 = add nsw i64 %325, 11188784
  %327 = add i64 %317, 14
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  store i32 %320, i32* %328, align 4
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -12
  %331 = load i64, i64* %3, align 8
  %332 = add i64 %331, 3
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %330 to i32*
  %334 = load i32, i32* %333, align 4
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RCX.i1744, align 8
  %336 = add i64 %329, -8
  %337 = add i64 %331, 7
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = mul nsw i64 %340, 744
  store i64 %341, i64* %RDX.i1738, align 8
  %342 = lshr i64 %341, 63
  %RSI.i1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %343 = load i64, i64* %RAX.i1746, align 8
  %344 = add i64 %341, %343
  store i64 %344, i64* %RSI.i1599, align 8
  %345 = icmp ult i64 %344, %343
  %346 = icmp ult i64 %344, %341
  %347 = or i1 %345, %346
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %14, align 1
  %349 = trunc i64 %344 to i32
  %350 = and i32 %349, 255
  %351 = tail call i32 @llvm.ctpop.i32(i32 %350)
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %21, align 1
  %355 = xor i64 %341, %343
  %356 = xor i64 %355, %344
  %357 = lshr i64 %356, 4
  %358 = trunc i64 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %27, align 1
  %360 = icmp eq i64 %344, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %30, align 1
  %362 = lshr i64 %344, 63
  %363 = trunc i64 %362 to i8
  store i8 %363, i8* %33, align 1
  %364 = lshr i64 %343, 63
  %365 = xor i64 %362, %364
  %366 = xor i64 %362, %342
  %367 = add nuw nsw i64 %365, %366
  %368 = icmp eq i64 %367, 2
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %39, align 1
  %370 = inttoptr i64 %344 to i32*
  %371 = add i64 %331, 22
  store i64 %371, i64* %3, align 8
  store i32 %334, i32* %370, align 4
  %372 = load i64, i64* %RBP.i, align 8
  %373 = add i64 %372, -8
  %374 = load i64, i64* %3, align 8
  %375 = add i64 %374, 4
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %373 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = mul nsw i64 %378, 744
  store i64 %379, i64* %RDX.i1738, align 8
  %380 = lshr i64 %379, 63
  %381 = load i64, i64* %RAX.i1746, align 8
  %382 = add i64 %379, %381
  store i64 %382, i64* %RSI.i1599, align 8
  %383 = icmp ult i64 %382, %381
  %384 = icmp ult i64 %382, %379
  %385 = or i1 %383, %384
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %14, align 1
  %387 = trunc i64 %382 to i32
  %388 = and i32 %387, 255
  %389 = tail call i32 @llvm.ctpop.i32(i32 %388)
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  %392 = xor i8 %391, 1
  store i8 %392, i8* %21, align 1
  %393 = xor i64 %379, %381
  %394 = xor i64 %393, %382
  %395 = lshr i64 %394, 4
  %396 = trunc i64 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %27, align 1
  %398 = icmp eq i64 %382, 0
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %30, align 1
  %400 = lshr i64 %382, 63
  %401 = trunc i64 %400 to i8
  store i8 %401, i8* %33, align 1
  %402 = lshr i64 %381, 63
  %403 = xor i64 %400, %402
  %404 = xor i64 %400, %380
  %405 = add nuw nsw i64 %403, %404
  %406 = icmp eq i64 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %39, align 1
  %408 = add i64 %382, 4
  %409 = add i64 %374, 24
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  store i32 1, i32* %410, align 4
  %411 = load i64, i64* %RBP.i, align 8
  %412 = add i64 %411, -4
  %413 = load i64, i64* %3, align 8
  %414 = add i64 %413, 3
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %412 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RCX.i1744, align 8
  %418 = add i64 %411, -8
  %419 = add i64 %413, 7
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = mul nsw i64 %422, 744
  store i64 %423, i64* %RDX.i1738, align 8
  %424 = lshr i64 %423, 63
  %425 = load i64, i64* %RAX.i1746, align 8
  %426 = add i64 %423, %425
  store i64 %426, i64* %RSI.i1599, align 8
  %427 = icmp ult i64 %426, %425
  %428 = icmp ult i64 %426, %423
  %429 = or i1 %427, %428
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %14, align 1
  %431 = trunc i64 %426 to i32
  %432 = and i32 %431, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %21, align 1
  %437 = xor i64 %423, %425
  %438 = xor i64 %437, %426
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %27, align 1
  %442 = icmp eq i64 %426, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %30, align 1
  %444 = lshr i64 %426, 63
  %445 = trunc i64 %444 to i8
  store i8 %445, i8* %33, align 1
  %446 = lshr i64 %425, 63
  %447 = xor i64 %444, %446
  %448 = xor i64 %444, %424
  %449 = add nuw nsw i64 %447, %448
  %450 = icmp eq i64 %449, 2
  %451 = zext i1 %450 to i8
  store i8 %451, i8* %39, align 1
  %452 = add i64 %426, 8
  %453 = add i64 %413, 23
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  store i32 %416, i32* %454, align 4
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -8
  %457 = load i64, i64* %3, align 8
  %458 = add i64 %457, 4
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %456 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = sext i32 %460 to i64
  %462 = mul nsw i64 %461, 744
  store i64 %462, i64* %RDX.i1738, align 8
  %463 = lshr i64 %462, 63
  %464 = load i64, i64* %RAX.i1746, align 8
  %465 = add i64 %462, %464
  store i64 %465, i64* %RSI.i1599, align 8
  %466 = icmp ult i64 %465, %464
  %467 = icmp ult i64 %465, %462
  %468 = or i1 %466, %467
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %14, align 1
  %470 = trunc i64 %465 to i32
  %471 = and i32 %470, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %21, align 1
  %476 = xor i64 %462, %464
  %477 = xor i64 %476, %465
  %478 = lshr i64 %477, 4
  %479 = trunc i64 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %27, align 1
  %481 = icmp eq i64 %465, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %30, align 1
  %483 = lshr i64 %465, 63
  %484 = trunc i64 %483 to i8
  store i8 %484, i8* %33, align 1
  %485 = lshr i64 %464, 63
  %486 = xor i64 %483, %485
  %487 = xor i64 %483, %463
  %488 = add nuw nsw i64 %486, %487
  %489 = icmp eq i64 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %39, align 1
  %491 = add i64 %465, 12
  %492 = add i64 %457, 24
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  store i32 0, i32* %493, align 4
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -8
  %496 = load i64, i64* %3, align 8
  %497 = add i64 %496, 4
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %495 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  %501 = mul nsw i64 %500, 744
  store i64 %501, i64* %RDX.i1738, align 8
  %502 = load i64, i64* %RAX.i1746, align 8
  %503 = add i64 %501, %502
  store i64 %503, i64* %RSI.i1599, align 8
  %504 = add i64 %503, 96
  %505 = add i64 %496, 24
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i32*
  store i32 0, i32* %506, align 4
  %507 = load i64, i64* %3, align 8
  %508 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %509 = add i32 %508, 1
  store i32 %509, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %510 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %511 = add i32 %510, 1
  %512 = zext i32 %511 to i64
  %513 = icmp eq i32 %510, -1
  %514 = icmp eq i32 %511, 0
  %515 = or i1 %513, %514
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %14, align 1
  %517 = and i32 %511, 255
  %518 = tail call i32 @llvm.ctpop.i32(i32 %517)
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  %521 = xor i8 %520, 1
  store i8 %521, i8* %21, align 1
  %522 = xor i32 %511, %510
  %523 = lshr i32 %522, 4
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  store i8 %525, i8* %27, align 1
  %526 = zext i1 %514 to i8
  store i8 %526, i8* %30, align 1
  %527 = lshr i32 %511, 31
  %528 = trunc i32 %527 to i8
  store i8 %528, i8* %33, align 1
  %529 = lshr i32 %510, 31
  %530 = xor i32 %527, %529
  %531 = add nuw nsw i32 %530, %527
  %532 = icmp eq i32 %531, 2
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %39, align 1
  store i32 %511, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  store i64 %512, i64* %RCX.i1744, align 8
  %534 = load i64, i64* %RBP.i, align 8
  %535 = add i64 %534, -8
  %536 = add i64 %507, 45
  store i64 %536, i64* %3, align 8
  %537 = inttoptr i64 %535 to i32*
  %538 = load i32, i32* %537, align 4
  %539 = sext i32 %538 to i64
  %540 = mul nsw i64 %539, 744
  store i64 %540, i64* %RDX.i1738, align 8
  %541 = lshr i64 %540, 63
  %542 = load i64, i64* %RAX.i1746, align 8
  %543 = add i64 %540, %542
  store i64 %543, i64* %RAX.i1746, align 8
  %544 = icmp ult i64 %543, %542
  %545 = icmp ult i64 %543, %540
  %546 = or i1 %544, %545
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %14, align 1
  %548 = trunc i64 %543 to i32
  %549 = and i32 %548, 255
  %550 = tail call i32 @llvm.ctpop.i32(i32 %549)
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  %553 = xor i8 %552, 1
  store i8 %553, i8* %21, align 1
  %554 = xor i64 %540, %542
  %555 = xor i64 %554, %543
  %556 = lshr i64 %555, 4
  %557 = trunc i64 %556 to i8
  %558 = and i8 %557, 1
  store i8 %558, i8* %27, align 1
  %559 = icmp eq i64 %543, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %30, align 1
  %561 = lshr i64 %543, 63
  %562 = trunc i64 %561 to i8
  store i8 %562, i8* %33, align 1
  %563 = lshr i64 %542, 63
  %564 = xor i64 %561, %563
  %565 = xor i64 %561, %541
  %566 = add nuw nsw i64 %564, %565
  %567 = icmp eq i64 %566, 2
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %39, align 1
  %569 = add i64 %543, 740
  %570 = add i64 %507, 61
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  store i32 %511, i32* %571, align 4
  %572 = load i64, i64* %RBP.i, align 8
  %573 = add i64 %572, -4
  %574 = load i64, i64* %3, align 8
  %575 = add i64 %574, 3
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %573 to i32*
  %577 = load i32, i32* %576, align 4
  %578 = add i32 %577, 20
  %579 = zext i32 %578 to i64
  store i64 %579, i64* %RCX.i1744, align 8
  %580 = icmp ugt i32 %577, -21
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %14, align 1
  %582 = and i32 %578, 255
  %583 = tail call i32 @llvm.ctpop.i32(i32 %582)
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  %586 = xor i8 %585, 1
  store i8 %586, i8* %21, align 1
  %587 = xor i32 %577, 16
  %588 = xor i32 %587, %578
  %589 = lshr i32 %588, 4
  %590 = trunc i32 %589 to i8
  %591 = and i8 %590, 1
  store i8 %591, i8* %27, align 1
  %592 = icmp eq i32 %578, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %30, align 1
  %594 = lshr i32 %578, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %33, align 1
  %596 = lshr i32 %577, 31
  %597 = xor i32 %594, %596
  %598 = add nuw nsw i32 %597, %594
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %39, align 1
  %601 = sext i32 %578 to i64
  store i64 %601, i64* %RAX.i1746, align 8
  %602 = add nsw i64 %601, 12099168
  %603 = add i64 %574, 17
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i8*
  %605 = load i8, i8* %604, align 1
  %606 = zext i8 %605 to i64
  store i64 %606, i64* %RCX.i1744, align 8
  %607 = zext i8 %605 to i32
  store i8 0, i8* %14, align 1
  %608 = tail call i32 @llvm.ctpop.i32(i32 %607)
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  %611 = xor i8 %610, 1
  store i8 %611, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %612 = icmp eq i8 %605, 0
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v55 = select i1 %612, i64 26, i64 210
  %614 = add i64 %574, %.v55
  store i64 %614, i64* %3, align 8
  br i1 %612, label %block_40c23e, label %block_.L_40c2f6

block_40c23e:                                     ; preds = %block_.L_40c14c
  %615 = add i64 %614, 3
  store i64 %615, i64* %3, align 8
  %616 = load i32, i32* %576, align 4
  %617 = add i32 %616, 20
  %618 = zext i32 %617 to i64
  store i64 %618, i64* %RAX.i1746, align 8
  %619 = icmp ugt i32 %616, -21
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %14, align 1
  %621 = and i32 %617, 255
  %622 = tail call i32 @llvm.ctpop.i32(i32 %621)
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  store i8 %625, i8* %21, align 1
  %626 = xor i32 %616, 16
  %627 = xor i32 %626, %617
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %27, align 1
  %631 = icmp eq i32 %617, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %30, align 1
  %633 = lshr i32 %617, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %33, align 1
  %635 = lshr i32 %616, 31
  %636 = xor i32 %633, %635
  %637 = add nuw nsw i32 %636, %633
  %638 = icmp eq i32 %637, 2
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %39, align 1
  %640 = sext i32 %617 to i64
  store i64 %640, i64* %RCX.i1744, align 8
  %641 = shl nsw i64 %640, 2
  %642 = add nsw i64 %641, 11185584
  %643 = add i64 %614, 16
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RAX.i1746, align 8
  %647 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %648 = sub i32 %645, %647
  %649 = icmp ult i32 %645, %647
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %14, align 1
  %651 = and i32 %648, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %21, align 1
  %656 = xor i32 %647, %645
  %657 = xor i32 %656, %648
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %27, align 1
  %661 = icmp eq i32 %648, 0
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %30, align 1
  %663 = lshr i32 %648, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %33, align 1
  %665 = lshr i32 %645, 31
  %666 = lshr i32 %647, 31
  %667 = xor i32 %666, %665
  %668 = xor i32 %663, %665
  %669 = add nuw nsw i32 %668, %667
  %670 = icmp eq i32 %669, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %39, align 1
  %.v81 = select i1 %661, i64 184, i64 29
  %672 = add i64 %614, %.v81
  store i64 %672, i64* %3, align 8
  br i1 %661, label %block_.L_40c2f6, label %block_40c25b

block_40c25b:                                     ; preds = %block_40c23e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %673 = add i64 %572, -8
  %674 = add i64 %672, 19
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = sext i32 %676 to i64
  %678 = mul nsw i64 %677, 744
  store i64 %678, i64* %RCX.i1744, align 8
  %679 = lshr i64 %678, 63
  %680 = add i64 %678, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %680, i64* %RAX.i1746, align 8
  %681 = icmp ult i64 %680, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %682 = icmp ult i64 %680, %678
  %683 = or i1 %681, %682
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %14, align 1
  %685 = trunc i64 %680 to i32
  %686 = and i32 %685, 248
  %687 = tail call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  store i8 %690, i8* %21, align 1
  %691 = xor i64 %678, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %692 = xor i64 %691, %680
  %693 = lshr i64 %692, 4
  %694 = trunc i64 %693 to i8
  %695 = and i8 %694, 1
  store i8 %695, i8* %27, align 1
  %696 = icmp eq i64 %680, 0
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %30, align 1
  %698 = lshr i64 %680, 63
  %699 = trunc i64 %698 to i8
  store i8 %699, i8* %33, align 1
  %700 = xor i64 %698, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %701 = xor i64 %698, %679
  %702 = add nuw nsw i64 %700, %701
  %703 = icmp eq i64 %702, 2
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %39, align 1
  %705 = add i64 %678, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %706 = add i64 %672, 33
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = add i32 %708, -20
  %710 = icmp ult i32 %708, 20
  %711 = zext i1 %710 to i8
  store i8 %711, i8* %14, align 1
  %712 = and i32 %709, 255
  %713 = tail call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  store i8 %716, i8* %21, align 1
  %717 = xor i32 %708, 16
  %718 = xor i32 %717, %709
  %719 = lshr i32 %718, 4
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  store i8 %721, i8* %27, align 1
  %722 = icmp eq i32 %709, 0
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %30, align 1
  %724 = lshr i32 %709, 31
  %725 = trunc i32 %724 to i8
  store i8 %725, i8* %33, align 1
  %726 = lshr i32 %708, 31
  %727 = xor i32 %724, %726
  %728 = add nuw nsw i32 %727, %726
  %729 = icmp eq i32 %728, 2
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %39, align 1
  %731 = icmp ne i8 %725, 0
  %732 = xor i1 %731, %729
  %.v82 = select i1 %732, i64 39, i64 94
  %733 = add i64 %672, %.v82
  store i64 %733, i64* %3, align 8
  br i1 %732, label %block_40c282, label %block_.L_40c2b9

block_40c282:                                     ; preds = %block_40c25b
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %734 = load i64, i64* %RBP.i, align 8
  %735 = add i64 %734, -4
  %736 = add i64 %733, 13
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  %738 = load i32, i32* %737, align 4
  %739 = add i32 %738, 20
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RCX.i1744, align 8
  %741 = icmp ugt i32 %738, -21
  %742 = zext i1 %741 to i8
  store i8 %742, i8* %14, align 1
  %743 = and i32 %739, 255
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = and i8 %745, 1
  %747 = xor i8 %746, 1
  store i8 %747, i8* %21, align 1
  %748 = xor i32 %738, 16
  %749 = xor i32 %748, %739
  %750 = lshr i32 %749, 4
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  store i8 %752, i8* %27, align 1
  %753 = icmp eq i32 %739, 0
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %30, align 1
  %755 = lshr i32 %739, 31
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %33, align 1
  %757 = lshr i32 %738, 31
  %758 = xor i32 %755, %757
  %759 = add nuw nsw i32 %758, %755
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %39, align 1
  %762 = add i64 %734, -8
  %763 = add i64 %733, 20
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = sext i32 %765 to i64
  %767 = mul nsw i64 %766, 744
  store i64 %767, i64* %RDX.i1738, align 8
  %768 = lshr i64 %767, 63
  %769 = add i64 %767, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %769, i64* %RSI.i1599, align 8
  %770 = icmp ult i64 %769, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %771 = icmp ult i64 %769, %767
  %772 = or i1 %770, %771
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %14, align 1
  %774 = trunc i64 %769 to i32
  %775 = and i32 %774, 248
  %776 = tail call i32 @llvm.ctpop.i32(i32 %775)
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  %779 = xor i8 %778, 1
  store i8 %779, i8* %21, align 1
  %780 = xor i64 %767, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %781 = xor i64 %780, %769
  %782 = lshr i64 %781, 4
  %783 = trunc i64 %782 to i8
  %784 = and i8 %783, 1
  store i8 %784, i8* %27, align 1
  %785 = icmp eq i64 %769, 0
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %30, align 1
  %787 = lshr i64 %769, 63
  %788 = trunc i64 %787 to i8
  store i8 %788, i8* %33, align 1
  %789 = xor i64 %787, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %790 = xor i64 %787, %768
  %791 = add nuw nsw i64 %789, %790
  %792 = icmp eq i64 %791, 2
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %39, align 1
  %794 = load i64, i64* %RBP.i, align 8
  %795 = add i64 %794, -8
  %796 = add i64 %733, 37
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = sext i32 %798 to i64
  %800 = mul nsw i64 %799, 744
  store i64 %800, i64* %RDX.i1738, align 8
  %801 = lshr i64 %800, 63
  %802 = load i64, i64* %RAX.i1746, align 8
  %803 = add i64 %800, %802
  store i64 %803, i64* %RAX.i1746, align 8
  %804 = icmp ult i64 %803, %802
  %805 = icmp ult i64 %803, %800
  %806 = or i1 %804, %805
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %14, align 1
  %808 = trunc i64 %803 to i32
  %809 = and i32 %808, 255
  %810 = tail call i32 @llvm.ctpop.i32(i32 %809)
  %811 = trunc i32 %810 to i8
  %812 = and i8 %811, 1
  %813 = xor i8 %812, 1
  store i8 %813, i8* %21, align 1
  %814 = xor i64 %800, %802
  %815 = xor i64 %814, %803
  %816 = lshr i64 %815, 4
  %817 = trunc i64 %816 to i8
  %818 = and i8 %817, 1
  store i8 %818, i8* %27, align 1
  %819 = icmp eq i64 %803, 0
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %30, align 1
  %821 = lshr i64 %803, 63
  %822 = trunc i64 %821 to i8
  store i8 %822, i8* %33, align 1
  %823 = lshr i64 %802, 63
  %824 = xor i64 %821, %823
  %825 = xor i64 %821, %801
  %826 = add nuw nsw i64 %824, %825
  %827 = icmp eq i64 %826, 2
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %39, align 1
  %829 = add i64 %803, 12
  %830 = add i64 %733, 51
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = sext i32 %832 to i64
  store i64 %833, i64* %RAX.i1746, align 8
  %834 = load i64, i64* %RSI.i1599, align 8
  %835 = shl nsw i64 %833, 2
  %836 = add i64 %834, 16
  %837 = add i64 %836, %835
  %838 = load i32, i32* %ECX.i1726, align 4
  %839 = add i64 %733, 55
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %837 to i32*
  store i32 %838, i32* %840, align 4
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_40c2b9

block_.L_40c2b9:                                  ; preds = %block_40c25b, %block_40c282
  %841 = phi i64 [ %733, %block_40c25b ], [ %.pre42, %block_40c282 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -8
  %844 = add i64 %841, 14
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = sext i32 %846 to i64
  %848 = mul nsw i64 %847, 744
  store i64 %848, i64* %RCX.i1744, align 8
  %849 = lshr i64 %848, 63
  %850 = add i64 %848, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %850, i64* %RAX.i1746, align 8
  %851 = icmp ult i64 %850, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %852 = icmp ult i64 %850, %848
  %853 = or i1 %851, %852
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %14, align 1
  %855 = trunc i64 %850 to i32
  %856 = and i32 %855, 248
  %857 = tail call i32 @llvm.ctpop.i32(i32 %856)
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  %860 = xor i8 %859, 1
  store i8 %860, i8* %21, align 1
  %861 = xor i64 %848, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %862 = xor i64 %861, %850
  %863 = lshr i64 %862, 4
  %864 = trunc i64 %863 to i8
  %865 = and i8 %864, 1
  store i8 %865, i8* %27, align 1
  %866 = icmp eq i64 %850, 0
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %30, align 1
  %868 = lshr i64 %850, 63
  %869 = trunc i64 %868 to i8
  store i8 %869, i8* %33, align 1
  %870 = xor i64 %868, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %871 = xor i64 %868, %849
  %872 = add nuw nsw i64 %870, %871
  %873 = icmp eq i64 %872, 2
  %874 = zext i1 %873 to i8
  store i8 %874, i8* %39, align 1
  %875 = add i64 %848, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %876 = add i64 %841, 27
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = add i32 %878, 1
  %880 = icmp eq i32 %878, -1
  %881 = icmp eq i32 %879, 0
  %882 = or i1 %880, %881
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %14, align 1
  %884 = and i32 %879, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %21, align 1
  %889 = xor i32 %879, %878
  %890 = lshr i32 %889, 4
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  store i8 %892, i8* %27, align 1
  %893 = zext i1 %881 to i8
  store i8 %893, i8* %30, align 1
  %894 = lshr i32 %879, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %33, align 1
  %896 = lshr i32 %878, 31
  %897 = xor i32 %894, %896
  %898 = add nuw nsw i32 %897, %894
  %899 = icmp eq i32 %898, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %39, align 1
  %901 = add i64 %841, 33
  store i64 %901, i64* %3, align 8
  store i32 %879, i32* %877, align 4
  %902 = load i64, i64* %3, align 8
  %903 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RDX.i1738, align 8
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -4
  %907 = add i64 %902, 10
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i32*
  %909 = load i32, i32* %908, align 4
  %910 = add i32 %909, 20
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RSI.i1599, align 8
  %912 = icmp ugt i32 %909, -21
  %913 = zext i1 %912 to i8
  store i8 %913, i8* %14, align 1
  %914 = and i32 %910, 255
  %915 = tail call i32 @llvm.ctpop.i32(i32 %914)
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  %918 = xor i8 %917, 1
  store i8 %918, i8* %21, align 1
  %919 = xor i32 %909, 16
  %920 = xor i32 %919, %910
  %921 = lshr i32 %920, 4
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  store i8 %923, i8* %27, align 1
  %924 = icmp eq i32 %910, 0
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %30, align 1
  %926 = lshr i32 %910, 31
  %927 = trunc i32 %926 to i8
  store i8 %927, i8* %33, align 1
  %928 = lshr i32 %909, 31
  %929 = xor i32 %926, %928
  %930 = add nuw nsw i32 %929, %926
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %39, align 1
  %933 = sext i32 %910 to i64
  store i64 %933, i64* %RAX.i1746, align 8
  %934 = shl nsw i64 %933, 2
  %935 = add nsw i64 %934, 11185584
  %936 = add i64 %902, 23
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  store i32 %903, i32* %937, align 4
  %938 = load i64, i64* %3, align 8
  %939 = add i64 %938, 525
  br label %block_.L_40c4fe

block_.L_40c2f6:                                  ; preds = %block_.L_40c14c, %block_40c23e
  %940 = phi i64 [ %672, %block_40c23e ], [ %614, %block_.L_40c14c ]
  %941 = add i64 %940, 3
  store i64 %941, i64* %3, align 8
  %942 = load i32, i32* %576, align 4
  %943 = add i32 %942, 20
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RAX.i1746, align 8
  %945 = icmp ugt i32 %942, -21
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %14, align 1
  %947 = and i32 %943, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %21, align 1
  %952 = xor i32 %942, 16
  %953 = xor i32 %952, %943
  %954 = lshr i32 %953, 4
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  store i8 %956, i8* %27, align 1
  %957 = icmp eq i32 %943, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %30, align 1
  %959 = lshr i32 %943, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %33, align 1
  %961 = lshr i32 %942, 31
  %962 = xor i32 %959, %961
  %963 = add nuw nsw i32 %962, %959
  %964 = icmp eq i32 %963, 2
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %39, align 1
  %966 = sext i32 %943 to i64
  store i64 %966, i64* %RCX.i1744, align 8
  %967 = add nsw i64 %966, 12099168
  %968 = add i64 %940, 17
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i8*
  %970 = load i8, i8* %969, align 1
  %971 = zext i8 %970 to i64
  store i64 %971, i64* %RAX.i1746, align 8
  %972 = zext i8 %970 to i32
  %973 = add i64 %572, -16
  %974 = add i64 %940, 20
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i32*
  %976 = load i32, i32* %975, align 4
  %977 = sub i32 %972, %976
  %978 = icmp ult i32 %972, %976
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %14, align 1
  %980 = and i32 %977, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %21, align 1
  %985 = xor i32 %976, %972
  %986 = xor i32 %985, %977
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %27, align 1
  %990 = icmp eq i32 %977, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %30, align 1
  %992 = lshr i32 %977, 31
  %993 = trunc i32 %992 to i8
  store i8 %993, i8* %33, align 1
  %994 = lshr i32 %976, 31
  %995 = add nuw nsw i32 %992, %994
  %996 = icmp eq i32 %995, 2
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %39, align 1
  %.v56 = select i1 %990, i64 26, i64 412
  %998 = add i64 %940, %.v56
  store i64 %998, i64* %3, align 8
  br i1 %990, label %block_40c310, label %block_.L_40c492

block_40c310:                                     ; preds = %block_.L_40c2f6
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %999 = add i64 %998, 13
  store i64 %999, i64* %3, align 8
  %1000 = load i32, i32* %576, align 4
  %1001 = add i32 %1000, 20
  %1002 = zext i32 %1001 to i64
  store i64 %1002, i64* %RCX.i1744, align 8
  %1003 = icmp ugt i32 %1000, -21
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %14, align 1
  %1005 = and i32 %1001, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %21, align 1
  %1010 = xor i32 %1000, 16
  %1011 = xor i32 %1010, %1001
  %1012 = lshr i32 %1011, 4
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  store i8 %1014, i8* %27, align 1
  %1015 = icmp eq i32 %1001, 0
  %1016 = zext i1 %1015 to i8
  store i8 %1016, i8* %30, align 1
  %1017 = lshr i32 %1001, 31
  %1018 = trunc i32 %1017 to i8
  store i8 %1018, i8* %33, align 1
  %1019 = lshr i32 %1000, 31
  %1020 = xor i32 %1017, %1019
  %1021 = add nuw nsw i32 %1020, %1017
  %1022 = icmp eq i32 %1021, 2
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %39, align 1
  %1024 = sext i32 %1001 to i64
  store i64 %1024, i64* %RDX.i1738, align 8
  %1025 = shl nsw i64 %1024, 2
  %1026 = add nsw i64 %1025, 11187184
  %1027 = add i64 %998, 27
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = sext i32 %1029 to i64
  %1031 = mul nsw i64 %1030, 744
  store i64 %1031, i64* %RDX.i1738, align 8
  %1032 = lshr i64 %1031, 63
  %1033 = add i64 %1031, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1033, i64* %RAX.i1746, align 8
  %1034 = icmp ult i64 %1033, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1035 = icmp ult i64 %1033, %1031
  %1036 = or i1 %1034, %1035
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %14, align 1
  %1038 = trunc i64 %1033 to i32
  %1039 = and i32 %1038, 248
  %1040 = tail call i32 @llvm.ctpop.i32(i32 %1039)
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  store i8 %1043, i8* %21, align 1
  %1044 = xor i64 %1031, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1045 = xor i64 %1044, %1033
  %1046 = lshr i64 %1045, 4
  %1047 = trunc i64 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %27, align 1
  %1049 = icmp eq i64 %1033, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %30, align 1
  %1051 = lshr i64 %1033, 63
  %1052 = trunc i64 %1051 to i8
  store i8 %1052, i8* %33, align 1
  %1053 = xor i64 %1051, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1054 = xor i64 %1051, %1032
  %1055 = add nuw nsw i64 %1053, %1054
  %1056 = icmp eq i64 %1055, 2
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %39, align 1
  %1058 = add i64 %1031, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1059 = add i64 %998, 43
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RCX.i1744, align 8
  %1063 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1064 = sub i32 %1061, %1063
  %1065 = icmp ult i32 %1061, %1063
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %14, align 1
  %1067 = and i32 %1064, 255
  %1068 = tail call i32 @llvm.ctpop.i32(i32 %1067)
  %1069 = trunc i32 %1068 to i8
  %1070 = and i8 %1069, 1
  %1071 = xor i8 %1070, 1
  store i8 %1071, i8* %21, align 1
  %1072 = xor i32 %1063, %1061
  %1073 = xor i32 %1072, %1064
  %1074 = lshr i32 %1073, 4
  %1075 = trunc i32 %1074 to i8
  %1076 = and i8 %1075, 1
  store i8 %1076, i8* %27, align 1
  %1077 = icmp eq i32 %1064, 0
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %30, align 1
  %1079 = lshr i32 %1064, 31
  %1080 = trunc i32 %1079 to i8
  store i8 %1080, i8* %33, align 1
  %1081 = lshr i32 %1061, 31
  %1082 = lshr i32 %1063, 31
  %1083 = xor i32 %1082, %1081
  %1084 = xor i32 %1079, %1081
  %1085 = add nuw nsw i32 %1084, %1083
  %1086 = icmp eq i32 %1085, 2
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %39, align 1
  %.v80 = select i1 %1077, i64 386, i64 56
  %1088 = add i64 %998, %.v80
  store i64 %1088, i64* %3, align 8
  br i1 %1077, label %block_40c310.block_.L_40c492_crit_edge, label %block_40c348

block_40c310.block_.L_40c492_crit_edge:           ; preds = %block_40c310
  %.pre43 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40c492

block_40c348:                                     ; preds = %block_40c310
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %1089 = load i64, i64* %RBP.i, align 8
  %1090 = add i64 %1089, -4
  %1091 = add i64 %1088, 13
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i32*
  %1093 = load i32, i32* %1092, align 4
  %1094 = add i32 %1093, 20
  %1095 = zext i32 %1094 to i64
  store i64 %1095, i64* %RCX.i1744, align 8
  %1096 = icmp ugt i32 %1093, -21
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %14, align 1
  %1098 = and i32 %1094, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098)
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %21, align 1
  %1103 = xor i32 %1093, 16
  %1104 = xor i32 %1103, %1094
  %1105 = lshr i32 %1104, 4
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %27, align 1
  %1108 = icmp eq i32 %1094, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %30, align 1
  %1110 = lshr i32 %1094, 31
  %1111 = trunc i32 %1110 to i8
  store i8 %1111, i8* %33, align 1
  %1112 = lshr i32 %1093, 31
  %1113 = xor i32 %1110, %1112
  %1114 = add nuw nsw i32 %1113, %1110
  %1115 = icmp eq i32 %1114, 2
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %39, align 1
  %1117 = sext i32 %1094 to i64
  store i64 %1117, i64* %RDX.i1738, align 8
  %1118 = shl nsw i64 %1117, 2
  %1119 = add nsw i64 %1118, 11187184
  %1120 = add i64 %1088, 26
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1119 to i32*
  %1122 = load i32, i32* %1121, align 4
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RCX.i1744, align 8
  %1124 = add i64 %1089, -8
  %1125 = add i64 %1088, 30
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = sext i32 %1127 to i64
  %1129 = mul nsw i64 %1128, 744
  store i64 %1129, i64* %RDX.i1738, align 8
  %1130 = lshr i64 %1129, 63
  %1131 = add i64 %1129, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1131, i64* %RSI.i1599, align 8
  %1132 = icmp ult i64 %1131, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1133 = icmp ult i64 %1131, %1129
  %1134 = or i1 %1132, %1133
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %14, align 1
  %1136 = trunc i64 %1131 to i32
  %1137 = and i32 %1136, 248
  %1138 = tail call i32 @llvm.ctpop.i32(i32 %1137)
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  %1141 = xor i8 %1140, 1
  store i8 %1141, i8* %21, align 1
  %1142 = xor i64 %1129, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1143 = xor i64 %1142, %1131
  %1144 = lshr i64 %1143, 4
  %1145 = trunc i64 %1144 to i8
  %1146 = and i8 %1145, 1
  store i8 %1146, i8* %27, align 1
  %1147 = icmp eq i64 %1131, 0
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %30, align 1
  %1149 = lshr i64 %1131, 63
  %1150 = trunc i64 %1149 to i8
  store i8 %1150, i8* %33, align 1
  %1151 = xor i64 %1149, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1152 = xor i64 %1149, %1130
  %1153 = add nuw nsw i64 %1151, %1152
  %1154 = icmp eq i64 %1153, 2
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %39, align 1
  %1156 = load i64, i64* %RBP.i, align 8
  %1157 = add i64 %1156, -8
  %1158 = add i64 %1088, 47
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = sext i32 %1160 to i64
  %1162 = mul nsw i64 %1161, 744
  store i64 %1162, i64* %RDX.i1738, align 8
  %1163 = lshr i64 %1162, 63
  %1164 = load i64, i64* %RAX.i1746, align 8
  %1165 = add i64 %1162, %1164
  store i64 %1165, i64* %RDI.i1736, align 8
  %1166 = icmp ult i64 %1165, %1164
  %1167 = icmp ult i64 %1165, %1162
  %1168 = or i1 %1166, %1167
  %1169 = zext i1 %1168 to i8
  store i8 %1169, i8* %14, align 1
  %1170 = trunc i64 %1165 to i32
  %1171 = and i32 %1170, 255
  %1172 = tail call i32 @llvm.ctpop.i32(i32 %1171)
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = xor i8 %1174, 1
  store i8 %1175, i8* %21, align 1
  %1176 = xor i64 %1162, %1164
  %1177 = xor i64 %1176, %1165
  %1178 = lshr i64 %1177, 4
  %1179 = trunc i64 %1178 to i8
  %1180 = and i8 %1179, 1
  store i8 %1180, i8* %27, align 1
  %1181 = icmp eq i64 %1165, 0
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %30, align 1
  %1183 = lshr i64 %1165, 63
  %1184 = trunc i64 %1183 to i8
  store i8 %1184, i8* %33, align 1
  %1185 = lshr i64 %1164, 63
  %1186 = xor i64 %1183, %1185
  %1187 = xor i64 %1183, %1163
  %1188 = add nuw nsw i64 %1186, %1187
  %1189 = icmp eq i64 %1188, 2
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %39, align 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1329 = bitcast %union.anon* %1191 to i32*
  %1192 = getelementptr inbounds %union.anon, %union.anon* %1191, i64 0, i32 0
  %1193 = add i64 %1165, 96
  %1194 = add i64 %1088, 64
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %1192, align 8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1199 = add i32 %1196, 1
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %1198, align 8
  %1201 = icmp eq i32 %1196, -1
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
  %1210 = xor i32 %1199, %1196
  %1211 = lshr i32 %1210, 4
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  store i8 %1213, i8* %27, align 1
  %1214 = zext i1 %1202 to i8
  store i8 %1214, i8* %30, align 1
  %1215 = lshr i32 %1199, 31
  %1216 = trunc i32 %1215 to i8
  store i8 %1216, i8* %33, align 1
  %1217 = lshr i32 %1196, 31
  %1218 = xor i32 %1215, %1217
  %1219 = add nuw nsw i32 %1218, %1215
  %1220 = icmp eq i32 %1219, 2
  %1221 = zext i1 %1220 to i8
  store i8 %1221, i8* %39, align 1
  %1222 = add i64 %1088, 75
  store i64 %1222, i64* %3, align 8
  store i32 %1199, i32* %1195, align 4
  %1223 = load i32, i32* %R8D.i1329, align 4
  %1224 = load i64, i64* %3, align 8
  %1225 = sext i32 %1223 to i64
  store i64 %1225, i64* %RDX.i1738, align 8
  %1226 = load i64, i64* %RSI.i1599, align 8
  %1227 = shl nsw i64 %1225, 2
  %1228 = add nsw i64 %1227, 100
  %1229 = add i64 %1228, %1226
  %1230 = load i32, i32* %ECX.i1726, align 4
  %1231 = add i64 %1224, 7
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1229 to i32*
  store i32 %1230, i32* %1232, align 4
  %1233 = load i64, i64* %RBP.i, align 8
  %1234 = add i64 %1233, -4
  %1235 = load i64, i64* %3, align 8
  %1236 = add i64 %1235, 3
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1234 to i32*
  %1238 = load i32, i32* %1237, align 4
  %1239 = add i32 %1238, 20
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RCX.i1744, align 8
  %1241 = icmp ugt i32 %1238, -21
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %14, align 1
  %1243 = and i32 %1239, 255
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %21, align 1
  %1248 = xor i32 %1238, 16
  %1249 = xor i32 %1248, %1239
  %1250 = lshr i32 %1249, 4
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  store i8 %1252, i8* %27, align 1
  %1253 = icmp eq i32 %1239, 0
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %30, align 1
  %1255 = lshr i32 %1239, 31
  %1256 = trunc i32 %1255 to i8
  store i8 %1256, i8* %33, align 1
  %1257 = lshr i32 %1238, 31
  %1258 = xor i32 %1255, %1257
  %1259 = add nuw nsw i32 %1258, %1255
  %1260 = icmp eq i32 %1259, 2
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %39, align 1
  %1262 = sext i32 %1239 to i64
  store i64 %1262, i64* %RDX.i1738, align 8
  %1263 = shl nsw i64 %1262, 2
  %1264 = add nsw i64 %1263, 11187184
  %1265 = add i64 %1235, 17
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i32*
  %1267 = load i32, i32* %1266, align 4
  %1268 = sext i32 %1267 to i64
  %1269 = mul nsw i64 %1268, 744
  %1270 = load i64, i64* %RAX.i1746, align 8
  %1271 = add i64 %1269, %1270
  %1272 = lshr i64 %1271, 63
  %1273 = add i64 %1271, 96
  store i64 %1273, i64* %RSI.i1599, align 8
  %1274 = icmp ugt i64 %1271, -97
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %14, align 1
  %1276 = trunc i64 %1273 to i32
  %1277 = and i32 %1276, 255
  %1278 = tail call i32 @llvm.ctpop.i32(i32 %1277)
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = xor i8 %1280, 1
  store i8 %1281, i8* %21, align 1
  %1282 = xor i64 %1273, %1271
  %1283 = lshr i64 %1282, 4
  %1284 = trunc i64 %1283 to i8
  %1285 = and i8 %1284, 1
  store i8 %1285, i8* %27, align 1
  %1286 = icmp eq i64 %1273, 0
  %1287 = zext i1 %1286 to i8
  store i8 %1287, i8* %30, align 1
  %1288 = lshr i64 %1273, 63
  %1289 = trunc i64 %1288 to i8
  store i8 %1289, i8* %33, align 1
  %1290 = xor i64 %1288, %1272
  %1291 = add nuw nsw i64 %1290, %1288
  %1292 = icmp eq i64 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %39, align 1
  %1294 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %1294, i64* %RDX.i1738, align 8
  %1295 = add i64 %1235, 45
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i64*
  store i64 %1273, i64* %1296, align 8
  %1297 = load i64, i64* %RBP.i, align 8
  %1298 = add i64 %1297, -4
  %1299 = load i64, i64* %3, align 8
  %1300 = add i64 %1299, 3
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1298 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = add i32 %1302, 20
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RCX.i1744, align 8
  %1305 = icmp ugt i32 %1302, -21
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %14, align 1
  %1307 = and i32 %1303, 255
  %1308 = tail call i32 @llvm.ctpop.i32(i32 %1307)
  %1309 = trunc i32 %1308 to i8
  %1310 = and i8 %1309, 1
  %1311 = xor i8 %1310, 1
  store i8 %1311, i8* %21, align 1
  %1312 = xor i32 %1302, 16
  %1313 = xor i32 %1312, %1303
  %1314 = lshr i32 %1313, 4
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  store i8 %1316, i8* %27, align 1
  %1317 = icmp eq i32 %1303, 0
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %30, align 1
  %1319 = lshr i32 %1303, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %33, align 1
  %1321 = lshr i32 %1302, 31
  %1322 = xor i32 %1319, %1321
  %1323 = add nuw nsw i32 %1322, %1319
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %39, align 1
  %1326 = sext i32 %1303 to i64
  store i64 %1326, i64* %RDX.i1738, align 8
  %1327 = shl nsw i64 %1326, 2
  %1328 = add nsw i64 %1327, 11187184
  %1329 = add i64 %1299, 17
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = sext i32 %1331 to i64
  %1333 = mul nsw i64 %1332, 744
  store i64 %1333, i64* %RDX.i1738, align 8
  %1334 = lshr i64 %1333, 63
  %1335 = load i64, i64* %RAX.i1746, align 8
  %1336 = add i64 %1333, %1335
  store i64 %1336, i64* %RSI.i1599, align 8
  %1337 = icmp ult i64 %1336, %1335
  %1338 = icmp ult i64 %1336, %1333
  %1339 = or i1 %1337, %1338
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %14, align 1
  %1341 = trunc i64 %1336 to i32
  %1342 = and i32 %1341, 255
  %1343 = tail call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  store i8 %1346, i8* %21, align 1
  %1347 = xor i64 %1333, %1335
  %1348 = xor i64 %1347, %1336
  %1349 = lshr i64 %1348, 4
  %1350 = trunc i64 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %27, align 1
  %1352 = icmp eq i64 %1336, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %30, align 1
  %1354 = lshr i64 %1336, 63
  %1355 = trunc i64 %1354 to i8
  store i8 %1355, i8* %33, align 1
  %1356 = lshr i64 %1335, 63
  %1357 = xor i64 %1354, %1356
  %1358 = xor i64 %1354, %1334
  %1359 = add nuw nsw i64 %1357, %1358
  %1360 = icmp eq i64 %1359, 2
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %39, align 1
  %1362 = add i64 %1336, 96
  %1363 = add i64 %1299, 33
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i32*
  %1365 = load i32, i32* %1364, align 4
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RCX.i1744, align 8
  %1367 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %1367, i64* %RDX.i1738, align 8
  %1368 = add i64 %1367, 16
  store i64 %1368, i64* %RSI.i1599, align 8
  %1369 = icmp ugt i64 %1367, -17
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %14, align 1
  %1371 = trunc i64 %1368 to i32
  %1372 = and i32 %1371, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %21, align 1
  %1377 = xor i64 %1367, 16
  %1378 = xor i64 %1377, %1368
  %1379 = lshr i64 %1378, 4
  %1380 = trunc i64 %1379 to i8
  %1381 = and i8 %1380, 1
  store i8 %1381, i8* %27, align 1
  %1382 = icmp eq i64 %1368, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %30, align 1
  %1384 = lshr i64 %1368, 63
  %1385 = trunc i64 %1384 to i8
  store i8 %1385, i8* %33, align 1
  %1386 = lshr i64 %1367, 63
  %1387 = xor i64 %1384, %1386
  %1388 = add nuw nsw i64 %1387, %1384
  %1389 = icmp eq i64 %1388, 2
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %39, align 1
  store i64 %1368, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %1391 = add i64 %1367, 8
  %1392 = add i64 %1299, 59
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  store i32 %1365, i32* %1393, align 4
  %1394 = load i64, i64* %RBP.i, align 8
  %1395 = add i64 %1394, -4
  %1396 = load i64, i64* %3, align 8
  %1397 = add i64 %1396, 4
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1395 to i32*
  %1399 = load i32, i32* %1398, align 4
  %1400 = sext i32 %1399 to i64
  store i64 %1400, i64* %RDX.i1738, align 8
  %1401 = shl nsw i64 %1400, 2
  %1402 = add nsw i64 %1401, 11187184
  %1403 = add i64 %1396, 11
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to i32*
  %1405 = load i32, i32* %1404, align 4
  %1406 = zext i32 %1405 to i64
  store i64 %1406, i64* %RCX.i1744, align 8
  %1407 = add i64 %1396, 15
  store i64 %1407, i64* %3, align 8
  %1408 = load i32, i32* %1398, align 4
  %1409 = add i32 %1408, 20
  %1410 = zext i32 %1409 to i64
  store i64 %1410, i64* %1192, align 8
  %1411 = icmp ugt i32 %1408, -21
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %14, align 1
  %1413 = and i32 %1409, 255
  %1414 = tail call i32 @llvm.ctpop.i32(i32 %1413)
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  store i8 %1417, i8* %21, align 1
  %1418 = xor i32 %1408, 16
  %1419 = xor i32 %1418, %1409
  %1420 = lshr i32 %1419, 4
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  store i8 %1422, i8* %27, align 1
  %1423 = icmp eq i32 %1409, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %30, align 1
  %1425 = lshr i32 %1409, 31
  %1426 = trunc i32 %1425 to i8
  store i8 %1426, i8* %33, align 1
  %1427 = lshr i32 %1408, 31
  %1428 = xor i32 %1425, %1427
  %1429 = add nuw nsw i32 %1428, %1425
  %1430 = icmp eq i32 %1429, 2
  %1431 = zext i1 %1430 to i8
  store i8 %1431, i8* %39, align 1
  %1432 = sext i32 %1409 to i64
  store i64 %1432, i64* %RDX.i1738, align 8
  %1433 = shl nsw i64 %1432, 2
  %1434 = add nsw i64 %1433, 11187184
  %1435 = add i64 %1396, 30
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1434 to i32*
  %1437 = load i32, i32* %1436, align 4
  %1438 = sext i32 %1437 to i64
  %1439 = mul nsw i64 %1438, 744
  store i64 %1439, i64* %RDX.i1738, align 8
  %1440 = lshr i64 %1439, 63
  %1441 = load i64, i64* %RAX.i1746, align 8
  %1442 = add i64 %1439, %1441
  store i64 %1442, i64* %RSI.i1599, align 8
  %1443 = icmp ult i64 %1442, %1441
  %1444 = icmp ult i64 %1442, %1439
  %1445 = or i1 %1443, %1444
  %1446 = zext i1 %1445 to i8
  store i8 %1446, i8* %14, align 1
  %1447 = trunc i64 %1442 to i32
  %1448 = and i32 %1447, 255
  %1449 = tail call i32 @llvm.ctpop.i32(i32 %1448)
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  %1452 = xor i8 %1451, 1
  store i8 %1452, i8* %21, align 1
  %1453 = xor i64 %1439, %1441
  %1454 = xor i64 %1453, %1442
  %1455 = lshr i64 %1454, 4
  %1456 = trunc i64 %1455 to i8
  %1457 = and i8 %1456, 1
  store i8 %1457, i8* %27, align 1
  %1458 = icmp eq i64 %1442, 0
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %30, align 1
  %1460 = lshr i64 %1442, 63
  %1461 = trunc i64 %1460 to i8
  store i8 %1461, i8* %33, align 1
  %1462 = lshr i64 %1441, 63
  %1463 = xor i64 %1460, %1462
  %1464 = xor i64 %1460, %1440
  %1465 = add nuw nsw i64 %1463, %1464
  %1466 = icmp eq i64 %1465, 2
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %39, align 1
  %1468 = load i64, i64* %RBP.i, align 8
  %1469 = add i64 %1468, -4
  %1470 = add i64 %1396, 47
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = add i32 %1472, 20
  %1474 = zext i32 %1473 to i64
  store i64 %1474, i64* %1192, align 8
  %1475 = icmp ugt i32 %1472, -21
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %14, align 1
  %1477 = and i32 %1473, 255
  %1478 = tail call i32 @llvm.ctpop.i32(i32 %1477)
  %1479 = trunc i32 %1478 to i8
  %1480 = and i8 %1479, 1
  %1481 = xor i8 %1480, 1
  store i8 %1481, i8* %21, align 1
  %1482 = xor i32 %1472, 16
  %1483 = xor i32 %1482, %1473
  %1484 = lshr i32 %1483, 4
  %1485 = trunc i32 %1484 to i8
  %1486 = and i8 %1485, 1
  store i8 %1486, i8* %27, align 1
  %1487 = icmp eq i32 %1473, 0
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %30, align 1
  %1489 = lshr i32 %1473, 31
  %1490 = trunc i32 %1489 to i8
  store i8 %1490, i8* %33, align 1
  %1491 = lshr i32 %1472, 31
  %1492 = xor i32 %1489, %1491
  %1493 = add nuw nsw i32 %1492, %1489
  %1494 = icmp eq i32 %1493, 2
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %39, align 1
  %1496 = sext i32 %1473 to i64
  store i64 %1496, i64* %RDX.i1738, align 8
  %1497 = shl nsw i64 %1496, 2
  %1498 = add nsw i64 %1497, 11187184
  %1499 = add i64 %1396, 62
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = sext i32 %1501 to i64
  %1503 = mul nsw i64 %1502, 744
  store i64 %1503, i64* %RDX.i1738, align 8
  %1504 = lshr i64 %1503, 63
  %1505 = load i64, i64* %RAX.i1746, align 8
  %1506 = add i64 %1503, %1505
  store i64 %1506, i64* %RDI.i1736, align 8
  %1507 = icmp ult i64 %1506, %1505
  %1508 = icmp ult i64 %1506, %1503
  %1509 = or i1 %1507, %1508
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %14, align 1
  %1511 = trunc i64 %1506 to i32
  %1512 = and i32 %1511, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %21, align 1
  %1517 = xor i64 %1503, %1505
  %1518 = xor i64 %1517, %1506
  %1519 = lshr i64 %1518, 4
  %1520 = trunc i64 %1519 to i8
  %1521 = and i8 %1520, 1
  store i8 %1521, i8* %27, align 1
  %1522 = icmp eq i64 %1506, 0
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %30, align 1
  %1524 = lshr i64 %1506, 63
  %1525 = trunc i64 %1524 to i8
  store i8 %1525, i8* %33, align 1
  %1526 = lshr i64 %1505, 63
  %1527 = xor i64 %1524, %1526
  %1528 = xor i64 %1524, %1504
  %1529 = add nuw nsw i64 %1527, %1528
  %1530 = icmp eq i64 %1529, 2
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %39, align 1
  %1532 = add i64 %1506, 96
  %1533 = add i64 %1396, 79
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i32*
  %1535 = load i32, i32* %1534, align 4
  %1536 = zext i32 %1535 to i64
  store i64 %1536, i64* %1192, align 8
  %1537 = add i32 %1535, 1
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %1198, align 8
  %1539 = icmp eq i32 %1535, -1
  %1540 = icmp eq i32 %1537, 0
  %1541 = or i1 %1539, %1540
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %14, align 1
  %1543 = and i32 %1537, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %21, align 1
  %1548 = xor i32 %1537, %1535
  %1549 = lshr i32 %1548, 4
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %27, align 1
  %1552 = zext i1 %1540 to i8
  store i8 %1552, i8* %30, align 1
  %1553 = lshr i32 %1537, 31
  %1554 = trunc i32 %1553 to i8
  store i8 %1554, i8* %33, align 1
  %1555 = lshr i32 %1535, 31
  %1556 = xor i32 %1553, %1555
  %1557 = add nuw nsw i32 %1556, %1553
  %1558 = icmp eq i32 %1557, 2
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %39, align 1
  %1560 = add i64 %1396, 90
  store i64 %1560, i64* %3, align 8
  store i32 %1537, i32* %1534, align 4
  %1561 = load i32, i32* %R8D.i1329, align 4
  %1562 = load i64, i64* %3, align 8
  %1563 = sext i32 %1561 to i64
  store i64 %1563, i64* %RDX.i1738, align 8
  %1564 = load i64, i64* %RSI.i1599, align 8
  %1565 = shl nsw i64 %1563, 2
  %1566 = add nsw i64 %1565, 100
  %1567 = add i64 %1566, %1564
  %1568 = load i32, i32* %ECX.i1726, align 4
  %1569 = add i64 %1562, 7
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1567 to i32*
  store i32 %1568, i32* %1570, align 4
  %1571 = load i64, i64* %3, align 8
  %1572 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1573 = zext i32 %1572 to i64
  store i64 %1573, i64* %RCX.i1744, align 8
  %1574 = load i64, i64* %RBP.i, align 8
  %1575 = add i64 %1574, -4
  %1576 = add i64 %1571, 11
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  %1579 = add i32 %1578, 20
  %1580 = zext i32 %1579 to i64
  store i64 %1580, i64* %1192, align 8
  %1581 = icmp ugt i32 %1578, -21
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %14, align 1
  %1583 = and i32 %1579, 255
  %1584 = tail call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %21, align 1
  %1588 = xor i32 %1578, 16
  %1589 = xor i32 %1588, %1579
  %1590 = lshr i32 %1589, 4
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  store i8 %1592, i8* %27, align 1
  %1593 = icmp eq i32 %1579, 0
  %1594 = zext i1 %1593 to i8
  store i8 %1594, i8* %30, align 1
  %1595 = lshr i32 %1579, 31
  %1596 = trunc i32 %1595 to i8
  store i8 %1596, i8* %33, align 1
  %1597 = lshr i32 %1578, 31
  %1598 = xor i32 %1595, %1597
  %1599 = add nuw nsw i32 %1598, %1595
  %1600 = icmp eq i32 %1599, 2
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %39, align 1
  %1602 = sext i32 %1579 to i64
  store i64 %1602, i64* %RDX.i1738, align 8
  %1603 = shl nsw i64 %1602, 2
  %1604 = add nsw i64 %1603, 11187184
  %1605 = add i64 %1571, 26
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = sext i32 %1607 to i64
  %1609 = mul nsw i64 %1608, 744
  store i64 %1609, i64* %RDX.i1738, align 8
  %1610 = lshr i64 %1609, 63
  %1611 = load i64, i64* %RAX.i1746, align 8
  %1612 = add i64 %1609, %1611
  store i64 %1612, i64* %RAX.i1746, align 8
  %1613 = icmp ult i64 %1612, %1611
  %1614 = icmp ult i64 %1612, %1609
  %1615 = or i1 %1613, %1614
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %14, align 1
  %1617 = trunc i64 %1612 to i32
  %1618 = and i32 %1617, 255
  %1619 = tail call i32 @llvm.ctpop.i32(i32 %1618)
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = xor i8 %1621, 1
  store i8 %1622, i8* %21, align 1
  %1623 = xor i64 %1609, %1611
  %1624 = xor i64 %1623, %1612
  %1625 = lshr i64 %1624, 4
  %1626 = trunc i64 %1625 to i8
  %1627 = and i8 %1626, 1
  store i8 %1627, i8* %27, align 1
  %1628 = icmp eq i64 %1612, 0
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %30, align 1
  %1630 = lshr i64 %1612, 63
  %1631 = trunc i64 %1630 to i8
  store i8 %1631, i8* %33, align 1
  %1632 = lshr i64 %1611, 63
  %1633 = xor i64 %1630, %1632
  %1634 = xor i64 %1630, %1610
  %1635 = add nuw nsw i64 %1633, %1634
  %1636 = icmp eq i64 %1635, 2
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %39, align 1
  %1638 = add i64 %1612, 740
  %1639 = load i32, i32* %ECX.i1726, align 4
  %1640 = add i64 %1571, 42
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1638 to i32*
  store i32 %1639, i32* %1641, align 4
  %1642 = load i64, i64* %3, align 8
  %1643 = add i64 %1642, 108
  br label %block_.L_40c4f9

block_.L_40c492:                                  ; preds = %block_.L_40c2f6, %block_40c310.block_.L_40c492_crit_edge
  %1644 = phi i64 [ %1088, %block_40c310.block_.L_40c492_crit_edge ], [ %998, %block_.L_40c2f6 ]
  %1645 = phi i64 [ %.pre43, %block_40c310.block_.L_40c492_crit_edge ], [ %572, %block_.L_40c2f6 ]
  %1646 = add i64 %1645, -4
  %1647 = add i64 %1644, 3
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i32*
  %1649 = load i32, i32* %1648, align 4
  %1650 = add i32 %1649, 20
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RAX.i1746, align 8
  %1652 = icmp ugt i32 %1649, -21
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %14, align 1
  %1654 = and i32 %1650, 255
  %1655 = tail call i32 @llvm.ctpop.i32(i32 %1654)
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  store i8 %1658, i8* %21, align 1
  %1659 = xor i32 %1649, 16
  %1660 = xor i32 %1659, %1650
  %1661 = lshr i32 %1660, 4
  %1662 = trunc i32 %1661 to i8
  %1663 = and i8 %1662, 1
  store i8 %1663, i8* %27, align 1
  %1664 = icmp eq i32 %1650, 0
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %30, align 1
  %1666 = lshr i32 %1650, 31
  %1667 = trunc i32 %1666 to i8
  store i8 %1667, i8* %33, align 1
  %1668 = lshr i32 %1649, 31
  %1669 = xor i32 %1666, %1668
  %1670 = add nuw nsw i32 %1669, %1666
  %1671 = icmp eq i32 %1670, 2
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %39, align 1
  %1673 = sext i32 %1650 to i64
  store i64 %1673, i64* %RCX.i1744, align 8
  %1674 = add nsw i64 %1673, 12099168
  %1675 = add i64 %1644, 17
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i8*
  %1677 = load i8, i8* %1676, align 1
  %1678 = zext i8 %1677 to i64
  store i64 %1678, i64* %RAX.i1746, align 8
  %1679 = zext i8 %1677 to i32
  %1680 = add i64 %1645, -12
  %1681 = add i64 %1644, 20
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i32*
  %1683 = load i32, i32* %1682, align 4
  %1684 = sub i32 %1679, %1683
  %1685 = icmp ult i32 %1679, %1683
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %14, align 1
  %1687 = and i32 %1684, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %21, align 1
  %1692 = xor i32 %1683, %1679
  %1693 = xor i32 %1692, %1684
  %1694 = lshr i32 %1693, 4
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  store i8 %1696, i8* %27, align 1
  %1697 = icmp eq i32 %1684, 0
  %1698 = zext i1 %1697 to i8
  store i8 %1698, i8* %30, align 1
  %1699 = lshr i32 %1684, 31
  %1700 = trunc i32 %1699 to i8
  store i8 %1700, i8* %33, align 1
  %1701 = lshr i32 %1683, 31
  %1702 = add nuw nsw i32 %1699, %1701
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %39, align 1
  %.v57 = select i1 %1697, i64 26, i64 98
  %1705 = add i64 %1644, %.v57
  store i64 %1705, i64* %3, align 8
  br i1 %1697, label %block_40c4ac, label %block_.L_40c4f4

block_40c4ac:                                     ; preds = %block_.L_40c492
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %1706 = add i64 %1705, 13
  store i64 %1706, i64* %3, align 8
  %1707 = load i32, i32* %1648, align 4
  %1708 = add i32 %1707, 20
  %1709 = zext i32 %1708 to i64
  store i64 %1709, i64* %RCX.i1744, align 8
  %1710 = icmp ugt i32 %1707, -21
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %14, align 1
  %1712 = and i32 %1708, 255
  %1713 = tail call i32 @llvm.ctpop.i32(i32 %1712)
  %1714 = trunc i32 %1713 to i8
  %1715 = and i8 %1714, 1
  %1716 = xor i8 %1715, 1
  store i8 %1716, i8* %21, align 1
  %1717 = xor i32 %1707, 16
  %1718 = xor i32 %1717, %1708
  %1719 = lshr i32 %1718, 4
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  store i8 %1721, i8* %27, align 1
  %1722 = icmp eq i32 %1708, 0
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %30, align 1
  %1724 = lshr i32 %1708, 31
  %1725 = trunc i32 %1724 to i8
  store i8 %1725, i8* %33, align 1
  %1726 = lshr i32 %1707, 31
  %1727 = xor i32 %1724, %1726
  %1728 = add nuw nsw i32 %1727, %1724
  %1729 = icmp eq i32 %1728, 2
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %39, align 1
  %1731 = sext i32 %1708 to i64
  store i64 %1731, i64* %RDX.i1738, align 8
  %1732 = shl nsw i64 %1731, 2
  %1733 = add nsw i64 %1732, 11187184
  %1734 = add i64 %1705, 27
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i32*
  %1736 = load i32, i32* %1735, align 4
  %1737 = sext i32 %1736 to i64
  %1738 = mul nsw i64 %1737, 744
  store i64 %1738, i64* %RDX.i1738, align 8
  %1739 = lshr i64 %1738, 63
  %1740 = add i64 %1738, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1740, i64* %RAX.i1746, align 8
  %1741 = icmp ult i64 %1740, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1742 = icmp ult i64 %1740, %1738
  %1743 = or i1 %1741, %1742
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %14, align 1
  %1745 = trunc i64 %1740 to i32
  %1746 = and i32 %1745, 248
  %1747 = tail call i32 @llvm.ctpop.i32(i32 %1746)
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  %1750 = xor i8 %1749, 1
  store i8 %1750, i8* %21, align 1
  %1751 = xor i64 %1738, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1752 = xor i64 %1751, %1740
  %1753 = lshr i64 %1752, 4
  %1754 = trunc i64 %1753 to i8
  %1755 = and i8 %1754, 1
  store i8 %1755, i8* %27, align 1
  %1756 = icmp eq i64 %1740, 0
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %30, align 1
  %1758 = lshr i64 %1740, 63
  %1759 = trunc i64 %1758 to i8
  store i8 %1759, i8* %33, align 1
  %1760 = xor i64 %1758, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1761 = xor i64 %1758, %1739
  %1762 = add nuw nsw i64 %1760, %1761
  %1763 = icmp eq i64 %1762, 2
  %1764 = zext i1 %1763 to i8
  store i8 %1764, i8* %39, align 1
  %1765 = add i64 %1738, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %1766 = add i64 %1705, 43
  store i64 %1766, i64* %3, align 8
  %1767 = inttoptr i64 %1765 to i32*
  %1768 = load i32, i32* %1767, align 4
  %1769 = zext i32 %1768 to i64
  store i64 %1769, i64* %RCX.i1744, align 8
  %1770 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %1771 = sub i32 %1768, %1770
  %1772 = icmp ult i32 %1768, %1770
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %14, align 1
  %1774 = and i32 %1771, 255
  %1775 = tail call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  store i8 %1778, i8* %21, align 1
  %1779 = xor i32 %1770, %1768
  %1780 = xor i32 %1779, %1771
  %1781 = lshr i32 %1780, 4
  %1782 = trunc i32 %1781 to i8
  %1783 = and i8 %1782, 1
  store i8 %1783, i8* %27, align 1
  %1784 = icmp eq i32 %1771, 0
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %30, align 1
  %1786 = lshr i32 %1771, 31
  %1787 = trunc i32 %1786 to i8
  store i8 %1787, i8* %33, align 1
  %1788 = lshr i32 %1768, 31
  %1789 = lshr i32 %1770, 31
  %1790 = xor i32 %1789, %1788
  %1791 = xor i32 %1786, %1788
  %1792 = add nuw nsw i32 %1791, %1790
  %1793 = icmp eq i32 %1792, 2
  %1794 = zext i1 %1793 to i8
  store i8 %1794, i8* %39, align 1
  %.v79 = select i1 %1784, i64 72, i64 56
  %1795 = add i64 %1705, %.v79
  store i64 %1795, i64* %3, align 8
  br i1 %1784, label %block_.L_40c4f4, label %block_40c4e4

block_40c4e4:                                     ; preds = %block_40c4ac
  %1796 = load i64, i64* %RBP.i, align 8
  %1797 = add i64 %1796, -8
  %1798 = add i64 %1795, 3
  store i64 %1798, i64* %3, align 8
  %1799 = inttoptr i64 %1797 to i32*
  %1800 = load i32, i32* %1799, align 4
  %1801 = zext i32 %1800 to i64
  store i64 %1801, i64* %RDI.i1736, align 8
  %1802 = add i64 %1796, -4
  %1803 = add i64 %1795, 6
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = add i32 %1805, 20
  %1807 = zext i32 %1806 to i64
  store i64 %1807, i64* %RAX.i1746, align 8
  %1808 = icmp ugt i32 %1805, -21
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %14, align 1
  %1810 = and i32 %1806, 255
  %1811 = tail call i32 @llvm.ctpop.i32(i32 %1810)
  %1812 = trunc i32 %1811 to i8
  %1813 = and i8 %1812, 1
  %1814 = xor i8 %1813, 1
  store i8 %1814, i8* %21, align 1
  %1815 = xor i32 %1805, 16
  %1816 = xor i32 %1815, %1806
  %1817 = lshr i32 %1816, 4
  %1818 = trunc i32 %1817 to i8
  %1819 = and i8 %1818, 1
  store i8 %1819, i8* %27, align 1
  %1820 = icmp eq i32 %1806, 0
  %1821 = zext i1 %1820 to i8
  store i8 %1821, i8* %30, align 1
  %1822 = lshr i32 %1806, 31
  %1823 = trunc i32 %1822 to i8
  store i8 %1823, i8* %33, align 1
  %1824 = lshr i32 %1805, 31
  %1825 = xor i32 %1822, %1824
  %1826 = add nuw nsw i32 %1825, %1822
  %1827 = icmp eq i32 %1826, 2
  %1828 = zext i1 %1827 to i8
  store i8 %1828, i8* %39, align 1
  store i64 %1807, i64* %RSI.i1599, align 8
  %1829 = add i64 %1795, 2156
  %1830 = add i64 %1795, 16
  %1831 = load i64, i64* %6, align 8
  %1832 = add i64 %1831, -8
  %1833 = inttoptr i64 %1832 to i64*
  store i64 %1830, i64* %1833, align 8
  store i64 %1832, i64* %6, align 8
  store i64 %1829, i64* %3, align 8
  %call2_40c4ef = tail call %struct.Memory* @sub_40cd50.assimilate_string(%struct.State* nonnull %0, i64 %1829, %struct.Memory* %MEMORY.0)
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_40c4f4

block_.L_40c4f4:                                  ; preds = %block_.L_40c492, %block_40c4e4, %block_40c4ac
  %1834 = phi i64 [ %1705, %block_.L_40c492 ], [ %1795, %block_40c4ac ], [ %.pre44, %block_40c4e4 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.0, %block_.L_40c492 ], [ %MEMORY.0, %block_40c4ac ], [ %call2_40c4ef, %block_40c4e4 ]
  %1835 = add i64 %1834, 5
  store i64 %1835, i64* %3, align 8
  br label %block_.L_40c4f9

block_.L_40c4f9:                                  ; preds = %block_.L_40c4f4, %block_40c348
  %storemerge35 = phi i64 [ %1643, %block_40c348 ], [ %1835, %block_.L_40c4f4 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.0, %block_40c348 ], [ %MEMORY.4, %block_.L_40c4f4 ]
  %1836 = add i64 %storemerge35, 5
  store i64 %1836, i64* %3, align 8
  br label %block_.L_40c4fe

block_.L_40c4fe:                                  ; preds = %block_.L_40c4f9, %block_.L_40c2b9
  %storemerge = phi i64 [ %939, %block_.L_40c2b9 ], [ %1836, %block_.L_40c4f9 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.0, %block_.L_40c2b9 ], [ %MEMORY.5, %block_.L_40c4f9 ]
  %1837 = load i64, i64* %RBP.i, align 8
  %1838 = add i64 %1837, -4
  %1839 = add i64 %storemerge, 3
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  %1841 = load i32, i32* %1840, align 4
  %1842 = add i32 %1841, -1
  %1843 = zext i32 %1842 to i64
  store i64 %1843, i64* %RAX.i1746, align 8
  %1844 = icmp eq i32 %1841, 0
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %14, align 1
  %1846 = and i32 %1842, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %21, align 1
  %1851 = xor i32 %1842, %1841
  %1852 = lshr i32 %1851, 4
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  store i8 %1854, i8* %27, align 1
  %1855 = icmp eq i32 %1842, 0
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %30, align 1
  %1857 = lshr i32 %1842, 31
  %1858 = trunc i32 %1857 to i8
  store i8 %1858, i8* %33, align 1
  %1859 = lshr i32 %1841, 31
  %1860 = xor i32 %1857, %1859
  %1861 = add nuw nsw i32 %1860, %1859
  %1862 = icmp eq i32 %1861, 2
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %39, align 1
  %1864 = sext i32 %1842 to i64
  store i64 %1864, i64* %RCX.i1744, align 8
  %1865 = add nsw i64 %1864, 12099168
  %1866 = add i64 %storemerge, 17
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i8*
  %1868 = load i8, i8* %1867, align 1
  %1869 = zext i8 %1868 to i64
  store i64 %1869, i64* %RAX.i1746, align 8
  %1870 = zext i8 %1868 to i32
  store i8 0, i8* %14, align 1
  %1871 = tail call i32 @llvm.ctpop.i32(i32 %1870)
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  %1874 = xor i8 %1873, 1
  store i8 %1874, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1875 = icmp eq i8 %1868, 0
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v58 = select i1 %1875, i64 26, i64 210
  %1877 = add i64 %storemerge, %.v58
  store i64 %1877, i64* %3, align 8
  br i1 %1875, label %block_40c518, label %block_.L_40c5d0

block_40c518:                                     ; preds = %block_.L_40c4fe
  %1878 = add i64 %1877, 3
  store i64 %1878, i64* %3, align 8
  %1879 = load i32, i32* %1840, align 4
  %1880 = add i32 %1879, -1
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RAX.i1746, align 8
  %1882 = icmp eq i32 %1879, 0
  %1883 = zext i1 %1882 to i8
  store i8 %1883, i8* %14, align 1
  %1884 = and i32 %1880, 255
  %1885 = tail call i32 @llvm.ctpop.i32(i32 %1884)
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = xor i8 %1887, 1
  store i8 %1888, i8* %21, align 1
  %1889 = xor i32 %1880, %1879
  %1890 = lshr i32 %1889, 4
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  store i8 %1892, i8* %27, align 1
  %1893 = icmp eq i32 %1880, 0
  %1894 = zext i1 %1893 to i8
  store i8 %1894, i8* %30, align 1
  %1895 = lshr i32 %1880, 31
  %1896 = trunc i32 %1895 to i8
  store i8 %1896, i8* %33, align 1
  %1897 = lshr i32 %1879, 31
  %1898 = xor i32 %1895, %1897
  %1899 = add nuw nsw i32 %1898, %1897
  %1900 = icmp eq i32 %1899, 2
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %39, align 1
  %1902 = sext i32 %1880 to i64
  store i64 %1902, i64* %RCX.i1744, align 8
  %1903 = shl nsw i64 %1902, 2
  %1904 = add nsw i64 %1903, 11185584
  %1905 = add i64 %1877, 16
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1904 to i32*
  %1907 = load i32, i32* %1906, align 4
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RAX.i1746, align 8
  %1909 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %1910 = sub i32 %1907, %1909
  %1911 = icmp ult i32 %1907, %1909
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %14, align 1
  %1913 = and i32 %1910, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %21, align 1
  %1918 = xor i32 %1909, %1907
  %1919 = xor i32 %1918, %1910
  %1920 = lshr i32 %1919, 4
  %1921 = trunc i32 %1920 to i8
  %1922 = and i8 %1921, 1
  store i8 %1922, i8* %27, align 1
  %1923 = icmp eq i32 %1910, 0
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %30, align 1
  %1925 = lshr i32 %1910, 31
  %1926 = trunc i32 %1925 to i8
  store i8 %1926, i8* %33, align 1
  %1927 = lshr i32 %1907, 31
  %1928 = lshr i32 %1909, 31
  %1929 = xor i32 %1928, %1927
  %1930 = xor i32 %1925, %1927
  %1931 = add nuw nsw i32 %1930, %1929
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %39, align 1
  %.v77 = select i1 %1923, i64 184, i64 29
  %1934 = add i64 %1877, %.v77
  store i64 %1934, i64* %3, align 8
  br i1 %1923, label %block_.L_40c5d0, label %block_40c535

block_40c535:                                     ; preds = %block_40c518
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %1935 = add i64 %1837, -8
  %1936 = add i64 %1934, 19
  store i64 %1936, i64* %3, align 8
  %1937 = inttoptr i64 %1935 to i32*
  %1938 = load i32, i32* %1937, align 4
  %1939 = sext i32 %1938 to i64
  %1940 = mul nsw i64 %1939, 744
  store i64 %1940, i64* %RCX.i1744, align 8
  %1941 = lshr i64 %1940, 63
  %1942 = add i64 %1940, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %1942, i64* %RAX.i1746, align 8
  %1943 = icmp ult i64 %1942, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1944 = icmp ult i64 %1942, %1940
  %1945 = or i1 %1943, %1944
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %14, align 1
  %1947 = trunc i64 %1942 to i32
  %1948 = and i32 %1947, 248
  %1949 = tail call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  store i8 %1952, i8* %21, align 1
  %1953 = xor i64 %1940, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %1954 = xor i64 %1953, %1942
  %1955 = lshr i64 %1954, 4
  %1956 = trunc i64 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %27, align 1
  %1958 = icmp eq i64 %1942, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %30, align 1
  %1960 = lshr i64 %1942, 63
  %1961 = trunc i64 %1960 to i8
  store i8 %1961, i8* %33, align 1
  %1962 = xor i64 %1960, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %1963 = xor i64 %1960, %1941
  %1964 = add nuw nsw i64 %1962, %1963
  %1965 = icmp eq i64 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %39, align 1
  %1967 = add i64 %1940, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %1968 = add i64 %1934, 33
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1967 to i32*
  %1970 = load i32, i32* %1969, align 4
  %1971 = add i32 %1970, -20
  %1972 = icmp ult i32 %1970, 20
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %14, align 1
  %1974 = and i32 %1971, 255
  %1975 = tail call i32 @llvm.ctpop.i32(i32 %1974)
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  %1978 = xor i8 %1977, 1
  store i8 %1978, i8* %21, align 1
  %1979 = xor i32 %1970, 16
  %1980 = xor i32 %1979, %1971
  %1981 = lshr i32 %1980, 4
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  store i8 %1983, i8* %27, align 1
  %1984 = icmp eq i32 %1971, 0
  %1985 = zext i1 %1984 to i8
  store i8 %1985, i8* %30, align 1
  %1986 = lshr i32 %1971, 31
  %1987 = trunc i32 %1986 to i8
  store i8 %1987, i8* %33, align 1
  %1988 = lshr i32 %1970, 31
  %1989 = xor i32 %1986, %1988
  %1990 = add nuw nsw i32 %1989, %1988
  %1991 = icmp eq i32 %1990, 2
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %39, align 1
  %1993 = icmp ne i8 %1987, 0
  %1994 = xor i1 %1993, %1991
  %.v78 = select i1 %1994, i64 39, i64 94
  %1995 = add i64 %1934, %.v78
  store i64 %1995, i64* %3, align 8
  br i1 %1994, label %block_40c55c, label %block_.L_40c593

block_40c55c:                                     ; preds = %block_40c535
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %1996 = load i64, i64* %RBP.i, align 8
  %1997 = add i64 %1996, -4
  %1998 = add i64 %1995, 13
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i32*
  %2000 = load i32, i32* %1999, align 4
  %2001 = add i32 %2000, -1
  %2002 = zext i32 %2001 to i64
  store i64 %2002, i64* %RCX.i1744, align 8
  %2003 = icmp eq i32 %2000, 0
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %14, align 1
  %2005 = and i32 %2001, 255
  %2006 = tail call i32 @llvm.ctpop.i32(i32 %2005)
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  %2009 = xor i8 %2008, 1
  store i8 %2009, i8* %21, align 1
  %2010 = xor i32 %2001, %2000
  %2011 = lshr i32 %2010, 4
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  store i8 %2013, i8* %27, align 1
  %2014 = icmp eq i32 %2001, 0
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %30, align 1
  %2016 = lshr i32 %2001, 31
  %2017 = trunc i32 %2016 to i8
  store i8 %2017, i8* %33, align 1
  %2018 = lshr i32 %2000, 31
  %2019 = xor i32 %2016, %2018
  %2020 = add nuw nsw i32 %2019, %2018
  %2021 = icmp eq i32 %2020, 2
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %39, align 1
  %2023 = add i64 %1996, -8
  %2024 = add i64 %1995, 20
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i32*
  %2026 = load i32, i32* %2025, align 4
  %2027 = sext i32 %2026 to i64
  %2028 = mul nsw i64 %2027, 744
  store i64 %2028, i64* %RDX.i1738, align 8
  %2029 = lshr i64 %2028, 63
  %2030 = add i64 %2028, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2030, i64* %RSI.i1599, align 8
  %2031 = icmp ult i64 %2030, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2032 = icmp ult i64 %2030, %2028
  %2033 = or i1 %2031, %2032
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %14, align 1
  %2035 = trunc i64 %2030 to i32
  %2036 = and i32 %2035, 248
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %21, align 1
  %2041 = xor i64 %2028, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2042 = xor i64 %2041, %2030
  %2043 = lshr i64 %2042, 4
  %2044 = trunc i64 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %27, align 1
  %2046 = icmp eq i64 %2030, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %30, align 1
  %2048 = lshr i64 %2030, 63
  %2049 = trunc i64 %2048 to i8
  store i8 %2049, i8* %33, align 1
  %2050 = xor i64 %2048, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2051 = xor i64 %2048, %2029
  %2052 = add nuw nsw i64 %2050, %2051
  %2053 = icmp eq i64 %2052, 2
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %39, align 1
  %2055 = load i64, i64* %RBP.i, align 8
  %2056 = add i64 %2055, -8
  %2057 = add i64 %1995, 37
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i32*
  %2059 = load i32, i32* %2058, align 4
  %2060 = sext i32 %2059 to i64
  %2061 = mul nsw i64 %2060, 744
  store i64 %2061, i64* %RDX.i1738, align 8
  %2062 = lshr i64 %2061, 63
  %2063 = load i64, i64* %RAX.i1746, align 8
  %2064 = add i64 %2061, %2063
  store i64 %2064, i64* %RAX.i1746, align 8
  %2065 = icmp ult i64 %2064, %2063
  %2066 = icmp ult i64 %2064, %2061
  %2067 = or i1 %2065, %2066
  %2068 = zext i1 %2067 to i8
  store i8 %2068, i8* %14, align 1
  %2069 = trunc i64 %2064 to i32
  %2070 = and i32 %2069, 255
  %2071 = tail call i32 @llvm.ctpop.i32(i32 %2070)
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = xor i8 %2073, 1
  store i8 %2074, i8* %21, align 1
  %2075 = xor i64 %2061, %2063
  %2076 = xor i64 %2075, %2064
  %2077 = lshr i64 %2076, 4
  %2078 = trunc i64 %2077 to i8
  %2079 = and i8 %2078, 1
  store i8 %2079, i8* %27, align 1
  %2080 = icmp eq i64 %2064, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %30, align 1
  %2082 = lshr i64 %2064, 63
  %2083 = trunc i64 %2082 to i8
  store i8 %2083, i8* %33, align 1
  %2084 = lshr i64 %2063, 63
  %2085 = xor i64 %2082, %2084
  %2086 = xor i64 %2082, %2062
  %2087 = add nuw nsw i64 %2085, %2086
  %2088 = icmp eq i64 %2087, 2
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %39, align 1
  %2090 = add i64 %2064, 12
  %2091 = add i64 %1995, 51
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i32*
  %2093 = load i32, i32* %2092, align 4
  %2094 = sext i32 %2093 to i64
  store i64 %2094, i64* %RAX.i1746, align 8
  %2095 = load i64, i64* %RSI.i1599, align 8
  %2096 = shl nsw i64 %2094, 2
  %2097 = add i64 %2095, 16
  %2098 = add i64 %2097, %2096
  %2099 = load i32, i32* %ECX.i1726, align 4
  %2100 = add i64 %1995, 55
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2098 to i32*
  store i32 %2099, i32* %2101, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_40c593

block_.L_40c593:                                  ; preds = %block_40c535, %block_40c55c
  %2102 = phi i64 [ %1995, %block_40c535 ], [ %.pre45, %block_40c55c ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %2103 = load i64, i64* %RBP.i, align 8
  %2104 = add i64 %2103, -8
  %2105 = add i64 %2102, 14
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i32*
  %2107 = load i32, i32* %2106, align 4
  %2108 = sext i32 %2107 to i64
  %2109 = mul nsw i64 %2108, 744
  store i64 %2109, i64* %RCX.i1744, align 8
  %2110 = lshr i64 %2109, 63
  %2111 = add i64 %2109, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2111, i64* %RAX.i1746, align 8
  %2112 = icmp ult i64 %2111, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2113 = icmp ult i64 %2111, %2109
  %2114 = or i1 %2112, %2113
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %14, align 1
  %2116 = trunc i64 %2111 to i32
  %2117 = and i32 %2116, 248
  %2118 = tail call i32 @llvm.ctpop.i32(i32 %2117)
  %2119 = trunc i32 %2118 to i8
  %2120 = and i8 %2119, 1
  %2121 = xor i8 %2120, 1
  store i8 %2121, i8* %21, align 1
  %2122 = xor i64 %2109, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2123 = xor i64 %2122, %2111
  %2124 = lshr i64 %2123, 4
  %2125 = trunc i64 %2124 to i8
  %2126 = and i8 %2125, 1
  store i8 %2126, i8* %27, align 1
  %2127 = icmp eq i64 %2111, 0
  %2128 = zext i1 %2127 to i8
  store i8 %2128, i8* %30, align 1
  %2129 = lshr i64 %2111, 63
  %2130 = trunc i64 %2129 to i8
  store i8 %2130, i8* %33, align 1
  %2131 = xor i64 %2129, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2132 = xor i64 %2129, %2110
  %2133 = add nuw nsw i64 %2131, %2132
  %2134 = icmp eq i64 %2133, 2
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %39, align 1
  %2136 = add i64 %2109, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %2137 = add i64 %2102, 27
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  %2139 = load i32, i32* %2138, align 4
  %2140 = add i32 %2139, 1
  %2141 = icmp eq i32 %2139, -1
  %2142 = icmp eq i32 %2140, 0
  %2143 = or i1 %2141, %2142
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %14, align 1
  %2145 = and i32 %2140, 255
  %2146 = tail call i32 @llvm.ctpop.i32(i32 %2145)
  %2147 = trunc i32 %2146 to i8
  %2148 = and i8 %2147, 1
  %2149 = xor i8 %2148, 1
  store i8 %2149, i8* %21, align 1
  %2150 = xor i32 %2140, %2139
  %2151 = lshr i32 %2150, 4
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  store i8 %2153, i8* %27, align 1
  %2154 = zext i1 %2142 to i8
  store i8 %2154, i8* %30, align 1
  %2155 = lshr i32 %2140, 31
  %2156 = trunc i32 %2155 to i8
  store i8 %2156, i8* %33, align 1
  %2157 = lshr i32 %2139, 31
  %2158 = xor i32 %2155, %2157
  %2159 = add nuw nsw i32 %2158, %2155
  %2160 = icmp eq i32 %2159, 2
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %39, align 1
  %2162 = add i64 %2102, 33
  store i64 %2162, i64* %3, align 8
  store i32 %2140, i32* %2138, align 4
  %2163 = load i64, i64* %3, align 8
  %2164 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %2165 = zext i32 %2164 to i64
  store i64 %2165, i64* %RDX.i1738, align 8
  %2166 = load i64, i64* %RBP.i, align 8
  %2167 = add i64 %2166, -4
  %2168 = add i64 %2163, 10
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = add i32 %2170, -1
  %2172 = zext i32 %2171 to i64
  store i64 %2172, i64* %RSI.i1599, align 8
  %2173 = icmp eq i32 %2170, 0
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %14, align 1
  %2175 = and i32 %2171, 255
  %2176 = tail call i32 @llvm.ctpop.i32(i32 %2175)
  %2177 = trunc i32 %2176 to i8
  %2178 = and i8 %2177, 1
  %2179 = xor i8 %2178, 1
  store i8 %2179, i8* %21, align 1
  %2180 = xor i32 %2171, %2170
  %2181 = lshr i32 %2180, 4
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  store i8 %2183, i8* %27, align 1
  %2184 = icmp eq i32 %2171, 0
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %30, align 1
  %2186 = lshr i32 %2171, 31
  %2187 = trunc i32 %2186 to i8
  store i8 %2187, i8* %33, align 1
  %2188 = lshr i32 %2170, 31
  %2189 = xor i32 %2186, %2188
  %2190 = add nuw nsw i32 %2189, %2188
  %2191 = icmp eq i32 %2190, 2
  %2192 = zext i1 %2191 to i8
  store i8 %2192, i8* %39, align 1
  %2193 = sext i32 %2171 to i64
  store i64 %2193, i64* %RAX.i1746, align 8
  %2194 = shl nsw i64 %2193, 2
  %2195 = add nsw i64 %2194, 11185584
  %2196 = add i64 %2163, 23
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i32*
  store i32 %2164, i32* %2197, align 4
  %2198 = load i64, i64* %3, align 8
  %2199 = add i64 %2198, 525
  br label %block_.L_40c7d8

block_.L_40c5d0:                                  ; preds = %block_.L_40c4fe, %block_40c518
  %2200 = phi i64 [ %1934, %block_40c518 ], [ %1877, %block_.L_40c4fe ]
  %2201 = add i64 %2200, 3
  store i64 %2201, i64* %3, align 8
  %2202 = load i32, i32* %1840, align 4
  %2203 = add i32 %2202, -1
  %2204 = zext i32 %2203 to i64
  store i64 %2204, i64* %RAX.i1746, align 8
  %2205 = icmp eq i32 %2202, 0
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %14, align 1
  %2207 = and i32 %2203, 255
  %2208 = tail call i32 @llvm.ctpop.i32(i32 %2207)
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = xor i8 %2210, 1
  store i8 %2211, i8* %21, align 1
  %2212 = xor i32 %2203, %2202
  %2213 = lshr i32 %2212, 4
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  store i8 %2215, i8* %27, align 1
  %2216 = icmp eq i32 %2203, 0
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %30, align 1
  %2218 = lshr i32 %2203, 31
  %2219 = trunc i32 %2218 to i8
  store i8 %2219, i8* %33, align 1
  %2220 = lshr i32 %2202, 31
  %2221 = xor i32 %2218, %2220
  %2222 = add nuw nsw i32 %2221, %2220
  %2223 = icmp eq i32 %2222, 2
  %2224 = zext i1 %2223 to i8
  store i8 %2224, i8* %39, align 1
  %2225 = sext i32 %2203 to i64
  store i64 %2225, i64* %RCX.i1744, align 8
  %2226 = add nsw i64 %2225, 12099168
  %2227 = add i64 %2200, 17
  store i64 %2227, i64* %3, align 8
  %2228 = inttoptr i64 %2226 to i8*
  %2229 = load i8, i8* %2228, align 1
  %2230 = zext i8 %2229 to i64
  store i64 %2230, i64* %RAX.i1746, align 8
  %2231 = zext i8 %2229 to i32
  %2232 = add i64 %1837, -16
  %2233 = add i64 %2200, 20
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  %2235 = load i32, i32* %2234, align 4
  %2236 = sub i32 %2231, %2235
  %2237 = icmp ult i32 %2231, %2235
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %14, align 1
  %2239 = and i32 %2236, 255
  %2240 = tail call i32 @llvm.ctpop.i32(i32 %2239)
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = xor i8 %2242, 1
  store i8 %2243, i8* %21, align 1
  %2244 = xor i32 %2235, %2231
  %2245 = xor i32 %2244, %2236
  %2246 = lshr i32 %2245, 4
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  store i8 %2248, i8* %27, align 1
  %2249 = icmp eq i32 %2236, 0
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %30, align 1
  %2251 = lshr i32 %2236, 31
  %2252 = trunc i32 %2251 to i8
  store i8 %2252, i8* %33, align 1
  %2253 = lshr i32 %2235, 31
  %2254 = add nuw nsw i32 %2251, %2253
  %2255 = icmp eq i32 %2254, 2
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %39, align 1
  %.v59 = select i1 %2249, i64 26, i64 412
  %2257 = add i64 %2200, %.v59
  store i64 %2257, i64* %3, align 8
  br i1 %2249, label %block_40c5ea, label %block_.L_40c76c

block_40c5ea:                                     ; preds = %block_.L_40c5d0
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %2258 = add i64 %2257, 13
  store i64 %2258, i64* %3, align 8
  %2259 = load i32, i32* %1840, align 4
  %2260 = add i32 %2259, -1
  %2261 = zext i32 %2260 to i64
  store i64 %2261, i64* %RCX.i1744, align 8
  %2262 = icmp eq i32 %2259, 0
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %14, align 1
  %2264 = and i32 %2260, 255
  %2265 = tail call i32 @llvm.ctpop.i32(i32 %2264)
  %2266 = trunc i32 %2265 to i8
  %2267 = and i8 %2266, 1
  %2268 = xor i8 %2267, 1
  store i8 %2268, i8* %21, align 1
  %2269 = xor i32 %2260, %2259
  %2270 = lshr i32 %2269, 4
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  store i8 %2272, i8* %27, align 1
  %2273 = icmp eq i32 %2260, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %30, align 1
  %2275 = lshr i32 %2260, 31
  %2276 = trunc i32 %2275 to i8
  store i8 %2276, i8* %33, align 1
  %2277 = lshr i32 %2259, 31
  %2278 = xor i32 %2275, %2277
  %2279 = add nuw nsw i32 %2278, %2277
  %2280 = icmp eq i32 %2279, 2
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %39, align 1
  %2282 = sext i32 %2260 to i64
  store i64 %2282, i64* %RDX.i1738, align 8
  %2283 = shl nsw i64 %2282, 2
  %2284 = add nsw i64 %2283, 11187184
  %2285 = add i64 %2257, 27
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i32*
  %2287 = load i32, i32* %2286, align 4
  %2288 = sext i32 %2287 to i64
  %2289 = mul nsw i64 %2288, 744
  store i64 %2289, i64* %RDX.i1738, align 8
  %2290 = lshr i64 %2289, 63
  %2291 = add i64 %2289, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2291, i64* %RAX.i1746, align 8
  %2292 = icmp ult i64 %2291, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2293 = icmp ult i64 %2291, %2289
  %2294 = or i1 %2292, %2293
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %14, align 1
  %2296 = trunc i64 %2291 to i32
  %2297 = and i32 %2296, 248
  %2298 = tail call i32 @llvm.ctpop.i32(i32 %2297)
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  %2301 = xor i8 %2300, 1
  store i8 %2301, i8* %21, align 1
  %2302 = xor i64 %2289, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2303 = xor i64 %2302, %2291
  %2304 = lshr i64 %2303, 4
  %2305 = trunc i64 %2304 to i8
  %2306 = and i8 %2305, 1
  store i8 %2306, i8* %27, align 1
  %2307 = icmp eq i64 %2291, 0
  %2308 = zext i1 %2307 to i8
  store i8 %2308, i8* %30, align 1
  %2309 = lshr i64 %2291, 63
  %2310 = trunc i64 %2309 to i8
  store i8 %2310, i8* %33, align 1
  %2311 = xor i64 %2309, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2312 = xor i64 %2309, %2290
  %2313 = add nuw nsw i64 %2311, %2312
  %2314 = icmp eq i64 %2313, 2
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %39, align 1
  %2316 = add i64 %2289, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %2317 = add i64 %2257, 43
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i32*
  %2319 = load i32, i32* %2318, align 4
  %2320 = zext i32 %2319 to i64
  store i64 %2320, i64* %RCX.i1744, align 8
  %2321 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2322 = sub i32 %2319, %2321
  %2323 = icmp ult i32 %2319, %2321
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %14, align 1
  %2325 = and i32 %2322, 255
  %2326 = tail call i32 @llvm.ctpop.i32(i32 %2325)
  %2327 = trunc i32 %2326 to i8
  %2328 = and i8 %2327, 1
  %2329 = xor i8 %2328, 1
  store i8 %2329, i8* %21, align 1
  %2330 = xor i32 %2321, %2319
  %2331 = xor i32 %2330, %2322
  %2332 = lshr i32 %2331, 4
  %2333 = trunc i32 %2332 to i8
  %2334 = and i8 %2333, 1
  store i8 %2334, i8* %27, align 1
  %2335 = icmp eq i32 %2322, 0
  %2336 = zext i1 %2335 to i8
  store i8 %2336, i8* %30, align 1
  %2337 = lshr i32 %2322, 31
  %2338 = trunc i32 %2337 to i8
  store i8 %2338, i8* %33, align 1
  %2339 = lshr i32 %2319, 31
  %2340 = lshr i32 %2321, 31
  %2341 = xor i32 %2340, %2339
  %2342 = xor i32 %2337, %2339
  %2343 = add nuw nsw i32 %2342, %2341
  %2344 = icmp eq i32 %2343, 2
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %39, align 1
  %.v76 = select i1 %2335, i64 386, i64 56
  %2346 = add i64 %2257, %.v76
  store i64 %2346, i64* %3, align 8
  br i1 %2335, label %block_40c5ea.block_.L_40c76c_crit_edge, label %block_40c622

block_40c5ea.block_.L_40c76c_crit_edge:           ; preds = %block_40c5ea
  %.pre46 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40c76c

block_40c622:                                     ; preds = %block_40c5ea
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %2347 = load i64, i64* %RBP.i, align 8
  %2348 = add i64 %2347, -4
  %2349 = add i64 %2346, 13
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i32*
  %2351 = load i32, i32* %2350, align 4
  %2352 = add i32 %2351, -1
  %2353 = zext i32 %2352 to i64
  store i64 %2353, i64* %RCX.i1744, align 8
  %2354 = icmp eq i32 %2351, 0
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %14, align 1
  %2356 = and i32 %2352, 255
  %2357 = tail call i32 @llvm.ctpop.i32(i32 %2356)
  %2358 = trunc i32 %2357 to i8
  %2359 = and i8 %2358, 1
  %2360 = xor i8 %2359, 1
  store i8 %2360, i8* %21, align 1
  %2361 = xor i32 %2352, %2351
  %2362 = lshr i32 %2361, 4
  %2363 = trunc i32 %2362 to i8
  %2364 = and i8 %2363, 1
  store i8 %2364, i8* %27, align 1
  %2365 = icmp eq i32 %2352, 0
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %30, align 1
  %2367 = lshr i32 %2352, 31
  %2368 = trunc i32 %2367 to i8
  store i8 %2368, i8* %33, align 1
  %2369 = lshr i32 %2351, 31
  %2370 = xor i32 %2367, %2369
  %2371 = add nuw nsw i32 %2370, %2369
  %2372 = icmp eq i32 %2371, 2
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %39, align 1
  %2374 = sext i32 %2352 to i64
  store i64 %2374, i64* %RDX.i1738, align 8
  %2375 = shl nsw i64 %2374, 2
  %2376 = add nsw i64 %2375, 11187184
  %2377 = add i64 %2346, 26
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2376 to i32*
  %2379 = load i32, i32* %2378, align 4
  %2380 = zext i32 %2379 to i64
  store i64 %2380, i64* %RCX.i1744, align 8
  %2381 = add i64 %2347, -8
  %2382 = add i64 %2346, 30
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to i32*
  %2384 = load i32, i32* %2383, align 4
  %2385 = sext i32 %2384 to i64
  %2386 = mul nsw i64 %2385, 744
  store i64 %2386, i64* %RDX.i1738, align 8
  %2387 = lshr i64 %2386, 63
  %2388 = add i64 %2386, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2388, i64* %RSI.i1599, align 8
  %2389 = icmp ult i64 %2388, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2390 = icmp ult i64 %2388, %2386
  %2391 = or i1 %2389, %2390
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %14, align 1
  %2393 = trunc i64 %2388 to i32
  %2394 = and i32 %2393, 248
  %2395 = tail call i32 @llvm.ctpop.i32(i32 %2394)
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = xor i8 %2397, 1
  store i8 %2398, i8* %21, align 1
  %2399 = xor i64 %2386, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2400 = xor i64 %2399, %2388
  %2401 = lshr i64 %2400, 4
  %2402 = trunc i64 %2401 to i8
  %2403 = and i8 %2402, 1
  store i8 %2403, i8* %27, align 1
  %2404 = icmp eq i64 %2388, 0
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %30, align 1
  %2406 = lshr i64 %2388, 63
  %2407 = trunc i64 %2406 to i8
  store i8 %2407, i8* %33, align 1
  %2408 = xor i64 %2406, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %2409 = xor i64 %2406, %2387
  %2410 = add nuw nsw i64 %2408, %2409
  %2411 = icmp eq i64 %2410, 2
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %39, align 1
  %2413 = load i64, i64* %RBP.i, align 8
  %2414 = add i64 %2413, -8
  %2415 = add i64 %2346, 47
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2414 to i32*
  %2417 = load i32, i32* %2416, align 4
  %2418 = sext i32 %2417 to i64
  %2419 = mul nsw i64 %2418, 744
  store i64 %2419, i64* %RDX.i1738, align 8
  %2420 = lshr i64 %2419, 63
  %2421 = load i64, i64* %RAX.i1746, align 8
  %2422 = add i64 %2419, %2421
  store i64 %2422, i64* %RDI.i1736, align 8
  %2423 = icmp ult i64 %2422, %2421
  %2424 = icmp ult i64 %2422, %2419
  %2425 = or i1 %2423, %2424
  %2426 = zext i1 %2425 to i8
  store i8 %2426, i8* %14, align 1
  %2427 = trunc i64 %2422 to i32
  %2428 = and i32 %2427, 255
  %2429 = tail call i32 @llvm.ctpop.i32(i32 %2428)
  %2430 = trunc i32 %2429 to i8
  %2431 = and i8 %2430, 1
  %2432 = xor i8 %2431, 1
  store i8 %2432, i8* %21, align 1
  %2433 = xor i64 %2419, %2421
  %2434 = xor i64 %2433, %2422
  %2435 = lshr i64 %2434, 4
  %2436 = trunc i64 %2435 to i8
  %2437 = and i8 %2436, 1
  store i8 %2437, i8* %27, align 1
  %2438 = icmp eq i64 %2422, 0
  %2439 = zext i1 %2438 to i8
  store i8 %2439, i8* %30, align 1
  %2440 = lshr i64 %2422, 63
  %2441 = trunc i64 %2440 to i8
  store i8 %2441, i8* %33, align 1
  %2442 = lshr i64 %2421, 63
  %2443 = xor i64 %2440, %2442
  %2444 = xor i64 %2440, %2420
  %2445 = add nuw nsw i64 %2443, %2444
  %2446 = icmp eq i64 %2445, 2
  %2447 = zext i1 %2446 to i8
  store i8 %2447, i8* %39, align 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i941 = bitcast %union.anon* %2448 to i32*
  %2449 = getelementptr inbounds %union.anon, %union.anon* %2448, i64 0, i32 0
  %2450 = add i64 %2422, 96
  %2451 = add i64 %2346, 64
  store i64 %2451, i64* %3, align 8
  %2452 = inttoptr i64 %2450 to i32*
  %2453 = load i32, i32* %2452, align 4
  %2454 = zext i32 %2453 to i64
  store i64 %2454, i64* %2449, align 8
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %2456 = add i32 %2453, 1
  %2457 = zext i32 %2456 to i64
  store i64 %2457, i64* %2455, align 8
  %2458 = icmp eq i32 %2453, -1
  %2459 = icmp eq i32 %2456, 0
  %2460 = or i1 %2458, %2459
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %14, align 1
  %2462 = and i32 %2456, 255
  %2463 = tail call i32 @llvm.ctpop.i32(i32 %2462)
  %2464 = trunc i32 %2463 to i8
  %2465 = and i8 %2464, 1
  %2466 = xor i8 %2465, 1
  store i8 %2466, i8* %21, align 1
  %2467 = xor i32 %2456, %2453
  %2468 = lshr i32 %2467, 4
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  store i8 %2470, i8* %27, align 1
  %2471 = zext i1 %2459 to i8
  store i8 %2471, i8* %30, align 1
  %2472 = lshr i32 %2456, 31
  %2473 = trunc i32 %2472 to i8
  store i8 %2473, i8* %33, align 1
  %2474 = lshr i32 %2453, 31
  %2475 = xor i32 %2472, %2474
  %2476 = add nuw nsw i32 %2475, %2472
  %2477 = icmp eq i32 %2476, 2
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %39, align 1
  %2479 = add i64 %2346, 75
  store i64 %2479, i64* %3, align 8
  store i32 %2456, i32* %2452, align 4
  %2480 = load i32, i32* %R8D.i941, align 4
  %2481 = load i64, i64* %3, align 8
  %2482 = sext i32 %2480 to i64
  store i64 %2482, i64* %RDX.i1738, align 8
  %2483 = load i64, i64* %RSI.i1599, align 8
  %2484 = shl nsw i64 %2482, 2
  %2485 = add nsw i64 %2484, 100
  %2486 = add i64 %2485, %2483
  %2487 = load i32, i32* %ECX.i1726, align 4
  %2488 = add i64 %2481, 7
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2486 to i32*
  store i32 %2487, i32* %2489, align 4
  %2490 = load i64, i64* %RBP.i, align 8
  %2491 = add i64 %2490, -4
  %2492 = load i64, i64* %3, align 8
  %2493 = add i64 %2492, 3
  store i64 %2493, i64* %3, align 8
  %2494 = inttoptr i64 %2491 to i32*
  %2495 = load i32, i32* %2494, align 4
  %2496 = add i32 %2495, -1
  %2497 = zext i32 %2496 to i64
  store i64 %2497, i64* %RCX.i1744, align 8
  %2498 = icmp eq i32 %2495, 0
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %14, align 1
  %2500 = and i32 %2496, 255
  %2501 = tail call i32 @llvm.ctpop.i32(i32 %2500)
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  store i8 %2504, i8* %21, align 1
  %2505 = xor i32 %2496, %2495
  %2506 = lshr i32 %2505, 4
  %2507 = trunc i32 %2506 to i8
  %2508 = and i8 %2507, 1
  store i8 %2508, i8* %27, align 1
  %2509 = icmp eq i32 %2496, 0
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %30, align 1
  %2511 = lshr i32 %2496, 31
  %2512 = trunc i32 %2511 to i8
  store i8 %2512, i8* %33, align 1
  %2513 = lshr i32 %2495, 31
  %2514 = xor i32 %2511, %2513
  %2515 = add nuw nsw i32 %2514, %2513
  %2516 = icmp eq i32 %2515, 2
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %39, align 1
  %2518 = sext i32 %2496 to i64
  store i64 %2518, i64* %RDX.i1738, align 8
  %2519 = shl nsw i64 %2518, 2
  %2520 = add nsw i64 %2519, 11187184
  %2521 = add i64 %2492, 17
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i32*
  %2523 = load i32, i32* %2522, align 4
  %2524 = sext i32 %2523 to i64
  %2525 = mul nsw i64 %2524, 744
  %2526 = load i64, i64* %RAX.i1746, align 8
  %2527 = add i64 %2525, %2526
  %2528 = lshr i64 %2527, 63
  %2529 = add i64 %2527, 96
  store i64 %2529, i64* %RSI.i1599, align 8
  %2530 = icmp ugt i64 %2527, -97
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %14, align 1
  %2532 = trunc i64 %2529 to i32
  %2533 = and i32 %2532, 255
  %2534 = tail call i32 @llvm.ctpop.i32(i32 %2533)
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  %2537 = xor i8 %2536, 1
  store i8 %2537, i8* %21, align 1
  %2538 = xor i64 %2529, %2527
  %2539 = lshr i64 %2538, 4
  %2540 = trunc i64 %2539 to i8
  %2541 = and i8 %2540, 1
  store i8 %2541, i8* %27, align 1
  %2542 = icmp eq i64 %2529, 0
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %30, align 1
  %2544 = lshr i64 %2529, 63
  %2545 = trunc i64 %2544 to i8
  store i8 %2545, i8* %33, align 1
  %2546 = xor i64 %2544, %2528
  %2547 = add nuw nsw i64 %2546, %2544
  %2548 = icmp eq i64 %2547, 2
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %39, align 1
  %2550 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %2550, i64* %RDX.i1738, align 8
  %2551 = add i64 %2492, 45
  store i64 %2551, i64* %3, align 8
  %2552 = inttoptr i64 %2550 to i64*
  store i64 %2529, i64* %2552, align 8
  %2553 = load i64, i64* %RBP.i, align 8
  %2554 = add i64 %2553, -4
  %2555 = load i64, i64* %3, align 8
  %2556 = add i64 %2555, 3
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2554 to i32*
  %2558 = load i32, i32* %2557, align 4
  %2559 = add i32 %2558, -1
  %2560 = zext i32 %2559 to i64
  store i64 %2560, i64* %RCX.i1744, align 8
  %2561 = icmp eq i32 %2558, 0
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %14, align 1
  %2563 = and i32 %2559, 255
  %2564 = tail call i32 @llvm.ctpop.i32(i32 %2563)
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  %2567 = xor i8 %2566, 1
  store i8 %2567, i8* %21, align 1
  %2568 = xor i32 %2559, %2558
  %2569 = lshr i32 %2568, 4
  %2570 = trunc i32 %2569 to i8
  %2571 = and i8 %2570, 1
  store i8 %2571, i8* %27, align 1
  %2572 = icmp eq i32 %2559, 0
  %2573 = zext i1 %2572 to i8
  store i8 %2573, i8* %30, align 1
  %2574 = lshr i32 %2559, 31
  %2575 = trunc i32 %2574 to i8
  store i8 %2575, i8* %33, align 1
  %2576 = lshr i32 %2558, 31
  %2577 = xor i32 %2574, %2576
  %2578 = add nuw nsw i32 %2577, %2576
  %2579 = icmp eq i32 %2578, 2
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %39, align 1
  %2581 = sext i32 %2559 to i64
  store i64 %2581, i64* %RDX.i1738, align 8
  %2582 = shl nsw i64 %2581, 2
  %2583 = add nsw i64 %2582, 11187184
  %2584 = add i64 %2555, 17
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2583 to i32*
  %2586 = load i32, i32* %2585, align 4
  %2587 = sext i32 %2586 to i64
  %2588 = mul nsw i64 %2587, 744
  store i64 %2588, i64* %RDX.i1738, align 8
  %2589 = lshr i64 %2588, 63
  %2590 = load i64, i64* %RAX.i1746, align 8
  %2591 = add i64 %2588, %2590
  store i64 %2591, i64* %RSI.i1599, align 8
  %2592 = icmp ult i64 %2591, %2590
  %2593 = icmp ult i64 %2591, %2588
  %2594 = or i1 %2592, %2593
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %14, align 1
  %2596 = trunc i64 %2591 to i32
  %2597 = and i32 %2596, 255
  %2598 = tail call i32 @llvm.ctpop.i32(i32 %2597)
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  %2601 = xor i8 %2600, 1
  store i8 %2601, i8* %21, align 1
  %2602 = xor i64 %2588, %2590
  %2603 = xor i64 %2602, %2591
  %2604 = lshr i64 %2603, 4
  %2605 = trunc i64 %2604 to i8
  %2606 = and i8 %2605, 1
  store i8 %2606, i8* %27, align 1
  %2607 = icmp eq i64 %2591, 0
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %30, align 1
  %2609 = lshr i64 %2591, 63
  %2610 = trunc i64 %2609 to i8
  store i8 %2610, i8* %33, align 1
  %2611 = lshr i64 %2590, 63
  %2612 = xor i64 %2609, %2611
  %2613 = xor i64 %2609, %2589
  %2614 = add nuw nsw i64 %2612, %2613
  %2615 = icmp eq i64 %2614, 2
  %2616 = zext i1 %2615 to i8
  store i8 %2616, i8* %39, align 1
  %2617 = add i64 %2591, 96
  %2618 = add i64 %2555, 33
  store i64 %2618, i64* %3, align 8
  %2619 = inttoptr i64 %2617 to i32*
  %2620 = load i32, i32* %2619, align 4
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RCX.i1744, align 8
  %2622 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %2622, i64* %RDX.i1738, align 8
  %2623 = add i64 %2622, 16
  store i64 %2623, i64* %RSI.i1599, align 8
  %2624 = icmp ugt i64 %2622, -17
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %14, align 1
  %2626 = trunc i64 %2623 to i32
  %2627 = and i32 %2626, 255
  %2628 = tail call i32 @llvm.ctpop.i32(i32 %2627)
  %2629 = trunc i32 %2628 to i8
  %2630 = and i8 %2629, 1
  %2631 = xor i8 %2630, 1
  store i8 %2631, i8* %21, align 1
  %2632 = xor i64 %2622, 16
  %2633 = xor i64 %2632, %2623
  %2634 = lshr i64 %2633, 4
  %2635 = trunc i64 %2634 to i8
  %2636 = and i8 %2635, 1
  store i8 %2636, i8* %27, align 1
  %2637 = icmp eq i64 %2623, 0
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %30, align 1
  %2639 = lshr i64 %2623, 63
  %2640 = trunc i64 %2639 to i8
  store i8 %2640, i8* %33, align 1
  %2641 = lshr i64 %2622, 63
  %2642 = xor i64 %2639, %2641
  %2643 = add nuw nsw i64 %2642, %2639
  %2644 = icmp eq i64 %2643, 2
  %2645 = zext i1 %2644 to i8
  store i8 %2645, i8* %39, align 1
  store i64 %2623, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %2646 = add i64 %2622, 8
  %2647 = add i64 %2555, 59
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i32*
  store i32 %2620, i32* %2648, align 4
  %2649 = load i64, i64* %RBP.i, align 8
  %2650 = add i64 %2649, -4
  %2651 = load i64, i64* %3, align 8
  %2652 = add i64 %2651, 4
  store i64 %2652, i64* %3, align 8
  %2653 = inttoptr i64 %2650 to i32*
  %2654 = load i32, i32* %2653, align 4
  %2655 = sext i32 %2654 to i64
  store i64 %2655, i64* %RDX.i1738, align 8
  %2656 = shl nsw i64 %2655, 2
  %2657 = add nsw i64 %2656, 11187184
  %2658 = add i64 %2651, 11
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to i32*
  %2660 = load i32, i32* %2659, align 4
  %2661 = zext i32 %2660 to i64
  store i64 %2661, i64* %RCX.i1744, align 8
  %2662 = add i64 %2651, 15
  store i64 %2662, i64* %3, align 8
  %2663 = load i32, i32* %2653, align 4
  %2664 = add i32 %2663, -1
  %2665 = zext i32 %2664 to i64
  store i64 %2665, i64* %2449, align 8
  %2666 = icmp eq i32 %2663, 0
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %14, align 1
  %2668 = and i32 %2664, 255
  %2669 = tail call i32 @llvm.ctpop.i32(i32 %2668)
  %2670 = trunc i32 %2669 to i8
  %2671 = and i8 %2670, 1
  %2672 = xor i8 %2671, 1
  store i8 %2672, i8* %21, align 1
  %2673 = xor i32 %2664, %2663
  %2674 = lshr i32 %2673, 4
  %2675 = trunc i32 %2674 to i8
  %2676 = and i8 %2675, 1
  store i8 %2676, i8* %27, align 1
  %2677 = icmp eq i32 %2664, 0
  %2678 = zext i1 %2677 to i8
  store i8 %2678, i8* %30, align 1
  %2679 = lshr i32 %2664, 31
  %2680 = trunc i32 %2679 to i8
  store i8 %2680, i8* %33, align 1
  %2681 = lshr i32 %2663, 31
  %2682 = xor i32 %2679, %2681
  %2683 = add nuw nsw i32 %2682, %2681
  %2684 = icmp eq i32 %2683, 2
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %39, align 1
  %2686 = sext i32 %2664 to i64
  store i64 %2686, i64* %RDX.i1738, align 8
  %2687 = shl nsw i64 %2686, 2
  %2688 = add nsw i64 %2687, 11187184
  %2689 = add i64 %2651, 30
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  %2691 = load i32, i32* %2690, align 4
  %2692 = sext i32 %2691 to i64
  %2693 = mul nsw i64 %2692, 744
  store i64 %2693, i64* %RDX.i1738, align 8
  %2694 = lshr i64 %2693, 63
  %2695 = load i64, i64* %RAX.i1746, align 8
  %2696 = add i64 %2693, %2695
  store i64 %2696, i64* %RSI.i1599, align 8
  %2697 = icmp ult i64 %2696, %2695
  %2698 = icmp ult i64 %2696, %2693
  %2699 = or i1 %2697, %2698
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %14, align 1
  %2701 = trunc i64 %2696 to i32
  %2702 = and i32 %2701, 255
  %2703 = tail call i32 @llvm.ctpop.i32(i32 %2702)
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  %2706 = xor i8 %2705, 1
  store i8 %2706, i8* %21, align 1
  %2707 = xor i64 %2693, %2695
  %2708 = xor i64 %2707, %2696
  %2709 = lshr i64 %2708, 4
  %2710 = trunc i64 %2709 to i8
  %2711 = and i8 %2710, 1
  store i8 %2711, i8* %27, align 1
  %2712 = icmp eq i64 %2696, 0
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %30, align 1
  %2714 = lshr i64 %2696, 63
  %2715 = trunc i64 %2714 to i8
  store i8 %2715, i8* %33, align 1
  %2716 = lshr i64 %2695, 63
  %2717 = xor i64 %2714, %2716
  %2718 = xor i64 %2714, %2694
  %2719 = add nuw nsw i64 %2717, %2718
  %2720 = icmp eq i64 %2719, 2
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %39, align 1
  %2722 = load i64, i64* %RBP.i, align 8
  %2723 = add i64 %2722, -4
  %2724 = add i64 %2651, 47
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2723 to i32*
  %2726 = load i32, i32* %2725, align 4
  %2727 = add i32 %2726, -1
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %2449, align 8
  %2729 = icmp eq i32 %2726, 0
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %14, align 1
  %2731 = and i32 %2727, 255
  %2732 = tail call i32 @llvm.ctpop.i32(i32 %2731)
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  %2735 = xor i8 %2734, 1
  store i8 %2735, i8* %21, align 1
  %2736 = xor i32 %2727, %2726
  %2737 = lshr i32 %2736, 4
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  store i8 %2739, i8* %27, align 1
  %2740 = icmp eq i32 %2727, 0
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %30, align 1
  %2742 = lshr i32 %2727, 31
  %2743 = trunc i32 %2742 to i8
  store i8 %2743, i8* %33, align 1
  %2744 = lshr i32 %2726, 31
  %2745 = xor i32 %2742, %2744
  %2746 = add nuw nsw i32 %2745, %2744
  %2747 = icmp eq i32 %2746, 2
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %39, align 1
  %2749 = sext i32 %2727 to i64
  store i64 %2749, i64* %RDX.i1738, align 8
  %2750 = shl nsw i64 %2749, 2
  %2751 = add nsw i64 %2750, 11187184
  %2752 = add i64 %2651, 62
  store i64 %2752, i64* %3, align 8
  %2753 = inttoptr i64 %2751 to i32*
  %2754 = load i32, i32* %2753, align 4
  %2755 = sext i32 %2754 to i64
  %2756 = mul nsw i64 %2755, 744
  store i64 %2756, i64* %RDX.i1738, align 8
  %2757 = lshr i64 %2756, 63
  %2758 = load i64, i64* %RAX.i1746, align 8
  %2759 = add i64 %2756, %2758
  store i64 %2759, i64* %RDI.i1736, align 8
  %2760 = icmp ult i64 %2759, %2758
  %2761 = icmp ult i64 %2759, %2756
  %2762 = or i1 %2760, %2761
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %14, align 1
  %2764 = trunc i64 %2759 to i32
  %2765 = and i32 %2764, 255
  %2766 = tail call i32 @llvm.ctpop.i32(i32 %2765)
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = xor i8 %2768, 1
  store i8 %2769, i8* %21, align 1
  %2770 = xor i64 %2756, %2758
  %2771 = xor i64 %2770, %2759
  %2772 = lshr i64 %2771, 4
  %2773 = trunc i64 %2772 to i8
  %2774 = and i8 %2773, 1
  store i8 %2774, i8* %27, align 1
  %2775 = icmp eq i64 %2759, 0
  %2776 = zext i1 %2775 to i8
  store i8 %2776, i8* %30, align 1
  %2777 = lshr i64 %2759, 63
  %2778 = trunc i64 %2777 to i8
  store i8 %2778, i8* %33, align 1
  %2779 = lshr i64 %2758, 63
  %2780 = xor i64 %2777, %2779
  %2781 = xor i64 %2777, %2757
  %2782 = add nuw nsw i64 %2780, %2781
  %2783 = icmp eq i64 %2782, 2
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %39, align 1
  %2785 = add i64 %2759, 96
  %2786 = add i64 %2651, 79
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2785 to i32*
  %2788 = load i32, i32* %2787, align 4
  %2789 = zext i32 %2788 to i64
  store i64 %2789, i64* %2449, align 8
  %2790 = add i32 %2788, 1
  %2791 = zext i32 %2790 to i64
  store i64 %2791, i64* %2455, align 8
  %2792 = icmp eq i32 %2788, -1
  %2793 = icmp eq i32 %2790, 0
  %2794 = or i1 %2792, %2793
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %14, align 1
  %2796 = and i32 %2790, 255
  %2797 = tail call i32 @llvm.ctpop.i32(i32 %2796)
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  store i8 %2800, i8* %21, align 1
  %2801 = xor i32 %2790, %2788
  %2802 = lshr i32 %2801, 4
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  store i8 %2804, i8* %27, align 1
  %2805 = zext i1 %2793 to i8
  store i8 %2805, i8* %30, align 1
  %2806 = lshr i32 %2790, 31
  %2807 = trunc i32 %2806 to i8
  store i8 %2807, i8* %33, align 1
  %2808 = lshr i32 %2788, 31
  %2809 = xor i32 %2806, %2808
  %2810 = add nuw nsw i32 %2809, %2806
  %2811 = icmp eq i32 %2810, 2
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %39, align 1
  %2813 = add i64 %2651, 90
  store i64 %2813, i64* %3, align 8
  store i32 %2790, i32* %2787, align 4
  %2814 = load i32, i32* %R8D.i941, align 4
  %2815 = load i64, i64* %3, align 8
  %2816 = sext i32 %2814 to i64
  store i64 %2816, i64* %RDX.i1738, align 8
  %2817 = load i64, i64* %RSI.i1599, align 8
  %2818 = shl nsw i64 %2816, 2
  %2819 = add nsw i64 %2818, 100
  %2820 = add i64 %2819, %2817
  %2821 = load i32, i32* %ECX.i1726, align 4
  %2822 = add i64 %2815, 7
  store i64 %2822, i64* %3, align 8
  %2823 = inttoptr i64 %2820 to i32*
  store i32 %2821, i32* %2823, align 4
  %2824 = load i64, i64* %3, align 8
  %2825 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %2826 = zext i32 %2825 to i64
  store i64 %2826, i64* %RCX.i1744, align 8
  %2827 = load i64, i64* %RBP.i, align 8
  %2828 = add i64 %2827, -4
  %2829 = add i64 %2824, 11
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i32*
  %2831 = load i32, i32* %2830, align 4
  %2832 = add i32 %2831, -1
  %2833 = zext i32 %2832 to i64
  store i64 %2833, i64* %2449, align 8
  %2834 = icmp eq i32 %2831, 0
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %14, align 1
  %2836 = and i32 %2832, 255
  %2837 = tail call i32 @llvm.ctpop.i32(i32 %2836)
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = xor i8 %2839, 1
  store i8 %2840, i8* %21, align 1
  %2841 = xor i32 %2832, %2831
  %2842 = lshr i32 %2841, 4
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  store i8 %2844, i8* %27, align 1
  %2845 = icmp eq i32 %2832, 0
  %2846 = zext i1 %2845 to i8
  store i8 %2846, i8* %30, align 1
  %2847 = lshr i32 %2832, 31
  %2848 = trunc i32 %2847 to i8
  store i8 %2848, i8* %33, align 1
  %2849 = lshr i32 %2831, 31
  %2850 = xor i32 %2847, %2849
  %2851 = add nuw nsw i32 %2850, %2849
  %2852 = icmp eq i32 %2851, 2
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %39, align 1
  %2854 = sext i32 %2832 to i64
  store i64 %2854, i64* %RDX.i1738, align 8
  %2855 = shl nsw i64 %2854, 2
  %2856 = add nsw i64 %2855, 11187184
  %2857 = add i64 %2824, 26
  store i64 %2857, i64* %3, align 8
  %2858 = inttoptr i64 %2856 to i32*
  %2859 = load i32, i32* %2858, align 4
  %2860 = sext i32 %2859 to i64
  %2861 = mul nsw i64 %2860, 744
  store i64 %2861, i64* %RDX.i1738, align 8
  %2862 = lshr i64 %2861, 63
  %2863 = load i64, i64* %RAX.i1746, align 8
  %2864 = add i64 %2861, %2863
  store i64 %2864, i64* %RAX.i1746, align 8
  %2865 = icmp ult i64 %2864, %2863
  %2866 = icmp ult i64 %2864, %2861
  %2867 = or i1 %2865, %2866
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %14, align 1
  %2869 = trunc i64 %2864 to i32
  %2870 = and i32 %2869, 255
  %2871 = tail call i32 @llvm.ctpop.i32(i32 %2870)
  %2872 = trunc i32 %2871 to i8
  %2873 = and i8 %2872, 1
  %2874 = xor i8 %2873, 1
  store i8 %2874, i8* %21, align 1
  %2875 = xor i64 %2861, %2863
  %2876 = xor i64 %2875, %2864
  %2877 = lshr i64 %2876, 4
  %2878 = trunc i64 %2877 to i8
  %2879 = and i8 %2878, 1
  store i8 %2879, i8* %27, align 1
  %2880 = icmp eq i64 %2864, 0
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %30, align 1
  %2882 = lshr i64 %2864, 63
  %2883 = trunc i64 %2882 to i8
  store i8 %2883, i8* %33, align 1
  %2884 = lshr i64 %2863, 63
  %2885 = xor i64 %2882, %2884
  %2886 = xor i64 %2882, %2862
  %2887 = add nuw nsw i64 %2885, %2886
  %2888 = icmp eq i64 %2887, 2
  %2889 = zext i1 %2888 to i8
  store i8 %2889, i8* %39, align 1
  %2890 = add i64 %2864, 740
  %2891 = load i32, i32* %ECX.i1726, align 4
  %2892 = add i64 %2824, 42
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2890 to i32*
  store i32 %2891, i32* %2893, align 4
  %2894 = load i64, i64* %3, align 8
  %2895 = add i64 %2894, 108
  br label %block_.L_40c7d3

block_.L_40c76c:                                  ; preds = %block_.L_40c5d0, %block_40c5ea.block_.L_40c76c_crit_edge
  %2896 = phi i64 [ %2346, %block_40c5ea.block_.L_40c76c_crit_edge ], [ %2257, %block_.L_40c5d0 ]
  %2897 = phi i64 [ %.pre46, %block_40c5ea.block_.L_40c76c_crit_edge ], [ %1837, %block_.L_40c5d0 ]
  %2898 = add i64 %2897, -4
  %2899 = add i64 %2896, 3
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2898 to i32*
  %2901 = load i32, i32* %2900, align 4
  %2902 = add i32 %2901, -1
  %2903 = zext i32 %2902 to i64
  store i64 %2903, i64* %RAX.i1746, align 8
  %2904 = icmp eq i32 %2901, 0
  %2905 = zext i1 %2904 to i8
  store i8 %2905, i8* %14, align 1
  %2906 = and i32 %2902, 255
  %2907 = tail call i32 @llvm.ctpop.i32(i32 %2906)
  %2908 = trunc i32 %2907 to i8
  %2909 = and i8 %2908, 1
  %2910 = xor i8 %2909, 1
  store i8 %2910, i8* %21, align 1
  %2911 = xor i32 %2902, %2901
  %2912 = lshr i32 %2911, 4
  %2913 = trunc i32 %2912 to i8
  %2914 = and i8 %2913, 1
  store i8 %2914, i8* %27, align 1
  %2915 = icmp eq i32 %2902, 0
  %2916 = zext i1 %2915 to i8
  store i8 %2916, i8* %30, align 1
  %2917 = lshr i32 %2902, 31
  %2918 = trunc i32 %2917 to i8
  store i8 %2918, i8* %33, align 1
  %2919 = lshr i32 %2901, 31
  %2920 = xor i32 %2917, %2919
  %2921 = add nuw nsw i32 %2920, %2919
  %2922 = icmp eq i32 %2921, 2
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %39, align 1
  %2924 = sext i32 %2902 to i64
  store i64 %2924, i64* %RCX.i1744, align 8
  %2925 = add nsw i64 %2924, 12099168
  %2926 = add i64 %2896, 17
  store i64 %2926, i64* %3, align 8
  %2927 = inttoptr i64 %2925 to i8*
  %2928 = load i8, i8* %2927, align 1
  %2929 = zext i8 %2928 to i64
  store i64 %2929, i64* %RAX.i1746, align 8
  %2930 = zext i8 %2928 to i32
  %2931 = add i64 %2897, -12
  %2932 = add i64 %2896, 20
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2931 to i32*
  %2934 = load i32, i32* %2933, align 4
  %2935 = sub i32 %2930, %2934
  %2936 = icmp ult i32 %2930, %2934
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %14, align 1
  %2938 = and i32 %2935, 255
  %2939 = tail call i32 @llvm.ctpop.i32(i32 %2938)
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = xor i8 %2941, 1
  store i8 %2942, i8* %21, align 1
  %2943 = xor i32 %2934, %2930
  %2944 = xor i32 %2943, %2935
  %2945 = lshr i32 %2944, 4
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  store i8 %2947, i8* %27, align 1
  %2948 = icmp eq i32 %2935, 0
  %2949 = zext i1 %2948 to i8
  store i8 %2949, i8* %30, align 1
  %2950 = lshr i32 %2935, 31
  %2951 = trunc i32 %2950 to i8
  store i8 %2951, i8* %33, align 1
  %2952 = lshr i32 %2934, 31
  %2953 = add nuw nsw i32 %2950, %2952
  %2954 = icmp eq i32 %2953, 2
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %39, align 1
  %.v60 = select i1 %2948, i64 26, i64 98
  %2956 = add i64 %2896, %.v60
  store i64 %2956, i64* %3, align 8
  br i1 %2948, label %block_40c786, label %block_.L_40c7ce

block_40c786:                                     ; preds = %block_.L_40c76c
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %2957 = add i64 %2956, 13
  store i64 %2957, i64* %3, align 8
  %2958 = load i32, i32* %2900, align 4
  %2959 = add i32 %2958, -1
  %2960 = zext i32 %2959 to i64
  store i64 %2960, i64* %RCX.i1744, align 8
  %2961 = icmp eq i32 %2958, 0
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %14, align 1
  %2963 = and i32 %2959, 255
  %2964 = tail call i32 @llvm.ctpop.i32(i32 %2963)
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  %2967 = xor i8 %2966, 1
  store i8 %2967, i8* %21, align 1
  %2968 = xor i32 %2959, %2958
  %2969 = lshr i32 %2968, 4
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  store i8 %2971, i8* %27, align 1
  %2972 = icmp eq i32 %2959, 0
  %2973 = zext i1 %2972 to i8
  store i8 %2973, i8* %30, align 1
  %2974 = lshr i32 %2959, 31
  %2975 = trunc i32 %2974 to i8
  store i8 %2975, i8* %33, align 1
  %2976 = lshr i32 %2958, 31
  %2977 = xor i32 %2974, %2976
  %2978 = add nuw nsw i32 %2977, %2976
  %2979 = icmp eq i32 %2978, 2
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %39, align 1
  %2981 = sext i32 %2959 to i64
  store i64 %2981, i64* %RDX.i1738, align 8
  %2982 = shl nsw i64 %2981, 2
  %2983 = add nsw i64 %2982, 11187184
  %2984 = add i64 %2956, 27
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2983 to i32*
  %2986 = load i32, i32* %2985, align 4
  %2987 = sext i32 %2986 to i64
  %2988 = mul nsw i64 %2987, 744
  store i64 %2988, i64* %RDX.i1738, align 8
  %2989 = lshr i64 %2988, 63
  %2990 = add i64 %2988, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %2990, i64* %RAX.i1746, align 8
  %2991 = icmp ult i64 %2990, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %2992 = icmp ult i64 %2990, %2988
  %2993 = or i1 %2991, %2992
  %2994 = zext i1 %2993 to i8
  store i8 %2994, i8* %14, align 1
  %2995 = trunc i64 %2990 to i32
  %2996 = and i32 %2995, 248
  %2997 = tail call i32 @llvm.ctpop.i32(i32 %2996)
  %2998 = trunc i32 %2997 to i8
  %2999 = and i8 %2998, 1
  %3000 = xor i8 %2999, 1
  store i8 %3000, i8* %21, align 1
  %3001 = xor i64 %2988, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3002 = xor i64 %3001, %2990
  %3003 = lshr i64 %3002, 4
  %3004 = trunc i64 %3003 to i8
  %3005 = and i8 %3004, 1
  store i8 %3005, i8* %27, align 1
  %3006 = icmp eq i64 %2990, 0
  %3007 = zext i1 %3006 to i8
  store i8 %3007, i8* %30, align 1
  %3008 = lshr i64 %2990, 63
  %3009 = trunc i64 %3008 to i8
  store i8 %3009, i8* %33, align 1
  %3010 = xor i64 %3008, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3011 = xor i64 %3008, %2989
  %3012 = add nuw nsw i64 %3010, %3011
  %3013 = icmp eq i64 %3012, 2
  %3014 = zext i1 %3013 to i8
  store i8 %3014, i8* %39, align 1
  %3015 = add i64 %2988, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3016 = add i64 %2956, 43
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i32*
  %3018 = load i32, i32* %3017, align 4
  %3019 = zext i32 %3018 to i64
  store i64 %3019, i64* %RCX.i1744, align 8
  %3020 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3021 = sub i32 %3018, %3020
  %3022 = icmp ult i32 %3018, %3020
  %3023 = zext i1 %3022 to i8
  store i8 %3023, i8* %14, align 1
  %3024 = and i32 %3021, 255
  %3025 = tail call i32 @llvm.ctpop.i32(i32 %3024)
  %3026 = trunc i32 %3025 to i8
  %3027 = and i8 %3026, 1
  %3028 = xor i8 %3027, 1
  store i8 %3028, i8* %21, align 1
  %3029 = xor i32 %3020, %3018
  %3030 = xor i32 %3029, %3021
  %3031 = lshr i32 %3030, 4
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  store i8 %3033, i8* %27, align 1
  %3034 = icmp eq i32 %3021, 0
  %3035 = zext i1 %3034 to i8
  store i8 %3035, i8* %30, align 1
  %3036 = lshr i32 %3021, 31
  %3037 = trunc i32 %3036 to i8
  store i8 %3037, i8* %33, align 1
  %3038 = lshr i32 %3018, 31
  %3039 = lshr i32 %3020, 31
  %3040 = xor i32 %3039, %3038
  %3041 = xor i32 %3036, %3038
  %3042 = add nuw nsw i32 %3041, %3040
  %3043 = icmp eq i32 %3042, 2
  %3044 = zext i1 %3043 to i8
  store i8 %3044, i8* %39, align 1
  %.v75 = select i1 %3034, i64 72, i64 56
  %3045 = add i64 %2956, %.v75
  store i64 %3045, i64* %3, align 8
  br i1 %3034, label %block_.L_40c7ce, label %block_40c7be

block_40c7be:                                     ; preds = %block_40c786
  %3046 = load i64, i64* %RBP.i, align 8
  %3047 = add i64 %3046, -8
  %3048 = add i64 %3045, 3
  store i64 %3048, i64* %3, align 8
  %3049 = inttoptr i64 %3047 to i32*
  %3050 = load i32, i32* %3049, align 4
  %3051 = zext i32 %3050 to i64
  store i64 %3051, i64* %RDI.i1736, align 8
  %3052 = add i64 %3046, -4
  %3053 = add i64 %3045, 6
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3052 to i32*
  %3055 = load i32, i32* %3054, align 4
  %3056 = add i32 %3055, -1
  %3057 = zext i32 %3056 to i64
  store i64 %3057, i64* %RAX.i1746, align 8
  %3058 = icmp eq i32 %3055, 0
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %14, align 1
  %3060 = and i32 %3056, 255
  %3061 = tail call i32 @llvm.ctpop.i32(i32 %3060)
  %3062 = trunc i32 %3061 to i8
  %3063 = and i8 %3062, 1
  %3064 = xor i8 %3063, 1
  store i8 %3064, i8* %21, align 1
  %3065 = xor i32 %3056, %3055
  %3066 = lshr i32 %3065, 4
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  store i8 %3068, i8* %27, align 1
  %3069 = icmp eq i32 %3056, 0
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %30, align 1
  %3071 = lshr i32 %3056, 31
  %3072 = trunc i32 %3071 to i8
  store i8 %3072, i8* %33, align 1
  %3073 = lshr i32 %3055, 31
  %3074 = xor i32 %3071, %3073
  %3075 = add nuw nsw i32 %3074, %3073
  %3076 = icmp eq i32 %3075, 2
  %3077 = zext i1 %3076 to i8
  store i8 %3077, i8* %39, align 1
  store i64 %3057, i64* %RSI.i1599, align 8
  %3078 = add i64 %3045, 1426
  %3079 = add i64 %3045, 16
  %3080 = load i64, i64* %6, align 8
  %3081 = add i64 %3080, -8
  %3082 = inttoptr i64 %3081 to i64*
  store i64 %3079, i64* %3082, align 8
  store i64 %3081, i64* %6, align 8
  store i64 %3078, i64* %3, align 8
  %call2_40c7c9 = tail call %struct.Memory* @sub_40cd50.assimilate_string(%struct.State* nonnull %0, i64 %3078, %struct.Memory* %MEMORY.6)
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_40c7ce

block_.L_40c7ce:                                  ; preds = %block_.L_40c76c, %block_40c7be, %block_40c786
  %3083 = phi i64 [ %2956, %block_.L_40c76c ], [ %3045, %block_40c786 ], [ %.pre47, %block_40c7be ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.6, %block_.L_40c76c ], [ %MEMORY.6, %block_40c786 ], [ %call2_40c7c9, %block_40c7be ]
  %3084 = add i64 %3083, 5
  store i64 %3084, i64* %3, align 8
  br label %block_.L_40c7d3

block_.L_40c7d3:                                  ; preds = %block_.L_40c7ce, %block_40c622
  %storemerge34 = phi i64 [ %2895, %block_40c622 ], [ %3084, %block_.L_40c7ce ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.6, %block_40c622 ], [ %MEMORY.10, %block_.L_40c7ce ]
  %3085 = add i64 %storemerge34, 5
  store i64 %3085, i64* %3, align 8
  br label %block_.L_40c7d8

block_.L_40c7d8:                                  ; preds = %block_.L_40c7d3, %block_.L_40c593
  %storemerge29 = phi i64 [ %2199, %block_.L_40c593 ], [ %3085, %block_.L_40c7d3 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.6, %block_.L_40c593 ], [ %MEMORY.11, %block_.L_40c7d3 ]
  %3086 = load i64, i64* %RBP.i, align 8
  %3087 = add i64 %3086, -4
  %3088 = add i64 %storemerge29, 3
  store i64 %3088, i64* %3, align 8
  %3089 = inttoptr i64 %3087 to i32*
  %3090 = load i32, i32* %3089, align 4
  %3091 = add i32 %3090, -20
  %3092 = zext i32 %3091 to i64
  store i64 %3092, i64* %RAX.i1746, align 8
  %3093 = icmp ult i32 %3090, 20
  %3094 = zext i1 %3093 to i8
  store i8 %3094, i8* %14, align 1
  %3095 = and i32 %3091, 255
  %3096 = tail call i32 @llvm.ctpop.i32(i32 %3095)
  %3097 = trunc i32 %3096 to i8
  %3098 = and i8 %3097, 1
  %3099 = xor i8 %3098, 1
  store i8 %3099, i8* %21, align 1
  %3100 = xor i32 %3090, 16
  %3101 = xor i32 %3100, %3091
  %3102 = lshr i32 %3101, 4
  %3103 = trunc i32 %3102 to i8
  %3104 = and i8 %3103, 1
  store i8 %3104, i8* %27, align 1
  %3105 = icmp eq i32 %3091, 0
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %30, align 1
  %3107 = lshr i32 %3091, 31
  %3108 = trunc i32 %3107 to i8
  store i8 %3108, i8* %33, align 1
  %3109 = lshr i32 %3090, 31
  %3110 = xor i32 %3107, %3109
  %3111 = add nuw nsw i32 %3110, %3109
  %3112 = icmp eq i32 %3111, 2
  %3113 = zext i1 %3112 to i8
  store i8 %3113, i8* %39, align 1
  %3114 = sext i32 %3091 to i64
  store i64 %3114, i64* %RCX.i1744, align 8
  %3115 = add nsw i64 %3114, 12099168
  %3116 = add i64 %storemerge29, 17
  store i64 %3116, i64* %3, align 8
  %3117 = inttoptr i64 %3115 to i8*
  %3118 = load i8, i8* %3117, align 1
  %3119 = zext i8 %3118 to i64
  store i64 %3119, i64* %RAX.i1746, align 8
  %3120 = zext i8 %3118 to i32
  store i8 0, i8* %14, align 1
  %3121 = tail call i32 @llvm.ctpop.i32(i32 %3120)
  %3122 = trunc i32 %3121 to i8
  %3123 = and i8 %3122, 1
  %3124 = xor i8 %3123, 1
  store i8 %3124, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3125 = icmp eq i8 %3118, 0
  %3126 = zext i1 %3125 to i8
  store i8 %3126, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v61 = select i1 %3125, i64 26, i64 210
  %3127 = add i64 %storemerge29, %.v61
  store i64 %3127, i64* %3, align 8
  br i1 %3125, label %block_40c7f2, label %block_.L_40c8aa

block_40c7f2:                                     ; preds = %block_.L_40c7d8
  %3128 = add i64 %3127, 3
  store i64 %3128, i64* %3, align 8
  %3129 = load i32, i32* %3089, align 4
  %3130 = add i32 %3129, -20
  %3131 = zext i32 %3130 to i64
  store i64 %3131, i64* %RAX.i1746, align 8
  %3132 = icmp ult i32 %3129, 20
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %14, align 1
  %3134 = and i32 %3130, 255
  %3135 = tail call i32 @llvm.ctpop.i32(i32 %3134)
  %3136 = trunc i32 %3135 to i8
  %3137 = and i8 %3136, 1
  %3138 = xor i8 %3137, 1
  store i8 %3138, i8* %21, align 1
  %3139 = xor i32 %3129, 16
  %3140 = xor i32 %3139, %3130
  %3141 = lshr i32 %3140, 4
  %3142 = trunc i32 %3141 to i8
  %3143 = and i8 %3142, 1
  store i8 %3143, i8* %27, align 1
  %3144 = icmp eq i32 %3130, 0
  %3145 = zext i1 %3144 to i8
  store i8 %3145, i8* %30, align 1
  %3146 = lshr i32 %3130, 31
  %3147 = trunc i32 %3146 to i8
  store i8 %3147, i8* %33, align 1
  %3148 = lshr i32 %3129, 31
  %3149 = xor i32 %3146, %3148
  %3150 = add nuw nsw i32 %3149, %3148
  %3151 = icmp eq i32 %3150, 2
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %39, align 1
  %3153 = sext i32 %3130 to i64
  store i64 %3153, i64* %RCX.i1744, align 8
  %3154 = shl nsw i64 %3153, 2
  %3155 = add nsw i64 %3154, 11185584
  %3156 = add i64 %3127, 16
  store i64 %3156, i64* %3, align 8
  %3157 = inttoptr i64 %3155 to i32*
  %3158 = load i32, i32* %3157, align 4
  %3159 = zext i32 %3158 to i64
  store i64 %3159, i64* %RAX.i1746, align 8
  %3160 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %3161 = sub i32 %3158, %3160
  %3162 = icmp ult i32 %3158, %3160
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %14, align 1
  %3164 = and i32 %3161, 255
  %3165 = tail call i32 @llvm.ctpop.i32(i32 %3164)
  %3166 = trunc i32 %3165 to i8
  %3167 = and i8 %3166, 1
  %3168 = xor i8 %3167, 1
  store i8 %3168, i8* %21, align 1
  %3169 = xor i32 %3160, %3158
  %3170 = xor i32 %3169, %3161
  %3171 = lshr i32 %3170, 4
  %3172 = trunc i32 %3171 to i8
  %3173 = and i8 %3172, 1
  store i8 %3173, i8* %27, align 1
  %3174 = icmp eq i32 %3161, 0
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %30, align 1
  %3176 = lshr i32 %3161, 31
  %3177 = trunc i32 %3176 to i8
  store i8 %3177, i8* %33, align 1
  %3178 = lshr i32 %3158, 31
  %3179 = lshr i32 %3160, 31
  %3180 = xor i32 %3179, %3178
  %3181 = xor i32 %3176, %3178
  %3182 = add nuw nsw i32 %3181, %3180
  %3183 = icmp eq i32 %3182, 2
  %3184 = zext i1 %3183 to i8
  store i8 %3184, i8* %39, align 1
  %.v73 = select i1 %3174, i64 184, i64 29
  %3185 = add i64 %3127, %.v73
  store i64 %3185, i64* %3, align 8
  br i1 %3174, label %block_.L_40c8aa, label %block_40c80f

block_40c80f:                                     ; preds = %block_40c7f2
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %3186 = add i64 %3086, -8
  %3187 = add i64 %3185, 19
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3186 to i32*
  %3189 = load i32, i32* %3188, align 4
  %3190 = sext i32 %3189 to i64
  %3191 = mul nsw i64 %3190, 744
  store i64 %3191, i64* %RCX.i1744, align 8
  %3192 = lshr i64 %3191, 63
  %3193 = add i64 %3191, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3193, i64* %RAX.i1746, align 8
  %3194 = icmp ult i64 %3193, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3195 = icmp ult i64 %3193, %3191
  %3196 = or i1 %3194, %3195
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %14, align 1
  %3198 = trunc i64 %3193 to i32
  %3199 = and i32 %3198, 248
  %3200 = tail call i32 @llvm.ctpop.i32(i32 %3199)
  %3201 = trunc i32 %3200 to i8
  %3202 = and i8 %3201, 1
  %3203 = xor i8 %3202, 1
  store i8 %3203, i8* %21, align 1
  %3204 = xor i64 %3191, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3205 = xor i64 %3204, %3193
  %3206 = lshr i64 %3205, 4
  %3207 = trunc i64 %3206 to i8
  %3208 = and i8 %3207, 1
  store i8 %3208, i8* %27, align 1
  %3209 = icmp eq i64 %3193, 0
  %3210 = zext i1 %3209 to i8
  store i8 %3210, i8* %30, align 1
  %3211 = lshr i64 %3193, 63
  %3212 = trunc i64 %3211 to i8
  store i8 %3212, i8* %33, align 1
  %3213 = xor i64 %3211, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3214 = xor i64 %3211, %3192
  %3215 = add nuw nsw i64 %3213, %3214
  %3216 = icmp eq i64 %3215, 2
  %3217 = zext i1 %3216 to i8
  store i8 %3217, i8* %39, align 1
  %3218 = add i64 %3191, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %3219 = add i64 %3185, 33
  store i64 %3219, i64* %3, align 8
  %3220 = inttoptr i64 %3218 to i32*
  %3221 = load i32, i32* %3220, align 4
  %3222 = add i32 %3221, -20
  %3223 = icmp ult i32 %3221, 20
  %3224 = zext i1 %3223 to i8
  store i8 %3224, i8* %14, align 1
  %3225 = and i32 %3222, 255
  %3226 = tail call i32 @llvm.ctpop.i32(i32 %3225)
  %3227 = trunc i32 %3226 to i8
  %3228 = and i8 %3227, 1
  %3229 = xor i8 %3228, 1
  store i8 %3229, i8* %21, align 1
  %3230 = xor i32 %3221, 16
  %3231 = xor i32 %3230, %3222
  %3232 = lshr i32 %3231, 4
  %3233 = trunc i32 %3232 to i8
  %3234 = and i8 %3233, 1
  store i8 %3234, i8* %27, align 1
  %3235 = icmp eq i32 %3222, 0
  %3236 = zext i1 %3235 to i8
  store i8 %3236, i8* %30, align 1
  %3237 = lshr i32 %3222, 31
  %3238 = trunc i32 %3237 to i8
  store i8 %3238, i8* %33, align 1
  %3239 = lshr i32 %3221, 31
  %3240 = xor i32 %3237, %3239
  %3241 = add nuw nsw i32 %3240, %3239
  %3242 = icmp eq i32 %3241, 2
  %3243 = zext i1 %3242 to i8
  store i8 %3243, i8* %39, align 1
  %3244 = icmp ne i8 %3238, 0
  %3245 = xor i1 %3244, %3242
  %.v74 = select i1 %3245, i64 39, i64 94
  %3246 = add i64 %3185, %.v74
  store i64 %3246, i64* %3, align 8
  br i1 %3245, label %block_40c836, label %block_.L_40c86d

block_40c836:                                     ; preds = %block_40c80f
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %3247 = load i64, i64* %RBP.i, align 8
  %3248 = add i64 %3247, -4
  %3249 = add i64 %3246, 13
  store i64 %3249, i64* %3, align 8
  %3250 = inttoptr i64 %3248 to i32*
  %3251 = load i32, i32* %3250, align 4
  %3252 = add i32 %3251, -20
  %3253 = zext i32 %3252 to i64
  store i64 %3253, i64* %RCX.i1744, align 8
  %3254 = icmp ult i32 %3251, 20
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %14, align 1
  %3256 = and i32 %3252, 255
  %3257 = tail call i32 @llvm.ctpop.i32(i32 %3256)
  %3258 = trunc i32 %3257 to i8
  %3259 = and i8 %3258, 1
  %3260 = xor i8 %3259, 1
  store i8 %3260, i8* %21, align 1
  %3261 = xor i32 %3251, 16
  %3262 = xor i32 %3261, %3252
  %3263 = lshr i32 %3262, 4
  %3264 = trunc i32 %3263 to i8
  %3265 = and i8 %3264, 1
  store i8 %3265, i8* %27, align 1
  %3266 = icmp eq i32 %3252, 0
  %3267 = zext i1 %3266 to i8
  store i8 %3267, i8* %30, align 1
  %3268 = lshr i32 %3252, 31
  %3269 = trunc i32 %3268 to i8
  store i8 %3269, i8* %33, align 1
  %3270 = lshr i32 %3251, 31
  %3271 = xor i32 %3268, %3270
  %3272 = add nuw nsw i32 %3271, %3270
  %3273 = icmp eq i32 %3272, 2
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %39, align 1
  %3275 = add i64 %3247, -8
  %3276 = add i64 %3246, 20
  store i64 %3276, i64* %3, align 8
  %3277 = inttoptr i64 %3275 to i32*
  %3278 = load i32, i32* %3277, align 4
  %3279 = sext i32 %3278 to i64
  %3280 = mul nsw i64 %3279, 744
  store i64 %3280, i64* %RDX.i1738, align 8
  %3281 = lshr i64 %3280, 63
  %3282 = add i64 %3280, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3282, i64* %RSI.i1599, align 8
  %3283 = icmp ult i64 %3282, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3284 = icmp ult i64 %3282, %3280
  %3285 = or i1 %3283, %3284
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %14, align 1
  %3287 = trunc i64 %3282 to i32
  %3288 = and i32 %3287, 248
  %3289 = tail call i32 @llvm.ctpop.i32(i32 %3288)
  %3290 = trunc i32 %3289 to i8
  %3291 = and i8 %3290, 1
  %3292 = xor i8 %3291, 1
  store i8 %3292, i8* %21, align 1
  %3293 = xor i64 %3280, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3294 = xor i64 %3293, %3282
  %3295 = lshr i64 %3294, 4
  %3296 = trunc i64 %3295 to i8
  %3297 = and i8 %3296, 1
  store i8 %3297, i8* %27, align 1
  %3298 = icmp eq i64 %3282, 0
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %30, align 1
  %3300 = lshr i64 %3282, 63
  %3301 = trunc i64 %3300 to i8
  store i8 %3301, i8* %33, align 1
  %3302 = xor i64 %3300, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3303 = xor i64 %3300, %3281
  %3304 = add nuw nsw i64 %3302, %3303
  %3305 = icmp eq i64 %3304, 2
  %3306 = zext i1 %3305 to i8
  store i8 %3306, i8* %39, align 1
  %3307 = load i64, i64* %RBP.i, align 8
  %3308 = add i64 %3307, -8
  %3309 = add i64 %3246, 37
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to i32*
  %3311 = load i32, i32* %3310, align 4
  %3312 = sext i32 %3311 to i64
  %3313 = mul nsw i64 %3312, 744
  store i64 %3313, i64* %RDX.i1738, align 8
  %3314 = lshr i64 %3313, 63
  %3315 = load i64, i64* %RAX.i1746, align 8
  %3316 = add i64 %3313, %3315
  store i64 %3316, i64* %RAX.i1746, align 8
  %3317 = icmp ult i64 %3316, %3315
  %3318 = icmp ult i64 %3316, %3313
  %3319 = or i1 %3317, %3318
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %14, align 1
  %3321 = trunc i64 %3316 to i32
  %3322 = and i32 %3321, 255
  %3323 = tail call i32 @llvm.ctpop.i32(i32 %3322)
  %3324 = trunc i32 %3323 to i8
  %3325 = and i8 %3324, 1
  %3326 = xor i8 %3325, 1
  store i8 %3326, i8* %21, align 1
  %3327 = xor i64 %3313, %3315
  %3328 = xor i64 %3327, %3316
  %3329 = lshr i64 %3328, 4
  %3330 = trunc i64 %3329 to i8
  %3331 = and i8 %3330, 1
  store i8 %3331, i8* %27, align 1
  %3332 = icmp eq i64 %3316, 0
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %30, align 1
  %3334 = lshr i64 %3316, 63
  %3335 = trunc i64 %3334 to i8
  store i8 %3335, i8* %33, align 1
  %3336 = lshr i64 %3315, 63
  %3337 = xor i64 %3334, %3336
  %3338 = xor i64 %3334, %3314
  %3339 = add nuw nsw i64 %3337, %3338
  %3340 = icmp eq i64 %3339, 2
  %3341 = zext i1 %3340 to i8
  store i8 %3341, i8* %39, align 1
  %3342 = add i64 %3316, 12
  %3343 = add i64 %3246, 51
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3342 to i32*
  %3345 = load i32, i32* %3344, align 4
  %3346 = sext i32 %3345 to i64
  store i64 %3346, i64* %RAX.i1746, align 8
  %3347 = load i64, i64* %RSI.i1599, align 8
  %3348 = shl nsw i64 %3346, 2
  %3349 = add i64 %3347, 16
  %3350 = add i64 %3349, %3348
  %3351 = load i32, i32* %ECX.i1726, align 4
  %3352 = add i64 %3246, 55
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3350 to i32*
  store i32 %3351, i32* %3353, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_40c86d

block_.L_40c86d:                                  ; preds = %block_40c80f, %block_40c836
  %3354 = phi i64 [ %3246, %block_40c80f ], [ %.pre48, %block_40c836 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %3355 = load i64, i64* %RBP.i, align 8
  %3356 = add i64 %3355, -8
  %3357 = add i64 %3354, 14
  store i64 %3357, i64* %3, align 8
  %3358 = inttoptr i64 %3356 to i32*
  %3359 = load i32, i32* %3358, align 4
  %3360 = sext i32 %3359 to i64
  %3361 = mul nsw i64 %3360, 744
  store i64 %3361, i64* %RCX.i1744, align 8
  %3362 = lshr i64 %3361, 63
  %3363 = add i64 %3361, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3363, i64* %RAX.i1746, align 8
  %3364 = icmp ult i64 %3363, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3365 = icmp ult i64 %3363, %3361
  %3366 = or i1 %3364, %3365
  %3367 = zext i1 %3366 to i8
  store i8 %3367, i8* %14, align 1
  %3368 = trunc i64 %3363 to i32
  %3369 = and i32 %3368, 248
  %3370 = tail call i32 @llvm.ctpop.i32(i32 %3369)
  %3371 = trunc i32 %3370 to i8
  %3372 = and i8 %3371, 1
  %3373 = xor i8 %3372, 1
  store i8 %3373, i8* %21, align 1
  %3374 = xor i64 %3361, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3375 = xor i64 %3374, %3363
  %3376 = lshr i64 %3375, 4
  %3377 = trunc i64 %3376 to i8
  %3378 = and i8 %3377, 1
  store i8 %3378, i8* %27, align 1
  %3379 = icmp eq i64 %3363, 0
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %30, align 1
  %3381 = lshr i64 %3363, 63
  %3382 = trunc i64 %3381 to i8
  store i8 %3382, i8* %33, align 1
  %3383 = xor i64 %3381, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3384 = xor i64 %3381, %3362
  %3385 = add nuw nsw i64 %3383, %3384
  %3386 = icmp eq i64 %3385, 2
  %3387 = zext i1 %3386 to i8
  store i8 %3387, i8* %39, align 1
  %3388 = add i64 %3361, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %3389 = add i64 %3354, 27
  store i64 %3389, i64* %3, align 8
  %3390 = inttoptr i64 %3388 to i32*
  %3391 = load i32, i32* %3390, align 4
  %3392 = add i32 %3391, 1
  %3393 = icmp eq i32 %3391, -1
  %3394 = icmp eq i32 %3392, 0
  %3395 = or i1 %3393, %3394
  %3396 = zext i1 %3395 to i8
  store i8 %3396, i8* %14, align 1
  %3397 = and i32 %3392, 255
  %3398 = tail call i32 @llvm.ctpop.i32(i32 %3397)
  %3399 = trunc i32 %3398 to i8
  %3400 = and i8 %3399, 1
  %3401 = xor i8 %3400, 1
  store i8 %3401, i8* %21, align 1
  %3402 = xor i32 %3392, %3391
  %3403 = lshr i32 %3402, 4
  %3404 = trunc i32 %3403 to i8
  %3405 = and i8 %3404, 1
  store i8 %3405, i8* %27, align 1
  %3406 = zext i1 %3394 to i8
  store i8 %3406, i8* %30, align 1
  %3407 = lshr i32 %3392, 31
  %3408 = trunc i32 %3407 to i8
  store i8 %3408, i8* %33, align 1
  %3409 = lshr i32 %3391, 31
  %3410 = xor i32 %3407, %3409
  %3411 = add nuw nsw i32 %3410, %3407
  %3412 = icmp eq i32 %3411, 2
  %3413 = zext i1 %3412 to i8
  store i8 %3413, i8* %39, align 1
  %3414 = add i64 %3354, 33
  store i64 %3414, i64* %3, align 8
  store i32 %3392, i32* %3390, align 4
  %3415 = load i64, i64* %3, align 8
  %3416 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %3417 = zext i32 %3416 to i64
  store i64 %3417, i64* %RDX.i1738, align 8
  %3418 = load i64, i64* %RBP.i, align 8
  %3419 = add i64 %3418, -4
  %3420 = add i64 %3415, 10
  store i64 %3420, i64* %3, align 8
  %3421 = inttoptr i64 %3419 to i32*
  %3422 = load i32, i32* %3421, align 4
  %3423 = add i32 %3422, -20
  %3424 = zext i32 %3423 to i64
  store i64 %3424, i64* %RSI.i1599, align 8
  %3425 = icmp ult i32 %3422, 20
  %3426 = zext i1 %3425 to i8
  store i8 %3426, i8* %14, align 1
  %3427 = and i32 %3423, 255
  %3428 = tail call i32 @llvm.ctpop.i32(i32 %3427)
  %3429 = trunc i32 %3428 to i8
  %3430 = and i8 %3429, 1
  %3431 = xor i8 %3430, 1
  store i8 %3431, i8* %21, align 1
  %3432 = xor i32 %3422, 16
  %3433 = xor i32 %3432, %3423
  %3434 = lshr i32 %3433, 4
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  store i8 %3436, i8* %27, align 1
  %3437 = icmp eq i32 %3423, 0
  %3438 = zext i1 %3437 to i8
  store i8 %3438, i8* %30, align 1
  %3439 = lshr i32 %3423, 31
  %3440 = trunc i32 %3439 to i8
  store i8 %3440, i8* %33, align 1
  %3441 = lshr i32 %3422, 31
  %3442 = xor i32 %3439, %3441
  %3443 = add nuw nsw i32 %3442, %3441
  %3444 = icmp eq i32 %3443, 2
  %3445 = zext i1 %3444 to i8
  store i8 %3445, i8* %39, align 1
  %3446 = sext i32 %3423 to i64
  store i64 %3446, i64* %RAX.i1746, align 8
  %3447 = shl nsw i64 %3446, 2
  %3448 = add nsw i64 %3447, 11185584
  %3449 = add i64 %3415, 23
  store i64 %3449, i64* %3, align 8
  %3450 = inttoptr i64 %3448 to i32*
  store i32 %3416, i32* %3450, align 4
  %3451 = load i64, i64* %3, align 8
  %3452 = add i64 %3451, 525
  br label %block_.L_40cab2

block_.L_40c8aa:                                  ; preds = %block_.L_40c7d8, %block_40c7f2
  %3453 = phi i64 [ %3185, %block_40c7f2 ], [ %3127, %block_.L_40c7d8 ]
  %3454 = add i64 %3453, 3
  store i64 %3454, i64* %3, align 8
  %3455 = load i32, i32* %3089, align 4
  %3456 = add i32 %3455, -20
  %3457 = zext i32 %3456 to i64
  store i64 %3457, i64* %RAX.i1746, align 8
  %3458 = icmp ult i32 %3455, 20
  %3459 = zext i1 %3458 to i8
  store i8 %3459, i8* %14, align 1
  %3460 = and i32 %3456, 255
  %3461 = tail call i32 @llvm.ctpop.i32(i32 %3460)
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  %3464 = xor i8 %3463, 1
  store i8 %3464, i8* %21, align 1
  %3465 = xor i32 %3455, 16
  %3466 = xor i32 %3465, %3456
  %3467 = lshr i32 %3466, 4
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  store i8 %3469, i8* %27, align 1
  %3470 = icmp eq i32 %3456, 0
  %3471 = zext i1 %3470 to i8
  store i8 %3471, i8* %30, align 1
  %3472 = lshr i32 %3456, 31
  %3473 = trunc i32 %3472 to i8
  store i8 %3473, i8* %33, align 1
  %3474 = lshr i32 %3455, 31
  %3475 = xor i32 %3472, %3474
  %3476 = add nuw nsw i32 %3475, %3474
  %3477 = icmp eq i32 %3476, 2
  %3478 = zext i1 %3477 to i8
  store i8 %3478, i8* %39, align 1
  %3479 = sext i32 %3456 to i64
  store i64 %3479, i64* %RCX.i1744, align 8
  %3480 = add nsw i64 %3479, 12099168
  %3481 = add i64 %3453, 17
  store i64 %3481, i64* %3, align 8
  %3482 = inttoptr i64 %3480 to i8*
  %3483 = load i8, i8* %3482, align 1
  %3484 = zext i8 %3483 to i64
  store i64 %3484, i64* %RAX.i1746, align 8
  %3485 = zext i8 %3483 to i32
  %3486 = add i64 %3086, -16
  %3487 = add i64 %3453, 20
  store i64 %3487, i64* %3, align 8
  %3488 = inttoptr i64 %3486 to i32*
  %3489 = load i32, i32* %3488, align 4
  %3490 = sub i32 %3485, %3489
  %3491 = icmp ult i32 %3485, %3489
  %3492 = zext i1 %3491 to i8
  store i8 %3492, i8* %14, align 1
  %3493 = and i32 %3490, 255
  %3494 = tail call i32 @llvm.ctpop.i32(i32 %3493)
  %3495 = trunc i32 %3494 to i8
  %3496 = and i8 %3495, 1
  %3497 = xor i8 %3496, 1
  store i8 %3497, i8* %21, align 1
  %3498 = xor i32 %3489, %3485
  %3499 = xor i32 %3498, %3490
  %3500 = lshr i32 %3499, 4
  %3501 = trunc i32 %3500 to i8
  %3502 = and i8 %3501, 1
  store i8 %3502, i8* %27, align 1
  %3503 = icmp eq i32 %3490, 0
  %3504 = zext i1 %3503 to i8
  store i8 %3504, i8* %30, align 1
  %3505 = lshr i32 %3490, 31
  %3506 = trunc i32 %3505 to i8
  store i8 %3506, i8* %33, align 1
  %3507 = lshr i32 %3489, 31
  %3508 = add nuw nsw i32 %3505, %3507
  %3509 = icmp eq i32 %3508, 2
  %3510 = zext i1 %3509 to i8
  store i8 %3510, i8* %39, align 1
  %.v62 = select i1 %3503, i64 26, i64 412
  %3511 = add i64 %3453, %.v62
  store i64 %3511, i64* %3, align 8
  br i1 %3503, label %block_40c8c4, label %block_.L_40ca46

block_40c8c4:                                     ; preds = %block_.L_40c8aa
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %3512 = add i64 %3511, 13
  store i64 %3512, i64* %3, align 8
  %3513 = load i32, i32* %3089, align 4
  %3514 = add i32 %3513, -20
  %3515 = zext i32 %3514 to i64
  store i64 %3515, i64* %RCX.i1744, align 8
  %3516 = icmp ult i32 %3513, 20
  %3517 = zext i1 %3516 to i8
  store i8 %3517, i8* %14, align 1
  %3518 = and i32 %3514, 255
  %3519 = tail call i32 @llvm.ctpop.i32(i32 %3518)
  %3520 = trunc i32 %3519 to i8
  %3521 = and i8 %3520, 1
  %3522 = xor i8 %3521, 1
  store i8 %3522, i8* %21, align 1
  %3523 = xor i32 %3513, 16
  %3524 = xor i32 %3523, %3514
  %3525 = lshr i32 %3524, 4
  %3526 = trunc i32 %3525 to i8
  %3527 = and i8 %3526, 1
  store i8 %3527, i8* %27, align 1
  %3528 = icmp eq i32 %3514, 0
  %3529 = zext i1 %3528 to i8
  store i8 %3529, i8* %30, align 1
  %3530 = lshr i32 %3514, 31
  %3531 = trunc i32 %3530 to i8
  store i8 %3531, i8* %33, align 1
  %3532 = lshr i32 %3513, 31
  %3533 = xor i32 %3530, %3532
  %3534 = add nuw nsw i32 %3533, %3532
  %3535 = icmp eq i32 %3534, 2
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %39, align 1
  %3537 = sext i32 %3514 to i64
  store i64 %3537, i64* %RDX.i1738, align 8
  %3538 = shl nsw i64 %3537, 2
  %3539 = add nsw i64 %3538, 11187184
  %3540 = add i64 %3511, 27
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3539 to i32*
  %3542 = load i32, i32* %3541, align 4
  %3543 = sext i32 %3542 to i64
  %3544 = mul nsw i64 %3543, 744
  store i64 %3544, i64* %RDX.i1738, align 8
  %3545 = lshr i64 %3544, 63
  %3546 = add i64 %3544, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3546, i64* %RAX.i1746, align 8
  %3547 = icmp ult i64 %3546, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3548 = icmp ult i64 %3546, %3544
  %3549 = or i1 %3547, %3548
  %3550 = zext i1 %3549 to i8
  store i8 %3550, i8* %14, align 1
  %3551 = trunc i64 %3546 to i32
  %3552 = and i32 %3551, 248
  %3553 = tail call i32 @llvm.ctpop.i32(i32 %3552)
  %3554 = trunc i32 %3553 to i8
  %3555 = and i8 %3554, 1
  %3556 = xor i8 %3555, 1
  store i8 %3556, i8* %21, align 1
  %3557 = xor i64 %3544, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3558 = xor i64 %3557, %3546
  %3559 = lshr i64 %3558, 4
  %3560 = trunc i64 %3559 to i8
  %3561 = and i8 %3560, 1
  store i8 %3561, i8* %27, align 1
  %3562 = icmp eq i64 %3546, 0
  %3563 = zext i1 %3562 to i8
  store i8 %3563, i8* %30, align 1
  %3564 = lshr i64 %3546, 63
  %3565 = trunc i64 %3564 to i8
  store i8 %3565, i8* %33, align 1
  %3566 = xor i64 %3564, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3567 = xor i64 %3564, %3545
  %3568 = add nuw nsw i64 %3566, %3567
  %3569 = icmp eq i64 %3568, 2
  %3570 = zext i1 %3569 to i8
  store i8 %3570, i8* %39, align 1
  %3571 = add i64 %3544, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %3572 = add i64 %3511, 43
  store i64 %3572, i64* %3, align 8
  %3573 = inttoptr i64 %3571 to i32*
  %3574 = load i32, i32* %3573, align 4
  %3575 = zext i32 %3574 to i64
  store i64 %3575, i64* %RCX.i1744, align 8
  %3576 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %3577 = sub i32 %3574, %3576
  %3578 = icmp ult i32 %3574, %3576
  %3579 = zext i1 %3578 to i8
  store i8 %3579, i8* %14, align 1
  %3580 = and i32 %3577, 255
  %3581 = tail call i32 @llvm.ctpop.i32(i32 %3580)
  %3582 = trunc i32 %3581 to i8
  %3583 = and i8 %3582, 1
  %3584 = xor i8 %3583, 1
  store i8 %3584, i8* %21, align 1
  %3585 = xor i32 %3576, %3574
  %3586 = xor i32 %3585, %3577
  %3587 = lshr i32 %3586, 4
  %3588 = trunc i32 %3587 to i8
  %3589 = and i8 %3588, 1
  store i8 %3589, i8* %27, align 1
  %3590 = icmp eq i32 %3577, 0
  %3591 = zext i1 %3590 to i8
  store i8 %3591, i8* %30, align 1
  %3592 = lshr i32 %3577, 31
  %3593 = trunc i32 %3592 to i8
  store i8 %3593, i8* %33, align 1
  %3594 = lshr i32 %3574, 31
  %3595 = lshr i32 %3576, 31
  %3596 = xor i32 %3595, %3594
  %3597 = xor i32 %3592, %3594
  %3598 = add nuw nsw i32 %3597, %3596
  %3599 = icmp eq i32 %3598, 2
  %3600 = zext i1 %3599 to i8
  store i8 %3600, i8* %39, align 1
  %.v72 = select i1 %3590, i64 386, i64 56
  %3601 = add i64 %3511, %.v72
  store i64 %3601, i64* %3, align 8
  br i1 %3590, label %block_40c8c4.block_.L_40ca46_crit_edge, label %block_40c8fc

block_40c8c4.block_.L_40ca46_crit_edge:           ; preds = %block_40c8c4
  %.pre49 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40ca46

block_40c8fc:                                     ; preds = %block_40c8c4
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %3602 = load i64, i64* %RBP.i, align 8
  %3603 = add i64 %3602, -4
  %3604 = add i64 %3601, 13
  store i64 %3604, i64* %3, align 8
  %3605 = inttoptr i64 %3603 to i32*
  %3606 = load i32, i32* %3605, align 4
  %3607 = add i32 %3606, -20
  %3608 = zext i32 %3607 to i64
  store i64 %3608, i64* %RCX.i1744, align 8
  %3609 = icmp ult i32 %3606, 20
  %3610 = zext i1 %3609 to i8
  store i8 %3610, i8* %14, align 1
  %3611 = and i32 %3607, 255
  %3612 = tail call i32 @llvm.ctpop.i32(i32 %3611)
  %3613 = trunc i32 %3612 to i8
  %3614 = and i8 %3613, 1
  %3615 = xor i8 %3614, 1
  store i8 %3615, i8* %21, align 1
  %3616 = xor i32 %3606, 16
  %3617 = xor i32 %3616, %3607
  %3618 = lshr i32 %3617, 4
  %3619 = trunc i32 %3618 to i8
  %3620 = and i8 %3619, 1
  store i8 %3620, i8* %27, align 1
  %3621 = icmp eq i32 %3607, 0
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %30, align 1
  %3623 = lshr i32 %3607, 31
  %3624 = trunc i32 %3623 to i8
  store i8 %3624, i8* %33, align 1
  %3625 = lshr i32 %3606, 31
  %3626 = xor i32 %3623, %3625
  %3627 = add nuw nsw i32 %3626, %3625
  %3628 = icmp eq i32 %3627, 2
  %3629 = zext i1 %3628 to i8
  store i8 %3629, i8* %39, align 1
  %3630 = sext i32 %3607 to i64
  store i64 %3630, i64* %RDX.i1738, align 8
  %3631 = shl nsw i64 %3630, 2
  %3632 = add nsw i64 %3631, 11187184
  %3633 = add i64 %3601, 26
  store i64 %3633, i64* %3, align 8
  %3634 = inttoptr i64 %3632 to i32*
  %3635 = load i32, i32* %3634, align 4
  %3636 = zext i32 %3635 to i64
  store i64 %3636, i64* %RCX.i1744, align 8
  %3637 = add i64 %3602, -8
  %3638 = add i64 %3601, 30
  store i64 %3638, i64* %3, align 8
  %3639 = inttoptr i64 %3637 to i32*
  %3640 = load i32, i32* %3639, align 4
  %3641 = sext i32 %3640 to i64
  %3642 = mul nsw i64 %3641, 744
  store i64 %3642, i64* %RDX.i1738, align 8
  %3643 = lshr i64 %3642, 63
  %3644 = add i64 %3642, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %3644, i64* %RSI.i1599, align 8
  %3645 = icmp ult i64 %3644, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3646 = icmp ult i64 %3644, %3642
  %3647 = or i1 %3645, %3646
  %3648 = zext i1 %3647 to i8
  store i8 %3648, i8* %14, align 1
  %3649 = trunc i64 %3644 to i32
  %3650 = and i32 %3649, 248
  %3651 = tail call i32 @llvm.ctpop.i32(i32 %3650)
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = xor i8 %3653, 1
  store i8 %3654, i8* %21, align 1
  %3655 = xor i64 %3642, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %3656 = xor i64 %3655, %3644
  %3657 = lshr i64 %3656, 4
  %3658 = trunc i64 %3657 to i8
  %3659 = and i8 %3658, 1
  store i8 %3659, i8* %27, align 1
  %3660 = icmp eq i64 %3644, 0
  %3661 = zext i1 %3660 to i8
  store i8 %3661, i8* %30, align 1
  %3662 = lshr i64 %3644, 63
  %3663 = trunc i64 %3662 to i8
  store i8 %3663, i8* %33, align 1
  %3664 = xor i64 %3662, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %3665 = xor i64 %3662, %3643
  %3666 = add nuw nsw i64 %3664, %3665
  %3667 = icmp eq i64 %3666, 2
  %3668 = zext i1 %3667 to i8
  store i8 %3668, i8* %39, align 1
  %3669 = load i64, i64* %RBP.i, align 8
  %3670 = add i64 %3669, -8
  %3671 = add i64 %3601, 47
  store i64 %3671, i64* %3, align 8
  %3672 = inttoptr i64 %3670 to i32*
  %3673 = load i32, i32* %3672, align 4
  %3674 = sext i32 %3673 to i64
  %3675 = mul nsw i64 %3674, 744
  store i64 %3675, i64* %RDX.i1738, align 8
  %3676 = lshr i64 %3675, 63
  %3677 = load i64, i64* %RAX.i1746, align 8
  %3678 = add i64 %3675, %3677
  store i64 %3678, i64* %RDI.i1736, align 8
  %3679 = icmp ult i64 %3678, %3677
  %3680 = icmp ult i64 %3678, %3675
  %3681 = or i1 %3679, %3680
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %14, align 1
  %3683 = trunc i64 %3678 to i32
  %3684 = and i32 %3683, 255
  %3685 = tail call i32 @llvm.ctpop.i32(i32 %3684)
  %3686 = trunc i32 %3685 to i8
  %3687 = and i8 %3686, 1
  %3688 = xor i8 %3687, 1
  store i8 %3688, i8* %21, align 1
  %3689 = xor i64 %3675, %3677
  %3690 = xor i64 %3689, %3678
  %3691 = lshr i64 %3690, 4
  %3692 = trunc i64 %3691 to i8
  %3693 = and i8 %3692, 1
  store i8 %3693, i8* %27, align 1
  %3694 = icmp eq i64 %3678, 0
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %30, align 1
  %3696 = lshr i64 %3678, 63
  %3697 = trunc i64 %3696 to i8
  store i8 %3697, i8* %33, align 1
  %3698 = lshr i64 %3677, 63
  %3699 = xor i64 %3696, %3698
  %3700 = xor i64 %3696, %3676
  %3701 = add nuw nsw i64 %3699, %3700
  %3702 = icmp eq i64 %3701, 2
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %39, align 1
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i554 = bitcast %union.anon* %3704 to i32*
  %3705 = getelementptr inbounds %union.anon, %union.anon* %3704, i64 0, i32 0
  %3706 = add i64 %3678, 96
  %3707 = add i64 %3601, 64
  store i64 %3707, i64* %3, align 8
  %3708 = inttoptr i64 %3706 to i32*
  %3709 = load i32, i32* %3708, align 4
  %3710 = zext i32 %3709 to i64
  store i64 %3710, i64* %3705, align 8
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3712 = add i32 %3709, 1
  %3713 = zext i32 %3712 to i64
  store i64 %3713, i64* %3711, align 8
  %3714 = icmp eq i32 %3709, -1
  %3715 = icmp eq i32 %3712, 0
  %3716 = or i1 %3714, %3715
  %3717 = zext i1 %3716 to i8
  store i8 %3717, i8* %14, align 1
  %3718 = and i32 %3712, 255
  %3719 = tail call i32 @llvm.ctpop.i32(i32 %3718)
  %3720 = trunc i32 %3719 to i8
  %3721 = and i8 %3720, 1
  %3722 = xor i8 %3721, 1
  store i8 %3722, i8* %21, align 1
  %3723 = xor i32 %3712, %3709
  %3724 = lshr i32 %3723, 4
  %3725 = trunc i32 %3724 to i8
  %3726 = and i8 %3725, 1
  store i8 %3726, i8* %27, align 1
  %3727 = zext i1 %3715 to i8
  store i8 %3727, i8* %30, align 1
  %3728 = lshr i32 %3712, 31
  %3729 = trunc i32 %3728 to i8
  store i8 %3729, i8* %33, align 1
  %3730 = lshr i32 %3709, 31
  %3731 = xor i32 %3728, %3730
  %3732 = add nuw nsw i32 %3731, %3728
  %3733 = icmp eq i32 %3732, 2
  %3734 = zext i1 %3733 to i8
  store i8 %3734, i8* %39, align 1
  %3735 = add i64 %3601, 75
  store i64 %3735, i64* %3, align 8
  store i32 %3712, i32* %3708, align 4
  %3736 = load i32, i32* %R8D.i554, align 4
  %3737 = load i64, i64* %3, align 8
  %3738 = sext i32 %3736 to i64
  store i64 %3738, i64* %RDX.i1738, align 8
  %3739 = load i64, i64* %RSI.i1599, align 8
  %3740 = shl nsw i64 %3738, 2
  %3741 = add nsw i64 %3740, 100
  %3742 = add i64 %3741, %3739
  %3743 = load i32, i32* %ECX.i1726, align 4
  %3744 = add i64 %3737, 7
  store i64 %3744, i64* %3, align 8
  %3745 = inttoptr i64 %3742 to i32*
  store i32 %3743, i32* %3745, align 4
  %3746 = load i64, i64* %RBP.i, align 8
  %3747 = add i64 %3746, -4
  %3748 = load i64, i64* %3, align 8
  %3749 = add i64 %3748, 3
  store i64 %3749, i64* %3, align 8
  %3750 = inttoptr i64 %3747 to i32*
  %3751 = load i32, i32* %3750, align 4
  %3752 = add i32 %3751, -20
  %3753 = zext i32 %3752 to i64
  store i64 %3753, i64* %RCX.i1744, align 8
  %3754 = icmp ult i32 %3751, 20
  %3755 = zext i1 %3754 to i8
  store i8 %3755, i8* %14, align 1
  %3756 = and i32 %3752, 255
  %3757 = tail call i32 @llvm.ctpop.i32(i32 %3756)
  %3758 = trunc i32 %3757 to i8
  %3759 = and i8 %3758, 1
  %3760 = xor i8 %3759, 1
  store i8 %3760, i8* %21, align 1
  %3761 = xor i32 %3751, 16
  %3762 = xor i32 %3761, %3752
  %3763 = lshr i32 %3762, 4
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  store i8 %3765, i8* %27, align 1
  %3766 = icmp eq i32 %3752, 0
  %3767 = zext i1 %3766 to i8
  store i8 %3767, i8* %30, align 1
  %3768 = lshr i32 %3752, 31
  %3769 = trunc i32 %3768 to i8
  store i8 %3769, i8* %33, align 1
  %3770 = lshr i32 %3751, 31
  %3771 = xor i32 %3768, %3770
  %3772 = add nuw nsw i32 %3771, %3770
  %3773 = icmp eq i32 %3772, 2
  %3774 = zext i1 %3773 to i8
  store i8 %3774, i8* %39, align 1
  %3775 = sext i32 %3752 to i64
  store i64 %3775, i64* %RDX.i1738, align 8
  %3776 = shl nsw i64 %3775, 2
  %3777 = add nsw i64 %3776, 11187184
  %3778 = add i64 %3748, 17
  store i64 %3778, i64* %3, align 8
  %3779 = inttoptr i64 %3777 to i32*
  %3780 = load i32, i32* %3779, align 4
  %3781 = sext i32 %3780 to i64
  %3782 = mul nsw i64 %3781, 744
  %3783 = load i64, i64* %RAX.i1746, align 8
  %3784 = add i64 %3782, %3783
  %3785 = lshr i64 %3784, 63
  %3786 = add i64 %3784, 96
  store i64 %3786, i64* %RSI.i1599, align 8
  %3787 = icmp ugt i64 %3784, -97
  %3788 = zext i1 %3787 to i8
  store i8 %3788, i8* %14, align 1
  %3789 = trunc i64 %3786 to i32
  %3790 = and i32 %3789, 255
  %3791 = tail call i32 @llvm.ctpop.i32(i32 %3790)
  %3792 = trunc i32 %3791 to i8
  %3793 = and i8 %3792, 1
  %3794 = xor i8 %3793, 1
  store i8 %3794, i8* %21, align 1
  %3795 = xor i64 %3786, %3784
  %3796 = lshr i64 %3795, 4
  %3797 = trunc i64 %3796 to i8
  %3798 = and i8 %3797, 1
  store i8 %3798, i8* %27, align 1
  %3799 = icmp eq i64 %3786, 0
  %3800 = zext i1 %3799 to i8
  store i8 %3800, i8* %30, align 1
  %3801 = lshr i64 %3786, 63
  %3802 = trunc i64 %3801 to i8
  store i8 %3802, i8* %33, align 1
  %3803 = xor i64 %3801, %3785
  %3804 = add nuw nsw i64 %3803, %3801
  %3805 = icmp eq i64 %3804, 2
  %3806 = zext i1 %3805 to i8
  store i8 %3806, i8* %39, align 1
  %3807 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %3807, i64* %RDX.i1738, align 8
  %3808 = add i64 %3748, 45
  store i64 %3808, i64* %3, align 8
  %3809 = inttoptr i64 %3807 to i64*
  store i64 %3786, i64* %3809, align 8
  %3810 = load i64, i64* %RBP.i, align 8
  %3811 = add i64 %3810, -4
  %3812 = load i64, i64* %3, align 8
  %3813 = add i64 %3812, 3
  store i64 %3813, i64* %3, align 8
  %3814 = inttoptr i64 %3811 to i32*
  %3815 = load i32, i32* %3814, align 4
  %3816 = add i32 %3815, -20
  %3817 = zext i32 %3816 to i64
  store i64 %3817, i64* %RCX.i1744, align 8
  %3818 = icmp ult i32 %3815, 20
  %3819 = zext i1 %3818 to i8
  store i8 %3819, i8* %14, align 1
  %3820 = and i32 %3816, 255
  %3821 = tail call i32 @llvm.ctpop.i32(i32 %3820)
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  %3824 = xor i8 %3823, 1
  store i8 %3824, i8* %21, align 1
  %3825 = xor i32 %3815, 16
  %3826 = xor i32 %3825, %3816
  %3827 = lshr i32 %3826, 4
  %3828 = trunc i32 %3827 to i8
  %3829 = and i8 %3828, 1
  store i8 %3829, i8* %27, align 1
  %3830 = icmp eq i32 %3816, 0
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %30, align 1
  %3832 = lshr i32 %3816, 31
  %3833 = trunc i32 %3832 to i8
  store i8 %3833, i8* %33, align 1
  %3834 = lshr i32 %3815, 31
  %3835 = xor i32 %3832, %3834
  %3836 = add nuw nsw i32 %3835, %3834
  %3837 = icmp eq i32 %3836, 2
  %3838 = zext i1 %3837 to i8
  store i8 %3838, i8* %39, align 1
  %3839 = sext i32 %3816 to i64
  store i64 %3839, i64* %RDX.i1738, align 8
  %3840 = shl nsw i64 %3839, 2
  %3841 = add nsw i64 %3840, 11187184
  %3842 = add i64 %3812, 17
  store i64 %3842, i64* %3, align 8
  %3843 = inttoptr i64 %3841 to i32*
  %3844 = load i32, i32* %3843, align 4
  %3845 = sext i32 %3844 to i64
  %3846 = mul nsw i64 %3845, 744
  store i64 %3846, i64* %RDX.i1738, align 8
  %3847 = lshr i64 %3846, 63
  %3848 = load i64, i64* %RAX.i1746, align 8
  %3849 = add i64 %3846, %3848
  store i64 %3849, i64* %RSI.i1599, align 8
  %3850 = icmp ult i64 %3849, %3848
  %3851 = icmp ult i64 %3849, %3846
  %3852 = or i1 %3850, %3851
  %3853 = zext i1 %3852 to i8
  store i8 %3853, i8* %14, align 1
  %3854 = trunc i64 %3849 to i32
  %3855 = and i32 %3854, 255
  %3856 = tail call i32 @llvm.ctpop.i32(i32 %3855)
  %3857 = trunc i32 %3856 to i8
  %3858 = and i8 %3857, 1
  %3859 = xor i8 %3858, 1
  store i8 %3859, i8* %21, align 1
  %3860 = xor i64 %3846, %3848
  %3861 = xor i64 %3860, %3849
  %3862 = lshr i64 %3861, 4
  %3863 = trunc i64 %3862 to i8
  %3864 = and i8 %3863, 1
  store i8 %3864, i8* %27, align 1
  %3865 = icmp eq i64 %3849, 0
  %3866 = zext i1 %3865 to i8
  store i8 %3866, i8* %30, align 1
  %3867 = lshr i64 %3849, 63
  %3868 = trunc i64 %3867 to i8
  store i8 %3868, i8* %33, align 1
  %3869 = lshr i64 %3848, 63
  %3870 = xor i64 %3867, %3869
  %3871 = xor i64 %3867, %3847
  %3872 = add nuw nsw i64 %3870, %3871
  %3873 = icmp eq i64 %3872, 2
  %3874 = zext i1 %3873 to i8
  store i8 %3874, i8* %39, align 1
  %3875 = add i64 %3849, 96
  %3876 = add i64 %3812, 33
  store i64 %3876, i64* %3, align 8
  %3877 = inttoptr i64 %3875 to i32*
  %3878 = load i32, i32* %3877, align 4
  %3879 = zext i32 %3878 to i64
  store i64 %3879, i64* %RCX.i1744, align 8
  %3880 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %3880, i64* %RDX.i1738, align 8
  %3881 = add i64 %3880, 16
  store i64 %3881, i64* %RSI.i1599, align 8
  %3882 = icmp ugt i64 %3880, -17
  %3883 = zext i1 %3882 to i8
  store i8 %3883, i8* %14, align 1
  %3884 = trunc i64 %3881 to i32
  %3885 = and i32 %3884, 255
  %3886 = tail call i32 @llvm.ctpop.i32(i32 %3885)
  %3887 = trunc i32 %3886 to i8
  %3888 = and i8 %3887, 1
  %3889 = xor i8 %3888, 1
  store i8 %3889, i8* %21, align 1
  %3890 = xor i64 %3880, 16
  %3891 = xor i64 %3890, %3881
  %3892 = lshr i64 %3891, 4
  %3893 = trunc i64 %3892 to i8
  %3894 = and i8 %3893, 1
  store i8 %3894, i8* %27, align 1
  %3895 = icmp eq i64 %3881, 0
  %3896 = zext i1 %3895 to i8
  store i8 %3896, i8* %30, align 1
  %3897 = lshr i64 %3881, 63
  %3898 = trunc i64 %3897 to i8
  store i8 %3898, i8* %33, align 1
  %3899 = lshr i64 %3880, 63
  %3900 = xor i64 %3897, %3899
  %3901 = add nuw nsw i64 %3900, %3897
  %3902 = icmp eq i64 %3901, 2
  %3903 = zext i1 %3902 to i8
  store i8 %3903, i8* %39, align 1
  store i64 %3881, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %3904 = add i64 %3880, 8
  %3905 = add i64 %3812, 59
  store i64 %3905, i64* %3, align 8
  %3906 = inttoptr i64 %3904 to i32*
  store i32 %3878, i32* %3906, align 4
  %3907 = load i64, i64* %RBP.i, align 8
  %3908 = add i64 %3907, -4
  %3909 = load i64, i64* %3, align 8
  %3910 = add i64 %3909, 4
  store i64 %3910, i64* %3, align 8
  %3911 = inttoptr i64 %3908 to i32*
  %3912 = load i32, i32* %3911, align 4
  %3913 = sext i32 %3912 to i64
  store i64 %3913, i64* %RDX.i1738, align 8
  %3914 = shl nsw i64 %3913, 2
  %3915 = add nsw i64 %3914, 11187184
  %3916 = add i64 %3909, 11
  store i64 %3916, i64* %3, align 8
  %3917 = inttoptr i64 %3915 to i32*
  %3918 = load i32, i32* %3917, align 4
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RCX.i1744, align 8
  %3920 = add i64 %3909, 15
  store i64 %3920, i64* %3, align 8
  %3921 = load i32, i32* %3911, align 4
  %3922 = add i32 %3921, -20
  %3923 = zext i32 %3922 to i64
  store i64 %3923, i64* %3705, align 8
  %3924 = icmp ult i32 %3921, 20
  %3925 = zext i1 %3924 to i8
  store i8 %3925, i8* %14, align 1
  %3926 = and i32 %3922, 255
  %3927 = tail call i32 @llvm.ctpop.i32(i32 %3926)
  %3928 = trunc i32 %3927 to i8
  %3929 = and i8 %3928, 1
  %3930 = xor i8 %3929, 1
  store i8 %3930, i8* %21, align 1
  %3931 = xor i32 %3921, 16
  %3932 = xor i32 %3931, %3922
  %3933 = lshr i32 %3932, 4
  %3934 = trunc i32 %3933 to i8
  %3935 = and i8 %3934, 1
  store i8 %3935, i8* %27, align 1
  %3936 = icmp eq i32 %3922, 0
  %3937 = zext i1 %3936 to i8
  store i8 %3937, i8* %30, align 1
  %3938 = lshr i32 %3922, 31
  %3939 = trunc i32 %3938 to i8
  store i8 %3939, i8* %33, align 1
  %3940 = lshr i32 %3921, 31
  %3941 = xor i32 %3938, %3940
  %3942 = add nuw nsw i32 %3941, %3940
  %3943 = icmp eq i32 %3942, 2
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %39, align 1
  %3945 = sext i32 %3922 to i64
  store i64 %3945, i64* %RDX.i1738, align 8
  %3946 = shl nsw i64 %3945, 2
  %3947 = add nsw i64 %3946, 11187184
  %3948 = add i64 %3909, 30
  store i64 %3948, i64* %3, align 8
  %3949 = inttoptr i64 %3947 to i32*
  %3950 = load i32, i32* %3949, align 4
  %3951 = sext i32 %3950 to i64
  %3952 = mul nsw i64 %3951, 744
  store i64 %3952, i64* %RDX.i1738, align 8
  %3953 = lshr i64 %3952, 63
  %3954 = load i64, i64* %RAX.i1746, align 8
  %3955 = add i64 %3952, %3954
  store i64 %3955, i64* %RSI.i1599, align 8
  %3956 = icmp ult i64 %3955, %3954
  %3957 = icmp ult i64 %3955, %3952
  %3958 = or i1 %3956, %3957
  %3959 = zext i1 %3958 to i8
  store i8 %3959, i8* %14, align 1
  %3960 = trunc i64 %3955 to i32
  %3961 = and i32 %3960, 255
  %3962 = tail call i32 @llvm.ctpop.i32(i32 %3961)
  %3963 = trunc i32 %3962 to i8
  %3964 = and i8 %3963, 1
  %3965 = xor i8 %3964, 1
  store i8 %3965, i8* %21, align 1
  %3966 = xor i64 %3952, %3954
  %3967 = xor i64 %3966, %3955
  %3968 = lshr i64 %3967, 4
  %3969 = trunc i64 %3968 to i8
  %3970 = and i8 %3969, 1
  store i8 %3970, i8* %27, align 1
  %3971 = icmp eq i64 %3955, 0
  %3972 = zext i1 %3971 to i8
  store i8 %3972, i8* %30, align 1
  %3973 = lshr i64 %3955, 63
  %3974 = trunc i64 %3973 to i8
  store i8 %3974, i8* %33, align 1
  %3975 = lshr i64 %3954, 63
  %3976 = xor i64 %3973, %3975
  %3977 = xor i64 %3973, %3953
  %3978 = add nuw nsw i64 %3976, %3977
  %3979 = icmp eq i64 %3978, 2
  %3980 = zext i1 %3979 to i8
  store i8 %3980, i8* %39, align 1
  %3981 = load i64, i64* %RBP.i, align 8
  %3982 = add i64 %3981, -4
  %3983 = add i64 %3909, 47
  store i64 %3983, i64* %3, align 8
  %3984 = inttoptr i64 %3982 to i32*
  %3985 = load i32, i32* %3984, align 4
  %3986 = add i32 %3985, -20
  %3987 = zext i32 %3986 to i64
  store i64 %3987, i64* %3705, align 8
  %3988 = icmp ult i32 %3985, 20
  %3989 = zext i1 %3988 to i8
  store i8 %3989, i8* %14, align 1
  %3990 = and i32 %3986, 255
  %3991 = tail call i32 @llvm.ctpop.i32(i32 %3990)
  %3992 = trunc i32 %3991 to i8
  %3993 = and i8 %3992, 1
  %3994 = xor i8 %3993, 1
  store i8 %3994, i8* %21, align 1
  %3995 = xor i32 %3985, 16
  %3996 = xor i32 %3995, %3986
  %3997 = lshr i32 %3996, 4
  %3998 = trunc i32 %3997 to i8
  %3999 = and i8 %3998, 1
  store i8 %3999, i8* %27, align 1
  %4000 = icmp eq i32 %3986, 0
  %4001 = zext i1 %4000 to i8
  store i8 %4001, i8* %30, align 1
  %4002 = lshr i32 %3986, 31
  %4003 = trunc i32 %4002 to i8
  store i8 %4003, i8* %33, align 1
  %4004 = lshr i32 %3985, 31
  %4005 = xor i32 %4002, %4004
  %4006 = add nuw nsw i32 %4005, %4004
  %4007 = icmp eq i32 %4006, 2
  %4008 = zext i1 %4007 to i8
  store i8 %4008, i8* %39, align 1
  %4009 = sext i32 %3986 to i64
  store i64 %4009, i64* %RDX.i1738, align 8
  %4010 = shl nsw i64 %4009, 2
  %4011 = add nsw i64 %4010, 11187184
  %4012 = add i64 %3909, 62
  store i64 %4012, i64* %3, align 8
  %4013 = inttoptr i64 %4011 to i32*
  %4014 = load i32, i32* %4013, align 4
  %4015 = sext i32 %4014 to i64
  %4016 = mul nsw i64 %4015, 744
  store i64 %4016, i64* %RDX.i1738, align 8
  %4017 = lshr i64 %4016, 63
  %4018 = load i64, i64* %RAX.i1746, align 8
  %4019 = add i64 %4016, %4018
  store i64 %4019, i64* %RDI.i1736, align 8
  %4020 = icmp ult i64 %4019, %4018
  %4021 = icmp ult i64 %4019, %4016
  %4022 = or i1 %4020, %4021
  %4023 = zext i1 %4022 to i8
  store i8 %4023, i8* %14, align 1
  %4024 = trunc i64 %4019 to i32
  %4025 = and i32 %4024, 255
  %4026 = tail call i32 @llvm.ctpop.i32(i32 %4025)
  %4027 = trunc i32 %4026 to i8
  %4028 = and i8 %4027, 1
  %4029 = xor i8 %4028, 1
  store i8 %4029, i8* %21, align 1
  %4030 = xor i64 %4016, %4018
  %4031 = xor i64 %4030, %4019
  %4032 = lshr i64 %4031, 4
  %4033 = trunc i64 %4032 to i8
  %4034 = and i8 %4033, 1
  store i8 %4034, i8* %27, align 1
  %4035 = icmp eq i64 %4019, 0
  %4036 = zext i1 %4035 to i8
  store i8 %4036, i8* %30, align 1
  %4037 = lshr i64 %4019, 63
  %4038 = trunc i64 %4037 to i8
  store i8 %4038, i8* %33, align 1
  %4039 = lshr i64 %4018, 63
  %4040 = xor i64 %4037, %4039
  %4041 = xor i64 %4037, %4017
  %4042 = add nuw nsw i64 %4040, %4041
  %4043 = icmp eq i64 %4042, 2
  %4044 = zext i1 %4043 to i8
  store i8 %4044, i8* %39, align 1
  %4045 = add i64 %4019, 96
  %4046 = add i64 %3909, 79
  store i64 %4046, i64* %3, align 8
  %4047 = inttoptr i64 %4045 to i32*
  %4048 = load i32, i32* %4047, align 4
  %4049 = zext i32 %4048 to i64
  store i64 %4049, i64* %3705, align 8
  %4050 = add i32 %4048, 1
  %4051 = zext i32 %4050 to i64
  store i64 %4051, i64* %3711, align 8
  %4052 = icmp eq i32 %4048, -1
  %4053 = icmp eq i32 %4050, 0
  %4054 = or i1 %4052, %4053
  %4055 = zext i1 %4054 to i8
  store i8 %4055, i8* %14, align 1
  %4056 = and i32 %4050, 255
  %4057 = tail call i32 @llvm.ctpop.i32(i32 %4056)
  %4058 = trunc i32 %4057 to i8
  %4059 = and i8 %4058, 1
  %4060 = xor i8 %4059, 1
  store i8 %4060, i8* %21, align 1
  %4061 = xor i32 %4050, %4048
  %4062 = lshr i32 %4061, 4
  %4063 = trunc i32 %4062 to i8
  %4064 = and i8 %4063, 1
  store i8 %4064, i8* %27, align 1
  %4065 = zext i1 %4053 to i8
  store i8 %4065, i8* %30, align 1
  %4066 = lshr i32 %4050, 31
  %4067 = trunc i32 %4066 to i8
  store i8 %4067, i8* %33, align 1
  %4068 = lshr i32 %4048, 31
  %4069 = xor i32 %4066, %4068
  %4070 = add nuw nsw i32 %4069, %4066
  %4071 = icmp eq i32 %4070, 2
  %4072 = zext i1 %4071 to i8
  store i8 %4072, i8* %39, align 1
  %4073 = add i64 %3909, 90
  store i64 %4073, i64* %3, align 8
  store i32 %4050, i32* %4047, align 4
  %4074 = load i32, i32* %R8D.i554, align 4
  %4075 = load i64, i64* %3, align 8
  %4076 = sext i32 %4074 to i64
  store i64 %4076, i64* %RDX.i1738, align 8
  %4077 = load i64, i64* %RSI.i1599, align 8
  %4078 = shl nsw i64 %4076, 2
  %4079 = add nsw i64 %4078, 100
  %4080 = add i64 %4079, %4077
  %4081 = load i32, i32* %ECX.i1726, align 4
  %4082 = add i64 %4075, 7
  store i64 %4082, i64* %3, align 8
  %4083 = inttoptr i64 %4080 to i32*
  store i32 %4081, i32* %4083, align 4
  %4084 = load i64, i64* %3, align 8
  %4085 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %4086 = zext i32 %4085 to i64
  store i64 %4086, i64* %RCX.i1744, align 8
  %4087 = load i64, i64* %RBP.i, align 8
  %4088 = add i64 %4087, -4
  %4089 = add i64 %4084, 11
  store i64 %4089, i64* %3, align 8
  %4090 = inttoptr i64 %4088 to i32*
  %4091 = load i32, i32* %4090, align 4
  %4092 = add i32 %4091, -20
  %4093 = zext i32 %4092 to i64
  store i64 %4093, i64* %3705, align 8
  %4094 = icmp ult i32 %4091, 20
  %4095 = zext i1 %4094 to i8
  store i8 %4095, i8* %14, align 1
  %4096 = and i32 %4092, 255
  %4097 = tail call i32 @llvm.ctpop.i32(i32 %4096)
  %4098 = trunc i32 %4097 to i8
  %4099 = and i8 %4098, 1
  %4100 = xor i8 %4099, 1
  store i8 %4100, i8* %21, align 1
  %4101 = xor i32 %4091, 16
  %4102 = xor i32 %4101, %4092
  %4103 = lshr i32 %4102, 4
  %4104 = trunc i32 %4103 to i8
  %4105 = and i8 %4104, 1
  store i8 %4105, i8* %27, align 1
  %4106 = icmp eq i32 %4092, 0
  %4107 = zext i1 %4106 to i8
  store i8 %4107, i8* %30, align 1
  %4108 = lshr i32 %4092, 31
  %4109 = trunc i32 %4108 to i8
  store i8 %4109, i8* %33, align 1
  %4110 = lshr i32 %4091, 31
  %4111 = xor i32 %4108, %4110
  %4112 = add nuw nsw i32 %4111, %4110
  %4113 = icmp eq i32 %4112, 2
  %4114 = zext i1 %4113 to i8
  store i8 %4114, i8* %39, align 1
  %4115 = sext i32 %4092 to i64
  store i64 %4115, i64* %RDX.i1738, align 8
  %4116 = shl nsw i64 %4115, 2
  %4117 = add nsw i64 %4116, 11187184
  %4118 = add i64 %4084, 26
  store i64 %4118, i64* %3, align 8
  %4119 = inttoptr i64 %4117 to i32*
  %4120 = load i32, i32* %4119, align 4
  %4121 = sext i32 %4120 to i64
  %4122 = mul nsw i64 %4121, 744
  store i64 %4122, i64* %RDX.i1738, align 8
  %4123 = lshr i64 %4122, 63
  %4124 = load i64, i64* %RAX.i1746, align 8
  %4125 = add i64 %4122, %4124
  store i64 %4125, i64* %RAX.i1746, align 8
  %4126 = icmp ult i64 %4125, %4124
  %4127 = icmp ult i64 %4125, %4122
  %4128 = or i1 %4126, %4127
  %4129 = zext i1 %4128 to i8
  store i8 %4129, i8* %14, align 1
  %4130 = trunc i64 %4125 to i32
  %4131 = and i32 %4130, 255
  %4132 = tail call i32 @llvm.ctpop.i32(i32 %4131)
  %4133 = trunc i32 %4132 to i8
  %4134 = and i8 %4133, 1
  %4135 = xor i8 %4134, 1
  store i8 %4135, i8* %21, align 1
  %4136 = xor i64 %4122, %4124
  %4137 = xor i64 %4136, %4125
  %4138 = lshr i64 %4137, 4
  %4139 = trunc i64 %4138 to i8
  %4140 = and i8 %4139, 1
  store i8 %4140, i8* %27, align 1
  %4141 = icmp eq i64 %4125, 0
  %4142 = zext i1 %4141 to i8
  store i8 %4142, i8* %30, align 1
  %4143 = lshr i64 %4125, 63
  %4144 = trunc i64 %4143 to i8
  store i8 %4144, i8* %33, align 1
  %4145 = lshr i64 %4124, 63
  %4146 = xor i64 %4143, %4145
  %4147 = xor i64 %4143, %4123
  %4148 = add nuw nsw i64 %4146, %4147
  %4149 = icmp eq i64 %4148, 2
  %4150 = zext i1 %4149 to i8
  store i8 %4150, i8* %39, align 1
  %4151 = add i64 %4125, 740
  %4152 = load i32, i32* %ECX.i1726, align 4
  %4153 = add i64 %4084, 42
  store i64 %4153, i64* %3, align 8
  %4154 = inttoptr i64 %4151 to i32*
  store i32 %4152, i32* %4154, align 4
  %4155 = load i64, i64* %3, align 8
  %4156 = add i64 %4155, 108
  br label %block_.L_40caad

block_.L_40ca46:                                  ; preds = %block_.L_40c8aa, %block_40c8c4.block_.L_40ca46_crit_edge
  %4157 = phi i64 [ %3601, %block_40c8c4.block_.L_40ca46_crit_edge ], [ %3511, %block_.L_40c8aa ]
  %4158 = phi i64 [ %.pre49, %block_40c8c4.block_.L_40ca46_crit_edge ], [ %3086, %block_.L_40c8aa ]
  %4159 = add i64 %4158, -4
  %4160 = add i64 %4157, 3
  store i64 %4160, i64* %3, align 8
  %4161 = inttoptr i64 %4159 to i32*
  %4162 = load i32, i32* %4161, align 4
  %4163 = add i32 %4162, -20
  %4164 = zext i32 %4163 to i64
  store i64 %4164, i64* %RAX.i1746, align 8
  %4165 = icmp ult i32 %4162, 20
  %4166 = zext i1 %4165 to i8
  store i8 %4166, i8* %14, align 1
  %4167 = and i32 %4163, 255
  %4168 = tail call i32 @llvm.ctpop.i32(i32 %4167)
  %4169 = trunc i32 %4168 to i8
  %4170 = and i8 %4169, 1
  %4171 = xor i8 %4170, 1
  store i8 %4171, i8* %21, align 1
  %4172 = xor i32 %4162, 16
  %4173 = xor i32 %4172, %4163
  %4174 = lshr i32 %4173, 4
  %4175 = trunc i32 %4174 to i8
  %4176 = and i8 %4175, 1
  store i8 %4176, i8* %27, align 1
  %4177 = icmp eq i32 %4163, 0
  %4178 = zext i1 %4177 to i8
  store i8 %4178, i8* %30, align 1
  %4179 = lshr i32 %4163, 31
  %4180 = trunc i32 %4179 to i8
  store i8 %4180, i8* %33, align 1
  %4181 = lshr i32 %4162, 31
  %4182 = xor i32 %4179, %4181
  %4183 = add nuw nsw i32 %4182, %4181
  %4184 = icmp eq i32 %4183, 2
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %39, align 1
  %4186 = sext i32 %4163 to i64
  store i64 %4186, i64* %RCX.i1744, align 8
  %4187 = add nsw i64 %4186, 12099168
  %4188 = add i64 %4157, 17
  store i64 %4188, i64* %3, align 8
  %4189 = inttoptr i64 %4187 to i8*
  %4190 = load i8, i8* %4189, align 1
  %4191 = zext i8 %4190 to i64
  store i64 %4191, i64* %RAX.i1746, align 8
  %4192 = zext i8 %4190 to i32
  %4193 = add i64 %4158, -12
  %4194 = add i64 %4157, 20
  store i64 %4194, i64* %3, align 8
  %4195 = inttoptr i64 %4193 to i32*
  %4196 = load i32, i32* %4195, align 4
  %4197 = sub i32 %4192, %4196
  %4198 = icmp ult i32 %4192, %4196
  %4199 = zext i1 %4198 to i8
  store i8 %4199, i8* %14, align 1
  %4200 = and i32 %4197, 255
  %4201 = tail call i32 @llvm.ctpop.i32(i32 %4200)
  %4202 = trunc i32 %4201 to i8
  %4203 = and i8 %4202, 1
  %4204 = xor i8 %4203, 1
  store i8 %4204, i8* %21, align 1
  %4205 = xor i32 %4196, %4192
  %4206 = xor i32 %4205, %4197
  %4207 = lshr i32 %4206, 4
  %4208 = trunc i32 %4207 to i8
  %4209 = and i8 %4208, 1
  store i8 %4209, i8* %27, align 1
  %4210 = icmp eq i32 %4197, 0
  %4211 = zext i1 %4210 to i8
  store i8 %4211, i8* %30, align 1
  %4212 = lshr i32 %4197, 31
  %4213 = trunc i32 %4212 to i8
  store i8 %4213, i8* %33, align 1
  %4214 = lshr i32 %4196, 31
  %4215 = add nuw nsw i32 %4212, %4214
  %4216 = icmp eq i32 %4215, 2
  %4217 = zext i1 %4216 to i8
  store i8 %4217, i8* %39, align 1
  %.v63 = select i1 %4210, i64 26, i64 98
  %4218 = add i64 %4157, %.v63
  store i64 %4218, i64* %3, align 8
  br i1 %4210, label %block_40ca60, label %block_.L_40caa8

block_40ca60:                                     ; preds = %block_.L_40ca46
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %4219 = add i64 %4218, 13
  store i64 %4219, i64* %3, align 8
  %4220 = load i32, i32* %4161, align 4
  %4221 = add i32 %4220, -20
  %4222 = zext i32 %4221 to i64
  store i64 %4222, i64* %RCX.i1744, align 8
  %4223 = icmp ult i32 %4220, 20
  %4224 = zext i1 %4223 to i8
  store i8 %4224, i8* %14, align 1
  %4225 = and i32 %4221, 255
  %4226 = tail call i32 @llvm.ctpop.i32(i32 %4225)
  %4227 = trunc i32 %4226 to i8
  %4228 = and i8 %4227, 1
  %4229 = xor i8 %4228, 1
  store i8 %4229, i8* %21, align 1
  %4230 = xor i32 %4220, 16
  %4231 = xor i32 %4230, %4221
  %4232 = lshr i32 %4231, 4
  %4233 = trunc i32 %4232 to i8
  %4234 = and i8 %4233, 1
  store i8 %4234, i8* %27, align 1
  %4235 = icmp eq i32 %4221, 0
  %4236 = zext i1 %4235 to i8
  store i8 %4236, i8* %30, align 1
  %4237 = lshr i32 %4221, 31
  %4238 = trunc i32 %4237 to i8
  store i8 %4238, i8* %33, align 1
  %4239 = lshr i32 %4220, 31
  %4240 = xor i32 %4237, %4239
  %4241 = add nuw nsw i32 %4240, %4239
  %4242 = icmp eq i32 %4241, 2
  %4243 = zext i1 %4242 to i8
  store i8 %4243, i8* %39, align 1
  %4244 = sext i32 %4221 to i64
  store i64 %4244, i64* %RDX.i1738, align 8
  %4245 = shl nsw i64 %4244, 2
  %4246 = add nsw i64 %4245, 11187184
  %4247 = add i64 %4218, 27
  store i64 %4247, i64* %3, align 8
  %4248 = inttoptr i64 %4246 to i32*
  %4249 = load i32, i32* %4248, align 4
  %4250 = sext i32 %4249 to i64
  %4251 = mul nsw i64 %4250, 744
  store i64 %4251, i64* %RDX.i1738, align 8
  %4252 = lshr i64 %4251, 63
  %4253 = add i64 %4251, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4253, i64* %RAX.i1746, align 8
  %4254 = icmp ult i64 %4253, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4255 = icmp ult i64 %4253, %4251
  %4256 = or i1 %4254, %4255
  %4257 = zext i1 %4256 to i8
  store i8 %4257, i8* %14, align 1
  %4258 = trunc i64 %4253 to i32
  %4259 = and i32 %4258, 248
  %4260 = tail call i32 @llvm.ctpop.i32(i32 %4259)
  %4261 = trunc i32 %4260 to i8
  %4262 = and i8 %4261, 1
  %4263 = xor i8 %4262, 1
  store i8 %4263, i8* %21, align 1
  %4264 = xor i64 %4251, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4265 = xor i64 %4264, %4253
  %4266 = lshr i64 %4265, 4
  %4267 = trunc i64 %4266 to i8
  %4268 = and i8 %4267, 1
  store i8 %4268, i8* %27, align 1
  %4269 = icmp eq i64 %4253, 0
  %4270 = zext i1 %4269 to i8
  store i8 %4270, i8* %30, align 1
  %4271 = lshr i64 %4253, 63
  %4272 = trunc i64 %4271 to i8
  store i8 %4272, i8* %33, align 1
  %4273 = xor i64 %4271, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4274 = xor i64 %4271, %4252
  %4275 = add nuw nsw i64 %4273, %4274
  %4276 = icmp eq i64 %4275, 2
  %4277 = zext i1 %4276 to i8
  store i8 %4277, i8* %39, align 1
  %4278 = add i64 %4251, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %4279 = add i64 %4218, 43
  store i64 %4279, i64* %3, align 8
  %4280 = inttoptr i64 %4278 to i32*
  %4281 = load i32, i32* %4280, align 4
  %4282 = zext i32 %4281 to i64
  store i64 %4282, i64* %RCX.i1744, align 8
  %4283 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %4284 = sub i32 %4281, %4283
  %4285 = icmp ult i32 %4281, %4283
  %4286 = zext i1 %4285 to i8
  store i8 %4286, i8* %14, align 1
  %4287 = and i32 %4284, 255
  %4288 = tail call i32 @llvm.ctpop.i32(i32 %4287)
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = xor i8 %4290, 1
  store i8 %4291, i8* %21, align 1
  %4292 = xor i32 %4283, %4281
  %4293 = xor i32 %4292, %4284
  %4294 = lshr i32 %4293, 4
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  store i8 %4296, i8* %27, align 1
  %4297 = icmp eq i32 %4284, 0
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %30, align 1
  %4299 = lshr i32 %4284, 31
  %4300 = trunc i32 %4299 to i8
  store i8 %4300, i8* %33, align 1
  %4301 = lshr i32 %4281, 31
  %4302 = lshr i32 %4283, 31
  %4303 = xor i32 %4302, %4301
  %4304 = xor i32 %4299, %4301
  %4305 = add nuw nsw i32 %4304, %4303
  %4306 = icmp eq i32 %4305, 2
  %4307 = zext i1 %4306 to i8
  store i8 %4307, i8* %39, align 1
  %.v71 = select i1 %4297, i64 72, i64 56
  %4308 = add i64 %4218, %.v71
  store i64 %4308, i64* %3, align 8
  br i1 %4297, label %block_.L_40caa8, label %block_40ca98

block_40ca98:                                     ; preds = %block_40ca60
  %4309 = load i64, i64* %RBP.i, align 8
  %4310 = add i64 %4309, -8
  %4311 = add i64 %4308, 3
  store i64 %4311, i64* %3, align 8
  %4312 = inttoptr i64 %4310 to i32*
  %4313 = load i32, i32* %4312, align 4
  %4314 = zext i32 %4313 to i64
  store i64 %4314, i64* %RDI.i1736, align 8
  %4315 = add i64 %4309, -4
  %4316 = add i64 %4308, 6
  store i64 %4316, i64* %3, align 8
  %4317 = inttoptr i64 %4315 to i32*
  %4318 = load i32, i32* %4317, align 4
  %4319 = add i32 %4318, -20
  %4320 = zext i32 %4319 to i64
  store i64 %4320, i64* %RAX.i1746, align 8
  %4321 = icmp ult i32 %4318, 20
  %4322 = zext i1 %4321 to i8
  store i8 %4322, i8* %14, align 1
  %4323 = and i32 %4319, 255
  %4324 = tail call i32 @llvm.ctpop.i32(i32 %4323)
  %4325 = trunc i32 %4324 to i8
  %4326 = and i8 %4325, 1
  %4327 = xor i8 %4326, 1
  store i8 %4327, i8* %21, align 1
  %4328 = xor i32 %4318, 16
  %4329 = xor i32 %4328, %4319
  %4330 = lshr i32 %4329, 4
  %4331 = trunc i32 %4330 to i8
  %4332 = and i8 %4331, 1
  store i8 %4332, i8* %27, align 1
  %4333 = icmp eq i32 %4319, 0
  %4334 = zext i1 %4333 to i8
  store i8 %4334, i8* %30, align 1
  %4335 = lshr i32 %4319, 31
  %4336 = trunc i32 %4335 to i8
  store i8 %4336, i8* %33, align 1
  %4337 = lshr i32 %4318, 31
  %4338 = xor i32 %4335, %4337
  %4339 = add nuw nsw i32 %4338, %4337
  %4340 = icmp eq i32 %4339, 2
  %4341 = zext i1 %4340 to i8
  store i8 %4341, i8* %39, align 1
  store i64 %4320, i64* %RSI.i1599, align 8
  %4342 = add i64 %4308, 696
  %4343 = add i64 %4308, 16
  %4344 = load i64, i64* %6, align 8
  %4345 = add i64 %4344, -8
  %4346 = inttoptr i64 %4345 to i64*
  store i64 %4343, i64* %4346, align 8
  store i64 %4345, i64* %6, align 8
  store i64 %4342, i64* %3, align 8
  %call2_40caa3 = tail call %struct.Memory* @sub_40cd50.assimilate_string(%struct.State* nonnull %0, i64 %4342, %struct.Memory* %MEMORY.12)
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_40caa8

block_.L_40caa8:                                  ; preds = %block_.L_40ca46, %block_40ca98, %block_40ca60
  %4347 = phi i64 [ %4218, %block_.L_40ca46 ], [ %4308, %block_40ca60 ], [ %.pre50, %block_40ca98 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.12, %block_.L_40ca46 ], [ %MEMORY.12, %block_40ca60 ], [ %call2_40caa3, %block_40ca98 ]
  %4348 = add i64 %4347, 5
  store i64 %4348, i64* %3, align 8
  br label %block_.L_40caad

block_.L_40caad:                                  ; preds = %block_.L_40caa8, %block_40c8fc
  %storemerge33 = phi i64 [ %4156, %block_40c8fc ], [ %4348, %block_.L_40caa8 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.12, %block_40c8fc ], [ %MEMORY.16, %block_.L_40caa8 ]
  %4349 = add i64 %storemerge33, 5
  store i64 %4349, i64* %3, align 8
  br label %block_.L_40cab2

block_.L_40cab2:                                  ; preds = %block_.L_40caad, %block_.L_40c86d
  %storemerge30 = phi i64 [ %3452, %block_.L_40c86d ], [ %4349, %block_.L_40caad ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.12, %block_.L_40c86d ], [ %MEMORY.17, %block_.L_40caad ]
  %4350 = load i64, i64* %RBP.i, align 8
  %4351 = add i64 %4350, -4
  %4352 = add i64 %storemerge30, 3
  store i64 %4352, i64* %3, align 8
  %4353 = inttoptr i64 %4351 to i32*
  %4354 = load i32, i32* %4353, align 4
  %4355 = add i32 %4354, 1
  %4356 = zext i32 %4355 to i64
  store i64 %4356, i64* %RAX.i1746, align 8
  %4357 = icmp eq i32 %4354, -1
  %4358 = icmp eq i32 %4355, 0
  %4359 = or i1 %4357, %4358
  %4360 = zext i1 %4359 to i8
  store i8 %4360, i8* %14, align 1
  %4361 = and i32 %4355, 255
  %4362 = tail call i32 @llvm.ctpop.i32(i32 %4361)
  %4363 = trunc i32 %4362 to i8
  %4364 = and i8 %4363, 1
  %4365 = xor i8 %4364, 1
  store i8 %4365, i8* %21, align 1
  %4366 = xor i32 %4355, %4354
  %4367 = lshr i32 %4366, 4
  %4368 = trunc i32 %4367 to i8
  %4369 = and i8 %4368, 1
  store i8 %4369, i8* %27, align 1
  %4370 = zext i1 %4358 to i8
  store i8 %4370, i8* %30, align 1
  %4371 = lshr i32 %4355, 31
  %4372 = trunc i32 %4371 to i8
  store i8 %4372, i8* %33, align 1
  %4373 = lshr i32 %4354, 31
  %4374 = xor i32 %4371, %4373
  %4375 = add nuw nsw i32 %4374, %4371
  %4376 = icmp eq i32 %4375, 2
  %4377 = zext i1 %4376 to i8
  store i8 %4377, i8* %39, align 1
  %4378 = sext i32 %4355 to i64
  store i64 %4378, i64* %RCX.i1744, align 8
  %4379 = add nsw i64 %4378, 12099168
  %4380 = add i64 %storemerge30, 17
  store i64 %4380, i64* %3, align 8
  %4381 = inttoptr i64 %4379 to i8*
  %4382 = load i8, i8* %4381, align 1
  %4383 = zext i8 %4382 to i64
  store i64 %4383, i64* %RAX.i1746, align 8
  %4384 = zext i8 %4382 to i32
  store i8 0, i8* %14, align 1
  %4385 = tail call i32 @llvm.ctpop.i32(i32 %4384)
  %4386 = trunc i32 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = xor i8 %4387, 1
  store i8 %4388, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %4389 = icmp eq i8 %4382, 0
  %4390 = zext i1 %4389 to i8
  store i8 %4390, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v64 = select i1 %4389, i64 26, i64 187
  %4391 = add i64 %storemerge30, %.v64
  store i64 %4391, i64* %3, align 8
  br i1 %4389, label %block_40cacc, label %block_.L_40cb6d

block_40cacc:                                     ; preds = %block_.L_40cab2
  %4392 = add i64 %4391, 3
  store i64 %4392, i64* %3, align 8
  %4393 = load i32, i32* %4353, align 4
  %4394 = add i32 %4393, 1
  %4395 = zext i32 %4394 to i64
  store i64 %4395, i64* %RAX.i1746, align 8
  %4396 = icmp eq i32 %4393, -1
  %4397 = icmp eq i32 %4394, 0
  %4398 = or i1 %4396, %4397
  %4399 = zext i1 %4398 to i8
  store i8 %4399, i8* %14, align 1
  %4400 = and i32 %4394, 255
  %4401 = tail call i32 @llvm.ctpop.i32(i32 %4400)
  %4402 = trunc i32 %4401 to i8
  %4403 = and i8 %4402, 1
  %4404 = xor i8 %4403, 1
  store i8 %4404, i8* %21, align 1
  %4405 = xor i32 %4394, %4393
  %4406 = lshr i32 %4405, 4
  %4407 = trunc i32 %4406 to i8
  %4408 = and i8 %4407, 1
  store i8 %4408, i8* %27, align 1
  %4409 = zext i1 %4397 to i8
  store i8 %4409, i8* %30, align 1
  %4410 = lshr i32 %4394, 31
  %4411 = trunc i32 %4410 to i8
  store i8 %4411, i8* %33, align 1
  %4412 = lshr i32 %4393, 31
  %4413 = xor i32 %4410, %4412
  %4414 = add nuw nsw i32 %4413, %4410
  %4415 = icmp eq i32 %4414, 2
  %4416 = zext i1 %4415 to i8
  store i8 %4416, i8* %39, align 1
  %4417 = sext i32 %4394 to i64
  store i64 %4417, i64* %RCX.i1744, align 8
  %4418 = shl nsw i64 %4417, 2
  %4419 = add nsw i64 %4418, 11185584
  %4420 = add i64 %4391, 16
  store i64 %4420, i64* %3, align 8
  %4421 = inttoptr i64 %4419 to i32*
  %4422 = load i32, i32* %4421, align 4
  %4423 = zext i32 %4422 to i64
  store i64 %4423, i64* %RAX.i1746, align 8
  %4424 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %4425 = sub i32 %4422, %4424
  %4426 = icmp ult i32 %4422, %4424
  %4427 = zext i1 %4426 to i8
  store i8 %4427, i8* %14, align 1
  %4428 = and i32 %4425, 255
  %4429 = tail call i32 @llvm.ctpop.i32(i32 %4428)
  %4430 = trunc i32 %4429 to i8
  %4431 = and i8 %4430, 1
  %4432 = xor i8 %4431, 1
  store i8 %4432, i8* %21, align 1
  %4433 = xor i32 %4424, %4422
  %4434 = xor i32 %4433, %4425
  %4435 = lshr i32 %4434, 4
  %4436 = trunc i32 %4435 to i8
  %4437 = and i8 %4436, 1
  store i8 %4437, i8* %27, align 1
  %4438 = icmp eq i32 %4425, 0
  %4439 = zext i1 %4438 to i8
  store i8 %4439, i8* %30, align 1
  %4440 = lshr i32 %4425, 31
  %4441 = trunc i32 %4440 to i8
  store i8 %4441, i8* %33, align 1
  %4442 = lshr i32 %4422, 31
  %4443 = lshr i32 %4424, 31
  %4444 = xor i32 %4443, %4442
  %4445 = xor i32 %4440, %4442
  %4446 = add nuw nsw i32 %4445, %4444
  %4447 = icmp eq i32 %4446, 2
  %4448 = zext i1 %4447 to i8
  store i8 %4448, i8* %39, align 1
  %.v69 = select i1 %4438, i64 161, i64 29
  %4449 = add i64 %4391, %.v69
  store i64 %4449, i64* %3, align 8
  br i1 %4438, label %block_.L_40cb6d, label %block_40cae9

block_40cae9:                                     ; preds = %block_40cacc
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %4450 = add i64 %4350, -8
  %4451 = add i64 %4449, 19
  store i64 %4451, i64* %3, align 8
  %4452 = inttoptr i64 %4450 to i32*
  %4453 = load i32, i32* %4452, align 4
  %4454 = sext i32 %4453 to i64
  %4455 = mul nsw i64 %4454, 744
  store i64 %4455, i64* %RCX.i1744, align 8
  %4456 = lshr i64 %4455, 63
  %4457 = add i64 %4455, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4457, i64* %RAX.i1746, align 8
  %4458 = icmp ult i64 %4457, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4459 = icmp ult i64 %4457, %4455
  %4460 = or i1 %4458, %4459
  %4461 = zext i1 %4460 to i8
  store i8 %4461, i8* %14, align 1
  %4462 = trunc i64 %4457 to i32
  %4463 = and i32 %4462, 248
  %4464 = tail call i32 @llvm.ctpop.i32(i32 %4463)
  %4465 = trunc i32 %4464 to i8
  %4466 = and i8 %4465, 1
  %4467 = xor i8 %4466, 1
  store i8 %4467, i8* %21, align 1
  %4468 = xor i64 %4455, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4469 = xor i64 %4468, %4457
  %4470 = lshr i64 %4469, 4
  %4471 = trunc i64 %4470 to i8
  %4472 = and i8 %4471, 1
  store i8 %4472, i8* %27, align 1
  %4473 = icmp eq i64 %4457, 0
  %4474 = zext i1 %4473 to i8
  store i8 %4474, i8* %30, align 1
  %4475 = lshr i64 %4457, 63
  %4476 = trunc i64 %4475 to i8
  store i8 %4476, i8* %33, align 1
  %4477 = xor i64 %4475, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4478 = xor i64 %4475, %4456
  %4479 = add nuw nsw i64 %4477, %4478
  %4480 = icmp eq i64 %4479, 2
  %4481 = zext i1 %4480 to i8
  store i8 %4481, i8* %39, align 1
  %4482 = add i64 %4455, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %4483 = add i64 %4449, 33
  store i64 %4483, i64* %3, align 8
  %4484 = inttoptr i64 %4482 to i32*
  %4485 = load i32, i32* %4484, align 4
  %4486 = add i32 %4485, -20
  %4487 = icmp ult i32 %4485, 20
  %4488 = zext i1 %4487 to i8
  store i8 %4488, i8* %14, align 1
  %4489 = and i32 %4486, 255
  %4490 = tail call i32 @llvm.ctpop.i32(i32 %4489)
  %4491 = trunc i32 %4490 to i8
  %4492 = and i8 %4491, 1
  %4493 = xor i8 %4492, 1
  store i8 %4493, i8* %21, align 1
  %4494 = xor i32 %4485, 16
  %4495 = xor i32 %4494, %4486
  %4496 = lshr i32 %4495, 4
  %4497 = trunc i32 %4496 to i8
  %4498 = and i8 %4497, 1
  store i8 %4498, i8* %27, align 1
  %4499 = icmp eq i32 %4486, 0
  %4500 = zext i1 %4499 to i8
  store i8 %4500, i8* %30, align 1
  %4501 = lshr i32 %4486, 31
  %4502 = trunc i32 %4501 to i8
  store i8 %4502, i8* %33, align 1
  %4503 = lshr i32 %4485, 31
  %4504 = xor i32 %4501, %4503
  %4505 = add nuw nsw i32 %4504, %4503
  %4506 = icmp eq i32 %4505, 2
  %4507 = zext i1 %4506 to i8
  store i8 %4507, i8* %39, align 1
  %4508 = icmp ne i8 %4502, 0
  %4509 = xor i1 %4508, %4506
  %.v70 = select i1 %4509, i64 39, i64 94
  %4510 = add i64 %4449, %.v70
  store i64 %4510, i64* %3, align 8
  br i1 %4509, label %block_40cb10, label %block_.L_40cb47

block_40cb10:                                     ; preds = %block_40cae9
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %4511 = load i64, i64* %RBP.i, align 8
  %4512 = add i64 %4511, -4
  %4513 = add i64 %4510, 13
  store i64 %4513, i64* %3, align 8
  %4514 = inttoptr i64 %4512 to i32*
  %4515 = load i32, i32* %4514, align 4
  %4516 = add i32 %4515, 1
  %4517 = zext i32 %4516 to i64
  store i64 %4517, i64* %RCX.i1744, align 8
  %4518 = icmp eq i32 %4515, -1
  %4519 = icmp eq i32 %4516, 0
  %4520 = or i1 %4518, %4519
  %4521 = zext i1 %4520 to i8
  store i8 %4521, i8* %14, align 1
  %4522 = and i32 %4516, 255
  %4523 = tail call i32 @llvm.ctpop.i32(i32 %4522)
  %4524 = trunc i32 %4523 to i8
  %4525 = and i8 %4524, 1
  %4526 = xor i8 %4525, 1
  store i8 %4526, i8* %21, align 1
  %4527 = xor i32 %4516, %4515
  %4528 = lshr i32 %4527, 4
  %4529 = trunc i32 %4528 to i8
  %4530 = and i8 %4529, 1
  store i8 %4530, i8* %27, align 1
  %4531 = zext i1 %4519 to i8
  store i8 %4531, i8* %30, align 1
  %4532 = lshr i32 %4516, 31
  %4533 = trunc i32 %4532 to i8
  store i8 %4533, i8* %33, align 1
  %4534 = lshr i32 %4515, 31
  %4535 = xor i32 %4532, %4534
  %4536 = add nuw nsw i32 %4535, %4532
  %4537 = icmp eq i32 %4536, 2
  %4538 = zext i1 %4537 to i8
  store i8 %4538, i8* %39, align 1
  %4539 = add i64 %4511, -8
  %4540 = add i64 %4510, 20
  store i64 %4540, i64* %3, align 8
  %4541 = inttoptr i64 %4539 to i32*
  %4542 = load i32, i32* %4541, align 4
  %4543 = sext i32 %4542 to i64
  %4544 = mul nsw i64 %4543, 744
  store i64 %4544, i64* %RDX.i1738, align 8
  %4545 = lshr i64 %4544, 63
  %4546 = add i64 %4544, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4546, i64* %RSI.i1599, align 8
  %4547 = icmp ult i64 %4546, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4548 = icmp ult i64 %4546, %4544
  %4549 = or i1 %4547, %4548
  %4550 = zext i1 %4549 to i8
  store i8 %4550, i8* %14, align 1
  %4551 = trunc i64 %4546 to i32
  %4552 = and i32 %4551, 248
  %4553 = tail call i32 @llvm.ctpop.i32(i32 %4552)
  %4554 = trunc i32 %4553 to i8
  %4555 = and i8 %4554, 1
  %4556 = xor i8 %4555, 1
  store i8 %4556, i8* %21, align 1
  %4557 = xor i64 %4544, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4558 = xor i64 %4557, %4546
  %4559 = lshr i64 %4558, 4
  %4560 = trunc i64 %4559 to i8
  %4561 = and i8 %4560, 1
  store i8 %4561, i8* %27, align 1
  %4562 = icmp eq i64 %4546, 0
  %4563 = zext i1 %4562 to i8
  store i8 %4563, i8* %30, align 1
  %4564 = lshr i64 %4546, 63
  %4565 = trunc i64 %4564 to i8
  store i8 %4565, i8* %33, align 1
  %4566 = xor i64 %4564, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4567 = xor i64 %4564, %4545
  %4568 = add nuw nsw i64 %4566, %4567
  %4569 = icmp eq i64 %4568, 2
  %4570 = zext i1 %4569 to i8
  store i8 %4570, i8* %39, align 1
  %4571 = load i64, i64* %RBP.i, align 8
  %4572 = add i64 %4571, -8
  %4573 = add i64 %4510, 37
  store i64 %4573, i64* %3, align 8
  %4574 = inttoptr i64 %4572 to i32*
  %4575 = load i32, i32* %4574, align 4
  %4576 = sext i32 %4575 to i64
  %4577 = mul nsw i64 %4576, 744
  store i64 %4577, i64* %RDX.i1738, align 8
  %4578 = lshr i64 %4577, 63
  %4579 = load i64, i64* %RAX.i1746, align 8
  %4580 = add i64 %4577, %4579
  store i64 %4580, i64* %RAX.i1746, align 8
  %4581 = icmp ult i64 %4580, %4579
  %4582 = icmp ult i64 %4580, %4577
  %4583 = or i1 %4581, %4582
  %4584 = zext i1 %4583 to i8
  store i8 %4584, i8* %14, align 1
  %4585 = trunc i64 %4580 to i32
  %4586 = and i32 %4585, 255
  %4587 = tail call i32 @llvm.ctpop.i32(i32 %4586)
  %4588 = trunc i32 %4587 to i8
  %4589 = and i8 %4588, 1
  %4590 = xor i8 %4589, 1
  store i8 %4590, i8* %21, align 1
  %4591 = xor i64 %4577, %4579
  %4592 = xor i64 %4591, %4580
  %4593 = lshr i64 %4592, 4
  %4594 = trunc i64 %4593 to i8
  %4595 = and i8 %4594, 1
  store i8 %4595, i8* %27, align 1
  %4596 = icmp eq i64 %4580, 0
  %4597 = zext i1 %4596 to i8
  store i8 %4597, i8* %30, align 1
  %4598 = lshr i64 %4580, 63
  %4599 = trunc i64 %4598 to i8
  store i8 %4599, i8* %33, align 1
  %4600 = lshr i64 %4579, 63
  %4601 = xor i64 %4598, %4600
  %4602 = xor i64 %4598, %4578
  %4603 = add nuw nsw i64 %4601, %4602
  %4604 = icmp eq i64 %4603, 2
  %4605 = zext i1 %4604 to i8
  store i8 %4605, i8* %39, align 1
  %4606 = add i64 %4580, 12
  %4607 = add i64 %4510, 51
  store i64 %4607, i64* %3, align 8
  %4608 = inttoptr i64 %4606 to i32*
  %4609 = load i32, i32* %4608, align 4
  %4610 = sext i32 %4609 to i64
  store i64 %4610, i64* %RAX.i1746, align 8
  %4611 = load i64, i64* %RSI.i1599, align 8
  %4612 = shl nsw i64 %4610, 2
  %4613 = add i64 %4611, 16
  %4614 = add i64 %4613, %4612
  %4615 = load i32, i32* %ECX.i1726, align 4
  %4616 = add i64 %4510, 55
  store i64 %4616, i64* %3, align 8
  %4617 = inttoptr i64 %4614 to i32*
  store i32 %4615, i32* %4617, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_40cb47

block_.L_40cb47:                                  ; preds = %block_40cae9, %block_40cb10
  %4618 = phi i64 [ %4510, %block_40cae9 ], [ %.pre51, %block_40cb10 ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %4619 = load i64, i64* %RBP.i, align 8
  %4620 = add i64 %4619, -8
  %4621 = add i64 %4618, 14
  store i64 %4621, i64* %3, align 8
  %4622 = inttoptr i64 %4620 to i32*
  %4623 = load i32, i32* %4622, align 4
  %4624 = sext i32 %4623 to i64
  %4625 = mul nsw i64 %4624, 744
  store i64 %4625, i64* %RCX.i1744, align 8
  %4626 = lshr i64 %4625, 63
  %4627 = add i64 %4625, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4627, i64* %RAX.i1746, align 8
  %4628 = icmp ult i64 %4627, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4629 = icmp ult i64 %4627, %4625
  %4630 = or i1 %4628, %4629
  %4631 = zext i1 %4630 to i8
  store i8 %4631, i8* %14, align 1
  %4632 = trunc i64 %4627 to i32
  %4633 = and i32 %4632, 248
  %4634 = tail call i32 @llvm.ctpop.i32(i32 %4633)
  %4635 = trunc i32 %4634 to i8
  %4636 = and i8 %4635, 1
  %4637 = xor i8 %4636, 1
  store i8 %4637, i8* %21, align 1
  %4638 = xor i64 %4625, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4639 = xor i64 %4638, %4627
  %4640 = lshr i64 %4639, 4
  %4641 = trunc i64 %4640 to i8
  %4642 = and i8 %4641, 1
  store i8 %4642, i8* %27, align 1
  %4643 = icmp eq i64 %4627, 0
  %4644 = zext i1 %4643 to i8
  store i8 %4644, i8* %30, align 1
  %4645 = lshr i64 %4627, 63
  %4646 = trunc i64 %4645 to i8
  store i8 %4646, i8* %33, align 1
  %4647 = xor i64 %4645, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4648 = xor i64 %4645, %4626
  %4649 = add nuw nsw i64 %4647, %4648
  %4650 = icmp eq i64 %4649, 2
  %4651 = zext i1 %4650 to i8
  store i8 %4651, i8* %39, align 1
  %4652 = add i64 %4625, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %4653 = add i64 %4618, 27
  store i64 %4653, i64* %3, align 8
  %4654 = inttoptr i64 %4652 to i32*
  %4655 = load i32, i32* %4654, align 4
  %4656 = add i32 %4655, 1
  %4657 = zext i32 %4656 to i64
  store i64 %4657, i64* %RDX.i1738, align 8
  %4658 = icmp eq i32 %4655, -1
  %4659 = icmp eq i32 %4656, 0
  %4660 = or i1 %4658, %4659
  %4661 = zext i1 %4660 to i8
  store i8 %4661, i8* %14, align 1
  %4662 = and i32 %4656, 255
  %4663 = tail call i32 @llvm.ctpop.i32(i32 %4662)
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  %4666 = xor i8 %4665, 1
  store i8 %4666, i8* %21, align 1
  %4667 = xor i32 %4656, %4655
  %4668 = lshr i32 %4667, 4
  %4669 = trunc i32 %4668 to i8
  %4670 = and i8 %4669, 1
  store i8 %4670, i8* %27, align 1
  %4671 = zext i1 %4659 to i8
  store i8 %4671, i8* %30, align 1
  %4672 = lshr i32 %4656, 31
  %4673 = trunc i32 %4672 to i8
  store i8 %4673, i8* %33, align 1
  %4674 = lshr i32 %4655, 31
  %4675 = xor i32 %4672, %4674
  %4676 = add nuw nsw i32 %4675, %4672
  %4677 = icmp eq i32 %4676, 2
  %4678 = zext i1 %4677 to i8
  store i8 %4678, i8* %39, align 1
  %4679 = add i64 %4618, 33
  store i64 %4679, i64* %3, align 8
  store i32 %4656, i32* %4654, align 4
  %4680 = load i64, i64* %3, align 8
  %4681 = add i64 %4680, 480
  br label %block_.L_40cd48

block_.L_40cb6d:                                  ; preds = %block_.L_40cab2, %block_40cacc
  %4682 = phi i64 [ %4449, %block_40cacc ], [ %4391, %block_.L_40cab2 ]
  %4683 = add i64 %4682, 3
  store i64 %4683, i64* %3, align 8
  %4684 = load i32, i32* %4353, align 4
  %4685 = add i32 %4684, 1
  %4686 = zext i32 %4685 to i64
  store i64 %4686, i64* %RAX.i1746, align 8
  %4687 = icmp eq i32 %4684, -1
  %4688 = icmp eq i32 %4685, 0
  %4689 = or i1 %4687, %4688
  %4690 = zext i1 %4689 to i8
  store i8 %4690, i8* %14, align 1
  %4691 = and i32 %4685, 255
  %4692 = tail call i32 @llvm.ctpop.i32(i32 %4691)
  %4693 = trunc i32 %4692 to i8
  %4694 = and i8 %4693, 1
  %4695 = xor i8 %4694, 1
  store i8 %4695, i8* %21, align 1
  %4696 = xor i32 %4685, %4684
  %4697 = lshr i32 %4696, 4
  %4698 = trunc i32 %4697 to i8
  %4699 = and i8 %4698, 1
  store i8 %4699, i8* %27, align 1
  %4700 = zext i1 %4688 to i8
  store i8 %4700, i8* %30, align 1
  %4701 = lshr i32 %4685, 31
  %4702 = trunc i32 %4701 to i8
  store i8 %4702, i8* %33, align 1
  %4703 = lshr i32 %4684, 31
  %4704 = xor i32 %4701, %4703
  %4705 = add nuw nsw i32 %4704, %4701
  %4706 = icmp eq i32 %4705, 2
  %4707 = zext i1 %4706 to i8
  store i8 %4707, i8* %39, align 1
  %4708 = sext i32 %4685 to i64
  store i64 %4708, i64* %RCX.i1744, align 8
  %4709 = add nsw i64 %4708, 12099168
  %4710 = add i64 %4682, 17
  store i64 %4710, i64* %3, align 8
  %4711 = inttoptr i64 %4709 to i8*
  %4712 = load i8, i8* %4711, align 1
  %4713 = zext i8 %4712 to i64
  store i64 %4713, i64* %RAX.i1746, align 8
  %4714 = zext i8 %4712 to i32
  %4715 = add i64 %4350, -16
  %4716 = add i64 %4682, 20
  store i64 %4716, i64* %3, align 8
  %4717 = inttoptr i64 %4715 to i32*
  %4718 = load i32, i32* %4717, align 4
  %4719 = sub i32 %4714, %4718
  %4720 = icmp ult i32 %4714, %4718
  %4721 = zext i1 %4720 to i8
  store i8 %4721, i8* %14, align 1
  %4722 = and i32 %4719, 255
  %4723 = tail call i32 @llvm.ctpop.i32(i32 %4722)
  %4724 = trunc i32 %4723 to i8
  %4725 = and i8 %4724, 1
  %4726 = xor i8 %4725, 1
  store i8 %4726, i8* %21, align 1
  %4727 = xor i32 %4718, %4714
  %4728 = xor i32 %4727, %4719
  %4729 = lshr i32 %4728, 4
  %4730 = trunc i32 %4729 to i8
  %4731 = and i8 %4730, 1
  store i8 %4731, i8* %27, align 1
  %4732 = icmp eq i32 %4719, 0
  %4733 = zext i1 %4732 to i8
  store i8 %4733, i8* %30, align 1
  %4734 = lshr i32 %4719, 31
  %4735 = trunc i32 %4734 to i8
  store i8 %4735, i8* %33, align 1
  %4736 = lshr i32 %4718, 31
  %4737 = add nuw nsw i32 %4734, %4736
  %4738 = icmp eq i32 %4737, 2
  %4739 = zext i1 %4738 to i8
  store i8 %4739, i8* %39, align 1
  %.v65 = select i1 %4732, i64 26, i64 367
  %4740 = add i64 %4682, %.v65
  store i64 %4740, i64* %3, align 8
  br i1 %4732, label %block_40cb87, label %block_.L_40ccdc

block_40cb87:                                     ; preds = %block_.L_40cb6d
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %4741 = add i64 %4740, 13
  store i64 %4741, i64* %3, align 8
  %4742 = load i32, i32* %4353, align 4
  %4743 = add i32 %4742, 1
  %4744 = zext i32 %4743 to i64
  store i64 %4744, i64* %RCX.i1744, align 8
  %4745 = icmp eq i32 %4742, -1
  %4746 = icmp eq i32 %4743, 0
  %4747 = or i1 %4745, %4746
  %4748 = zext i1 %4747 to i8
  store i8 %4748, i8* %14, align 1
  %4749 = and i32 %4743, 255
  %4750 = tail call i32 @llvm.ctpop.i32(i32 %4749)
  %4751 = trunc i32 %4750 to i8
  %4752 = and i8 %4751, 1
  %4753 = xor i8 %4752, 1
  store i8 %4753, i8* %21, align 1
  %4754 = xor i32 %4743, %4742
  %4755 = lshr i32 %4754, 4
  %4756 = trunc i32 %4755 to i8
  %4757 = and i8 %4756, 1
  store i8 %4757, i8* %27, align 1
  %4758 = zext i1 %4746 to i8
  store i8 %4758, i8* %30, align 1
  %4759 = lshr i32 %4743, 31
  %4760 = trunc i32 %4759 to i8
  store i8 %4760, i8* %33, align 1
  %4761 = lshr i32 %4742, 31
  %4762 = xor i32 %4759, %4761
  %4763 = add nuw nsw i32 %4762, %4759
  %4764 = icmp eq i32 %4763, 2
  %4765 = zext i1 %4764 to i8
  store i8 %4765, i8* %39, align 1
  %4766 = sext i32 %4743 to i64
  store i64 %4766, i64* %RDX.i1738, align 8
  %4767 = shl nsw i64 %4766, 2
  %4768 = add nsw i64 %4767, 11187184
  %4769 = add i64 %4740, 27
  store i64 %4769, i64* %3, align 8
  %4770 = inttoptr i64 %4768 to i32*
  %4771 = load i32, i32* %4770, align 4
  %4772 = sext i32 %4771 to i64
  %4773 = mul nsw i64 %4772, 744
  store i64 %4773, i64* %RDX.i1738, align 8
  %4774 = lshr i64 %4773, 63
  %4775 = add i64 %4773, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4775, i64* %RAX.i1746, align 8
  %4776 = icmp ult i64 %4775, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4777 = icmp ult i64 %4775, %4773
  %4778 = or i1 %4776, %4777
  %4779 = zext i1 %4778 to i8
  store i8 %4779, i8* %14, align 1
  %4780 = trunc i64 %4775 to i32
  %4781 = and i32 %4780, 248
  %4782 = tail call i32 @llvm.ctpop.i32(i32 %4781)
  %4783 = trunc i32 %4782 to i8
  %4784 = and i8 %4783, 1
  %4785 = xor i8 %4784, 1
  store i8 %4785, i8* %21, align 1
  %4786 = xor i64 %4773, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4787 = xor i64 %4786, %4775
  %4788 = lshr i64 %4787, 4
  %4789 = trunc i64 %4788 to i8
  %4790 = and i8 %4789, 1
  store i8 %4790, i8* %27, align 1
  %4791 = icmp eq i64 %4775, 0
  %4792 = zext i1 %4791 to i8
  store i8 %4792, i8* %30, align 1
  %4793 = lshr i64 %4775, 63
  %4794 = trunc i64 %4793 to i8
  store i8 %4794, i8* %33, align 1
  %4795 = xor i64 %4793, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4796 = xor i64 %4793, %4774
  %4797 = add nuw nsw i64 %4795, %4796
  %4798 = icmp eq i64 %4797, 2
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %39, align 1
  %4800 = add i64 %4773, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %4801 = add i64 %4740, 43
  store i64 %4801, i64* %3, align 8
  %4802 = inttoptr i64 %4800 to i32*
  %4803 = load i32, i32* %4802, align 4
  %4804 = zext i32 %4803 to i64
  store i64 %4804, i64* %RCX.i1744, align 8
  %4805 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %4806 = sub i32 %4803, %4805
  %4807 = icmp ult i32 %4803, %4805
  %4808 = zext i1 %4807 to i8
  store i8 %4808, i8* %14, align 1
  %4809 = and i32 %4806, 255
  %4810 = tail call i32 @llvm.ctpop.i32(i32 %4809)
  %4811 = trunc i32 %4810 to i8
  %4812 = and i8 %4811, 1
  %4813 = xor i8 %4812, 1
  store i8 %4813, i8* %21, align 1
  %4814 = xor i32 %4805, %4803
  %4815 = xor i32 %4814, %4806
  %4816 = lshr i32 %4815, 4
  %4817 = trunc i32 %4816 to i8
  %4818 = and i8 %4817, 1
  store i8 %4818, i8* %27, align 1
  %4819 = icmp eq i32 %4806, 0
  %4820 = zext i1 %4819 to i8
  store i8 %4820, i8* %30, align 1
  %4821 = lshr i32 %4806, 31
  %4822 = trunc i32 %4821 to i8
  store i8 %4822, i8* %33, align 1
  %4823 = lshr i32 %4803, 31
  %4824 = lshr i32 %4805, 31
  %4825 = xor i32 %4824, %4823
  %4826 = xor i32 %4821, %4823
  %4827 = add nuw nsw i32 %4826, %4825
  %4828 = icmp eq i32 %4827, 2
  %4829 = zext i1 %4828 to i8
  store i8 %4829, i8* %39, align 1
  %.v68 = select i1 %4819, i64 341, i64 56
  %4830 = add i64 %4740, %.v68
  store i64 %4830, i64* %3, align 8
  br i1 %4819, label %block_40cb87.block_.L_40ccdc_crit_edge, label %block_40cbbf

block_40cb87.block_.L_40ccdc_crit_edge:           ; preds = %block_40cb87
  %.pre52 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40ccdc

block_40cbbf:                                     ; preds = %block_40cb87
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %4831 = load i64, i64* %RBP.i, align 8
  %4832 = add i64 %4831, -4
  %4833 = add i64 %4830, 13
  store i64 %4833, i64* %3, align 8
  %4834 = inttoptr i64 %4832 to i32*
  %4835 = load i32, i32* %4834, align 4
  %4836 = add i32 %4835, 1
  %4837 = zext i32 %4836 to i64
  store i64 %4837, i64* %RCX.i1744, align 8
  %4838 = icmp eq i32 %4835, -1
  %4839 = icmp eq i32 %4836, 0
  %4840 = or i1 %4838, %4839
  %4841 = zext i1 %4840 to i8
  store i8 %4841, i8* %14, align 1
  %4842 = and i32 %4836, 255
  %4843 = tail call i32 @llvm.ctpop.i32(i32 %4842)
  %4844 = trunc i32 %4843 to i8
  %4845 = and i8 %4844, 1
  %4846 = xor i8 %4845, 1
  store i8 %4846, i8* %21, align 1
  %4847 = xor i32 %4836, %4835
  %4848 = lshr i32 %4847, 4
  %4849 = trunc i32 %4848 to i8
  %4850 = and i8 %4849, 1
  store i8 %4850, i8* %27, align 1
  %4851 = zext i1 %4839 to i8
  store i8 %4851, i8* %30, align 1
  %4852 = lshr i32 %4836, 31
  %4853 = trunc i32 %4852 to i8
  store i8 %4853, i8* %33, align 1
  %4854 = lshr i32 %4835, 31
  %4855 = xor i32 %4852, %4854
  %4856 = add nuw nsw i32 %4855, %4852
  %4857 = icmp eq i32 %4856, 2
  %4858 = zext i1 %4857 to i8
  store i8 %4858, i8* %39, align 1
  %4859 = sext i32 %4836 to i64
  store i64 %4859, i64* %RDX.i1738, align 8
  %4860 = shl nsw i64 %4859, 2
  %4861 = add nsw i64 %4860, 11187184
  %4862 = add i64 %4830, 26
  store i64 %4862, i64* %3, align 8
  %4863 = inttoptr i64 %4861 to i32*
  %4864 = load i32, i32* %4863, align 4
  %4865 = zext i32 %4864 to i64
  store i64 %4865, i64* %RCX.i1744, align 8
  %4866 = add i64 %4831, -8
  %4867 = add i64 %4830, 30
  store i64 %4867, i64* %3, align 8
  %4868 = inttoptr i64 %4866 to i32*
  %4869 = load i32, i32* %4868, align 4
  %4870 = sext i32 %4869 to i64
  %4871 = mul nsw i64 %4870, 744
  store i64 %4871, i64* %RDX.i1738, align 8
  %4872 = lshr i64 %4871, 63
  %4873 = add i64 %4871, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4873, i64* %RSI.i1599, align 8
  %4874 = icmp ult i64 %4873, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4875 = icmp ult i64 %4873, %4871
  %4876 = or i1 %4874, %4875
  %4877 = zext i1 %4876 to i8
  store i8 %4877, i8* %14, align 1
  %4878 = trunc i64 %4873 to i32
  %4879 = and i32 %4878, 248
  %4880 = tail call i32 @llvm.ctpop.i32(i32 %4879)
  %4881 = trunc i32 %4880 to i8
  %4882 = and i8 %4881, 1
  %4883 = xor i8 %4882, 1
  store i8 %4883, i8* %21, align 1
  %4884 = xor i64 %4871, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4885 = xor i64 %4884, %4873
  %4886 = lshr i64 %4885, 4
  %4887 = trunc i64 %4886 to i8
  %4888 = and i8 %4887, 1
  store i8 %4888, i8* %27, align 1
  %4889 = icmp eq i64 %4873, 0
  %4890 = zext i1 %4889 to i8
  store i8 %4890, i8* %30, align 1
  %4891 = lshr i64 %4873, 63
  %4892 = trunc i64 %4891 to i8
  store i8 %4892, i8* %33, align 1
  %4893 = xor i64 %4891, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4894 = xor i64 %4891, %4872
  %4895 = add nuw nsw i64 %4893, %4894
  %4896 = icmp eq i64 %4895, 2
  %4897 = zext i1 %4896 to i8
  store i8 %4897, i8* %39, align 1
  %4898 = load i64, i64* %RBP.i, align 8
  %4899 = add i64 %4898, -8
  %4900 = add i64 %4830, 47
  store i64 %4900, i64* %3, align 8
  %4901 = inttoptr i64 %4899 to i32*
  %4902 = load i32, i32* %4901, align 4
  %4903 = sext i32 %4902 to i64
  %4904 = mul nsw i64 %4903, 744
  store i64 %4904, i64* %RDX.i1738, align 8
  %4905 = lshr i64 %4904, 63
  %4906 = load i64, i64* %RAX.i1746, align 8
  %4907 = add i64 %4904, %4906
  store i64 %4907, i64* %RDI.i1736, align 8
  %4908 = icmp ult i64 %4907, %4906
  %4909 = icmp ult i64 %4907, %4904
  %4910 = or i1 %4908, %4909
  %4911 = zext i1 %4910 to i8
  store i8 %4911, i8* %14, align 1
  %4912 = trunc i64 %4907 to i32
  %4913 = and i32 %4912, 255
  %4914 = tail call i32 @llvm.ctpop.i32(i32 %4913)
  %4915 = trunc i32 %4914 to i8
  %4916 = and i8 %4915, 1
  %4917 = xor i8 %4916, 1
  store i8 %4917, i8* %21, align 1
  %4918 = xor i64 %4904, %4906
  %4919 = xor i64 %4918, %4907
  %4920 = lshr i64 %4919, 4
  %4921 = trunc i64 %4920 to i8
  %4922 = and i8 %4921, 1
  store i8 %4922, i8* %27, align 1
  %4923 = icmp eq i64 %4907, 0
  %4924 = zext i1 %4923 to i8
  store i8 %4924, i8* %30, align 1
  %4925 = lshr i64 %4907, 63
  %4926 = trunc i64 %4925 to i8
  store i8 %4926, i8* %33, align 1
  %4927 = lshr i64 %4906, 63
  %4928 = xor i64 %4925, %4927
  %4929 = xor i64 %4925, %4905
  %4930 = add nuw nsw i64 %4928, %4929
  %4931 = icmp eq i64 %4930, 2
  %4932 = zext i1 %4931 to i8
  store i8 %4932, i8* %39, align 1
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i180 = bitcast %union.anon* %4933 to i32*
  %4934 = getelementptr inbounds %union.anon, %union.anon* %4933, i64 0, i32 0
  %4935 = add i64 %4907, 96
  %4936 = add i64 %4830, 64
  store i64 %4936, i64* %3, align 8
  %4937 = inttoptr i64 %4935 to i32*
  %4938 = load i32, i32* %4937, align 4
  %4939 = zext i32 %4938 to i64
  store i64 %4939, i64* %4934, align 8
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4941 = add i32 %4938, 1
  %4942 = zext i32 %4941 to i64
  store i64 %4942, i64* %4940, align 8
  %4943 = icmp eq i32 %4938, -1
  %4944 = icmp eq i32 %4941, 0
  %4945 = or i1 %4943, %4944
  %4946 = zext i1 %4945 to i8
  store i8 %4946, i8* %14, align 1
  %4947 = and i32 %4941, 255
  %4948 = tail call i32 @llvm.ctpop.i32(i32 %4947)
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  %4951 = xor i8 %4950, 1
  store i8 %4951, i8* %21, align 1
  %4952 = xor i32 %4941, %4938
  %4953 = lshr i32 %4952, 4
  %4954 = trunc i32 %4953 to i8
  %4955 = and i8 %4954, 1
  store i8 %4955, i8* %27, align 1
  %4956 = zext i1 %4944 to i8
  store i8 %4956, i8* %30, align 1
  %4957 = lshr i32 %4941, 31
  %4958 = trunc i32 %4957 to i8
  store i8 %4958, i8* %33, align 1
  %4959 = lshr i32 %4938, 31
  %4960 = xor i32 %4957, %4959
  %4961 = add nuw nsw i32 %4960, %4957
  %4962 = icmp eq i32 %4961, 2
  %4963 = zext i1 %4962 to i8
  store i8 %4963, i8* %39, align 1
  %4964 = add i64 %4830, 75
  store i64 %4964, i64* %3, align 8
  store i32 %4941, i32* %4937, align 4
  %4965 = load i32, i32* %R8D.i180, align 4
  %4966 = load i64, i64* %3, align 8
  %4967 = sext i32 %4965 to i64
  store i64 %4967, i64* %RDX.i1738, align 8
  %4968 = load i64, i64* %RSI.i1599, align 8
  %4969 = shl nsw i64 %4967, 2
  %4970 = add nsw i64 %4969, 100
  %4971 = add i64 %4970, %4968
  %4972 = load i32, i32* %ECX.i1726, align 4
  %4973 = add i64 %4966, 7
  store i64 %4973, i64* %3, align 8
  %4974 = inttoptr i64 %4971 to i32*
  store i32 %4972, i32* %4974, align 4
  %4975 = load i64, i64* %RBP.i, align 8
  %4976 = add i64 %4975, -4
  %4977 = load i64, i64* %3, align 8
  %4978 = add i64 %4977, 3
  store i64 %4978, i64* %3, align 8
  %4979 = inttoptr i64 %4976 to i32*
  %4980 = load i32, i32* %4979, align 4
  %4981 = add i32 %4980, 1
  %4982 = zext i32 %4981 to i64
  store i64 %4982, i64* %RCX.i1744, align 8
  %4983 = icmp eq i32 %4980, -1
  %4984 = icmp eq i32 %4981, 0
  %4985 = or i1 %4983, %4984
  %4986 = zext i1 %4985 to i8
  store i8 %4986, i8* %14, align 1
  %4987 = and i32 %4981, 255
  %4988 = tail call i32 @llvm.ctpop.i32(i32 %4987)
  %4989 = trunc i32 %4988 to i8
  %4990 = and i8 %4989, 1
  %4991 = xor i8 %4990, 1
  store i8 %4991, i8* %21, align 1
  %4992 = xor i32 %4981, %4980
  %4993 = lshr i32 %4992, 4
  %4994 = trunc i32 %4993 to i8
  %4995 = and i8 %4994, 1
  store i8 %4995, i8* %27, align 1
  %4996 = zext i1 %4984 to i8
  store i8 %4996, i8* %30, align 1
  %4997 = lshr i32 %4981, 31
  %4998 = trunc i32 %4997 to i8
  store i8 %4998, i8* %33, align 1
  %4999 = lshr i32 %4980, 31
  %5000 = xor i32 %4997, %4999
  %5001 = add nuw nsw i32 %5000, %4997
  %5002 = icmp eq i32 %5001, 2
  %5003 = zext i1 %5002 to i8
  store i8 %5003, i8* %39, align 1
  %5004 = sext i32 %4981 to i64
  store i64 %5004, i64* %RDX.i1738, align 8
  %5005 = shl nsw i64 %5004, 2
  %5006 = add nsw i64 %5005, 11187184
  %5007 = add i64 %4977, 17
  store i64 %5007, i64* %3, align 8
  %5008 = inttoptr i64 %5006 to i32*
  %5009 = load i32, i32* %5008, align 4
  %5010 = sext i32 %5009 to i64
  %5011 = mul nsw i64 %5010, 744
  %5012 = load i64, i64* %RAX.i1746, align 8
  %5013 = add i64 %5011, %5012
  %5014 = lshr i64 %5013, 63
  %5015 = add i64 %5013, 96
  store i64 %5015, i64* %RSI.i1599, align 8
  %5016 = icmp ugt i64 %5013, -97
  %5017 = zext i1 %5016 to i8
  store i8 %5017, i8* %14, align 1
  %5018 = trunc i64 %5015 to i32
  %5019 = and i32 %5018, 255
  %5020 = tail call i32 @llvm.ctpop.i32(i32 %5019)
  %5021 = trunc i32 %5020 to i8
  %5022 = and i8 %5021, 1
  %5023 = xor i8 %5022, 1
  store i8 %5023, i8* %21, align 1
  %5024 = xor i64 %5015, %5013
  %5025 = lshr i64 %5024, 4
  %5026 = trunc i64 %5025 to i8
  %5027 = and i8 %5026, 1
  store i8 %5027, i8* %27, align 1
  %5028 = icmp eq i64 %5015, 0
  %5029 = zext i1 %5028 to i8
  store i8 %5029, i8* %30, align 1
  %5030 = lshr i64 %5015, 63
  %5031 = trunc i64 %5030 to i8
  store i8 %5031, i8* %33, align 1
  %5032 = xor i64 %5030, %5014
  %5033 = add nuw nsw i64 %5032, %5030
  %5034 = icmp eq i64 %5033, 2
  %5035 = zext i1 %5034 to i8
  store i8 %5035, i8* %39, align 1
  %5036 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %5036, i64* %RDX.i1738, align 8
  %5037 = add i64 %4977, 45
  store i64 %5037, i64* %3, align 8
  %5038 = inttoptr i64 %5036 to i64*
  store i64 %5015, i64* %5038, align 8
  %5039 = load i64, i64* %RBP.i, align 8
  %5040 = add i64 %5039, -4
  %5041 = load i64, i64* %3, align 8
  %5042 = add i64 %5041, 3
  store i64 %5042, i64* %3, align 8
  %5043 = inttoptr i64 %5040 to i32*
  %5044 = load i32, i32* %5043, align 4
  %5045 = add i32 %5044, 1
  %5046 = zext i32 %5045 to i64
  store i64 %5046, i64* %RCX.i1744, align 8
  %5047 = icmp eq i32 %5044, -1
  %5048 = icmp eq i32 %5045, 0
  %5049 = or i1 %5047, %5048
  %5050 = zext i1 %5049 to i8
  store i8 %5050, i8* %14, align 1
  %5051 = and i32 %5045, 255
  %5052 = tail call i32 @llvm.ctpop.i32(i32 %5051)
  %5053 = trunc i32 %5052 to i8
  %5054 = and i8 %5053, 1
  %5055 = xor i8 %5054, 1
  store i8 %5055, i8* %21, align 1
  %5056 = xor i32 %5045, %5044
  %5057 = lshr i32 %5056, 4
  %5058 = trunc i32 %5057 to i8
  %5059 = and i8 %5058, 1
  store i8 %5059, i8* %27, align 1
  %5060 = zext i1 %5048 to i8
  store i8 %5060, i8* %30, align 1
  %5061 = lshr i32 %5045, 31
  %5062 = trunc i32 %5061 to i8
  store i8 %5062, i8* %33, align 1
  %5063 = lshr i32 %5044, 31
  %5064 = xor i32 %5061, %5063
  %5065 = add nuw nsw i32 %5064, %5061
  %5066 = icmp eq i32 %5065, 2
  %5067 = zext i1 %5066 to i8
  store i8 %5067, i8* %39, align 1
  %5068 = sext i32 %5045 to i64
  store i64 %5068, i64* %RDX.i1738, align 8
  %5069 = shl nsw i64 %5068, 2
  %5070 = add nsw i64 %5069, 11187184
  %5071 = add i64 %5041, 17
  store i64 %5071, i64* %3, align 8
  %5072 = inttoptr i64 %5070 to i32*
  %5073 = load i32, i32* %5072, align 4
  %5074 = sext i32 %5073 to i64
  %5075 = mul nsw i64 %5074, 744
  store i64 %5075, i64* %RDX.i1738, align 8
  %5076 = lshr i64 %5075, 63
  %5077 = load i64, i64* %RAX.i1746, align 8
  %5078 = add i64 %5075, %5077
  store i64 %5078, i64* %RSI.i1599, align 8
  %5079 = icmp ult i64 %5078, %5077
  %5080 = icmp ult i64 %5078, %5075
  %5081 = or i1 %5079, %5080
  %5082 = zext i1 %5081 to i8
  store i8 %5082, i8* %14, align 1
  %5083 = trunc i64 %5078 to i32
  %5084 = and i32 %5083, 255
  %5085 = tail call i32 @llvm.ctpop.i32(i32 %5084)
  %5086 = trunc i32 %5085 to i8
  %5087 = and i8 %5086, 1
  %5088 = xor i8 %5087, 1
  store i8 %5088, i8* %21, align 1
  %5089 = xor i64 %5075, %5077
  %5090 = xor i64 %5089, %5078
  %5091 = lshr i64 %5090, 4
  %5092 = trunc i64 %5091 to i8
  %5093 = and i8 %5092, 1
  store i8 %5093, i8* %27, align 1
  %5094 = icmp eq i64 %5078, 0
  %5095 = zext i1 %5094 to i8
  store i8 %5095, i8* %30, align 1
  %5096 = lshr i64 %5078, 63
  %5097 = trunc i64 %5096 to i8
  store i8 %5097, i8* %33, align 1
  %5098 = lshr i64 %5077, 63
  %5099 = xor i64 %5096, %5098
  %5100 = xor i64 %5096, %5076
  %5101 = add nuw nsw i64 %5099, %5100
  %5102 = icmp eq i64 %5101, 2
  %5103 = zext i1 %5102 to i8
  store i8 %5103, i8* %39, align 1
  %5104 = add i64 %5078, 96
  %5105 = add i64 %5041, 33
  store i64 %5105, i64* %3, align 8
  %5106 = inttoptr i64 %5104 to i32*
  %5107 = load i32, i32* %5106, align 4
  %5108 = zext i32 %5107 to i64
  store i64 %5108, i64* %RCX.i1744, align 8
  %5109 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %5109, i64* %RDX.i1738, align 8
  %5110 = add i64 %5109, 16
  store i64 %5110, i64* %RSI.i1599, align 8
  %5111 = icmp ugt i64 %5109, -17
  %5112 = zext i1 %5111 to i8
  store i8 %5112, i8* %14, align 1
  %5113 = trunc i64 %5110 to i32
  %5114 = and i32 %5113, 255
  %5115 = tail call i32 @llvm.ctpop.i32(i32 %5114)
  %5116 = trunc i32 %5115 to i8
  %5117 = and i8 %5116, 1
  %5118 = xor i8 %5117, 1
  store i8 %5118, i8* %21, align 1
  %5119 = xor i64 %5109, 16
  %5120 = xor i64 %5119, %5110
  %5121 = lshr i64 %5120, 4
  %5122 = trunc i64 %5121 to i8
  %5123 = and i8 %5122, 1
  store i8 %5123, i8* %27, align 1
  %5124 = icmp eq i64 %5110, 0
  %5125 = zext i1 %5124 to i8
  store i8 %5125, i8* %30, align 1
  %5126 = lshr i64 %5110, 63
  %5127 = trunc i64 %5126 to i8
  store i8 %5127, i8* %33, align 1
  %5128 = lshr i64 %5109, 63
  %5129 = xor i64 %5126, %5128
  %5130 = add nuw nsw i64 %5129, %5126
  %5131 = icmp eq i64 %5130, 2
  %5132 = zext i1 %5131 to i8
  store i8 %5132, i8* %39, align 1
  store i64 %5110, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  %5133 = add i64 %5109, 8
  %5134 = add i64 %5041, 59
  store i64 %5134, i64* %3, align 8
  %5135 = inttoptr i64 %5133 to i32*
  store i32 %5107, i32* %5135, align 4
  %5136 = load i64, i64* %RBP.i, align 8
  %5137 = add i64 %5136, -4
  %5138 = load i64, i64* %3, align 8
  %5139 = add i64 %5138, 4
  store i64 %5139, i64* %3, align 8
  %5140 = inttoptr i64 %5137 to i32*
  %5141 = load i32, i32* %5140, align 4
  %5142 = sext i32 %5141 to i64
  store i64 %5142, i64* %RDX.i1738, align 8
  %5143 = shl nsw i64 %5142, 2
  %5144 = add nsw i64 %5143, 11187184
  %5145 = add i64 %5138, 11
  store i64 %5145, i64* %3, align 8
  %5146 = inttoptr i64 %5144 to i32*
  %5147 = load i32, i32* %5146, align 4
  %5148 = zext i32 %5147 to i64
  store i64 %5148, i64* %RCX.i1744, align 8
  %5149 = add i64 %5138, 15
  store i64 %5149, i64* %3, align 8
  %5150 = load i32, i32* %5140, align 4
  %5151 = add i32 %5150, 1
  %5152 = zext i32 %5151 to i64
  store i64 %5152, i64* %4934, align 8
  %5153 = icmp eq i32 %5150, -1
  %5154 = icmp eq i32 %5151, 0
  %5155 = or i1 %5153, %5154
  %5156 = zext i1 %5155 to i8
  store i8 %5156, i8* %14, align 1
  %5157 = and i32 %5151, 255
  %5158 = tail call i32 @llvm.ctpop.i32(i32 %5157)
  %5159 = trunc i32 %5158 to i8
  %5160 = and i8 %5159, 1
  %5161 = xor i8 %5160, 1
  store i8 %5161, i8* %21, align 1
  %5162 = xor i32 %5151, %5150
  %5163 = lshr i32 %5162, 4
  %5164 = trunc i32 %5163 to i8
  %5165 = and i8 %5164, 1
  store i8 %5165, i8* %27, align 1
  %5166 = zext i1 %5154 to i8
  store i8 %5166, i8* %30, align 1
  %5167 = lshr i32 %5151, 31
  %5168 = trunc i32 %5167 to i8
  store i8 %5168, i8* %33, align 1
  %5169 = lshr i32 %5150, 31
  %5170 = xor i32 %5167, %5169
  %5171 = add nuw nsw i32 %5170, %5167
  %5172 = icmp eq i32 %5171, 2
  %5173 = zext i1 %5172 to i8
  store i8 %5173, i8* %39, align 1
  %5174 = sext i32 %5151 to i64
  store i64 %5174, i64* %RDX.i1738, align 8
  %5175 = shl nsw i64 %5174, 2
  %5176 = add nsw i64 %5175, 11187184
  %5177 = add i64 %5138, 30
  store i64 %5177, i64* %3, align 8
  %5178 = inttoptr i64 %5176 to i32*
  %5179 = load i32, i32* %5178, align 4
  %5180 = sext i32 %5179 to i64
  %5181 = mul nsw i64 %5180, 744
  store i64 %5181, i64* %RDX.i1738, align 8
  %5182 = lshr i64 %5181, 63
  %5183 = load i64, i64* %RAX.i1746, align 8
  %5184 = add i64 %5181, %5183
  store i64 %5184, i64* %RSI.i1599, align 8
  %5185 = icmp ult i64 %5184, %5183
  %5186 = icmp ult i64 %5184, %5181
  %5187 = or i1 %5185, %5186
  %5188 = zext i1 %5187 to i8
  store i8 %5188, i8* %14, align 1
  %5189 = trunc i64 %5184 to i32
  %5190 = and i32 %5189, 255
  %5191 = tail call i32 @llvm.ctpop.i32(i32 %5190)
  %5192 = trunc i32 %5191 to i8
  %5193 = and i8 %5192, 1
  %5194 = xor i8 %5193, 1
  store i8 %5194, i8* %21, align 1
  %5195 = xor i64 %5181, %5183
  %5196 = xor i64 %5195, %5184
  %5197 = lshr i64 %5196, 4
  %5198 = trunc i64 %5197 to i8
  %5199 = and i8 %5198, 1
  store i8 %5199, i8* %27, align 1
  %5200 = icmp eq i64 %5184, 0
  %5201 = zext i1 %5200 to i8
  store i8 %5201, i8* %30, align 1
  %5202 = lshr i64 %5184, 63
  %5203 = trunc i64 %5202 to i8
  store i8 %5203, i8* %33, align 1
  %5204 = lshr i64 %5183, 63
  %5205 = xor i64 %5202, %5204
  %5206 = xor i64 %5202, %5182
  %5207 = add nuw nsw i64 %5205, %5206
  %5208 = icmp eq i64 %5207, 2
  %5209 = zext i1 %5208 to i8
  store i8 %5209, i8* %39, align 1
  %5210 = load i64, i64* %RBP.i, align 8
  %5211 = add i64 %5210, -4
  %5212 = add i64 %5138, 47
  store i64 %5212, i64* %3, align 8
  %5213 = inttoptr i64 %5211 to i32*
  %5214 = load i32, i32* %5213, align 4
  %5215 = add i32 %5214, 1
  %5216 = zext i32 %5215 to i64
  store i64 %5216, i64* %4934, align 8
  %5217 = icmp eq i32 %5214, -1
  %5218 = icmp eq i32 %5215, 0
  %5219 = or i1 %5217, %5218
  %5220 = zext i1 %5219 to i8
  store i8 %5220, i8* %14, align 1
  %5221 = and i32 %5215, 255
  %5222 = tail call i32 @llvm.ctpop.i32(i32 %5221)
  %5223 = trunc i32 %5222 to i8
  %5224 = and i8 %5223, 1
  %5225 = xor i8 %5224, 1
  store i8 %5225, i8* %21, align 1
  %5226 = xor i32 %5215, %5214
  %5227 = lshr i32 %5226, 4
  %5228 = trunc i32 %5227 to i8
  %5229 = and i8 %5228, 1
  store i8 %5229, i8* %27, align 1
  %5230 = zext i1 %5218 to i8
  store i8 %5230, i8* %30, align 1
  %5231 = lshr i32 %5215, 31
  %5232 = trunc i32 %5231 to i8
  store i8 %5232, i8* %33, align 1
  %5233 = lshr i32 %5214, 31
  %5234 = xor i32 %5231, %5233
  %5235 = add nuw nsw i32 %5234, %5231
  %5236 = icmp eq i32 %5235, 2
  %5237 = zext i1 %5236 to i8
  store i8 %5237, i8* %39, align 1
  %5238 = sext i32 %5215 to i64
  store i64 %5238, i64* %RDX.i1738, align 8
  %5239 = shl nsw i64 %5238, 2
  %5240 = add nsw i64 %5239, 11187184
  %5241 = add i64 %5138, 62
  store i64 %5241, i64* %3, align 8
  %5242 = inttoptr i64 %5240 to i32*
  %5243 = load i32, i32* %5242, align 4
  %5244 = sext i32 %5243 to i64
  %5245 = mul nsw i64 %5244, 744
  store i64 %5245, i64* %RDX.i1738, align 8
  %5246 = lshr i64 %5245, 63
  %5247 = load i64, i64* %RAX.i1746, align 8
  %5248 = add i64 %5245, %5247
  store i64 %5248, i64* %RAX.i1746, align 8
  %5249 = icmp ult i64 %5248, %5247
  %5250 = icmp ult i64 %5248, %5245
  %5251 = or i1 %5249, %5250
  %5252 = zext i1 %5251 to i8
  store i8 %5252, i8* %14, align 1
  %5253 = trunc i64 %5248 to i32
  %5254 = and i32 %5253, 255
  %5255 = tail call i32 @llvm.ctpop.i32(i32 %5254)
  %5256 = trunc i32 %5255 to i8
  %5257 = and i8 %5256, 1
  %5258 = xor i8 %5257, 1
  store i8 %5258, i8* %21, align 1
  %5259 = xor i64 %5245, %5247
  %5260 = xor i64 %5259, %5248
  %5261 = lshr i64 %5260, 4
  %5262 = trunc i64 %5261 to i8
  %5263 = and i8 %5262, 1
  store i8 %5263, i8* %27, align 1
  %5264 = icmp eq i64 %5248, 0
  %5265 = zext i1 %5264 to i8
  store i8 %5265, i8* %30, align 1
  %5266 = lshr i64 %5248, 63
  %5267 = trunc i64 %5266 to i8
  store i8 %5267, i8* %33, align 1
  %5268 = lshr i64 %5247, 63
  %5269 = xor i64 %5266, %5268
  %5270 = xor i64 %5266, %5246
  %5271 = add nuw nsw i64 %5269, %5270
  %5272 = icmp eq i64 %5271, 2
  %5273 = zext i1 %5272 to i8
  store i8 %5273, i8* %39, align 1
  %5274 = add i64 %5248, 96
  %5275 = add i64 %5138, 76
  store i64 %5275, i64* %3, align 8
  %5276 = inttoptr i64 %5274 to i32*
  %5277 = load i32, i32* %5276, align 4
  %5278 = zext i32 %5277 to i64
  store i64 %5278, i64* %4934, align 8
  %5279 = add i32 %5277, 1
  %5280 = zext i32 %5279 to i64
  store i64 %5280, i64* %4940, align 8
  %5281 = icmp eq i32 %5277, -1
  %5282 = icmp eq i32 %5279, 0
  %5283 = or i1 %5281, %5282
  %5284 = zext i1 %5283 to i8
  store i8 %5284, i8* %14, align 1
  %5285 = and i32 %5279, 255
  %5286 = tail call i32 @llvm.ctpop.i32(i32 %5285)
  %5287 = trunc i32 %5286 to i8
  %5288 = and i8 %5287, 1
  %5289 = xor i8 %5288, 1
  store i8 %5289, i8* %21, align 1
  %5290 = xor i32 %5279, %5277
  %5291 = lshr i32 %5290, 4
  %5292 = trunc i32 %5291 to i8
  %5293 = and i8 %5292, 1
  store i8 %5293, i8* %27, align 1
  %5294 = zext i1 %5282 to i8
  store i8 %5294, i8* %30, align 1
  %5295 = lshr i32 %5279, 31
  %5296 = trunc i32 %5295 to i8
  store i8 %5296, i8* %33, align 1
  %5297 = lshr i32 %5277, 31
  %5298 = xor i32 %5295, %5297
  %5299 = add nuw nsw i32 %5298, %5295
  %5300 = icmp eq i32 %5299, 2
  %5301 = zext i1 %5300 to i8
  store i8 %5301, i8* %39, align 1
  %5302 = add i64 %5138, 87
  store i64 %5302, i64* %3, align 8
  store i32 %5279, i32* %5276, align 4
  %5303 = load i32, i32* %R8D.i180, align 4
  %5304 = load i64, i64* %3, align 8
  %5305 = sext i32 %5303 to i64
  store i64 %5305, i64* %RAX.i1746, align 8
  %5306 = load i64, i64* %RSI.i1599, align 8
  %5307 = shl nsw i64 %5305, 2
  %5308 = add nsw i64 %5307, 100
  %5309 = add i64 %5308, %5306
  %5310 = load i32, i32* %ECX.i1726, align 4
  %5311 = add i64 %5304, 7
  store i64 %5311, i64* %3, align 8
  %5312 = inttoptr i64 %5309 to i32*
  store i32 %5310, i32* %5312, align 4
  %5313 = load i64, i64* %3, align 8
  %5314 = add i64 %5313, 108
  br label %block_.L_40cd43

block_.L_40ccdc:                                  ; preds = %block_.L_40cb6d, %block_40cb87.block_.L_40ccdc_crit_edge
  %5315 = phi i64 [ %4830, %block_40cb87.block_.L_40ccdc_crit_edge ], [ %4740, %block_.L_40cb6d ]
  %5316 = phi i64 [ %.pre52, %block_40cb87.block_.L_40ccdc_crit_edge ], [ %4350, %block_.L_40cb6d ]
  %5317 = add i64 %5316, -4
  %5318 = add i64 %5315, 3
  store i64 %5318, i64* %3, align 8
  %5319 = inttoptr i64 %5317 to i32*
  %5320 = load i32, i32* %5319, align 4
  %5321 = add i32 %5320, 1
  %5322 = zext i32 %5321 to i64
  store i64 %5322, i64* %RAX.i1746, align 8
  %5323 = icmp eq i32 %5320, -1
  %5324 = icmp eq i32 %5321, 0
  %5325 = or i1 %5323, %5324
  %5326 = zext i1 %5325 to i8
  store i8 %5326, i8* %14, align 1
  %5327 = and i32 %5321, 255
  %5328 = tail call i32 @llvm.ctpop.i32(i32 %5327)
  %5329 = trunc i32 %5328 to i8
  %5330 = and i8 %5329, 1
  %5331 = xor i8 %5330, 1
  store i8 %5331, i8* %21, align 1
  %5332 = xor i32 %5321, %5320
  %5333 = lshr i32 %5332, 4
  %5334 = trunc i32 %5333 to i8
  %5335 = and i8 %5334, 1
  store i8 %5335, i8* %27, align 1
  %5336 = zext i1 %5324 to i8
  store i8 %5336, i8* %30, align 1
  %5337 = lshr i32 %5321, 31
  %5338 = trunc i32 %5337 to i8
  store i8 %5338, i8* %33, align 1
  %5339 = lshr i32 %5320, 31
  %5340 = xor i32 %5337, %5339
  %5341 = add nuw nsw i32 %5340, %5337
  %5342 = icmp eq i32 %5341, 2
  %5343 = zext i1 %5342 to i8
  store i8 %5343, i8* %39, align 1
  %5344 = sext i32 %5321 to i64
  store i64 %5344, i64* %RCX.i1744, align 8
  %5345 = add nsw i64 %5344, 12099168
  %5346 = add i64 %5315, 17
  store i64 %5346, i64* %3, align 8
  %5347 = inttoptr i64 %5345 to i8*
  %5348 = load i8, i8* %5347, align 1
  %5349 = zext i8 %5348 to i64
  store i64 %5349, i64* %RAX.i1746, align 8
  %5350 = zext i8 %5348 to i32
  %5351 = add i64 %5316, -12
  %5352 = add i64 %5315, 20
  store i64 %5352, i64* %3, align 8
  %5353 = inttoptr i64 %5351 to i32*
  %5354 = load i32, i32* %5353, align 4
  %5355 = sub i32 %5350, %5354
  %5356 = icmp ult i32 %5350, %5354
  %5357 = zext i1 %5356 to i8
  store i8 %5357, i8* %14, align 1
  %5358 = and i32 %5355, 255
  %5359 = tail call i32 @llvm.ctpop.i32(i32 %5358)
  %5360 = trunc i32 %5359 to i8
  %5361 = and i8 %5360, 1
  %5362 = xor i8 %5361, 1
  store i8 %5362, i8* %21, align 1
  %5363 = xor i32 %5354, %5350
  %5364 = xor i32 %5363, %5355
  %5365 = lshr i32 %5364, 4
  %5366 = trunc i32 %5365 to i8
  %5367 = and i8 %5366, 1
  store i8 %5367, i8* %27, align 1
  %5368 = icmp eq i32 %5355, 0
  %5369 = zext i1 %5368 to i8
  store i8 %5369, i8* %30, align 1
  %5370 = lshr i32 %5355, 31
  %5371 = trunc i32 %5370 to i8
  store i8 %5371, i8* %33, align 1
  %5372 = lshr i32 %5354, 31
  %5373 = add nuw nsw i32 %5370, %5372
  %5374 = icmp eq i32 %5373, 2
  %5375 = zext i1 %5374 to i8
  store i8 %5375, i8* %39, align 1
  %.v66 = select i1 %5368, i64 26, i64 98
  %5376 = add i64 %5315, %.v66
  store i64 %5376, i64* %3, align 8
  br i1 %5368, label %block_40ccf6, label %block_.L_40cd3e

block_40ccf6:                                     ; preds = %block_.L_40ccdc
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i1746, align 8
  %5377 = add i64 %5376, 13
  store i64 %5377, i64* %3, align 8
  %5378 = load i32, i32* %5319, align 4
  %5379 = add i32 %5378, 1
  %5380 = zext i32 %5379 to i64
  store i64 %5380, i64* %RCX.i1744, align 8
  %5381 = icmp eq i32 %5378, -1
  %5382 = icmp eq i32 %5379, 0
  %5383 = or i1 %5381, %5382
  %5384 = zext i1 %5383 to i8
  store i8 %5384, i8* %14, align 1
  %5385 = and i32 %5379, 255
  %5386 = tail call i32 @llvm.ctpop.i32(i32 %5385)
  %5387 = trunc i32 %5386 to i8
  %5388 = and i8 %5387, 1
  %5389 = xor i8 %5388, 1
  store i8 %5389, i8* %21, align 1
  %5390 = xor i32 %5379, %5378
  %5391 = lshr i32 %5390, 4
  %5392 = trunc i32 %5391 to i8
  %5393 = and i8 %5392, 1
  store i8 %5393, i8* %27, align 1
  %5394 = zext i1 %5382 to i8
  store i8 %5394, i8* %30, align 1
  %5395 = lshr i32 %5379, 31
  %5396 = trunc i32 %5395 to i8
  store i8 %5396, i8* %33, align 1
  %5397 = lshr i32 %5378, 31
  %5398 = xor i32 %5395, %5397
  %5399 = add nuw nsw i32 %5398, %5395
  %5400 = icmp eq i32 %5399, 2
  %5401 = zext i1 %5400 to i8
  store i8 %5401, i8* %39, align 1
  %5402 = sext i32 %5379 to i64
  store i64 %5402, i64* %RDX.i1738, align 8
  %5403 = shl nsw i64 %5402, 2
  %5404 = add nsw i64 %5403, 11187184
  %5405 = add i64 %5376, 27
  store i64 %5405, i64* %3, align 8
  %5406 = inttoptr i64 %5404 to i32*
  %5407 = load i32, i32* %5406, align 4
  %5408 = sext i32 %5407 to i64
  %5409 = mul nsw i64 %5408, 744
  store i64 %5409, i64* %RDX.i1738, align 8
  %5410 = lshr i64 %5409, 63
  %5411 = add i64 %5409, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %5411, i64* %RAX.i1746, align 8
  %5412 = icmp ult i64 %5411, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %5413 = icmp ult i64 %5411, %5409
  %5414 = or i1 %5412, %5413
  %5415 = zext i1 %5414 to i8
  store i8 %5415, i8* %14, align 1
  %5416 = trunc i64 %5411 to i32
  %5417 = and i32 %5416, 248
  %5418 = tail call i32 @llvm.ctpop.i32(i32 %5417)
  %5419 = trunc i32 %5418 to i8
  %5420 = and i8 %5419, 1
  %5421 = xor i8 %5420, 1
  store i8 %5421, i8* %21, align 1
  %5422 = xor i64 %5409, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %5423 = xor i64 %5422, %5411
  %5424 = lshr i64 %5423, 4
  %5425 = trunc i64 %5424 to i8
  %5426 = and i8 %5425, 1
  store i8 %5426, i8* %27, align 1
  %5427 = icmp eq i64 %5411, 0
  %5428 = zext i1 %5427 to i8
  store i8 %5428, i8* %30, align 1
  %5429 = lshr i64 %5411, 63
  %5430 = trunc i64 %5429 to i8
  store i8 %5430, i8* %33, align 1
  %5431 = xor i64 %5429, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %5432 = xor i64 %5429, %5410
  %5433 = add nuw nsw i64 %5431, %5432
  %5434 = icmp eq i64 %5433, 2
  %5435 = zext i1 %5434 to i8
  store i8 %5435, i8* %39, align 1
  %5436 = add i64 %5409, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 740)
  %5437 = add i64 %5376, 43
  store i64 %5437, i64* %3, align 8
  %5438 = inttoptr i64 %5436 to i32*
  %5439 = load i32, i32* %5438, align 4
  %5440 = zext i32 %5439 to i64
  store i64 %5440, i64* %RCX.i1744, align 8
  %5441 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %5442 = sub i32 %5439, %5441
  %5443 = icmp ult i32 %5439, %5441
  %5444 = zext i1 %5443 to i8
  store i8 %5444, i8* %14, align 1
  %5445 = and i32 %5442, 255
  %5446 = tail call i32 @llvm.ctpop.i32(i32 %5445)
  %5447 = trunc i32 %5446 to i8
  %5448 = and i8 %5447, 1
  %5449 = xor i8 %5448, 1
  store i8 %5449, i8* %21, align 1
  %5450 = xor i32 %5441, %5439
  %5451 = xor i32 %5450, %5442
  %5452 = lshr i32 %5451, 4
  %5453 = trunc i32 %5452 to i8
  %5454 = and i8 %5453, 1
  store i8 %5454, i8* %27, align 1
  %5455 = icmp eq i32 %5442, 0
  %5456 = zext i1 %5455 to i8
  store i8 %5456, i8* %30, align 1
  %5457 = lshr i32 %5442, 31
  %5458 = trunc i32 %5457 to i8
  store i8 %5458, i8* %33, align 1
  %5459 = lshr i32 %5439, 31
  %5460 = lshr i32 %5441, 31
  %5461 = xor i32 %5460, %5459
  %5462 = xor i32 %5457, %5459
  %5463 = add nuw nsw i32 %5462, %5461
  %5464 = icmp eq i32 %5463, 2
  %5465 = zext i1 %5464 to i8
  store i8 %5465, i8* %39, align 1
  %.v67 = select i1 %5455, i64 72, i64 56
  %5466 = add i64 %5376, %.v67
  store i64 %5466, i64* %3, align 8
  br i1 %5455, label %block_.L_40cd3e, label %block_40cd2e

block_40cd2e:                                     ; preds = %block_40ccf6
  %5467 = load i64, i64* %RBP.i, align 8
  %5468 = add i64 %5467, -8
  %5469 = add i64 %5466, 3
  store i64 %5469, i64* %3, align 8
  %5470 = inttoptr i64 %5468 to i32*
  %5471 = load i32, i32* %5470, align 4
  %5472 = zext i32 %5471 to i64
  store i64 %5472, i64* %RDI.i1736, align 8
  %5473 = add i64 %5467, -4
  %5474 = add i64 %5466, 6
  store i64 %5474, i64* %3, align 8
  %5475 = inttoptr i64 %5473 to i32*
  %5476 = load i32, i32* %5475, align 4
  %5477 = add i32 %5476, 1
  %5478 = zext i32 %5477 to i64
  store i64 %5478, i64* %RAX.i1746, align 8
  %5479 = icmp eq i32 %5476, -1
  %5480 = icmp eq i32 %5477, 0
  %5481 = or i1 %5479, %5480
  %5482 = zext i1 %5481 to i8
  store i8 %5482, i8* %14, align 1
  %5483 = and i32 %5477, 255
  %5484 = tail call i32 @llvm.ctpop.i32(i32 %5483)
  %5485 = trunc i32 %5484 to i8
  %5486 = and i8 %5485, 1
  %5487 = xor i8 %5486, 1
  store i8 %5487, i8* %21, align 1
  %5488 = xor i32 %5477, %5476
  %5489 = lshr i32 %5488, 4
  %5490 = trunc i32 %5489 to i8
  %5491 = and i8 %5490, 1
  store i8 %5491, i8* %27, align 1
  %5492 = zext i1 %5480 to i8
  store i8 %5492, i8* %30, align 1
  %5493 = lshr i32 %5477, 31
  %5494 = trunc i32 %5493 to i8
  store i8 %5494, i8* %33, align 1
  %5495 = lshr i32 %5476, 31
  %5496 = xor i32 %5493, %5495
  %5497 = add nuw nsw i32 %5496, %5493
  %5498 = icmp eq i32 %5497, 2
  %5499 = zext i1 %5498 to i8
  store i8 %5499, i8* %39, align 1
  store i64 %5478, i64* %RSI.i1599, align 8
  %5500 = add i64 %5466, 34
  %5501 = add i64 %5466, 16
  %5502 = load i64, i64* %6, align 8
  %5503 = add i64 %5502, -8
  %5504 = inttoptr i64 %5503 to i64*
  store i64 %5501, i64* %5504, align 8
  store i64 %5503, i64* %6, align 8
  store i64 %5500, i64* %3, align 8
  %call2_40cd39 = tail call %struct.Memory* @sub_40cd50.assimilate_string(%struct.State* nonnull %0, i64 %5500, %struct.Memory* %MEMORY.18)
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_40cd3e

block_.L_40cd3e:                                  ; preds = %block_.L_40ccdc, %block_40cd2e, %block_40ccf6
  %5505 = phi i64 [ %5376, %block_.L_40ccdc ], [ %5466, %block_40ccf6 ], [ %.pre53, %block_40cd2e ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.18, %block_.L_40ccdc ], [ %MEMORY.18, %block_40ccf6 ], [ %call2_40cd39, %block_40cd2e ]
  %5506 = add i64 %5505, 5
  store i64 %5506, i64* %3, align 8
  br label %block_.L_40cd43

block_.L_40cd43:                                  ; preds = %block_.L_40cd3e, %block_40cbbf
  %storemerge32 = phi i64 [ %5314, %block_40cbbf ], [ %5506, %block_.L_40cd3e ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.18, %block_40cbbf ], [ %MEMORY.22, %block_.L_40cd3e ]
  %5507 = add i64 %storemerge32, 5
  store i64 %5507, i64* %3, align 8
  br label %block_.L_40cd48

block_.L_40cd48:                                  ; preds = %block_.L_40cd43, %block_.L_40cb47
  %storemerge31 = phi i64 [ %4681, %block_.L_40cb47 ], [ %5507, %block_.L_40cd43 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.18, %block_.L_40cb47 ], [ %MEMORY.23, %block_.L_40cd43 ]
  %5508 = load i64, i64* %6, align 8
  %5509 = add i64 %5508, 48
  store i64 %5509, i64* %6, align 8
  %5510 = icmp ugt i64 %5508, -49
  %5511 = zext i1 %5510 to i8
  store i8 %5511, i8* %14, align 1
  %5512 = trunc i64 %5509 to i32
  %5513 = and i32 %5512, 255
  %5514 = tail call i32 @llvm.ctpop.i32(i32 %5513)
  %5515 = trunc i32 %5514 to i8
  %5516 = and i8 %5515, 1
  %5517 = xor i8 %5516, 1
  store i8 %5517, i8* %21, align 1
  %5518 = xor i64 %5508, 16
  %5519 = xor i64 %5518, %5509
  %5520 = lshr i64 %5519, 4
  %5521 = trunc i64 %5520 to i8
  %5522 = and i8 %5521, 1
  store i8 %5522, i8* %27, align 1
  %5523 = icmp eq i64 %5509, 0
  %5524 = zext i1 %5523 to i8
  store i8 %5524, i8* %30, align 1
  %5525 = lshr i64 %5509, 63
  %5526 = trunc i64 %5525 to i8
  store i8 %5526, i8* %33, align 1
  %5527 = lshr i64 %5508, 63
  %5528 = xor i64 %5525, %5527
  %5529 = add nuw nsw i64 %5528, %5525
  %5530 = icmp eq i64 %5529, 2
  %5531 = zext i1 %5530 to i8
  store i8 %5531, i8* %39, align 1
  %5532 = add i64 %storemerge31, 5
  store i64 %5532, i64* %3, align 8
  %5533 = add i64 %5508, 56
  %5534 = inttoptr i64 %5509 to i64*
  %5535 = load i64, i64* %5534, align 8
  store i64 %5535, i64* %RBP.i, align 8
  store i64 %5533, i64* %6, align 8
  %5536 = add i64 %storemerge31, 6
  store i64 %5536, i64* %3, align 8
  %5537 = inttoptr i64 %5533 to i64*
  %5538 = load i64, i64* %5537, align 8
  store i64 %5538, i64* %3, align 8
  %5539 = add i64 %5508, 64
  store i64 %5539, i64* %6, align 8
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
define %struct.Memory* @routine_movq__0x99da00___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x99da00_type* @G__0x99da00 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RCX, align 8
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
define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0xa0e710___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da00___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da00_type* @G_0x99da00 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xa0e710___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_movq__rdx__0xa0e710(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
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
define %struct.Memory* @routine_movl__edi__0x99da00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da00_type* @G_0x99da00 to i32*), align 8
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
define %struct.Memory* @routine_cmpl__0xf0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -240
  %10 = icmp ult i32 %8, 240
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
define %struct.Memory* @routine_jge_.L_40c0f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40c14c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xce0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3296, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a321___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a321_type* @G__0x57a321 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__ecx__0xaab3f0___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11187184
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0xaaba30___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11188784
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 744
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__ecx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x0__0xc__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x60__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da04___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x99da04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x99da08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
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
define %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 740
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_40c2f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11185584
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_40c2f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40c260(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 744
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -20
  %10 = icmp ult i32 %8, 20
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
define %struct.Memory* @routine_jge_.L_40c2b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 16
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x99da04_type* @G_0x99da04 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__esi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 11185584
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40c4fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_jne_.L_40c492(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 740
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
define %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x99da08_type* @G_0x99da08 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_40c492(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
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
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 96
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
define %struct.Memory* @routine_movl__r8d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 96
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 100
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x60___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -97
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
define %struct.Memory* @routine_movq__rsi____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x10___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RSI, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_movq__rsi__0xa0e710(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xa0e710_type* @G_0xa0e710 to i64*), align 8
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
define %struct.Memory* @routine_addl__0x14___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 20
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ugt i32 %5, -21
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %5, 16
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40c4f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_40c4f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40c4f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.assimilate_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40c5d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40c5d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40c53a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40c593(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40c7d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40c76c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40c76c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, -1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
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
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40c7d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40c7ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40c7ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40c8aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40c8aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40c814(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40c86d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40cab2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40ca46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40ca46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, -20
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ult i32 %5, 20
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %5, 16
  %20 = xor i32 %19, %8
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40caad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40caa8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40caa8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40cb6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40cb6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40caee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40cb47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40cd48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40ccdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40ccdc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x60__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 96
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
define %struct.Memory* @routine_movl__r9d__0x60__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 96
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r8d___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x64__rsi__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 100
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40cd43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40cd3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40cd3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
