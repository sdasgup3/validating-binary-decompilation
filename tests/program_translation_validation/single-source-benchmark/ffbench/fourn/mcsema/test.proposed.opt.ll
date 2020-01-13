; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x365__rip__4197763__type = type <{ [16 x i8] }>
%G_0x365__rip__4197771__type = type <{ [16 x i8] }>
%G_0x365__rip__4197779__type = type <{ [16 x i8] }>
%G_0x365__rip__4197787__type = type <{ [16 x i8] }>
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
@G_0x365__rip__4197763_ = local_unnamed_addr global %G_0x365__rip__4197763__type zeroinitializer
@G_0x365__rip__4197771_ = local_unnamed_addr global %G_0x365__rip__4197771__type zeroinitializer
@G_0x365__rip__4197779_ = local_unnamed_addr global %G_0x365__rip__4197779__type zeroinitializer
@G_0x365__rip__4197787_ = local_unnamed_addr global %G_0x365__rip__4197787__type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @fourn(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -200
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 192
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i, align 8
  %41 = add i64 %10, 14
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %RSI.i814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RSI.i814, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i811 = bitcast %union.anon* %49 to i32*
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -20
  %52 = load i32, i32* %EDX.i811, align 4
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i32*
  store i32 %52, i32* %55, align 4
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i808 = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -24
  %59 = load i32, i32* %ECX.i808, align 4
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -96
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 7
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i32*
  store i32 1, i32* %67, align 4
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -72
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 7
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i32*
  store i32 1, i32* %72, align 4
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i801 = getelementptr inbounds %union.anon, %union.anon* %73, i64 0, i32 0
  %EAX.i798 = bitcast %union.anon* %73 to i32*
  %RCX.i791 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %RDX.i789 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400b57:                                  ; preds = %block_400b63, %entry
  %74 = phi i64 [ %177, %block_400b63 ], [ %.pre, %entry ]
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -72
  %77 = add i64 %74, 3
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  store i64 %80, i64* %RAX.i801, align 8
  %81 = add i64 %75, -20
  %82 = add i64 %74, 6
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = sub i32 %79, %84
  %86 = icmp ult i32 %79, %84
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %14, align 1
  %88 = and i32 %85, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88)
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %21, align 1
  %93 = xor i32 %84, %79
  %94 = xor i32 %93, %85
  %95 = lshr i32 %94, 4
  %96 = trunc i32 %95 to i8
  %97 = and i8 %96, 1
  store i8 %97, i8* %26, align 1
  %98 = icmp eq i32 %85, 0
  %99 = zext i1 %98 to i8
  store i8 %99, i8* %29, align 1
  %100 = lshr i32 %85, 31
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %32, align 1
  %102 = lshr i32 %79, 31
  %103 = lshr i32 %84, 31
  %104 = xor i32 %103, %102
  %105 = xor i32 %100, %102
  %106 = add nuw nsw i32 %105, %104
  %107 = icmp eq i32 %106, 2
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %38, align 1
  %109 = icmp ne i8 %101, 0
  %110 = xor i1 %109, %107
  %.demorgan = or i1 %98, %110
  %.v = select i1 %.demorgan, i64 12, i64 44
  %111 = add i64 %74, %.v
  store i64 %111, i64* %3, align 8
  br i1 %.demorgan, label %block_400b63, label %block_.L_400b83

block_400b63:                                     ; preds = %block_.L_400b57
  %112 = add i64 %75, -16
  %113 = add i64 %111, 4
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %RAX.i801, align 8
  %116 = add i64 %111, 8
  store i64 %116, i64* %3, align 8
  %117 = load i32, i32* %78, align 4
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %RCX.i791, align 8
  %119 = shl nsw i64 %118, 2
  %120 = add i64 %119, %115
  %121 = add i64 %111, 11
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i32*
  %123 = load i32, i32* %122, align 4
  %124 = zext i32 %123 to i64
  store i64 %124, i64* %RDX.i789, align 8
  %125 = add i64 %75, -96
  %126 = add i64 %111, 15
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %123 to i64
  %130 = sext i32 %128 to i64
  %131 = mul nsw i64 %130, %129
  %132 = trunc i64 %131 to i32
  %133 = and i64 %131, 4294967295
  store i64 %133, i64* %RDX.i789, align 8
  %134 = shl i64 %131, 32
  %135 = ashr exact i64 %134, 32
  %136 = icmp ne i64 %135, %131
  %137 = zext i1 %136 to i8
  store i8 %137, i8* %14, align 1
  %138 = and i32 %132, 255
  %139 = tail call i32 @llvm.ctpop.i32(i32 %138)
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  %142 = xor i8 %141, 1
  store i8 %142, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %143 = lshr i32 %132, 31
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %32, align 1
  store i8 %137, i8* %38, align 1
  %145 = add i64 %111, 18
  store i64 %145, i64* %3, align 8
  store i32 %132, i32* %127, align 4
  %146 = load i64, i64* %RBP.i, align 8
  %147 = add i64 %146, -72
  %148 = load i64, i64* %3, align 8
  %149 = add i64 %148, 3
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %147 to i32*
  %151 = load i32, i32* %150, align 4
  %152 = add i32 %151, 1
  %153 = zext i32 %152 to i64
  store i64 %153, i64* %RAX.i801, align 8
  %154 = icmp eq i32 %151, -1
  %155 = icmp eq i32 %152, 0
  %156 = or i1 %154, %155
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %14, align 1
  %158 = and i32 %152, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %21, align 1
  %163 = xor i32 %151, %152
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %26, align 1
  %167 = zext i1 %155 to i8
  store i8 %167, i8* %29, align 1
  %168 = lshr i32 %152, 31
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %32, align 1
  %170 = lshr i32 %151, 31
  %171 = xor i32 %168, %170
  %172 = add nuw nsw i32 %171, %168
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %38, align 1
  %175 = add i64 %148, 9
  store i64 %175, i64* %3, align 8
  store i32 %152, i32* %150, align 4
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, -39
  store i64 %177, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400b83:                                  ; preds = %block_.L_400b57
  %178 = add i64 %75, -88
  %179 = add i64 %111, 7
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i32*
  store i32 1, i32* %180, align 4
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -20
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 3
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %182 to i32*
  %186 = load i32, i32* %185, align 4
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX.i801, align 8
  %188 = add i64 %181, -72
  %189 = add i64 %183, 6
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i32*
  store i32 %186, i32* %190, align 4
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %AL.i491 = bitcast %union.anon* %73 to i8*
  %CL.i492 = bitcast %union.anon* %56 to i8*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %193 = bitcast [32 x %union.VectorReg]* %192 to i8*
  %194 = bitcast [32 x %union.VectorReg]* %192 to double*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %196 = bitcast i64* %195 to double*
  %197 = bitcast [32 x %union.VectorReg]* %192 to i32*
  %198 = getelementptr inbounds i8, i8* %193, i64 4
  %199 = bitcast i8* %198 to i32*
  %200 = bitcast i64* %195 to i32*
  %201 = getelementptr inbounds i8, i8* %193, i64 12
  %202 = bitcast i8* %201 to i32*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %204 = bitcast %union.VectorReg* %203 to double*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %206 = bitcast i64* %205 to double*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %209 = bitcast i64* %208 to double*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %211 = bitcast %union.VectorReg* %210 to double*
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %213 = bitcast i64* %212 to double*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %215 = bitcast %union.VectorReg* %214 to double*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %217 = bitcast i64* %216 to double*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %219 = bitcast %union.VectorReg* %218 to double*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %221 = bitcast %union.VectorReg* %210 to <2 x i32>*
  %222 = bitcast i64* %212 to <2 x i32>*
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_400b90

block_.L_400b90:                                  ; preds = %block_.L_401010, %block_.L_400b83
  %223 = phi i64 [ %.pre1, %block_.L_400b83 ], [ %2171, %block_.L_401010 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_400b83 ], [ %MEMORY.8, %block_.L_401010 ]
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -72
  %226 = add i64 %223, 4
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = add i32 %228, -1
  %230 = icmp eq i32 %228, 0
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %14, align 1
  %232 = and i32 %229, 255
  %233 = tail call i32 @llvm.ctpop.i32(i32 %232)
  %234 = trunc i32 %233 to i8
  %235 = and i8 %234, 1
  %236 = xor i8 %235, 1
  store i8 %236, i8* %21, align 1
  %237 = xor i32 %228, %229
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  store i8 %240, i8* %26, align 1
  %241 = icmp eq i32 %229, 0
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %29, align 1
  %243 = lshr i32 %229, 31
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %32, align 1
  %245 = lshr i32 %228, 31
  %246 = xor i32 %243, %245
  %247 = add nuw nsw i32 %246, %245
  %248 = icmp eq i32 %247, 2
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %38, align 1
  %250 = icmp ne i8 %244, 0
  %251 = xor i1 %250, %248
  %.v20 = select i1 %251, i64 1176, i64 10
  %252 = add i64 %223, %.v20
  store i64 %252, i64* %3, align 8
  br i1 %251, label %block_.L_401028, label %block_400b9a

block_400b9a:                                     ; preds = %block_.L_400b90
  %253 = add i64 %224, -16
  %254 = add i64 %252, 4
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RAX.i801, align 8
  %257 = add i64 %252, 8
  store i64 %257, i64* %3, align 8
  %258 = load i32, i32* %227, align 4
  %259 = sext i32 %258 to i64
  store i64 %259, i64* %RCX.i791, align 8
  %260 = shl nsw i64 %259, 2
  %261 = add i64 %260, %256
  %262 = add i64 %252, 11
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %261 to i32*
  %264 = load i32, i32* %263, align 4
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RDX.i789, align 8
  %266 = add i64 %224, -84
  %267 = add i64 %252, 14
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  store i32 %264, i32* %268, align 4
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -96
  %271 = load i64, i64* %3, align 8
  %272 = add i64 %271, 3
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %270 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = zext i32 %274 to i64
  store i64 %275, i64* %RAX.i801, align 8
  %276 = add i64 %269, -84
  %277 = add i64 %271, 6
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %276 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = zext i32 %279 to i64
  store i64 %280, i64* %RDX.i789, align 8
  %281 = add i64 %269, -88
  %282 = add i64 %271, 10
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %279 to i64
  %286 = sext i32 %284 to i64
  %287 = mul nsw i64 %286, %285
  %288 = trunc i64 %287 to i32
  %289 = shl i64 %287, 32
  %290 = ashr exact i64 %289, 32
  %291 = icmp ne i64 %290, %287
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %14, align 1
  %293 = and i32 %288, 255
  %294 = tail call i32 @llvm.ctpop.i32(i32 %293)
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = xor i8 %296, 1
  store i8 %297, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %298 = lshr i32 %288, 31
  %299 = trunc i32 %298 to i8
  store i8 %299, i8* %32, align 1
  store i8 %292, i8* %38, align 1
  %300 = add i64 %269, -164
  %301 = add i64 %271, 16
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  store i32 %288, i32* %302, align 4
  %303 = load i64, i64* %3, align 8
  %304 = load i32, i32* %EAX.i798, align 8
  %305 = sext i32 %304 to i64
  %306 = lshr i64 %305, 32
  store i64 %306, i64* %191, align 8
  %307 = load i64, i64* %RBP.i, align 8
  %308 = add i64 %307, -164
  %309 = add i64 %303, 7
  store i64 %309, i64* %3, align 8
  %310 = inttoptr i64 %308 to i32*
  %311 = load i32, i32* %310, align 4
  %312 = zext i32 %311 to i64
  store i64 %312, i64* %RSI.i814, align 8
  %313 = add i64 %303, 9
  store i64 %313, i64* %3, align 8
  %314 = zext i32 %304 to i64
  %315 = sext i32 %311 to i64
  %316 = shl nuw i64 %306, 32
  %317 = or i64 %316, %314
  %318 = sdiv i64 %317, %315
  %319 = shl i64 %318, 32
  %320 = ashr exact i64 %319, 32
  %321 = icmp eq i64 %318, %320
  br i1 %321, label %324, label %322

; <label>:322:                                    ; preds = %block_400b9a
  %323 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %313, %struct.Memory* %MEMORY.1)
  %.pre2 = load i64, i64* %RBP.i, align 8
  %.pre3 = load i32, i32* %EAX.i798, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:324:                                    ; preds = %block_400b9a
  %325 = srem i64 %317, %315
  %326 = and i64 %318, 4294967295
  store i64 %326, i64* %RAX.i801, align 8
  %327 = and i64 %325, 4294967295
  store i64 %327, i64* %191, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %328 = trunc i64 %318 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %324, %322
  %329 = phi i64 [ %.pre4, %322 ], [ %313, %324 ]
  %330 = phi i32 [ %.pre3, %322 ], [ %328, %324 ]
  %331 = phi i64 [ %.pre2, %322 ], [ %307, %324 ]
  %332 = phi %struct.Memory* [ %323, %322 ], [ %MEMORY.1, %324 ]
  %333 = add i64 %331, -92
  %334 = add i64 %329, 3
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  store i32 %330, i32* %335, align 4
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -88
  %338 = load i64, i64* %3, align 8
  %339 = add i64 %338, 3
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %337 to i32*
  %341 = load i32, i32* %340, align 4
  %342 = shl i32 %341, 1
  %343 = icmp slt i32 %341, 0
  %344 = icmp slt i32 %342, 0
  %345 = xor i1 %343, %344
  %346 = zext i32 %342 to i64
  store i64 %346, i64* %RAX.i801, align 8
  %.lobit = lshr i32 %341, 31
  %347 = trunc i32 %.lobit to i8
  store i8 %347, i8* %14, align 1
  %348 = and i32 %342, 254
  %349 = tail call i32 @llvm.ctpop.i32(i32 %348)
  %350 = trunc i32 %349 to i8
  %351 = and i8 %350, 1
  %352 = xor i8 %351, 1
  store i8 %352, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %353 = icmp eq i32 %342, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %29, align 1
  %355 = lshr i32 %341, 30
  %356 = trunc i32 %355 to i8
  %357 = and i8 %356, 1
  store i8 %357, i8* %32, align 1
  %358 = zext i1 %345 to i8
  store i8 %358, i8* %38, align 1
  %359 = add i64 %336, -48
  %360 = add i64 %338, 9
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i32*
  store i32 %342, i32* %361, align 4
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -48
  %364 = load i64, i64* %3, align 8
  %365 = add i64 %364, 3
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %363 to i32*
  %367 = load i32, i32* %366, align 4
  %368 = zext i32 %367 to i64
  store i64 %368, i64* %RAX.i801, align 8
  %369 = add i64 %362, -84
  %370 = add i64 %364, 7
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to i32*
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %367 to i64
  %374 = sext i32 %372 to i64
  %375 = mul nsw i64 %374, %373
  %376 = trunc i64 %375 to i32
  %377 = and i64 %375, 4294967295
  store i64 %377, i64* %RAX.i801, align 8
  %378 = shl i64 %375, 32
  %379 = ashr exact i64 %378, 32
  %380 = icmp ne i64 %379, %375
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %14, align 1
  %382 = and i32 %376, 255
  %383 = tail call i32 @llvm.ctpop.i32(i32 %382)
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  %386 = xor i8 %385, 1
  store i8 %386, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %387 = lshr i32 %376, 31
  %388 = trunc i32 %387 to i8
  store i8 %388, i8* %32, align 1
  store i8 %381, i8* %38, align 1
  %389 = add i64 %362, -52
  %390 = add i64 %364, 10
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  store i32 %376, i32* %391, align 4
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -52
  %394 = load i64, i64* %3, align 8
  %395 = add i64 %394, 3
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RAX.i801, align 8
  %399 = add i64 %392, -92
  %400 = add i64 %394, 7
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = sext i32 %397 to i64
  %404 = sext i32 %402 to i64
  %405 = mul nsw i64 %404, %403
  %406 = trunc i64 %405 to i32
  %407 = and i64 %405, 4294967295
  store i64 %407, i64* %RAX.i801, align 8
  %408 = shl i64 %405, 32
  %409 = ashr exact i64 %408, 32
  %410 = icmp ne i64 %409, %405
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %14, align 1
  %412 = and i32 %406, 255
  %413 = tail call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %417 = lshr i32 %406, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %32, align 1
  store i8 %411, i8* %38, align 1
  %419 = add i64 %392, -56
  %420 = add i64 %394, 10
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  store i32 %406, i32* %421, align 4
  %422 = load i64, i64* %RBP.i, align 8
  %423 = add i64 %422, -40
  %424 = load i64, i64* %3, align 8
  %425 = add i64 %424, 7
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %423 to i32*
  store i32 1, i32* %426, align 4
  %427 = load i64, i64* %RBP.i, align 8
  %428 = add i64 %427, -32
  %429 = load i64, i64* %3, align 8
  %430 = add i64 %429, 7
  store i64 %430, i64* %3, align 8
  %431 = inttoptr i64 %428 to i32*
  store i32 1, i32* %431, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400bef

block_.L_400bef:                                  ; preds = %block_400d31, %routine_idivl__esi.exit
  %432 = phi i64 [ %1165, %block_400d31 ], [ %.pre5, %routine_idivl__esi.exit ]
  %433 = load i64, i64* %RBP.i, align 8
  %434 = add i64 %433, -32
  %435 = add i64 %432, 3
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = zext i32 %437 to i64
  store i64 %438, i64* %RAX.i801, align 8
  %439 = add i64 %433, -52
  %440 = add i64 %432, 6
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = sub i32 %437, %442
  %444 = icmp ult i32 %437, %442
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %14, align 1
  %446 = and i32 %443, 255
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = and i8 %448, 1
  %450 = xor i8 %449, 1
  store i8 %450, i8* %21, align 1
  %451 = xor i32 %442, %437
  %452 = xor i32 %451, %443
  %453 = lshr i32 %452, 4
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  store i8 %455, i8* %26, align 1
  %456 = icmp eq i32 %443, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %29, align 1
  %458 = lshr i32 %443, 31
  %459 = trunc i32 %458 to i8
  store i8 %459, i8* %32, align 1
  %460 = lshr i32 %437, 31
  %461 = lshr i32 %442, 31
  %462 = xor i32 %461, %460
  %463 = xor i32 %458, %460
  %464 = add nuw nsw i32 %463, %462
  %465 = icmp eq i32 %464, 2
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %38, align 1
  %467 = icmp ne i8 %459, 0
  %468 = xor i1 %467, %465
  %.demorgan21 = or i1 %456, %468
  %.v22 = select i1 %.demorgan21, i64 12, i64 375
  %469 = add i64 %432, %.v22
  store i64 %469, i64* %3, align 8
  br i1 %.demorgan21, label %block_400bfb, label %block_.L_400d66

block_400bfb:                                     ; preds = %block_.L_400bef
  %470 = add i64 %469, 3
  store i64 %470, i64* %3, align 8
  %471 = load i32, i32* %436, align 4
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RAX.i801, align 8
  %473 = add i64 %433, -40
  %474 = add i64 %469, 6
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = sub i32 %471, %476
  %478 = icmp ult i32 %471, %476
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %14, align 1
  %480 = and i32 %477, 255
  %481 = tail call i32 @llvm.ctpop.i32(i32 %480)
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  %484 = xor i8 %483, 1
  store i8 %484, i8* %21, align 1
  %485 = xor i32 %476, %471
  %486 = xor i32 %485, %477
  %487 = lshr i32 %486, 4
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  store i8 %489, i8* %26, align 1
  %490 = icmp eq i32 %477, 0
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %29, align 1
  %492 = lshr i32 %477, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %32, align 1
  %494 = lshr i32 %471, 31
  %495 = lshr i32 %476, 31
  %496 = xor i32 %495, %494
  %497 = xor i32 %492, %494
  %498 = add nuw nsw i32 %497, %496
  %499 = icmp eq i32 %498, 2
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %38, align 1
  %501 = icmp ne i8 %493, 0
  %502 = xor i1 %501, %499
  %.v23 = select i1 %502, i64 12, i64 250
  %503 = add i64 %469, %.v23
  store i64 %503, i64* %3, align 8
  br i1 %502, label %block_400c07, label %block_.L_400cf5

block_400c07:                                     ; preds = %block_400bfb
  %504 = add i64 %503, 3
  store i64 %504, i64* %3, align 8
  %505 = load i32, i32* %436, align 4
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RAX.i801, align 8
  %507 = add i64 %433, -28
  %508 = add i64 %503, 6
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i32*
  store i32 %505, i32* %509, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_400c0d

block_.L_400c0d:                                  ; preds = %block_.L_400cdd, %block_400c07
  %510 = phi i64 [ %960, %block_.L_400cdd ], [ %.pre6, %block_400c07 ]
  %511 = load i64, i64* %RBP.i, align 8
  %512 = add i64 %511, -28
  %513 = add i64 %510, 3
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = zext i32 %515 to i64
  store i64 %516, i64* %RAX.i801, align 8
  %517 = add i64 %511, -32
  %518 = add i64 %510, 6
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i32*
  %520 = load i32, i32* %519, align 4
  %521 = zext i32 %520 to i64
  store i64 %521, i64* %RCX.i791, align 8
  %522 = add i64 %511, -48
  %523 = add i64 %510, 9
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = add i32 %525, %520
  %527 = add i32 %526, -2
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %RCX.i791, align 8
  %529 = lshr i32 %527, 31
  %530 = sub i32 %515, %527
  %531 = icmp ult i32 %515, %527
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %14, align 1
  %533 = and i32 %530, 255
  %534 = tail call i32 @llvm.ctpop.i32(i32 %533)
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = xor i8 %536, 1
  store i8 %537, i8* %21, align 1
  %538 = xor i32 %527, %515
  %539 = xor i32 %538, %530
  %540 = lshr i32 %539, 4
  %541 = trunc i32 %540 to i8
  %542 = and i8 %541, 1
  store i8 %542, i8* %26, align 1
  %543 = icmp eq i32 %530, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %29, align 1
  %545 = lshr i32 %530, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %32, align 1
  %547 = lshr i32 %515, 31
  %548 = xor i32 %529, %547
  %549 = xor i32 %545, %547
  %550 = add nuw nsw i32 %549, %548
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %38, align 1
  %553 = icmp ne i8 %546, 0
  %554 = xor i1 %553, %551
  %.demorgan24 = or i1 %543, %554
  %.v25 = select i1 %.demorgan24, i64 20, i64 227
  %555 = add i64 %510, %.v25
  store i64 %555, i64* %3, align 8
  br i1 %.demorgan24, label %block_400c21, label %block_.L_400cf0

block_400c21:                                     ; preds = %block_.L_400c0d
  %556 = load i64, i64* %RBP.i, align 8
  %557 = add i64 %556, -28
  %558 = add i64 %555, 3
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i32*
  %560 = load i32, i32* %559, align 4
  %561 = zext i32 %560 to i64
  store i64 %561, i64* %RAX.i801, align 8
  %562 = add i64 %556, -36
  %563 = add i64 %555, 6
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i32*
  store i32 %560, i32* %564, align 4
  %.pre7 = load i64, i64* %3, align 8
  br label %block_.L_400c27

block_.L_400c27:                                  ; preds = %block_400c33, %block_400c21
  %565 = phi i64 [ %931, %block_400c33 ], [ %.pre7, %block_400c21 ]
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -36
  %568 = add i64 %565, 3
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  %570 = load i32, i32* %569, align 4
  %571 = zext i32 %570 to i64
  store i64 %571, i64* %RAX.i801, align 8
  %572 = add i64 %566, -56
  %573 = add i64 %565, 6
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = sub i32 %570, %575
  %577 = icmp ult i32 %570, %575
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = and i32 %576, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i32 %575, %570
  %585 = xor i32 %584, %576
  %586 = lshr i32 %585, 4
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  store i8 %588, i8* %26, align 1
  %589 = icmp eq i32 %576, 0
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %29, align 1
  %591 = lshr i32 %576, 31
  %592 = trunc i32 %591 to i8
  store i8 %592, i8* %32, align 1
  %593 = lshr i32 %570, 31
  %594 = lshr i32 %575, 31
  %595 = xor i32 %594, %593
  %596 = xor i32 %591, %593
  %597 = add nuw nsw i32 %596, %595
  %598 = icmp eq i32 %597, 2
  %599 = zext i1 %598 to i8
  store i8 %599, i8* %38, align 1
  %600 = icmp ne i8 %592, 0
  %601 = xor i1 %600, %598
  %.demorgan26 = or i1 %589, %601
  %.v27 = select i1 %.demorgan26, i64 12, i64 182
  %602 = add i64 %565, %.v27
  store i64 %602, i64* %3, align 8
  br i1 %.demorgan26, label %block_400c33, label %block_.L_400cdd

block_400c33:                                     ; preds = %block_.L_400c27
  %603 = add i64 %566, -40
  %604 = add i64 %602, 3
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i32*
  %606 = load i32, i32* %605, align 4
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RAX.i801, align 8
  %608 = add i64 %602, 6
  store i64 %608, i64* %3, align 8
  %609 = load i32, i32* %569, align 4
  %610 = add i32 %609, %606
  %611 = zext i32 %610 to i64
  store i64 %611, i64* %RAX.i801, align 8
  %612 = icmp ult i32 %610, %606
  %613 = icmp ult i32 %610, %609
  %614 = or i1 %612, %613
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %14, align 1
  %616 = and i32 %610, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616)
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %21, align 1
  %621 = xor i32 %609, %606
  %622 = xor i32 %621, %610
  %623 = lshr i32 %622, 4
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  store i8 %625, i8* %26, align 1
  %626 = icmp eq i32 %610, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %29, align 1
  %628 = lshr i32 %610, 31
  %629 = trunc i32 %628 to i8
  store i8 %629, i8* %32, align 1
  %630 = lshr i32 %606, 31
  %631 = lshr i32 %609, 31
  %632 = xor i32 %628, %630
  %633 = xor i32 %628, %631
  %634 = add nuw nsw i32 %632, %633
  %635 = icmp eq i32 %634, 2
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %38, align 1
  %637 = add i64 %566, -32
  %638 = add i64 %602, 9
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i32*
  %640 = load i32, i32* %639, align 4
  %641 = sub i32 %610, %640
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %RAX.i801, align 8
  %643 = icmp ult i32 %610, %640
  %644 = zext i1 %643 to i8
  store i8 %644, i8* %14, align 1
  %645 = and i32 %641, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %21, align 1
  %650 = xor i32 %640, %610
  %651 = xor i32 %650, %641
  %652 = lshr i32 %651, 4
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %26, align 1
  %655 = icmp eq i32 %641, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %29, align 1
  %657 = lshr i32 %641, 31
  %658 = trunc i32 %657 to i8
  store i8 %658, i8* %32, align 1
  %659 = lshr i32 %640, 31
  %660 = xor i32 %659, %628
  %661 = xor i32 %657, %628
  %662 = add nuw nsw i32 %661, %660
  %663 = icmp eq i32 %662, 2
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %38, align 1
  %665 = add i64 %566, -44
  %666 = add i64 %602, 12
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  store i32 %641, i32* %667, align 4
  %668 = load i64, i64* %RBP.i, align 8
  %669 = add i64 %668, -8
  %670 = load i64, i64* %3, align 8
  %671 = add i64 %670, 4
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %669 to i64*
  %673 = load i64, i64* %672, align 8
  store i64 %673, i64* %RCX.i791, align 8
  %674 = add i64 %668, -36
  %675 = add i64 %670, 8
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  %677 = load i32, i32* %676, align 4
  %678 = sext i32 %677 to i64
  store i64 %678, i64* %RDX.i789, align 8
  %679 = shl nsw i64 %678, 3
  %680 = add i64 %679, %673
  %681 = add i64 %670, 13
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  %683 = load i64, i64* %682, align 8
  %684 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %192, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %683, i64* %684, align 1
  store double 0.000000e+00, double* %196, align 1
  %685 = add i64 %668, -112
  %686 = add i64 %670, 18
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i64*
  store i64 %683, i64* %687, align 8
  %688 = load i64, i64* %RBP.i, align 8
  %689 = add i64 %688, -8
  %690 = load i64, i64* %3, align 8
  %691 = add i64 %690, 4
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %689 to i64*
  %693 = load i64, i64* %692, align 8
  store i64 %693, i64* %RCX.i791, align 8
  %694 = add i64 %688, -44
  %695 = add i64 %690, 8
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i32*
  %697 = load i32, i32* %696, align 4
  %698 = sext i32 %697 to i64
  store i64 %698, i64* %RDX.i789, align 8
  %699 = shl nsw i64 %698, 3
  %700 = add i64 %699, %693
  %701 = add i64 %690, 13
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i64*
  %703 = load i64, i64* %702, align 8
  store i64 %703, i64* %684, align 1
  store double 0.000000e+00, double* %196, align 1
  %704 = add i64 %690, 17
  store i64 %704, i64* %3, align 8
  %705 = load i64, i64* %692, align 8
  store i64 %705, i64* %RCX.i791, align 8
  %706 = add i64 %688, -36
  %707 = add i64 %690, 21
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = sext i32 %709 to i64
  store i64 %710, i64* %RDX.i789, align 8
  %711 = shl nsw i64 %710, 3
  %712 = add i64 %711, %705
  %713 = add i64 %690, 26
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i64*
  store i64 %703, i64* %714, align 8
  %715 = load i64, i64* %RBP.i, align 8
  %716 = add i64 %715, -112
  %717 = load i64, i64* %3, align 8
  %718 = add i64 %717, 5
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %716 to i64*
  %720 = load i64, i64* %719, align 8
  store i64 %720, i64* %684, align 1
  store double 0.000000e+00, double* %196, align 1
  %721 = add i64 %715, -8
  %722 = add i64 %717, 9
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %RCX.i791, align 8
  %725 = add i64 %715, -44
  %726 = add i64 %717, 13
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = sext i32 %728 to i64
  store i64 %729, i64* %RDX.i789, align 8
  %730 = shl nsw i64 %729, 3
  %731 = add i64 %730, %724
  %732 = add i64 %717, 18
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i64*
  store i64 %720, i64* %733, align 8
  %734 = load i64, i64* %RBP.i, align 8
  %735 = add i64 %734, -8
  %736 = load i64, i64* %3, align 8
  %737 = add i64 %736, 4
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %735 to i64*
  %739 = load i64, i64* %738, align 8
  store i64 %739, i64* %RCX.i791, align 8
  %740 = add i64 %734, -36
  %741 = add i64 %736, 7
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = add i32 %743, 1
  %745 = zext i32 %744 to i64
  store i64 %745, i64* %RAX.i801, align 8
  %746 = icmp eq i32 %743, -1
  %747 = icmp eq i32 %744, 0
  %748 = or i1 %746, %747
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %14, align 1
  %750 = and i32 %744, 255
  %751 = tail call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  store i8 %754, i8* %21, align 1
  %755 = xor i32 %743, %744
  %756 = lshr i32 %755, 4
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  store i8 %758, i8* %26, align 1
  %759 = zext i1 %747 to i8
  store i8 %759, i8* %29, align 1
  %760 = lshr i32 %744, 31
  %761 = trunc i32 %760 to i8
  store i8 %761, i8* %32, align 1
  %762 = lshr i32 %743, 31
  %763 = xor i32 %760, %762
  %764 = add nuw nsw i32 %763, %760
  %765 = icmp eq i32 %764, 2
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %38, align 1
  %767 = sext i32 %744 to i64
  store i64 %767, i64* %RDX.i789, align 8
  %768 = shl nsw i64 %767, 3
  %769 = add i64 %768, %739
  %770 = add i64 %736, 18
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i64*
  %772 = load i64, i64* %771, align 8
  store i64 %772, i64* %684, align 1
  store double 0.000000e+00, double* %196, align 1
  %773 = add i64 %734, -112
  %774 = add i64 %736, 23
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i64*
  store i64 %772, i64* %775, align 8
  %776 = load i64, i64* %RBP.i, align 8
  %777 = add i64 %776, -8
  %778 = load i64, i64* %3, align 8
  %779 = add i64 %778, 4
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %777 to i64*
  %781 = load i64, i64* %780, align 8
  store i64 %781, i64* %RCX.i791, align 8
  %782 = add i64 %776, -44
  %783 = add i64 %778, 7
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = add i32 %785, 1
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %RAX.i801, align 8
  %788 = icmp eq i32 %785, -1
  %789 = icmp eq i32 %786, 0
  %790 = or i1 %788, %789
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %14, align 1
  %792 = and i32 %786, 255
  %793 = tail call i32 @llvm.ctpop.i32(i32 %792)
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  %796 = xor i8 %795, 1
  store i8 %796, i8* %21, align 1
  %797 = xor i32 %785, %786
  %798 = lshr i32 %797, 4
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  store i8 %800, i8* %26, align 1
  %801 = zext i1 %789 to i8
  store i8 %801, i8* %29, align 1
  %802 = lshr i32 %786, 31
  %803 = trunc i32 %802 to i8
  store i8 %803, i8* %32, align 1
  %804 = lshr i32 %785, 31
  %805 = xor i32 %802, %804
  %806 = add nuw nsw i32 %805, %802
  %807 = icmp eq i32 %806, 2
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %38, align 1
  %809 = sext i32 %786 to i64
  store i64 %809, i64* %RDX.i789, align 8
  %810 = shl nsw i64 %809, 3
  %811 = add i64 %810, %781
  %812 = add i64 %778, 18
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %811 to i64*
  %814 = load i64, i64* %813, align 8
  store i64 %814, i64* %684, align 1
  store double 0.000000e+00, double* %196, align 1
  %815 = add i64 %778, 22
  store i64 %815, i64* %3, align 8
  %816 = load i64, i64* %780, align 8
  store i64 %816, i64* %RCX.i791, align 8
  %817 = add i64 %776, -36
  %818 = add i64 %778, 25
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = add i32 %820, 1
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RAX.i801, align 8
  %823 = icmp eq i32 %820, -1
  %824 = icmp eq i32 %821, 0
  %825 = or i1 %823, %824
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %14, align 1
  %827 = and i32 %821, 255
  %828 = tail call i32 @llvm.ctpop.i32(i32 %827)
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  %831 = xor i8 %830, 1
  store i8 %831, i8* %21, align 1
  %832 = xor i32 %820, %821
  %833 = lshr i32 %832, 4
  %834 = trunc i32 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %26, align 1
  %836 = zext i1 %824 to i8
  store i8 %836, i8* %29, align 1
  %837 = lshr i32 %821, 31
  %838 = trunc i32 %837 to i8
  store i8 %838, i8* %32, align 1
  %839 = lshr i32 %820, 31
  %840 = xor i32 %837, %839
  %841 = add nuw nsw i32 %840, %837
  %842 = icmp eq i32 %841, 2
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %38, align 1
  %844 = sext i32 %821 to i64
  store i64 %844, i64* %RDX.i789, align 8
  %845 = shl nsw i64 %844, 3
  %846 = add i64 %845, %816
  %847 = add i64 %778, 36
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i64*
  store i64 %814, i64* %848, align 8
  %849 = load i64, i64* %RBP.i, align 8
  %850 = add i64 %849, -112
  %851 = load i64, i64* %3, align 8
  %852 = add i64 %851, 5
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %850 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %684, align 1
  store double 0.000000e+00, double* %196, align 1
  %855 = add i64 %849, -8
  %856 = add i64 %851, 9
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i64*
  %858 = load i64, i64* %857, align 8
  store i64 %858, i64* %RCX.i791, align 8
  %859 = add i64 %849, -44
  %860 = add i64 %851, 12
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = add i32 %862, 1
  %864 = zext i32 %863 to i64
  store i64 %864, i64* %RAX.i801, align 8
  %865 = icmp eq i32 %862, -1
  %866 = icmp eq i32 %863, 0
  %867 = or i1 %865, %866
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %14, align 1
  %869 = and i32 %863, 255
  %870 = tail call i32 @llvm.ctpop.i32(i32 %869)
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  %873 = xor i8 %872, 1
  store i8 %873, i8* %21, align 1
  %874 = xor i32 %862, %863
  %875 = lshr i32 %874, 4
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  store i8 %877, i8* %26, align 1
  %878 = zext i1 %866 to i8
  store i8 %878, i8* %29, align 1
  %879 = lshr i32 %863, 31
  %880 = trunc i32 %879 to i8
  store i8 %880, i8* %32, align 1
  %881 = lshr i32 %862, 31
  %882 = xor i32 %879, %881
  %883 = add nuw nsw i32 %882, %879
  %884 = icmp eq i32 %883, 2
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %38, align 1
  %886 = sext i32 %863 to i64
  store i64 %886, i64* %RDX.i789, align 8
  %887 = shl nsw i64 %886, 3
  %888 = add i64 %887, %858
  %889 = add i64 %851, 23
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i64*
  store i64 %854, i64* %890, align 8
  %891 = load i64, i64* %RBP.i, align 8
  %892 = add i64 %891, -52
  %893 = load i64, i64* %3, align 8
  %894 = add i64 %893, 3
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %892 to i32*
  %896 = load i32, i32* %895, align 4
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX.i801, align 8
  %898 = add i64 %891, -36
  %899 = add i64 %893, 6
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i32*
  %901 = load i32, i32* %900, align 4
  %902 = add i32 %901, %896
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RAX.i801, align 8
  %904 = icmp ult i32 %902, %896
  %905 = icmp ult i32 %902, %901
  %906 = or i1 %904, %905
  %907 = zext i1 %906 to i8
  store i8 %907, i8* %14, align 1
  %908 = and i32 %902, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908)
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %21, align 1
  %913 = xor i32 %901, %896
  %914 = xor i32 %913, %902
  %915 = lshr i32 %914, 4
  %916 = trunc i32 %915 to i8
  %917 = and i8 %916, 1
  store i8 %917, i8* %26, align 1
  %918 = icmp eq i32 %902, 0
  %919 = zext i1 %918 to i8
  store i8 %919, i8* %29, align 1
  %920 = lshr i32 %902, 31
  %921 = trunc i32 %920 to i8
  store i8 %921, i8* %32, align 1
  %922 = lshr i32 %896, 31
  %923 = lshr i32 %901, 31
  %924 = xor i32 %920, %922
  %925 = xor i32 %920, %923
  %926 = add nuw nsw i32 %924, %925
  %927 = icmp eq i32 %926, 2
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %38, align 1
  %929 = add i64 %893, 9
  store i64 %929, i64* %3, align 8
  store i32 %902, i32* %900, align 4
  %930 = load i64, i64* %3, align 8
  %931 = add i64 %930, -177
  store i64 %931, i64* %3, align 8
  br label %block_.L_400c27

block_.L_400cdd:                                  ; preds = %block_.L_400c27
  %932 = add i64 %566, -28
  %933 = add i64 %602, 8
  store i64 %933, i64* %3, align 8
  %934 = inttoptr i64 %932 to i32*
  %935 = load i32, i32* %934, align 4
  %936 = add i32 %935, 2
  %937 = zext i32 %936 to i64
  store i64 %937, i64* %RAX.i801, align 8
  %938 = icmp ugt i32 %935, -3
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %14, align 1
  %940 = and i32 %936, 255
  %941 = tail call i32 @llvm.ctpop.i32(i32 %940)
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  store i8 %944, i8* %21, align 1
  %945 = xor i32 %935, %936
  %946 = lshr i32 %945, 4
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  store i8 %948, i8* %26, align 1
  %949 = icmp eq i32 %936, 0
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %29, align 1
  %951 = lshr i32 %936, 31
  %952 = trunc i32 %951 to i8
  store i8 %952, i8* %32, align 1
  %953 = lshr i32 %935, 31
  %954 = xor i32 %951, %953
  %955 = add nuw nsw i32 %954, %951
  %956 = icmp eq i32 %955, 2
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %38, align 1
  %958 = add i64 %602, 14
  store i64 %958, i64* %3, align 8
  store i32 %936, i32* %934, align 4
  %959 = load i64, i64* %3, align 8
  %960 = add i64 %959, -222
  store i64 %960, i64* %3, align 8
  br label %block_.L_400c0d

block_.L_400cf0:                                  ; preds = %block_.L_400c0d
  %961 = add i64 %555, 5
  store i64 %961, i64* %3, align 8
  %.pre8 = load i64, i64* %RBP.i, align 8
  br label %block_.L_400cf5

block_.L_400cf5:                                  ; preds = %block_400bfb, %block_.L_400cf0
  %962 = phi i64 [ %961, %block_.L_400cf0 ], [ %503, %block_400bfb ]
  %963 = phi i64 [ %.pre8, %block_.L_400cf0 ], [ %433, %block_400bfb ]
  %964 = add i64 %963, -52
  %965 = add i64 %962, 3
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i32*
  %967 = load i32, i32* %966, align 4
  %968 = zext i32 %967 to i64
  %969 = shl nuw i64 %968, 32
  %970 = ashr i64 %969, 33
  %971 = trunc i32 %967 to i8
  %972 = and i8 %971, 1
  %973 = trunc i64 %970 to i32
  %974 = and i64 %970, 4294967295
  store i64 %974, i64* %RAX.i801, align 8
  store i8 %972, i8* %14, align 1
  %975 = and i32 %973, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %980 = icmp eq i32 %973, 0
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %29, align 1
  %982 = lshr i64 %970, 31
  %983 = trunc i64 %982 to i8
  %984 = and i8 %983, 1
  store i8 %984, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %985 = add i64 %963, -68
  %986 = add i64 %962, 9
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  store i32 %973, i32* %987, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_400cfe

block_.L_400cfe:                                  ; preds = %block_.L_400d36, %block_.L_400cf5
  %988 = phi i64 [ %1225, %block_.L_400d36 ], [ %.pre9, %block_.L_400cf5 ]
  store i64 0, i64* %RAX.i801, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i492, align 1
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -68
  %991 = add i64 %988, 7
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RAX.i801, align 8
  %995 = add i64 %989, -48
  %996 = add i64 %988, 10
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = sub i32 %993, %998
  %1000 = icmp ult i32 %993, %998
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %14, align 1
  %1002 = and i32 %999, 255
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %21, align 1
  %1007 = xor i32 %998, %993
  %1008 = xor i32 %1007, %999
  %1009 = lshr i32 %1008, 4
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  store i8 %1011, i8* %26, align 1
  %1012 = icmp eq i32 %999, 0
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %29, align 1
  %1014 = lshr i32 %999, 31
  %1015 = trunc i32 %1014 to i8
  store i8 %1015, i8* %32, align 1
  %1016 = lshr i32 %993, 31
  %1017 = lshr i32 %998, 31
  %1018 = xor i32 %1017, %1016
  %1019 = xor i32 %1014, %1016
  %1020 = add nuw nsw i32 %1019, %1018
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %38, align 1
  %1023 = add i64 %989, -165
  %1024 = add i64 %988, 16
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i8*
  store i8 0, i8* %1025, align 1
  %1026 = load i64, i64* %3, align 8
  %1027 = load i8, i8* %32, align 1
  %1028 = icmp ne i8 %1027, 0
  %1029 = load i8, i8* %38, align 1
  %1030 = icmp ne i8 %1029, 0
  %1031 = xor i1 %1028, %1030
  %.v28 = select i1 %1031, i64 21, i64 6
  %1032 = add i64 %1026, %.v28
  store i64 %1032, i64* %3, align 8
  br i1 %1031, label %block_.L_400d23, label %block_400d14

block_400d14:                                     ; preds = %block_.L_400cfe
  %1033 = load i64, i64* %RBP.i, align 8
  %1034 = add i64 %1033, -40
  %1035 = add i64 %1032, 3
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i32*
  %1037 = load i32, i32* %1036, align 4
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RAX.i801, align 8
  %1039 = add i64 %1033, -68
  %1040 = add i64 %1032, 6
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = sub i32 %1037, %1042
  %1044 = icmp ult i32 %1037, %1042
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %14, align 1
  %1046 = and i32 %1043, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %21, align 1
  %1051 = xor i32 %1042, %1037
  %1052 = xor i32 %1051, %1043
  %1053 = lshr i32 %1052, 4
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  store i8 %1055, i8* %26, align 1
  %1056 = icmp eq i32 %1043, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %29, align 1
  %1058 = lshr i32 %1043, 31
  %1059 = trunc i32 %1058 to i8
  store i8 %1059, i8* %32, align 1
  %1060 = lshr i32 %1037, 31
  %1061 = lshr i32 %1042, 31
  %1062 = xor i32 %1061, %1060
  %1063 = xor i32 %1058, %1060
  %1064 = add nuw nsw i32 %1063, %1062
  %1065 = icmp eq i32 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %38, align 1
  %1067 = icmp ne i8 %1059, 0
  %1068 = xor i1 %1067, %1065
  %.demorgan29 = or i1 %1056, %1068
  %1069 = xor i1 %.demorgan29, true
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %CL.i492, align 1
  %1071 = add i64 %1033, -165
  %1072 = add i64 %1032, 15
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1071 to i8*
  store i8 %1070, i8* %1073, align 1
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_400d23

block_.L_400d23:                                  ; preds = %block_400d14, %block_.L_400cfe
  %1074 = phi i64 [ %.pre10, %block_400d14 ], [ %1032, %block_.L_400cfe ]
  %1075 = load i64, i64* %RBP.i, align 8
  %1076 = add i64 %1075, -165
  %1077 = add i64 %1074, 6
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i8*
  %1079 = load i8, i8* %1078, align 1
  store i8 %1079, i8* %AL.i491, align 1
  %1080 = and i8 %1079, 1
  store i8 0, i8* %14, align 1
  %1081 = zext i8 %1080 to i32
  %1082 = tail call i32 @llvm.ctpop.i32(i32 %1081)
  %1083 = trunc i32 %1082 to i8
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %21, align 1
  %1085 = xor i8 %1080, 1
  store i8 %1085, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1086 = icmp eq i8 %1085, 0
  %.v30 = select i1 %1086, i64 19, i64 14
  %1087 = add i64 %1074, %.v30
  store i64 %1087, i64* %3, align 8
  %1088 = add i64 %1075, -68
  br i1 %1086, label %block_.L_400d36, label %block_400d31

block_400d31:                                     ; preds = %block_.L_400d23
  %1089 = add i64 %1087, 33
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = zext i32 %1091 to i64
  store i64 %1092, i64* %RAX.i801, align 8
  %1093 = add i64 %1075, -40
  %1094 = add i64 %1087, 36
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i32*
  %1096 = load i32, i32* %1095, align 4
  %1097 = add i32 %1096, %1091
  %1098 = zext i32 %1097 to i64
  store i64 %1098, i64* %RAX.i801, align 8
  %1099 = icmp ult i32 %1097, %1091
  %1100 = icmp ult i32 %1097, %1096
  %1101 = or i1 %1099, %1100
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %14, align 1
  %1103 = and i32 %1097, 255
  %1104 = tail call i32 @llvm.ctpop.i32(i32 %1103)
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = xor i8 %1106, 1
  store i8 %1107, i8* %21, align 1
  %1108 = xor i32 %1096, %1091
  %1109 = xor i32 %1108, %1097
  %1110 = lshr i32 %1109, 4
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  store i8 %1112, i8* %26, align 1
  %1113 = icmp eq i32 %1097, 0
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %29, align 1
  %1115 = lshr i32 %1097, 31
  %1116 = trunc i32 %1115 to i8
  store i8 %1116, i8* %32, align 1
  %1117 = lshr i32 %1091, 31
  %1118 = lshr i32 %1096, 31
  %1119 = xor i32 %1115, %1117
  %1120 = xor i32 %1115, %1118
  %1121 = add nuw nsw i32 %1119, %1120
  %1122 = icmp eq i32 %1121, 2
  %1123 = zext i1 %1122 to i8
  store i8 %1123, i8* %38, align 1
  %1124 = add i64 %1087, 39
  store i64 %1124, i64* %3, align 8
  store i32 %1097, i32* %1095, align 4
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -48
  %1127 = load i64, i64* %3, align 8
  %1128 = add i64 %1127, 3
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1126 to i32*
  %1130 = load i32, i32* %1129, align 4
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RAX.i801, align 8
  %1132 = add i64 %1125, -32
  %1133 = add i64 %1127, 6
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i32*
  %1135 = load i32, i32* %1134, align 4
  %1136 = add i32 %1135, %1130
  %1137 = zext i32 %1136 to i64
  store i64 %1137, i64* %RAX.i801, align 8
  %1138 = icmp ult i32 %1136, %1130
  %1139 = icmp ult i32 %1136, %1135
  %1140 = or i1 %1138, %1139
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %14, align 1
  %1142 = and i32 %1136, 255
  %1143 = tail call i32 @llvm.ctpop.i32(i32 %1142)
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  store i8 %1146, i8* %21, align 1
  %1147 = xor i32 %1135, %1130
  %1148 = xor i32 %1147, %1136
  %1149 = lshr i32 %1148, 4
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  store i8 %1151, i8* %26, align 1
  %1152 = icmp eq i32 %1136, 0
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %29, align 1
  %1154 = lshr i32 %1136, 31
  %1155 = trunc i32 %1154 to i8
  store i8 %1155, i8* %32, align 1
  %1156 = lshr i32 %1130, 31
  %1157 = lshr i32 %1135, 31
  %1158 = xor i32 %1154, %1156
  %1159 = xor i32 %1154, %1157
  %1160 = add nuw nsw i32 %1158, %1159
  %1161 = icmp eq i32 %1160, 2
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %38, align 1
  %1163 = add i64 %1127, 9
  store i64 %1163, i64* %3, align 8
  store i32 %1136, i32* %1134, align 4
  %1164 = load i64, i64* %3, align 8
  %1165 = add i64 %1164, -370
  store i64 %1165, i64* %3, align 8
  br label %block_.L_400bef

block_.L_400d36:                                  ; preds = %block_.L_400d23
  %1166 = add i64 %1087, 3
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1088 to i32*
  %1168 = load i32, i32* %1167, align 4
  %1169 = zext i32 %1168 to i64
  store i64 %1169, i64* %RAX.i801, align 8
  %1170 = add i64 %1075, -40
  %1171 = add i64 %1087, 6
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to i32*
  %1173 = load i32, i32* %1172, align 4
  %1174 = sub i32 %1173, %1168
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RCX.i791, align 8
  %1176 = icmp ult i32 %1173, %1168
  %1177 = zext i1 %1176 to i8
  store i8 %1177, i8* %14, align 1
  %1178 = and i32 %1174, 255
  %1179 = tail call i32 @llvm.ctpop.i32(i32 %1178)
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  store i8 %1182, i8* %21, align 1
  %1183 = xor i32 %1168, %1173
  %1184 = xor i32 %1183, %1174
  %1185 = lshr i32 %1184, 4
  %1186 = trunc i32 %1185 to i8
  %1187 = and i8 %1186, 1
  store i8 %1187, i8* %26, align 1
  %1188 = icmp eq i32 %1174, 0
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %29, align 1
  %1190 = lshr i32 %1174, 31
  %1191 = trunc i32 %1190 to i8
  store i8 %1191, i8* %32, align 1
  %1192 = lshr i32 %1173, 31
  %1193 = lshr i32 %1168, 31
  %1194 = xor i32 %1193, %1192
  %1195 = xor i32 %1190, %1192
  %1196 = add nuw nsw i32 %1195, %1194
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %38, align 1
  %1199 = add i64 %1087, 11
  store i64 %1199, i64* %3, align 8
  store i32 %1174, i32* %1172, align 4
  %1200 = load i64, i64* %RBP.i, align 8
  %1201 = add i64 %1200, -68
  %1202 = load i64, i64* %3, align 8
  %1203 = add i64 %1202, 3
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1201 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = zext i32 %1205 to i64
  %1207 = shl nuw i64 %1206, 32
  %1208 = ashr i64 %1207, 33
  %1209 = trunc i32 %1205 to i8
  %1210 = and i8 %1209, 1
  %1211 = trunc i64 %1208 to i32
  %1212 = and i64 %1208, 4294967295
  store i64 %1212, i64* %RAX.i801, align 8
  store i8 %1210, i8* %14, align 1
  %1213 = and i32 %1211, 255
  %1214 = tail call i32 @llvm.ctpop.i32(i32 %1213)
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = xor i8 %1216, 1
  store i8 %1217, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1218 = icmp eq i32 %1211, 0
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %29, align 1
  %1220 = lshr i64 %1208, 31
  %1221 = trunc i64 %1220 to i8
  %1222 = and i8 %1221, 1
  store i8 %1222, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1223 = add i64 %1202, 9
  store i64 %1223, i64* %3, align 8
  store i32 %1211, i32* %1204, align 4
  %1224 = load i64, i64* %3, align 8
  %1225 = add i64 %1224, -76
  store i64 %1225, i64* %3, align 8
  br label %block_.L_400cfe

block_.L_400d66:                                  ; preds = %block_.L_400bef
  %1226 = add i64 %433, -48
  %1227 = add i64 %469, 3
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i32*
  %1229 = load i32, i32* %1228, align 4
  %1230 = zext i32 %1229 to i64
  store i64 %1230, i64* %RAX.i801, align 8
  %1231 = add i64 %433, -60
  %1232 = add i64 %469, 6
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1231 to i32*
  store i32 %1229, i32* %1233, align 4
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_400d6c

block_.L_400d6c:                                  ; preds = %block_.L_401005, %block_.L_400d66
  %1234 = phi i64 [ %.pre11, %block_.L_400d66 ], [ %2112, %block_.L_401005 ]
  %MEMORY.8 = phi %struct.Memory* [ %332, %block_.L_400d66 ], [ %call2_400e15, %block_.L_401005 ]
  %1235 = load i64, i64* %RBP.i, align 8
  %1236 = add i64 %1235, -60
  %1237 = add i64 %1234, 3
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = zext i32 %1239 to i64
  store i64 %1240, i64* %RAX.i801, align 8
  %1241 = add i64 %1235, -52
  %1242 = add i64 %1234, 6
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i32*
  %1244 = load i32, i32* %1243, align 4
  %1245 = sub i32 %1239, %1244
  %1246 = icmp ult i32 %1239, %1244
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %14, align 1
  %1248 = and i32 %1245, 255
  %1249 = tail call i32 @llvm.ctpop.i32(i32 %1248)
  %1250 = trunc i32 %1249 to i8
  %1251 = and i8 %1250, 1
  %1252 = xor i8 %1251, 1
  store i8 %1252, i8* %21, align 1
  %1253 = xor i32 %1244, %1239
  %1254 = xor i32 %1253, %1245
  %1255 = lshr i32 %1254, 4
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  store i8 %1257, i8* %26, align 1
  %1258 = icmp eq i32 %1245, 0
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %29, align 1
  %1260 = lshr i32 %1245, 31
  %1261 = trunc i32 %1260 to i8
  store i8 %1261, i8* %32, align 1
  %1262 = lshr i32 %1239, 31
  %1263 = lshr i32 %1244, 31
  %1264 = xor i32 %1263, %1262
  %1265 = xor i32 %1260, %1262
  %1266 = add nuw nsw i32 %1265, %1264
  %1267 = icmp eq i32 %1266, 2
  %1268 = zext i1 %1267 to i8
  store i8 %1268, i8* %38, align 1
  %1269 = icmp ne i8 %1261, 0
  %1270 = xor i1 %1269, %1267
  %.v31 = select i1 %1270, i64 12, i64 676
  %1271 = add i64 %1234, %.v31
  store i64 %1271, i64* %3, align 8
  br i1 %1270, label %block_400d78, label %block_.L_401010

block_400d78:                                     ; preds = %block_.L_400d6c
  store i32 0, i32* %197, align 1
  store i32 0, i32* %199, align 1
  store i32 0, i32* %200, align 1
  store i32 0, i32* %202, align 1
  %1272 = load i64, i64* bitcast (%G_0x365__rip__4197763__type* @G_0x365__rip__4197763_ to i64*), align 8
  %1273 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %203, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1272, i64* %1273, align 1
  store double 0.000000e+00, double* %206, align 1
  %1274 = load i64, i64* bitcast (%G_0x365__rip__4197771__type* @G_0x365__rip__4197771_ to i64*), align 8
  %1275 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %207, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1274, i64* %1275, align 1
  store double 0.000000e+00, double* %209, align 1
  %1276 = load i64, i64* bitcast (%G_0x365__rip__4197779__type* @G_0x365__rip__4197779_ to i64*), align 8
  %1277 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %210, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1276, i64* %1277, align 1
  store double 0.000000e+00, double* %213, align 1
  %1278 = load i64, i64* bitcast (%G_0x365__rip__4197787__type* @G_0x365__rip__4197787_ to i64*), align 8
  %1279 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %214, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1278, i64* %1279, align 1
  store double 0.000000e+00, double* %217, align 1
  %1280 = add i64 %1271, 38
  store i64 %1280, i64* %3, align 8
  %1281 = load i32, i32* %1238, align 4
  %1282 = shl i32 %1281, 1
  %1283 = icmp slt i32 %1281, 0
  %1284 = icmp slt i32 %1282, 0
  %1285 = xor i1 %1283, %1284
  %1286 = zext i32 %1282 to i64
  store i64 %1286, i64* %RAX.i801, align 8
  %.lobit32 = lshr i32 %1281, 31
  %1287 = trunc i32 %.lobit32 to i8
  store i8 %1287, i8* %14, align 1
  %1288 = and i32 %1282, 254
  %1289 = tail call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  store i8 %1292, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1293 = icmp eq i32 %1282, 0
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %29, align 1
  %1295 = lshr i32 %1281, 30
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  store i8 %1297, i8* %32, align 1
  %1298 = zext i1 %1285 to i8
  store i8 %1298, i8* %38, align 1
  %1299 = add i64 %1235, -64
  %1300 = add i64 %1271, 44
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  store i32 %1282, i32* %1301, align 4
  %1302 = load i64, i64* %RBP.i, align 8
  %1303 = add i64 %1302, -24
  %1304 = load i64, i64* %3, align 8
  %1305 = add i64 %1304, 3
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1303 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = zext i32 %1307 to i64
  store i64 %1308, i64* %RAX.i801, align 8
  %1309 = sitofp i32 %1307 to double
  %1310 = load i64, i64* %220, align 1
  %1311 = load double, double* %215, align 1
  %1312 = fmul double %1309, %1311
  store double %1312, double* %219, align 1
  %1313 = add i64 %1302, -64
  %1314 = add i64 %1304, 14
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = zext i32 %1316 to i64
  store i64 %1317, i64* %RAX.i801, align 8
  %1318 = sext i32 %1316 to i64
  %1319 = lshr i64 %1318, 32
  store i64 %1319, i64* %191, align 8
  %1320 = add i64 %1302, -48
  %1321 = add i64 %1304, 18
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i32*
  %1323 = load i32, i32* %1322, align 4
  %1324 = sext i32 %1323 to i64
  %1325 = shl nuw i64 %1319, 32
  %1326 = or i64 %1325, %1317
  %1327 = sdiv i64 %1326, %1324
  %1328 = shl i64 %1327, 32
  %1329 = ashr exact i64 %1328, 32
  %1330 = icmp eq i64 %1327, %1329
  br i1 %1330, label %1333, label %1331

; <label>:1331:                                   ; preds = %block_400d78
  %1332 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1321, %struct.Memory* %MEMORY.8)
  %.pre12 = load i32, i32* %EAX.i798, align 4
  %.pre13 = load i64, i64* %3, align 8
  %.pre14 = load double, double* %219, align 1
  %.pre15 = load i64, i64* %220, align 1
  %.pre16 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl_MINUS0x30__rbp_.exit

; <label>:1333:                                   ; preds = %block_400d78
  %1334 = srem i64 %1326, %1324
  %1335 = and i64 %1327, 4294967295
  store i64 %1335, i64* %RAX.i801, align 8
  %1336 = and i64 %1334, 4294967295
  store i64 %1336, i64* %191, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1337 = trunc i64 %1327 to i32
  br label %routine_idivl_MINUS0x30__rbp_.exit

routine_idivl_MINUS0x30__rbp_.exit:               ; preds = %1333, %1331
  %1338 = phi i64 [ %.pre16, %1331 ], [ %1302, %1333 ]
  %1339 = phi i64 [ %.pre15, %1331 ], [ %1310, %1333 ]
  %1340 = phi double [ %.pre14, %1331 ], [ %1312, %1333 ]
  %1341 = phi i64 [ %.pre13, %1331 ], [ %1321, %1333 ]
  %1342 = phi i32 [ %.pre12, %1331 ], [ %1337, %1333 ]
  %1343 = phi %struct.Memory* [ %1332, %1331 ], [ %MEMORY.8, %1333 ]
  %1344 = sitofp i32 %1342 to double
  store double %1344, double* %215, align 1
  %1345 = fdiv double %1340, %1344
  store double %1345, double* %219, align 1
  store i64 %1339, i64* %220, align 1
  %1346 = add i64 %1338, -120
  %1347 = add i64 %1341, 13
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to double*
  store double %1345, double* %1348, align 8
  %1349 = load i64, i64* %RBP.i, align 8
  %1350 = add i64 %1349, -120
  %1351 = load i64, i64* %3, align 8
  %1352 = add i64 %1351, 5
  store i64 %1352, i64* %3, align 8
  %1353 = load double, double* %211, align 1
  %1354 = inttoptr i64 %1350 to double*
  %1355 = load double, double* %1354, align 8
  %1356 = fmul double %1353, %1355
  store double %1356, double* %211, align 1
  %1357 = add i64 %1349, -176
  %1358 = add i64 %1351, 13
  store i64 %1358, i64* %3, align 8
  %1359 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %192, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1360 = load i64, i64* %1359, align 1
  %1361 = inttoptr i64 %1357 to i64*
  store i64 %1360, i64* %1361, align 8
  %1362 = load i64, i64* %3, align 8
  %1363 = load <2 x i32>, <2 x i32>* %221, align 1
  %1364 = load <2 x i32>, <2 x i32>* %222, align 1
  %1365 = extractelement <2 x i32> %1363, i32 0
  store i32 %1365, i32* %197, align 1
  %1366 = extractelement <2 x i32> %1363, i32 1
  store i32 %1366, i32* %199, align 1
  %1367 = extractelement <2 x i32> %1364, i32 0
  store i32 %1367, i32* %200, align 1
  %1368 = extractelement <2 x i32> %1364, i32 1
  store i32 %1368, i32* %202, align 1
  %1369 = load i64, i64* %RBP.i, align 8
  %1370 = add i64 %1369, -184
  %1371 = add i64 %1362, 11
  store i64 %1371, i64* %3, align 8
  %1372 = load i64, i64* %1275, align 1
  %1373 = inttoptr i64 %1370 to i64*
  store i64 %1372, i64* %1373, align 8
  %1374 = load i64, i64* %RBP.i, align 8
  %1375 = add i64 %1374, -192
  %1376 = load i64, i64* %3, align 8
  %1377 = add i64 %1376, 8
  store i64 %1377, i64* %3, align 8
  %1378 = load i64, i64* %1273, align 1
  %1379 = inttoptr i64 %1375 to i64*
  store i64 %1378, i64* %1379, align 8
  %1380 = load i64, i64* %3, align 8
  %1381 = add i64 %1380, -2179
  %1382 = add i64 %1380, 5
  %1383 = load i64, i64* %6, align 8
  %1384 = add i64 %1383, -8
  %1385 = inttoptr i64 %1384 to i64*
  store i64 %1382, i64* %1385, align 8
  store i64 %1384, i64* %6, align 8
  store i64 %1381, i64* %3, align 8
  %call2_400de3 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %1381, %struct.Memory* %1343)
  %1386 = load i64, i64* %RBP.i, align 8
  %1387 = add i64 %1386, -160
  %1388 = load i64, i64* %3, align 8
  %1389 = add i64 %1388, 8
  store i64 %1389, i64* %3, align 8
  %1390 = load i64, i64* %1359, align 1
  %1391 = inttoptr i64 %1387 to i64*
  store i64 %1390, i64* %1391, align 8
  %1392 = load i64, i64* %RBP.i, align 8
  %1393 = add i64 %1392, -184
  %1394 = load i64, i64* %3, align 8
  %1395 = add i64 %1394, 8
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1393 to double*
  %1397 = load double, double* %1396, align 8
  store double %1397, double* %194, align 1
  store double 0.000000e+00, double* %196, align 1
  %1398 = add i64 %1392, -160
  %1399 = add i64 %1394, 16
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to double*
  %1401 = load double, double* %1400, align 8
  %1402 = fmul double %1397, %1401
  store double %1402, double* %194, align 1
  store i64 0, i64* %195, align 1
  %1403 = add i64 %1394, 24
  store i64 %1403, i64* %3, align 8
  %1404 = load double, double* %1400, align 8
  %1405 = fmul double %1402, %1404
  store double %1405, double* %194, align 1
  store i64 0, i64* %195, align 1
  %1406 = add i64 %1392, -144
  %1407 = add i64 %1394, 32
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to double*
  store double %1405, double* %1408, align 8
  %1409 = load i64, i64* %RBP.i, align 8
  %1410 = add i64 %1409, -120
  %1411 = load i64, i64* %3, align 8
  %1412 = add i64 %1411, 5
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1410 to i64*
  %1414 = load i64, i64* %1413, align 8
  store i64 %1414, i64* %1359, align 1
  store double 0.000000e+00, double* %196, align 1
  %1415 = add i64 %1411, -2224
  %1416 = add i64 %1411, 10
  %1417 = load i64, i64* %6, align 8
  %1418 = add i64 %1417, -8
  %1419 = inttoptr i64 %1418 to i64*
  store i64 %1416, i64* %1419, align 8
  store i64 %1418, i64* %6, align 8
  store i64 %1415, i64* %3, align 8
  %call2_400e15 = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %1415, %struct.Memory* %call2_400de3)
  %1420 = load i64, i64* %RBP.i, align 8
  %1421 = add i64 %1420, -136
  %1422 = load i64, i64* %3, align 8
  %1423 = add i64 %1422, 8
  store i64 %1423, i64* %3, align 8
  %1424 = load i64, i64* %1359, align 1
  %1425 = inttoptr i64 %1421 to i64*
  store i64 %1424, i64* %1425, align 8
  %1426 = load i64, i64* %RBP.i, align 8
  %1427 = add i64 %1426, -192
  %1428 = load i64, i64* %3, align 8
  %1429 = add i64 %1428, 8
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1427 to i64*
  %1431 = load i64, i64* %1430, align 8
  store i64 %1431, i64* %1359, align 1
  store double 0.000000e+00, double* %196, align 1
  %1432 = add i64 %1426, -152
  %1433 = add i64 %1428, 16
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i64*
  store i64 %1431, i64* %1434, align 8
  %1435 = load i64, i64* %RBP.i, align 8
  %1436 = add i64 %1435, -176
  %1437 = load i64, i64* %3, align 8
  %1438 = add i64 %1437, 8
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1436 to i64*
  %1440 = load i64, i64* %1439, align 8
  store i64 %1440, i64* %1273, align 1
  store double 0.000000e+00, double* %206, align 1
  %1441 = add i64 %1435, -128
  %1442 = add i64 %1437, 13
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i64*
  store i64 %1440, i64* %1443, align 8
  %1444 = load i64, i64* %RBP.i, align 8
  %1445 = add i64 %1444, -36
  %1446 = load i64, i64* %3, align 8
  %1447 = add i64 %1446, 7
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1445 to i32*
  store i32 1, i32* %1448, align 4
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_400e46

block_.L_400e46:                                  ; preds = %block_.L_400f93, %routine_idivl_MINUS0x30__rbp_.exit
  %1449 = phi i64 [ %2104, %block_.L_400f93 ], [ %.pre17, %routine_idivl_MINUS0x30__rbp_.exit ]
  %1450 = load i64, i64* %RBP.i, align 8
  %1451 = add i64 %1450, -36
  %1452 = add i64 %1449, 3
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to i32*
  %1454 = load i32, i32* %1453, align 4
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RAX.i801, align 8
  %1456 = add i64 %1450, -60
  %1457 = add i64 %1449, 6
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i32*
  %1459 = load i32, i32* %1458, align 4
  %1460 = sub i32 %1454, %1459
  %1461 = icmp ult i32 %1454, %1459
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %14, align 1
  %1463 = and i32 %1460, 255
  %1464 = tail call i32 @llvm.ctpop.i32(i32 %1463)
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = xor i8 %1466, 1
  store i8 %1467, i8* %21, align 1
  %1468 = xor i32 %1459, %1454
  %1469 = xor i32 %1468, %1460
  %1470 = lshr i32 %1469, 4
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  store i8 %1472, i8* %26, align 1
  %1473 = icmp eq i32 %1460, 0
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %29, align 1
  %1475 = lshr i32 %1460, 31
  %1476 = trunc i32 %1475 to i8
  store i8 %1476, i8* %32, align 1
  %1477 = lshr i32 %1454, 31
  %1478 = lshr i32 %1459, 31
  %1479 = xor i32 %1478, %1477
  %1480 = xor i32 %1475, %1477
  %1481 = add nuw nsw i32 %1480, %1479
  %1482 = icmp eq i32 %1481, 2
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %38, align 1
  %1484 = icmp ne i8 %1476, 0
  %1485 = xor i1 %1484, %1482
  %.demorgan33 = or i1 %1473, %1485
  %.v34 = select i1 %.demorgan33, i64 12, i64 447
  %1486 = add i64 %1449, %.v34
  store i64 %1486, i64* %3, align 8
  br i1 %.demorgan33, label %block_400e52, label %block_.L_401005

block_400e52:                                     ; preds = %block_.L_400e46
  %1487 = add i64 %1486, 3
  store i64 %1487, i64* %3, align 8
  %1488 = load i32, i32* %1453, align 4
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %RAX.i801, align 8
  %1490 = add i64 %1450, -28
  %1491 = add i64 %1486, 6
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i32*
  store i32 %1488, i32* %1492, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_400e58

block_.L_400e58:                                  ; preds = %block_.L_400f80, %block_400e52
  %1493 = phi i64 [ %2007, %block_.L_400f80 ], [ %.pre18, %block_400e52 ]
  %1494 = load i64, i64* %RBP.i, align 8
  %1495 = add i64 %1494, -28
  %1496 = add i64 %1493, 3
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i32*
  %1498 = load i32, i32* %1497, align 4
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RAX.i801, align 8
  %1500 = add i64 %1494, -36
  %1501 = add i64 %1493, 6
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = zext i32 %1503 to i64
  store i64 %1504, i64* %RCX.i791, align 8
  %1505 = add i64 %1494, -48
  %1506 = add i64 %1493, 9
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = add i32 %1508, %1503
  %1510 = add i32 %1509, -2
  %1511 = zext i32 %1510 to i64
  store i64 %1511, i64* %RCX.i791, align 8
  %1512 = lshr i32 %1510, 31
  %1513 = sub i32 %1498, %1510
  %1514 = icmp ult i32 %1498, %1510
  %1515 = zext i1 %1514 to i8
  store i8 %1515, i8* %14, align 1
  %1516 = and i32 %1513, 255
  %1517 = tail call i32 @llvm.ctpop.i32(i32 %1516)
  %1518 = trunc i32 %1517 to i8
  %1519 = and i8 %1518, 1
  %1520 = xor i8 %1519, 1
  store i8 %1520, i8* %21, align 1
  %1521 = xor i32 %1510, %1498
  %1522 = xor i32 %1521, %1513
  %1523 = lshr i32 %1522, 4
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  store i8 %1525, i8* %26, align 1
  %1526 = icmp eq i32 %1513, 0
  %1527 = zext i1 %1526 to i8
  store i8 %1527, i8* %29, align 1
  %1528 = lshr i32 %1513, 31
  %1529 = trunc i32 %1528 to i8
  store i8 %1529, i8* %32, align 1
  %1530 = lshr i32 %1498, 31
  %1531 = xor i32 %1512, %1530
  %1532 = xor i32 %1528, %1530
  %1533 = add nuw nsw i32 %1532, %1531
  %1534 = icmp eq i32 %1533, 2
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %38, align 1
  %1536 = icmp ne i8 %1529, 0
  %1537 = xor i1 %1536, %1534
  %.demorgan35 = or i1 %1526, %1537
  %.v36 = select i1 %.demorgan35, i64 20, i64 315
  %1538 = add i64 %1493, %.v36
  store i64 %1538, i64* %3, align 8
  %1539 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan35, label %block_400e6c, label %block_.L_400f93

block_400e6c:                                     ; preds = %block_.L_400e58
  %1540 = add i64 %1539, -28
  %1541 = add i64 %1538, 3
  store i64 %1541, i64* %3, align 8
  %1542 = inttoptr i64 %1540 to i32*
  %1543 = load i32, i32* %1542, align 4
  %1544 = zext i32 %1543 to i64
  store i64 %1544, i64* %RAX.i801, align 8
  %1545 = add i64 %1539, -32
  %1546 = add i64 %1538, 6
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i32*
  store i32 %1543, i32* %1547, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_400e72

block_.L_400e72:                                  ; preds = %block_400e7e, %block_400e6c
  %1548 = phi i64 [ %1978, %block_400e7e ], [ %.pre19, %block_400e6c ]
  %1549 = load i64, i64* %RBP.i, align 8
  %1550 = add i64 %1549, -32
  %1551 = add i64 %1548, 3
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = zext i32 %1553 to i64
  store i64 %1554, i64* %RAX.i801, align 8
  %1555 = add i64 %1549, -56
  %1556 = add i64 %1548, 6
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i32*
  %1558 = load i32, i32* %1557, align 4
  %1559 = sub i32 %1553, %1558
  %1560 = icmp ult i32 %1553, %1558
  %1561 = zext i1 %1560 to i8
  store i8 %1561, i8* %14, align 1
  %1562 = and i32 %1559, 255
  %1563 = tail call i32 @llvm.ctpop.i32(i32 %1562)
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %21, align 1
  %1567 = xor i32 %1558, %1553
  %1568 = xor i32 %1567, %1559
  %1569 = lshr i32 %1568, 4
  %1570 = trunc i32 %1569 to i8
  %1571 = and i8 %1570, 1
  store i8 %1571, i8* %26, align 1
  %1572 = icmp eq i32 %1559, 0
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %29, align 1
  %1574 = lshr i32 %1559, 31
  %1575 = trunc i32 %1574 to i8
  store i8 %1575, i8* %32, align 1
  %1576 = lshr i32 %1553, 31
  %1577 = lshr i32 %1558, 31
  %1578 = xor i32 %1577, %1576
  %1579 = xor i32 %1574, %1576
  %1580 = add nuw nsw i32 %1579, %1578
  %1581 = icmp eq i32 %1580, 2
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %38, align 1
  %1583 = icmp ne i8 %1575, 0
  %1584 = xor i1 %1583, %1581
  %.demorgan37 = or i1 %1572, %1584
  %.v38 = select i1 %.demorgan37, i64 12, i64 270
  %1585 = add i64 %1548, %.v38
  store i64 %1585, i64* %3, align 8
  br i1 %.demorgan37, label %block_400e7e, label %block_.L_400f80

block_400e7e:                                     ; preds = %block_.L_400e72
  %1586 = add i64 %1585, 3
  store i64 %1586, i64* %3, align 8
  %1587 = load i32, i32* %1552, align 4
  %1588 = zext i32 %1587 to i64
  store i64 %1588, i64* %RAX.i801, align 8
  %1589 = add i64 %1549, -76
  %1590 = add i64 %1585, 6
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1589 to i32*
  store i32 %1587, i32* %1591, align 4
  %1592 = load i64, i64* %RBP.i, align 8
  %1593 = add i64 %1592, -76
  %1594 = load i64, i64* %3, align 8
  %1595 = add i64 %1594, 3
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1593 to i32*
  %1597 = load i32, i32* %1596, align 4
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RAX.i801, align 8
  %1599 = add i64 %1592, -60
  %1600 = add i64 %1594, 6
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = add i32 %1602, %1597
  %1604 = zext i32 %1603 to i64
  store i64 %1604, i64* %RAX.i801, align 8
  %1605 = icmp ult i32 %1603, %1597
  %1606 = icmp ult i32 %1603, %1602
  %1607 = or i1 %1605, %1606
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %14, align 1
  %1609 = and i32 %1603, 255
  %1610 = tail call i32 @llvm.ctpop.i32(i32 %1609)
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  %1613 = xor i8 %1612, 1
  store i8 %1613, i8* %21, align 1
  %1614 = xor i32 %1602, %1597
  %1615 = xor i32 %1614, %1603
  %1616 = lshr i32 %1615, 4
  %1617 = trunc i32 %1616 to i8
  %1618 = and i8 %1617, 1
  store i8 %1618, i8* %26, align 1
  %1619 = icmp eq i32 %1603, 0
  %1620 = zext i1 %1619 to i8
  store i8 %1620, i8* %29, align 1
  %1621 = lshr i32 %1603, 31
  %1622 = trunc i32 %1621 to i8
  store i8 %1622, i8* %32, align 1
  %1623 = lshr i32 %1597, 31
  %1624 = lshr i32 %1602, 31
  %1625 = xor i32 %1621, %1623
  %1626 = xor i32 %1621, %1624
  %1627 = add nuw nsw i32 %1625, %1626
  %1628 = icmp eq i32 %1627, 2
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %38, align 1
  %1630 = add i64 %1592, -80
  %1631 = add i64 %1594, 9
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i32*
  store i32 %1603, i32* %1632, align 4
  %1633 = load i64, i64* %RBP.i, align 8
  %1634 = add i64 %1633, -152
  %1635 = load i64, i64* %3, align 8
  %1636 = add i64 %1635, 8
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1634 to double*
  %1638 = load double, double* %1637, align 8
  store double %1638, double* %194, align 1
  store double 0.000000e+00, double* %196, align 1
  %1639 = add i64 %1633, -8
  %1640 = add i64 %1635, 12
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i64*
  %1642 = load i64, i64* %1641, align 8
  store i64 %1642, i64* %RCX.i791, align 8
  %1643 = add i64 %1633, -80
  %1644 = add i64 %1635, 16
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1643 to i32*
  %1646 = load i32, i32* %1645, align 4
  %1647 = sext i32 %1646 to i64
  store i64 %1647, i64* %RDX.i789, align 8
  %1648 = shl nsw i64 %1647, 3
  %1649 = add i64 %1648, %1642
  %1650 = add i64 %1635, 21
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to double*
  %1652 = load double, double* %1651, align 8
  %1653 = fmul double %1638, %1652
  store double %1653, double* %194, align 1
  store i64 0, i64* %195, align 1
  %1654 = add i64 %1633, -128
  %1655 = add i64 %1635, 26
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to double*
  %1657 = load double, double* %1656, align 8
  store double %1657, double* %204, align 1
  store double 0.000000e+00, double* %206, align 1
  %1658 = add i64 %1635, 30
  store i64 %1658, i64* %3, align 8
  %1659 = load i64, i64* %1641, align 8
  store i64 %1659, i64* %RCX.i791, align 8
  %1660 = add i64 %1635, 33
  store i64 %1660, i64* %3, align 8
  %1661 = load i32, i32* %1645, align 4
  %1662 = add i32 %1661, 1
  %1663 = zext i32 %1662 to i64
  store i64 %1663, i64* %RAX.i801, align 8
  %1664 = icmp eq i32 %1661, -1
  %1665 = icmp eq i32 %1662, 0
  %1666 = or i1 %1664, %1665
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %14, align 1
  %1668 = and i32 %1662, 255
  %1669 = tail call i32 @llvm.ctpop.i32(i32 %1668)
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  %1672 = xor i8 %1671, 1
  store i8 %1672, i8* %21, align 1
  %1673 = xor i32 %1661, %1662
  %1674 = lshr i32 %1673, 4
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  store i8 %1676, i8* %26, align 1
  %1677 = zext i1 %1665 to i8
  store i8 %1677, i8* %29, align 1
  %1678 = lshr i32 %1662, 31
  %1679 = trunc i32 %1678 to i8
  store i8 %1679, i8* %32, align 1
  %1680 = lshr i32 %1661, 31
  %1681 = xor i32 %1678, %1680
  %1682 = add nuw nsw i32 %1681, %1678
  %1683 = icmp eq i32 %1682, 2
  %1684 = zext i1 %1683 to i8
  store i8 %1684, i8* %38, align 1
  %1685 = sext i32 %1662 to i64
  store i64 %1685, i64* %RDX.i789, align 8
  %1686 = shl nsw i64 %1685, 3
  %1687 = add i64 %1686, %1659
  %1688 = add i64 %1635, 44
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1687 to double*
  %1690 = load double, double* %1689, align 8
  %1691 = fmul double %1657, %1690
  store double %1691, double* %204, align 1
  store i64 0, i64* %205, align 1
  %1692 = fsub double %1653, %1691
  store double %1692, double* %194, align 1
  store i64 0, i64* %195, align 1
  %1693 = load i64, i64* %RBP.i, align 8
  %1694 = add i64 %1693, -112
  %1695 = add i64 %1635, 53
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1694 to double*
  store double %1692, double* %1696, align 8
  %1697 = load i64, i64* %RBP.i, align 8
  %1698 = add i64 %1697, -152
  %1699 = load i64, i64* %3, align 8
  %1700 = add i64 %1699, 8
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1698 to double*
  %1702 = load double, double* %1701, align 8
  store double %1702, double* %194, align 1
  store double 0.000000e+00, double* %196, align 1
  %1703 = add i64 %1697, -8
  %1704 = add i64 %1699, 12
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i64*
  %1706 = load i64, i64* %1705, align 8
  store i64 %1706, i64* %RCX.i791, align 8
  %1707 = add i64 %1697, -80
  %1708 = add i64 %1699, 15
  store i64 %1708, i64* %3, align 8
  %1709 = inttoptr i64 %1707 to i32*
  %1710 = load i32, i32* %1709, align 4
  %1711 = add i32 %1710, 1
  %1712 = zext i32 %1711 to i64
  store i64 %1712, i64* %RAX.i801, align 8
  %1713 = icmp eq i32 %1710, -1
  %1714 = icmp eq i32 %1711, 0
  %1715 = or i1 %1713, %1714
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %14, align 1
  %1717 = and i32 %1711, 255
  %1718 = tail call i32 @llvm.ctpop.i32(i32 %1717)
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  %1721 = xor i8 %1720, 1
  store i8 %1721, i8* %21, align 1
  %1722 = xor i32 %1710, %1711
  %1723 = lshr i32 %1722, 4
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  store i8 %1725, i8* %26, align 1
  %1726 = zext i1 %1714 to i8
  store i8 %1726, i8* %29, align 1
  %1727 = lshr i32 %1711, 31
  %1728 = trunc i32 %1727 to i8
  store i8 %1728, i8* %32, align 1
  %1729 = lshr i32 %1710, 31
  %1730 = xor i32 %1727, %1729
  %1731 = add nuw nsw i32 %1730, %1727
  %1732 = icmp eq i32 %1731, 2
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %38, align 1
  %1734 = sext i32 %1711 to i64
  store i64 %1734, i64* %RDX.i789, align 8
  %1735 = shl nsw i64 %1734, 3
  %1736 = add i64 %1735, %1706
  %1737 = add i64 %1699, 26
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to double*
  %1739 = load double, double* %1738, align 8
  %1740 = fmul double %1702, %1739
  store double %1740, double* %194, align 1
  store i64 0, i64* %195, align 1
  %1741 = add i64 %1697, -128
  %1742 = add i64 %1699, 31
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to double*
  %1744 = load double, double* %1743, align 8
  store double %1744, double* %204, align 1
  store double 0.000000e+00, double* %206, align 1
  %1745 = add i64 %1699, 35
  store i64 %1745, i64* %3, align 8
  %1746 = load i64, i64* %1705, align 8
  store i64 %1746, i64* %RCX.i791, align 8
  %1747 = add i64 %1699, 39
  store i64 %1747, i64* %3, align 8
  %1748 = load i32, i32* %1709, align 4
  %1749 = sext i32 %1748 to i64
  store i64 %1749, i64* %RDX.i789, align 8
  %1750 = shl nsw i64 %1749, 3
  %1751 = add i64 %1750, %1746
  %1752 = add i64 %1699, 44
  store i64 %1752, i64* %3, align 8
  %1753 = inttoptr i64 %1751 to double*
  %1754 = load double, double* %1753, align 8
  %1755 = fmul double %1744, %1754
  store double %1755, double* %204, align 1
  store i64 0, i64* %205, align 1
  %1756 = fadd double %1740, %1755
  store double %1756, double* %194, align 1
  store i64 0, i64* %195, align 1
  %1757 = load i64, i64* %RBP.i, align 8
  %1758 = add i64 %1757, -104
  %1759 = add i64 %1699, 53
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to double*
  store double %1756, double* %1760, align 8
  %1761 = load i64, i64* %RBP.i, align 8
  %1762 = add i64 %1761, -8
  %1763 = load i64, i64* %3, align 8
  %1764 = add i64 %1763, 4
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1762 to i64*
  %1766 = load i64, i64* %1765, align 8
  store i64 %1766, i64* %RCX.i791, align 8
  %1767 = add i64 %1761, -76
  %1768 = add i64 %1763, 8
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i32*
  %1770 = load i32, i32* %1769, align 4
  %1771 = sext i32 %1770 to i64
  store i64 %1771, i64* %RDX.i789, align 8
  %1772 = shl nsw i64 %1771, 3
  %1773 = add i64 %1772, %1766
  %1774 = add i64 %1763, 13
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to double*
  %1776 = load double, double* %1775, align 8
  store double %1776, double* %194, align 1
  store double 0.000000e+00, double* %196, align 1
  %1777 = add i64 %1761, -112
  %1778 = add i64 %1763, 18
  store i64 %1778, i64* %3, align 8
  %1779 = inttoptr i64 %1777 to double*
  %1780 = load double, double* %1779, align 8
  %1781 = fsub double %1776, %1780
  store double %1781, double* %194, align 1
  store i64 0, i64* %195, align 1
  %1782 = add i64 %1763, 22
  store i64 %1782, i64* %3, align 8
  %1783 = load i64, i64* %1765, align 8
  store i64 %1783, i64* %RCX.i791, align 8
  %1784 = add i64 %1761, -80
  %1785 = add i64 %1763, 26
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i32*
  %1787 = load i32, i32* %1786, align 4
  %1788 = sext i32 %1787 to i64
  store i64 %1788, i64* %RDX.i789, align 8
  %1789 = shl nsw i64 %1788, 3
  %1790 = add i64 %1789, %1783
  %1791 = add i64 %1763, 31
  store i64 %1791, i64* %3, align 8
  %1792 = inttoptr i64 %1790 to double*
  store double %1781, double* %1792, align 8
  %1793 = load i64, i64* %RBP.i, align 8
  %1794 = add i64 %1793, -8
  %1795 = load i64, i64* %3, align 8
  %1796 = add i64 %1795, 4
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1794 to i64*
  %1798 = load i64, i64* %1797, align 8
  store i64 %1798, i64* %RCX.i791, align 8
  %1799 = add i64 %1793, -76
  %1800 = add i64 %1795, 7
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i32*
  %1802 = load i32, i32* %1801, align 4
  %1803 = add i32 %1802, 1
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RAX.i801, align 8
  %1805 = icmp eq i32 %1802, -1
  %1806 = icmp eq i32 %1803, 0
  %1807 = or i1 %1805, %1806
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %14, align 1
  %1809 = and i32 %1803, 255
  %1810 = tail call i32 @llvm.ctpop.i32(i32 %1809)
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = xor i8 %1812, 1
  store i8 %1813, i8* %21, align 1
  %1814 = xor i32 %1802, %1803
  %1815 = lshr i32 %1814, 4
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  store i8 %1817, i8* %26, align 1
  %1818 = zext i1 %1806 to i8
  store i8 %1818, i8* %29, align 1
  %1819 = lshr i32 %1803, 31
  %1820 = trunc i32 %1819 to i8
  store i8 %1820, i8* %32, align 1
  %1821 = lshr i32 %1802, 31
  %1822 = xor i32 %1819, %1821
  %1823 = add nuw nsw i32 %1822, %1819
  %1824 = icmp eq i32 %1823, 2
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %38, align 1
  %1826 = sext i32 %1803 to i64
  store i64 %1826, i64* %RDX.i789, align 8
  %1827 = shl nsw i64 %1826, 3
  %1828 = add i64 %1827, %1798
  %1829 = add i64 %1795, 18
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to double*
  %1831 = load double, double* %1830, align 8
  store double %1831, double* %194, align 1
  store double 0.000000e+00, double* %196, align 1
  %1832 = add i64 %1793, -104
  %1833 = add i64 %1795, 23
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to double*
  %1835 = load double, double* %1834, align 8
  %1836 = fsub double %1831, %1835
  store double %1836, double* %194, align 1
  store i64 0, i64* %195, align 1
  %1837 = add i64 %1795, 27
  store i64 %1837, i64* %3, align 8
  %1838 = load i64, i64* %1797, align 8
  store i64 %1838, i64* %RCX.i791, align 8
  %1839 = add i64 %1793, -80
  %1840 = add i64 %1795, 30
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i32*
  %1842 = load i32, i32* %1841, align 4
  %1843 = add i32 %1842, 1
  %1844 = zext i32 %1843 to i64
  store i64 %1844, i64* %RAX.i801, align 8
  %1845 = icmp eq i32 %1842, -1
  %1846 = icmp eq i32 %1843, 0
  %1847 = or i1 %1845, %1846
  %1848 = zext i1 %1847 to i8
  store i8 %1848, i8* %14, align 1
  %1849 = and i32 %1843, 255
  %1850 = tail call i32 @llvm.ctpop.i32(i32 %1849)
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  %1853 = xor i8 %1852, 1
  store i8 %1853, i8* %21, align 1
  %1854 = xor i32 %1842, %1843
  %1855 = lshr i32 %1854, 4
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  store i8 %1857, i8* %26, align 1
  %1858 = zext i1 %1846 to i8
  store i8 %1858, i8* %29, align 1
  %1859 = lshr i32 %1843, 31
  %1860 = trunc i32 %1859 to i8
  store i8 %1860, i8* %32, align 1
  %1861 = lshr i32 %1842, 31
  %1862 = xor i32 %1859, %1861
  %1863 = add nuw nsw i32 %1862, %1859
  %1864 = icmp eq i32 %1863, 2
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %38, align 1
  %1866 = sext i32 %1843 to i64
  store i64 %1866, i64* %RDX.i789, align 8
  %1867 = shl nsw i64 %1866, 3
  %1868 = add i64 %1867, %1838
  %1869 = add i64 %1795, 41
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to double*
  store double %1836, double* %1870, align 8
  %1871 = load i64, i64* %RBP.i, align 8
  %1872 = add i64 %1871, -112
  %1873 = load i64, i64* %3, align 8
  %1874 = add i64 %1873, 5
  store i64 %1874, i64* %3, align 8
  %1875 = inttoptr i64 %1872 to double*
  %1876 = load double, double* %1875, align 8
  store double %1876, double* %194, align 1
  store double 0.000000e+00, double* %196, align 1
  %1877 = add i64 %1871, -8
  %1878 = add i64 %1873, 9
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i64*
  %1880 = load i64, i64* %1879, align 8
  store i64 %1880, i64* %RCX.i791, align 8
  %1881 = add i64 %1871, -76
  %1882 = add i64 %1873, 13
  store i64 %1882, i64* %3, align 8
  %1883 = inttoptr i64 %1881 to i32*
  %1884 = load i32, i32* %1883, align 4
  %1885 = sext i32 %1884 to i64
  store i64 %1885, i64* %RDX.i789, align 8
  %1886 = shl nsw i64 %1885, 3
  %1887 = add i64 %1886, %1880
  %1888 = add i64 %1873, 18
  store i64 %1888, i64* %3, align 8
  %1889 = inttoptr i64 %1887 to double*
  %1890 = load double, double* %1889, align 8
  %1891 = fadd double %1876, %1890
  store double %1891, double* %194, align 1
  store i64 0, i64* %195, align 1
  %1892 = add i64 %1873, 23
  store i64 %1892, i64* %3, align 8
  store double %1891, double* %1889, align 8
  %1893 = load i64, i64* %RBP.i, align 8
  %1894 = add i64 %1893, -104
  %1895 = load i64, i64* %3, align 8
  %1896 = add i64 %1895, 5
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1894 to double*
  %1898 = load double, double* %1897, align 8
  store double %1898, double* %194, align 1
  store double 0.000000e+00, double* %196, align 1
  %1899 = add i64 %1893, -8
  %1900 = add i64 %1895, 9
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i64*
  %1902 = load i64, i64* %1901, align 8
  store i64 %1902, i64* %RCX.i791, align 8
  %1903 = add i64 %1893, -76
  %1904 = add i64 %1895, 12
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1903 to i32*
  %1906 = load i32, i32* %1905, align 4
  %1907 = add i32 %1906, 1
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RAX.i801, align 8
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
  %1918 = xor i32 %1906, %1907
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %26, align 1
  %1922 = zext i1 %1910 to i8
  store i8 %1922, i8* %29, align 1
  %1923 = lshr i32 %1907, 31
  %1924 = trunc i32 %1923 to i8
  store i8 %1924, i8* %32, align 1
  %1925 = lshr i32 %1906, 31
  %1926 = xor i32 %1923, %1925
  %1927 = add nuw nsw i32 %1926, %1923
  %1928 = icmp eq i32 %1927, 2
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %38, align 1
  %1930 = sext i32 %1907 to i64
  store i64 %1930, i64* %RDX.i789, align 8
  %1931 = shl nsw i64 %1930, 3
  %1932 = add i64 %1931, %1902
  %1933 = add i64 %1895, 23
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to double*
  %1935 = load double, double* %1934, align 8
  %1936 = fadd double %1898, %1935
  store double %1936, double* %194, align 1
  store i64 0, i64* %195, align 1
  %1937 = add i64 %1895, 28
  store i64 %1937, i64* %3, align 8
  store double %1936, double* %1934, align 8
  %1938 = load i64, i64* %RBP.i, align 8
  %1939 = add i64 %1938, -64
  %1940 = load i64, i64* %3, align 8
  %1941 = add i64 %1940, 3
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1939 to i32*
  %1943 = load i32, i32* %1942, align 4
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RAX.i801, align 8
  %1945 = add i64 %1938, -32
  %1946 = add i64 %1940, 6
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = add i32 %1948, %1943
  %1950 = zext i32 %1949 to i64
  store i64 %1950, i64* %RAX.i801, align 8
  %1951 = icmp ult i32 %1949, %1943
  %1952 = icmp ult i32 %1949, %1948
  %1953 = or i1 %1951, %1952
  %1954 = zext i1 %1953 to i8
  store i8 %1954, i8* %14, align 1
  %1955 = and i32 %1949, 255
  %1956 = tail call i32 @llvm.ctpop.i32(i32 %1955)
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  %1959 = xor i8 %1958, 1
  store i8 %1959, i8* %21, align 1
  %1960 = xor i32 %1948, %1943
  %1961 = xor i32 %1960, %1949
  %1962 = lshr i32 %1961, 4
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  store i8 %1964, i8* %26, align 1
  %1965 = icmp eq i32 %1949, 0
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %29, align 1
  %1967 = lshr i32 %1949, 31
  %1968 = trunc i32 %1967 to i8
  store i8 %1968, i8* %32, align 1
  %1969 = lshr i32 %1943, 31
  %1970 = lshr i32 %1948, 31
  %1971 = xor i32 %1967, %1969
  %1972 = xor i32 %1967, %1970
  %1973 = add nuw nsw i32 %1971, %1972
  %1974 = icmp eq i32 %1973, 2
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %38, align 1
  %1976 = add i64 %1940, 9
  store i64 %1976, i64* %3, align 8
  store i32 %1949, i32* %1947, align 4
  %1977 = load i64, i64* %3, align 8
  %1978 = add i64 %1977, -265
  store i64 %1978, i64* %3, align 8
  br label %block_.L_400e72

block_.L_400f80:                                  ; preds = %block_.L_400e72
  %1979 = add i64 %1549, -28
  %1980 = add i64 %1585, 8
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i32*
  %1982 = load i32, i32* %1981, align 4
  %1983 = add i32 %1982, 2
  %1984 = zext i32 %1983 to i64
  store i64 %1984, i64* %RAX.i801, align 8
  %1985 = icmp ugt i32 %1982, -3
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %14, align 1
  %1987 = and i32 %1983, 255
  %1988 = tail call i32 @llvm.ctpop.i32(i32 %1987)
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = xor i8 %1990, 1
  store i8 %1991, i8* %21, align 1
  %1992 = xor i32 %1982, %1983
  %1993 = lshr i32 %1992, 4
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  store i8 %1995, i8* %26, align 1
  %1996 = icmp eq i32 %1983, 0
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %29, align 1
  %1998 = lshr i32 %1983, 31
  %1999 = trunc i32 %1998 to i8
  store i8 %1999, i8* %32, align 1
  %2000 = lshr i32 %1982, 31
  %2001 = xor i32 %1998, %2000
  %2002 = add nuw nsw i32 %2001, %1998
  %2003 = icmp eq i32 %2002, 2
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %38, align 1
  %2005 = add i64 %1585, 14
  store i64 %2005, i64* %3, align 8
  store i32 %1983, i32* %1981, align 4
  %2006 = load i64, i64* %3, align 8
  %2007 = add i64 %2006, -310
  store i64 %2007, i64* %3, align 8
  br label %block_.L_400e58

block_.L_400f93:                                  ; preds = %block_.L_400e58
  %2008 = add i64 %1539, -152
  %2009 = add i64 %1538, 8
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to i64*
  %2011 = load i64, i64* %2010, align 8
  store i64 %2011, i64* %1359, align 1
  store double 0.000000e+00, double* %196, align 1
  %2012 = add i64 %1539, -160
  %2013 = add i64 %1538, 16
  store i64 %2013, i64* %3, align 8
  %2014 = inttoptr i64 %2012 to i64*
  store i64 %2011, i64* %2014, align 8
  %2015 = load i64, i64* %RBP.i, align 8
  %2016 = add i64 %2015, -144
  %2017 = load i64, i64* %3, align 8
  %2018 = add i64 %2017, 8
  store i64 %2018, i64* %3, align 8
  %2019 = load double, double* %194, align 1
  %2020 = inttoptr i64 %2016 to double*
  %2021 = load double, double* %2020, align 8
  %2022 = fmul double %2019, %2021
  store double %2022, double* %194, align 1
  %2023 = add i64 %2015, -128
  %2024 = add i64 %2017, 13
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to double*
  %2026 = load double, double* %2025, align 8
  store double %2026, double* %204, align 1
  store double 0.000000e+00, double* %206, align 1
  %2027 = add i64 %2015, -136
  %2028 = add i64 %2017, 21
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2027 to double*
  %2030 = load double, double* %2029, align 8
  %2031 = fmul double %2026, %2030
  store double %2031, double* %204, align 1
  store i64 0, i64* %205, align 1
  %2032 = fsub double %2022, %2031
  store double %2032, double* %194, align 1
  %2033 = add i64 %2015, -152
  %2034 = add i64 %2017, 33
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to double*
  %2036 = load double, double* %2035, align 8
  %2037 = fadd double %2032, %2036
  store double %2037, double* %194, align 1
  %2038 = add i64 %2017, 41
  store i64 %2038, i64* %3, align 8
  store double %2037, double* %2035, align 8
  %2039 = load i64, i64* %RBP.i, align 8
  %2040 = add i64 %2039, -128
  %2041 = load i64, i64* %3, align 8
  %2042 = add i64 %2041, 5
  store i64 %2042, i64* %3, align 8
  %2043 = inttoptr i64 %2040 to double*
  %2044 = load double, double* %2043, align 8
  store double %2044, double* %194, align 1
  store double 0.000000e+00, double* %196, align 1
  %2045 = add i64 %2039, -144
  %2046 = add i64 %2041, 13
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to double*
  %2048 = load double, double* %2047, align 8
  %2049 = fmul double %2044, %2048
  store double %2049, double* %194, align 1
  store i64 0, i64* %195, align 1
  %2050 = add i64 %2039, -160
  %2051 = add i64 %2041, 21
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to double*
  %2053 = load double, double* %2052, align 8
  store double %2053, double* %204, align 1
  store double 0.000000e+00, double* %206, align 1
  %2054 = add i64 %2039, -136
  %2055 = add i64 %2041, 29
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2054 to double*
  %2057 = load double, double* %2056, align 8
  %2058 = fmul double %2053, %2057
  store double %2058, double* %204, align 1
  store i64 0, i64* %205, align 1
  %2059 = fadd double %2049, %2058
  store double %2059, double* %194, align 1
  store i64 0, i64* %195, align 1
  %2060 = add i64 %2041, 38
  store i64 %2060, i64* %3, align 8
  %2061 = load double, double* %2043, align 8
  %2062 = fadd double %2059, %2061
  store double %2062, double* %194, align 1
  store i64 0, i64* %195, align 1
  %2063 = add i64 %2041, 43
  store i64 %2063, i64* %3, align 8
  store double %2062, double* %2043, align 8
  %2064 = load i64, i64* %RBP.i, align 8
  %2065 = add i64 %2064, -48
  %2066 = load i64, i64* %3, align 8
  %2067 = add i64 %2066, 3
  store i64 %2067, i64* %3, align 8
  %2068 = inttoptr i64 %2065 to i32*
  %2069 = load i32, i32* %2068, align 4
  %2070 = zext i32 %2069 to i64
  store i64 %2070, i64* %RAX.i801, align 8
  %2071 = add i64 %2064, -36
  %2072 = add i64 %2066, 6
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = add i32 %2074, %2069
  %2076 = zext i32 %2075 to i64
  store i64 %2076, i64* %RAX.i801, align 8
  %2077 = icmp ult i32 %2075, %2069
  %2078 = icmp ult i32 %2075, %2074
  %2079 = or i1 %2077, %2078
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %14, align 1
  %2081 = and i32 %2075, 255
  %2082 = tail call i32 @llvm.ctpop.i32(i32 %2081)
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  %2085 = xor i8 %2084, 1
  store i8 %2085, i8* %21, align 1
  %2086 = xor i32 %2074, %2069
  %2087 = xor i32 %2086, %2075
  %2088 = lshr i32 %2087, 4
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  store i8 %2090, i8* %26, align 1
  %2091 = icmp eq i32 %2075, 0
  %2092 = zext i1 %2091 to i8
  store i8 %2092, i8* %29, align 1
  %2093 = lshr i32 %2075, 31
  %2094 = trunc i32 %2093 to i8
  store i8 %2094, i8* %32, align 1
  %2095 = lshr i32 %2069, 31
  %2096 = lshr i32 %2074, 31
  %2097 = xor i32 %2093, %2095
  %2098 = xor i32 %2093, %2096
  %2099 = add nuw nsw i32 %2097, %2098
  %2100 = icmp eq i32 %2099, 2
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %38, align 1
  %2102 = add i64 %2066, 9
  store i64 %2102, i64* %3, align 8
  store i32 %2075, i32* %2073, align 4
  %2103 = load i64, i64* %3, align 8
  %2104 = add i64 %2103, -442
  store i64 %2104, i64* %3, align 8
  br label %block_.L_400e46

block_.L_401005:                                  ; preds = %block_.L_400e46
  %2105 = add i64 %1450, -64
  %2106 = add i64 %1486, 3
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i32*
  %2108 = load i32, i32* %2107, align 4
  %2109 = zext i32 %2108 to i64
  store i64 %2109, i64* %RAX.i801, align 8
  %2110 = add i64 %1486, 6
  store i64 %2110, i64* %3, align 8
  store i32 %2108, i32* %1458, align 4
  %2111 = load i64, i64* %3, align 8
  %2112 = add i64 %2111, -671
  store i64 %2112, i64* %3, align 8
  br label %block_.L_400d6c

block_.L_401010:                                  ; preds = %block_.L_400d6c
  %2113 = add i64 %1235, -84
  %2114 = add i64 %1271, 3
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2113 to i32*
  %2116 = load i32, i32* %2115, align 4
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %RAX.i801, align 8
  %2118 = add i64 %1235, -88
  %2119 = add i64 %1271, 7
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = sext i32 %2116 to i64
  %2123 = sext i32 %2121 to i64
  %2124 = mul nsw i64 %2123, %2122
  %2125 = trunc i64 %2124 to i32
  %2126 = and i64 %2124, 4294967295
  store i64 %2126, i64* %RAX.i801, align 8
  %2127 = shl i64 %2124, 32
  %2128 = ashr exact i64 %2127, 32
  %2129 = icmp ne i64 %2128, %2124
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %14, align 1
  %2131 = and i32 %2125, 255
  %2132 = tail call i32 @llvm.ctpop.i32(i32 %2131)
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  %2135 = xor i8 %2134, 1
  store i8 %2135, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2136 = lshr i32 %2125, 31
  %2137 = trunc i32 %2136 to i8
  store i8 %2137, i8* %32, align 1
  store i8 %2130, i8* %38, align 1
  %2138 = add i64 %1271, 10
  store i64 %2138, i64* %3, align 8
  store i32 %2125, i32* %2120, align 4
  %2139 = load i64, i64* %RBP.i, align 8
  %2140 = add i64 %2139, -72
  %2141 = load i64, i64* %3, align 8
  %2142 = add i64 %2141, 3
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2140 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = add i32 %2144, -1
  %2146 = zext i32 %2145 to i64
  store i64 %2146, i64* %RAX.i801, align 8
  %2147 = icmp ne i32 %2144, 0
  %2148 = zext i1 %2147 to i8
  store i8 %2148, i8* %14, align 1
  %2149 = and i32 %2145, 255
  %2150 = tail call i32 @llvm.ctpop.i32(i32 %2149)
  %2151 = trunc i32 %2150 to i8
  %2152 = and i8 %2151, 1
  %2153 = xor i8 %2152, 1
  store i8 %2153, i8* %21, align 1
  %2154 = xor i32 %2144, 16
  %2155 = xor i32 %2145, %2154
  %2156 = lshr i32 %2155, 4
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  store i8 %2158, i8* %26, align 1
  %2159 = icmp eq i32 %2145, 0
  %2160 = zext i1 %2159 to i8
  store i8 %2160, i8* %29, align 1
  %2161 = lshr i32 %2145, 31
  %2162 = trunc i32 %2161 to i8
  store i8 %2162, i8* %32, align 1
  %2163 = lshr i32 %2144, 31
  %2164 = xor i32 %2161, %2163
  %2165 = xor i32 %2161, 1
  %2166 = add nuw nsw i32 %2164, %2165
  %2167 = icmp eq i32 %2166, 2
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %38, align 1
  %2169 = add i64 %2141, 9
  store i64 %2169, i64* %3, align 8
  store i32 %2145, i32* %2143, align 4
  %2170 = load i64, i64* %3, align 8
  %2171 = add i64 %2170, -1171
  store i64 %2171, i64* %3, align 8
  br label %block_.L_400b90

block_.L_401028:                                  ; preds = %block_.L_400b90
  %2172 = load i64, i64* %6, align 8
  %2173 = add i64 %2172, 192
  store i64 %2173, i64* %6, align 8
  %2174 = icmp ugt i64 %2172, -193
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %14, align 1
  %2176 = trunc i64 %2173 to i32
  %2177 = and i32 %2176, 255
  %2178 = tail call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  store i8 %2181, i8* %21, align 1
  %2182 = xor i64 %2172, %2173
  %2183 = lshr i64 %2182, 4
  %2184 = trunc i64 %2183 to i8
  %2185 = and i8 %2184, 1
  store i8 %2185, i8* %26, align 1
  %2186 = icmp eq i64 %2173, 0
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %29, align 1
  %2188 = lshr i64 %2173, 63
  %2189 = trunc i64 %2188 to i8
  store i8 %2189, i8* %32, align 1
  %2190 = lshr i64 %2172, 63
  %2191 = xor i64 %2188, %2190
  %2192 = add nuw nsw i64 %2191, %2188
  %2193 = icmp eq i64 %2192, 2
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %38, align 1
  %2195 = add i64 %252, 8
  store i64 %2195, i64* %3, align 8
  %2196 = add i64 %2172, 200
  %2197 = inttoptr i64 %2173 to i64*
  %2198 = load i64, i64* %2197, align 8
  store i64 %2198, i64* %RBP.i, align 8
  store i64 %2196, i64* %6, align 8
  %2199 = add i64 %252, 9
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2196 to i64*
  %2201 = load i64, i64* %2200, align 8
  store i64 %2201, i64* %3, align 8
  %2202 = add i64 %2172, 208
  store i64 %2202, i64* %6, align 8
  ret %struct.Memory* %MEMORY.1
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 192
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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

define %struct.Memory* @routine_jg_.L_400b83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imull_MINUS0x60__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %20 = xor i32 %6, %7
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

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400b57(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
  %19 = xor i32 %8, %9
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

define %struct.Memory* @routine_jl_.L_401028(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %12 = add i64 %3, %.v
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imull_MINUS0x58__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RDX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

; <label>:22:                                     ; preds = %block_400478
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:24:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
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

define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imull_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imull_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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

define %struct.Memory* @routine_jg_.L_400d66(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_400cf5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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

define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 2
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_400cf0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_400cdd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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

define %struct.Memory* @routine_subl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400c27(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400ce2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
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
  %18 = xor i32 %6, %7
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

define %struct.Memory* @routine_jmpq_.L_400c0d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400cf5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_xorl__eax___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movb__al___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
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

define %struct.Memory* @routine_movb__cl__MINUS0xa5__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -165
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_400d23(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %12 = add i64 %3, %.v
  store i64 %12, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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

define %struct.Memory* @routine_setg__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0xa5__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -165
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
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

define %struct.Memory* @routine_jne_.L_400d36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d4f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400cfe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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

define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400bef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jge_.L_401010(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %13 = add i64 %3, %.v
  store i64 %13, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x365__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x365__rip__4197763__type* @G_0x365__rip__4197763_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x365__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x365__rip__4197771__type* @G_0x365__rip__4197771_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x365__rip____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x365__rip__4197779__type* @G_0x365__rip__4197779_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x365__rip____xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x365__rip__4197787__type* @G_0x365__rip__4197787_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd__xmm4___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_idivl_MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %8 = bitcast %union.anon* %7 to i32*
  %9 = load i32, i32* %8, align 8
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %12 = bitcast %union.anon* %11 to i32*
  %13 = load i32, i32* %12, align 8
  %14 = zext i32 %13 to i64
  %15 = inttoptr i64 %4 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = shl nuw i64 %14, 32
  %19 = or i64 %18, %10
  %20 = sdiv i64 %19, %17
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %26, label %24

; <label>:24:                                     ; preds = %block_400478
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:26:                                     ; preds = %block_400478
  %27 = srem i64 %19, %17
  %28 = getelementptr inbounds %union.anon, %union.anon* %7, i64 0, i32 0
  %29 = and i64 %20, 4294967295
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %31 = and i64 %27, 4294967295
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %26, %24
  %38 = phi %struct.Memory* [ %25, %24 ], [ %2, %26 ]
  ret %struct.Memory* %38
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm4___xmm5(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm5__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x78__rbp____xmm3(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm3___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm2__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_401005(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jg_.L_400f93(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_400f80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %17 = add i64 %3, %.v
  store i64 %17, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_mulsd___rcx__rdx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fmul double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rcx__rdx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e72(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e58(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x88__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x98__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e46(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400d6c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_imull_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %19 = xor i32 %7, %18
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

define %struct.Memory* @routine_jmpq_.L_400b90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -193
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
