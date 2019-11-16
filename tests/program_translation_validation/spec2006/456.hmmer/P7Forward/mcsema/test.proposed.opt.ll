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

declare %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4281b0.ILogsum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_427ef0.Scorify(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7Forward(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1319 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = add i64 %7, -56
  store i64 %40, i64* %RAX.i1319, align 8
  %R8.i1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %41 = add i64 %7, -64
  store i64 %41, i64* %R8.i1317, align 8
  %R9.i1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %42 = add i64 %7, -72
  store i64 %42, i64* %R9.i1314, align 8
  %R10.i1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %43 = add i64 %7, -80
  store i64 %43, i64* %R10.i1311, align 8
  %RDI.i1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %44 = add i64 %7, -16
  %45 = load i64, i64* %RDI.i1307, align 8
  %46 = add i64 %10, 27
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %47, align 8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1304 = bitcast %union.anon* %48 to i32*
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -12
  %51 = load i32, i32* %ESI.i1304, align 4
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 3
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %50 to i32*
  store i32 %51, i32* %54, align 4
  %RDX.i1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -24
  %57 = load i64, i64* %RDX.i1301, align 8
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 4
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %56 to i64*
  store i64 %57, i64* %60, align 8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1298 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -32
  %64 = load i64, i64* %RCX.i1298, align 8
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 4
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %63 to i64*
  store i64 %64, i64* %67, align 8
  %RSI.i1295 = getelementptr inbounds %union.anon, %union.anon* %48, i64 0, i32 0
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -12
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 3
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, 1
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %RSI.i1295, align 8
  %76 = icmp eq i32 %73, -1
  %77 = icmp eq i32 %74, 0
  %78 = or i1 %76, %77
  %79 = zext i1 %78 to i8
  store i8 %79, i8* %14, align 1
  %80 = and i32 %74, 255
  %81 = tail call i32 @llvm.ctpop.i32(i32 %80)
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  %84 = xor i8 %83, 1
  store i8 %84, i8* %21, align 1
  %85 = xor i32 %74, %73
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %26, align 1
  %89 = zext i1 %77 to i8
  store i8 %89, i8* %29, align 1
  %90 = lshr i32 %74, 31
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %32, align 1
  %92 = lshr i32 %73, 31
  %93 = xor i32 %90, %92
  %94 = add nuw nsw i32 %93, %90
  %95 = icmp eq i32 %94, 2
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %38, align 1
  %97 = add i64 %68, -24
  %98 = add i64 %70, 10
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RCX.i1298, align 8
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %102 = add i64 %100, 136
  %103 = add i64 %70, 17
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %101, align 8
  store i64 %75, i64* %RDI.i1307, align 8
  store i64 %106, i64* %RSI.i1295, align 8
  %107 = load i64, i64* %RAX.i1319, align 8
  store i64 %107, i64* %RDX.i1301, align 8
  %108 = load i64, i64* %R8.i1317, align 8
  store i64 %108, i64* %RCX.i1298, align 8
  %109 = load i64, i64* %R9.i1314, align 8
  store i64 %109, i64* %R8.i1317, align 8
  %110 = load i64, i64* %R10.i1311, align 8
  store i64 %110, i64* %R9.i1314, align 8
  %111 = add i64 %70, -1799
  %112 = add i64 %70, 39
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*
  store i64 %112, i64* %115, align 8
  store i64 %114, i64* %6, align 8
  store i64 %111, i64* %3, align 8
  %call2_407fb9 = tail call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* %0, i64 %111, %struct.Memory* %2)
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -40
  %118 = load i64, i64* %RAX.i1319, align 8
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %117 to i64*
  store i64 %118, i64* %121, align 8
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -48
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 4
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %123 to i64*
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %RAX.i1319, align 8
  %128 = add i64 %124, 7
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RAX.i1319, align 8
  %131 = add i64 %130, 16
  %132 = add i64 %124, 14
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i32*
  store i32 0, i32* %133, align 4
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -24
  %136 = load i64, i64* %3, align 8
  %137 = add i64 %136, 4
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %135 to i64*
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %RAX.i1319, align 8
  %140 = add i64 %139, 336
  %141 = add i64 %136, 10
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RSI.i1295, align 8
  %145 = add i64 %134, -48
  %146 = add i64 %136, 14
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i64*
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %RAX.i1319, align 8
  %149 = add i64 %136, 17
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %148 to i64*
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %RAX.i1319, align 8
  %152 = add i64 %136, 19
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i32*
  store i32 %143, i32* %153, align 4
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -48
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, 4
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %155 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RAX.i1319, align 8
  %160 = add i64 %156, 7
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i64*
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %RAX.i1319, align 8
  %163 = add i64 %162, 12
  %164 = add i64 %156, 14
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  store i32 -987654321, i32* %165, align 4
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -48
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 4
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %167 to i64*
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %RAX.i1319, align 8
  %172 = add i64 %168, 7
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i64*
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %RAX.i1319, align 8
  %175 = add i64 %174, 8
  %176 = add i64 %168, 14
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i32*
  store i32 -987654321, i32* %177, align 4
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -48
  %180 = load i64, i64* %3, align 8
  %181 = add i64 %180, 4
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %179 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RAX.i1319, align 8
  %184 = add i64 %180, 7
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RAX.i1319, align 8
  %187 = add i64 %186, 4
  %188 = add i64 %180, 14
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  store i32 -987654321, i32* %189, align 4
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -80
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 7
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %191 to i32*
  store i32 0, i32* %194, align 4
  %EAX.i1214 = bitcast %union.anon* %39 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_408014

block_.L_408014:                                  ; preds = %block_408027, %entry
  %195 = phi i64 [ %318, %block_408027 ], [ %.pre, %entry ]
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -80
  %198 = add i64 %195, 3
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  %200 = load i32, i32* %199, align 4
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RAX.i1319, align 8
  %202 = add i64 %196, -24
  %203 = add i64 %195, 7
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %RCX.i1298, align 8
  %206 = add i64 %205, 136
  %207 = add i64 %195, 13
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = sub i32 %200, %209
  %211 = icmp ult i32 %200, %209
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %14, align 1
  %213 = and i32 %210, 255
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %21, align 1
  %218 = xor i32 %209, %200
  %219 = xor i32 %218, %210
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %26, align 1
  %223 = icmp eq i32 %210, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %29, align 1
  %225 = lshr i32 %210, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %32, align 1
  %227 = lshr i32 %200, 31
  %228 = lshr i32 %209, 31
  %229 = xor i32 %228, %227
  %230 = xor i32 %225, %227
  %231 = add nuw nsw i32 %230, %229
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %38, align 1
  %234 = icmp ne i8 %226, 0
  %235 = xor i1 %234, %232
  %.demorgan = or i1 %223, %235
  %.v25 = select i1 %.demorgan, i64 19, i64 87
  %236 = add i64 %195, %.v25
  store i64 %236, i64* %3, align 8
  br i1 %.demorgan, label %block_408027, label %block_.L_40806b

block_408027:                                     ; preds = %block_.L_408014
  %237 = add i64 %196, -72
  %238 = add i64 %236, 4
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX.i1319, align 8
  %241 = add i64 %236, 7
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i64*
  %243 = load i64, i64* %242, align 8
  store i64 %243, i64* %RAX.i1319, align 8
  %244 = add i64 %236, 11
  store i64 %244, i64* %3, align 8
  %245 = load i32, i32* %199, align 4
  %246 = sext i32 %245 to i64
  store i64 %246, i64* %RCX.i1298, align 8
  %247 = shl nsw i64 %246, 2
  %248 = add i64 %247, %243
  %249 = add i64 %236, 18
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  store i32 -987654321, i32* %250, align 4
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -64
  %253 = load i64, i64* %3, align 8
  %254 = add i64 %253, 4
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %252 to i64*
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %RAX.i1319, align 8
  %257 = add i64 %253, 7
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %RAX.i1319, align 8
  %260 = add i64 %251, -80
  %261 = add i64 %253, 11
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %RCX.i1298, align 8
  %265 = shl nsw i64 %264, 2
  %266 = add i64 %265, %259
  %267 = add i64 %253, 18
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  store i32 -987654321, i32* %268, align 4
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -56
  %271 = load i64, i64* %3, align 8
  %272 = add i64 %271, 4
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %270 to i64*
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %RAX.i1319, align 8
  %275 = add i64 %271, 7
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i64*
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %RAX.i1319, align 8
  %278 = add i64 %269, -80
  %279 = add i64 %271, 11
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  store i64 %282, i64* %RCX.i1298, align 8
  %283 = shl nsw i64 %282, 2
  %284 = add i64 %283, %277
  %285 = add i64 %271, 18
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  store i32 -987654321, i32* %286, align 4
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -80
  %289 = load i64, i64* %3, align 8
  %290 = add i64 %289, 3
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %288 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = add i32 %292, 1
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX.i1319, align 8
  %295 = icmp eq i32 %292, -1
  %296 = icmp eq i32 %293, 0
  %297 = or i1 %295, %296
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %14, align 1
  %299 = and i32 %293, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %21, align 1
  %304 = xor i32 %293, %292
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %26, align 1
  %308 = zext i1 %296 to i8
  store i8 %308, i8* %29, align 1
  %309 = lshr i32 %293, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %32, align 1
  %311 = lshr i32 %292, 31
  %312 = xor i32 %309, %311
  %313 = add nuw nsw i32 %312, %309
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %38, align 1
  %316 = add i64 %289, 9
  store i64 %316, i64* %3, align 8
  store i32 %293, i32* %291, align 4
  %317 = load i64, i64* %3, align 8
  %318 = add i64 %317, -82
  store i64 %318, i64* %3, align 8
  br label %block_.L_408014

block_.L_40806b:                                  ; preds = %block_.L_408014
  %319 = add i64 %196, -76
  %320 = add i64 %236, 7
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  store i32 1, i32* %321, align 4
  %ECX.i607 = bitcast %union.anon* %61 to i32*
  %.pre17 = load i64, i64* %3, align 8
  br label %block_.L_408072

block_.L_408072:                                  ; preds = %block_.L_408599, %block_.L_40806b
  %322 = phi i64 [ %3172, %block_.L_408599 ], [ %.pre17, %block_.L_40806b ]
  %323 = load i64, i64* %RBP.i, align 8
  %324 = add i64 %323, -76
  %325 = add i64 %322, 3
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %327 to i64
  store i64 %328, i64* %RAX.i1319, align 8
  %329 = add i64 %323, -12
  %330 = add i64 %322, 6
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = sub i32 %327, %332
  %334 = icmp ult i32 %327, %332
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %14, align 1
  %336 = and i32 %333, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  %341 = xor i32 %332, %327
  %342 = xor i32 %341, %333
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %26, align 1
  %346 = icmp eq i32 %333, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %29, align 1
  %348 = lshr i32 %333, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %32, align 1
  %350 = lshr i32 %327, 31
  %351 = lshr i32 %332, 31
  %352 = xor i32 %351, %350
  %353 = xor i32 %348, %350
  %354 = add nuw nsw i32 %353, %352
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %38, align 1
  %357 = icmp ne i8 %349, 0
  %358 = xor i1 %357, %355
  %.demorgan21 = or i1 %346, %358
  %.v26 = select i1 %.demorgan21, i64 12, i64 1562
  %359 = add i64 %322, %.v26
  store i64 %359, i64* %3, align 8
  br i1 %.demorgan21, label %block_40807e, label %block_.L_40868c

block_40807e:                                     ; preds = %block_.L_408072
  %360 = add i64 %323, -72
  %361 = add i64 %359, 4
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i64*
  %363 = load i64, i64* %362, align 8
  store i64 %363, i64* %RAX.i1319, align 8
  %364 = add i64 %359, 8
  store i64 %364, i64* %3, align 8
  %365 = load i32, i32* %326, align 4
  %366 = sext i32 %365 to i64
  store i64 %366, i64* %RCX.i1298, align 8
  %367 = shl nsw i64 %366, 3
  %368 = add i64 %367, %363
  %369 = add i64 %359, 12
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i64*
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* %RAX.i1319, align 8
  %372 = add i64 %359, 18
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  store i32 -987654321, i32* %373, align 4
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -64
  %376 = load i64, i64* %3, align 8
  %377 = add i64 %376, 4
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RAX.i1319, align 8
  %380 = add i64 %374, -76
  %381 = add i64 %376, 8
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  store i64 %384, i64* %RCX.i1298, align 8
  %385 = shl nsw i64 %384, 3
  %386 = add i64 %385, %379
  %387 = add i64 %376, 12
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %386 to i64*
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* %RAX.i1319, align 8
  %390 = add i64 %376, 18
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  store i32 -987654321, i32* %391, align 4
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -56
  %394 = load i64, i64* %3, align 8
  %395 = add i64 %394, 4
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %393 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RAX.i1319, align 8
  %398 = add i64 %392, -76
  %399 = add i64 %394, 8
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  store i64 %402, i64* %RCX.i1298, align 8
  %403 = shl nsw i64 %402, 3
  %404 = add i64 %403, %397
  %405 = add i64 %394, 12
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RAX.i1319, align 8
  %408 = add i64 %394, 18
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  store i32 -987654321, i32* %409, align 4
  %410 = load i64, i64* %RBP.i, align 8
  %411 = add i64 %410, -80
  %412 = load i64, i64* %3, align 8
  %413 = add i64 %412, 7
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %411 to i32*
  store i32 1, i32* %414, align 4
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_4080bb

block_.L_4080bb:                                  ; preds = %block_4080ce, %block_40807e
  %415 = phi i64 [ %1729, %block_4080ce ], [ %.pre18, %block_40807e ]
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -80
  %418 = add i64 %415, 3
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RAX.i1319, align 8
  %422 = add i64 %416, -24
  %423 = add i64 %415, 7
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i64*
  %425 = load i64, i64* %424, align 8
  store i64 %425, i64* %RCX.i1298, align 8
  %426 = add i64 %425, 136
  %427 = add i64 %415, 13
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = sub i32 %420, %429
  %431 = icmp ult i32 %420, %429
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %14, align 1
  %433 = and i32 %430, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433)
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %21, align 1
  %438 = xor i32 %429, %420
  %439 = xor i32 %438, %430
  %440 = lshr i32 %439, 4
  %441 = trunc i32 %440 to i8
  %442 = and i8 %441, 1
  store i8 %442, i8* %26, align 1
  %443 = icmp eq i32 %430, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %29, align 1
  %445 = lshr i32 %430, 31
  %446 = trunc i32 %445 to i8
  store i8 %446, i8* %32, align 1
  %447 = lshr i32 %420, 31
  %448 = lshr i32 %429, 31
  %449 = xor i32 %448, %447
  %450 = xor i32 %445, %447
  %451 = add nuw nsw i32 %450, %449
  %452 = icmp eq i32 %451, 2
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %38, align 1
  %454 = icmp ne i8 %446, 0
  %455 = xor i1 %454, %452
  %.v = select i1 %455, i64 19, i64 673
  %456 = add i64 %415, %.v
  %457 = add i64 %416, -56
  %458 = add i64 %456, 4
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %RAX.i1319, align 8
  %461 = add i64 %416, -76
  %462 = add i64 %456, 7
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = add i32 %464, -1
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RCX.i1298, align 8
  %467 = icmp eq i32 %464, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %14, align 1
  %469 = and i32 %465, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %21, align 1
  %474 = xor i32 %465, %464
  %475 = lshr i32 %474, 4
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  store i8 %477, i8* %26, align 1
  %478 = icmp eq i32 %465, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %29, align 1
  %480 = lshr i32 %465, 31
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %32, align 1
  %482 = lshr i32 %464, 31
  %483 = xor i32 %480, %482
  %484 = add nuw nsw i32 %483, %482
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %38, align 1
  %487 = sext i32 %465 to i64
  store i64 %487, i64* %RDX.i1301, align 8
  %488 = shl nsw i64 %487, 3
  %489 = add i64 %460, %488
  %490 = add i64 %456, 17
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %RAX.i1319, align 8
  %493 = load i64, i64* %RBP.i, align 8
  br i1 %455, label %block_4080ce, label %block_.L_40835c

block_4080ce:                                     ; preds = %block_.L_4080bb
  %494 = add i64 %493, -80
  %495 = add i64 %456, 20
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = add i32 %497, -1
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RCX.i1298, align 8
  %500 = icmp eq i32 %497, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %14, align 1
  %502 = and i32 %498, 255
  %503 = tail call i32 @llvm.ctpop.i32(i32 %502)
  %504 = trunc i32 %503 to i8
  %505 = and i8 %504, 1
  %506 = xor i8 %505, 1
  store i8 %506, i8* %21, align 1
  %507 = xor i32 %498, %497
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %26, align 1
  %511 = icmp eq i32 %498, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %29, align 1
  %513 = lshr i32 %498, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %32, align 1
  %515 = lshr i32 %497, 31
  %516 = xor i32 %513, %515
  %517 = add nuw nsw i32 %516, %515
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %38, align 1
  %520 = sext i32 %498 to i64
  store i64 %520, i64* %RDX.i1301, align 8
  %521 = shl nsw i64 %520, 2
  %522 = add i64 %492, %521
  %523 = add i64 %456, 29
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i32*
  %525 = load i32, i32* %524, align 4
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RCX.i1298, align 8
  %527 = add i64 %493, -24
  %528 = add i64 %456, 33
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i64*
  %530 = load i64, i64* %529, align 8
  store i64 %530, i64* %RAX.i1319, align 8
  %531 = add i64 %530, 312
  %532 = add i64 %456, 40
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i64*
  %534 = load i64, i64* %533, align 8
  store i64 %534, i64* %RAX.i1319, align 8
  %535 = add i64 %456, 43
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %RAX.i1319, align 8
  %538 = add i64 %456, 46
  store i64 %538, i64* %3, align 8
  %539 = load i32, i32* %496, align 4
  %540 = add i32 %539, -1
  %541 = zext i32 %540 to i64
  store i64 %541, i64* %RSI.i1295, align 8
  %542 = icmp eq i32 %539, 0
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %14, align 1
  %544 = and i32 %540, 255
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544)
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = xor i8 %547, 1
  store i8 %548, i8* %21, align 1
  %549 = xor i32 %540, %539
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %26, align 1
  %553 = icmp eq i32 %540, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %29, align 1
  %555 = lshr i32 %540, 31
  %556 = trunc i32 %555 to i8
  store i8 %556, i8* %32, align 1
  %557 = lshr i32 %539, 31
  %558 = xor i32 %555, %557
  %559 = add nuw nsw i32 %558, %557
  %560 = icmp eq i32 %559, 2
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %38, align 1
  %562 = sext i32 %540 to i64
  store i64 %562, i64* %RDX.i1301, align 8
  %563 = shl nsw i64 %562, 2
  %564 = add i64 %537, %563
  %565 = add i64 %456, 55
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = add i32 %567, %525
  %569 = zext i32 %568 to i64
  store i64 %569, i64* %RCX.i1298, align 8
  %570 = icmp ult i32 %568, %525
  %571 = icmp ult i32 %568, %567
  %572 = or i1 %570, %571
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %14, align 1
  %574 = and i32 %568, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %21, align 1
  %579 = xor i32 %567, %525
  %580 = xor i32 %579, %568
  %581 = lshr i32 %580, 4
  %582 = trunc i32 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %26, align 1
  %584 = icmp eq i32 %568, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %29, align 1
  %586 = lshr i32 %568, 31
  %587 = trunc i32 %586 to i8
  store i8 %587, i8* %32, align 1
  %588 = lshr i32 %525, 31
  %589 = lshr i32 %567, 31
  %590 = xor i32 %586, %588
  %591 = xor i32 %586, %589
  %592 = add nuw nsw i32 %590, %591
  %593 = icmp eq i32 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %38, align 1
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -64
  %597 = add i64 %456, 59
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i64*
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %RAX.i1319, align 8
  %600 = add i64 %595, -76
  %601 = add i64 %456, 62
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  %603 = load i32, i32* %602, align 4
  %604 = add i32 %603, -1
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RSI.i1295, align 8
  %606 = icmp eq i32 %603, 0
  %607 = zext i1 %606 to i8
  store i8 %607, i8* %14, align 1
  %608 = and i32 %604, 255
  %609 = tail call i32 @llvm.ctpop.i32(i32 %608)
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  %612 = xor i8 %611, 1
  store i8 %612, i8* %21, align 1
  %613 = xor i32 %604, %603
  %614 = lshr i32 %613, 4
  %615 = trunc i32 %614 to i8
  %616 = and i8 %615, 1
  store i8 %616, i8* %26, align 1
  %617 = icmp eq i32 %604, 0
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %29, align 1
  %619 = lshr i32 %604, 31
  %620 = trunc i32 %619 to i8
  store i8 %620, i8* %32, align 1
  %621 = lshr i32 %603, 31
  %622 = xor i32 %619, %621
  %623 = add nuw nsw i32 %622, %621
  %624 = icmp eq i32 %623, 2
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %38, align 1
  %626 = sext i32 %604 to i64
  store i64 %626, i64* %RDX.i1301, align 8
  %627 = shl nsw i64 %626, 3
  %628 = add i64 %599, %627
  %629 = add i64 %456, 72
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i64*
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %RAX.i1319, align 8
  %632 = add i64 %595, -80
  %633 = add i64 %456, 75
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = add i32 %635, -1
  %637 = zext i32 %636 to i64
  store i64 %637, i64* %RSI.i1295, align 8
  %638 = icmp eq i32 %635, 0
  %639 = zext i1 %638 to i8
  store i8 %639, i8* %14, align 1
  %640 = and i32 %636, 255
  %641 = tail call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  store i8 %644, i8* %21, align 1
  %645 = xor i32 %636, %635
  %646 = lshr i32 %645, 4
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  store i8 %648, i8* %26, align 1
  %649 = icmp eq i32 %636, 0
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %29, align 1
  %651 = lshr i32 %636, 31
  %652 = trunc i32 %651 to i8
  store i8 %652, i8* %32, align 1
  %653 = lshr i32 %635, 31
  %654 = xor i32 %651, %653
  %655 = add nuw nsw i32 %654, %653
  %656 = icmp eq i32 %655, 2
  %657 = zext i1 %656 to i8
  store i8 %657, i8* %38, align 1
  %658 = sext i32 %636 to i64
  store i64 %658, i64* %RDX.i1301, align 8
  %659 = shl nsw i64 %658, 2
  %660 = add i64 %631, %659
  %661 = add i64 %456, 84
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %RSI.i1295, align 8
  %665 = load i64, i64* %RBP.i, align 8
  %666 = add i64 %665, -24
  %667 = add i64 %456, 88
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i64*
  %669 = load i64, i64* %668, align 8
  store i64 %669, i64* %RAX.i1319, align 8
  %670 = add i64 %669, 312
  %671 = add i64 %456, 95
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i64*
  %673 = load i64, i64* %672, align 8
  store i64 %673, i64* %RAX.i1319, align 8
  %674 = add i64 %673, 24
  %675 = add i64 %456, 99
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %RAX.i1319, align 8
  %678 = add i64 %665, -80
  %679 = add i64 %456, 102
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  %681 = load i32, i32* %680, align 4
  %682 = add i32 %681, -1
  %683 = zext i32 %682 to i64
  store i64 %683, i64* %RDI.i1307, align 8
  %684 = icmp eq i32 %681, 0
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %14, align 1
  %686 = and i32 %682, 255
  %687 = tail call i32 @llvm.ctpop.i32(i32 %686)
  %688 = trunc i32 %687 to i8
  %689 = and i8 %688, 1
  %690 = xor i8 %689, 1
  store i8 %690, i8* %21, align 1
  %691 = xor i32 %682, %681
  %692 = lshr i32 %691, 4
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  store i8 %694, i8* %26, align 1
  %695 = icmp eq i32 %682, 0
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %29, align 1
  %697 = lshr i32 %682, 31
  %698 = trunc i32 %697 to i8
  store i8 %698, i8* %32, align 1
  %699 = lshr i32 %681, 31
  %700 = xor i32 %697, %699
  %701 = add nuw nsw i32 %700, %699
  %702 = icmp eq i32 %701, 2
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %38, align 1
  %704 = sext i32 %682 to i64
  store i64 %704, i64* %RDX.i1301, align 8
  %705 = shl nsw i64 %704, 2
  %706 = add i64 %677, %705
  %707 = add i64 %456, 111
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = add i32 %709, %663
  %711 = zext i32 %710 to i64
  store i64 %711, i64* %RSI.i1295, align 8
  %712 = icmp ult i32 %710, %663
  %713 = icmp ult i32 %710, %709
  %714 = or i1 %712, %713
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %14, align 1
  %716 = and i32 %710, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716)
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %21, align 1
  %721 = xor i32 %709, %663
  %722 = xor i32 %721, %710
  %723 = lshr i32 %722, 4
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  store i8 %725, i8* %26, align 1
  %726 = icmp eq i32 %710, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %29, align 1
  %728 = lshr i32 %710, 31
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* %32, align 1
  %730 = lshr i32 %663, 31
  %731 = lshr i32 %709, 31
  %732 = xor i32 %728, %730
  %733 = xor i32 %728, %731
  %734 = add nuw nsw i32 %732, %733
  %735 = icmp eq i32 %734, 2
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %38, align 1
  %737 = load i32, i32* %ECX.i607, align 4
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RDI.i1307, align 8
  %739 = add i64 %456, 131298
  %740 = add i64 %456, 118
  %741 = load i64, i64* %6, align 8
  %742 = add i64 %741, -8
  %743 = inttoptr i64 %742 to i64*
  store i64 %740, i64* %743, align 8
  store i64 %742, i64* %6, align 8
  store i64 %739, i64* %3, align 8
  %call2_40813f = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %739, %struct.Memory* %call2_407fb9)
  %744 = load i64, i64* %RBP.i, align 8
  %745 = add i64 %744, -48
  %746 = load i64, i64* %3, align 8
  %747 = add i64 %746, 4
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %745 to i64*
  %749 = load i64, i64* %748, align 8
  store i64 %749, i64* %RDX.i1301, align 8
  %750 = add i64 %744, -76
  %751 = add i64 %746, 7
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = add i32 %753, -1
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %RCX.i1298, align 8
  %756 = icmp eq i32 %753, 0
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %14, align 1
  %758 = and i32 %754, 255
  %759 = tail call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  store i8 %762, i8* %21, align 1
  %763 = xor i32 %754, %753
  %764 = lshr i32 %763, 4
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  store i8 %766, i8* %26, align 1
  %767 = icmp eq i32 %754, 0
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %29, align 1
  %769 = lshr i32 %754, 31
  %770 = trunc i32 %769 to i8
  store i8 %770, i8* %32, align 1
  %771 = lshr i32 %753, 31
  %772 = xor i32 %769, %771
  %773 = add nuw nsw i32 %772, %771
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %38, align 1
  %776 = sext i32 %754 to i64
  store i64 %776, i64* %R8.i1317, align 8
  %777 = shl nsw i64 %776, 3
  %778 = add i64 %749, %777
  %779 = add i64 %746, 17
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i64*
  %781 = load i64, i64* %780, align 8
  store i64 %781, i64* %RDX.i1301, align 8
  %782 = add i64 %746, 19
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RCX.i1298, align 8
  %786 = add i64 %744, -24
  %787 = add i64 %746, 23
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i64*
  %789 = load i64, i64* %788, align 8
  store i64 %789, i64* %RDX.i1301, align 8
  %790 = add i64 %789, 368
  %791 = add i64 %746, 30
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %790 to i64*
  %793 = load i64, i64* %792, align 8
  store i64 %793, i64* %RDX.i1301, align 8
  %794 = add i64 %744, -80
  %795 = add i64 %746, 34
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = sext i32 %797 to i64
  store i64 %798, i64* %R8.i1317, align 8
  %799 = shl nsw i64 %798, 2
  %800 = add i64 %793, %799
  %801 = add i64 %746, 38
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i32*
  %803 = load i32, i32* %802, align 4
  %804 = add i32 %803, %784
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %RCX.i1298, align 8
  %806 = icmp ult i32 %804, %784
  %807 = icmp ult i32 %804, %803
  %808 = or i1 %806, %807
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %14, align 1
  %810 = and i32 %804, 255
  %811 = tail call i32 @llvm.ctpop.i32(i32 %810)
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  %814 = xor i8 %813, 1
  store i8 %814, i8* %21, align 1
  %815 = xor i32 %803, %784
  %816 = xor i32 %815, %804
  %817 = lshr i32 %816, 4
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  store i8 %819, i8* %26, align 1
  %820 = icmp eq i32 %804, 0
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %29, align 1
  %822 = lshr i32 %804, 31
  %823 = trunc i32 %822 to i8
  store i8 %823, i8* %32, align 1
  %824 = lshr i32 %784, 31
  %825 = lshr i32 %803, 31
  %826 = xor i32 %822, %824
  %827 = xor i32 %822, %825
  %828 = add nuw nsw i32 %826, %827
  %829 = icmp eq i32 %828, 2
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %38, align 1
  %831 = load i64, i64* %RBP.i, align 8
  %832 = add i64 %831, -72
  %833 = add i64 %746, 42
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i64*
  %835 = load i64, i64* %834, align 8
  store i64 %835, i64* %RDX.i1301, align 8
  %836 = add i64 %831, -76
  %837 = add i64 %746, 45
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = add i32 %839, -1
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RSI.i1295, align 8
  %842 = icmp eq i32 %839, 0
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %14, align 1
  %844 = and i32 %840, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %21, align 1
  %849 = xor i32 %840, %839
  %850 = lshr i32 %849, 4
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  store i8 %852, i8* %26, align 1
  %853 = icmp eq i32 %840, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %29, align 1
  %855 = lshr i32 %840, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %32, align 1
  %857 = lshr i32 %839, 31
  %858 = xor i32 %855, %857
  %859 = add nuw nsw i32 %858, %857
  %860 = icmp eq i32 %859, 2
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %38, align 1
  %862 = sext i32 %840 to i64
  store i64 %862, i64* %R8.i1317, align 8
  %863 = shl nsw i64 %862, 3
  %864 = add i64 %835, %863
  %865 = add i64 %746, 55
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i64*
  %867 = load i64, i64* %866, align 8
  store i64 %867, i64* %RDX.i1301, align 8
  %868 = add i64 %831, -80
  %869 = add i64 %746, 58
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to i32*
  %871 = load i32, i32* %870, align 4
  %872 = add i32 %871, -1
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RSI.i1295, align 8
  %874 = icmp eq i32 %871, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %14, align 1
  %876 = and i32 %872, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %21, align 1
  %881 = xor i32 %872, %871
  %882 = lshr i32 %881, 4
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  store i8 %884, i8* %26, align 1
  %885 = icmp eq i32 %872, 0
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %29, align 1
  %887 = lshr i32 %872, 31
  %888 = trunc i32 %887 to i8
  store i8 %888, i8* %32, align 1
  %889 = lshr i32 %871, 31
  %890 = xor i32 %887, %889
  %891 = add nuw nsw i32 %890, %889
  %892 = icmp eq i32 %891, 2
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %38, align 1
  %894 = sext i32 %872 to i64
  store i64 %894, i64* %R8.i1317, align 8
  %895 = shl nsw i64 %894, 2
  %896 = add i64 %867, %895
  %897 = add i64 %746, 68
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i32*
  %899 = load i32, i32* %898, align 4
  %900 = zext i32 %899 to i64
  store i64 %900, i64* %RSI.i1295, align 8
  %901 = load i64, i64* %RBP.i, align 8
  %902 = add i64 %901, -24
  %903 = add i64 %746, 72
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i64*
  %905 = load i64, i64* %904, align 8
  store i64 %905, i64* %RDX.i1301, align 8
  %906 = add i64 %905, 312
  %907 = add i64 %746, 79
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i64*
  %909 = load i64, i64* %908, align 8
  store i64 %909, i64* %RDX.i1301, align 8
  %910 = add i64 %909, 40
  %911 = add i64 %746, 83
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i64*
  %913 = load i64, i64* %912, align 8
  store i64 %913, i64* %RDX.i1301, align 8
  %914 = add i64 %901, -80
  %915 = add i64 %746, 86
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = add i32 %917, -1
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RDI.i1307, align 8
  %920 = icmp eq i32 %917, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %14, align 1
  %922 = and i32 %918, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %21, align 1
  %927 = xor i32 %918, %917
  %928 = lshr i32 %927, 4
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  store i8 %930, i8* %26, align 1
  %931 = icmp eq i32 %918, 0
  %932 = zext i1 %931 to i8
  store i8 %932, i8* %29, align 1
  %933 = lshr i32 %918, 31
  %934 = trunc i32 %933 to i8
  store i8 %934, i8* %32, align 1
  %935 = lshr i32 %917, 31
  %936 = xor i32 %933, %935
  %937 = add nuw nsw i32 %936, %935
  %938 = icmp eq i32 %937, 2
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %38, align 1
  %940 = sext i32 %918 to i64
  store i64 %940, i64* %R8.i1317, align 8
  %941 = shl nsw i64 %940, 2
  %942 = add i64 %913, %941
  %943 = add i64 %746, 96
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = add i32 %945, %899
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RSI.i1295, align 8
  %948 = icmp ult i32 %946, %899
  %949 = icmp ult i32 %946, %945
  %950 = or i1 %948, %949
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %14, align 1
  %952 = and i32 %946, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %21, align 1
  %957 = xor i32 %945, %899
  %958 = xor i32 %957, %946
  %959 = lshr i32 %958, 4
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  store i8 %961, i8* %26, align 1
  %962 = icmp eq i32 %946, 0
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %29, align 1
  %964 = lshr i32 %946, 31
  %965 = trunc i32 %964 to i8
  store i8 %965, i8* %32, align 1
  %966 = lshr i32 %899, 31
  %967 = lshr i32 %945, 31
  %968 = xor i32 %964, %966
  %969 = xor i32 %964, %967
  %970 = add nuw nsw i32 %968, %969
  %971 = icmp eq i32 %970, 2
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %38, align 1
  %973 = load i32, i32* %ECX.i607, align 4
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RDI.i1307, align 8
  %975 = load i64, i64* %RBP.i, align 8
  %976 = add i64 %975, -88
  %977 = load i32, i32* %EAX.i1214, align 4
  %978 = add i64 %746, 101
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %976 to i32*
  store i32 %977, i32* %979, align 4
  %980 = load i64, i64* %3, align 8
  %981 = add i64 %980, 131079
  %982 = add i64 %980, 5
  %983 = load i64, i64* %6, align 8
  %984 = add i64 %983, -8
  %985 = inttoptr i64 %984 to i64*
  store i64 %982, i64* %985, align 8
  store i64 %984, i64* %6, align 8
  store i64 %981, i64* %3, align 8
  %call2_4081a9 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %981, %struct.Memory* %call2_407fb9)
  %986 = load i64, i64* %RBP.i, align 8
  %987 = add i64 %986, -88
  %988 = load i64, i64* %3, align 8
  %989 = add i64 %988, 3
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %987 to i32*
  %991 = load i32, i32* %990, align 4
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RDI.i1307, align 8
  %993 = load i32, i32* %EAX.i1214, align 4
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RSI.i1295, align 8
  %995 = add i64 %988, 131074
  %996 = add i64 %988, 10
  %997 = load i64, i64* %6, align 8
  %998 = add i64 %997, -8
  %999 = inttoptr i64 %998 to i64*
  store i64 %996, i64* %999, align 8
  store i64 %998, i64* %6, align 8
  store i64 %995, i64* %3, align 8
  %call2_4081b3 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %995, %struct.Memory* %call2_407fb9)
  %1000 = load i64, i64* %RBP.i, align 8
  %1001 = add i64 %1000, -56
  %1002 = load i64, i64* %3, align 8
  %1003 = add i64 %1002, 4
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1001 to i64*
  %1005 = load i64, i64* %1004, align 8
  store i64 %1005, i64* %RDX.i1301, align 8
  %1006 = add i64 %1000, -76
  %1007 = add i64 %1002, 8
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = sext i32 %1009 to i64
  store i64 %1010, i64* %R8.i1317, align 8
  %1011 = shl nsw i64 %1010, 3
  %1012 = add i64 %1011, %1005
  %1013 = add i64 %1002, 12
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i64*
  %1015 = load i64, i64* %1014, align 8
  store i64 %1015, i64* %RDX.i1301, align 8
  %1016 = add i64 %1000, -80
  %1017 = add i64 %1002, 16
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i32*
  %1019 = load i32, i32* %1018, align 4
  %1020 = sext i32 %1019 to i64
  store i64 %1020, i64* %R8.i1317, align 8
  %1021 = shl nsw i64 %1020, 2
  %1022 = add i64 %1021, %1015
  %1023 = load i32, i32* %EAX.i1214, align 4
  %1024 = add i64 %1002, 20
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1022 to i32*
  store i32 %1023, i32* %1025, align 4
  %1026 = load i64, i64* %RBP.i, align 8
  %1027 = add i64 %1026, -24
  %1028 = load i64, i64* %3, align 8
  %1029 = add i64 %1028, 4
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1027 to i64*
  %1031 = load i64, i64* %1030, align 8
  store i64 %1031, i64* %RDX.i1301, align 8
  %1032 = add i64 %1031, 320
  %1033 = add i64 %1028, 11
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i64*
  %1035 = load i64, i64* %1034, align 8
  store i64 %1035, i64* %RDX.i1301, align 8
  %1036 = add i64 %1026, -8
  %1037 = add i64 %1028, 15
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i64*
  %1039 = load i64, i64* %1038, align 8
  store i64 %1039, i64* %R8.i1317, align 8
  %1040 = add i64 %1026, -76
  %1041 = add i64 %1028, 19
  store i64 %1041, i64* %3, align 8
  %1042 = inttoptr i64 %1040 to i32*
  %1043 = load i32, i32* %1042, align 4
  %1044 = sext i32 %1043 to i64
  store i64 %1044, i64* %R9.i1314, align 8
  %1045 = add i64 %1039, %1044
  %1046 = add i64 %1028, 24
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i8*
  %1048 = load i8, i8* %1047, align 1
  %1049 = sext i8 %1048 to i64
  %1050 = and i64 %1049, 4294967295
  store i64 %1050, i64* %RAX.i1319, align 8
  %1051 = sext i8 %1048 to i64
  store i64 %1051, i64* %R8.i1317, align 8
  %1052 = shl nsw i64 %1051, 3
  %1053 = add i64 %1035, %1052
  %1054 = add i64 %1028, 31
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i64*
  %1056 = load i64, i64* %1055, align 8
  store i64 %1056, i64* %RDX.i1301, align 8
  %1057 = add i64 %1026, -80
  %1058 = add i64 %1028, 35
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i32*
  %1060 = load i32, i32* %1059, align 4
  %1061 = sext i32 %1060 to i64
  store i64 %1061, i64* %R8.i1317, align 8
  %1062 = shl nsw i64 %1061, 2
  %1063 = add i64 %1062, %1056
  %1064 = add i64 %1028, 39
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = zext i32 %1066 to i64
  store i64 %1067, i64* %RAX.i1319, align 8
  %1068 = add i64 %1026, -56
  %1069 = add i64 %1028, 43
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i64*
  %1071 = load i64, i64* %1070, align 8
  store i64 %1071, i64* %RDX.i1301, align 8
  %1072 = add i64 %1028, 47
  store i64 %1072, i64* %3, align 8
  %1073 = load i32, i32* %1042, align 4
  %1074 = sext i32 %1073 to i64
  store i64 %1074, i64* %R8.i1317, align 8
  %1075 = shl nsw i64 %1074, 3
  %1076 = add i64 %1075, %1071
  %1077 = add i64 %1028, 51
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i64*
  %1079 = load i64, i64* %1078, align 8
  store i64 %1079, i64* %RDX.i1301, align 8
  %1080 = add i64 %1028, 55
  store i64 %1080, i64* %3, align 8
  %1081 = load i32, i32* %1059, align 4
  %1082 = sext i32 %1081 to i64
  store i64 %1082, i64* %R8.i1317, align 8
  %1083 = shl nsw i64 %1082, 2
  %1084 = add i64 %1079, %1083
  %1085 = add i64 %1028, 59
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = add i32 %1087, %1066
  %1089 = zext i32 %1088 to i64
  store i64 %1089, i64* %RAX.i1319, align 8
  %1090 = icmp ult i32 %1088, %1066
  %1091 = icmp ult i32 %1088, %1087
  %1092 = or i1 %1090, %1091
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %14, align 1
  %1094 = and i32 %1088, 255
  %1095 = tail call i32 @llvm.ctpop.i32(i32 %1094)
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  store i8 %1098, i8* %21, align 1
  %1099 = xor i32 %1087, %1066
  %1100 = xor i32 %1099, %1088
  %1101 = lshr i32 %1100, 4
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  store i8 %1103, i8* %26, align 1
  %1104 = icmp eq i32 %1088, 0
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %29, align 1
  %1106 = lshr i32 %1088, 31
  %1107 = trunc i32 %1106 to i8
  store i8 %1107, i8* %32, align 1
  %1108 = lshr i32 %1066, 31
  %1109 = lshr i32 %1087, 31
  %1110 = xor i32 %1106, %1108
  %1111 = xor i32 %1106, %1109
  %1112 = add nuw nsw i32 %1110, %1111
  %1113 = icmp eq i32 %1112, 2
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %38, align 1
  %1115 = add i64 %1028, 63
  store i64 %1115, i64* %3, align 8
  store i32 %1088, i32* %1086, align 4
  %1116 = load i64, i64* %RBP.i, align 8
  %1117 = add i64 %1116, -56
  %1118 = load i64, i64* %3, align 8
  %1119 = add i64 %1118, 4
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1117 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RDX.i1301, align 8
  %1122 = add i64 %1116, -76
  %1123 = add i64 %1118, 8
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i32*
  %1125 = load i32, i32* %1124, align 4
  %1126 = sext i32 %1125 to i64
  store i64 %1126, i64* %R8.i1317, align 8
  %1127 = shl nsw i64 %1126, 3
  %1128 = add i64 %1127, %1121
  %1129 = add i64 %1118, 12
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to i64*
  %1131 = load i64, i64* %1130, align 8
  store i64 %1131, i64* %RDX.i1301, align 8
  %1132 = add i64 %1116, -80
  %1133 = add i64 %1118, 15
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i32*
  %1135 = load i32, i32* %1134, align 4
  %1136 = add i32 %1135, -1
  %1137 = zext i32 %1136 to i64
  store i64 %1137, i64* %RAX.i1319, align 8
  %1138 = icmp eq i32 %1135, 0
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %14, align 1
  %1140 = and i32 %1136, 255
  %1141 = tail call i32 @llvm.ctpop.i32(i32 %1140)
  %1142 = trunc i32 %1141 to i8
  %1143 = and i8 %1142, 1
  %1144 = xor i8 %1143, 1
  store i8 %1144, i8* %21, align 1
  %1145 = xor i32 %1136, %1135
  %1146 = lshr i32 %1145, 4
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  store i8 %1148, i8* %26, align 1
  %1149 = icmp eq i32 %1136, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %29, align 1
  %1151 = lshr i32 %1136, 31
  %1152 = trunc i32 %1151 to i8
  store i8 %1152, i8* %32, align 1
  %1153 = lshr i32 %1135, 31
  %1154 = xor i32 %1151, %1153
  %1155 = add nuw nsw i32 %1154, %1153
  %1156 = icmp eq i32 %1155, 2
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %38, align 1
  %1158 = sext i32 %1136 to i64
  store i64 %1158, i64* %R8.i1317, align 8
  %1159 = shl nsw i64 %1158, 2
  %1160 = add i64 %1131, %1159
  %1161 = add i64 %1118, 25
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1160 to i32*
  %1163 = load i32, i32* %1162, align 4
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %RAX.i1319, align 8
  %1165 = add i64 %1116, -24
  %1166 = add i64 %1118, 29
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i64*
  %1168 = load i64, i64* %1167, align 8
  store i64 %1168, i64* %RDX.i1301, align 8
  %1169 = add i64 %1168, 312
  %1170 = add i64 %1118, 36
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i64*
  %1172 = load i64, i64* %1171, align 8
  store i64 %1172, i64* %RDX.i1301, align 8
  %1173 = add i64 %1172, 16
  %1174 = add i64 %1118, 40
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i64*
  %1176 = load i64, i64* %1175, align 8
  store i64 %1176, i64* %RDX.i1301, align 8
  %1177 = add i64 %1118, 43
  store i64 %1177, i64* %3, align 8
  %1178 = load i32, i32* %1134, align 4
  %1179 = add i32 %1178, -1
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RCX.i1298, align 8
  %1181 = icmp eq i32 %1178, 0
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %14, align 1
  %1183 = and i32 %1179, 255
  %1184 = tail call i32 @llvm.ctpop.i32(i32 %1183)
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = xor i8 %1186, 1
  store i8 %1187, i8* %21, align 1
  %1188 = xor i32 %1179, %1178
  %1189 = lshr i32 %1188, 4
  %1190 = trunc i32 %1189 to i8
  %1191 = and i8 %1190, 1
  store i8 %1191, i8* %26, align 1
  %1192 = icmp eq i32 %1179, 0
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %29, align 1
  %1194 = lshr i32 %1179, 31
  %1195 = trunc i32 %1194 to i8
  store i8 %1195, i8* %32, align 1
  %1196 = lshr i32 %1178, 31
  %1197 = xor i32 %1194, %1196
  %1198 = add nuw nsw i32 %1197, %1196
  %1199 = icmp eq i32 %1198, 2
  %1200 = zext i1 %1199 to i8
  store i8 %1200, i8* %38, align 1
  %1201 = sext i32 %1179 to i64
  store i64 %1201, i64* %R8.i1317, align 8
  %1202 = shl nsw i64 %1201, 2
  %1203 = add i64 %1176, %1202
  %1204 = add i64 %1118, 53
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = add i32 %1206, %1163
  %1208 = zext i32 %1207 to i64
  store i64 %1208, i64* %RAX.i1319, align 8
  %1209 = icmp ult i32 %1207, %1163
  %1210 = icmp ult i32 %1207, %1206
  %1211 = or i1 %1209, %1210
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %14, align 1
  %1213 = and i32 %1207, 255
  %1214 = tail call i32 @llvm.ctpop.i32(i32 %1213)
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  %1217 = xor i8 %1216, 1
  store i8 %1217, i8* %21, align 1
  %1218 = xor i32 %1206, %1163
  %1219 = xor i32 %1218, %1207
  %1220 = lshr i32 %1219, 4
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  store i8 %1222, i8* %26, align 1
  %1223 = icmp eq i32 %1207, 0
  %1224 = zext i1 %1223 to i8
  store i8 %1224, i8* %29, align 1
  %1225 = lshr i32 %1207, 31
  %1226 = trunc i32 %1225 to i8
  store i8 %1226, i8* %32, align 1
  %1227 = lshr i32 %1163, 31
  %1228 = lshr i32 %1206, 31
  %1229 = xor i32 %1225, %1227
  %1230 = xor i32 %1225, %1228
  %1231 = add nuw nsw i32 %1229, %1230
  %1232 = icmp eq i32 %1231, 2
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %38, align 1
  %1234 = load i64, i64* %RBP.i, align 8
  %1235 = add i64 %1234, -72
  %1236 = add i64 %1118, 57
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RDX.i1301, align 8
  %1239 = add i64 %1234, -76
  %1240 = add i64 %1118, 61
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = sext i32 %1242 to i64
  store i64 %1243, i64* %R8.i1317, align 8
  %1244 = shl nsw i64 %1243, 3
  %1245 = add i64 %1244, %1238
  %1246 = add i64 %1118, 65
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i64*
  %1248 = load i64, i64* %1247, align 8
  store i64 %1248, i64* %RDX.i1301, align 8
  %1249 = add i64 %1234, -80
  %1250 = add i64 %1118, 68
  store i64 %1250, i64* %3, align 8
  %1251 = inttoptr i64 %1249 to i32*
  %1252 = load i32, i32* %1251, align 4
  %1253 = add i32 %1252, -1
  %1254 = zext i32 %1253 to i64
  store i64 %1254, i64* %RCX.i1298, align 8
  %1255 = icmp eq i32 %1252, 0
  %1256 = zext i1 %1255 to i8
  store i8 %1256, i8* %14, align 1
  %1257 = and i32 %1253, 255
  %1258 = tail call i32 @llvm.ctpop.i32(i32 %1257)
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %21, align 1
  %1262 = xor i32 %1253, %1252
  %1263 = lshr i32 %1262, 4
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  store i8 %1265, i8* %26, align 1
  %1266 = icmp eq i32 %1253, 0
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %29, align 1
  %1268 = lshr i32 %1253, 31
  %1269 = trunc i32 %1268 to i8
  store i8 %1269, i8* %32, align 1
  %1270 = lshr i32 %1252, 31
  %1271 = xor i32 %1268, %1270
  %1272 = add nuw nsw i32 %1271, %1270
  %1273 = icmp eq i32 %1272, 2
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %38, align 1
  %1275 = sext i32 %1253 to i64
  store i64 %1275, i64* %R8.i1317, align 8
  %1276 = shl nsw i64 %1275, 2
  %1277 = add i64 %1248, %1276
  %1278 = add i64 %1118, 78
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i32*
  %1280 = load i32, i32* %1279, align 4
  %1281 = zext i32 %1280 to i64
  store i64 %1281, i64* %RCX.i1298, align 8
  %1282 = add i64 %1234, -24
  %1283 = add i64 %1118, 82
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i64*
  %1285 = load i64, i64* %1284, align 8
  store i64 %1285, i64* %RDX.i1301, align 8
  %1286 = add i64 %1285, 312
  %1287 = add i64 %1118, 89
  store i64 %1287, i64* %3, align 8
  %1288 = inttoptr i64 %1286 to i64*
  %1289 = load i64, i64* %1288, align 8
  store i64 %1289, i64* %RDX.i1301, align 8
  %1290 = add i64 %1289, 48
  %1291 = add i64 %1118, 93
  store i64 %1291, i64* %3, align 8
  %1292 = inttoptr i64 %1290 to i64*
  %1293 = load i64, i64* %1292, align 8
  store i64 %1293, i64* %RDX.i1301, align 8
  %1294 = add i64 %1118, 96
  store i64 %1294, i64* %3, align 8
  %1295 = load i32, i32* %1251, align 4
  %1296 = add i32 %1295, -1
  %1297 = zext i32 %1296 to i64
  store i64 %1297, i64* %RSI.i1295, align 8
  %1298 = icmp eq i32 %1295, 0
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %14, align 1
  %1300 = and i32 %1296, 255
  %1301 = tail call i32 @llvm.ctpop.i32(i32 %1300)
  %1302 = trunc i32 %1301 to i8
  %1303 = and i8 %1302, 1
  %1304 = xor i8 %1303, 1
  store i8 %1304, i8* %21, align 1
  %1305 = xor i32 %1296, %1295
  %1306 = lshr i32 %1305, 4
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  store i8 %1308, i8* %26, align 1
  %1309 = icmp eq i32 %1296, 0
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %29, align 1
  %1311 = lshr i32 %1296, 31
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %32, align 1
  %1313 = lshr i32 %1295, 31
  %1314 = xor i32 %1311, %1313
  %1315 = add nuw nsw i32 %1314, %1313
  %1316 = icmp eq i32 %1315, 2
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %38, align 1
  %1318 = sext i32 %1296 to i64
  store i64 %1318, i64* %R8.i1317, align 8
  %1319 = shl nsw i64 %1318, 2
  %1320 = add i64 %1293, %1319
  %1321 = add i64 %1118, 106
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i32*
  %1323 = load i32, i32* %1322, align 4
  %1324 = add i32 %1323, %1280
  %1325 = zext i32 %1324 to i64
  store i64 %1325, i64* %RCX.i1298, align 8
  %1326 = icmp ult i32 %1324, %1280
  %1327 = icmp ult i32 %1324, %1323
  %1328 = or i1 %1326, %1327
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %14, align 1
  %1330 = and i32 %1324, 255
  %1331 = tail call i32 @llvm.ctpop.i32(i32 %1330)
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  %1334 = xor i8 %1333, 1
  store i8 %1334, i8* %21, align 1
  %1335 = xor i32 %1323, %1280
  %1336 = xor i32 %1335, %1324
  %1337 = lshr i32 %1336, 4
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  store i8 %1339, i8* %26, align 1
  %1340 = icmp eq i32 %1324, 0
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %29, align 1
  %1342 = lshr i32 %1324, 31
  %1343 = trunc i32 %1342 to i8
  store i8 %1343, i8* %32, align 1
  %1344 = lshr i32 %1280, 31
  %1345 = lshr i32 %1323, 31
  %1346 = xor i32 %1342, %1344
  %1347 = xor i32 %1342, %1345
  %1348 = add nuw nsw i32 %1346, %1347
  %1349 = icmp eq i32 %1348, 2
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %38, align 1
  %1351 = load i32, i32* %EAX.i1214, align 4
  %1352 = zext i32 %1351 to i64
  store i64 %1352, i64* %RDI.i1307, align 8
  store i64 %1325, i64* %RSI.i1295, align 8
  %1353 = add i64 %1118, 130981
  %1354 = add i64 %1118, 115
  %1355 = load i64, i64* %6, align 8
  %1356 = add i64 %1355, -8
  %1357 = inttoptr i64 %1356 to i64*
  store i64 %1354, i64* %1357, align 8
  store i64 %1356, i64* %6, align 8
  store i64 %1353, i64* %3, align 8
  %call2_408279 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1353, %struct.Memory* %call2_407fb9)
  %1358 = load i64, i64* %RBP.i, align 8
  %1359 = add i64 %1358, -72
  %1360 = load i64, i64* %3, align 8
  %1361 = add i64 %1360, 4
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1359 to i64*
  %1363 = load i64, i64* %1362, align 8
  store i64 %1363, i64* %RDX.i1301, align 8
  %1364 = add i64 %1358, -76
  %1365 = add i64 %1360, 8
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i32*
  %1367 = load i32, i32* %1366, align 4
  %1368 = sext i32 %1367 to i64
  store i64 %1368, i64* %R8.i1317, align 8
  %1369 = shl nsw i64 %1368, 3
  %1370 = add i64 %1369, %1363
  %1371 = add i64 %1360, 12
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i64*
  %1373 = load i64, i64* %1372, align 8
  store i64 %1373, i64* %RDX.i1301, align 8
  %1374 = add i64 %1358, -80
  %1375 = add i64 %1360, 16
  store i64 %1375, i64* %3, align 8
  %1376 = inttoptr i64 %1374 to i32*
  %1377 = load i32, i32* %1376, align 4
  %1378 = sext i32 %1377 to i64
  store i64 %1378, i64* %R8.i1317, align 8
  %1379 = shl nsw i64 %1378, 2
  %1380 = add i64 %1379, %1373
  %1381 = load i32, i32* %EAX.i1214, align 4
  %1382 = add i64 %1360, 20
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1380 to i32*
  store i32 %1381, i32* %1383, align 4
  %1384 = load i64, i64* %RBP.i, align 8
  %1385 = add i64 %1384, -56
  %1386 = load i64, i64* %3, align 8
  %1387 = add i64 %1386, 4
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1385 to i64*
  %1389 = load i64, i64* %1388, align 8
  store i64 %1389, i64* %RDX.i1301, align 8
  %1390 = add i64 %1384, -76
  %1391 = add i64 %1386, 7
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = add i32 %1393, -1
  %1395 = zext i32 %1394 to i64
  store i64 %1395, i64* %RAX.i1319, align 8
  %1396 = icmp eq i32 %1393, 0
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %14, align 1
  %1398 = and i32 %1394, 255
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1398)
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  store i8 %1402, i8* %21, align 1
  %1403 = xor i32 %1394, %1393
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %26, align 1
  %1407 = icmp eq i32 %1394, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %29, align 1
  %1409 = lshr i32 %1394, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %32, align 1
  %1411 = lshr i32 %1393, 31
  %1412 = xor i32 %1409, %1411
  %1413 = add nuw nsw i32 %1412, %1411
  %1414 = icmp eq i32 %1413, 2
  %1415 = zext i1 %1414 to i8
  store i8 %1415, i8* %38, align 1
  %1416 = sext i32 %1394 to i64
  store i64 %1416, i64* %R8.i1317, align 8
  %1417 = shl nsw i64 %1416, 3
  %1418 = add i64 %1389, %1417
  %1419 = add i64 %1386, 17
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i64*
  %1421 = load i64, i64* %1420, align 8
  store i64 %1421, i64* %RDX.i1301, align 8
  %1422 = add i64 %1384, -80
  %1423 = add i64 %1386, 21
  store i64 %1423, i64* %3, align 8
  %1424 = inttoptr i64 %1422 to i32*
  %1425 = load i32, i32* %1424, align 4
  %1426 = sext i32 %1425 to i64
  store i64 %1426, i64* %R8.i1317, align 8
  %1427 = shl nsw i64 %1426, 2
  %1428 = add i64 %1427, %1421
  %1429 = add i64 %1386, 25
  store i64 %1429, i64* %3, align 8
  %1430 = inttoptr i64 %1428 to i32*
  %1431 = load i32, i32* %1430, align 4
  %1432 = zext i32 %1431 to i64
  store i64 %1432, i64* %RAX.i1319, align 8
  %1433 = add i64 %1384, -24
  %1434 = add i64 %1386, 29
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i64*
  %1436 = load i64, i64* %1435, align 8
  store i64 %1436, i64* %RDX.i1301, align 8
  %1437 = add i64 %1436, 312
  %1438 = add i64 %1386, 36
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i64*
  %1440 = load i64, i64* %1439, align 8
  store i64 %1440, i64* %RDX.i1301, align 8
  %1441 = add i64 %1440, 8
  %1442 = add i64 %1386, 40
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i64*
  %1444 = load i64, i64* %1443, align 8
  store i64 %1444, i64* %RDX.i1301, align 8
  %1445 = add i64 %1386, 44
  store i64 %1445, i64* %3, align 8
  %1446 = load i32, i32* %1424, align 4
  %1447 = sext i32 %1446 to i64
  store i64 %1447, i64* %R8.i1317, align 8
  %1448 = shl nsw i64 %1447, 2
  %1449 = add i64 %1444, %1448
  %1450 = add i64 %1386, 48
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i32*
  %1452 = load i32, i32* %1451, align 4
  %1453 = add i32 %1452, %1431
  %1454 = zext i32 %1453 to i64
  store i64 %1454, i64* %RAX.i1319, align 8
  %1455 = icmp ult i32 %1453, %1431
  %1456 = icmp ult i32 %1453, %1452
  %1457 = or i1 %1455, %1456
  %1458 = zext i1 %1457 to i8
  store i8 %1458, i8* %14, align 1
  %1459 = and i32 %1453, 255
  %1460 = tail call i32 @llvm.ctpop.i32(i32 %1459)
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  %1463 = xor i8 %1462, 1
  store i8 %1463, i8* %21, align 1
  %1464 = xor i32 %1452, %1431
  %1465 = xor i32 %1464, %1453
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %26, align 1
  %1469 = icmp eq i32 %1453, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %29, align 1
  %1471 = lshr i32 %1453, 31
  %1472 = trunc i32 %1471 to i8
  store i8 %1472, i8* %32, align 1
  %1473 = lshr i32 %1431, 31
  %1474 = lshr i32 %1452, 31
  %1475 = xor i32 %1471, %1473
  %1476 = xor i32 %1471, %1474
  %1477 = add nuw nsw i32 %1475, %1476
  %1478 = icmp eq i32 %1477, 2
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %38, align 1
  %1480 = load i64, i64* %RBP.i, align 8
  %1481 = add i64 %1480, -64
  %1482 = add i64 %1386, 52
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1481 to i64*
  %1484 = load i64, i64* %1483, align 8
  store i64 %1484, i64* %RDX.i1301, align 8
  %1485 = add i64 %1480, -76
  %1486 = add i64 %1386, 55
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i32*
  %1488 = load i32, i32* %1487, align 4
  %1489 = add i32 %1488, -1
  %1490 = zext i32 %1489 to i64
  store i64 %1490, i64* %RCX.i1298, align 8
  %1491 = icmp eq i32 %1488, 0
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %14, align 1
  %1493 = and i32 %1489, 255
  %1494 = tail call i32 @llvm.ctpop.i32(i32 %1493)
  %1495 = trunc i32 %1494 to i8
  %1496 = and i8 %1495, 1
  %1497 = xor i8 %1496, 1
  store i8 %1497, i8* %21, align 1
  %1498 = xor i32 %1489, %1488
  %1499 = lshr i32 %1498, 4
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  store i8 %1501, i8* %26, align 1
  %1502 = icmp eq i32 %1489, 0
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %29, align 1
  %1504 = lshr i32 %1489, 31
  %1505 = trunc i32 %1504 to i8
  store i8 %1505, i8* %32, align 1
  %1506 = lshr i32 %1488, 31
  %1507 = xor i32 %1504, %1506
  %1508 = add nuw nsw i32 %1507, %1506
  %1509 = icmp eq i32 %1508, 2
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %38, align 1
  %1511 = sext i32 %1489 to i64
  store i64 %1511, i64* %R8.i1317, align 8
  %1512 = shl nsw i64 %1511, 3
  %1513 = add i64 %1484, %1512
  %1514 = add i64 %1386, 65
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i64*
  %1516 = load i64, i64* %1515, align 8
  store i64 %1516, i64* %RDX.i1301, align 8
  %1517 = add i64 %1480, -80
  %1518 = add i64 %1386, 69
  store i64 %1518, i64* %3, align 8
  %1519 = inttoptr i64 %1517 to i32*
  %1520 = load i32, i32* %1519, align 4
  %1521 = sext i32 %1520 to i64
  store i64 %1521, i64* %R8.i1317, align 8
  %1522 = shl nsw i64 %1521, 2
  %1523 = add i64 %1522, %1516
  %1524 = add i64 %1386, 73
  store i64 %1524, i64* %3, align 8
  %1525 = inttoptr i64 %1523 to i32*
  %1526 = load i32, i32* %1525, align 4
  %1527 = zext i32 %1526 to i64
  store i64 %1527, i64* %RCX.i1298, align 8
  %1528 = add i64 %1480, -24
  %1529 = add i64 %1386, 77
  store i64 %1529, i64* %3, align 8
  %1530 = inttoptr i64 %1528 to i64*
  %1531 = load i64, i64* %1530, align 8
  store i64 %1531, i64* %RDX.i1301, align 8
  %1532 = add i64 %1531, 312
  %1533 = add i64 %1386, 84
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i64*
  %1535 = load i64, i64* %1534, align 8
  store i64 %1535, i64* %RDX.i1301, align 8
  %1536 = add i64 %1535, 32
  %1537 = add i64 %1386, 88
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1536 to i64*
  %1539 = load i64, i64* %1538, align 8
  store i64 %1539, i64* %RDX.i1301, align 8
  %1540 = add i64 %1386, 92
  store i64 %1540, i64* %3, align 8
  %1541 = load i32, i32* %1519, align 4
  %1542 = sext i32 %1541 to i64
  store i64 %1542, i64* %R8.i1317, align 8
  %1543 = shl nsw i64 %1542, 2
  %1544 = add i64 %1539, %1543
  %1545 = add i64 %1386, 96
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i32*
  %1547 = load i32, i32* %1546, align 4
  %1548 = add i32 %1547, %1526
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RCX.i1298, align 8
  %1550 = icmp ult i32 %1548, %1526
  %1551 = icmp ult i32 %1548, %1547
  %1552 = or i1 %1550, %1551
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %14, align 1
  %1554 = and i32 %1548, 255
  %1555 = tail call i32 @llvm.ctpop.i32(i32 %1554)
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  store i8 %1558, i8* %21, align 1
  %1559 = xor i32 %1547, %1526
  %1560 = xor i32 %1559, %1548
  %1561 = lshr i32 %1560, 4
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  store i8 %1563, i8* %26, align 1
  %1564 = icmp eq i32 %1548, 0
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %29, align 1
  %1566 = lshr i32 %1548, 31
  %1567 = trunc i32 %1566 to i8
  store i8 %1567, i8* %32, align 1
  %1568 = lshr i32 %1526, 31
  %1569 = lshr i32 %1547, 31
  %1570 = xor i32 %1566, %1568
  %1571 = xor i32 %1566, %1569
  %1572 = add nuw nsw i32 %1570, %1571
  %1573 = icmp eq i32 %1572, 2
  %1574 = zext i1 %1573 to i8
  store i8 %1574, i8* %38, align 1
  %1575 = load i32, i32* %EAX.i1214, align 4
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RDI.i1307, align 8
  store i64 %1549, i64* %RSI.i1295, align 8
  %1577 = add i64 %1386, 130846
  %1578 = add i64 %1386, 105
  %1579 = load i64, i64* %6, align 8
  %1580 = add i64 %1579, -8
  %1581 = inttoptr i64 %1580 to i64*
  store i64 %1578, i64* %1581, align 8
  store i64 %1580, i64* %6, align 8
  store i64 %1577, i64* %3, align 8
  %call2_4082f6 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1577, %struct.Memory* %call2_407fb9)
  %1582 = load i64, i64* %RBP.i, align 8
  %1583 = add i64 %1582, -64
  %1584 = load i64, i64* %3, align 8
  %1585 = add i64 %1584, 4
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1583 to i64*
  %1587 = load i64, i64* %1586, align 8
  store i64 %1587, i64* %RDX.i1301, align 8
  %1588 = add i64 %1582, -76
  %1589 = add i64 %1584, 8
  store i64 %1589, i64* %3, align 8
  %1590 = inttoptr i64 %1588 to i32*
  %1591 = load i32, i32* %1590, align 4
  %1592 = sext i32 %1591 to i64
  store i64 %1592, i64* %R8.i1317, align 8
  %1593 = shl nsw i64 %1592, 3
  %1594 = add i64 %1593, %1587
  %1595 = add i64 %1584, 12
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1594 to i64*
  %1597 = load i64, i64* %1596, align 8
  store i64 %1597, i64* %RDX.i1301, align 8
  %1598 = add i64 %1582, -80
  %1599 = add i64 %1584, 16
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i32*
  %1601 = load i32, i32* %1600, align 4
  %1602 = sext i32 %1601 to i64
  store i64 %1602, i64* %R8.i1317, align 8
  %1603 = shl nsw i64 %1602, 2
  %1604 = add i64 %1603, %1597
  %1605 = load i32, i32* %EAX.i1214, align 4
  %1606 = add i64 %1584, 20
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1604 to i32*
  store i32 %1605, i32* %1607, align 4
  %1608 = load i64, i64* %RBP.i, align 8
  %1609 = add i64 %1608, -24
  %1610 = load i64, i64* %3, align 8
  %1611 = add i64 %1610, 4
  store i64 %1611, i64* %3, align 8
  %1612 = inttoptr i64 %1609 to i64*
  %1613 = load i64, i64* %1612, align 8
  store i64 %1613, i64* %RDX.i1301, align 8
  %1614 = add i64 %1613, 328
  %1615 = add i64 %1610, 11
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i64*
  %1617 = load i64, i64* %1616, align 8
  store i64 %1617, i64* %RDX.i1301, align 8
  %1618 = add i64 %1608, -8
  %1619 = add i64 %1610, 15
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i64*
  %1621 = load i64, i64* %1620, align 8
  store i64 %1621, i64* %R8.i1317, align 8
  %1622 = add i64 %1608, -76
  %1623 = add i64 %1610, 19
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = sext i32 %1625 to i64
  store i64 %1626, i64* %R9.i1314, align 8
  %1627 = add i64 %1621, %1626
  %1628 = add i64 %1610, 24
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i8*
  %1630 = load i8, i8* %1629, align 1
  %1631 = sext i8 %1630 to i64
  %1632 = and i64 %1631, 4294967295
  store i64 %1632, i64* %RAX.i1319, align 8
  %1633 = sext i8 %1630 to i64
  store i64 %1633, i64* %R8.i1317, align 8
  %1634 = shl nsw i64 %1633, 3
  %1635 = add i64 %1617, %1634
  %1636 = add i64 %1610, 31
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1635 to i64*
  %1638 = load i64, i64* %1637, align 8
  store i64 %1638, i64* %RDX.i1301, align 8
  %1639 = add i64 %1608, -80
  %1640 = add i64 %1610, 35
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i32*
  %1642 = load i32, i32* %1641, align 4
  %1643 = sext i32 %1642 to i64
  store i64 %1643, i64* %R8.i1317, align 8
  %1644 = shl nsw i64 %1643, 2
  %1645 = add i64 %1644, %1638
  %1646 = add i64 %1610, 39
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i32*
  %1648 = load i32, i32* %1647, align 4
  %1649 = zext i32 %1648 to i64
  store i64 %1649, i64* %RAX.i1319, align 8
  %1650 = add i64 %1608, -64
  %1651 = add i64 %1610, 43
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i64*
  %1653 = load i64, i64* %1652, align 8
  store i64 %1653, i64* %RDX.i1301, align 8
  %1654 = add i64 %1610, 47
  store i64 %1654, i64* %3, align 8
  %1655 = load i32, i32* %1624, align 4
  %1656 = sext i32 %1655 to i64
  store i64 %1656, i64* %R8.i1317, align 8
  %1657 = shl nsw i64 %1656, 3
  %1658 = add i64 %1657, %1653
  %1659 = add i64 %1610, 51
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i64*
  %1661 = load i64, i64* %1660, align 8
  store i64 %1661, i64* %RDX.i1301, align 8
  %1662 = add i64 %1610, 55
  store i64 %1662, i64* %3, align 8
  %1663 = load i32, i32* %1641, align 4
  %1664 = sext i32 %1663 to i64
  store i64 %1664, i64* %R8.i1317, align 8
  %1665 = shl nsw i64 %1664, 2
  %1666 = add i64 %1661, %1665
  %1667 = add i64 %1610, 59
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = add i32 %1669, %1648
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RAX.i1319, align 8
  %1672 = icmp ult i32 %1670, %1648
  %1673 = icmp ult i32 %1670, %1669
  %1674 = or i1 %1672, %1673
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %14, align 1
  %1676 = and i32 %1670, 255
  %1677 = tail call i32 @llvm.ctpop.i32(i32 %1676)
  %1678 = trunc i32 %1677 to i8
  %1679 = and i8 %1678, 1
  %1680 = xor i8 %1679, 1
  store i8 %1680, i8* %21, align 1
  %1681 = xor i32 %1669, %1648
  %1682 = xor i32 %1681, %1670
  %1683 = lshr i32 %1682, 4
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  store i8 %1685, i8* %26, align 1
  %1686 = icmp eq i32 %1670, 0
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %29, align 1
  %1688 = lshr i32 %1670, 31
  %1689 = trunc i32 %1688 to i8
  store i8 %1689, i8* %32, align 1
  %1690 = lshr i32 %1648, 31
  %1691 = lshr i32 %1669, 31
  %1692 = xor i32 %1688, %1690
  %1693 = xor i32 %1688, %1691
  %1694 = add nuw nsw i32 %1692, %1693
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %38, align 1
  %1697 = add i64 %1610, 63
  store i64 %1697, i64* %3, align 8
  store i32 %1670, i32* %1668, align 4
  %1698 = load i64, i64* %RBP.i, align 8
  %1699 = add i64 %1698, -80
  %1700 = load i64, i64* %3, align 8
  %1701 = add i64 %1700, 3
  store i64 %1701, i64* %3, align 8
  %1702 = inttoptr i64 %1699 to i32*
  %1703 = load i32, i32* %1702, align 4
  %1704 = add i32 %1703, 1
  %1705 = zext i32 %1704 to i64
  store i64 %1705, i64* %RAX.i1319, align 8
  %1706 = icmp eq i32 %1703, -1
  %1707 = icmp eq i32 %1704, 0
  %1708 = or i1 %1706, %1707
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %14, align 1
  %1710 = and i32 %1704, 255
  %1711 = tail call i32 @llvm.ctpop.i32(i32 %1710)
  %1712 = trunc i32 %1711 to i8
  %1713 = and i8 %1712, 1
  %1714 = xor i8 %1713, 1
  store i8 %1714, i8* %21, align 1
  %1715 = xor i32 %1704, %1703
  %1716 = lshr i32 %1715, 4
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  store i8 %1718, i8* %26, align 1
  %1719 = zext i1 %1707 to i8
  store i8 %1719, i8* %29, align 1
  %1720 = lshr i32 %1704, 31
  %1721 = trunc i32 %1720 to i8
  store i8 %1721, i8* %32, align 1
  %1722 = lshr i32 %1703, 31
  %1723 = xor i32 %1720, %1722
  %1724 = add nuw nsw i32 %1723, %1720
  %1725 = icmp eq i32 %1724, 2
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %38, align 1
  %1727 = add i64 %1700, 9
  store i64 %1727, i64* %3, align 8
  store i32 %1704, i32* %1702, align 4
  %1728 = load i64, i64* %3, align 8
  %1729 = add i64 %1728, -668
  store i64 %1729, i64* %3, align 8
  br label %block_.L_4080bb

block_.L_40835c:                                  ; preds = %block_.L_4080bb
  %1730 = add i64 %493, -24
  %1731 = add i64 %456, 21
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i64*
  %1733 = load i64, i64* %1732, align 8
  store i64 %1733, i64* %RDX.i1301, align 8
  %1734 = add i64 %1733, 136
  %1735 = add i64 %456, 27
  store i64 %1735, i64* %3, align 8
  %1736 = inttoptr i64 %1734 to i32*
  %1737 = load i32, i32* %1736, align 4
  %1738 = add i32 %1737, -1
  %1739 = zext i32 %1738 to i64
  store i64 %1739, i64* %RCX.i1298, align 8
  %1740 = icmp eq i32 %1737, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %14, align 1
  %1742 = and i32 %1738, 255
  %1743 = tail call i32 @llvm.ctpop.i32(i32 %1742)
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = xor i8 %1745, 1
  store i8 %1746, i8* %21, align 1
  %1747 = xor i32 %1738, %1737
  %1748 = lshr i32 %1747, 4
  %1749 = trunc i32 %1748 to i8
  %1750 = and i8 %1749, 1
  store i8 %1750, i8* %26, align 1
  %1751 = icmp eq i32 %1738, 0
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %29, align 1
  %1753 = lshr i32 %1738, 31
  %1754 = trunc i32 %1753 to i8
  store i8 %1754, i8* %32, align 1
  %1755 = lshr i32 %1737, 31
  %1756 = xor i32 %1753, %1755
  %1757 = add nuw nsw i32 %1756, %1755
  %1758 = icmp eq i32 %1757, 2
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %38, align 1
  %1760 = sext i32 %1738 to i64
  store i64 %1760, i64* %RDX.i1301, align 8
  %1761 = shl nsw i64 %1760, 2
  %1762 = add i64 %492, %1761
  %1763 = add i64 %456, 36
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i32*
  %1765 = load i32, i32* %1764, align 4
  %1766 = zext i32 %1765 to i64
  store i64 %1766, i64* %RCX.i1298, align 8
  %1767 = add i64 %456, 40
  store i64 %1767, i64* %3, align 8
  %1768 = load i64, i64* %1732, align 8
  store i64 %1768, i64* %RAX.i1319, align 8
  %1769 = add i64 %1768, 312
  %1770 = add i64 %456, 47
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i64*
  %1772 = load i64, i64* %1771, align 8
  store i64 %1772, i64* %RAX.i1319, align 8
  %1773 = add i64 %456, 50
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to i64*
  %1775 = load i64, i64* %1774, align 8
  store i64 %1775, i64* %RAX.i1319, align 8
  %1776 = add i64 %456, 54
  store i64 %1776, i64* %3, align 8
  %1777 = load i64, i64* %1732, align 8
  store i64 %1777, i64* %RDX.i1301, align 8
  %1778 = add i64 %1777, 136
  %1779 = add i64 %456, 60
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i32*
  %1781 = load i32, i32* %1780, align 4
  %1782 = add i32 %1781, -1
  %1783 = zext i32 %1782 to i64
  store i64 %1783, i64* %RSI.i1295, align 8
  %1784 = icmp eq i32 %1781, 0
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %14, align 1
  %1786 = and i32 %1782, 255
  %1787 = tail call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  store i8 %1790, i8* %21, align 1
  %1791 = xor i32 %1782, %1781
  %1792 = lshr i32 %1791, 4
  %1793 = trunc i32 %1792 to i8
  %1794 = and i8 %1793, 1
  store i8 %1794, i8* %26, align 1
  %1795 = icmp eq i32 %1782, 0
  %1796 = zext i1 %1795 to i8
  store i8 %1796, i8* %29, align 1
  %1797 = lshr i32 %1782, 31
  %1798 = trunc i32 %1797 to i8
  store i8 %1798, i8* %32, align 1
  %1799 = lshr i32 %1781, 31
  %1800 = xor i32 %1797, %1799
  %1801 = add nuw nsw i32 %1800, %1799
  %1802 = icmp eq i32 %1801, 2
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %38, align 1
  %1804 = sext i32 %1782 to i64
  store i64 %1804, i64* %RDX.i1301, align 8
  %1805 = shl nsw i64 %1804, 2
  %1806 = add i64 %1775, %1805
  %1807 = add i64 %456, 69
  store i64 %1807, i64* %3, align 8
  %1808 = inttoptr i64 %1806 to i32*
  %1809 = load i32, i32* %1808, align 4
  %1810 = add i32 %1809, %1765
  %1811 = zext i32 %1810 to i64
  store i64 %1811, i64* %RCX.i1298, align 8
  %1812 = icmp ult i32 %1810, %1765
  %1813 = icmp ult i32 %1810, %1809
  %1814 = or i1 %1812, %1813
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %14, align 1
  %1816 = and i32 %1810, 255
  %1817 = tail call i32 @llvm.ctpop.i32(i32 %1816)
  %1818 = trunc i32 %1817 to i8
  %1819 = and i8 %1818, 1
  %1820 = xor i8 %1819, 1
  store i8 %1820, i8* %21, align 1
  %1821 = xor i32 %1809, %1765
  %1822 = xor i32 %1821, %1810
  %1823 = lshr i32 %1822, 4
  %1824 = trunc i32 %1823 to i8
  %1825 = and i8 %1824, 1
  store i8 %1825, i8* %26, align 1
  %1826 = icmp eq i32 %1810, 0
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %29, align 1
  %1828 = lshr i32 %1810, 31
  %1829 = trunc i32 %1828 to i8
  store i8 %1829, i8* %32, align 1
  %1830 = lshr i32 %1765, 31
  %1831 = lshr i32 %1809, 31
  %1832 = xor i32 %1828, %1830
  %1833 = xor i32 %1828, %1831
  %1834 = add nuw nsw i32 %1832, %1833
  %1835 = icmp eq i32 %1834, 2
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %38, align 1
  %1837 = load i64, i64* %RBP.i, align 8
  %1838 = add i64 %1837, -64
  %1839 = add i64 %456, 73
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i64*
  %1841 = load i64, i64* %1840, align 8
  store i64 %1841, i64* %RAX.i1319, align 8
  %1842 = add i64 %1837, -76
  %1843 = add i64 %456, 76
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1842 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = add i32 %1845, -1
  %1847 = zext i32 %1846 to i64
  store i64 %1847, i64* %RSI.i1295, align 8
  %1848 = icmp eq i32 %1845, 0
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %14, align 1
  %1850 = and i32 %1846, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %21, align 1
  %1855 = xor i32 %1846, %1845
  %1856 = lshr i32 %1855, 4
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  store i8 %1858, i8* %26, align 1
  %1859 = icmp eq i32 %1846, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %29, align 1
  %1861 = lshr i32 %1846, 31
  %1862 = trunc i32 %1861 to i8
  store i8 %1862, i8* %32, align 1
  %1863 = lshr i32 %1845, 31
  %1864 = xor i32 %1861, %1863
  %1865 = add nuw nsw i32 %1864, %1863
  %1866 = icmp eq i32 %1865, 2
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %38, align 1
  %1868 = sext i32 %1846 to i64
  store i64 %1868, i64* %RDX.i1301, align 8
  %1869 = shl nsw i64 %1868, 3
  %1870 = add i64 %1841, %1869
  %1871 = add i64 %456, 86
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i64*
  %1873 = load i64, i64* %1872, align 8
  store i64 %1873, i64* %RAX.i1319, align 8
  %1874 = add i64 %1837, -24
  %1875 = add i64 %456, 90
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i64*
  %1877 = load i64, i64* %1876, align 8
  store i64 %1877, i64* %RDX.i1301, align 8
  %1878 = add i64 %1877, 136
  %1879 = add i64 %456, 96
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i32*
  %1881 = load i32, i32* %1880, align 4
  %1882 = add i32 %1881, -1
  %1883 = zext i32 %1882 to i64
  store i64 %1883, i64* %RSI.i1295, align 8
  %1884 = icmp eq i32 %1881, 0
  %1885 = zext i1 %1884 to i8
  store i8 %1885, i8* %14, align 1
  %1886 = and i32 %1882, 255
  %1887 = tail call i32 @llvm.ctpop.i32(i32 %1886)
  %1888 = trunc i32 %1887 to i8
  %1889 = and i8 %1888, 1
  %1890 = xor i8 %1889, 1
  store i8 %1890, i8* %21, align 1
  %1891 = xor i32 %1882, %1881
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  store i8 %1894, i8* %26, align 1
  %1895 = icmp eq i32 %1882, 0
  %1896 = zext i1 %1895 to i8
  store i8 %1896, i8* %29, align 1
  %1897 = lshr i32 %1882, 31
  %1898 = trunc i32 %1897 to i8
  store i8 %1898, i8* %32, align 1
  %1899 = lshr i32 %1881, 31
  %1900 = xor i32 %1897, %1899
  %1901 = add nuw nsw i32 %1900, %1899
  %1902 = icmp eq i32 %1901, 2
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %38, align 1
  %1904 = sext i32 %1882 to i64
  store i64 %1904, i64* %RDX.i1301, align 8
  %1905 = shl nsw i64 %1904, 2
  %1906 = add i64 %1873, %1905
  %1907 = add i64 %456, 105
  store i64 %1907, i64* %3, align 8
  %1908 = inttoptr i64 %1906 to i32*
  %1909 = load i32, i32* %1908, align 4
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RSI.i1295, align 8
  %1911 = load i64, i64* %RBP.i, align 8
  %1912 = add i64 %1911, -24
  %1913 = add i64 %456, 109
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to i64*
  %1915 = load i64, i64* %1914, align 8
  store i64 %1915, i64* %RAX.i1319, align 8
  %1916 = add i64 %1915, 312
  %1917 = add i64 %456, 116
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i64*
  %1919 = load i64, i64* %1918, align 8
  store i64 %1919, i64* %RAX.i1319, align 8
  %1920 = add i64 %1919, 24
  %1921 = add i64 %456, 120
  store i64 %1921, i64* %3, align 8
  %1922 = inttoptr i64 %1920 to i64*
  %1923 = load i64, i64* %1922, align 8
  store i64 %1923, i64* %RAX.i1319, align 8
  %1924 = add i64 %456, 124
  store i64 %1924, i64* %3, align 8
  %1925 = load i64, i64* %1914, align 8
  store i64 %1925, i64* %RDX.i1301, align 8
  %1926 = add i64 %1925, 136
  %1927 = add i64 %456, 130
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1926 to i32*
  %1929 = load i32, i32* %1928, align 4
  %1930 = add i32 %1929, -1
  %1931 = zext i32 %1930 to i64
  store i64 %1931, i64* %RDI.i1307, align 8
  %1932 = icmp eq i32 %1929, 0
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %14, align 1
  %1934 = and i32 %1930, 255
  %1935 = tail call i32 @llvm.ctpop.i32(i32 %1934)
  %1936 = trunc i32 %1935 to i8
  %1937 = and i8 %1936, 1
  %1938 = xor i8 %1937, 1
  store i8 %1938, i8* %21, align 1
  %1939 = xor i32 %1930, %1929
  %1940 = lshr i32 %1939, 4
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  store i8 %1942, i8* %26, align 1
  %1943 = icmp eq i32 %1930, 0
  %1944 = zext i1 %1943 to i8
  store i8 %1944, i8* %29, align 1
  %1945 = lshr i32 %1930, 31
  %1946 = trunc i32 %1945 to i8
  store i8 %1946, i8* %32, align 1
  %1947 = lshr i32 %1929, 31
  %1948 = xor i32 %1945, %1947
  %1949 = add nuw nsw i32 %1948, %1947
  %1950 = icmp eq i32 %1949, 2
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %38, align 1
  %1952 = sext i32 %1930 to i64
  store i64 %1952, i64* %RDX.i1301, align 8
  %1953 = shl nsw i64 %1952, 2
  %1954 = add i64 %1923, %1953
  %1955 = add i64 %456, 139
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1954 to i32*
  %1957 = load i32, i32* %1956, align 4
  %1958 = add i32 %1957, %1909
  %1959 = zext i32 %1958 to i64
  store i64 %1959, i64* %RSI.i1295, align 8
  %1960 = icmp ult i32 %1958, %1909
  %1961 = icmp ult i32 %1958, %1957
  %1962 = or i1 %1960, %1961
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %14, align 1
  %1964 = and i32 %1958, 255
  %1965 = tail call i32 @llvm.ctpop.i32(i32 %1964)
  %1966 = trunc i32 %1965 to i8
  %1967 = and i8 %1966, 1
  %1968 = xor i8 %1967, 1
  store i8 %1968, i8* %21, align 1
  %1969 = xor i32 %1957, %1909
  %1970 = xor i32 %1969, %1958
  %1971 = lshr i32 %1970, 4
  %1972 = trunc i32 %1971 to i8
  %1973 = and i8 %1972, 1
  store i8 %1973, i8* %26, align 1
  %1974 = icmp eq i32 %1958, 0
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %29, align 1
  %1976 = lshr i32 %1958, 31
  %1977 = trunc i32 %1976 to i8
  store i8 %1977, i8* %32, align 1
  %1978 = lshr i32 %1909, 31
  %1979 = lshr i32 %1957, 31
  %1980 = xor i32 %1976, %1978
  %1981 = xor i32 %1976, %1979
  %1982 = add nuw nsw i32 %1980, %1981
  %1983 = icmp eq i32 %1982, 2
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %38, align 1
  %1985 = load i32, i32* %ECX.i607, align 4
  %1986 = zext i32 %1985 to i64
  store i64 %1986, i64* %RDI.i1307, align 8
  %1987 = add i64 %456, 130644
  %1988 = add i64 %456, 146
  %1989 = load i64, i64* %6, align 8
  %1990 = add i64 %1989, -8
  %1991 = inttoptr i64 %1990 to i64*
  store i64 %1988, i64* %1991, align 8
  store i64 %1990, i64* %6, align 8
  store i64 %1987, i64* %3, align 8
  %call2_4083e9 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1987, %struct.Memory* %call2_407fb9)
  %1992 = load i64, i64* %RBP.i, align 8
  %1993 = add i64 %1992, -48
  %1994 = load i64, i64* %3, align 8
  %1995 = add i64 %1994, 4
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1993 to i64*
  %1997 = load i64, i64* %1996, align 8
  store i64 %1997, i64* %RDX.i1301, align 8
  %1998 = add i64 %1992, -76
  %1999 = add i64 %1994, 7
  store i64 %1999, i64* %3, align 8
  %2000 = inttoptr i64 %1998 to i32*
  %2001 = load i32, i32* %2000, align 4
  %2002 = add i32 %2001, -1
  %2003 = zext i32 %2002 to i64
  store i64 %2003, i64* %RCX.i1298, align 8
  %2004 = icmp eq i32 %2001, 0
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %14, align 1
  %2006 = and i32 %2002, 255
  %2007 = tail call i32 @llvm.ctpop.i32(i32 %2006)
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  %2010 = xor i8 %2009, 1
  store i8 %2010, i8* %21, align 1
  %2011 = xor i32 %2002, %2001
  %2012 = lshr i32 %2011, 4
  %2013 = trunc i32 %2012 to i8
  %2014 = and i8 %2013, 1
  store i8 %2014, i8* %26, align 1
  %2015 = icmp eq i32 %2002, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %29, align 1
  %2017 = lshr i32 %2002, 31
  %2018 = trunc i32 %2017 to i8
  store i8 %2018, i8* %32, align 1
  %2019 = lshr i32 %2001, 31
  %2020 = xor i32 %2017, %2019
  %2021 = add nuw nsw i32 %2020, %2019
  %2022 = icmp eq i32 %2021, 2
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %38, align 1
  %2024 = sext i32 %2002 to i64
  store i64 %2024, i64* %R8.i1317, align 8
  %2025 = shl nsw i64 %2024, 3
  %2026 = add i64 %1997, %2025
  %2027 = add i64 %1994, 17
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i64*
  %2029 = load i64, i64* %2028, align 8
  store i64 %2029, i64* %RDX.i1301, align 8
  %2030 = add i64 %1994, 19
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2029 to i32*
  %2032 = load i32, i32* %2031, align 4
  %2033 = zext i32 %2032 to i64
  store i64 %2033, i64* %RCX.i1298, align 8
  %2034 = add i64 %1992, -24
  %2035 = add i64 %1994, 23
  store i64 %2035, i64* %3, align 8
  %2036 = inttoptr i64 %2034 to i64*
  %2037 = load i64, i64* %2036, align 8
  store i64 %2037, i64* %RDX.i1301, align 8
  %2038 = add i64 %2037, 368
  %2039 = add i64 %1994, 30
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i64*
  %2041 = load i64, i64* %2040, align 8
  store i64 %2041, i64* %RDX.i1301, align 8
  %2042 = add i64 %1994, 34
  store i64 %2042, i64* %3, align 8
  %2043 = load i64, i64* %2036, align 8
  store i64 %2043, i64* %R8.i1317, align 8
  %2044 = add i64 %2043, 136
  %2045 = add i64 %1994, 41
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i32*
  %2047 = load i32, i32* %2046, align 4
  %2048 = add i32 %2047, -1
  %2049 = zext i32 %2048 to i64
  store i64 %2049, i64* %RSI.i1295, align 8
  %2050 = icmp eq i32 %2047, 0
  %2051 = zext i1 %2050 to i8
  store i8 %2051, i8* %14, align 1
  %2052 = and i32 %2048, 255
  %2053 = tail call i32 @llvm.ctpop.i32(i32 %2052)
  %2054 = trunc i32 %2053 to i8
  %2055 = and i8 %2054, 1
  %2056 = xor i8 %2055, 1
  store i8 %2056, i8* %21, align 1
  %2057 = xor i32 %2048, %2047
  %2058 = lshr i32 %2057, 4
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  store i8 %2060, i8* %26, align 1
  %2061 = icmp eq i32 %2048, 0
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %29, align 1
  %2063 = lshr i32 %2048, 31
  %2064 = trunc i32 %2063 to i8
  store i8 %2064, i8* %32, align 1
  %2065 = lshr i32 %2047, 31
  %2066 = xor i32 %2063, %2065
  %2067 = add nuw nsw i32 %2066, %2065
  %2068 = icmp eq i32 %2067, 2
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %38, align 1
  %2070 = sext i32 %2048 to i64
  store i64 %2070, i64* %R8.i1317, align 8
  %2071 = shl nsw i64 %2070, 2
  %2072 = add i64 %2041, %2071
  %2073 = add i64 %1994, 51
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = add i32 %2075, %2032
  %2077 = zext i32 %2076 to i64
  store i64 %2077, i64* %RCX.i1298, align 8
  %2078 = icmp ult i32 %2076, %2032
  %2079 = icmp ult i32 %2076, %2075
  %2080 = or i1 %2078, %2079
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %14, align 1
  %2082 = and i32 %2076, 255
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %21, align 1
  %2087 = xor i32 %2075, %2032
  %2088 = xor i32 %2087, %2076
  %2089 = lshr i32 %2088, 4
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %26, align 1
  %2092 = icmp eq i32 %2076, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %29, align 1
  %2094 = lshr i32 %2076, 31
  %2095 = trunc i32 %2094 to i8
  store i8 %2095, i8* %32, align 1
  %2096 = lshr i32 %2032, 31
  %2097 = lshr i32 %2075, 31
  %2098 = xor i32 %2094, %2096
  %2099 = xor i32 %2094, %2097
  %2100 = add nuw nsw i32 %2098, %2099
  %2101 = icmp eq i32 %2100, 2
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %38, align 1
  %2103 = load i64, i64* %RBP.i, align 8
  %2104 = add i64 %2103, -72
  %2105 = add i64 %1994, 55
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i64*
  %2107 = load i64, i64* %2106, align 8
  store i64 %2107, i64* %RDX.i1301, align 8
  %2108 = add i64 %2103, -76
  %2109 = add i64 %1994, 58
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i32*
  %2111 = load i32, i32* %2110, align 4
  %2112 = add i32 %2111, -1
  %2113 = zext i32 %2112 to i64
  store i64 %2113, i64* %RSI.i1295, align 8
  %2114 = icmp eq i32 %2111, 0
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %14, align 1
  %2116 = and i32 %2112, 255
  %2117 = tail call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  store i8 %2120, i8* %21, align 1
  %2121 = xor i32 %2112, %2111
  %2122 = lshr i32 %2121, 4
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  store i8 %2124, i8* %26, align 1
  %2125 = icmp eq i32 %2112, 0
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %29, align 1
  %2127 = lshr i32 %2112, 31
  %2128 = trunc i32 %2127 to i8
  store i8 %2128, i8* %32, align 1
  %2129 = lshr i32 %2111, 31
  %2130 = xor i32 %2127, %2129
  %2131 = add nuw nsw i32 %2130, %2129
  %2132 = icmp eq i32 %2131, 2
  %2133 = zext i1 %2132 to i8
  store i8 %2133, i8* %38, align 1
  %2134 = sext i32 %2112 to i64
  store i64 %2134, i64* %R8.i1317, align 8
  %2135 = shl nsw i64 %2134, 3
  %2136 = add i64 %2107, %2135
  %2137 = add i64 %1994, 68
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i64*
  %2139 = load i64, i64* %2138, align 8
  store i64 %2139, i64* %RDX.i1301, align 8
  %2140 = add i64 %2103, -24
  %2141 = add i64 %1994, 72
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i64*
  %2143 = load i64, i64* %2142, align 8
  store i64 %2143, i64* %R8.i1317, align 8
  %2144 = add i64 %2143, 136
  %2145 = add i64 %1994, 79
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2144 to i32*
  %2147 = load i32, i32* %2146, align 4
  %2148 = add i32 %2147, -1
  %2149 = zext i32 %2148 to i64
  store i64 %2149, i64* %RSI.i1295, align 8
  %2150 = icmp eq i32 %2147, 0
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %14, align 1
  %2152 = and i32 %2148, 255
  %2153 = tail call i32 @llvm.ctpop.i32(i32 %2152)
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = xor i8 %2155, 1
  store i8 %2156, i8* %21, align 1
  %2157 = xor i32 %2148, %2147
  %2158 = lshr i32 %2157, 4
  %2159 = trunc i32 %2158 to i8
  %2160 = and i8 %2159, 1
  store i8 %2160, i8* %26, align 1
  %2161 = icmp eq i32 %2148, 0
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %29, align 1
  %2163 = lshr i32 %2148, 31
  %2164 = trunc i32 %2163 to i8
  store i8 %2164, i8* %32, align 1
  %2165 = lshr i32 %2147, 31
  %2166 = xor i32 %2163, %2165
  %2167 = add nuw nsw i32 %2166, %2165
  %2168 = icmp eq i32 %2167, 2
  %2169 = zext i1 %2168 to i8
  store i8 %2169, i8* %38, align 1
  %2170 = sext i32 %2148 to i64
  store i64 %2170, i64* %R8.i1317, align 8
  %2171 = shl nsw i64 %2170, 2
  %2172 = add i64 %2139, %2171
  %2173 = add i64 %1994, 89
  store i64 %2173, i64* %3, align 8
  %2174 = inttoptr i64 %2172 to i32*
  %2175 = load i32, i32* %2174, align 4
  %2176 = zext i32 %2175 to i64
  store i64 %2176, i64* %RSI.i1295, align 8
  %2177 = load i64, i64* %RBP.i, align 8
  %2178 = add i64 %2177, -24
  %2179 = add i64 %1994, 93
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i64*
  %2181 = load i64, i64* %2180, align 8
  store i64 %2181, i64* %RDX.i1301, align 8
  %2182 = add i64 %2181, 312
  %2183 = add i64 %1994, 100
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i64*
  %2185 = load i64, i64* %2184, align 8
  store i64 %2185, i64* %RDX.i1301, align 8
  %2186 = add i64 %2185, 40
  %2187 = add i64 %1994, 104
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2186 to i64*
  %2189 = load i64, i64* %2188, align 8
  store i64 %2189, i64* %RDX.i1301, align 8
  %2190 = add i64 %1994, 108
  store i64 %2190, i64* %3, align 8
  %2191 = load i64, i64* %2180, align 8
  store i64 %2191, i64* %R8.i1317, align 8
  %2192 = add i64 %2191, 136
  %2193 = add i64 %1994, 115
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i32*
  %2195 = load i32, i32* %2194, align 4
  %2196 = add i32 %2195, -1
  %2197 = zext i32 %2196 to i64
  store i64 %2197, i64* %RDI.i1307, align 8
  %2198 = icmp eq i32 %2195, 0
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %14, align 1
  %2200 = and i32 %2196, 255
  %2201 = tail call i32 @llvm.ctpop.i32(i32 %2200)
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  %2204 = xor i8 %2203, 1
  store i8 %2204, i8* %21, align 1
  %2205 = xor i32 %2196, %2195
  %2206 = lshr i32 %2205, 4
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  store i8 %2208, i8* %26, align 1
  %2209 = icmp eq i32 %2196, 0
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %29, align 1
  %2211 = lshr i32 %2196, 31
  %2212 = trunc i32 %2211 to i8
  store i8 %2212, i8* %32, align 1
  %2213 = lshr i32 %2195, 31
  %2214 = xor i32 %2211, %2213
  %2215 = add nuw nsw i32 %2214, %2213
  %2216 = icmp eq i32 %2215, 2
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %38, align 1
  %2218 = sext i32 %2196 to i64
  store i64 %2218, i64* %R8.i1317, align 8
  %2219 = shl nsw i64 %2218, 2
  %2220 = add i64 %2189, %2219
  %2221 = add i64 %1994, 125
  store i64 %2221, i64* %3, align 8
  %2222 = inttoptr i64 %2220 to i32*
  %2223 = load i32, i32* %2222, align 4
  %2224 = add i32 %2223, %2175
  %2225 = zext i32 %2224 to i64
  store i64 %2225, i64* %RSI.i1295, align 8
  %2226 = icmp ult i32 %2224, %2175
  %2227 = icmp ult i32 %2224, %2223
  %2228 = or i1 %2226, %2227
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %14, align 1
  %2230 = and i32 %2224, 255
  %2231 = tail call i32 @llvm.ctpop.i32(i32 %2230)
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  %2234 = xor i8 %2233, 1
  store i8 %2234, i8* %21, align 1
  %2235 = xor i32 %2223, %2175
  %2236 = xor i32 %2235, %2224
  %2237 = lshr i32 %2236, 4
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  store i8 %2239, i8* %26, align 1
  %2240 = icmp eq i32 %2224, 0
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %29, align 1
  %2242 = lshr i32 %2224, 31
  %2243 = trunc i32 %2242 to i8
  store i8 %2243, i8* %32, align 1
  %2244 = lshr i32 %2175, 31
  %2245 = lshr i32 %2223, 31
  %2246 = xor i32 %2242, %2244
  %2247 = xor i32 %2242, %2245
  %2248 = add nuw nsw i32 %2246, %2247
  %2249 = icmp eq i32 %2248, 2
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %38, align 1
  %2251 = load i32, i32* %ECX.i607, align 4
  %2252 = zext i32 %2251 to i64
  store i64 %2252, i64* %RDI.i1307, align 8
  %2253 = load i64, i64* %RBP.i, align 8
  %2254 = add i64 %2253, -92
  %2255 = load i32, i32* %EAX.i1214, align 4
  %2256 = add i64 %1994, 130
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2254 to i32*
  store i32 %2255, i32* %2257, align 4
  %2258 = load i64, i64* %3, align 8
  %2259 = add i64 %2258, 130368
  %2260 = add i64 %2258, 5
  %2261 = load i64, i64* %6, align 8
  %2262 = add i64 %2261, -8
  %2263 = inttoptr i64 %2262 to i64*
  store i64 %2260, i64* %2263, align 8
  store i64 %2262, i64* %6, align 8
  store i64 %2259, i64* %3, align 8
  %call2_408470 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2259, %struct.Memory* %call2_407fb9)
  %2264 = load i64, i64* %RBP.i, align 8
  %2265 = add i64 %2264, -92
  %2266 = load i64, i64* %3, align 8
  %2267 = add i64 %2266, 3
  store i64 %2267, i64* %3, align 8
  %2268 = inttoptr i64 %2265 to i32*
  %2269 = load i32, i32* %2268, align 4
  %2270 = zext i32 %2269 to i64
  store i64 %2270, i64* %RDI.i1307, align 8
  %2271 = load i32, i32* %EAX.i1214, align 4
  %2272 = zext i32 %2271 to i64
  store i64 %2272, i64* %RSI.i1295, align 8
  %2273 = add i64 %2266, 130363
  %2274 = add i64 %2266, 10
  %2275 = load i64, i64* %6, align 8
  %2276 = add i64 %2275, -8
  %2277 = inttoptr i64 %2276 to i64*
  store i64 %2274, i64* %2277, align 8
  store i64 %2276, i64* %6, align 8
  store i64 %2273, i64* %3, align 8
  %call2_40847a = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2273, %struct.Memory* %call2_407fb9)
  %2278 = load i64, i64* %RBP.i, align 8
  %2279 = add i64 %2278, -56
  %2280 = load i64, i64* %3, align 8
  %2281 = add i64 %2280, 4
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2279 to i64*
  %2283 = load i64, i64* %2282, align 8
  store i64 %2283, i64* %RDX.i1301, align 8
  %2284 = add i64 %2278, -76
  %2285 = add i64 %2280, 8
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i32*
  %2287 = load i32, i32* %2286, align 4
  %2288 = sext i32 %2287 to i64
  store i64 %2288, i64* %R8.i1317, align 8
  %2289 = shl nsw i64 %2288, 3
  %2290 = add i64 %2289, %2283
  %2291 = add i64 %2280, 12
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i64*
  %2293 = load i64, i64* %2292, align 8
  store i64 %2293, i64* %RDX.i1301, align 8
  %2294 = add i64 %2278, -24
  %2295 = add i64 %2280, 16
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2294 to i64*
  %2297 = load i64, i64* %2296, align 8
  store i64 %2297, i64* %R8.i1317, align 8
  %2298 = add i64 %2297, 136
  %2299 = add i64 %2280, 23
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i32*
  %2301 = load i32, i32* %2300, align 4
  %2302 = sext i32 %2301 to i64
  store i64 %2302, i64* %R8.i1317, align 8
  %2303 = shl nsw i64 %2302, 2
  %2304 = add i64 %2303, %2293
  %2305 = load i32, i32* %EAX.i1214, align 4
  %2306 = add i64 %2280, 27
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2304 to i32*
  store i32 %2305, i32* %2307, align 4
  %2308 = load i64, i64* %RBP.i, align 8
  %2309 = add i64 %2308, -24
  %2310 = load i64, i64* %3, align 8
  %2311 = add i64 %2310, 4
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2309 to i64*
  %2313 = load i64, i64* %2312, align 8
  store i64 %2313, i64* %RDX.i1301, align 8
  %2314 = add i64 %2313, 320
  %2315 = add i64 %2310, 11
  store i64 %2315, i64* %3, align 8
  %2316 = inttoptr i64 %2314 to i64*
  %2317 = load i64, i64* %2316, align 8
  store i64 %2317, i64* %RDX.i1301, align 8
  %2318 = add i64 %2308, -8
  %2319 = add i64 %2310, 15
  store i64 %2319, i64* %3, align 8
  %2320 = inttoptr i64 %2318 to i64*
  %2321 = load i64, i64* %2320, align 8
  store i64 %2321, i64* %R8.i1317, align 8
  %2322 = add i64 %2308, -76
  %2323 = add i64 %2310, 19
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2322 to i32*
  %2325 = load i32, i32* %2324, align 4
  %2326 = sext i32 %2325 to i64
  store i64 %2326, i64* %R9.i1314, align 8
  %2327 = add i64 %2321, %2326
  %2328 = add i64 %2310, 24
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i8*
  %2330 = load i8, i8* %2329, align 1
  %2331 = sext i8 %2330 to i64
  %2332 = and i64 %2331, 4294967295
  store i64 %2332, i64* %RAX.i1319, align 8
  %2333 = sext i8 %2330 to i64
  store i64 %2333, i64* %R8.i1317, align 8
  %2334 = shl nsw i64 %2333, 3
  %2335 = add i64 %2317, %2334
  %2336 = add i64 %2310, 31
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i64*
  %2338 = load i64, i64* %2337, align 8
  store i64 %2338, i64* %RDX.i1301, align 8
  %2339 = add i64 %2310, 35
  store i64 %2339, i64* %3, align 8
  %2340 = load i64, i64* %2312, align 8
  store i64 %2340, i64* %R8.i1317, align 8
  %2341 = add i64 %2340, 136
  %2342 = add i64 %2310, 42
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = sext i32 %2344 to i64
  store i64 %2345, i64* %R8.i1317, align 8
  %2346 = shl nsw i64 %2345, 2
  %2347 = add i64 %2346, %2338
  %2348 = add i64 %2310, 46
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i32*
  %2350 = load i32, i32* %2349, align 4
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %RAX.i1319, align 8
  %2352 = add i64 %2308, -56
  %2353 = add i64 %2310, 50
  store i64 %2353, i64* %3, align 8
  %2354 = inttoptr i64 %2352 to i64*
  %2355 = load i64, i64* %2354, align 8
  store i64 %2355, i64* %RDX.i1301, align 8
  %2356 = add i64 %2310, 54
  store i64 %2356, i64* %3, align 8
  %2357 = load i32, i32* %2324, align 4
  %2358 = sext i32 %2357 to i64
  store i64 %2358, i64* %R8.i1317, align 8
  %2359 = shl nsw i64 %2358, 3
  %2360 = add i64 %2359, %2355
  %2361 = add i64 %2310, 58
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2360 to i64*
  %2363 = load i64, i64* %2362, align 8
  store i64 %2363, i64* %RDX.i1301, align 8
  %2364 = add i64 %2310, 62
  store i64 %2364, i64* %3, align 8
  %2365 = load i64, i64* %2312, align 8
  store i64 %2365, i64* %R8.i1317, align 8
  %2366 = add i64 %2365, 136
  %2367 = add i64 %2310, 69
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2366 to i32*
  %2369 = load i32, i32* %2368, align 4
  %2370 = sext i32 %2369 to i64
  store i64 %2370, i64* %R8.i1317, align 8
  %2371 = shl nsw i64 %2370, 2
  %2372 = add i64 %2363, %2371
  %2373 = add i64 %2310, 73
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2372 to i32*
  %2375 = load i32, i32* %2374, align 4
  %2376 = add i32 %2375, %2350
  %2377 = zext i32 %2376 to i64
  store i64 %2377, i64* %RAX.i1319, align 8
  %2378 = icmp ult i32 %2376, %2350
  %2379 = icmp ult i32 %2376, %2375
  %2380 = or i1 %2378, %2379
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %14, align 1
  %2382 = and i32 %2376, 255
  %2383 = tail call i32 @llvm.ctpop.i32(i32 %2382)
  %2384 = trunc i32 %2383 to i8
  %2385 = and i8 %2384, 1
  %2386 = xor i8 %2385, 1
  store i8 %2386, i8* %21, align 1
  %2387 = xor i32 %2375, %2350
  %2388 = xor i32 %2387, %2376
  %2389 = lshr i32 %2388, 4
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  store i8 %2391, i8* %26, align 1
  %2392 = icmp eq i32 %2376, 0
  %2393 = zext i1 %2392 to i8
  store i8 %2393, i8* %29, align 1
  %2394 = lshr i32 %2376, 31
  %2395 = trunc i32 %2394 to i8
  store i8 %2395, i8* %32, align 1
  %2396 = lshr i32 %2350, 31
  %2397 = lshr i32 %2375, 31
  %2398 = xor i32 %2394, %2396
  %2399 = xor i32 %2394, %2397
  %2400 = add nuw nsw i32 %2398, %2399
  %2401 = icmp eq i32 %2400, 2
  %2402 = zext i1 %2401 to i8
  store i8 %2402, i8* %38, align 1
  %2403 = add i64 %2310, 77
  store i64 %2403, i64* %3, align 8
  store i32 %2376, i32* %2374, align 4
  %2404 = load i64, i64* %RBP.i, align 8
  %2405 = add i64 %2404, -48
  %2406 = load i64, i64* %3, align 8
  %2407 = add i64 %2406, 4
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2405 to i64*
  %2409 = load i64, i64* %2408, align 8
  store i64 %2409, i64* %RDX.i1301, align 8
  %2410 = add i64 %2404, -76
  %2411 = add i64 %2406, 7
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to i32*
  %2413 = load i32, i32* %2412, align 4
  %2414 = add i32 %2413, -1
  %2415 = zext i32 %2414 to i64
  store i64 %2415, i64* %RAX.i1319, align 8
  %2416 = icmp eq i32 %2413, 0
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %14, align 1
  %2418 = and i32 %2414, 255
  %2419 = tail call i32 @llvm.ctpop.i32(i32 %2418)
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = xor i8 %2421, 1
  store i8 %2422, i8* %21, align 1
  %2423 = xor i32 %2414, %2413
  %2424 = lshr i32 %2423, 4
  %2425 = trunc i32 %2424 to i8
  %2426 = and i8 %2425, 1
  store i8 %2426, i8* %26, align 1
  %2427 = icmp eq i32 %2414, 0
  %2428 = zext i1 %2427 to i8
  store i8 %2428, i8* %29, align 1
  %2429 = lshr i32 %2414, 31
  %2430 = trunc i32 %2429 to i8
  store i8 %2430, i8* %32, align 1
  %2431 = lshr i32 %2413, 31
  %2432 = xor i32 %2429, %2431
  %2433 = add nuw nsw i32 %2432, %2431
  %2434 = icmp eq i32 %2433, 2
  %2435 = zext i1 %2434 to i8
  store i8 %2435, i8* %38, align 1
  %2436 = sext i32 %2414 to i64
  store i64 %2436, i64* %R8.i1317, align 8
  %2437 = shl nsw i64 %2436, 3
  %2438 = add i64 %2409, %2437
  %2439 = add i64 %2406, 17
  store i64 %2439, i64* %3, align 8
  %2440 = inttoptr i64 %2438 to i64*
  %2441 = load i64, i64* %2440, align 8
  store i64 %2441, i64* %RDX.i1301, align 8
  %2442 = add i64 %2441, 16
  %2443 = add i64 %2406, 20
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i32*
  %2445 = load i32, i32* %2444, align 4
  %2446 = zext i32 %2445 to i64
  store i64 %2446, i64* %RAX.i1319, align 8
  %2447 = add i64 %2404, -24
  %2448 = add i64 %2406, 24
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2447 to i64*
  %2450 = load i64, i64* %2449, align 8
  store i64 %2450, i64* %RDX.i1301, align 8
  %2451 = add i64 %2450, 340
  %2452 = add i64 %2406, 30
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i32*
  %2454 = load i32, i32* %2453, align 4
  %2455 = add i32 %2454, %2445
  %2456 = zext i32 %2455 to i64
  store i64 %2456, i64* %RAX.i1319, align 8
  %2457 = icmp ult i32 %2455, %2445
  %2458 = icmp ult i32 %2455, %2454
  %2459 = or i1 %2457, %2458
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %14, align 1
  %2461 = and i32 %2455, 255
  %2462 = tail call i32 @llvm.ctpop.i32(i32 %2461)
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  %2465 = xor i8 %2464, 1
  store i8 %2465, i8* %21, align 1
  %2466 = xor i32 %2454, %2445
  %2467 = xor i32 %2466, %2455
  %2468 = lshr i32 %2467, 4
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  store i8 %2470, i8* %26, align 1
  %2471 = icmp eq i32 %2455, 0
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %29, align 1
  %2473 = lshr i32 %2455, 31
  %2474 = trunc i32 %2473 to i8
  store i8 %2474, i8* %32, align 1
  %2475 = lshr i32 %2445, 31
  %2476 = lshr i32 %2454, 31
  %2477 = xor i32 %2473, %2475
  %2478 = xor i32 %2473, %2476
  %2479 = add nuw nsw i32 %2477, %2478
  %2480 = icmp eq i32 %2479, 2
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %38, align 1
  %2482 = load i64, i64* %RBP.i, align 8
  %2483 = add i64 %2482, -48
  %2484 = add i64 %2406, 34
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i64*
  %2486 = load i64, i64* %2485, align 8
  store i64 %2486, i64* %RDX.i1301, align 8
  %2487 = add i64 %2482, -76
  %2488 = add i64 %2406, 38
  store i64 %2488, i64* %3, align 8
  %2489 = inttoptr i64 %2487 to i32*
  %2490 = load i32, i32* %2489, align 4
  %2491 = sext i32 %2490 to i64
  store i64 %2491, i64* %R8.i1317, align 8
  %2492 = shl nsw i64 %2491, 3
  %2493 = add i64 %2492, %2486
  %2494 = add i64 %2406, 42
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2493 to i64*
  %2496 = load i64, i64* %2495, align 8
  store i64 %2496, i64* %RDX.i1301, align 8
  %2497 = add i64 %2496, 16
  %2498 = add i64 %2406, 45
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2497 to i32*
  store i32 %2455, i32* %2499, align 4
  %2500 = load i64, i64* %RBP.i, align 8
  %2501 = add i64 %2500, -48
  %2502 = load i64, i64* %3, align 8
  %2503 = add i64 %2502, 4
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2501 to i64*
  %2505 = load i64, i64* %2504, align 8
  store i64 %2505, i64* %RDX.i1301, align 8
  %2506 = add i64 %2500, -76
  %2507 = add i64 %2502, 8
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i32*
  %2509 = load i32, i32* %2508, align 4
  %2510 = sext i32 %2509 to i64
  store i64 %2510, i64* %R8.i1317, align 8
  %2511 = shl nsw i64 %2510, 3
  %2512 = add i64 %2511, %2505
  %2513 = add i64 %2502, 12
  store i64 %2513, i64* %3, align 8
  %2514 = inttoptr i64 %2512 to i64*
  %2515 = load i64, i64* %2514, align 8
  store i64 %2515, i64* %RDX.i1301, align 8
  %2516 = add i64 %2515, 4
  %2517 = add i64 %2502, 19
  store i64 %2517, i64* %3, align 8
  %2518 = inttoptr i64 %2516 to i32*
  store i32 -987654321, i32* %2518, align 4
  %2519 = load i64, i64* %RBP.i, align 8
  %2520 = add i64 %2519, -80
  %2521 = load i64, i64* %3, align 8
  %2522 = add i64 %2521, 7
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2520 to i32*
  store i32 1, i32* %2523, align 4
  %.pre19 = load i64, i64* %3, align 8
  br label %block_.L_40852e

block_.L_40852e:                                  ; preds = %block_408541, %block_.L_40835c
  %2524 = phi i64 [ %2703, %block_408541 ], [ %.pre19, %block_.L_40835c ]
  %2525 = load i64, i64* %RBP.i, align 8
  %2526 = add i64 %2525, -80
  %2527 = add i64 %2524, 3
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i32*
  %2529 = load i32, i32* %2528, align 4
  %2530 = zext i32 %2529 to i64
  store i64 %2530, i64* %RAX.i1319, align 8
  %2531 = add i64 %2525, -24
  %2532 = add i64 %2524, 7
  store i64 %2532, i64* %3, align 8
  %2533 = inttoptr i64 %2531 to i64*
  %2534 = load i64, i64* %2533, align 8
  store i64 %2534, i64* %RCX.i1298, align 8
  %2535 = add i64 %2534, 136
  %2536 = add i64 %2524, 13
  store i64 %2536, i64* %3, align 8
  %2537 = inttoptr i64 %2535 to i32*
  %2538 = load i32, i32* %2537, align 4
  %2539 = sub i32 %2529, %2538
  %2540 = icmp ult i32 %2529, %2538
  %2541 = zext i1 %2540 to i8
  store i8 %2541, i8* %14, align 1
  %2542 = and i32 %2539, 255
  %2543 = tail call i32 @llvm.ctpop.i32(i32 %2542)
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  %2546 = xor i8 %2545, 1
  store i8 %2546, i8* %21, align 1
  %2547 = xor i32 %2538, %2529
  %2548 = xor i32 %2547, %2539
  %2549 = lshr i32 %2548, 4
  %2550 = trunc i32 %2549 to i8
  %2551 = and i8 %2550, 1
  store i8 %2551, i8* %26, align 1
  %2552 = icmp eq i32 %2539, 0
  %2553 = zext i1 %2552 to i8
  store i8 %2553, i8* %29, align 1
  %2554 = lshr i32 %2539, 31
  %2555 = trunc i32 %2554 to i8
  store i8 %2555, i8* %32, align 1
  %2556 = lshr i32 %2529, 31
  %2557 = lshr i32 %2538, 31
  %2558 = xor i32 %2557, %2556
  %2559 = xor i32 %2554, %2556
  %2560 = add nuw nsw i32 %2559, %2558
  %2561 = icmp eq i32 %2560, 2
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %38, align 1
  %2563 = icmp ne i8 %2555, 0
  %2564 = xor i1 %2563, %2561
  %.demorgan22 = or i1 %2552, %2564
  %.v23 = select i1 %.demorgan22, i64 19, i64 107
  %2565 = add i64 %2524, %.v23
  %2566 = add i64 %2525, -48
  %2567 = add i64 %2565, 4
  store i64 %2567, i64* %3, align 8
  %2568 = inttoptr i64 %2566 to i64*
  %2569 = load i64, i64* %2568, align 8
  store i64 %2569, i64* %RAX.i1319, align 8
  %2570 = add i64 %2525, -76
  br i1 %.demorgan22, label %block_408541, label %block_.L_408599

block_408541:                                     ; preds = %block_.L_40852e
  %2571 = add i64 %2565, 8
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = sext i32 %2573 to i64
  store i64 %2574, i64* %RCX.i1298, align 8
  %2575 = shl nsw i64 %2574, 3
  %2576 = add i64 %2575, %2569
  %2577 = add i64 %2565, 12
  store i64 %2577, i64* %3, align 8
  %2578 = inttoptr i64 %2576 to i64*
  %2579 = load i64, i64* %2578, align 8
  store i64 %2579, i64* %RAX.i1319, align 8
  %2580 = add i64 %2579, 4
  %2581 = add i64 %2565, 15
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i32*
  %2583 = load i32, i32* %2582, align 4
  %2584 = zext i32 %2583 to i64
  store i64 %2584, i64* %RDI.i1307, align 8
  %2585 = add i64 %2525, -56
  %2586 = add i64 %2565, 19
  store i64 %2586, i64* %3, align 8
  %2587 = inttoptr i64 %2585 to i64*
  %2588 = load i64, i64* %2587, align 8
  store i64 %2588, i64* %RAX.i1319, align 8
  %2589 = add i64 %2565, 23
  store i64 %2589, i64* %3, align 8
  %2590 = load i32, i32* %2572, align 4
  %2591 = sext i32 %2590 to i64
  store i64 %2591, i64* %RCX.i1298, align 8
  %2592 = shl nsw i64 %2591, 3
  %2593 = add i64 %2592, %2588
  %2594 = add i64 %2565, 27
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i64*
  %2596 = load i64, i64* %2595, align 8
  store i64 %2596, i64* %RAX.i1319, align 8
  %2597 = add i64 %2565, 31
  store i64 %2597, i64* %3, align 8
  %2598 = load i32, i32* %2528, align 4
  %2599 = sext i32 %2598 to i64
  store i64 %2599, i64* %RCX.i1298, align 8
  %2600 = shl nsw i64 %2599, 2
  %2601 = add i64 %2600, %2596
  %2602 = add i64 %2565, 34
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i32*
  %2604 = load i32, i32* %2603, align 4
  %2605 = zext i32 %2604 to i64
  store i64 %2605, i64* %RDX.i1301, align 8
  %2606 = add i64 %2565, 38
  store i64 %2606, i64* %3, align 8
  %2607 = load i64, i64* %2533, align 8
  store i64 %2607, i64* %RAX.i1319, align 8
  %2608 = add i64 %2607, 376
  %2609 = add i64 %2565, 45
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to i64*
  %2611 = load i64, i64* %2610, align 8
  store i64 %2611, i64* %RAX.i1319, align 8
  %2612 = add i64 %2565, 49
  store i64 %2612, i64* %3, align 8
  %2613 = load i32, i32* %2528, align 4
  %2614 = sext i32 %2613 to i64
  store i64 %2614, i64* %RCX.i1298, align 8
  %2615 = shl nsw i64 %2614, 2
  %2616 = add i64 %2611, %2615
  %2617 = add i64 %2565, 52
  store i64 %2617, i64* %3, align 8
  %2618 = inttoptr i64 %2616 to i32*
  %2619 = load i32, i32* %2618, align 4
  %2620 = add i32 %2619, %2604
  %2621 = zext i32 %2620 to i64
  store i64 %2621, i64* %RDX.i1301, align 8
  %2622 = icmp ult i32 %2620, %2604
  %2623 = icmp ult i32 %2620, %2619
  %2624 = or i1 %2622, %2623
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %14, align 1
  %2626 = and i32 %2620, 255
  %2627 = tail call i32 @llvm.ctpop.i32(i32 %2626)
  %2628 = trunc i32 %2627 to i8
  %2629 = and i8 %2628, 1
  %2630 = xor i8 %2629, 1
  store i8 %2630, i8* %21, align 1
  %2631 = xor i32 %2619, %2604
  %2632 = xor i32 %2631, %2620
  %2633 = lshr i32 %2632, 4
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  store i8 %2635, i8* %26, align 1
  %2636 = icmp eq i32 %2620, 0
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %29, align 1
  %2638 = lshr i32 %2620, 31
  %2639 = trunc i32 %2638 to i8
  store i8 %2639, i8* %32, align 1
  %2640 = lshr i32 %2604, 31
  %2641 = lshr i32 %2619, 31
  %2642 = xor i32 %2638, %2640
  %2643 = xor i32 %2638, %2641
  %2644 = add nuw nsw i32 %2642, %2643
  %2645 = icmp eq i32 %2644, 2
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %38, align 1
  store i64 %2621, i64* %RSI.i1295, align 8
  %2647 = add i64 %2565, 130159
  %2648 = add i64 %2565, 59
  %2649 = load i64, i64* %6, align 8
  %2650 = add i64 %2649, -8
  %2651 = inttoptr i64 %2650 to i64*
  store i64 %2648, i64* %2651, align 8
  store i64 %2650, i64* %6, align 8
  store i64 %2647, i64* %3, align 8
  %call2_408577 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2647, %struct.Memory* %call2_407fb9)
  %2652 = load i64, i64* %RBP.i, align 8
  %2653 = add i64 %2652, -48
  %2654 = load i64, i64* %3, align 8
  %2655 = add i64 %2654, 4
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2653 to i64*
  %2657 = load i64, i64* %2656, align 8
  store i64 %2657, i64* %RCX.i1298, align 8
  %2658 = add i64 %2652, -76
  %2659 = add i64 %2654, 8
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2658 to i32*
  %2661 = load i32, i32* %2660, align 4
  %2662 = sext i32 %2661 to i64
  store i64 %2662, i64* %R8.i1317, align 8
  %2663 = shl nsw i64 %2662, 3
  %2664 = add i64 %2663, %2657
  %2665 = add i64 %2654, 12
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to i64*
  %2667 = load i64, i64* %2666, align 8
  store i64 %2667, i64* %RCX.i1298, align 8
  %2668 = add i64 %2667, 4
  %2669 = load i32, i32* %EAX.i1214, align 4
  %2670 = add i64 %2654, 15
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2668 to i32*
  store i32 %2669, i32* %2671, align 4
  %2672 = load i64, i64* %RBP.i, align 8
  %2673 = add i64 %2672, -80
  %2674 = load i64, i64* %3, align 8
  %2675 = add i64 %2674, 3
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2673 to i32*
  %2677 = load i32, i32* %2676, align 4
  %2678 = add i32 %2677, 1
  %2679 = zext i32 %2678 to i64
  store i64 %2679, i64* %RAX.i1319, align 8
  %2680 = icmp eq i32 %2677, -1
  %2681 = icmp eq i32 %2678, 0
  %2682 = or i1 %2680, %2681
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %14, align 1
  %2684 = and i32 %2678, 255
  %2685 = tail call i32 @llvm.ctpop.i32(i32 %2684)
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  %2688 = xor i8 %2687, 1
  store i8 %2688, i8* %21, align 1
  %2689 = xor i32 %2678, %2677
  %2690 = lshr i32 %2689, 4
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  store i8 %2692, i8* %26, align 1
  %2693 = zext i1 %2681 to i8
  store i8 %2693, i8* %29, align 1
  %2694 = lshr i32 %2678, 31
  %2695 = trunc i32 %2694 to i8
  store i8 %2695, i8* %32, align 1
  %2696 = lshr i32 %2677, 31
  %2697 = xor i32 %2694, %2696
  %2698 = add nuw nsw i32 %2697, %2694
  %2699 = icmp eq i32 %2698, 2
  %2700 = zext i1 %2699 to i8
  store i8 %2700, i8* %38, align 1
  %2701 = add i64 %2674, 9
  store i64 %2701, i64* %3, align 8
  store i32 %2678, i32* %2676, align 4
  %2702 = load i64, i64* %3, align 8
  %2703 = add i64 %2702, -102
  store i64 %2703, i64* %3, align 8
  br label %block_.L_40852e

block_.L_408599:                                  ; preds = %block_.L_40852e
  %2704 = add i64 %2565, 7
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2570 to i32*
  %2706 = load i32, i32* %2705, align 4
  %2707 = add i32 %2706, -1
  %2708 = zext i32 %2707 to i64
  store i64 %2708, i64* %RCX.i1298, align 8
  %2709 = icmp eq i32 %2706, 0
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %14, align 1
  %2711 = and i32 %2707, 255
  %2712 = tail call i32 @llvm.ctpop.i32(i32 %2711)
  %2713 = trunc i32 %2712 to i8
  %2714 = and i8 %2713, 1
  %2715 = xor i8 %2714, 1
  store i8 %2715, i8* %21, align 1
  %2716 = xor i32 %2707, %2706
  %2717 = lshr i32 %2716, 4
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  store i8 %2719, i8* %26, align 1
  %2720 = icmp eq i32 %2707, 0
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %29, align 1
  %2722 = lshr i32 %2707, 31
  %2723 = trunc i32 %2722 to i8
  store i8 %2723, i8* %32, align 1
  %2724 = lshr i32 %2706, 31
  %2725 = xor i32 %2722, %2724
  %2726 = add nuw nsw i32 %2725, %2724
  %2727 = icmp eq i32 %2726, 2
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %38, align 1
  %2729 = sext i32 %2707 to i64
  store i64 %2729, i64* %RDX.i1301, align 8
  %2730 = shl nsw i64 %2729, 3
  %2731 = add i64 %2569, %2730
  %2732 = add i64 %2565, 17
  store i64 %2732, i64* %3, align 8
  %2733 = inttoptr i64 %2731 to i64*
  %2734 = load i64, i64* %2733, align 8
  store i64 %2734, i64* %RAX.i1319, align 8
  %2735 = add i64 %2734, 12
  %2736 = add i64 %2565, 20
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2735 to i32*
  %2738 = load i32, i32* %2737, align 4
  %2739 = zext i32 %2738 to i64
  store i64 %2739, i64* %RCX.i1298, align 8
  %2740 = add i64 %2565, 24
  store i64 %2740, i64* %3, align 8
  %2741 = load i64, i64* %2533, align 8
  store i64 %2741, i64* %RAX.i1319, align 8
  %2742 = add i64 %2741, 364
  %2743 = add i64 %2565, 30
  store i64 %2743, i64* %3, align 8
  %2744 = inttoptr i64 %2742 to i32*
  %2745 = load i32, i32* %2744, align 4
  %2746 = add i32 %2745, %2738
  %2747 = zext i32 %2746 to i64
  store i64 %2747, i64* %RCX.i1298, align 8
  %2748 = icmp ult i32 %2746, %2738
  %2749 = icmp ult i32 %2746, %2745
  %2750 = or i1 %2748, %2749
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %14, align 1
  %2752 = and i32 %2746, 255
  %2753 = tail call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  store i8 %2756, i8* %21, align 1
  %2757 = xor i32 %2745, %2738
  %2758 = xor i32 %2757, %2746
  %2759 = lshr i32 %2758, 4
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  store i8 %2761, i8* %26, align 1
  %2762 = icmp eq i32 %2746, 0
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %29, align 1
  %2764 = lshr i32 %2746, 31
  %2765 = trunc i32 %2764 to i8
  store i8 %2765, i8* %32, align 1
  %2766 = lshr i32 %2738, 31
  %2767 = lshr i32 %2745, 31
  %2768 = xor i32 %2764, %2766
  %2769 = xor i32 %2764, %2767
  %2770 = add nuw nsw i32 %2768, %2769
  %2771 = icmp eq i32 %2770, 2
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %38, align 1
  %2773 = add i64 %2565, 34
  store i64 %2773, i64* %3, align 8
  %2774 = load i64, i64* %2568, align 8
  store i64 %2774, i64* %RAX.i1319, align 8
  %2775 = load i64, i64* %RBP.i, align 8
  %2776 = add i64 %2775, -76
  %2777 = add i64 %2565, 38
  store i64 %2777, i64* %3, align 8
  %2778 = inttoptr i64 %2776 to i32*
  %2779 = load i32, i32* %2778, align 4
  %2780 = sext i32 %2779 to i64
  store i64 %2780, i64* %RDX.i1301, align 8
  %2781 = shl nsw i64 %2780, 3
  %2782 = add i64 %2781, %2774
  %2783 = add i64 %2565, 42
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2782 to i64*
  %2785 = load i64, i64* %2784, align 8
  store i64 %2785, i64* %RAX.i1319, align 8
  %2786 = add i64 %2785, 4
  %2787 = add i64 %2565, 45
  store i64 %2787, i64* %3, align 8
  %2788 = inttoptr i64 %2786 to i32*
  %2789 = load i32, i32* %2788, align 4
  %2790 = zext i32 %2789 to i64
  store i64 %2790, i64* %RSI.i1295, align 8
  %2791 = add i64 %2775, -24
  %2792 = add i64 %2565, 49
  store i64 %2792, i64* %3, align 8
  %2793 = inttoptr i64 %2791 to i64*
  %2794 = load i64, i64* %2793, align 8
  store i64 %2794, i64* %RAX.i1319, align 8
  %2795 = add i64 %2794, 348
  %2796 = add i64 %2565, 55
  store i64 %2796, i64* %3, align 8
  %2797 = inttoptr i64 %2795 to i32*
  %2798 = load i32, i32* %2797, align 4
  %2799 = add i32 %2798, %2789
  %2800 = zext i32 %2799 to i64
  store i64 %2800, i64* %RSI.i1295, align 8
  %2801 = icmp ult i32 %2799, %2789
  %2802 = icmp ult i32 %2799, %2798
  %2803 = or i1 %2801, %2802
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %14, align 1
  %2805 = and i32 %2799, 255
  %2806 = tail call i32 @llvm.ctpop.i32(i32 %2805)
  %2807 = trunc i32 %2806 to i8
  %2808 = and i8 %2807, 1
  %2809 = xor i8 %2808, 1
  store i8 %2809, i8* %21, align 1
  %2810 = xor i32 %2798, %2789
  %2811 = xor i32 %2810, %2799
  %2812 = lshr i32 %2811, 4
  %2813 = trunc i32 %2812 to i8
  %2814 = and i8 %2813, 1
  store i8 %2814, i8* %26, align 1
  %2815 = icmp eq i32 %2799, 0
  %2816 = zext i1 %2815 to i8
  store i8 %2816, i8* %29, align 1
  %2817 = lshr i32 %2799, 31
  %2818 = trunc i32 %2817 to i8
  store i8 %2818, i8* %32, align 1
  %2819 = lshr i32 %2789, 31
  %2820 = lshr i32 %2798, 31
  %2821 = xor i32 %2817, %2819
  %2822 = xor i32 %2817, %2820
  %2823 = add nuw nsw i32 %2821, %2822
  %2824 = icmp eq i32 %2823, 2
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %38, align 1
  %2826 = load i32, i32* %ECX.i607, align 4
  %2827 = zext i32 %2826 to i64
  store i64 %2827, i64* %RDI.i1307, align 8
  %2828 = add i64 %2565, 130071
  %2829 = add i64 %2565, 62
  %2830 = load i64, i64* %6, align 8
  %2831 = add i64 %2830, -8
  %2832 = inttoptr i64 %2831 to i64*
  store i64 %2829, i64* %2832, align 8
  store i64 %2831, i64* %6, align 8
  store i64 %2828, i64* %3, align 8
  %call2_4085d2 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2828, %struct.Memory* %call2_407fb9)
  %2833 = load i64, i64* %RBP.i, align 8
  %2834 = add i64 %2833, -48
  %2835 = load i64, i64* %3, align 8
  %2836 = add i64 %2835, 4
  store i64 %2836, i64* %3, align 8
  %2837 = inttoptr i64 %2834 to i64*
  %2838 = load i64, i64* %2837, align 8
  store i64 %2838, i64* %RDX.i1301, align 8
  %2839 = add i64 %2833, -76
  %2840 = add i64 %2835, 8
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2839 to i32*
  %2842 = load i32, i32* %2841, align 4
  %2843 = sext i32 %2842 to i64
  store i64 %2843, i64* %R8.i1317, align 8
  %2844 = shl nsw i64 %2843, 3
  %2845 = add i64 %2844, %2838
  %2846 = add i64 %2835, 12
  store i64 %2846, i64* %3, align 8
  %2847 = inttoptr i64 %2845 to i64*
  %2848 = load i64, i64* %2847, align 8
  store i64 %2848, i64* %RDX.i1301, align 8
  %2849 = add i64 %2848, 12
  %2850 = load i32, i32* %EAX.i1214, align 4
  %2851 = add i64 %2835, 15
  store i64 %2851, i64* %3, align 8
  %2852 = inttoptr i64 %2849 to i32*
  store i32 %2850, i32* %2852, align 4
  %2853 = load i64, i64* %RBP.i, align 8
  %2854 = add i64 %2853, -48
  %2855 = load i64, i64* %3, align 8
  %2856 = add i64 %2855, 4
  store i64 %2856, i64* %3, align 8
  %2857 = inttoptr i64 %2854 to i64*
  %2858 = load i64, i64* %2857, align 8
  store i64 %2858, i64* %RDX.i1301, align 8
  %2859 = add i64 %2853, -76
  %2860 = add i64 %2855, 8
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = sext i32 %2862 to i64
  store i64 %2863, i64* %R8.i1317, align 8
  %2864 = shl nsw i64 %2863, 3
  %2865 = add i64 %2864, %2858
  %2866 = add i64 %2855, 12
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2865 to i64*
  %2868 = load i64, i64* %2867, align 8
  store i64 %2868, i64* %RDX.i1301, align 8
  %2869 = add i64 %2868, 16
  %2870 = add i64 %2855, 15
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i32*
  %2872 = load i32, i32* %2871, align 4
  %2873 = zext i32 %2872 to i64
  store i64 %2873, i64* %RAX.i1319, align 8
  %2874 = add i64 %2853, -24
  %2875 = add i64 %2855, 19
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i64*
  %2877 = load i64, i64* %2876, align 8
  store i64 %2877, i64* %RDX.i1301, align 8
  %2878 = add i64 %2877, 336
  %2879 = add i64 %2855, 25
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = add i32 %2881, %2872
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RAX.i1319, align 8
  %2884 = icmp ult i32 %2882, %2872
  %2885 = icmp ult i32 %2882, %2881
  %2886 = or i1 %2884, %2885
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %14, align 1
  %2888 = and i32 %2882, 255
  %2889 = tail call i32 @llvm.ctpop.i32(i32 %2888)
  %2890 = trunc i32 %2889 to i8
  %2891 = and i8 %2890, 1
  %2892 = xor i8 %2891, 1
  store i8 %2892, i8* %21, align 1
  %2893 = xor i32 %2881, %2872
  %2894 = xor i32 %2893, %2882
  %2895 = lshr i32 %2894, 4
  %2896 = trunc i32 %2895 to i8
  %2897 = and i8 %2896, 1
  store i8 %2897, i8* %26, align 1
  %2898 = icmp eq i32 %2882, 0
  %2899 = zext i1 %2898 to i8
  store i8 %2899, i8* %29, align 1
  %2900 = lshr i32 %2882, 31
  %2901 = trunc i32 %2900 to i8
  store i8 %2901, i8* %32, align 1
  %2902 = lshr i32 %2872, 31
  %2903 = lshr i32 %2881, 31
  %2904 = xor i32 %2900, %2902
  %2905 = xor i32 %2900, %2903
  %2906 = add nuw nsw i32 %2904, %2905
  %2907 = icmp eq i32 %2906, 2
  %2908 = zext i1 %2907 to i8
  store i8 %2908, i8* %38, align 1
  %2909 = add i64 %2855, 29
  store i64 %2909, i64* %3, align 8
  %2910 = load i64, i64* %2857, align 8
  store i64 %2910, i64* %RDX.i1301, align 8
  %2911 = add i64 %2855, 33
  store i64 %2911, i64* %3, align 8
  %2912 = load i32, i32* %2861, align 4
  %2913 = sext i32 %2912 to i64
  store i64 %2913, i64* %R8.i1317, align 8
  %2914 = shl nsw i64 %2913, 3
  %2915 = add i64 %2914, %2910
  %2916 = add i64 %2855, 37
  store i64 %2916, i64* %3, align 8
  %2917 = inttoptr i64 %2915 to i64*
  %2918 = load i64, i64* %2917, align 8
  store i64 %2918, i64* %RDX.i1301, align 8
  %2919 = add i64 %2918, 12
  %2920 = add i64 %2855, 40
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i32*
  %2922 = load i32, i32* %2921, align 4
  %2923 = zext i32 %2922 to i64
  store i64 %2923, i64* %RCX.i1298, align 8
  %2924 = add i64 %2855, 44
  store i64 %2924, i64* %3, align 8
  %2925 = load i64, i64* %2876, align 8
  store i64 %2925, i64* %RDX.i1301, align 8
  %2926 = add i64 %2925, 360
  %2927 = add i64 %2855, 50
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2926 to i32*
  %2929 = load i32, i32* %2928, align 4
  %2930 = add i32 %2929, %2922
  %2931 = zext i32 %2930 to i64
  store i64 %2931, i64* %RCX.i1298, align 8
  %2932 = icmp ult i32 %2930, %2922
  %2933 = icmp ult i32 %2930, %2929
  %2934 = or i1 %2932, %2933
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %14, align 1
  %2936 = and i32 %2930, 255
  %2937 = tail call i32 @llvm.ctpop.i32(i32 %2936)
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  %2940 = xor i8 %2939, 1
  store i8 %2940, i8* %21, align 1
  %2941 = xor i32 %2929, %2922
  %2942 = xor i32 %2941, %2930
  %2943 = lshr i32 %2942, 4
  %2944 = trunc i32 %2943 to i8
  %2945 = and i8 %2944, 1
  store i8 %2945, i8* %26, align 1
  %2946 = icmp eq i32 %2930, 0
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %29, align 1
  %2948 = lshr i32 %2930, 31
  %2949 = trunc i32 %2948 to i8
  store i8 %2949, i8* %32, align 1
  %2950 = lshr i32 %2922, 31
  %2951 = lshr i32 %2929, 31
  %2952 = xor i32 %2948, %2950
  %2953 = xor i32 %2948, %2951
  %2954 = add nuw nsw i32 %2952, %2953
  %2955 = icmp eq i32 %2954, 2
  %2956 = zext i1 %2955 to i8
  store i8 %2956, i8* %38, align 1
  store i64 %2883, i64* %RDI.i1307, align 8
  store i64 %2931, i64* %RSI.i1295, align 8
  %2957 = add i64 %2855, 129994
  %2958 = add i64 %2855, 59
  %2959 = load i64, i64* %6, align 8
  %2960 = add i64 %2959, -8
  %2961 = inttoptr i64 %2960 to i64*
  store i64 %2958, i64* %2961, align 8
  store i64 %2960, i64* %6, align 8
  store i64 %2957, i64* %3, align 8
  %call2_40861c = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2957, %struct.Memory* %call2_407fb9)
  %2962 = load i64, i64* %RBP.i, align 8
  %2963 = add i64 %2962, -48
  %2964 = load i64, i64* %3, align 8
  %2965 = add i64 %2964, 4
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2963 to i64*
  %2967 = load i64, i64* %2966, align 8
  store i64 %2967, i64* %RDX.i1301, align 8
  %2968 = add i64 %2962, -76
  %2969 = add i64 %2964, 8
  store i64 %2969, i64* %3, align 8
  %2970 = inttoptr i64 %2968 to i32*
  %2971 = load i32, i32* %2970, align 4
  %2972 = sext i32 %2971 to i64
  store i64 %2972, i64* %R8.i1317, align 8
  %2973 = shl nsw i64 %2972, 3
  %2974 = add i64 %2973, %2967
  %2975 = add i64 %2964, 12
  store i64 %2975, i64* %3, align 8
  %2976 = inttoptr i64 %2974 to i64*
  %2977 = load i64, i64* %2976, align 8
  store i64 %2977, i64* %RDX.i1301, align 8
  %2978 = load i32, i32* %EAX.i1214, align 4
  %2979 = add i64 %2964, 14
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2977 to i32*
  store i32 %2978, i32* %2980, align 4
  %2981 = load i64, i64* %RBP.i, align 8
  %2982 = add i64 %2981, -48
  %2983 = load i64, i64* %3, align 8
  %2984 = add i64 %2983, 4
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2982 to i64*
  %2986 = load i64, i64* %2985, align 8
  store i64 %2986, i64* %RDX.i1301, align 8
  %2987 = add i64 %2981, -76
  %2988 = add i64 %2983, 7
  store i64 %2988, i64* %3, align 8
  %2989 = inttoptr i64 %2987 to i32*
  %2990 = load i32, i32* %2989, align 4
  %2991 = add i32 %2990, -1
  %2992 = zext i32 %2991 to i64
  store i64 %2992, i64* %RAX.i1319, align 8
  %2993 = icmp eq i32 %2990, 0
  %2994 = zext i1 %2993 to i8
  store i8 %2994, i8* %14, align 1
  %2995 = and i32 %2991, 255
  %2996 = tail call i32 @llvm.ctpop.i32(i32 %2995)
  %2997 = trunc i32 %2996 to i8
  %2998 = and i8 %2997, 1
  %2999 = xor i8 %2998, 1
  store i8 %2999, i8* %21, align 1
  %3000 = xor i32 %2991, %2990
  %3001 = lshr i32 %3000, 4
  %3002 = trunc i32 %3001 to i8
  %3003 = and i8 %3002, 1
  store i8 %3003, i8* %26, align 1
  %3004 = icmp eq i32 %2991, 0
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %29, align 1
  %3006 = lshr i32 %2991, 31
  %3007 = trunc i32 %3006 to i8
  store i8 %3007, i8* %32, align 1
  %3008 = lshr i32 %2990, 31
  %3009 = xor i32 %3006, %3008
  %3010 = add nuw nsw i32 %3009, %3008
  %3011 = icmp eq i32 %3010, 2
  %3012 = zext i1 %3011 to i8
  store i8 %3012, i8* %38, align 1
  %3013 = sext i32 %2991 to i64
  store i64 %3013, i64* %R8.i1317, align 8
  %3014 = shl nsw i64 %3013, 3
  %3015 = add i64 %2986, %3014
  %3016 = add i64 %2983, 17
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i64*
  %3018 = load i64, i64* %3017, align 8
  store i64 %3018, i64* %RDX.i1301, align 8
  %3019 = add i64 %3018, 8
  %3020 = add i64 %2983, 20
  store i64 %3020, i64* %3, align 8
  %3021 = inttoptr i64 %3019 to i32*
  %3022 = load i32, i32* %3021, align 4
  %3023 = zext i32 %3022 to i64
  store i64 %3023, i64* %RAX.i1319, align 8
  %3024 = add i64 %2981, -24
  %3025 = add i64 %2983, 24
  store i64 %3025, i64* %3, align 8
  %3026 = inttoptr i64 %3024 to i64*
  %3027 = load i64, i64* %3026, align 8
  store i64 %3027, i64* %RDX.i1301, align 8
  %3028 = add i64 %3027, 356
  %3029 = add i64 %2983, 30
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i32*
  %3031 = load i32, i32* %3030, align 4
  %3032 = add i32 %3031, %3022
  %3033 = zext i32 %3032 to i64
  store i64 %3033, i64* %RAX.i1319, align 8
  %3034 = icmp ult i32 %3032, %3022
  %3035 = icmp ult i32 %3032, %3031
  %3036 = or i1 %3034, %3035
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %14, align 1
  %3038 = and i32 %3032, 255
  %3039 = tail call i32 @llvm.ctpop.i32(i32 %3038)
  %3040 = trunc i32 %3039 to i8
  %3041 = and i8 %3040, 1
  %3042 = xor i8 %3041, 1
  store i8 %3042, i8* %21, align 1
  %3043 = xor i32 %3031, %3022
  %3044 = xor i32 %3043, %3032
  %3045 = lshr i32 %3044, 4
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  store i8 %3047, i8* %26, align 1
  %3048 = icmp eq i32 %3032, 0
  %3049 = zext i1 %3048 to i8
  store i8 %3049, i8* %29, align 1
  %3050 = lshr i32 %3032, 31
  %3051 = trunc i32 %3050 to i8
  store i8 %3051, i8* %32, align 1
  %3052 = lshr i32 %3022, 31
  %3053 = lshr i32 %3031, 31
  %3054 = xor i32 %3050, %3052
  %3055 = xor i32 %3050, %3053
  %3056 = add nuw nsw i32 %3054, %3055
  %3057 = icmp eq i32 %3056, 2
  %3058 = zext i1 %3057 to i8
  store i8 %3058, i8* %38, align 1
  %3059 = load i64, i64* %RBP.i, align 8
  %3060 = add i64 %3059, -48
  %3061 = add i64 %2983, 34
  store i64 %3061, i64* %3, align 8
  %3062 = inttoptr i64 %3060 to i64*
  %3063 = load i64, i64* %3062, align 8
  store i64 %3063, i64* %RDX.i1301, align 8
  %3064 = add i64 %3059, -76
  %3065 = add i64 %2983, 38
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to i32*
  %3067 = load i32, i32* %3066, align 4
  %3068 = sext i32 %3067 to i64
  store i64 %3068, i64* %R8.i1317, align 8
  %3069 = shl nsw i64 %3068, 3
  %3070 = add i64 %3069, %3063
  %3071 = add i64 %2983, 42
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to i64*
  %3073 = load i64, i64* %3072, align 8
  store i64 %3073, i64* %RDX.i1301, align 8
  %3074 = add i64 %3073, 4
  %3075 = add i64 %2983, 45
  store i64 %3075, i64* %3, align 8
  %3076 = inttoptr i64 %3074 to i32*
  %3077 = load i32, i32* %3076, align 4
  %3078 = zext i32 %3077 to i64
  store i64 %3078, i64* %RCX.i1298, align 8
  %3079 = add i64 %3059, -24
  %3080 = add i64 %2983, 49
  store i64 %3080, i64* %3, align 8
  %3081 = inttoptr i64 %3079 to i64*
  %3082 = load i64, i64* %3081, align 8
  store i64 %3082, i64* %RDX.i1301, align 8
  %3083 = add i64 %3082, 344
  %3084 = add i64 %2983, 55
  store i64 %3084, i64* %3, align 8
  %3085 = inttoptr i64 %3083 to i32*
  %3086 = load i32, i32* %3085, align 4
  %3087 = add i32 %3086, %3077
  %3088 = zext i32 %3087 to i64
  store i64 %3088, i64* %RCX.i1298, align 8
  %3089 = icmp ult i32 %3087, %3077
  %3090 = icmp ult i32 %3087, %3086
  %3091 = or i1 %3089, %3090
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %14, align 1
  %3093 = and i32 %3087, 255
  %3094 = tail call i32 @llvm.ctpop.i32(i32 %3093)
  %3095 = trunc i32 %3094 to i8
  %3096 = and i8 %3095, 1
  %3097 = xor i8 %3096, 1
  store i8 %3097, i8* %21, align 1
  %3098 = xor i32 %3086, %3077
  %3099 = xor i32 %3098, %3087
  %3100 = lshr i32 %3099, 4
  %3101 = trunc i32 %3100 to i8
  %3102 = and i8 %3101, 1
  store i8 %3102, i8* %26, align 1
  %3103 = icmp eq i32 %3087, 0
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %29, align 1
  %3105 = lshr i32 %3087, 31
  %3106 = trunc i32 %3105 to i8
  store i8 %3106, i8* %32, align 1
  %3107 = lshr i32 %3077, 31
  %3108 = lshr i32 %3086, 31
  %3109 = xor i32 %3105, %3107
  %3110 = xor i32 %3105, %3108
  %3111 = add nuw nsw i32 %3109, %3110
  %3112 = icmp eq i32 %3111, 2
  %3113 = zext i1 %3112 to i8
  store i8 %3113, i8* %38, align 1
  %3114 = load i32, i32* %EAX.i1214, align 4
  %3115 = zext i32 %3114 to i64
  store i64 %3115, i64* %RDI.i1307, align 8
  store i64 %3088, i64* %RSI.i1295, align 8
  %3116 = add i64 %2983, 129921
  %3117 = add i64 %2983, 64
  %3118 = load i64, i64* %6, align 8
  %3119 = add i64 %3118, -8
  %3120 = inttoptr i64 %3119 to i64*
  store i64 %3117, i64* %3120, align 8
  store i64 %3119, i64* %6, align 8
  store i64 %3116, i64* %3, align 8
  %call2_40866a = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %3116, %struct.Memory* %call2_407fb9)
  %3121 = load i64, i64* %RBP.i, align 8
  %3122 = add i64 %3121, -48
  %3123 = load i64, i64* %3, align 8
  %3124 = add i64 %3123, 4
  store i64 %3124, i64* %3, align 8
  %3125 = inttoptr i64 %3122 to i64*
  %3126 = load i64, i64* %3125, align 8
  store i64 %3126, i64* %RDX.i1301, align 8
  %3127 = add i64 %3121, -76
  %3128 = add i64 %3123, 8
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = sext i32 %3130 to i64
  store i64 %3131, i64* %R8.i1317, align 8
  %3132 = shl nsw i64 %3131, 3
  %3133 = add i64 %3132, %3126
  %3134 = add i64 %3123, 12
  store i64 %3134, i64* %3, align 8
  %3135 = inttoptr i64 %3133 to i64*
  %3136 = load i64, i64* %3135, align 8
  store i64 %3136, i64* %RDX.i1301, align 8
  %3137 = add i64 %3136, 8
  %3138 = load i32, i32* %EAX.i1214, align 4
  %3139 = add i64 %3123, 15
  store i64 %3139, i64* %3, align 8
  %3140 = inttoptr i64 %3137 to i32*
  store i32 %3138, i32* %3140, align 4
  %3141 = load i64, i64* %RBP.i, align 8
  %3142 = add i64 %3141, -76
  %3143 = load i64, i64* %3, align 8
  %3144 = add i64 %3143, 3
  store i64 %3144, i64* %3, align 8
  %3145 = inttoptr i64 %3142 to i32*
  %3146 = load i32, i32* %3145, align 4
  %3147 = add i32 %3146, 1
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RAX.i1319, align 8
  %3149 = icmp eq i32 %3146, -1
  %3150 = icmp eq i32 %3147, 0
  %3151 = or i1 %3149, %3150
  %3152 = zext i1 %3151 to i8
  store i8 %3152, i8* %14, align 1
  %3153 = and i32 %3147, 255
  %3154 = tail call i32 @llvm.ctpop.i32(i32 %3153)
  %3155 = trunc i32 %3154 to i8
  %3156 = and i8 %3155, 1
  %3157 = xor i8 %3156, 1
  store i8 %3157, i8* %21, align 1
  %3158 = xor i32 %3147, %3146
  %3159 = lshr i32 %3158, 4
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  store i8 %3161, i8* %26, align 1
  %3162 = zext i1 %3150 to i8
  store i8 %3162, i8* %29, align 1
  %3163 = lshr i32 %3147, 31
  %3164 = trunc i32 %3163 to i8
  store i8 %3164, i8* %32, align 1
  %3165 = lshr i32 %3146, 31
  %3166 = xor i32 %3163, %3165
  %3167 = add nuw nsw i32 %3166, %3163
  %3168 = icmp eq i32 %3167, 2
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %38, align 1
  %3170 = add i64 %3143, 9
  store i64 %3170, i64* %3, align 8
  store i32 %3147, i32* %3145, align 4
  %3171 = load i64, i64* %3, align 8
  %3172 = add i64 %3171, -1557
  store i64 %3172, i64* %3, align 8
  br label %block_.L_408072

block_.L_40868c:                                  ; preds = %block_.L_408072
  %3173 = add i64 %323, -48
  %3174 = add i64 %359, 4
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to i64*
  %3176 = load i64, i64* %3175, align 8
  store i64 %3176, i64* %RAX.i1319, align 8
  %3177 = add i64 %359, 8
  store i64 %3177, i64* %3, align 8
  %3178 = load i32, i32* %331, align 4
  %3179 = sext i32 %3178 to i64
  store i64 %3179, i64* %RCX.i1298, align 8
  %3180 = shl nsw i64 %3179, 3
  %3181 = add i64 %3180, %3176
  %3182 = add i64 %359, 12
  store i64 %3182, i64* %3, align 8
  %3183 = inttoptr i64 %3181 to i64*
  %3184 = load i64, i64* %3183, align 8
  store i64 %3184, i64* %RAX.i1319, align 8
  %3185 = add i64 %3184, 8
  %3186 = add i64 %359, 15
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i32*
  %3188 = load i32, i32* %3187, align 4
  %3189 = zext i32 %3188 to i64
  store i64 %3189, i64* %RDX.i1301, align 8
  %3190 = add i64 %323, -24
  %3191 = add i64 %359, 19
  store i64 %3191, i64* %3, align 8
  %3192 = inttoptr i64 %3190 to i64*
  %3193 = load i64, i64* %3192, align 8
  store i64 %3193, i64* %RAX.i1319, align 8
  %3194 = add i64 %3193, 352
  %3195 = add i64 %359, 25
  store i64 %3195, i64* %3, align 8
  %3196 = inttoptr i64 %3194 to i32*
  %3197 = load i32, i32* %3196, align 4
  %3198 = add i32 %3197, %3188
  %3199 = zext i32 %3198 to i64
  store i64 %3199, i64* %RDX.i1301, align 8
  %3200 = icmp ult i32 %3198, %3188
  %3201 = icmp ult i32 %3198, %3197
  %3202 = or i1 %3200, %3201
  %3203 = zext i1 %3202 to i8
  store i8 %3203, i8* %14, align 1
  %3204 = and i32 %3198, 255
  %3205 = tail call i32 @llvm.ctpop.i32(i32 %3204)
  %3206 = trunc i32 %3205 to i8
  %3207 = and i8 %3206, 1
  %3208 = xor i8 %3207, 1
  store i8 %3208, i8* %21, align 1
  %3209 = xor i32 %3197, %3188
  %3210 = xor i32 %3209, %3198
  %3211 = lshr i32 %3210, 4
  %3212 = trunc i32 %3211 to i8
  %3213 = and i8 %3212, 1
  store i8 %3213, i8* %26, align 1
  %3214 = icmp eq i32 %3198, 0
  %3215 = zext i1 %3214 to i8
  store i8 %3215, i8* %29, align 1
  %3216 = lshr i32 %3198, 31
  %3217 = trunc i32 %3216 to i8
  store i8 %3217, i8* %32, align 1
  %3218 = lshr i32 %3188, 31
  %3219 = lshr i32 %3197, 31
  %3220 = xor i32 %3216, %3218
  %3221 = xor i32 %3216, %3219
  %3222 = add nuw nsw i32 %3220, %3221
  %3223 = icmp eq i32 %3222, 2
  %3224 = zext i1 %3223 to i8
  store i8 %3224, i8* %38, align 1
  %3225 = add i64 %323, -84
  %3226 = add i64 %359, 28
  store i64 %3226, i64* %3, align 8
  %3227 = inttoptr i64 %3225 to i32*
  store i32 %3198, i32* %3227, align 4
  %3228 = load i64, i64* %RBP.i, align 8
  %3229 = add i64 %3228, -32
  %3230 = load i64, i64* %3, align 8
  %3231 = add i64 %3230, 5
  store i64 %3231, i64* %3, align 8
  %3232 = inttoptr i64 %3229 to i64*
  %3233 = load i64, i64* %3232, align 8
  store i8 0, i8* %14, align 1
  %3234 = trunc i64 %3233 to i32
  %3235 = and i32 %3234, 255
  %3236 = tail call i32 @llvm.ctpop.i32(i32 %3235)
  %3237 = trunc i32 %3236 to i8
  %3238 = and i8 %3237, 1
  %3239 = xor i8 %3238, 1
  store i8 %3239, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3240 = icmp eq i64 %3233, 0
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %29, align 1
  %3242 = lshr i64 %3233, 63
  %3243 = trunc i64 %3242 to i8
  store i8 %3243, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v24 = select i1 %3240, i64 27, i64 11
  %3244 = add i64 %3230, %.v24
  %3245 = add i64 %3228, -40
  %3246 = add i64 %3244, 4
  store i64 %3246, i64* %3, align 8
  %3247 = inttoptr i64 %3245 to i64*
  %3248 = load i64, i64* %3247, align 8
  br i1 %3240, label %block_.L_4086c3, label %block_4086b3

block_4086b3:                                     ; preds = %block_.L_40868c
  store i64 %3248, i64* %RAX.i1319, align 8
  %3249 = add i64 %3244, 8
  store i64 %3249, i64* %3, align 8
  %3250 = load i64, i64* %3232, align 8
  store i64 %3250, i64* %RCX.i1298, align 8
  %3251 = add i64 %3244, 11
  store i64 %3251, i64* %3, align 8
  %3252 = inttoptr i64 %3250 to i64*
  store i64 %3248, i64* %3252, align 8
  %3253 = load i64, i64* %3, align 8
  %3254 = add i64 %3253, 14
  store i64 %3254, i64* %3, align 8
  br label %block_.L_4086cc

block_.L_4086c3:                                  ; preds = %block_.L_40868c
  store i64 %3248, i64* %RDI.i1307, align 8
  %3255 = add i64 %3244, -3459
  %3256 = add i64 %3244, 9
  %3257 = load i64, i64* %6, align 8
  %3258 = add i64 %3257, -8
  %3259 = inttoptr i64 %3258 to i64*
  store i64 %3256, i64* %3259, align 8
  store i64 %3258, i64* %6, align 8
  store i64 %3255, i64* %3, align 8
  %call2_4086c7 = tail call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* nonnull %0, i64 %3255, %struct.Memory* %call2_407fb9)
  %.pre20 = load i64, i64* %3, align 8
  br label %block_.L_4086cc

block_.L_4086cc:                                  ; preds = %block_.L_4086c3, %block_4086b3
  %3260 = phi i64 [ %.pre20, %block_.L_4086c3 ], [ %3254, %block_4086b3 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_4086c7, %block_.L_4086c3 ], [ %call2_407fb9, %block_4086b3 ]
  %3261 = load i64, i64* %RBP.i, align 8
  %3262 = add i64 %3261, -84
  %3263 = add i64 %3260, 3
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i32*
  %3265 = load i32, i32* %3264, align 4
  %3266 = zext i32 %3265 to i64
  store i64 %3266, i64* %RDI.i1307, align 8
  %3267 = add i64 %3260, 129060
  %3268 = add i64 %3260, 8
  %3269 = load i64, i64* %6, align 8
  %3270 = add i64 %3269, -8
  %3271 = inttoptr i64 %3270 to i64*
  store i64 %3268, i64* %3271, align 8
  store i64 %3270, i64* %6, align 8
  store i64 %3267, i64* %3, align 8
  %call2_4086cf = tail call %struct.Memory* @sub_427ef0.Scorify(%struct.State* nonnull %0, i64 %3267, %struct.Memory* %MEMORY.4)
  %3272 = load i64, i64* %6, align 8
  %3273 = load i64, i64* %3, align 8
  %3274 = add i64 %3272, 96
  store i64 %3274, i64* %6, align 8
  %3275 = icmp ugt i64 %3272, -97
  %3276 = zext i1 %3275 to i8
  store i8 %3276, i8* %14, align 1
  %3277 = trunc i64 %3274 to i32
  %3278 = and i32 %3277, 255
  %3279 = tail call i32 @llvm.ctpop.i32(i32 %3278)
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  %3282 = xor i8 %3281, 1
  store i8 %3282, i8* %21, align 1
  %3283 = xor i64 %3274, %3272
  %3284 = lshr i64 %3283, 4
  %3285 = trunc i64 %3284 to i8
  %3286 = and i8 %3285, 1
  store i8 %3286, i8* %26, align 1
  %3287 = icmp eq i64 %3274, 0
  %3288 = zext i1 %3287 to i8
  store i8 %3288, i8* %29, align 1
  %3289 = lshr i64 %3274, 63
  %3290 = trunc i64 %3289 to i8
  store i8 %3290, i8* %32, align 1
  %3291 = lshr i64 %3272, 63
  %3292 = xor i64 %3289, %3291
  %3293 = add nuw nsw i64 %3292, %3289
  %3294 = icmp eq i64 %3293, 2
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %38, align 1
  %3296 = add i64 %3273, 5
  store i64 %3296, i64* %3, align 8
  %3297 = add i64 %3272, 104
  %3298 = inttoptr i64 %3274 to i64*
  %3299 = load i64, i64* %3298, align 8
  store i64 %3299, i64* %RBP.i, align 8
  store i64 %3297, i64* %6, align 8
  %3300 = add i64 %3273, 6
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3297 to i64*
  %3302 = load i64, i64* %3301, align 8
  store i64 %3302, i64* %3, align 8
  %3303 = add i64 %3272, 112
  store i64 %3303, i64* %6, align 8
  ret %struct.Memory* %call2_4086cf
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
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x38__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R10, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_0x88__rcx____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 136
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
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__r8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 336
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
define %struct.Memory* @routine_movl__esi____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 136
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
define %struct.Memory* @routine_jg_.L_40806b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_408014(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_40868c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40835c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
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
define %struct.Memory* @routine_movl___rax__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq__edi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx__r8_8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl___rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
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
define %struct.Memory* @routine_movq_0x170__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rdx__r8_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx__r8_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__edi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rdx__r8_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x140__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___r8__r9_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rdx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
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
define %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx__r8_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_0x148__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4080bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movl_0x88__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__r8____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movslq_0x88__r8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_addl_0x154__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 340
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl__eax__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0xc521974f__0x4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_408599(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x4__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %10
  %16 = icmp ult i32 %13, %12
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %13, 255
  %21 = tail call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %12, %10
  %27 = xor i32 %26, %13
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %13, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %13, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %10, 31
  %39 = lshr i32 %12, 31
  %40 = xor i32 %35, %38
  %41 = xor i32 %35, %39
  %42 = add nuw nsw i32 %40, %41
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
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
define %struct.Memory* @routine_movq___rcx__r8_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_jmpq_.L_40852e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl_0x16c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 364
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
define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_addl_0x15c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 348
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__0xc__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x150__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl_0xc__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_addl_0x168__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 360
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
define %struct.Memory* @routine_movl__eax____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_addl_0x164__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 356
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl_0x4__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_addl_0x158__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 344
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
define %struct.Memory* @routine_movl__eax__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_408072(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_addl_0x160__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 352
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_4086c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4086cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.Scorify(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
