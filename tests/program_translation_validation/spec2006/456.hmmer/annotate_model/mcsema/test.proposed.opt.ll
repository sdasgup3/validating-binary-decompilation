; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x45863c_type = type <{ [8 x i8] }>
%G__0x45881d_type = type <{ [8 x i8] }>
%G__0x458823_type = type <{ [8 x i8] }>
%G__0x458829_type = type <{ [8 x i8] }>
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
@G__0x45863c = global %G__0x45863c_type zeroinitializer
@G__0x45881d = global %G__0x45881d_type zeroinitializer
@G__0x458823 = global %G__0x458823_type zeroinitializer
@G__0x458829 = global %G__0x458829_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_42df40.MSAGetGC(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @annotate_model(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -72
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 64
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
  %22 = xor i64 %8, %11
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %11, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %11, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %8, 63
  %34 = xor i64 %30, %33
  %35 = add nuw nsw i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  %RDI.i1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i1376, align 8
  %41 = add i64 %10, 11
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %RSI.i1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RSI.i1373, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1370 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -24
  %52 = load i64, i64* %RDX.i1370, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -24
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %57 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %RDX.i1370, align 8
  %62 = add i64 %61, 88
  %63 = add i64 %58, 9
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i64*
  %65 = load i64, i64* %64, align 8
  store i8 0, i8* %14, align 1
  %66 = trunc i64 %65 to i32
  %67 = and i32 %66, 255
  %68 = tail call i32 @llvm.ctpop.i32(i32 %67)
  %69 = trunc i32 %68 to i8
  %70 = and i8 %69, 1
  %71 = xor i8 %70, 1
  store i8 %71, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %72 = icmp eq i64 %65, 0
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %29, align 1
  %74 = lshr i64 %65, 63
  %75 = trunc i64 %74 to i8
  store i8 %75, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %72, i64 230, i64 15
  %76 = add i64 %58, %.v
  store i64 %76, i64* %3, align 8
  %.pre103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre104 = getelementptr inbounds %union.anon, %union.anon* %.pre103, i64 0, i32 0
  br i1 %72, label %block_.L_429efa, label %block_429e23

block_429e23:                                     ; preds = %entry
  %77 = add i64 %56, -8
  %78 = add i64 %76, 4
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %.pre104, align 8
  %81 = add i64 %80, 24
  %82 = add i64 %76, 8
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %.pre104, align 8
  %85 = add i64 %76, 11
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i8*
  store i8 32, i8* %86, align 1
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -32
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 7
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %88 to i32*
  store i32 1, i32* %91, align 4
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -28
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 7
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %93 to i32*
  store i32 1, i32* %96, align 4
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1347 = getelementptr inbounds %union.anon, %union.anon* %97, i64 0, i32 0
  %EAX.i1344 = bitcast %union.anon* %.pre103 to i32*
  %CL.i1277 = bitcast %union.anon* %97 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_429e3c

block_.L_429e3c:                                  ; preds = %block_.L_429ec4, %block_429e23
  %98 = phi i64 [ %351, %block_.L_429ec4 ], [ %.pre, %block_429e23 ]
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -28
  %101 = add i64 %98, 3
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i32*
  %103 = load i32, i32* %102, align 4
  %104 = zext i32 %103 to i64
  store i64 %104, i64* %.pre104, align 8
  %105 = add i64 %99, -24
  %106 = add i64 %98, 7
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i64*
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %RCX.i1347, align 8
  %109 = add i64 %108, 24
  %110 = add i64 %98, 10
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = sub i32 %103, %112
  %114 = icmp ult i32 %103, %112
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %14, align 1
  %116 = and i32 %113, 255
  %117 = tail call i32 @llvm.ctpop.i32(i32 %116)
  %118 = trunc i32 %117 to i8
  %119 = and i8 %118, 1
  %120 = xor i8 %119, 1
  store i8 %120, i8* %21, align 1
  %121 = xor i32 %112, %103
  %122 = xor i32 %121, %113
  %123 = lshr i32 %122, 4
  %124 = trunc i32 %123 to i8
  %125 = and i8 %124, 1
  store i8 %125, i8* %26, align 1
  %126 = icmp eq i32 %113, 0
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %29, align 1
  %128 = lshr i32 %113, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %32, align 1
  %130 = lshr i32 %103, 31
  %131 = lshr i32 %112, 31
  %132 = xor i32 %131, %130
  %133 = xor i32 %128, %130
  %134 = add nuw nsw i32 %133, %132
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %38, align 1
  %137 = icmp ne i8 %129, 0
  %138 = xor i1 %137, %135
  %.demorgan = or i1 %126, %138
  %.v125 = select i1 %.demorgan, i64 16, i64 155
  %139 = add i64 %98, %.v125
  store i64 %139, i64* %3, align 8
  br i1 %.demorgan, label %block_429e4c, label %block_.L_429ed7

block_429e4c:                                     ; preds = %block_.L_429e3c
  %140 = add i64 %99, -16
  %141 = add i64 %139, 4
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i64*
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %.pre104, align 8
  %144 = add i64 %139, 8
  store i64 %144, i64* %3, align 8
  %145 = load i32, i32* %102, align 4
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %RCX.i1347, align 8
  %147 = shl nsw i64 %146, 2
  %148 = add i64 %147, %143
  %149 = add i64 %139, 11
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, 1
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  %154 = tail call i32 @llvm.ctpop.i32(i32 %152)
  %155 = trunc i32 %154 to i8
  %156 = xor i8 %155, 1
  store i8 %156, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %157 = icmp eq i32 %152, 0
  %158 = trunc i32 %152 to i8
  %159 = xor i8 %158, 1
  store i8 %159, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v154 = select i1 %157, i64 120, i64 23
  %160 = add i64 %139, %.v154
  store i64 %160, i64* %3, align 8
  br i1 %157, label %block_.L_429ec4, label %block_429e63

block_429e63:                                     ; preds = %block_429e4c
  %161 = add i64 %160, 4
  store i64 %161, i64* %3, align 8
  %162 = load i64, i64* %107, align 8
  store i64 %162, i64* %.pre104, align 8
  %163 = add i64 %162, 88
  %164 = add i64 %160, 8
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %.pre104, align 8
  %167 = add i64 %160, 11
  store i64 %167, i64* %3, align 8
  %168 = load i32, i32* %102, align 4
  %169 = add i32 %168, -1
  %170 = zext i32 %169 to i64
  store i64 %170, i64* %RCX.i1347, align 8
  %171 = icmp eq i32 %168, 0
  %172 = zext i1 %171 to i8
  store i8 %172, i8* %14, align 1
  %173 = and i32 %169, 255
  %174 = tail call i32 @llvm.ctpop.i32(i32 %173)
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  %177 = xor i8 %176, 1
  store i8 %177, i8* %21, align 1
  %178 = xor i32 %169, %168
  %179 = lshr i32 %178, 4
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %26, align 1
  %182 = icmp eq i32 %169, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %29, align 1
  %184 = lshr i32 %169, 31
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %32, align 1
  %186 = lshr i32 %168, 31
  %187 = xor i32 %184, %186
  %188 = add nuw nsw i32 %187, %186
  %189 = icmp eq i32 %188, 2
  %190 = zext i1 %189 to i8
  store i8 %190, i8* %38, align 1
  %191 = sext i32 %169 to i64
  store i64 %191, i64* %RDX.i1370, align 8
  %192 = add i64 %166, %191
  %193 = add i64 %160, 21
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i8*
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i64
  %197 = and i64 %196, 4294967295
  store i64 %197, i64* %RCX.i1347, align 8
  %198 = sext i8 %195 to i32
  %199 = add nsw i32 %198, -32
  %200 = icmp ult i8 %195, 32
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %14, align 1
  %202 = and i32 %199, 255
  %203 = tail call i32 @llvm.ctpop.i32(i32 %202)
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = xor i8 %205, 1
  store i8 %206, i8* %21, align 1
  %207 = xor i32 %199, %198
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  store i8 %210, i8* %26, align 1
  %211 = icmp eq i32 %199, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %29, align 1
  %213 = lshr i32 %199, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %32, align 1
  %215 = lshr i32 %198, 31
  %216 = xor i32 %213, %215
  %217 = add nuw nsw i32 %216, %215
  %218 = icmp eq i32 %217, 2
  %219 = zext i1 %218 to i8
  store i8 %219, i8* %38, align 1
  %.v155 = select i1 %211, i64 30, i64 43
  %220 = add i64 %160, %.v155
  store i64 %220, i64* %3, align 8
  br i1 %211, label %block_429e81, label %block_.L_429e8e

block_429e81:                                     ; preds = %block_429e63
  store i64 46, i64* %.pre104, align 8
  %221 = add i64 %99, -44
  %222 = add i64 %220, 8
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i32*
  store i32 46, i32* %223, align 4
  %224 = load i64, i64* %3, align 8
  %225 = add i64 %224, 29
  store i64 %225, i64* %3, align 8
  br label %block_.L_429ea6

block_.L_429e8e:                                  ; preds = %block_429e63
  %226 = add i64 %220, 4
  store i64 %226, i64* %3, align 8
  %227 = load i64, i64* %107, align 8
  store i64 %227, i64* %.pre104, align 8
  %228 = add i64 %227, 88
  %229 = add i64 %220, 8
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %.pre104, align 8
  %232 = add i64 %220, 11
  store i64 %232, i64* %3, align 8
  %233 = load i32, i32* %102, align 4
  %234 = add i32 %233, -1
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %RCX.i1347, align 8
  %236 = icmp eq i32 %233, 0
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %14, align 1
  %238 = and i32 %234, 255
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %21, align 1
  %243 = xor i32 %234, %233
  %244 = lshr i32 %243, 4
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  store i8 %246, i8* %26, align 1
  %247 = icmp eq i32 %234, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %29, align 1
  %249 = lshr i32 %234, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %32, align 1
  %251 = lshr i32 %233, 31
  %252 = xor i32 %249, %251
  %253 = add nuw nsw i32 %252, %251
  %254 = icmp eq i32 %253, 2
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %38, align 1
  %256 = sext i32 %234 to i64
  store i64 %256, i64* %RDX.i1370, align 8
  %257 = add i64 %231, %256
  %258 = add i64 %220, 21
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i8*
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i64
  %262 = and i64 %261, 4294967295
  store i64 %262, i64* %RCX.i1347, align 8
  %263 = add i64 %99, -44
  %264 = sext i8 %260 to i32
  %265 = add i64 %220, 24
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %263 to i32*
  store i32 %264, i32* %266, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_429ea6

block_.L_429ea6:                                  ; preds = %block_.L_429e8e, %block_429e81
  %267 = phi i64 [ %.pre69, %block_.L_429e8e ], [ %225, %block_429e81 ]
  %268 = load i64, i64* %RBP.i, align 8
  %269 = add i64 %268, -44
  %270 = add i64 %267, 3
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %.pre104, align 8
  %274 = trunc i32 %272 to i8
  store i8 %274, i8* %CL.i1277, align 1
  %275 = add i64 %268, -8
  %276 = add i64 %267, 9
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %RDX.i1370, align 8
  %279 = add i64 %278, 24
  %280 = add i64 %267, 13
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i64*
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %RDX.i1370, align 8
  %283 = add i64 %268, -32
  %284 = add i64 %267, 16
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %.pre104, align 8
  %288 = add i32 %286, 1
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RSI.i1373, align 8
  %290 = icmp eq i32 %286, -1
  %291 = icmp eq i32 %288, 0
  %292 = or i1 %290, %291
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %14, align 1
  %294 = and i32 %288, 255
  %295 = tail call i32 @llvm.ctpop.i32(i32 %294)
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  %298 = xor i8 %297, 1
  store i8 %298, i8* %21, align 1
  %299 = xor i32 %288, %286
  %300 = lshr i32 %299, 4
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  store i8 %302, i8* %26, align 1
  %303 = zext i1 %291 to i8
  store i8 %303, i8* %29, align 1
  %304 = lshr i32 %288, 31
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* %32, align 1
  %306 = lshr i32 %286, 31
  %307 = xor i32 %304, %306
  %308 = add nuw nsw i32 %307, %304
  %309 = icmp eq i32 %308, 2
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %38, align 1
  %311 = add i64 %267, 24
  store i64 %311, i64* %3, align 8
  store i32 %288, i32* %285, align 4
  %312 = load i32, i32* %EAX.i1344, align 4
  %313 = load i64, i64* %3, align 8
  %314 = sext i32 %312 to i64
  store i64 %314, i64* %RDI.i1376, align 8
  %315 = load i64, i64* %RDX.i1370, align 8
  %316 = add i64 %315, %314
  %317 = load i8, i8* %CL.i1277, align 1
  %318 = add i64 %313, 6
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %316 to i8*
  store i8 %317, i8* %319, align 1
  %.pre70 = load i64, i64* %3, align 8
  %.pre71 = load i64, i64* %RBP.i, align 8
  br label %block_.L_429ec4

block_.L_429ec4:                                  ; preds = %block_.L_429ea6, %block_429e4c
  %320 = phi i64 [ %.pre71, %block_.L_429ea6 ], [ %99, %block_429e4c ]
  %321 = phi i64 [ %.pre70, %block_.L_429ea6 ], [ %160, %block_429e4c ]
  %322 = add i64 %320, -28
  %323 = add i64 %321, 8
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = add i32 %325, 1
  %327 = zext i32 %326 to i64
  store i64 %327, i64* %.pre104, align 8
  %328 = icmp eq i32 %325, -1
  %329 = icmp eq i32 %326, 0
  %330 = or i1 %328, %329
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %14, align 1
  %332 = and i32 %326, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %21, align 1
  %337 = xor i32 %326, %325
  %338 = lshr i32 %337, 4
  %339 = trunc i32 %338 to i8
  %340 = and i8 %339, 1
  store i8 %340, i8* %26, align 1
  %341 = zext i1 %329 to i8
  store i8 %341, i8* %29, align 1
  %342 = lshr i32 %326, 31
  %343 = trunc i32 %342 to i8
  store i8 %343, i8* %32, align 1
  %344 = lshr i32 %325, 31
  %345 = xor i32 %342, %344
  %346 = add nuw nsw i32 %345, %342
  %347 = icmp eq i32 %346, 2
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %38, align 1
  %349 = add i64 %321, 14
  store i64 %349, i64* %3, align 8
  store i32 %326, i32* %324, align 4
  %350 = load i64, i64* %3, align 8
  %351 = add i64 %350, -150
  store i64 %351, i64* %3, align 8
  br label %block_.L_429e3c

block_.L_429ed7:                                  ; preds = %block_.L_429e3c
  %352 = add i64 %99, -8
  %353 = add i64 %139, 4
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %.pre104, align 8
  %356 = add i64 %355, 24
  %357 = add i64 %139, 8
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %.pre104, align 8
  %360 = add i64 %99, -32
  %361 = add i64 %139, 12
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  store i64 %364, i64* %RCX.i1347, align 8
  %365 = add i64 %359, %364
  %366 = add i64 %139, 16
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i8*
  store i8 0, i8* %367, align 1
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -8
  %370 = load i64, i64* %3, align 8
  %371 = add i64 %370, 4
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %369 to i64*
  %373 = load i64, i64* %372, align 8
  store i64 %373, i64* %.pre104, align 8
  %374 = add i64 %373, 456
  %375 = add i64 %370, 10
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i32*
  %377 = load i32, i32* %376, align 4
  %378 = or i32 %377, 4
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  %380 = and i32 %378, 255
  %381 = tail call i32 @llvm.ctpop.i32(i32 %380)
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  %384 = xor i8 %383, 1
  store i8 %384, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %385 = lshr i32 %377, 31
  %386 = trunc i32 %385 to i8
  store i8 %386, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %387 = add i64 %370, 19
  store i64 %387, i64* %3, align 8
  store i32 %378, i32* %376, align 4
  %.pre72 = load i64, i64* %RBP.i, align 8
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_429efa

block_.L_429efa:                                  ; preds = %entry, %block_.L_429ed7
  %388 = phi i64 [ %.pre73, %block_.L_429ed7 ], [ %76, %entry ]
  %389 = phi i64 [ %.pre72, %block_.L_429ed7 ], [ %56, %entry ]
  %390 = add i64 %389, -24
  %391 = add i64 %388, 4
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i64*
  %393 = load i64, i64* %392, align 8
  store i64 %393, i64* %.pre104, align 8
  %394 = add i64 %393, 72
  %395 = add i64 %388, 9
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  store i8 0, i8* %14, align 1
  %398 = trunc i64 %397 to i32
  %399 = and i32 %398, 255
  %400 = tail call i32 @llvm.ctpop.i32(i32 %399)
  %401 = trunc i32 %400 to i8
  %402 = and i8 %401, 1
  %403 = xor i8 %402, 1
  store i8 %403, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %404 = icmp eq i64 %397, 0
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %29, align 1
  %406 = lshr i64 %397, 63
  %407 = trunc i64 %406 to i8
  store i8 %407, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v126 = select i1 %404, i64 230, i64 15
  %408 = add i64 %388, %.v126
  store i64 %408, i64* %3, align 8
  br i1 %404, label %block_.L_429fe0, label %block_429f09

block_429f09:                                     ; preds = %block_.L_429efa
  %409 = add i64 %389, -8
  %410 = add i64 %408, 4
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i64*
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %.pre104, align 8
  %413 = add i64 %412, 32
  %414 = add i64 %408, 8
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i64*
  %416 = load i64, i64* %415, align 8
  store i64 %416, i64* %.pre104, align 8
  %417 = add i64 %408, 11
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i8*
  store i8 32, i8* %418, align 1
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -32
  %421 = load i64, i64* %3, align 8
  %422 = add i64 %421, 7
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %420 to i32*
  store i32 1, i32* %423, align 4
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -28
  %426 = load i64, i64* %3, align 8
  %427 = add i64 %426, 7
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %425 to i32*
  store i32 1, i32* %428, align 4
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1198 = getelementptr inbounds %union.anon, %union.anon* %429, i64 0, i32 0
  %EAX.i1195 = bitcast %union.anon* %.pre103 to i32*
  %CL.i1128 = bitcast %union.anon* %429 to i8*
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_429f22

block_.L_429f22:                                  ; preds = %block_.L_429faa, %block_429f09
  %430 = phi i64 [ %683, %block_.L_429faa ], [ %.pre74, %block_429f09 ]
  %431 = load i64, i64* %RBP.i, align 8
  %432 = add i64 %431, -28
  %433 = add i64 %430, 3
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = zext i32 %435 to i64
  store i64 %436, i64* %.pre104, align 8
  %437 = add i64 %431, -24
  %438 = add i64 %430, 7
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i64*
  %440 = load i64, i64* %439, align 8
  store i64 %440, i64* %RCX.i1198, align 8
  %441 = add i64 %440, 24
  %442 = add i64 %430, 10
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = sub i32 %435, %444
  %446 = icmp ult i32 %435, %444
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %14, align 1
  %448 = and i32 %445, 255
  %449 = tail call i32 @llvm.ctpop.i32(i32 %448)
  %450 = trunc i32 %449 to i8
  %451 = and i8 %450, 1
  %452 = xor i8 %451, 1
  store i8 %452, i8* %21, align 1
  %453 = xor i32 %444, %435
  %454 = xor i32 %453, %445
  %455 = lshr i32 %454, 4
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  store i8 %457, i8* %26, align 1
  %458 = icmp eq i32 %445, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %29, align 1
  %460 = lshr i32 %445, 31
  %461 = trunc i32 %460 to i8
  store i8 %461, i8* %32, align 1
  %462 = lshr i32 %435, 31
  %463 = lshr i32 %444, 31
  %464 = xor i32 %463, %462
  %465 = xor i32 %460, %462
  %466 = add nuw nsw i32 %465, %464
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %38, align 1
  %469 = icmp ne i8 %461, 0
  %470 = xor i1 %469, %467
  %.demorgan111 = or i1 %458, %470
  %.v127 = select i1 %.demorgan111, i64 16, i64 155
  %471 = add i64 %430, %.v127
  store i64 %471, i64* %3, align 8
  br i1 %.demorgan111, label %block_429f32, label %block_.L_429fbd

block_429f32:                                     ; preds = %block_.L_429f22
  %472 = add i64 %431, -16
  %473 = add i64 %471, 4
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %.pre104, align 8
  %476 = add i64 %471, 8
  store i64 %476, i64* %3, align 8
  %477 = load i32, i32* %434, align 4
  %478 = sext i32 %477 to i64
  store i64 %478, i64* %RCX.i1198, align 8
  %479 = shl nsw i64 %478, 2
  %480 = add i64 %479, %475
  %481 = add i64 %471, 11
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = and i32 %483, 1
  %485 = zext i32 %484 to i64
  store i64 %485, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  %486 = tail call i32 @llvm.ctpop.i32(i32 %484)
  %487 = trunc i32 %486 to i8
  %488 = xor i8 %487, 1
  store i8 %488, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %489 = icmp eq i32 %484, 0
  %490 = trunc i32 %484 to i8
  %491 = xor i8 %490, 1
  store i8 %491, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v152 = select i1 %489, i64 120, i64 23
  %492 = add i64 %471, %.v152
  store i64 %492, i64* %3, align 8
  br i1 %489, label %block_.L_429faa, label %block_429f49

block_429f49:                                     ; preds = %block_429f32
  %493 = add i64 %492, 4
  store i64 %493, i64* %3, align 8
  %494 = load i64, i64* %439, align 8
  store i64 %494, i64* %.pre104, align 8
  %495 = add i64 %494, 72
  %496 = add i64 %492, 8
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i64*
  %498 = load i64, i64* %497, align 8
  store i64 %498, i64* %.pre104, align 8
  %499 = add i64 %492, 11
  store i64 %499, i64* %3, align 8
  %500 = load i32, i32* %434, align 4
  %501 = add i32 %500, -1
  %502 = zext i32 %501 to i64
  store i64 %502, i64* %RCX.i1198, align 8
  %503 = icmp eq i32 %500, 0
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %14, align 1
  %505 = and i32 %501, 255
  %506 = tail call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  store i8 %509, i8* %21, align 1
  %510 = xor i32 %501, %500
  %511 = lshr i32 %510, 4
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  store i8 %513, i8* %26, align 1
  %514 = icmp eq i32 %501, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %29, align 1
  %516 = lshr i32 %501, 31
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %32, align 1
  %518 = lshr i32 %500, 31
  %519 = xor i32 %516, %518
  %520 = add nuw nsw i32 %519, %518
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %38, align 1
  %523 = sext i32 %501 to i64
  store i64 %523, i64* %RDX.i1370, align 8
  %524 = add i64 %498, %523
  %525 = add i64 %492, 21
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i8*
  %527 = load i8, i8* %526, align 1
  %528 = sext i8 %527 to i64
  %529 = and i64 %528, 4294967295
  store i64 %529, i64* %RCX.i1198, align 8
  %530 = sext i8 %527 to i32
  %531 = add nsw i32 %530, -32
  %532 = icmp ult i8 %527, 32
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %14, align 1
  %534 = and i32 %531, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %21, align 1
  %539 = xor i32 %531, %530
  %540 = lshr i32 %539, 4
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  store i8 %542, i8* %26, align 1
  %543 = icmp eq i32 %531, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %29, align 1
  %545 = lshr i32 %531, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %32, align 1
  %547 = lshr i32 %530, 31
  %548 = xor i32 %545, %547
  %549 = add nuw nsw i32 %548, %547
  %550 = icmp eq i32 %549, 2
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %38, align 1
  %.v153 = select i1 %543, i64 30, i64 43
  %552 = add i64 %492, %.v153
  store i64 %552, i64* %3, align 8
  br i1 %543, label %block_429f67, label %block_.L_429f74

block_429f67:                                     ; preds = %block_429f49
  store i64 46, i64* %.pre104, align 8
  %553 = add i64 %431, -48
  %554 = add i64 %552, 8
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  store i32 46, i32* %555, align 4
  %556 = load i64, i64* %3, align 8
  %557 = add i64 %556, 29
  store i64 %557, i64* %3, align 8
  br label %block_.L_429f8c

block_.L_429f74:                                  ; preds = %block_429f49
  %558 = add i64 %552, 4
  store i64 %558, i64* %3, align 8
  %559 = load i64, i64* %439, align 8
  store i64 %559, i64* %.pre104, align 8
  %560 = add i64 %559, 72
  %561 = add i64 %552, 8
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %.pre104, align 8
  %564 = add i64 %552, 11
  store i64 %564, i64* %3, align 8
  %565 = load i32, i32* %434, align 4
  %566 = add i32 %565, -1
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RCX.i1198, align 8
  %568 = icmp eq i32 %565, 0
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %14, align 1
  %570 = and i32 %566, 255
  %571 = tail call i32 @llvm.ctpop.i32(i32 %570)
  %572 = trunc i32 %571 to i8
  %573 = and i8 %572, 1
  %574 = xor i8 %573, 1
  store i8 %574, i8* %21, align 1
  %575 = xor i32 %566, %565
  %576 = lshr i32 %575, 4
  %577 = trunc i32 %576 to i8
  %578 = and i8 %577, 1
  store i8 %578, i8* %26, align 1
  %579 = icmp eq i32 %566, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %29, align 1
  %581 = lshr i32 %566, 31
  %582 = trunc i32 %581 to i8
  store i8 %582, i8* %32, align 1
  %583 = lshr i32 %565, 31
  %584 = xor i32 %581, %583
  %585 = add nuw nsw i32 %584, %583
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %38, align 1
  %588 = sext i32 %566 to i64
  store i64 %588, i64* %RDX.i1370, align 8
  %589 = add i64 %563, %588
  %590 = add i64 %552, 21
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i8*
  %592 = load i8, i8* %591, align 1
  %593 = sext i8 %592 to i64
  %594 = and i64 %593, 4294967295
  store i64 %594, i64* %RCX.i1198, align 8
  %595 = add i64 %431, -48
  %596 = sext i8 %592 to i32
  %597 = add i64 %552, 24
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %595 to i32*
  store i32 %596, i32* %598, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_429f8c

block_.L_429f8c:                                  ; preds = %block_.L_429f74, %block_429f67
  %599 = phi i64 [ %.pre75, %block_.L_429f74 ], [ %557, %block_429f67 ]
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -48
  %602 = add i64 %599, 3
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %.pre104, align 8
  %606 = trunc i32 %604 to i8
  store i8 %606, i8* %CL.i1128, align 1
  %607 = add i64 %600, -8
  %608 = add i64 %599, 9
  store i64 %608, i64* %3, align 8
  %609 = inttoptr i64 %607 to i64*
  %610 = load i64, i64* %609, align 8
  store i64 %610, i64* %RDX.i1370, align 8
  %611 = add i64 %610, 32
  %612 = add i64 %599, 13
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i64*
  %614 = load i64, i64* %613, align 8
  store i64 %614, i64* %RDX.i1370, align 8
  %615 = add i64 %600, -32
  %616 = add i64 %599, 16
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = zext i32 %618 to i64
  store i64 %619, i64* %.pre104, align 8
  %620 = add i32 %618, 1
  %621 = zext i32 %620 to i64
  store i64 %621, i64* %RSI.i1373, align 8
  %622 = icmp eq i32 %618, -1
  %623 = icmp eq i32 %620, 0
  %624 = or i1 %622, %623
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %14, align 1
  %626 = and i32 %620, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %21, align 1
  %631 = xor i32 %620, %618
  %632 = lshr i32 %631, 4
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  store i8 %634, i8* %26, align 1
  %635 = zext i1 %623 to i8
  store i8 %635, i8* %29, align 1
  %636 = lshr i32 %620, 31
  %637 = trunc i32 %636 to i8
  store i8 %637, i8* %32, align 1
  %638 = lshr i32 %618, 31
  %639 = xor i32 %636, %638
  %640 = add nuw nsw i32 %639, %636
  %641 = icmp eq i32 %640, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %38, align 1
  %643 = add i64 %599, 24
  store i64 %643, i64* %3, align 8
  store i32 %620, i32* %617, align 4
  %644 = load i32, i32* %EAX.i1195, align 4
  %645 = load i64, i64* %3, align 8
  %646 = sext i32 %644 to i64
  store i64 %646, i64* %RDI.i1376, align 8
  %647 = load i64, i64* %RDX.i1370, align 8
  %648 = add i64 %647, %646
  %649 = load i8, i8* %CL.i1128, align 1
  %650 = add i64 %645, 6
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %648 to i8*
  store i8 %649, i8* %651, align 1
  %.pre76 = load i64, i64* %3, align 8
  %.pre77 = load i64, i64* %RBP.i, align 8
  br label %block_.L_429faa

block_.L_429faa:                                  ; preds = %block_.L_429f8c, %block_429f32
  %652 = phi i64 [ %.pre77, %block_.L_429f8c ], [ %431, %block_429f32 ]
  %653 = phi i64 [ %.pre76, %block_.L_429f8c ], [ %492, %block_429f32 ]
  %654 = add i64 %652, -28
  %655 = add i64 %653, 8
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i32*
  %657 = load i32, i32* %656, align 4
  %658 = add i32 %657, 1
  %659 = zext i32 %658 to i64
  store i64 %659, i64* %.pre104, align 8
  %660 = icmp eq i32 %657, -1
  %661 = icmp eq i32 %658, 0
  %662 = or i1 %660, %661
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %14, align 1
  %664 = and i32 %658, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664)
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %21, align 1
  %669 = xor i32 %658, %657
  %670 = lshr i32 %669, 4
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  store i8 %672, i8* %26, align 1
  %673 = zext i1 %661 to i8
  store i8 %673, i8* %29, align 1
  %674 = lshr i32 %658, 31
  %675 = trunc i32 %674 to i8
  store i8 %675, i8* %32, align 1
  %676 = lshr i32 %657, 31
  %677 = xor i32 %674, %676
  %678 = add nuw nsw i32 %677, %674
  %679 = icmp eq i32 %678, 2
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %38, align 1
  %681 = add i64 %653, 14
  store i64 %681, i64* %3, align 8
  store i32 %658, i32* %656, align 4
  %682 = load i64, i64* %3, align 8
  %683 = add i64 %682, -150
  store i64 %683, i64* %3, align 8
  br label %block_.L_429f22

block_.L_429fbd:                                  ; preds = %block_.L_429f22
  %684 = add i64 %431, -8
  %685 = add i64 %471, 4
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %.pre104, align 8
  %688 = add i64 %687, 32
  %689 = add i64 %471, 8
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %.pre104, align 8
  %692 = add i64 %431, -32
  %693 = add i64 %471, 12
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = sext i32 %695 to i64
  store i64 %696, i64* %RCX.i1198, align 8
  %697 = add i64 %691, %696
  %698 = add i64 %471, 16
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i8*
  store i8 0, i8* %699, align 1
  %700 = load i64, i64* %RBP.i, align 8
  %701 = add i64 %700, -8
  %702 = load i64, i64* %3, align 8
  %703 = add i64 %702, 4
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %701 to i64*
  %705 = load i64, i64* %704, align 8
  store i64 %705, i64* %.pre104, align 8
  %706 = add i64 %705, 456
  %707 = add i64 %702, 10
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = or i32 %709, 8
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  %712 = and i32 %710, 255
  %713 = tail call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  store i8 %716, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %717 = lshr i32 %709, 31
  %718 = trunc i32 %717 to i8
  store i8 %718, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %719 = add i64 %702, 19
  store i64 %719, i64* %3, align 8
  store i32 %710, i32* %708, align 4
  %.pre78 = load i64, i64* %RBP.i, align 8
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_429fe0

block_.L_429fe0:                                  ; preds = %block_.L_429fbd, %block_.L_429efa
  %720 = phi i64 [ %.pre79, %block_.L_429fbd ], [ %408, %block_.L_429efa ]
  %721 = phi i64 [ %.pre78, %block_.L_429fbd ], [ %389, %block_.L_429efa ]
  %722 = add i64 %721, -24
  %723 = add i64 %720, 4
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i64*
  %725 = load i64, i64* %724, align 8
  store i64 %725, i64* %.pre104, align 8
  %726 = add i64 %725, 80
  %727 = add i64 %720, 9
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i64*
  %729 = load i64, i64* %728, align 8
  store i8 0, i8* %14, align 1
  %730 = trunc i64 %729 to i32
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %736 = icmp eq i64 %729, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %29, align 1
  %738 = lshr i64 %729, 63
  %739 = trunc i64 %738 to i8
  store i8 %739, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v128 = select i1 %736, i64 233, i64 15
  %740 = add i64 %720, %.v128
  store i64 %740, i64* %3, align 8
  br i1 %736, label %block_.L_429fe0.block_.L_42a0c9_crit_edge, label %block_429fef

block_.L_429fe0.block_.L_42a0c9_crit_edge:        ; preds = %block_.L_429fe0
  %.pre107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre108 = bitcast %union.anon* %.pre103 to i32*
  br label %block_.L_42a0c9

block_429fef:                                     ; preds = %block_.L_429fe0
  %741 = add i64 %721, -8
  %742 = add i64 %740, 4
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %.pre104, align 8
  %745 = add i64 %744, 40
  %746 = add i64 %740, 8
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i64*
  %748 = load i64, i64* %747, align 8
  store i64 %748, i64* %.pre104, align 8
  %749 = add i64 %740, 11
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i8*
  store i8 32, i8* %750, align 1
  %751 = load i64, i64* %RBP.i, align 8
  %752 = add i64 %751, -32
  %753 = load i64, i64* %3, align 8
  %754 = add i64 %753, 7
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %752 to i32*
  store i32 1, i32* %755, align 4
  %756 = load i64, i64* %RBP.i, align 8
  %757 = add i64 %756, -28
  %758 = load i64, i64* %3, align 8
  %759 = add i64 %758, 7
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %757 to i32*
  store i32 1, i32* %760, align 4
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1049 = getelementptr inbounds %union.anon, %union.anon* %761, i64 0, i32 0
  %EAX.i1046 = bitcast %union.anon* %.pre103 to i32*
  %CL.i979 = bitcast %union.anon* %761 to i8*
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_42a008

block_.L_42a008:                                  ; preds = %block_.L_42a090, %block_429fef
  %762 = phi i64 [ %1015, %block_.L_42a090 ], [ %.pre80, %block_429fef ]
  %763 = load i64, i64* %RBP.i, align 8
  %764 = add i64 %763, -28
  %765 = add i64 %762, 3
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %.pre104, align 8
  %769 = add i64 %763, -24
  %770 = add i64 %762, 7
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i64*
  %772 = load i64, i64* %771, align 8
  store i64 %772, i64* %RCX.i1049, align 8
  %773 = add i64 %772, 24
  %774 = add i64 %762, 10
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i32*
  %776 = load i32, i32* %775, align 4
  %777 = sub i32 %767, %776
  %778 = icmp ult i32 %767, %776
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %14, align 1
  %780 = and i32 %777, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %21, align 1
  %785 = xor i32 %776, %767
  %786 = xor i32 %785, %777
  %787 = lshr i32 %786, 4
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  store i8 %789, i8* %26, align 1
  %790 = icmp eq i32 %777, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %29, align 1
  %792 = lshr i32 %777, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %32, align 1
  %794 = lshr i32 %767, 31
  %795 = lshr i32 %776, 31
  %796 = xor i32 %795, %794
  %797 = xor i32 %792, %794
  %798 = add nuw nsw i32 %797, %796
  %799 = icmp eq i32 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %38, align 1
  %801 = icmp ne i8 %793, 0
  %802 = xor i1 %801, %799
  %.demorgan112 = or i1 %790, %802
  %.v129 = select i1 %.demorgan112, i64 16, i64 155
  %803 = add i64 %762, %.v129
  store i64 %803, i64* %3, align 8
  br i1 %.demorgan112, label %block_42a018, label %block_.L_42a0a3

block_42a018:                                     ; preds = %block_.L_42a008
  %804 = add i64 %763, -16
  %805 = add i64 %803, 4
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i64*
  %807 = load i64, i64* %806, align 8
  store i64 %807, i64* %.pre104, align 8
  %808 = add i64 %803, 8
  store i64 %808, i64* %3, align 8
  %809 = load i32, i32* %766, align 4
  %810 = sext i32 %809 to i64
  store i64 %810, i64* %RCX.i1049, align 8
  %811 = shl nsw i64 %810, 2
  %812 = add i64 %811, %807
  %813 = add i64 %803, 11
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i32*
  %815 = load i32, i32* %814, align 4
  %816 = and i32 %815, 1
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  %818 = tail call i32 @llvm.ctpop.i32(i32 %816)
  %819 = trunc i32 %818 to i8
  %820 = xor i8 %819, 1
  store i8 %820, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %821 = icmp eq i32 %816, 0
  %822 = trunc i32 %816 to i8
  %823 = xor i8 %822, 1
  store i8 %823, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v150 = select i1 %821, i64 120, i64 23
  %824 = add i64 %803, %.v150
  store i64 %824, i64* %3, align 8
  br i1 %821, label %block_.L_42a090, label %block_42a02f

block_42a02f:                                     ; preds = %block_42a018
  %825 = add i64 %824, 4
  store i64 %825, i64* %3, align 8
  %826 = load i64, i64* %771, align 8
  store i64 %826, i64* %.pre104, align 8
  %827 = add i64 %826, 80
  %828 = add i64 %824, 8
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i64*
  %830 = load i64, i64* %829, align 8
  store i64 %830, i64* %.pre104, align 8
  %831 = add i64 %824, 11
  store i64 %831, i64* %3, align 8
  %832 = load i32, i32* %766, align 4
  %833 = add i32 %832, -1
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RCX.i1049, align 8
  %835 = icmp eq i32 %832, 0
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %14, align 1
  %837 = and i32 %833, 255
  %838 = tail call i32 @llvm.ctpop.i32(i32 %837)
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  store i8 %841, i8* %21, align 1
  %842 = xor i32 %833, %832
  %843 = lshr i32 %842, 4
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  store i8 %845, i8* %26, align 1
  %846 = icmp eq i32 %833, 0
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %29, align 1
  %848 = lshr i32 %833, 31
  %849 = trunc i32 %848 to i8
  store i8 %849, i8* %32, align 1
  %850 = lshr i32 %832, 31
  %851 = xor i32 %848, %850
  %852 = add nuw nsw i32 %851, %850
  %853 = icmp eq i32 %852, 2
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %38, align 1
  %855 = sext i32 %833 to i64
  store i64 %855, i64* %RDX.i1370, align 8
  %856 = add i64 %830, %855
  %857 = add i64 %824, 21
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i8*
  %859 = load i8, i8* %858, align 1
  %860 = sext i8 %859 to i64
  %861 = and i64 %860, 4294967295
  store i64 %861, i64* %RCX.i1049, align 8
  %862 = sext i8 %859 to i32
  %863 = add nsw i32 %862, -32
  %864 = icmp ult i8 %859, 32
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %14, align 1
  %866 = and i32 %863, 255
  %867 = tail call i32 @llvm.ctpop.i32(i32 %866)
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  %870 = xor i8 %869, 1
  store i8 %870, i8* %21, align 1
  %871 = xor i32 %863, %862
  %872 = lshr i32 %871, 4
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  store i8 %874, i8* %26, align 1
  %875 = icmp eq i32 %863, 0
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %29, align 1
  %877 = lshr i32 %863, 31
  %878 = trunc i32 %877 to i8
  store i8 %878, i8* %32, align 1
  %879 = lshr i32 %862, 31
  %880 = xor i32 %877, %879
  %881 = add nuw nsw i32 %880, %879
  %882 = icmp eq i32 %881, 2
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %38, align 1
  %.v151 = select i1 %875, i64 30, i64 43
  %884 = add i64 %824, %.v151
  store i64 %884, i64* %3, align 8
  br i1 %875, label %block_42a04d, label %block_.L_42a05a

block_42a04d:                                     ; preds = %block_42a02f
  store i64 46, i64* %.pre104, align 8
  %885 = add i64 %763, -52
  %886 = add i64 %884, 8
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i32*
  store i32 46, i32* %887, align 4
  %888 = load i64, i64* %3, align 8
  %889 = add i64 %888, 29
  store i64 %889, i64* %3, align 8
  br label %block_.L_42a072

block_.L_42a05a:                                  ; preds = %block_42a02f
  %890 = add i64 %884, 4
  store i64 %890, i64* %3, align 8
  %891 = load i64, i64* %771, align 8
  store i64 %891, i64* %.pre104, align 8
  %892 = add i64 %891, 80
  %893 = add i64 %884, 8
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i64*
  %895 = load i64, i64* %894, align 8
  store i64 %895, i64* %.pre104, align 8
  %896 = add i64 %884, 11
  store i64 %896, i64* %3, align 8
  %897 = load i32, i32* %766, align 4
  %898 = add i32 %897, -1
  %899 = zext i32 %898 to i64
  store i64 %899, i64* %RCX.i1049, align 8
  %900 = icmp eq i32 %897, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %14, align 1
  %902 = and i32 %898, 255
  %903 = tail call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  store i8 %906, i8* %21, align 1
  %907 = xor i32 %898, %897
  %908 = lshr i32 %907, 4
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  store i8 %910, i8* %26, align 1
  %911 = icmp eq i32 %898, 0
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %29, align 1
  %913 = lshr i32 %898, 31
  %914 = trunc i32 %913 to i8
  store i8 %914, i8* %32, align 1
  %915 = lshr i32 %897, 31
  %916 = xor i32 %913, %915
  %917 = add nuw nsw i32 %916, %915
  %918 = icmp eq i32 %917, 2
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %38, align 1
  %920 = sext i32 %898 to i64
  store i64 %920, i64* %RDX.i1370, align 8
  %921 = add i64 %895, %920
  %922 = add i64 %884, 21
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i8*
  %924 = load i8, i8* %923, align 1
  %925 = sext i8 %924 to i64
  %926 = and i64 %925, 4294967295
  store i64 %926, i64* %RCX.i1049, align 8
  %927 = add i64 %763, -52
  %928 = sext i8 %924 to i32
  %929 = add i64 %884, 24
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %927 to i32*
  store i32 %928, i32* %930, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_42a072

block_.L_42a072:                                  ; preds = %block_.L_42a05a, %block_42a04d
  %931 = phi i64 [ %.pre81, %block_.L_42a05a ], [ %889, %block_42a04d ]
  %932 = load i64, i64* %RBP.i, align 8
  %933 = add i64 %932, -52
  %934 = add i64 %931, 3
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  %936 = load i32, i32* %935, align 4
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %.pre104, align 8
  %938 = trunc i32 %936 to i8
  store i8 %938, i8* %CL.i979, align 1
  %939 = add i64 %932, -8
  %940 = add i64 %931, 9
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %RDX.i1370, align 8
  %943 = add i64 %942, 40
  %944 = add i64 %931, 13
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i64*
  %946 = load i64, i64* %945, align 8
  store i64 %946, i64* %RDX.i1370, align 8
  %947 = add i64 %932, -32
  %948 = add i64 %931, 16
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %.pre104, align 8
  %952 = add i32 %950, 1
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RSI.i1373, align 8
  %954 = icmp eq i32 %950, -1
  %955 = icmp eq i32 %952, 0
  %956 = or i1 %954, %955
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %14, align 1
  %958 = and i32 %952, 255
  %959 = tail call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  store i8 %962, i8* %21, align 1
  %963 = xor i32 %952, %950
  %964 = lshr i32 %963, 4
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  store i8 %966, i8* %26, align 1
  %967 = zext i1 %955 to i8
  store i8 %967, i8* %29, align 1
  %968 = lshr i32 %952, 31
  %969 = trunc i32 %968 to i8
  store i8 %969, i8* %32, align 1
  %970 = lshr i32 %950, 31
  %971 = xor i32 %968, %970
  %972 = add nuw nsw i32 %971, %968
  %973 = icmp eq i32 %972, 2
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %38, align 1
  %975 = add i64 %931, 24
  store i64 %975, i64* %3, align 8
  store i32 %952, i32* %949, align 4
  %976 = load i32, i32* %EAX.i1046, align 4
  %977 = load i64, i64* %3, align 8
  %978 = sext i32 %976 to i64
  store i64 %978, i64* %RDI.i1376, align 8
  %979 = load i64, i64* %RDX.i1370, align 8
  %980 = add i64 %979, %978
  %981 = load i8, i8* %CL.i979, align 1
  %982 = add i64 %977, 6
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %980 to i8*
  store i8 %981, i8* %983, align 1
  %.pre82 = load i64, i64* %3, align 8
  %.pre83 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a090

block_.L_42a090:                                  ; preds = %block_.L_42a072, %block_42a018
  %984 = phi i64 [ %.pre83, %block_.L_42a072 ], [ %763, %block_42a018 ]
  %985 = phi i64 [ %.pre82, %block_.L_42a072 ], [ %824, %block_42a018 ]
  %986 = add i64 %984, -28
  %987 = add i64 %985, 8
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = add i32 %989, 1
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %.pre104, align 8
  %992 = icmp eq i32 %989, -1
  %993 = icmp eq i32 %990, 0
  %994 = or i1 %992, %993
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %14, align 1
  %996 = and i32 %990, 255
  %997 = tail call i32 @llvm.ctpop.i32(i32 %996)
  %998 = trunc i32 %997 to i8
  %999 = and i8 %998, 1
  %1000 = xor i8 %999, 1
  store i8 %1000, i8* %21, align 1
  %1001 = xor i32 %990, %989
  %1002 = lshr i32 %1001, 4
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  store i8 %1004, i8* %26, align 1
  %1005 = zext i1 %993 to i8
  store i8 %1005, i8* %29, align 1
  %1006 = lshr i32 %990, 31
  %1007 = trunc i32 %1006 to i8
  store i8 %1007, i8* %32, align 1
  %1008 = lshr i32 %989, 31
  %1009 = xor i32 %1006, %1008
  %1010 = add nuw nsw i32 %1009, %1006
  %1011 = icmp eq i32 %1010, 2
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %38, align 1
  %1013 = add i64 %985, 14
  store i64 %1013, i64* %3, align 8
  store i32 %990, i32* %988, align 4
  %1014 = load i64, i64* %3, align 8
  %1015 = add i64 %1014, -150
  store i64 %1015, i64* %3, align 8
  br label %block_.L_42a008

block_.L_42a0a3:                                  ; preds = %block_.L_42a008
  %1016 = add i64 %763, -8
  %1017 = add i64 %803, 4
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i64*
  %1019 = load i64, i64* %1018, align 8
  store i64 %1019, i64* %.pre104, align 8
  %1020 = add i64 %1019, 40
  %1021 = add i64 %803, 8
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i64*
  %1023 = load i64, i64* %1022, align 8
  store i64 %1023, i64* %.pre104, align 8
  %1024 = add i64 %763, -32
  %1025 = add i64 %803, 12
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  %1028 = sext i32 %1027 to i64
  store i64 %1028, i64* %RCX.i1049, align 8
  %1029 = add i64 %1023, %1028
  %1030 = add i64 %803, 16
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i8*
  store i8 0, i8* %1031, align 1
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -8
  %1034 = load i64, i64* %3, align 8
  %1035 = add i64 %1034, 4
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1033 to i64*
  %1037 = load i64, i64* %1036, align 8
  store i64 %1037, i64* %.pre104, align 8
  %1038 = add i64 %1037, 456
  %1039 = add i64 %1034, 10
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i32*
  %1041 = load i32, i32* %1040, align 4
  %1042 = or i32 %1041, 8192
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  %1044 = and i32 %1041, 255
  %1045 = tail call i32 @llvm.ctpop.i32(i32 %1044)
  %1046 = trunc i32 %1045 to i8
  %1047 = and i8 %1046, 1
  %1048 = xor i8 %1047, 1
  store i8 %1048, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %1049 = lshr i32 %1041, 31
  %1050 = trunc i32 %1049 to i8
  store i8 %1050, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1051 = add i64 %1034, 22
  store i64 %1051, i64* %3, align 8
  store i32 %1042, i32* %1040, align 4
  %.pre84 = load i64, i64* %RBP.i, align 8
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_42a0c9

block_.L_42a0c9:                                  ; preds = %block_.L_429fe0.block_.L_42a0c9_crit_edge, %block_.L_42a0a3
  %EAX.i912.pre-phi = phi i32* [ %.pre108, %block_.L_429fe0.block_.L_42a0c9_crit_edge ], [ %EAX.i1046, %block_.L_42a0a3 ]
  %RCX.i915.pre-phi = phi i64* [ %.pre107, %block_.L_429fe0.block_.L_42a0c9_crit_edge ], [ %RCX.i1049, %block_.L_42a0a3 ]
  %1052 = phi i64 [ %740, %block_.L_429fe0.block_.L_42a0c9_crit_edge ], [ %.pre85, %block_.L_42a0a3 ]
  %1053 = phi i64 [ %721, %block_.L_429fe0.block_.L_42a0c9_crit_edge ], [ %.pre84, %block_.L_42a0a3 ]
  %EDX.i897.pre-phi = bitcast %union.anon* %49 to i32*
  %1054 = add i64 %1053, -32
  %1055 = add i64 %1052, 7
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  store i32 1, i32* %1056, align 4
  %1057 = load i64, i64* %RBP.i, align 8
  %1058 = add i64 %1057, -28
  %1059 = load i64, i64* %3, align 8
  %1060 = add i64 %1059, 7
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1058 to i32*
  store i32 1, i32* %1061, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_42a0d7

block_.L_42a0d7:                                  ; preds = %block_.L_42a11a, %block_.L_42a0c9
  %1062 = phi i64 [ %1205, %block_.L_42a11a ], [ %.pre86, %block_.L_42a0c9 ]
  %1063 = load i64, i64* %RBP.i, align 8
  %1064 = add i64 %1063, -28
  %1065 = add i64 %1062, 3
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %.pre104, align 8
  %1069 = add i64 %1063, -24
  %1070 = add i64 %1062, 7
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i64*
  %1072 = load i64, i64* %1071, align 8
  store i64 %1072, i64* %RCX.i915.pre-phi, align 8
  %1073 = add i64 %1072, 24
  %1074 = add i64 %1062, 10
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = sub i32 %1067, %1076
  %1078 = icmp ult i32 %1067, %1076
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %14, align 1
  %1080 = and i32 %1077, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %21, align 1
  %1085 = xor i32 %1076, %1067
  %1086 = xor i32 %1085, %1077
  %1087 = lshr i32 %1086, 4
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  store i8 %1089, i8* %26, align 1
  %1090 = icmp eq i32 %1077, 0
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %29, align 1
  %1092 = lshr i32 %1077, 31
  %1093 = trunc i32 %1092 to i8
  store i8 %1093, i8* %32, align 1
  %1094 = lshr i32 %1067, 31
  %1095 = lshr i32 %1076, 31
  %1096 = xor i32 %1095, %1094
  %1097 = xor i32 %1092, %1094
  %1098 = add nuw nsw i32 %1097, %1096
  %1099 = icmp eq i32 %1098, 2
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %38, align 1
  %1101 = icmp ne i8 %1093, 0
  %1102 = xor i1 %1101, %1099
  %.demorgan113 = or i1 %1090, %1102
  %.v130 = select i1 %.demorgan113, i64 16, i64 86
  %1103 = add i64 %1062, %.v130
  store i64 %1103, i64* %3, align 8
  br i1 %.demorgan113, label %block_42a0e7, label %block_.L_42a12d

block_42a0e7:                                     ; preds = %block_.L_42a0d7
  %1104 = add i64 %1063, -16
  %1105 = add i64 %1103, 4
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i64*
  %1107 = load i64, i64* %1106, align 8
  store i64 %1107, i64* %.pre104, align 8
  %1108 = add i64 %1103, 8
  store i64 %1108, i64* %3, align 8
  %1109 = load i32, i32* %1066, align 4
  %1110 = sext i32 %1109 to i64
  store i64 %1110, i64* %RCX.i915.pre-phi, align 8
  %1111 = shl nsw i64 %1110, 2
  %1112 = add i64 %1111, %1107
  %1113 = add i64 %1103, 11
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = and i32 %1115, 1
  %1117 = zext i32 %1116 to i64
  store i64 %1117, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1116)
  %1119 = trunc i32 %1118 to i8
  %1120 = xor i8 %1119, 1
  store i8 %1120, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1121 = icmp eq i32 %1116, 0
  %1122 = trunc i32 %1116 to i8
  %1123 = xor i8 %1122, 1
  store i8 %1123, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v149 = select i1 %1121, i64 51, i64 23
  %1124 = add i64 %1103, %.v149
  store i64 %1124, i64* %3, align 8
  br i1 %1121, label %block_.L_42a11a, label %block_42a0fe

block_42a0fe:                                     ; preds = %block_42a0e7
  %1125 = add i64 %1124, 3
  store i64 %1125, i64* %3, align 8
  %1126 = load i32, i32* %1066, align 4
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %.pre104, align 8
  %1128 = add i64 %1063, -8
  %1129 = add i64 %1124, 7
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to i64*
  %1131 = load i64, i64* %1130, align 8
  store i64 %1131, i64* %RCX.i915.pre-phi, align 8
  %1132 = add i64 %1131, 72
  %1133 = add i64 %1124, 11
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i64*
  %1135 = load i64, i64* %1134, align 8
  store i64 %1135, i64* %RCX.i915.pre-phi, align 8
  %1136 = add i64 %1063, -32
  %1137 = add i64 %1124, 14
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RDX.i1370, align 8
  %1141 = add i32 %1139, 1
  %1142 = zext i32 %1141 to i64
  store i64 %1142, i64* %RSI.i1373, align 8
  %1143 = icmp eq i32 %1139, -1
  %1144 = icmp eq i32 %1141, 0
  %1145 = or i1 %1143, %1144
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %14, align 1
  %1147 = and i32 %1141, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147)
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %21, align 1
  %1152 = xor i32 %1141, %1139
  %1153 = lshr i32 %1152, 4
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %26, align 1
  %1156 = zext i1 %1144 to i8
  store i8 %1156, i8* %29, align 1
  %1157 = lshr i32 %1141, 31
  %1158 = trunc i32 %1157 to i8
  store i8 %1158, i8* %32, align 1
  %1159 = lshr i32 %1139, 31
  %1160 = xor i32 %1157, %1159
  %1161 = add nuw nsw i32 %1160, %1157
  %1162 = icmp eq i32 %1161, 2
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %38, align 1
  %1164 = add i64 %1124, 22
  store i64 %1164, i64* %3, align 8
  store i32 %1141, i32* %1138, align 4
  %1165 = load i32, i32* %EDX.i897.pre-phi, align 4
  %1166 = load i64, i64* %3, align 8
  %1167 = sext i32 %1165 to i64
  store i64 %1167, i64* %RDI.i1376, align 8
  %1168 = load i64, i64* %RCX.i915.pre-phi, align 8
  %1169 = shl nsw i64 %1167, 2
  %1170 = add i64 %1168, %1169
  %1171 = load i32, i32* %EAX.i912.pre-phi, align 4
  %1172 = add i64 %1166, 6
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1170 to i32*
  store i32 %1171, i32* %1173, align 4
  %.pre87 = load i64, i64* %3, align 8
  %.pre88 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a11a

block_.L_42a11a:                                  ; preds = %block_42a0fe, %block_42a0e7
  %1174 = phi i64 [ %.pre88, %block_42a0fe ], [ %1063, %block_42a0e7 ]
  %1175 = phi i64 [ %.pre87, %block_42a0fe ], [ %1124, %block_42a0e7 ]
  %1176 = add i64 %1174, -28
  %1177 = add i64 %1175, 8
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  %1179 = load i32, i32* %1178, align 4
  %1180 = add i32 %1179, 1
  %1181 = zext i32 %1180 to i64
  store i64 %1181, i64* %.pre104, align 8
  %1182 = icmp eq i32 %1179, -1
  %1183 = icmp eq i32 %1180, 0
  %1184 = or i1 %1182, %1183
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %14, align 1
  %1186 = and i32 %1180, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %21, align 1
  %1191 = xor i32 %1180, %1179
  %1192 = lshr i32 %1191, 4
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  store i8 %1194, i8* %26, align 1
  %1195 = zext i1 %1183 to i8
  store i8 %1195, i8* %29, align 1
  %1196 = lshr i32 %1180, 31
  %1197 = trunc i32 %1196 to i8
  store i8 %1197, i8* %32, align 1
  %1198 = lshr i32 %1179, 31
  %1199 = xor i32 %1196, %1198
  %1200 = add nuw nsw i32 %1199, %1196
  %1201 = icmp eq i32 %1200, 2
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %38, align 1
  %1203 = add i64 %1175, 14
  store i64 %1203, i64* %3, align 8
  store i32 %1180, i32* %1178, align 4
  %1204 = load i64, i64* %3, align 8
  %1205 = add i64 %1204, -81
  store i64 %1205, i64* %3, align 8
  br label %block_.L_42a0d7

block_.L_42a12d:                                  ; preds = %block_.L_42a0d7
  store i64 ptrtoint (%G__0x45881d_type* @G__0x45881d to i64), i64* %RSI.i1373, align 8
  %1206 = add i64 %1063, -8
  %1207 = add i64 %1103, 14
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i64*
  %1209 = load i64, i64* %1208, align 8
  store i64 %1209, i64* %.pre104, align 8
  %1210 = add i64 %1209, 456
  %1211 = add i64 %1103, 20
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i32*
  %1213 = load i32, i32* %1212, align 4
  %1214 = or i32 %1213, 256
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %RCX.i915.pre-phi, align 8
  store i8 0, i8* %14, align 1
  %1216 = and i32 %1213, 255
  %1217 = tail call i32 @llvm.ctpop.i32(i32 %1216)
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  %1220 = xor i8 %1219, 1
  store i8 %1220, i8* %21, align 1
  store i8 0, i8* %29, align 1
  %1221 = lshr i32 %1213, 31
  %1222 = trunc i32 %1221 to i8
  store i8 %1222, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1223 = add i64 %1103, 32
  store i64 %1223, i64* %3, align 8
  store i32 %1214, i32* %1212, align 4
  %1224 = load i64, i64* %RBP.i, align 8
  %1225 = add i64 %1224, -24
  %1226 = load i64, i64* %3, align 8
  %1227 = add i64 %1226, 4
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1225 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i64 %1229, i64* %RDI.i1376, align 8
  %1230 = add i64 %1226, 15859
  %1231 = add i64 %1226, 9
  %1232 = load i64, i64* %6, align 8
  %1233 = add i64 %1232, -8
  %1234 = inttoptr i64 %1233 to i64*
  store i64 %1231, i64* %1234, align 8
  store i64 %1233, i64* %6, align 8
  store i64 %1230, i64* %3, align 8
  %call2_42a151 = tail call %struct.Memory* @sub_42df40.MSAGetGC(%struct.State* nonnull %0, i64 %1230, %struct.Memory* %2)
  %1235 = load i64, i64* %RBP.i, align 8
  %1236 = add i64 %1235, -40
  %1237 = load i64, i64* %.pre104, align 8
  %1238 = load i64, i64* %3, align 8
  %1239 = add i64 %1238, 4
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1236 to i64*
  store i64 %1237, i64* %1240, align 8
  %1241 = load i64, i64* %.pre104, align 8
  %1242 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1243 = trunc i64 %1241 to i32
  %1244 = and i32 %1243, 255
  %1245 = tail call i32 @llvm.ctpop.i32(i32 %1244)
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = xor i8 %1247, 1
  store i8 %1248, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1249 = icmp eq i64 %1241, 0
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %29, align 1
  %1251 = lshr i64 %1241, 63
  %1252 = trunc i64 %1251 to i8
  store i8 %1252, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v131 = select i1 %1249, i64 443, i64 10
  %1253 = add i64 %1242, %.v131
  store i64 %1253, i64* %3, align 8
  br i1 %1249, label %block_.L_42a12d.block_.L_42a315_crit_edge, label %block_42a164

block_.L_42a12d.block_.L_42a315_crit_edge:        ; preds = %block_.L_42a12d
  %.pre93 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a315

block_42a164:                                     ; preds = %block_.L_42a12d
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RDI.i1376, align 8
  store i64 896, i64* %RSI.i1373, align 8
  %1254 = load i64, i64* %RBP.i, align 8
  %1255 = add i64 %1254, -8
  %1256 = add i64 %1253, 19
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i64*
  %1258 = load i64, i64* %1257, align 8
  store i64 %1258, i64* %.pre104, align 8
  %1259 = add i64 %1258, 136
  %1260 = add i64 %1253, 25
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i32*
  %1262 = load i32, i32* %1261, align 4
  %1263 = add i32 %1262, 1
  %1264 = zext i32 %1263 to i64
  store i64 %1264, i64* %RCX.i915.pre-phi, align 8
  %1265 = icmp eq i32 %1263, 0
  %1266 = zext i1 %1265 to i8
  %1267 = lshr i32 %1263, 31
  %1268 = trunc i32 %1267 to i8
  %1269 = sext i32 %1263 to i64
  %1270 = shl nsw i64 %1269, 2
  store i64 %1270, i64* %.pre104, align 8
  store i8 %1268, i8* %14, align 1
  %1271 = trunc i64 %1270 to i32
  %1272 = and i32 %1271, 252
  %1273 = tail call i32 @llvm.ctpop.i32(i32 %1272)
  %1274 = trunc i32 %1273 to i8
  %1275 = and i8 %1274, 1
  %1276 = xor i8 %1275, 1
  store i8 %1276, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1266, i8* %29, align 1
  %1277 = lshr i64 %1269, 61
  %1278 = trunc i64 %1277 to i8
  %1279 = and i8 %1278, 1
  store i8 %1279, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1270, i64* %RDX.i1370, align 8
  %1280 = add i64 %1253, 114428
  %1281 = add i64 %1253, 43
  %1282 = load i64, i64* %6, align 8
  %1283 = add i64 %1282, -8
  %1284 = inttoptr i64 %1283 to i64*
  store i64 %1281, i64* %1284, align 8
  store i64 %1283, i64* %6, align 8
  store i64 %1280, i64* %3, align 8
  %call2_42a18a = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %1280, %struct.Memory* %call2_42a151)
  %1285 = load i64, i64* %RBP.i, align 8
  %1286 = add i64 %1285, -8
  %1287 = load i64, i64* %3, align 8
  %1288 = add i64 %1287, 4
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1286 to i64*
  %1290 = load i64, i64* %1289, align 8
  store i64 %1290, i64* %RDX.i1370, align 8
  %1291 = add i64 %1290, 96
  %1292 = load i64, i64* %.pre104, align 8
  %1293 = add i64 %1287, 8
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1291 to i64*
  store i64 %1292, i64* %1294, align 8
  %1295 = load i64, i64* %RBP.i, align 8
  %1296 = add i64 %1295, -32
  %1297 = load i64, i64* %3, align 8
  %1298 = add i64 %1297, 7
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1296 to i32*
  store i32 1, i32* %1299, align 4
  %1300 = load i64, i64* %RBP.i, align 8
  %1301 = add i64 %1300, -28
  %1302 = load i64, i64* %3, align 8
  %1303 = add i64 %1302, 7
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1301 to i32*
  store i32 1, i32* %1304, align 4
  %1305 = bitcast %union.anon* %.pre103 to i64**
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_42a1a5

block_.L_42a1a5:                                  ; preds = %block_.L_42a2fd, %block_42a164
  %1306 = phi i64 [ %.pre89, %block_42a164 ], [ %1867, %block_.L_42a2fd ]
  %1307 = load i64, i64* %RBP.i, align 8
  %1308 = add i64 %1307, -28
  %1309 = add i64 %1306, 3
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = zext i32 %1311 to i64
  store i64 %1312, i64* %.pre104, align 8
  %1313 = add i64 %1307, -24
  %1314 = add i64 %1306, 7
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i64*
  %1316 = load i64, i64* %1315, align 8
  store i64 %1316, i64* %RCX.i915.pre-phi, align 8
  %1317 = add i64 %1316, 24
  %1318 = add i64 %1306, 10
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i32*
  %1320 = load i32, i32* %1319, align 4
  %1321 = sub i32 %1311, %1320
  %1322 = icmp ult i32 %1311, %1320
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %14, align 1
  %1324 = and i32 %1321, 255
  %1325 = tail call i32 @llvm.ctpop.i32(i32 %1324)
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = xor i8 %1327, 1
  store i8 %1328, i8* %21, align 1
  %1329 = xor i32 %1320, %1311
  %1330 = xor i32 %1329, %1321
  %1331 = lshr i32 %1330, 4
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  store i8 %1333, i8* %26, align 1
  %1334 = icmp eq i32 %1321, 0
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %29, align 1
  %1336 = lshr i32 %1321, 31
  %1337 = trunc i32 %1336 to i8
  store i8 %1337, i8* %32, align 1
  %1338 = lshr i32 %1311, 31
  %1339 = lshr i32 %1320, 31
  %1340 = xor i32 %1339, %1338
  %1341 = xor i32 %1336, %1338
  %1342 = add nuw nsw i32 %1341, %1340
  %1343 = icmp eq i32 %1342, 2
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %38, align 1
  %1345 = icmp ne i8 %1337, 0
  %1346 = xor i1 %1345, %1343
  %.demorgan114 = or i1 %1334, %1346
  %.v132 = select i1 %.demorgan114, i64 16, i64 363
  %1347 = add i64 %1306, %.v132
  store i64 %1347, i64* %3, align 8
  br i1 %.demorgan114, label %block_42a1b5, label %block_.L_42a310

block_42a1b5:                                     ; preds = %block_.L_42a1a5
  %1348 = add i64 %1307, -16
  %1349 = add i64 %1347, 4
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i64*
  %1351 = load i64, i64* %1350, align 8
  store i64 %1351, i64* %.pre104, align 8
  %1352 = add i64 %1347, 8
  store i64 %1352, i64* %3, align 8
  %1353 = load i32, i32* %1310, align 4
  %1354 = sext i32 %1353 to i64
  store i64 %1354, i64* %RCX.i915.pre-phi, align 8
  %1355 = shl nsw i64 %1354, 2
  %1356 = add i64 %1355, %1351
  %1357 = add i64 %1347, 11
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i32*
  %1359 = load i32, i32* %1358, align 4
  %1360 = and i32 %1359, 1
  %1361 = zext i32 %1360 to i64
  store i64 %1361, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1360)
  %1363 = trunc i32 %1362 to i8
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1365 = icmp eq i32 %1360, 0
  %1366 = trunc i32 %1360 to i8
  %1367 = xor i8 %1366, 1
  store i8 %1367, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v145 = select i1 %1365, i64 328, i64 23
  %1368 = add i64 %1347, %.v145
  store i64 %1368, i64* %3, align 8
  br i1 %1365, label %block_.L_42a2fd, label %block_42a1cc

block_42a1cc:                                     ; preds = %block_42a1b5
  %1369 = add i64 %1368, -166588
  %1370 = add i64 %1368, 5
  %1371 = load i64, i64* %6, align 8
  %1372 = add i64 %1371, -8
  %1373 = inttoptr i64 %1372 to i64*
  store i64 %1370, i64* %1373, align 8
  store i64 %1372, i64* %6, align 8
  store i64 %1369, i64* %3, align 8
  %call2_42a1cc = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %1369, %struct.Memory* %call2_42a18a)
  %1374 = load i64*, i64** %1305, align 8
  %1375 = load i64, i64* %3, align 8
  %1376 = add i64 %1375, 3
  store i64 %1376, i64* %3, align 8
  %1377 = load i64, i64* %1374, align 8
  store i64 %1377, i64* %.pre104, align 8
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -40
  %1380 = add i64 %1375, 7
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i64*
  %1382 = load i64, i64* %1381, align 8
  store i64 %1382, i64* %RCX.i915.pre-phi, align 8
  %1383 = add i64 %1378, -28
  %1384 = add i64 %1375, 10
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = add i32 %1386, -1
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RDX.i1370, align 8
  %1389 = icmp eq i32 %1386, 0
  %1390 = zext i1 %1389 to i8
  store i8 %1390, i8* %14, align 1
  %1391 = and i32 %1387, 255
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391)
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  store i8 %1395, i8* %21, align 1
  %1396 = xor i32 %1387, %1386
  %1397 = lshr i32 %1396, 4
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  store i8 %1399, i8* %26, align 1
  %1400 = icmp eq i32 %1387, 0
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %29, align 1
  %1402 = lshr i32 %1387, 31
  %1403 = trunc i32 %1402 to i8
  store i8 %1403, i8* %32, align 1
  %1404 = lshr i32 %1386, 31
  %1405 = xor i32 %1402, %1404
  %1406 = add nuw nsw i32 %1405, %1404
  %1407 = icmp eq i32 %1406, 2
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %38, align 1
  %1409 = sext i32 %1387 to i64
  store i64 %1409, i64* %RSI.i1373, align 8
  %1410 = add i64 %1382, %1409
  %1411 = add i64 %1375, 20
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1410 to i8*
  %1413 = load i8, i8* %1412, align 1
  %1414 = sext i8 %1413 to i64
  %1415 = and i64 %1414, 4294967295
  store i64 %1415, i64* %RDX.i1370, align 8
  %1416 = sext i8 %1413 to i64
  store i64 %1416, i64* %RCX.i915.pre-phi, align 8
  %1417 = shl nsw i64 %1416, 1
  %1418 = add i64 %1377, %1417
  %1419 = add i64 %1375, 27
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i16*
  %1421 = load i16, i16* %1420, align 2
  %1422 = and i16 %1421, 2048
  %1423 = zext i16 %1422 to i64
  store i64 %1423, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1424 = icmp eq i16 %1422, 0
  %.lobit = lshr exact i16 %1422, 11
  %1425 = trunc i16 %.lobit to i8
  %1426 = xor i8 %1425, 1
  store i8 %1426, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v146 = select i1 %1424, i64 82, i64 42
  %1427 = add i64 %1375, %.v146
  store i64 %1427, i64* %3, align 8
  br i1 %1424, label %block_.L_42a223, label %block_42a1fb

block_42a1fb:                                     ; preds = %block_42a1cc
  %1428 = load i64, i64* %RBP.i, align 8
  %1429 = add i64 %1428, -40
  %1430 = add i64 %1427, 4
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i64*
  %1432 = load i64, i64* %1431, align 8
  store i64 %1432, i64* %.pre104, align 8
  %1433 = add i64 %1428, -28
  %1434 = add i64 %1427, 7
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i32*
  %1436 = load i32, i32* %1435, align 4
  %1437 = add i32 %1436, -1
  %1438 = zext i32 %1437 to i64
  store i64 %1438, i64* %RCX.i915.pre-phi, align 8
  %1439 = icmp eq i32 %1436, 0
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %14, align 1
  %1441 = and i32 %1437, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %21, align 1
  %1446 = xor i32 %1437, %1436
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %26, align 1
  %1450 = icmp eq i32 %1437, 0
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %29, align 1
  %1452 = lshr i32 %1437, 31
  %1453 = trunc i32 %1452 to i8
  store i8 %1453, i8* %32, align 1
  %1454 = lshr i32 %1436, 31
  %1455 = xor i32 %1452, %1454
  %1456 = add nuw nsw i32 %1455, %1454
  %1457 = icmp eq i32 %1456, 2
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %38, align 1
  %1459 = sext i32 %1437 to i64
  store i64 %1459, i64* %RDX.i1370, align 8
  %1460 = add i64 %1432, %1459
  %1461 = add i64 %1427, 17
  store i64 %1461, i64* %3, align 8
  %1462 = inttoptr i64 %1460 to i8*
  %1463 = load i8, i8* %1462, align 1
  %1464 = sext i8 %1463 to i32
  %1465 = add nsw i32 %1464, -48
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RCX.i915.pre-phi, align 8
  %1467 = icmp ult i8 %1463, 48
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %14, align 1
  %1469 = and i32 %1465, 255
  %1470 = tail call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  store i8 %1473, i8* %21, align 1
  %1474 = xor i8 %1463, 16
  %1475 = zext i8 %1474 to i32
  %1476 = xor i32 %1475, %1465
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  store i8 %1479, i8* %26, align 1
  %1480 = icmp eq i32 %1465, 0
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %29, align 1
  %1482 = lshr i32 %1465, 31
  %1483 = trunc i32 %1482 to i8
  store i8 %1483, i8* %32, align 1
  %1484 = lshr i32 %1464, 31
  %1485 = xor i32 %1482, %1484
  %1486 = add nuw nsw i32 %1485, %1484
  %1487 = icmp eq i32 %1486, 2
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %38, align 1
  %1489 = add i64 %1428, -8
  %1490 = add i64 %1427, 24
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i64*
  %1492 = load i64, i64* %1491, align 8
  store i64 %1492, i64* %.pre104, align 8
  %1493 = add i64 %1492, 96
  %1494 = add i64 %1427, 28
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i64*
  %1496 = load i64, i64* %1495, align 8
  store i64 %1496, i64* %.pre104, align 8
  %1497 = load i64, i64* %RBP.i, align 8
  %1498 = add i64 %1497, -32
  %1499 = add i64 %1427, 32
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = sext i32 %1501 to i64
  store i64 %1502, i64* %RDX.i1370, align 8
  %1503 = shl nsw i64 %1502, 2
  %1504 = add i64 %1503, %1496
  %1505 = add i64 %1427, 35
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  store i32 %1465, i32* %1506, align 4
  %1507 = load i64, i64* %3, align 8
  %1508 = add i64 %1507, 214
  br label %block_.L_42a2f4

block_.L_42a223:                                  ; preds = %block_42a1cc
  %1509 = add i64 %1427, -166675
  %1510 = add i64 %1427, 5
  %1511 = load i64, i64* %6, align 8
  %1512 = add i64 %1511, -8
  %1513 = inttoptr i64 %1512 to i64*
  store i64 %1510, i64* %1513, align 8
  store i64 %1512, i64* %6, align 8
  store i64 %1509, i64* %3, align 8
  %call2_42a223 = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %1509, %struct.Memory* %call2_42a18a)
  %1514 = load i64*, i64** %1305, align 8
  %1515 = load i64, i64* %3, align 8
  %1516 = add i64 %1515, 3
  store i64 %1516, i64* %3, align 8
  %1517 = load i64, i64* %1514, align 8
  store i64 %1517, i64* %.pre104, align 8
  %1518 = load i64, i64* %RBP.i, align 8
  %1519 = add i64 %1518, -40
  %1520 = add i64 %1515, 7
  store i64 %1520, i64* %3, align 8
  %1521 = inttoptr i64 %1519 to i64*
  %1522 = load i64, i64* %1521, align 8
  store i64 %1522, i64* %RCX.i915.pre-phi, align 8
  %1523 = add i64 %1518, -28
  %1524 = add i64 %1515, 10
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = add i32 %1526, -1
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %RDX.i1370, align 8
  %1529 = icmp eq i32 %1526, 0
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %14, align 1
  %1531 = and i32 %1527, 255
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %21, align 1
  %1536 = xor i32 %1527, %1526
  %1537 = lshr i32 %1536, 4
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  store i8 %1539, i8* %26, align 1
  %1540 = icmp eq i32 %1527, 0
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %29, align 1
  %1542 = lshr i32 %1527, 31
  %1543 = trunc i32 %1542 to i8
  store i8 %1543, i8* %32, align 1
  %1544 = lshr i32 %1526, 31
  %1545 = xor i32 %1542, %1544
  %1546 = add nuw nsw i32 %1545, %1544
  %1547 = icmp eq i32 %1546, 2
  %1548 = zext i1 %1547 to i8
  store i8 %1548, i8* %38, align 1
  %1549 = sext i32 %1527 to i64
  store i64 %1549, i64* %RSI.i1373, align 8
  %1550 = add i64 %1522, %1549
  %1551 = add i64 %1515, 20
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i8*
  %1553 = load i8, i8* %1552, align 1
  %1554 = sext i8 %1553 to i64
  %1555 = and i64 %1554, 4294967295
  store i64 %1555, i64* %RDX.i1370, align 8
  %1556 = sext i8 %1553 to i64
  store i64 %1556, i64* %RCX.i915.pre-phi, align 8
  %1557 = shl nsw i64 %1556, 1
  %1558 = add i64 %1517, %1557
  %1559 = add i64 %1515, 27
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i16*
  %1561 = load i16, i16* %1560, align 2
  %1562 = and i16 %1561, 512
  %1563 = zext i16 %1562 to i64
  store i64 %1563, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1564 = icmp eq i16 %1562, 0
  %.lobit115 = lshr exact i16 %1562, 9
  %1565 = trunc i16 %.lobit115 to i8
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v147 = select i1 %1564, i64 85, i64 42
  %1567 = add i64 %1515, %.v147
  store i64 %1567, i64* %3, align 8
  br i1 %1564, label %block_.L_42a27d, label %block_42a252

block_42a252:                                     ; preds = %block_.L_42a223
  %1568 = load i64, i64* %RBP.i, align 8
  %1569 = add i64 %1568, -40
  %1570 = add i64 %1567, 4
  store i64 %1570, i64* %3, align 8
  %1571 = inttoptr i64 %1569 to i64*
  %1572 = load i64, i64* %1571, align 8
  store i64 %1572, i64* %.pre104, align 8
  %1573 = add i64 %1568, -28
  %1574 = add i64 %1567, 7
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i32*
  %1576 = load i32, i32* %1575, align 4
  %1577 = add i32 %1576, -1
  %1578 = zext i32 %1577 to i64
  store i64 %1578, i64* %RCX.i915.pre-phi, align 8
  %1579 = icmp eq i32 %1576, 0
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %14, align 1
  %1581 = and i32 %1577, 255
  %1582 = tail call i32 @llvm.ctpop.i32(i32 %1581)
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  store i8 %1585, i8* %21, align 1
  %1586 = xor i32 %1577, %1576
  %1587 = lshr i32 %1586, 4
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  store i8 %1589, i8* %26, align 1
  %1590 = icmp eq i32 %1577, 0
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %29, align 1
  %1592 = lshr i32 %1577, 31
  %1593 = trunc i32 %1592 to i8
  store i8 %1593, i8* %32, align 1
  %1594 = lshr i32 %1576, 31
  %1595 = xor i32 %1592, %1594
  %1596 = add nuw nsw i32 %1595, %1594
  %1597 = icmp eq i32 %1596, 2
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %38, align 1
  %1599 = sext i32 %1577 to i64
  store i64 %1599, i64* %RDX.i1370, align 8
  %1600 = add i64 %1572, %1599
  %1601 = add i64 %1567, 17
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i8*
  %1603 = load i8, i8* %1602, align 1
  %1604 = sext i8 %1603 to i32
  %1605 = add nsw i32 %1604, -97
  %1606 = lshr i32 %1605, 31
  %1607 = add nsw i32 %1604, -87
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RCX.i915.pre-phi, align 8
  %1609 = icmp ugt i32 %1605, -11
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %14, align 1
  %1611 = and i32 %1607, 255
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = xor i32 %1607, %1605
  %1617 = lshr i32 %1616, 4
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  store i8 %1619, i8* %26, align 1
  %1620 = icmp eq i32 %1607, 0
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %29, align 1
  %1622 = lshr i32 %1607, 31
  %1623 = trunc i32 %1622 to i8
  store i8 %1623, i8* %32, align 1
  %1624 = xor i32 %1622, %1606
  %1625 = add nuw nsw i32 %1624, %1622
  %1626 = icmp eq i32 %1625, 2
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %38, align 1
  %1628 = load i64, i64* %RBP.i, align 8
  %1629 = add i64 %1628, -8
  %1630 = add i64 %1567, 27
  store i64 %1630, i64* %3, align 8
  %1631 = inttoptr i64 %1629 to i64*
  %1632 = load i64, i64* %1631, align 8
  store i64 %1632, i64* %.pre104, align 8
  %1633 = add i64 %1632, 96
  %1634 = add i64 %1567, 31
  store i64 %1634, i64* %3, align 8
  %1635 = inttoptr i64 %1633 to i64*
  %1636 = load i64, i64* %1635, align 8
  store i64 %1636, i64* %.pre104, align 8
  %1637 = add i64 %1628, -32
  %1638 = add i64 %1567, 35
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = sext i32 %1640 to i64
  store i64 %1641, i64* %RDX.i1370, align 8
  %1642 = shl nsw i64 %1641, 2
  %1643 = add i64 %1642, %1636
  %1644 = add i64 %1567, 38
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1643 to i32*
  store i32 %1607, i32* %1645, align 4
  %1646 = load i64, i64* %3, align 8
  %1647 = add i64 %1646, 119
  br label %block_.L_42a2ef

block_.L_42a27d:                                  ; preds = %block_.L_42a223
  %1648 = add i64 %1567, -166765
  %1649 = add i64 %1567, 5
  %1650 = load i64, i64* %6, align 8
  %1651 = add i64 %1650, -8
  %1652 = inttoptr i64 %1651 to i64*
  store i64 %1649, i64* %1652, align 8
  store i64 %1651, i64* %6, align 8
  store i64 %1648, i64* %3, align 8
  %call2_42a27d = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %1648, %struct.Memory* %call2_42a18a)
  %1653 = load i64*, i64** %1305, align 8
  %1654 = load i64, i64* %3, align 8
  %1655 = add i64 %1654, 3
  store i64 %1655, i64* %3, align 8
  %1656 = load i64, i64* %1653, align 8
  store i64 %1656, i64* %.pre104, align 8
  %1657 = load i64, i64* %RBP.i, align 8
  %1658 = add i64 %1657, -40
  %1659 = add i64 %1654, 7
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i64*
  %1661 = load i64, i64* %1660, align 8
  store i64 %1661, i64* %RCX.i915.pre-phi, align 8
  %1662 = add i64 %1657, -28
  %1663 = add i64 %1654, 10
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i32*
  %1665 = load i32, i32* %1664, align 4
  %1666 = add i32 %1665, -1
  %1667 = zext i32 %1666 to i64
  store i64 %1667, i64* %RDX.i1370, align 8
  %1668 = icmp eq i32 %1665, 0
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %14, align 1
  %1670 = and i32 %1666, 255
  %1671 = tail call i32 @llvm.ctpop.i32(i32 %1670)
  %1672 = trunc i32 %1671 to i8
  %1673 = and i8 %1672, 1
  %1674 = xor i8 %1673, 1
  store i8 %1674, i8* %21, align 1
  %1675 = xor i32 %1666, %1665
  %1676 = lshr i32 %1675, 4
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  store i8 %1678, i8* %26, align 1
  %1679 = icmp eq i32 %1666, 0
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %29, align 1
  %1681 = lshr i32 %1666, 31
  %1682 = trunc i32 %1681 to i8
  store i8 %1682, i8* %32, align 1
  %1683 = lshr i32 %1665, 31
  %1684 = xor i32 %1681, %1683
  %1685 = add nuw nsw i32 %1684, %1683
  %1686 = icmp eq i32 %1685, 2
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %38, align 1
  %1688 = sext i32 %1666 to i64
  store i64 %1688, i64* %RSI.i1373, align 8
  %1689 = add i64 %1661, %1688
  %1690 = add i64 %1654, 20
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i8*
  %1692 = load i8, i8* %1691, align 1
  %1693 = sext i8 %1692 to i64
  %1694 = and i64 %1693, 4294967295
  store i64 %1694, i64* %RDX.i1370, align 8
  %1695 = sext i8 %1692 to i64
  store i64 %1695, i64* %RCX.i915.pre-phi, align 8
  %1696 = shl nsw i64 %1695, 1
  %1697 = add i64 %1656, %1696
  %1698 = add i64 %1654, 27
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1697 to i16*
  %1700 = load i16, i16* %1699, align 2
  %1701 = and i16 %1700, 256
  %1702 = zext i16 %1701 to i64
  store i64 %1702, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1703 = icmp eq i16 %1701, 0
  %.lobit116 = lshr exact i16 %1701, 8
  %1704 = trunc i16 %.lobit116 to i8
  %1705 = xor i8 %1704, 1
  store i8 %1705, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v148 = select i1 %1703, i64 85, i64 42
  %1706 = add i64 %1654, %.v148
  store i64 %1706, i64* %3, align 8
  %1707 = load i64, i64* %RBP.i, align 8
  br i1 %1703, label %block_.L_42a2d7, label %block_42a2ac

block_42a2ac:                                     ; preds = %block_.L_42a27d
  %1708 = add i64 %1707, -40
  %1709 = add i64 %1706, 4
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i64*
  %1711 = load i64, i64* %1710, align 8
  store i64 %1711, i64* %.pre104, align 8
  %1712 = add i64 %1707, -28
  %1713 = add i64 %1706, 7
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = add i32 %1715, -1
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RCX.i915.pre-phi, align 8
  %1718 = icmp eq i32 %1715, 0
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %14, align 1
  %1720 = and i32 %1716, 255
  %1721 = tail call i32 @llvm.ctpop.i32(i32 %1720)
  %1722 = trunc i32 %1721 to i8
  %1723 = and i8 %1722, 1
  %1724 = xor i8 %1723, 1
  store i8 %1724, i8* %21, align 1
  %1725 = xor i32 %1716, %1715
  %1726 = lshr i32 %1725, 4
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  store i8 %1728, i8* %26, align 1
  %1729 = icmp eq i32 %1716, 0
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %29, align 1
  %1731 = lshr i32 %1716, 31
  %1732 = trunc i32 %1731 to i8
  store i8 %1732, i8* %32, align 1
  %1733 = lshr i32 %1715, 31
  %1734 = xor i32 %1731, %1733
  %1735 = add nuw nsw i32 %1734, %1733
  %1736 = icmp eq i32 %1735, 2
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %38, align 1
  %1738 = sext i32 %1716 to i64
  store i64 %1738, i64* %RDX.i1370, align 8
  %1739 = add i64 %1711, %1738
  %1740 = add i64 %1706, 17
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i8*
  %1742 = load i8, i8* %1741, align 1
  %1743 = sext i8 %1742 to i32
  %1744 = add nsw i32 %1743, -65
  %1745 = lshr i32 %1744, 31
  %1746 = add nsw i32 %1743, -55
  %1747 = zext i32 %1746 to i64
  store i64 %1747, i64* %RCX.i915.pre-phi, align 8
  %1748 = icmp ugt i32 %1744, -11
  %1749 = zext i1 %1748 to i8
  store i8 %1749, i8* %14, align 1
  %1750 = and i32 %1746, 255
  %1751 = tail call i32 @llvm.ctpop.i32(i32 %1750)
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = xor i8 %1753, 1
  store i8 %1754, i8* %21, align 1
  %1755 = xor i32 %1746, %1744
  %1756 = lshr i32 %1755, 4
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  store i8 %1758, i8* %26, align 1
  %1759 = icmp eq i32 %1746, 0
  %1760 = zext i1 %1759 to i8
  store i8 %1760, i8* %29, align 1
  %1761 = lshr i32 %1746, 31
  %1762 = trunc i32 %1761 to i8
  store i8 %1762, i8* %32, align 1
  %1763 = xor i32 %1761, %1745
  %1764 = add nuw nsw i32 %1763, %1761
  %1765 = icmp eq i32 %1764, 2
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %38, align 1
  %1767 = load i64, i64* %RBP.i, align 8
  %1768 = add i64 %1767, -8
  %1769 = add i64 %1706, 27
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i64*
  %1771 = load i64, i64* %1770, align 8
  store i64 %1771, i64* %.pre104, align 8
  %1772 = add i64 %1771, 96
  %1773 = add i64 %1706, 31
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to i64*
  %1775 = load i64, i64* %1774, align 8
  store i64 %1775, i64* %.pre104, align 8
  %1776 = add i64 %1767, -32
  %1777 = add i64 %1706, 35
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i32*
  %1779 = load i32, i32* %1778, align 4
  %1780 = sext i32 %1779 to i64
  store i64 %1780, i64* %RDX.i1370, align 8
  %1781 = shl nsw i64 %1780, 2
  %1782 = add i64 %1781, %1775
  %1783 = add i64 %1706, 38
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  store i32 %1746, i32* %1784, align 4
  %1785 = load i64, i64* %3, align 8
  %1786 = add i64 %1785, 24
  store i64 %1786, i64* %3, align 8
  br label %block_.L_42a2ea

block_.L_42a2d7:                                  ; preds = %block_.L_42a27d
  %1787 = add i64 %1707, -8
  %1788 = add i64 %1706, 4
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i64*
  %1790 = load i64, i64* %1789, align 8
  store i64 %1790, i64* %.pre104, align 8
  %1791 = add i64 %1790, 96
  %1792 = add i64 %1706, 8
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i64*
  %1794 = load i64, i64* %1793, align 8
  store i64 %1794, i64* %.pre104, align 8
  %1795 = add i64 %1707, -32
  %1796 = add i64 %1706, 12
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = sext i32 %1798 to i64
  store i64 %1799, i64* %RCX.i915.pre-phi, align 8
  %1800 = shl nsw i64 %1799, 2
  %1801 = add i64 %1800, %1794
  %1802 = add i64 %1706, 19
  store i64 %1802, i64* %3, align 8
  %1803 = inttoptr i64 %1801 to i32*
  store i32 -1, i32* %1803, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_42a2ea

block_.L_42a2ea:                                  ; preds = %block_.L_42a2d7, %block_42a2ac
  %1804 = phi i64 [ %.pre90, %block_.L_42a2d7 ], [ %1786, %block_42a2ac ]
  %1805 = add i64 %1804, 5
  store i64 %1805, i64* %3, align 8
  br label %block_.L_42a2ef

block_.L_42a2ef:                                  ; preds = %block_.L_42a2ea, %block_42a252
  %storemerge34 = phi i64 [ %1647, %block_42a252 ], [ %1805, %block_.L_42a2ea ]
  %1806 = add i64 %storemerge34, 5
  store i64 %1806, i64* %3, align 8
  br label %block_.L_42a2f4

block_.L_42a2f4:                                  ; preds = %block_.L_42a2ef, %block_42a1fb
  %storemerge = phi i64 [ %1508, %block_42a1fb ], [ %1806, %block_.L_42a2ef ]
  %1807 = load i64, i64* %RBP.i, align 8
  %1808 = add i64 %1807, -32
  %1809 = add i64 %storemerge, 3
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1808 to i32*
  %1811 = load i32, i32* %1810, align 4
  %1812 = add i32 %1811, 1
  %1813 = zext i32 %1812 to i64
  store i64 %1813, i64* %.pre104, align 8
  %1814 = icmp eq i32 %1811, -1
  %1815 = icmp eq i32 %1812, 0
  %1816 = or i1 %1814, %1815
  %1817 = zext i1 %1816 to i8
  store i8 %1817, i8* %14, align 1
  %1818 = and i32 %1812, 255
  %1819 = tail call i32 @llvm.ctpop.i32(i32 %1818)
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  store i8 %1822, i8* %21, align 1
  %1823 = xor i32 %1812, %1811
  %1824 = lshr i32 %1823, 4
  %1825 = trunc i32 %1824 to i8
  %1826 = and i8 %1825, 1
  store i8 %1826, i8* %26, align 1
  %1827 = zext i1 %1815 to i8
  store i8 %1827, i8* %29, align 1
  %1828 = lshr i32 %1812, 31
  %1829 = trunc i32 %1828 to i8
  store i8 %1829, i8* %32, align 1
  %1830 = lshr i32 %1811, 31
  %1831 = xor i32 %1828, %1830
  %1832 = add nuw nsw i32 %1831, %1828
  %1833 = icmp eq i32 %1832, 2
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %38, align 1
  %1835 = add i64 %storemerge, 9
  store i64 %1835, i64* %3, align 8
  store i32 %1812, i32* %1810, align 4
  %.pre91 = load i64, i64* %3, align 8
  %.pre92 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a2fd

block_.L_42a2fd:                                  ; preds = %block_.L_42a2f4, %block_42a1b5
  %1836 = phi i64 [ %.pre92, %block_.L_42a2f4 ], [ %1307, %block_42a1b5 ]
  %1837 = phi i64 [ %.pre91, %block_.L_42a2f4 ], [ %1368, %block_42a1b5 ]
  %1838 = add i64 %1836, -28
  %1839 = add i64 %1837, 8
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  %1841 = load i32, i32* %1840, align 4
  %1842 = add i32 %1841, 1
  %1843 = zext i32 %1842 to i64
  store i64 %1843, i64* %.pre104, align 8
  %1844 = icmp eq i32 %1841, -1
  %1845 = icmp eq i32 %1842, 0
  %1846 = or i1 %1844, %1845
  %1847 = zext i1 %1846 to i8
  store i8 %1847, i8* %14, align 1
  %1848 = and i32 %1842, 255
  %1849 = tail call i32 @llvm.ctpop.i32(i32 %1848)
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  %1852 = xor i8 %1851, 1
  store i8 %1852, i8* %21, align 1
  %1853 = xor i32 %1842, %1841
  %1854 = lshr i32 %1853, 4
  %1855 = trunc i32 %1854 to i8
  %1856 = and i8 %1855, 1
  store i8 %1856, i8* %26, align 1
  %1857 = zext i1 %1845 to i8
  store i8 %1857, i8* %29, align 1
  %1858 = lshr i32 %1842, 31
  %1859 = trunc i32 %1858 to i8
  store i8 %1859, i8* %32, align 1
  %1860 = lshr i32 %1841, 31
  %1861 = xor i32 %1858, %1860
  %1862 = add nuw nsw i32 %1861, %1858
  %1863 = icmp eq i32 %1862, 2
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %38, align 1
  %1865 = add i64 %1837, 14
  store i64 %1865, i64* %3, align 8
  store i32 %1842, i32* %1840, align 4
  %1866 = load i64, i64* %3, align 8
  %1867 = add i64 %1866, -358
  store i64 %1867, i64* %3, align 8
  br label %block_.L_42a1a5

block_.L_42a310:                                  ; preds = %block_.L_42a1a5
  %1868 = add i64 %1347, 5
  store i64 %1868, i64* %3, align 8
  br label %block_.L_42a315

block_.L_42a315:                                  ; preds = %block_.L_42a12d.block_.L_42a315_crit_edge, %block_.L_42a310
  %1869 = phi i64 [ %.pre93, %block_.L_42a12d.block_.L_42a315_crit_edge ], [ %1307, %block_.L_42a310 ]
  %1870 = phi i64 [ %1253, %block_.L_42a12d.block_.L_42a315_crit_edge ], [ %1868, %block_.L_42a310 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_42a151, %block_.L_42a12d.block_.L_42a315_crit_edge ], [ %call2_42a18a, %block_.L_42a310 ]
  store i64 ptrtoint (%G__0x458823_type* @G__0x458823 to i64), i64* %RSI.i1373, align 8
  %1871 = add i64 %1869, -24
  %1872 = add i64 %1870, 14
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i64*
  %1874 = load i64, i64* %1873, align 8
  store i64 %1874, i64* %RDI.i1376, align 8
  %1875 = add i64 %1870, 15403
  %1876 = add i64 %1870, 19
  %1877 = load i64, i64* %6, align 8
  %1878 = add i64 %1877, -8
  %1879 = inttoptr i64 %1878 to i64*
  store i64 %1876, i64* %1879, align 8
  store i64 %1878, i64* %6, align 8
  store i64 %1875, i64* %3, align 8
  %call2_42a323 = tail call %struct.Memory* @sub_42df40.MSAGetGC(%struct.State* nonnull %0, i64 %1875, %struct.Memory* %MEMORY.19)
  %1880 = load i64, i64* %RBP.i, align 8
  %1881 = add i64 %1880, -40
  %1882 = load i64, i64* %.pre104, align 8
  %1883 = load i64, i64* %3, align 8
  %1884 = add i64 %1883, 4
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1881 to i64*
  store i64 %1882, i64* %1885, align 8
  %1886 = load i64, i64* %.pre104, align 8
  %1887 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1888 = trunc i64 %1886 to i32
  %1889 = and i32 %1888, 255
  %1890 = tail call i32 @llvm.ctpop.i32(i32 %1889)
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = xor i8 %1892, 1
  store i8 %1893, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1894 = icmp eq i64 %1886, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %29, align 1
  %1896 = lshr i64 %1886, 63
  %1897 = trunc i64 %1896 to i8
  store i8 %1897, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v133 = select i1 %1894, i64 443, i64 10
  %1898 = add i64 %1887, %.v133
  store i64 %1898, i64* %3, align 8
  br i1 %1894, label %block_.L_42a315.block_.L_42a4e7_crit_edge, label %block_42a336

block_.L_42a315.block_.L_42a4e7_crit_edge:        ; preds = %block_.L_42a315
  %.pre98 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a4e7

block_42a336:                                     ; preds = %block_.L_42a315
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RDI.i1376, align 8
  store i64 911, i64* %RSI.i1373, align 8
  %1899 = load i64, i64* %RBP.i, align 8
  %1900 = add i64 %1899, -8
  %1901 = add i64 %1898, 19
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i64*
  %1903 = load i64, i64* %1902, align 8
  store i64 %1903, i64* %.pre104, align 8
  %1904 = add i64 %1903, 136
  %1905 = add i64 %1898, 25
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1904 to i32*
  %1907 = load i32, i32* %1906, align 4
  %1908 = add i32 %1907, 1
  %1909 = zext i32 %1908 to i64
  store i64 %1909, i64* %RCX.i915.pre-phi, align 8
  %1910 = icmp eq i32 %1908, 0
  %1911 = zext i1 %1910 to i8
  %1912 = lshr i32 %1908, 31
  %1913 = trunc i32 %1912 to i8
  %1914 = sext i32 %1908 to i64
  %1915 = shl nsw i64 %1914, 2
  store i64 %1915, i64* %.pre104, align 8
  store i8 %1913, i8* %14, align 1
  %1916 = trunc i64 %1915 to i32
  %1917 = and i32 %1916, 252
  %1918 = tail call i32 @llvm.ctpop.i32(i32 %1917)
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  %1921 = xor i8 %1920, 1
  store i8 %1921, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1911, i8* %29, align 1
  %1922 = lshr i64 %1914, 61
  %1923 = trunc i64 %1922 to i8
  %1924 = and i8 %1923, 1
  store i8 %1924, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1915, i64* %RDX.i1370, align 8
  %1925 = add i64 %1898, 113962
  %1926 = add i64 %1898, 43
  %1927 = load i64, i64* %6, align 8
  %1928 = add i64 %1927, -8
  %1929 = inttoptr i64 %1928 to i64*
  store i64 %1926, i64* %1929, align 8
  store i64 %1928, i64* %6, align 8
  store i64 %1925, i64* %3, align 8
  %call2_42a35c = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %1925, %struct.Memory* %call2_42a323)
  %1930 = load i64, i64* %RBP.i, align 8
  %1931 = add i64 %1930, -8
  %1932 = load i64, i64* %3, align 8
  %1933 = add i64 %1932, 4
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1931 to i64*
  %1935 = load i64, i64* %1934, align 8
  store i64 %1935, i64* %RDX.i1370, align 8
  %1936 = add i64 %1935, 104
  %1937 = load i64, i64* %.pre104, align 8
  %1938 = add i64 %1932, 8
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1936 to i64*
  store i64 %1937, i64* %1939, align 8
  %1940 = load i64, i64* %RBP.i, align 8
  %1941 = add i64 %1940, -32
  %1942 = load i64, i64* %3, align 8
  %1943 = add i64 %1942, 7
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1941 to i32*
  store i32 1, i32* %1944, align 4
  %1945 = load i64, i64* %RBP.i, align 8
  %1946 = add i64 %1945, -28
  %1947 = load i64, i64* %3, align 8
  %1948 = add i64 %1947, 7
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1946 to i32*
  store i32 1, i32* %1949, align 4
  %1950 = bitcast %union.anon* %.pre103 to i64**
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_42a377

block_.L_42a377:                                  ; preds = %block_.L_42a4cf, %block_42a336
  %1951 = phi i64 [ %.pre94, %block_42a336 ], [ %2512, %block_.L_42a4cf ]
  %1952 = load i64, i64* %RBP.i, align 8
  %1953 = add i64 %1952, -28
  %1954 = add i64 %1951, 3
  store i64 %1954, i64* %3, align 8
  %1955 = inttoptr i64 %1953 to i32*
  %1956 = load i32, i32* %1955, align 4
  %1957 = zext i32 %1956 to i64
  store i64 %1957, i64* %.pre104, align 8
  %1958 = add i64 %1952, -24
  %1959 = add i64 %1951, 7
  store i64 %1959, i64* %3, align 8
  %1960 = inttoptr i64 %1958 to i64*
  %1961 = load i64, i64* %1960, align 8
  store i64 %1961, i64* %RCX.i915.pre-phi, align 8
  %1962 = add i64 %1961, 24
  %1963 = add i64 %1951, 10
  store i64 %1963, i64* %3, align 8
  %1964 = inttoptr i64 %1962 to i32*
  %1965 = load i32, i32* %1964, align 4
  %1966 = sub i32 %1956, %1965
  %1967 = icmp ult i32 %1956, %1965
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %14, align 1
  %1969 = and i32 %1966, 255
  %1970 = tail call i32 @llvm.ctpop.i32(i32 %1969)
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = xor i8 %1972, 1
  store i8 %1973, i8* %21, align 1
  %1974 = xor i32 %1965, %1956
  %1975 = xor i32 %1974, %1966
  %1976 = lshr i32 %1975, 4
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  store i8 %1978, i8* %26, align 1
  %1979 = icmp eq i32 %1966, 0
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %29, align 1
  %1981 = lshr i32 %1966, 31
  %1982 = trunc i32 %1981 to i8
  store i8 %1982, i8* %32, align 1
  %1983 = lshr i32 %1956, 31
  %1984 = lshr i32 %1965, 31
  %1985 = xor i32 %1984, %1983
  %1986 = xor i32 %1981, %1983
  %1987 = add nuw nsw i32 %1986, %1985
  %1988 = icmp eq i32 %1987, 2
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %38, align 1
  %1990 = icmp ne i8 %1982, 0
  %1991 = xor i1 %1990, %1988
  %.demorgan117 = or i1 %1979, %1991
  %.v134 = select i1 %.demorgan117, i64 16, i64 363
  %1992 = add i64 %1951, %.v134
  store i64 %1992, i64* %3, align 8
  br i1 %.demorgan117, label %block_42a387, label %block_.L_42a4e2

block_42a387:                                     ; preds = %block_.L_42a377
  %1993 = add i64 %1952, -16
  %1994 = add i64 %1992, 4
  store i64 %1994, i64* %3, align 8
  %1995 = inttoptr i64 %1993 to i64*
  %1996 = load i64, i64* %1995, align 8
  store i64 %1996, i64* %.pre104, align 8
  %1997 = add i64 %1992, 8
  store i64 %1997, i64* %3, align 8
  %1998 = load i32, i32* %1955, align 4
  %1999 = sext i32 %1998 to i64
  store i64 %1999, i64* %RCX.i915.pre-phi, align 8
  %2000 = shl nsw i64 %1999, 2
  %2001 = add i64 %2000, %1996
  %2002 = add i64 %1992, 11
  store i64 %2002, i64* %3, align 8
  %2003 = inttoptr i64 %2001 to i32*
  %2004 = load i32, i32* %2003, align 4
  %2005 = and i32 %2004, 1
  %2006 = zext i32 %2005 to i64
  store i64 %2006, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  %2007 = tail call i32 @llvm.ctpop.i32(i32 %2005)
  %2008 = trunc i32 %2007 to i8
  %2009 = xor i8 %2008, 1
  store i8 %2009, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2010 = icmp eq i32 %2005, 0
  %2011 = trunc i32 %2005 to i8
  %2012 = xor i8 %2011, 1
  store i8 %2012, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v141 = select i1 %2010, i64 328, i64 23
  %2013 = add i64 %1992, %.v141
  store i64 %2013, i64* %3, align 8
  br i1 %2010, label %block_.L_42a4cf, label %block_42a39e

block_42a39e:                                     ; preds = %block_42a387
  %2014 = add i64 %2013, -167054
  %2015 = add i64 %2013, 5
  %2016 = load i64, i64* %6, align 8
  %2017 = add i64 %2016, -8
  %2018 = inttoptr i64 %2017 to i64*
  store i64 %2015, i64* %2018, align 8
  store i64 %2017, i64* %6, align 8
  store i64 %2014, i64* %3, align 8
  %call2_42a39e = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %2014, %struct.Memory* %call2_42a35c)
  %2019 = load i64*, i64** %1950, align 8
  %2020 = load i64, i64* %3, align 8
  %2021 = add i64 %2020, 3
  store i64 %2021, i64* %3, align 8
  %2022 = load i64, i64* %2019, align 8
  store i64 %2022, i64* %.pre104, align 8
  %2023 = load i64, i64* %RBP.i, align 8
  %2024 = add i64 %2023, -40
  %2025 = add i64 %2020, 7
  store i64 %2025, i64* %3, align 8
  %2026 = inttoptr i64 %2024 to i64*
  %2027 = load i64, i64* %2026, align 8
  store i64 %2027, i64* %RCX.i915.pre-phi, align 8
  %2028 = add i64 %2023, -28
  %2029 = add i64 %2020, 10
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2028 to i32*
  %2031 = load i32, i32* %2030, align 4
  %2032 = add i32 %2031, -1
  %2033 = zext i32 %2032 to i64
  store i64 %2033, i64* %RDX.i1370, align 8
  %2034 = icmp eq i32 %2031, 0
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %14, align 1
  %2036 = and i32 %2032, 255
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %21, align 1
  %2041 = xor i32 %2032, %2031
  %2042 = lshr i32 %2041, 4
  %2043 = trunc i32 %2042 to i8
  %2044 = and i8 %2043, 1
  store i8 %2044, i8* %26, align 1
  %2045 = icmp eq i32 %2032, 0
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %29, align 1
  %2047 = lshr i32 %2032, 31
  %2048 = trunc i32 %2047 to i8
  store i8 %2048, i8* %32, align 1
  %2049 = lshr i32 %2031, 31
  %2050 = xor i32 %2047, %2049
  %2051 = add nuw nsw i32 %2050, %2049
  %2052 = icmp eq i32 %2051, 2
  %2053 = zext i1 %2052 to i8
  store i8 %2053, i8* %38, align 1
  %2054 = sext i32 %2032 to i64
  store i64 %2054, i64* %RSI.i1373, align 8
  %2055 = add i64 %2027, %2054
  %2056 = add i64 %2020, 20
  store i64 %2056, i64* %3, align 8
  %2057 = inttoptr i64 %2055 to i8*
  %2058 = load i8, i8* %2057, align 1
  %2059 = sext i8 %2058 to i64
  %2060 = and i64 %2059, 4294967295
  store i64 %2060, i64* %RDX.i1370, align 8
  %2061 = sext i8 %2058 to i64
  store i64 %2061, i64* %RCX.i915.pre-phi, align 8
  %2062 = shl nsw i64 %2061, 1
  %2063 = add i64 %2022, %2062
  %2064 = add i64 %2020, 27
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i16*
  %2066 = load i16, i16* %2065, align 2
  %2067 = and i16 %2066, 2048
  %2068 = zext i16 %2067 to i64
  store i64 %2068, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2069 = icmp eq i16 %2067, 0
  %.lobit118 = lshr exact i16 %2067, 11
  %2070 = trunc i16 %.lobit118 to i8
  %2071 = xor i8 %2070, 1
  store i8 %2071, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v142 = select i1 %2069, i64 82, i64 42
  %2072 = add i64 %2020, %.v142
  store i64 %2072, i64* %3, align 8
  br i1 %2069, label %block_.L_42a3f5, label %block_42a3cd

block_42a3cd:                                     ; preds = %block_42a39e
  %2073 = load i64, i64* %RBP.i, align 8
  %2074 = add i64 %2073, -40
  %2075 = add i64 %2072, 4
  store i64 %2075, i64* %3, align 8
  %2076 = inttoptr i64 %2074 to i64*
  %2077 = load i64, i64* %2076, align 8
  store i64 %2077, i64* %.pre104, align 8
  %2078 = add i64 %2073, -28
  %2079 = add i64 %2072, 7
  store i64 %2079, i64* %3, align 8
  %2080 = inttoptr i64 %2078 to i32*
  %2081 = load i32, i32* %2080, align 4
  %2082 = add i32 %2081, -1
  %2083 = zext i32 %2082 to i64
  store i64 %2083, i64* %RCX.i915.pre-phi, align 8
  %2084 = icmp eq i32 %2081, 0
  %2085 = zext i1 %2084 to i8
  store i8 %2085, i8* %14, align 1
  %2086 = and i32 %2082, 255
  %2087 = tail call i32 @llvm.ctpop.i32(i32 %2086)
  %2088 = trunc i32 %2087 to i8
  %2089 = and i8 %2088, 1
  %2090 = xor i8 %2089, 1
  store i8 %2090, i8* %21, align 1
  %2091 = xor i32 %2082, %2081
  %2092 = lshr i32 %2091, 4
  %2093 = trunc i32 %2092 to i8
  %2094 = and i8 %2093, 1
  store i8 %2094, i8* %26, align 1
  %2095 = icmp eq i32 %2082, 0
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %29, align 1
  %2097 = lshr i32 %2082, 31
  %2098 = trunc i32 %2097 to i8
  store i8 %2098, i8* %32, align 1
  %2099 = lshr i32 %2081, 31
  %2100 = xor i32 %2097, %2099
  %2101 = add nuw nsw i32 %2100, %2099
  %2102 = icmp eq i32 %2101, 2
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %38, align 1
  %2104 = sext i32 %2082 to i64
  store i64 %2104, i64* %RDX.i1370, align 8
  %2105 = add i64 %2077, %2104
  %2106 = add i64 %2072, 17
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i8*
  %2108 = load i8, i8* %2107, align 1
  %2109 = sext i8 %2108 to i32
  %2110 = add nsw i32 %2109, -48
  %2111 = zext i32 %2110 to i64
  store i64 %2111, i64* %RCX.i915.pre-phi, align 8
  %2112 = icmp ult i8 %2108, 48
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %14, align 1
  %2114 = and i32 %2110, 255
  %2115 = tail call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  store i8 %2118, i8* %21, align 1
  %2119 = xor i8 %2108, 16
  %2120 = zext i8 %2119 to i32
  %2121 = xor i32 %2120, %2110
  %2122 = lshr i32 %2121, 4
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  store i8 %2124, i8* %26, align 1
  %2125 = icmp eq i32 %2110, 0
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %29, align 1
  %2127 = lshr i32 %2110, 31
  %2128 = trunc i32 %2127 to i8
  store i8 %2128, i8* %32, align 1
  %2129 = lshr i32 %2109, 31
  %2130 = xor i32 %2127, %2129
  %2131 = add nuw nsw i32 %2130, %2129
  %2132 = icmp eq i32 %2131, 2
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %38, align 1
  %2134 = add i64 %2073, -8
  %2135 = add i64 %2072, 24
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i64*
  %2137 = load i64, i64* %2136, align 8
  store i64 %2137, i64* %.pre104, align 8
  %2138 = add i64 %2137, 104
  %2139 = add i64 %2072, 28
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i64*
  %2141 = load i64, i64* %2140, align 8
  store i64 %2141, i64* %.pre104, align 8
  %2142 = load i64, i64* %RBP.i, align 8
  %2143 = add i64 %2142, -32
  %2144 = add i64 %2072, 32
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i32*
  %2146 = load i32, i32* %2145, align 4
  %2147 = sext i32 %2146 to i64
  store i64 %2147, i64* %RDX.i1370, align 8
  %2148 = shl nsw i64 %2147, 2
  %2149 = add i64 %2148, %2141
  %2150 = add i64 %2072, 35
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i32*
  store i32 %2110, i32* %2151, align 4
  %2152 = load i64, i64* %3, align 8
  %2153 = add i64 %2152, 214
  br label %block_.L_42a4c6

block_.L_42a3f5:                                  ; preds = %block_42a39e
  %2154 = add i64 %2072, -167141
  %2155 = add i64 %2072, 5
  %2156 = load i64, i64* %6, align 8
  %2157 = add i64 %2156, -8
  %2158 = inttoptr i64 %2157 to i64*
  store i64 %2155, i64* %2158, align 8
  store i64 %2157, i64* %6, align 8
  store i64 %2154, i64* %3, align 8
  %call2_42a3f5 = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %2154, %struct.Memory* %call2_42a35c)
  %2159 = load i64*, i64** %1950, align 8
  %2160 = load i64, i64* %3, align 8
  %2161 = add i64 %2160, 3
  store i64 %2161, i64* %3, align 8
  %2162 = load i64, i64* %2159, align 8
  store i64 %2162, i64* %.pre104, align 8
  %2163 = load i64, i64* %RBP.i, align 8
  %2164 = add i64 %2163, -40
  %2165 = add i64 %2160, 7
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2164 to i64*
  %2167 = load i64, i64* %2166, align 8
  store i64 %2167, i64* %RCX.i915.pre-phi, align 8
  %2168 = add i64 %2163, -28
  %2169 = add i64 %2160, 10
  store i64 %2169, i64* %3, align 8
  %2170 = inttoptr i64 %2168 to i32*
  %2171 = load i32, i32* %2170, align 4
  %2172 = add i32 %2171, -1
  %2173 = zext i32 %2172 to i64
  store i64 %2173, i64* %RDX.i1370, align 8
  %2174 = icmp eq i32 %2171, 0
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %14, align 1
  %2176 = and i32 %2172, 255
  %2177 = tail call i32 @llvm.ctpop.i32(i32 %2176)
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  store i8 %2180, i8* %21, align 1
  %2181 = xor i32 %2172, %2171
  %2182 = lshr i32 %2181, 4
  %2183 = trunc i32 %2182 to i8
  %2184 = and i8 %2183, 1
  store i8 %2184, i8* %26, align 1
  %2185 = icmp eq i32 %2172, 0
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %29, align 1
  %2187 = lshr i32 %2172, 31
  %2188 = trunc i32 %2187 to i8
  store i8 %2188, i8* %32, align 1
  %2189 = lshr i32 %2171, 31
  %2190 = xor i32 %2187, %2189
  %2191 = add nuw nsw i32 %2190, %2189
  %2192 = icmp eq i32 %2191, 2
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %38, align 1
  %2194 = sext i32 %2172 to i64
  store i64 %2194, i64* %RSI.i1373, align 8
  %2195 = add i64 %2167, %2194
  %2196 = add i64 %2160, 20
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i8*
  %2198 = load i8, i8* %2197, align 1
  %2199 = sext i8 %2198 to i64
  %2200 = and i64 %2199, 4294967295
  store i64 %2200, i64* %RDX.i1370, align 8
  %2201 = sext i8 %2198 to i64
  store i64 %2201, i64* %RCX.i915.pre-phi, align 8
  %2202 = shl nsw i64 %2201, 1
  %2203 = add i64 %2162, %2202
  %2204 = add i64 %2160, 27
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i16*
  %2206 = load i16, i16* %2205, align 2
  %2207 = and i16 %2206, 512
  %2208 = zext i16 %2207 to i64
  store i64 %2208, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2209 = icmp eq i16 %2207, 0
  %.lobit119 = lshr exact i16 %2207, 9
  %2210 = trunc i16 %.lobit119 to i8
  %2211 = xor i8 %2210, 1
  store i8 %2211, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v143 = select i1 %2209, i64 85, i64 42
  %2212 = add i64 %2160, %.v143
  store i64 %2212, i64* %3, align 8
  br i1 %2209, label %block_.L_42a44f, label %block_42a424

block_42a424:                                     ; preds = %block_.L_42a3f5
  %2213 = load i64, i64* %RBP.i, align 8
  %2214 = add i64 %2213, -40
  %2215 = add i64 %2212, 4
  store i64 %2215, i64* %3, align 8
  %2216 = inttoptr i64 %2214 to i64*
  %2217 = load i64, i64* %2216, align 8
  store i64 %2217, i64* %.pre104, align 8
  %2218 = add i64 %2213, -28
  %2219 = add i64 %2212, 7
  store i64 %2219, i64* %3, align 8
  %2220 = inttoptr i64 %2218 to i32*
  %2221 = load i32, i32* %2220, align 4
  %2222 = add i32 %2221, -1
  %2223 = zext i32 %2222 to i64
  store i64 %2223, i64* %RCX.i915.pre-phi, align 8
  %2224 = icmp eq i32 %2221, 0
  %2225 = zext i1 %2224 to i8
  store i8 %2225, i8* %14, align 1
  %2226 = and i32 %2222, 255
  %2227 = tail call i32 @llvm.ctpop.i32(i32 %2226)
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  %2230 = xor i8 %2229, 1
  store i8 %2230, i8* %21, align 1
  %2231 = xor i32 %2222, %2221
  %2232 = lshr i32 %2231, 4
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  store i8 %2234, i8* %26, align 1
  %2235 = icmp eq i32 %2222, 0
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %29, align 1
  %2237 = lshr i32 %2222, 31
  %2238 = trunc i32 %2237 to i8
  store i8 %2238, i8* %32, align 1
  %2239 = lshr i32 %2221, 31
  %2240 = xor i32 %2237, %2239
  %2241 = add nuw nsw i32 %2240, %2239
  %2242 = icmp eq i32 %2241, 2
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %38, align 1
  %2244 = sext i32 %2222 to i64
  store i64 %2244, i64* %RDX.i1370, align 8
  %2245 = add i64 %2217, %2244
  %2246 = add i64 %2212, 17
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to i8*
  %2248 = load i8, i8* %2247, align 1
  %2249 = sext i8 %2248 to i32
  %2250 = add nsw i32 %2249, -97
  %2251 = lshr i32 %2250, 31
  %2252 = add nsw i32 %2249, -87
  %2253 = zext i32 %2252 to i64
  store i64 %2253, i64* %RCX.i915.pre-phi, align 8
  %2254 = icmp ugt i32 %2250, -11
  %2255 = zext i1 %2254 to i8
  store i8 %2255, i8* %14, align 1
  %2256 = and i32 %2252, 255
  %2257 = tail call i32 @llvm.ctpop.i32(i32 %2256)
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  %2260 = xor i8 %2259, 1
  store i8 %2260, i8* %21, align 1
  %2261 = xor i32 %2252, %2250
  %2262 = lshr i32 %2261, 4
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  store i8 %2264, i8* %26, align 1
  %2265 = icmp eq i32 %2252, 0
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %29, align 1
  %2267 = lshr i32 %2252, 31
  %2268 = trunc i32 %2267 to i8
  store i8 %2268, i8* %32, align 1
  %2269 = xor i32 %2267, %2251
  %2270 = add nuw nsw i32 %2269, %2267
  %2271 = icmp eq i32 %2270, 2
  %2272 = zext i1 %2271 to i8
  store i8 %2272, i8* %38, align 1
  %2273 = load i64, i64* %RBP.i, align 8
  %2274 = add i64 %2273, -8
  %2275 = add i64 %2212, 27
  store i64 %2275, i64* %3, align 8
  %2276 = inttoptr i64 %2274 to i64*
  %2277 = load i64, i64* %2276, align 8
  store i64 %2277, i64* %.pre104, align 8
  %2278 = add i64 %2277, 104
  %2279 = add i64 %2212, 31
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2278 to i64*
  %2281 = load i64, i64* %2280, align 8
  store i64 %2281, i64* %.pre104, align 8
  %2282 = add i64 %2273, -32
  %2283 = add i64 %2212, 35
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  %2286 = sext i32 %2285 to i64
  store i64 %2286, i64* %RDX.i1370, align 8
  %2287 = shl nsw i64 %2286, 2
  %2288 = add i64 %2287, %2281
  %2289 = add i64 %2212, 38
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i32*
  store i32 %2252, i32* %2290, align 4
  %2291 = load i64, i64* %3, align 8
  %2292 = add i64 %2291, 119
  br label %block_.L_42a4c1

block_.L_42a44f:                                  ; preds = %block_.L_42a3f5
  %2293 = add i64 %2212, -167231
  %2294 = add i64 %2212, 5
  %2295 = load i64, i64* %6, align 8
  %2296 = add i64 %2295, -8
  %2297 = inttoptr i64 %2296 to i64*
  store i64 %2294, i64* %2297, align 8
  store i64 %2296, i64* %6, align 8
  store i64 %2293, i64* %3, align 8
  %call2_42a44f = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %2293, %struct.Memory* %call2_42a35c)
  %2298 = load i64*, i64** %1950, align 8
  %2299 = load i64, i64* %3, align 8
  %2300 = add i64 %2299, 3
  store i64 %2300, i64* %3, align 8
  %2301 = load i64, i64* %2298, align 8
  store i64 %2301, i64* %.pre104, align 8
  %2302 = load i64, i64* %RBP.i, align 8
  %2303 = add i64 %2302, -40
  %2304 = add i64 %2299, 7
  store i64 %2304, i64* %3, align 8
  %2305 = inttoptr i64 %2303 to i64*
  %2306 = load i64, i64* %2305, align 8
  store i64 %2306, i64* %RCX.i915.pre-phi, align 8
  %2307 = add i64 %2302, -28
  %2308 = add i64 %2299, 10
  store i64 %2308, i64* %3, align 8
  %2309 = inttoptr i64 %2307 to i32*
  %2310 = load i32, i32* %2309, align 4
  %2311 = add i32 %2310, -1
  %2312 = zext i32 %2311 to i64
  store i64 %2312, i64* %RDX.i1370, align 8
  %2313 = icmp eq i32 %2310, 0
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %14, align 1
  %2315 = and i32 %2311, 255
  %2316 = tail call i32 @llvm.ctpop.i32(i32 %2315)
  %2317 = trunc i32 %2316 to i8
  %2318 = and i8 %2317, 1
  %2319 = xor i8 %2318, 1
  store i8 %2319, i8* %21, align 1
  %2320 = xor i32 %2311, %2310
  %2321 = lshr i32 %2320, 4
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  store i8 %2323, i8* %26, align 1
  %2324 = icmp eq i32 %2311, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %29, align 1
  %2326 = lshr i32 %2311, 31
  %2327 = trunc i32 %2326 to i8
  store i8 %2327, i8* %32, align 1
  %2328 = lshr i32 %2310, 31
  %2329 = xor i32 %2326, %2328
  %2330 = add nuw nsw i32 %2329, %2328
  %2331 = icmp eq i32 %2330, 2
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %38, align 1
  %2333 = sext i32 %2311 to i64
  store i64 %2333, i64* %RSI.i1373, align 8
  %2334 = add i64 %2306, %2333
  %2335 = add i64 %2299, 20
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i8*
  %2337 = load i8, i8* %2336, align 1
  %2338 = sext i8 %2337 to i64
  %2339 = and i64 %2338, 4294967295
  store i64 %2339, i64* %RDX.i1370, align 8
  %2340 = sext i8 %2337 to i64
  store i64 %2340, i64* %RCX.i915.pre-phi, align 8
  %2341 = shl nsw i64 %2340, 1
  %2342 = add i64 %2301, %2341
  %2343 = add i64 %2299, 27
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i16*
  %2345 = load i16, i16* %2344, align 2
  %2346 = and i16 %2345, 256
  %2347 = zext i16 %2346 to i64
  store i64 %2347, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2348 = icmp eq i16 %2346, 0
  %.lobit120 = lshr exact i16 %2346, 8
  %2349 = trunc i16 %.lobit120 to i8
  %2350 = xor i8 %2349, 1
  store i8 %2350, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v144 = select i1 %2348, i64 85, i64 42
  %2351 = add i64 %2299, %.v144
  store i64 %2351, i64* %3, align 8
  %2352 = load i64, i64* %RBP.i, align 8
  br i1 %2348, label %block_.L_42a4a9, label %block_42a47e

block_42a47e:                                     ; preds = %block_.L_42a44f
  %2353 = add i64 %2352, -40
  %2354 = add i64 %2351, 4
  store i64 %2354, i64* %3, align 8
  %2355 = inttoptr i64 %2353 to i64*
  %2356 = load i64, i64* %2355, align 8
  store i64 %2356, i64* %.pre104, align 8
  %2357 = add i64 %2352, -28
  %2358 = add i64 %2351, 7
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i32*
  %2360 = load i32, i32* %2359, align 4
  %2361 = add i32 %2360, -1
  %2362 = zext i32 %2361 to i64
  store i64 %2362, i64* %RCX.i915.pre-phi, align 8
  %2363 = icmp eq i32 %2360, 0
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %14, align 1
  %2365 = and i32 %2361, 255
  %2366 = tail call i32 @llvm.ctpop.i32(i32 %2365)
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = xor i8 %2368, 1
  store i8 %2369, i8* %21, align 1
  %2370 = xor i32 %2361, %2360
  %2371 = lshr i32 %2370, 4
  %2372 = trunc i32 %2371 to i8
  %2373 = and i8 %2372, 1
  store i8 %2373, i8* %26, align 1
  %2374 = icmp eq i32 %2361, 0
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %29, align 1
  %2376 = lshr i32 %2361, 31
  %2377 = trunc i32 %2376 to i8
  store i8 %2377, i8* %32, align 1
  %2378 = lshr i32 %2360, 31
  %2379 = xor i32 %2376, %2378
  %2380 = add nuw nsw i32 %2379, %2378
  %2381 = icmp eq i32 %2380, 2
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %38, align 1
  %2383 = sext i32 %2361 to i64
  store i64 %2383, i64* %RDX.i1370, align 8
  %2384 = add i64 %2356, %2383
  %2385 = add i64 %2351, 17
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i8*
  %2387 = load i8, i8* %2386, align 1
  %2388 = sext i8 %2387 to i32
  %2389 = add nsw i32 %2388, -65
  %2390 = lshr i32 %2389, 31
  %2391 = add nsw i32 %2388, -55
  %2392 = zext i32 %2391 to i64
  store i64 %2392, i64* %RCX.i915.pre-phi, align 8
  %2393 = icmp ugt i32 %2389, -11
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %14, align 1
  %2395 = and i32 %2391, 255
  %2396 = tail call i32 @llvm.ctpop.i32(i32 %2395)
  %2397 = trunc i32 %2396 to i8
  %2398 = and i8 %2397, 1
  %2399 = xor i8 %2398, 1
  store i8 %2399, i8* %21, align 1
  %2400 = xor i32 %2391, %2389
  %2401 = lshr i32 %2400, 4
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  store i8 %2403, i8* %26, align 1
  %2404 = icmp eq i32 %2391, 0
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %29, align 1
  %2406 = lshr i32 %2391, 31
  %2407 = trunc i32 %2406 to i8
  store i8 %2407, i8* %32, align 1
  %2408 = xor i32 %2406, %2390
  %2409 = add nuw nsw i32 %2408, %2406
  %2410 = icmp eq i32 %2409, 2
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %38, align 1
  %2412 = load i64, i64* %RBP.i, align 8
  %2413 = add i64 %2412, -8
  %2414 = add i64 %2351, 27
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i64*
  %2416 = load i64, i64* %2415, align 8
  store i64 %2416, i64* %.pre104, align 8
  %2417 = add i64 %2416, 104
  %2418 = add i64 %2351, 31
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i64*
  %2420 = load i64, i64* %2419, align 8
  store i64 %2420, i64* %.pre104, align 8
  %2421 = add i64 %2412, -32
  %2422 = add i64 %2351, 35
  store i64 %2422, i64* %3, align 8
  %2423 = inttoptr i64 %2421 to i32*
  %2424 = load i32, i32* %2423, align 4
  %2425 = sext i32 %2424 to i64
  store i64 %2425, i64* %RDX.i1370, align 8
  %2426 = shl nsw i64 %2425, 2
  %2427 = add i64 %2426, %2420
  %2428 = add i64 %2351, 38
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2427 to i32*
  store i32 %2391, i32* %2429, align 4
  %2430 = load i64, i64* %3, align 8
  %2431 = add i64 %2430, 24
  store i64 %2431, i64* %3, align 8
  br label %block_.L_42a4bc

block_.L_42a4a9:                                  ; preds = %block_.L_42a44f
  %2432 = add i64 %2352, -8
  %2433 = add i64 %2351, 4
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i64*
  %2435 = load i64, i64* %2434, align 8
  store i64 %2435, i64* %.pre104, align 8
  %2436 = add i64 %2435, 104
  %2437 = add i64 %2351, 8
  store i64 %2437, i64* %3, align 8
  %2438 = inttoptr i64 %2436 to i64*
  %2439 = load i64, i64* %2438, align 8
  store i64 %2439, i64* %.pre104, align 8
  %2440 = add i64 %2352, -32
  %2441 = add i64 %2351, 12
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2440 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = sext i32 %2443 to i64
  store i64 %2444, i64* %RCX.i915.pre-phi, align 8
  %2445 = shl nsw i64 %2444, 2
  %2446 = add i64 %2445, %2439
  %2447 = add i64 %2351, 19
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i32*
  store i32 -1, i32* %2448, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_42a4bc

block_.L_42a4bc:                                  ; preds = %block_.L_42a4a9, %block_42a47e
  %2449 = phi i64 [ %.pre95, %block_.L_42a4a9 ], [ %2431, %block_42a47e ]
  %2450 = add i64 %2449, 5
  store i64 %2450, i64* %3, align 8
  br label %block_.L_42a4c1

block_.L_42a4c1:                                  ; preds = %block_.L_42a4bc, %block_42a424
  %storemerge40 = phi i64 [ %2292, %block_42a424 ], [ %2450, %block_.L_42a4bc ]
  %2451 = add i64 %storemerge40, 5
  store i64 %2451, i64* %3, align 8
  br label %block_.L_42a4c6

block_.L_42a4c6:                                  ; preds = %block_.L_42a4c1, %block_42a3cd
  %storemerge38 = phi i64 [ %2153, %block_42a3cd ], [ %2451, %block_.L_42a4c1 ]
  %2452 = load i64, i64* %RBP.i, align 8
  %2453 = add i64 %2452, -32
  %2454 = add i64 %storemerge38, 3
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i32*
  %2456 = load i32, i32* %2455, align 4
  %2457 = add i32 %2456, 1
  %2458 = zext i32 %2457 to i64
  store i64 %2458, i64* %.pre104, align 8
  %2459 = icmp eq i32 %2456, -1
  %2460 = icmp eq i32 %2457, 0
  %2461 = or i1 %2459, %2460
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %14, align 1
  %2463 = and i32 %2457, 255
  %2464 = tail call i32 @llvm.ctpop.i32(i32 %2463)
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = xor i8 %2466, 1
  store i8 %2467, i8* %21, align 1
  %2468 = xor i32 %2457, %2456
  %2469 = lshr i32 %2468, 4
  %2470 = trunc i32 %2469 to i8
  %2471 = and i8 %2470, 1
  store i8 %2471, i8* %26, align 1
  %2472 = zext i1 %2460 to i8
  store i8 %2472, i8* %29, align 1
  %2473 = lshr i32 %2457, 31
  %2474 = trunc i32 %2473 to i8
  store i8 %2474, i8* %32, align 1
  %2475 = lshr i32 %2456, 31
  %2476 = xor i32 %2473, %2475
  %2477 = add nuw nsw i32 %2476, %2473
  %2478 = icmp eq i32 %2477, 2
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %38, align 1
  %2480 = add i64 %storemerge38, 9
  store i64 %2480, i64* %3, align 8
  store i32 %2457, i32* %2455, align 4
  %.pre96 = load i64, i64* %3, align 8
  %.pre97 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a4cf

block_.L_42a4cf:                                  ; preds = %block_.L_42a4c6, %block_42a387
  %2481 = phi i64 [ %.pre97, %block_.L_42a4c6 ], [ %1952, %block_42a387 ]
  %2482 = phi i64 [ %.pre96, %block_.L_42a4c6 ], [ %2013, %block_42a387 ]
  %2483 = add i64 %2481, -28
  %2484 = add i64 %2482, 8
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i32*
  %2486 = load i32, i32* %2485, align 4
  %2487 = add i32 %2486, 1
  %2488 = zext i32 %2487 to i64
  store i64 %2488, i64* %.pre104, align 8
  %2489 = icmp eq i32 %2486, -1
  %2490 = icmp eq i32 %2487, 0
  %2491 = or i1 %2489, %2490
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %14, align 1
  %2493 = and i32 %2487, 255
  %2494 = tail call i32 @llvm.ctpop.i32(i32 %2493)
  %2495 = trunc i32 %2494 to i8
  %2496 = and i8 %2495, 1
  %2497 = xor i8 %2496, 1
  store i8 %2497, i8* %21, align 1
  %2498 = xor i32 %2487, %2486
  %2499 = lshr i32 %2498, 4
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  store i8 %2501, i8* %26, align 1
  %2502 = zext i1 %2490 to i8
  store i8 %2502, i8* %29, align 1
  %2503 = lshr i32 %2487, 31
  %2504 = trunc i32 %2503 to i8
  store i8 %2504, i8* %32, align 1
  %2505 = lshr i32 %2486, 31
  %2506 = xor i32 %2503, %2505
  %2507 = add nuw nsw i32 %2506, %2503
  %2508 = icmp eq i32 %2507, 2
  %2509 = zext i1 %2508 to i8
  store i8 %2509, i8* %38, align 1
  %2510 = add i64 %2482, 14
  store i64 %2510, i64* %3, align 8
  store i32 %2487, i32* %2485, align 4
  %2511 = load i64, i64* %3, align 8
  %2512 = add i64 %2511, -358
  store i64 %2512, i64* %3, align 8
  br label %block_.L_42a377

block_.L_42a4e2:                                  ; preds = %block_.L_42a377
  %2513 = add i64 %1992, 5
  store i64 %2513, i64* %3, align 8
  br label %block_.L_42a4e7

block_.L_42a4e7:                                  ; preds = %block_.L_42a315.block_.L_42a4e7_crit_edge, %block_.L_42a4e2
  %2514 = phi i64 [ %.pre98, %block_.L_42a315.block_.L_42a4e7_crit_edge ], [ %1952, %block_.L_42a4e2 ]
  %2515 = phi i64 [ %1898, %block_.L_42a315.block_.L_42a4e7_crit_edge ], [ %2513, %block_.L_42a4e2 ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_42a323, %block_.L_42a315.block_.L_42a4e7_crit_edge ], [ %call2_42a35c, %block_.L_42a4e2 ]
  store i64 ptrtoint (%G__0x458829_type* @G__0x458829 to i64), i64* %RSI.i1373, align 8
  %2516 = add i64 %2514, -24
  %2517 = add i64 %2515, 14
  store i64 %2517, i64* %3, align 8
  %2518 = inttoptr i64 %2516 to i64*
  %2519 = load i64, i64* %2518, align 8
  store i64 %2519, i64* %RDI.i1376, align 8
  %2520 = add i64 %2515, 14937
  %2521 = add i64 %2515, 19
  %2522 = load i64, i64* %6, align 8
  %2523 = add i64 %2522, -8
  %2524 = inttoptr i64 %2523 to i64*
  store i64 %2521, i64* %2524, align 8
  store i64 %2523, i64* %6, align 8
  store i64 %2520, i64* %3, align 8
  %call2_42a4f5 = tail call %struct.Memory* @sub_42df40.MSAGetGC(%struct.State* nonnull %0, i64 %2520, %struct.Memory* %MEMORY.25)
  %2525 = load i64, i64* %RBP.i, align 8
  %2526 = add i64 %2525, -40
  %2527 = load i64, i64* %.pre104, align 8
  %2528 = load i64, i64* %3, align 8
  %2529 = add i64 %2528, 4
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2526 to i64*
  store i64 %2527, i64* %2530, align 8
  %2531 = load i64, i64* %.pre104, align 8
  %2532 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2533 = trunc i64 %2531 to i32
  %2534 = and i32 %2533, 255
  %2535 = tail call i32 @llvm.ctpop.i32(i32 %2534)
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  %2538 = xor i8 %2537, 1
  store i8 %2538, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2539 = icmp eq i64 %2531, 0
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %29, align 1
  %2541 = lshr i64 %2531, 63
  %2542 = trunc i64 %2541 to i8
  store i8 %2542, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v135 = select i1 %2539, i64 443, i64 10
  %2543 = add i64 %2532, %.v135
  store i64 %2543, i64* %3, align 8
  br i1 %2539, label %block_.L_42a6b9, label %block_42a508

block_42a508:                                     ; preds = %block_.L_42a4e7
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RDI.i1376, align 8
  store i64 926, i64* %RSI.i1373, align 8
  %2544 = load i64, i64* %RBP.i, align 8
  %2545 = add i64 %2544, -8
  %2546 = add i64 %2543, 19
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2545 to i64*
  %2548 = load i64, i64* %2547, align 8
  store i64 %2548, i64* %.pre104, align 8
  %2549 = add i64 %2548, 136
  %2550 = add i64 %2543, 25
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to i32*
  %2552 = load i32, i32* %2551, align 4
  %2553 = add i32 %2552, 1
  %2554 = zext i32 %2553 to i64
  store i64 %2554, i64* %RCX.i915.pre-phi, align 8
  %2555 = icmp eq i32 %2553, 0
  %2556 = zext i1 %2555 to i8
  %2557 = lshr i32 %2553, 31
  %2558 = trunc i32 %2557 to i8
  %2559 = sext i32 %2553 to i64
  %2560 = shl nsw i64 %2559, 2
  store i64 %2560, i64* %.pre104, align 8
  store i8 %2558, i8* %14, align 1
  %2561 = trunc i64 %2560 to i32
  %2562 = and i32 %2561, 252
  %2563 = tail call i32 @llvm.ctpop.i32(i32 %2562)
  %2564 = trunc i32 %2563 to i8
  %2565 = and i8 %2564, 1
  %2566 = xor i8 %2565, 1
  store i8 %2566, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %2556, i8* %29, align 1
  %2567 = lshr i64 %2559, 61
  %2568 = trunc i64 %2567 to i8
  %2569 = and i8 %2568, 1
  store i8 %2569, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %2560, i64* %RDX.i1370, align 8
  %2570 = add i64 %2543, 113496
  %2571 = add i64 %2543, 43
  %2572 = load i64, i64* %6, align 8
  %2573 = add i64 %2572, -8
  %2574 = inttoptr i64 %2573 to i64*
  store i64 %2571, i64* %2574, align 8
  store i64 %2573, i64* %6, align 8
  store i64 %2570, i64* %3, align 8
  %call2_42a52e = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %2570, %struct.Memory* %call2_42a4f5)
  %2575 = load i64, i64* %RBP.i, align 8
  %2576 = add i64 %2575, -8
  %2577 = load i64, i64* %3, align 8
  %2578 = add i64 %2577, 4
  store i64 %2578, i64* %3, align 8
  %2579 = inttoptr i64 %2576 to i64*
  %2580 = load i64, i64* %2579, align 8
  store i64 %2580, i64* %RDX.i1370, align 8
  %2581 = add i64 %2580, 88
  %2582 = load i64, i64* %.pre104, align 8
  %2583 = add i64 %2577, 8
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2581 to i64*
  store i64 %2582, i64* %2584, align 8
  %2585 = load i64, i64* %RBP.i, align 8
  %2586 = add i64 %2585, -32
  %2587 = load i64, i64* %3, align 8
  %2588 = add i64 %2587, 7
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2586 to i32*
  store i32 1, i32* %2589, align 4
  %2590 = load i64, i64* %RBP.i, align 8
  %2591 = add i64 %2590, -28
  %2592 = load i64, i64* %3, align 8
  %2593 = add i64 %2592, 7
  store i64 %2593, i64* %3, align 8
  %2594 = inttoptr i64 %2591 to i32*
  store i32 1, i32* %2594, align 4
  %2595 = bitcast %union.anon* %.pre103 to i64**
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_42a549

block_.L_42a549:                                  ; preds = %block_.L_42a6a1, %block_42a508
  %2596 = phi i64 [ %.pre99, %block_42a508 ], [ %3157, %block_.L_42a6a1 ]
  %2597 = load i64, i64* %RBP.i, align 8
  %2598 = add i64 %2597, -28
  %2599 = add i64 %2596, 3
  store i64 %2599, i64* %3, align 8
  %2600 = inttoptr i64 %2598 to i32*
  %2601 = load i32, i32* %2600, align 4
  %2602 = zext i32 %2601 to i64
  store i64 %2602, i64* %.pre104, align 8
  %2603 = add i64 %2597, -24
  %2604 = add i64 %2596, 7
  store i64 %2604, i64* %3, align 8
  %2605 = inttoptr i64 %2603 to i64*
  %2606 = load i64, i64* %2605, align 8
  store i64 %2606, i64* %RCX.i915.pre-phi, align 8
  %2607 = add i64 %2606, 24
  %2608 = add i64 %2596, 10
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = sub i32 %2601, %2610
  %2612 = icmp ult i32 %2601, %2610
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %14, align 1
  %2614 = and i32 %2611, 255
  %2615 = tail call i32 @llvm.ctpop.i32(i32 %2614)
  %2616 = trunc i32 %2615 to i8
  %2617 = and i8 %2616, 1
  %2618 = xor i8 %2617, 1
  store i8 %2618, i8* %21, align 1
  %2619 = xor i32 %2610, %2601
  %2620 = xor i32 %2619, %2611
  %2621 = lshr i32 %2620, 4
  %2622 = trunc i32 %2621 to i8
  %2623 = and i8 %2622, 1
  store i8 %2623, i8* %26, align 1
  %2624 = icmp eq i32 %2611, 0
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %29, align 1
  %2626 = lshr i32 %2611, 31
  %2627 = trunc i32 %2626 to i8
  store i8 %2627, i8* %32, align 1
  %2628 = lshr i32 %2601, 31
  %2629 = lshr i32 %2610, 31
  %2630 = xor i32 %2629, %2628
  %2631 = xor i32 %2626, %2628
  %2632 = add nuw nsw i32 %2631, %2630
  %2633 = icmp eq i32 %2632, 2
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %38, align 1
  %2635 = icmp ne i8 %2627, 0
  %2636 = xor i1 %2635, %2633
  %.demorgan121 = or i1 %2624, %2636
  %.v136 = select i1 %.demorgan121, i64 16, i64 363
  %2637 = add i64 %2596, %.v136
  store i64 %2637, i64* %3, align 8
  br i1 %.demorgan121, label %block_42a559, label %block_.L_42a6b4

block_42a559:                                     ; preds = %block_.L_42a549
  %2638 = add i64 %2597, -16
  %2639 = add i64 %2637, 4
  store i64 %2639, i64* %3, align 8
  %2640 = inttoptr i64 %2638 to i64*
  %2641 = load i64, i64* %2640, align 8
  store i64 %2641, i64* %.pre104, align 8
  %2642 = add i64 %2637, 8
  store i64 %2642, i64* %3, align 8
  %2643 = load i32, i32* %2600, align 4
  %2644 = sext i32 %2643 to i64
  store i64 %2644, i64* %RCX.i915.pre-phi, align 8
  %2645 = shl nsw i64 %2644, 2
  %2646 = add i64 %2645, %2641
  %2647 = add i64 %2637, 11
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i32*
  %2649 = load i32, i32* %2648, align 4
  %2650 = and i32 %2649, 1
  %2651 = zext i32 %2650 to i64
  store i64 %2651, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  %2652 = tail call i32 @llvm.ctpop.i32(i32 %2650)
  %2653 = trunc i32 %2652 to i8
  %2654 = xor i8 %2653, 1
  store i8 %2654, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2655 = icmp eq i32 %2650, 0
  %2656 = trunc i32 %2650 to i8
  %2657 = xor i8 %2656, 1
  store i8 %2657, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v137 = select i1 %2655, i64 328, i64 23
  %2658 = add i64 %2637, %.v137
  store i64 %2658, i64* %3, align 8
  br i1 %2655, label %block_.L_42a6a1, label %block_42a570

block_42a570:                                     ; preds = %block_42a559
  %2659 = add i64 %2658, -167520
  %2660 = add i64 %2658, 5
  %2661 = load i64, i64* %6, align 8
  %2662 = add i64 %2661, -8
  %2663 = inttoptr i64 %2662 to i64*
  store i64 %2660, i64* %2663, align 8
  store i64 %2662, i64* %6, align 8
  store i64 %2659, i64* %3, align 8
  %call2_42a570 = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %2659, %struct.Memory* %call2_42a52e)
  %2664 = load i64*, i64** %2595, align 8
  %2665 = load i64, i64* %3, align 8
  %2666 = add i64 %2665, 3
  store i64 %2666, i64* %3, align 8
  %2667 = load i64, i64* %2664, align 8
  store i64 %2667, i64* %.pre104, align 8
  %2668 = load i64, i64* %RBP.i, align 8
  %2669 = add i64 %2668, -40
  %2670 = add i64 %2665, 7
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i64*
  %2672 = load i64, i64* %2671, align 8
  store i64 %2672, i64* %RCX.i915.pre-phi, align 8
  %2673 = add i64 %2668, -28
  %2674 = add i64 %2665, 10
  store i64 %2674, i64* %3, align 8
  %2675 = inttoptr i64 %2673 to i32*
  %2676 = load i32, i32* %2675, align 4
  %2677 = add i32 %2676, -1
  %2678 = zext i32 %2677 to i64
  store i64 %2678, i64* %RDX.i1370, align 8
  %2679 = icmp eq i32 %2676, 0
  %2680 = zext i1 %2679 to i8
  store i8 %2680, i8* %14, align 1
  %2681 = and i32 %2677, 255
  %2682 = tail call i32 @llvm.ctpop.i32(i32 %2681)
  %2683 = trunc i32 %2682 to i8
  %2684 = and i8 %2683, 1
  %2685 = xor i8 %2684, 1
  store i8 %2685, i8* %21, align 1
  %2686 = xor i32 %2677, %2676
  %2687 = lshr i32 %2686, 4
  %2688 = trunc i32 %2687 to i8
  %2689 = and i8 %2688, 1
  store i8 %2689, i8* %26, align 1
  %2690 = icmp eq i32 %2677, 0
  %2691 = zext i1 %2690 to i8
  store i8 %2691, i8* %29, align 1
  %2692 = lshr i32 %2677, 31
  %2693 = trunc i32 %2692 to i8
  store i8 %2693, i8* %32, align 1
  %2694 = lshr i32 %2676, 31
  %2695 = xor i32 %2692, %2694
  %2696 = add nuw nsw i32 %2695, %2694
  %2697 = icmp eq i32 %2696, 2
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %38, align 1
  %2699 = sext i32 %2677 to i64
  store i64 %2699, i64* %RSI.i1373, align 8
  %2700 = add i64 %2672, %2699
  %2701 = add i64 %2665, 20
  store i64 %2701, i64* %3, align 8
  %2702 = inttoptr i64 %2700 to i8*
  %2703 = load i8, i8* %2702, align 1
  %2704 = sext i8 %2703 to i64
  %2705 = and i64 %2704, 4294967295
  store i64 %2705, i64* %RDX.i1370, align 8
  %2706 = sext i8 %2703 to i64
  store i64 %2706, i64* %RCX.i915.pre-phi, align 8
  %2707 = shl nsw i64 %2706, 1
  %2708 = add i64 %2667, %2707
  %2709 = add i64 %2665, 27
  store i64 %2709, i64* %3, align 8
  %2710 = inttoptr i64 %2708 to i16*
  %2711 = load i16, i16* %2710, align 2
  %2712 = and i16 %2711, 2048
  %2713 = zext i16 %2712 to i64
  store i64 %2713, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2714 = icmp eq i16 %2712, 0
  %.lobit122 = lshr exact i16 %2712, 11
  %2715 = trunc i16 %.lobit122 to i8
  %2716 = xor i8 %2715, 1
  store i8 %2716, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v138 = select i1 %2714, i64 82, i64 42
  %2717 = add i64 %2665, %.v138
  store i64 %2717, i64* %3, align 8
  br i1 %2714, label %block_.L_42a5c7, label %block_42a59f

block_42a59f:                                     ; preds = %block_42a570
  %2718 = load i64, i64* %RBP.i, align 8
  %2719 = add i64 %2718, -40
  %2720 = add i64 %2717, 4
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i64*
  %2722 = load i64, i64* %2721, align 8
  store i64 %2722, i64* %.pre104, align 8
  %2723 = add i64 %2718, -28
  %2724 = add i64 %2717, 7
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2723 to i32*
  %2726 = load i32, i32* %2725, align 4
  %2727 = add i32 %2726, -1
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %RCX.i915.pre-phi, align 8
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
  store i8 %2739, i8* %26, align 1
  %2740 = icmp eq i32 %2727, 0
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %29, align 1
  %2742 = lshr i32 %2727, 31
  %2743 = trunc i32 %2742 to i8
  store i8 %2743, i8* %32, align 1
  %2744 = lshr i32 %2726, 31
  %2745 = xor i32 %2742, %2744
  %2746 = add nuw nsw i32 %2745, %2744
  %2747 = icmp eq i32 %2746, 2
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %38, align 1
  %2749 = sext i32 %2727 to i64
  store i64 %2749, i64* %RDX.i1370, align 8
  %2750 = add i64 %2722, %2749
  %2751 = add i64 %2717, 17
  store i64 %2751, i64* %3, align 8
  %2752 = inttoptr i64 %2750 to i8*
  %2753 = load i8, i8* %2752, align 1
  %2754 = sext i8 %2753 to i32
  %2755 = add nsw i32 %2754, -48
  %2756 = zext i32 %2755 to i64
  store i64 %2756, i64* %RCX.i915.pre-phi, align 8
  %2757 = icmp ult i8 %2753, 48
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %14, align 1
  %2759 = and i32 %2755, 255
  %2760 = tail call i32 @llvm.ctpop.i32(i32 %2759)
  %2761 = trunc i32 %2760 to i8
  %2762 = and i8 %2761, 1
  %2763 = xor i8 %2762, 1
  store i8 %2763, i8* %21, align 1
  %2764 = xor i8 %2753, 16
  %2765 = zext i8 %2764 to i32
  %2766 = xor i32 %2765, %2755
  %2767 = lshr i32 %2766, 4
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  store i8 %2769, i8* %26, align 1
  %2770 = icmp eq i32 %2755, 0
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %29, align 1
  %2772 = lshr i32 %2755, 31
  %2773 = trunc i32 %2772 to i8
  store i8 %2773, i8* %32, align 1
  %2774 = lshr i32 %2754, 31
  %2775 = xor i32 %2772, %2774
  %2776 = add nuw nsw i32 %2775, %2774
  %2777 = icmp eq i32 %2776, 2
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %38, align 1
  %2779 = add i64 %2718, -8
  %2780 = add i64 %2717, 24
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2779 to i64*
  %2782 = load i64, i64* %2781, align 8
  store i64 %2782, i64* %.pre104, align 8
  %2783 = add i64 %2782, 88
  %2784 = add i64 %2717, 28
  store i64 %2784, i64* %3, align 8
  %2785 = inttoptr i64 %2783 to i64*
  %2786 = load i64, i64* %2785, align 8
  store i64 %2786, i64* %.pre104, align 8
  %2787 = load i64, i64* %RBP.i, align 8
  %2788 = add i64 %2787, -32
  %2789 = add i64 %2717, 32
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2788 to i32*
  %2791 = load i32, i32* %2790, align 4
  %2792 = sext i32 %2791 to i64
  store i64 %2792, i64* %RDX.i1370, align 8
  %2793 = shl nsw i64 %2792, 2
  %2794 = add i64 %2793, %2786
  %2795 = add i64 %2717, 35
  store i64 %2795, i64* %3, align 8
  %2796 = inttoptr i64 %2794 to i32*
  store i32 %2755, i32* %2796, align 4
  %2797 = load i64, i64* %3, align 8
  %2798 = add i64 %2797, 214
  br label %block_.L_42a698

block_.L_42a5c7:                                  ; preds = %block_42a570
  %2799 = add i64 %2717, -167607
  %2800 = add i64 %2717, 5
  %2801 = load i64, i64* %6, align 8
  %2802 = add i64 %2801, -8
  %2803 = inttoptr i64 %2802 to i64*
  store i64 %2800, i64* %2803, align 8
  store i64 %2802, i64* %6, align 8
  store i64 %2799, i64* %3, align 8
  %call2_42a5c7 = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %2799, %struct.Memory* %call2_42a52e)
  %2804 = load i64*, i64** %2595, align 8
  %2805 = load i64, i64* %3, align 8
  %2806 = add i64 %2805, 3
  store i64 %2806, i64* %3, align 8
  %2807 = load i64, i64* %2804, align 8
  store i64 %2807, i64* %.pre104, align 8
  %2808 = load i64, i64* %RBP.i, align 8
  %2809 = add i64 %2808, -40
  %2810 = add i64 %2805, 7
  store i64 %2810, i64* %3, align 8
  %2811 = inttoptr i64 %2809 to i64*
  %2812 = load i64, i64* %2811, align 8
  store i64 %2812, i64* %RCX.i915.pre-phi, align 8
  %2813 = add i64 %2808, -28
  %2814 = add i64 %2805, 10
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2813 to i32*
  %2816 = load i32, i32* %2815, align 4
  %2817 = add i32 %2816, -1
  %2818 = zext i32 %2817 to i64
  store i64 %2818, i64* %RDX.i1370, align 8
  %2819 = icmp eq i32 %2816, 0
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %14, align 1
  %2821 = and i32 %2817, 255
  %2822 = tail call i32 @llvm.ctpop.i32(i32 %2821)
  %2823 = trunc i32 %2822 to i8
  %2824 = and i8 %2823, 1
  %2825 = xor i8 %2824, 1
  store i8 %2825, i8* %21, align 1
  %2826 = xor i32 %2817, %2816
  %2827 = lshr i32 %2826, 4
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  store i8 %2829, i8* %26, align 1
  %2830 = icmp eq i32 %2817, 0
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %29, align 1
  %2832 = lshr i32 %2817, 31
  %2833 = trunc i32 %2832 to i8
  store i8 %2833, i8* %32, align 1
  %2834 = lshr i32 %2816, 31
  %2835 = xor i32 %2832, %2834
  %2836 = add nuw nsw i32 %2835, %2834
  %2837 = icmp eq i32 %2836, 2
  %2838 = zext i1 %2837 to i8
  store i8 %2838, i8* %38, align 1
  %2839 = sext i32 %2817 to i64
  store i64 %2839, i64* %RSI.i1373, align 8
  %2840 = add i64 %2812, %2839
  %2841 = add i64 %2805, 20
  store i64 %2841, i64* %3, align 8
  %2842 = inttoptr i64 %2840 to i8*
  %2843 = load i8, i8* %2842, align 1
  %2844 = sext i8 %2843 to i64
  %2845 = and i64 %2844, 4294967295
  store i64 %2845, i64* %RDX.i1370, align 8
  %2846 = sext i8 %2843 to i64
  store i64 %2846, i64* %RCX.i915.pre-phi, align 8
  %2847 = shl nsw i64 %2846, 1
  %2848 = add i64 %2807, %2847
  %2849 = add i64 %2805, 27
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i16*
  %2851 = load i16, i16* %2850, align 2
  %2852 = and i16 %2851, 512
  %2853 = zext i16 %2852 to i64
  store i64 %2853, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2854 = icmp eq i16 %2852, 0
  %.lobit123 = lshr exact i16 %2852, 9
  %2855 = trunc i16 %.lobit123 to i8
  %2856 = xor i8 %2855, 1
  store i8 %2856, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v139 = select i1 %2854, i64 85, i64 42
  %2857 = add i64 %2805, %.v139
  store i64 %2857, i64* %3, align 8
  br i1 %2854, label %block_.L_42a621, label %block_42a5f6

block_42a5f6:                                     ; preds = %block_.L_42a5c7
  %2858 = load i64, i64* %RBP.i, align 8
  %2859 = add i64 %2858, -40
  %2860 = add i64 %2857, 4
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i64*
  %2862 = load i64, i64* %2861, align 8
  store i64 %2862, i64* %.pre104, align 8
  %2863 = add i64 %2858, -28
  %2864 = add i64 %2857, 7
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i32*
  %2866 = load i32, i32* %2865, align 4
  %2867 = add i32 %2866, -1
  %2868 = zext i32 %2867 to i64
  store i64 %2868, i64* %RCX.i915.pre-phi, align 8
  %2869 = icmp eq i32 %2866, 0
  %2870 = zext i1 %2869 to i8
  store i8 %2870, i8* %14, align 1
  %2871 = and i32 %2867, 255
  %2872 = tail call i32 @llvm.ctpop.i32(i32 %2871)
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  %2875 = xor i8 %2874, 1
  store i8 %2875, i8* %21, align 1
  %2876 = xor i32 %2867, %2866
  %2877 = lshr i32 %2876, 4
  %2878 = trunc i32 %2877 to i8
  %2879 = and i8 %2878, 1
  store i8 %2879, i8* %26, align 1
  %2880 = icmp eq i32 %2867, 0
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %29, align 1
  %2882 = lshr i32 %2867, 31
  %2883 = trunc i32 %2882 to i8
  store i8 %2883, i8* %32, align 1
  %2884 = lshr i32 %2866, 31
  %2885 = xor i32 %2882, %2884
  %2886 = add nuw nsw i32 %2885, %2884
  %2887 = icmp eq i32 %2886, 2
  %2888 = zext i1 %2887 to i8
  store i8 %2888, i8* %38, align 1
  %2889 = sext i32 %2867 to i64
  store i64 %2889, i64* %RDX.i1370, align 8
  %2890 = add i64 %2862, %2889
  %2891 = add i64 %2857, 17
  store i64 %2891, i64* %3, align 8
  %2892 = inttoptr i64 %2890 to i8*
  %2893 = load i8, i8* %2892, align 1
  %2894 = sext i8 %2893 to i32
  %2895 = add nsw i32 %2894, -97
  %2896 = lshr i32 %2895, 31
  %2897 = add nsw i32 %2894, -87
  %2898 = zext i32 %2897 to i64
  store i64 %2898, i64* %RCX.i915.pre-phi, align 8
  %2899 = icmp ugt i32 %2895, -11
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %14, align 1
  %2901 = and i32 %2897, 255
  %2902 = tail call i32 @llvm.ctpop.i32(i32 %2901)
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  %2905 = xor i8 %2904, 1
  store i8 %2905, i8* %21, align 1
  %2906 = xor i32 %2897, %2895
  %2907 = lshr i32 %2906, 4
  %2908 = trunc i32 %2907 to i8
  %2909 = and i8 %2908, 1
  store i8 %2909, i8* %26, align 1
  %2910 = icmp eq i32 %2897, 0
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %29, align 1
  %2912 = lshr i32 %2897, 31
  %2913 = trunc i32 %2912 to i8
  store i8 %2913, i8* %32, align 1
  %2914 = xor i32 %2912, %2896
  %2915 = add nuw nsw i32 %2914, %2912
  %2916 = icmp eq i32 %2915, 2
  %2917 = zext i1 %2916 to i8
  store i8 %2917, i8* %38, align 1
  %2918 = load i64, i64* %RBP.i, align 8
  %2919 = add i64 %2918, -8
  %2920 = add i64 %2857, 27
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i64*
  %2922 = load i64, i64* %2921, align 8
  store i64 %2922, i64* %.pre104, align 8
  %2923 = add i64 %2922, 88
  %2924 = add i64 %2857, 31
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i64*
  %2926 = load i64, i64* %2925, align 8
  store i64 %2926, i64* %.pre104, align 8
  %2927 = add i64 %2918, -32
  %2928 = add i64 %2857, 35
  store i64 %2928, i64* %3, align 8
  %2929 = inttoptr i64 %2927 to i32*
  %2930 = load i32, i32* %2929, align 4
  %2931 = sext i32 %2930 to i64
  store i64 %2931, i64* %RDX.i1370, align 8
  %2932 = shl nsw i64 %2931, 2
  %2933 = add i64 %2932, %2926
  %2934 = add i64 %2857, 38
  store i64 %2934, i64* %3, align 8
  %2935 = inttoptr i64 %2933 to i32*
  store i32 %2897, i32* %2935, align 4
  %2936 = load i64, i64* %3, align 8
  %2937 = add i64 %2936, 119
  br label %block_.L_42a693

block_.L_42a621:                                  ; preds = %block_.L_42a5c7
  %2938 = add i64 %2857, -167697
  %2939 = add i64 %2857, 5
  %2940 = load i64, i64* %6, align 8
  %2941 = add i64 %2940, -8
  %2942 = inttoptr i64 %2941 to i64*
  store i64 %2939, i64* %2942, align 8
  store i64 %2941, i64* %6, align 8
  store i64 %2938, i64* %3, align 8
  %call2_42a621 = tail call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* nonnull %0, i64 %2938, %struct.Memory* %call2_42a52e)
  %2943 = load i64*, i64** %2595, align 8
  %2944 = load i64, i64* %3, align 8
  %2945 = add i64 %2944, 3
  store i64 %2945, i64* %3, align 8
  %2946 = load i64, i64* %2943, align 8
  store i64 %2946, i64* %.pre104, align 8
  %2947 = load i64, i64* %RBP.i, align 8
  %2948 = add i64 %2947, -40
  %2949 = add i64 %2944, 7
  store i64 %2949, i64* %3, align 8
  %2950 = inttoptr i64 %2948 to i64*
  %2951 = load i64, i64* %2950, align 8
  store i64 %2951, i64* %RCX.i915.pre-phi, align 8
  %2952 = add i64 %2947, -28
  %2953 = add i64 %2944, 10
  store i64 %2953, i64* %3, align 8
  %2954 = inttoptr i64 %2952 to i32*
  %2955 = load i32, i32* %2954, align 4
  %2956 = add i32 %2955, -1
  %2957 = zext i32 %2956 to i64
  store i64 %2957, i64* %RDX.i1370, align 8
  %2958 = icmp eq i32 %2955, 0
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %14, align 1
  %2960 = and i32 %2956, 255
  %2961 = tail call i32 @llvm.ctpop.i32(i32 %2960)
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  %2964 = xor i8 %2963, 1
  store i8 %2964, i8* %21, align 1
  %2965 = xor i32 %2956, %2955
  %2966 = lshr i32 %2965, 4
  %2967 = trunc i32 %2966 to i8
  %2968 = and i8 %2967, 1
  store i8 %2968, i8* %26, align 1
  %2969 = icmp eq i32 %2956, 0
  %2970 = zext i1 %2969 to i8
  store i8 %2970, i8* %29, align 1
  %2971 = lshr i32 %2956, 31
  %2972 = trunc i32 %2971 to i8
  store i8 %2972, i8* %32, align 1
  %2973 = lshr i32 %2955, 31
  %2974 = xor i32 %2971, %2973
  %2975 = add nuw nsw i32 %2974, %2973
  %2976 = icmp eq i32 %2975, 2
  %2977 = zext i1 %2976 to i8
  store i8 %2977, i8* %38, align 1
  %2978 = sext i32 %2956 to i64
  store i64 %2978, i64* %RSI.i1373, align 8
  %2979 = add i64 %2951, %2978
  %2980 = add i64 %2944, 20
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i8*
  %2982 = load i8, i8* %2981, align 1
  %2983 = sext i8 %2982 to i64
  %2984 = and i64 %2983, 4294967295
  store i64 %2984, i64* %RDX.i1370, align 8
  %2985 = sext i8 %2982 to i64
  store i64 %2985, i64* %RCX.i915.pre-phi, align 8
  %2986 = shl nsw i64 %2985, 1
  %2987 = add i64 %2946, %2986
  %2988 = add i64 %2944, 27
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2987 to i16*
  %2990 = load i16, i16* %2989, align 2
  %2991 = and i16 %2990, 256
  %2992 = zext i16 %2991 to i64
  store i64 %2992, i64* %RDX.i1370, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2993 = icmp eq i16 %2991, 0
  %.lobit124 = lshr exact i16 %2991, 8
  %2994 = trunc i16 %.lobit124 to i8
  %2995 = xor i8 %2994, 1
  store i8 %2995, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v140 = select i1 %2993, i64 85, i64 42
  %2996 = add i64 %2944, %.v140
  store i64 %2996, i64* %3, align 8
  %2997 = load i64, i64* %RBP.i, align 8
  br i1 %2993, label %block_.L_42a67b, label %block_42a650

block_42a650:                                     ; preds = %block_.L_42a621
  %2998 = add i64 %2997, -40
  %2999 = add i64 %2996, 4
  store i64 %2999, i64* %3, align 8
  %3000 = inttoptr i64 %2998 to i64*
  %3001 = load i64, i64* %3000, align 8
  store i64 %3001, i64* %.pre104, align 8
  %3002 = add i64 %2997, -28
  %3003 = add i64 %2996, 7
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i32*
  %3005 = load i32, i32* %3004, align 4
  %3006 = add i32 %3005, -1
  %3007 = zext i32 %3006 to i64
  store i64 %3007, i64* %RCX.i915.pre-phi, align 8
  %3008 = icmp eq i32 %3005, 0
  %3009 = zext i1 %3008 to i8
  store i8 %3009, i8* %14, align 1
  %3010 = and i32 %3006, 255
  %3011 = tail call i32 @llvm.ctpop.i32(i32 %3010)
  %3012 = trunc i32 %3011 to i8
  %3013 = and i8 %3012, 1
  %3014 = xor i8 %3013, 1
  store i8 %3014, i8* %21, align 1
  %3015 = xor i32 %3006, %3005
  %3016 = lshr i32 %3015, 4
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  store i8 %3018, i8* %26, align 1
  %3019 = icmp eq i32 %3006, 0
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %29, align 1
  %3021 = lshr i32 %3006, 31
  %3022 = trunc i32 %3021 to i8
  store i8 %3022, i8* %32, align 1
  %3023 = lshr i32 %3005, 31
  %3024 = xor i32 %3021, %3023
  %3025 = add nuw nsw i32 %3024, %3023
  %3026 = icmp eq i32 %3025, 2
  %3027 = zext i1 %3026 to i8
  store i8 %3027, i8* %38, align 1
  %3028 = sext i32 %3006 to i64
  store i64 %3028, i64* %RDX.i1370, align 8
  %3029 = add i64 %3001, %3028
  %3030 = add i64 %2996, 17
  store i64 %3030, i64* %3, align 8
  %3031 = inttoptr i64 %3029 to i8*
  %3032 = load i8, i8* %3031, align 1
  %3033 = sext i8 %3032 to i32
  %3034 = add nsw i32 %3033, -65
  %3035 = lshr i32 %3034, 31
  %3036 = add nsw i32 %3033, -55
  %3037 = zext i32 %3036 to i64
  store i64 %3037, i64* %RCX.i915.pre-phi, align 8
  %3038 = icmp ugt i32 %3034, -11
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %14, align 1
  %3040 = and i32 %3036, 255
  %3041 = tail call i32 @llvm.ctpop.i32(i32 %3040)
  %3042 = trunc i32 %3041 to i8
  %3043 = and i8 %3042, 1
  %3044 = xor i8 %3043, 1
  store i8 %3044, i8* %21, align 1
  %3045 = xor i32 %3036, %3034
  %3046 = lshr i32 %3045, 4
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  store i8 %3048, i8* %26, align 1
  %3049 = icmp eq i32 %3036, 0
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %29, align 1
  %3051 = lshr i32 %3036, 31
  %3052 = trunc i32 %3051 to i8
  store i8 %3052, i8* %32, align 1
  %3053 = xor i32 %3051, %3035
  %3054 = add nuw nsw i32 %3053, %3051
  %3055 = icmp eq i32 %3054, 2
  %3056 = zext i1 %3055 to i8
  store i8 %3056, i8* %38, align 1
  %3057 = load i64, i64* %RBP.i, align 8
  %3058 = add i64 %3057, -8
  %3059 = add i64 %2996, 27
  store i64 %3059, i64* %3, align 8
  %3060 = inttoptr i64 %3058 to i64*
  %3061 = load i64, i64* %3060, align 8
  store i64 %3061, i64* %.pre104, align 8
  %3062 = add i64 %3061, 88
  %3063 = add i64 %2996, 31
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3062 to i64*
  %3065 = load i64, i64* %3064, align 8
  store i64 %3065, i64* %.pre104, align 8
  %3066 = add i64 %3057, -32
  %3067 = add i64 %2996, 35
  store i64 %3067, i64* %3, align 8
  %3068 = inttoptr i64 %3066 to i32*
  %3069 = load i32, i32* %3068, align 4
  %3070 = sext i32 %3069 to i64
  store i64 %3070, i64* %RDX.i1370, align 8
  %3071 = shl nsw i64 %3070, 2
  %3072 = add i64 %3071, %3065
  %3073 = add i64 %2996, 38
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3072 to i32*
  store i32 %3036, i32* %3074, align 4
  %3075 = load i64, i64* %3, align 8
  %3076 = add i64 %3075, 24
  store i64 %3076, i64* %3, align 8
  br label %block_.L_42a68e

block_.L_42a67b:                                  ; preds = %block_.L_42a621
  %3077 = add i64 %2997, -8
  %3078 = add i64 %2996, 4
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3077 to i64*
  %3080 = load i64, i64* %3079, align 8
  store i64 %3080, i64* %.pre104, align 8
  %3081 = add i64 %3080, 88
  %3082 = add i64 %2996, 8
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i64*
  %3084 = load i64, i64* %3083, align 8
  store i64 %3084, i64* %.pre104, align 8
  %3085 = add i64 %2997, -32
  %3086 = add i64 %2996, 12
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i32*
  %3088 = load i32, i32* %3087, align 4
  %3089 = sext i32 %3088 to i64
  store i64 %3089, i64* %RCX.i915.pre-phi, align 8
  %3090 = shl nsw i64 %3089, 2
  %3091 = add i64 %3090, %3084
  %3092 = add i64 %2996, 19
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3091 to i32*
  store i32 -1, i32* %3093, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_42a68e

block_.L_42a68e:                                  ; preds = %block_.L_42a67b, %block_42a650
  %3094 = phi i64 [ %.pre100, %block_.L_42a67b ], [ %3076, %block_42a650 ]
  %3095 = add i64 %3094, 5
  store i64 %3095, i64* %3, align 8
  br label %block_.L_42a693

block_.L_42a693:                                  ; preds = %block_.L_42a68e, %block_42a5f6
  %storemerge46 = phi i64 [ %2937, %block_42a5f6 ], [ %3095, %block_.L_42a68e ]
  %3096 = add i64 %storemerge46, 5
  store i64 %3096, i64* %3, align 8
  br label %block_.L_42a698

block_.L_42a698:                                  ; preds = %block_.L_42a693, %block_42a59f
  %storemerge44 = phi i64 [ %2798, %block_42a59f ], [ %3096, %block_.L_42a693 ]
  %3097 = load i64, i64* %RBP.i, align 8
  %3098 = add i64 %3097, -32
  %3099 = add i64 %storemerge44, 3
  store i64 %3099, i64* %3, align 8
  %3100 = inttoptr i64 %3098 to i32*
  %3101 = load i32, i32* %3100, align 4
  %3102 = add i32 %3101, 1
  %3103 = zext i32 %3102 to i64
  store i64 %3103, i64* %.pre104, align 8
  %3104 = icmp eq i32 %3101, -1
  %3105 = icmp eq i32 %3102, 0
  %3106 = or i1 %3104, %3105
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %14, align 1
  %3108 = and i32 %3102, 255
  %3109 = tail call i32 @llvm.ctpop.i32(i32 %3108)
  %3110 = trunc i32 %3109 to i8
  %3111 = and i8 %3110, 1
  %3112 = xor i8 %3111, 1
  store i8 %3112, i8* %21, align 1
  %3113 = xor i32 %3102, %3101
  %3114 = lshr i32 %3113, 4
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  store i8 %3116, i8* %26, align 1
  %3117 = zext i1 %3105 to i8
  store i8 %3117, i8* %29, align 1
  %3118 = lshr i32 %3102, 31
  %3119 = trunc i32 %3118 to i8
  store i8 %3119, i8* %32, align 1
  %3120 = lshr i32 %3101, 31
  %3121 = xor i32 %3118, %3120
  %3122 = add nuw nsw i32 %3121, %3118
  %3123 = icmp eq i32 %3122, 2
  %3124 = zext i1 %3123 to i8
  store i8 %3124, i8* %38, align 1
  %3125 = add i64 %storemerge44, 9
  store i64 %3125, i64* %3, align 8
  store i32 %3102, i32* %3100, align 4
  %.pre101 = load i64, i64* %3, align 8
  %.pre102 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42a6a1

block_.L_42a6a1:                                  ; preds = %block_.L_42a698, %block_42a559
  %3126 = phi i64 [ %.pre102, %block_.L_42a698 ], [ %2597, %block_42a559 ]
  %3127 = phi i64 [ %.pre101, %block_.L_42a698 ], [ %2658, %block_42a559 ]
  %3128 = add i64 %3126, -28
  %3129 = add i64 %3127, 8
  store i64 %3129, i64* %3, align 8
  %3130 = inttoptr i64 %3128 to i32*
  %3131 = load i32, i32* %3130, align 4
  %3132 = add i32 %3131, 1
  %3133 = zext i32 %3132 to i64
  store i64 %3133, i64* %.pre104, align 8
  %3134 = icmp eq i32 %3131, -1
  %3135 = icmp eq i32 %3132, 0
  %3136 = or i1 %3134, %3135
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %14, align 1
  %3138 = and i32 %3132, 255
  %3139 = tail call i32 @llvm.ctpop.i32(i32 %3138)
  %3140 = trunc i32 %3139 to i8
  %3141 = and i8 %3140, 1
  %3142 = xor i8 %3141, 1
  store i8 %3142, i8* %21, align 1
  %3143 = xor i32 %3132, %3131
  %3144 = lshr i32 %3143, 4
  %3145 = trunc i32 %3144 to i8
  %3146 = and i8 %3145, 1
  store i8 %3146, i8* %26, align 1
  %3147 = zext i1 %3135 to i8
  store i8 %3147, i8* %29, align 1
  %3148 = lshr i32 %3132, 31
  %3149 = trunc i32 %3148 to i8
  store i8 %3149, i8* %32, align 1
  %3150 = lshr i32 %3131, 31
  %3151 = xor i32 %3148, %3150
  %3152 = add nuw nsw i32 %3151, %3148
  %3153 = icmp eq i32 %3152, 2
  %3154 = zext i1 %3153 to i8
  store i8 %3154, i8* %38, align 1
  %3155 = add i64 %3127, 14
  store i64 %3155, i64* %3, align 8
  store i32 %3132, i32* %3130, align 4
  %3156 = load i64, i64* %3, align 8
  %3157 = add i64 %3156, -358
  store i64 %3157, i64* %3, align 8
  br label %block_.L_42a549

block_.L_42a6b4:                                  ; preds = %block_.L_42a549
  %3158 = add i64 %2637, 5
  store i64 %3158, i64* %3, align 8
  br label %block_.L_42a6b9

block_.L_42a6b9:                                  ; preds = %block_.L_42a6b4, %block_.L_42a4e7
  %3159 = phi i64 [ %2543, %block_.L_42a4e7 ], [ %3158, %block_.L_42a6b4 ]
  %MEMORY.31 = phi %struct.Memory* [ %call2_42a4f5, %block_.L_42a4e7 ], [ %call2_42a52e, %block_.L_42a6b4 ]
  %3160 = load i64, i64* %6, align 8
  %3161 = add i64 %3160, 64
  store i64 %3161, i64* %6, align 8
  %3162 = icmp ugt i64 %3160, -65
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %14, align 1
  %3164 = trunc i64 %3161 to i32
  %3165 = and i32 %3164, 255
  %3166 = tail call i32 @llvm.ctpop.i32(i32 %3165)
  %3167 = trunc i32 %3166 to i8
  %3168 = and i8 %3167, 1
  %3169 = xor i8 %3168, 1
  store i8 %3169, i8* %21, align 1
  %3170 = xor i64 %3161, %3160
  %3171 = lshr i64 %3170, 4
  %3172 = trunc i64 %3171 to i8
  %3173 = and i8 %3172, 1
  store i8 %3173, i8* %26, align 1
  %3174 = icmp eq i64 %3161, 0
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %29, align 1
  %3176 = lshr i64 %3161, 63
  %3177 = trunc i64 %3176 to i8
  store i8 %3177, i8* %32, align 1
  %3178 = lshr i64 %3160, 63
  %3179 = xor i64 %3176, %3178
  %3180 = add nuw nsw i64 %3179, %3176
  %3181 = icmp eq i64 %3180, 2
  %3182 = zext i1 %3181 to i8
  store i8 %3182, i8* %38, align 1
  %3183 = add i64 %3159, 5
  store i64 %3183, i64* %3, align 8
  %3184 = add i64 %3160, 72
  %3185 = inttoptr i64 %3161 to i64*
  %3186 = load i64, i64* %3185, align 8
  store i64 %3186, i64* %RBP.i, align 8
  store i64 %3184, i64* %6, align 8
  %3187 = add i64 %3159, 6
  store i64 %3187, i64* %3, align 8
  %3188 = inttoptr i64 %3184 to i64*
  %3189 = load i64, i64* %3188, align 8
  store i64 %3189, i64* %3, align 8
  %3190 = add i64 %3160, 80
  store i64 %3190, i64* %6, align 8
  ret %struct.Memory* %MEMORY.31
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
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x58__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_429efa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x20____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 32, i8* %4, align 1
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
define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_jg_.L_429ed7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_429ec4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
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
define %struct.Memory* @routine_jne_.L_429e8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2e___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 46, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_429ea6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl____rdx__rdi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %CL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429ec9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429e3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_orl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 4
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__0x1c8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 456
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_429fe0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_429fbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_429faa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_429f74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_429f8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429faf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_429f22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 8
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x50__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a0c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_42a0a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42a090(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x50__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42a05a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42a072(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_0x28__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a095(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x2000___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 8192
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_jg_.L_42a12d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42a11a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x48__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_42a11f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a0d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45881d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45881d_type* @G__0x45881d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_orl__0x100___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 256
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
define %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 456
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.MSAGetGC(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a315(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x380___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 896, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
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
define %struct.Memory* @routine_movq__rax__0x60__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_42a310(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42a2fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rcx__rsi_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 1
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x800___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2048
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 11
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a223(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x30___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -48
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 48
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
define %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %ECX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a2f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x200___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 512
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 9
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a27d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x61___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -97
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 97
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
define %struct.Memory* @routine_addl__0xa___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 10
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -11
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
define %struct.Memory* @routine_jmpq_.L_42a2ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x100___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 256
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 8
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a2d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x41___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -65
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 65
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
define %struct.Memory* @routine_jmpq_.L_42a2ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 -1, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_42a302(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a1a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a315(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458823___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458823_type* @G__0x458823 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a4e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x38f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 911, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x68__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_42a4e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42a4cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42a3f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a4c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a44f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42a4c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a4a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42a4bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a4d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a377(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a4e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458829___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458829_type* @G__0x458829 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a6b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x39e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 926, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x58__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_42a6b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42a6a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42a5c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42a698(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a621(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42a693(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42a67b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42a68e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a6a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a549(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42a6b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -65
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
