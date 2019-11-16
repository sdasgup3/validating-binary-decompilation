; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xb6eec4_type = type <{ [4 x i8] }>
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
@G_0xb6eec4 = local_unnamed_addr global %G_0xb6eec4_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_40f200.is_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409590.is_suicide(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40db00.tryko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @komaster_trymove(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i520 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R14.i520, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %RBX.i518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %16 = load i64, i64* %RBX.i518, align 8
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %3, align 8
  %19 = add i64 %7, -24
  %20 = inttoptr i64 %19 to i64*
  store i64 %16, i64* %20, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %7, -120
  store i64 %22, i64* %6, align 8
  %23 = icmp ult i64 %19, 96
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = trunc i64 %22 to i32
  %27 = and i32 %26, 255
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = xor i64 %19, %22
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %22, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %22, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %19, 63
  %45 = xor i64 %41, %44
  %46 = add nuw nsw i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i513 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, 40
  %53 = add i64 %21, 7
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %RAX.i513, align 8
  %R10.i511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %57 = add i64 %51, 32
  %58 = add i64 %21, 11
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %R10.i511, align 8
  %R11.i508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %61 = add i64 %51, 24
  %62 = add i64 %21, 15
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %61 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %R11.i508, align 8
  %65 = add i64 %51, 16
  %66 = add i64 %21, 19
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RBX.i518, align 8
  %R14D.i502 = bitcast %union.anon* %11 to i32*
  store i64 3, i64* %R14.i520, align 8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %69 to i32*
  %70 = add i64 %51, -24
  %71 = load i32, i32* %EDI.i, align 4
  %72 = add i64 %21, 28
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %70 to i32*
  store i32 %71, i32* %73, align 4
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %74 to i32*
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -28
  %77 = load i32, i32* %ESI.i, align 4
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 3
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %76 to i32*
  store i32 %77, i32* %80, align 4
  %RDX.i495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -40
  %83 = load i64, i64* %RDX.i495, align 8
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %82 to i64*
  store i64 %83, i64* %86, align 8
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i492 = bitcast %union.anon* %87 to i32*
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -44
  %90 = load i32, i32* %ECX.i492, align 4
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 3
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %89 to i32*
  store i32 %90, i32* %93, align 4
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i489 = bitcast %union.anon* %94 to i32*
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -48
  %97 = load i32, i32* %R8D.i489, align 4
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %96 to i32*
  store i32 %97, i32* %100, align 4
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i486 = bitcast %union.anon* %101 to i32*
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -52
  %104 = load i32, i32* %R9D.i486, align 4
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %103 to i32*
  store i32 %104, i32* %107, align 4
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -64
  %110 = load i64, i64* %RBX.i518, align 8
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113, align 8
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -72
  %116 = load i64, i64* %R11.i508, align 8
  %117 = load i64, i64* %3, align 8
  %118 = add i64 %117, 4
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %115 to i64*
  store i64 %116, i64* %119, align 8
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -80
  %122 = load i64, i64* %R10.i511, align 8
  %123 = load i64, i64* %3, align 8
  %124 = add i64 %123, 4
  store i64 %124, i64* %3, align 8
  %125 = inttoptr i64 %121 to i64*
  store i64 %122, i64* %125, align 8
  %EAX.i476 = bitcast %union.anon* %50 to i32*
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -84
  %128 = load i32, i32* %EAX.i476, align 4
  %129 = load i64, i64* %3, align 8
  %130 = add i64 %129, 3
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %127 to i32*
  store i32 %128, i32* %131, align 4
  %132 = load i32, i32* %R14D.i502, align 4
  %133 = load i64, i64* %RBP.i, align 8
  %134 = add i64 %133, -28
  %135 = load i64, i64* %3, align 8
  %136 = add i64 %135, 4
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %134 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = sub i32 %132, %138
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %R14.i520, align 8
  %141 = icmp ult i32 %132, %138
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %25, align 1
  %143 = and i32 %139, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143)
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %32, align 1
  %148 = xor i32 %138, %132
  %149 = xor i32 %148, %139
  %150 = lshr i32 %149, 4
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %37, align 1
  %153 = icmp eq i32 %139, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %40, align 1
  %155 = lshr i32 %139, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %43, align 1
  %157 = lshr i32 %132, 31
  %158 = lshr i32 %138, 31
  %159 = xor i32 %158, %157
  %160 = xor i32 %155, %157
  %161 = add nuw nsw i32 %160, %159
  %162 = icmp eq i32 %161, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %49, align 1
  %164 = add i64 %133, -88
  %165 = add i64 %135, 8
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  store i32 %139, i32* %166, align 4
  %167 = load i64, i64* %3, align 8
  %168 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RAX.i513, align 8
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -100
  %172 = add i64 %167, 10
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  store i32 %168, i32* %173, align 4
  %174 = load i64, i64* %RBP.i, align 8
  %175 = add i64 %174, -48
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 4
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %175 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = add i32 %179, -1
  %181 = icmp eq i32 %179, 0
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %25, align 1
  %183 = and i32 %180, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183)
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %32, align 1
  %188 = xor i32 %180, %179
  %189 = lshr i32 %188, 4
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  store i8 %191, i8* %37, align 1
  %192 = icmp eq i32 %180, 0
  %193 = zext i1 %192 to i8
  store i8 %193, i8* %40, align 1
  %194 = lshr i32 %180, 31
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %43, align 1
  %196 = lshr i32 %179, 31
  %197 = xor i32 %194, %196
  %198 = add nuw nsw i32 %197, %196
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %49, align 1
  %.v48 = select i1 %192, i64 20, i64 10
  %201 = add i64 %176, %.v48
  store i64 %201, i64* %3, align 8
  br i1 %192, label %block_.L_40ee5a, label %block_40ee50

block_40ee50:                                     ; preds = %entry
  %202 = add i64 %201, 4
  store i64 %202, i64* %3, align 8
  %203 = load i32, i32* %178, align 4
  %204 = add i32 %203, -4
  %205 = icmp ult i32 %203, 4
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %25, align 1
  %207 = and i32 %204, 255
  %208 = tail call i32 @llvm.ctpop.i32(i32 %207)
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  %211 = xor i8 %210, 1
  store i8 %211, i8* %32, align 1
  %212 = xor i32 %204, %203
  %213 = lshr i32 %212, 4
  %214 = trunc i32 %213 to i8
  %215 = and i8 %214, 1
  store i8 %215, i8* %37, align 1
  %216 = icmp eq i32 %204, 0
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %40, align 1
  %218 = lshr i32 %204, 31
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %43, align 1
  %220 = lshr i32 %203, 31
  %221 = xor i32 %218, %220
  %222 = add nuw nsw i32 %221, %220
  %223 = icmp eq i32 %222, 2
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %49, align 1
  %.v49 = select i1 %216, i64 10, i64 100
  %225 = add i64 %201, %.v49
  store i64 %225, i64* %3, align 8
  br i1 %216, label %block_.L_40ee5a, label %block_.L_40eeb4

block_.L_40ee5a:                                  ; preds = %block_40ee50, %entry
  %226 = phi i64 [ %225, %block_40ee50 ], [ %201, %entry ]
  %227 = add i64 %174, -52
  %228 = add i64 %226, 4
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %RAX.i513, align 8
  %RCX.i455 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %232 = add nsw i64 %231, 12099168
  %233 = add i64 %226, 12
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i8*
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i64
  store i64 %236, i64* %RCX.i455, align 8
  %237 = zext i8 %235 to i32
  %238 = add nsw i32 %237, -1
  %239 = icmp eq i8 %235, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %25, align 1
  %241 = and i32 %238, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %32, align 1
  %246 = xor i32 %238, %237
  %247 = lshr i32 %246, 4
  %248 = trunc i32 %247 to i8
  %249 = and i8 %248, 1
  store i8 %249, i8* %37, align 1
  %250 = icmp eq i32 %238, 0
  %251 = zext i1 %250 to i8
  store i8 %251, i8* %40, align 1
  %252 = lshr i32 %238, 31
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v80 = select i1 %250, i64 200, i64 21
  %254 = add i64 %226, %.v80
  store i64 %254, i64* %3, align 8
  br i1 %250, label %block_.L_40ef22, label %block_40ee6f

block_40ee6f:                                     ; preds = %block_.L_40ee5a
  %255 = add i64 %254, 4
  store i64 %255, i64* %3, align 8
  %256 = load i32, i32* %229, align 4
  %257 = sext i32 %256 to i64
  store i64 %257, i64* %RAX.i513, align 8
  %258 = add nsw i64 %257, 12099168
  %259 = add i64 %254, 12
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i8*
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i64
  store i64 %262, i64* %RCX.i455, align 8
  %263 = zext i8 %261 to i32
  %264 = add nsw i32 %263, -2
  %265 = icmp ult i8 %261, 2
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %25, align 1
  %267 = and i32 %264, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %32, align 1
  %272 = xor i32 %264, %263
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %37, align 1
  %276 = icmp eq i32 %264, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %40, align 1
  %278 = lshr i32 %264, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v81 = select i1 %276, i64 179, i64 21
  %280 = add i64 %254, %.v81
  store i64 %280, i64* %3, align 8
  br i1 %276, label %block_.L_40ef22, label %block_40ee84

block_40ee84:                                     ; preds = %block_40ee6f
  %RSI.i440 = getelementptr inbounds %union.anon, %union.anon* %74, i64 0, i32 0
  store i64 2, i64* %RSI.i440, align 8
  %281 = zext i32 %256 to i64
  %282 = xor i64 %281, %257
  %283 = trunc i64 %282 to i32
  %284 = and i64 %282, 4294967295
  store i64 %284, i64* %RAX.i513, align 8
  store i8 0, i8* %25, align 1
  %285 = and i32 %283, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %32, align 1
  %290 = icmp eq i32 %283, 0
  %291 = zext i1 %290 to i8
  store i8 %291, i8* %40, align 1
  %292 = lshr i32 %283, 31
  %293 = trunc i32 %292 to i8
  store i8 %293, i8* %43, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %37, align 1
  %294 = and i64 %282, 4294967295
  store i64 %294, i64* %RDX.i495, align 8
  %RDI.i431 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %295 = add i64 %280, 12
  store i64 %295, i64* %3, align 8
  %296 = load i32, i32* %229, align 4
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RDI.i431, align 8
  %298 = add i64 %280, 892
  %299 = add i64 %280, 17
  %300 = load i64, i64* %6, align 8
  %301 = add i64 %300, -8
  %302 = inttoptr i64 %301 to i64*
  store i64 %299, i64* %302, align 8
  store i64 %301, i64* %6, align 8
  store i64 %298, i64* %3, align 8
  %call2_40ee90 = tail call %struct.Memory* @sub_40f200.is_ko(%struct.State* nonnull %0, i64 %298, %struct.Memory* %2)
  %303 = load i32, i32* %EAX.i476, align 4
  %304 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %305 = and i32 %303, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %310 = icmp eq i32 %303, 0
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %40, align 1
  %312 = lshr i32 %303, 31
  %313 = trunc i32 %312 to i8
  store i8 %313, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v82 = select i1 %310, i64 9, i64 31
  %314 = add i64 %304, %.v82
  store i64 %314, i64* %3, align 8
  br i1 %310, label %block_40ee9e, label %block_.L_40eeb4

block_40ee9e:                                     ; preds = %block_40ee84
  store i64 2, i64* %RSI.i440, align 8
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -52
  %317 = add i64 %314, 8
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RDI.i431, align 8
  %321 = add i64 %314, -22798
  %322 = add i64 %314, 13
  %323 = load i64, i64* %6, align 8
  %324 = add i64 %323, -8
  %325 = inttoptr i64 %324 to i64*
  store i64 %322, i64* %325, align 8
  store i64 %324, i64* %6, align 8
  store i64 %321, i64* %3, align 8
  %call2_40eea6 = tail call %struct.Memory* @sub_409590.is_suicide(%struct.State* nonnull %0, i64 %321, %struct.Memory* %call2_40ee90)
  %326 = load i32, i32* %EAX.i476, align 4
  %327 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %328 = and i32 %326, 255
  %329 = tail call i32 @llvm.ctpop.i32(i32 %328)
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  store i8 %332, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %333 = icmp eq i32 %326, 0
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %40, align 1
  %335 = lshr i32 %326, 31
  %336 = trunc i32 %335 to i8
  store i8 %336, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v83 = select i1 %333, i64 9, i64 119
  %337 = add i64 %327, %.v83
  store i64 %337, i64* %3, align 8
  br i1 %333, label %block_.L_40eeb4, label %block_.L_40ef22

block_.L_40eeb4:                                  ; preds = %block_40ee9e, %block_40ee84, %block_40ee50
  %338 = phi i64 [ %314, %block_40ee84 ], [ %337, %block_40ee9e ], [ %225, %block_40ee50 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_40ee90, %block_40ee84 ], [ %call2_40eea6, %block_40ee9e ], [ %2, %block_40ee50 ]
  %339 = load i64, i64* %RBP.i, align 8
  %340 = add i64 %339, -48
  %341 = add i64 %338, 4
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i32*
  %343 = load i32, i32* %342, align 4
  %344 = add i32 %343, -2
  %345 = icmp ult i32 %343, 2
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %25, align 1
  %347 = and i32 %344, 255
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347)
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %32, align 1
  %352 = xor i32 %344, %343
  %353 = lshr i32 %352, 4
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  store i8 %355, i8* %37, align 1
  %356 = icmp eq i32 %344, 0
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %40, align 1
  %358 = lshr i32 %344, 31
  %359 = trunc i32 %358 to i8
  store i8 %359, i8* %43, align 1
  %360 = lshr i32 %343, 31
  %361 = xor i32 %358, %360
  %362 = add nuw nsw i32 %361, %360
  %363 = icmp eq i32 %362, 2
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %49, align 1
  %.v50 = select i1 %356, i64 20, i64 10
  %365 = add i64 %338, %.v50
  store i64 %365, i64* %3, align 8
  br i1 %356, label %block_.L_40eec8, label %block_40eebe

block_40eebe:                                     ; preds = %block_.L_40eeb4
  %366 = add i64 %365, 4
  store i64 %366, i64* %3, align 8
  %367 = load i32, i32* %342, align 4
  %368 = add i32 %367, -5
  %369 = icmp ult i32 %367, 5
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %25, align 1
  %371 = and i32 %368, 255
  %372 = tail call i32 @llvm.ctpop.i32(i32 %371)
  %373 = trunc i32 %372 to i8
  %374 = and i8 %373, 1
  %375 = xor i8 %374, 1
  store i8 %375, i8* %32, align 1
  %376 = xor i32 %368, %367
  %377 = lshr i32 %376, 4
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  store i8 %379, i8* %37, align 1
  %380 = icmp eq i32 %368, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %40, align 1
  %382 = lshr i32 %368, 31
  %383 = trunc i32 %382 to i8
  store i8 %383, i8* %43, align 1
  %384 = lshr i32 %367, 31
  %385 = xor i32 %382, %384
  %386 = add nuw nsw i32 %385, %384
  %387 = icmp eq i32 %386, 2
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %49, align 1
  %.v51 = select i1 %380, i64 10, i64 114
  %389 = add i64 %365, %.v51
  store i64 %389, i64* %3, align 8
  br i1 %380, label %block_.L_40eec8, label %block_.L_40ef30

block_.L_40eec8:                                  ; preds = %block_40eebe, %block_.L_40eeb4
  %390 = phi i64 [ %389, %block_40eebe ], [ %365, %block_.L_40eeb4 ]
  %391 = add i64 %339, -52
  %392 = add i64 %390, 4
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = sext i32 %394 to i64
  store i64 %395, i64* %RAX.i513, align 8
  %RCX.i407 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %396 = add nsw i64 %395, 12099168
  %397 = add i64 %390, 12
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i8*
  %399 = load i8, i8* %398, align 1
  %400 = zext i8 %399 to i64
  store i64 %400, i64* %RCX.i407, align 8
  %401 = zext i8 %399 to i32
  %402 = add nsw i32 %401, -1
  %403 = icmp eq i8 %399, 0
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %25, align 1
  %405 = and i32 %402, 255
  %406 = tail call i32 @llvm.ctpop.i32(i32 %405)
  %407 = trunc i32 %406 to i8
  %408 = and i8 %407, 1
  %409 = xor i8 %408, 1
  store i8 %409, i8* %32, align 1
  %410 = xor i32 %402, %401
  %411 = lshr i32 %410, 4
  %412 = trunc i32 %411 to i8
  %413 = and i8 %412, 1
  store i8 %413, i8* %37, align 1
  %414 = icmp eq i32 %402, 0
  %415 = zext i1 %414 to i8
  store i8 %415, i8* %40, align 1
  %416 = lshr i32 %402, 31
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v76 = select i1 %414, i64 90, i64 21
  %418 = add i64 %390, %.v76
  store i64 %418, i64* %3, align 8
  br i1 %414, label %block_.L_40ef22, label %block_40eedd

block_40eedd:                                     ; preds = %block_.L_40eec8
  %419 = add i64 %418, 4
  store i64 %419, i64* %3, align 8
  %420 = load i32, i32* %393, align 4
  %421 = sext i32 %420 to i64
  store i64 %421, i64* %RAX.i513, align 8
  %422 = add nsw i64 %421, 12099168
  %423 = add i64 %418, 12
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i8*
  %425 = load i8, i8* %424, align 1
  %426 = zext i8 %425 to i64
  store i64 %426, i64* %RCX.i407, align 8
  %427 = zext i8 %425 to i32
  %428 = add nsw i32 %427, -2
  %429 = icmp ult i8 %425, 2
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %25, align 1
  %431 = and i32 %428, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %32, align 1
  %436 = xor i32 %428, %427
  %437 = lshr i32 %436, 4
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  store i8 %439, i8* %37, align 1
  %440 = icmp eq i32 %428, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %40, align 1
  %442 = lshr i32 %428, 31
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v77 = select i1 %440, i64 69, i64 21
  %444 = add i64 %418, %.v77
  store i64 %444, i64* %3, align 8
  br i1 %440, label %block_.L_40ef22, label %block_40eef2

block_40eef2:                                     ; preds = %block_40eedd
  %RSI.i392 = getelementptr inbounds %union.anon, %union.anon* %74, i64 0, i32 0
  store i64 1, i64* %RSI.i392, align 8
  %445 = zext i32 %420 to i64
  %446 = xor i64 %445, %421
  %447 = trunc i64 %446 to i32
  %448 = and i64 %446, 4294967295
  store i64 %448, i64* %RAX.i513, align 8
  store i8 0, i8* %25, align 1
  %449 = and i32 %447, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %32, align 1
  %454 = icmp eq i32 %447, 0
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %40, align 1
  %456 = lshr i32 %447, 31
  %457 = trunc i32 %456 to i8
  store i8 %457, i8* %43, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %37, align 1
  %458 = and i64 %446, 4294967295
  store i64 %458, i64* %RDX.i495, align 8
  %RDI.i383 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %459 = add i64 %444, 12
  store i64 %459, i64* %3, align 8
  %460 = load i32, i32* %393, align 4
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RDI.i383, align 8
  %462 = add i64 %444, 782
  %463 = add i64 %444, 17
  %464 = load i64, i64* %6, align 8
  %465 = add i64 %464, -8
  %466 = inttoptr i64 %465 to i64*
  store i64 %463, i64* %466, align 8
  store i64 %465, i64* %6, align 8
  store i64 %462, i64* %3, align 8
  %call2_40eefe = tail call %struct.Memory* @sub_40f200.is_ko(%struct.State* nonnull %0, i64 %462, %struct.Memory* %MEMORY.1)
  %467 = load i32, i32* %EAX.i476, align 4
  %468 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %469 = and i32 %467, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %474 = icmp eq i32 %467, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %40, align 1
  %476 = lshr i32 %467, 31
  %477 = trunc i32 %476 to i8
  store i8 %477, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v78 = select i1 %474, i64 9, i64 45
  %478 = add i64 %468, %.v78
  store i64 %478, i64* %3, align 8
  br i1 %474, label %block_40ef0c, label %block_.L_40ef30

block_40ef0c:                                     ; preds = %block_40eef2
  store i64 1, i64* %RSI.i392, align 8
  %479 = load i64, i64* %RBP.i, align 8
  %480 = add i64 %479, -52
  %481 = add i64 %478, 8
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = zext i32 %483 to i64
  store i64 %484, i64* %RDI.i383, align 8
  %485 = add i64 %478, -22908
  %486 = add i64 %478, 13
  %487 = load i64, i64* %6, align 8
  %488 = add i64 %487, -8
  %489 = inttoptr i64 %488 to i64*
  store i64 %486, i64* %489, align 8
  store i64 %488, i64* %6, align 8
  store i64 %485, i64* %3, align 8
  %call2_40ef14 = tail call %struct.Memory* @sub_409590.is_suicide(%struct.State* nonnull %0, i64 %485, %struct.Memory* %call2_40eefe)
  %490 = load i32, i32* %EAX.i476, align 4
  %491 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %492 = and i32 %490, 255
  %493 = tail call i32 @llvm.ctpop.i32(i32 %492)
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  %496 = xor i8 %495, 1
  store i8 %496, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %497 = icmp eq i32 %490, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %40, align 1
  %499 = lshr i32 %490, 31
  %500 = trunc i32 %499 to i8
  store i8 %500, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v79 = select i1 %497, i64 23, i64 9
  %501 = add i64 %491, %.v79
  store i64 %501, i64* %3, align 8
  br i1 %497, label %block_.L_40ef30, label %block_.L_40ef22

block_.L_40ef22:                                  ; preds = %block_40ee9e, %block_40ef0c, %block_40eedd, %block_.L_40eec8, %block_40ee6f, %block_.L_40ee5a
  %502 = phi i64 [ %254, %block_.L_40ee5a ], [ %280, %block_40ee6f ], [ %418, %block_.L_40eec8 ], [ %444, %block_40eedd ], [ %501, %block_40ef0c ], [ %337, %block_40ee9e ]
  %MEMORY.3 = phi %struct.Memory* [ %2, %block_.L_40ee5a ], [ %2, %block_40ee6f ], [ %MEMORY.1, %block_.L_40eec8 ], [ %MEMORY.1, %block_40eedd ], [ %call2_40ef14, %block_40ef0c ], [ %call2_40eea6, %block_40ee9e ]
  %503 = load i64, i64* %RBP.i, align 8
  %504 = add i64 %503, -48
  %505 = add i64 %502, 7
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i32*
  store i32 0, i32* %506, align 4
  %507 = load i64, i64* %RBP.i, align 8
  %508 = add i64 %507, -52
  %509 = load i64, i64* %3, align 8
  %510 = add i64 %509, 7
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %508 to i32*
  store i32 0, i32* %511, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_40ef30

block_.L_40ef30:                                  ; preds = %block_40eef2, %block_40eebe, %block_.L_40ef22, %block_40ef0c
  %512 = phi i64 [ %.pre, %block_.L_40ef22 ], [ %478, %block_40eef2 ], [ %501, %block_40ef0c ], [ %389, %block_40eebe ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_40ef22 ], [ %call2_40eefe, %block_40eef2 ], [ %call2_40ef14, %block_40ef0c ], [ %MEMORY.1, %block_40eebe ]
  %513 = load i64, i64* %RBP.i, align 8
  %514 = add i64 %513, -96
  store i64 %514, i64* %RDX.i495, align 8
  %515 = add i64 %513, -48
  %516 = add i64 %512, 7
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i32*
  %518 = load i32, i32* %517, align 4
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RAX.i513, align 8
  %RCX.i357 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %520 = add i64 %513, -64
  %521 = add i64 %512, 11
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i64*
  %523 = load i64, i64* %522, align 8
  store i64 %523, i64* %RCX.i357, align 8
  %524 = add i64 %512, 13
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i32*
  store i32 %518, i32* %525, align 4
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -52
  %528 = load i64, i64* %3, align 8
  %529 = add i64 %528, 3
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %527 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RAX.i513, align 8
  %533 = add i64 %526, -72
  %534 = add i64 %528, 7
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i64*
  %536 = load i64, i64* %535, align 8
  store i64 %536, i64* %RCX.i357, align 8
  %537 = add i64 %528, 9
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i32*
  store i32 %531, i32* %538, align 4
  %539 = load i64, i64* %RBP.i, align 8
  %540 = add i64 %539, -80
  %541 = load i64, i64* %3, align 8
  %542 = add i64 %541, 4
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %540 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %RCX.i357, align 8
  %545 = add i64 %541, 10
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  store i32 0, i32* %546, align 4
  %RDI.i337 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -24
  %549 = load i64, i64* %3, align 8
  %550 = add i64 %549, 3
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %548 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = zext i32 %552 to i64
  store i64 %553, i64* %RDI.i337, align 8
  %RSI.i334 = getelementptr inbounds %union.anon, %union.anon* %74, i64 0, i32 0
  %554 = add i64 %547, -28
  %555 = add i64 %549, 6
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RSI.i334, align 8
  %559 = add i64 %549, 688
  %560 = add i64 %549, 11
  %561 = load i64, i64* %6, align 8
  %562 = add i64 %561, -8
  %563 = inttoptr i64 %562 to i64*
  store i64 %560, i64* %563, align 8
  store i64 %562, i64* %6, align 8
  store i64 %559, i64* %3, align 8
  %call2_40ef56 = tail call %struct.Memory* @sub_40f200.is_ko(%struct.State* nonnull %0, i64 %559, %struct.Memory* %MEMORY.4)
  %564 = load i64, i64* %RBP.i, align 8
  %565 = add i64 %564, -92
  %566 = load i32, i32* %EAX.i476, align 4
  %567 = load i64, i64* %3, align 8
  %568 = add i64 %567, 3
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %565 to i32*
  store i32 %566, i32* %569, align 4
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -92
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 4
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %571 to i32*
  %575 = load i32, i32* %574, align 4
  store i8 0, i8* %25, align 1
  %576 = and i32 %575, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %581 = icmp eq i32 %575, 0
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %40, align 1
  %583 = lshr i32 %575, 31
  %584 = trunc i32 %583 to i8
  store i8 %584, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v52 = select i1 %581, i64 10, i64 45
  %585 = add i64 %572, %.v52
  store i64 %585, i64* %3, align 8
  %586 = add i64 %570, -48
  br i1 %581, label %block_40ef68, label %block_.L_40ef8b

block_40ef68:                                     ; preds = %block_.L_40ef30
  %587 = add i64 %585, 4
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = add i32 %589, -6
  %591 = icmp ult i32 %589, 6
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %25, align 1
  %593 = and i32 %590, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593)
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %32, align 1
  %598 = xor i32 %590, %589
  %599 = lshr i32 %598, 4
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  store i8 %601, i8* %37, align 1
  %602 = icmp eq i32 %590, 0
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %40, align 1
  %604 = lshr i32 %590, 31
  %605 = trunc i32 %604 to i8
  store i8 %605, i8* %43, align 1
  %606 = lshr i32 %589, 31
  %607 = xor i32 %604, %606
  %608 = add nuw nsw i32 %607, %606
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %49, align 1
  %.v75 = select i1 %602, i64 10, i64 30
  %611 = add i64 %585, %.v75
  store i64 %611, i64* %3, align 8
  br i1 %602, label %block_40ef72, label %block_.L_40ef86

block_40ef72:                                     ; preds = %block_40ef68
  %612 = add i64 %570, -64
  %613 = add i64 %611, 4
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %RAX.i513, align 8
  %616 = add i64 %611, 10
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %615 to i32*
  store i32 0, i32* %617, align 4
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -72
  %620 = load i64, i64* %3, align 8
  %621 = add i64 %620, 4
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %619 to i64*
  %623 = load i64, i64* %622, align 8
  store i64 %623, i64* %RAX.i513, align 8
  %624 = add i64 %620, 10
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  store i32 0, i32* %625, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_40ef86

block_.L_40ef86:                                  ; preds = %block_40ef68, %block_40ef72
  %626 = phi i64 [ %.pre41, %block_40ef72 ], [ %611, %block_40ef68 ]
  %627 = add i64 %626, 305
  br label %block_.L_40f0b7

block_.L_40ef8b:                                  ; preds = %block_.L_40ef30
  %628 = add i64 %585, 3
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %586 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = zext i32 %630 to i64
  store i64 %631, i64* %RAX.i513, align 8
  %632 = add i64 %570, -88
  %633 = add i64 %585, 6
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = sub i32 %630, %635
  %637 = icmp ult i32 %630, %635
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %25, align 1
  %639 = and i32 %636, 255
  %640 = tail call i32 @llvm.ctpop.i32(i32 %639)
  %641 = trunc i32 %640 to i8
  %642 = and i8 %641, 1
  %643 = xor i8 %642, 1
  store i8 %643, i8* %32, align 1
  %644 = xor i32 %635, %630
  %645 = xor i32 %644, %636
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  store i8 %648, i8* %37, align 1
  %649 = icmp eq i32 %636, 0
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %40, align 1
  %651 = lshr i32 %636, 31
  %652 = trunc i32 %651 to i8
  store i8 %652, i8* %43, align 1
  %653 = lshr i32 %630, 31
  %654 = lshr i32 %635, 31
  %655 = xor i32 %654, %653
  %656 = xor i32 %651, %653
  %657 = add nuw nsw i32 %656, %655
  %658 = icmp eq i32 %657, 2
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %49, align 1
  %.v53 = select i1 %649, i64 12, i64 36
  %660 = add i64 %585, %.v53
  store i64 %660, i64* %3, align 8
  br i1 %649, label %block_40ef97, label %block_.L_40efaf

block_40ef97:                                     ; preds = %block_.L_40ef8b
  %661 = add i64 %570, -24
  %662 = add i64 %660, 3
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = zext i32 %664 to i64
  store i64 %665, i64* %RAX.i513, align 8
  %666 = add i64 %570, -52
  %667 = add i64 %660, 6
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = sub i32 %664, %669
  %671 = icmp ult i32 %664, %669
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %25, align 1
  %673 = and i32 %670, 255
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %32, align 1
  %678 = xor i32 %669, %664
  %679 = xor i32 %678, %670
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  store i8 %682, i8* %37, align 1
  %683 = icmp eq i32 %670, 0
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %40, align 1
  %685 = lshr i32 %670, 31
  %686 = trunc i32 %685 to i8
  store i8 %686, i8* %43, align 1
  %687 = lshr i32 %664, 31
  %688 = lshr i32 %669, 31
  %689 = xor i32 %688, %687
  %690 = xor i32 %685, %687
  %691 = add nuw nsw i32 %690, %689
  %692 = icmp eq i32 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %49, align 1
  %.v74 = select i1 %683, i64 12, i64 24
  %694 = add i64 %660, %.v74
  store i64 %694, i64* %3, align 8
  br i1 %683, label %block_40efa3, label %block_.L_40efaf

block_40efa3:                                     ; preds = %block_40ef97
  %695 = add i64 %570, -20
  %696 = add i64 %694, 7
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  store i32 0, i32* %697, align 4
  %698 = load i64, i64* %3, align 8
  %699 = add i64 %698, 580
  store i64 %699, i64* %3, align 8
  br label %block_.L_40f1ee

block_.L_40efaf:                                  ; preds = %block_40ef97, %block_.L_40ef8b
  %700 = phi i64 [ %694, %block_40ef97 ], [ %660, %block_.L_40ef8b ]
  %701 = add i64 %700, 4
  store i64 %701, i64* %3, align 8
  %702 = load i32, i32* %629, align 4
  %703 = add i32 %702, -4
  %704 = icmp ult i32 %702, 4
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %25, align 1
  %706 = and i32 %703, 255
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706)
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %32, align 1
  %711 = xor i32 %703, %702
  %712 = lshr i32 %711, 4
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  store i8 %714, i8* %37, align 1
  %715 = icmp eq i32 %703, 0
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %40, align 1
  %717 = lshr i32 %703, 31
  %718 = trunc i32 %717 to i8
  store i8 %718, i8* %43, align 1
  %719 = lshr i32 %702, 31
  %720 = xor i32 %717, %719
  %721 = add nuw nsw i32 %720, %719
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %49, align 1
  %.v54 = select i1 %715, i64 20, i64 10
  %724 = add i64 %700, %.v54
  store i64 %724, i64* %3, align 8
  br i1 %715, label %block_.L_40efc3, label %block_40efb9

block_40efb9:                                     ; preds = %block_.L_40efaf
  %725 = add i64 %724, 4
  store i64 %725, i64* %3, align 8
  %726 = load i32, i32* %629, align 4
  %727 = add i32 %726, -5
  %728 = icmp ult i32 %726, 5
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %25, align 1
  %730 = and i32 %727, 255
  %731 = tail call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  store i8 %734, i8* %32, align 1
  %735 = xor i32 %727, %726
  %736 = lshr i32 %735, 4
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  store i8 %738, i8* %37, align 1
  %739 = icmp eq i32 %727, 0
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %40, align 1
  %741 = lshr i32 %727, 31
  %742 = trunc i32 %741 to i8
  store i8 %742, i8* %43, align 1
  %743 = lshr i32 %726, 31
  %744 = xor i32 %741, %743
  %745 = add nuw nsw i32 %744, %743
  %746 = icmp eq i32 %745, 2
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %49, align 1
  %.v55 = select i1 %739, i64 10, i64 22
  %748 = add i64 %724, %.v55
  store i64 %748, i64* %3, align 8
  br i1 %739, label %block_.L_40efc3, label %block_.L_40efcf

block_.L_40efc3:                                  ; preds = %block_40efb9, %block_.L_40efaf
  %749 = phi i64 [ %748, %block_40efb9 ], [ %724, %block_.L_40efaf ]
  %750 = add i64 %570, -20
  %751 = add i64 %749, 7
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  store i32 0, i32* %752, align 4
  %753 = load i64, i64* %3, align 8
  %754 = add i64 %753, 548
  store i64 %754, i64* %3, align 8
  br label %block_.L_40f1ee

block_.L_40efcf:                                  ; preds = %block_40efb9
  %755 = add i64 %748, 3
  store i64 %755, i64* %3, align 8
  %756 = load i32, i32* %629, align 4
  %757 = zext i32 %756 to i64
  store i64 %757, i64* %RAX.i513, align 8
  %758 = add i64 %570, -28
  %759 = add i64 %748, 6
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  %761 = load i32, i32* %760, align 4
  %762 = sub i32 %756, %761
  %763 = icmp ult i32 %756, %761
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %25, align 1
  %765 = and i32 %762, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %32, align 1
  %770 = xor i32 %761, %756
  %771 = xor i32 %770, %762
  %772 = lshr i32 %771, 4
  %773 = trunc i32 %772 to i8
  %774 = and i8 %773, 1
  store i8 %774, i8* %37, align 1
  %775 = icmp eq i32 %762, 0
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %40, align 1
  %777 = lshr i32 %762, 31
  %778 = trunc i32 %777 to i8
  store i8 %778, i8* %43, align 1
  %779 = lshr i32 %756, 31
  %780 = lshr i32 %761, 31
  %781 = xor i32 %780, %779
  %782 = xor i32 %777, %779
  %783 = add nuw nsw i32 %782, %781
  %784 = icmp eq i32 %783, 2
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %49, align 1
  %.v56 = select i1 %775, i64 12, i64 104
  %786 = add i64 %748, %.v56
  store i64 %786, i64* %3, align 8
  br i1 %775, label %block_40efdb, label %block_.L_40f037

block_40efdb:                                     ; preds = %block_.L_40efcf
  %787 = add i64 %570, -96
  %788 = add i64 %786, 3
  store i64 %788, i64* %3, align 8
  %789 = inttoptr i64 %787 to i32*
  %790 = load i32, i32* %789, align 4
  %791 = zext i32 %790 to i64
  store i64 %791, i64* %RAX.i513, align 8
  %792 = add i64 %570, -52
  %793 = add i64 %786, 6
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = add i32 %795, 19
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %RCX.i357, align 8
  %798 = lshr i32 %796, 31
  %799 = sub i32 %790, %796
  %800 = icmp ult i32 %790, %796
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %25, align 1
  %802 = and i32 %799, 255
  %803 = tail call i32 @llvm.ctpop.i32(i32 %802)
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = xor i8 %805, 1
  store i8 %806, i8* %32, align 1
  %807 = xor i32 %796, %790
  %808 = xor i32 %807, %799
  %809 = lshr i32 %808, 4
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  store i8 %811, i8* %37, align 1
  %812 = icmp eq i32 %799, 0
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %40, align 1
  %814 = lshr i32 %799, 31
  %815 = trunc i32 %814 to i8
  store i8 %815, i8* %43, align 1
  %816 = lshr i32 %790, 31
  %817 = xor i32 %798, %816
  %818 = xor i32 %814, %816
  %819 = add nuw nsw i32 %818, %817
  %820 = icmp eq i32 %819, 2
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %49, align 1
  %.v70 = select i1 %812, i64 92, i64 20
  %822 = add i64 %786, %.v70
  store i64 %822, i64* %3, align 8
  br i1 %812, label %block_.L_40f037, label %block_40efef

block_40efef:                                     ; preds = %block_40efdb
  %823 = load i64, i64* %RBP.i, align 8
  %824 = add i64 %823, -96
  %825 = add i64 %822, 3
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = zext i32 %827 to i64
  store i64 %828, i64* %RAX.i513, align 8
  %829 = add i64 %823, -52
  %830 = add i64 %822, 6
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = add i32 %832, -21
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RCX.i357, align 8
  %835 = lshr i32 %833, 31
  %836 = sub i32 %827, %833
  %837 = icmp ult i32 %827, %833
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %25, align 1
  %839 = and i32 %836, 255
  %840 = tail call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  store i8 %843, i8* %32, align 1
  %844 = xor i32 %833, %827
  %845 = xor i32 %844, %836
  %846 = lshr i32 %845, 4
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %37, align 1
  %849 = icmp eq i32 %836, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %40, align 1
  %851 = lshr i32 %836, 31
  %852 = trunc i32 %851 to i8
  store i8 %852, i8* %43, align 1
  %853 = lshr i32 %827, 31
  %854 = xor i32 %835, %853
  %855 = xor i32 %851, %853
  %856 = add nuw nsw i32 %855, %854
  %857 = icmp eq i32 %856, 2
  %858 = zext i1 %857 to i8
  store i8 %858, i8* %49, align 1
  %.v71 = select i1 %849, i64 72, i64 20
  %859 = add i64 %822, %.v71
  store i64 %859, i64* %3, align 8
  br i1 %849, label %block_.L_40f037, label %block_40f003

block_40f003:                                     ; preds = %block_40efef
  %860 = load i64, i64* %RBP.i, align 8
  %861 = add i64 %860, -96
  %862 = add i64 %859, 3
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = zext i32 %864 to i64
  store i64 %865, i64* %RAX.i513, align 8
  %866 = add i64 %860, -52
  %867 = add i64 %859, 6
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = add i32 %869, -19
  %871 = zext i32 %870 to i64
  store i64 %871, i64* %RCX.i357, align 8
  %872 = lshr i32 %870, 31
  %873 = sub i32 %864, %870
  %874 = icmp ult i32 %864, %870
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %25, align 1
  %876 = and i32 %873, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %32, align 1
  %881 = xor i32 %870, %864
  %882 = xor i32 %881, %873
  %883 = lshr i32 %882, 4
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  store i8 %885, i8* %37, align 1
  %886 = icmp eq i32 %873, 0
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %40, align 1
  %888 = lshr i32 %873, 31
  %889 = trunc i32 %888 to i8
  store i8 %889, i8* %43, align 1
  %890 = lshr i32 %864, 31
  %891 = xor i32 %872, %890
  %892 = xor i32 %888, %890
  %893 = add nuw nsw i32 %892, %891
  %894 = icmp eq i32 %893, 2
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %49, align 1
  %.v72 = select i1 %886, i64 52, i64 20
  %896 = add i64 %859, %.v72
  store i64 %896, i64* %3, align 8
  br i1 %886, label %block_.L_40f037, label %block_40f017

block_40f017:                                     ; preds = %block_40f003
  %897 = load i64, i64* %RBP.i, align 8
  %898 = add i64 %897, -96
  %899 = add i64 %896, 3
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %898 to i32*
  %901 = load i32, i32* %900, align 4
  %902 = zext i32 %901 to i64
  store i64 %902, i64* %RAX.i513, align 8
  %903 = add i64 %897, -52
  %904 = add i64 %896, 6
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = add i32 %906, 21
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RCX.i357, align 8
  %909 = lshr i32 %907, 31
  %910 = sub i32 %901, %907
  %911 = icmp ult i32 %901, %907
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %25, align 1
  %913 = and i32 %910, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %32, align 1
  %918 = xor i32 %907, %901
  %919 = xor i32 %918, %910
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %37, align 1
  %923 = icmp eq i32 %910, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %40, align 1
  %925 = lshr i32 %910, 31
  %926 = trunc i32 %925 to i8
  store i8 %926, i8* %43, align 1
  %927 = lshr i32 %901, 31
  %928 = xor i32 %909, %927
  %929 = xor i32 %925, %927
  %930 = add nuw nsw i32 %929, %928
  %931 = icmp eq i32 %930, 2
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %49, align 1
  %.v73 = select i1 %923, i64 32, i64 20
  %933 = add i64 %896, %.v73
  store i64 %933, i64* %3, align 8
  br i1 %923, label %block_.L_40f037, label %block_40f02b

block_40f02b:                                     ; preds = %block_40f017
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -20
  %936 = add i64 %933, 7
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  store i32 0, i32* %937, align 4
  %938 = load i64, i64* %3, align 8
  %939 = add i64 %938, 444
  store i64 %939, i64* %3, align 8
  br label %block_.L_40f1ee

block_.L_40f037:                                  ; preds = %block_.L_40efcf, %block_40f017, %block_40f003, %block_40efef, %block_40efdb
  %940 = phi i64 [ %933, %block_40f017 ], [ %896, %block_40f003 ], [ %859, %block_40efef ], [ %822, %block_40efdb ], [ %786, %block_.L_40efcf ]
  %941 = load i64, i64* %RBP.i, align 8
  %942 = add i64 %941, -48
  %943 = add i64 %940, 4
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = add i32 %945, -6
  %947 = icmp ult i32 %945, 6
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %25, align 1
  %949 = and i32 %946, 255
  %950 = tail call i32 @llvm.ctpop.i32(i32 %949)
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  %953 = xor i8 %952, 1
  store i8 %953, i8* %32, align 1
  %954 = xor i32 %946, %945
  %955 = lshr i32 %954, 4
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  store i8 %957, i8* %37, align 1
  %958 = icmp eq i32 %946, 0
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %40, align 1
  %960 = lshr i32 %946, 31
  %961 = trunc i32 %960 to i8
  store i8 %961, i8* %43, align 1
  %962 = lshr i32 %945, 31
  %963 = xor i32 %960, %962
  %964 = add nuw nsw i32 %963, %962
  %965 = icmp eq i32 %964, 2
  %966 = zext i1 %965 to i8
  store i8 %966, i8* %49, align 1
  %.v57 = select i1 %958, i64 10, i64 123
  %967 = add i64 %940, %.v57
  store i64 %967, i64* %3, align 8
  br i1 %958, label %block_40f041, label %block_.L_40f0b2

block_40f041:                                     ; preds = %block_.L_40f037
  %968 = add i64 %941, -24
  %969 = add i64 %967, 3
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = zext i32 %971 to i64
  store i64 %972, i64* %RAX.i513, align 8
  %973 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
  %974 = sub i32 %971, %973
  %975 = icmp ult i32 %971, %973
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %25, align 1
  %977 = and i32 %974, 255
  %978 = tail call i32 @llvm.ctpop.i32(i32 %977)
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  store i8 %981, i8* %32, align 1
  %982 = xor i32 %973, %971
  %983 = xor i32 %982, %974
  %984 = lshr i32 %983, 4
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %37, align 1
  %987 = icmp eq i32 %974, 0
  %988 = zext i1 %987 to i8
  store i8 %988, i8* %40, align 1
  %989 = lshr i32 %974, 31
  %990 = trunc i32 %989 to i8
  store i8 %990, i8* %43, align 1
  %991 = lshr i32 %971, 31
  %992 = lshr i32 %973, 31
  %993 = xor i32 %992, %991
  %994 = xor i32 %989, %991
  %995 = add nuw nsw i32 %994, %993
  %996 = icmp eq i32 %995, 2
  %997 = zext i1 %996 to i8
  store i8 %997, i8* %49, align 1
  %.v65 = select i1 %987, i64 108, i64 16
  %998 = add i64 %967, %.v65
  store i64 %998, i64* %3, align 8
  br i1 %987, label %block_.L_40f0ad, label %block_40f051

block_40f051:                                     ; preds = %block_40f041
  %999 = add i64 %941, -96
  %1000 = add i64 %998, 3
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i32*
  %1002 = load i32, i32* %1001, align 4
  %1003 = zext i32 %1002 to i64
  store i64 %1003, i64* %RAX.i513, align 8
  %1004 = add i64 %941, -52
  %1005 = add i64 %998, 6
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  %1007 = load i32, i32* %1006, align 4
  %1008 = add i32 %1007, 19
  %1009 = zext i32 %1008 to i64
  store i64 %1009, i64* %RCX.i357, align 8
  %1010 = lshr i32 %1008, 31
  %1011 = sub i32 %1002, %1008
  %1012 = icmp ult i32 %1002, %1008
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %25, align 1
  %1014 = and i32 %1011, 255
  %1015 = tail call i32 @llvm.ctpop.i32(i32 %1014)
  %1016 = trunc i32 %1015 to i8
  %1017 = and i8 %1016, 1
  %1018 = xor i8 %1017, 1
  store i8 %1018, i8* %32, align 1
  %1019 = xor i32 %1008, %1002
  %1020 = xor i32 %1019, %1011
  %1021 = lshr i32 %1020, 4
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  store i8 %1023, i8* %37, align 1
  %1024 = icmp eq i32 %1011, 0
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %40, align 1
  %1026 = lshr i32 %1011, 31
  %1027 = trunc i32 %1026 to i8
  store i8 %1027, i8* %43, align 1
  %1028 = lshr i32 %1002, 31
  %1029 = xor i32 %1010, %1028
  %1030 = xor i32 %1026, %1028
  %1031 = add nuw nsw i32 %1030, %1029
  %1032 = icmp eq i32 %1031, 2
  %1033 = zext i1 %1032 to i8
  store i8 %1033, i8* %49, align 1
  %.v66 = select i1 %1024, i64 92, i64 20
  %1034 = add i64 %998, %.v66
  store i64 %1034, i64* %3, align 8
  br i1 %1024, label %block_.L_40f0ad, label %block_40f065

block_40f065:                                     ; preds = %block_40f051
  %1035 = load i64, i64* %RBP.i, align 8
  %1036 = add i64 %1035, -96
  %1037 = add i64 %1034, 3
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RAX.i513, align 8
  %1041 = add i64 %1035, -52
  %1042 = add i64 %1034, 6
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i32*
  %1044 = load i32, i32* %1043, align 4
  %1045 = add i32 %1044, -21
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RCX.i357, align 8
  %1047 = lshr i32 %1045, 31
  %1048 = sub i32 %1039, %1045
  %1049 = icmp ult i32 %1039, %1045
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %25, align 1
  %1051 = and i32 %1048, 255
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %32, align 1
  %1056 = xor i32 %1045, %1039
  %1057 = xor i32 %1056, %1048
  %1058 = lshr i32 %1057, 4
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  store i8 %1060, i8* %37, align 1
  %1061 = icmp eq i32 %1048, 0
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %40, align 1
  %1063 = lshr i32 %1048, 31
  %1064 = trunc i32 %1063 to i8
  store i8 %1064, i8* %43, align 1
  %1065 = lshr i32 %1039, 31
  %1066 = xor i32 %1047, %1065
  %1067 = xor i32 %1063, %1065
  %1068 = add nuw nsw i32 %1067, %1066
  %1069 = icmp eq i32 %1068, 2
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %49, align 1
  %.v67 = select i1 %1061, i64 72, i64 20
  %1071 = add i64 %1034, %.v67
  store i64 %1071, i64* %3, align 8
  br i1 %1061, label %block_.L_40f0ad, label %block_40f079

block_40f079:                                     ; preds = %block_40f065
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -96
  %1074 = add i64 %1071, 3
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = zext i32 %1076 to i64
  store i64 %1077, i64* %RAX.i513, align 8
  %1078 = add i64 %1072, -52
  %1079 = add i64 %1071, 6
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = add i32 %1081, -19
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %RCX.i357, align 8
  %1084 = lshr i32 %1082, 31
  %1085 = sub i32 %1076, %1082
  %1086 = icmp ult i32 %1076, %1082
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %25, align 1
  %1088 = and i32 %1085, 255
  %1089 = tail call i32 @llvm.ctpop.i32(i32 %1088)
  %1090 = trunc i32 %1089 to i8
  %1091 = and i8 %1090, 1
  %1092 = xor i8 %1091, 1
  store i8 %1092, i8* %32, align 1
  %1093 = xor i32 %1082, %1076
  %1094 = xor i32 %1093, %1085
  %1095 = lshr i32 %1094, 4
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  store i8 %1097, i8* %37, align 1
  %1098 = icmp eq i32 %1085, 0
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %40, align 1
  %1100 = lshr i32 %1085, 31
  %1101 = trunc i32 %1100 to i8
  store i8 %1101, i8* %43, align 1
  %1102 = lshr i32 %1076, 31
  %1103 = xor i32 %1084, %1102
  %1104 = xor i32 %1100, %1102
  %1105 = add nuw nsw i32 %1104, %1103
  %1106 = icmp eq i32 %1105, 2
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %49, align 1
  %.v68 = select i1 %1098, i64 52, i64 20
  %1108 = add i64 %1071, %.v68
  store i64 %1108, i64* %3, align 8
  br i1 %1098, label %block_.L_40f0ad, label %block_40f08d

block_40f08d:                                     ; preds = %block_40f079
  %1109 = load i64, i64* %RBP.i, align 8
  %1110 = add i64 %1109, -96
  %1111 = add i64 %1108, 3
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = zext i32 %1113 to i64
  store i64 %1114, i64* %RAX.i513, align 8
  %1115 = add i64 %1109, -52
  %1116 = add i64 %1108, 6
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i32*
  %1118 = load i32, i32* %1117, align 4
  %1119 = add i32 %1118, 21
  %1120 = zext i32 %1119 to i64
  store i64 %1120, i64* %RCX.i357, align 8
  %1121 = lshr i32 %1119, 31
  %1122 = sub i32 %1113, %1119
  %1123 = icmp ult i32 %1113, %1119
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %25, align 1
  %1125 = and i32 %1122, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %32, align 1
  %1130 = xor i32 %1119, %1113
  %1131 = xor i32 %1130, %1122
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %37, align 1
  %1135 = icmp eq i32 %1122, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %40, align 1
  %1137 = lshr i32 %1122, 31
  %1138 = trunc i32 %1137 to i8
  store i8 %1138, i8* %43, align 1
  %1139 = lshr i32 %1113, 31
  %1140 = xor i32 %1121, %1139
  %1141 = xor i32 %1137, %1139
  %1142 = add nuw nsw i32 %1141, %1140
  %1143 = icmp eq i32 %1142, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %49, align 1
  %.v69 = select i1 %1135, i64 32, i64 20
  %1145 = add i64 %1108, %.v69
  store i64 %1145, i64* %3, align 8
  br i1 %1135, label %block_.L_40f0ad, label %block_40f0a1

block_40f0a1:                                     ; preds = %block_40f08d
  %1146 = load i64, i64* %RBP.i, align 8
  %1147 = add i64 %1146, -20
  %1148 = add i64 %1145, 7
  store i64 %1148, i64* %3, align 8
  %1149 = inttoptr i64 %1147 to i32*
  store i32 0, i32* %1149, align 4
  %1150 = load i64, i64* %3, align 8
  %1151 = add i64 %1150, 326
  store i64 %1151, i64* %3, align 8
  br label %block_.L_40f1ee

block_.L_40f0ad:                                  ; preds = %block_40f08d, %block_40f079, %block_40f065, %block_40f051, %block_40f041
  %1152 = phi i64 [ %1145, %block_40f08d ], [ %1108, %block_40f079 ], [ %1071, %block_40f065 ], [ %1034, %block_40f051 ], [ %998, %block_40f041 ]
  %1153 = add i64 %1152, 5
  store i64 %1153, i64* %3, align 8
  br label %block_.L_40f0b2

block_.L_40f0b2:                                  ; preds = %block_.L_40f037, %block_.L_40f0ad
  %1154 = phi i64 [ %1153, %block_.L_40f0ad ], [ %967, %block_.L_40f037 ]
  %1155 = add i64 %1154, 5
  store i64 %1155, i64* %3, align 8
  br label %block_.L_40f0b7

block_.L_40f0b7:                                  ; preds = %block_.L_40f0b2, %block_.L_40ef86
  %storemerge = phi i64 [ %627, %block_.L_40ef86 ], [ %1155, %block_.L_40f0b2 ]
  %1156 = load i64, i64* %RBP.i, align 8
  %1157 = add i64 %1156, -24
  %1158 = add i64 %storemerge, 3
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1157 to i32*
  %1160 = load i32, i32* %1159, align 4
  %1161 = zext i32 %1160 to i64
  store i64 %1161, i64* %RDI.i337, align 8
  %1162 = add i64 %1156, -28
  %1163 = add i64 %storemerge, 6
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i32*
  %1165 = load i32, i32* %1164, align 4
  %1166 = zext i32 %1165 to i64
  store i64 %1166, i64* %RSI.i334, align 8
  %1167 = add i64 %1156, -40
  %1168 = add i64 %storemerge, 10
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i64*
  %1170 = load i64, i64* %1169, align 8
  store i64 %1170, i64* %RDX.i495, align 8
  %1171 = add i64 %1156, -44
  %1172 = add i64 %storemerge, 13
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i32*
  %1174 = load i32, i32* %1173, align 4
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RCX.i357, align 8
  %1176 = getelementptr inbounds %union.anon, %union.anon* %94, i64 0, i32 0
  %1177 = add i64 %1156, -48
  %1178 = add i64 %storemerge, 17
  store i64 %1178, i64* %3, align 8
  %1179 = inttoptr i64 %1177 to i32*
  %1180 = load i32, i32* %1179, align 4
  %1181 = zext i32 %1180 to i64
  store i64 %1181, i64* %1176, align 8
  %1182 = getelementptr inbounds %union.anon, %union.anon* %101, i64 0, i32 0
  %1183 = add i64 %1156, -52
  %1184 = add i64 %storemerge, 21
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %1182, align 8
  %1188 = add i64 %storemerge, -25223
  %1189 = add i64 %storemerge, 26
  %1190 = load i64, i64* %6, align 8
  %1191 = add i64 %1190, -8
  %1192 = inttoptr i64 %1191 to i64*
  store i64 %1189, i64* %1192, align 8
  store i64 %1191, i64* %6, align 8
  store i64 %1188, i64* %3, align 8
  %call2_40f0cc = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1188, %struct.Memory* %call2_40ef56)
  %1193 = load i32, i32* %EAX.i476, align 4
  %1194 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %1195 = and i32 %1193, 255
  %1196 = tail call i32 @llvm.ctpop.i32(i32 %1195)
  %1197 = trunc i32 %1196 to i8
  %1198 = and i8 %1197, 1
  %1199 = xor i8 %1198, 1
  store i8 %1199, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1200 = icmp eq i32 %1193, 0
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %40, align 1
  %1202 = lshr i32 %1193, 31
  %1203 = trunc i32 %1202 to i8
  store i8 %1203, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v58 = select i1 %1200, i64 9, i64 139
  %1204 = add i64 %1194, %.v58
  store i64 %1204, i64* %3, align 8
  %1205 = load i64, i64* %RBP.i, align 8
  br i1 %1200, label %block_40f0da, label %block_.L_40f15c

block_40f0da:                                     ; preds = %block_.L_40f0b7
  %1206 = add i64 %1205, -84
  %1207 = add i64 %1204, 4
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  store i8 0, i8* %25, align 1
  %1210 = and i32 %1209, 255
  %1211 = tail call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  store i8 %1214, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1215 = icmp eq i32 %1209, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %40, align 1
  %1217 = lshr i32 %1209, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v61 = select i1 %1215, i64 10, i64 22
  %1219 = add i64 %1204, %.v61
  store i64 %1219, i64* %3, align 8
  br i1 %1215, label %block_40f0e4, label %block_.L_40f0f0

block_40f0e4:                                     ; preds = %block_40f0da
  %1220 = add i64 %1205, -20
  %1221 = add i64 %1219, 7
  store i64 %1221, i64* %3, align 8
  %1222 = inttoptr i64 %1220 to i32*
  store i32 0, i32* %1222, align 4
  %1223 = load i64, i64* %3, align 8
  %1224 = add i64 %1223, 259
  store i64 %1224, i64* %3, align 8
  br label %block_.L_40f1ee

block_.L_40f0f0:                                  ; preds = %block_40f0da
  %1225 = add i64 %1205, -24
  %1226 = add i64 %1219, 3
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  %1228 = load i32, i32* %1227, align 4
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RDI.i337, align 8
  %1230 = add i64 %1205, -28
  %1231 = add i64 %1219, 6
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = zext i32 %1233 to i64
  store i64 %1234, i64* %RSI.i334, align 8
  %1235 = add i64 %1205, -40
  %1236 = add i64 %1219, 10
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RDX.i495, align 8
  %1239 = add i64 %1205, -48
  %1240 = add i64 %1219, 13
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = zext i32 %1242 to i64
  store i64 %1243, i64* %RCX.i357, align 8
  %1244 = add i64 %1205, -52
  %1245 = add i64 %1219, 17
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i32*
  %1247 = load i32, i32* %1246, align 4
  %1248 = zext i32 %1247 to i64
  store i64 %1248, i64* %1176, align 8
  %1249 = add i64 %1219, -5616
  %1250 = add i64 %1219, 22
  %1251 = load i64, i64* %6, align 8
  %1252 = add i64 %1251, -8
  %1253 = inttoptr i64 %1252 to i64*
  store i64 %1250, i64* %1253, align 8
  store i64 %1252, i64* %6, align 8
  store i64 %1249, i64* %3, align 8
  %call2_40f101 = tail call %struct.Memory* @sub_40db00.tryko(%struct.State* nonnull %0, i64 %1249, %struct.Memory* %call2_40f0cc)
  %1254 = load i32, i32* %EAX.i476, align 4
  %1255 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %1256 = and i32 %1254, 255
  %1257 = tail call i32 @llvm.ctpop.i32(i32 %1256)
  %1258 = trunc i32 %1257 to i8
  %1259 = and i8 %1258, 1
  %1260 = xor i8 %1259, 1
  store i8 %1260, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1261 = icmp eq i32 %1254, 0
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %40, align 1
  %1263 = lshr i32 %1254, 31
  %1264 = trunc i32 %1263 to i8
  store i8 %1264, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v62 = select i1 %1261, i64 9, i64 21
  %1265 = add i64 %1255, %.v62
  store i64 %1265, i64* %3, align 8
  %1266 = load i64, i64* %RBP.i, align 8
  br i1 %1261, label %block_40f10f, label %block_.L_40f11b

block_40f10f:                                     ; preds = %block_.L_40f0f0
  %1267 = add i64 %1266, -20
  %1268 = add i64 %1265, 7
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i32*
  store i32 0, i32* %1269, align 4
  %1270 = load i64, i64* %3, align 8
  %1271 = add i64 %1270, 216
  store i64 %1271, i64* %3, align 8
  br label %block_.L_40f1ee

block_.L_40f11b:                                  ; preds = %block_.L_40f0f0
  %1272 = add i64 %1266, -80
  %1273 = add i64 %1265, 4
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i64*
  %1275 = load i64, i64* %1274, align 8
  store i64 %1275, i64* %RAX.i513, align 8
  %1276 = add i64 %1265, 10
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i32*
  store i32 1, i32* %1277, align 4
  %1278 = load i64, i64* %RBP.i, align 8
  %1279 = add i64 %1278, -48
  %1280 = load i64, i64* %3, align 8
  %1281 = add i64 %1280, 4
  store i64 %1281, i64* %3, align 8
  %1282 = inttoptr i64 %1279 to i32*
  %1283 = load i32, i32* %1282, align 4
  store i8 0, i8* %25, align 1
  %1284 = and i32 %1283, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284)
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1289 = icmp eq i32 %1283, 0
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %40, align 1
  %1291 = lshr i32 %1283, 31
  %1292 = trunc i32 %1291 to i8
  store i8 %1292, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v63 = select i1 %1289, i64 20, i64 10
  %1293 = add i64 %1280, %.v63
  store i64 %1293, i64* %3, align 8
  br i1 %1289, label %block_.L_40f139, label %block_40f12f

block_40f12f:                                     ; preds = %block_.L_40f11b
  %1294 = add i64 %1293, 4
  store i64 %1294, i64* %3, align 8
  %1295 = load i32, i32* %1282, align 4
  %1296 = add i32 %1295, -6
  %1297 = icmp ult i32 %1295, 6
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %25, align 1
  %1299 = and i32 %1296, 255
  %1300 = tail call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %32, align 1
  %1304 = xor i32 %1296, %1295
  %1305 = lshr i32 %1304, 4
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  store i8 %1307, i8* %37, align 1
  %1308 = icmp eq i32 %1296, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %40, align 1
  %1310 = lshr i32 %1296, 31
  %1311 = trunc i32 %1310 to i8
  store i8 %1311, i8* %43, align 1
  %1312 = lshr i32 %1295, 31
  %1313 = xor i32 %1310, %1312
  %1314 = add nuw nsw i32 %1313, %1312
  %1315 = icmp eq i32 %1314, 2
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %49, align 1
  %.v64 = select i1 %1308, i64 10, i64 40
  %1317 = add i64 %1293, %.v64
  store i64 %1317, i64* %3, align 8
  br i1 %1308, label %block_.L_40f139, label %block_.L_40f157

block_.L_40f139:                                  ; preds = %block_40f12f, %block_.L_40f11b
  %1318 = phi i64 [ %1317, %block_40f12f ], [ %1293, %block_.L_40f11b ]
  %1319 = add i64 %1278, -28
  %1320 = add i64 %1318, 3
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i32*
  %1322 = load i32, i32* %1321, align 4
  %1323 = zext i32 %1322 to i64
  store i64 %1323, i64* %RAX.i513, align 8
  %1324 = add i64 %1278, -64
  %1325 = add i64 %1318, 7
  store i64 %1325, i64* %3, align 8
  %1326 = inttoptr i64 %1324 to i64*
  %1327 = load i64, i64* %1326, align 8
  store i64 %1327, i64* %RCX.i357, align 8
  %1328 = add i64 %1318, 9
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i32*
  store i32 %1322, i32* %1329, align 4
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -96
  %1332 = load i64, i64* %3, align 8
  %1333 = add i64 %1332, 3
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1331 to i32*
  %1335 = load i32, i32* %1334, align 4
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RAX.i513, align 8
  %1337 = add i64 %1330, -72
  %1338 = add i64 %1332, 7
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i64*
  %1340 = load i64, i64* %1339, align 8
  store i64 %1340, i64* %RCX.i357, align 8
  %1341 = add i64 %1332, 9
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i32*
  store i32 %1335, i32* %1342, align 4
  %1343 = load i64, i64* %RBP.i, align 8
  %1344 = add i64 %1343, -20
  %1345 = load i64, i64* %3, align 8
  %1346 = add i64 %1345, 7
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1344 to i32*
  store i32 1, i32* %1347, align 4
  %1348 = load i64, i64* %3, align 8
  %1349 = add i64 %1348, 156
  store i64 %1349, i64* %3, align 8
  br label %block_.L_40f1ee

block_.L_40f157:                                  ; preds = %block_40f12f
  %1350 = add i64 %1317, 5
  store i64 %1350, i64* %3, align 8
  br label %block_.L_40f15c

block_.L_40f15c:                                  ; preds = %block_.L_40f0b7, %block_.L_40f157
  %1351 = phi i64 [ %1350, %block_.L_40f157 ], [ %1204, %block_.L_40f0b7 ]
  %1352 = phi i64 [ %1278, %block_.L_40f157 ], [ %1205, %block_.L_40f0b7 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_40f101, %block_.L_40f157 ], [ %call2_40f0cc, %block_.L_40f0b7 ]
  %1353 = add i64 %1352, -92
  %1354 = add i64 %1351, 4
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  %1356 = load i32, i32* %1355, align 4
  store i8 0, i8* %25, align 1
  %1357 = and i32 %1356, 255
  %1358 = tail call i32 @llvm.ctpop.i32(i32 %1357)
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1362 = icmp eq i32 %1356, 0
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %40, align 1
  %1364 = lshr i32 %1356, 31
  %1365 = trunc i32 %1364 to i8
  store i8 %1365, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v47 = select i1 %1362, i64 10, i64 22
  %1366 = add i64 %1351, %.v47
  store i64 %1366, i64* %3, align 8
  br i1 %1362, label %block_40f166, label %block_.L_40f172

block_40f166:                                     ; preds = %block_.L_40f15c
  %1367 = add i64 %1352, -20
  %1368 = add i64 %1366, 7
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i32*
  store i32 1, i32* %1369, align 4
  %1370 = load i64, i64* %3, align 8
  %1371 = add i64 %1370, 129
  store i64 %1371, i64* %3, align 8
  br label %block_.L_40f1ee

block_.L_40f172:                                  ; preds = %block_.L_40f15c
  %1372 = add i64 %1352, -48
  %1373 = add i64 %1366, 3
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i32*
  %1375 = load i32, i32* %1374, align 4
  %1376 = zext i32 %1375 to i64
  store i64 %1376, i64* %RAX.i513, align 8
  %1377 = add i64 %1352, -88
  %1378 = add i64 %1366, 6
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = sub i32 %1375, %1380
  %1382 = icmp ult i32 %1375, %1380
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %25, align 1
  %1384 = and i32 %1381, 255
  %1385 = tail call i32 @llvm.ctpop.i32(i32 %1384)
  %1386 = trunc i32 %1385 to i8
  %1387 = and i8 %1386, 1
  %1388 = xor i8 %1387, 1
  store i8 %1388, i8* %32, align 1
  %1389 = xor i32 %1380, %1375
  %1390 = xor i32 %1389, %1381
  %1391 = lshr i32 %1390, 4
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  store i8 %1393, i8* %37, align 1
  %1394 = icmp eq i32 %1381, 0
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %40, align 1
  %1396 = lshr i32 %1381, 31
  %1397 = trunc i32 %1396 to i8
  store i8 %1397, i8* %43, align 1
  %1398 = lshr i32 %1375, 31
  %1399 = lshr i32 %1380, 31
  %1400 = xor i32 %1399, %1398
  %1401 = xor i32 %1396, %1398
  %1402 = add nuw nsw i32 %1401, %1400
  %1403 = icmp eq i32 %1402, 2
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %49, align 1
  %.v46 = select i1 %1394, i64 12, i64 52
  %1405 = add i64 %1366, %.v46
  store i64 %1405, i64* %3, align 8
  br i1 %1394, label %block_40f17e, label %block_.L_40f1a6

block_40f17e:                                     ; preds = %block_.L_40f172
  %1406 = add i64 %1352, -28
  %1407 = add i64 %1405, 4
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1406 to i32*
  %1409 = load i32, i32* %1408, align 4
  %1410 = add i32 %1409, -1
  %1411 = icmp eq i32 %1409, 0
  %1412 = zext i1 %1411 to i8
  store i8 %1412, i8* %25, align 1
  %1413 = and i32 %1410, 255
  %1414 = tail call i32 @llvm.ctpop.i32(i32 %1413)
  %1415 = trunc i32 %1414 to i8
  %1416 = and i8 %1415, 1
  %1417 = xor i8 %1416, 1
  store i8 %1417, i8* %32, align 1
  %1418 = xor i32 %1410, %1409
  %1419 = lshr i32 %1418, 4
  %1420 = trunc i32 %1419 to i8
  %1421 = and i8 %1420, 1
  store i8 %1421, i8* %37, align 1
  %1422 = icmp eq i32 %1410, 0
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %40, align 1
  %1424 = lshr i32 %1410, 31
  %1425 = trunc i32 %1424 to i8
  store i8 %1425, i8* %43, align 1
  %1426 = lshr i32 %1409, 31
  %1427 = xor i32 %1424, %1426
  %1428 = add nuw nsw i32 %1427, %1426
  %1429 = icmp eq i32 %1428, 2
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %49, align 1
  %.v = select i1 %1422, i64 10, i64 25
  %1431 = add i64 %1405, %.v
  %1432 = add i64 %1352, -64
  %1433 = add i64 %1431, 4
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i64*
  %1435 = load i64, i64* %1434, align 8
  store i64 %1435, i64* %RAX.i513, align 8
  %1436 = add i64 %1431, 10
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  br i1 %1422, label %block_40f188, label %block_.L_40f197

block_40f188:                                     ; preds = %block_40f17e
  store i32 5, i32* %1437, align 4
  %1438 = load i64, i64* %3, align 8
  %1439 = add i64 %1438, 15
  store i64 %1439, i64* %3, align 8
  br label %block_.L_40f1a1

block_.L_40f197:                                  ; preds = %block_40f17e
  store i32 4, i32* %1437, align 4
  %.pre43 = load i64, i64* %3, align 8
  br label %block_.L_40f1a1

block_.L_40f1a1:                                  ; preds = %block_.L_40f197, %block_40f188
  %1440 = phi i64 [ %.pre43, %block_.L_40f197 ], [ %1439, %block_40f188 ]
  %1441 = add i64 %1440, 70
  br label %block_.L_40f1e7

block_.L_40f1a6:                                  ; preds = %block_.L_40f172
  %1442 = add i64 %1405, 3
  store i64 %1442, i64* %3, align 8
  %1443 = load i32, i32* %1374, align 4
  %1444 = zext i32 %1443 to i64
  store i64 %1444, i64* %RAX.i513, align 8
  %1445 = add i64 %1352, -28
  %1446 = add i64 %1405, 6
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i32*
  %1448 = load i32, i32* %1447, align 4
  %1449 = sub i32 %1443, %1448
  %1450 = icmp ult i32 %1443, %1448
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %25, align 1
  %1452 = and i32 %1449, 255
  %1453 = tail call i32 @llvm.ctpop.i32(i32 %1452)
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  %1456 = xor i8 %1455, 1
  store i8 %1456, i8* %32, align 1
  %1457 = xor i32 %1448, %1443
  %1458 = xor i32 %1457, %1449
  %1459 = lshr i32 %1458, 4
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  store i8 %1461, i8* %37, align 1
  %1462 = icmp eq i32 %1449, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %40, align 1
  %1464 = lshr i32 %1449, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %43, align 1
  %1466 = lshr i32 %1443, 31
  %1467 = lshr i32 %1448, 31
  %1468 = xor i32 %1467, %1466
  %1469 = xor i32 %1464, %1466
  %1470 = add nuw nsw i32 %1469, %1468
  %1471 = icmp eq i32 %1470, 2
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %49, align 1
  %.v59 = select i1 %1462, i64 12, i64 26
  %1473 = add i64 %1405, %.v59
  store i64 %1473, i64* %3, align 8
  br i1 %1462, label %block_40f1b2, label %block_.L_40f1c0

block_40f1b2:                                     ; preds = %block_.L_40f1a6
  %1474 = add i64 %1352, -96
  %1475 = add i64 %1473, 3
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RAX.i513, align 8
  %1479 = add i64 %1352, -72
  %1480 = add i64 %1473, 7
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i64*
  %1482 = load i64, i64* %1481, align 8
  store i64 %1482, i64* %RCX.i357, align 8
  %1483 = add i64 %1473, 9
  store i64 %1483, i64* %3, align 8
  %1484 = inttoptr i64 %1482 to i32*
  store i32 %1477, i32* %1484, align 4
  %1485 = load i64, i64* %3, align 8
  %1486 = add i64 %1485, 39
  br label %block_.L_40f1e2

block_.L_40f1c0:                                  ; preds = %block_.L_40f1a6
  %1487 = add i64 %1352, -100
  %1488 = add i64 %1473, 4
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1487 to i32*
  %1490 = load i32, i32* %1489, align 4
  store i8 0, i8* %25, align 1
  %1491 = and i32 %1490, 255
  %1492 = tail call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  store i8 %1495, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1496 = icmp eq i32 %1490, 0
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %40, align 1
  %1498 = lshr i32 %1490, 31
  %1499 = trunc i32 %1498 to i8
  store i8 %1499, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v60 = select i1 %1496, i64 29, i64 10
  %1500 = add i64 %1473, %.v60
  store i64 %1500, i64* %3, align 8
  br i1 %1496, label %block_.L_40f1dd, label %block_40f1ca

block_40f1ca:                                     ; preds = %block_.L_40f1c0
  %1501 = add i64 %1352, -64
  %1502 = add i64 %1500, 4
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %RAX.i513, align 8
  %1505 = add i64 %1500, 10
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  store i32 6, i32* %1506, align 4
  %1507 = load i64, i64* %RBP.i, align 8
  %1508 = add i64 %1507, -100
  %1509 = load i64, i64* %3, align 8
  %1510 = add i64 %1509, 3
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1508 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RCX.i357, align 8
  %1514 = add i64 %1507, -72
  %1515 = add i64 %1509, 7
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i64*
  %1517 = load i64, i64* %1516, align 8
  store i64 %1517, i64* %RAX.i513, align 8
  %1518 = add i64 %1509, 9
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  store i32 %1512, i32* %1519, align 4
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_40f1dd

block_.L_40f1dd:                                  ; preds = %block_40f1ca, %block_.L_40f1c0
  %1520 = phi i64 [ %.pre44, %block_40f1ca ], [ %1500, %block_.L_40f1c0 ]
  %1521 = add i64 %1520, 5
  store i64 %1521, i64* %3, align 8
  br label %block_.L_40f1e2

block_.L_40f1e2:                                  ; preds = %block_.L_40f1dd, %block_40f1b2
  %storemerge40 = phi i64 [ %1486, %block_40f1b2 ], [ %1521, %block_.L_40f1dd ]
  %1522 = add i64 %storemerge40, 5
  store i64 %1522, i64* %3, align 8
  br label %block_.L_40f1e7

block_.L_40f1e7:                                  ; preds = %block_.L_40f1e2, %block_.L_40f1a1
  %storemerge39 = phi i64 [ %1441, %block_.L_40f1a1 ], [ %1522, %block_.L_40f1e2 ]
  %1523 = load i64, i64* %RBP.i, align 8
  %1524 = add i64 %1523, -20
  %1525 = add i64 %storemerge39, 7
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i32*
  store i32 1, i32* %1526, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_40f1ee

block_.L_40f1ee:                                  ; preds = %block_.L_40f1e7, %block_40f166, %block_.L_40f139, %block_40f10f, %block_40f0e4, %block_40f0a1, %block_40f02b, %block_.L_40efc3, %block_40efa3
  %1527 = phi i64 [ %754, %block_.L_40efc3 ], [ %.pre45, %block_.L_40f1e7 ], [ %1371, %block_40f166 ], [ %1349, %block_.L_40f139 ], [ %1271, %block_40f10f ], [ %1224, %block_40f0e4 ], [ %1151, %block_40f0a1 ], [ %939, %block_40f02b ], [ %699, %block_40efa3 ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_40ef56, %block_.L_40efc3 ], [ %MEMORY.13, %block_.L_40f1e7 ], [ %MEMORY.13, %block_40f166 ], [ %call2_40f101, %block_.L_40f139 ], [ %call2_40f101, %block_40f10f ], [ %call2_40f0cc, %block_40f0e4 ], [ %call2_40ef56, %block_40f0a1 ], [ %call2_40ef56, %block_40f02b ], [ %call2_40ef56, %block_40efa3 ]
  %1528 = load i64, i64* %RBP.i, align 8
  %1529 = add i64 %1528, -20
  %1530 = add i64 %1527, 3
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to i32*
  %1532 = load i32, i32* %1531, align 4
  %1533 = zext i32 %1532 to i64
  store i64 %1533, i64* %RAX.i513, align 8
  %1534 = load i64, i64* %6, align 8
  %1535 = add i64 %1534, 96
  store i64 %1535, i64* %6, align 8
  %1536 = icmp ugt i64 %1534, -97
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %25, align 1
  %1538 = trunc i64 %1535 to i32
  %1539 = and i32 %1538, 255
  %1540 = tail call i32 @llvm.ctpop.i32(i32 %1539)
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  %1543 = xor i8 %1542, 1
  store i8 %1543, i8* %32, align 1
  %1544 = xor i64 %1535, %1534
  %1545 = lshr i64 %1544, 4
  %1546 = trunc i64 %1545 to i8
  %1547 = and i8 %1546, 1
  store i8 %1547, i8* %37, align 1
  %1548 = icmp eq i64 %1535, 0
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %40, align 1
  %1550 = lshr i64 %1535, 63
  %1551 = trunc i64 %1550 to i8
  store i8 %1551, i8* %43, align 1
  %1552 = lshr i64 %1534, 63
  %1553 = xor i64 %1550, %1552
  %1554 = add nuw nsw i64 %1553, %1550
  %1555 = icmp eq i64 %1554, 2
  %1556 = zext i1 %1555 to i8
  store i8 %1556, i8* %49, align 1
  %1557 = add i64 %1527, 8
  store i64 %1557, i64* %3, align 8
  %1558 = add i64 %1534, 104
  %1559 = inttoptr i64 %1535 to i64*
  %1560 = load i64, i64* %1559, align 8
  store i64 %1560, i64* %RBX.i518, align 8
  store i64 %1558, i64* %6, align 8
  %1561 = add i64 %1527, 10
  store i64 %1561, i64* %3, align 8
  %1562 = add i64 %1534, 112
  %1563 = inttoptr i64 %1558 to i64*
  %1564 = load i64, i64* %1563, align 8
  store i64 %1564, i64* %R14.i520, align 8
  store i64 %1562, i64* %6, align 8
  %1565 = add i64 %1527, 11
  store i64 %1565, i64* %3, align 8
  %1566 = add i64 %1534, 120
  %1567 = inttoptr i64 %1562 to i64*
  %1568 = load i64, i64* %1567, align 8
  store i64 %1568, i64* %RBP.i, align 8
  store i64 %1566, i64* %6, align 8
  %1569 = add i64 %1527, 12
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1566 to i64*
  %1571 = load i64, i64* %1570, align 8
  store i64 %1571, i64* %3, align 8
  %1572 = add i64 %1534, 128
  store i64 %1572, i64* %6, align 8
  ret %struct.Memory* %MEMORY.18
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
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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
define %struct.Memory* @routine_movl_0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_movq_0x20__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 3, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__r8d__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1c__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R14D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -28
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
define %struct.Memory* @routine_movl__r14d__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %R14D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb6eec4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_je_.L_40ee5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jne_.L_40eeb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_40ef22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_callq_.is_ko(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.is_suicide(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40ef22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_je_.L_40eec8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jne_.L_40ef30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40ef30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_jne_.L_40ef8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x6__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -6
  %10 = icmp ult i32 %8, 6
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
define %struct.Memory* @routine_jne_.L_40ef86(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f0b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -88
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
define %struct.Memory* @routine_jne_.L_40efaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f1ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40efc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40efcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jne_.L_40f037(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_je_.L_40f037(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40f0b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0xb6eec4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_40f0ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f0b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_callq_.trymove(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40f15c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_jne_.L_40f0f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_callq_.tryko(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40f11b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 1, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_je_.L_40f139(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40f157(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f15c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40f172(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40f1a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_40f197(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 5, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f1a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 4, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f1e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40f1c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f1e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_je_.L_40f1dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x6____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 6, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
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
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
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
