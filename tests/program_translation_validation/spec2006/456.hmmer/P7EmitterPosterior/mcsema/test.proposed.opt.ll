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

declare %struct.Memory* @sub_4281b0.ILogsum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7EmitterPosterior(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1068 = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i1068, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %RSI.i1065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i1065, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1062 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i1062, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %RCX.i1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -32
  %59 = load i64, i64* %RCX.i1059, align 8
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i64*
  store i64 %59, i64* %62, align 8
  %R8.i1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -40
  %65 = load i64, i64* %R8.i1057, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -32
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 4
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %70 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %RCX.i1059, align 8
  %75 = add i64 %71, 7
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %RCX.i1059, align 8
  %78 = add i64 %71, 10
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RCX.i1059, align 8
  %RDI.i1047 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %81 = add i64 %80, 16
  %82 = add i64 %71, 13
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %RDI.i1047, align 8
  %86 = add i64 %69, -52
  %87 = add i64 %71, 16
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  store i32 %84, i32* %88, align 4
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -4
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 3
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %90 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RDI.i1047, align 8
  %96 = add i64 %89, -44
  %97 = add i64 %91, 6
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  store i32 %94, i32* %98, align 4
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1031 = getelementptr inbounds %union.anon, %union.anon* %99, i64 0, i32 0
  %EAX.i830 = bitcast %union.anon* %99 to i32*
  %EDX.i793 = bitcast %union.anon* %50 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_435ff1

block_.L_435ff1:                                  ; preds = %block_.L_436384, %entry
  %100 = phi i64 [ %2795, %block_.L_436384 ], [ %.pre, %entry ]
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, -44
  %103 = add i64 %100, 4
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %105, -1
  %107 = icmp eq i32 %105, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %14, align 1
  %109 = and i32 %106, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %21, align 1
  %114 = xor i32 %106, %105
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %26, align 1
  %118 = icmp eq i32 %106, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1
  %120 = lshr i32 %106, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %32, align 1
  %122 = lshr i32 %105, 31
  %123 = xor i32 %120, %122
  %124 = add nuw nsw i32 %123, %122
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %38, align 1
  %127 = icmp ne i8 %121, 0
  %128 = xor i1 %127, %125
  %.v5 = select i1 %128, i64 1456, i64 10
  %129 = add i64 %100, %.v5
  store i64 %129, i64* %3, align 8
  br i1 %128, label %block_.L_4365a1, label %block_435ffb

block_435ffb:                                     ; preds = %block_.L_435ff1
  %130 = add i64 %101, -24
  %131 = add i64 %129, 4
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i64*
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %RAX.i1031, align 8
  %134 = add i64 %129, 7
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i64*
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %RAX.i1031, align 8
  %137 = add i64 %129, 10
  store i64 %137, i64* %3, align 8
  %138 = load i32, i32* %104, align 4
  %139 = add i32 %138, -1
  %140 = zext i32 %139 to i64
  store i64 %140, i64* %RCX.i1059, align 8
  %141 = icmp eq i32 %138, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %14, align 1
  %143 = and i32 %139, 255
  %144 = tail call i32 @llvm.ctpop.i32(i32 %143)
  %145 = trunc i32 %144 to i8
  %146 = and i8 %145, 1
  %147 = xor i8 %146, 1
  store i8 %147, i8* %21, align 1
  %148 = xor i32 %139, %138
  %149 = lshr i32 %148, 4
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  store i8 %151, i8* %26, align 1
  %152 = icmp eq i32 %139, 0
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %29, align 1
  %154 = lshr i32 %139, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %32, align 1
  %156 = lshr i32 %138, 31
  %157 = xor i32 %154, %156
  %158 = add nuw nsw i32 %157, %156
  %159 = icmp eq i32 %158, 2
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %38, align 1
  %161 = sext i32 %139 to i64
  store i64 %161, i64* %RDX.i1062, align 8
  %162 = shl nsw i64 %161, 3
  %163 = add i64 %136, %162
  %164 = add i64 %129, 20
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i64*
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %RAX.i1031, align 8
  %167 = add i64 %166, 8
  %168 = add i64 %129, 23
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RCX.i1059, align 8
  %172 = add i64 %101, -16
  %173 = add i64 %129, 27
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %RAX.i1031, align 8
  %176 = add i64 %175, 356
  %177 = add i64 %129, 33
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = add i32 %179, %170
  %181 = zext i32 %180 to i64
  store i64 %181, i64* %RCX.i1059, align 8
  %182 = icmp ult i32 %180, %170
  %183 = icmp ult i32 %180, %179
  %184 = or i1 %182, %183
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %14, align 1
  %186 = and i32 %180, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186)
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %21, align 1
  %191 = xor i32 %179, %170
  %192 = xor i32 %191, %180
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %26, align 1
  %196 = icmp eq i32 %180, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %29, align 1
  %198 = lshr i32 %180, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %32, align 1
  %200 = lshr i32 %170, 31
  %201 = lshr i32 %179, 31
  %202 = xor i32 %198, %200
  %203 = xor i32 %198, %201
  %204 = add nuw nsw i32 %202, %203
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %38, align 1
  %207 = load i64, i64* %RBP.i, align 8
  %208 = add i64 %207, -32
  %209 = add i64 %129, 37
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i64*
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %RAX.i1031, align 8
  %212 = add i64 %129, 40
  store i64 %212, i64* %3, align 8
  %213 = inttoptr i64 %211 to i64*
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %RAX.i1031, align 8
  %215 = add i64 %207, -44
  %216 = add i64 %129, 44
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i32*
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %RDX.i1062, align 8
  %220 = shl nsw i64 %219, 3
  %221 = add i64 %220, %214
  %222 = add i64 %129, 48
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RAX.i1031, align 8
  %225 = add i64 %224, 8
  %226 = add i64 %129, 51
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = add i32 %228, %180
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RCX.i1059, align 8
  %231 = icmp ult i32 %229, %180
  %232 = icmp ult i32 %229, %228
  %233 = or i1 %231, %232
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %14, align 1
  %235 = and i32 %229, 255
  %236 = tail call i32 @llvm.ctpop.i32(i32 %235)
  %237 = trunc i32 %236 to i8
  %238 = and i8 %237, 1
  %239 = xor i8 %238, 1
  store i8 %239, i8* %21, align 1
  %240 = xor i32 %228, %180
  %241 = xor i32 %240, %229
  %242 = lshr i32 %241, 4
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %26, align 1
  %245 = icmp eq i32 %229, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %29, align 1
  %247 = lshr i32 %229, 31
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %32, align 1
  %249 = lshr i32 %228, 31
  %250 = xor i32 %247, %198
  %251 = xor i32 %247, %249
  %252 = add nuw nsw i32 %250, %251
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %38, align 1
  %255 = add i64 %207, -52
  %256 = add i64 %129, 54
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i32*
  %258 = load i32, i32* %257, align 4
  %259 = sub i32 %229, %258
  %260 = zext i32 %259 to i64
  store i64 %260, i64* %RCX.i1059, align 8
  %261 = icmp ult i32 %229, %258
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %14, align 1
  %263 = and i32 %259, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263)
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %21, align 1
  %268 = xor i32 %258, %229
  %269 = xor i32 %268, %259
  %270 = lshr i32 %269, 4
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  store i8 %272, i8* %26, align 1
  %273 = icmp eq i32 %259, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %29, align 1
  %275 = lshr i32 %259, 31
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %32, align 1
  %277 = lshr i32 %258, 31
  %278 = xor i32 %277, %247
  %279 = xor i32 %275, %247
  %280 = add nuw nsw i32 %279, %278
  %281 = icmp eq i32 %280, 2
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %38, align 1
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -40
  %285 = add i64 %129, 58
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RAX.i1031, align 8
  %288 = add i64 %129, 61
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %287 to i64*
  %290 = load i64, i64* %289, align 8
  store i64 %290, i64* %RAX.i1031, align 8
  %291 = add i64 %283, -44
  %292 = add i64 %129, 65
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  store i64 %295, i64* %RDX.i1062, align 8
  %296 = shl nsw i64 %295, 3
  %297 = add i64 %296, %290
  %298 = add i64 %129, 69
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RAX.i1031, align 8
  %301 = add i64 %300, 8
  %302 = add i64 %129, 72
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  store i32 %259, i32* %303, align 4
  %304 = load i64, i64* %RBP.i, align 8
  %305 = add i64 %304, -24
  %306 = load i64, i64* %3, align 8
  %307 = add i64 %306, 4
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %305 to i64*
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %RAX.i1031, align 8
  %310 = add i64 %306, 7
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i64*
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %RAX.i1031, align 8
  %313 = add i64 %304, -44
  %314 = add i64 %306, 10
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = add i32 %316, -1
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RCX.i1059, align 8
  %319 = icmp eq i32 %316, 0
  %320 = zext i1 %319 to i8
  store i8 %320, i8* %14, align 1
  %321 = and i32 %317, 255
  %322 = tail call i32 @llvm.ctpop.i32(i32 %321)
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  %325 = xor i8 %324, 1
  store i8 %325, i8* %21, align 1
  %326 = xor i32 %317, %316
  %327 = lshr i32 %326, 4
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  store i8 %329, i8* %26, align 1
  %330 = icmp eq i32 %317, 0
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %29, align 1
  %332 = lshr i32 %317, 31
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %32, align 1
  %334 = lshr i32 %316, 31
  %335 = xor i32 %332, %334
  %336 = add nuw nsw i32 %335, %334
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  store i8 %338, i8* %38, align 1
  %339 = sext i32 %317 to i64
  store i64 %339, i64* %RDX.i1062, align 8
  %340 = shl nsw i64 %339, 3
  %341 = add i64 %312, %340
  %342 = add i64 %306, 20
  store i64 %342, i64* %3, align 8
  %343 = inttoptr i64 %341 to i64*
  %344 = load i64, i64* %343, align 8
  store i64 %344, i64* %RAX.i1031, align 8
  %345 = add i64 %344, 12
  %346 = add i64 %306, 23
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RCX.i1059, align 8
  %350 = add i64 %304, -16
  %351 = add i64 %306, 27
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i64*
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %RAX.i1031, align 8
  %354 = add i64 %353, 364
  %355 = add i64 %306, 33
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = add i32 %357, %348
  %359 = zext i32 %358 to i64
  store i64 %359, i64* %RCX.i1059, align 8
  %360 = icmp ult i32 %358, %348
  %361 = icmp ult i32 %358, %357
  %362 = or i1 %360, %361
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %14, align 1
  %364 = and i32 %358, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364)
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %21, align 1
  %369 = xor i32 %357, %348
  %370 = xor i32 %369, %358
  %371 = lshr i32 %370, 4
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  store i8 %373, i8* %26, align 1
  %374 = icmp eq i32 %358, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %29, align 1
  %376 = lshr i32 %358, 31
  %377 = trunc i32 %376 to i8
  store i8 %377, i8* %32, align 1
  %378 = lshr i32 %348, 31
  %379 = lshr i32 %357, 31
  %380 = xor i32 %376, %378
  %381 = xor i32 %376, %379
  %382 = add nuw nsw i32 %380, %381
  %383 = icmp eq i32 %382, 2
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %38, align 1
  %385 = load i64, i64* %RBP.i, align 8
  %386 = add i64 %385, -32
  %387 = add i64 %306, 37
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %386 to i64*
  %389 = load i64, i64* %388, align 8
  store i64 %389, i64* %RAX.i1031, align 8
  %390 = add i64 %306, 40
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %RAX.i1031, align 8
  %393 = add i64 %385, -44
  %394 = add i64 %306, 44
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  store i64 %397, i64* %RDX.i1062, align 8
  %398 = shl nsw i64 %397, 3
  %399 = add i64 %398, %392
  %400 = add i64 %306, 48
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i64*
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %RAX.i1031, align 8
  %403 = add i64 %402, 12
  %404 = add i64 %306, 51
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = add i32 %406, %358
  %408 = zext i32 %407 to i64
  store i64 %408, i64* %RCX.i1059, align 8
  %409 = icmp ult i32 %407, %358
  %410 = icmp ult i32 %407, %406
  %411 = or i1 %409, %410
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %14, align 1
  %413 = and i32 %407, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413)
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %21, align 1
  %418 = xor i32 %406, %358
  %419 = xor i32 %418, %407
  %420 = lshr i32 %419, 4
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  store i8 %422, i8* %26, align 1
  %423 = icmp eq i32 %407, 0
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %29, align 1
  %425 = lshr i32 %407, 31
  %426 = trunc i32 %425 to i8
  store i8 %426, i8* %32, align 1
  %427 = lshr i32 %406, 31
  %428 = xor i32 %425, %376
  %429 = xor i32 %425, %427
  %430 = add nuw nsw i32 %428, %429
  %431 = icmp eq i32 %430, 2
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %38, align 1
  %433 = add i64 %385, -52
  %434 = add i64 %306, 54
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i32*
  %436 = load i32, i32* %435, align 4
  %437 = sub i32 %407, %436
  %438 = zext i32 %437 to i64
  store i64 %438, i64* %RCX.i1059, align 8
  %439 = icmp ult i32 %407, %436
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %14, align 1
  %441 = and i32 %437, 255
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441)
  %443 = trunc i32 %442 to i8
  %444 = and i8 %443, 1
  %445 = xor i8 %444, 1
  store i8 %445, i8* %21, align 1
  %446 = xor i32 %436, %407
  %447 = xor i32 %446, %437
  %448 = lshr i32 %447, 4
  %449 = trunc i32 %448 to i8
  %450 = and i8 %449, 1
  store i8 %450, i8* %26, align 1
  %451 = icmp eq i32 %437, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %29, align 1
  %453 = lshr i32 %437, 31
  %454 = trunc i32 %453 to i8
  store i8 %454, i8* %32, align 1
  %455 = lshr i32 %436, 31
  %456 = xor i32 %455, %425
  %457 = xor i32 %453, %425
  %458 = add nuw nsw i32 %457, %456
  %459 = icmp eq i32 %458, 2
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %38, align 1
  %461 = load i64, i64* %RBP.i, align 8
  %462 = add i64 %461, -40
  %463 = add i64 %306, 58
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i64*
  %465 = load i64, i64* %464, align 8
  store i64 %465, i64* %RAX.i1031, align 8
  %466 = add i64 %306, 61
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i64*
  %468 = load i64, i64* %467, align 8
  store i64 %468, i64* %RAX.i1031, align 8
  %469 = add i64 %461, -44
  %470 = add i64 %306, 65
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  store i64 %473, i64* %RDX.i1062, align 8
  %474 = shl nsw i64 %473, 3
  %475 = add i64 %474, %468
  %476 = add i64 %306, 69
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i64*
  %478 = load i64, i64* %477, align 8
  store i64 %478, i64* %RAX.i1031, align 8
  %479 = add i64 %478, 12
  %480 = add i64 %306, 72
  store i64 %480, i64* %3, align 8
  %481 = inttoptr i64 %479 to i32*
  store i32 %437, i32* %481, align 4
  %482 = load i64, i64* %RBP.i, align 8
  %483 = add i64 %482, -24
  %484 = load i64, i64* %3, align 8
  %485 = add i64 %484, 4
  store i64 %485, i64* %3, align 8
  %486 = inttoptr i64 %483 to i64*
  %487 = load i64, i64* %486, align 8
  store i64 %487, i64* %RAX.i1031, align 8
  %488 = add i64 %484, 7
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i64*
  %490 = load i64, i64* %489, align 8
  store i64 %490, i64* %RAX.i1031, align 8
  %491 = add i64 %482, -44
  %492 = add i64 %484, 10
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = add i32 %494, -1
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RCX.i1059, align 8
  %497 = icmp eq i32 %494, 0
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %14, align 1
  %499 = and i32 %495, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %21, align 1
  %504 = xor i32 %495, %494
  %505 = lshr i32 %504, 4
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  store i8 %507, i8* %26, align 1
  %508 = icmp eq i32 %495, 0
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %29, align 1
  %510 = lshr i32 %495, 31
  %511 = trunc i32 %510 to i8
  store i8 %511, i8* %32, align 1
  %512 = lshr i32 %494, 31
  %513 = xor i32 %510, %512
  %514 = add nuw nsw i32 %513, %512
  %515 = icmp eq i32 %514, 2
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %38, align 1
  %517 = sext i32 %495 to i64
  store i64 %517, i64* %RDX.i1062, align 8
  %518 = shl nsw i64 %517, 3
  %519 = add i64 %490, %518
  %520 = add i64 %484, 20
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i64*
  %522 = load i64, i64* %521, align 8
  store i64 %522, i64* %RAX.i1031, align 8
  %523 = add i64 %522, 16
  %524 = add i64 %484, 23
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i32*
  %526 = load i32, i32* %525, align 4
  %527 = zext i32 %526 to i64
  store i64 %527, i64* %RCX.i1059, align 8
  %528 = add i64 %482, -16
  %529 = add i64 %484, 27
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %RAX.i1031, align 8
  %532 = add i64 %531, 340
  %533 = add i64 %484, 33
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i32*
  %535 = load i32, i32* %534, align 4
  %536 = add i32 %535, %526
  %537 = zext i32 %536 to i64
  store i64 %537, i64* %RCX.i1059, align 8
  %538 = icmp ult i32 %536, %526
  %539 = icmp ult i32 %536, %535
  %540 = or i1 %538, %539
  %541 = zext i1 %540 to i8
  store i8 %541, i8* %14, align 1
  %542 = and i32 %536, 255
  %543 = tail call i32 @llvm.ctpop.i32(i32 %542)
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  %546 = xor i8 %545, 1
  store i8 %546, i8* %21, align 1
  %547 = xor i32 %535, %526
  %548 = xor i32 %547, %536
  %549 = lshr i32 %548, 4
  %550 = trunc i32 %549 to i8
  %551 = and i8 %550, 1
  store i8 %551, i8* %26, align 1
  %552 = icmp eq i32 %536, 0
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %29, align 1
  %554 = lshr i32 %536, 31
  %555 = trunc i32 %554 to i8
  store i8 %555, i8* %32, align 1
  %556 = lshr i32 %526, 31
  %557 = lshr i32 %535, 31
  %558 = xor i32 %554, %556
  %559 = xor i32 %554, %557
  %560 = add nuw nsw i32 %558, %559
  %561 = icmp eq i32 %560, 2
  %562 = zext i1 %561 to i8
  store i8 %562, i8* %38, align 1
  %563 = load i64, i64* %RBP.i, align 8
  %564 = add i64 %563, -32
  %565 = add i64 %484, 37
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i64*
  %567 = load i64, i64* %566, align 8
  store i64 %567, i64* %RAX.i1031, align 8
  %568 = add i64 %484, 40
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i64*
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %RAX.i1031, align 8
  %571 = add i64 %563, -44
  %572 = add i64 %484, 44
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = sext i32 %574 to i64
  store i64 %575, i64* %RDX.i1062, align 8
  %576 = shl nsw i64 %575, 3
  %577 = add i64 %576, %570
  %578 = add i64 %484, 48
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i64*
  %580 = load i64, i64* %579, align 8
  store i64 %580, i64* %RAX.i1031, align 8
  %581 = add i64 %580, 16
  %582 = add i64 %484, 51
  store i64 %582, i64* %3, align 8
  %583 = inttoptr i64 %581 to i32*
  %584 = load i32, i32* %583, align 4
  %585 = add i32 %584, %536
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RCX.i1059, align 8
  %587 = icmp ult i32 %585, %536
  %588 = icmp ult i32 %585, %584
  %589 = or i1 %587, %588
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %14, align 1
  %591 = and i32 %585, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %21, align 1
  %596 = xor i32 %584, %536
  %597 = xor i32 %596, %585
  %598 = lshr i32 %597, 4
  %599 = trunc i32 %598 to i8
  %600 = and i8 %599, 1
  store i8 %600, i8* %26, align 1
  %601 = icmp eq i32 %585, 0
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %29, align 1
  %603 = lshr i32 %585, 31
  %604 = trunc i32 %603 to i8
  store i8 %604, i8* %32, align 1
  %605 = lshr i32 %584, 31
  %606 = xor i32 %603, %554
  %607 = xor i32 %603, %605
  %608 = add nuw nsw i32 %606, %607
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %38, align 1
  %611 = add i64 %563, -52
  %612 = add i64 %484, 54
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = sub i32 %585, %614
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RCX.i1059, align 8
  %617 = icmp ult i32 %585, %614
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %14, align 1
  %619 = and i32 %615, 255
  %620 = tail call i32 @llvm.ctpop.i32(i32 %619)
  %621 = trunc i32 %620 to i8
  %622 = and i8 %621, 1
  %623 = xor i8 %622, 1
  store i8 %623, i8* %21, align 1
  %624 = xor i32 %614, %585
  %625 = xor i32 %624, %615
  %626 = lshr i32 %625, 4
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %26, align 1
  %629 = icmp eq i32 %615, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %29, align 1
  %631 = lshr i32 %615, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %32, align 1
  %633 = lshr i32 %614, 31
  %634 = xor i32 %633, %603
  %635 = xor i32 %631, %603
  %636 = add nuw nsw i32 %635, %634
  %637 = icmp eq i32 %636, 2
  %638 = zext i1 %637 to i8
  store i8 %638, i8* %38, align 1
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -40
  %641 = add i64 %484, 58
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RAX.i1031, align 8
  %644 = add i64 %484, 61
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i64*
  %646 = load i64, i64* %645, align 8
  store i64 %646, i64* %RAX.i1031, align 8
  %647 = add i64 %639, -44
  %648 = add i64 %484, 65
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  store i64 %651, i64* %RDX.i1062, align 8
  %652 = shl nsw i64 %651, 3
  %653 = add i64 %652, %646
  %654 = add i64 %484, 69
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %RAX.i1031, align 8
  %657 = add i64 %656, 16
  %658 = add i64 %484, 72
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  store i32 %615, i32* %659, align 4
  %660 = load i64, i64* %RBP.i, align 8
  %661 = add i64 %660, -40
  %662 = load i64, i64* %3, align 8
  %663 = add i64 %662, 4
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %661 to i64*
  %665 = load i64, i64* %664, align 8
  store i64 %665, i64* %RAX.i1031, align 8
  %666 = add i64 %662, 7
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i64*
  %668 = load i64, i64* %667, align 8
  store i64 %668, i64* %RAX.i1031, align 8
  %669 = add i64 %660, -44
  %670 = add i64 %662, 11
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = sext i32 %672 to i64
  store i64 %673, i64* %RDX.i1062, align 8
  %674 = shl nsw i64 %673, 3
  %675 = add i64 %674, %668
  %676 = add i64 %662, 15
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %RAX.i1031, align 8
  %679 = add i64 %678, 4
  %680 = add i64 %662, 22
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i32*
  store i32 -987654321, i32* %681, align 4
  %682 = load i64, i64* %RBP.i, align 8
  %683 = add i64 %682, -40
  %684 = load i64, i64* %3, align 8
  %685 = add i64 %684, 4
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %683 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %RAX.i1031, align 8
  %688 = add i64 %684, 7
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %RAX.i1031, align 8
  %691 = add i64 %682, -44
  %692 = add i64 %684, 11
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = sext i32 %694 to i64
  store i64 %695, i64* %RDX.i1062, align 8
  %696 = shl nsw i64 %695, 3
  %697 = add i64 %696, %690
  %698 = add i64 %684, 15
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i64*
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %RAX.i1031, align 8
  %701 = add i64 %684, 21
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i32*
  store i32 -987654321, i32* %702, align 4
  %703 = load i64, i64* %RBP.i, align 8
  %704 = add i64 %703, -48
  %705 = load i64, i64* %3, align 8
  %706 = add i64 %705, 7
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %704 to i32*
  store i32 1, i32* %707, align 4
  %.pre4 = load i64, i64* %3, align 8
  br label %block_.L_436105

block_.L_436105:                                  ; preds = %block_436118, %block_435ffb
  %708 = phi i64 [ %1924, %block_436118 ], [ %.pre4, %block_435ffb ]
  %709 = load i64, i64* %RBP.i, align 8
  %710 = add i64 %709, -48
  %711 = add i64 %708, 3
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = zext i32 %713 to i64
  store i64 %714, i64* %RAX.i1031, align 8
  %715 = add i64 %709, -16
  %716 = add i64 %708, 7
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %715 to i64*
  %718 = load i64, i64* %717, align 8
  store i64 %718, i64* %RCX.i1059, align 8
  %719 = add i64 %718, 136
  %720 = add i64 %708, 13
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = sub i32 %713, %722
  %724 = icmp ult i32 %713, %722
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %14, align 1
  %726 = and i32 %723, 255
  %727 = tail call i32 @llvm.ctpop.i32(i32 %726)
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  %730 = xor i8 %729, 1
  store i8 %730, i8* %21, align 1
  %731 = xor i32 %722, %713
  %732 = xor i32 %731, %723
  %733 = lshr i32 %732, 4
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  store i8 %735, i8* %26, align 1
  %736 = icmp eq i32 %723, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %29, align 1
  %738 = lshr i32 %723, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %32, align 1
  %740 = lshr i32 %713, 31
  %741 = lshr i32 %722, 31
  %742 = xor i32 %741, %740
  %743 = xor i32 %738, %740
  %744 = add nuw nsw i32 %743, %742
  %745 = icmp eq i32 %744, 2
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %38, align 1
  %747 = icmp ne i8 %739, 0
  %748 = xor i1 %747, %745
  %.v = select i1 %748, i64 19, i64 639
  %749 = add i64 %708, %.v
  %750 = add i64 %709, -32
  %751 = add i64 %749, 4
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i64*
  %753 = load i64, i64* %752, align 8
  store i64 %753, i64* %RAX.i1031, align 8
  %754 = add i64 %753, 8
  %755 = add i64 %749, 8
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to i64*
  %757 = load i64, i64* %756, align 8
  store i64 %757, i64* %RAX.i1031, align 8
  %758 = add i64 %709, -44
  %759 = add i64 %749, 12
  store i64 %759, i64* %3, align 8
  %760 = inttoptr i64 %758 to i32*
  %761 = load i32, i32* %760, align 4
  %762 = sext i32 %761 to i64
  store i64 %762, i64* %RCX.i1059, align 8
  %763 = shl nsw i64 %762, 3
  %764 = add i64 %763, %757
  %765 = add i64 %749, 16
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %764 to i64*
  %767 = load i64, i64* %766, align 8
  store i64 %767, i64* %RAX.i1031, align 8
  %768 = add i64 %749, 20
  store i64 %768, i64* %3, align 8
  br i1 %748, label %block_436118, label %block_.L_436384

block_436118:                                     ; preds = %block_.L_436105
  %769 = load i32, i32* %712, align 4
  %770 = sext i32 %769 to i64
  store i64 %770, i64* %RCX.i1059, align 8
  %771 = shl nsw i64 %770, 2
  %772 = add i64 %771, %767
  %773 = add i64 %749, 23
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RDX.i1062, align 8
  %777 = add i64 %709, -40
  %778 = add i64 %749, 27
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %777 to i64*
  %780 = load i64, i64* %779, align 8
  store i64 %780, i64* %RAX.i1031, align 8
  %781 = add i64 %780, 8
  %782 = add i64 %749, 31
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i64*
  %784 = load i64, i64* %783, align 8
  store i64 %784, i64* %RAX.i1031, align 8
  %785 = add i64 %749, 35
  store i64 %785, i64* %3, align 8
  %786 = load i32, i32* %760, align 4
  %787 = sext i32 %786 to i64
  store i64 %787, i64* %RCX.i1059, align 8
  %788 = shl nsw i64 %787, 3
  %789 = add i64 %788, %784
  %790 = add i64 %749, 39
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RAX.i1031, align 8
  %793 = add i64 %749, 43
  store i64 %793, i64* %3, align 8
  %794 = load i32, i32* %712, align 4
  %795 = sext i32 %794 to i64
  store i64 %795, i64* %RCX.i1059, align 8
  %796 = shl nsw i64 %795, 2
  %797 = add i64 %796, %792
  %798 = add i64 %749, 46
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  store i32 %775, i32* %799, align 4
  %800 = load i64, i64* %RBP.i, align 8
  %801 = add i64 %800, -24
  %802 = load i64, i64* %3, align 8
  %803 = add i64 %802, 4
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %801 to i64*
  %805 = load i64, i64* %804, align 8
  store i64 %805, i64* %RAX.i1031, align 8
  %806 = add i64 %805, 8
  %807 = add i64 %802, 8
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i64*
  %809 = load i64, i64* %808, align 8
  store i64 %809, i64* %RAX.i1031, align 8
  %810 = add i64 %800, -44
  %811 = add i64 %802, 11
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i32*
  %813 = load i32, i32* %812, align 4
  %814 = add i32 %813, -1
  %815 = zext i32 %814 to i64
  store i64 %815, i64* %RDX.i1062, align 8
  %816 = icmp eq i32 %813, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %14, align 1
  %818 = and i32 %814, 255
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %21, align 1
  %823 = xor i32 %814, %813
  %824 = lshr i32 %823, 4
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  store i8 %826, i8* %26, align 1
  %827 = icmp eq i32 %814, 0
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %29, align 1
  %829 = lshr i32 %814, 31
  %830 = trunc i32 %829 to i8
  store i8 %830, i8* %32, align 1
  %831 = lshr i32 %813, 31
  %832 = xor i32 %829, %831
  %833 = add nuw nsw i32 %832, %831
  %834 = icmp eq i32 %833, 2
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %38, align 1
  %836 = sext i32 %814 to i64
  store i64 %836, i64* %RCX.i1059, align 8
  %837 = shl nsw i64 %836, 3
  %838 = add i64 %809, %837
  %839 = add i64 %802, 21
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i64 %841, i64* %RAX.i1031, align 8
  %842 = add i64 %800, -48
  %843 = add i64 %802, 24
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i32*
  %845 = load i32, i32* %844, align 4
  %846 = add i32 %845, -1
  %847 = zext i32 %846 to i64
  store i64 %847, i64* %RDX.i1062, align 8
  %848 = icmp eq i32 %845, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %14, align 1
  %850 = and i32 %846, 255
  %851 = tail call i32 @llvm.ctpop.i32(i32 %850)
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  %854 = xor i8 %853, 1
  store i8 %854, i8* %21, align 1
  %855 = xor i32 %846, %845
  %856 = lshr i32 %855, 4
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  store i8 %858, i8* %26, align 1
  %859 = icmp eq i32 %846, 0
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %29, align 1
  %861 = lshr i32 %846, 31
  %862 = trunc i32 %861 to i8
  store i8 %862, i8* %32, align 1
  %863 = lshr i32 %845, 31
  %864 = xor i32 %861, %863
  %865 = add nuw nsw i32 %864, %863
  %866 = icmp eq i32 %865, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %38, align 1
  %868 = sext i32 %846 to i64
  store i64 %868, i64* %RCX.i1059, align 8
  %869 = shl nsw i64 %868, 2
  %870 = add i64 %841, %869
  %871 = add i64 %802, 33
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = zext i32 %873 to i64
  store i64 %874, i64* %RDX.i1062, align 8
  %875 = load i64, i64* %RBP.i, align 8
  %876 = add i64 %875, -16
  %877 = add i64 %802, 37
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i64*
  %879 = load i64, i64* %878, align 8
  store i64 %879, i64* %RAX.i1031, align 8
  %880 = add i64 %879, 312
  %881 = add i64 %802, 44
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i64*
  %883 = load i64, i64* %882, align 8
  store i64 %883, i64* %RAX.i1031, align 8
  %884 = add i64 %802, 47
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  store i64 %886, i64* %RAX.i1031, align 8
  %887 = add i64 %875, -48
  %888 = add i64 %802, 50
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = add i32 %890, -1
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %RSI.i1065, align 8
  %893 = icmp eq i32 %890, 0
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %14, align 1
  %895 = and i32 %891, 255
  %896 = tail call i32 @llvm.ctpop.i32(i32 %895)
  %897 = trunc i32 %896 to i8
  %898 = and i8 %897, 1
  %899 = xor i8 %898, 1
  store i8 %899, i8* %21, align 1
  %900 = xor i32 %891, %890
  %901 = lshr i32 %900, 4
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  store i8 %903, i8* %26, align 1
  %904 = icmp eq i32 %891, 0
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %29, align 1
  %906 = lshr i32 %891, 31
  %907 = trunc i32 %906 to i8
  store i8 %907, i8* %32, align 1
  %908 = lshr i32 %890, 31
  %909 = xor i32 %906, %908
  %910 = add nuw nsw i32 %909, %908
  %911 = icmp eq i32 %910, 2
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %38, align 1
  %913 = sext i32 %891 to i64
  store i64 %913, i64* %RCX.i1059, align 8
  %914 = shl nsw i64 %913, 2
  %915 = add i64 %886, %914
  %916 = add i64 %802, 59
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  %918 = load i32, i32* %917, align 4
  %919 = add i32 %918, %873
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RDX.i1062, align 8
  %921 = icmp ult i32 %919, %873
  %922 = icmp ult i32 %919, %918
  %923 = or i1 %921, %922
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %14, align 1
  %925 = and i32 %919, 255
  %926 = tail call i32 @llvm.ctpop.i32(i32 %925)
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  store i8 %929, i8* %21, align 1
  %930 = xor i32 %918, %873
  %931 = xor i32 %930, %919
  %932 = lshr i32 %931, 4
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  store i8 %934, i8* %26, align 1
  %935 = icmp eq i32 %919, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %29, align 1
  %937 = lshr i32 %919, 31
  %938 = trunc i32 %937 to i8
  store i8 %938, i8* %32, align 1
  %939 = lshr i32 %873, 31
  %940 = lshr i32 %918, 31
  %941 = xor i32 %937, %939
  %942 = xor i32 %937, %940
  %943 = add nuw nsw i32 %941, %942
  %944 = icmp eq i32 %943, 2
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %38, align 1
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -24
  %948 = add i64 %802, 63
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i64*
  %950 = load i64, i64* %949, align 8
  store i64 %950, i64* %RAX.i1031, align 8
  %951 = add i64 %950, 16
  %952 = add i64 %802, 67
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i64*
  %954 = load i64, i64* %953, align 8
  store i64 %954, i64* %RAX.i1031, align 8
  %955 = add i64 %946, -44
  %956 = add i64 %802, 70
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = add i32 %958, -1
  %960 = zext i32 %959 to i64
  store i64 %960, i64* %RSI.i1065, align 8
  %961 = icmp eq i32 %958, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %14, align 1
  %963 = and i32 %959, 255
  %964 = tail call i32 @llvm.ctpop.i32(i32 %963)
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  %967 = xor i8 %966, 1
  store i8 %967, i8* %21, align 1
  %968 = xor i32 %959, %958
  %969 = lshr i32 %968, 4
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  store i8 %971, i8* %26, align 1
  %972 = icmp eq i32 %959, 0
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %29, align 1
  %974 = lshr i32 %959, 31
  %975 = trunc i32 %974 to i8
  store i8 %975, i8* %32, align 1
  %976 = lshr i32 %958, 31
  %977 = xor i32 %974, %976
  %978 = add nuw nsw i32 %977, %976
  %979 = icmp eq i32 %978, 2
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %38, align 1
  %981 = sext i32 %959 to i64
  store i64 %981, i64* %RCX.i1059, align 8
  %982 = shl nsw i64 %981, 3
  %983 = add i64 %954, %982
  %984 = add i64 %802, 80
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i64*
  %986 = load i64, i64* %985, align 8
  store i64 %986, i64* %RAX.i1031, align 8
  %987 = add i64 %946, -48
  %988 = add i64 %802, 83
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = add i32 %990, -1
  %992 = zext i32 %991 to i64
  store i64 %992, i64* %RSI.i1065, align 8
  %993 = icmp eq i32 %990, 0
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %14, align 1
  %995 = and i32 %991, 255
  %996 = tail call i32 @llvm.ctpop.i32(i32 %995)
  %997 = trunc i32 %996 to i8
  %998 = and i8 %997, 1
  %999 = xor i8 %998, 1
  store i8 %999, i8* %21, align 1
  %1000 = xor i32 %991, %990
  %1001 = lshr i32 %1000, 4
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  store i8 %1003, i8* %26, align 1
  %1004 = icmp eq i32 %991, 0
  %1005 = zext i1 %1004 to i8
  store i8 %1005, i8* %29, align 1
  %1006 = lshr i32 %991, 31
  %1007 = trunc i32 %1006 to i8
  store i8 %1007, i8* %32, align 1
  %1008 = lshr i32 %990, 31
  %1009 = xor i32 %1006, %1008
  %1010 = add nuw nsw i32 %1009, %1008
  %1011 = icmp eq i32 %1010, 2
  %1012 = zext i1 %1011 to i8
  store i8 %1012, i8* %38, align 1
  %1013 = sext i32 %991 to i64
  store i64 %1013, i64* %RCX.i1059, align 8
  %1014 = shl nsw i64 %1013, 2
  %1015 = add i64 %986, %1014
  %1016 = add i64 %802, 92
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = zext i32 %1018 to i64
  store i64 %1019, i64* %RSI.i1065, align 8
  %1020 = load i64, i64* %RBP.i, align 8
  %1021 = add i64 %1020, -16
  %1022 = add i64 %802, 96
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i64*
  %1024 = load i64, i64* %1023, align 8
  store i64 %1024, i64* %RAX.i1031, align 8
  %1025 = add i64 %1024, 312
  %1026 = add i64 %802, 103
  store i64 %1026, i64* %3, align 8
  %1027 = inttoptr i64 %1025 to i64*
  %1028 = load i64, i64* %1027, align 8
  store i64 %1028, i64* %RAX.i1031, align 8
  %1029 = add i64 %1028, 24
  %1030 = add i64 %802, 107
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i64*
  %1032 = load i64, i64* %1031, align 8
  store i64 %1032, i64* %RAX.i1031, align 8
  %1033 = add i64 %1020, -48
  %1034 = add i64 %802, 110
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = add i32 %1036, -1
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RDI.i1047, align 8
  %1039 = icmp eq i32 %1036, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %14, align 1
  %1041 = and i32 %1037, 255
  %1042 = tail call i32 @llvm.ctpop.i32(i32 %1041)
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  store i8 %1045, i8* %21, align 1
  %1046 = xor i32 %1037, %1036
  %1047 = lshr i32 %1046, 4
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %26, align 1
  %1050 = icmp eq i32 %1037, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %29, align 1
  %1052 = lshr i32 %1037, 31
  %1053 = trunc i32 %1052 to i8
  store i8 %1053, i8* %32, align 1
  %1054 = lshr i32 %1036, 31
  %1055 = xor i32 %1052, %1054
  %1056 = add nuw nsw i32 %1055, %1054
  %1057 = icmp eq i32 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %38, align 1
  %1059 = sext i32 %1037 to i64
  store i64 %1059, i64* %RCX.i1059, align 8
  %1060 = shl nsw i64 %1059, 2
  %1061 = add i64 %1032, %1060
  %1062 = add i64 %802, 119
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = add i32 %1064, %1018
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RSI.i1065, align 8
  %1067 = icmp ult i32 %1065, %1018
  %1068 = icmp ult i32 %1065, %1064
  %1069 = or i1 %1067, %1068
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %14, align 1
  %1071 = and i32 %1065, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %21, align 1
  %1076 = xor i32 %1064, %1018
  %1077 = xor i32 %1076, %1065
  %1078 = lshr i32 %1077, 4
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  store i8 %1080, i8* %26, align 1
  %1081 = icmp eq i32 %1065, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %29, align 1
  %1083 = lshr i32 %1065, 31
  %1084 = trunc i32 %1083 to i8
  store i8 %1084, i8* %32, align 1
  %1085 = lshr i32 %1018, 31
  %1086 = lshr i32 %1064, 31
  %1087 = xor i32 %1083, %1085
  %1088 = xor i32 %1083, %1086
  %1089 = add nuw nsw i32 %1087, %1088
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %38, align 1
  %1092 = load i32, i32* %EDX.i793, align 4
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RDI.i1047, align 8
  %1094 = add i64 %802, -57238
  %1095 = add i64 %802, 126
  %1096 = load i64, i64* %6, align 8
  %1097 = add i64 %1096, -8
  %1098 = inttoptr i64 %1097 to i64*
  store i64 %1095, i64* %1098, align 8
  store i64 %1097, i64* %6, align 8
  store i64 %1094, i64* %3, align 8
  %call2_4361bf = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1094, %struct.Memory* %2)
  %1099 = load i64, i64* %RBP.i, align 8
  %1100 = add i64 %1099, -24
  %1101 = load i64, i64* %3, align 8
  %1102 = add i64 %1101, 4
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1100 to i64*
  %1104 = load i64, i64* %1103, align 8
  store i64 %1104, i64* %RCX.i1059, align 8
  %1105 = add i64 %1101, 7
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i64*
  %1107 = load i64, i64* %1106, align 8
  store i64 %1107, i64* %RCX.i1059, align 8
  %1108 = add i64 %1099, -44
  %1109 = add i64 %1101, 10
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = add i32 %1111, -1
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RDX.i1062, align 8
  %1114 = icmp eq i32 %1111, 0
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %14, align 1
  %1116 = and i32 %1112, 255
  %1117 = tail call i32 @llvm.ctpop.i32(i32 %1116)
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = xor i8 %1119, 1
  store i8 %1120, i8* %21, align 1
  %1121 = xor i32 %1112, %1111
  %1122 = lshr i32 %1121, 4
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  store i8 %1124, i8* %26, align 1
  %1125 = icmp eq i32 %1112, 0
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %29, align 1
  %1127 = lshr i32 %1112, 31
  %1128 = trunc i32 %1127 to i8
  store i8 %1128, i8* %32, align 1
  %1129 = lshr i32 %1111, 31
  %1130 = xor i32 %1127, %1129
  %1131 = add nuw nsw i32 %1130, %1129
  %1132 = icmp eq i32 %1131, 2
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %38, align 1
  %1134 = sext i32 %1112 to i64
  store i64 %1134, i64* %R8.i1057, align 8
  %1135 = shl nsw i64 %1134, 3
  %1136 = add i64 %1107, %1135
  %1137 = add i64 %1101, 20
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i64*
  %1139 = load i64, i64* %1138, align 8
  store i64 %1139, i64* %RCX.i1059, align 8
  %1140 = add i64 %1101, 22
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RDX.i1062, align 8
  %1144 = add i64 %1099, -16
  %1145 = add i64 %1101, 26
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %RCX.i1059, align 8
  %1148 = add i64 %1147, 368
  %1149 = add i64 %1101, 33
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i64*
  %1151 = load i64, i64* %1150, align 8
  store i64 %1151, i64* %RCX.i1059, align 8
  %1152 = add i64 %1099, -48
  %1153 = add i64 %1101, 37
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i32*
  %1155 = load i32, i32* %1154, align 4
  %1156 = sext i32 %1155 to i64
  store i64 %1156, i64* %R8.i1057, align 8
  %1157 = shl nsw i64 %1156, 2
  %1158 = add i64 %1151, %1157
  %1159 = add i64 %1101, 41
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = add i32 %1161, %1142
  %1163 = zext i32 %1162 to i64
  store i64 %1163, i64* %RDX.i1062, align 8
  %1164 = icmp ult i32 %1162, %1142
  %1165 = icmp ult i32 %1162, %1161
  %1166 = or i1 %1164, %1165
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %14, align 1
  %1168 = and i32 %1162, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %21, align 1
  %1173 = xor i32 %1161, %1142
  %1174 = xor i32 %1173, %1162
  %1175 = lshr i32 %1174, 4
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  store i8 %1177, i8* %26, align 1
  %1178 = icmp eq i32 %1162, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %29, align 1
  %1180 = lshr i32 %1162, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %32, align 1
  %1182 = lshr i32 %1142, 31
  %1183 = lshr i32 %1161, 31
  %1184 = xor i32 %1180, %1182
  %1185 = xor i32 %1180, %1183
  %1186 = add nuw nsw i32 %1184, %1185
  %1187 = icmp eq i32 %1186, 2
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %38, align 1
  %1189 = load i64, i64* %RBP.i, align 8
  %1190 = add i64 %1189, -24
  %1191 = add i64 %1101, 45
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to i64*
  %1193 = load i64, i64* %1192, align 8
  store i64 %1193, i64* %RCX.i1059, align 8
  %1194 = add i64 %1193, 24
  %1195 = add i64 %1101, 49
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i64*
  %1197 = load i64, i64* %1196, align 8
  store i64 %1197, i64* %RCX.i1059, align 8
  %1198 = add i64 %1189, -44
  %1199 = add i64 %1101, 52
  store i64 %1199, i64* %3, align 8
  %1200 = inttoptr i64 %1198 to i32*
  %1201 = load i32, i32* %1200, align 4
  %1202 = add i32 %1201, -1
  %1203 = zext i32 %1202 to i64
  store i64 %1203, i64* %RSI.i1065, align 8
  %1204 = icmp eq i32 %1201, 0
  %1205 = zext i1 %1204 to i8
  store i8 %1205, i8* %14, align 1
  %1206 = and i32 %1202, 255
  %1207 = tail call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  store i8 %1210, i8* %21, align 1
  %1211 = xor i32 %1202, %1201
  %1212 = lshr i32 %1211, 4
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  store i8 %1214, i8* %26, align 1
  %1215 = icmp eq i32 %1202, 0
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %29, align 1
  %1217 = lshr i32 %1202, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %32, align 1
  %1219 = lshr i32 %1201, 31
  %1220 = xor i32 %1217, %1219
  %1221 = add nuw nsw i32 %1220, %1219
  %1222 = icmp eq i32 %1221, 2
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %38, align 1
  %1224 = sext i32 %1202 to i64
  store i64 %1224, i64* %R8.i1057, align 8
  %1225 = shl nsw i64 %1224, 3
  %1226 = add i64 %1197, %1225
  %1227 = add i64 %1101, 62
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i64 %1229, i64* %RCX.i1059, align 8
  %1230 = add i64 %1189, -48
  %1231 = add i64 %1101, 65
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  %1234 = add i32 %1233, -1
  %1235 = zext i32 %1234 to i64
  store i64 %1235, i64* %RSI.i1065, align 8
  %1236 = icmp eq i32 %1233, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %14, align 1
  %1238 = and i32 %1234, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %21, align 1
  %1243 = xor i32 %1234, %1233
  %1244 = lshr i32 %1243, 4
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  store i8 %1246, i8* %26, align 1
  %1247 = icmp eq i32 %1234, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %29, align 1
  %1249 = lshr i32 %1234, 31
  %1250 = trunc i32 %1249 to i8
  store i8 %1250, i8* %32, align 1
  %1251 = lshr i32 %1233, 31
  %1252 = xor i32 %1249, %1251
  %1253 = add nuw nsw i32 %1252, %1251
  %1254 = icmp eq i32 %1253, 2
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %38, align 1
  %1256 = sext i32 %1234 to i64
  store i64 %1256, i64* %R8.i1057, align 8
  %1257 = shl nsw i64 %1256, 2
  %1258 = add i64 %1229, %1257
  %1259 = add i64 %1101, 75
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = zext i32 %1261 to i64
  store i64 %1262, i64* %RSI.i1065, align 8
  %1263 = load i64, i64* %RBP.i, align 8
  %1264 = add i64 %1263, -16
  %1265 = add i64 %1101, 79
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i64*
  %1267 = load i64, i64* %1266, align 8
  store i64 %1267, i64* %RCX.i1059, align 8
  %1268 = add i64 %1267, 312
  %1269 = add i64 %1101, 86
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i64*
  %1271 = load i64, i64* %1270, align 8
  store i64 %1271, i64* %RCX.i1059, align 8
  %1272 = add i64 %1271, 40
  %1273 = add i64 %1101, 90
  store i64 %1273, i64* %3, align 8
  %1274 = inttoptr i64 %1272 to i64*
  %1275 = load i64, i64* %1274, align 8
  store i64 %1275, i64* %RCX.i1059, align 8
  %1276 = add i64 %1263, -48
  %1277 = add i64 %1101, 93
  store i64 %1277, i64* %3, align 8
  %1278 = inttoptr i64 %1276 to i32*
  %1279 = load i32, i32* %1278, align 4
  %1280 = add i32 %1279, -1
  %1281 = zext i32 %1280 to i64
  store i64 %1281, i64* %RDI.i1047, align 8
  %1282 = icmp eq i32 %1279, 0
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %14, align 1
  %1284 = and i32 %1280, 255
  %1285 = tail call i32 @llvm.ctpop.i32(i32 %1284)
  %1286 = trunc i32 %1285 to i8
  %1287 = and i8 %1286, 1
  %1288 = xor i8 %1287, 1
  store i8 %1288, i8* %21, align 1
  %1289 = xor i32 %1280, %1279
  %1290 = lshr i32 %1289, 4
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  store i8 %1292, i8* %26, align 1
  %1293 = icmp eq i32 %1280, 0
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %29, align 1
  %1295 = lshr i32 %1280, 31
  %1296 = trunc i32 %1295 to i8
  store i8 %1296, i8* %32, align 1
  %1297 = lshr i32 %1279, 31
  %1298 = xor i32 %1295, %1297
  %1299 = add nuw nsw i32 %1298, %1297
  %1300 = icmp eq i32 %1299, 2
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %38, align 1
  %1302 = sext i32 %1280 to i64
  store i64 %1302, i64* %R8.i1057, align 8
  %1303 = shl nsw i64 %1302, 2
  %1304 = add i64 %1275, %1303
  %1305 = add i64 %1101, 103
  store i64 %1305, i64* %3, align 8
  %1306 = inttoptr i64 %1304 to i32*
  %1307 = load i32, i32* %1306, align 4
  %1308 = add i32 %1307, %1261
  %1309 = zext i32 %1308 to i64
  store i64 %1309, i64* %RSI.i1065, align 8
  %1310 = icmp ult i32 %1308, %1261
  %1311 = icmp ult i32 %1308, %1307
  %1312 = or i1 %1310, %1311
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %14, align 1
  %1314 = and i32 %1308, 255
  %1315 = tail call i32 @llvm.ctpop.i32(i32 %1314)
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  %1318 = xor i8 %1317, 1
  store i8 %1318, i8* %21, align 1
  %1319 = xor i32 %1307, %1261
  %1320 = xor i32 %1319, %1308
  %1321 = lshr i32 %1320, 4
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  store i8 %1323, i8* %26, align 1
  %1324 = icmp eq i32 %1308, 0
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %29, align 1
  %1326 = lshr i32 %1308, 31
  %1327 = trunc i32 %1326 to i8
  store i8 %1327, i8* %32, align 1
  %1328 = lshr i32 %1261, 31
  %1329 = lshr i32 %1307, 31
  %1330 = xor i32 %1326, %1328
  %1331 = xor i32 %1326, %1329
  %1332 = add nuw nsw i32 %1330, %1331
  %1333 = icmp eq i32 %1332, 2
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %38, align 1
  %1335 = load i32, i32* %EDX.i793, align 4
  %1336 = zext i32 %1335 to i64
  store i64 %1336, i64* %RDI.i1047, align 8
  %1337 = load i64, i64* %RBP.i, align 8
  %1338 = add i64 %1337, -56
  %1339 = load i32, i32* %EAX.i830, align 4
  %1340 = add i64 %1101, 108
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1338 to i32*
  store i32 %1339, i32* %1341, align 4
  %1342 = load i64, i64* %3, align 8
  %1343 = add i64 %1342, -57472
  %1344 = add i64 %1342, 5
  %1345 = load i64, i64* %6, align 8
  %1346 = add i64 %1345, -8
  %1347 = inttoptr i64 %1346 to i64*
  store i64 %1344, i64* %1347, align 8
  store i64 %1346, i64* %6, align 8
  store i64 %1343, i64* %3, align 8
  %call2_436230 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1343, %struct.Memory* %2)
  %1348 = load i64, i64* %RBP.i, align 8
  %1349 = add i64 %1348, -56
  %1350 = load i64, i64* %3, align 8
  %1351 = add i64 %1350, 3
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1349 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = zext i32 %1353 to i64
  store i64 %1354, i64* %RDI.i1047, align 8
  %1355 = load i32, i32* %EAX.i830, align 4
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RSI.i1065, align 8
  %1357 = add i64 %1350, -57477
  %1358 = add i64 %1350, 10
  %1359 = load i64, i64* %6, align 8
  %1360 = add i64 %1359, -8
  %1361 = inttoptr i64 %1360 to i64*
  store i64 %1358, i64* %1361, align 8
  store i64 %1360, i64* %6, align 8
  store i64 %1357, i64* %3, align 8
  %call2_43623a = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1357, %struct.Memory* %2)
  %1362 = load i64, i64* %RBP.i, align 8
  %1363 = add i64 %1362, -40
  %1364 = load i64, i64* %3, align 8
  %1365 = add i64 %1364, 4
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1363 to i64*
  %1367 = load i64, i64* %1366, align 8
  store i64 %1367, i64* %RCX.i1059, align 8
  %1368 = add i64 %1367, 8
  %1369 = add i64 %1364, 8
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i64*
  %1371 = load i64, i64* %1370, align 8
  store i64 %1371, i64* %RCX.i1059, align 8
  %1372 = add i64 %1362, -44
  %1373 = add i64 %1364, 12
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i32*
  %1375 = load i32, i32* %1374, align 4
  %1376 = sext i32 %1375 to i64
  store i64 %1376, i64* %R8.i1057, align 8
  %1377 = shl nsw i64 %1376, 3
  %1378 = add i64 %1377, %1371
  %1379 = add i64 %1364, 16
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1378 to i64*
  %1381 = load i64, i64* %1380, align 8
  store i64 %1381, i64* %RCX.i1059, align 8
  %1382 = add i64 %1362, -48
  %1383 = add i64 %1364, 20
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = sext i32 %1385 to i64
  store i64 %1386, i64* %R8.i1057, align 8
  %1387 = load i64, i64* %RAX.i1031, align 8
  %1388 = shl nsw i64 %1386, 2
  %1389 = add i64 %1381, %1388
  %1390 = add i64 %1364, 24
  store i64 %1390, i64* %3, align 8
  %1391 = trunc i64 %1387 to i32
  %1392 = inttoptr i64 %1389 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = add i32 %1393, %1391
  %1395 = zext i32 %1394 to i64
  store i64 %1395, i64* %RAX.i1031, align 8
  %1396 = icmp ult i32 %1394, %1391
  %1397 = icmp ult i32 %1394, %1393
  %1398 = or i1 %1396, %1397
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %14, align 1
  %1400 = and i32 %1394, 255
  %1401 = tail call i32 @llvm.ctpop.i32(i32 %1400)
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = xor i8 %1403, 1
  store i8 %1404, i8* %21, align 1
  %1405 = xor i32 %1393, %1391
  %1406 = xor i32 %1405, %1394
  %1407 = lshr i32 %1406, 4
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  store i8 %1409, i8* %26, align 1
  %1410 = icmp eq i32 %1394, 0
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %29, align 1
  %1412 = lshr i32 %1394, 31
  %1413 = trunc i32 %1412 to i8
  store i8 %1413, i8* %32, align 1
  %1414 = lshr i32 %1391, 31
  %1415 = lshr i32 %1393, 31
  %1416 = xor i32 %1412, %1414
  %1417 = xor i32 %1412, %1415
  %1418 = add nuw nsw i32 %1416, %1417
  %1419 = icmp eq i32 %1418, 2
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %38, align 1
  %1421 = add i64 %1364, 28
  store i64 %1421, i64* %3, align 8
  store i32 %1394, i32* %1392, align 4
  %1422 = load i64, i64* %RBP.i, align 8
  %1423 = add i64 %1422, -52
  %1424 = load i64, i64* %3, align 8
  %1425 = add i64 %1424, 3
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1423 to i32*
  %1427 = load i32, i32* %1426, align 4
  %1428 = zext i32 %1427 to i64
  store i64 %1428, i64* %RAX.i1031, align 8
  %1429 = add i64 %1422, -40
  %1430 = add i64 %1424, 7
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i64*
  %1432 = load i64, i64* %1431, align 8
  store i64 %1432, i64* %RCX.i1059, align 8
  %1433 = add i64 %1432, 8
  %1434 = add i64 %1424, 11
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i64*
  %1436 = load i64, i64* %1435, align 8
  store i64 %1436, i64* %RCX.i1059, align 8
  %1437 = add i64 %1422, -44
  %1438 = add i64 %1424, 15
  store i64 %1438, i64* %3, align 8
  %1439 = inttoptr i64 %1437 to i32*
  %1440 = load i32, i32* %1439, align 4
  %1441 = sext i32 %1440 to i64
  store i64 %1441, i64* %R8.i1057, align 8
  %1442 = shl nsw i64 %1441, 3
  %1443 = add i64 %1442, %1436
  %1444 = add i64 %1424, 19
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i64*
  %1446 = load i64, i64* %1445, align 8
  store i64 %1446, i64* %RCX.i1059, align 8
  %1447 = add i64 %1422, -48
  %1448 = add i64 %1424, 23
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i32*
  %1450 = load i32, i32* %1449, align 4
  %1451 = sext i32 %1450 to i64
  store i64 %1451, i64* %R8.i1057, align 8
  %1452 = shl nsw i64 %1451, 2
  %1453 = add i64 %1452, %1446
  %1454 = add i64 %1424, 27
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i32*
  %1456 = load i32, i32* %1455, align 4
  %1457 = sub i32 %1456, %1427
  %1458 = zext i32 %1457 to i64
  store i64 %1458, i64* %RDX.i1062, align 8
  %1459 = icmp ult i32 %1456, %1427
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %14, align 1
  %1461 = and i32 %1457, 255
  %1462 = tail call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  store i8 %1465, i8* %21, align 1
  %1466 = xor i32 %1427, %1456
  %1467 = xor i32 %1466, %1457
  %1468 = lshr i32 %1467, 4
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  store i8 %1470, i8* %26, align 1
  %1471 = icmp eq i32 %1457, 0
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %29, align 1
  %1473 = lshr i32 %1457, 31
  %1474 = trunc i32 %1473 to i8
  store i8 %1474, i8* %32, align 1
  %1475 = lshr i32 %1456, 31
  %1476 = lshr i32 %1427, 31
  %1477 = xor i32 %1476, %1475
  %1478 = xor i32 %1473, %1475
  %1479 = add nuw nsw i32 %1478, %1477
  %1480 = icmp eq i32 %1479, 2
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %38, align 1
  %1482 = add i64 %1424, 33
  store i64 %1482, i64* %3, align 8
  store i32 %1457, i32* %1455, align 4
  %1483 = load i64, i64* %RBP.i, align 8
  %1484 = add i64 %1483, -32
  %1485 = load i64, i64* %3, align 8
  %1486 = add i64 %1485, 4
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1484 to i64*
  %1488 = load i64, i64* %1487, align 8
  store i64 %1488, i64* %RCX.i1059, align 8
  %1489 = add i64 %1488, 16
  %1490 = add i64 %1485, 8
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i64*
  %1492 = load i64, i64* %1491, align 8
  store i64 %1492, i64* %RCX.i1059, align 8
  %1493 = add i64 %1483, -44
  %1494 = add i64 %1485, 12
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = sext i32 %1496 to i64
  store i64 %1497, i64* %R8.i1057, align 8
  %1498 = shl nsw i64 %1497, 3
  %1499 = add i64 %1498, %1492
  %1500 = add i64 %1485, 16
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %RCX.i1059, align 8
  %1503 = add i64 %1483, -48
  %1504 = add i64 %1485, 20
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = sext i32 %1506 to i64
  store i64 %1507, i64* %R8.i1057, align 8
  %1508 = shl nsw i64 %1507, 2
  %1509 = add i64 %1508, %1502
  %1510 = add i64 %1485, 24
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  %1512 = load i32, i32* %1511, align 4
  %1513 = zext i32 %1512 to i64
  store i64 %1513, i64* %RAX.i1031, align 8
  %1514 = add i64 %1483, -40
  %1515 = add i64 %1485, 28
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i64*
  %1517 = load i64, i64* %1516, align 8
  store i64 %1517, i64* %RCX.i1059, align 8
  %1518 = add i64 %1517, 16
  %1519 = add i64 %1485, 32
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i64*
  %1521 = load i64, i64* %1520, align 8
  store i64 %1521, i64* %RCX.i1059, align 8
  %1522 = add i64 %1485, 36
  store i64 %1522, i64* %3, align 8
  %1523 = load i32, i32* %1495, align 4
  %1524 = sext i32 %1523 to i64
  store i64 %1524, i64* %R8.i1057, align 8
  %1525 = shl nsw i64 %1524, 3
  %1526 = add i64 %1525, %1521
  %1527 = add i64 %1485, 40
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i64*
  %1529 = load i64, i64* %1528, align 8
  store i64 %1529, i64* %RCX.i1059, align 8
  %1530 = add i64 %1485, 44
  store i64 %1530, i64* %3, align 8
  %1531 = load i32, i32* %1505, align 4
  %1532 = sext i32 %1531 to i64
  store i64 %1532, i64* %R8.i1057, align 8
  %1533 = shl nsw i64 %1532, 2
  %1534 = add i64 %1533, %1529
  %1535 = add i64 %1485, 48
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  store i32 %1512, i32* %1536, align 4
  %1537 = load i64, i64* %RBP.i, align 8
  %1538 = add i64 %1537, -24
  %1539 = load i64, i64* %3, align 8
  %1540 = add i64 %1539, 4
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1538 to i64*
  %1542 = load i64, i64* %1541, align 8
  store i64 %1542, i64* %RCX.i1059, align 8
  %1543 = add i64 %1542, 8
  %1544 = add i64 %1539, 8
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i64*
  %1546 = load i64, i64* %1545, align 8
  store i64 %1546, i64* %RCX.i1059, align 8
  %1547 = add i64 %1537, -44
  %1548 = add i64 %1539, 11
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = add i32 %1550, -1
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RAX.i1031, align 8
  %1553 = icmp eq i32 %1550, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %14, align 1
  %1555 = and i32 %1551, 255
  %1556 = tail call i32 @llvm.ctpop.i32(i32 %1555)
  %1557 = trunc i32 %1556 to i8
  %1558 = and i8 %1557, 1
  %1559 = xor i8 %1558, 1
  store i8 %1559, i8* %21, align 1
  %1560 = xor i32 %1551, %1550
  %1561 = lshr i32 %1560, 4
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  store i8 %1563, i8* %26, align 1
  %1564 = icmp eq i32 %1551, 0
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %29, align 1
  %1566 = lshr i32 %1551, 31
  %1567 = trunc i32 %1566 to i8
  store i8 %1567, i8* %32, align 1
  %1568 = lshr i32 %1550, 31
  %1569 = xor i32 %1566, %1568
  %1570 = add nuw nsw i32 %1569, %1568
  %1571 = icmp eq i32 %1570, 2
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %38, align 1
  %1573 = sext i32 %1551 to i64
  store i64 %1573, i64* %R8.i1057, align 8
  %1574 = shl nsw i64 %1573, 3
  %1575 = add i64 %1546, %1574
  %1576 = add i64 %1539, 21
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i64*
  %1578 = load i64, i64* %1577, align 8
  store i64 %1578, i64* %RCX.i1059, align 8
  %1579 = add i64 %1537, -48
  %1580 = add i64 %1539, 25
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = sext i32 %1582 to i64
  store i64 %1583, i64* %R8.i1057, align 8
  %1584 = shl nsw i64 %1583, 2
  %1585 = add i64 %1584, %1578
  %1586 = add i64 %1539, 29
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i32*
  %1588 = load i32, i32* %1587, align 4
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RAX.i1031, align 8
  %1590 = add i64 %1537, -16
  %1591 = add i64 %1539, 33
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1590 to i64*
  %1593 = load i64, i64* %1592, align 8
  store i64 %1593, i64* %RCX.i1059, align 8
  %1594 = add i64 %1593, 312
  %1595 = add i64 %1539, 40
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1594 to i64*
  %1597 = load i64, i64* %1596, align 8
  store i64 %1597, i64* %RCX.i1059, align 8
  %1598 = add i64 %1597, 8
  %1599 = add i64 %1539, 44
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i64*
  %1601 = load i64, i64* %1600, align 8
  store i64 %1601, i64* %RCX.i1059, align 8
  %1602 = add i64 %1539, 48
  store i64 %1602, i64* %3, align 8
  %1603 = load i32, i32* %1581, align 4
  %1604 = sext i32 %1603 to i64
  store i64 %1604, i64* %R8.i1057, align 8
  %1605 = shl nsw i64 %1604, 2
  %1606 = add i64 %1601, %1605
  %1607 = add i64 %1539, 52
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i32*
  %1609 = load i32, i32* %1608, align 4
  %1610 = add i32 %1609, %1588
  %1611 = zext i32 %1610 to i64
  store i64 %1611, i64* %RAX.i1031, align 8
  %1612 = icmp ult i32 %1610, %1588
  %1613 = icmp ult i32 %1610, %1609
  %1614 = or i1 %1612, %1613
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %14, align 1
  %1616 = and i32 %1610, 255
  %1617 = tail call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %21, align 1
  %1621 = xor i32 %1609, %1588
  %1622 = xor i32 %1621, %1610
  %1623 = lshr i32 %1622, 4
  %1624 = trunc i32 %1623 to i8
  %1625 = and i8 %1624, 1
  store i8 %1625, i8* %26, align 1
  %1626 = icmp eq i32 %1610, 0
  %1627 = zext i1 %1626 to i8
  store i8 %1627, i8* %29, align 1
  %1628 = lshr i32 %1610, 31
  %1629 = trunc i32 %1628 to i8
  store i8 %1629, i8* %32, align 1
  %1630 = lshr i32 %1588, 31
  %1631 = lshr i32 %1609, 31
  %1632 = xor i32 %1628, %1630
  %1633 = xor i32 %1628, %1631
  %1634 = add nuw nsw i32 %1632, %1633
  %1635 = icmp eq i32 %1634, 2
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %38, align 1
  %1637 = load i64, i64* %RBP.i, align 8
  %1638 = add i64 %1637, -24
  %1639 = add i64 %1539, 56
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1638 to i64*
  %1641 = load i64, i64* %1640, align 8
  store i64 %1641, i64* %RCX.i1059, align 8
  %1642 = add i64 %1641, 16
  %1643 = add i64 %1539, 60
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1642 to i64*
  %1645 = load i64, i64* %1644, align 8
  store i64 %1645, i64* %RCX.i1059, align 8
  %1646 = add i64 %1637, -44
  %1647 = add i64 %1539, 63
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i32*
  %1649 = load i32, i32* %1648, align 4
  %1650 = add i32 %1649, -1
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RDX.i1062, align 8
  %1652 = icmp eq i32 %1649, 0
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %14, align 1
  %1654 = and i32 %1650, 255
  %1655 = tail call i32 @llvm.ctpop.i32(i32 %1654)
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  %1658 = xor i8 %1657, 1
  store i8 %1658, i8* %21, align 1
  %1659 = xor i32 %1650, %1649
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  store i8 %1662, i8* %26, align 1
  %1663 = icmp eq i32 %1650, 0
  %1664 = zext i1 %1663 to i8
  store i8 %1664, i8* %29, align 1
  %1665 = lshr i32 %1650, 31
  %1666 = trunc i32 %1665 to i8
  store i8 %1666, i8* %32, align 1
  %1667 = lshr i32 %1649, 31
  %1668 = xor i32 %1665, %1667
  %1669 = add nuw nsw i32 %1668, %1667
  %1670 = icmp eq i32 %1669, 2
  %1671 = zext i1 %1670 to i8
  store i8 %1671, i8* %38, align 1
  %1672 = sext i32 %1650 to i64
  store i64 %1672, i64* %R8.i1057, align 8
  %1673 = shl nsw i64 %1672, 3
  %1674 = add i64 %1645, %1673
  %1675 = add i64 %1539, 73
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i64*
  %1677 = load i64, i64* %1676, align 8
  store i64 %1677, i64* %RCX.i1059, align 8
  %1678 = add i64 %1637, -48
  %1679 = add i64 %1539, 77
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1678 to i32*
  %1681 = load i32, i32* %1680, align 4
  %1682 = sext i32 %1681 to i64
  store i64 %1682, i64* %R8.i1057, align 8
  %1683 = shl nsw i64 %1682, 2
  %1684 = add i64 %1683, %1677
  %1685 = add i64 %1539, 81
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i32*
  %1687 = load i32, i32* %1686, align 4
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RDX.i1062, align 8
  %1689 = add i64 %1637, -16
  %1690 = add i64 %1539, 85
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i64*
  %1692 = load i64, i64* %1691, align 8
  store i64 %1692, i64* %RCX.i1059, align 8
  %1693 = add i64 %1692, 312
  %1694 = add i64 %1539, 92
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i64*
  %1696 = load i64, i64* %1695, align 8
  store i64 %1696, i64* %RCX.i1059, align 8
  %1697 = add i64 %1696, 32
  %1698 = add i64 %1539, 96
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1697 to i64*
  %1700 = load i64, i64* %1699, align 8
  store i64 %1700, i64* %RCX.i1059, align 8
  %1701 = add i64 %1539, 100
  store i64 %1701, i64* %3, align 8
  %1702 = load i32, i32* %1680, align 4
  %1703 = sext i32 %1702 to i64
  store i64 %1703, i64* %R8.i1057, align 8
  %1704 = shl nsw i64 %1703, 2
  %1705 = add i64 %1700, %1704
  %1706 = add i64 %1539, 104
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = add i32 %1708, %1687
  %1710 = zext i32 %1709 to i64
  store i64 %1710, i64* %RDX.i1062, align 8
  %1711 = icmp ult i32 %1709, %1687
  %1712 = icmp ult i32 %1709, %1708
  %1713 = or i1 %1711, %1712
  %1714 = zext i1 %1713 to i8
  store i8 %1714, i8* %14, align 1
  %1715 = and i32 %1709, 255
  %1716 = tail call i32 @llvm.ctpop.i32(i32 %1715)
  %1717 = trunc i32 %1716 to i8
  %1718 = and i8 %1717, 1
  %1719 = xor i8 %1718, 1
  store i8 %1719, i8* %21, align 1
  %1720 = xor i32 %1708, %1687
  %1721 = xor i32 %1720, %1709
  %1722 = lshr i32 %1721, 4
  %1723 = trunc i32 %1722 to i8
  %1724 = and i8 %1723, 1
  store i8 %1724, i8* %26, align 1
  %1725 = icmp eq i32 %1709, 0
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %29, align 1
  %1727 = lshr i32 %1709, 31
  %1728 = trunc i32 %1727 to i8
  store i8 %1728, i8* %32, align 1
  %1729 = lshr i32 %1687, 31
  %1730 = lshr i32 %1708, 31
  %1731 = xor i32 %1727, %1729
  %1732 = xor i32 %1727, %1730
  %1733 = add nuw nsw i32 %1731, %1732
  %1734 = icmp eq i32 %1733, 2
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %38, align 1
  %1736 = load i32, i32* %EAX.i830, align 4
  %1737 = zext i32 %1736 to i64
  store i64 %1737, i64* %RDI.i1047, align 8
  store i64 %1710, i64* %RSI.i1065, align 8
  %1738 = add i64 %1539, -57596
  %1739 = add i64 %1539, 113
  %1740 = load i64, i64* %6, align 8
  %1741 = add i64 %1740, -8
  %1742 = inttoptr i64 %1741 to i64*
  store i64 %1739, i64* %1742, align 8
  store i64 %1741, i64* %6, align 8
  store i64 %1738, i64* %3, align 8
  %call2_436318 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %1738, %struct.Memory* %2)
  %1743 = load i64, i64* %RBP.i, align 8
  %1744 = add i64 %1743, -40
  %1745 = load i64, i64* %3, align 8
  %1746 = add i64 %1745, 4
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1744 to i64*
  %1748 = load i64, i64* %1747, align 8
  store i64 %1748, i64* %RCX.i1059, align 8
  %1749 = add i64 %1748, 16
  %1750 = add i64 %1745, 8
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i64*
  %1752 = load i64, i64* %1751, align 8
  store i64 %1752, i64* %RCX.i1059, align 8
  %1753 = add i64 %1743, -44
  %1754 = add i64 %1745, 12
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = sext i32 %1756 to i64
  store i64 %1757, i64* %R8.i1057, align 8
  %1758 = shl nsw i64 %1757, 3
  %1759 = add i64 %1758, %1752
  %1760 = add i64 %1745, 16
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1759 to i64*
  %1762 = load i64, i64* %1761, align 8
  store i64 %1762, i64* %RCX.i1059, align 8
  %1763 = add i64 %1743, -48
  %1764 = add i64 %1745, 20
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1763 to i32*
  %1766 = load i32, i32* %1765, align 4
  %1767 = sext i32 %1766 to i64
  store i64 %1767, i64* %R8.i1057, align 8
  %1768 = load i64, i64* %RAX.i1031, align 8
  %1769 = shl nsw i64 %1767, 2
  %1770 = add i64 %1762, %1769
  %1771 = add i64 %1745, 24
  store i64 %1771, i64* %3, align 8
  %1772 = trunc i64 %1768 to i32
  %1773 = inttoptr i64 %1770 to i32*
  %1774 = load i32, i32* %1773, align 4
  %1775 = add i32 %1774, %1772
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RAX.i1031, align 8
  %1777 = icmp ult i32 %1775, %1772
  %1778 = icmp ult i32 %1775, %1774
  %1779 = or i1 %1777, %1778
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %14, align 1
  %1781 = and i32 %1775, 255
  %1782 = tail call i32 @llvm.ctpop.i32(i32 %1781)
  %1783 = trunc i32 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = xor i8 %1784, 1
  store i8 %1785, i8* %21, align 1
  %1786 = xor i32 %1774, %1772
  %1787 = xor i32 %1786, %1775
  %1788 = lshr i32 %1787, 4
  %1789 = trunc i32 %1788 to i8
  %1790 = and i8 %1789, 1
  store i8 %1790, i8* %26, align 1
  %1791 = icmp eq i32 %1775, 0
  %1792 = zext i1 %1791 to i8
  store i8 %1792, i8* %29, align 1
  %1793 = lshr i32 %1775, 31
  %1794 = trunc i32 %1793 to i8
  store i8 %1794, i8* %32, align 1
  %1795 = lshr i32 %1772, 31
  %1796 = lshr i32 %1774, 31
  %1797 = xor i32 %1793, %1795
  %1798 = xor i32 %1793, %1796
  %1799 = add nuw nsw i32 %1797, %1798
  %1800 = icmp eq i32 %1799, 2
  %1801 = zext i1 %1800 to i8
  store i8 %1801, i8* %38, align 1
  %1802 = add i64 %1745, 28
  store i64 %1802, i64* %3, align 8
  store i32 %1775, i32* %1773, align 4
  %1803 = load i64, i64* %RBP.i, align 8
  %1804 = add i64 %1803, -52
  %1805 = load i64, i64* %3, align 8
  %1806 = add i64 %1805, 3
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1804 to i32*
  %1808 = load i32, i32* %1807, align 4
  %1809 = zext i32 %1808 to i64
  store i64 %1809, i64* %RAX.i1031, align 8
  %1810 = add i64 %1803, -40
  %1811 = add i64 %1805, 7
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i64*
  %1813 = load i64, i64* %1812, align 8
  store i64 %1813, i64* %RCX.i1059, align 8
  %1814 = add i64 %1813, 16
  %1815 = add i64 %1805, 11
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i64*
  %1817 = load i64, i64* %1816, align 8
  store i64 %1817, i64* %RCX.i1059, align 8
  %1818 = add i64 %1803, -44
  %1819 = add i64 %1805, 15
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1818 to i32*
  %1821 = load i32, i32* %1820, align 4
  %1822 = sext i32 %1821 to i64
  store i64 %1822, i64* %R8.i1057, align 8
  %1823 = shl nsw i64 %1822, 3
  %1824 = add i64 %1823, %1817
  %1825 = add i64 %1805, 19
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i64*
  %1827 = load i64, i64* %1826, align 8
  store i64 %1827, i64* %RCX.i1059, align 8
  %1828 = add i64 %1803, -48
  %1829 = add i64 %1805, 23
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i32*
  %1831 = load i32, i32* %1830, align 4
  %1832 = sext i32 %1831 to i64
  store i64 %1832, i64* %R8.i1057, align 8
  %1833 = shl nsw i64 %1832, 2
  %1834 = add i64 %1833, %1827
  %1835 = add i64 %1805, 27
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i32*
  %1837 = load i32, i32* %1836, align 4
  %1838 = sub i32 %1837, %1808
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %RDX.i1062, align 8
  %1840 = icmp ult i32 %1837, %1808
  %1841 = zext i1 %1840 to i8
  store i8 %1841, i8* %14, align 1
  %1842 = and i32 %1838, 255
  %1843 = tail call i32 @llvm.ctpop.i32(i32 %1842)
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  %1846 = xor i8 %1845, 1
  store i8 %1846, i8* %21, align 1
  %1847 = xor i32 %1808, %1837
  %1848 = xor i32 %1847, %1838
  %1849 = lshr i32 %1848, 4
  %1850 = trunc i32 %1849 to i8
  %1851 = and i8 %1850, 1
  store i8 %1851, i8* %26, align 1
  %1852 = icmp eq i32 %1838, 0
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %29, align 1
  %1854 = lshr i32 %1838, 31
  %1855 = trunc i32 %1854 to i8
  store i8 %1855, i8* %32, align 1
  %1856 = lshr i32 %1837, 31
  %1857 = lshr i32 %1808, 31
  %1858 = xor i32 %1857, %1856
  %1859 = xor i32 %1854, %1856
  %1860 = add nuw nsw i32 %1859, %1858
  %1861 = icmp eq i32 %1860, 2
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %38, align 1
  %1863 = add i64 %1805, 33
  store i64 %1863, i64* %3, align 8
  store i32 %1838, i32* %1836, align 4
  %1864 = load i64, i64* %RBP.i, align 8
  %1865 = add i64 %1864, -40
  %1866 = load i64, i64* %3, align 8
  %1867 = add i64 %1866, 4
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1865 to i64*
  %1869 = load i64, i64* %1868, align 8
  store i64 %1869, i64* %RCX.i1059, align 8
  %1870 = add i64 %1869, 24
  %1871 = add i64 %1866, 8
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i64*
  %1873 = load i64, i64* %1872, align 8
  store i64 %1873, i64* %RCX.i1059, align 8
  %1874 = add i64 %1864, -44
  %1875 = add i64 %1866, 12
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i32*
  %1877 = load i32, i32* %1876, align 4
  %1878 = sext i32 %1877 to i64
  store i64 %1878, i64* %R8.i1057, align 8
  %1879 = shl nsw i64 %1878, 3
  %1880 = add i64 %1879, %1873
  %1881 = add i64 %1866, 16
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i64*
  %1883 = load i64, i64* %1882, align 8
  store i64 %1883, i64* %RCX.i1059, align 8
  %1884 = add i64 %1864, -48
  %1885 = add i64 %1866, 20
  store i64 %1885, i64* %3, align 8
  %1886 = inttoptr i64 %1884 to i32*
  %1887 = load i32, i32* %1886, align 4
  %1888 = sext i32 %1887 to i64
  store i64 %1888, i64* %R8.i1057, align 8
  %1889 = shl nsw i64 %1888, 2
  %1890 = add i64 %1889, %1883
  %1891 = add i64 %1866, 28
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i32*
  store i32 -987654321, i32* %1892, align 4
  %1893 = load i64, i64* %RBP.i, align 8
  %1894 = add i64 %1893, -48
  %1895 = load i64, i64* %3, align 8
  %1896 = add i64 %1895, 3
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1894 to i32*
  %1898 = load i32, i32* %1897, align 4
  %1899 = add i32 %1898, 1
  %1900 = zext i32 %1899 to i64
  store i64 %1900, i64* %RAX.i1031, align 8
  %1901 = icmp eq i32 %1898, -1
  %1902 = icmp eq i32 %1899, 0
  %1903 = or i1 %1901, %1902
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %14, align 1
  %1905 = and i32 %1899, 255
  %1906 = tail call i32 @llvm.ctpop.i32(i32 %1905)
  %1907 = trunc i32 %1906 to i8
  %1908 = and i8 %1907, 1
  %1909 = xor i8 %1908, 1
  store i8 %1909, i8* %21, align 1
  %1910 = xor i32 %1899, %1898
  %1911 = lshr i32 %1910, 4
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  store i8 %1913, i8* %26, align 1
  %1914 = zext i1 %1902 to i8
  store i8 %1914, i8* %29, align 1
  %1915 = lshr i32 %1899, 31
  %1916 = trunc i32 %1915 to i8
  store i8 %1916, i8* %32, align 1
  %1917 = lshr i32 %1898, 31
  %1918 = xor i32 %1915, %1917
  %1919 = add nuw nsw i32 %1918, %1915
  %1920 = icmp eq i32 %1919, 2
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %38, align 1
  %1922 = add i64 %1895, 9
  store i64 %1922, i64* %3, align 8
  store i32 %1899, i32* %1897, align 4
  %1923 = load i64, i64* %3, align 8
  %1924 = add i64 %1923, -634
  store i64 %1924, i64* %3, align 8
  br label %block_.L_436105

block_.L_436384:                                  ; preds = %block_.L_436105
  %1925 = load i64, i64* %717, align 8
  store i64 %1925, i64* %RCX.i1059, align 8
  %1926 = add i64 %1925, 136
  %1927 = add i64 %749, 27
  store i64 %1927, i64* %3, align 8
  %1928 = inttoptr i64 %1926 to i32*
  %1929 = load i32, i32* %1928, align 4
  %1930 = sext i32 %1929 to i64
  store i64 %1930, i64* %RCX.i1059, align 8
  %1931 = shl nsw i64 %1930, 2
  %1932 = add i64 %1931, %767
  %1933 = add i64 %749, 30
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i32*
  %1935 = load i32, i32* %1934, align 4
  %1936 = zext i32 %1935 to i64
  store i64 %1936, i64* %RDX.i1062, align 8
  %1937 = add i64 %709, -40
  %1938 = add i64 %749, 34
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i64*
  %1940 = load i64, i64* %1939, align 8
  store i64 %1940, i64* %RAX.i1031, align 8
  %1941 = add i64 %1940, 8
  %1942 = add i64 %749, 38
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i64*
  %1944 = load i64, i64* %1943, align 8
  store i64 %1944, i64* %RAX.i1031, align 8
  %1945 = add i64 %749, 42
  store i64 %1945, i64* %3, align 8
  %1946 = load i32, i32* %760, align 4
  %1947 = sext i32 %1946 to i64
  store i64 %1947, i64* %RCX.i1059, align 8
  %1948 = shl nsw i64 %1947, 3
  %1949 = add i64 %1948, %1944
  %1950 = add i64 %749, 46
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i64*
  %1952 = load i64, i64* %1951, align 8
  store i64 %1952, i64* %RAX.i1031, align 8
  %1953 = add i64 %749, 50
  store i64 %1953, i64* %3, align 8
  %1954 = load i64, i64* %717, align 8
  store i64 %1954, i64* %RCX.i1059, align 8
  %1955 = add i64 %1954, 136
  %1956 = add i64 %749, 57
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to i32*
  %1958 = load i32, i32* %1957, align 4
  %1959 = sext i32 %1958 to i64
  store i64 %1959, i64* %RCX.i1059, align 8
  %1960 = shl nsw i64 %1959, 2
  %1961 = add i64 %1960, %1952
  %1962 = add i64 %749, 60
  store i64 %1962, i64* %3, align 8
  %1963 = inttoptr i64 %1961 to i32*
  store i32 %1935, i32* %1963, align 4
  %1964 = load i64, i64* %RBP.i, align 8
  %1965 = add i64 %1964, -24
  %1966 = load i64, i64* %3, align 8
  %1967 = add i64 %1966, 4
  store i64 %1967, i64* %3, align 8
  %1968 = inttoptr i64 %1965 to i64*
  %1969 = load i64, i64* %1968, align 8
  store i64 %1969, i64* %RAX.i1031, align 8
  %1970 = add i64 %1969, 8
  %1971 = add i64 %1966, 8
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i64*
  %1973 = load i64, i64* %1972, align 8
  store i64 %1973, i64* %RAX.i1031, align 8
  %1974 = add i64 %1964, -44
  %1975 = add i64 %1966, 11
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1974 to i32*
  %1977 = load i32, i32* %1976, align 4
  %1978 = add i32 %1977, -1
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RDX.i1062, align 8
  %1980 = icmp eq i32 %1977, 0
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %14, align 1
  %1982 = and i32 %1978, 255
  %1983 = tail call i32 @llvm.ctpop.i32(i32 %1982)
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  %1986 = xor i8 %1985, 1
  store i8 %1986, i8* %21, align 1
  %1987 = xor i32 %1978, %1977
  %1988 = lshr i32 %1987, 4
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  store i8 %1990, i8* %26, align 1
  %1991 = icmp eq i32 %1978, 0
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %29, align 1
  %1993 = lshr i32 %1978, 31
  %1994 = trunc i32 %1993 to i8
  store i8 %1994, i8* %32, align 1
  %1995 = lshr i32 %1977, 31
  %1996 = xor i32 %1993, %1995
  %1997 = add nuw nsw i32 %1996, %1995
  %1998 = icmp eq i32 %1997, 2
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %38, align 1
  %2000 = sext i32 %1978 to i64
  store i64 %2000, i64* %RCX.i1059, align 8
  %2001 = shl nsw i64 %2000, 3
  %2002 = add i64 %1973, %2001
  %2003 = add i64 %1966, 21
  store i64 %2003, i64* %3, align 8
  %2004 = inttoptr i64 %2002 to i64*
  %2005 = load i64, i64* %2004, align 8
  store i64 %2005, i64* %RAX.i1031, align 8
  %2006 = add i64 %1964, -16
  %2007 = add i64 %1966, 25
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2006 to i64*
  %2009 = load i64, i64* %2008, align 8
  store i64 %2009, i64* %RCX.i1059, align 8
  %2010 = add i64 %2009, 136
  %2011 = add i64 %1966, 31
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2010 to i32*
  %2013 = load i32, i32* %2012, align 4
  %2014 = add i32 %2013, -1
  %2015 = zext i32 %2014 to i64
  store i64 %2015, i64* %RDX.i1062, align 8
  %2016 = icmp eq i32 %2013, 0
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %14, align 1
  %2018 = and i32 %2014, 255
  %2019 = tail call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %21, align 1
  %2023 = xor i32 %2014, %2013
  %2024 = lshr i32 %2023, 4
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  store i8 %2026, i8* %26, align 1
  %2027 = icmp eq i32 %2014, 0
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %29, align 1
  %2029 = lshr i32 %2014, 31
  %2030 = trunc i32 %2029 to i8
  store i8 %2030, i8* %32, align 1
  %2031 = lshr i32 %2013, 31
  %2032 = xor i32 %2029, %2031
  %2033 = add nuw nsw i32 %2032, %2031
  %2034 = icmp eq i32 %2033, 2
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %38, align 1
  %2036 = sext i32 %2014 to i64
  store i64 %2036, i64* %RCX.i1059, align 8
  %2037 = shl nsw i64 %2036, 2
  %2038 = add i64 %2005, %2037
  %2039 = add i64 %1966, 40
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = zext i32 %2041 to i64
  store i64 %2042, i64* %RDX.i1062, align 8
  %2043 = load i64, i64* %RBP.i, align 8
  %2044 = add i64 %2043, -16
  %2045 = add i64 %1966, 44
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i64*
  %2047 = load i64, i64* %2046, align 8
  store i64 %2047, i64* %RAX.i1031, align 8
  %2048 = add i64 %2047, 312
  %2049 = add i64 %1966, 51
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i64*
  %2051 = load i64, i64* %2050, align 8
  store i64 %2051, i64* %RAX.i1031, align 8
  %2052 = add i64 %1966, 54
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i64*
  %2054 = load i64, i64* %2053, align 8
  store i64 %2054, i64* %RAX.i1031, align 8
  %2055 = add i64 %1966, 58
  store i64 %2055, i64* %3, align 8
  %2056 = load i64, i64* %2046, align 8
  store i64 %2056, i64* %RCX.i1059, align 8
  %2057 = add i64 %2056, 136
  %2058 = add i64 %1966, 64
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i32*
  %2060 = load i32, i32* %2059, align 4
  %2061 = add i32 %2060, -1
  %2062 = zext i32 %2061 to i64
  store i64 %2062, i64* %RSI.i1065, align 8
  %2063 = icmp eq i32 %2060, 0
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %14, align 1
  %2065 = and i32 %2061, 255
  %2066 = tail call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  store i8 %2069, i8* %21, align 1
  %2070 = xor i32 %2061, %2060
  %2071 = lshr i32 %2070, 4
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  store i8 %2073, i8* %26, align 1
  %2074 = icmp eq i32 %2061, 0
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %29, align 1
  %2076 = lshr i32 %2061, 31
  %2077 = trunc i32 %2076 to i8
  store i8 %2077, i8* %32, align 1
  %2078 = lshr i32 %2060, 31
  %2079 = xor i32 %2076, %2078
  %2080 = add nuw nsw i32 %2079, %2078
  %2081 = icmp eq i32 %2080, 2
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %38, align 1
  %2083 = sext i32 %2061 to i64
  store i64 %2083, i64* %RCX.i1059, align 8
  %2084 = shl nsw i64 %2083, 2
  %2085 = add i64 %2054, %2084
  %2086 = add i64 %1966, 73
  store i64 %2086, i64* %3, align 8
  %2087 = inttoptr i64 %2085 to i32*
  %2088 = load i32, i32* %2087, align 4
  %2089 = add i32 %2088, %2041
  %2090 = zext i32 %2089 to i64
  store i64 %2090, i64* %RDX.i1062, align 8
  %2091 = icmp ult i32 %2089, %2041
  %2092 = icmp ult i32 %2089, %2088
  %2093 = or i1 %2091, %2092
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %14, align 1
  %2095 = and i32 %2089, 255
  %2096 = tail call i32 @llvm.ctpop.i32(i32 %2095)
  %2097 = trunc i32 %2096 to i8
  %2098 = and i8 %2097, 1
  %2099 = xor i8 %2098, 1
  store i8 %2099, i8* %21, align 1
  %2100 = xor i32 %2088, %2041
  %2101 = xor i32 %2100, %2089
  %2102 = lshr i32 %2101, 4
  %2103 = trunc i32 %2102 to i8
  %2104 = and i8 %2103, 1
  store i8 %2104, i8* %26, align 1
  %2105 = icmp eq i32 %2089, 0
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %29, align 1
  %2107 = lshr i32 %2089, 31
  %2108 = trunc i32 %2107 to i8
  store i8 %2108, i8* %32, align 1
  %2109 = lshr i32 %2041, 31
  %2110 = lshr i32 %2088, 31
  %2111 = xor i32 %2107, %2109
  %2112 = xor i32 %2107, %2110
  %2113 = add nuw nsw i32 %2111, %2112
  %2114 = icmp eq i32 %2113, 2
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %38, align 1
  %2116 = load i64, i64* %RBP.i, align 8
  %2117 = add i64 %2116, -24
  %2118 = add i64 %1966, 77
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2117 to i64*
  %2120 = load i64, i64* %2119, align 8
  store i64 %2120, i64* %RAX.i1031, align 8
  %2121 = add i64 %2120, 16
  %2122 = add i64 %1966, 81
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i64*
  %2124 = load i64, i64* %2123, align 8
  store i64 %2124, i64* %RAX.i1031, align 8
  %2125 = add i64 %2116, -44
  %2126 = add i64 %1966, 84
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i32*
  %2128 = load i32, i32* %2127, align 4
  %2129 = add i32 %2128, -1
  %2130 = zext i32 %2129 to i64
  store i64 %2130, i64* %RSI.i1065, align 8
  %2131 = icmp eq i32 %2128, 0
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %14, align 1
  %2133 = and i32 %2129, 255
  %2134 = tail call i32 @llvm.ctpop.i32(i32 %2133)
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = xor i8 %2136, 1
  store i8 %2137, i8* %21, align 1
  %2138 = xor i32 %2129, %2128
  %2139 = lshr i32 %2138, 4
  %2140 = trunc i32 %2139 to i8
  %2141 = and i8 %2140, 1
  store i8 %2141, i8* %26, align 1
  %2142 = icmp eq i32 %2129, 0
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %29, align 1
  %2144 = lshr i32 %2129, 31
  %2145 = trunc i32 %2144 to i8
  store i8 %2145, i8* %32, align 1
  %2146 = lshr i32 %2128, 31
  %2147 = xor i32 %2144, %2146
  %2148 = add nuw nsw i32 %2147, %2146
  %2149 = icmp eq i32 %2148, 2
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %38, align 1
  %2151 = sext i32 %2129 to i64
  store i64 %2151, i64* %RCX.i1059, align 8
  %2152 = shl nsw i64 %2151, 3
  %2153 = add i64 %2124, %2152
  %2154 = add i64 %1966, 94
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2153 to i64*
  %2156 = load i64, i64* %2155, align 8
  store i64 %2156, i64* %RAX.i1031, align 8
  %2157 = add i64 %2116, -16
  %2158 = add i64 %1966, 98
  store i64 %2158, i64* %3, align 8
  %2159 = inttoptr i64 %2157 to i64*
  %2160 = load i64, i64* %2159, align 8
  store i64 %2160, i64* %RCX.i1059, align 8
  %2161 = add i64 %2160, 136
  %2162 = add i64 %1966, 104
  store i64 %2162, i64* %3, align 8
  %2163 = inttoptr i64 %2161 to i32*
  %2164 = load i32, i32* %2163, align 4
  %2165 = add i32 %2164, -1
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RSI.i1065, align 8
  %2167 = icmp eq i32 %2164, 0
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %14, align 1
  %2169 = and i32 %2165, 255
  %2170 = tail call i32 @llvm.ctpop.i32(i32 %2169)
  %2171 = trunc i32 %2170 to i8
  %2172 = and i8 %2171, 1
  %2173 = xor i8 %2172, 1
  store i8 %2173, i8* %21, align 1
  %2174 = xor i32 %2165, %2164
  %2175 = lshr i32 %2174, 4
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  store i8 %2177, i8* %26, align 1
  %2178 = icmp eq i32 %2165, 0
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %29, align 1
  %2180 = lshr i32 %2165, 31
  %2181 = trunc i32 %2180 to i8
  store i8 %2181, i8* %32, align 1
  %2182 = lshr i32 %2164, 31
  %2183 = xor i32 %2180, %2182
  %2184 = add nuw nsw i32 %2183, %2182
  %2185 = icmp eq i32 %2184, 2
  %2186 = zext i1 %2185 to i8
  store i8 %2186, i8* %38, align 1
  %2187 = sext i32 %2165 to i64
  store i64 %2187, i64* %RCX.i1059, align 8
  %2188 = shl nsw i64 %2187, 2
  %2189 = add i64 %2156, %2188
  %2190 = add i64 %1966, 113
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i32*
  %2192 = load i32, i32* %2191, align 4
  %2193 = zext i32 %2192 to i64
  store i64 %2193, i64* %RSI.i1065, align 8
  %2194 = load i64, i64* %RBP.i, align 8
  %2195 = add i64 %2194, -16
  %2196 = add i64 %1966, 117
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i64*
  %2198 = load i64, i64* %2197, align 8
  store i64 %2198, i64* %RAX.i1031, align 8
  %2199 = add i64 %2198, 312
  %2200 = add i64 %1966, 124
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i64*
  %2202 = load i64, i64* %2201, align 8
  store i64 %2202, i64* %RAX.i1031, align 8
  %2203 = add i64 %2202, 24
  %2204 = add i64 %1966, 128
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i64*
  %2206 = load i64, i64* %2205, align 8
  store i64 %2206, i64* %RAX.i1031, align 8
  %2207 = add i64 %1966, 132
  store i64 %2207, i64* %3, align 8
  %2208 = load i64, i64* %2197, align 8
  store i64 %2208, i64* %RCX.i1059, align 8
  %2209 = add i64 %2208, 136
  %2210 = add i64 %1966, 138
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i32*
  %2212 = load i32, i32* %2211, align 4
  %2213 = add i32 %2212, -1
  %2214 = zext i32 %2213 to i64
  store i64 %2214, i64* %RDI.i1047, align 8
  %2215 = icmp eq i32 %2212, 0
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %14, align 1
  %2217 = and i32 %2213, 255
  %2218 = tail call i32 @llvm.ctpop.i32(i32 %2217)
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  %2221 = xor i8 %2220, 1
  store i8 %2221, i8* %21, align 1
  %2222 = xor i32 %2213, %2212
  %2223 = lshr i32 %2222, 4
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  store i8 %2225, i8* %26, align 1
  %2226 = icmp eq i32 %2213, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %29, align 1
  %2228 = lshr i32 %2213, 31
  %2229 = trunc i32 %2228 to i8
  store i8 %2229, i8* %32, align 1
  %2230 = lshr i32 %2212, 31
  %2231 = xor i32 %2228, %2230
  %2232 = add nuw nsw i32 %2231, %2230
  %2233 = icmp eq i32 %2232, 2
  %2234 = zext i1 %2233 to i8
  store i8 %2234, i8* %38, align 1
  %2235 = sext i32 %2213 to i64
  store i64 %2235, i64* %RCX.i1059, align 8
  %2236 = shl nsw i64 %2235, 2
  %2237 = add i64 %2206, %2236
  %2238 = add i64 %1966, 147
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i32*
  %2240 = load i32, i32* %2239, align 4
  %2241 = add i32 %2240, %2192
  %2242 = zext i32 %2241 to i64
  store i64 %2242, i64* %RSI.i1065, align 8
  %2243 = icmp ult i32 %2241, %2192
  %2244 = icmp ult i32 %2241, %2240
  %2245 = or i1 %2243, %2244
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %14, align 1
  %2247 = and i32 %2241, 255
  %2248 = tail call i32 @llvm.ctpop.i32(i32 %2247)
  %2249 = trunc i32 %2248 to i8
  %2250 = and i8 %2249, 1
  %2251 = xor i8 %2250, 1
  store i8 %2251, i8* %21, align 1
  %2252 = xor i32 %2240, %2192
  %2253 = xor i32 %2252, %2241
  %2254 = lshr i32 %2253, 4
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  store i8 %2256, i8* %26, align 1
  %2257 = icmp eq i32 %2241, 0
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %29, align 1
  %2259 = lshr i32 %2241, 31
  %2260 = trunc i32 %2259 to i8
  store i8 %2260, i8* %32, align 1
  %2261 = lshr i32 %2192, 31
  %2262 = lshr i32 %2240, 31
  %2263 = xor i32 %2259, %2261
  %2264 = xor i32 %2259, %2262
  %2265 = add nuw nsw i32 %2263, %2264
  %2266 = icmp eq i32 %2265, 2
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %38, align 1
  %2268 = load i32, i32* %EDX.i793, align 4
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RDI.i1047, align 8
  %2270 = add i64 %1966, -57872
  %2271 = add i64 %1966, 154
  %2272 = load i64, i64* %6, align 8
  %2273 = add i64 %2272, -8
  %2274 = inttoptr i64 %2273 to i64*
  store i64 %2271, i64* %2274, align 8
  store i64 %2273, i64* %6, align 8
  store i64 %2270, i64* %3, align 8
  %call2_436455 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2270, %struct.Memory* %2)
  %2275 = load i64, i64* %RBP.i, align 8
  %2276 = add i64 %2275, -24
  %2277 = load i64, i64* %3, align 8
  %2278 = add i64 %2277, 4
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2276 to i64*
  %2280 = load i64, i64* %2279, align 8
  store i64 %2280, i64* %RCX.i1059, align 8
  %2281 = add i64 %2277, 7
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2280 to i64*
  %2283 = load i64, i64* %2282, align 8
  store i64 %2283, i64* %RCX.i1059, align 8
  %2284 = add i64 %2275, -44
  %2285 = add i64 %2277, 10
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i32*
  %2287 = load i32, i32* %2286, align 4
  %2288 = add i32 %2287, -1
  %2289 = zext i32 %2288 to i64
  store i64 %2289, i64* %RDX.i1062, align 8
  %2290 = icmp eq i32 %2287, 0
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %14, align 1
  %2292 = and i32 %2288, 255
  %2293 = tail call i32 @llvm.ctpop.i32(i32 %2292)
  %2294 = trunc i32 %2293 to i8
  %2295 = and i8 %2294, 1
  %2296 = xor i8 %2295, 1
  store i8 %2296, i8* %21, align 1
  %2297 = xor i32 %2288, %2287
  %2298 = lshr i32 %2297, 4
  %2299 = trunc i32 %2298 to i8
  %2300 = and i8 %2299, 1
  store i8 %2300, i8* %26, align 1
  %2301 = icmp eq i32 %2288, 0
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %29, align 1
  %2303 = lshr i32 %2288, 31
  %2304 = trunc i32 %2303 to i8
  store i8 %2304, i8* %32, align 1
  %2305 = lshr i32 %2287, 31
  %2306 = xor i32 %2303, %2305
  %2307 = add nuw nsw i32 %2306, %2305
  %2308 = icmp eq i32 %2307, 2
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %38, align 1
  %2310 = sext i32 %2288 to i64
  store i64 %2310, i64* %R8.i1057, align 8
  %2311 = shl nsw i64 %2310, 3
  %2312 = add i64 %2283, %2311
  %2313 = add i64 %2277, 20
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2312 to i64*
  %2315 = load i64, i64* %2314, align 8
  store i64 %2315, i64* %RCX.i1059, align 8
  %2316 = add i64 %2277, 22
  store i64 %2316, i64* %3, align 8
  %2317 = inttoptr i64 %2315 to i32*
  %2318 = load i32, i32* %2317, align 4
  %2319 = zext i32 %2318 to i64
  store i64 %2319, i64* %RDX.i1062, align 8
  %2320 = add i64 %2275, -16
  %2321 = add i64 %2277, 26
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i64*
  %2323 = load i64, i64* %2322, align 8
  store i64 %2323, i64* %RCX.i1059, align 8
  %2324 = add i64 %2323, 368
  %2325 = add i64 %2277, 33
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i64*
  %2327 = load i64, i64* %2326, align 8
  store i64 %2327, i64* %RCX.i1059, align 8
  %2328 = add i64 %2277, 37
  store i64 %2328, i64* %3, align 8
  %2329 = load i64, i64* %2322, align 8
  store i64 %2329, i64* %R8.i1057, align 8
  %2330 = add i64 %2329, 136
  %2331 = add i64 %2277, 44
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i32*
  %2333 = load i32, i32* %2332, align 4
  %2334 = sext i32 %2333 to i64
  store i64 %2334, i64* %R8.i1057, align 8
  %2335 = shl nsw i64 %2334, 2
  %2336 = add i64 %2327, %2335
  %2337 = add i64 %2277, 48
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2336 to i32*
  %2339 = load i32, i32* %2338, align 4
  %2340 = add i32 %2339, %2318
  %2341 = zext i32 %2340 to i64
  store i64 %2341, i64* %RDX.i1062, align 8
  %2342 = icmp ult i32 %2340, %2318
  %2343 = icmp ult i32 %2340, %2339
  %2344 = or i1 %2342, %2343
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %14, align 1
  %2346 = and i32 %2340, 255
  %2347 = tail call i32 @llvm.ctpop.i32(i32 %2346)
  %2348 = trunc i32 %2347 to i8
  %2349 = and i8 %2348, 1
  %2350 = xor i8 %2349, 1
  store i8 %2350, i8* %21, align 1
  %2351 = xor i32 %2339, %2318
  %2352 = xor i32 %2351, %2340
  %2353 = lshr i32 %2352, 4
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  store i8 %2355, i8* %26, align 1
  %2356 = icmp eq i32 %2340, 0
  %2357 = zext i1 %2356 to i8
  store i8 %2357, i8* %29, align 1
  %2358 = lshr i32 %2340, 31
  %2359 = trunc i32 %2358 to i8
  store i8 %2359, i8* %32, align 1
  %2360 = lshr i32 %2318, 31
  %2361 = lshr i32 %2339, 31
  %2362 = xor i32 %2358, %2360
  %2363 = xor i32 %2358, %2361
  %2364 = add nuw nsw i32 %2362, %2363
  %2365 = icmp eq i32 %2364, 2
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %38, align 1
  %2367 = load i64, i64* %RBP.i, align 8
  %2368 = add i64 %2367, -24
  %2369 = add i64 %2277, 52
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i64*
  %2371 = load i64, i64* %2370, align 8
  store i64 %2371, i64* %RCX.i1059, align 8
  %2372 = add i64 %2371, 24
  %2373 = add i64 %2277, 56
  store i64 %2373, i64* %3, align 8
  %2374 = inttoptr i64 %2372 to i64*
  %2375 = load i64, i64* %2374, align 8
  store i64 %2375, i64* %RCX.i1059, align 8
  %2376 = add i64 %2367, -44
  %2377 = add i64 %2277, 59
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2376 to i32*
  %2379 = load i32, i32* %2378, align 4
  %2380 = add i32 %2379, -1
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RSI.i1065, align 8
  %2382 = icmp eq i32 %2379, 0
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %14, align 1
  %2384 = and i32 %2380, 255
  %2385 = tail call i32 @llvm.ctpop.i32(i32 %2384)
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  %2388 = xor i8 %2387, 1
  store i8 %2388, i8* %21, align 1
  %2389 = xor i32 %2380, %2379
  %2390 = lshr i32 %2389, 4
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  store i8 %2392, i8* %26, align 1
  %2393 = icmp eq i32 %2380, 0
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %29, align 1
  %2395 = lshr i32 %2380, 31
  %2396 = trunc i32 %2395 to i8
  store i8 %2396, i8* %32, align 1
  %2397 = lshr i32 %2379, 31
  %2398 = xor i32 %2395, %2397
  %2399 = add nuw nsw i32 %2398, %2397
  %2400 = icmp eq i32 %2399, 2
  %2401 = zext i1 %2400 to i8
  store i8 %2401, i8* %38, align 1
  %2402 = sext i32 %2380 to i64
  store i64 %2402, i64* %R8.i1057, align 8
  %2403 = shl nsw i64 %2402, 3
  %2404 = add i64 %2375, %2403
  %2405 = add i64 %2277, 69
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i64*
  %2407 = load i64, i64* %2406, align 8
  store i64 %2407, i64* %RCX.i1059, align 8
  %2408 = add i64 %2367, -16
  %2409 = add i64 %2277, 73
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i64*
  %2411 = load i64, i64* %2410, align 8
  store i64 %2411, i64* %R8.i1057, align 8
  %2412 = add i64 %2411, 136
  %2413 = add i64 %2277, 80
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = add i32 %2415, -1
  %2417 = zext i32 %2416 to i64
  store i64 %2417, i64* %RSI.i1065, align 8
  %2418 = icmp eq i32 %2415, 0
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %14, align 1
  %2420 = and i32 %2416, 255
  %2421 = tail call i32 @llvm.ctpop.i32(i32 %2420)
  %2422 = trunc i32 %2421 to i8
  %2423 = and i8 %2422, 1
  %2424 = xor i8 %2423, 1
  store i8 %2424, i8* %21, align 1
  %2425 = xor i32 %2416, %2415
  %2426 = lshr i32 %2425, 4
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  store i8 %2428, i8* %26, align 1
  %2429 = icmp eq i32 %2416, 0
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %29, align 1
  %2431 = lshr i32 %2416, 31
  %2432 = trunc i32 %2431 to i8
  store i8 %2432, i8* %32, align 1
  %2433 = lshr i32 %2415, 31
  %2434 = xor i32 %2431, %2433
  %2435 = add nuw nsw i32 %2434, %2433
  %2436 = icmp eq i32 %2435, 2
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %38, align 1
  %2438 = sext i32 %2416 to i64
  store i64 %2438, i64* %R8.i1057, align 8
  %2439 = shl nsw i64 %2438, 2
  %2440 = add i64 %2407, %2439
  %2441 = add i64 %2277, 90
  store i64 %2441, i64* %3, align 8
  %2442 = inttoptr i64 %2440 to i32*
  %2443 = load i32, i32* %2442, align 4
  %2444 = zext i32 %2443 to i64
  store i64 %2444, i64* %RSI.i1065, align 8
  %2445 = load i64, i64* %RBP.i, align 8
  %2446 = add i64 %2445, -16
  %2447 = add i64 %2277, 94
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i64*
  %2449 = load i64, i64* %2448, align 8
  store i64 %2449, i64* %RCX.i1059, align 8
  %2450 = add i64 %2449, 312
  %2451 = add i64 %2277, 101
  store i64 %2451, i64* %3, align 8
  %2452 = inttoptr i64 %2450 to i64*
  %2453 = load i64, i64* %2452, align 8
  store i64 %2453, i64* %RCX.i1059, align 8
  %2454 = add i64 %2453, 40
  %2455 = add i64 %2277, 105
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i64*
  %2457 = load i64, i64* %2456, align 8
  store i64 %2457, i64* %RCX.i1059, align 8
  %2458 = add i64 %2277, 109
  store i64 %2458, i64* %3, align 8
  %2459 = load i64, i64* %2448, align 8
  store i64 %2459, i64* %R8.i1057, align 8
  %2460 = add i64 %2459, 136
  %2461 = add i64 %2277, 116
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i32*
  %2463 = load i32, i32* %2462, align 4
  %2464 = add i32 %2463, -1
  %2465 = zext i32 %2464 to i64
  store i64 %2465, i64* %RDI.i1047, align 8
  %2466 = icmp eq i32 %2463, 0
  %2467 = zext i1 %2466 to i8
  store i8 %2467, i8* %14, align 1
  %2468 = and i32 %2464, 255
  %2469 = tail call i32 @llvm.ctpop.i32(i32 %2468)
  %2470 = trunc i32 %2469 to i8
  %2471 = and i8 %2470, 1
  %2472 = xor i8 %2471, 1
  store i8 %2472, i8* %21, align 1
  %2473 = xor i32 %2464, %2463
  %2474 = lshr i32 %2473, 4
  %2475 = trunc i32 %2474 to i8
  %2476 = and i8 %2475, 1
  store i8 %2476, i8* %26, align 1
  %2477 = icmp eq i32 %2464, 0
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %29, align 1
  %2479 = lshr i32 %2464, 31
  %2480 = trunc i32 %2479 to i8
  store i8 %2480, i8* %32, align 1
  %2481 = lshr i32 %2463, 31
  %2482 = xor i32 %2479, %2481
  %2483 = add nuw nsw i32 %2482, %2481
  %2484 = icmp eq i32 %2483, 2
  %2485 = zext i1 %2484 to i8
  store i8 %2485, i8* %38, align 1
  %2486 = sext i32 %2464 to i64
  store i64 %2486, i64* %R8.i1057, align 8
  %2487 = shl nsw i64 %2486, 2
  %2488 = add i64 %2457, %2487
  %2489 = add i64 %2277, 126
  store i64 %2489, i64* %3, align 8
  %2490 = inttoptr i64 %2488 to i32*
  %2491 = load i32, i32* %2490, align 4
  %2492 = add i32 %2491, %2443
  %2493 = zext i32 %2492 to i64
  store i64 %2493, i64* %RSI.i1065, align 8
  %2494 = icmp ult i32 %2492, %2443
  %2495 = icmp ult i32 %2492, %2491
  %2496 = or i1 %2494, %2495
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %14, align 1
  %2498 = and i32 %2492, 255
  %2499 = tail call i32 @llvm.ctpop.i32(i32 %2498)
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  %2502 = xor i8 %2501, 1
  store i8 %2502, i8* %21, align 1
  %2503 = xor i32 %2491, %2443
  %2504 = xor i32 %2503, %2492
  %2505 = lshr i32 %2504, 4
  %2506 = trunc i32 %2505 to i8
  %2507 = and i8 %2506, 1
  store i8 %2507, i8* %26, align 1
  %2508 = icmp eq i32 %2492, 0
  %2509 = zext i1 %2508 to i8
  store i8 %2509, i8* %29, align 1
  %2510 = lshr i32 %2492, 31
  %2511 = trunc i32 %2510 to i8
  store i8 %2511, i8* %32, align 1
  %2512 = lshr i32 %2443, 31
  %2513 = lshr i32 %2491, 31
  %2514 = xor i32 %2510, %2512
  %2515 = xor i32 %2510, %2513
  %2516 = add nuw nsw i32 %2514, %2515
  %2517 = icmp eq i32 %2516, 2
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %38, align 1
  %2519 = load i32, i32* %EDX.i793, align 4
  %2520 = zext i32 %2519 to i64
  store i64 %2520, i64* %RDI.i1047, align 8
  %2521 = load i64, i64* %RBP.i, align 8
  %2522 = add i64 %2521, -60
  %2523 = load i32, i32* %EAX.i830, align 4
  %2524 = add i64 %2277, 131
  store i64 %2524, i64* %3, align 8
  %2525 = inttoptr i64 %2522 to i32*
  store i32 %2523, i32* %2525, align 4
  %2526 = load i64, i64* %3, align 8
  %2527 = add i64 %2526, -58157
  %2528 = add i64 %2526, 5
  %2529 = load i64, i64* %6, align 8
  %2530 = add i64 %2529, -8
  %2531 = inttoptr i64 %2530 to i64*
  store i64 %2528, i64* %2531, align 8
  store i64 %2530, i64* %6, align 8
  store i64 %2527, i64* %3, align 8
  %call2_4364dd = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2527, %struct.Memory* %2)
  %2532 = load i64, i64* %RBP.i, align 8
  %2533 = add i64 %2532, -60
  %2534 = load i64, i64* %3, align 8
  %2535 = add i64 %2534, 3
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2533 to i32*
  %2537 = load i32, i32* %2536, align 4
  %2538 = zext i32 %2537 to i64
  store i64 %2538, i64* %RDI.i1047, align 8
  %2539 = load i32, i32* %EAX.i830, align 4
  %2540 = zext i32 %2539 to i64
  store i64 %2540, i64* %RSI.i1065, align 8
  %2541 = add i64 %2534, -58162
  %2542 = add i64 %2534, 10
  %2543 = load i64, i64* %6, align 8
  %2544 = add i64 %2543, -8
  %2545 = inttoptr i64 %2544 to i64*
  store i64 %2542, i64* %2545, align 8
  store i64 %2544, i64* %6, align 8
  store i64 %2541, i64* %3, align 8
  %call2_4364e7 = tail call %struct.Memory* @sub_4281b0.ILogsum(%struct.State* nonnull %0, i64 %2541, %struct.Memory* %2)
  %2546 = load i64, i64* %RBP.i, align 8
  %2547 = add i64 %2546, -40
  %2548 = load i64, i64* %3, align 8
  %2549 = add i64 %2548, 4
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2547 to i64*
  %2551 = load i64, i64* %2550, align 8
  store i64 %2551, i64* %RCX.i1059, align 8
  %2552 = add i64 %2551, 8
  %2553 = add i64 %2548, 8
  store i64 %2553, i64* %3, align 8
  %2554 = inttoptr i64 %2552 to i64*
  %2555 = load i64, i64* %2554, align 8
  store i64 %2555, i64* %RCX.i1059, align 8
  %2556 = add i64 %2546, -44
  %2557 = add i64 %2548, 12
  store i64 %2557, i64* %3, align 8
  %2558 = inttoptr i64 %2556 to i32*
  %2559 = load i32, i32* %2558, align 4
  %2560 = sext i32 %2559 to i64
  store i64 %2560, i64* %R8.i1057, align 8
  %2561 = shl nsw i64 %2560, 3
  %2562 = add i64 %2561, %2555
  %2563 = add i64 %2548, 16
  store i64 %2563, i64* %3, align 8
  %2564 = inttoptr i64 %2562 to i64*
  %2565 = load i64, i64* %2564, align 8
  store i64 %2565, i64* %RCX.i1059, align 8
  %2566 = add i64 %2546, -16
  %2567 = add i64 %2548, 20
  store i64 %2567, i64* %3, align 8
  %2568 = inttoptr i64 %2566 to i64*
  %2569 = load i64, i64* %2568, align 8
  store i64 %2569, i64* %R8.i1057, align 8
  %2570 = add i64 %2569, 136
  %2571 = add i64 %2548, 27
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = sext i32 %2573 to i64
  store i64 %2574, i64* %R8.i1057, align 8
  %2575 = load i64, i64* %RAX.i1031, align 8
  %2576 = shl nsw i64 %2574, 2
  %2577 = add i64 %2565, %2576
  %2578 = add i64 %2548, 31
  store i64 %2578, i64* %3, align 8
  %2579 = trunc i64 %2575 to i32
  %2580 = inttoptr i64 %2577 to i32*
  %2581 = load i32, i32* %2580, align 4
  %2582 = add i32 %2581, %2579
  %2583 = zext i32 %2582 to i64
  store i64 %2583, i64* %RAX.i1031, align 8
  %2584 = icmp ult i32 %2582, %2579
  %2585 = icmp ult i32 %2582, %2581
  %2586 = or i1 %2584, %2585
  %2587 = zext i1 %2586 to i8
  store i8 %2587, i8* %14, align 1
  %2588 = and i32 %2582, 255
  %2589 = tail call i32 @llvm.ctpop.i32(i32 %2588)
  %2590 = trunc i32 %2589 to i8
  %2591 = and i8 %2590, 1
  %2592 = xor i8 %2591, 1
  store i8 %2592, i8* %21, align 1
  %2593 = xor i32 %2581, %2579
  %2594 = xor i32 %2593, %2582
  %2595 = lshr i32 %2594, 4
  %2596 = trunc i32 %2595 to i8
  %2597 = and i8 %2596, 1
  store i8 %2597, i8* %26, align 1
  %2598 = icmp eq i32 %2582, 0
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %29, align 1
  %2600 = lshr i32 %2582, 31
  %2601 = trunc i32 %2600 to i8
  store i8 %2601, i8* %32, align 1
  %2602 = lshr i32 %2579, 31
  %2603 = lshr i32 %2581, 31
  %2604 = xor i32 %2600, %2602
  %2605 = xor i32 %2600, %2603
  %2606 = add nuw nsw i32 %2604, %2605
  %2607 = icmp eq i32 %2606, 2
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %38, align 1
  %2609 = add i64 %2548, 35
  store i64 %2609, i64* %3, align 8
  store i32 %2582, i32* %2580, align 4
  %2610 = load i64, i64* %RBP.i, align 8
  %2611 = add i64 %2610, -52
  %2612 = load i64, i64* %3, align 8
  %2613 = add i64 %2612, 3
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2611 to i32*
  %2615 = load i32, i32* %2614, align 4
  %2616 = zext i32 %2615 to i64
  store i64 %2616, i64* %RAX.i1031, align 8
  %2617 = add i64 %2610, -40
  %2618 = add i64 %2612, 7
  store i64 %2618, i64* %3, align 8
  %2619 = inttoptr i64 %2617 to i64*
  %2620 = load i64, i64* %2619, align 8
  store i64 %2620, i64* %RCX.i1059, align 8
  %2621 = add i64 %2620, 8
  %2622 = add i64 %2612, 11
  store i64 %2622, i64* %3, align 8
  %2623 = inttoptr i64 %2621 to i64*
  %2624 = load i64, i64* %2623, align 8
  store i64 %2624, i64* %RCX.i1059, align 8
  %2625 = add i64 %2610, -44
  %2626 = add i64 %2612, 15
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2625 to i32*
  %2628 = load i32, i32* %2627, align 4
  %2629 = sext i32 %2628 to i64
  store i64 %2629, i64* %R8.i1057, align 8
  %2630 = shl nsw i64 %2629, 3
  %2631 = add i64 %2630, %2624
  %2632 = add i64 %2612, 19
  store i64 %2632, i64* %3, align 8
  %2633 = inttoptr i64 %2631 to i64*
  %2634 = load i64, i64* %2633, align 8
  store i64 %2634, i64* %RCX.i1059, align 8
  %2635 = add i64 %2610, -16
  %2636 = add i64 %2612, 23
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i64*
  %2638 = load i64, i64* %2637, align 8
  store i64 %2638, i64* %R8.i1057, align 8
  %2639 = add i64 %2638, 136
  %2640 = add i64 %2612, 30
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = sext i32 %2642 to i64
  store i64 %2643, i64* %R8.i1057, align 8
  %2644 = shl nsw i64 %2643, 2
  %2645 = add i64 %2644, %2634
  %2646 = add i64 %2612, 34
  store i64 %2646, i64* %3, align 8
  %2647 = inttoptr i64 %2645 to i32*
  %2648 = load i32, i32* %2647, align 4
  %2649 = sub i32 %2648, %2615
  %2650 = zext i32 %2649 to i64
  store i64 %2650, i64* %RDX.i1062, align 8
  %2651 = icmp ult i32 %2648, %2615
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %14, align 1
  %2653 = and i32 %2649, 255
  %2654 = tail call i32 @llvm.ctpop.i32(i32 %2653)
  %2655 = trunc i32 %2654 to i8
  %2656 = and i8 %2655, 1
  %2657 = xor i8 %2656, 1
  store i8 %2657, i8* %21, align 1
  %2658 = xor i32 %2615, %2648
  %2659 = xor i32 %2658, %2649
  %2660 = lshr i32 %2659, 4
  %2661 = trunc i32 %2660 to i8
  %2662 = and i8 %2661, 1
  store i8 %2662, i8* %26, align 1
  %2663 = icmp eq i32 %2649, 0
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %29, align 1
  %2665 = lshr i32 %2649, 31
  %2666 = trunc i32 %2665 to i8
  store i8 %2666, i8* %32, align 1
  %2667 = lshr i32 %2648, 31
  %2668 = lshr i32 %2615, 31
  %2669 = xor i32 %2668, %2667
  %2670 = xor i32 %2665, %2667
  %2671 = add nuw nsw i32 %2670, %2669
  %2672 = icmp eq i32 %2671, 2
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %38, align 1
  %2674 = add i64 %2612, 40
  store i64 %2674, i64* %3, align 8
  store i32 %2649, i32* %2647, align 4
  %2675 = load i64, i64* %RBP.i, align 8
  %2676 = add i64 %2675, -40
  %2677 = load i64, i64* %3, align 8
  %2678 = add i64 %2677, 4
  store i64 %2678, i64* %3, align 8
  %2679 = inttoptr i64 %2676 to i64*
  %2680 = load i64, i64* %2679, align 8
  store i64 %2680, i64* %RCX.i1059, align 8
  %2681 = add i64 %2680, 24
  %2682 = add i64 %2677, 8
  store i64 %2682, i64* %3, align 8
  %2683 = inttoptr i64 %2681 to i64*
  %2684 = load i64, i64* %2683, align 8
  store i64 %2684, i64* %RCX.i1059, align 8
  %2685 = add i64 %2675, -44
  %2686 = add i64 %2677, 12
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2685 to i32*
  %2688 = load i32, i32* %2687, align 4
  %2689 = sext i32 %2688 to i64
  store i64 %2689, i64* %R8.i1057, align 8
  %2690 = shl nsw i64 %2689, 3
  %2691 = add i64 %2690, %2684
  %2692 = add i64 %2677, 16
  store i64 %2692, i64* %3, align 8
  %2693 = inttoptr i64 %2691 to i64*
  %2694 = load i64, i64* %2693, align 8
  store i64 %2694, i64* %RCX.i1059, align 8
  %2695 = add i64 %2677, 22
  store i64 %2695, i64* %3, align 8
  %2696 = inttoptr i64 %2694 to i32*
  store i32 -987654321, i32* %2696, align 4
  %2697 = load i64, i64* %RBP.i, align 8
  %2698 = add i64 %2697, -40
  %2699 = load i64, i64* %3, align 8
  %2700 = add i64 %2699, 4
  store i64 %2700, i64* %3, align 8
  %2701 = inttoptr i64 %2698 to i64*
  %2702 = load i64, i64* %2701, align 8
  store i64 %2702, i64* %RCX.i1059, align 8
  %2703 = add i64 %2702, 24
  %2704 = add i64 %2699, 8
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2703 to i64*
  %2706 = load i64, i64* %2705, align 8
  store i64 %2706, i64* %RCX.i1059, align 8
  %2707 = add i64 %2697, -44
  %2708 = add i64 %2699, 12
  store i64 %2708, i64* %3, align 8
  %2709 = inttoptr i64 %2707 to i32*
  %2710 = load i32, i32* %2709, align 4
  %2711 = sext i32 %2710 to i64
  store i64 %2711, i64* %R8.i1057, align 8
  %2712 = shl nsw i64 %2711, 3
  %2713 = add i64 %2712, %2706
  %2714 = add i64 %2699, 16
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i64*
  %2716 = load i64, i64* %2715, align 8
  store i64 %2716, i64* %RCX.i1059, align 8
  %2717 = add i64 %2697, -16
  %2718 = add i64 %2699, 20
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i64*
  %2720 = load i64, i64* %2719, align 8
  store i64 %2720, i64* %R8.i1057, align 8
  %2721 = add i64 %2720, 136
  %2722 = add i64 %2699, 27
  store i64 %2722, i64* %3, align 8
  %2723 = inttoptr i64 %2721 to i32*
  %2724 = load i32, i32* %2723, align 4
  %2725 = sext i32 %2724 to i64
  store i64 %2725, i64* %R8.i1057, align 8
  %2726 = shl nsw i64 %2725, 2
  %2727 = add i64 %2726, %2716
  %2728 = add i64 %2699, 35
  store i64 %2728, i64* %3, align 8
  %2729 = inttoptr i64 %2727 to i32*
  store i32 -987654321, i32* %2729, align 4
  %2730 = load i64, i64* %RBP.i, align 8
  %2731 = add i64 %2730, -40
  %2732 = load i64, i64* %3, align 8
  %2733 = add i64 %2732, 4
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2731 to i64*
  %2735 = load i64, i64* %2734, align 8
  store i64 %2735, i64* %RCX.i1059, align 8
  %2736 = add i64 %2735, 16
  %2737 = add i64 %2732, 8
  store i64 %2737, i64* %3, align 8
  %2738 = inttoptr i64 %2736 to i64*
  %2739 = load i64, i64* %2738, align 8
  store i64 %2739, i64* %RCX.i1059, align 8
  %2740 = add i64 %2730, -44
  %2741 = add i64 %2732, 12
  store i64 %2741, i64* %3, align 8
  %2742 = inttoptr i64 %2740 to i32*
  %2743 = load i32, i32* %2742, align 4
  %2744 = sext i32 %2743 to i64
  store i64 %2744, i64* %R8.i1057, align 8
  %2745 = shl nsw i64 %2744, 3
  %2746 = add i64 %2745, %2739
  %2747 = add i64 %2732, 16
  store i64 %2747, i64* %3, align 8
  %2748 = inttoptr i64 %2746 to i64*
  %2749 = load i64, i64* %2748, align 8
  store i64 %2749, i64* %RCX.i1059, align 8
  %2750 = add i64 %2730, -16
  %2751 = add i64 %2732, 20
  store i64 %2751, i64* %3, align 8
  %2752 = inttoptr i64 %2750 to i64*
  %2753 = load i64, i64* %2752, align 8
  store i64 %2753, i64* %R8.i1057, align 8
  %2754 = add i64 %2753, 136
  %2755 = add i64 %2732, 27
  store i64 %2755, i64* %3, align 8
  %2756 = inttoptr i64 %2754 to i32*
  %2757 = load i32, i32* %2756, align 4
  %2758 = sext i32 %2757 to i64
  store i64 %2758, i64* %R8.i1057, align 8
  %2759 = shl nsw i64 %2758, 2
  %2760 = add i64 %2759, %2749
  %2761 = add i64 %2732, 35
  store i64 %2761, i64* %3, align 8
  %2762 = inttoptr i64 %2760 to i32*
  store i32 -987654321, i32* %2762, align 4
  %2763 = load i64, i64* %RBP.i, align 8
  %2764 = add i64 %2763, -44
  %2765 = load i64, i64* %3, align 8
  %2766 = add i64 %2765, 3
  store i64 %2766, i64* %3, align 8
  %2767 = inttoptr i64 %2764 to i32*
  %2768 = load i32, i32* %2767, align 4
  %2769 = add i32 %2768, -1
  %2770 = zext i32 %2769 to i64
  store i64 %2770, i64* %RAX.i1031, align 8
  %2771 = icmp ne i32 %2768, 0
  %2772 = zext i1 %2771 to i8
  store i8 %2772, i8* %14, align 1
  %2773 = and i32 %2769, 255
  %2774 = tail call i32 @llvm.ctpop.i32(i32 %2773)
  %2775 = trunc i32 %2774 to i8
  %2776 = and i8 %2775, 1
  %2777 = xor i8 %2776, 1
  store i8 %2777, i8* %21, align 1
  %2778 = xor i32 %2768, 16
  %2779 = xor i32 %2778, %2769
  %2780 = lshr i32 %2779, 4
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  store i8 %2782, i8* %26, align 1
  %2783 = icmp eq i32 %2769, 0
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %29, align 1
  %2785 = lshr i32 %2769, 31
  %2786 = trunc i32 %2785 to i8
  store i8 %2786, i8* %32, align 1
  %2787 = lshr i32 %2768, 31
  %2788 = xor i32 %2785, %2787
  %2789 = xor i32 %2785, 1
  %2790 = add nuw nsw i32 %2788, %2789
  %2791 = icmp eq i32 %2790, 2
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %38, align 1
  %2793 = add i64 %2765, 9
  store i64 %2793, i64* %3, align 8
  store i32 %2769, i32* %2767, align 4
  %2794 = load i64, i64* %3, align 8
  %2795 = add i64 %2794, -1451
  store i64 %2795, i64* %3, align 8
  br label %block_.L_435ff1

block_.L_4365a1:                                  ; preds = %block_.L_435ff1
  %2796 = load i64, i64* %6, align 8
  %2797 = add i64 %2796, 64
  store i64 %2797, i64* %6, align 8
  %2798 = icmp ugt i64 %2796, -65
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %14, align 1
  %2800 = trunc i64 %2797 to i32
  %2801 = and i32 %2800, 255
  %2802 = tail call i32 @llvm.ctpop.i32(i32 %2801)
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  %2805 = xor i8 %2804, 1
  store i8 %2805, i8* %21, align 1
  %2806 = xor i64 %2797, %2796
  %2807 = lshr i64 %2806, 4
  %2808 = trunc i64 %2807 to i8
  %2809 = and i8 %2808, 1
  store i8 %2809, i8* %26, align 1
  %2810 = icmp eq i64 %2797, 0
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %29, align 1
  %2812 = lshr i64 %2797, 63
  %2813 = trunc i64 %2812 to i8
  store i8 %2813, i8* %32, align 1
  %2814 = lshr i64 %2796, 63
  %2815 = xor i64 %2812, %2814
  %2816 = add nuw nsw i64 %2815, %2812
  %2817 = icmp eq i64 %2816, 2
  %2818 = zext i1 %2817 to i8
  store i8 %2818, i8* %38, align 1
  %2819 = add i64 %129, 5
  store i64 %2819, i64* %3, align 8
  %2820 = add i64 %2796, 72
  %2821 = inttoptr i64 %2797 to i64*
  %2822 = load i64, i64* %2821, align 8
  store i64 %2822, i64* %RBP.i, align 8
  store i64 %2820, i64* %6, align 8
  %2823 = add i64 %129, 6
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2820 to i64*
  %2825 = load i64, i64* %2824, align 8
  store i64 %2825, i64* %3, align 8
  %2826 = add i64 %2796, 80
  store i64 %2826, i64* %6, align 8
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_0x10__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_jl_.L_4365a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %10, i64 %rel_off1, i64 %rel_off2
  %12 = add i64 %.v, %3
  store i64 %12, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x164__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 356
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_addl_0x154__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 340
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x10__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_jge_.L_436384(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movslq__edi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__edx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movslq__edx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
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
define %struct.Memory* @routine_movl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x170__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_addl___rcx__r8_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl___rcx__r8_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl___rcx__r8_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_addl___rcx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl___rcx__r8_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rcx__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
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
define %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__0xc521974f____rcx__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 -987654321, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_436105(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x88__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
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
define %struct.Memory* @routine_jmpq_.L_435ff1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
