; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1da32__rip__type = type <{ [4 x i8] }>
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
@G_0x1da32__rip_ = global %G_0x1da32__rip__type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4281b0.ILogsum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_436d10.P7OptimalAccuracyTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_427e70.Score2Prob(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7FillOptimalAccuracy(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -104
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 96
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI.i, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1319 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RDX.i1319, align 8
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1316 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -24
  %61 = load i64, i64* %RCX.i1316, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %R8.i1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -32
  %67 = load i64, i64* %R8.i1314, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -24
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %RCX.i1316, align 8
  %77 = add i64 %73, 7
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i64*
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %RCX.i1316, align 8
  %80 = add i64 %71, -48
  %81 = add i64 %73, 11
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i64*
  store i64 %79, i64* %82, align 8
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -24
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 4
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %84 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %RCX.i1316, align 8
  %89 = add i64 %88, 8
  %90 = add i64 %85, 8
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %RCX.i1316, align 8
  %93 = add i64 %83, -56
  %94 = add i64 %85, 12
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -24
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i64*
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %RCX.i1316, align 8
  %102 = add i64 %101, 16
  %103 = add i64 %98, 8
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %RCX.i1316, align 8
  %106 = add i64 %96, -64
  %107 = add i64 %98, 12
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i64*
  store i64 %105, i64* %108, align 8
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -24
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RCX.i1316, align 8
  %115 = add i64 %114, 24
  %116 = add i64 %111, 8
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i64*
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %RCX.i1316, align 8
  %119 = add i64 %109, -72
  %120 = add i64 %111, 12
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i64*
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -48
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 4
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %123 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %RCX.i1316, align 8
  %128 = add i64 %124, 7
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RCX.i1316, align 8
  %131 = add i64 %130, 12
  %132 = add i64 %124, 14
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 -987654321, i32* %133, align 4
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -48
  %136 = load i64, i64* %3, align 8
  %137 = add i64 %136, 4
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %RCX.i1316, align 8
  %140 = add i64 %136, 7
  store i64 %140, i64* %3, align 8
  %141 = inttoptr i64 %139 to i64*
  %142 = load i64, i64* %141, align 8
  store i64 %142, i64* %RCX.i1316, align 8
  %143 = add i64 %142, 8
  %144 = add i64 %136, 14
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %143 to i32*
  store i32 -987654321, i32* %145, align 4
  %146 = load i64, i64* %RBP.i, align 8
  %147 = add i64 %146, -48
  %148 = load i64, i64* %3, align 8
  %149 = add i64 %148, 4
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %147 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RCX.i1316, align 8
  %152 = add i64 %148, 7
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i64*
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %RCX.i1316, align 8
  %155 = add i64 %154, 4
  %156 = add i64 %148, 14
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i32*
  store i32 -987654321, i32* %157, align 4
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -48
  %160 = load i64, i64* %3, align 8
  %161 = add i64 %160, 4
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %159 to i64*
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %RCX.i1316, align 8
  %164 = add i64 %160, 7
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %RCX.i1316, align 8
  %167 = add i64 %160, 13
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %166 to i32*
  store i32 -987654321, i32* %168, align 4
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -48
  %171 = load i64, i64* %3, align 8
  %172 = add i64 %171, 4
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %170 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RCX.i1316, align 8
  %175 = add i64 %171, 7
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i64*
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %RCX.i1316, align 8
  %178 = add i64 %177, 16
  %179 = add i64 %171, 14
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i32*
  store i32 -987654321, i32* %180, align 4
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -80
  %183 = load i64, i64* %3, align 8
  %184 = add i64 %183, 7
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %182 to i32*
  store i32 0, i32* %185, align 4
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1241 = getelementptr inbounds %union.anon, %union.anon* %186, i64 0, i32 0
  %EAX.i1238 = bitcast %union.anon* %186 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_436645

block_.L_436645:                                  ; preds = %block_436651, %entry
  %187 = phi i64 [ %306, %block_436651 ], [ %.pre, %entry ]
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -80
  %190 = add i64 %187, 3
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX.i1241, align 8
  %194 = add i64 %188, -8
  %195 = add i64 %187, 6
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %194 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = sub i32 %192, %197
  %199 = icmp ult i32 %192, %197
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %14, align 1
  %201 = and i32 %198, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %21, align 1
  %206 = xor i32 %197, %192
  %207 = xor i32 %206, %198
  %208 = lshr i32 %207, 4
  %209 = trunc i32 %208 to i8
  %210 = and i8 %209, 1
  store i8 %210, i8* %26, align 1
  %211 = icmp eq i32 %198, 0
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %29, align 1
  %213 = lshr i32 %198, 31
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* %32, align 1
  %215 = lshr i32 %192, 31
  %216 = lshr i32 %197, 31
  %217 = xor i32 %216, %215
  %218 = xor i32 %213, %215
  %219 = add nuw nsw i32 %218, %217
  %220 = icmp eq i32 %219, 2
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %38, align 1
  %222 = icmp ne i8 %214, 0
  %223 = xor i1 %222, %220
  %.demorgan = or i1 %211, %223
  %.v = select i1 %.demorgan, i64 12, i64 80
  %224 = add i64 %187, %.v
  store i64 %224, i64* %3, align 8
  br i1 %.demorgan, label %block_436651, label %block_.L_436695

block_436651:                                     ; preds = %block_.L_436645
  %225 = add i64 %188, -72
  %226 = add i64 %224, 4
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i64*
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %RAX.i1241, align 8
  %229 = add i64 %224, 7
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i64*
  %231 = load i64, i64* %230, align 8
  store i64 %231, i64* %RAX.i1241, align 8
  %232 = add i64 %224, 11
  store i64 %232, i64* %3, align 8
  %233 = load i32, i32* %191, align 4
  %234 = sext i32 %233 to i64
  store i64 %234, i64* %RCX.i1316, align 8
  %235 = shl nsw i64 %234, 2
  %236 = add i64 %235, %231
  %237 = add i64 %224, 18
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  store i32 -987654321, i32* %238, align 4
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -64
  %241 = load i64, i64* %3, align 8
  %242 = add i64 %241, 4
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %240 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RAX.i1241, align 8
  %245 = add i64 %241, 7
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RAX.i1241, align 8
  %248 = add i64 %239, -80
  %249 = add i64 %241, 11
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  store i64 %252, i64* %RCX.i1316, align 8
  %253 = shl nsw i64 %252, 2
  %254 = add i64 %253, %247
  %255 = add i64 %241, 18
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  store i32 -987654321, i32* %256, align 4
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -56
  %259 = load i64, i64* %3, align 8
  %260 = add i64 %259, 4
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %258 to i64*
  %262 = load i64, i64* %261, align 8
  store i64 %262, i64* %RAX.i1241, align 8
  %263 = add i64 %259, 7
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i64*
  %265 = load i64, i64* %264, align 8
  store i64 %265, i64* %RAX.i1241, align 8
  %266 = add i64 %257, -80
  %267 = add i64 %259, 11
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %RCX.i1316, align 8
  %271 = shl nsw i64 %270, 2
  %272 = add i64 %271, %265
  %273 = add i64 %259, 18
  store i64 %273, i64* %3, align 8
  %274 = inttoptr i64 %272 to i32*
  store i32 -987654321, i32* %274, align 4
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -80
  %277 = load i64, i64* %3, align 8
  %278 = add i64 %277, 3
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %276 to i32*
  %280 = load i32, i32* %279, align 4
  %281 = add i32 %280, 1
  %282 = zext i32 %281 to i64
  store i64 %282, i64* %RAX.i1241, align 8
  %283 = icmp eq i32 %280, -1
  %284 = icmp eq i32 %281, 0
  %285 = or i1 %283, %284
  %286 = zext i1 %285 to i8
  store i8 %286, i8* %14, align 1
  %287 = and i32 %281, 255
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  store i8 %291, i8* %21, align 1
  %292 = xor i32 %281, %280
  %293 = lshr i32 %292, 4
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  store i8 %295, i8* %26, align 1
  %296 = zext i1 %284 to i8
  store i8 %296, i8* %29, align 1
  %297 = lshr i32 %281, 31
  %298 = trunc i32 %297 to i8
  store i8 %298, i8* %32, align 1
  %299 = lshr i32 %280, 31
  %300 = xor i32 %297, %299
  %301 = add nuw nsw i32 %300, %297
  %302 = icmp eq i32 %301, 2
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %38, align 1
  %304 = add i64 %277, 9
  store i64 %304, i64* %3, align 8
  store i32 %281, i32* %279, align 4
  %305 = load i64, i64* %3, align 8
  %306 = add i64 %305, -75
  store i64 %306, i64* %3, align 8
  br label %block_.L_436645

block_.L_436695:                                  ; preds = %block_.L_436645
  %307 = add i64 %188, -76
  %308 = add i64 %224, 7
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i32*
  store i32 1, i32* %309, align 4
  %EDX.i1118 = bitcast %union.anon* %51 to i32*
  %ECX.i1053 = bitcast %union.anon* %58 to i32*
  %RDI.i864 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %RSI.i846 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_43669c

block_.L_43669c:                                  ; preds = %block_.L_436c9c, %block_.L_436695
  %310 = phi i64 [ %2813, %block_.L_436c9c ], [ %.pre35, %block_.L_436695 ]
  %311 = load i64, i64* %RBP.i, align 8
  %312 = add i64 %311, -76
  %313 = add i64 %310, 3
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RAX.i1241, align 8
  %317 = add i64 %311, -4
  %318 = add i64 %310, 6
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = sub i32 %315, %320
  %322 = icmp ult i32 %315, %320
  %323 = zext i1 %322 to i8
  store i8 %323, i8* %14, align 1
  %324 = and i32 %321, 255
  %325 = tail call i32 @llvm.ctpop.i32(i32 %324)
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  %328 = xor i8 %327, 1
  store i8 %328, i8* %21, align 1
  %329 = xor i32 %320, %315
  %330 = xor i32 %329, %321
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %26, align 1
  %334 = icmp eq i32 %321, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %29, align 1
  %336 = lshr i32 %321, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %32, align 1
  %338 = lshr i32 %315, 31
  %339 = lshr i32 %320, 31
  %340 = xor i32 %339, %338
  %341 = xor i32 %336, %338
  %342 = add nuw nsw i32 %341, %340
  %343 = icmp eq i32 %342, 2
  %344 = zext i1 %343 to i8
  store i8 %344, i8* %38, align 1
  %345 = icmp ne i8 %337, 0
  %346 = xor i1 %345, %343
  %.demorgan68 = or i1 %334, %346
  %.v71 = select i1 %.demorgan68, i64 12, i64 1555
  %347 = add i64 %310, %.v71
  store i64 %347, i64* %3, align 8
  br i1 %.demorgan68, label %block_4366a8, label %block_.L_436caf

block_4366a8:                                     ; preds = %block_.L_43669c
  %348 = add i64 %311, -72
  %349 = add i64 %347, 4
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i64*
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %RAX.i1241, align 8
  %352 = add i64 %347, 8
  store i64 %352, i64* %3, align 8
  %353 = load i32, i32* %314, align 4
  %354 = sext i32 %353 to i64
  store i64 %354, i64* %RCX.i1316, align 8
  %355 = shl nsw i64 %354, 3
  %356 = add i64 %355, %351
  %357 = add i64 %347, 12
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %RAX.i1241, align 8
  %360 = add i64 %347, 18
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i32*
  store i32 -987654321, i32* %361, align 4
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -64
  %364 = load i64, i64* %3, align 8
  %365 = add i64 %364, 4
  store i64 %365, i64* %3, align 8
  %366 = inttoptr i64 %363 to i64*
  %367 = load i64, i64* %366, align 8
  store i64 %367, i64* %RAX.i1241, align 8
  %368 = add i64 %362, -76
  %369 = add i64 %364, 8
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  store i64 %372, i64* %RCX.i1316, align 8
  %373 = shl nsw i64 %372, 3
  %374 = add i64 %373, %367
  %375 = add i64 %364, 12
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %RAX.i1241, align 8
  %378 = add i64 %364, 18
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %377 to i32*
  store i32 -987654321, i32* %379, align 4
  %380 = load i64, i64* %RBP.i, align 8
  %381 = add i64 %380, -56
  %382 = load i64, i64* %3, align 8
  %383 = add i64 %382, 4
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %381 to i64*
  %385 = load i64, i64* %384, align 8
  store i64 %385, i64* %RAX.i1241, align 8
  %386 = add i64 %380, -76
  %387 = add i64 %382, 8
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  store i64 %390, i64* %RCX.i1316, align 8
  %391 = shl nsw i64 %390, 3
  %392 = add i64 %391, %385
  %393 = add i64 %382, 12
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i64*
  %395 = load i64, i64* %394, align 8
  store i64 %395, i64* %RAX.i1241, align 8
  %396 = add i64 %382, 18
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i32*
  store i32 -987654321, i32* %397, align 4
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -80
  %400 = load i64, i64* %3, align 8
  %401 = add i64 %400, 7
  store i64 %401, i64* %3, align 8
  %402 = inttoptr i64 %399 to i32*
  store i32 1, i32* %402, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_4366e5

block_.L_4366e5:                                  ; preds = %block_.L_4369d2, %block_4366a8
  %403 = phi i64 [ %1803, %block_.L_4369d2 ], [ %.pre36, %block_4366a8 ]
  %404 = load i64, i64* %RBP.i, align 8
  %405 = add i64 %404, -80
  %406 = add i64 %403, 3
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = zext i32 %408 to i64
  store i64 %409, i64* %RAX.i1241, align 8
  %410 = add i64 %404, -8
  %411 = add i64 %403, 6
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = sub i32 %408, %413
  %415 = icmp ult i32 %408, %413
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %14, align 1
  %417 = and i32 %414, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %21, align 1
  %422 = xor i32 %413, %408
  %423 = xor i32 %422, %414
  %424 = lshr i32 %423, 4
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  store i8 %426, i8* %26, align 1
  %427 = icmp eq i32 %414, 0
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %29, align 1
  %429 = lshr i32 %414, 31
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %32, align 1
  %431 = lshr i32 %408, 31
  %432 = lshr i32 %413, 31
  %433 = xor i32 %432, %431
  %434 = xor i32 %429, %431
  %435 = add nuw nsw i32 %434, %433
  %436 = icmp eq i32 %435, 2
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %38, align 1
  %438 = icmp ne i8 %430, 0
  %439 = xor i1 %438, %436
  %.demorgan69 = or i1 %427, %439
  %.v73 = select i1 %.demorgan69, i64 12, i64 829
  %440 = add i64 %403, %.v73
  store i64 %440, i64* %3, align 8
  br i1 %.demorgan69, label %block_4366f1, label %block_.L_436a22

block_4366f1:                                     ; preds = %block_.L_4366e5
  %441 = add i64 %404, -56
  %442 = add i64 %440, 4
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i64*
  %444 = load i64, i64* %443, align 8
  store i64 %444, i64* %RAX.i1241, align 8
  %445 = add i64 %404, -76
  %446 = add i64 %440, 8
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = sext i32 %448 to i64
  store i64 %449, i64* %RCX.i1316, align 8
  %450 = shl nsw i64 %449, 3
  %451 = add i64 %450, %444
  %452 = add i64 %440, 12
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i64*
  %454 = load i64, i64* %453, align 8
  store i64 %454, i64* %RAX.i1241, align 8
  %455 = add i64 %440, 16
  store i64 %455, i64* %3, align 8
  %456 = load i32, i32* %407, align 4
  %457 = sext i32 %456 to i64
  store i64 %457, i64* %RCX.i1316, align 8
  %458 = shl nsw i64 %457, 2
  %459 = add i64 %458, %454
  %460 = add i64 %440, 23
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  store i32 -987654321, i32* %461, align 4
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -56
  %464 = load i64, i64* %3, align 8
  %465 = add i64 %464, 4
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %463 to i64*
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %RAX.i1241, align 8
  %468 = add i64 %462, -76
  %469 = add i64 %464, 7
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = add i32 %471, -1
  %473 = zext i32 %472 to i64
  store i64 %473, i64* %RDX.i1319, align 8
  %474 = icmp eq i32 %471, 0
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %14, align 1
  %476 = and i32 %472, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %21, align 1
  %481 = xor i32 %472, %471
  %482 = lshr i32 %481, 4
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  store i8 %484, i8* %26, align 1
  %485 = icmp eq i32 %472, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %29, align 1
  %487 = lshr i32 %472, 31
  %488 = trunc i32 %487 to i8
  store i8 %488, i8* %32, align 1
  %489 = lshr i32 %471, 31
  %490 = xor i32 %487, %489
  %491 = add nuw nsw i32 %490, %489
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %38, align 1
  %494 = sext i32 %472 to i64
  store i64 %494, i64* %RCX.i1316, align 8
  %495 = shl nsw i64 %494, 3
  %496 = add i64 %467, %495
  %497 = add i64 %464, 17
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i64*
  %499 = load i64, i64* %498, align 8
  store i64 %499, i64* %RAX.i1241, align 8
  %500 = add i64 %462, -80
  %501 = add i64 %464, 20
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = add i32 %503, -1
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RDX.i1319, align 8
  %506 = icmp eq i32 %503, 0
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %14, align 1
  %508 = and i32 %504, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %21, align 1
  %513 = xor i32 %504, %503
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  store i8 %516, i8* %26, align 1
  %517 = icmp eq i32 %504, 0
  %518 = zext i1 %517 to i8
  store i8 %518, i8* %29, align 1
  %519 = lshr i32 %504, 31
  %520 = trunc i32 %519 to i8
  store i8 %520, i8* %32, align 1
  %521 = lshr i32 %503, 31
  %522 = xor i32 %519, %521
  %523 = add nuw nsw i32 %522, %521
  %524 = icmp eq i32 %523, 2
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %38, align 1
  %526 = sext i32 %504 to i64
  store i64 %526, i64* %RCX.i1316, align 8
  %527 = shl nsw i64 %526, 2
  %528 = add i64 %499, %527
  %529 = add i64 %464, 29
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RDX.i1319, align 8
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -84
  %535 = add i64 %464, 32
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  store i32 %531, i32* %536, align 4
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -56
  %539 = load i64, i64* %3, align 8
  %540 = add i64 %539, 4
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %538 to i64*
  %542 = load i64, i64* %541, align 8
  store i64 %542, i64* %RAX.i1241, align 8
  %543 = add i64 %537, -76
  %544 = add i64 %539, 8
  store i64 %544, i64* %3, align 8
  %545 = inttoptr i64 %543 to i32*
  %546 = load i32, i32* %545, align 4
  %547 = sext i32 %546 to i64
  store i64 %547, i64* %RCX.i1316, align 8
  %548 = shl nsw i64 %547, 3
  %549 = add i64 %548, %542
  %550 = add i64 %539, 12
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RAX.i1241, align 8
  %553 = add i64 %537, -80
  %554 = add i64 %539, 16
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  store i64 %557, i64* %RCX.i1316, align 8
  %558 = load i32, i32* %EDX.i1118, align 4
  %559 = shl nsw i64 %557, 2
  %560 = add i64 %552, %559
  %561 = add i64 %539, 19
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = sub i32 %558, %563
  %565 = icmp ult i32 %558, %563
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %14, align 1
  %567 = and i32 %564, 255
  %568 = tail call i32 @llvm.ctpop.i32(i32 %567)
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  %571 = xor i8 %570, 1
  store i8 %571, i8* %21, align 1
  %572 = xor i32 %563, %558
  %573 = xor i32 %572, %564
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %26, align 1
  %577 = icmp eq i32 %564, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %29, align 1
  %579 = lshr i32 %564, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %32, align 1
  %581 = lshr i32 %558, 31
  %582 = lshr i32 %563, 31
  %583 = xor i32 %582, %581
  %584 = xor i32 %579, %581
  %585 = add nuw nsw i32 %584, %583
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %38, align 1
  %588 = icmp ne i8 %580, 0
  %589 = xor i1 %588, %586
  %590 = or i1 %577, %589
  %.v83 = select i1 %590, i64 47, i64 25
  %591 = add i64 %539, %.v83
  store i64 %591, i64* %3, align 8
  br i1 %590, label %block_.L_436757, label %block_436741

block_436741:                                     ; preds = %block_4366f1
  %592 = add i64 %537, -84
  %593 = add i64 %591, 3
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RAX.i1241, align 8
  %597 = add i64 %591, 7
  store i64 %597, i64* %3, align 8
  %598 = load i64, i64* %541, align 8
  store i64 %598, i64* %RCX.i1316, align 8
  %599 = add i64 %591, 11
  store i64 %599, i64* %3, align 8
  %600 = load i32, i32* %545, align 4
  %601 = sext i32 %600 to i64
  store i64 %601, i64* %RDX.i1319, align 8
  %602 = shl nsw i64 %601, 3
  %603 = add i64 %602, %598
  %604 = add i64 %591, 15
  store i64 %604, i64* %3, align 8
  %605 = inttoptr i64 %603 to i64*
  %606 = load i64, i64* %605, align 8
  store i64 %606, i64* %RCX.i1316, align 8
  %607 = add i64 %591, 19
  store i64 %607, i64* %3, align 8
  %608 = load i32, i32* %555, align 4
  %609 = sext i32 %608 to i64
  store i64 %609, i64* %RDX.i1319, align 8
  %610 = shl nsw i64 %609, 2
  %611 = add i64 %610, %606
  %612 = add i64 %591, 22
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  store i32 %595, i32* %613, align 4
  %.pre37 = load i64, i64* %RBP.i, align 8
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_436757

block_.L_436757:                                  ; preds = %block_436741, %block_4366f1
  %614 = phi i64 [ %.pre38, %block_436741 ], [ %591, %block_4366f1 ]
  %615 = phi i64 [ %.pre37, %block_436741 ], [ %537, %block_4366f1 ]
  %616 = add i64 %615, -64
  %617 = add i64 %614, 4
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i64*
  %619 = load i64, i64* %618, align 8
  store i64 %619, i64* %RAX.i1241, align 8
  %620 = add i64 %615, -76
  %621 = add i64 %614, 7
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %620 to i32*
  %623 = load i32, i32* %622, align 4
  %624 = add i32 %623, -1
  %625 = zext i32 %624 to i64
  store i64 %625, i64* %RCX.i1316, align 8
  %626 = icmp eq i32 %623, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %14, align 1
  %628 = and i32 %624, 255
  %629 = tail call i32 @llvm.ctpop.i32(i32 %628)
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = xor i8 %631, 1
  store i8 %632, i8* %21, align 1
  %633 = xor i32 %624, %623
  %634 = lshr i32 %633, 4
  %635 = trunc i32 %634 to i8
  %636 = and i8 %635, 1
  store i8 %636, i8* %26, align 1
  %637 = icmp eq i32 %624, 0
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %29, align 1
  %639 = lshr i32 %624, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %32, align 1
  %641 = lshr i32 %623, 31
  %642 = xor i32 %639, %641
  %643 = add nuw nsw i32 %642, %641
  %644 = icmp eq i32 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %38, align 1
  %646 = sext i32 %624 to i64
  store i64 %646, i64* %RDX.i1319, align 8
  %647 = shl nsw i64 %646, 3
  %648 = add i64 %619, %647
  %649 = add i64 %614, 17
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RAX.i1241, align 8
  %652 = add i64 %615, -80
  %653 = add i64 %614, 20
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = add i32 %655, -1
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RCX.i1316, align 8
  %658 = icmp eq i32 %655, 0
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %14, align 1
  %660 = and i32 %656, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %21, align 1
  %665 = xor i32 %656, %655
  %666 = lshr i32 %665, 4
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  store i8 %668, i8* %26, align 1
  %669 = icmp eq i32 %656, 0
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %29, align 1
  %671 = lshr i32 %656, 31
  %672 = trunc i32 %671 to i8
  store i8 %672, i8* %32, align 1
  %673 = lshr i32 %655, 31
  %674 = xor i32 %671, %673
  %675 = add nuw nsw i32 %674, %673
  %676 = icmp eq i32 %675, 2
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %38, align 1
  %678 = sext i32 %656 to i64
  store i64 %678, i64* %RDX.i1319, align 8
  %679 = shl nsw i64 %678, 2
  %680 = add i64 %651, %679
  %681 = add i64 %614, 29
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i32*
  %683 = load i32, i32* %682, align 4
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RCX.i1316, align 8
  %685 = load i64, i64* %RBP.i, align 8
  %686 = add i64 %685, -84
  %687 = add i64 %614, 32
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i32*
  store i32 %683, i32* %688, align 4
  %689 = load i64, i64* %RBP.i, align 8
  %690 = add i64 %689, -56
  %691 = load i64, i64* %3, align 8
  %692 = add i64 %691, 4
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %690 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %RAX.i1241, align 8
  %695 = add i64 %689, -76
  %696 = add i64 %691, 8
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = sext i32 %698 to i64
  store i64 %699, i64* %RDX.i1319, align 8
  %700 = shl nsw i64 %699, 3
  %701 = add i64 %700, %694
  %702 = add i64 %691, 12
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %RAX.i1241, align 8
  %705 = add i64 %689, -80
  %706 = add i64 %691, 16
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i32*
  %708 = load i32, i32* %707, align 4
  %709 = sext i32 %708 to i64
  store i64 %709, i64* %RDX.i1319, align 8
  %710 = load i32, i32* %ECX.i1053, align 4
  %711 = shl nsw i64 %709, 2
  %712 = add i64 %704, %711
  %713 = add i64 %691, 19
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i32*
  %715 = load i32, i32* %714, align 4
  %716 = sub i32 %710, %715
  %717 = icmp ult i32 %710, %715
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %14, align 1
  %719 = and i32 %716, 255
  %720 = tail call i32 @llvm.ctpop.i32(i32 %719)
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  store i8 %723, i8* %21, align 1
  %724 = xor i32 %715, %710
  %725 = xor i32 %724, %716
  %726 = lshr i32 %725, 4
  %727 = trunc i32 %726 to i8
  %728 = and i8 %727, 1
  store i8 %728, i8* %26, align 1
  %729 = icmp eq i32 %716, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %29, align 1
  %731 = lshr i32 %716, 31
  %732 = trunc i32 %731 to i8
  store i8 %732, i8* %32, align 1
  %733 = lshr i32 %710, 31
  %734 = lshr i32 %715, 31
  %735 = xor i32 %734, %733
  %736 = xor i32 %731, %733
  %737 = add nuw nsw i32 %736, %735
  %738 = icmp eq i32 %737, 2
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %38, align 1
  %740 = icmp ne i8 %732, 0
  %741 = xor i1 %740, %738
  %742 = or i1 %729, %741
  %.v84 = select i1 %742, i64 47, i64 25
  %743 = add i64 %691, %.v84
  store i64 %743, i64* %3, align 8
  br i1 %742, label %block_.L_4367a6, label %block_436790

block_436790:                                     ; preds = %block_.L_436757
  %744 = add i64 %689, -84
  %745 = add i64 %743, 3
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RAX.i1241, align 8
  %749 = add i64 %743, 7
  store i64 %749, i64* %3, align 8
  %750 = load i64, i64* %693, align 8
  store i64 %750, i64* %RCX.i1316, align 8
  %751 = add i64 %743, 11
  store i64 %751, i64* %3, align 8
  %752 = load i32, i32* %697, align 4
  %753 = sext i32 %752 to i64
  store i64 %753, i64* %RDX.i1319, align 8
  %754 = shl nsw i64 %753, 3
  %755 = add i64 %754, %750
  %756 = add i64 %743, 15
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i64*
  %758 = load i64, i64* %757, align 8
  store i64 %758, i64* %RCX.i1316, align 8
  %759 = add i64 %743, 19
  store i64 %759, i64* %3, align 8
  %760 = load i32, i32* %707, align 4
  %761 = sext i32 %760 to i64
  store i64 %761, i64* %RDX.i1319, align 8
  %762 = shl nsw i64 %761, 2
  %763 = add i64 %762, %758
  %764 = add i64 %743, 22
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i32*
  store i32 %747, i32* %765, align 4
  %.pre39 = load i64, i64* %RBP.i, align 8
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_4367a6

block_.L_4367a6:                                  ; preds = %block_436790, %block_.L_436757
  %766 = phi i64 [ %.pre40, %block_436790 ], [ %743, %block_.L_436757 ]
  %767 = phi i64 [ %.pre39, %block_436790 ], [ %689, %block_.L_436757 ]
  %768 = add i64 %767, -72
  %769 = add i64 %766, 4
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i64*
  %771 = load i64, i64* %770, align 8
  store i64 %771, i64* %RAX.i1241, align 8
  %772 = add i64 %767, -76
  %773 = add i64 %766, 7
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = add i32 %775, -1
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %RCX.i1316, align 8
  %778 = icmp eq i32 %775, 0
  %779 = zext i1 %778 to i8
  store i8 %779, i8* %14, align 1
  %780 = and i32 %776, 255
  %781 = tail call i32 @llvm.ctpop.i32(i32 %780)
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  %784 = xor i8 %783, 1
  store i8 %784, i8* %21, align 1
  %785 = xor i32 %776, %775
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %26, align 1
  %789 = icmp eq i32 %776, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %29, align 1
  %791 = lshr i32 %776, 31
  %792 = trunc i32 %791 to i8
  store i8 %792, i8* %32, align 1
  %793 = lshr i32 %775, 31
  %794 = xor i32 %791, %793
  %795 = add nuw nsw i32 %794, %793
  %796 = icmp eq i32 %795, 2
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %38, align 1
  %798 = sext i32 %776 to i64
  store i64 %798, i64* %RDX.i1319, align 8
  %799 = shl nsw i64 %798, 3
  %800 = add i64 %771, %799
  %801 = add i64 %766, 17
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i64*
  %803 = load i64, i64* %802, align 8
  store i64 %803, i64* %RAX.i1241, align 8
  %804 = add i64 %767, -80
  %805 = add i64 %766, 20
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = add i32 %807, -1
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RCX.i1316, align 8
  %810 = icmp eq i32 %807, 0
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %14, align 1
  %812 = and i32 %808, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %21, align 1
  %817 = xor i32 %808, %807
  %818 = lshr i32 %817, 4
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  store i8 %820, i8* %26, align 1
  %821 = icmp eq i32 %808, 0
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %29, align 1
  %823 = lshr i32 %808, 31
  %824 = trunc i32 %823 to i8
  store i8 %824, i8* %32, align 1
  %825 = lshr i32 %807, 31
  %826 = xor i32 %823, %825
  %827 = add nuw nsw i32 %826, %825
  %828 = icmp eq i32 %827, 2
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %38, align 1
  %830 = sext i32 %808 to i64
  store i64 %830, i64* %RDX.i1319, align 8
  %831 = shl nsw i64 %830, 2
  %832 = add i64 %803, %831
  %833 = add i64 %766, 29
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i32*
  %835 = load i32, i32* %834, align 4
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RCX.i1316, align 8
  %837 = load i64, i64* %RBP.i, align 8
  %838 = add i64 %837, -84
  %839 = add i64 %766, 32
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i32*
  store i32 %835, i32* %840, align 4
  %841 = load i64, i64* %RBP.i, align 8
  %842 = add i64 %841, -56
  %843 = load i64, i64* %3, align 8
  %844 = add i64 %843, 4
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %842 to i64*
  %846 = load i64, i64* %845, align 8
  store i64 %846, i64* %RAX.i1241, align 8
  %847 = add i64 %841, -76
  %848 = add i64 %843, 8
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i32*
  %850 = load i32, i32* %849, align 4
  %851 = sext i32 %850 to i64
  store i64 %851, i64* %RDX.i1319, align 8
  %852 = shl nsw i64 %851, 3
  %853 = add i64 %852, %846
  %854 = add i64 %843, 12
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i64*
  %856 = load i64, i64* %855, align 8
  store i64 %856, i64* %RAX.i1241, align 8
  %857 = add i64 %841, -80
  %858 = add i64 %843, 16
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i32*
  %860 = load i32, i32* %859, align 4
  %861 = sext i32 %860 to i64
  store i64 %861, i64* %RDX.i1319, align 8
  %862 = load i32, i32* %ECX.i1053, align 4
  %863 = shl nsw i64 %861, 2
  %864 = add i64 %856, %863
  %865 = add i64 %843, 19
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i32*
  %867 = load i32, i32* %866, align 4
  %868 = sub i32 %862, %867
  %869 = icmp ult i32 %862, %867
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %14, align 1
  %871 = and i32 %868, 255
  %872 = tail call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %21, align 1
  %876 = xor i32 %867, %862
  %877 = xor i32 %876, %868
  %878 = lshr i32 %877, 4
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  store i8 %880, i8* %26, align 1
  %881 = icmp eq i32 %868, 0
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %29, align 1
  %883 = lshr i32 %868, 31
  %884 = trunc i32 %883 to i8
  store i8 %884, i8* %32, align 1
  %885 = lshr i32 %862, 31
  %886 = lshr i32 %867, 31
  %887 = xor i32 %886, %885
  %888 = xor i32 %883, %885
  %889 = add nuw nsw i32 %888, %887
  %890 = icmp eq i32 %889, 2
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %38, align 1
  %892 = icmp ne i8 %884, 0
  %893 = xor i1 %892, %890
  %894 = or i1 %881, %893
  %.v85 = select i1 %894, i64 47, i64 25
  %895 = add i64 %843, %.v85
  store i64 %895, i64* %3, align 8
  br i1 %894, label %block_.L_4367f5, label %block_4367df

block_4367df:                                     ; preds = %block_.L_4367a6
  %896 = add i64 %841, -84
  %897 = add i64 %895, 3
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = zext i32 %899 to i64
  store i64 %900, i64* %RAX.i1241, align 8
  %901 = add i64 %895, 7
  store i64 %901, i64* %3, align 8
  %902 = load i64, i64* %845, align 8
  store i64 %902, i64* %RCX.i1316, align 8
  %903 = add i64 %895, 11
  store i64 %903, i64* %3, align 8
  %904 = load i32, i32* %849, align 4
  %905 = sext i32 %904 to i64
  store i64 %905, i64* %RDX.i1319, align 8
  %906 = shl nsw i64 %905, 3
  %907 = add i64 %906, %902
  %908 = add i64 %895, 15
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i64*
  %910 = load i64, i64* %909, align 8
  store i64 %910, i64* %RCX.i1316, align 8
  %911 = add i64 %895, 19
  store i64 %911, i64* %3, align 8
  %912 = load i32, i32* %859, align 4
  %913 = sext i32 %912 to i64
  store i64 %913, i64* %RDX.i1319, align 8
  %914 = shl nsw i64 %913, 2
  %915 = add i64 %914, %910
  %916 = add i64 %895, 22
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  store i32 %899, i32* %917, align 4
  %.pre41 = load i64, i64* %RBP.i, align 8
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_4367f5

block_.L_4367f5:                                  ; preds = %block_4367df, %block_.L_4367a6
  %918 = phi i64 [ %.pre42, %block_4367df ], [ %895, %block_.L_4367a6 ]
  %919 = phi i64 [ %.pre41, %block_4367df ], [ %841, %block_.L_4367a6 ]
  %920 = add i64 %919, -48
  %921 = add i64 %918, 4
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i64*
  %923 = load i64, i64* %922, align 8
  store i64 %923, i64* %RAX.i1241, align 8
  %924 = add i64 %919, -76
  %925 = add i64 %918, 7
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = add i32 %927, -1
  %929 = zext i32 %928 to i64
  store i64 %929, i64* %RCX.i1316, align 8
  %930 = icmp eq i32 %927, 0
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %14, align 1
  %932 = and i32 %928, 255
  %933 = tail call i32 @llvm.ctpop.i32(i32 %932)
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  %936 = xor i8 %935, 1
  store i8 %936, i8* %21, align 1
  %937 = xor i32 %928, %927
  %938 = lshr i32 %937, 4
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  store i8 %940, i8* %26, align 1
  %941 = icmp eq i32 %928, 0
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %29, align 1
  %943 = lshr i32 %928, 31
  %944 = trunc i32 %943 to i8
  store i8 %944, i8* %32, align 1
  %945 = lshr i32 %927, 31
  %946 = xor i32 %943, %945
  %947 = add nuw nsw i32 %946, %945
  %948 = icmp eq i32 %947, 2
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %38, align 1
  %950 = sext i32 %928 to i64
  store i64 %950, i64* %RDX.i1319, align 8
  %951 = shl nsw i64 %950, 3
  %952 = add i64 %923, %951
  %953 = add i64 %918, 17
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i64*
  %955 = load i64, i64* %954, align 8
  store i64 %955, i64* %RAX.i1241, align 8
  %956 = add i64 %918, 19
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = zext i32 %958 to i64
  store i64 %959, i64* %RCX.i1316, align 8
  %960 = add i64 %919, -84
  %961 = add i64 %918, 22
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i32*
  store i32 %958, i32* %962, align 4
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -56
  %965 = load i64, i64* %3, align 8
  %966 = add i64 %965, 4
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %964 to i64*
  %968 = load i64, i64* %967, align 8
  store i64 %968, i64* %RAX.i1241, align 8
  %969 = add i64 %963, -76
  %970 = add i64 %965, 8
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = sext i32 %972 to i64
  store i64 %973, i64* %RDX.i1319, align 8
  %974 = shl nsw i64 %973, 3
  %975 = add i64 %974, %968
  %976 = add i64 %965, 12
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %RAX.i1241, align 8
  %979 = add i64 %963, -80
  %980 = add i64 %965, 16
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = sext i32 %982 to i64
  store i64 %983, i64* %RDX.i1319, align 8
  %984 = load i32, i32* %ECX.i1053, align 4
  %985 = shl nsw i64 %983, 2
  %986 = add i64 %978, %985
  %987 = add i64 %965, 19
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = sub i32 %984, %989
  %991 = icmp ult i32 %984, %989
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %14, align 1
  %993 = and i32 %990, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  %998 = xor i32 %989, %984
  %999 = xor i32 %998, %990
  %1000 = lshr i32 %999, 4
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  store i8 %1002, i8* %26, align 1
  %1003 = icmp eq i32 %990, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %29, align 1
  %1005 = lshr i32 %990, 31
  %1006 = trunc i32 %1005 to i8
  store i8 %1006, i8* %32, align 1
  %1007 = lshr i32 %984, 31
  %1008 = lshr i32 %989, 31
  %1009 = xor i32 %1008, %1007
  %1010 = xor i32 %1005, %1007
  %1011 = add nuw nsw i32 %1010, %1009
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %38, align 1
  %1014 = icmp ne i8 %1006, 0
  %1015 = xor i1 %1014, %1012
  %1016 = or i1 %1003, %1015
  %.v86 = select i1 %1016, i64 47, i64 25
  %1017 = add i64 %965, %.v86
  store i64 %1017, i64* %3, align 8
  br i1 %1016, label %block_.L_43683a, label %block_436824

block_436824:                                     ; preds = %block_.L_4367f5
  %1018 = add i64 %963, -84
  %1019 = add i64 %1017, 3
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RAX.i1241, align 8
  %1023 = add i64 %1017, 7
  store i64 %1023, i64* %3, align 8
  %1024 = load i64, i64* %967, align 8
  store i64 %1024, i64* %RCX.i1316, align 8
  %1025 = add i64 %1017, 11
  store i64 %1025, i64* %3, align 8
  %1026 = load i32, i32* %971, align 4
  %1027 = sext i32 %1026 to i64
  store i64 %1027, i64* %RDX.i1319, align 8
  %1028 = shl nsw i64 %1027, 3
  %1029 = add i64 %1028, %1024
  %1030 = add i64 %1017, 15
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i64*
  %1032 = load i64, i64* %1031, align 8
  store i64 %1032, i64* %RCX.i1316, align 8
  %1033 = add i64 %1017, 19
  store i64 %1033, i64* %3, align 8
  %1034 = load i32, i32* %981, align 4
  %1035 = sext i32 %1034 to i64
  store i64 %1035, i64* %RDX.i1319, align 8
  %1036 = shl nsw i64 %1035, 2
  %1037 = add i64 %1036, %1032
  %1038 = add i64 %1017, 22
  store i64 %1038, i64* %3, align 8
  %1039 = inttoptr i64 %1037 to i32*
  store i32 %1021, i32* %1039, align 4
  %.pre43 = load i64, i64* %RBP.i, align 8
  %.pre44 = load i64, i64* %3, align 8
  br label %block_.L_43683a

block_.L_43683a:                                  ; preds = %block_436824, %block_.L_4367f5
  %1040 = phi i64 [ %.pre44, %block_436824 ], [ %1017, %block_.L_4367f5 ]
  %1041 = phi i64 [ %.pre43, %block_436824 ], [ %963, %block_.L_4367f5 ]
  %1042 = add i64 %1041, -56
  %1043 = add i64 %1040, 4
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %RAX.i1241, align 8
  %1046 = add i64 %1041, -76
  %1047 = add i64 %1040, 8
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i32*
  %1049 = load i32, i32* %1048, align 4
  %1050 = sext i32 %1049 to i64
  store i64 %1050, i64* %RCX.i1316, align 8
  %1051 = shl nsw i64 %1050, 3
  %1052 = add i64 %1051, %1045
  %1053 = add i64 %1040, 12
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i64*
  %1055 = load i64, i64* %1054, align 8
  store i64 %1055, i64* %RAX.i1241, align 8
  %1056 = add i64 %1041, -80
  %1057 = add i64 %1040, 16
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = sext i32 %1059 to i64
  store i64 %1060, i64* %RCX.i1316, align 8
  %1061 = shl nsw i64 %1060, 2
  %1062 = add i64 %1061, %1055
  %1063 = add i64 %1040, 19
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  %1065 = load i32, i32* %1064, align 4
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RDI.i864, align 8
  %1067 = add i64 %1041, -16
  %1068 = add i64 %1040, 23
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i64*
  %1070 = load i64, i64* %1069, align 8
  store i64 %1070, i64* %RAX.i1241, align 8
  %1071 = add i64 %1070, 8
  %1072 = add i64 %1040, 27
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1071 to i64*
  %1074 = load i64, i64* %1073, align 8
  store i64 %1074, i64* %RAX.i1241, align 8
  %1075 = add i64 %1040, 31
  store i64 %1075, i64* %3, align 8
  %1076 = load i32, i32* %1048, align 4
  %1077 = sext i32 %1076 to i64
  store i64 %1077, i64* %RCX.i1316, align 8
  %1078 = shl nsw i64 %1077, 3
  %1079 = add i64 %1078, %1074
  %1080 = add i64 %1040, 35
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i64*
  %1082 = load i64, i64* %1081, align 8
  store i64 %1082, i64* %RAX.i1241, align 8
  %1083 = add i64 %1040, 39
  store i64 %1083, i64* %3, align 8
  %1084 = load i32, i32* %1058, align 4
  %1085 = sext i32 %1084 to i64
  store i64 %1085, i64* %RCX.i1316, align 8
  %1086 = shl nsw i64 %1085, 2
  %1087 = add i64 %1086, %1082
  %1088 = add i64 %1040, 42
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i32*
  %1090 = load i32, i32* %1089, align 4
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RSI.i846, align 8
  %1092 = add i64 %1040, -59018
  %1093 = add i64 %1040, 47
  %1094 = load i64, i64* %6, align 8
  %1095 = add i64 %1094, -8
  %1096 = inttoptr i64 %1095 to i64*
  store i64 %1093, i64* %1096, align 8
  store i64 %1095, i64* %6, align 8
  store i64 %1092, i64* %3, align 8
  %call2_436864 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1092, %struct.Memory* %2)
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -56
  %1099 = load i64, i64* %3, align 8
  %1100 = add i64 %1099, 4
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1098 to i64*
  %1102 = load i64, i64* %1101, align 8
  store i64 %1102, i64* %RCX.i1316, align 8
  %1103 = add i64 %1097, -76
  %1104 = add i64 %1099, 8
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = sext i32 %1106 to i64
  store i64 %1107, i64* %RDX.i1319, align 8
  %1108 = shl nsw i64 %1107, 3
  %1109 = add i64 %1108, %1102
  %1110 = add i64 %1099, 12
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i64*
  %1112 = load i64, i64* %1111, align 8
  store i64 %1112, i64* %RCX.i1316, align 8
  %1113 = add i64 %1097, -80
  %1114 = add i64 %1099, 16
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i32*
  %1116 = load i32, i32* %1115, align 4
  %1117 = sext i32 %1116 to i64
  store i64 %1117, i64* %RDX.i1319, align 8
  %1118 = shl nsw i64 %1117, 2
  %1119 = add i64 %1118, %1112
  %1120 = load i32, i32* %EAX.i1238, align 4
  %1121 = add i64 %1099, 19
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1119 to i32*
  store i32 %1120, i32* %1122, align 4
  %1123 = load i64, i64* %RBP.i, align 8
  %1124 = add i64 %1123, -72
  %1125 = load i64, i64* %3, align 8
  %1126 = add i64 %1125, 4
  store i64 %1126, i64* %3, align 8
  %1127 = inttoptr i64 %1124 to i64*
  %1128 = load i64, i64* %1127, align 8
  store i64 %1128, i64* %RCX.i1316, align 8
  %1129 = add i64 %1123, -76
  %1130 = add i64 %1125, 8
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i32*
  %1132 = load i32, i32* %1131, align 4
  %1133 = sext i32 %1132 to i64
  store i64 %1133, i64* %RDX.i1319, align 8
  %1134 = shl nsw i64 %1133, 3
  %1135 = add i64 %1134, %1128
  %1136 = add i64 %1125, 12
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i64*
  %1138 = load i64, i64* %1137, align 8
  store i64 %1138, i64* %RCX.i1316, align 8
  %1139 = add i64 %1123, -80
  %1140 = add i64 %1125, 16
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = sext i32 %1142 to i64
  store i64 %1143, i64* %RDX.i1319, align 8
  %1144 = shl nsw i64 %1143, 2
  %1145 = add i64 %1144, %1138
  %1146 = add i64 %1125, 23
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  store i32 -987654321, i32* %1147, align 4
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -56
  %1150 = load i64, i64* %3, align 8
  %1151 = add i64 %1150, 4
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1149 to i64*
  %1153 = load i64, i64* %1152, align 8
  store i64 %1153, i64* %RCX.i1316, align 8
  %1154 = add i64 %1148, -76
  %1155 = add i64 %1150, 8
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = sext i32 %1157 to i64
  store i64 %1158, i64* %RDX.i1319, align 8
  %1159 = shl nsw i64 %1158, 3
  %1160 = add i64 %1159, %1153
  %1161 = add i64 %1150, 12
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i64*
  %1163 = load i64, i64* %1162, align 8
  store i64 %1163, i64* %RCX.i1316, align 8
  %1164 = add i64 %1148, -80
  %1165 = add i64 %1150, 15
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = add i32 %1167, -1
  %1169 = zext i32 %1168 to i64
  store i64 %1169, i64* %RAX.i1241, align 8
  %1170 = icmp eq i32 %1167, 0
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %14, align 1
  %1172 = and i32 %1168, 255
  %1173 = tail call i32 @llvm.ctpop.i32(i32 %1172)
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  %1176 = xor i8 %1175, 1
  store i8 %1176, i8* %21, align 1
  %1177 = xor i32 %1168, %1167
  %1178 = lshr i32 %1177, 4
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  store i8 %1180, i8* %26, align 1
  %1181 = icmp eq i32 %1168, 0
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %29, align 1
  %1183 = lshr i32 %1168, 31
  %1184 = trunc i32 %1183 to i8
  store i8 %1184, i8* %32, align 1
  %1185 = lshr i32 %1167, 31
  %1186 = xor i32 %1183, %1185
  %1187 = add nuw nsw i32 %1186, %1185
  %1188 = icmp eq i32 %1187, 2
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %38, align 1
  %1190 = sext i32 %1168 to i64
  store i64 %1190, i64* %RDX.i1319, align 8
  %1191 = shl nsw i64 %1190, 2
  %1192 = add i64 %1163, %1191
  %1193 = add i64 %1150, 24
  store i64 %1193, i64* %3, align 8
  %1194 = inttoptr i64 %1192 to i32*
  %1195 = load i32, i32* %1194, align 4
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RAX.i1241, align 8
  %1197 = add i64 %1148, -84
  %1198 = add i64 %1150, 27
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  store i32 %1195, i32* %1199, align 4
  %1200 = load i64, i64* %RBP.i, align 8
  %1201 = add i64 %1200, -72
  %1202 = load i64, i64* %3, align 8
  %1203 = add i64 %1202, 4
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1201 to i64*
  %1205 = load i64, i64* %1204, align 8
  store i64 %1205, i64* %RCX.i1316, align 8
  %1206 = add i64 %1200, -76
  %1207 = add i64 %1202, 8
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = sext i32 %1209 to i64
  store i64 %1210, i64* %RDX.i1319, align 8
  %1211 = shl nsw i64 %1210, 3
  %1212 = add i64 %1211, %1205
  %1213 = add i64 %1202, 12
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  store i64 %1215, i64* %RCX.i1316, align 8
  %1216 = add i64 %1200, -80
  %1217 = add i64 %1202, 16
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = sext i32 %1219 to i64
  store i64 %1220, i64* %RDX.i1319, align 8
  %1221 = load i32, i32* %EAX.i1238, align 4
  %1222 = shl nsw i64 %1220, 2
  %1223 = add i64 %1215, %1222
  %1224 = add i64 %1202, 19
  store i64 %1224, i64* %3, align 8
  %1225 = inttoptr i64 %1223 to i32*
  %1226 = load i32, i32* %1225, align 4
  %1227 = sub i32 %1221, %1226
  %1228 = icmp ult i32 %1221, %1226
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %14, align 1
  %1230 = and i32 %1227, 255
  %1231 = tail call i32 @llvm.ctpop.i32(i32 %1230)
  %1232 = trunc i32 %1231 to i8
  %1233 = and i8 %1232, 1
  %1234 = xor i8 %1233, 1
  store i8 %1234, i8* %21, align 1
  %1235 = xor i32 %1226, %1221
  %1236 = xor i32 %1235, %1227
  %1237 = lshr i32 %1236, 4
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  store i8 %1239, i8* %26, align 1
  %1240 = icmp eq i32 %1227, 0
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %29, align 1
  %1242 = lshr i32 %1227, 31
  %1243 = trunc i32 %1242 to i8
  store i8 %1243, i8* %32, align 1
  %1244 = lshr i32 %1221, 31
  %1245 = lshr i32 %1226, 31
  %1246 = xor i32 %1245, %1244
  %1247 = xor i32 %1242, %1244
  %1248 = add nuw nsw i32 %1247, %1246
  %1249 = icmp eq i32 %1248, 2
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %38, align 1
  %1251 = icmp ne i8 %1243, 0
  %1252 = xor i1 %1251, %1249
  %1253 = or i1 %1240, %1252
  %.v87 = select i1 %1253, i64 47, i64 25
  %1254 = add i64 %1202, %.v87
  store i64 %1254, i64* %3, align 8
  br i1 %1253, label %block_.L_4368dd, label %block_4368c7

block_4368c7:                                     ; preds = %block_.L_43683a
  %1255 = add i64 %1200, -84
  %1256 = add i64 %1254, 3
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i32*
  %1258 = load i32, i32* %1257, align 4
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RAX.i1241, align 8
  %1260 = add i64 %1254, 7
  store i64 %1260, i64* %3, align 8
  %1261 = load i64, i64* %1204, align 8
  store i64 %1261, i64* %RCX.i1316, align 8
  %1262 = add i64 %1254, 11
  store i64 %1262, i64* %3, align 8
  %1263 = load i32, i32* %1208, align 4
  %1264 = sext i32 %1263 to i64
  store i64 %1264, i64* %RDX.i1319, align 8
  %1265 = shl nsw i64 %1264, 3
  %1266 = add i64 %1265, %1261
  %1267 = add i64 %1254, 15
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i64*
  %1269 = load i64, i64* %1268, align 8
  store i64 %1269, i64* %RCX.i1316, align 8
  %1270 = add i64 %1254, 19
  store i64 %1270, i64* %3, align 8
  %1271 = load i32, i32* %1218, align 4
  %1272 = sext i32 %1271 to i64
  store i64 %1272, i64* %RDX.i1319, align 8
  %1273 = shl nsw i64 %1272, 2
  %1274 = add i64 %1273, %1269
  %1275 = add i64 %1254, 22
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i32*
  store i32 %1258, i32* %1276, align 4
  %.pre45 = load i64, i64* %RBP.i, align 8
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_4368dd

block_.L_4368dd:                                  ; preds = %block_4368c7, %block_.L_43683a
  %1277 = phi i64 [ %.pre46, %block_4368c7 ], [ %1254, %block_.L_43683a ]
  %1278 = phi i64 [ %.pre45, %block_4368c7 ], [ %1200, %block_.L_43683a ]
  %1279 = add i64 %1278, -72
  %1280 = add i64 %1277, 4
  store i64 %1280, i64* %3, align 8
  %1281 = inttoptr i64 %1279 to i64*
  %1282 = load i64, i64* %1281, align 8
  store i64 %1282, i64* %RAX.i1241, align 8
  %1283 = add i64 %1278, -76
  %1284 = add i64 %1277, 8
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  %1286 = load i32, i32* %1285, align 4
  %1287 = sext i32 %1286 to i64
  store i64 %1287, i64* %RCX.i1316, align 8
  %1288 = shl nsw i64 %1287, 3
  %1289 = add i64 %1288, %1282
  %1290 = add i64 %1277, 12
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RAX.i1241, align 8
  %1293 = add i64 %1278, -80
  %1294 = add i64 %1277, 15
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = add i32 %1296, -1
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RDX.i1319, align 8
  %1299 = icmp eq i32 %1296, 0
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %14, align 1
  %1301 = and i32 %1297, 255
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %21, align 1
  %1306 = xor i32 %1297, %1296
  %1307 = lshr i32 %1306, 4
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  store i8 %1309, i8* %26, align 1
  %1310 = icmp eq i32 %1297, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %29, align 1
  %1312 = lshr i32 %1297, 31
  %1313 = trunc i32 %1312 to i8
  store i8 %1313, i8* %32, align 1
  %1314 = lshr i32 %1296, 31
  %1315 = xor i32 %1312, %1314
  %1316 = add nuw nsw i32 %1315, %1314
  %1317 = icmp eq i32 %1316, 2
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %38, align 1
  %1319 = sext i32 %1297 to i64
  store i64 %1319, i64* %RCX.i1316, align 8
  %1320 = shl nsw i64 %1319, 2
  %1321 = add i64 %1292, %1320
  %1322 = add i64 %1277, 24
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1321 to i32*
  %1324 = load i32, i32* %1323, align 4
  %1325 = zext i32 %1324 to i64
  store i64 %1325, i64* %RDX.i1319, align 8
  %1326 = add i64 %1278, -84
  %1327 = add i64 %1277, 27
  store i64 %1327, i64* %3, align 8
  %1328 = inttoptr i64 %1326 to i32*
  store i32 %1324, i32* %1328, align 4
  %1329 = load i64, i64* %RBP.i, align 8
  %1330 = add i64 %1329, -72
  %1331 = load i64, i64* %3, align 8
  %1332 = add i64 %1331, 4
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1330 to i64*
  %1334 = load i64, i64* %1333, align 8
  store i64 %1334, i64* %RAX.i1241, align 8
  %1335 = add i64 %1329, -76
  %1336 = add i64 %1331, 8
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = sext i32 %1338 to i64
  store i64 %1339, i64* %RCX.i1316, align 8
  %1340 = shl nsw i64 %1339, 3
  %1341 = add i64 %1340, %1334
  %1342 = add i64 %1331, 12
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i64*
  %1344 = load i64, i64* %1343, align 8
  store i64 %1344, i64* %RAX.i1241, align 8
  %1345 = add i64 %1329, -80
  %1346 = add i64 %1331, 16
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = sext i32 %1348 to i64
  store i64 %1349, i64* %RCX.i1316, align 8
  %1350 = load i32, i32* %EDX.i1118, align 4
  %1351 = shl nsw i64 %1349, 2
  %1352 = add i64 %1344, %1351
  %1353 = add i64 %1331, 19
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = sub i32 %1350, %1355
  %1357 = icmp ult i32 %1350, %1355
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %14, align 1
  %1359 = and i32 %1356, 255
  %1360 = tail call i32 @llvm.ctpop.i32(i32 %1359)
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = xor i8 %1362, 1
  store i8 %1363, i8* %21, align 1
  %1364 = xor i32 %1355, %1350
  %1365 = xor i32 %1364, %1356
  %1366 = lshr i32 %1365, 4
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  store i8 %1368, i8* %26, align 1
  %1369 = icmp eq i32 %1356, 0
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %29, align 1
  %1371 = lshr i32 %1356, 31
  %1372 = trunc i32 %1371 to i8
  store i8 %1372, i8* %32, align 1
  %1373 = lshr i32 %1350, 31
  %1374 = lshr i32 %1355, 31
  %1375 = xor i32 %1374, %1373
  %1376 = xor i32 %1371, %1373
  %1377 = add nuw nsw i32 %1376, %1375
  %1378 = icmp eq i32 %1377, 2
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %38, align 1
  %1380 = icmp ne i8 %1372, 0
  %1381 = xor i1 %1380, %1378
  %1382 = or i1 %1369, %1381
  %.v88 = select i1 %1382, i64 47, i64 25
  %1383 = add i64 %1331, %.v88
  store i64 %1383, i64* %3, align 8
  br i1 %1382, label %block_.L_436927, label %block_436911

block_436911:                                     ; preds = %block_.L_4368dd
  %1384 = add i64 %1329, -84
  %1385 = add i64 %1383, 3
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = zext i32 %1387 to i64
  store i64 %1388, i64* %RAX.i1241, align 8
  %1389 = add i64 %1383, 7
  store i64 %1389, i64* %3, align 8
  %1390 = load i64, i64* %1333, align 8
  store i64 %1390, i64* %RCX.i1316, align 8
  %1391 = add i64 %1383, 11
  store i64 %1391, i64* %3, align 8
  %1392 = load i32, i32* %1337, align 4
  %1393 = sext i32 %1392 to i64
  store i64 %1393, i64* %RDX.i1319, align 8
  %1394 = shl nsw i64 %1393, 3
  %1395 = add i64 %1394, %1390
  %1396 = add i64 %1383, 15
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1395 to i64*
  %1398 = load i64, i64* %1397, align 8
  store i64 %1398, i64* %RCX.i1316, align 8
  %1399 = add i64 %1383, 19
  store i64 %1399, i64* %3, align 8
  %1400 = load i32, i32* %1347, align 4
  %1401 = sext i32 %1400 to i64
  store i64 %1401, i64* %RDX.i1319, align 8
  %1402 = shl nsw i64 %1401, 2
  %1403 = add i64 %1402, %1398
  %1404 = add i64 %1383, 22
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1403 to i32*
  store i32 %1387, i32* %1405, align 4
  %.pre47 = load i64, i64* %RBP.i, align 8
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_436927

block_.L_436927:                                  ; preds = %block_436911, %block_.L_4368dd
  %1406 = phi i64 [ %.pre48, %block_436911 ], [ %1383, %block_.L_4368dd ]
  %1407 = phi i64 [ %.pre47, %block_436911 ], [ %1329, %block_.L_4368dd ]
  %1408 = add i64 %1407, -64
  %1409 = add i64 %1406, 4
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i64*
  %1411 = load i64, i64* %1410, align 8
  store i64 %1411, i64* %RAX.i1241, align 8
  %1412 = add i64 %1407, -76
  %1413 = add i64 %1406, 8
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i32*
  %1415 = load i32, i32* %1414, align 4
  %1416 = sext i32 %1415 to i64
  store i64 %1416, i64* %RCX.i1316, align 8
  %1417 = shl nsw i64 %1416, 3
  %1418 = add i64 %1417, %1411
  %1419 = add i64 %1406, 12
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i64*
  %1421 = load i64, i64* %1420, align 8
  store i64 %1421, i64* %RAX.i1241, align 8
  %1422 = add i64 %1407, -80
  %1423 = add i64 %1406, 16
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to i32*
  %1425 = load i32, i32* %1424, align 4
  %1426 = sext i32 %1425 to i64
  store i64 %1426, i64* %RCX.i1316, align 8
  %1427 = shl nsw i64 %1426, 2
  %1428 = add i64 %1427, %1421
  %1429 = add i64 %1406, 23
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1428 to i32*
  store i32 -987654321, i32* %1430, align 4
  %1431 = load i64, i64* %RBP.i, align 8
  %1432 = add i64 %1431, -56
  %1433 = load i64, i64* %3, align 8
  %1434 = add i64 %1433, 4
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1432 to i64*
  %1436 = load i64, i64* %1435, align 8
  store i64 %1436, i64* %RAX.i1241, align 8
  %1437 = add i64 %1431, -76
  %1438 = add i64 %1433, 7
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i32*
  %1440 = load i32, i32* %1439, align 4
  %1441 = add i32 %1440, -1
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %RDX.i1319, align 8
  %1443 = icmp eq i32 %1440, 0
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %14, align 1
  %1445 = and i32 %1441, 255
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1445)
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  store i8 %1449, i8* %21, align 1
  %1450 = xor i32 %1441, %1440
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %26, align 1
  %1454 = icmp eq i32 %1441, 0
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %29, align 1
  %1456 = lshr i32 %1441, 31
  %1457 = trunc i32 %1456 to i8
  store i8 %1457, i8* %32, align 1
  %1458 = lshr i32 %1440, 31
  %1459 = xor i32 %1456, %1458
  %1460 = add nuw nsw i32 %1459, %1458
  %1461 = icmp eq i32 %1460, 2
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %38, align 1
  %1463 = sext i32 %1441 to i64
  store i64 %1463, i64* %RCX.i1316, align 8
  %1464 = shl nsw i64 %1463, 3
  %1465 = add i64 %1436, %1464
  %1466 = add i64 %1433, 17
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %RAX.i1241, align 8
  %1469 = add i64 %1431, -80
  %1470 = add i64 %1433, 21
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i32*
  %1472 = load i32, i32* %1471, align 4
  %1473 = sext i32 %1472 to i64
  store i64 %1473, i64* %RCX.i1316, align 8
  %1474 = shl nsw i64 %1473, 2
  %1475 = add i64 %1474, %1468
  %1476 = add i64 %1433, 24
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i32*
  %1478 = load i32, i32* %1477, align 4
  %1479 = zext i32 %1478 to i64
  store i64 %1479, i64* %RDX.i1319, align 8
  %1480 = add i64 %1431, -84
  %1481 = add i64 %1433, 27
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1480 to i32*
  store i32 %1478, i32* %1482, align 4
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -64
  %1485 = load i64, i64* %3, align 8
  %1486 = add i64 %1485, 4
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1484 to i64*
  %1488 = load i64, i64* %1487, align 8
  store i64 %1488, i64* %RAX.i1241, align 8
  %1489 = add i64 %1483, -76
  %1490 = add i64 %1485, 8
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i32*
  %1492 = load i32, i32* %1491, align 4
  %1493 = sext i32 %1492 to i64
  store i64 %1493, i64* %RCX.i1316, align 8
  %1494 = shl nsw i64 %1493, 3
  %1495 = add i64 %1494, %1488
  %1496 = add i64 %1485, 12
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i64*
  %1498 = load i64, i64* %1497, align 8
  store i64 %1498, i64* %RAX.i1241, align 8
  %1499 = add i64 %1483, -80
  %1500 = add i64 %1485, 16
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = sext i32 %1502 to i64
  store i64 %1503, i64* %RCX.i1316, align 8
  %1504 = load i32, i32* %EDX.i1118, align 4
  %1505 = shl nsw i64 %1503, 2
  %1506 = add i64 %1498, %1505
  %1507 = add i64 %1485, 19
  store i64 %1507, i64* %3, align 8
  %1508 = inttoptr i64 %1506 to i32*
  %1509 = load i32, i32* %1508, align 4
  %1510 = sub i32 %1504, %1509
  %1511 = icmp ult i32 %1504, %1509
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %14, align 1
  %1513 = and i32 %1510, 255
  %1514 = tail call i32 @llvm.ctpop.i32(i32 %1513)
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  store i8 %1517, i8* %21, align 1
  %1518 = xor i32 %1509, %1504
  %1519 = xor i32 %1518, %1510
  %1520 = lshr i32 %1519, 4
  %1521 = trunc i32 %1520 to i8
  %1522 = and i8 %1521, 1
  store i8 %1522, i8* %26, align 1
  %1523 = icmp eq i32 %1510, 0
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %29, align 1
  %1525 = lshr i32 %1510, 31
  %1526 = trunc i32 %1525 to i8
  store i8 %1526, i8* %32, align 1
  %1527 = lshr i32 %1504, 31
  %1528 = lshr i32 %1509, 31
  %1529 = xor i32 %1528, %1527
  %1530 = xor i32 %1525, %1527
  %1531 = add nuw nsw i32 %1530, %1529
  %1532 = icmp eq i32 %1531, 2
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %38, align 1
  %1534 = icmp ne i8 %1526, 0
  %1535 = xor i1 %1534, %1532
  %1536 = or i1 %1523, %1535
  %.v89 = select i1 %1536, i64 47, i64 25
  %1537 = add i64 %1485, %.v89
  store i64 %1537, i64* %3, align 8
  br i1 %1536, label %block_.L_436988, label %block_436972

block_436972:                                     ; preds = %block_.L_436927
  %1538 = add i64 %1483, -84
  %1539 = add i64 %1537, 3
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1538 to i32*
  %1541 = load i32, i32* %1540, align 4
  %1542 = zext i32 %1541 to i64
  store i64 %1542, i64* %RAX.i1241, align 8
  %1543 = add i64 %1537, 7
  store i64 %1543, i64* %3, align 8
  %1544 = load i64, i64* %1487, align 8
  store i64 %1544, i64* %RCX.i1316, align 8
  %1545 = add i64 %1537, 11
  store i64 %1545, i64* %3, align 8
  %1546 = load i32, i32* %1491, align 4
  %1547 = sext i32 %1546 to i64
  store i64 %1547, i64* %RDX.i1319, align 8
  %1548 = shl nsw i64 %1547, 3
  %1549 = add i64 %1548, %1544
  %1550 = add i64 %1537, 15
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i64*
  %1552 = load i64, i64* %1551, align 8
  store i64 %1552, i64* %RCX.i1316, align 8
  %1553 = add i64 %1537, 19
  store i64 %1553, i64* %3, align 8
  %1554 = load i32, i32* %1501, align 4
  %1555 = sext i32 %1554 to i64
  store i64 %1555, i64* %RDX.i1319, align 8
  %1556 = shl nsw i64 %1555, 2
  %1557 = add i64 %1556, %1552
  %1558 = add i64 %1537, 22
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  store i32 %1541, i32* %1559, align 4
  %.pre49 = load i64, i64* %RBP.i, align 8
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_436988

block_.L_436988:                                  ; preds = %block_436972, %block_.L_436927
  %1560 = phi i64 [ %.pre50, %block_436972 ], [ %1537, %block_.L_436927 ]
  %1561 = phi i64 [ %.pre49, %block_436972 ], [ %1483, %block_.L_436927 ]
  %1562 = add i64 %1561, -64
  %1563 = add i64 %1560, 4
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i64*
  %1565 = load i64, i64* %1564, align 8
  store i64 %1565, i64* %RAX.i1241, align 8
  %1566 = add i64 %1561, -76
  %1567 = add i64 %1560, 7
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i32*
  %1569 = load i32, i32* %1568, align 4
  %1570 = add i32 %1569, -1
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %RCX.i1316, align 8
  %1572 = icmp eq i32 %1569, 0
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %14, align 1
  %1574 = and i32 %1570, 255
  %1575 = tail call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  store i8 %1578, i8* %21, align 1
  %1579 = xor i32 %1570, %1569
  %1580 = lshr i32 %1579, 4
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  store i8 %1582, i8* %26, align 1
  %1583 = icmp eq i32 %1570, 0
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %29, align 1
  %1585 = lshr i32 %1570, 31
  %1586 = trunc i32 %1585 to i8
  store i8 %1586, i8* %32, align 1
  %1587 = lshr i32 %1569, 31
  %1588 = xor i32 %1585, %1587
  %1589 = add nuw nsw i32 %1588, %1587
  %1590 = icmp eq i32 %1589, 2
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %38, align 1
  %1592 = sext i32 %1570 to i64
  store i64 %1592, i64* %RDX.i1319, align 8
  %1593 = shl nsw i64 %1592, 3
  %1594 = add i64 %1565, %1593
  %1595 = add i64 %1560, 17
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1594 to i64*
  %1597 = load i64, i64* %1596, align 8
  store i64 %1597, i64* %RAX.i1241, align 8
  %1598 = add i64 %1561, -80
  %1599 = add i64 %1560, 21
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  %1602 = sext i32 %1601 to i64
  store i64 %1602, i64* %RDX.i1319, align 8
  %1603 = shl nsw i64 %1602, 2
  %1604 = add i64 %1603, %1597
  %1605 = add i64 %1560, 24
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1604 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = zext i32 %1607 to i64
  store i64 %1608, i64* %RCX.i1316, align 8
  %1609 = add i64 %1561, -84
  %1610 = add i64 %1560, 27
  store i64 %1610, i64* %3, align 8
  %1611 = inttoptr i64 %1609 to i32*
  store i32 %1607, i32* %1611, align 4
  %1612 = load i64, i64* %RBP.i, align 8
  %1613 = add i64 %1612, -64
  %1614 = load i64, i64* %3, align 8
  %1615 = add i64 %1614, 4
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1613 to i64*
  %1617 = load i64, i64* %1616, align 8
  store i64 %1617, i64* %RAX.i1241, align 8
  %1618 = add i64 %1612, -76
  %1619 = add i64 %1614, 8
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i32*
  %1621 = load i32, i32* %1620, align 4
  %1622 = sext i32 %1621 to i64
  store i64 %1622, i64* %RDX.i1319, align 8
  %1623 = shl nsw i64 %1622, 3
  %1624 = add i64 %1623, %1617
  %1625 = add i64 %1614, 12
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1624 to i64*
  %1627 = load i64, i64* %1626, align 8
  store i64 %1627, i64* %RAX.i1241, align 8
  %1628 = add i64 %1612, -80
  %1629 = add i64 %1614, 16
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i32*
  %1631 = load i32, i32* %1630, align 4
  %1632 = sext i32 %1631 to i64
  store i64 %1632, i64* %RDX.i1319, align 8
  %1633 = load i32, i32* %ECX.i1053, align 4
  %1634 = shl nsw i64 %1632, 2
  %1635 = add i64 %1627, %1634
  %1636 = add i64 %1614, 19
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1635 to i32*
  %1638 = load i32, i32* %1637, align 4
  %1639 = sub i32 %1633, %1638
  %1640 = icmp ult i32 %1633, %1638
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %14, align 1
  %1642 = and i32 %1639, 255
  %1643 = tail call i32 @llvm.ctpop.i32(i32 %1642)
  %1644 = trunc i32 %1643 to i8
  %1645 = and i8 %1644, 1
  %1646 = xor i8 %1645, 1
  store i8 %1646, i8* %21, align 1
  %1647 = xor i32 %1638, %1633
  %1648 = xor i32 %1647, %1639
  %1649 = lshr i32 %1648, 4
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  store i8 %1651, i8* %26, align 1
  %1652 = icmp eq i32 %1639, 0
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %29, align 1
  %1654 = lshr i32 %1639, 31
  %1655 = trunc i32 %1654 to i8
  store i8 %1655, i8* %32, align 1
  %1656 = lshr i32 %1633, 31
  %1657 = lshr i32 %1638, 31
  %1658 = xor i32 %1657, %1656
  %1659 = xor i32 %1654, %1656
  %1660 = add nuw nsw i32 %1659, %1658
  %1661 = icmp eq i32 %1660, 2
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %38, align 1
  %1663 = icmp ne i8 %1655, 0
  %1664 = xor i1 %1663, %1661
  %1665 = or i1 %1652, %1664
  %.v90 = select i1 %1665, i64 47, i64 25
  %1666 = add i64 %1614, %.v90
  store i64 %1666, i64* %3, align 8
  br i1 %1665, label %block_.L_4369d2, label %block_4369bc

block_4369bc:                                     ; preds = %block_.L_436988
  %1667 = add i64 %1612, -84
  %1668 = add i64 %1666, 3
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RAX.i1241, align 8
  %1672 = add i64 %1666, 7
  store i64 %1672, i64* %3, align 8
  %1673 = load i64, i64* %1616, align 8
  store i64 %1673, i64* %RCX.i1316, align 8
  %1674 = add i64 %1666, 11
  store i64 %1674, i64* %3, align 8
  %1675 = load i32, i32* %1620, align 4
  %1676 = sext i32 %1675 to i64
  store i64 %1676, i64* %RDX.i1319, align 8
  %1677 = shl nsw i64 %1676, 3
  %1678 = add i64 %1677, %1673
  %1679 = add i64 %1666, 15
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i64*
  %1681 = load i64, i64* %1680, align 8
  store i64 %1681, i64* %RCX.i1316, align 8
  %1682 = add i64 %1666, 19
  store i64 %1682, i64* %3, align 8
  %1683 = load i32, i32* %1630, align 4
  %1684 = sext i32 %1683 to i64
  store i64 %1684, i64* %RDX.i1319, align 8
  %1685 = shl nsw i64 %1684, 2
  %1686 = add i64 %1685, %1681
  %1687 = add i64 %1666, 22
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i32*
  store i32 %1670, i32* %1688, align 4
  %.pre51 = load i64, i64* %RBP.i, align 8
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_4369d2

block_.L_4369d2:                                  ; preds = %block_4369bc, %block_.L_436988
  %1689 = phi i64 [ %.pre52, %block_4369bc ], [ %1666, %block_.L_436988 ]
  %1690 = phi i64 [ %.pre51, %block_4369bc ], [ %1612, %block_.L_436988 ]
  %1691 = add i64 %1690, -64
  %1692 = add i64 %1689, 4
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1691 to i64*
  %1694 = load i64, i64* %1693, align 8
  store i64 %1694, i64* %RAX.i1241, align 8
  %1695 = add i64 %1690, -76
  %1696 = add i64 %1689, 8
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1695 to i32*
  %1698 = load i32, i32* %1697, align 4
  %1699 = sext i32 %1698 to i64
  store i64 %1699, i64* %RCX.i1316, align 8
  %1700 = shl nsw i64 %1699, 3
  %1701 = add i64 %1700, %1694
  %1702 = add i64 %1689, 12
  store i64 %1702, i64* %3, align 8
  %1703 = inttoptr i64 %1701 to i64*
  %1704 = load i64, i64* %1703, align 8
  store i64 %1704, i64* %RAX.i1241, align 8
  %1705 = add i64 %1690, -80
  %1706 = add i64 %1689, 16
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = sext i32 %1708 to i64
  store i64 %1709, i64* %RCX.i1316, align 8
  %1710 = shl nsw i64 %1709, 2
  %1711 = add i64 %1710, %1704
  %1712 = add i64 %1689, 19
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i32*
  %1714 = load i32, i32* %1713, align 4
  %1715 = zext i32 %1714 to i64
  store i64 %1715, i64* %RDI.i864, align 8
  %1716 = add i64 %1690, -16
  %1717 = add i64 %1689, 23
  store i64 %1717, i64* %3, align 8
  %1718 = inttoptr i64 %1716 to i64*
  %1719 = load i64, i64* %1718, align 8
  store i64 %1719, i64* %RAX.i1241, align 8
  %1720 = add i64 %1719, 16
  %1721 = add i64 %1689, 27
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1720 to i64*
  %1723 = load i64, i64* %1722, align 8
  store i64 %1723, i64* %RAX.i1241, align 8
  %1724 = add i64 %1689, 31
  store i64 %1724, i64* %3, align 8
  %1725 = load i32, i32* %1697, align 4
  %1726 = sext i32 %1725 to i64
  store i64 %1726, i64* %RCX.i1316, align 8
  %1727 = shl nsw i64 %1726, 3
  %1728 = add i64 %1727, %1723
  %1729 = add i64 %1689, 35
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i64*
  %1731 = load i64, i64* %1730, align 8
  store i64 %1731, i64* %RAX.i1241, align 8
  %1732 = add i64 %1689, 39
  store i64 %1732, i64* %3, align 8
  %1733 = load i32, i32* %1707, align 4
  %1734 = sext i32 %1733 to i64
  store i64 %1734, i64* %RCX.i1316, align 8
  %1735 = shl nsw i64 %1734, 2
  %1736 = add i64 %1735, %1731
  %1737 = add i64 %1689, 42
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i32*
  %1739 = load i32, i32* %1738, align 4
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RSI.i846, align 8
  %1741 = add i64 %1689, -59426
  %1742 = add i64 %1689, 47
  %1743 = load i64, i64* %6, align 8
  %1744 = add i64 %1743, -8
  %1745 = inttoptr i64 %1744 to i64*
  store i64 %1742, i64* %1745, align 8
  store i64 %1744, i64* %6, align 8
  store i64 %1741, i64* %3, align 8
  %call2_4369fc = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1741, %struct.Memory* %2)
  %1746 = load i64, i64* %RBP.i, align 8
  %1747 = add i64 %1746, -64
  %1748 = load i64, i64* %3, align 8
  %1749 = add i64 %1748, 4
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1747 to i64*
  %1751 = load i64, i64* %1750, align 8
  store i64 %1751, i64* %RCX.i1316, align 8
  %1752 = add i64 %1746, -76
  %1753 = add i64 %1748, 8
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1752 to i32*
  %1755 = load i32, i32* %1754, align 4
  %1756 = sext i32 %1755 to i64
  store i64 %1756, i64* %RDX.i1319, align 8
  %1757 = shl nsw i64 %1756, 3
  %1758 = add i64 %1757, %1751
  %1759 = add i64 %1748, 12
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i64*
  %1761 = load i64, i64* %1760, align 8
  store i64 %1761, i64* %RCX.i1316, align 8
  %1762 = add i64 %1746, -80
  %1763 = add i64 %1748, 16
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i32*
  %1765 = load i32, i32* %1764, align 4
  %1766 = sext i32 %1765 to i64
  store i64 %1766, i64* %RDX.i1319, align 8
  %1767 = shl nsw i64 %1766, 2
  %1768 = add i64 %1767, %1761
  %1769 = load i32, i32* %EAX.i1238, align 4
  %1770 = add i64 %1748, 19
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1768 to i32*
  store i32 %1769, i32* %1771, align 4
  %1772 = load i64, i64* %RBP.i, align 8
  %1773 = add i64 %1772, -80
  %1774 = load i64, i64* %3, align 8
  %1775 = add i64 %1774, 3
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1773 to i32*
  %1777 = load i32, i32* %1776, align 4
  %1778 = add i32 %1777, 1
  %1779 = zext i32 %1778 to i64
  store i64 %1779, i64* %RAX.i1241, align 8
  %1780 = icmp eq i32 %1777, -1
  %1781 = icmp eq i32 %1778, 0
  %1782 = or i1 %1780, %1781
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %14, align 1
  %1784 = and i32 %1778, 255
  %1785 = tail call i32 @llvm.ctpop.i32(i32 %1784)
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = xor i8 %1787, 1
  store i8 %1788, i8* %21, align 1
  %1789 = xor i32 %1778, %1777
  %1790 = lshr i32 %1789, 4
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  store i8 %1792, i8* %26, align 1
  %1793 = zext i1 %1781 to i8
  store i8 %1793, i8* %29, align 1
  %1794 = lshr i32 %1778, 31
  %1795 = trunc i32 %1794 to i8
  store i8 %1795, i8* %32, align 1
  %1796 = lshr i32 %1777, 31
  %1797 = xor i32 %1794, %1796
  %1798 = add nuw nsw i32 %1797, %1794
  %1799 = icmp eq i32 %1798, 2
  %1800 = zext i1 %1799 to i8
  store i8 %1800, i8* %38, align 1
  %1801 = add i64 %1774, 9
  store i64 %1801, i64* %3, align 8
  store i32 %1778, i32* %1776, align 4
  %1802 = load i64, i64* %3, align 8
  %1803 = add i64 %1802, -824
  store i64 %1803, i64* %3, align 8
  br label %block_.L_4366e5

block_.L_436a22:                                  ; preds = %block_.L_4366e5
  %1804 = add i64 %404, -48
  %1805 = add i64 %440, 4
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i64*
  %1807 = load i64, i64* %1806, align 8
  store i64 %1807, i64* %RAX.i1241, align 8
  %1808 = add i64 %404, -76
  %1809 = add i64 %440, 8
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1808 to i32*
  %1811 = load i32, i32* %1810, align 4
  %1812 = sext i32 %1811 to i64
  store i64 %1812, i64* %RCX.i1316, align 8
  %1813 = shl nsw i64 %1812, 3
  %1814 = add i64 %1813, %1807
  %1815 = add i64 %440, 12
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i64*
  %1817 = load i64, i64* %1816, align 8
  store i64 %1817, i64* %RAX.i1241, align 8
  %1818 = add i64 %1817, 16
  %1819 = add i64 %440, 19
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i32*
  store i32 -987654321, i32* %1820, align 4
  %1821 = load i64, i64* %RBP.i, align 8
  %1822 = add i64 %1821, -48
  %1823 = load i64, i64* %3, align 8
  %1824 = add i64 %1823, 4
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1822 to i64*
  %1826 = load i64, i64* %1825, align 8
  store i64 %1826, i64* %RAX.i1241, align 8
  %1827 = add i64 %1821, -76
  %1828 = add i64 %1823, 7
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i32*
  %1830 = load i32, i32* %1829, align 4
  %1831 = add i32 %1830, -1
  %1832 = zext i32 %1831 to i64
  store i64 %1832, i64* %RDX.i1319, align 8
  %1833 = icmp eq i32 %1830, 0
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %14, align 1
  %1835 = and i32 %1831, 255
  %1836 = tail call i32 @llvm.ctpop.i32(i32 %1835)
  %1837 = trunc i32 %1836 to i8
  %1838 = and i8 %1837, 1
  %1839 = xor i8 %1838, 1
  store i8 %1839, i8* %21, align 1
  %1840 = xor i32 %1831, %1830
  %1841 = lshr i32 %1840, 4
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  store i8 %1843, i8* %26, align 1
  %1844 = icmp eq i32 %1831, 0
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %29, align 1
  %1846 = lshr i32 %1831, 31
  %1847 = trunc i32 %1846 to i8
  store i8 %1847, i8* %32, align 1
  %1848 = lshr i32 %1830, 31
  %1849 = xor i32 %1846, %1848
  %1850 = add nuw nsw i32 %1849, %1848
  %1851 = icmp eq i32 %1850, 2
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %38, align 1
  %1853 = sext i32 %1831 to i64
  store i64 %1853, i64* %RCX.i1316, align 8
  %1854 = shl nsw i64 %1853, 3
  %1855 = add i64 %1826, %1854
  %1856 = add i64 %1823, 17
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i64*
  %1858 = load i64, i64* %1857, align 8
  store i64 %1858, i64* %RAX.i1241, align 8
  %1859 = add i64 %1858, 16
  %1860 = add i64 %1823, 20
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1859 to i32*
  %1862 = load i32, i32* %1861, align 4
  %1863 = zext i32 %1862 to i64
  store i64 %1863, i64* %RDI.i864, align 8
  %1864 = add i64 %1821, -16
  %1865 = add i64 %1823, 24
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i64*
  %1867 = load i64, i64* %1866, align 8
  store i64 %1867, i64* %RAX.i1241, align 8
  %1868 = add i64 %1823, 27
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i64*
  %1870 = load i64, i64* %1869, align 8
  store i64 %1870, i64* %RAX.i1241, align 8
  %1871 = add i64 %1823, 31
  store i64 %1871, i64* %3, align 8
  %1872 = load i32, i32* %1829, align 4
  %1873 = sext i32 %1872 to i64
  store i64 %1873, i64* %RCX.i1316, align 8
  %1874 = shl nsw i64 %1873, 3
  %1875 = add i64 %1874, %1870
  %1876 = add i64 %1823, 35
  store i64 %1876, i64* %3, align 8
  %1877 = inttoptr i64 %1875 to i64*
  %1878 = load i64, i64* %1877, align 8
  store i64 %1878, i64* %RAX.i1241, align 8
  %1879 = add i64 %1878, 16
  %1880 = add i64 %1823, 38
  store i64 %1880, i64* %3, align 8
  %1881 = inttoptr i64 %1879 to i32*
  %1882 = load i32, i32* %1881, align 4
  %1883 = zext i32 %1882 to i64
  store i64 %1883, i64* %RSI.i846, align 8
  %1884 = add i64 %1823, -59525
  %1885 = add i64 %1823, 43
  %1886 = load i64, i64* %6, align 8
  %1887 = add i64 %1886, -8
  %1888 = inttoptr i64 %1887 to i64*
  store i64 %1885, i64* %1888, align 8
  store i64 %1887, i64* %6, align 8
  store i64 %1884, i64* %3, align 8
  %call2_436a5b = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1884, %struct.Memory* %2)
  %1889 = load i64, i64* %RBP.i, align 8
  %1890 = add i64 %1889, -84
  %1891 = load i32, i32* %EAX.i1238, align 4
  %1892 = load i64, i64* %3, align 8
  %1893 = add i64 %1892, 3
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1890 to i32*
  store i32 %1891, i32* %1894, align 4
  %1895 = load i32, i32* %EAX.i1238, align 4
  %1896 = load i64, i64* %3, align 8
  %1897 = add i32 %1895, 987654321
  %1898 = icmp ult i32 %1895, -987654321
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %14, align 1
  %1900 = and i32 %1897, 255
  %1901 = tail call i32 @llvm.ctpop.i32(i32 %1900)
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  %1904 = xor i8 %1903, 1
  store i8 %1904, i8* %21, align 1
  %1905 = xor i32 %1897, %1895
  %1906 = lshr i32 %1905, 4
  %1907 = trunc i32 %1906 to i8
  %1908 = and i8 %1907, 1
  store i8 %1908, i8* %26, align 1
  %1909 = icmp eq i32 %1897, 0
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %29, align 1
  %1911 = lshr i32 %1897, 31
  %1912 = trunc i32 %1911 to i8
  store i8 %1912, i8* %32, align 1
  %1913 = lshr i32 %1895, 31
  %1914 = xor i32 %1913, 1
  %1915 = xor i32 %1911, %1913
  %1916 = add nuw nsw i32 %1915, %1914
  %1917 = icmp eq i32 %1916, 2
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %38, align 1
  %1919 = icmp ne i8 %1912, 0
  %1920 = xor i1 %1919, %1917
  %1921 = or i1 %1909, %1920
  %.v74 = select i1 %1921, i64 29, i64 11
  %1922 = add i64 %1896, %.v74
  store i64 %1922, i64* %3, align 8
  br i1 %1921, label %block_.L_436a80, label %block_436a6e

block_436a6e:                                     ; preds = %block_.L_436a22
  %1923 = load i64, i64* %RBP.i, align 8
  %1924 = add i64 %1923, -84
  %1925 = add i64 %1922, 3
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1924 to i32*
  %1927 = load i32, i32* %1926, align 4
  %1928 = zext i32 %1927 to i64
  store i64 %1928, i64* %RAX.i1241, align 8
  %1929 = add i64 %1923, -48
  %1930 = add i64 %1922, 7
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i64*
  %1932 = load i64, i64* %1931, align 8
  store i64 %1932, i64* %RCX.i1316, align 8
  %1933 = add i64 %1923, -76
  %1934 = add i64 %1922, 11
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1933 to i32*
  %1936 = load i32, i32* %1935, align 4
  %1937 = sext i32 %1936 to i64
  store i64 %1937, i64* %RDX.i1319, align 8
  %1938 = shl nsw i64 %1937, 3
  %1939 = add i64 %1938, %1932
  %1940 = add i64 %1922, 15
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1939 to i64*
  %1942 = load i64, i64* %1941, align 8
  store i64 %1942, i64* %RCX.i1316, align 8
  %1943 = add i64 %1942, 16
  %1944 = add i64 %1922, 18
  store i64 %1944, i64* %3, align 8
  %1945 = inttoptr i64 %1943 to i32*
  store i32 %1927, i32* %1945, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_436a80

block_.L_436a80:                                  ; preds = %block_436a6e, %block_.L_436a22
  %1946 = phi i64 [ %.pre53, %block_436a6e ], [ %1922, %block_.L_436a22 ]
  %1947 = load i64, i64* %RBP.i, align 8
  %1948 = add i64 %1947, -48
  %1949 = add i64 %1946, 4
  store i64 %1949, i64* %3, align 8
  %1950 = inttoptr i64 %1948 to i64*
  %1951 = load i64, i64* %1950, align 8
  store i64 %1951, i64* %RAX.i1241, align 8
  %1952 = add i64 %1947, -76
  %1953 = add i64 %1946, 8
  store i64 %1953, i64* %3, align 8
  %1954 = inttoptr i64 %1952 to i32*
  %1955 = load i32, i32* %1954, align 4
  %1956 = sext i32 %1955 to i64
  store i64 %1956, i64* %RCX.i1316, align 8
  %1957 = shl nsw i64 %1956, 3
  %1958 = add i64 %1957, %1951
  %1959 = add i64 %1946, 12
  store i64 %1959, i64* %3, align 8
  %1960 = inttoptr i64 %1958 to i64*
  %1961 = load i64, i64* %1960, align 8
  store i64 %1961, i64* %RAX.i1241, align 8
  %1962 = add i64 %1961, 4
  %1963 = add i64 %1946, 19
  store i64 %1963, i64* %3, align 8
  %1964 = inttoptr i64 %1962 to i32*
  store i32 -987654321, i32* %1964, align 4
  %1965 = load i64, i64* %RBP.i, align 8
  %1966 = add i64 %1965, -80
  %1967 = load i64, i64* %3, align 8
  %1968 = add i64 %1967, 7
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1966 to i32*
  store i32 1, i32* %1969, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_436a9a

block_.L_436a9a:                                  ; preds = %block_.L_436ae3, %block_.L_436a80
  %1970 = phi i64 [ %2132, %block_.L_436ae3 ], [ %.pre54, %block_.L_436a80 ]
  %1971 = load i64, i64* %RBP.i, align 8
  %1972 = add i64 %1971, -80
  %1973 = add i64 %1970, 3
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  %1975 = load i32, i32* %1974, align 4
  %1976 = zext i32 %1975 to i64
  store i64 %1976, i64* %RAX.i1241, align 8
  %1977 = add i64 %1971, -8
  %1978 = add i64 %1970, 6
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  %1980 = load i32, i32* %1979, align 4
  %1981 = sub i32 %1975, %1980
  %1982 = icmp ult i32 %1975, %1980
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %14, align 1
  %1984 = and i32 %1981, 255
  %1985 = tail call i32 @llvm.ctpop.i32(i32 %1984)
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  %1988 = xor i8 %1987, 1
  store i8 %1988, i8* %21, align 1
  %1989 = xor i32 %1980, %1975
  %1990 = xor i32 %1989, %1981
  %1991 = lshr i32 %1990, 4
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  store i8 %1993, i8* %26, align 1
  %1994 = icmp eq i32 %1981, 0
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %29, align 1
  %1996 = lshr i32 %1981, 31
  %1997 = trunc i32 %1996 to i8
  store i8 %1997, i8* %32, align 1
  %1998 = lshr i32 %1975, 31
  %1999 = lshr i32 %1980, 31
  %2000 = xor i32 %1999, %1998
  %2001 = xor i32 %1996, %1998
  %2002 = add nuw nsw i32 %2001, %2000
  %2003 = icmp eq i32 %2002, 2
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %38, align 1
  %2005 = icmp ne i8 %1997, 0
  %2006 = xor i1 %2005, %2003
  %.demorgan70 = or i1 %1994, %2006
  %.v75 = select i1 %.demorgan70, i64 12, i64 92
  %2007 = add i64 %1970, %.v75
  store i64 %2007, i64* %3, align 8
  br i1 %.demorgan70, label %block_436aa6, label %block_.L_436af6

block_436aa6:                                     ; preds = %block_.L_436a9a
  %2008 = add i64 %1971, -56
  %2009 = add i64 %2007, 4
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to i64*
  %2011 = load i64, i64* %2010, align 8
  store i64 %2011, i64* %RAX.i1241, align 8
  %2012 = add i64 %1971, -76
  %2013 = add i64 %2007, 8
  store i64 %2013, i64* %3, align 8
  %2014 = inttoptr i64 %2012 to i32*
  %2015 = load i32, i32* %2014, align 4
  %2016 = sext i32 %2015 to i64
  store i64 %2016, i64* %RCX.i1316, align 8
  %2017 = shl nsw i64 %2016, 3
  %2018 = add i64 %2017, %2011
  %2019 = add i64 %2007, 12
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i64*
  %2021 = load i64, i64* %2020, align 8
  store i64 %2021, i64* %RAX.i1241, align 8
  %2022 = add i64 %2007, 16
  store i64 %2022, i64* %3, align 8
  %2023 = load i32, i32* %1974, align 4
  %2024 = sext i32 %2023 to i64
  store i64 %2024, i64* %RCX.i1316, align 8
  %2025 = shl nsw i64 %2024, 2
  %2026 = add i64 %2025, %2021
  %2027 = add i64 %2007, 19
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RDX.i1319, align 8
  %2031 = add i64 %1971, -84
  %2032 = add i64 %2007, 22
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to i32*
  store i32 %2029, i32* %2033, align 4
  %2034 = load i64, i64* %RBP.i, align 8
  %2035 = add i64 %2034, -48
  %2036 = load i64, i64* %3, align 8
  %2037 = add i64 %2036, 4
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2035 to i64*
  %2039 = load i64, i64* %2038, align 8
  store i64 %2039, i64* %RAX.i1241, align 8
  %2040 = add i64 %2034, -76
  %2041 = add i64 %2036, 8
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2040 to i32*
  %2043 = load i32, i32* %2042, align 4
  %2044 = sext i32 %2043 to i64
  store i64 %2044, i64* %RCX.i1316, align 8
  %2045 = shl nsw i64 %2044, 3
  %2046 = add i64 %2045, %2039
  %2047 = add i64 %2036, 12
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2046 to i64*
  %2049 = load i64, i64* %2048, align 8
  store i64 %2049, i64* %RAX.i1241, align 8
  %2050 = load i32, i32* %EDX.i1118, align 4
  %2051 = add i64 %2049, 4
  %2052 = add i64 %2036, 15
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i32*
  %2054 = load i32, i32* %2053, align 4
  %2055 = sub i32 %2050, %2054
  %2056 = icmp ult i32 %2050, %2054
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %14, align 1
  %2058 = and i32 %2055, 255
  %2059 = tail call i32 @llvm.ctpop.i32(i32 %2058)
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = xor i8 %2061, 1
  store i8 %2062, i8* %21, align 1
  %2063 = xor i32 %2054, %2050
  %2064 = xor i32 %2063, %2055
  %2065 = lshr i32 %2064, 4
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  store i8 %2067, i8* %26, align 1
  %2068 = icmp eq i32 %2055, 0
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %29, align 1
  %2070 = lshr i32 %2055, 31
  %2071 = trunc i32 %2070 to i8
  store i8 %2071, i8* %32, align 1
  %2072 = lshr i32 %2050, 31
  %2073 = lshr i32 %2054, 31
  %2074 = xor i32 %2073, %2072
  %2075 = xor i32 %2070, %2072
  %2076 = add nuw nsw i32 %2075, %2074
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %38, align 1
  %2079 = icmp ne i8 %2071, 0
  %2080 = xor i1 %2079, %2077
  %2081 = or i1 %2068, %2080
  %.v82 = select i1 %2081, i64 39, i64 21
  %2082 = add i64 %2036, %.v82
  store i64 %2082, i64* %3, align 8
  br i1 %2081, label %block_.L_436ae3, label %block_436ad1

block_436ad1:                                     ; preds = %block_436aa6
  %2083 = add i64 %2034, -84
  %2084 = add i64 %2082, 3
  store i64 %2084, i64* %3, align 8
  %2085 = inttoptr i64 %2083 to i32*
  %2086 = load i32, i32* %2085, align 4
  %2087 = zext i32 %2086 to i64
  store i64 %2087, i64* %RAX.i1241, align 8
  %2088 = add i64 %2082, 7
  store i64 %2088, i64* %3, align 8
  %2089 = load i64, i64* %2038, align 8
  store i64 %2089, i64* %RCX.i1316, align 8
  %2090 = add i64 %2082, 11
  store i64 %2090, i64* %3, align 8
  %2091 = load i32, i32* %2042, align 4
  %2092 = sext i32 %2091 to i64
  store i64 %2092, i64* %RDX.i1319, align 8
  %2093 = shl nsw i64 %2092, 3
  %2094 = add i64 %2093, %2089
  %2095 = add i64 %2082, 15
  store i64 %2095, i64* %3, align 8
  %2096 = inttoptr i64 %2094 to i64*
  %2097 = load i64, i64* %2096, align 8
  store i64 %2097, i64* %RCX.i1316, align 8
  %2098 = add i64 %2097, 4
  %2099 = add i64 %2082, 18
  store i64 %2099, i64* %3, align 8
  %2100 = inttoptr i64 %2098 to i32*
  store i32 %2086, i32* %2100, align 4
  %.pre55 = load i64, i64* %3, align 8
  %.pre56 = load i64, i64* %RBP.i, align 8
  br label %block_.L_436ae3

block_.L_436ae3:                                  ; preds = %block_436ad1, %block_436aa6
  %2101 = phi i64 [ %.pre56, %block_436ad1 ], [ %2034, %block_436aa6 ]
  %2102 = phi i64 [ %.pre55, %block_436ad1 ], [ %2082, %block_436aa6 ]
  %2103 = add i64 %2101, -80
  %2104 = add i64 %2102, 8
  store i64 %2104, i64* %3, align 8
  %2105 = inttoptr i64 %2103 to i32*
  %2106 = load i32, i32* %2105, align 4
  %2107 = add i32 %2106, 1
  %2108 = zext i32 %2107 to i64
  store i64 %2108, i64* %RAX.i1241, align 8
  %2109 = icmp eq i32 %2106, -1
  %2110 = icmp eq i32 %2107, 0
  %2111 = or i1 %2109, %2110
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %14, align 1
  %2113 = and i32 %2107, 255
  %2114 = tail call i32 @llvm.ctpop.i32(i32 %2113)
  %2115 = trunc i32 %2114 to i8
  %2116 = and i8 %2115, 1
  %2117 = xor i8 %2116, 1
  store i8 %2117, i8* %21, align 1
  %2118 = xor i32 %2107, %2106
  %2119 = lshr i32 %2118, 4
  %2120 = trunc i32 %2119 to i8
  %2121 = and i8 %2120, 1
  store i8 %2121, i8* %26, align 1
  %2122 = zext i1 %2110 to i8
  store i8 %2122, i8* %29, align 1
  %2123 = lshr i32 %2107, 31
  %2124 = trunc i32 %2123 to i8
  store i8 %2124, i8* %32, align 1
  %2125 = lshr i32 %2106, 31
  %2126 = xor i32 %2123, %2125
  %2127 = add nuw nsw i32 %2126, %2123
  %2128 = icmp eq i32 %2127, 2
  %2129 = zext i1 %2128 to i8
  store i8 %2129, i8* %38, align 1
  %2130 = add i64 %2102, 14
  store i64 %2130, i64* %3, align 8
  store i32 %2107, i32* %2105, align 4
  %2131 = load i64, i64* %3, align 8
  %2132 = add i64 %2131, -87
  store i64 %2132, i64* %3, align 8
  br label %block_.L_436a9a

block_.L_436af6:                                  ; preds = %block_.L_436a9a
  %2133 = add i64 %1971, -48
  %2134 = add i64 %2007, 4
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i64*
  %2136 = load i64, i64* %2135, align 8
  store i64 %2136, i64* %RAX.i1241, align 8
  %2137 = add i64 %1971, -76
  %2138 = add i64 %2007, 8
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = sext i32 %2140 to i64
  store i64 %2141, i64* %RCX.i1316, align 8
  %2142 = shl nsw i64 %2141, 3
  %2143 = add i64 %2142, %2136
  %2144 = add i64 %2007, 12
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i64*
  %2146 = load i64, i64* %2145, align 8
  store i64 %2146, i64* %RAX.i1241, align 8
  %2147 = add i64 %2146, 12
  %2148 = add i64 %2007, 19
  store i64 %2148, i64* %3, align 8
  %2149 = inttoptr i64 %2147 to i32*
  store i32 -987654321, i32* %2149, align 4
  %2150 = load i64, i64* %RBP.i, align 8
  %2151 = add i64 %2150, -48
  %2152 = load i64, i64* %3, align 8
  %2153 = add i64 %2152, 4
  store i64 %2153, i64* %3, align 8
  %2154 = inttoptr i64 %2151 to i64*
  %2155 = load i64, i64* %2154, align 8
  store i64 %2155, i64* %RAX.i1241, align 8
  %2156 = add i64 %2150, -76
  %2157 = add i64 %2152, 7
  store i64 %2157, i64* %3, align 8
  %2158 = inttoptr i64 %2156 to i32*
  %2159 = load i32, i32* %2158, align 4
  %2160 = add i32 %2159, -1
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RDX.i1319, align 8
  %2162 = icmp eq i32 %2159, 0
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %14, align 1
  %2164 = and i32 %2160, 255
  %2165 = tail call i32 @llvm.ctpop.i32(i32 %2164)
  %2166 = trunc i32 %2165 to i8
  %2167 = and i8 %2166, 1
  %2168 = xor i8 %2167, 1
  store i8 %2168, i8* %21, align 1
  %2169 = xor i32 %2160, %2159
  %2170 = lshr i32 %2169, 4
  %2171 = trunc i32 %2170 to i8
  %2172 = and i8 %2171, 1
  store i8 %2172, i8* %26, align 1
  %2173 = icmp eq i32 %2160, 0
  %2174 = zext i1 %2173 to i8
  store i8 %2174, i8* %29, align 1
  %2175 = lshr i32 %2160, 31
  %2176 = trunc i32 %2175 to i8
  store i8 %2176, i8* %32, align 1
  %2177 = lshr i32 %2159, 31
  %2178 = xor i32 %2175, %2177
  %2179 = add nuw nsw i32 %2178, %2177
  %2180 = icmp eq i32 %2179, 2
  %2181 = zext i1 %2180 to i8
  store i8 %2181, i8* %38, align 1
  %2182 = sext i32 %2160 to i64
  store i64 %2182, i64* %RCX.i1316, align 8
  %2183 = shl nsw i64 %2182, 3
  %2184 = add i64 %2155, %2183
  %2185 = add i64 %2152, 17
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i64*
  %2187 = load i64, i64* %2186, align 8
  store i64 %2187, i64* %RAX.i1241, align 8
  %2188 = add i64 %2187, 12
  %2189 = add i64 %2152, 20
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2188 to i32*
  %2191 = load i32, i32* %2190, align 4
  %2192 = zext i32 %2191 to i64
  store i64 %2192, i64* %RDI.i864, align 8
  %2193 = add i64 %2150, -16
  %2194 = add i64 %2152, 24
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i64*
  %2196 = load i64, i64* %2195, align 8
  store i64 %2196, i64* %RAX.i1241, align 8
  %2197 = add i64 %2152, 27
  store i64 %2197, i64* %3, align 8
  %2198 = inttoptr i64 %2196 to i64*
  %2199 = load i64, i64* %2198, align 8
  store i64 %2199, i64* %RAX.i1241, align 8
  %2200 = add i64 %2152, 31
  store i64 %2200, i64* %3, align 8
  %2201 = load i32, i32* %2158, align 4
  %2202 = sext i32 %2201 to i64
  store i64 %2202, i64* %RCX.i1316, align 8
  %2203 = shl nsw i64 %2202, 3
  %2204 = add i64 %2203, %2199
  %2205 = add i64 %2152, 35
  store i64 %2205, i64* %3, align 8
  %2206 = inttoptr i64 %2204 to i64*
  %2207 = load i64, i64* %2206, align 8
  store i64 %2207, i64* %RAX.i1241, align 8
  %2208 = add i64 %2207, 12
  %2209 = add i64 %2152, 38
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i32*
  %2211 = load i32, i32* %2210, align 4
  %2212 = zext i32 %2211 to i64
  store i64 %2212, i64* %RSI.i846, align 8
  %2213 = add i64 %2152, -59737
  %2214 = add i64 %2152, 43
  %2215 = load i64, i64* %6, align 8
  %2216 = add i64 %2215, -8
  %2217 = inttoptr i64 %2216 to i64*
  store i64 %2214, i64* %2217, align 8
  store i64 %2216, i64* %6, align 8
  store i64 %2213, i64* %3, align 8
  %call2_436b2f = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2213, %struct.Memory* %2)
  %2218 = load i64, i64* %RBP.i, align 8
  %2219 = add i64 %2218, -84
  %2220 = load i32, i32* %EAX.i1238, align 4
  %2221 = load i64, i64* %3, align 8
  %2222 = add i64 %2221, 3
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2219 to i32*
  store i32 %2220, i32* %2223, align 4
  %2224 = load i32, i32* %EAX.i1238, align 4
  %2225 = load i64, i64* %3, align 8
  %2226 = add i32 %2224, 987654321
  %2227 = icmp ult i32 %2224, -987654321
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %14, align 1
  %2229 = and i32 %2226, 255
  %2230 = tail call i32 @llvm.ctpop.i32(i32 %2229)
  %2231 = trunc i32 %2230 to i8
  %2232 = and i8 %2231, 1
  %2233 = xor i8 %2232, 1
  store i8 %2233, i8* %21, align 1
  %2234 = xor i32 %2226, %2224
  %2235 = lshr i32 %2234, 4
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  store i8 %2237, i8* %26, align 1
  %2238 = icmp eq i32 %2226, 0
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %29, align 1
  %2240 = lshr i32 %2226, 31
  %2241 = trunc i32 %2240 to i8
  store i8 %2241, i8* %32, align 1
  %2242 = lshr i32 %2224, 31
  %2243 = xor i32 %2242, 1
  %2244 = xor i32 %2240, %2242
  %2245 = add nuw nsw i32 %2244, %2243
  %2246 = icmp eq i32 %2245, 2
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %38, align 1
  %2248 = icmp ne i8 %2241, 0
  %2249 = xor i1 %2248, %2246
  %2250 = or i1 %2238, %2249
  %.v76 = select i1 %2250, i64 29, i64 11
  %2251 = add i64 %2225, %.v76
  store i64 %2251, i64* %3, align 8
  br i1 %2250, label %block_.L_436b54, label %block_436b42

block_436b42:                                     ; preds = %block_.L_436af6
  %2252 = load i64, i64* %RBP.i, align 8
  %2253 = add i64 %2252, -84
  %2254 = add i64 %2251, 3
  store i64 %2254, i64* %3, align 8
  %2255 = inttoptr i64 %2253 to i32*
  %2256 = load i32, i32* %2255, align 4
  %2257 = zext i32 %2256 to i64
  store i64 %2257, i64* %RAX.i1241, align 8
  %2258 = add i64 %2252, -48
  %2259 = add i64 %2251, 7
  store i64 %2259, i64* %3, align 8
  %2260 = inttoptr i64 %2258 to i64*
  %2261 = load i64, i64* %2260, align 8
  store i64 %2261, i64* %RCX.i1316, align 8
  %2262 = add i64 %2252, -76
  %2263 = add i64 %2251, 11
  store i64 %2263, i64* %3, align 8
  %2264 = inttoptr i64 %2262 to i32*
  %2265 = load i32, i32* %2264, align 4
  %2266 = sext i32 %2265 to i64
  store i64 %2266, i64* %RDX.i1319, align 8
  %2267 = shl nsw i64 %2266, 3
  %2268 = add i64 %2267, %2261
  %2269 = add i64 %2251, 15
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i64*
  %2271 = load i64, i64* %2270, align 8
  store i64 %2271, i64* %RCX.i1316, align 8
  %2272 = add i64 %2271, 12
  %2273 = add i64 %2251, 18
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i32*
  store i32 %2256, i32* %2274, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_436b54

block_.L_436b54:                                  ; preds = %block_436b42, %block_.L_436af6
  %2275 = phi i64 [ %.pre57, %block_436b42 ], [ %2251, %block_.L_436af6 ]
  %2276 = load i64, i64* %RBP.i, align 8
  %2277 = add i64 %2276, -48
  %2278 = add i64 %2275, 4
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2277 to i64*
  %2280 = load i64, i64* %2279, align 8
  store i64 %2280, i64* %RAX.i1241, align 8
  %2281 = add i64 %2276, -76
  %2282 = add i64 %2275, 8
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2281 to i32*
  %2284 = load i32, i32* %2283, align 4
  %2285 = sext i32 %2284 to i64
  store i64 %2285, i64* %RCX.i1316, align 8
  %2286 = shl nsw i64 %2285, 3
  %2287 = add i64 %2286, %2280
  %2288 = add i64 %2275, 12
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2287 to i64*
  %2290 = load i64, i64* %2289, align 8
  store i64 %2290, i64* %RAX.i1241, align 8
  %2291 = add i64 %2290, 4
  %2292 = add i64 %2275, 15
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  %2294 = load i32, i32* %2293, align 4
  %2295 = zext i32 %2294 to i64
  store i64 %2295, i64* %RDX.i1319, align 8
  %2296 = add i64 %2276, -84
  %2297 = add i64 %2275, 18
  store i64 %2297, i64* %3, align 8
  %2298 = inttoptr i64 %2296 to i32*
  store i32 %2294, i32* %2298, align 4
  %2299 = load i64, i64* %RBP.i, align 8
  %2300 = add i64 %2299, -48
  %2301 = load i64, i64* %3, align 8
  %2302 = add i64 %2301, 4
  store i64 %2302, i64* %3, align 8
  %2303 = inttoptr i64 %2300 to i64*
  %2304 = load i64, i64* %2303, align 8
  store i64 %2304, i64* %RAX.i1241, align 8
  %2305 = add i64 %2299, -76
  %2306 = add i64 %2301, 8
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = sext i32 %2308 to i64
  store i64 %2309, i64* %RCX.i1316, align 8
  %2310 = shl nsw i64 %2309, 3
  %2311 = add i64 %2310, %2304
  %2312 = add i64 %2301, 12
  store i64 %2312, i64* %3, align 8
  %2313 = inttoptr i64 %2311 to i64*
  %2314 = load i64, i64* %2313, align 8
  store i64 %2314, i64* %RAX.i1241, align 8
  %2315 = load i32, i32* %EDX.i1118, align 4
  %2316 = add i64 %2314, 12
  %2317 = add i64 %2301, 15
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i32*
  %2319 = load i32, i32* %2318, align 4
  %2320 = sub i32 %2315, %2319
  %2321 = icmp ult i32 %2315, %2319
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %14, align 1
  %2323 = and i32 %2320, 255
  %2324 = tail call i32 @llvm.ctpop.i32(i32 %2323)
  %2325 = trunc i32 %2324 to i8
  %2326 = and i8 %2325, 1
  %2327 = xor i8 %2326, 1
  store i8 %2327, i8* %21, align 1
  %2328 = xor i32 %2319, %2315
  %2329 = xor i32 %2328, %2320
  %2330 = lshr i32 %2329, 4
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  store i8 %2332, i8* %26, align 1
  %2333 = icmp eq i32 %2320, 0
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %29, align 1
  %2335 = lshr i32 %2320, 31
  %2336 = trunc i32 %2335 to i8
  store i8 %2336, i8* %32, align 1
  %2337 = lshr i32 %2315, 31
  %2338 = lshr i32 %2319, 31
  %2339 = xor i32 %2338, %2337
  %2340 = xor i32 %2335, %2337
  %2341 = add nuw nsw i32 %2340, %2339
  %2342 = icmp eq i32 %2341, 2
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %38, align 1
  %2344 = icmp ne i8 %2336, 0
  %2345 = xor i1 %2344, %2342
  %2346 = or i1 %2333, %2345
  %.v77 = select i1 %2346, i64 39, i64 21
  %2347 = add i64 %2301, %.v77
  store i64 %2347, i64* %3, align 8
  br i1 %2346, label %block_.L_436b8d, label %block_436b7b

block_436b7b:                                     ; preds = %block_.L_436b54
  %2348 = add i64 %2299, -84
  %2349 = add i64 %2347, 3
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i32*
  %2351 = load i32, i32* %2350, align 4
  %2352 = zext i32 %2351 to i64
  store i64 %2352, i64* %RAX.i1241, align 8
  %2353 = add i64 %2347, 7
  store i64 %2353, i64* %3, align 8
  %2354 = load i64, i64* %2303, align 8
  store i64 %2354, i64* %RCX.i1316, align 8
  %2355 = add i64 %2347, 11
  store i64 %2355, i64* %3, align 8
  %2356 = load i32, i32* %2307, align 4
  %2357 = sext i32 %2356 to i64
  store i64 %2357, i64* %RDX.i1319, align 8
  %2358 = shl nsw i64 %2357, 3
  %2359 = add i64 %2358, %2354
  %2360 = add i64 %2347, 15
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i64*
  %2362 = load i64, i64* %2361, align 8
  store i64 %2362, i64* %RCX.i1316, align 8
  %2363 = add i64 %2362, 12
  %2364 = add i64 %2347, 18
  store i64 %2364, i64* %3, align 8
  %2365 = inttoptr i64 %2363 to i32*
  store i32 %2351, i32* %2365, align 4
  %.pre58 = load i64, i64* %RBP.i, align 8
  %.pre59 = load i64, i64* %3, align 8
  br label %block_.L_436b8d

block_.L_436b8d:                                  ; preds = %block_436b7b, %block_.L_436b54
  %2366 = phi i64 [ %.pre59, %block_436b7b ], [ %2347, %block_.L_436b54 ]
  %2367 = phi i64 [ %.pre58, %block_436b7b ], [ %2299, %block_.L_436b54 ]
  %2368 = add i64 %2367, -48
  %2369 = add i64 %2366, 4
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i64*
  %2371 = load i64, i64* %2370, align 8
  store i64 %2371, i64* %RAX.i1241, align 8
  %2372 = add i64 %2367, -76
  %2373 = add i64 %2366, 8
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2372 to i32*
  %2375 = load i32, i32* %2374, align 4
  %2376 = sext i32 %2375 to i64
  store i64 %2376, i64* %RCX.i1316, align 8
  %2377 = shl nsw i64 %2376, 3
  %2378 = add i64 %2377, %2371
  %2379 = add i64 %2366, 12
  store i64 %2379, i64* %3, align 8
  %2380 = inttoptr i64 %2378 to i64*
  %2381 = load i64, i64* %2380, align 8
  store i64 %2381, i64* %RAX.i1241, align 8
  %2382 = add i64 %2366, 18
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to i32*
  store i32 -987654321, i32* %2383, align 4
  %2384 = load i64, i64* %RBP.i, align 8
  %2385 = add i64 %2384, -48
  %2386 = load i64, i64* %3, align 8
  %2387 = add i64 %2386, 4
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2385 to i64*
  %2389 = load i64, i64* %2388, align 8
  store i64 %2389, i64* %RAX.i1241, align 8
  %2390 = add i64 %2384, -76
  %2391 = add i64 %2386, 8
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2390 to i32*
  %2393 = load i32, i32* %2392, align 4
  %2394 = sext i32 %2393 to i64
  store i64 %2394, i64* %RCX.i1316, align 8
  %2395 = shl nsw i64 %2394, 3
  %2396 = add i64 %2395, %2389
  %2397 = add i64 %2386, 12
  store i64 %2397, i64* %3, align 8
  %2398 = inttoptr i64 %2396 to i64*
  %2399 = load i64, i64* %2398, align 8
  store i64 %2399, i64* %RAX.i1241, align 8
  %2400 = add i64 %2399, 16
  %2401 = add i64 %2386, 15
  store i64 %2401, i64* %3, align 8
  %2402 = inttoptr i64 %2400 to i32*
  %2403 = load i32, i32* %2402, align 4
  %2404 = zext i32 %2403 to i64
  store i64 %2404, i64* %RDX.i1319, align 8
  %2405 = add i64 %2384, -84
  %2406 = add i64 %2386, 18
  store i64 %2406, i64* %3, align 8
  %2407 = inttoptr i64 %2405 to i32*
  store i32 %2403, i32* %2407, align 4
  %2408 = load i32, i32* %EDX.i1118, align 4
  %2409 = load i64, i64* %3, align 8
  %2410 = add i32 %2408, 987654321
  %2411 = icmp ult i32 %2408, -987654321
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %14, align 1
  %2413 = and i32 %2410, 255
  %2414 = tail call i32 @llvm.ctpop.i32(i32 %2413)
  %2415 = trunc i32 %2414 to i8
  %2416 = and i8 %2415, 1
  %2417 = xor i8 %2416, 1
  store i8 %2417, i8* %21, align 1
  %2418 = xor i32 %2410, %2408
  %2419 = lshr i32 %2418, 4
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  store i8 %2421, i8* %26, align 1
  %2422 = icmp eq i32 %2410, 0
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %29, align 1
  %2424 = lshr i32 %2410, 31
  %2425 = trunc i32 %2424 to i8
  store i8 %2425, i8* %32, align 1
  %2426 = lshr i32 %2408, 31
  %2427 = xor i32 %2426, 1
  %2428 = xor i32 %2424, %2426
  %2429 = add nuw nsw i32 %2428, %2427
  %2430 = icmp eq i32 %2429, 2
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %38, align 1
  %2432 = icmp ne i8 %2425, 0
  %2433 = xor i1 %2432, %2430
  %2434 = or i1 %2422, %2433
  %.v78 = select i1 %2434, i64 29, i64 12
  %2435 = add i64 %2409, %.v78
  store i64 %2435, i64* %3, align 8
  br i1 %2434, label %block_.L_436bce, label %block_436bbd

block_436bbd:                                     ; preds = %block_.L_436b8d
  %2436 = load i64, i64* %RBP.i, align 8
  %2437 = add i64 %2436, -84
  %2438 = add i64 %2435, 3
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2437 to i32*
  %2440 = load i32, i32* %2439, align 4
  %2441 = zext i32 %2440 to i64
  store i64 %2441, i64* %RAX.i1241, align 8
  %2442 = add i64 %2436, -48
  %2443 = add i64 %2435, 7
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i64*
  %2445 = load i64, i64* %2444, align 8
  store i64 %2445, i64* %RCX.i1316, align 8
  %2446 = add i64 %2436, -76
  %2447 = add i64 %2435, 11
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i32*
  %2449 = load i32, i32* %2448, align 4
  %2450 = sext i32 %2449 to i64
  store i64 %2450, i64* %RDX.i1319, align 8
  %2451 = shl nsw i64 %2450, 3
  %2452 = add i64 %2451, %2445
  %2453 = add i64 %2435, 15
  store i64 %2453, i64* %3, align 8
  %2454 = inttoptr i64 %2452 to i64*
  %2455 = load i64, i64* %2454, align 8
  store i64 %2455, i64* %RCX.i1316, align 8
  %2456 = add i64 %2435, 17
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i32*
  store i32 %2440, i32* %2457, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_436bce

block_.L_436bce:                                  ; preds = %block_436bbd, %block_.L_436b8d
  %2458 = phi i64 [ %.pre60, %block_436bbd ], [ %2435, %block_.L_436b8d ]
  %2459 = load i64, i64* %RBP.i, align 8
  %2460 = add i64 %2459, -48
  %2461 = add i64 %2458, 4
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i64*
  %2463 = load i64, i64* %2462, align 8
  store i64 %2463, i64* %RAX.i1241, align 8
  %2464 = add i64 %2459, -76
  %2465 = add i64 %2458, 8
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2464 to i32*
  %2467 = load i32, i32* %2466, align 4
  %2468 = sext i32 %2467 to i64
  store i64 %2468, i64* %RCX.i1316, align 8
  %2469 = shl nsw i64 %2468, 3
  %2470 = add i64 %2469, %2463
  %2471 = add i64 %2458, 12
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i64*
  %2473 = load i64, i64* %2472, align 8
  store i64 %2473, i64* %RAX.i1241, align 8
  %2474 = add i64 %2473, 12
  %2475 = add i64 %2458, 15
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i32*
  %2477 = load i32, i32* %2476, align 4
  %2478 = zext i32 %2477 to i64
  store i64 %2478, i64* %RDX.i1319, align 8
  %2479 = add i64 %2459, -84
  %2480 = add i64 %2458, 18
  store i64 %2480, i64* %3, align 8
  %2481 = inttoptr i64 %2479 to i32*
  store i32 %2477, i32* %2481, align 4
  %2482 = load i64, i64* %RBP.i, align 8
  %2483 = add i64 %2482, -48
  %2484 = load i64, i64* %3, align 8
  %2485 = add i64 %2484, 4
  store i64 %2485, i64* %3, align 8
  %2486 = inttoptr i64 %2483 to i64*
  %2487 = load i64, i64* %2486, align 8
  store i64 %2487, i64* %RAX.i1241, align 8
  %2488 = add i64 %2482, -76
  %2489 = add i64 %2484, 8
  store i64 %2489, i64* %3, align 8
  %2490 = inttoptr i64 %2488 to i32*
  %2491 = load i32, i32* %2490, align 4
  %2492 = sext i32 %2491 to i64
  store i64 %2492, i64* %RCX.i1316, align 8
  %2493 = shl nsw i64 %2492, 3
  %2494 = add i64 %2493, %2487
  %2495 = add i64 %2484, 12
  store i64 %2495, i64* %3, align 8
  %2496 = inttoptr i64 %2494 to i64*
  %2497 = load i64, i64* %2496, align 8
  store i64 %2497, i64* %RAX.i1241, align 8
  %2498 = load i32, i32* %EDX.i1118, align 4
  %2499 = add i64 %2484, 14
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500, align 4
  %2502 = sub i32 %2498, %2501
  %2503 = icmp ult i32 %2498, %2501
  %2504 = zext i1 %2503 to i8
  store i8 %2504, i8* %14, align 1
  %2505 = and i32 %2502, 255
  %2506 = tail call i32 @llvm.ctpop.i32(i32 %2505)
  %2507 = trunc i32 %2506 to i8
  %2508 = and i8 %2507, 1
  %2509 = xor i8 %2508, 1
  store i8 %2509, i8* %21, align 1
  %2510 = xor i32 %2501, %2498
  %2511 = xor i32 %2510, %2502
  %2512 = lshr i32 %2511, 4
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  store i8 %2514, i8* %26, align 1
  %2515 = icmp eq i32 %2502, 0
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %29, align 1
  %2517 = lshr i32 %2502, 31
  %2518 = trunc i32 %2517 to i8
  store i8 %2518, i8* %32, align 1
  %2519 = lshr i32 %2498, 31
  %2520 = lshr i32 %2501, 31
  %2521 = xor i32 %2520, %2519
  %2522 = xor i32 %2517, %2519
  %2523 = add nuw nsw i32 %2522, %2521
  %2524 = icmp eq i32 %2523, 2
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %38, align 1
  %2526 = icmp ne i8 %2518, 0
  %2527 = xor i1 %2526, %2524
  %2528 = or i1 %2515, %2527
  %.v79 = select i1 %2528, i64 37, i64 20
  %2529 = add i64 %2484, %.v79
  store i64 %2529, i64* %3, align 8
  br i1 %2528, label %block_.L_436c05, label %block_436bf4

block_436bf4:                                     ; preds = %block_.L_436bce
  %2530 = add i64 %2482, -84
  %2531 = add i64 %2529, 3
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2530 to i32*
  %2533 = load i32, i32* %2532, align 4
  %2534 = zext i32 %2533 to i64
  store i64 %2534, i64* %RAX.i1241, align 8
  %2535 = add i64 %2529, 7
  store i64 %2535, i64* %3, align 8
  %2536 = load i64, i64* %2486, align 8
  store i64 %2536, i64* %RCX.i1316, align 8
  %2537 = add i64 %2529, 11
  store i64 %2537, i64* %3, align 8
  %2538 = load i32, i32* %2490, align 4
  %2539 = sext i32 %2538 to i64
  store i64 %2539, i64* %RDX.i1319, align 8
  %2540 = shl nsw i64 %2539, 3
  %2541 = add i64 %2540, %2536
  %2542 = add i64 %2529, 15
  store i64 %2542, i64* %3, align 8
  %2543 = inttoptr i64 %2541 to i64*
  %2544 = load i64, i64* %2543, align 8
  store i64 %2544, i64* %RCX.i1316, align 8
  %2545 = add i64 %2529, 17
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2544 to i32*
  store i32 %2533, i32* %2546, align 4
  %.pre61 = load i64, i64* %RBP.i, align 8
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_436c05

block_.L_436c05:                                  ; preds = %block_436bf4, %block_.L_436bce
  %2547 = phi i64 [ %.pre62, %block_436bf4 ], [ %2529, %block_.L_436bce ]
  %2548 = phi i64 [ %.pre61, %block_436bf4 ], [ %2482, %block_.L_436bce ]
  %2549 = add i64 %2548, -48
  %2550 = add i64 %2547, 4
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to i64*
  %2552 = load i64, i64* %2551, align 8
  store i64 %2552, i64* %RAX.i1241, align 8
  %2553 = add i64 %2548, -76
  %2554 = add i64 %2547, 8
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2553 to i32*
  %2556 = load i32, i32* %2555, align 4
  %2557 = sext i32 %2556 to i64
  store i64 %2557, i64* %RCX.i1316, align 8
  %2558 = shl nsw i64 %2557, 3
  %2559 = add i64 %2558, %2552
  %2560 = add i64 %2547, 12
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i64*
  %2562 = load i64, i64* %2561, align 8
  store i64 %2562, i64* %RAX.i1241, align 8
  %2563 = add i64 %2562, 8
  %2564 = add i64 %2547, 19
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  store i32 -987654321, i32* %2565, align 4
  %2566 = load i64, i64* %RBP.i, align 8
  %2567 = add i64 %2566, -48
  %2568 = load i64, i64* %3, align 8
  %2569 = add i64 %2568, 4
  store i64 %2569, i64* %3, align 8
  %2570 = inttoptr i64 %2567 to i64*
  %2571 = load i64, i64* %2570, align 8
  store i64 %2571, i64* %RAX.i1241, align 8
  %2572 = add i64 %2566, -76
  %2573 = add i64 %2568, 7
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2572 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = add i32 %2575, -1
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RDX.i1319, align 8
  %2578 = icmp eq i32 %2575, 0
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %14, align 1
  %2580 = and i32 %2576, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580)
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %21, align 1
  %2585 = xor i32 %2576, %2575
  %2586 = lshr i32 %2585, 4
  %2587 = trunc i32 %2586 to i8
  %2588 = and i8 %2587, 1
  store i8 %2588, i8* %26, align 1
  %2589 = icmp eq i32 %2576, 0
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %29, align 1
  %2591 = lshr i32 %2576, 31
  %2592 = trunc i32 %2591 to i8
  store i8 %2592, i8* %32, align 1
  %2593 = lshr i32 %2575, 31
  %2594 = xor i32 %2591, %2593
  %2595 = add nuw nsw i32 %2594, %2593
  %2596 = icmp eq i32 %2595, 2
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %38, align 1
  %2598 = sext i32 %2576 to i64
  store i64 %2598, i64* %RCX.i1316, align 8
  %2599 = shl nsw i64 %2598, 3
  %2600 = add i64 %2571, %2599
  %2601 = add i64 %2568, 17
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2600 to i64*
  %2603 = load i64, i64* %2602, align 8
  store i64 %2603, i64* %RAX.i1241, align 8
  %2604 = add i64 %2603, 8
  %2605 = add i64 %2568, 20
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  %2607 = load i32, i32* %2606, align 4
  %2608 = zext i32 %2607 to i64
  store i64 %2608, i64* %RDI.i864, align 8
  %2609 = add i64 %2566, -16
  %2610 = add i64 %2568, 24
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i64*
  %2612 = load i64, i64* %2611, align 8
  store i64 %2612, i64* %RAX.i1241, align 8
  %2613 = add i64 %2568, 27
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to i64*
  %2615 = load i64, i64* %2614, align 8
  store i64 %2615, i64* %RAX.i1241, align 8
  %2616 = add i64 %2568, 31
  store i64 %2616, i64* %3, align 8
  %2617 = load i32, i32* %2574, align 4
  %2618 = sext i32 %2617 to i64
  store i64 %2618, i64* %RCX.i1316, align 8
  %2619 = shl nsw i64 %2618, 3
  %2620 = add i64 %2619, %2615
  %2621 = add i64 %2568, 35
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2620 to i64*
  %2623 = load i64, i64* %2622, align 8
  store i64 %2623, i64* %RAX.i1241, align 8
  %2624 = add i64 %2623, 8
  %2625 = add i64 %2568, 38
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i32*
  %2627 = load i32, i32* %2626, align 4
  %2628 = zext i32 %2627 to i64
  store i64 %2628, i64* %RSI.i846, align 8
  %2629 = add i64 %2568, -60008
  %2630 = add i64 %2568, 43
  %2631 = load i64, i64* %6, align 8
  %2632 = add i64 %2631, -8
  %2633 = inttoptr i64 %2632 to i64*
  store i64 %2630, i64* %2633, align 8
  store i64 %2632, i64* %6, align 8
  store i64 %2629, i64* %3, align 8
  %call2_436c3e = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2629, %struct.Memory* %2)
  %2634 = load i64, i64* %RBP.i, align 8
  %2635 = add i64 %2634, -84
  %2636 = load i32, i32* %EAX.i1238, align 4
  %2637 = load i64, i64* %3, align 8
  %2638 = add i64 %2637, 3
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2635 to i32*
  store i32 %2636, i32* %2639, align 4
  %2640 = load i32, i32* %EAX.i1238, align 4
  %2641 = load i64, i64* %3, align 8
  %2642 = add i32 %2640, 987654321
  %2643 = icmp ult i32 %2640, -987654321
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %14, align 1
  %2645 = and i32 %2642, 255
  %2646 = tail call i32 @llvm.ctpop.i32(i32 %2645)
  %2647 = trunc i32 %2646 to i8
  %2648 = and i8 %2647, 1
  %2649 = xor i8 %2648, 1
  store i8 %2649, i8* %21, align 1
  %2650 = xor i32 %2642, %2640
  %2651 = lshr i32 %2650, 4
  %2652 = trunc i32 %2651 to i8
  %2653 = and i8 %2652, 1
  store i8 %2653, i8* %26, align 1
  %2654 = icmp eq i32 %2642, 0
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %29, align 1
  %2656 = lshr i32 %2642, 31
  %2657 = trunc i32 %2656 to i8
  store i8 %2657, i8* %32, align 1
  %2658 = lshr i32 %2640, 31
  %2659 = xor i32 %2658, 1
  %2660 = xor i32 %2656, %2658
  %2661 = add nuw nsw i32 %2660, %2659
  %2662 = icmp eq i32 %2661, 2
  %2663 = zext i1 %2662 to i8
  store i8 %2663, i8* %38, align 1
  %2664 = icmp ne i8 %2657, 0
  %2665 = xor i1 %2664, %2662
  %2666 = or i1 %2654, %2665
  %.v80 = select i1 %2666, i64 29, i64 11
  %2667 = add i64 %2641, %.v80
  store i64 %2667, i64* %3, align 8
  br i1 %2666, label %block_.L_436c63, label %block_436c51

block_436c51:                                     ; preds = %block_.L_436c05
  %2668 = load i64, i64* %RBP.i, align 8
  %2669 = add i64 %2668, -84
  %2670 = add i64 %2667, 3
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = zext i32 %2672 to i64
  store i64 %2673, i64* %RAX.i1241, align 8
  %2674 = add i64 %2668, -48
  %2675 = add i64 %2667, 7
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i64*
  %2677 = load i64, i64* %2676, align 8
  store i64 %2677, i64* %RCX.i1316, align 8
  %2678 = add i64 %2668, -76
  %2679 = add i64 %2667, 11
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i32*
  %2681 = load i32, i32* %2680, align 4
  %2682 = sext i32 %2681 to i64
  store i64 %2682, i64* %RDX.i1319, align 8
  %2683 = shl nsw i64 %2682, 3
  %2684 = add i64 %2683, %2677
  %2685 = add i64 %2667, 15
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2684 to i64*
  %2687 = load i64, i64* %2686, align 8
  store i64 %2687, i64* %RCX.i1316, align 8
  %2688 = add i64 %2687, 8
  %2689 = add i64 %2667, 18
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  store i32 %2672, i32* %2690, align 4
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_436c63

block_.L_436c63:                                  ; preds = %block_436c51, %block_.L_436c05
  %2691 = phi i64 [ %.pre63, %block_436c51 ], [ %2667, %block_.L_436c05 ]
  %2692 = load i64, i64* %RBP.i, align 8
  %2693 = add i64 %2692, -48
  %2694 = add i64 %2691, 4
  store i64 %2694, i64* %3, align 8
  %2695 = inttoptr i64 %2693 to i64*
  %2696 = load i64, i64* %2695, align 8
  store i64 %2696, i64* %RAX.i1241, align 8
  %2697 = add i64 %2692, -76
  %2698 = add i64 %2691, 8
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i32*
  %2700 = load i32, i32* %2699, align 4
  %2701 = sext i32 %2700 to i64
  store i64 %2701, i64* %RCX.i1316, align 8
  %2702 = shl nsw i64 %2701, 3
  %2703 = add i64 %2702, %2696
  %2704 = add i64 %2691, 12
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2703 to i64*
  %2706 = load i64, i64* %2705, align 8
  store i64 %2706, i64* %RAX.i1241, align 8
  %2707 = add i64 %2706, 4
  %2708 = add i64 %2691, 15
  store i64 %2708, i64* %3, align 8
  %2709 = inttoptr i64 %2707 to i32*
  %2710 = load i32, i32* %2709, align 4
  %2711 = zext i32 %2710 to i64
  store i64 %2711, i64* %RDX.i1319, align 8
  %2712 = add i64 %2692, -84
  %2713 = add i64 %2691, 18
  store i64 %2713, i64* %3, align 8
  %2714 = inttoptr i64 %2712 to i32*
  store i32 %2710, i32* %2714, align 4
  %2715 = load i64, i64* %RBP.i, align 8
  %2716 = add i64 %2715, -48
  %2717 = load i64, i64* %3, align 8
  %2718 = add i64 %2717, 4
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2716 to i64*
  %2720 = load i64, i64* %2719, align 8
  store i64 %2720, i64* %RAX.i1241, align 8
  %2721 = add i64 %2715, -76
  %2722 = add i64 %2717, 8
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i32*
  %2724 = load i32, i32* %2723, align 4
  %2725 = sext i32 %2724 to i64
  store i64 %2725, i64* %RCX.i1316, align 8
  %2726 = shl nsw i64 %2725, 3
  %2727 = add i64 %2726, %2720
  %2728 = add i64 %2717, 12
  store i64 %2728, i64* %3, align 8
  %2729 = inttoptr i64 %2727 to i64*
  %2730 = load i64, i64* %2729, align 8
  store i64 %2730, i64* %RAX.i1241, align 8
  %2731 = load i32, i32* %EDX.i1118, align 4
  %2732 = add i64 %2730, 8
  %2733 = add i64 %2717, 15
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i32*
  %2735 = load i32, i32* %2734, align 4
  %2736 = sub i32 %2731, %2735
  %2737 = icmp ult i32 %2731, %2735
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %14, align 1
  %2739 = and i32 %2736, 255
  %2740 = tail call i32 @llvm.ctpop.i32(i32 %2739)
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = xor i8 %2742, 1
  store i8 %2743, i8* %21, align 1
  %2744 = xor i32 %2735, %2731
  %2745 = xor i32 %2744, %2736
  %2746 = lshr i32 %2745, 4
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  store i8 %2748, i8* %26, align 1
  %2749 = icmp eq i32 %2736, 0
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %29, align 1
  %2751 = lshr i32 %2736, 31
  %2752 = trunc i32 %2751 to i8
  store i8 %2752, i8* %32, align 1
  %2753 = lshr i32 %2731, 31
  %2754 = lshr i32 %2735, 31
  %2755 = xor i32 %2754, %2753
  %2756 = xor i32 %2751, %2753
  %2757 = add nuw nsw i32 %2756, %2755
  %2758 = icmp eq i32 %2757, 2
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %38, align 1
  %2760 = icmp ne i8 %2752, 0
  %2761 = xor i1 %2760, %2758
  %2762 = or i1 %2749, %2761
  %.v81 = select i1 %2762, i64 39, i64 21
  %2763 = add i64 %2717, %.v81
  store i64 %2763, i64* %3, align 8
  br i1 %2762, label %block_.L_436c9c, label %block_436c8a

block_436c8a:                                     ; preds = %block_.L_436c63
  %2764 = add i64 %2715, -84
  %2765 = add i64 %2763, 3
  store i64 %2765, i64* %3, align 8
  %2766 = inttoptr i64 %2764 to i32*
  %2767 = load i32, i32* %2766, align 4
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RAX.i1241, align 8
  %2769 = add i64 %2763, 7
  store i64 %2769, i64* %3, align 8
  %2770 = load i64, i64* %2719, align 8
  store i64 %2770, i64* %RCX.i1316, align 8
  %2771 = add i64 %2763, 11
  store i64 %2771, i64* %3, align 8
  %2772 = load i32, i32* %2723, align 4
  %2773 = sext i32 %2772 to i64
  store i64 %2773, i64* %RDX.i1319, align 8
  %2774 = shl nsw i64 %2773, 3
  %2775 = add i64 %2774, %2770
  %2776 = add i64 %2763, 15
  store i64 %2776, i64* %3, align 8
  %2777 = inttoptr i64 %2775 to i64*
  %2778 = load i64, i64* %2777, align 8
  store i64 %2778, i64* %RCX.i1316, align 8
  %2779 = add i64 %2778, 8
  %2780 = add i64 %2763, 18
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2779 to i32*
  store i32 %2767, i32* %2781, align 4
  %.pre64 = load i64, i64* %3, align 8
  %.pre65 = load i64, i64* %RBP.i, align 8
  br label %block_.L_436c9c

block_.L_436c9c:                                  ; preds = %block_436c8a, %block_.L_436c63
  %2782 = phi i64 [ %.pre65, %block_436c8a ], [ %2715, %block_.L_436c63 ]
  %2783 = phi i64 [ %.pre64, %block_436c8a ], [ %2763, %block_.L_436c63 ]
  %2784 = add i64 %2782, -76
  %2785 = add i64 %2783, 8
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  %2788 = add i32 %2787, 1
  %2789 = zext i32 %2788 to i64
  store i64 %2789, i64* %RAX.i1241, align 8
  %2790 = icmp eq i32 %2787, -1
  %2791 = icmp eq i32 %2788, 0
  %2792 = or i1 %2790, %2791
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %14, align 1
  %2794 = and i32 %2788, 255
  %2795 = tail call i32 @llvm.ctpop.i32(i32 %2794)
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  %2798 = xor i8 %2797, 1
  store i8 %2798, i8* %21, align 1
  %2799 = xor i32 %2788, %2787
  %2800 = lshr i32 %2799, 4
  %2801 = trunc i32 %2800 to i8
  %2802 = and i8 %2801, 1
  store i8 %2802, i8* %26, align 1
  %2803 = zext i1 %2791 to i8
  store i8 %2803, i8* %29, align 1
  %2804 = lshr i32 %2788, 31
  %2805 = trunc i32 %2804 to i8
  store i8 %2805, i8* %32, align 1
  %2806 = lshr i32 %2787, 31
  %2807 = xor i32 %2804, %2806
  %2808 = add nuw nsw i32 %2807, %2804
  %2809 = icmp eq i32 %2808, 2
  %2810 = zext i1 %2809 to i8
  store i8 %2810, i8* %38, align 1
  %2811 = add i64 %2783, 14
  store i64 %2811, i64* %3, align 8
  store i32 %2788, i32* %2786, align 4
  %2812 = load i64, i64* %3, align 8
  %2813 = add i64 %2812, -1550
  store i64 %2813, i64* %3, align 8
  br label %block_.L_43669c

block_.L_436caf:                                  ; preds = %block_.L_43669c
  %2814 = add i64 %311, -48
  %2815 = add i64 %347, 4
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i64*
  %2817 = load i64, i64* %2816, align 8
  store i64 %2817, i64* %RAX.i1241, align 8
  %2818 = add i64 %347, 8
  store i64 %2818, i64* %3, align 8
  %2819 = load i32, i32* %319, align 4
  %2820 = sext i32 %2819 to i64
  store i64 %2820, i64* %RCX.i1316, align 8
  %2821 = shl nsw i64 %2820, 3
  %2822 = add i64 %2821, %2817
  %2823 = add i64 %347, 12
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i64*
  %2825 = load i64, i64* %2824, align 8
  store i64 %2825, i64* %RAX.i1241, align 8
  %2826 = add i64 %2825, 8
  %2827 = add i64 %347, 15
  store i64 %2827, i64* %3, align 8
  %2828 = inttoptr i64 %2826 to i32*
  %2829 = load i32, i32* %2828, align 4
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RDX.i1319, align 8
  %2831 = add i64 %311, -84
  %2832 = add i64 %347, 18
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2831 to i32*
  store i32 %2829, i32* %2833, align 4
  %2834 = load i64, i64* %RBP.i, align 8
  %2835 = add i64 %2834, -32
  %2836 = load i64, i64* %3, align 8
  %2837 = add i64 %2836, 5
  store i64 %2837, i64* %3, align 8
  %2838 = inttoptr i64 %2835 to i64*
  %2839 = load i64, i64* %2838, align 8
  store i8 0, i8* %14, align 1
  %2840 = trunc i64 %2839 to i32
  %2841 = and i32 %2840, 255
  %2842 = tail call i32 @llvm.ctpop.i32(i32 %2841)
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  %2845 = xor i8 %2844, 1
  store i8 %2845, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2846 = icmp eq i64 %2839, 0
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %29, align 1
  %2848 = lshr i64 %2839, 63
  %2849 = trunc i64 %2848 to i8
  store i8 %2849, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v72 = select i1 %2846, i64 45, i64 11
  %2850 = add i64 %2836, %.v72
  store i64 %2850, i64* %3, align 8
  br i1 %2846, label %block_.L_436cee, label %block_436ccc

block_436ccc:                                     ; preds = %block_.L_436caf
  %2851 = add i64 %2834, -40
  store i64 %2851, i64* %R8.i1314, align 8
  %2852 = add i64 %2834, -4
  %2853 = add i64 %2850, 7
  store i64 %2853, i64* %3, align 8
  %2854 = inttoptr i64 %2852 to i32*
  %2855 = load i32, i32* %2854, align 4
  %2856 = zext i32 %2855 to i64
  store i64 %2856, i64* %RDI.i864, align 8
  %2857 = add i64 %2834, -8
  %2858 = add i64 %2850, 10
  store i64 %2858, i64* %3, align 8
  %2859 = inttoptr i64 %2857 to i32*
  %2860 = load i32, i32* %2859, align 4
  %2861 = zext i32 %2860 to i64
  store i64 %2861, i64* %RSI.i846, align 8
  %2862 = add i64 %2834, -16
  %2863 = add i64 %2850, 14
  store i64 %2863, i64* %3, align 8
  %2864 = inttoptr i64 %2862 to i64*
  %2865 = load i64, i64* %2864, align 8
  store i64 %2865, i64* %RDX.i1319, align 8
  %2866 = add i64 %2834, -24
  %2867 = add i64 %2850, 18
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2866 to i64*
  %2869 = load i64, i64* %2868, align 8
  store i64 %2869, i64* %RCX.i1316, align 8
  %2870 = add i64 %2850, 68
  %2871 = add i64 %2850, 23
  %2872 = load i64, i64* %6, align 8
  %2873 = add i64 %2872, -8
  %2874 = inttoptr i64 %2873 to i64*
  store i64 %2871, i64* %2874, align 8
  store i64 %2873, i64* %6, align 8
  store i64 %2870, i64* %3, align 8
  %call2_436cde = tail call %struct.Memory* @sub_436d10.P7OptimalAccuracyTrace(%struct.State* nonnull %0, i64 %2870, %struct.Memory* %2)
  %2875 = load i64, i64* %RBP.i, align 8
  %2876 = add i64 %2875, -40
  %2877 = load i64, i64* %3, align 8
  %2878 = add i64 %2877, 4
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2876 to i64*
  %2880 = load i64, i64* %2879, align 8
  store i64 %2880, i64* %RCX.i1316, align 8
  %2881 = add i64 %2875, -32
  %2882 = add i64 %2877, 8
  store i64 %2882, i64* %3, align 8
  %2883 = inttoptr i64 %2881 to i64*
  %2884 = load i64, i64* %2883, align 8
  store i64 %2884, i64* %RDX.i1319, align 8
  %2885 = add i64 %2877, 11
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i64*
  store i64 %2880, i64* %2886, align 8
  %.pre66 = load i64, i64* %3, align 8
  %.pre67 = load i64, i64* %RBP.i, align 8
  br label %block_.L_436cee

block_.L_436cee:                                  ; preds = %block_436ccc, %block_.L_436caf
  %2887 = phi i64 [ %2834, %block_.L_436caf ], [ %.pre67, %block_436ccc ]
  %2888 = phi i64 [ %2850, %block_.L_436caf ], [ %.pre66, %block_436ccc ]
  %MEMORY.20 = phi %struct.Memory* [ %2, %block_.L_436caf ], [ %call2_436cde, %block_436ccc ]
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %2890 = bitcast %union.VectorReg* %2889 to i8*
  %2891 = add i64 %2888, ptrtoint (%G_0x1da32__rip__type* @G_0x1da32__rip_ to i64)
  %2892 = add i64 %2888, 8
  store i64 %2892, i64* %3, align 8
  %2893 = inttoptr i64 %2891 to i32*
  %2894 = load i32, i32* %2893, align 4
  %2895 = bitcast %union.VectorReg* %2889 to i32*
  store i32 %2894, i32* %2895, align 1
  %2896 = getelementptr inbounds i8, i8* %2890, i64 4
  %2897 = bitcast i8* %2896 to float*
  store float 0.000000e+00, float* %2897, align 1
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %2899 = bitcast i64* %2898 to float*
  store float 0.000000e+00, float* %2899, align 1
  %2900 = getelementptr inbounds i8, i8* %2890, i64 12
  %2901 = bitcast i8* %2900 to float*
  store float 0.000000e+00, float* %2901, align 1
  %2902 = add i64 %2887, -84
  %2903 = add i64 %2888, 11
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i32*
  %2905 = load i32, i32* %2904, align 4
  %2906 = zext i32 %2905 to i64
  store i64 %2906, i64* %RDI.i864, align 8
  %2907 = add i64 %2888, -61054
  %2908 = add i64 %2888, 16
  %2909 = load i64, i64* %6, align 8
  %2910 = add i64 %2909, -8
  %2911 = inttoptr i64 %2910 to i64*
  store i64 %2908, i64* %2911, align 8
  store i64 %2910, i64* %6, align 8
  store i64 %2907, i64* %3, align 8
  %call2_436cf9 = tail call %struct.Memory* @sub_427e70.Score2Prob(%struct.State* nonnull %0, i64 %2907, %struct.Memory* %MEMORY.20)
  %2912 = load i64, i64* %6, align 8
  %2913 = load i64, i64* %3, align 8
  %2914 = add i64 %2912, 96
  store i64 %2914, i64* %6, align 8
  %2915 = icmp ugt i64 %2912, -97
  %2916 = zext i1 %2915 to i8
  store i8 %2916, i8* %14, align 1
  %2917 = trunc i64 %2914 to i32
  %2918 = and i32 %2917, 255
  %2919 = tail call i32 @llvm.ctpop.i32(i32 %2918)
  %2920 = trunc i32 %2919 to i8
  %2921 = and i8 %2920, 1
  %2922 = xor i8 %2921, 1
  store i8 %2922, i8* %21, align 1
  %2923 = xor i64 %2914, %2912
  %2924 = lshr i64 %2923, 4
  %2925 = trunc i64 %2924 to i8
  %2926 = and i8 %2925, 1
  store i8 %2926, i8* %26, align 1
  %2927 = icmp eq i64 %2914, 0
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %29, align 1
  %2929 = lshr i64 %2914, 63
  %2930 = trunc i64 %2929 to i8
  store i8 %2930, i8* %32, align 1
  %2931 = lshr i64 %2912, 63
  %2932 = xor i64 %2929, %2931
  %2933 = add nuw nsw i64 %2932, %2929
  %2934 = icmp eq i64 %2933, 2
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %38, align 1
  %2936 = add i64 %2913, 5
  store i64 %2936, i64* %3, align 8
  %2937 = add i64 %2912, 104
  %2938 = inttoptr i64 %2914 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %RBP.i, align 8
  store i64 %2937, i64* %6, align 8
  %2940 = add i64 %2913, 6
  store i64 %2940, i64* %3, align 8
  %2941 = inttoptr i64 %2937 to i64*
  %2942 = load i64, i64* %2941, align 8
  store i64 %2942, i64* %3, align 8
  %2943 = add i64 %2912, 112
  store i64 %2943, i64* %6, align 8
  ret %struct.Memory* %call2_436cf9
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
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 -987654321, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -8
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
define %struct.Memory* @routine_jg_.L_436695(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 -987654321, i32* %9, align 4
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_436645(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_jg_.L_436caf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 -987654321, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_436a22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
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
define %struct.Memory* @routine_jle_.L_436757(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
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
define %struct.Memory* @routine_jle_.L_4367a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4367f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43683a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.ILogsum(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xc521974f____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 -987654321, i32* %9, align 4
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
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
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
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_cmpl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %4, %12
  %14 = icmp ult i32 %4, %12
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %12, %4
  %24 = xor i32 %23, %13
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %13, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %4, 31
  %36 = lshr i32 %12, 31
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
define %struct.Memory* @routine_jle_.L_4368dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_436927(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_436988(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4369d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4366e5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl_0x10__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_cmpl__0xc521974f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, 987654321
  %8 = icmp ult i32 %4, -987654321
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
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_436a80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_436af6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jle_.L_436ae3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436ae8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_436a9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_jle_.L_436b54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_cmpl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_jle_.L_436b8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, 987654321
  %8 = icmp ult i32 %4, -987654321
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
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_436bce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_436c05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl_0x8__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_jle_.L_436c63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_jle_.L_436c9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_436ca1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43669c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_je_.L_436cee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x28__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
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
define %struct.Memory* @routine_callq_.P7OptimalAccuracyTrace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x1da32__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x1da32__rip__type* @G_0x1da32__rip_ to i64)
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_callq_.Score2Prob(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
