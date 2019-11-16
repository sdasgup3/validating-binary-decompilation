; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x27951__rip__type = type <{ [4 x i8] }>
%G__0x45882f_type = type <{ [8 x i8] }>
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
@G_0x27951__rip_ = global %G_0x27951__rip__type zeroinitializer
@G__0x45882f = global %G__0x45882f_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @MSAExpand(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %RAX.i900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RAX.i900, align 8
  %RSI.i898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 162, i64* %RSI.i898, align 8
  %RDI.i895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i895, align 8
  %41 = add i64 %10, 26
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -8
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i64*
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %RDI.i895, align 8
  %RCX.i889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %49 = add i64 %48, 324
  %50 = add i64 %45, 10
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i32*
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  store i64 %53, i64* %RCX.i889, align 8
  %54 = add i64 %45, 14
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %47, align 8
  store i64 %55, i64* %RDI.i895, align 8
  %56 = add i64 %55, 320
  %57 = add i64 %45, 20
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, %52
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %RCX.i889, align 8
  %62 = icmp ult i32 %60, %52
  %63 = icmp ult i32 %60, %59
  %64 = or i1 %62, %63
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %14, align 1
  %66 = and i32 %60, 255
  %67 = tail call i32 @llvm.ctpop.i32(i32 %66)
  %68 = trunc i32 %67 to i8
  %69 = and i8 %68, 1
  %70 = xor i8 %69, 1
  store i8 %70, i8* %21, align 1
  %71 = xor i32 %59, %52
  %72 = xor i32 %71, %60
  %73 = lshr i32 %72, 4
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  store i8 %75, i8* %26, align 1
  %76 = icmp eq i32 %60, 0
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %29, align 1
  %78 = lshr i32 %60, 31
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %32, align 1
  %80 = lshr i32 %52, 31
  %81 = lshr i32 %59, 31
  %82 = xor i32 %78, %80
  %83 = xor i32 %78, %81
  %84 = add nuw nsw i32 %82, %83
  %85 = icmp eq i32 %84, 2
  %86 = zext i1 %85 to i8
  store i8 %86, i8* %38, align 1
  %87 = add i64 %45, 26
  store i64 %87, i64* %3, align 8
  store i32 %60, i32* %58, align 4
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -8
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, 4
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %89 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RDI.i895, align 8
  %94 = add i64 %90, 7
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %RDI.i895, align 8
  %RDX.i872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %97 = add i64 %90, 11
  store i64 %97, i64* %3, align 8
  %98 = load i64, i64* %92, align 8
  store i64 %98, i64* %RDX.i872, align 8
  %99 = add i64 %98, 320
  %100 = add i64 %90, 18
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 3
  store i64 %104, i64* %RDX.i872, align 8
  %.lobit = lshr i32 %102, 31
  %105 = trunc i32 %.lobit to i8
  store i8 %105, i8* %14, align 1
  %106 = trunc i64 %104 to i32
  %107 = and i32 %106, 248
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107)
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %112 = icmp eq i32 %102, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %29, align 1
  %114 = lshr i64 %103, 60
  %115 = trunc i64 %114 to i8
  %116 = and i8 %115, 1
  store i8 %116, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %117 = add i64 %88, -24
  %118 = add i64 %90, 26
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i64*
  store i64 %96, i64* %119, align 8
  %120 = load i64, i64* %RAX.i900, align 8
  %121 = load i64, i64* %3, align 8
  store i64 %120, i64* %RDI.i895, align 8
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -24
  %124 = add i64 %121, 7
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %123 to i64*
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %RAX.i900, align 8
  %127 = add i64 %122, -32
  %128 = load i64, i64* %RDX.i872, align 8
  %129 = add i64 %121, 11
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %127 to i64*
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %RAX.i900, align 8
  %132 = load i64, i64* %3, align 8
  store i64 %131, i64* %RDX.i872, align 8
  %133 = load i64, i64* %RBP.i, align 8
  %134 = add i64 %133, -32
  %135 = add i64 %132, 7
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i64*
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %RCX.i889, align 8
  %138 = add i64 %132, 103766
  %139 = add i64 %132, 12
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %6, align 8
  store i64 %138, i64* %3, align 8
  %call2_42cb61 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %138, %struct.Memory* %2)
  %143 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 163, i64* %RSI.i898, align 8
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -8
  %146 = add i64 %143, 19
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %RCX.i889, align 8
  %149 = load i64, i64* %RAX.i900, align 8
  %150 = add i64 %143, 22
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %148 to i64*
  store i64 %149, i64* %151, align 8
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -8
  %154 = load i64, i64* %3, align 8
  %155 = add i64 %154, 4
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %153 to i64*
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %RAX.i900, align 8
  %158 = add i64 %157, 8
  %159 = add i64 %154, 8
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RAX.i900, align 8
  %162 = add i64 %154, 12
  store i64 %162, i64* %3, align 8
  %163 = load i64, i64* %156, align 8
  store i64 %163, i64* %RCX.i889, align 8
  %164 = add i64 %163, 320
  %165 = add i64 %154, 19
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = shl nsw i64 %168, 3
  store i64 %169, i64* %RCX.i889, align 8
  %.lobit20 = lshr i32 %167, 31
  %170 = trunc i32 %.lobit20 to i8
  store i8 %170, i8* %14, align 1
  %171 = trunc i64 %169 to i32
  %172 = and i32 %171, 248
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172)
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %177 = icmp eq i32 %167, 0
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %29, align 1
  %179 = lshr i64 %168, 60
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %161, i64* %RDX.i872, align 8
  %182 = add i64 %154, 103732
  %183 = add i64 %154, 31
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, -8
  %186 = inttoptr i64 %185 to i64*
  store i64 %183, i64* %186, align 8
  store i64 %185, i64* %6, align 8
  store i64 %182, i64* %3, align 8
  %call2_42cb96 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %182, %struct.Memory* %call2_42cb61)
  %187 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 164, i64* %RSI.i898, align 8
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -8
  %190 = add i64 %187, 19
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i64*
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %RCX.i889, align 8
  %193 = add i64 %192, 8
  %194 = load i64, i64* %RAX.i900, align 8
  %195 = add i64 %187, 23
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %193 to i64*
  store i64 %194, i64* %196, align 8
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -8
  %199 = load i64, i64* %3, align 8
  %200 = add i64 %199, 4
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %198 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %RAX.i900, align 8
  %203 = add i64 %202, 328
  %204 = add i64 %199, 11
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i64*
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %RAX.i900, align 8
  %207 = add i64 %199, 15
  store i64 %207, i64* %3, align 8
  %208 = load i64, i64* %201, align 8
  store i64 %208, i64* %RCX.i889, align 8
  %209 = add i64 %208, 320
  %210 = add i64 %199, 22
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i32*
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = shl nsw i64 %213, 3
  store i64 %214, i64* %RCX.i889, align 8
  %.lobit21 = lshr i32 %212, 31
  %215 = trunc i32 %.lobit21 to i8
  store i8 %215, i8* %14, align 1
  %216 = trunc i64 %214 to i32
  %217 = and i32 %216, 248
  %218 = tail call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %222 = icmp eq i32 %212, 0
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %29, align 1
  %224 = lshr i64 %213, 60
  %225 = trunc i64 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %206, i64* %RDX.i872, align 8
  %227 = add i64 %199, 103678
  %228 = add i64 %199, 34
  %229 = load i64, i64* %6, align 8
  %230 = add i64 %229, -8
  %231 = inttoptr i64 %230 to i64*
  store i64 %228, i64* %231, align 8
  store i64 %230, i64* %6, align 8
  store i64 %227, i64* %3, align 8
  %call2_42cbcf = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %227, %struct.Memory* %call2_42cb96)
  %232 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 165, i64* %RSI.i898, align 8
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -8
  %235 = add i64 %232, 19
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RCX.i889, align 8
  %238 = add i64 %237, 328
  %239 = load i64, i64* %RAX.i900, align 8
  %240 = add i64 %232, 26
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %238 to i64*
  store i64 %239, i64* %241, align 8
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -8
  %244 = load i64, i64* %3, align 8
  %245 = add i64 %244, 4
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %243 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RAX.i900, align 8
  %248 = add i64 %247, 16
  %249 = add i64 %244, 8
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i64*
  %251 = load i64, i64* %250, align 8
  store i64 %251, i64* %RAX.i900, align 8
  %252 = add i64 %244, 12
  store i64 %252, i64* %3, align 8
  %253 = load i64, i64* %246, align 8
  store i64 %253, i64* %RCX.i889, align 8
  %254 = add i64 %253, 320
  %255 = add i64 %244, 19
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = shl nsw i64 %258, 2
  store i64 %259, i64* %RCX.i889, align 8
  %.lobit22 = lshr i32 %257, 31
  %260 = trunc i32 %.lobit22 to i8
  store i8 %260, i8* %14, align 1
  %261 = trunc i64 %259 to i32
  %262 = and i32 %261, 252
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %267 = icmp eq i32 %257, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %29, align 1
  %269 = lshr i64 %258, 61
  %270 = trunc i64 %269 to i8
  %271 = and i8 %270, 1
  store i8 %271, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %251, i64* %RDX.i872, align 8
  %272 = add i64 %244, 103618
  %273 = add i64 %244, 31
  %274 = load i64, i64* %6, align 8
  %275 = add i64 %274, -8
  %276 = inttoptr i64 %275 to i64*
  store i64 %273, i64* %276, align 8
  store i64 %275, i64* %6, align 8
  store i64 %272, i64* %3, align 8
  %call2_42cc08 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64 %272, %struct.Memory* %call2_42cbcf)
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -8
  %279 = load i64, i64* %3, align 8
  %280 = add i64 %279, 4
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %278 to i64*
  %282 = load i64, i64* %281, align 8
  store i64 %282, i64* %RCX.i889, align 8
  %283 = add i64 %282, 16
  %284 = load i64, i64* %RAX.i900, align 8
  %285 = add i64 %279, 8
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %283 to i64*
  store i64 %284, i64* %286, align 8
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -8
  %289 = load i64, i64* %3, align 8
  %290 = add i64 %289, 4
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %288 to i64*
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %RAX.i900, align 8
  %293 = add i64 %292, 112
  %294 = add i64 %289, 9
  store i64 %294, i64* %3, align 8
  %295 = inttoptr i64 %293 to i64*
  %296 = load i64, i64* %295, align 8
  store i8 0, i8* %14, align 1
  %297 = trunc i64 %296 to i32
  %298 = and i32 %297, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298)
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %303 = icmp eq i64 %296, 0
  %304 = zext i1 %303 to i8
  store i8 %304, i8* %29, align 1
  %305 = lshr i64 %296, 63
  %306 = trunc i64 %305 to i8
  store i8 %306, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %303, i64 129, i64 15
  %307 = add i64 %289, %.v
  store i64 %307, i64* %3, align 8
  br i1 %303, label %block_.L_42cc96, label %block_42cc24

block_42cc24:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 168, i64* %RSI.i898, align 8
  %308 = add i64 %307, 19
  store i64 %308, i64* %3, align 8
  %309 = load i64, i64* %291, align 8
  store i64 %309, i64* %RAX.i900, align 8
  %310 = add i64 %309, 112
  %311 = add i64 %307, 23
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RAX.i900, align 8
  %314 = add i64 %307, 27
  store i64 %314, i64* %3, align 8
  %315 = load i64, i64* %291, align 8
  store i64 %315, i64* %RCX.i889, align 8
  %316 = add i64 %315, 320
  %317 = add i64 %307, 34
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = shl nsw i64 %320, 3
  store i64 %321, i64* %RCX.i889, align 8
  %.lobit23 = lshr i32 %319, 31
  %322 = trunc i32 %.lobit23 to i8
  store i8 %322, i8* %14, align 1
  %323 = trunc i64 %321 to i32
  %324 = and i32 %323, 248
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324)
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %329 = icmp eq i32 %319, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %29, align 1
  %331 = lshr i64 %320, 60
  %332 = trunc i64 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %313, i64* %RDX.i872, align 8
  %334 = add i64 %307, 103564
  %335 = add i64 %307, 46
  %336 = load i64, i64* %6, align 8
  %337 = add i64 %336, -8
  %338 = inttoptr i64 %337 to i64*
  store i64 %335, i64* %338, align 8
  store i64 %337, i64* %6, align 8
  store i64 %334, i64* %3, align 8
  %call2_42cc4d = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %334, %struct.Memory* %call2_42cc08)
  %339 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 169, i64* %RSI.i898, align 8
  %340 = load i64, i64* %RBP.i, align 8
  %341 = add i64 %340, -8
  %342 = add i64 %339, 19
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %RCX.i889, align 8
  %345 = add i64 %344, 112
  %346 = load i64, i64* %RAX.i900, align 8
  %347 = add i64 %339, 23
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %345 to i64*
  store i64 %346, i64* %348, align 8
  %349 = load i64, i64* %RBP.i, align 8
  %350 = add i64 %349, -8
  %351 = load i64, i64* %3, align 8
  %352 = add i64 %351, 4
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %350 to i64*
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %RAX.i900, align 8
  %355 = add i64 %354, 336
  %356 = add i64 %351, 11
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %RAX.i900, align 8
  %359 = add i64 %351, 15
  store i64 %359, i64* %3, align 8
  %360 = load i64, i64* %353, align 8
  store i64 %360, i64* %RCX.i889, align 8
  %361 = add i64 %360, 320
  %362 = add i64 %351, 22
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = shl nsw i64 %365, 2
  store i64 %366, i64* %RCX.i889, align 8
  %.lobit24 = lshr i32 %364, 31
  %367 = trunc i32 %.lobit24 to i8
  store i8 %367, i8* %14, align 1
  %368 = trunc i64 %366 to i32
  %369 = and i32 %368, 252
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369)
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %374 = icmp eq i32 %364, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %29, align 1
  %376 = lshr i64 %365, 61
  %377 = trunc i64 %376 to i8
  %378 = and i8 %377, 1
  store i8 %378, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %358, i64* %RDX.i872, align 8
  %379 = add i64 %351, 103495
  %380 = add i64 %351, 34
  %381 = load i64, i64* %6, align 8
  %382 = add i64 %381, -8
  %383 = inttoptr i64 %382 to i64*
  store i64 %380, i64* %383, align 8
  store i64 %382, i64* %6, align 8
  store i64 %379, i64* %3, align 8
  %call2_42cc86 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %379, %struct.Memory* %call2_42cc4d)
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -8
  %386 = load i64, i64* %3, align 8
  %387 = add i64 %386, 4
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %385 to i64*
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* %RCX.i889, align 8
  %390 = add i64 %389, 336
  %391 = load i64, i64* %RAX.i900, align 8
  %392 = add i64 %386, 11
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %390 to i64*
  store i64 %391, i64* %393, align 8
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_42cc96

block_.L_42cc96:                                  ; preds = %block_42cc24, %entry
  %394 = phi i64 [ %307, %entry ], [ %.pre40, %block_42cc24 ]
  %395 = phi i64 [ %287, %entry ], [ %.pre, %block_42cc24 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_42cc08, %entry ], [ %call2_42cc86, %block_42cc24 ]
  %396 = add i64 %395, -8
  %397 = add i64 %394, 4
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RAX.i900, align 8
  %400 = add i64 %399, 120
  %401 = add i64 %394, 9
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %400 to i64*
  %403 = load i64, i64* %402, align 8
  store i8 0, i8* %14, align 1
  %404 = trunc i64 %403 to i32
  %405 = and i32 %404, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %410 = icmp eq i64 %403, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %29, align 1
  %412 = lshr i64 %403, 63
  %413 = trunc i64 %412 to i8
  store i8 %413, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v63 = select i1 %410, i64 129, i64 15
  %414 = add i64 %394, %.v63
  store i64 %414, i64* %3, align 8
  br i1 %410, label %block_.L_42cd17, label %block_42cca5

block_42cca5:                                     ; preds = %block_.L_42cc96
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 172, i64* %RSI.i898, align 8
  %415 = add i64 %414, 19
  store i64 %415, i64* %3, align 8
  %416 = load i64, i64* %398, align 8
  store i64 %416, i64* %RAX.i900, align 8
  %417 = add i64 %416, 120
  %418 = add i64 %414, 23
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i64*
  %420 = load i64, i64* %419, align 8
  store i64 %420, i64* %RAX.i900, align 8
  %421 = add i64 %414, 27
  store i64 %421, i64* %3, align 8
  %422 = load i64, i64* %398, align 8
  store i64 %422, i64* %RCX.i889, align 8
  %423 = add i64 %422, 320
  %424 = add i64 %414, 34
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = sext i32 %426 to i64
  %428 = shl nsw i64 %427, 3
  store i64 %428, i64* %RCX.i889, align 8
  %.lobit25 = lshr i32 %426, 31
  %429 = trunc i32 %.lobit25 to i8
  store i8 %429, i8* %14, align 1
  %430 = trunc i64 %428 to i32
  %431 = and i32 %430, 248
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %436 = icmp eq i32 %426, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %29, align 1
  %438 = lshr i64 %427, 60
  %439 = trunc i64 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %420, i64* %RDX.i872, align 8
  %441 = add i64 %414, 103435
  %442 = add i64 %414, 46
  %443 = load i64, i64* %6, align 8
  %444 = add i64 %443, -8
  %445 = inttoptr i64 %444 to i64*
  store i64 %442, i64* %445, align 8
  store i64 %444, i64* %6, align 8
  store i64 %441, i64* %3, align 8
  %call2_42ccce = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %441, %struct.Memory* %MEMORY.0)
  %446 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 173, i64* %RSI.i898, align 8
  %447 = load i64, i64* %RBP.i, align 8
  %448 = add i64 %447, -8
  %449 = add i64 %446, 19
  store i64 %449, i64* %3, align 8
  %450 = inttoptr i64 %448 to i64*
  %451 = load i64, i64* %450, align 8
  store i64 %451, i64* %RCX.i889, align 8
  %452 = add i64 %451, 120
  %453 = load i64, i64* %RAX.i900, align 8
  %454 = add i64 %446, 23
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %452 to i64*
  store i64 %453, i64* %455, align 8
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -8
  %458 = load i64, i64* %3, align 8
  %459 = add i64 %458, 4
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %457 to i64*
  %461 = load i64, i64* %460, align 8
  store i64 %461, i64* %RAX.i900, align 8
  %462 = add i64 %461, 344
  %463 = add i64 %458, 11
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i64*
  %465 = load i64, i64* %464, align 8
  store i64 %465, i64* %RAX.i900, align 8
  %466 = add i64 %458, 15
  store i64 %466, i64* %3, align 8
  %467 = load i64, i64* %460, align 8
  store i64 %467, i64* %RCX.i889, align 8
  %468 = add i64 %467, 320
  %469 = add i64 %458, 22
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = sext i32 %471 to i64
  %473 = shl nsw i64 %472, 2
  store i64 %473, i64* %RCX.i889, align 8
  %.lobit26 = lshr i32 %471, 31
  %474 = trunc i32 %.lobit26 to i8
  store i8 %474, i8* %14, align 1
  %475 = trunc i64 %473 to i32
  %476 = and i32 %475, 252
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %481 = icmp eq i32 %471, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %29, align 1
  %483 = lshr i64 %472, 61
  %484 = trunc i64 %483 to i8
  %485 = and i8 %484, 1
  store i8 %485, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %465, i64* %RDX.i872, align 8
  %486 = add i64 %458, 103366
  %487 = add i64 %458, 34
  %488 = load i64, i64* %6, align 8
  %489 = add i64 %488, -8
  %490 = inttoptr i64 %489 to i64*
  store i64 %487, i64* %490, align 8
  store i64 %489, i64* %6, align 8
  store i64 %486, i64* %3, align 8
  %call2_42cd07 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %486, %struct.Memory* %call2_42ccce)
  %491 = load i64, i64* %RBP.i, align 8
  %492 = add i64 %491, -8
  %493 = load i64, i64* %3, align 8
  %494 = add i64 %493, 4
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %492 to i64*
  %496 = load i64, i64* %495, align 8
  store i64 %496, i64* %RCX.i889, align 8
  %497 = add i64 %496, 344
  %498 = load i64, i64* %RAX.i900, align 8
  %499 = add i64 %493, 11
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %497 to i64*
  store i64 %498, i64* %500, align 8
  %.pre41 = load i64, i64* %RBP.i, align 8
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_42cd17

block_.L_42cd17:                                  ; preds = %block_42cca5, %block_.L_42cc96
  %501 = phi i64 [ %414, %block_.L_42cc96 ], [ %.pre42, %block_42cca5 ]
  %502 = phi i64 [ %395, %block_.L_42cc96 ], [ %.pre41, %block_42cca5 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_42cc96 ], [ %call2_42cd07, %block_42cca5 ]
  %503 = add i64 %502, -8
  %504 = add i64 %501, 4
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to i64*
  %506 = load i64, i64* %505, align 8
  store i64 %506, i64* %RAX.i900, align 8
  %507 = add i64 %506, 96
  %508 = add i64 %501, 9
  store i64 %508, i64* %3, align 8
  %509 = inttoptr i64 %507 to i64*
  %510 = load i64, i64* %509, align 8
  store i8 0, i8* %14, align 1
  %511 = trunc i64 %510 to i32
  %512 = and i32 %511, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %517 = icmp eq i64 %510, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %29, align 1
  %519 = lshr i64 %510, 63
  %520 = trunc i64 %519 to i8
  store i8 %520, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v64 = select i1 %517, i64 69, i64 15
  %521 = add i64 %501, %.v64
  store i64 %521, i64* %3, align 8
  br i1 %517, label %block_.L_42cd5c, label %block_42cd26

block_42cd26:                                     ; preds = %block_.L_42cd17
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 176, i64* %RSI.i898, align 8
  %522 = add i64 %521, 19
  store i64 %522, i64* %3, align 8
  %523 = load i64, i64* %505, align 8
  store i64 %523, i64* %RAX.i900, align 8
  %524 = add i64 %523, 96
  %525 = add i64 %521, 23
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i64*
  %527 = load i64, i64* %526, align 8
  store i64 %527, i64* %RAX.i900, align 8
  %528 = add i64 %521, 27
  store i64 %528, i64* %3, align 8
  %529 = load i64, i64* %505, align 8
  store i64 %529, i64* %RCX.i889, align 8
  %530 = add i64 %529, 320
  %531 = add i64 %521, 34
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = sext i32 %533 to i64
  %535 = shl nsw i64 %534, 3
  store i64 %535, i64* %RCX.i889, align 8
  %.lobit27 = lshr i32 %533, 31
  %536 = trunc i32 %.lobit27 to i8
  store i8 %536, i8* %14, align 1
  %537 = trunc i64 %535 to i32
  %538 = and i32 %537, 248
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %543 = icmp eq i32 %533, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %29, align 1
  %545 = lshr i64 %534, 60
  %546 = trunc i64 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %527, i64* %RDX.i872, align 8
  %548 = add i64 %521, 103306
  %549 = add i64 %521, 46
  %550 = load i64, i64* %6, align 8
  %551 = add i64 %550, -8
  %552 = inttoptr i64 %551 to i64*
  store i64 %549, i64* %552, align 8
  store i64 %551, i64* %6, align 8
  store i64 %548, i64* %3, align 8
  %call2_42cd4f = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %548, %struct.Memory* %MEMORY.1)
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -8
  %555 = load i64, i64* %3, align 8
  %556 = add i64 %555, 4
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %554 to i64*
  %558 = load i64, i64* %557, align 8
  store i64 %558, i64* %RCX.i889, align 8
  %559 = add i64 %558, 96
  %560 = load i64, i64* %RAX.i900, align 8
  %561 = add i64 %555, 8
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %559 to i64*
  store i64 %560, i64* %562, align 8
  %.pre43 = load i64, i64* %RBP.i, align 8
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_42cd5c

block_.L_42cd5c:                                  ; preds = %block_42cd26, %block_.L_42cd17
  %563 = phi i64 [ %521, %block_.L_42cd17 ], [ %.pre44, %block_42cd26 ]
  %564 = phi i64 [ %502, %block_.L_42cd17 ], [ %.pre43, %block_42cd26 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_.L_42cd17 ], [ %call2_42cd4f, %block_42cd26 ]
  %565 = add i64 %564, -8
  %566 = add i64 %563, 4
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %565 to i64*
  %568 = load i64, i64* %567, align 8
  store i64 %568, i64* %RAX.i900, align 8
  %569 = add i64 %568, 104
  %570 = add i64 %563, 9
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i64*
  %572 = load i64, i64* %571, align 8
  store i8 0, i8* %14, align 1
  %573 = trunc i64 %572 to i32
  %574 = and i32 %573, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %579 = icmp eq i64 %572, 0
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %29, align 1
  %581 = lshr i64 %572, 63
  %582 = trunc i64 %581 to i8
  store i8 %582, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v65 = select i1 %579, i64 69, i64 15
  %583 = add i64 %563, %.v65
  store i64 %583, i64* %3, align 8
  br i1 %579, label %block_.L_42cda1, label %block_42cd6b

block_42cd6b:                                     ; preds = %block_.L_42cd5c
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 178, i64* %RSI.i898, align 8
  %584 = add i64 %583, 19
  store i64 %584, i64* %3, align 8
  %585 = load i64, i64* %567, align 8
  store i64 %585, i64* %RAX.i900, align 8
  %586 = add i64 %585, 104
  %587 = add i64 %583, 23
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i64*
  %589 = load i64, i64* %588, align 8
  store i64 %589, i64* %RAX.i900, align 8
  %590 = add i64 %583, 27
  store i64 %590, i64* %3, align 8
  %591 = load i64, i64* %567, align 8
  store i64 %591, i64* %RCX.i889, align 8
  %592 = add i64 %591, 320
  %593 = add i64 %583, 34
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = sext i32 %595 to i64
  %597 = shl nsw i64 %596, 3
  store i64 %597, i64* %RCX.i889, align 8
  %.lobit28 = lshr i32 %595, 31
  %598 = trunc i32 %.lobit28 to i8
  store i8 %598, i8* %14, align 1
  %599 = trunc i64 %597 to i32
  %600 = and i32 %599, 248
  %601 = tail call i32 @llvm.ctpop.i32(i32 %600)
  %602 = trunc i32 %601 to i8
  %603 = and i8 %602, 1
  %604 = xor i8 %603, 1
  store i8 %604, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %605 = icmp eq i32 %595, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %29, align 1
  %607 = lshr i64 %596, 60
  %608 = trunc i64 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %589, i64* %RDX.i872, align 8
  %610 = add i64 %583, 103237
  %611 = add i64 %583, 46
  %612 = load i64, i64* %6, align 8
  %613 = add i64 %612, -8
  %614 = inttoptr i64 %613 to i64*
  store i64 %611, i64* %614, align 8
  store i64 %613, i64* %6, align 8
  store i64 %610, i64* %3, align 8
  %call2_42cd94 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %610, %struct.Memory* %MEMORY.2)
  %615 = load i64, i64* %RBP.i, align 8
  %616 = add i64 %615, -8
  %617 = load i64, i64* %3, align 8
  %618 = add i64 %617, 4
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %616 to i64*
  %620 = load i64, i64* %619, align 8
  store i64 %620, i64* %RCX.i889, align 8
  %621 = add i64 %620, 104
  %622 = load i64, i64* %RAX.i900, align 8
  %623 = add i64 %617, 8
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %621 to i64*
  store i64 %622, i64* %624, align 8
  %.pre45 = load i64, i64* %RBP.i, align 8
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_42cda1

block_.L_42cda1:                                  ; preds = %block_42cd6b, %block_.L_42cd5c
  %625 = phi i64 [ %583, %block_.L_42cd5c ], [ %.pre46, %block_42cd6b ]
  %626 = phi i64 [ %564, %block_.L_42cd5c ], [ %.pre45, %block_42cd6b ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_42cd5c ], [ %call2_42cd94, %block_42cd6b ]
  %627 = add i64 %626, -8
  %628 = add i64 %625, 4
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i64*
  %630 = load i64, i64* %629, align 8
  store i64 %630, i64* %RAX.i900, align 8
  %631 = add i64 %630, 320
  %632 = add i64 %625, 10
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = zext i32 %634 to i64
  store i64 %635, i64* %RCX.i889, align 8
  %636 = add i64 %625, 14
  store i64 %636, i64* %3, align 8
  %637 = load i64, i64* %629, align 8
  store i64 %637, i64* %RAX.i900, align 8
  %638 = add i64 %637, 324
  %639 = add i64 %625, 20
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = sub i32 %634, %641
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RCX.i889, align 8
  %644 = icmp ult i32 %634, %641
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %14, align 1
  %646 = and i32 %642, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646)
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %21, align 1
  %651 = xor i32 %641, %634
  %652 = xor i32 %651, %642
  %653 = lshr i32 %652, 4
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  store i8 %655, i8* %26, align 1
  %656 = icmp eq i32 %642, 0
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %29, align 1
  %658 = lshr i32 %642, 31
  %659 = trunc i32 %658 to i8
  store i8 %659, i8* %32, align 1
  %660 = lshr i32 %634, 31
  %661 = lshr i32 %641, 31
  %662 = xor i32 %661, %660
  %663 = xor i32 %658, %660
  %664 = add nuw nsw i32 %663, %662
  %665 = icmp eq i32 %664, 2
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %38, align 1
  %667 = add i64 %626, -12
  %668 = add i64 %625, 23
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %667 to i32*
  store i32 %642, i32* %669, align 4
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %671 = bitcast %union.VectorReg* %670 to i8*
  %672 = bitcast %union.VectorReg* %670 to i32*
  %673 = getelementptr inbounds i8, i8* %671, i64 4
  %674 = bitcast i8* %673 to float*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %676 = bitcast i64* %675 to float*
  %677 = getelementptr inbounds i8, i8* %671, i64 12
  %678 = bitcast i8* %677 to float*
  %679 = bitcast %union.VectorReg* %670 to <2 x float>*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_42cdb8

block_.L_42cdb8:                                  ; preds = %block_.L_42cfee, %block_.L_42cda1
  %681 = phi i64 [ %.pre47, %block_.L_42cda1 ], [ %1276, %block_.L_42cfee ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_42cda1 ], [ %MEMORY.11, %block_.L_42cfee ]
  %682 = load i64, i64* %RBP.i, align 8
  %683 = add i64 %682, -12
  %684 = add i64 %681, 3
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %RAX.i900, align 8
  %688 = add i64 %682, -8
  %689 = add i64 %681, 7
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %RCX.i889, align 8
  %692 = add i64 %691, 320
  %693 = add i64 %681, 13
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = sub i32 %686, %695
  %697 = icmp ult i32 %686, %695
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %14, align 1
  %699 = and i32 %696, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %21, align 1
  %704 = xor i32 %695, %686
  %705 = xor i32 %704, %696
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %26, align 1
  %709 = icmp eq i32 %696, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %29, align 1
  %711 = lshr i32 %696, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %32, align 1
  %713 = lshr i32 %686, 31
  %714 = lshr i32 %695, 31
  %715 = xor i32 %714, %713
  %716 = xor i32 %711, %713
  %717 = add nuw nsw i32 %716, %715
  %718 = icmp eq i32 %717, 2
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %38, align 1
  %720 = icmp ne i8 %712, 0
  %721 = xor i1 %720, %718
  %.v66 = select i1 %721, i64 19, i64 585
  %722 = add i64 %681, %.v66
  store i64 %722, i64* %3, align 8
  br i1 %721, label %block_42cdcb, label %block_.L_42d001

block_42cdcb:                                     ; preds = %block_.L_42cdb8
  %723 = add i64 %722, ptrtoint (%G_0x27951__rip__type* @G_0x27951__rip_ to i64)
  %724 = add i64 %722, 8
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  store i32 %726, i32* %672, align 1
  store float 0.000000e+00, float* %674, align 1
  store float 0.000000e+00, float* %676, align 1
  store float 0.000000e+00, float* %678, align 1
  %727 = add i64 %722, 12
  store i64 %727, i64* %3, align 8
  %728 = load i64, i64* %690, align 8
  store i64 %728, i64* %RAX.i900, align 8
  %729 = add i64 %728, 8
  %730 = add i64 %722, 16
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i64*
  %732 = load i64, i64* %731, align 8
  store i64 %732, i64* %RAX.i900, align 8
  %733 = add i64 %722, 20
  store i64 %733, i64* %3, align 8
  %734 = load i32, i32* %685, align 4
  %735 = sext i32 %734 to i64
  store i64 %735, i64* %RCX.i889, align 8
  %736 = shl nsw i64 %735, 3
  %737 = add i64 %736, %732
  %738 = add i64 %722, 28
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i64*
  store i64 0, i64* %739, align 8
  %740 = load i64, i64* %RBP.i, align 8
  %741 = add i64 %740, -8
  %742 = load i64, i64* %3, align 8
  %743 = add i64 %742, 4
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %741 to i64*
  %745 = load i64, i64* %744, align 8
  store i64 %745, i64* %RAX.i900, align 8
  %746 = add i64 %745, 16
  %747 = add i64 %742, 8
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i64*
  %749 = load i64, i64* %748, align 8
  store i64 %749, i64* %RAX.i900, align 8
  %750 = add i64 %740, -12
  %751 = add i64 %742, 12
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX.i889, align 8
  %755 = shl nsw i64 %754, 2
  %756 = add i64 %755, %749
  %757 = add i64 %742, 17
  store i64 %757, i64* %3, align 8
  %758 = load <2 x float>, <2 x float>* %679, align 1
  %759 = extractelement <2 x float> %758, i32 0
  %760 = inttoptr i64 %756 to float*
  store float %759, float* %760, align 4
  %761 = load i64, i64* %RBP.i, align 8
  %762 = add i64 %761, -8
  %763 = load i64, i64* %3, align 8
  %764 = add i64 %763, 4
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %762 to i64*
  %766 = load i64, i64* %765, align 8
  store i64 %766, i64* %RAX.i900, align 8
  %767 = add i64 %766, 96
  %768 = add i64 %763, 9
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i64*
  %770 = load i64, i64* %769, align 8
  store i8 0, i8* %14, align 1
  %771 = trunc i64 %770 to i32
  %772 = and i32 %771, 255
  %773 = tail call i32 @llvm.ctpop.i32(i32 %772)
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  %776 = xor i8 %775, 1
  store i8 %776, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %777 = icmp eq i64 %770, 0
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %29, align 1
  %779 = lshr i64 %770, 63
  %780 = trunc i64 %779 to i8
  store i8 %780, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v75 = select i1 %777, i64 35, i64 15
  %781 = add i64 %763, %.v75
  store i64 %781, i64* %3, align 8
  br i1 %777, label %block_.L_42ce1b, label %block_42ce07

block_42ce07:                                     ; preds = %block_42cdcb
  %782 = add i64 %781, 4
  store i64 %782, i64* %3, align 8
  %783 = load i64, i64* %765, align 8
  store i64 %783, i64* %RAX.i900, align 8
  %784 = add i64 %783, 96
  %785 = add i64 %781, 8
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i64*
  %787 = load i64, i64* %786, align 8
  store i64 %787, i64* %RAX.i900, align 8
  %788 = add i64 %761, -12
  %789 = add i64 %781, 12
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  %791 = load i32, i32* %790, align 4
  %792 = sext i32 %791 to i64
  store i64 %792, i64* %RCX.i889, align 8
  %793 = shl nsw i64 %792, 3
  %794 = add i64 %793, %787
  %795 = add i64 %781, 20
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i64*
  store i64 0, i64* %796, align 8
  %.pre52 = load i64, i64* %RBP.i, align 8
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_42ce1b

block_.L_42ce1b:                                  ; preds = %block_42ce07, %block_42cdcb
  %797 = phi i64 [ %.pre53, %block_42ce07 ], [ %781, %block_42cdcb ]
  %798 = phi i64 [ %.pre52, %block_42ce07 ], [ %761, %block_42cdcb ]
  %799 = add i64 %798, -8
  %800 = add i64 %797, 4
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RAX.i900, align 8
  %803 = add i64 %802, 104
  %804 = add i64 %797, 9
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i8 0, i8* %14, align 1
  %807 = trunc i64 %806 to i32
  %808 = and i32 %807, 255
  %809 = tail call i32 @llvm.ctpop.i32(i32 %808)
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  %812 = xor i8 %811, 1
  store i8 %812, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %813 = icmp eq i64 %806, 0
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %29, align 1
  %815 = lshr i64 %806, 63
  %816 = trunc i64 %815 to i8
  store i8 %816, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v76 = select i1 %813, i64 35, i64 15
  %817 = add i64 %797, %.v76
  store i64 %817, i64* %3, align 8
  br i1 %813, label %block_.L_42ce3e, label %block_42ce2a

block_42ce2a:                                     ; preds = %block_.L_42ce1b
  %818 = add i64 %817, 4
  store i64 %818, i64* %3, align 8
  %819 = load i64, i64* %801, align 8
  store i64 %819, i64* %RAX.i900, align 8
  %820 = add i64 %819, 104
  %821 = add i64 %817, 8
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i64*
  %823 = load i64, i64* %822, align 8
  store i64 %823, i64* %RAX.i900, align 8
  %824 = add i64 %798, -12
  %825 = add i64 %817, 12
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = sext i32 %827 to i64
  store i64 %828, i64* %RCX.i889, align 8
  %829 = shl nsw i64 %828, 3
  %830 = add i64 %829, %823
  %831 = add i64 %817, 20
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i64*
  store i64 0, i64* %832, align 8
  %.pre54 = load i64, i64* %RBP.i, align 8
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_42ce3e

block_.L_42ce3e:                                  ; preds = %block_42ce2a, %block_.L_42ce1b
  %833 = phi i64 [ %.pre55, %block_42ce2a ], [ %817, %block_.L_42ce1b ]
  %834 = phi i64 [ %.pre54, %block_42ce2a ], [ %798, %block_.L_42ce1b ]
  %835 = add i64 %834, -8
  %836 = add i64 %833, 4
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i64*
  %838 = load i64, i64* %837, align 8
  store i64 %838, i64* %RAX.i900, align 8
  %839 = add i64 %838, 24
  %840 = add i64 %833, 8
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  %842 = load i32, i32* %841, align 4
  store i8 0, i8* %14, align 1
  %843 = and i32 %842, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %848 = icmp eq i32 %842, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %29, align 1
  %850 = lshr i32 %842, 31
  %851 = trunc i32 %850 to i8
  store i8 %851, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v77 = select i1 %848, i64 91, i64 14
  %852 = add i64 %833, %.v77
  store i64 %852, i64* %3, align 8
  br i1 %848, label %block_.L_42ce99, label %block_42ce4c

block_42ce4c:                                     ; preds = %block_.L_42ce3e
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 189, i64* %RSI.i898, align 8
  %853 = add i64 %852, 19
  store i64 %853, i64* %3, align 8
  %854 = load i64, i64* %837, align 8
  store i64 %854, i64* %RAX.i900, align 8
  %855 = add i64 %852, 22
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  store i64 %857, i64* %RAX.i900, align 8
  %858 = add i64 %834, -12
  %859 = add i64 %852, 26
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = sext i32 %861 to i64
  store i64 %862, i64* %RCX.i889, align 8
  %863 = shl nsw i64 %862, 3
  %864 = add i64 %863, %857
  %865 = add i64 %852, 30
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i64*
  %867 = load i64, i64* %866, align 8
  store i64 %867, i64* %RDX.i872, align 8
  %868 = add i64 %852, 34
  store i64 %868, i64* %3, align 8
  %869 = load i64, i64* %837, align 8
  store i64 %869, i64* %RAX.i900, align 8
  %870 = add i64 %869, 24
  %871 = add i64 %852, 38
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = add i32 %873, 1
  %875 = zext i32 %874 to i64
  store i64 %875, i64* %680, align 8
  %876 = icmp eq i32 %873, -1
  %877 = icmp eq i32 %874, 0
  %878 = or i1 %876, %877
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %14, align 1
  %880 = and i32 %874, 255
  %881 = tail call i32 @llvm.ctpop.i32(i32 %880)
  %882 = trunc i32 %881 to i8
  %883 = and i8 %882, 1
  %884 = xor i8 %883, 1
  store i8 %884, i8* %21, align 1
  %885 = xor i32 %874, %873
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %26, align 1
  %889 = zext i1 %877 to i8
  store i8 %889, i8* %29, align 1
  %890 = lshr i32 %874, 31
  %891 = trunc i32 %890 to i8
  store i8 %891, i8* %32, align 1
  %892 = lshr i32 %873, 31
  %893 = xor i32 %890, %892
  %894 = add nuw nsw i32 %893, %890
  %895 = icmp eq i32 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %38, align 1
  %897 = sext i32 %874 to i64
  store i64 %897, i64* %RAX.i900, align 8
  store i64 %897, i64* %RCX.i889, align 8
  %898 = add i64 %852, 103012
  %899 = add i64 %852, 57
  %900 = load i64, i64* %6, align 8
  %901 = add i64 %900, -8
  %902 = inttoptr i64 %901 to i64*
  store i64 %899, i64* %902, align 8
  store i64 %901, i64* %6, align 8
  store i64 %898, i64* %3, align 8
  %call2_42ce80 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %898, %struct.Memory* %MEMORY.4)
  %903 = load i64, i64* %RBP.i, align 8
  %904 = add i64 %903, -8
  %905 = load i64, i64* %3, align 8
  %906 = add i64 %905, 4
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %904 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RCX.i889, align 8
  %909 = add i64 %905, 7
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RCX.i889, align 8
  %912 = add i64 %903, -12
  %913 = add i64 %905, 11
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = sext i32 %915 to i64
  store i64 %916, i64* %RDX.i872, align 8
  %917 = shl nsw i64 %916, 3
  %918 = add i64 %917, %911
  %919 = load i64, i64* %RAX.i900, align 8
  %920 = add i64 %905, 15
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %918 to i64*
  store i64 %919, i64* %921, align 8
  %922 = load i64, i64* %3, align 8
  %923 = add i64 %922, 24
  store i64 %923, i64* %3, align 8
  br label %block_.L_42ceac

block_.L_42ce99:                                  ; preds = %block_.L_42ce3e
  %924 = add i64 %852, 4
  store i64 %924, i64* %3, align 8
  %925 = load i64, i64* %837, align 8
  store i64 %925, i64* %RAX.i900, align 8
  %926 = add i64 %852, 7
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i64*
  %928 = load i64, i64* %927, align 8
  store i64 %928, i64* %RAX.i900, align 8
  %929 = add i64 %834, -12
  %930 = add i64 %852, 11
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = sext i32 %932 to i64
  store i64 %933, i64* %RCX.i889, align 8
  %934 = shl nsw i64 %933, 3
  %935 = add i64 %934, %928
  %936 = add i64 %852, 19
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i64*
  store i64 0, i64* %937, align 8
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_42ceac

block_.L_42ceac:                                  ; preds = %block_.L_42ce99, %block_42ce4c
  %938 = phi i64 [ %.pre56, %block_.L_42ce99 ], [ %923, %block_42ce4c ]
  %939 = load i64, i64* %RBP.i, align 8
  %940 = add i64 %939, -8
  %941 = add i64 %938, 4
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %940 to i64*
  %943 = load i64, i64* %942, align 8
  store i64 %943, i64* %RAX.i900, align 8
  %944 = add i64 %943, 328
  %945 = add i64 %938, 11
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i64*
  %947 = load i64, i64* %946, align 8
  store i64 %947, i64* %RAX.i900, align 8
  %948 = add i64 %939, -12
  %949 = add i64 %938, 15
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i32*
  %951 = load i32, i32* %950, align 4
  %952 = sext i32 %951 to i64
  store i64 %952, i64* %RCX.i889, align 8
  %953 = shl nsw i64 %952, 2
  %954 = add i64 %953, %947
  %955 = add i64 %938, 22
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  store i32 0, i32* %956, align 4
  %957 = load i64, i64* %RBP.i, align 8
  %958 = add i64 %957, -8
  %959 = load i64, i64* %3, align 8
  %960 = add i64 %959, 4
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %958 to i64*
  %962 = load i64, i64* %961, align 8
  store i64 %962, i64* %RAX.i900, align 8
  %963 = add i64 %962, 112
  %964 = add i64 %959, 9
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i64*
  %966 = load i64, i64* %965, align 8
  store i8 0, i8* %14, align 1
  %967 = trunc i64 %966 to i32
  %968 = and i32 %967, 255
  %969 = tail call i32 @llvm.ctpop.i32(i32 %968)
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  store i8 %972, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %973 = icmp eq i64 %966, 0
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %29, align 1
  %975 = lshr i64 %966, 63
  %976 = trunc i64 %975 to i8
  store i8 %976, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v78 = select i1 %973, i64 150, i64 15
  %977 = add i64 %959, %.v78
  store i64 %977, i64* %3, align 8
  br i1 %973, label %block_.L_42cf58, label %block_42ced1

block_42ced1:                                     ; preds = %block_.L_42ceac
  %978 = add i64 %977, 4
  store i64 %978, i64* %3, align 8
  %979 = load i64, i64* %961, align 8
  store i64 %979, i64* %RAX.i900, align 8
  %980 = add i64 %979, 24
  %981 = add i64 %977, 8
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i32*
  %983 = load i32, i32* %982, align 4
  store i8 0, i8* %14, align 1
  %984 = and i32 %983, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %989 = icmp eq i32 %983, 0
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %29, align 1
  %991 = lshr i32 %983, 31
  %992 = trunc i32 %991 to i8
  store i8 %992, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v79 = select i1 %989, i64 93, i64 14
  %993 = add i64 %977, %.v79
  store i64 %993, i64* %3, align 8
  br i1 %989, label %block_.L_42cf2e, label %block_42cedf

block_42cedf:                                     ; preds = %block_42ced1
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 195, i64* %RSI.i898, align 8
  %994 = add i64 %993, 19
  store i64 %994, i64* %3, align 8
  %995 = load i64, i64* %961, align 8
  store i64 %995, i64* %RAX.i900, align 8
  %996 = add i64 %995, 112
  %997 = add i64 %993, 23
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i64*
  %999 = load i64, i64* %998, align 8
  store i64 %999, i64* %RAX.i900, align 8
  %1000 = add i64 %957, -12
  %1001 = add i64 %993, 27
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = sext i32 %1003 to i64
  store i64 %1004, i64* %RCX.i889, align 8
  %1005 = shl nsw i64 %1004, 3
  %1006 = add i64 %1005, %999
  %1007 = add i64 %993, 31
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %RDX.i872, align 8
  %1010 = add i64 %993, 35
  store i64 %1010, i64* %3, align 8
  %1011 = load i64, i64* %961, align 8
  store i64 %1011, i64* %RAX.i900, align 8
  %1012 = add i64 %1011, 24
  %1013 = add i64 %993, 39
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = add i32 %1015, 1
  %1017 = zext i32 %1016 to i64
  store i64 %1017, i64* %680, align 8
  %1018 = icmp eq i32 %1015, -1
  %1019 = icmp eq i32 %1016, 0
  %1020 = or i1 %1018, %1019
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %14, align 1
  %1022 = and i32 %1016, 255
  %1023 = tail call i32 @llvm.ctpop.i32(i32 %1022)
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = xor i8 %1025, 1
  store i8 %1026, i8* %21, align 1
  %1027 = xor i32 %1016, %1015
  %1028 = lshr i32 %1027, 4
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  store i8 %1030, i8* %26, align 1
  %1031 = zext i1 %1019 to i8
  store i8 %1031, i8* %29, align 1
  %1032 = lshr i32 %1016, 31
  %1033 = trunc i32 %1032 to i8
  store i8 %1033, i8* %32, align 1
  %1034 = lshr i32 %1015, 31
  %1035 = xor i32 %1032, %1034
  %1036 = add nuw nsw i32 %1035, %1032
  %1037 = icmp eq i32 %1036, 2
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %38, align 1
  %1039 = sext i32 %1016 to i64
  store i64 %1039, i64* %RAX.i900, align 8
  store i64 %1039, i64* %RCX.i889, align 8
  %1040 = add i64 %993, 102865
  %1041 = add i64 %993, 58
  %1042 = load i64, i64* %6, align 8
  %1043 = add i64 %1042, -8
  %1044 = inttoptr i64 %1043 to i64*
  store i64 %1041, i64* %1044, align 8
  store i64 %1043, i64* %6, align 8
  store i64 %1040, i64* %3, align 8
  %call2_42cf14 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %1040, %struct.Memory* %MEMORY.4)
  %1045 = load i64, i64* %RBP.i, align 8
  %1046 = add i64 %1045, -8
  %1047 = load i64, i64* %3, align 8
  %1048 = add i64 %1047, 4
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1046 to i64*
  %1050 = load i64, i64* %1049, align 8
  store i64 %1050, i64* %RCX.i889, align 8
  %1051 = add i64 %1050, 112
  %1052 = add i64 %1047, 8
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i64*
  %1054 = load i64, i64* %1053, align 8
  store i64 %1054, i64* %RCX.i889, align 8
  %1055 = add i64 %1045, -12
  %1056 = add i64 %1047, 12
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i32*
  %1058 = load i32, i32* %1057, align 4
  %1059 = sext i32 %1058 to i64
  store i64 %1059, i64* %RDX.i872, align 8
  %1060 = shl nsw i64 %1059, 3
  %1061 = add i64 %1060, %1054
  %1062 = load i64, i64* %RAX.i900, align 8
  %1063 = add i64 %1047, 16
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1061 to i64*
  store i64 %1062, i64* %1064, align 8
  %1065 = load i64, i64* %3, align 8
  %1066 = add i64 %1065, 25
  store i64 %1066, i64* %3, align 8
  br label %block_.L_42cf42

block_.L_42cf2e:                                  ; preds = %block_42ced1
  %1067 = add i64 %993, 4
  store i64 %1067, i64* %3, align 8
  %1068 = load i64, i64* %961, align 8
  store i64 %1068, i64* %RAX.i900, align 8
  %1069 = add i64 %1068, 112
  %1070 = add i64 %993, 8
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i64*
  %1072 = load i64, i64* %1071, align 8
  store i64 %1072, i64* %RAX.i900, align 8
  %1073 = add i64 %957, -12
  %1074 = add i64 %993, 12
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = sext i32 %1076 to i64
  store i64 %1077, i64* %RCX.i889, align 8
  %1078 = shl nsw i64 %1077, 3
  %1079 = add i64 %1078, %1072
  %1080 = add i64 %993, 20
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i64*
  store i64 0, i64* %1081, align 8
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_42cf42

block_.L_42cf42:                                  ; preds = %block_.L_42cf2e, %block_42cedf
  %1082 = phi i64 [ %.pre57, %block_.L_42cf2e ], [ %1066, %block_42cedf ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.4, %block_.L_42cf2e ], [ %call2_42cf14, %block_42cedf ]
  %1083 = load i64, i64* %RBP.i, align 8
  %1084 = add i64 %1083, -8
  %1085 = add i64 %1082, 4
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i64*
  %1087 = load i64, i64* %1086, align 8
  store i64 %1087, i64* %RAX.i900, align 8
  %1088 = add i64 %1087, 336
  %1089 = add i64 %1082, 11
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i64*
  %1091 = load i64, i64* %1090, align 8
  store i64 %1091, i64* %RAX.i900, align 8
  %1092 = add i64 %1083, -12
  %1093 = add i64 %1082, 15
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i32*
  %1095 = load i32, i32* %1094, align 4
  %1096 = sext i32 %1095 to i64
  store i64 %1096, i64* %RCX.i889, align 8
  %1097 = shl nsw i64 %1096, 2
  %1098 = add i64 %1097, %1091
  %1099 = add i64 %1082, 22
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  store i32 0, i32* %1100, align 4
  %.pre58 = load i64, i64* %RBP.i, align 8
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_42cf58

block_.L_42cf58:                                  ; preds = %block_.L_42cf42, %block_.L_42ceac
  %1101 = phi i64 [ %977, %block_.L_42ceac ], [ %.pre59, %block_.L_42cf42 ]
  %1102 = phi i64 [ %957, %block_.L_42ceac ], [ %.pre58, %block_.L_42cf42 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.4, %block_.L_42ceac ], [ %MEMORY.8, %block_.L_42cf42 ]
  %1103 = add i64 %1102, -8
  %1104 = add i64 %1101, 4
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i64*
  %1106 = load i64, i64* %1105, align 8
  store i64 %1106, i64* %RAX.i900, align 8
  %1107 = add i64 %1106, 120
  %1108 = add i64 %1101, 9
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i64*
  %1110 = load i64, i64* %1109, align 8
  store i8 0, i8* %14, align 1
  %1111 = trunc i64 %1110 to i32
  %1112 = and i32 %1111, 255
  %1113 = tail call i32 @llvm.ctpop.i32(i32 %1112)
  %1114 = trunc i32 %1113 to i8
  %1115 = and i8 %1114, 1
  %1116 = xor i8 %1115, 1
  store i8 %1116, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1117 = icmp eq i64 %1110, 0
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %29, align 1
  %1119 = lshr i64 %1110, 63
  %1120 = trunc i64 %1119 to i8
  store i8 %1120, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v80 = select i1 %1117, i64 150, i64 15
  %1121 = add i64 %1101, %.v80
  store i64 %1121, i64* %3, align 8
  br i1 %1117, label %block_.L_42cfee, label %block_42cf67

block_42cf67:                                     ; preds = %block_.L_42cf58
  %1122 = add i64 %1121, 4
  store i64 %1122, i64* %3, align 8
  %1123 = load i64, i64* %1105, align 8
  store i64 %1123, i64* %RAX.i900, align 8
  %1124 = add i64 %1123, 24
  %1125 = add i64 %1121, 8
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  store i8 0, i8* %14, align 1
  %1128 = and i32 %1127, 255
  %1129 = tail call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  store i8 %1132, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1133 = icmp eq i32 %1127, 0
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %29, align 1
  %1135 = lshr i32 %1127, 31
  %1136 = trunc i32 %1135 to i8
  store i8 %1136, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v81 = select i1 %1133, i64 93, i64 14
  %1137 = add i64 %1121, %.v81
  store i64 %1137, i64* %3, align 8
  br i1 %1133, label %block_.L_42cfc4, label %block_42cf75

block_42cf75:                                     ; preds = %block_42cf67
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 201, i64* %RSI.i898, align 8
  %1138 = add i64 %1137, 19
  store i64 %1138, i64* %3, align 8
  %1139 = load i64, i64* %1105, align 8
  store i64 %1139, i64* %RAX.i900, align 8
  %1140 = add i64 %1139, 112
  %1141 = add i64 %1137, 23
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RAX.i900, align 8
  %1144 = add i64 %1102, -12
  %1145 = add i64 %1137, 27
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = sext i32 %1147 to i64
  store i64 %1148, i64* %RCX.i889, align 8
  %1149 = shl nsw i64 %1148, 3
  %1150 = add i64 %1149, %1143
  %1151 = add i64 %1137, 31
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i64 %1153, i64* %RDX.i872, align 8
  %1154 = add i64 %1137, 35
  store i64 %1154, i64* %3, align 8
  %1155 = load i64, i64* %1105, align 8
  store i64 %1155, i64* %RAX.i900, align 8
  %1156 = add i64 %1155, 24
  %1157 = add i64 %1137, 39
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = add i32 %1159, 1
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %680, align 8
  %1162 = icmp eq i32 %1159, -1
  %1163 = icmp eq i32 %1160, 0
  %1164 = or i1 %1162, %1163
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %14, align 1
  %1166 = and i32 %1160, 255
  %1167 = tail call i32 @llvm.ctpop.i32(i32 %1166)
  %1168 = trunc i32 %1167 to i8
  %1169 = and i8 %1168, 1
  %1170 = xor i8 %1169, 1
  store i8 %1170, i8* %21, align 1
  %1171 = xor i32 %1160, %1159
  %1172 = lshr i32 %1171, 4
  %1173 = trunc i32 %1172 to i8
  %1174 = and i8 %1173, 1
  store i8 %1174, i8* %26, align 1
  %1175 = zext i1 %1163 to i8
  store i8 %1175, i8* %29, align 1
  %1176 = lshr i32 %1160, 31
  %1177 = trunc i32 %1176 to i8
  store i8 %1177, i8* %32, align 1
  %1178 = lshr i32 %1159, 31
  %1179 = xor i32 %1176, %1178
  %1180 = add nuw nsw i32 %1179, %1176
  %1181 = icmp eq i32 %1180, 2
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %38, align 1
  %1183 = sext i32 %1160 to i64
  store i64 %1183, i64* %RAX.i900, align 8
  store i64 %1183, i64* %RCX.i889, align 8
  %1184 = add i64 %1137, 102715
  %1185 = add i64 %1137, 58
  %1186 = load i64, i64* %6, align 8
  %1187 = add i64 %1186, -8
  %1188 = inttoptr i64 %1187 to i64*
  store i64 %1185, i64* %1188, align 8
  store i64 %1187, i64* %6, align 8
  store i64 %1184, i64* %3, align 8
  %call2_42cfaa = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %1184, %struct.Memory* %MEMORY.9)
  %1189 = load i64, i64* %RBP.i, align 8
  %1190 = add i64 %1189, -8
  %1191 = load i64, i64* %3, align 8
  %1192 = add i64 %1191, 4
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1190 to i64*
  %1194 = load i64, i64* %1193, align 8
  store i64 %1194, i64* %RCX.i889, align 8
  %1195 = add i64 %1194, 120
  %1196 = add i64 %1191, 8
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i64*
  %1198 = load i64, i64* %1197, align 8
  store i64 %1198, i64* %RCX.i889, align 8
  %1199 = add i64 %1189, -12
  %1200 = add i64 %1191, 12
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = sext i32 %1202 to i64
  store i64 %1203, i64* %RDX.i872, align 8
  %1204 = shl nsw i64 %1203, 3
  %1205 = add i64 %1204, %1198
  %1206 = load i64, i64* %RAX.i900, align 8
  %1207 = add i64 %1191, 16
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1205 to i64*
  store i64 %1206, i64* %1208, align 8
  %1209 = load i64, i64* %3, align 8
  %1210 = add i64 %1209, 25
  store i64 %1210, i64* %3, align 8
  br label %block_.L_42cfd8

block_.L_42cfc4:                                  ; preds = %block_42cf67
  %1211 = add i64 %1137, 4
  store i64 %1211, i64* %3, align 8
  %1212 = load i64, i64* %1105, align 8
  store i64 %1212, i64* %RAX.i900, align 8
  %1213 = add i64 %1212, 120
  %1214 = add i64 %1137, 8
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1213 to i64*
  %1216 = load i64, i64* %1215, align 8
  store i64 %1216, i64* %RAX.i900, align 8
  %1217 = add i64 %1102, -12
  %1218 = add i64 %1137, 12
  store i64 %1218, i64* %3, align 8
  %1219 = inttoptr i64 %1217 to i32*
  %1220 = load i32, i32* %1219, align 4
  %1221 = sext i32 %1220 to i64
  store i64 %1221, i64* %RCX.i889, align 8
  %1222 = shl nsw i64 %1221, 3
  %1223 = add i64 %1222, %1216
  %1224 = add i64 %1137, 20
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i64*
  store i64 0, i64* %1225, align 8
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_42cfd8

block_.L_42cfd8:                                  ; preds = %block_.L_42cfc4, %block_42cf75
  %1226 = phi i64 [ %.pre60, %block_.L_42cfc4 ], [ %1210, %block_42cf75 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_42cfc4 ], [ %call2_42cfaa, %block_42cf75 ]
  %1227 = load i64, i64* %RBP.i, align 8
  %1228 = add i64 %1227, -8
  %1229 = add i64 %1226, 4
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to i64*
  %1231 = load i64, i64* %1230, align 8
  store i64 %1231, i64* %RAX.i900, align 8
  %1232 = add i64 %1231, 344
  %1233 = add i64 %1226, 11
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i64*
  %1235 = load i64, i64* %1234, align 8
  store i64 %1235, i64* %RAX.i900, align 8
  %1236 = add i64 %1227, -12
  %1237 = add i64 %1226, 15
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = sext i32 %1239 to i64
  store i64 %1240, i64* %RCX.i889, align 8
  %1241 = shl nsw i64 %1240, 2
  %1242 = add i64 %1241, %1235
  %1243 = add i64 %1226, 22
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i32*
  store i32 0, i32* %1244, align 4
  %.pre61 = load i64, i64* %3, align 8
  %.pre62 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42cfee

block_.L_42cfee:                                  ; preds = %block_.L_42cfd8, %block_.L_42cf58
  %1245 = phi i64 [ %1102, %block_.L_42cf58 ], [ %.pre62, %block_.L_42cfd8 ]
  %1246 = phi i64 [ %1121, %block_.L_42cf58 ], [ %.pre61, %block_.L_42cfd8 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.9, %block_.L_42cf58 ], [ %MEMORY.10, %block_.L_42cfd8 ]
  %1247 = add i64 %1245, -12
  %1248 = add i64 %1246, 8
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i32*
  %1250 = load i32, i32* %1249, align 4
  %1251 = add i32 %1250, 1
  %1252 = zext i32 %1251 to i64
  store i64 %1252, i64* %RAX.i900, align 8
  %1253 = icmp eq i32 %1250, -1
  %1254 = icmp eq i32 %1251, 0
  %1255 = or i1 %1253, %1254
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %14, align 1
  %1257 = and i32 %1251, 255
  %1258 = tail call i32 @llvm.ctpop.i32(i32 %1257)
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %21, align 1
  %1262 = xor i32 %1251, %1250
  %1263 = lshr i32 %1262, 4
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  store i8 %1265, i8* %26, align 1
  %1266 = zext i1 %1254 to i8
  store i8 %1266, i8* %29, align 1
  %1267 = lshr i32 %1251, 31
  %1268 = trunc i32 %1267 to i8
  store i8 %1268, i8* %32, align 1
  %1269 = lshr i32 %1250, 31
  %1270 = xor i32 %1267, %1269
  %1271 = add nuw nsw i32 %1270, %1267
  %1272 = icmp eq i32 %1271, 2
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %38, align 1
  %1274 = add i64 %1246, 14
  store i64 %1274, i64* %3, align 8
  store i32 %1251, i32* %1249, align 4
  %1275 = load i64, i64* %3, align 8
  %1276 = add i64 %1275, -580
  store i64 %1276, i64* %3, align 8
  br label %block_.L_42cdb8

block_.L_42d001:                                  ; preds = %block_.L_42cdb8
  %1277 = add i64 %722, 4
  store i64 %1277, i64* %3, align 8
  %1278 = load i64, i64* %690, align 8
  store i64 %1278, i64* %RAX.i900, align 8
  %1279 = add i64 %1278, 224
  %1280 = add i64 %722, 12
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i64*
  %1282 = load i64, i64* %1281, align 8
  store i8 0, i8* %14, align 1
  %1283 = trunc i64 %1282 to i32
  %1284 = and i32 %1283, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284)
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1289 = icmp eq i64 %1282, 0
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %29, align 1
  %1291 = lshr i64 %1282, 63
  %1292 = trunc i64 %1291 to i8
  store i8 %1292, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v67 = select i1 %1289, i64 262, i64 18
  %1293 = add i64 %722, %.v67
  store i64 %1293, i64* %3, align 8
  br i1 %1289, label %block_.L_42d107, label %block_42d013

block_42d013:                                     ; preds = %block_.L_42d001
  %1294 = add i64 %1293, 7
  store i64 %1294, i64* %3, align 8
  store i32 0, i32* %685, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_42d01a

block_.L_42d01a:                                  ; preds = %block_.L_42d0ef, %block_42d013
  %1295 = phi i64 [ %.pre48, %block_42d013 ], [ %1595, %block_.L_42d0ef ]
  %1296 = load i64, i64* %RBP.i, align 8
  %1297 = add i64 %1296, -12
  %1298 = add i64 %1295, 3
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i32*
  %1300 = load i32, i32* %1299, align 4
  %1301 = zext i32 %1300 to i64
  store i64 %1301, i64* %RAX.i900, align 8
  %1302 = add i64 %1296, -8
  %1303 = add i64 %1295, 7
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i64*
  %1305 = load i64, i64* %1304, align 8
  store i64 %1305, i64* %RCX.i889, align 8
  %1306 = add i64 %1305, 240
  %1307 = add i64 %1295, 13
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1306 to i32*
  %1309 = load i32, i32* %1308, align 4
  %1310 = sub i32 %1300, %1309
  %1311 = icmp ult i32 %1300, %1309
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %14, align 1
  %1313 = and i32 %1310, 255
  %1314 = tail call i32 @llvm.ctpop.i32(i32 %1313)
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  store i8 %1317, i8* %21, align 1
  %1318 = xor i32 %1309, %1300
  %1319 = xor i32 %1318, %1310
  %1320 = lshr i32 %1319, 4
  %1321 = trunc i32 %1320 to i8
  %1322 = and i8 %1321, 1
  store i8 %1322, i8* %26, align 1
  %1323 = icmp eq i32 %1310, 0
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %29, align 1
  %1325 = lshr i32 %1310, 31
  %1326 = trunc i32 %1325 to i8
  store i8 %1326, i8* %32, align 1
  %1327 = lshr i32 %1300, 31
  %1328 = lshr i32 %1309, 31
  %1329 = xor i32 %1328, %1327
  %1330 = xor i32 %1325, %1327
  %1331 = add nuw nsw i32 %1330, %1329
  %1332 = icmp eq i32 %1331, 2
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %38, align 1
  %1334 = icmp ne i8 %1326, 0
  %1335 = xor i1 %1334, %1332
  %.v68 = select i1 %1335, i64 19, i64 232
  %1336 = add i64 %1295, %.v68
  store i64 %1336, i64* %3, align 8
  br i1 %1335, label %block_42d02d, label %block_.L_42d102

block_42d02d:                                     ; preds = %block_.L_42d01a
  %1337 = add i64 %1336, 4
  store i64 %1337, i64* %3, align 8
  %1338 = load i64, i64* %1304, align 8
  store i64 %1338, i64* %RAX.i900, align 8
  %1339 = add i64 %1338, 224
  %1340 = add i64 %1336, 11
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i64*
  %1342 = load i64, i64* %1341, align 8
  store i64 %1342, i64* %RAX.i900, align 8
  %1343 = add i64 %1336, 15
  store i64 %1343, i64* %3, align 8
  %1344 = load i32, i32* %1299, align 4
  %1345 = sext i32 %1344 to i64
  store i64 %1345, i64* %RCX.i889, align 8
  %1346 = shl nsw i64 %1345, 3
  %1347 = add i64 %1346, %1342
  %1348 = add i64 %1336, 20
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i64*
  %1350 = load i64, i64* %1349, align 8
  store i8 0, i8* %14, align 1
  %1351 = trunc i64 %1350 to i32
  %1352 = and i32 %1351, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352)
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1357 = icmp eq i64 %1350, 0
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %29, align 1
  %1359 = lshr i64 %1350, 63
  %1360 = trunc i64 %1359 to i8
  store i8 %1360, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v73 = select i1 %1357, i64 194, i64 26
  %1361 = add i64 %1336, %.v73
  store i64 %1361, i64* %3, align 8
  br i1 %1357, label %block_.L_42d0ef, label %block_42d047

block_42d047:                                     ; preds = %block_42d02d
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 217, i64* %RSI.i898, align 8
  %1362 = add i64 %1361, 19
  store i64 %1362, i64* %3, align 8
  %1363 = load i64, i64* %1304, align 8
  store i64 %1363, i64* %RAX.i900, align 8
  %1364 = add i64 %1363, 224
  %1365 = add i64 %1361, 26
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366, align 8
  store i64 %1367, i64* %RAX.i900, align 8
  %1368 = add i64 %1361, 30
  store i64 %1368, i64* %3, align 8
  %1369 = load i32, i32* %1299, align 4
  %1370 = sext i32 %1369 to i64
  store i64 %1370, i64* %RCX.i889, align 8
  %1371 = shl nsw i64 %1370, 3
  %1372 = add i64 %1371, %1367
  %1373 = add i64 %1361, 34
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i64*
  %1375 = load i64, i64* %1374, align 8
  store i64 %1375, i64* %RAX.i900, align 8
  %1376 = add i64 %1361, 38
  store i64 %1376, i64* %3, align 8
  %1377 = load i64, i64* %1304, align 8
  store i64 %1377, i64* %RCX.i889, align 8
  %1378 = add i64 %1377, 320
  %1379 = add i64 %1361, 45
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i32*
  %1381 = load i32, i32* %1380, align 4
  %1382 = sext i32 %1381 to i64
  %1383 = shl nsw i64 %1382, 3
  store i64 %1383, i64* %RCX.i889, align 8
  %.lobit29 = lshr i32 %1381, 31
  %1384 = trunc i32 %.lobit29 to i8
  store i8 %1384, i8* %14, align 1
  %1385 = trunc i64 %1383 to i32
  %1386 = and i32 %1385, 248
  %1387 = tail call i32 @llvm.ctpop.i32(i32 %1386)
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  %1390 = xor i8 %1389, 1
  store i8 %1390, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1391 = icmp eq i32 %1381, 0
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %29, align 1
  %1393 = lshr i64 %1382, 60
  %1394 = trunc i64 %1393 to i8
  %1395 = and i8 %1394, 1
  store i8 %1395, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1375, i64* %RDX.i872, align 8
  %1396 = add i64 %1361, 102505
  %1397 = add i64 %1361, 57
  %1398 = load i64, i64* %6, align 8
  %1399 = add i64 %1398, -8
  %1400 = inttoptr i64 %1399 to i64*
  store i64 %1397, i64* %1400, align 8
  store i64 %1399, i64* %6, align 8
  store i64 %1396, i64* %3, align 8
  %call2_42d07b = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %1396, %struct.Memory* %MEMORY.4)
  %1401 = load i64, i64* %RBP.i, align 8
  %1402 = add i64 %1401, -8
  %1403 = load i64, i64* %3, align 8
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1402 to i64*
  %1406 = load i64, i64* %1405, align 8
  store i64 %1406, i64* %RCX.i889, align 8
  %1407 = add i64 %1406, 224
  %1408 = add i64 %1403, 11
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %RCX.i889, align 8
  %1411 = add i64 %1401, -12
  %1412 = add i64 %1403, 15
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i32*
  %1414 = load i32, i32* %1413, align 4
  %1415 = sext i32 %1414 to i64
  store i64 %1415, i64* %RDX.i872, align 8
  %1416 = shl nsw i64 %1415, 3
  %1417 = add i64 %1416, %1410
  %1418 = load i64, i64* %RAX.i900, align 8
  %1419 = add i64 %1403, 19
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1417 to i64*
  store i64 %1418, i64* %1420, align 8
  %1421 = load i64, i64* %RBP.i, align 8
  %1422 = add i64 %1421, -8
  %1423 = load i64, i64* %3, align 8
  %1424 = add i64 %1423, 4
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1422 to i64*
  %1426 = load i64, i64* %1425, align 8
  store i64 %1426, i64* %RAX.i900, align 8
  %1427 = add i64 %1426, 320
  %1428 = add i64 %1423, 10
  store i64 %1428, i64* %3, align 8
  %1429 = inttoptr i64 %1427 to i32*
  %1430 = load i32, i32* %1429, align 4
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %RSI.i898, align 8
  %1432 = add i64 %1423, 14
  store i64 %1432, i64* %3, align 8
  %1433 = load i64, i64* %1425, align 8
  store i64 %1433, i64* %RAX.i900, align 8
  %1434 = add i64 %1433, 324
  %1435 = add i64 %1423, 20
  store i64 %1435, i64* %3, align 8
  %1436 = inttoptr i64 %1434 to i32*
  %1437 = load i32, i32* %1436, align 4
  %1438 = sub i32 %1430, %1437
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RSI.i898, align 8
  %1440 = icmp ult i32 %1430, %1437
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %14, align 1
  %1442 = and i32 %1438, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %21, align 1
  %1447 = xor i32 %1437, %1430
  %1448 = xor i32 %1447, %1438
  %1449 = lshr i32 %1448, 4
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  store i8 %1451, i8* %26, align 1
  %1452 = icmp eq i32 %1438, 0
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %29, align 1
  %1454 = lshr i32 %1438, 31
  %1455 = trunc i32 %1454 to i8
  store i8 %1455, i8* %32, align 1
  %1456 = lshr i32 %1430, 31
  %1457 = lshr i32 %1437, 31
  %1458 = xor i32 %1457, %1456
  %1459 = xor i32 %1454, %1456
  %1460 = add nuw nsw i32 %1459, %1458
  %1461 = icmp eq i32 %1460, 2
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %38, align 1
  %1463 = add i64 %1421, -16
  %1464 = add i64 %1423, 23
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i32*
  store i32 %1438, i32* %1465, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_42d0aa

block_.L_42d0aa:                                  ; preds = %block_42d0bd, %block_42d047
  %1466 = phi i64 [ %1562, %block_42d0bd ], [ %.pre49, %block_42d047 ]
  %1467 = load i64, i64* %RBP.i, align 8
  %1468 = add i64 %1467, -16
  %1469 = add i64 %1466, 3
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i32*
  %1471 = load i32, i32* %1470, align 4
  %1472 = zext i32 %1471 to i64
  store i64 %1472, i64* %RAX.i900, align 8
  %1473 = add i64 %1467, -8
  %1474 = add i64 %1466, 7
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i64*
  %1476 = load i64, i64* %1475, align 8
  store i64 %1476, i64* %RCX.i889, align 8
  %1477 = add i64 %1476, 320
  %1478 = add i64 %1466, 13
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1477 to i32*
  %1480 = load i32, i32* %1479, align 4
  %1481 = sub i32 %1471, %1480
  %1482 = icmp ult i32 %1471, %1480
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %14, align 1
  %1484 = and i32 %1481, 255
  %1485 = tail call i32 @llvm.ctpop.i32(i32 %1484)
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = xor i8 %1487, 1
  store i8 %1488, i8* %21, align 1
  %1489 = xor i32 %1480, %1471
  %1490 = xor i32 %1489, %1481
  %1491 = lshr i32 %1490, 4
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  store i8 %1493, i8* %26, align 1
  %1494 = icmp eq i32 %1481, 0
  %1495 = zext i1 %1494 to i8
  store i8 %1495, i8* %29, align 1
  %1496 = lshr i32 %1481, 31
  %1497 = trunc i32 %1496 to i8
  store i8 %1497, i8* %32, align 1
  %1498 = lshr i32 %1471, 31
  %1499 = lshr i32 %1480, 31
  %1500 = xor i32 %1499, %1498
  %1501 = xor i32 %1496, %1498
  %1502 = add nuw nsw i32 %1501, %1500
  %1503 = icmp eq i32 %1502, 2
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %38, align 1
  %1505 = icmp ne i8 %1497, 0
  %1506 = xor i1 %1505, %1503
  %.v74 = select i1 %1506, i64 19, i64 64
  %1507 = add i64 %1466, %.v74
  store i64 %1507, i64* %3, align 8
  br i1 %1506, label %block_42d0bd, label %block_.L_42d0ea

block_42d0bd:                                     ; preds = %block_.L_42d0aa
  %1508 = add i64 %1507, 4
  store i64 %1508, i64* %3, align 8
  %1509 = load i64, i64* %1475, align 8
  store i64 %1509, i64* %RAX.i900, align 8
  %1510 = add i64 %1509, 224
  %1511 = add i64 %1507, 11
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i64*
  %1513 = load i64, i64* %1512, align 8
  store i64 %1513, i64* %RAX.i900, align 8
  %1514 = add i64 %1467, -12
  %1515 = add i64 %1507, 15
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i32*
  %1517 = load i32, i32* %1516, align 4
  %1518 = sext i32 %1517 to i64
  store i64 %1518, i64* %RCX.i889, align 8
  %1519 = shl nsw i64 %1518, 3
  %1520 = add i64 %1519, %1513
  %1521 = add i64 %1507, 19
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i64*
  %1523 = load i64, i64* %1522, align 8
  store i64 %1523, i64* %RAX.i900, align 8
  %1524 = add i64 %1507, 23
  store i64 %1524, i64* %3, align 8
  %1525 = load i32, i32* %1470, align 4
  %1526 = sext i32 %1525 to i64
  store i64 %1526, i64* %RCX.i889, align 8
  %1527 = shl nsw i64 %1526, 3
  %1528 = add i64 %1527, %1523
  %1529 = add i64 %1507, 31
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i64*
  store i64 0, i64* %1530, align 8
  %1531 = load i64, i64* %RBP.i, align 8
  %1532 = add i64 %1531, -16
  %1533 = load i64, i64* %3, align 8
  %1534 = add i64 %1533, 3
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1532 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = add i32 %1536, 1
  %1538 = zext i32 %1537 to i64
  store i64 %1538, i64* %RAX.i900, align 8
  %1539 = icmp eq i32 %1536, -1
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
  %1548 = xor i32 %1537, %1536
  %1549 = lshr i32 %1548, 4
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %26, align 1
  %1552 = zext i1 %1540 to i8
  store i8 %1552, i8* %29, align 1
  %1553 = lshr i32 %1537, 31
  %1554 = trunc i32 %1553 to i8
  store i8 %1554, i8* %32, align 1
  %1555 = lshr i32 %1536, 31
  %1556 = xor i32 %1553, %1555
  %1557 = add nuw nsw i32 %1556, %1553
  %1558 = icmp eq i32 %1557, 2
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %38, align 1
  %1560 = add i64 %1533, 9
  store i64 %1560, i64* %3, align 8
  store i32 %1537, i32* %1535, align 4
  %1561 = load i64, i64* %3, align 8
  %1562 = add i64 %1561, -59
  store i64 %1562, i64* %3, align 8
  br label %block_.L_42d0aa

block_.L_42d0ea:                                  ; preds = %block_.L_42d0aa
  %1563 = add i64 %1507, 5
  store i64 %1563, i64* %3, align 8
  br label %block_.L_42d0ef

block_.L_42d0ef:                                  ; preds = %block_.L_42d0ea, %block_42d02d
  %1564 = phi i64 [ %1467, %block_.L_42d0ea ], [ %1296, %block_42d02d ]
  %1565 = phi i64 [ %1563, %block_.L_42d0ea ], [ %1361, %block_42d02d ]
  %1566 = add i64 %1564, -12
  %1567 = add i64 %1565, 8
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i32*
  %1569 = load i32, i32* %1568, align 4
  %1570 = add i32 %1569, 1
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %RAX.i900, align 8
  %1572 = icmp eq i32 %1569, -1
  %1573 = icmp eq i32 %1570, 0
  %1574 = or i1 %1572, %1573
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %14, align 1
  %1576 = and i32 %1570, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %21, align 1
  %1581 = xor i32 %1570, %1569
  %1582 = lshr i32 %1581, 4
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  store i8 %1584, i8* %26, align 1
  %1585 = zext i1 %1573 to i8
  store i8 %1585, i8* %29, align 1
  %1586 = lshr i32 %1570, 31
  %1587 = trunc i32 %1586 to i8
  store i8 %1587, i8* %32, align 1
  %1588 = lshr i32 %1569, 31
  %1589 = xor i32 %1586, %1588
  %1590 = add nuw nsw i32 %1589, %1586
  %1591 = icmp eq i32 %1590, 2
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %38, align 1
  %1593 = add i64 %1565, 14
  store i64 %1593, i64* %3, align 8
  store i32 %1570, i32* %1568, align 4
  %1594 = load i64, i64* %3, align 8
  %1595 = add i64 %1594, -227
  store i64 %1595, i64* %3, align 8
  br label %block_.L_42d01a

block_.L_42d102:                                  ; preds = %block_.L_42d01a
  %1596 = add i64 %1336, 5
  store i64 %1596, i64* %3, align 8
  br label %block_.L_42d107

block_.L_42d107:                                  ; preds = %block_.L_42d102, %block_.L_42d001
  %1597 = phi i64 [ %1293, %block_.L_42d001 ], [ %1596, %block_.L_42d102 ]
  %1598 = phi i64 [ %682, %block_.L_42d001 ], [ %1296, %block_.L_42d102 ]
  %1599 = add i64 %1598, -8
  %1600 = add i64 %1597, 4
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i64*
  %1602 = load i64, i64* %1601, align 8
  store i64 %1602, i64* %RAX.i900, align 8
  %1603 = add i64 %1602, 288
  %1604 = add i64 %1597, 12
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to i64*
  %1606 = load i64, i64* %1605, align 8
  store i8 0, i8* %14, align 1
  %1607 = trunc i64 %1606 to i32
  %1608 = and i32 %1607, 255
  %1609 = tail call i32 @llvm.ctpop.i32(i32 %1608)
  %1610 = trunc i32 %1609 to i8
  %1611 = and i8 %1610, 1
  %1612 = xor i8 %1611, 1
  store i8 %1612, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1613 = icmp eq i64 %1606, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %29, align 1
  %1615 = lshr i64 %1606, 63
  %1616 = trunc i64 %1615 to i8
  store i8 %1616, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v69 = select i1 %1613, i64 262, i64 18
  %1617 = add i64 %1597, %.v69
  store i64 %1617, i64* %3, align 8
  br i1 %1613, label %block_.L_42d20d, label %block_42d119

block_42d119:                                     ; preds = %block_.L_42d107
  %1618 = add i64 %1598, -12
  %1619 = add i64 %1617, 7
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i32*
  store i32 0, i32* %1620, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_42d120

block_.L_42d120:                                  ; preds = %block_.L_42d1f5, %block_42d119
  %1621 = phi i64 [ %.pre50, %block_42d119 ], [ %1921, %block_.L_42d1f5 ]
  %1622 = load i64, i64* %RBP.i, align 8
  %1623 = add i64 %1622, -12
  %1624 = add i64 %1621, 3
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i32*
  %1626 = load i32, i32* %1625, align 4
  %1627 = zext i32 %1626 to i64
  store i64 %1627, i64* %RAX.i900, align 8
  %1628 = add i64 %1622, -8
  %1629 = add i64 %1621, 7
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i64*
  %1631 = load i64, i64* %1630, align 8
  store i64 %1631, i64* %RCX.i889, align 8
  %1632 = add i64 %1631, 304
  %1633 = add i64 %1621, 13
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i32*
  %1635 = load i32, i32* %1634, align 4
  %1636 = sub i32 %1626, %1635
  %1637 = icmp ult i32 %1626, %1635
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %14, align 1
  %1639 = and i32 %1636, 255
  %1640 = tail call i32 @llvm.ctpop.i32(i32 %1639)
  %1641 = trunc i32 %1640 to i8
  %1642 = and i8 %1641, 1
  %1643 = xor i8 %1642, 1
  store i8 %1643, i8* %21, align 1
  %1644 = xor i32 %1635, %1626
  %1645 = xor i32 %1644, %1636
  %1646 = lshr i32 %1645, 4
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  store i8 %1648, i8* %26, align 1
  %1649 = icmp eq i32 %1636, 0
  %1650 = zext i1 %1649 to i8
  store i8 %1650, i8* %29, align 1
  %1651 = lshr i32 %1636, 31
  %1652 = trunc i32 %1651 to i8
  store i8 %1652, i8* %32, align 1
  %1653 = lshr i32 %1626, 31
  %1654 = lshr i32 %1635, 31
  %1655 = xor i32 %1654, %1653
  %1656 = xor i32 %1651, %1653
  %1657 = add nuw nsw i32 %1656, %1655
  %1658 = icmp eq i32 %1657, 2
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %38, align 1
  %1660 = icmp ne i8 %1652, 0
  %1661 = xor i1 %1660, %1658
  %.v70 = select i1 %1661, i64 19, i64 232
  %1662 = add i64 %1621, %.v70
  store i64 %1662, i64* %3, align 8
  br i1 %1661, label %block_42d133, label %block_.L_42d208

block_42d133:                                     ; preds = %block_.L_42d120
  %1663 = add i64 %1662, 4
  store i64 %1663, i64* %3, align 8
  %1664 = load i64, i64* %1630, align 8
  store i64 %1664, i64* %RAX.i900, align 8
  %1665 = add i64 %1664, 288
  %1666 = add i64 %1662, 11
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i64*
  %1668 = load i64, i64* %1667, align 8
  store i64 %1668, i64* %RAX.i900, align 8
  %1669 = add i64 %1662, 15
  store i64 %1669, i64* %3, align 8
  %1670 = load i32, i32* %1625, align 4
  %1671 = sext i32 %1670 to i64
  store i64 %1671, i64* %RCX.i889, align 8
  %1672 = shl nsw i64 %1671, 3
  %1673 = add i64 %1672, %1668
  %1674 = add i64 %1662, 20
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1673 to i64*
  %1676 = load i64, i64* %1675, align 8
  store i8 0, i8* %14, align 1
  %1677 = trunc i64 %1676 to i32
  %1678 = and i32 %1677, 255
  %1679 = tail call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  store i8 %1682, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1683 = icmp eq i64 %1676, 0
  %1684 = zext i1 %1683 to i8
  store i8 %1684, i8* %29, align 1
  %1685 = lshr i64 %1676, 63
  %1686 = trunc i64 %1685 to i8
  store i8 %1686, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v71 = select i1 %1683, i64 194, i64 26
  %1687 = add i64 %1662, %.v71
  store i64 %1687, i64* %3, align 8
  br i1 %1683, label %block_.L_42d1f5, label %block_42d14d

block_42d14d:                                     ; preds = %block_42d133
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI.i895, align 8
  store i64 232, i64* %RSI.i898, align 8
  %1688 = add i64 %1687, 19
  store i64 %1688, i64* %3, align 8
  %1689 = load i64, i64* %1630, align 8
  store i64 %1689, i64* %RAX.i900, align 8
  %1690 = add i64 %1689, 288
  %1691 = add i64 %1687, 26
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i64*
  %1693 = load i64, i64* %1692, align 8
  store i64 %1693, i64* %RAX.i900, align 8
  %1694 = add i64 %1687, 30
  store i64 %1694, i64* %3, align 8
  %1695 = load i32, i32* %1625, align 4
  %1696 = sext i32 %1695 to i64
  store i64 %1696, i64* %RCX.i889, align 8
  %1697 = shl nsw i64 %1696, 3
  %1698 = add i64 %1697, %1693
  %1699 = add i64 %1687, 34
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1698 to i64*
  %1701 = load i64, i64* %1700, align 8
  store i64 %1701, i64* %RAX.i900, align 8
  %1702 = add i64 %1687, 38
  store i64 %1702, i64* %3, align 8
  %1703 = load i64, i64* %1630, align 8
  store i64 %1703, i64* %RCX.i889, align 8
  %1704 = add i64 %1703, 320
  %1705 = add i64 %1687, 45
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i32*
  %1707 = load i32, i32* %1706, align 4
  %1708 = sext i32 %1707 to i64
  %1709 = shl nsw i64 %1708, 3
  store i64 %1709, i64* %RCX.i889, align 8
  %.lobit30 = lshr i32 %1707, 31
  %1710 = trunc i32 %.lobit30 to i8
  store i8 %1710, i8* %14, align 1
  %1711 = trunc i64 %1709 to i32
  %1712 = and i32 %1711, 248
  %1713 = tail call i32 @llvm.ctpop.i32(i32 %1712)
  %1714 = trunc i32 %1713 to i8
  %1715 = and i8 %1714, 1
  %1716 = xor i8 %1715, 1
  store i8 %1716, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1717 = icmp eq i32 %1707, 0
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %29, align 1
  %1719 = lshr i64 %1708, 60
  %1720 = trunc i64 %1719 to i8
  %1721 = and i8 %1720, 1
  store i8 %1721, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1701, i64* %RDX.i872, align 8
  %1722 = add i64 %1687, 102243
  %1723 = add i64 %1687, 57
  %1724 = load i64, i64* %6, align 8
  %1725 = add i64 %1724, -8
  %1726 = inttoptr i64 %1725 to i64*
  store i64 %1723, i64* %1726, align 8
  store i64 %1725, i64* %6, align 8
  store i64 %1722, i64* %3, align 8
  %call2_42d181 = tail call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* nonnull %0, i64 %1722, %struct.Memory* %MEMORY.4)
  %1727 = load i64, i64* %RBP.i, align 8
  %1728 = add i64 %1727, -8
  %1729 = load i64, i64* %3, align 8
  %1730 = add i64 %1729, 4
  store i64 %1730, i64* %3, align 8
  %1731 = inttoptr i64 %1728 to i64*
  %1732 = load i64, i64* %1731, align 8
  store i64 %1732, i64* %RCX.i889, align 8
  %1733 = add i64 %1732, 288
  %1734 = add i64 %1729, 11
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i64*
  %1736 = load i64, i64* %1735, align 8
  store i64 %1736, i64* %RCX.i889, align 8
  %1737 = add i64 %1727, -12
  %1738 = add i64 %1729, 15
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i32*
  %1740 = load i32, i32* %1739, align 4
  %1741 = sext i32 %1740 to i64
  store i64 %1741, i64* %RDX.i872, align 8
  %1742 = shl nsw i64 %1741, 3
  %1743 = add i64 %1742, %1736
  %1744 = load i64, i64* %RAX.i900, align 8
  %1745 = add i64 %1729, 19
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1743 to i64*
  store i64 %1744, i64* %1746, align 8
  %1747 = load i64, i64* %RBP.i, align 8
  %1748 = add i64 %1747, -8
  %1749 = load i64, i64* %3, align 8
  %1750 = add i64 %1749, 4
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1748 to i64*
  %1752 = load i64, i64* %1751, align 8
  store i64 %1752, i64* %RAX.i900, align 8
  %1753 = add i64 %1752, 320
  %1754 = add i64 %1749, 10
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = zext i32 %1756 to i64
  store i64 %1757, i64* %RSI.i898, align 8
  %1758 = add i64 %1749, 14
  store i64 %1758, i64* %3, align 8
  %1759 = load i64, i64* %1751, align 8
  store i64 %1759, i64* %RAX.i900, align 8
  %1760 = add i64 %1759, 324
  %1761 = add i64 %1749, 20
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i32*
  %1763 = load i32, i32* %1762, align 4
  %1764 = sub i32 %1756, %1763
  %1765 = zext i32 %1764 to i64
  store i64 %1765, i64* %RSI.i898, align 8
  %1766 = icmp ult i32 %1756, %1763
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %14, align 1
  %1768 = and i32 %1764, 255
  %1769 = tail call i32 @llvm.ctpop.i32(i32 %1768)
  %1770 = trunc i32 %1769 to i8
  %1771 = and i8 %1770, 1
  %1772 = xor i8 %1771, 1
  store i8 %1772, i8* %21, align 1
  %1773 = xor i32 %1763, %1756
  %1774 = xor i32 %1773, %1764
  %1775 = lshr i32 %1774, 4
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  store i8 %1777, i8* %26, align 1
  %1778 = icmp eq i32 %1764, 0
  %1779 = zext i1 %1778 to i8
  store i8 %1779, i8* %29, align 1
  %1780 = lshr i32 %1764, 31
  %1781 = trunc i32 %1780 to i8
  store i8 %1781, i8* %32, align 1
  %1782 = lshr i32 %1756, 31
  %1783 = lshr i32 %1763, 31
  %1784 = xor i32 %1783, %1782
  %1785 = xor i32 %1780, %1782
  %1786 = add nuw nsw i32 %1785, %1784
  %1787 = icmp eq i32 %1786, 2
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %38, align 1
  %1789 = add i64 %1747, -16
  %1790 = add i64 %1749, 23
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i32*
  store i32 %1764, i32* %1791, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_42d1b0

block_.L_42d1b0:                                  ; preds = %block_42d1c3, %block_42d14d
  %1792 = phi i64 [ %1888, %block_42d1c3 ], [ %.pre51, %block_42d14d ]
  %1793 = load i64, i64* %RBP.i, align 8
  %1794 = add i64 %1793, -16
  %1795 = add i64 %1792, 3
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i32*
  %1797 = load i32, i32* %1796, align 4
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RAX.i900, align 8
  %1799 = add i64 %1793, -8
  %1800 = add i64 %1792, 7
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i64*
  %1802 = load i64, i64* %1801, align 8
  store i64 %1802, i64* %RCX.i889, align 8
  %1803 = add i64 %1802, 320
  %1804 = add i64 %1792, 13
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1803 to i32*
  %1806 = load i32, i32* %1805, align 4
  %1807 = sub i32 %1797, %1806
  %1808 = icmp ult i32 %1797, %1806
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %14, align 1
  %1810 = and i32 %1807, 255
  %1811 = tail call i32 @llvm.ctpop.i32(i32 %1810)
  %1812 = trunc i32 %1811 to i8
  %1813 = and i8 %1812, 1
  %1814 = xor i8 %1813, 1
  store i8 %1814, i8* %21, align 1
  %1815 = xor i32 %1806, %1797
  %1816 = xor i32 %1815, %1807
  %1817 = lshr i32 %1816, 4
  %1818 = trunc i32 %1817 to i8
  %1819 = and i8 %1818, 1
  store i8 %1819, i8* %26, align 1
  %1820 = icmp eq i32 %1807, 0
  %1821 = zext i1 %1820 to i8
  store i8 %1821, i8* %29, align 1
  %1822 = lshr i32 %1807, 31
  %1823 = trunc i32 %1822 to i8
  store i8 %1823, i8* %32, align 1
  %1824 = lshr i32 %1797, 31
  %1825 = lshr i32 %1806, 31
  %1826 = xor i32 %1825, %1824
  %1827 = xor i32 %1822, %1824
  %1828 = add nuw nsw i32 %1827, %1826
  %1829 = icmp eq i32 %1828, 2
  %1830 = zext i1 %1829 to i8
  store i8 %1830, i8* %38, align 1
  %1831 = icmp ne i8 %1823, 0
  %1832 = xor i1 %1831, %1829
  %.v72 = select i1 %1832, i64 19, i64 64
  %1833 = add i64 %1792, %.v72
  store i64 %1833, i64* %3, align 8
  br i1 %1832, label %block_42d1c3, label %block_.L_42d1f0

block_42d1c3:                                     ; preds = %block_.L_42d1b0
  %1834 = add i64 %1833, 4
  store i64 %1834, i64* %3, align 8
  %1835 = load i64, i64* %1801, align 8
  store i64 %1835, i64* %RAX.i900, align 8
  %1836 = add i64 %1835, 288
  %1837 = add i64 %1833, 11
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i64*
  %1839 = load i64, i64* %1838, align 8
  store i64 %1839, i64* %RAX.i900, align 8
  %1840 = add i64 %1793, -12
  %1841 = add i64 %1833, 15
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1840 to i32*
  %1843 = load i32, i32* %1842, align 4
  %1844 = sext i32 %1843 to i64
  store i64 %1844, i64* %RCX.i889, align 8
  %1845 = shl nsw i64 %1844, 3
  %1846 = add i64 %1845, %1839
  %1847 = add i64 %1833, 19
  store i64 %1847, i64* %3, align 8
  %1848 = inttoptr i64 %1846 to i64*
  %1849 = load i64, i64* %1848, align 8
  store i64 %1849, i64* %RAX.i900, align 8
  %1850 = add i64 %1833, 23
  store i64 %1850, i64* %3, align 8
  %1851 = load i32, i32* %1796, align 4
  %1852 = sext i32 %1851 to i64
  store i64 %1852, i64* %RCX.i889, align 8
  %1853 = shl nsw i64 %1852, 3
  %1854 = add i64 %1853, %1849
  %1855 = add i64 %1833, 31
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i64*
  store i64 0, i64* %1856, align 8
  %1857 = load i64, i64* %RBP.i, align 8
  %1858 = add i64 %1857, -16
  %1859 = load i64, i64* %3, align 8
  %1860 = add i64 %1859, 3
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1858 to i32*
  %1862 = load i32, i32* %1861, align 4
  %1863 = add i32 %1862, 1
  %1864 = zext i32 %1863 to i64
  store i64 %1864, i64* %RAX.i900, align 8
  %1865 = icmp eq i32 %1862, -1
  %1866 = icmp eq i32 %1863, 0
  %1867 = or i1 %1865, %1866
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %14, align 1
  %1869 = and i32 %1863, 255
  %1870 = tail call i32 @llvm.ctpop.i32(i32 %1869)
  %1871 = trunc i32 %1870 to i8
  %1872 = and i8 %1871, 1
  %1873 = xor i8 %1872, 1
  store i8 %1873, i8* %21, align 1
  %1874 = xor i32 %1863, %1862
  %1875 = lshr i32 %1874, 4
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  store i8 %1877, i8* %26, align 1
  %1878 = zext i1 %1866 to i8
  store i8 %1878, i8* %29, align 1
  %1879 = lshr i32 %1863, 31
  %1880 = trunc i32 %1879 to i8
  store i8 %1880, i8* %32, align 1
  %1881 = lshr i32 %1862, 31
  %1882 = xor i32 %1879, %1881
  %1883 = add nuw nsw i32 %1882, %1879
  %1884 = icmp eq i32 %1883, 2
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %38, align 1
  %1886 = add i64 %1859, 9
  store i64 %1886, i64* %3, align 8
  store i32 %1863, i32* %1861, align 4
  %1887 = load i64, i64* %3, align 8
  %1888 = add i64 %1887, -59
  store i64 %1888, i64* %3, align 8
  br label %block_.L_42d1b0

block_.L_42d1f0:                                  ; preds = %block_.L_42d1b0
  %1889 = add i64 %1833, 5
  store i64 %1889, i64* %3, align 8
  br label %block_.L_42d1f5

block_.L_42d1f5:                                  ; preds = %block_.L_42d1f0, %block_42d133
  %1890 = phi i64 [ %1793, %block_.L_42d1f0 ], [ %1622, %block_42d133 ]
  %1891 = phi i64 [ %1889, %block_.L_42d1f0 ], [ %1687, %block_42d133 ]
  %1892 = add i64 %1890, -12
  %1893 = add i64 %1891, 8
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i32*
  %1895 = load i32, i32* %1894, align 4
  %1896 = add i32 %1895, 1
  %1897 = zext i32 %1896 to i64
  store i64 %1897, i64* %RAX.i900, align 8
  %1898 = icmp eq i32 %1895, -1
  %1899 = icmp eq i32 %1896, 0
  %1900 = or i1 %1898, %1899
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %14, align 1
  %1902 = and i32 %1896, 255
  %1903 = tail call i32 @llvm.ctpop.i32(i32 %1902)
  %1904 = trunc i32 %1903 to i8
  %1905 = and i8 %1904, 1
  %1906 = xor i8 %1905, 1
  store i8 %1906, i8* %21, align 1
  %1907 = xor i32 %1896, %1895
  %1908 = lshr i32 %1907, 4
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  store i8 %1910, i8* %26, align 1
  %1911 = zext i1 %1899 to i8
  store i8 %1911, i8* %29, align 1
  %1912 = lshr i32 %1896, 31
  %1913 = trunc i32 %1912 to i8
  store i8 %1913, i8* %32, align 1
  %1914 = lshr i32 %1895, 31
  %1915 = xor i32 %1912, %1914
  %1916 = add nuw nsw i32 %1915, %1912
  %1917 = icmp eq i32 %1916, 2
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %38, align 1
  %1919 = add i64 %1891, 14
  store i64 %1919, i64* %3, align 8
  store i32 %1896, i32* %1894, align 4
  %1920 = load i64, i64* %3, align 8
  %1921 = add i64 %1920, -227
  store i64 %1921, i64* %3, align 8
  br label %block_.L_42d120

block_.L_42d208:                                  ; preds = %block_.L_42d120
  %1922 = add i64 %1662, 5
  store i64 %1922, i64* %3, align 8
  br label %block_.L_42d20d

block_.L_42d20d:                                  ; preds = %block_.L_42d208, %block_.L_42d107
  %1923 = phi i64 [ %1617, %block_.L_42d107 ], [ %1922, %block_.L_42d208 ]
  %1924 = load i64, i64* %6, align 8
  %1925 = add i64 %1924, 32
  store i64 %1925, i64* %6, align 8
  %1926 = icmp ugt i64 %1924, -33
  %1927 = zext i1 %1926 to i8
  store i8 %1927, i8* %14, align 1
  %1928 = trunc i64 %1925 to i32
  %1929 = and i32 %1928, 255
  %1930 = tail call i32 @llvm.ctpop.i32(i32 %1929)
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  %1933 = xor i8 %1932, 1
  store i8 %1933, i8* %21, align 1
  %1934 = xor i64 %1925, %1924
  %1935 = lshr i64 %1934, 4
  %1936 = trunc i64 %1935 to i8
  %1937 = and i8 %1936, 1
  store i8 %1937, i8* %26, align 1
  %1938 = icmp eq i64 %1925, 0
  %1939 = zext i1 %1938 to i8
  store i8 %1939, i8* %29, align 1
  %1940 = lshr i64 %1925, 63
  %1941 = trunc i64 %1940 to i8
  store i8 %1941, i8* %32, align 1
  %1942 = lshr i64 %1924, 63
  %1943 = xor i64 %1940, %1942
  %1944 = add nuw nsw i64 %1943, %1940
  %1945 = icmp eq i64 %1944, 2
  %1946 = zext i1 %1945 to i8
  store i8 %1946, i8* %38, align 1
  %1947 = add i64 %1923, 5
  store i64 %1947, i64* %3, align 8
  %1948 = add i64 %1924, 40
  %1949 = inttoptr i64 %1925 to i64*
  %1950 = load i64, i64* %1949, align 8
  store i64 %1950, i64* %RBP.i, align 8
  store i64 %1948, i64* %6, align 8
  %1951 = add i64 %1923, 6
  store i64 %1951, i64* %3, align 8
  %1952 = inttoptr i64 %1948 to i64*
  %1953 = load i64, i64* %1952, align 8
  store i64 %1953, i64* %3, align 8
  %1954 = add i64 %1924, 48
  store i64 %1954, i64* %6, align 8
  ret %struct.Memory* %MEMORY.4
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
define %struct.Memory* @routine_movq__0x45882f___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 162, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x144__rdi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 324
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
define %struct.Memory* @routine_addl_0x140__rdi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 320
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl__ecx__0x140__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 320
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_0x140__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_realloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45882f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45882f_type* @G__0x45882f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 163, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
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
define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x140__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 320
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
define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa4___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 164, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 165, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x148__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x70__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
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
define %struct.Memory* @routine_je_.L_42cc96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xa8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 168, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 169, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x70__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x150__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x150__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 336
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x78__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
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
define %struct.Memory* @routine_je_.L_42cd17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xac___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 172, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xad___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 173, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x78__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x158__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x158__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 344
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 96
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
define %struct.Memory* @routine_je_.L_42cd5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xb0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 176, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rax__0x60__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x68__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 104
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
define %struct.Memory* @routine_je_.L_42cda1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xb2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 178, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rax__0x68__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x140__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 320
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
define %struct.Memory* @routine_subl_0x144__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 324
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
define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x140__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 320
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
define %struct.Memory* @routine_jge_.L_42d001(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x27951__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x27951__rip__type* @G_0x27951__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movq__0x0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  store i64 0, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42ce1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42ce3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42ce99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xbd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 189, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_shlq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42ceac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42cf58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42cf2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xc3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 195, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42cf42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42cfee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42cfc4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xc9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 201, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x78__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42cfd8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42cff3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42cdb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0xe0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_je_.L_42d107(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xf0__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 240
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
define %struct.Memory* @routine_jge_.L_42d102(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xe0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = trunc i64 %10 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i64 %10, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i64 %10, 63
  %24 = trunc i64 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42d0ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xd9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 217, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xe0__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x140__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 320
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
define %struct.Memory* @routine_subl_0x144__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 324
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jge_.L_42d0ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d0aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d0ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d0f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d01a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d107(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0x120__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_je_.L_42d20d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x130__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 304
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
define %struct.Memory* @routine_jge_.L_42d208(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x120__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42d1f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xe8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 232, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x120__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42d1f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42d1b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d1f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d1fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d120(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42d20d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
