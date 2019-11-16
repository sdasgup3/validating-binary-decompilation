; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G__0x579d92_type = type <{ [8 x i8] }>
%G__0x57f1e2_type = type <{ [8 x i8] }>
%G__0x581298_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G_0x99c0a0 = local_unnamed_addr global %G_0x99c0a0_type zeroinitializer
@G__0x579d92 = global %G__0x579d92_type zeroinitializer
@G__0x57f1e2 = global %G__0x57f1e2_type zeroinitializer
@G__0x581298 = global %G__0x581298_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_474970.start_draw_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_474da0.end_draw_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @draw_reading_shadow(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 32
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
  %39 = add i64 %7, -24
  %40 = add i64 %10, 14
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 32, i32* %41, align 4
  %42 = load i64, i64* %3, align 8
  %43 = add i64 %42, 32785
  %44 = add i64 %42, 5
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, -8
  %47 = inttoptr i64 %46 to i64*
  store i64 %44, i64* %47, align 8
  store i64 %46, i64* %6, align 8
  store i64 %43, i64* %3, align 8
  %call2_46c95f = tail call %struct.Memory* @sub_474970.start_draw_board(%struct.State* %0, i64 %43, %struct.Memory* %2)
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 7
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %49 to i32*
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i298 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  %EAX.i296 = bitcast %union.anon* %53 to i32*
  %RSI.i293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI.i283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RDX.i280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %AL.i278 = bitcast %union.anon* %53 to i8*
  %RCX.i254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_46c96b

block_.L_46c96b:                                  ; preds = %block_.L_46cb9c, %entry
  %54 = phi i64 [ %.pre, %entry ], [ %1210, %block_.L_46cb9c ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_46c95f, %entry ], [ %1172, %block_.L_46cb9c ]
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -4
  %57 = add i64 %54, 3
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %RAX.i298, align 8
  %61 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %62 = sub i32 %59, %61
  %63 = icmp ult i32 %59, %61
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %14, align 1
  %65 = and i32 %62, 255
  %66 = tail call i32 @llvm.ctpop.i32(i32 %65)
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  %69 = xor i8 %68, 1
  store i8 %69, i8* %21, align 1
  %70 = xor i32 %61, %59
  %71 = xor i32 %70, %62
  %72 = lshr i32 %71, 4
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  store i8 %74, i8* %26, align 1
  %75 = icmp eq i32 %62, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %29, align 1
  %77 = lshr i32 %62, 31
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %32, align 1
  %79 = lshr i32 %59, 31
  %80 = lshr i32 %61, 31
  %81 = xor i32 %80, %79
  %82 = xor i32 %77, %79
  %83 = add nuw nsw i32 %82, %81
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %38, align 1
  %86 = icmp ne i8 %78, 0
  %87 = xor i1 %86, %84
  %.v = select i1 %87, i64 16, i64 606
  %88 = add i64 %54, %.v
  store i64 %88, i64* %3, align 8
  br i1 %87, label %block_46c97b, label %block_.L_46cbc9

block_46c97b:                                     ; preds = %block_.L_46c96b
  store i64 ptrtoint (%G__0x57f1e2_type* @G__0x57f1e2 to i64), i64* %RSI.i293, align 8
  %89 = zext i32 %61 to i64
  store i64 %89, i64* %RAX.i298, align 8
  %90 = add i64 %88, 20
  store i64 %90, i64* %3, align 8
  %91 = load i32, i32* %58, align 4
  %92 = sub i32 %61, %91
  %93 = zext i32 %92 to i64
  store i64 %93, i64* %RAX.i298, align 8
  %94 = icmp ult i32 %61, %91
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %14, align 1
  %96 = and i32 %92, 255
  %97 = tail call i32 @llvm.ctpop.i32(i32 %96)
  %98 = trunc i32 %97 to i8
  %99 = and i8 %98, 1
  %100 = xor i8 %99, 1
  store i8 %100, i8* %21, align 1
  %101 = xor i32 %91, %61
  %102 = xor i32 %101, %92
  %103 = lshr i32 %102, 4
  %104 = trunc i32 %103 to i8
  %105 = and i8 %104, 1
  store i8 %105, i8* %26, align 1
  %106 = icmp eq i32 %92, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %29, align 1
  %108 = lshr i32 %92, 31
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %32, align 1
  %110 = lshr i32 %91, 31
  %111 = xor i32 %110, %80
  %112 = xor i32 %108, %80
  %113 = add nuw nsw i32 %112, %111
  %114 = icmp eq i32 %113, 2
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %38, align 1
  %116 = add i64 %55, -12
  %117 = add i64 %88, 23
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  store i32 %92, i32* %118, align 4
  %119 = load i64, i64* %3, align 8
  %120 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %120, i64* %RDI.i283, align 8
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -12
  %123 = add i64 %119, 11
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = zext i32 %125 to i64
  store i64 %126, i64* %RDX.i280, align 8
  store i8 0, i8* %AL.i278, align 1
  %127 = add i64 %119, -440514
  %128 = add i64 %119, 18
  %129 = load i64, i64* %6, align 8
  %130 = add i64 %129, -8
  %131 = inttoptr i64 %130 to i64*
  store i64 %128, i64* %131, align 8
  store i64 %130, i64* %6, align 8
  store i64 %127, i64* %3, align 8
  %132 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.0)
  %133 = load i64, i64* %RBP.i, align 8
  %134 = add i64 %133, -8
  %135 = load i64, i64* %3, align 8
  %136 = add i64 %135, 7
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %134 to i32*
  store i32 0, i32* %137, align 4
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -20
  %140 = load i32, i32* %EAX.i296, align 4
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, 3
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %139 to i32*
  store i32 %140, i32* %143, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_46c9ae

block_.L_46c9ae:                                  ; preds = %block_.L_46cb6f, %block_46c97b
  %144 = phi i64 [ %.pre19, %block_46c97b ], [ %1160, %block_.L_46cb6f ]
  %MEMORY.1 = phi %struct.Memory* [ %132, %block_46c97b ], [ %1122, %block_.L_46cb6f ]
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -8
  %147 = add i64 %144, 3
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i32*
  %149 = load i32, i32* %148, align 4
  %150 = zext i32 %149 to i64
  store i64 %150, i64* %RAX.i298, align 8
  %151 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %152 = sub i32 %149, %151
  %153 = icmp ult i32 %149, %151
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %14, align 1
  %155 = and i32 %152, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %21, align 1
  %160 = xor i32 %151, %149
  %161 = xor i32 %160, %152
  %162 = lshr i32 %161, 4
  %163 = trunc i32 %162 to i8
  %164 = and i8 %163, 1
  store i8 %164, i8* %26, align 1
  %165 = icmp eq i32 %152, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %29, align 1
  %167 = lshr i32 %152, 31
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %32, align 1
  %169 = lshr i32 %149, 31
  %170 = lshr i32 %151, 31
  %171 = xor i32 %170, %169
  %172 = xor i32 %167, %169
  %173 = add nuw nsw i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %38, align 1
  %176 = icmp ne i8 %168, 0
  %177 = xor i1 %176, %174
  %.v22 = select i1 %177, i64 16, i64 494
  %178 = add i64 %144, %.v22
  store i64 %178, i64* %3, align 8
  br i1 %177, label %block_46c9be, label %block_.L_46cb9c

block_46c9be:                                     ; preds = %block_.L_46c9ae
  %179 = add i64 %145, -4
  %180 = add i64 %178, 4
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = mul i32 %182, 20
  %184 = add i32 %183, 21
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RAX.i298, align 8
  %186 = icmp ugt i32 %183, -22
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %14, align 1
  %188 = and i32 %184, 253
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %21, align 1
  %193 = xor i32 %183, 16
  %194 = xor i32 %193, %184
  %195 = lshr i32 %194, 4
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %198 = lshr i32 %184, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %32, align 1
  %200 = lshr i32 %183, 31
  %201 = xor i32 %198, %200
  %202 = add nuw nsw i32 %201, %198
  %203 = icmp eq i32 %202, 2
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %38, align 1
  %205 = add i64 %178, 10
  store i64 %205, i64* %3, align 8
  %206 = load i32, i32* %148, align 4
  %207 = add i32 %206, %184
  %208 = zext i32 %207 to i64
  store i64 %208, i64* %RAX.i298, align 8
  %209 = icmp ult i32 %207, %184
  %210 = icmp ult i32 %207, %206
  %211 = or i1 %209, %210
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %14, align 1
  %213 = and i32 %207, 255
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %21, align 1
  %218 = xor i32 %206, %184
  %219 = xor i32 %218, %207
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %26, align 1
  %223 = icmp eq i32 %207, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %29, align 1
  %225 = lshr i32 %207, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %32, align 1
  %227 = lshr i32 %206, 31
  %228 = xor i32 %225, %198
  %229 = xor i32 %225, %227
  %230 = add nuw nsw i32 %228, %229
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %38, align 1
  %233 = sext i32 %207 to i64
  store i64 %233, i64* %RCX.i254, align 8
  %234 = add nsw i64 %233, 11554848
  %235 = add i64 %178, 21
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i8*
  %237 = load i8, i8* %236, align 1
  store i8 0, i8* %14, align 1
  %238 = zext i8 %237 to i32
  %239 = tail call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  store i8 %242, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %243 = icmp eq i8 %237, 0
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %29, align 1
  %245 = lshr i8 %237, 7
  store i8 %245, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v23 = select i1 %243, i64 27, i64 69
  %246 = add i64 %178, %.v23
  store i64 %246, i64* %3, align 8
  br i1 %243, label %block_46c9d9, label %block_.L_46ca03

block_46c9d9:                                     ; preds = %block_46c9be
  %247 = load i64, i64* %RBP.i, align 8
  %248 = add i64 %247, -4
  %249 = add i64 %246, 4
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = mul i32 %251, 20
  %253 = add i32 %252, 21
  %254 = zext i32 %253 to i64
  store i64 %254, i64* %RAX.i298, align 8
  %255 = icmp ugt i32 %252, -22
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %14, align 1
  %257 = and i32 %253, 253
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %21, align 1
  %262 = xor i32 %252, 16
  %263 = xor i32 %262, %253
  %264 = lshr i32 %263, 4
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %267 = lshr i32 %253, 31
  %268 = trunc i32 %267 to i8
  store i8 %268, i8* %32, align 1
  %269 = lshr i32 %252, 31
  %270 = xor i32 %267, %269
  %271 = add nuw nsw i32 %270, %267
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %38, align 1
  %274 = add i64 %247, -8
  %275 = add i64 %246, 10
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = add i32 %277, %253
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RAX.i298, align 8
  %280 = icmp ult i32 %278, %253
  %281 = icmp ult i32 %278, %277
  %282 = or i1 %280, %281
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %14, align 1
  %284 = and i32 %278, 255
  %285 = tail call i32 @llvm.ctpop.i32(i32 %284)
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  %288 = xor i8 %287, 1
  store i8 %288, i8* %21, align 1
  %289 = xor i32 %277, %253
  %290 = xor i32 %289, %278
  %291 = lshr i32 %290, 4
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %26, align 1
  %294 = icmp eq i32 %278, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %29, align 1
  %296 = lshr i32 %278, 31
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %32, align 1
  %298 = lshr i32 %277, 31
  %299 = xor i32 %296, %267
  %300 = xor i32 %296, %298
  %301 = add nuw nsw i32 %299, %300
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %38, align 1
  %304 = sext i32 %278 to i64
  store i64 %304, i64* %RCX.i254, align 8
  %305 = add nsw i64 %304, 12099168
  %306 = add i64 %246, 21
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i8*
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i64
  store i64 %309, i64* %RAX.i298, align 8
  %310 = zext i8 %308 to i32
  store i8 0, i8* %14, align 1
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310)
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  store i8 %314, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %315 = icmp eq i8 %308, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v34 = select i1 %315, i64 30, i64 42
  %317 = add i64 %246, %.v34
  store i64 %317, i64* %3, align 8
  br i1 %315, label %block_46c9f7, label %block_.L_46ca03

block_46c9f7:                                     ; preds = %block_46c9d9
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -16
  %320 = add i64 %317, 7
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  store i32 46, i32* %321, align 4
  %322 = load i64, i64* %3, align 8
  %323 = add i64 %322, 148
  br label %block_.L_46ca92

block_.L_46ca03:                                  ; preds = %block_46c9d9, %block_46c9be
  %324 = phi i64 [ %317, %block_46c9d9 ], [ %246, %block_46c9be ]
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -4
  %327 = add i64 %324, 4
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = mul i32 %329, 20
  %331 = add i32 %330, 21
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RAX.i298, align 8
  %333 = icmp ugt i32 %330, -22
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %14, align 1
  %335 = and i32 %331, 253
  %336 = tail call i32 @llvm.ctpop.i32(i32 %335)
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = xor i8 %338, 1
  store i8 %339, i8* %21, align 1
  %340 = xor i32 %330, 16
  %341 = xor i32 %340, %331
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %345 = lshr i32 %331, 31
  %346 = trunc i32 %345 to i8
  store i8 %346, i8* %32, align 1
  %347 = lshr i32 %330, 31
  %348 = xor i32 %345, %347
  %349 = add nuw nsw i32 %348, %345
  %350 = icmp eq i32 %349, 2
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %38, align 1
  %352 = add i64 %325, -8
  %353 = add i64 %324, 10
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i32*
  %355 = load i32, i32* %354, align 4
  %356 = add i32 %355, %331
  %357 = zext i32 %356 to i64
  store i64 %357, i64* %RAX.i298, align 8
  %358 = icmp ult i32 %356, %331
  %359 = icmp ult i32 %356, %355
  %360 = or i1 %358, %359
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %14, align 1
  %362 = and i32 %356, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %21, align 1
  %367 = xor i32 %355, %331
  %368 = xor i32 %367, %356
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %26, align 1
  %372 = icmp eq i32 %356, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %29, align 1
  %374 = lshr i32 %356, 31
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %32, align 1
  %376 = lshr i32 %355, 31
  %377 = xor i32 %374, %345
  %378 = xor i32 %374, %376
  %379 = add nuw nsw i32 %377, %378
  %380 = icmp eq i32 %379, 2
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %38, align 1
  %382 = sext i32 %356 to i64
  store i64 %382, i64* %RCX.i254, align 8
  %383 = add nsw i64 %382, 11554848
  %384 = add i64 %324, 21
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %383 to i8*
  %386 = load i8, i8* %385, align 1
  store i8 0, i8* %14, align 1
  %387 = zext i8 %386 to i32
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %392 = icmp eq i8 %386, 0
  %393 = zext i1 %392 to i8
  store i8 %393, i8* %29, align 1
  %394 = lshr i8 %386, 7
  store i8 %394, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v24 = select i1 %392, i64 27, i64 69
  %395 = add i64 %324, %.v24
  store i64 %395, i64* %3, align 8
  br i1 %392, label %block_46ca1e, label %block_.L_46ca48

block_46ca1e:                                     ; preds = %block_.L_46ca03
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -4
  %398 = add i64 %395, 4
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i32*
  %400 = load i32, i32* %399, align 4
  %401 = mul i32 %400, 20
  %402 = add i32 %401, 21
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RAX.i298, align 8
  %404 = icmp ugt i32 %401, -22
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %14, align 1
  %406 = and i32 %402, 253
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %21, align 1
  %411 = xor i32 %401, 16
  %412 = xor i32 %411, %402
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %416 = lshr i32 %402, 31
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %32, align 1
  %418 = lshr i32 %401, 31
  %419 = xor i32 %416, %418
  %420 = add nuw nsw i32 %419, %416
  %421 = icmp eq i32 %420, 2
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %38, align 1
  %423 = add i64 %396, -8
  %424 = add i64 %395, 10
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = add i32 %426, %402
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %RAX.i298, align 8
  %429 = icmp ult i32 %427, %402
  %430 = icmp ult i32 %427, %426
  %431 = or i1 %429, %430
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %14, align 1
  %433 = and i32 %427, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433)
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %21, align 1
  %438 = xor i32 %426, %402
  %439 = xor i32 %438, %427
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %26, align 1
  %443 = icmp eq i32 %427, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %29, align 1
  %445 = lshr i32 %427, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %32, align 1
  %447 = lshr i32 %426, 31
  %448 = xor i32 %445, %416
  %449 = xor i32 %445, %447
  %450 = add nuw nsw i32 %448, %449
  %451 = icmp eq i32 %450, 2
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %38, align 1
  %453 = sext i32 %427 to i64
  store i64 %453, i64* %RCX.i254, align 8
  %454 = add nsw i64 %453, 12099168
  %455 = add i64 %395, 21
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i8*
  %457 = load i8, i8* %456, align 1
  %458 = zext i8 %457 to i64
  store i64 %458, i64* %RAX.i298, align 8
  %459 = zext i8 %457 to i32
  %460 = add nsw i32 %459, -1
  %461 = icmp eq i8 %457, 0
  %462 = zext i1 %461 to i8
  store i8 %462, i8* %14, align 1
  %463 = and i32 %460, 255
  %464 = tail call i32 @llvm.ctpop.i32(i32 %463)
  %465 = trunc i32 %464 to i8
  %466 = and i8 %465, 1
  %467 = xor i8 %466, 1
  store i8 %467, i8* %21, align 1
  %468 = xor i32 %460, %459
  %469 = lshr i32 %468, 4
  %470 = trunc i32 %469 to i8
  %471 = and i8 %470, 1
  store i8 %471, i8* %26, align 1
  %472 = icmp eq i32 %460, 0
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %29, align 1
  %474 = lshr i32 %460, 31
  %475 = trunc i32 %474 to i8
  store i8 %475, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v33 = select i1 %472, i64 30, i64 42
  %476 = add i64 %395, %.v33
  store i64 %476, i64* %3, align 8
  br i1 %472, label %block_46ca3c, label %block_.L_46ca48

block_46ca3c:                                     ; preds = %block_46ca1e
  %477 = load i64, i64* %RBP.i, align 8
  %478 = add i64 %477, -16
  %479 = add i64 %476, 7
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to i32*
  store i32 79, i32* %480, align 4
  %481 = load i64, i64* %3, align 8
  %482 = add i64 %481, 74
  br label %block_.L_46ca8d

block_.L_46ca48:                                  ; preds = %block_46ca1e, %block_.L_46ca03
  %483 = phi i64 [ %476, %block_46ca1e ], [ %395, %block_.L_46ca03 ]
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -4
  %486 = add i64 %483, 4
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = mul i32 %488, 20
  %490 = add i32 %489, 21
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RAX.i298, align 8
  %492 = icmp ugt i32 %489, -22
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %14, align 1
  %494 = and i32 %490, 253
  %495 = tail call i32 @llvm.ctpop.i32(i32 %494)
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  %498 = xor i8 %497, 1
  store i8 %498, i8* %21, align 1
  %499 = xor i32 %489, 16
  %500 = xor i32 %499, %490
  %501 = lshr i32 %500, 4
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  store i8 %503, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %504 = lshr i32 %490, 31
  %505 = trunc i32 %504 to i8
  store i8 %505, i8* %32, align 1
  %506 = lshr i32 %489, 31
  %507 = xor i32 %504, %506
  %508 = add nuw nsw i32 %507, %504
  %509 = icmp eq i32 %508, 2
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %38, align 1
  %511 = add i64 %484, -8
  %512 = add i64 %483, 10
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = add i32 %514, %490
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RAX.i298, align 8
  %517 = icmp ult i32 %515, %490
  %518 = icmp ult i32 %515, %514
  %519 = or i1 %517, %518
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %14, align 1
  %521 = and i32 %515, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %21, align 1
  %526 = xor i32 %514, %490
  %527 = xor i32 %526, %515
  %528 = lshr i32 %527, 4
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  store i8 %530, i8* %26, align 1
  %531 = icmp eq i32 %515, 0
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %29, align 1
  %533 = lshr i32 %515, 31
  %534 = trunc i32 %533 to i8
  store i8 %534, i8* %32, align 1
  %535 = lshr i32 %514, 31
  %536 = xor i32 %533, %504
  %537 = xor i32 %533, %535
  %538 = add nuw nsw i32 %536, %537
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %38, align 1
  %541 = sext i32 %515 to i64
  store i64 %541, i64* %RCX.i254, align 8
  %542 = add nsw i64 %541, 11554848
  %543 = add i64 %483, 21
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i8*
  %545 = load i8, i8* %544, align 1
  store i8 0, i8* %14, align 1
  %546 = zext i8 %545 to i32
  %547 = tail call i32 @llvm.ctpop.i32(i32 %546)
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  store i8 %550, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %551 = icmp eq i8 %545, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %29, align 1
  %553 = lshr i8 %545, 7
  store i8 %553, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v25 = select i1 %551, i64 27, i64 64
  %554 = add i64 %483, %.v25
  store i64 %554, i64* %3, align 8
  br i1 %551, label %block_46ca63, label %block_.L_46ca88

block_46ca63:                                     ; preds = %block_.L_46ca48
  %555 = load i64, i64* %RBP.i, align 8
  %556 = add i64 %555, -4
  %557 = add i64 %554, 4
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  %559 = load i32, i32* %558, align 4
  %560 = mul i32 %559, 20
  %561 = add i32 %560, 21
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RAX.i298, align 8
  %563 = icmp ugt i32 %560, -22
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %14, align 1
  %565 = and i32 %561, 253
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %21, align 1
  %570 = xor i32 %560, 16
  %571 = xor i32 %570, %561
  %572 = lshr i32 %571, 4
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  store i8 %574, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %575 = lshr i32 %561, 31
  %576 = trunc i32 %575 to i8
  store i8 %576, i8* %32, align 1
  %577 = lshr i32 %560, 31
  %578 = xor i32 %575, %577
  %579 = add nuw nsw i32 %578, %575
  %580 = icmp eq i32 %579, 2
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %38, align 1
  %582 = add i64 %555, -8
  %583 = add i64 %554, 10
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = add i32 %585, %561
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RAX.i298, align 8
  %588 = icmp ult i32 %586, %561
  %589 = icmp ult i32 %586, %585
  %590 = or i1 %588, %589
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %14, align 1
  %592 = and i32 %586, 255
  %593 = tail call i32 @llvm.ctpop.i32(i32 %592)
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = xor i8 %595, 1
  store i8 %596, i8* %21, align 1
  %597 = xor i32 %585, %561
  %598 = xor i32 %597, %586
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %26, align 1
  %602 = icmp eq i32 %586, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %29, align 1
  %604 = lshr i32 %586, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %32, align 1
  %606 = lshr i32 %585, 31
  %607 = xor i32 %604, %575
  %608 = xor i32 %604, %606
  %609 = add nuw nsw i32 %607, %608
  %610 = icmp eq i32 %609, 2
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %38, align 1
  %612 = sext i32 %586 to i64
  store i64 %612, i64* %RCX.i254, align 8
  %613 = add nsw i64 %612, 12099168
  %614 = add i64 %554, 21
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i8*
  %616 = load i8, i8* %615, align 1
  %617 = zext i8 %616 to i64
  store i64 %617, i64* %RAX.i298, align 8
  %618 = zext i8 %616 to i32
  %619 = add nsw i32 %618, -2
  %620 = icmp ult i8 %616, 2
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %14, align 1
  %622 = and i32 %619, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %21, align 1
  %627 = xor i32 %619, %618
  %628 = lshr i32 %627, 4
  %629 = trunc i32 %628 to i8
  %630 = and i8 %629, 1
  store i8 %630, i8* %26, align 1
  %631 = icmp eq i32 %619, 0
  %632 = zext i1 %631 to i8
  store i8 %632, i8* %29, align 1
  %633 = lshr i32 %619, 31
  %634 = trunc i32 %633 to i8
  store i8 %634, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v32 = select i1 %631, i64 30, i64 37
  %635 = add i64 %554, %.v32
  store i64 %635, i64* %3, align 8
  br i1 %631, label %block_46ca81, label %block_.L_46ca88

block_46ca81:                                     ; preds = %block_46ca63
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -16
  %638 = add i64 %635, 7
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i32*
  store i32 88, i32* %639, align 4
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_46ca88

block_.L_46ca88:                                  ; preds = %block_46ca63, %block_.L_46ca48, %block_46ca81
  %640 = phi i64 [ %.pre20, %block_46ca81 ], [ %635, %block_46ca63 ], [ %554, %block_.L_46ca48 ]
  %641 = add i64 %640, 5
  store i64 %641, i64* %3, align 8
  br label %block_.L_46ca8d

block_.L_46ca8d:                                  ; preds = %block_.L_46ca88, %block_46ca3c
  %storemerge16 = phi i64 [ %482, %block_46ca3c ], [ %641, %block_.L_46ca88 ]
  %642 = add i64 %storemerge16, 5
  store i64 %642, i64* %3, align 8
  br label %block_.L_46ca92

block_.L_46ca92:                                  ; preds = %block_.L_46ca8d, %block_46c9f7
  %storemerge = phi i64 [ %323, %block_46c9f7 ], [ %642, %block_.L_46ca8d ]
  %643 = load i64, i64* %RBP.i, align 8
  %644 = add i64 %643, -4
  %645 = add i64 %storemerge, 4
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = mul i32 %647, 20
  %649 = add i32 %648, 21
  %650 = zext i32 %649 to i64
  store i64 %650, i64* %RAX.i298, align 8
  %651 = icmp ugt i32 %648, -22
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %14, align 1
  %653 = and i32 %649, 253
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %21, align 1
  %658 = xor i32 %648, 16
  %659 = xor i32 %658, %649
  %660 = lshr i32 %659, 4
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %663 = lshr i32 %649, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %32, align 1
  %665 = lshr i32 %648, 31
  %666 = xor i32 %663, %665
  %667 = add nuw nsw i32 %666, %663
  %668 = icmp eq i32 %667, 2
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %38, align 1
  %670 = add i64 %643, -8
  %671 = add i64 %storemerge, 10
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = add i32 %673, %649
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RAX.i298, align 8
  %676 = icmp ult i32 %674, %649
  %677 = icmp ult i32 %674, %673
  %678 = or i1 %676, %677
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %14, align 1
  %680 = and i32 %674, 255
  %681 = tail call i32 @llvm.ctpop.i32(i32 %680)
  %682 = trunc i32 %681 to i8
  %683 = and i8 %682, 1
  %684 = xor i8 %683, 1
  store i8 %684, i8* %21, align 1
  %685 = xor i32 %673, %649
  %686 = xor i32 %685, %674
  %687 = lshr i32 %686, 4
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  store i8 %689, i8* %26, align 1
  %690 = icmp eq i32 %674, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %29, align 1
  %692 = lshr i32 %674, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %32, align 1
  %694 = lshr i32 %673, 31
  %695 = xor i32 %692, %663
  %696 = xor i32 %692, %694
  %697 = add nuw nsw i32 %695, %696
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %38, align 1
  %700 = sext i32 %674 to i64
  store i64 %700, i64* %RCX.i254, align 8
  %701 = add nsw i64 %700, 11554848
  %702 = add i64 %storemerge, 21
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i8*
  %704 = load i8, i8* %703, align 1
  %705 = zext i8 %704 to i64
  store i64 %705, i64* %RAX.i298, align 8
  %706 = zext i8 %704 to i32
  store i8 0, i8* %14, align 1
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706)
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %711 = icmp eq i8 %704, 0
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v26 = select i1 %711, i64 72, i64 30
  %713 = add i64 %storemerge, %.v26
  store i64 %713, i64* %3, align 8
  br i1 %711, label %block_.L_46cada, label %block_46cab0

block_46cab0:                                     ; preds = %block_.L_46ca92
  %714 = load i64, i64* %RBP.i, align 8
  %715 = add i64 %714, -4
  %716 = add i64 %713, 4
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i32*
  %718 = load i32, i32* %717, align 4
  %719 = mul i32 %718, 20
  %720 = add i32 %719, 21
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %RAX.i298, align 8
  %722 = icmp ugt i32 %719, -22
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %14, align 1
  %724 = and i32 %720, 253
  %725 = tail call i32 @llvm.ctpop.i32(i32 %724)
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  %728 = xor i8 %727, 1
  store i8 %728, i8* %21, align 1
  %729 = xor i32 %719, 16
  %730 = xor i32 %729, %720
  %731 = lshr i32 %730, 4
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  store i8 %733, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %734 = lshr i32 %720, 31
  %735 = trunc i32 %734 to i8
  store i8 %735, i8* %32, align 1
  %736 = lshr i32 %719, 31
  %737 = xor i32 %734, %736
  %738 = add nuw nsw i32 %737, %734
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %38, align 1
  %741 = add i64 %714, -8
  %742 = add i64 %713, 10
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, %720
  %746 = zext i32 %745 to i64
  store i64 %746, i64* %RAX.i298, align 8
  %747 = icmp ult i32 %745, %720
  %748 = icmp ult i32 %745, %744
  %749 = or i1 %747, %748
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %14, align 1
  %751 = and i32 %745, 255
  %752 = tail call i32 @llvm.ctpop.i32(i32 %751)
  %753 = trunc i32 %752 to i8
  %754 = and i8 %753, 1
  %755 = xor i8 %754, 1
  store i8 %755, i8* %21, align 1
  %756 = xor i32 %744, %720
  %757 = xor i32 %756, %745
  %758 = lshr i32 %757, 4
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  store i8 %760, i8* %26, align 1
  %761 = icmp eq i32 %745, 0
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %29, align 1
  %763 = lshr i32 %745, 31
  %764 = trunc i32 %763 to i8
  store i8 %764, i8* %32, align 1
  %765 = lshr i32 %744, 31
  %766 = xor i32 %763, %734
  %767 = xor i32 %763, %765
  %768 = add nuw nsw i32 %766, %767
  %769 = icmp eq i32 %768, 2
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %38, align 1
  %771 = sext i32 %745 to i64
  store i64 %771, i64* %RCX.i254, align 8
  %772 = add nsw i64 %771, 12099168
  %773 = add i64 %713, 21
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i8*
  %775 = load i8, i8* %774, align 1
  %776 = zext i8 %775 to i64
  store i64 %776, i64* %RAX.i298, align 8
  %777 = zext i8 %775 to i32
  store i8 0, i8* %14, align 1
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %782 = icmp eq i8 %775, 0
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v27 = select i1 %782, i64 30, i64 42
  %784 = add i64 %713, %.v27
  store i64 %784, i64* %3, align 8
  br i1 %782, label %block_46cace, label %block_.L_46cada

block_46cace:                                     ; preds = %block_46cab0
  %785 = load i64, i64* %RBP.i, align 8
  %786 = add i64 %785, -16
  %787 = add i64 %784, 7
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i32*
  store i32 44, i32* %788, align 4
  %789 = load i64, i64* %3, align 8
  %790 = add i64 %789, 154
  br label %block_.L_46cb6f

block_.L_46cada:                                  ; preds = %block_46cab0, %block_.L_46ca92
  %791 = phi i64 [ %784, %block_46cab0 ], [ %713, %block_.L_46ca92 ]
  %792 = load i64, i64* %RBP.i, align 8
  %793 = add i64 %792, -4
  %794 = add i64 %791, 4
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = mul i32 %796, 20
  %798 = add i32 %797, 21
  %799 = zext i32 %798 to i64
  store i64 %799, i64* %RAX.i298, align 8
  %800 = icmp ugt i32 %797, -22
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %14, align 1
  %802 = and i32 %798, 253
  %803 = tail call i32 @llvm.ctpop.i32(i32 %802)
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = xor i8 %805, 1
  store i8 %806, i8* %21, align 1
  %807 = xor i32 %797, 16
  %808 = xor i32 %807, %798
  %809 = lshr i32 %808, 4
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  store i8 %811, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %812 = lshr i32 %798, 31
  %813 = trunc i32 %812 to i8
  store i8 %813, i8* %32, align 1
  %814 = lshr i32 %797, 31
  %815 = xor i32 %812, %814
  %816 = add nuw nsw i32 %815, %812
  %817 = icmp eq i32 %816, 2
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %38, align 1
  %819 = add i64 %792, -8
  %820 = add i64 %791, 10
  store i64 %820, i64* %3, align 8
  %821 = inttoptr i64 %819 to i32*
  %822 = load i32, i32* %821, align 4
  %823 = add i32 %822, %798
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RAX.i298, align 8
  %825 = icmp ult i32 %823, %798
  %826 = icmp ult i32 %823, %822
  %827 = or i1 %825, %826
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %14, align 1
  %829 = and i32 %823, 255
  %830 = tail call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  store i8 %833, i8* %21, align 1
  %834 = xor i32 %822, %798
  %835 = xor i32 %834, %823
  %836 = lshr i32 %835, 4
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  store i8 %838, i8* %26, align 1
  %839 = icmp eq i32 %823, 0
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %29, align 1
  %841 = lshr i32 %823, 31
  %842 = trunc i32 %841 to i8
  store i8 %842, i8* %32, align 1
  %843 = lshr i32 %822, 31
  %844 = xor i32 %841, %812
  %845 = xor i32 %841, %843
  %846 = add nuw nsw i32 %844, %845
  %847 = icmp eq i32 %846, 2
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %38, align 1
  %849 = sext i32 %823 to i64
  store i64 %849, i64* %RCX.i254, align 8
  %850 = add nsw i64 %849, 11554848
  %851 = add i64 %791, 21
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i8*
  %853 = load i8, i8* %852, align 1
  %854 = zext i8 %853 to i64
  store i64 %854, i64* %RAX.i298, align 8
  %855 = zext i8 %853 to i32
  store i8 0, i8* %14, align 1
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855)
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %860 = icmp eq i8 %853, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v28 = select i1 %860, i64 72, i64 30
  %862 = add i64 %791, %.v28
  store i64 %862, i64* %3, align 8
  br i1 %860, label %block_.L_46cb22, label %block_46caf8

block_46caf8:                                     ; preds = %block_.L_46cada
  %863 = load i64, i64* %RBP.i, align 8
  %864 = add i64 %863, -4
  %865 = add i64 %862, 4
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = mul i32 %867, 20
  %869 = add i32 %868, 21
  %870 = zext i32 %869 to i64
  store i64 %870, i64* %RAX.i298, align 8
  %871 = icmp ugt i32 %868, -22
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %14, align 1
  %873 = and i32 %869, 253
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %21, align 1
  %878 = xor i32 %868, 16
  %879 = xor i32 %878, %869
  %880 = lshr i32 %879, 4
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  store i8 %882, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %883 = lshr i32 %869, 31
  %884 = trunc i32 %883 to i8
  store i8 %884, i8* %32, align 1
  %885 = lshr i32 %868, 31
  %886 = xor i32 %883, %885
  %887 = add nuw nsw i32 %886, %883
  %888 = icmp eq i32 %887, 2
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %38, align 1
  %890 = add i64 %863, -8
  %891 = add i64 %862, 10
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = add i32 %893, %869
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RAX.i298, align 8
  %896 = icmp ult i32 %894, %869
  %897 = icmp ult i32 %894, %893
  %898 = or i1 %896, %897
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %14, align 1
  %900 = and i32 %894, 255
  %901 = tail call i32 @llvm.ctpop.i32(i32 %900)
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  %904 = xor i8 %903, 1
  store i8 %904, i8* %21, align 1
  %905 = xor i32 %893, %869
  %906 = xor i32 %905, %894
  %907 = lshr i32 %906, 4
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  store i8 %909, i8* %26, align 1
  %910 = icmp eq i32 %894, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %29, align 1
  %912 = lshr i32 %894, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %32, align 1
  %914 = lshr i32 %893, 31
  %915 = xor i32 %912, %883
  %916 = xor i32 %912, %914
  %917 = add nuw nsw i32 %915, %916
  %918 = icmp eq i32 %917, 2
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %38, align 1
  %920 = sext i32 %894 to i64
  store i64 %920, i64* %RCX.i254, align 8
  %921 = add nsw i64 %920, 12099168
  %922 = add i64 %862, 21
  store i64 %922, i64* %3, align 8
  %923 = inttoptr i64 %921 to i8*
  %924 = load i8, i8* %923, align 1
  %925 = zext i8 %924 to i64
  store i64 %925, i64* %RAX.i298, align 8
  %926 = zext i8 %924 to i32
  %927 = add nsw i32 %926, -1
  %928 = icmp eq i8 %924, 0
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %14, align 1
  %930 = and i32 %927, 255
  %931 = tail call i32 @llvm.ctpop.i32(i32 %930)
  %932 = trunc i32 %931 to i8
  %933 = and i8 %932, 1
  %934 = xor i8 %933, 1
  store i8 %934, i8* %21, align 1
  %935 = xor i32 %927, %926
  %936 = lshr i32 %935, 4
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  store i8 %938, i8* %26, align 1
  %939 = icmp eq i32 %927, 0
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %29, align 1
  %941 = lshr i32 %927, 31
  %942 = trunc i32 %941 to i8
  store i8 %942, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v29 = select i1 %939, i64 30, i64 42
  %943 = add i64 %862, %.v29
  store i64 %943, i64* %3, align 8
  br i1 %939, label %block_46cb16, label %block_.L_46cb22

block_46cb16:                                     ; preds = %block_46caf8
  %944 = load i64, i64* %RBP.i, align 8
  %945 = add i64 %944, -16
  %946 = add i64 %943, 7
  store i64 %946, i64* %3, align 8
  %947 = inttoptr i64 %945 to i32*
  store i32 111, i32* %947, align 4
  %948 = load i64, i64* %3, align 8
  %949 = add i64 %948, 77
  br label %block_.L_46cb6a

block_.L_46cb22:                                  ; preds = %block_46caf8, %block_.L_46cada
  %950 = phi i64 [ %943, %block_46caf8 ], [ %862, %block_.L_46cada ]
  %951 = load i64, i64* %RBP.i, align 8
  %952 = add i64 %951, -4
  %953 = add i64 %950, 4
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = mul i32 %955, 20
  %957 = add i32 %956, 21
  %958 = zext i32 %957 to i64
  store i64 %958, i64* %RAX.i298, align 8
  %959 = icmp ugt i32 %956, -22
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %14, align 1
  %961 = and i32 %957, 253
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %21, align 1
  %966 = xor i32 %956, 16
  %967 = xor i32 %966, %957
  %968 = lshr i32 %967, 4
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  store i8 %970, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %971 = lshr i32 %957, 31
  %972 = trunc i32 %971 to i8
  store i8 %972, i8* %32, align 1
  %973 = lshr i32 %956, 31
  %974 = xor i32 %971, %973
  %975 = add nuw nsw i32 %974, %971
  %976 = icmp eq i32 %975, 2
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %38, align 1
  %978 = add i64 %951, -8
  %979 = add i64 %950, 10
  store i64 %979, i64* %3, align 8
  %980 = inttoptr i64 %978 to i32*
  %981 = load i32, i32* %980, align 4
  %982 = add i32 %981, %957
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RAX.i298, align 8
  %984 = icmp ult i32 %982, %957
  %985 = icmp ult i32 %982, %981
  %986 = or i1 %984, %985
  %987 = zext i1 %986 to i8
  store i8 %987, i8* %14, align 1
  %988 = and i32 %982, 255
  %989 = tail call i32 @llvm.ctpop.i32(i32 %988)
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  %992 = xor i8 %991, 1
  store i8 %992, i8* %21, align 1
  %993 = xor i32 %981, %957
  %994 = xor i32 %993, %982
  %995 = lshr i32 %994, 4
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  store i8 %997, i8* %26, align 1
  %998 = icmp eq i32 %982, 0
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %29, align 1
  %1000 = lshr i32 %982, 31
  %1001 = trunc i32 %1000 to i8
  store i8 %1001, i8* %32, align 1
  %1002 = lshr i32 %981, 31
  %1003 = xor i32 %1000, %971
  %1004 = xor i32 %1000, %1002
  %1005 = add nuw nsw i32 %1003, %1004
  %1006 = icmp eq i32 %1005, 2
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %38, align 1
  %1008 = sext i32 %982 to i64
  store i64 %1008, i64* %RCX.i254, align 8
  %1009 = add nsw i64 %1008, 11554848
  %1010 = add i64 %950, 21
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i8*
  %1012 = load i8, i8* %1011, align 1
  %1013 = zext i8 %1012 to i64
  store i64 %1013, i64* %RAX.i298, align 8
  %1014 = zext i8 %1012 to i32
  store i8 0, i8* %14, align 1
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  store i8 %1018, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1019 = icmp eq i8 %1012, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v30 = select i1 %1019, i64 67, i64 30
  %1021 = add i64 %950, %.v30
  store i64 %1021, i64* %3, align 8
  br i1 %1019, label %block_.L_46cb65, label %block_46cb40

block_46cb40:                                     ; preds = %block_.L_46cb22
  %1022 = load i64, i64* %RBP.i, align 8
  %1023 = add i64 %1022, -4
  %1024 = add i64 %1021, 4
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = mul i32 %1026, 20
  %1028 = add i32 %1027, 21
  %1029 = zext i32 %1028 to i64
  store i64 %1029, i64* %RAX.i298, align 8
  %1030 = icmp ugt i32 %1027, -22
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %14, align 1
  %1032 = and i32 %1028, 253
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %21, align 1
  %1037 = xor i32 %1027, 16
  %1038 = xor i32 %1037, %1028
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1042 = lshr i32 %1028, 31
  %1043 = trunc i32 %1042 to i8
  store i8 %1043, i8* %32, align 1
  %1044 = lshr i32 %1027, 31
  %1045 = xor i32 %1042, %1044
  %1046 = add nuw nsw i32 %1045, %1042
  %1047 = icmp eq i32 %1046, 2
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %38, align 1
  %1049 = add i64 %1022, -8
  %1050 = add i64 %1021, 10
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = add i32 %1052, %1028
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %RAX.i298, align 8
  %1055 = icmp ult i32 %1053, %1028
  %1056 = icmp ult i32 %1053, %1052
  %1057 = or i1 %1055, %1056
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %14, align 1
  %1059 = and i32 %1053, 255
  %1060 = tail call i32 @llvm.ctpop.i32(i32 %1059)
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = xor i8 %1062, 1
  store i8 %1063, i8* %21, align 1
  %1064 = xor i32 %1052, %1028
  %1065 = xor i32 %1064, %1053
  %1066 = lshr i32 %1065, 4
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  store i8 %1068, i8* %26, align 1
  %1069 = icmp eq i32 %1053, 0
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %29, align 1
  %1071 = lshr i32 %1053, 31
  %1072 = trunc i32 %1071 to i8
  store i8 %1072, i8* %32, align 1
  %1073 = lshr i32 %1052, 31
  %1074 = xor i32 %1071, %1042
  %1075 = xor i32 %1071, %1073
  %1076 = add nuw nsw i32 %1074, %1075
  %1077 = icmp eq i32 %1076, 2
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %38, align 1
  %1079 = sext i32 %1053 to i64
  store i64 %1079, i64* %RCX.i254, align 8
  %1080 = add nsw i64 %1079, 12099168
  %1081 = add i64 %1021, 21
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i8*
  %1083 = load i8, i8* %1082, align 1
  %1084 = zext i8 %1083 to i64
  store i64 %1084, i64* %RAX.i298, align 8
  %1085 = zext i8 %1083 to i32
  %1086 = add nsw i32 %1085, -2
  %1087 = icmp ult i8 %1083, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %14, align 1
  %1089 = and i32 %1086, 255
  %1090 = tail call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  store i8 %1093, i8* %21, align 1
  %1094 = xor i32 %1086, %1085
  %1095 = lshr i32 %1094, 4
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  store i8 %1097, i8* %26, align 1
  %1098 = icmp eq i32 %1086, 0
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %29, align 1
  %1100 = lshr i32 %1086, 31
  %1101 = trunc i32 %1100 to i8
  store i8 %1101, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v31 = select i1 %1098, i64 30, i64 37
  %1102 = add i64 %1021, %.v31
  store i64 %1102, i64* %3, align 8
  br i1 %1098, label %block_46cb5e, label %block_.L_46cb65

block_46cb5e:                                     ; preds = %block_46cb40
  %1103 = load i64, i64* %RBP.i, align 8
  %1104 = add i64 %1103, -16
  %1105 = add i64 %1102, 7
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  store i32 120, i32* %1106, align 4
  %.pre21 = load i64, i64* %3, align 8
  br label %block_.L_46cb65

block_.L_46cb65:                                  ; preds = %block_46cb40, %block_46cb5e, %block_.L_46cb22
  %1107 = phi i64 [ %.pre21, %block_46cb5e ], [ %1102, %block_46cb40 ], [ %1021, %block_.L_46cb22 ]
  %1108 = add i64 %1107, 5
  store i64 %1108, i64* %3, align 8
  br label %block_.L_46cb6a

block_.L_46cb6a:                                  ; preds = %block_.L_46cb65, %block_46cb16
  %storemerge15 = phi i64 [ %949, %block_46cb16 ], [ %1108, %block_.L_46cb65 ]
  %1109 = add i64 %storemerge15, 5
  store i64 %1109, i64* %3, align 8
  br label %block_.L_46cb6f

block_.L_46cb6f:                                  ; preds = %block_.L_46cb6a, %block_46cace
  %storemerge14 = phi i64 [ %790, %block_46cace ], [ %1109, %block_.L_46cb6a ]
  store i64 ptrtoint (%G__0x579d92_type* @G__0x579d92 to i64), i64* %RSI.i293, align 8
  %1110 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1110, i64* %RDI.i283, align 8
  %1111 = load i64, i64* %RBP.i, align 8
  %1112 = add i64 %1111, -16
  %1113 = add i64 %storemerge14, 21
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i32*
  %1115 = load i32, i32* %1114, align 4
  %1116 = zext i32 %1115 to i64
  store i64 %1116, i64* %RDX.i280, align 8
  store i8 0, i8* %AL.i278, align 1
  %1117 = add i64 %storemerge14, -440991
  %1118 = add i64 %storemerge14, 28
  %1119 = load i64, i64* %6, align 8
  %1120 = add i64 %1119, -8
  %1121 = inttoptr i64 %1120 to i64*
  store i64 %1118, i64* %1121, align 8
  store i64 %1120, i64* %6, align 8
  store i64 %1117, i64* %3, align 8
  %1122 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.1)
  %1123 = load i64, i64* %RBP.i, align 8
  %1124 = add i64 %1123, -24
  %1125 = load i32, i32* %EAX.i296, align 4
  %1126 = load i64, i64* %3, align 8
  %1127 = add i64 %1126, 3
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1124 to i32*
  store i32 %1125, i32* %1128, align 4
  %1129 = load i64, i64* %RBP.i, align 8
  %1130 = add i64 %1129, -8
  %1131 = load i64, i64* %3, align 8
  %1132 = add i64 %1131, 3
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1130 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = add i32 %1134, 1
  %1136 = zext i32 %1135 to i64
  store i64 %1136, i64* %RAX.i298, align 8
  %1137 = icmp eq i32 %1134, -1
  %1138 = icmp eq i32 %1135, 0
  %1139 = or i1 %1137, %1138
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %14, align 1
  %1141 = and i32 %1135, 255
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  store i8 %1145, i8* %21, align 1
  %1146 = xor i32 %1135, %1134
  %1147 = lshr i32 %1146, 4
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  store i8 %1149, i8* %26, align 1
  %1150 = zext i1 %1138 to i8
  store i8 %1150, i8* %29, align 1
  %1151 = lshr i32 %1135, 31
  %1152 = trunc i32 %1151 to i8
  store i8 %1152, i8* %32, align 1
  %1153 = lshr i32 %1134, 31
  %1154 = xor i32 %1151, %1153
  %1155 = add nuw nsw i32 %1154, %1151
  %1156 = icmp eq i32 %1155, 2
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %38, align 1
  %1158 = add i64 %1131, 9
  store i64 %1158, i64* %3, align 8
  store i32 %1135, i32* %1133, align 4
  %1159 = load i64, i64* %3, align 8
  %1160 = add i64 %1159, -489
  store i64 %1160, i64* %3, align 8
  br label %block_.L_46c9ae

block_.L_46cb9c:                                  ; preds = %block_.L_46c9ae
  store i64 ptrtoint (%G__0x581298_type* @G__0x581298 to i64), i64* %RSI.i293, align 8
  %1161 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %1161, i64* %RDI.i283, align 8
  %1162 = add i64 %145, -12
  %1163 = add i64 %178, 21
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i32*
  %1165 = load i32, i32* %1164, align 4
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RDX.i280, align 8
  store i8 0, i8* %AL.i278, align 1
  %1167 = add i64 %178, -441036
  %1168 = add i64 %178, 28
  %1169 = load i64, i64* %6, align 8
  %1170 = add i64 %1169, -8
  %1171 = inttoptr i64 %1170 to i64*
  store i64 %1168, i64* %1171, align 8
  store i64 %1170, i64* %6, align 8
  store i64 %1167, i64* %3, align 8
  %1172 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.1)
  %1173 = load i64, i64* %RBP.i, align 8
  %1174 = add i64 %1173, -28
  %1175 = load i32, i32* %EAX.i296, align 4
  %1176 = load i64, i64* %3, align 8
  %1177 = add i64 %1176, 3
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1174 to i32*
  store i32 %1175, i32* %1178, align 4
  %1179 = load i64, i64* %RBP.i, align 8
  %1180 = add i64 %1179, -4
  %1181 = load i64, i64* %3, align 8
  %1182 = add i64 %1181, 3
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1180 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = add i32 %1184, 1
  %1186 = zext i32 %1185 to i64
  store i64 %1186, i64* %RAX.i298, align 8
  %1187 = icmp eq i32 %1184, -1
  %1188 = icmp eq i32 %1185, 0
  %1189 = or i1 %1187, %1188
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %14, align 1
  %1191 = and i32 %1185, 255
  %1192 = tail call i32 @llvm.ctpop.i32(i32 %1191)
  %1193 = trunc i32 %1192 to i8
  %1194 = and i8 %1193, 1
  %1195 = xor i8 %1194, 1
  store i8 %1195, i8* %21, align 1
  %1196 = xor i32 %1185, %1184
  %1197 = lshr i32 %1196, 4
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  store i8 %1199, i8* %26, align 1
  %1200 = zext i1 %1188 to i8
  store i8 %1200, i8* %29, align 1
  %1201 = lshr i32 %1185, 31
  %1202 = trunc i32 %1201 to i8
  store i8 %1202, i8* %32, align 1
  %1203 = lshr i32 %1184, 31
  %1204 = xor i32 %1201, %1203
  %1205 = add nuw nsw i32 %1204, %1201
  %1206 = icmp eq i32 %1205, 2
  %1207 = zext i1 %1206 to i8
  store i8 %1207, i8* %38, align 1
  %1208 = add i64 %1181, 9
  store i64 %1208, i64* %3, align 8
  store i32 %1185, i32* %1183, align 4
  %1209 = load i64, i64* %3, align 8
  %1210 = add i64 %1209, -601
  store i64 %1210, i64* %3, align 8
  br label %block_.L_46c96b

block_.L_46cbc9:                                  ; preds = %block_.L_46c96b
  %1211 = add i64 %88, 33239
  %1212 = add i64 %88, 5
  %1213 = load i64, i64* %6, align 8
  %1214 = add i64 %1213, -8
  %1215 = inttoptr i64 %1214 to i64*
  store i64 %1212, i64* %1215, align 8
  store i64 %1214, i64* %6, align 8
  store i64 %1211, i64* %3, align 8
  %call2_46cbc9 = tail call %struct.Memory* @sub_474da0.end_draw_board(%struct.State* nonnull %0, i64 %1211, %struct.Memory* %MEMORY.0)
  %1216 = load i64, i64* %6, align 8
  %1217 = load i64, i64* %3, align 8
  %1218 = add i64 %1216, 32
  store i64 %1218, i64* %6, align 8
  %1219 = icmp ugt i64 %1216, -33
  %1220 = zext i1 %1219 to i8
  store i8 %1220, i8* %14, align 1
  %1221 = trunc i64 %1218 to i32
  %1222 = and i32 %1221, 255
  %1223 = tail call i32 @llvm.ctpop.i32(i32 %1222)
  %1224 = trunc i32 %1223 to i8
  %1225 = and i8 %1224, 1
  %1226 = xor i8 %1225, 1
  store i8 %1226, i8* %21, align 1
  %1227 = xor i64 %1218, %1216
  %1228 = lshr i64 %1227, 4
  %1229 = trunc i64 %1228 to i8
  %1230 = and i8 %1229, 1
  store i8 %1230, i8* %26, align 1
  %1231 = icmp eq i64 %1218, 0
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %29, align 1
  %1233 = lshr i64 %1218, 63
  %1234 = trunc i64 %1233 to i8
  store i8 %1234, i8* %32, align 1
  %1235 = lshr i64 %1216, 63
  %1236 = xor i64 %1233, %1235
  %1237 = add nuw nsw i64 %1236, %1233
  %1238 = icmp eq i64 %1237, 2
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %38, align 1
  %1240 = add i64 %1217, 5
  store i64 %1240, i64* %3, align 8
  %1241 = add i64 %1216, 40
  %1242 = inttoptr i64 %1218 to i64*
  %1243 = load i64, i64* %1242, align 8
  store i64 %1243, i64* %RBP.i, align 8
  store i64 %1241, i64* %6, align 8
  %1244 = add i64 %1217, 6
  store i64 %1244, i64* %3, align 8
  %1245 = inttoptr i64 %1241 to i64*
  %1246 = load i64, i64* %1245, align 8
  store i64 %1246, i64* %3, align 8
  %1247 = add i64 %1216, 48
  store i64 %1247, i64* %6, align 8
  ret %struct.Memory* %call2_46cbc9
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
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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
define %struct.Memory* @routine_movl__0x20__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 32, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.start_draw_board(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_46cbc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f1e2___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f1e2_type* @G__0x57f1e2 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_46cb9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 85899345920
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 252
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x15___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -22
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
define %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__0xb05020___rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 11554848
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_jne_.L_46ca03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2e__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 46, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46ca92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46ca48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_movl__0x4f__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 79, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46ca8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46ca88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x58__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 88, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb05020___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 11554848
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46cada(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46cada(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2c__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 44, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46cb6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46cb22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46cb22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x6f__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 111, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46cb6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46cb65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46cb65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x78__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 120, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x579d92___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x579d92_type* @G__0x579d92 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46c9ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x581298___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x581298_type* @G__0x581298 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_46c96b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.end_draw_board(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -33
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
