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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400600.fprintf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @print_array(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RDX.i328 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i64, i64* %RDX.i328, align 8
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i64*
  store i64 %54, i64* %57, align 8
  %RCX.i325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -24
  %60 = load i64, i64* %RCX.i325, align 8
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i64*
  store i64 %60, i64* %63, align 8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -32
  %67 = load i64, i64* %R8.i, align 8
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %66 to i64*
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -36
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 7
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i32*
  store i32 0, i32* %75, align 4
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i318 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %EAX.i315 = bitcast %union.anon* %76 to i32*
  %RSI.i303 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %RDI.i301 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %79 = bitcast i64* %78 to double*
  %AL.i281 = bitcast %union.anon* %76 to i8*
  %R8D.i275 = bitcast %union.anon* %64 to i32*
  %EDX.i266 = bitcast %union.anon* %51 to i32*
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_401291

block_.L_401291:                                  ; preds = %block_.L_401333, %entry
  %81 = phi i64 [ %.pre, %entry ], [ %342, %block_.L_401333 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_401333 ]
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -36
  %84 = add i64 %81, 3
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  store i64 %87, i64* %RAX.i318, align 8
  %88 = add i64 %82, -4
  %89 = add i64 %81, 6
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = sub i32 %86, %91
  %93 = icmp ult i32 %86, %91
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %14, align 1
  %95 = and i32 %92, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95)
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %21, align 1
  %100 = xor i32 %91, %86
  %101 = xor i32 %100, %92
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %26, align 1
  %105 = icmp eq i32 %92, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %29, align 1
  %107 = lshr i32 %92, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %32, align 1
  %109 = lshr i32 %86, 31
  %110 = lshr i32 %91, 31
  %111 = xor i32 %110, %109
  %112 = xor i32 %107, %109
  %113 = add nuw nsw i32 %112, %111
  %114 = icmp eq i32 %113, 2
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %38, align 1
  %116 = icmp ne i8 %108, 0
  %117 = xor i1 %116, %114
  %.v38 = select i1 %117, i64 12, i64 181
  %118 = add i64 %81, %.v38
  store i64 %118, i64* %3, align 8
  br i1 %117, label %block_40129d, label %block_.L_401346

block_40129d:                                     ; preds = %block_.L_401291
  %119 = add i64 %82, -40
  %120 = add i64 %118, 7
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  store i32 0, i32* %121, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_4012a4

block_.L_4012a4:                                  ; preds = %block_.L_401320, %block_40129d
  %122 = phi i64 [ %.pre32, %block_40129d ], [ %312, %block_.L_401320 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_40129d ], [ %MEMORY.2, %block_.L_401320 ]
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -40
  %125 = add i64 %122, 3
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %RAX.i318, align 8
  %129 = add i64 %123, -8
  %130 = add i64 %122, 6
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = sub i32 %127, %132
  %134 = icmp ult i32 %127, %132
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %14, align 1
  %136 = and i32 %133, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136)
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %21, align 1
  %141 = xor i32 %132, %127
  %142 = xor i32 %141, %133
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %26, align 1
  %146 = icmp eq i32 %133, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %29, align 1
  %148 = lshr i32 %133, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %32, align 1
  %150 = lshr i32 %127, 31
  %151 = lshr i32 %132, 31
  %152 = xor i32 %151, %150
  %153 = xor i32 %148, %150
  %154 = add nuw nsw i32 %153, %152
  %155 = icmp eq i32 %154, 2
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %38, align 1
  %157 = icmp ne i8 %149, 0
  %158 = xor i1 %157, %155
  %.v37 = select i1 %158, i64 12, i64 143
  %159 = add i64 %122, %.v37
  store i64 %159, i64* %3, align 8
  br i1 %158, label %block_4012b0, label %block_.L_401333

block_4012b0:                                     ; preds = %block_.L_4012a4
  store i64 4199930, i64* %RSI.i303, align 8
  %160 = load i64, i64* inttoptr (i64 6299744 to i64*), align 32
  store i64 %160, i64* %RDI.i301, align 8
  %161 = add i64 %123, -16
  %162 = add i64 %159, 22
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i64*
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %RAX.i318, align 8
  %165 = add i64 %123, -36
  %166 = add i64 %159, 26
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = shl nsw i64 %169, 12
  store i64 %170, i64* %RCX.i325, align 8
  %171 = add i64 %170, %164
  store i64 %171, i64* %RAX.i318, align 8
  %172 = icmp ult i64 %171, %164
  %173 = icmp ult i64 %171, %170
  %174 = or i1 %172, %173
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %14, align 1
  %176 = trunc i64 %171 to i32
  %177 = and i32 %176, 255
  %178 = tail call i32 @llvm.ctpop.i32(i32 %177)
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  store i8 %181, i8* %21, align 1
  %182 = xor i64 %164, %171
  %183 = lshr i64 %182, 4
  %184 = trunc i64 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %26, align 1
  %186 = icmp eq i64 %171, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %29, align 1
  %188 = lshr i64 %171, 63
  %189 = trunc i64 %188 to i8
  store i8 %189, i8* %32, align 1
  %190 = lshr i64 %164, 63
  %191 = lshr i64 %169, 51
  %192 = and i64 %191, 1
  %193 = xor i64 %188, %190
  %194 = xor i64 %188, %192
  %195 = add nuw nsw i64 %193, %194
  %196 = icmp eq i64 %195, 2
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %38, align 1
  %198 = add i64 %159, 37
  store i64 %198, i64* %3, align 8
  %199 = load i32, i32* %126, align 4
  %200 = sext i32 %199 to i64
  store i64 %200, i64* %RCX.i325, align 8
  %201 = shl nsw i64 %200, 3
  %202 = add i64 %201, %171
  %203 = add i64 %159, 42
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i64*
  %205 = load i64, i64* %204, align 8
  store i64 %205, i64* %77, align 1
  store double 0.000000e+00, double* %79, align 1
  store i8 1, i8* %AL.i281, align 1
  %206 = add i64 %159, -3248
  %207 = add i64 %159, 49
  %208 = load i64, i64* %6, align 8
  %209 = add i64 %208, -8
  %210 = inttoptr i64 %209 to i64*
  store i64 %207, i64* %210, align 8
  store i64 %209, i64* %6, align 8
  store i64 %206, i64* %3, align 8
  %call2_4012dc = tail call %struct.Memory* @sub_400600.fprintf_plt(%struct.State* nonnull %0, i64 %206, %struct.Memory* %MEMORY.1)
  %211 = load i64, i64* %3, align 8
  store i64 20, i64* %RDX.i328, align 8
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -36
  %214 = add i64 %211, 9
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %R8.i, align 8
  %218 = add i64 %212, -44
  %219 = load i32, i32* %EAX.i315, align 4
  %220 = add i64 %211, 12
  store i64 %220, i64* %3, align 8
  %221 = inttoptr i64 %218 to i32*
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %R8D.i275, align 4
  %223 = zext i32 %222 to i64
  %224 = load i64, i64* %3, align 8
  store i64 %223, i64* %RAX.i318, align 8
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -48
  %227 = load i32, i32* %EDX.i266, align 4
  %228 = add i64 %224, 6
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %226 to i32*
  store i32 %227, i32* %229, align 4
  %230 = load i64, i64* %3, align 8
  %231 = load i32, i32* %EAX.i315, align 8
  %232 = sext i32 %231 to i64
  %233 = lshr i64 %232, 32
  store i64 %233, i64* %80, align 8
  %234 = load i64, i64* %RBP.i, align 8
  %235 = add i64 %234, -48
  %236 = add i64 %230, 5
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %R8.i, align 8
  %240 = add i64 %230, 8
  store i64 %240, i64* %3, align 8
  %241 = zext i32 %231 to i64
  %242 = sext i32 %238 to i64
  %243 = shl nuw i64 %233, 32
  %244 = or i64 %243, %241
  %245 = sdiv i64 %244, %242
  %246 = shl i64 %245, 32
  %247 = ashr exact i64 %246, 32
  %248 = icmp eq i64 %245, %247
  br i1 %248, label %251, label %249

; <label>:249:                                    ; preds = %block_4012b0
  %250 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %240, %struct.Memory* %call2_4012dc)
  %.pre33 = load i32, i32* %EDX.i266, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit258

; <label>:251:                                    ; preds = %block_4012b0
  %252 = srem i64 %244, %242
  %253 = and i64 %245, 4294967295
  store i64 %253, i64* %RAX.i318, align 8
  %254 = and i64 %252, 4294967295
  store i64 %254, i64* %RDX.i328, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %255 = trunc i64 %252 to i32
  br label %routine_idivl__r8d.exit258

routine_idivl__r8d.exit258:                       ; preds = %251, %249
  %256 = phi i64 [ %.pre34, %249 ], [ %240, %251 ]
  %257 = phi i32 [ %.pre33, %249 ], [ %255, %251 ]
  %258 = phi %struct.Memory* [ %250, %249 ], [ %call2_4012dc, %251 ]
  store i8 0, i8* %14, align 1
  %259 = and i32 %257, 255
  %260 = tail call i32 @llvm.ctpop.i32(i32 %259)
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  %263 = xor i8 %262, 1
  store i8 %263, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %264 = icmp eq i32 %257, 0
  %265 = zext i1 %264 to i8
  store i8 %265, i8* %29, align 1
  %266 = lshr i32 %257, 31
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v43 = select i1 %264, i64 9, i64 37
  %268 = add i64 %256, %.v43
  store i64 %268, i64* %3, align 8
  br i1 %264, label %block_401304, label %block_.L_401320

block_401304:                                     ; preds = %routine_idivl__r8d.exit258
  store i64 4199877, i64* %RSI.i303, align 8
  %269 = load i64, i64* inttoptr (i64 6299744 to i64*), align 32
  store i64 %269, i64* %RDI.i301, align 8
  store i8 0, i8* %AL.i281, align 1
  %270 = add i64 %268, -3332
  %271 = add i64 %268, 25
  %272 = load i64, i64* %6, align 8
  %273 = add i64 %272, -8
  %274 = inttoptr i64 %273 to i64*
  store i64 %271, i64* %274, align 8
  store i64 %273, i64* %6, align 8
  store i64 %270, i64* %3, align 8
  %call2_401318 = tail call %struct.Memory* @sub_400600.fprintf_plt(%struct.State* nonnull %0, i64 %270, %struct.Memory* %258)
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -52
  %277 = load i32, i32* %EAX.i315, align 4
  %278 = load i64, i64* %3, align 8
  %279 = add i64 %278, 3
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %276 to i32*
  store i32 %277, i32* %280, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_401320

block_.L_401320:                                  ; preds = %routine_idivl__r8d.exit258, %block_401304
  %281 = phi i64 [ %268, %routine_idivl__r8d.exit258 ], [ %.pre35, %block_401304 ]
  %MEMORY.2 = phi %struct.Memory* [ %258, %routine_idivl__r8d.exit258 ], [ %call2_401318, %block_401304 ]
  %282 = load i64, i64* %RBP.i, align 8
  %283 = add i64 %282, -40
  %284 = add i64 %281, 8
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = add i32 %286, 1
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RAX.i318, align 8
  %289 = icmp eq i32 %286, -1
  %290 = icmp eq i32 %287, 0
  %291 = or i1 %289, %290
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %14, align 1
  %293 = and i32 %287, 255
  %294 = tail call i32 @llvm.ctpop.i32(i32 %293)
  %295 = trunc i32 %294 to i8
  %296 = and i8 %295, 1
  %297 = xor i8 %296, 1
  store i8 %297, i8* %21, align 1
  %298 = xor i32 %287, %286
  %299 = lshr i32 %298, 4
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  store i8 %301, i8* %26, align 1
  %302 = zext i1 %290 to i8
  store i8 %302, i8* %29, align 1
  %303 = lshr i32 %287, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %32, align 1
  %305 = lshr i32 %286, 31
  %306 = xor i32 %303, %305
  %307 = add nuw nsw i32 %306, %303
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %38, align 1
  %310 = add i64 %281, 14
  store i64 %310, i64* %3, align 8
  store i32 %287, i32* %285, align 4
  %311 = load i64, i64* %3, align 8
  %312 = add i64 %311, -138
  store i64 %312, i64* %3, align 8
  br label %block_.L_4012a4

block_.L_401333:                                  ; preds = %block_.L_4012a4
  %313 = add i64 %123, -36
  %314 = add i64 %159, 8
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = add i32 %316, 1
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RAX.i318, align 8
  %319 = icmp eq i32 %316, -1
  %320 = icmp eq i32 %317, 0
  %321 = or i1 %319, %320
  %322 = zext i1 %321 to i8
  store i8 %322, i8* %14, align 1
  %323 = and i32 %317, 255
  %324 = tail call i32 @llvm.ctpop.i32(i32 %323)
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = xor i8 %326, 1
  store i8 %327, i8* %21, align 1
  %328 = xor i32 %317, %316
  %329 = lshr i32 %328, 4
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  store i8 %331, i8* %26, align 1
  %332 = zext i1 %320 to i8
  store i8 %332, i8* %29, align 1
  %333 = lshr i32 %317, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %32, align 1
  %335 = lshr i32 %316, 31
  %336 = xor i32 %333, %335
  %337 = add nuw nsw i32 %336, %333
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %38, align 1
  %340 = add i64 %159, 14
  store i64 %340, i64* %3, align 8
  store i32 %317, i32* %315, align 4
  %341 = load i64, i64* %3, align 8
  %342 = add i64 %341, -176
  store i64 %342, i64* %3, align 8
  br label %block_.L_401291

block_.L_401346:                                  ; preds = %block_.L_401291
  store i64 4199877, i64* %RSI.i303, align 8
  %343 = load i64, i64* inttoptr (i64 6299744 to i64*), align 32
  store i64 %343, i64* %RDI.i301, align 8
  store i8 0, i8* %AL.i281, align 1
  %344 = add i64 %118, -3398
  %345 = add i64 %118, 25
  %346 = load i64, i64* %6, align 8
  %347 = add i64 %346, -8
  %348 = inttoptr i64 %347 to i64*
  store i64 %345, i64* %348, align 8
  store i64 %347, i64* %6, align 8
  store i64 %344, i64* %3, align 8
  %call2_40135a = tail call %struct.Memory* @sub_400600.fprintf_plt(%struct.State* nonnull %0, i64 %344, %struct.Memory* %MEMORY.0)
  %349 = load i64, i64* %RBP.i, align 8
  %350 = add i64 %349, -36
  %351 = load i64, i64* %3, align 8
  %352 = add i64 %351, 7
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %350 to i32*
  store i32 0, i32* %353, align 4
  %354 = load i64, i64* %RBP.i, align 8
  %355 = add i64 %354, -56
  %356 = load i32, i32* %EAX.i315, align 4
  %357 = load i64, i64* %3, align 8
  %358 = add i64 %357, 3
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %355 to i32*
  store i32 %356, i32* %359, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_401369

block_.L_401369:                                  ; preds = %block_.L_40140b, %block_.L_401346
  %360 = phi i64 [ %.pre22, %block_.L_401346 ], [ %621, %block_.L_40140b ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_40135a, %block_.L_401346 ], [ %MEMORY.4, %block_.L_40140b ]
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -36
  %363 = add i64 %360, 3
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = zext i32 %365 to i64
  store i64 %366, i64* %RAX.i318, align 8
  %367 = add i64 %361, -8
  %368 = add i64 %360, 6
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = sub i32 %365, %370
  %372 = icmp ult i32 %365, %370
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %14, align 1
  %374 = and i32 %371, 255
  %375 = tail call i32 @llvm.ctpop.i32(i32 %374)
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  %378 = xor i8 %377, 1
  store i8 %378, i8* %21, align 1
  %379 = xor i32 %370, %365
  %380 = xor i32 %379, %371
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %26, align 1
  %384 = icmp eq i32 %371, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %29, align 1
  %386 = lshr i32 %371, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %32, align 1
  %388 = lshr i32 %365, 31
  %389 = lshr i32 %370, 31
  %390 = xor i32 %389, %388
  %391 = xor i32 %386, %388
  %392 = add nuw nsw i32 %391, %390
  %393 = icmp eq i32 %392, 2
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %38, align 1
  %395 = icmp ne i8 %387, 0
  %396 = xor i1 %395, %393
  %.v39 = select i1 %396, i64 12, i64 181
  %397 = add i64 %360, %.v39
  store i64 %397, i64* %3, align 8
  br i1 %396, label %block_401375, label %block_.L_40141e

block_401375:                                     ; preds = %block_.L_401369
  %398 = add i64 %361, -40
  %399 = add i64 %397, 7
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i32*
  store i32 0, i32* %400, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_40137c

block_.L_40137c:                                  ; preds = %block_.L_4013f8, %block_401375
  %401 = phi i64 [ %.pre28, %block_401375 ], [ %591, %block_.L_4013f8 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_401375 ], [ %MEMORY.5, %block_.L_4013f8 ]
  %402 = load i64, i64* %RBP.i, align 8
  %403 = add i64 %402, -40
  %404 = add i64 %401, 3
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RAX.i318, align 8
  %408 = add i64 %402, -8
  %409 = add i64 %401, 6
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = sub i32 %406, %411
  %413 = icmp ult i32 %406, %411
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %14, align 1
  %415 = and i32 %412, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %21, align 1
  %420 = xor i32 %411, %406
  %421 = xor i32 %420, %412
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %26, align 1
  %425 = icmp eq i32 %412, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %29, align 1
  %427 = lshr i32 %412, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %32, align 1
  %429 = lshr i32 %406, 31
  %430 = lshr i32 %411, 31
  %431 = xor i32 %430, %429
  %432 = xor i32 %427, %429
  %433 = add nuw nsw i32 %432, %431
  %434 = icmp eq i32 %433, 2
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %38, align 1
  %436 = icmp ne i8 %428, 0
  %437 = xor i1 %436, %434
  %.v36 = select i1 %437, i64 12, i64 143
  %438 = add i64 %401, %.v36
  store i64 %438, i64* %3, align 8
  br i1 %437, label %block_401388, label %block_.L_40140b

block_401388:                                     ; preds = %block_.L_40137c
  store i64 4199930, i64* %RSI.i303, align 8
  %439 = load i64, i64* inttoptr (i64 6299744 to i64*), align 32
  store i64 %439, i64* %RDI.i301, align 8
  %440 = add i64 %402, -24
  %441 = add i64 %438, 22
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %RAX.i318, align 8
  %444 = add i64 %402, -36
  %445 = add i64 %438, 26
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = sext i32 %447 to i64
  %449 = shl nsw i64 %448, 12
  store i64 %449, i64* %RCX.i325, align 8
  %450 = add i64 %449, %443
  store i64 %450, i64* %RAX.i318, align 8
  %451 = icmp ult i64 %450, %443
  %452 = icmp ult i64 %450, %449
  %453 = or i1 %451, %452
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %14, align 1
  %455 = trunc i64 %450 to i32
  %456 = and i32 %455, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456)
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %21, align 1
  %461 = xor i64 %443, %450
  %462 = lshr i64 %461, 4
  %463 = trunc i64 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %26, align 1
  %465 = icmp eq i64 %450, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %29, align 1
  %467 = lshr i64 %450, 63
  %468 = trunc i64 %467 to i8
  store i8 %468, i8* %32, align 1
  %469 = lshr i64 %443, 63
  %470 = lshr i64 %448, 51
  %471 = and i64 %470, 1
  %472 = xor i64 %467, %469
  %473 = xor i64 %467, %471
  %474 = add nuw nsw i64 %472, %473
  %475 = icmp eq i64 %474, 2
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %38, align 1
  %477 = add i64 %438, 37
  store i64 %477, i64* %3, align 8
  %478 = load i32, i32* %405, align 4
  %479 = sext i32 %478 to i64
  store i64 %479, i64* %RCX.i325, align 8
  %480 = shl nsw i64 %479, 3
  %481 = add i64 %480, %450
  %482 = add i64 %438, 42
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i64*
  %484 = load i64, i64* %483, align 8
  store i64 %484, i64* %77, align 1
  store double 0.000000e+00, double* %79, align 1
  store i8 1, i8* %AL.i281, align 1
  %485 = add i64 %438, -3464
  %486 = add i64 %438, 49
  %487 = load i64, i64* %6, align 8
  %488 = add i64 %487, -8
  %489 = inttoptr i64 %488 to i64*
  store i64 %486, i64* %489, align 8
  store i64 %488, i64* %6, align 8
  store i64 %485, i64* %3, align 8
  %call2_4013b4 = tail call %struct.Memory* @sub_400600.fprintf_plt(%struct.State* nonnull %0, i64 %485, %struct.Memory* %MEMORY.4)
  %490 = load i64, i64* %3, align 8
  store i64 20, i64* %RDX.i328, align 8
  %491 = load i64, i64* %RBP.i, align 8
  %492 = add i64 %491, -36
  %493 = add i64 %490, 9
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %R8.i, align 8
  %497 = add i64 %491, -60
  %498 = load i32, i32* %EAX.i315, align 4
  %499 = add i64 %490, 12
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %497 to i32*
  store i32 %498, i32* %500, align 4
  %501 = load i32, i32* %R8D.i275, align 4
  %502 = zext i32 %501 to i64
  %503 = load i64, i64* %3, align 8
  store i64 %502, i64* %RAX.i318, align 8
  %504 = load i64, i64* %RBP.i, align 8
  %505 = add i64 %504, -64
  %506 = load i32, i32* %EDX.i266, align 4
  %507 = add i64 %503, 6
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %505 to i32*
  store i32 %506, i32* %508, align 4
  %509 = load i64, i64* %3, align 8
  %510 = load i32, i32* %EAX.i315, align 8
  %511 = sext i32 %510 to i64
  %512 = lshr i64 %511, 32
  store i64 %512, i64* %80, align 8
  %513 = load i64, i64* %RBP.i, align 8
  %514 = add i64 %513, -64
  %515 = add i64 %509, 5
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %R8.i, align 8
  %519 = add i64 %509, 8
  store i64 %519, i64* %3, align 8
  %520 = zext i32 %510 to i64
  %521 = sext i32 %517 to i64
  %522 = shl nuw i64 %512, 32
  %523 = or i64 %522, %520
  %524 = sdiv i64 %523, %521
  %525 = shl i64 %524, 32
  %526 = ashr exact i64 %525, 32
  %527 = icmp eq i64 %524, %526
  br i1 %527, label %530, label %528

; <label>:528:                                    ; preds = %block_401388
  %529 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %519, %struct.Memory* %call2_4013b4)
  %.pre29 = load i32, i32* %EDX.i266, align 4
  %.pre30 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit149

; <label>:530:                                    ; preds = %block_401388
  %531 = srem i64 %523, %521
  %532 = and i64 %524, 4294967295
  store i64 %532, i64* %RAX.i318, align 8
  %533 = and i64 %531, 4294967295
  store i64 %533, i64* %RDX.i328, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %534 = trunc i64 %531 to i32
  br label %routine_idivl__r8d.exit149

routine_idivl__r8d.exit149:                       ; preds = %530, %528
  %535 = phi i64 [ %.pre30, %528 ], [ %519, %530 ]
  %536 = phi i32 [ %.pre29, %528 ], [ %534, %530 ]
  %537 = phi %struct.Memory* [ %529, %528 ], [ %call2_4013b4, %530 ]
  store i8 0, i8* %14, align 1
  %538 = and i32 %536, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %543 = icmp eq i32 %536, 0
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %29, align 1
  %545 = lshr i32 %536, 31
  %546 = trunc i32 %545 to i8
  store i8 %546, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v42 = select i1 %543, i64 9, i64 37
  %547 = add i64 %535, %.v42
  store i64 %547, i64* %3, align 8
  br i1 %543, label %block_4013dc, label %block_.L_4013f8

block_4013dc:                                     ; preds = %routine_idivl__r8d.exit149
  store i64 4199877, i64* %RSI.i303, align 8
  %548 = load i64, i64* inttoptr (i64 6299744 to i64*), align 32
  store i64 %548, i64* %RDI.i301, align 8
  store i8 0, i8* %AL.i281, align 1
  %549 = add i64 %547, -3548
  %550 = add i64 %547, 25
  %551 = load i64, i64* %6, align 8
  %552 = add i64 %551, -8
  %553 = inttoptr i64 %552 to i64*
  store i64 %550, i64* %553, align 8
  store i64 %552, i64* %6, align 8
  store i64 %549, i64* %3, align 8
  %call2_4013f0 = tail call %struct.Memory* @sub_400600.fprintf_plt(%struct.State* nonnull %0, i64 %549, %struct.Memory* %537)
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -68
  %556 = load i32, i32* %EAX.i315, align 4
  %557 = load i64, i64* %3, align 8
  %558 = add i64 %557, 3
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %555 to i32*
  store i32 %556, i32* %559, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_4013f8

block_.L_4013f8:                                  ; preds = %routine_idivl__r8d.exit149, %block_4013dc
  %560 = phi i64 [ %547, %routine_idivl__r8d.exit149 ], [ %.pre31, %block_4013dc ]
  %MEMORY.5 = phi %struct.Memory* [ %537, %routine_idivl__r8d.exit149 ], [ %call2_4013f0, %block_4013dc ]
  %561 = load i64, i64* %RBP.i, align 8
  %562 = add i64 %561, -40
  %563 = add i64 %560, 8
  store i64 %563, i64* %3, align 8
  %564 = inttoptr i64 %562 to i32*
  %565 = load i32, i32* %564, align 4
  %566 = add i32 %565, 1
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RAX.i318, align 8
  %568 = icmp eq i32 %565, -1
  %569 = icmp eq i32 %566, 0
  %570 = or i1 %568, %569
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %14, align 1
  %572 = and i32 %566, 255
  %573 = tail call i32 @llvm.ctpop.i32(i32 %572)
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  %576 = xor i8 %575, 1
  store i8 %576, i8* %21, align 1
  %577 = xor i32 %566, %565
  %578 = lshr i32 %577, 4
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  store i8 %580, i8* %26, align 1
  %581 = zext i1 %569 to i8
  store i8 %581, i8* %29, align 1
  %582 = lshr i32 %566, 31
  %583 = trunc i32 %582 to i8
  store i8 %583, i8* %32, align 1
  %584 = lshr i32 %565, 31
  %585 = xor i32 %582, %584
  %586 = add nuw nsw i32 %585, %582
  %587 = icmp eq i32 %586, 2
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %38, align 1
  %589 = add i64 %560, 14
  store i64 %589, i64* %3, align 8
  store i32 %566, i32* %564, align 4
  %590 = load i64, i64* %3, align 8
  %591 = add i64 %590, -138
  store i64 %591, i64* %3, align 8
  br label %block_.L_40137c

block_.L_40140b:                                  ; preds = %block_.L_40137c
  %592 = add i64 %402, -36
  %593 = add i64 %438, 8
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = add i32 %595, 1
  %597 = zext i32 %596 to i64
  store i64 %597, i64* %RAX.i318, align 8
  %598 = icmp eq i32 %595, -1
  %599 = icmp eq i32 %596, 0
  %600 = or i1 %598, %599
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %14, align 1
  %602 = and i32 %596, 255
  %603 = tail call i32 @llvm.ctpop.i32(i32 %602)
  %604 = trunc i32 %603 to i8
  %605 = and i8 %604, 1
  %606 = xor i8 %605, 1
  store i8 %606, i8* %21, align 1
  %607 = xor i32 %596, %595
  %608 = lshr i32 %607, 4
  %609 = trunc i32 %608 to i8
  %610 = and i8 %609, 1
  store i8 %610, i8* %26, align 1
  %611 = zext i1 %599 to i8
  store i8 %611, i8* %29, align 1
  %612 = lshr i32 %596, 31
  %613 = trunc i32 %612 to i8
  store i8 %613, i8* %32, align 1
  %614 = lshr i32 %595, 31
  %615 = xor i32 %612, %614
  %616 = add nuw nsw i32 %615, %612
  %617 = icmp eq i32 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %38, align 1
  %619 = add i64 %438, 14
  store i64 %619, i64* %3, align 8
  store i32 %596, i32* %594, align 4
  %620 = load i64, i64* %3, align 8
  %621 = add i64 %620, -176
  store i64 %621, i64* %3, align 8
  br label %block_.L_401369

block_.L_40141e:                                  ; preds = %block_.L_401369
  store i64 4199877, i64* %RSI.i303, align 8
  %622 = load i64, i64* inttoptr (i64 6299744 to i64*), align 32
  store i64 %622, i64* %RDI.i301, align 8
  store i8 0, i8* %AL.i281, align 1
  %623 = add i64 %397, -3614
  %624 = add i64 %397, 25
  %625 = load i64, i64* %6, align 8
  %626 = add i64 %625, -8
  %627 = inttoptr i64 %626 to i64*
  store i64 %624, i64* %627, align 8
  store i64 %626, i64* %6, align 8
  store i64 %623, i64* %3, align 8
  %call2_401432 = tail call %struct.Memory* @sub_400600.fprintf_plt(%struct.State* nonnull %0, i64 %623, %struct.Memory* %MEMORY.3)
  %628 = load i64, i64* %RBP.i, align 8
  %629 = add i64 %628, -36
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, 7
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %629 to i32*
  store i32 0, i32* %632, align 4
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -72
  %635 = load i32, i32* %EAX.i315, align 4
  %636 = load i64, i64* %3, align 8
  %637 = add i64 %636, 3
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %634 to i32*
  store i32 %635, i32* %638, align 4
  %.pre23 = load i64, i64* %3, align 8
  br label %block_.L_401441

block_.L_401441:                                  ; preds = %block_.L_4014e3, %block_.L_40141e
  %639 = phi i64 [ %.pre23, %block_.L_40141e ], [ %900, %block_.L_4014e3 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_401432, %block_.L_40141e ], [ %MEMORY.7, %block_.L_4014e3 ]
  %640 = load i64, i64* %RBP.i, align 8
  %641 = add i64 %640, -36
  %642 = add i64 %639, 3
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %641 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i318, align 8
  %646 = add i64 %640, -4
  %647 = add i64 %639, 6
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = sub i32 %644, %649
  %651 = icmp ult i32 %644, %649
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %14, align 1
  %653 = and i32 %650, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %21, align 1
  %658 = xor i32 %649, %644
  %659 = xor i32 %658, %650
  %660 = lshr i32 %659, 4
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %26, align 1
  %663 = icmp eq i32 %650, 0
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %29, align 1
  %665 = lshr i32 %650, 31
  %666 = trunc i32 %665 to i8
  store i8 %666, i8* %32, align 1
  %667 = lshr i32 %644, 31
  %668 = lshr i32 %649, 31
  %669 = xor i32 %668, %667
  %670 = xor i32 %665, %667
  %671 = add nuw nsw i32 %670, %669
  %672 = icmp eq i32 %671, 2
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %38, align 1
  %674 = icmp ne i8 %666, 0
  %675 = xor i1 %674, %672
  %.v40 = select i1 %675, i64 12, i64 181
  %676 = add i64 %639, %.v40
  store i64 %676, i64* %3, align 8
  br i1 %675, label %block_40144d, label %block_.L_4014f6

block_40144d:                                     ; preds = %block_.L_401441
  %677 = add i64 %640, -40
  %678 = add i64 %676, 7
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i32*
  store i32 0, i32* %679, align 4
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_401454

block_.L_401454:                                  ; preds = %block_.L_4014d0, %block_40144d
  %680 = phi i64 [ %.pre24, %block_40144d ], [ %870, %block_.L_4014d0 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_40144d ], [ %MEMORY.8, %block_.L_4014d0 ]
  %681 = load i64, i64* %RBP.i, align 8
  %682 = add i64 %681, -40
  %683 = add i64 %680, 3
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RAX.i318, align 8
  %687 = add i64 %681, -8
  %688 = add i64 %680, 6
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = sub i32 %685, %690
  %692 = icmp ult i32 %685, %690
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %14, align 1
  %694 = and i32 %691, 255
  %695 = tail call i32 @llvm.ctpop.i32(i32 %694)
  %696 = trunc i32 %695 to i8
  %697 = and i8 %696, 1
  %698 = xor i8 %697, 1
  store i8 %698, i8* %21, align 1
  %699 = xor i32 %690, %685
  %700 = xor i32 %699, %691
  %701 = lshr i32 %700, 4
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  store i8 %703, i8* %26, align 1
  %704 = icmp eq i32 %691, 0
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %29, align 1
  %706 = lshr i32 %691, 31
  %707 = trunc i32 %706 to i8
  store i8 %707, i8* %32, align 1
  %708 = lshr i32 %685, 31
  %709 = lshr i32 %690, 31
  %710 = xor i32 %709, %708
  %711 = xor i32 %706, %708
  %712 = add nuw nsw i32 %711, %710
  %713 = icmp eq i32 %712, 2
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %38, align 1
  %715 = icmp ne i8 %707, 0
  %716 = xor i1 %715, %713
  %.v = select i1 %716, i64 12, i64 143
  %717 = add i64 %680, %.v
  store i64 %717, i64* %3, align 8
  br i1 %716, label %block_401460, label %block_.L_4014e3

block_401460:                                     ; preds = %block_.L_401454
  store i64 4199930, i64* %RSI.i303, align 8
  %718 = load i64, i64* inttoptr (i64 6299744 to i64*), align 32
  store i64 %718, i64* %RDI.i301, align 8
  %719 = add i64 %681, -32
  %720 = add i64 %717, 22
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i64*
  %722 = load i64, i64* %721, align 8
  store i64 %722, i64* %RAX.i318, align 8
  %723 = add i64 %681, -36
  %724 = add i64 %717, 26
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i32*
  %726 = load i32, i32* %725, align 4
  %727 = sext i32 %726 to i64
  %728 = shl nsw i64 %727, 12
  store i64 %728, i64* %RCX.i325, align 8
  %729 = add i64 %728, %722
  store i64 %729, i64* %RAX.i318, align 8
  %730 = icmp ult i64 %729, %722
  %731 = icmp ult i64 %729, %728
  %732 = or i1 %730, %731
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %14, align 1
  %734 = trunc i64 %729 to i32
  %735 = and i32 %734, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %21, align 1
  %740 = xor i64 %722, %729
  %741 = lshr i64 %740, 4
  %742 = trunc i64 %741 to i8
  %743 = and i8 %742, 1
  store i8 %743, i8* %26, align 1
  %744 = icmp eq i64 %729, 0
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %29, align 1
  %746 = lshr i64 %729, 63
  %747 = trunc i64 %746 to i8
  store i8 %747, i8* %32, align 1
  %748 = lshr i64 %722, 63
  %749 = lshr i64 %727, 51
  %750 = and i64 %749, 1
  %751 = xor i64 %746, %748
  %752 = xor i64 %746, %750
  %753 = add nuw nsw i64 %751, %752
  %754 = icmp eq i64 %753, 2
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %38, align 1
  %756 = add i64 %717, 37
  store i64 %756, i64* %3, align 8
  %757 = load i32, i32* %684, align 4
  %758 = sext i32 %757 to i64
  store i64 %758, i64* %RCX.i325, align 8
  %759 = shl nsw i64 %758, 3
  %760 = add i64 %759, %729
  %761 = add i64 %717, 42
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i64*
  %763 = load i64, i64* %762, align 8
  store i64 %763, i64* %77, align 1
  store double 0.000000e+00, double* %79, align 1
  store i8 1, i8* %AL.i281, align 1
  %764 = add i64 %717, -3680
  %765 = add i64 %717, 49
  %766 = load i64, i64* %6, align 8
  %767 = add i64 %766, -8
  %768 = inttoptr i64 %767 to i64*
  store i64 %765, i64* %768, align 8
  store i64 %767, i64* %6, align 8
  store i64 %764, i64* %3, align 8
  %call2_40148c = tail call %struct.Memory* @sub_400600.fprintf_plt(%struct.State* nonnull %0, i64 %764, %struct.Memory* %MEMORY.7)
  %769 = load i64, i64* %3, align 8
  store i64 20, i64* %RDX.i328, align 8
  %770 = load i64, i64* %RBP.i, align 8
  %771 = add i64 %770, -36
  %772 = add i64 %769, 9
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %771 to i32*
  %774 = load i32, i32* %773, align 4
  %775 = zext i32 %774 to i64
  store i64 %775, i64* %R8.i, align 8
  %776 = add i64 %770, -76
  %777 = load i32, i32* %EAX.i315, align 4
  %778 = add i64 %769, 12
  store i64 %778, i64* %3, align 8
  %779 = inttoptr i64 %776 to i32*
  store i32 %777, i32* %779, align 4
  %780 = load i32, i32* %R8D.i275, align 4
  %781 = zext i32 %780 to i64
  %782 = load i64, i64* %3, align 8
  store i64 %781, i64* %RAX.i318, align 8
  %783 = load i64, i64* %RBP.i, align 8
  %784 = add i64 %783, -80
  %785 = load i32, i32* %EDX.i266, align 4
  %786 = add i64 %782, 6
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %784 to i32*
  store i32 %785, i32* %787, align 4
  %788 = load i64, i64* %3, align 8
  %789 = load i32, i32* %EAX.i315, align 8
  %790 = sext i32 %789 to i64
  %791 = lshr i64 %790, 32
  store i64 %791, i64* %80, align 8
  %792 = load i64, i64* %RBP.i, align 8
  %793 = add i64 %792, -80
  %794 = add i64 %788, 5
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %R8.i, align 8
  %798 = add i64 %788, 8
  store i64 %798, i64* %3, align 8
  %799 = zext i32 %789 to i64
  %800 = sext i32 %796 to i64
  %801 = shl nuw i64 %791, 32
  %802 = or i64 %801, %799
  %803 = sdiv i64 %802, %800
  %804 = shl i64 %803, 32
  %805 = ashr exact i64 %804, 32
  %806 = icmp eq i64 %803, %805
  br i1 %806, label %809, label %807

; <label>:807:                                    ; preds = %block_401460
  %808 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %798, %struct.Memory* %call2_40148c)
  %.pre25 = load i32, i32* %EDX.i266, align 4
  %.pre26 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit

; <label>:809:                                    ; preds = %block_401460
  %810 = srem i64 %802, %800
  %811 = and i64 %803, 4294967295
  store i64 %811, i64* %RAX.i318, align 8
  %812 = and i64 %810, 4294967295
  store i64 %812, i64* %RDX.i328, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %813 = trunc i64 %810 to i32
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %809, %807
  %814 = phi i64 [ %.pre26, %807 ], [ %798, %809 ]
  %815 = phi i32 [ %.pre25, %807 ], [ %813, %809 ]
  %816 = phi %struct.Memory* [ %808, %807 ], [ %call2_40148c, %809 ]
  store i8 0, i8* %14, align 1
  %817 = and i32 %815, 255
  %818 = tail call i32 @llvm.ctpop.i32(i32 %817)
  %819 = trunc i32 %818 to i8
  %820 = and i8 %819, 1
  %821 = xor i8 %820, 1
  store i8 %821, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %822 = icmp eq i32 %815, 0
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %29, align 1
  %824 = lshr i32 %815, 31
  %825 = trunc i32 %824 to i8
  store i8 %825, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v41 = select i1 %822, i64 9, i64 37
  %826 = add i64 %814, %.v41
  store i64 %826, i64* %3, align 8
  br i1 %822, label %block_4014b4, label %block_.L_4014d0

block_4014b4:                                     ; preds = %routine_idivl__r8d.exit
  store i64 4199877, i64* %RSI.i303, align 8
  %827 = load i64, i64* inttoptr (i64 6299744 to i64*), align 32
  store i64 %827, i64* %RDI.i301, align 8
  store i8 0, i8* %AL.i281, align 1
  %828 = add i64 %826, -3764
  %829 = add i64 %826, 25
  %830 = load i64, i64* %6, align 8
  %831 = add i64 %830, -8
  %832 = inttoptr i64 %831 to i64*
  store i64 %829, i64* %832, align 8
  store i64 %831, i64* %6, align 8
  store i64 %828, i64* %3, align 8
  %call2_4014c8 = tail call %struct.Memory* @sub_400600.fprintf_plt(%struct.State* nonnull %0, i64 %828, %struct.Memory* %816)
  %833 = load i64, i64* %RBP.i, align 8
  %834 = add i64 %833, -84
  %835 = load i32, i32* %EAX.i315, align 4
  %836 = load i64, i64* %3, align 8
  %837 = add i64 %836, 3
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %834 to i32*
  store i32 %835, i32* %838, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_4014d0

block_.L_4014d0:                                  ; preds = %routine_idivl__r8d.exit, %block_4014b4
  %839 = phi i64 [ %826, %routine_idivl__r8d.exit ], [ %.pre27, %block_4014b4 ]
  %MEMORY.8 = phi %struct.Memory* [ %816, %routine_idivl__r8d.exit ], [ %call2_4014c8, %block_4014b4 ]
  %840 = load i64, i64* %RBP.i, align 8
  %841 = add i64 %840, -40
  %842 = add i64 %839, 8
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i32*
  %844 = load i32, i32* %843, align 4
  %845 = add i32 %844, 1
  %846 = zext i32 %845 to i64
  store i64 %846, i64* %RAX.i318, align 8
  %847 = icmp eq i32 %844, -1
  %848 = icmp eq i32 %845, 0
  %849 = or i1 %847, %848
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %14, align 1
  %851 = and i32 %845, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %21, align 1
  %856 = xor i32 %845, %844
  %857 = lshr i32 %856, 4
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  store i8 %859, i8* %26, align 1
  %860 = zext i1 %848 to i8
  store i8 %860, i8* %29, align 1
  %861 = lshr i32 %845, 31
  %862 = trunc i32 %861 to i8
  store i8 %862, i8* %32, align 1
  %863 = lshr i32 %844, 31
  %864 = xor i32 %861, %863
  %865 = add nuw nsw i32 %864, %861
  %866 = icmp eq i32 %865, 2
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %38, align 1
  %868 = add i64 %839, 14
  store i64 %868, i64* %3, align 8
  store i32 %845, i32* %843, align 4
  %869 = load i64, i64* %3, align 8
  %870 = add i64 %869, -138
  store i64 %870, i64* %3, align 8
  br label %block_.L_401454

block_.L_4014e3:                                  ; preds = %block_.L_401454
  %871 = add i64 %681, -36
  %872 = add i64 %717, 8
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i32*
  %874 = load i32, i32* %873, align 4
  %875 = add i32 %874, 1
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RAX.i318, align 8
  %877 = icmp eq i32 %874, -1
  %878 = icmp eq i32 %875, 0
  %879 = or i1 %877, %878
  %880 = zext i1 %879 to i8
  store i8 %880, i8* %14, align 1
  %881 = and i32 %875, 255
  %882 = tail call i32 @llvm.ctpop.i32(i32 %881)
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = xor i8 %884, 1
  store i8 %885, i8* %21, align 1
  %886 = xor i32 %875, %874
  %887 = lshr i32 %886, 4
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  store i8 %889, i8* %26, align 1
  %890 = zext i1 %878 to i8
  store i8 %890, i8* %29, align 1
  %891 = lshr i32 %875, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %32, align 1
  %893 = lshr i32 %874, 31
  %894 = xor i32 %891, %893
  %895 = add nuw nsw i32 %894, %891
  %896 = icmp eq i32 %895, 2
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %38, align 1
  %898 = add i64 %717, 14
  store i64 %898, i64* %3, align 8
  store i32 %875, i32* %873, align 4
  %899 = load i64, i64* %3, align 8
  %900 = add i64 %899, -176
  store i64 %900, i64* %3, align 8
  br label %block_.L_401441

block_.L_4014f6:                                  ; preds = %block_.L_401441
  store i64 4199877, i64* %RSI.i303, align 8
  %901 = load i64, i64* inttoptr (i64 6299744 to i64*), align 32
  store i64 %901, i64* %RDI.i301, align 8
  store i8 0, i8* %AL.i281, align 1
  %902 = add i64 %676, -3830
  %903 = add i64 %676, 25
  %904 = load i64, i64* %6, align 8
  %905 = add i64 %904, -8
  %906 = inttoptr i64 %905 to i64*
  store i64 %903, i64* %906, align 8
  store i64 %905, i64* %6, align 8
  store i64 %902, i64* %3, align 8
  %call2_40150a = tail call %struct.Memory* @sub_400600.fprintf_plt(%struct.State* nonnull %0, i64 %902, %struct.Memory* %MEMORY.6)
  %907 = load i64, i64* %RBP.i, align 8
  %908 = add i64 %907, -88
  %909 = load i32, i32* %EAX.i315, align 4
  %910 = load i64, i64* %3, align 8
  %911 = add i64 %910, 3
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %908 to i32*
  store i32 %909, i32* %912, align 4
  %913 = load i64, i64* %6, align 8
  %914 = load i64, i64* %3, align 8
  %915 = add i64 %913, 96
  store i64 %915, i64* %6, align 8
  %916 = icmp ugt i64 %913, -97
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %14, align 1
  %918 = trunc i64 %915 to i32
  %919 = and i32 %918, 255
  %920 = tail call i32 @llvm.ctpop.i32(i32 %919)
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  %923 = xor i8 %922, 1
  store i8 %923, i8* %21, align 1
  %924 = xor i64 %915, %913
  %925 = lshr i64 %924, 4
  %926 = trunc i64 %925 to i8
  %927 = and i8 %926, 1
  store i8 %927, i8* %26, align 1
  %928 = icmp eq i64 %915, 0
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %29, align 1
  %930 = lshr i64 %915, 63
  %931 = trunc i64 %930 to i8
  store i8 %931, i8* %32, align 1
  %932 = lshr i64 %913, 63
  %933 = xor i64 %930, %932
  %934 = add nuw nsw i64 %933, %930
  %935 = icmp eq i64 %934, 2
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %38, align 1
  %937 = add i64 %914, 5
  store i64 %937, i64* %3, align 8
  %938 = add i64 %913, 104
  %939 = inttoptr i64 %915 to i64*
  %940 = load i64, i64* %939, align 8
  store i64 %940, i64* %RBP.i, align 8
  store i64 %938, i64* %6, align 8
  %941 = add i64 %914, 6
  store i64 %941, i64* %3, align 8
  %942 = inttoptr i64 %938 to i64*
  %943 = load i64, i64* %942, align 8
  store i64 %943, i64* %3, align 8
  %944 = add i64 %913, 112
  store i64 %944, i64* %6, align 8
  ret %struct.Memory* %call2_40150a
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
define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jge_.L_401346(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jge_.L_401333(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4015fa___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4199930, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x602060___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* inttoptr (i64 6299744 to i64*), align 32
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_shlq__0xc___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 12
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 52
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %14 = icmp eq i64 %6, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %13, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %3, 51
  %18 = trunc i64 %17 to i8
  %19 = and i8 %18, 1
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %10, i64* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %13 = bitcast i64* %12 to double*
  store double 0.000000e+00, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
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
define %struct.Memory* @routine_movl__0x14___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
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
define %struct.Memory* @routine_jne_.L_401320(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4015c5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 4199877, i64* %RSI, align 8
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
define %struct.Memory* @routine_jmpq_.L_401325(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4012a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401338(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_401291(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_40141e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40140b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_jne_.L_4013f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4013fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40137c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401410(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401369(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4014f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4014e3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_jne_.L_4014d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4014d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401454(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4014e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401441(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
