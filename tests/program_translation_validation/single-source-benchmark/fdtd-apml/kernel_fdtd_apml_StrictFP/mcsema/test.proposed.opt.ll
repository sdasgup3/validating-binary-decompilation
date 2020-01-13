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

; Function Attrs: alwaysinline
define %struct.Memory* @kernel_fdtd_apml_StrictFP(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i1885, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i1883, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i1881, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i1879, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %RBX.i1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %30 = load i64, i64* %RBX.i1877, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  %33 = add i64 %7, -48
  %34 = inttoptr i64 %33 to i64*
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %7, -80
  store i64 %36, i64* %6, align 8
  %37 = icmp ult i64 %33, 32
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = tail call i32 @llvm.ctpop.i32(i32 %41)
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1
  %47 = xor i64 %33, %36
  %48 = lshr i64 %47, 4
  %49 = trunc i64 %48 to i8
  %50 = and i8 %49, 1
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %50, i8* %51, align 1
  %52 = icmp eq i64 %36, 0
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %53, i8* %54, align 1
  %55 = lshr i64 %36, 63
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %56, i8* %57, align 1
  %58 = lshr i64 %33, 63
  %59 = xor i64 %55, %58
  %60 = add nuw nsw i64 %59, %58
  %61 = icmp eq i64 %60, 2
  %62 = zext i1 %61 to i8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %62, i8* %63, align 1
  %RAX.i1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, 96
  %66 = add i64 %35, 8
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RAX.i1872, align 8
  %R10.i1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %69 = add i64 %64, 88
  %70 = add i64 %35, 12
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %R10.i1870, align 8
  %R11.i1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %73 = add i64 %64, 80
  %74 = add i64 %35, 16
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %R11.i1867, align 8
  %77 = add i64 %64, 72
  %78 = add i64 %35, 20
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RBX.i1877, align 8
  %81 = add i64 %64, 64
  %82 = add i64 %35, 24
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %R14.i1883, align 8
  %85 = add i64 %64, 56
  %86 = add i64 %35, 28
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %R15.i1885, align 8
  %89 = add i64 %64, 48
  %90 = add i64 %35, 32
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %R12.i1879, align 8
  %93 = add i64 %64, 40
  %94 = add i64 %35, 36
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %R13.i1881, align 8
  %97 = add i64 %64, -120
  %98 = add i64 %35, 40
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i64*
  store i64 %68, i64* %99, align 8
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, 32
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %RAX.i1872, align 8
  %106 = add i64 %100, -128
  %107 = add i64 %102, 8
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i64*
  store i64 %105, i64* %108, align 8
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, 24
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RAX.i1872, align 8
  %115 = add i64 %109, -136
  %116 = add i64 %111, 11
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %115 to i64*
  store i64 %114, i64* %117, align 8
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, 16
  %120 = load i64, i64* %3, align 8
  %121 = add i64 %120, 4
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %119 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RAX.i1872, align 8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %124 to i32*
  %125 = add i64 %118, -44
  %126 = load i32, i32* %EDI.i, align 4
  %127 = add i64 %120, 7
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %128, align 4
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %129 to i32*
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -48
  %132 = load i32, i32* %ESI.i, align 4
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 3
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %131 to i32*
  store i32 %132, i32* %135, align 4
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1826 = bitcast %union.anon* %136 to i32*
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -52
  %139 = load i32, i32* %EDX.i1826, align 4
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 3
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %142, align 4
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -64
  %146 = load i64, i64* %3, align 8
  %147 = add i64 %146, 5
  store i64 %147, i64* %3, align 8
  %148 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %149 = load i64, i64* %148, align 1
  %150 = inttoptr i64 %145 to i64*
  store i64 %149, i64* %150, align 8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -72
  %154 = load i64, i64* %3, align 8
  %155 = add i64 %154, 5
  store i64 %155, i64* %3, align 8
  %156 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %151, i64 0, i32 0, i32 0, i32 0, i64 0
  %157 = load i64, i64* %156, align 1
  %158 = inttoptr i64 %153 to i64*
  store i64 %157, i64* %158, align 8
  %RCX.i1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -80
  %161 = load i64, i64* %RCX.i1817, align 8
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 4
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %164, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -88
  %167 = load i64, i64* %R8.i, align 8
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 4
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %166 to i64*
  store i64 %167, i64* %170, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -96
  %173 = load i64, i64* %R9.i, align 8
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 4
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %172 to i64*
  store i64 %173, i64* %176, align 8
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -100
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 7
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 0, i32* %181, align 4
  %182 = load i64, i64* %RBP.i, align 8
  %183 = add i64 %182, -144
  %184 = load i64, i64* %R13.i1881, align 8
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 7
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %187, align 8
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -152
  %190 = load i64, i64* %RAX.i1872, align 8
  %191 = load i64, i64* %3, align 8
  %192 = add i64 %191, 7
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %189 to i64*
  store i64 %190, i64* %193, align 8
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -160
  %196 = load i64, i64* %R10.i1870, align 8
  %197 = load i64, i64* %3, align 8
  %198 = add i64 %197, 7
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %195 to i64*
  store i64 %196, i64* %199, align 8
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -168
  %202 = load i64, i64* %R11.i1867, align 8
  %203 = load i64, i64* %3, align 8
  %204 = add i64 %203, 7
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205, align 8
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -176
  %208 = load i64, i64* %RBX.i1877, align 8
  %209 = load i64, i64* %3, align 8
  %210 = add i64 %209, 7
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %207 to i64*
  store i64 %208, i64* %211, align 8
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -184
  %214 = load i64, i64* %R14.i1883, align 8
  %215 = load i64, i64* %3, align 8
  %216 = add i64 %215, 7
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %213 to i64*
  store i64 %214, i64* %217, align 8
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -192
  %220 = load i64, i64* %R15.i1885, align 8
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 7
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %219 to i64*
  store i64 %220, i64* %223, align 8
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -200
  %226 = load i64, i64* %R12.i1879, align 8
  %227 = load i64, i64* %3, align 8
  %228 = add i64 %227, 7
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %225 to i64*
  store i64 %226, i64* %229, align 8
  %230 = bitcast [32 x %union.VectorReg]* %143 to double*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %232 = bitcast i64* %231 to double*
  %RDX.i1724 = getelementptr inbounds %union.anon, %union.anon* %136, i64 0, i32 0
  %233 = bitcast %union.VectorReg* %151 to double*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %235 = bitcast i64* %234 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_401fba

block_.L_401fba:                                  ; preds = %block_.L_402a25, %entry
  %236 = phi i64 [ %4778, %block_.L_402a25 ], [ %.pre, %entry ]
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -100
  %239 = add i64 %236, 3
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RAX.i1872, align 8
  %243 = add i64 %237, -44
  %244 = add i64 %236, 6
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = sub i32 %241, %246
  %248 = icmp ult i32 %241, %246
  %249 = zext i1 %248 to i8
  store i8 %249, i8* %39, align 1
  %250 = and i32 %247, 255
  %251 = tail call i32 @llvm.ctpop.i32(i32 %250)
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  %254 = xor i8 %253, 1
  store i8 %254, i8* %46, align 1
  %255 = xor i32 %246, %241
  %256 = xor i32 %255, %247
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  store i8 %259, i8* %51, align 1
  %260 = icmp eq i32 %247, 0
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %54, align 1
  %262 = lshr i32 %247, 31
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %57, align 1
  %264 = lshr i32 %241, 31
  %265 = lshr i32 %246, 31
  %266 = xor i32 %265, %264
  %267 = xor i32 %262, %264
  %268 = add nuw nsw i32 %267, %266
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %63, align 1
  %271 = icmp ne i8 %263, 0
  %272 = xor i1 %271, %269
  %.v = select i1 %272, i64 12, i64 2686
  %273 = add i64 %236, %.v
  store i64 %273, i64* %3, align 8
  br i1 %272, label %block_401fc6, label %block_.L_402a38

block_401fc6:                                     ; preds = %block_.L_401fba
  %274 = add i64 %237, -104
  %275 = add i64 %273, 7
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i32*
  store i32 0, i32* %276, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_401fcd

block_.L_401fcd:                                  ; preds = %block_.L_4027ab, %block_401fc6
  %277 = phi i64 [ %4748, %block_.L_4027ab ], [ %.pre1, %block_401fc6 ]
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -104
  %280 = add i64 %277, 3
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX.i1872, align 8
  %284 = add i64 %278, -52
  %285 = add i64 %277, 6
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = sub i32 %282, %287
  %289 = icmp ult i32 %282, %287
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %39, align 1
  %291 = and i32 %288, 255
  %292 = tail call i32 @llvm.ctpop.i32(i32 %291)
  %293 = trunc i32 %292 to i8
  %294 = and i8 %293, 1
  %295 = xor i8 %294, 1
  store i8 %295, i8* %46, align 1
  %296 = xor i32 %287, %282
  %297 = xor i32 %296, %288
  %298 = lshr i32 %297, 4
  %299 = trunc i32 %298 to i8
  %300 = and i8 %299, 1
  store i8 %300, i8* %51, align 1
  %301 = icmp eq i32 %288, 0
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %54, align 1
  %303 = lshr i32 %288, 31
  %304 = trunc i32 %303 to i8
  store i8 %304, i8* %57, align 1
  %305 = lshr i32 %282, 31
  %306 = lshr i32 %287, 31
  %307 = xor i32 %306, %305
  %308 = xor i32 %303, %305
  %309 = add nuw nsw i32 %308, %307
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %63, align 1
  %312 = icmp ne i8 %304, 0
  %313 = xor i1 %312, %310
  %.v4 = select i1 %313, i64 12, i64 2648
  %314 = add i64 %277, %.v4
  store i64 %314, i64* %3, align 8
  br i1 %313, label %block_401fd9, label %block_.L_402a25

block_401fd9:                                     ; preds = %block_.L_401fcd
  %315 = add i64 %278, -108
  %316 = add i64 %314, 7
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  store i32 0, i32* %317, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_401fe0

block_.L_401fe0:                                  ; preds = %block_401fec, %block_401fd9
  %318 = phi i64 [ %1534, %block_401fec ], [ %.pre2, %block_401fd9 ]
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -108
  %321 = add i64 %318, 3
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX.i1872, align 8
  %325 = add i64 %319, -48
  %326 = add i64 %318, 6
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = sub i32 %323, %328
  %330 = icmp ult i32 %323, %328
  %331 = zext i1 %330 to i8
  store i8 %331, i8* %39, align 1
  %332 = and i32 %329, 255
  %333 = tail call i32 @llvm.ctpop.i32(i32 %332)
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = xor i8 %335, 1
  store i8 %336, i8* %46, align 1
  %337 = xor i32 %328, %323
  %338 = xor i32 %337, %329
  %339 = lshr i32 %338, 4
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  store i8 %341, i8* %51, align 1
  %342 = icmp eq i32 %329, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %54, align 1
  %344 = lshr i32 %329, 31
  %345 = trunc i32 %344 to i8
  store i8 %345, i8* %57, align 1
  %346 = lshr i32 %323, 31
  %347 = lshr i32 %328, 31
  %348 = xor i32 %347, %346
  %349 = xor i32 %344, %346
  %350 = add nuw nsw i32 %349, %348
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %63, align 1
  %353 = icmp ne i8 %345, 0
  %354 = xor i1 %353, %351
  %.v5 = select i1 %354, i64 12, i64 684
  %355 = add i64 %318, %.v5
  %356 = add i64 %319, 32
  %357 = add i64 %355, 4
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %RAX.i1872, align 8
  %360 = add i64 %319, -100
  %361 = add i64 %355, 8
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = mul nsw i64 %364, 33800
  store i64 %365, i64* %RCX.i1817, align 8
  %366 = lshr i64 %365, 63
  %367 = add i64 %365, %359
  store i64 %367, i64* %RAX.i1872, align 8
  %368 = icmp ult i64 %367, %359
  %369 = icmp ult i64 %367, %365
  %370 = or i1 %368, %369
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %39, align 1
  %372 = trunc i64 %367 to i32
  %373 = and i32 %372, 255
  %374 = tail call i32 @llvm.ctpop.i32(i32 %373)
  %375 = trunc i32 %374 to i8
  %376 = and i8 %375, 1
  %377 = xor i8 %376, 1
  store i8 %377, i8* %46, align 1
  %378 = xor i64 %365, %359
  %379 = xor i64 %378, %367
  %380 = lshr i64 %379, 4
  %381 = trunc i64 %380 to i8
  %382 = and i8 %381, 1
  store i8 %382, i8* %51, align 1
  %383 = icmp eq i64 %367, 0
  %384 = zext i1 %383 to i8
  store i8 %384, i8* %54, align 1
  %385 = lshr i64 %367, 63
  %386 = trunc i64 %385 to i8
  store i8 %386, i8* %57, align 1
  %387 = lshr i64 %359, 63
  %388 = xor i64 %385, %387
  %389 = xor i64 %385, %366
  %390 = add nuw nsw i64 %388, %389
  %391 = icmp eq i64 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %63, align 1
  %393 = add i64 %319, -104
  %394 = add i64 %355, 22
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = mul nsw i64 %397, 520
  store i64 %398, i64* %RCX.i1817, align 8
  %399 = lshr i64 %398, 63
  %400 = add i64 %355, 32
  store i64 %400, i64* %3, align 8
  %401 = add i64 %398, %367
  store i64 %401, i64* %RAX.i1872, align 8
  %402 = icmp ult i64 %401, %367
  %403 = icmp ult i64 %401, %398
  %404 = or i1 %402, %403
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %39, align 1
  %406 = trunc i64 %401 to i32
  %407 = and i32 %406, 255
  %408 = tail call i32 @llvm.ctpop.i32(i32 %407)
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %46, align 1
  %412 = xor i64 %398, %367
  %413 = xor i64 %412, %401
  %414 = lshr i64 %413, 4
  %415 = trunc i64 %414 to i8
  %416 = and i8 %415, 1
  store i8 %416, i8* %51, align 1
  %417 = icmp eq i64 %401, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %54, align 1
  %419 = lshr i64 %401, 63
  %420 = trunc i64 %419 to i8
  store i8 %420, i8* %57, align 1
  %421 = xor i64 %419, %385
  %422 = xor i64 %419, %399
  %423 = add nuw nsw i64 %421, %422
  %424 = icmp eq i64 %423, 2
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %63, align 1
  %426 = load i64, i64* %RBP.i, align 8
  br i1 %354, label %block_401fec, label %block_.L_40228c

block_401fec:                                     ; preds = %block_.L_401fe0
  %427 = add i64 %426, -108
  %428 = add i64 %355, 36
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  store i64 %431, i64* %RCX.i1817, align 8
  %432 = shl nsw i64 %431, 3
  %433 = add i64 %432, %401
  %434 = add i64 %355, 41
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i64*
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %437 = add i64 %426, 32
  %438 = add i64 %355, 45
  store i64 %438, i64* %3, align 8
  %439 = inttoptr i64 %437 to i64*
  %440 = load i64, i64* %439, align 8
  store i64 %440, i64* %RAX.i1872, align 8
  %441 = add i64 %426, -100
  %442 = add i64 %355, 49
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = sext i32 %444 to i64
  %446 = mul nsw i64 %445, 33800
  store i64 %446, i64* %RCX.i1817, align 8
  %447 = lshr i64 %446, 63
  %448 = add i64 %446, %440
  store i64 %448, i64* %RAX.i1872, align 8
  %449 = icmp ult i64 %448, %440
  %450 = icmp ult i64 %448, %446
  %451 = or i1 %449, %450
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %39, align 1
  %453 = trunc i64 %448 to i32
  %454 = and i32 %453, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %46, align 1
  %459 = xor i64 %446, %440
  %460 = xor i64 %459, %448
  %461 = lshr i64 %460, 4
  %462 = trunc i64 %461 to i8
  %463 = and i8 %462, 1
  store i8 %463, i8* %51, align 1
  %464 = icmp eq i64 %448, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %54, align 1
  %466 = lshr i64 %448, 63
  %467 = trunc i64 %466 to i8
  store i8 %467, i8* %57, align 1
  %468 = lshr i64 %440, 63
  %469 = xor i64 %466, %468
  %470 = xor i64 %466, %447
  %471 = add nuw nsw i64 %469, %470
  %472 = icmp eq i64 %471, 2
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %63, align 1
  %474 = add i64 %426, -104
  %475 = add i64 %355, 62
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  %478 = add i32 %477, 1
  %479 = zext i32 %478 to i64
  store i64 %479, i64* %RDX.i1724, align 8
  %480 = sext i32 %478 to i64
  %481 = mul nsw i64 %480, 520
  store i64 %481, i64* %RCX.i1817, align 8
  %482 = lshr i64 %481, 63
  %483 = load i64, i64* %RAX.i1872, align 8
  %484 = add i64 %481, %483
  store i64 %484, i64* %RAX.i1872, align 8
  %485 = icmp ult i64 %484, %483
  %486 = icmp ult i64 %484, %481
  %487 = or i1 %485, %486
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %39, align 1
  %489 = trunc i64 %484 to i32
  %490 = and i32 %489, 255
  %491 = tail call i32 @llvm.ctpop.i32(i32 %490)
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  %494 = xor i8 %493, 1
  store i8 %494, i8* %46, align 1
  %495 = xor i64 %481, %483
  %496 = xor i64 %495, %484
  %497 = lshr i64 %496, 4
  %498 = trunc i64 %497 to i8
  %499 = and i8 %498, 1
  store i8 %499, i8* %51, align 1
  %500 = icmp eq i64 %484, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %54, align 1
  %502 = lshr i64 %484, 63
  %503 = trunc i64 %502 to i8
  store i8 %503, i8* %57, align 1
  %504 = lshr i64 %483, 63
  %505 = xor i64 %502, %504
  %506 = xor i64 %502, %482
  %507 = add nuw nsw i64 %505, %506
  %508 = icmp eq i64 %507, 2
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %63, align 1
  %510 = load i64, i64* %RBP.i, align 8
  %511 = add i64 %510, -108
  %512 = add i64 %355, 82
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  %514 = load i32, i32* %513, align 4
  %515 = sext i32 %514 to i64
  store i64 %515, i64* %RCX.i1817, align 8
  %516 = shl nsw i64 %515, 3
  %517 = add i64 %516, %484
  %518 = add i64 %355, 87
  store i64 %518, i64* %3, align 8
  %519 = load double, double* %230, align 1
  %520 = inttoptr i64 %517 to double*
  %521 = load double, double* %520, align 8
  %522 = fsub double %519, %521
  store double %522, double* %230, align 1
  %523 = add i64 %510, 40
  %524 = add i64 %355, 91
  store i64 %524, i64* %3, align 8
  %525 = inttoptr i64 %523 to i64*
  %526 = load i64, i64* %525, align 8
  store i64 %526, i64* %RAX.i1872, align 8
  %527 = add i64 %510, -100
  %528 = add i64 %355, 95
  store i64 %528, i64* %3, align 8
  %529 = inttoptr i64 %527 to i32*
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  %532 = mul nsw i64 %531, 33800
  store i64 %532, i64* %RCX.i1817, align 8
  %533 = lshr i64 %532, 63
  %534 = add i64 %532, %526
  store i64 %534, i64* %RAX.i1872, align 8
  %535 = icmp ult i64 %534, %526
  %536 = icmp ult i64 %534, %532
  %537 = or i1 %535, %536
  %538 = zext i1 %537 to i8
  store i8 %538, i8* %39, align 1
  %539 = trunc i64 %534 to i32
  %540 = and i32 %539, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %46, align 1
  %545 = xor i64 %532, %526
  %546 = xor i64 %545, %534
  %547 = lshr i64 %546, 4
  %548 = trunc i64 %547 to i8
  %549 = and i8 %548, 1
  store i8 %549, i8* %51, align 1
  %550 = icmp eq i64 %534, 0
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %54, align 1
  %552 = lshr i64 %534, 63
  %553 = trunc i64 %552 to i8
  store i8 %553, i8* %57, align 1
  %554 = lshr i64 %526, 63
  %555 = xor i64 %552, %554
  %556 = xor i64 %552, %533
  %557 = add nuw nsw i64 %555, %556
  %558 = icmp eq i64 %557, 2
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %63, align 1
  %560 = add i64 %510, -104
  %561 = add i64 %355, 109
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = sext i32 %563 to i64
  %565 = mul nsw i64 %564, 520
  store i64 %565, i64* %RCX.i1817, align 8
  %566 = lshr i64 %565, 63
  %567 = add i64 %565, %534
  store i64 %567, i64* %RAX.i1872, align 8
  %568 = icmp ult i64 %567, %534
  %569 = icmp ult i64 %567, %565
  %570 = or i1 %568, %569
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %39, align 1
  %572 = trunc i64 %567 to i32
  %573 = and i32 %572, 255
  %574 = tail call i32 @llvm.ctpop.i32(i32 %573)
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = xor i8 %576, 1
  store i8 %577, i8* %46, align 1
  %578 = xor i64 %565, %534
  %579 = xor i64 %578, %567
  %580 = lshr i64 %579, 4
  %581 = trunc i64 %580 to i8
  %582 = and i8 %581, 1
  store i8 %582, i8* %51, align 1
  %583 = icmp eq i64 %567, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %54, align 1
  %585 = lshr i64 %567, 63
  %586 = trunc i64 %585 to i8
  store i8 %586, i8* %57, align 1
  %587 = xor i64 %585, %552
  %588 = xor i64 %585, %566
  %589 = add nuw nsw i64 %587, %588
  %590 = icmp eq i64 %589, 2
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %63, align 1
  %592 = load i64, i64* %RBP.i, align 8
  %593 = add i64 %592, -108
  %594 = add i64 %355, 122
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = add i32 %596, 1
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RDX.i1724, align 8
  %599 = icmp eq i32 %596, -1
  %600 = icmp eq i32 %597, 0
  %601 = or i1 %599, %600
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %39, align 1
  %603 = and i32 %597, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %46, align 1
  %608 = xor i32 %596, %597
  %609 = lshr i32 %608, 4
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  store i8 %611, i8* %51, align 1
  %612 = zext i1 %600 to i8
  store i8 %612, i8* %54, align 1
  %613 = lshr i32 %597, 31
  %614 = trunc i32 %613 to i8
  store i8 %614, i8* %57, align 1
  %615 = lshr i32 %596, 31
  %616 = xor i32 %613, %615
  %617 = add nuw nsw i32 %616, %613
  %618 = icmp eq i32 %617, 2
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %63, align 1
  %620 = sext i32 %597 to i64
  store i64 %620, i64* %RCX.i1817, align 8
  %621 = shl nsw i64 %620, 3
  %622 = add i64 %621, %567
  %623 = add i64 %355, 133
  store i64 %623, i64* %3, align 8
  %624 = load double, double* %230, align 1
  %625 = inttoptr i64 %622 to double*
  %626 = load double, double* %625, align 8
  %627 = fadd double %624, %626
  store double %627, double* %230, align 1
  %628 = add i64 %592, 40
  %629 = add i64 %355, 137
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i64*
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %RAX.i1872, align 8
  %632 = add i64 %592, -100
  %633 = add i64 %355, 141
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = sext i32 %635 to i64
  %637 = mul nsw i64 %636, 33800
  store i64 %637, i64* %RCX.i1817, align 8
  %638 = lshr i64 %637, 63
  %639 = add i64 %637, %631
  store i64 %639, i64* %RAX.i1872, align 8
  %640 = icmp ult i64 %639, %631
  %641 = icmp ult i64 %639, %637
  %642 = or i1 %640, %641
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %39, align 1
  %644 = trunc i64 %639 to i32
  %645 = and i32 %644, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %46, align 1
  %650 = xor i64 %637, %631
  %651 = xor i64 %650, %639
  %652 = lshr i64 %651, 4
  %653 = trunc i64 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %51, align 1
  %655 = icmp eq i64 %639, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %54, align 1
  %657 = lshr i64 %639, 63
  %658 = trunc i64 %657 to i8
  store i8 %658, i8* %57, align 1
  %659 = lshr i64 %631, 63
  %660 = xor i64 %657, %659
  %661 = xor i64 %657, %638
  %662 = add nuw nsw i64 %660, %661
  %663 = icmp eq i64 %662, 2
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %63, align 1
  %665 = load i64, i64* %RBP.i, align 8
  %666 = add i64 %665, -104
  %667 = add i64 %355, 155
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = sext i32 %669 to i64
  %671 = mul nsw i64 %670, 520
  store i64 %671, i64* %RCX.i1817, align 8
  %672 = lshr i64 %671, 63
  %673 = add i64 %671, %639
  store i64 %673, i64* %RAX.i1872, align 8
  %674 = icmp ult i64 %673, %639
  %675 = icmp ult i64 %673, %671
  %676 = or i1 %674, %675
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %39, align 1
  %678 = trunc i64 %673 to i32
  %679 = and i32 %678, 255
  %680 = tail call i32 @llvm.ctpop.i32(i32 %679)
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  %683 = xor i8 %682, 1
  store i8 %683, i8* %46, align 1
  %684 = xor i64 %671, %639
  %685 = xor i64 %684, %673
  %686 = lshr i64 %685, 4
  %687 = trunc i64 %686 to i8
  %688 = and i8 %687, 1
  store i8 %688, i8* %51, align 1
  %689 = icmp eq i64 %673, 0
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %54, align 1
  %691 = lshr i64 %673, 63
  %692 = trunc i64 %691 to i8
  store i8 %692, i8* %57, align 1
  %693 = xor i64 %691, %657
  %694 = xor i64 %691, %672
  %695 = add nuw nsw i64 %693, %694
  %696 = icmp eq i64 %695, 2
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %63, align 1
  %698 = add i64 %665, -108
  %699 = add i64 %355, 169
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = sext i32 %701 to i64
  store i64 %702, i64* %RCX.i1817, align 8
  %703 = shl nsw i64 %702, 3
  %704 = add i64 %703, %673
  %705 = add i64 %355, 174
  store i64 %705, i64* %3, align 8
  %706 = load double, double* %230, align 1
  %707 = inttoptr i64 %704 to double*
  %708 = load double, double* %707, align 8
  %709 = fsub double %706, %708
  store double %709, double* %230, align 1
  %710 = add i64 %665, -96
  %711 = add i64 %355, 178
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i64*
  %713 = load i64, i64* %712, align 8
  store i64 %713, i64* %RAX.i1872, align 8
  %714 = add i64 %665, -100
  %715 = add i64 %355, 182
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  %717 = load i32, i32* %716, align 4
  %718 = sext i32 %717 to i64
  %719 = mul nsw i64 %718, 520
  store i64 %719, i64* %RCX.i1817, align 8
  %720 = lshr i64 %719, 63
  %721 = add i64 %719, %713
  store i64 %721, i64* %RAX.i1872, align 8
  %722 = icmp ult i64 %721, %713
  %723 = icmp ult i64 %721, %719
  %724 = or i1 %722, %723
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %39, align 1
  %726 = trunc i64 %721 to i32
  %727 = and i32 %726, 255
  %728 = tail call i32 @llvm.ctpop.i32(i32 %727)
  %729 = trunc i32 %728 to i8
  %730 = and i8 %729, 1
  %731 = xor i8 %730, 1
  store i8 %731, i8* %46, align 1
  %732 = xor i64 %719, %713
  %733 = xor i64 %732, %721
  %734 = lshr i64 %733, 4
  %735 = trunc i64 %734 to i8
  %736 = and i8 %735, 1
  store i8 %736, i8* %51, align 1
  %737 = icmp eq i64 %721, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %54, align 1
  %739 = lshr i64 %721, 63
  %740 = trunc i64 %739 to i8
  store i8 %740, i8* %57, align 1
  %741 = lshr i64 %713, 63
  %742 = xor i64 %739, %741
  %743 = xor i64 %739, %720
  %744 = add nuw nsw i64 %742, %743
  %745 = icmp eq i64 %744, 2
  %746 = zext i1 %745 to i8
  store i8 %746, i8* %63, align 1
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -104
  %749 = add i64 %355, 196
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = sext i32 %751 to i64
  store i64 %752, i64* %RCX.i1817, align 8
  %753 = shl nsw i64 %752, 3
  %754 = add i64 %753, %721
  %755 = add i64 %355, 201
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %754 to double*
  store double %709, double* %756, align 8
  %757 = load i64, i64* %RBP.i, align 8
  %758 = add i64 %757, 88
  %759 = load i64, i64* %3, align 8
  %760 = add i64 %759, 4
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %758 to i64*
  %762 = load i64, i64* %761, align 8
  store i64 %762, i64* %RAX.i1872, align 8
  %763 = add i64 %757, -104
  %764 = add i64 %759, 8
  store i64 %764, i64* %3, align 8
  %765 = inttoptr i64 %763 to i32*
  %766 = load i32, i32* %765, align 4
  %767 = sext i32 %766 to i64
  store i64 %767, i64* %RCX.i1817, align 8
  %768 = shl nsw i64 %767, 3
  %769 = add i64 %768, %762
  %770 = add i64 %759, 13
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to double*
  %772 = load double, double* %771, align 8
  store double %772, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %773 = add i64 %757, 96
  %774 = add i64 %759, 17
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i64*
  %776 = load i64, i64* %775, align 8
  store i64 %776, i64* %RAX.i1872, align 8
  %777 = add i64 %759, 21
  store i64 %777, i64* %3, align 8
  %778 = load i32, i32* %765, align 4
  %779 = sext i32 %778 to i64
  store i64 %779, i64* %RCX.i1817, align 8
  %780 = shl nsw i64 %779, 3
  %781 = add i64 %780, %776
  %782 = add i64 %759, 26
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to double*
  %784 = load double, double* %783, align 8
  %785 = fdiv double %772, %784
  store double %785, double* %230, align 1
  store i64 0, i64* %231, align 1
  %786 = add i64 %757, 24
  %787 = add i64 %759, 30
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i64*
  %789 = load i64, i64* %788, align 8
  store i64 %789, i64* %RAX.i1872, align 8
  %790 = add i64 %757, -100
  %791 = add i64 %759, 34
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %790 to i32*
  %793 = load i32, i32* %792, align 4
  %794 = sext i32 %793 to i64
  %795 = mul nsw i64 %794, 33800
  store i64 %795, i64* %RCX.i1817, align 8
  %796 = lshr i64 %795, 63
  %797 = add i64 %795, %789
  store i64 %797, i64* %RAX.i1872, align 8
  %798 = icmp ult i64 %797, %789
  %799 = icmp ult i64 %797, %795
  %800 = or i1 %798, %799
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %39, align 1
  %802 = trunc i64 %797 to i32
  %803 = and i32 %802, 255
  %804 = tail call i32 @llvm.ctpop.i32(i32 %803)
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = xor i8 %806, 1
  store i8 %807, i8* %46, align 1
  %808 = xor i64 %795, %789
  %809 = xor i64 %808, %797
  %810 = lshr i64 %809, 4
  %811 = trunc i64 %810 to i8
  %812 = and i8 %811, 1
  store i8 %812, i8* %51, align 1
  %813 = icmp eq i64 %797, 0
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %54, align 1
  %815 = lshr i64 %797, 63
  %816 = trunc i64 %815 to i8
  store i8 %816, i8* %57, align 1
  %817 = lshr i64 %789, 63
  %818 = xor i64 %815, %817
  %819 = xor i64 %815, %796
  %820 = add nuw nsw i64 %818, %819
  %821 = icmp eq i64 %820, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %63, align 1
  %823 = load i64, i64* %RBP.i, align 8
  %824 = add i64 %823, -104
  %825 = add i64 %759, 48
  store i64 %825, i64* %3, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = sext i32 %827 to i64
  %829 = mul nsw i64 %828, 520
  store i64 %829, i64* %RCX.i1817, align 8
  %830 = lshr i64 %829, 63
  %831 = add i64 %829, %797
  store i64 %831, i64* %RAX.i1872, align 8
  %832 = icmp ult i64 %831, %797
  %833 = icmp ult i64 %831, %829
  %834 = or i1 %832, %833
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %39, align 1
  %836 = trunc i64 %831 to i32
  %837 = and i32 %836, 255
  %838 = tail call i32 @llvm.ctpop.i32(i32 %837)
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  store i8 %841, i8* %46, align 1
  %842 = xor i64 %829, %797
  %843 = xor i64 %842, %831
  %844 = lshr i64 %843, 4
  %845 = trunc i64 %844 to i8
  %846 = and i8 %845, 1
  store i8 %846, i8* %51, align 1
  %847 = icmp eq i64 %831, 0
  %848 = zext i1 %847 to i8
  store i8 %848, i8* %54, align 1
  %849 = lshr i64 %831, 63
  %850 = trunc i64 %849 to i8
  store i8 %850, i8* %57, align 1
  %851 = xor i64 %849, %815
  %852 = xor i64 %849, %830
  %853 = add nuw nsw i64 %851, %852
  %854 = icmp eq i64 %853, 2
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %63, align 1
  %856 = add i64 %823, -108
  %857 = add i64 %759, 62
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = sext i32 %859 to i64
  store i64 %860, i64* %RCX.i1817, align 8
  %861 = shl nsw i64 %860, 3
  %862 = add i64 %861, %831
  %863 = add i64 %759, 67
  store i64 %863, i64* %3, align 8
  %864 = load double, double* %230, align 1
  %865 = inttoptr i64 %862 to double*
  %866 = load double, double* %865, align 8
  %867 = fmul double %864, %866
  store double %867, double* %230, align 1
  %868 = add i64 %823, -72
  %869 = add i64 %759, 72
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %868 to double*
  %871 = load double, double* %870, align 8
  store double %871, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %872 = add i64 %823, 96
  %873 = add i64 %759, 76
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i64*
  %875 = load i64, i64* %874, align 8
  store i64 %875, i64* %RAX.i1872, align 8
  %876 = add i64 %759, 80
  store i64 %876, i64* %3, align 8
  %877 = load i32, i32* %826, align 4
  %878 = sext i32 %877 to i64
  store i64 %878, i64* %RCX.i1817, align 8
  %879 = shl nsw i64 %878, 3
  %880 = add i64 %879, %875
  %881 = add i64 %759, 85
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to double*
  %883 = load double, double* %882, align 8
  %884 = fdiv double %871, %883
  store double %884, double* %233, align 1
  store i64 0, i64* %234, align 1
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -96
  %887 = add i64 %759, 89
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i64*
  %889 = load i64, i64* %888, align 8
  store i64 %889, i64* %RAX.i1872, align 8
  %890 = add i64 %885, -100
  %891 = add i64 %759, 93
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  %893 = load i32, i32* %892, align 4
  %894 = sext i32 %893 to i64
  %895 = mul nsw i64 %894, 520
  store i64 %895, i64* %RCX.i1817, align 8
  %896 = lshr i64 %895, 63
  %897 = add i64 %895, %889
  store i64 %897, i64* %RAX.i1872, align 8
  %898 = icmp ult i64 %897, %889
  %899 = icmp ult i64 %897, %895
  %900 = or i1 %898, %899
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %39, align 1
  %902 = trunc i64 %897 to i32
  %903 = and i32 %902, 255
  %904 = tail call i32 @llvm.ctpop.i32(i32 %903)
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  %907 = xor i8 %906, 1
  store i8 %907, i8* %46, align 1
  %908 = xor i64 %895, %889
  %909 = xor i64 %908, %897
  %910 = lshr i64 %909, 4
  %911 = trunc i64 %910 to i8
  %912 = and i8 %911, 1
  store i8 %912, i8* %51, align 1
  %913 = icmp eq i64 %897, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %54, align 1
  %915 = lshr i64 %897, 63
  %916 = trunc i64 %915 to i8
  store i8 %916, i8* %57, align 1
  %917 = lshr i64 %889, 63
  %918 = xor i64 %915, %917
  %919 = xor i64 %915, %896
  %920 = add nuw nsw i64 %918, %919
  %921 = icmp eq i64 %920, 2
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %63, align 1
  %923 = add i64 %885, -104
  %924 = add i64 %759, 107
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i32*
  %926 = load i32, i32* %925, align 4
  %927 = sext i32 %926 to i64
  store i64 %927, i64* %RCX.i1817, align 8
  %928 = shl nsw i64 %927, 3
  %929 = add i64 %928, %897
  %930 = add i64 %759, 112
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to double*
  %932 = load double, double* %931, align 8
  %933 = fmul double %884, %932
  store double %933, double* %233, align 1
  store i64 0, i64* %234, align 1
  %934 = load double, double* %230, align 1
  %935 = fsub double %934, %933
  store double %935, double* %230, align 1
  %936 = add i64 %885, 16
  %937 = add i64 %759, 120
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %936 to i64*
  %939 = load i64, i64* %938, align 8
  store i64 %939, i64* %RAX.i1872, align 8
  %940 = load i64, i64* %RBP.i, align 8
  %941 = add i64 %940, -100
  %942 = add i64 %759, 124
  store i64 %942, i64* %3, align 8
  %943 = inttoptr i64 %941 to i32*
  %944 = load i32, i32* %943, align 4
  %945 = sext i32 %944 to i64
  %946 = mul nsw i64 %945, 520
  store i64 %946, i64* %RCX.i1817, align 8
  %947 = lshr i64 %946, 63
  %948 = add i64 %946, %939
  store i64 %948, i64* %RAX.i1872, align 8
  %949 = icmp ult i64 %948, %939
  %950 = icmp ult i64 %948, %946
  %951 = or i1 %949, %950
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %39, align 1
  %953 = trunc i64 %948 to i32
  %954 = and i32 %953, 255
  %955 = tail call i32 @llvm.ctpop.i32(i32 %954)
  %956 = trunc i32 %955 to i8
  %957 = and i8 %956, 1
  %958 = xor i8 %957, 1
  store i8 %958, i8* %46, align 1
  %959 = xor i64 %946, %939
  %960 = xor i64 %959, %948
  %961 = lshr i64 %960, 4
  %962 = trunc i64 %961 to i8
  %963 = and i8 %962, 1
  store i8 %963, i8* %51, align 1
  %964 = icmp eq i64 %948, 0
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %54, align 1
  %966 = lshr i64 %948, 63
  %967 = trunc i64 %966 to i8
  store i8 %967, i8* %57, align 1
  %968 = lshr i64 %939, 63
  %969 = xor i64 %966, %968
  %970 = xor i64 %966, %947
  %971 = add nuw nsw i64 %969, %970
  %972 = icmp eq i64 %971, 2
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %63, align 1
  %974 = add i64 %940, -104
  %975 = add i64 %759, 138
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = sext i32 %977 to i64
  store i64 %978, i64* %RCX.i1817, align 8
  %979 = shl nsw i64 %978, 3
  %980 = add i64 %979, %948
  %981 = add i64 %759, 143
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to double*
  store double %935, double* %982, align 8
  %983 = load i64, i64* %RBP.i, align 8
  %984 = add i64 %983, 72
  %985 = load i64, i64* %3, align 8
  %986 = add i64 %985, 4
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %984 to i64*
  %988 = load i64, i64* %987, align 8
  store i64 %988, i64* %RAX.i1872, align 8
  %989 = add i64 %983, -108
  %990 = add i64 %985, 8
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = sext i32 %992 to i64
  store i64 %993, i64* %RCX.i1817, align 8
  %994 = shl nsw i64 %993, 3
  %995 = add i64 %994, %988
  %996 = add i64 %985, 13
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to double*
  %998 = load double, double* %997, align 8
  store double %998, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %999 = add i64 %983, 80
  %1000 = add i64 %985, 17
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i64*
  %1002 = load i64, i64* %1001, align 8
  store i64 %1002, i64* %RAX.i1872, align 8
  %1003 = add i64 %985, 21
  store i64 %1003, i64* %3, align 8
  %1004 = load i32, i32* %991, align 4
  %1005 = sext i32 %1004 to i64
  store i64 %1005, i64* %RCX.i1817, align 8
  %1006 = shl nsw i64 %1005, 3
  %1007 = add i64 %1006, %1002
  %1008 = add i64 %985, 26
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to double*
  %1010 = load double, double* %1009, align 8
  %1011 = fdiv double %998, %1010
  store double %1011, double* %230, align 1
  store i64 0, i64* %231, align 1
  %1012 = add i64 %983, 48
  %1013 = add i64 %985, 30
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i64*
  %1015 = load i64, i64* %1014, align 8
  store i64 %1015, i64* %RAX.i1872, align 8
  %1016 = add i64 %983, -100
  %1017 = add i64 %985, 34
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i32*
  %1019 = load i32, i32* %1018, align 4
  %1020 = sext i32 %1019 to i64
  %1021 = mul nsw i64 %1020, 33800
  store i64 %1021, i64* %RCX.i1817, align 8
  %1022 = lshr i64 %1021, 63
  %1023 = add i64 %1021, %1015
  store i64 %1023, i64* %RAX.i1872, align 8
  %1024 = icmp ult i64 %1023, %1015
  %1025 = icmp ult i64 %1023, %1021
  %1026 = or i1 %1024, %1025
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %39, align 1
  %1028 = trunc i64 %1023 to i32
  %1029 = and i32 %1028, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %46, align 1
  %1034 = xor i64 %1021, %1015
  %1035 = xor i64 %1034, %1023
  %1036 = lshr i64 %1035, 4
  %1037 = trunc i64 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %51, align 1
  %1039 = icmp eq i64 %1023, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %54, align 1
  %1041 = lshr i64 %1023, 63
  %1042 = trunc i64 %1041 to i8
  store i8 %1042, i8* %57, align 1
  %1043 = lshr i64 %1015, 63
  %1044 = xor i64 %1041, %1043
  %1045 = xor i64 %1041, %1022
  %1046 = add nuw nsw i64 %1044, %1045
  %1047 = icmp eq i64 %1046, 2
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %63, align 1
  %1049 = load i64, i64* %RBP.i, align 8
  %1050 = add i64 %1049, -104
  %1051 = add i64 %985, 48
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i32*
  %1053 = load i32, i32* %1052, align 4
  %1054 = sext i32 %1053 to i64
  %1055 = mul nsw i64 %1054, 520
  store i64 %1055, i64* %RCX.i1817, align 8
  %1056 = lshr i64 %1055, 63
  %1057 = add i64 %1055, %1023
  store i64 %1057, i64* %RAX.i1872, align 8
  %1058 = icmp ult i64 %1057, %1023
  %1059 = icmp ult i64 %1057, %1055
  %1060 = or i1 %1058, %1059
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %39, align 1
  %1062 = trunc i64 %1057 to i32
  %1063 = and i32 %1062, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %46, align 1
  %1068 = xor i64 %1055, %1023
  %1069 = xor i64 %1068, %1057
  %1070 = lshr i64 %1069, 4
  %1071 = trunc i64 %1070 to i8
  %1072 = and i8 %1071, 1
  store i8 %1072, i8* %51, align 1
  %1073 = icmp eq i64 %1057, 0
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %54, align 1
  %1075 = lshr i64 %1057, 63
  %1076 = trunc i64 %1075 to i8
  store i8 %1076, i8* %57, align 1
  %1077 = xor i64 %1075, %1041
  %1078 = xor i64 %1075, %1056
  %1079 = add nuw nsw i64 %1077, %1078
  %1080 = icmp eq i64 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %63, align 1
  %1082 = add i64 %1049, -108
  %1083 = add i64 %985, 62
  store i64 %1083, i64* %3, align 8
  %1084 = inttoptr i64 %1082 to i32*
  %1085 = load i32, i32* %1084, align 4
  %1086 = sext i32 %1085 to i64
  store i64 %1086, i64* %RCX.i1817, align 8
  %1087 = shl nsw i64 %1086, 3
  %1088 = add i64 %1087, %1057
  %1089 = add i64 %985, 67
  store i64 %1089, i64* %3, align 8
  %1090 = load double, double* %230, align 1
  %1091 = inttoptr i64 %1088 to double*
  %1092 = load double, double* %1091, align 8
  %1093 = fmul double %1090, %1092
  store double %1093, double* %230, align 1
  %1094 = add i64 %1049, -64
  %1095 = add i64 %985, 72
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to double*
  %1097 = load double, double* %1096, align 8
  store double %1097, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %1098 = add i64 %1049, 64
  %1099 = add i64 %985, 76
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i64*
  %1101 = load i64, i64* %1100, align 8
  store i64 %1101, i64* %RAX.i1872, align 8
  %1102 = add i64 %1049, -100
  %1103 = add i64 %985, 80
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  %1106 = sext i32 %1105 to i64
  store i64 %1106, i64* %RCX.i1817, align 8
  %1107 = shl nsw i64 %1106, 3
  %1108 = add i64 %1107, %1101
  %1109 = add i64 %985, 85
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to double*
  %1111 = load double, double* %1110, align 8
  %1112 = fmul double %1097, %1111
  store double %1112, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1113 = load i64, i64* %RBP.i, align 8
  %1114 = add i64 %1113, 80
  %1115 = add i64 %985, 89
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RAX.i1872, align 8
  %1118 = add i64 %1113, -108
  %1119 = add i64 %985, 93
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = sext i32 %1121 to i64
  store i64 %1122, i64* %RCX.i1817, align 8
  %1123 = shl nsw i64 %1122, 3
  %1124 = add i64 %1123, %1117
  %1125 = add i64 %985, 98
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to double*
  %1127 = load double, double* %1126, align 8
  %1128 = fdiv double %1112, %1127
  store double %1128, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1129 = add i64 %1113, 16
  %1130 = add i64 %985, 102
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i64*
  %1132 = load i64, i64* %1131, align 8
  store i64 %1132, i64* %RAX.i1872, align 8
  %1133 = add i64 %1113, -100
  %1134 = add i64 %985, 106
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i32*
  %1136 = load i32, i32* %1135, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = mul nsw i64 %1137, 520
  store i64 %1138, i64* %RCX.i1817, align 8
  %1139 = lshr i64 %1138, 63
  %1140 = add i64 %1138, %1132
  store i64 %1140, i64* %RAX.i1872, align 8
  %1141 = icmp ult i64 %1140, %1132
  %1142 = icmp ult i64 %1140, %1138
  %1143 = or i1 %1141, %1142
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %39, align 1
  %1145 = trunc i64 %1140 to i32
  %1146 = and i32 %1145, 255
  %1147 = tail call i32 @llvm.ctpop.i32(i32 %1146)
  %1148 = trunc i32 %1147 to i8
  %1149 = and i8 %1148, 1
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %46, align 1
  %1151 = xor i64 %1138, %1132
  %1152 = xor i64 %1151, %1140
  %1153 = lshr i64 %1152, 4
  %1154 = trunc i64 %1153 to i8
  %1155 = and i8 %1154, 1
  store i8 %1155, i8* %51, align 1
  %1156 = icmp eq i64 %1140, 0
  %1157 = zext i1 %1156 to i8
  store i8 %1157, i8* %54, align 1
  %1158 = lshr i64 %1140, 63
  %1159 = trunc i64 %1158 to i8
  store i8 %1159, i8* %57, align 1
  %1160 = lshr i64 %1132, 63
  %1161 = xor i64 %1158, %1160
  %1162 = xor i64 %1158, %1139
  %1163 = add nuw nsw i64 %1161, %1162
  %1164 = icmp eq i64 %1163, 2
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %63, align 1
  %1166 = add i64 %1113, -104
  %1167 = add i64 %985, 120
  store i64 %1167, i64* %3, align 8
  %1168 = inttoptr i64 %1166 to i32*
  %1169 = load i32, i32* %1168, align 4
  %1170 = sext i32 %1169 to i64
  store i64 %1170, i64* %RCX.i1817, align 8
  %1171 = shl nsw i64 %1170, 3
  %1172 = add i64 %1171, %1140
  %1173 = add i64 %985, 125
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to double*
  %1175 = load double, double* %1174, align 8
  %1176 = fmul double %1128, %1175
  store double %1176, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1177 = load double, double* %230, align 1
  %1178 = fadd double %1177, %1176
  store double %1178, double* %230, align 1
  %1179 = load i64, i64* %RBP.i, align 8
  %1180 = add i64 %1179, -64
  %1181 = add i64 %985, 134
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to double*
  %1183 = load double, double* %1182, align 8
  store double %1183, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %1184 = add i64 %1179, 56
  %1185 = add i64 %985, 138
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i64*
  %1187 = load i64, i64* %1186, align 8
  store i64 %1187, i64* %RAX.i1872, align 8
  %1188 = add i64 %1179, -100
  %1189 = add i64 %985, 142
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = sext i32 %1191 to i64
  store i64 %1192, i64* %RCX.i1817, align 8
  %1193 = shl nsw i64 %1192, 3
  %1194 = add i64 %1193, %1187
  %1195 = add i64 %985, 147
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to double*
  %1197 = load double, double* %1196, align 8
  %1198 = fmul double %1183, %1197
  store double %1198, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1199 = add i64 %1179, 80
  %1200 = add i64 %985, 151
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i64*
  %1202 = load i64, i64* %1201, align 8
  store i64 %1202, i64* %RAX.i1872, align 8
  %1203 = add i64 %1179, -108
  %1204 = add i64 %985, 155
  store i64 %1204, i64* %3, align 8
  %1205 = inttoptr i64 %1203 to i32*
  %1206 = load i32, i32* %1205, align 4
  %1207 = sext i32 %1206 to i64
  store i64 %1207, i64* %RCX.i1817, align 8
  %1208 = shl nsw i64 %1207, 3
  %1209 = add i64 %1208, %1202
  %1210 = add i64 %985, 160
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to double*
  %1212 = load double, double* %1211, align 8
  %1213 = fdiv double %1198, %1212
  store double %1213, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1214 = add i64 %1179, 24
  %1215 = add i64 %985, 164
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i64*
  %1217 = load i64, i64* %1216, align 8
  store i64 %1217, i64* %RAX.i1872, align 8
  %1218 = add i64 %985, 168
  store i64 %1218, i64* %3, align 8
  %1219 = load i32, i32* %1190, align 4
  %1220 = sext i32 %1219 to i64
  %1221 = mul nsw i64 %1220, 33800
  store i64 %1221, i64* %RCX.i1817, align 8
  %1222 = lshr i64 %1221, 63
  %1223 = add i64 %1221, %1217
  store i64 %1223, i64* %RAX.i1872, align 8
  %1224 = icmp ult i64 %1223, %1217
  %1225 = icmp ult i64 %1223, %1221
  %1226 = or i1 %1224, %1225
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %39, align 1
  %1228 = trunc i64 %1223 to i32
  %1229 = and i32 %1228, 255
  %1230 = tail call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  store i8 %1233, i8* %46, align 1
  %1234 = xor i64 %1221, %1217
  %1235 = xor i64 %1234, %1223
  %1236 = lshr i64 %1235, 4
  %1237 = trunc i64 %1236 to i8
  %1238 = and i8 %1237, 1
  store i8 %1238, i8* %51, align 1
  %1239 = icmp eq i64 %1223, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %54, align 1
  %1241 = lshr i64 %1223, 63
  %1242 = trunc i64 %1241 to i8
  store i8 %1242, i8* %57, align 1
  %1243 = lshr i64 %1217, 63
  %1244 = xor i64 %1241, %1243
  %1245 = xor i64 %1241, %1222
  %1246 = add nuw nsw i64 %1244, %1245
  %1247 = icmp eq i64 %1246, 2
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %63, align 1
  %1249 = load i64, i64* %RBP.i, align 8
  %1250 = add i64 %1249, -104
  %1251 = add i64 %985, 182
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  %1253 = load i32, i32* %1252, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = mul nsw i64 %1254, 520
  store i64 %1255, i64* %RCX.i1817, align 8
  %1256 = lshr i64 %1255, 63
  %1257 = add i64 %1255, %1223
  store i64 %1257, i64* %RAX.i1872, align 8
  %1258 = icmp ult i64 %1257, %1223
  %1259 = icmp ult i64 %1257, %1255
  %1260 = or i1 %1258, %1259
  %1261 = zext i1 %1260 to i8
  store i8 %1261, i8* %39, align 1
  %1262 = trunc i64 %1257 to i32
  %1263 = and i32 %1262, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %46, align 1
  %1268 = xor i64 %1255, %1223
  %1269 = xor i64 %1268, %1257
  %1270 = lshr i64 %1269, 4
  %1271 = trunc i64 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %51, align 1
  %1273 = icmp eq i64 %1257, 0
  %1274 = zext i1 %1273 to i8
  store i8 %1274, i8* %54, align 1
  %1275 = lshr i64 %1257, 63
  %1276 = trunc i64 %1275 to i8
  store i8 %1276, i8* %57, align 1
  %1277 = xor i64 %1275, %1241
  %1278 = xor i64 %1275, %1256
  %1279 = add nuw nsw i64 %1277, %1278
  %1280 = icmp eq i64 %1279, 2
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %63, align 1
  %1282 = add i64 %1249, -108
  %1283 = add i64 %985, 196
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = sext i32 %1285 to i64
  store i64 %1286, i64* %RCX.i1817, align 8
  %1287 = shl nsw i64 %1286, 3
  %1288 = add i64 %1287, %1257
  %1289 = add i64 %985, 201
  store i64 %1289, i64* %3, align 8
  %1290 = load double, double* %233, align 1
  %1291 = inttoptr i64 %1288 to double*
  %1292 = load double, double* %1291, align 8
  %1293 = fmul double %1290, %1292
  store double %1293, double* %233, align 1
  %1294 = load double, double* %230, align 1
  %1295 = fsub double %1294, %1293
  store double %1295, double* %230, align 1
  %1296 = add i64 %1249, 48
  %1297 = add i64 %985, 209
  store i64 %1297, i64* %3, align 8
  %1298 = inttoptr i64 %1296 to i64*
  %1299 = load i64, i64* %1298, align 8
  store i64 %1299, i64* %RAX.i1872, align 8
  %1300 = add i64 %1249, -100
  %1301 = add i64 %985, 213
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = sext i32 %1303 to i64
  %1305 = mul nsw i64 %1304, 33800
  store i64 %1305, i64* %RCX.i1817, align 8
  %1306 = lshr i64 %1305, 63
  %1307 = add i64 %1305, %1299
  store i64 %1307, i64* %RAX.i1872, align 8
  %1308 = icmp ult i64 %1307, %1299
  %1309 = icmp ult i64 %1307, %1305
  %1310 = or i1 %1308, %1309
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %39, align 1
  %1312 = trunc i64 %1307 to i32
  %1313 = and i32 %1312, 255
  %1314 = tail call i32 @llvm.ctpop.i32(i32 %1313)
  %1315 = trunc i32 %1314 to i8
  %1316 = and i8 %1315, 1
  %1317 = xor i8 %1316, 1
  store i8 %1317, i8* %46, align 1
  %1318 = xor i64 %1305, %1299
  %1319 = xor i64 %1318, %1307
  %1320 = lshr i64 %1319, 4
  %1321 = trunc i64 %1320 to i8
  %1322 = and i8 %1321, 1
  store i8 %1322, i8* %51, align 1
  %1323 = icmp eq i64 %1307, 0
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %54, align 1
  %1325 = lshr i64 %1307, 63
  %1326 = trunc i64 %1325 to i8
  store i8 %1326, i8* %57, align 1
  %1327 = lshr i64 %1299, 63
  %1328 = xor i64 %1325, %1327
  %1329 = xor i64 %1325, %1306
  %1330 = add nuw nsw i64 %1328, %1329
  %1331 = icmp eq i64 %1330, 2
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %63, align 1
  %1333 = load i64, i64* %RBP.i, align 8
  %1334 = add i64 %1333, -104
  %1335 = add i64 %985, 227
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = sext i32 %1337 to i64
  %1339 = mul nsw i64 %1338, 520
  store i64 %1339, i64* %RCX.i1817, align 8
  %1340 = lshr i64 %1339, 63
  %1341 = add i64 %1339, %1307
  store i64 %1341, i64* %RAX.i1872, align 8
  %1342 = icmp ult i64 %1341, %1307
  %1343 = icmp ult i64 %1341, %1339
  %1344 = or i1 %1342, %1343
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %39, align 1
  %1346 = trunc i64 %1341 to i32
  %1347 = and i32 %1346, 255
  %1348 = tail call i32 @llvm.ctpop.i32(i32 %1347)
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 1
  %1351 = xor i8 %1350, 1
  store i8 %1351, i8* %46, align 1
  %1352 = xor i64 %1339, %1307
  %1353 = xor i64 %1352, %1341
  %1354 = lshr i64 %1353, 4
  %1355 = trunc i64 %1354 to i8
  %1356 = and i8 %1355, 1
  store i8 %1356, i8* %51, align 1
  %1357 = icmp eq i64 %1341, 0
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %54, align 1
  %1359 = lshr i64 %1341, 63
  %1360 = trunc i64 %1359 to i8
  store i8 %1360, i8* %57, align 1
  %1361 = xor i64 %1359, %1325
  %1362 = xor i64 %1359, %1340
  %1363 = add nuw nsw i64 %1361, %1362
  %1364 = icmp eq i64 %1363, 2
  %1365 = zext i1 %1364 to i8
  store i8 %1365, i8* %63, align 1
  %1366 = add i64 %1333, -108
  %1367 = add i64 %985, 241
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = sext i32 %1369 to i64
  store i64 %1370, i64* %RCX.i1817, align 8
  %1371 = shl nsw i64 %1370, 3
  %1372 = add i64 %1371, %1341
  %1373 = add i64 %985, 246
  store i64 %1373, i64* %3, align 8
  %1374 = load i64, i64* %148, align 1
  %1375 = inttoptr i64 %1372 to i64*
  store i64 %1374, i64* %1375, align 8
  %1376 = load i64, i64* %RBP.i, align 8
  %1377 = add i64 %1376, 16
  %1378 = load i64, i64* %3, align 8
  %1379 = add i64 %1378, 4
  store i64 %1379, i64* %3, align 8
  %1380 = inttoptr i64 %1377 to i64*
  %1381 = load i64, i64* %1380, align 8
  store i64 %1381, i64* %RAX.i1872, align 8
  %1382 = add i64 %1376, -100
  %1383 = add i64 %1378, 8
  store i64 %1383, i64* %3, align 8
  %1384 = inttoptr i64 %1382 to i32*
  %1385 = load i32, i32* %1384, align 4
  %1386 = sext i32 %1385 to i64
  %1387 = mul nsw i64 %1386, 520
  store i64 %1387, i64* %RCX.i1817, align 8
  %1388 = lshr i64 %1387, 63
  %1389 = add i64 %1387, %1381
  store i64 %1389, i64* %RAX.i1872, align 8
  %1390 = icmp ult i64 %1389, %1381
  %1391 = icmp ult i64 %1389, %1387
  %1392 = or i1 %1390, %1391
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %39, align 1
  %1394 = trunc i64 %1389 to i32
  %1395 = and i32 %1394, 255
  %1396 = tail call i32 @llvm.ctpop.i32(i32 %1395)
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  %1399 = xor i8 %1398, 1
  store i8 %1399, i8* %46, align 1
  %1400 = xor i64 %1387, %1381
  %1401 = xor i64 %1400, %1389
  %1402 = lshr i64 %1401, 4
  %1403 = trunc i64 %1402 to i8
  %1404 = and i8 %1403, 1
  store i8 %1404, i8* %51, align 1
  %1405 = icmp eq i64 %1389, 0
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %54, align 1
  %1407 = lshr i64 %1389, 63
  %1408 = trunc i64 %1407 to i8
  store i8 %1408, i8* %57, align 1
  %1409 = lshr i64 %1381, 63
  %1410 = xor i64 %1407, %1409
  %1411 = xor i64 %1407, %1388
  %1412 = add nuw nsw i64 %1410, %1411
  %1413 = icmp eq i64 %1412, 2
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %63, align 1
  %1415 = add i64 %1376, -104
  %1416 = add i64 %1378, 22
  store i64 %1416, i64* %3, align 8
  %1417 = inttoptr i64 %1415 to i32*
  %1418 = load i32, i32* %1417, align 4
  %1419 = sext i32 %1418 to i64
  store i64 %1419, i64* %RCX.i1817, align 8
  %1420 = shl nsw i64 %1419, 3
  %1421 = add i64 %1420, %1389
  %1422 = add i64 %1378, 27
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i64*
  %1424 = load i64, i64* %1423, align 8
  store i64 %1424, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %1425 = add i64 %1376, 24
  %1426 = add i64 %1378, 31
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i64*
  %1428 = load i64, i64* %1427, align 8
  store i64 %1428, i64* %RAX.i1872, align 8
  %1429 = add i64 %1378, 35
  store i64 %1429, i64* %3, align 8
  %1430 = load i32, i32* %1384, align 4
  %1431 = sext i32 %1430 to i64
  %1432 = mul nsw i64 %1431, 33800
  store i64 %1432, i64* %RCX.i1817, align 8
  %1433 = lshr i64 %1432, 63
  %1434 = add i64 %1432, %1428
  store i64 %1434, i64* %RAX.i1872, align 8
  %1435 = icmp ult i64 %1434, %1428
  %1436 = icmp ult i64 %1434, %1432
  %1437 = or i1 %1435, %1436
  %1438 = zext i1 %1437 to i8
  store i8 %1438, i8* %39, align 1
  %1439 = trunc i64 %1434 to i32
  %1440 = and i32 %1439, 255
  %1441 = tail call i32 @llvm.ctpop.i32(i32 %1440)
  %1442 = trunc i32 %1441 to i8
  %1443 = and i8 %1442, 1
  %1444 = xor i8 %1443, 1
  store i8 %1444, i8* %46, align 1
  %1445 = xor i64 %1432, %1428
  %1446 = xor i64 %1445, %1434
  %1447 = lshr i64 %1446, 4
  %1448 = trunc i64 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %51, align 1
  %1450 = icmp eq i64 %1434, 0
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %54, align 1
  %1452 = lshr i64 %1434, 63
  %1453 = trunc i64 %1452 to i8
  store i8 %1453, i8* %57, align 1
  %1454 = lshr i64 %1428, 63
  %1455 = xor i64 %1452, %1454
  %1456 = xor i64 %1452, %1433
  %1457 = add nuw nsw i64 %1455, %1456
  %1458 = icmp eq i64 %1457, 2
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %63, align 1
  %1460 = load i64, i64* %RBP.i, align 8
  %1461 = add i64 %1460, -104
  %1462 = add i64 %1378, 49
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1461 to i32*
  %1464 = load i32, i32* %1463, align 4
  %1465 = sext i32 %1464 to i64
  %1466 = mul nsw i64 %1465, 520
  store i64 %1466, i64* %RCX.i1817, align 8
  %1467 = lshr i64 %1466, 63
  %1468 = add i64 %1466, %1434
  store i64 %1468, i64* %RAX.i1872, align 8
  %1469 = icmp ult i64 %1468, %1434
  %1470 = icmp ult i64 %1468, %1466
  %1471 = or i1 %1469, %1470
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %39, align 1
  %1473 = trunc i64 %1468 to i32
  %1474 = and i32 %1473, 255
  %1475 = tail call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  store i8 %1478, i8* %46, align 1
  %1479 = xor i64 %1466, %1434
  %1480 = xor i64 %1479, %1468
  %1481 = lshr i64 %1480, 4
  %1482 = trunc i64 %1481 to i8
  %1483 = and i8 %1482, 1
  store i8 %1483, i8* %51, align 1
  %1484 = icmp eq i64 %1468, 0
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %54, align 1
  %1486 = lshr i64 %1468, 63
  %1487 = trunc i64 %1486 to i8
  store i8 %1487, i8* %57, align 1
  %1488 = xor i64 %1486, %1452
  %1489 = xor i64 %1486, %1467
  %1490 = add nuw nsw i64 %1488, %1489
  %1491 = icmp eq i64 %1490, 2
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %63, align 1
  %1493 = add i64 %1460, -108
  %1494 = add i64 %1378, 63
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i32*
  %1496 = load i32, i32* %1495, align 4
  %1497 = sext i32 %1496 to i64
  store i64 %1497, i64* %RCX.i1817, align 8
  %1498 = shl nsw i64 %1497, 3
  %1499 = add i64 %1498, %1468
  %1500 = add i64 %1378, 68
  store i64 %1500, i64* %3, align 8
  %1501 = load i64, i64* %148, align 1
  %1502 = inttoptr i64 %1499 to i64*
  store i64 %1501, i64* %1502, align 8
  %1503 = load i64, i64* %RBP.i, align 8
  %1504 = add i64 %1503, -108
  %1505 = load i64, i64* %3, align 8
  %1506 = add i64 %1505, 3
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1504 to i32*
  %1508 = load i32, i32* %1507, align 4
  %1509 = add i32 %1508, 1
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RAX.i1872, align 8
  %1511 = icmp eq i32 %1508, -1
  %1512 = icmp eq i32 %1509, 0
  %1513 = or i1 %1511, %1512
  %1514 = zext i1 %1513 to i8
  store i8 %1514, i8* %39, align 1
  %1515 = and i32 %1509, 255
  %1516 = tail call i32 @llvm.ctpop.i32(i32 %1515)
  %1517 = trunc i32 %1516 to i8
  %1518 = and i8 %1517, 1
  %1519 = xor i8 %1518, 1
  store i8 %1519, i8* %46, align 1
  %1520 = xor i32 %1508, %1509
  %1521 = lshr i32 %1520, 4
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  store i8 %1523, i8* %51, align 1
  %1524 = zext i1 %1512 to i8
  store i8 %1524, i8* %54, align 1
  %1525 = lshr i32 %1509, 31
  %1526 = trunc i32 %1525 to i8
  store i8 %1526, i8* %57, align 1
  %1527 = lshr i32 %1508, 31
  %1528 = xor i32 %1525, %1527
  %1529 = add nuw nsw i32 %1528, %1525
  %1530 = icmp eq i32 %1529, 2
  %1531 = zext i1 %1530 to i8
  store i8 %1531, i8* %63, align 1
  %1532 = add i64 %1505, 9
  store i64 %1532, i64* %3, align 8
  store i32 %1509, i32* %1507, align 4
  %1533 = load i64, i64* %3, align 8
  %1534 = add i64 %1533, -679
  store i64 %1534, i64* %3, align 8
  br label %block_.L_401fe0

block_.L_40228c:                                  ; preds = %block_.L_401fe0
  %1535 = add i64 %426, -48
  %1536 = add i64 %355, 36
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  %1538 = load i32, i32* %1537, align 4
  %1539 = sext i32 %1538 to i64
  store i64 %1539, i64* %RCX.i1817, align 8
  %1540 = shl nsw i64 %1539, 3
  %1541 = add i64 %1540, %401
  %1542 = add i64 %355, 41
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i64*
  %1544 = load i64, i64* %1543, align 8
  store i64 %1544, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %1545 = add i64 %426, 32
  %1546 = add i64 %355, 45
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i64*
  %1548 = load i64, i64* %1547, align 8
  store i64 %1548, i64* %RAX.i1872, align 8
  %1549 = add i64 %426, -100
  %1550 = add i64 %355, 49
  store i64 %1550, i64* %3, align 8
  %1551 = inttoptr i64 %1549 to i32*
  %1552 = load i32, i32* %1551, align 4
  %1553 = sext i32 %1552 to i64
  %1554 = mul nsw i64 %1553, 33800
  store i64 %1554, i64* %RCX.i1817, align 8
  %1555 = lshr i64 %1554, 63
  %1556 = add i64 %1554, %1548
  store i64 %1556, i64* %RAX.i1872, align 8
  %1557 = icmp ult i64 %1556, %1548
  %1558 = icmp ult i64 %1556, %1554
  %1559 = or i1 %1557, %1558
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %39, align 1
  %1561 = trunc i64 %1556 to i32
  %1562 = and i32 %1561, 255
  %1563 = tail call i32 @llvm.ctpop.i32(i32 %1562)
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %46, align 1
  %1567 = xor i64 %1554, %1548
  %1568 = xor i64 %1567, %1556
  %1569 = lshr i64 %1568, 4
  %1570 = trunc i64 %1569 to i8
  %1571 = and i8 %1570, 1
  store i8 %1571, i8* %51, align 1
  %1572 = icmp eq i64 %1556, 0
  %1573 = zext i1 %1572 to i8
  store i8 %1573, i8* %54, align 1
  %1574 = lshr i64 %1556, 63
  %1575 = trunc i64 %1574 to i8
  store i8 %1575, i8* %57, align 1
  %1576 = lshr i64 %1548, 63
  %1577 = xor i64 %1574, %1576
  %1578 = xor i64 %1574, %1555
  %1579 = add nuw nsw i64 %1577, %1578
  %1580 = icmp eq i64 %1579, 2
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %63, align 1
  %1582 = add i64 %426, -104
  %1583 = add i64 %355, 62
  store i64 %1583, i64* %3, align 8
  %1584 = inttoptr i64 %1582 to i32*
  %1585 = load i32, i32* %1584, align 4
  %1586 = add i32 %1585, 1
  %1587 = zext i32 %1586 to i64
  store i64 %1587, i64* %RDX.i1724, align 8
  %1588 = sext i32 %1586 to i64
  %1589 = mul nsw i64 %1588, 520
  store i64 %1589, i64* %RCX.i1817, align 8
  %1590 = lshr i64 %1589, 63
  %1591 = load i64, i64* %RAX.i1872, align 8
  %1592 = add i64 %1589, %1591
  store i64 %1592, i64* %RAX.i1872, align 8
  %1593 = icmp ult i64 %1592, %1591
  %1594 = icmp ult i64 %1592, %1589
  %1595 = or i1 %1593, %1594
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %39, align 1
  %1597 = trunc i64 %1592 to i32
  %1598 = and i32 %1597, 255
  %1599 = tail call i32 @llvm.ctpop.i32(i32 %1598)
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %46, align 1
  %1603 = xor i64 %1589, %1591
  %1604 = xor i64 %1603, %1592
  %1605 = lshr i64 %1604, 4
  %1606 = trunc i64 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %51, align 1
  %1608 = icmp eq i64 %1592, 0
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %54, align 1
  %1610 = lshr i64 %1592, 63
  %1611 = trunc i64 %1610 to i8
  store i8 %1611, i8* %57, align 1
  %1612 = lshr i64 %1591, 63
  %1613 = xor i64 %1610, %1612
  %1614 = xor i64 %1610, %1590
  %1615 = add nuw nsw i64 %1613, %1614
  %1616 = icmp eq i64 %1615, 2
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %63, align 1
  %1618 = load i64, i64* %RBP.i, align 8
  %1619 = add i64 %1618, -48
  %1620 = add i64 %355, 82
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = sext i32 %1622 to i64
  store i64 %1623, i64* %RCX.i1817, align 8
  %1624 = shl nsw i64 %1623, 3
  %1625 = add i64 %1624, %1592
  %1626 = add i64 %355, 87
  store i64 %1626, i64* %3, align 8
  %1627 = load double, double* %230, align 1
  %1628 = inttoptr i64 %1625 to double*
  %1629 = load double, double* %1628, align 8
  %1630 = fsub double %1627, %1629
  store double %1630, double* %230, align 1
  %1631 = add i64 %1618, -88
  %1632 = add i64 %355, 91
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to i64*
  %1634 = load i64, i64* %1633, align 8
  store i64 %1634, i64* %RAX.i1872, align 8
  %1635 = add i64 %1618, -100
  %1636 = add i64 %355, 95
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1635 to i32*
  %1638 = load i32, i32* %1637, align 4
  %1639 = sext i32 %1638 to i64
  %1640 = mul nsw i64 %1639, 520
  store i64 %1640, i64* %RCX.i1817, align 8
  %1641 = lshr i64 %1640, 63
  %1642 = add i64 %1640, %1634
  store i64 %1642, i64* %RAX.i1872, align 8
  %1643 = icmp ult i64 %1642, %1634
  %1644 = icmp ult i64 %1642, %1640
  %1645 = or i1 %1643, %1644
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %39, align 1
  %1647 = trunc i64 %1642 to i32
  %1648 = and i32 %1647, 255
  %1649 = tail call i32 @llvm.ctpop.i32(i32 %1648)
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = xor i8 %1651, 1
  store i8 %1652, i8* %46, align 1
  %1653 = xor i64 %1640, %1634
  %1654 = xor i64 %1653, %1642
  %1655 = lshr i64 %1654, 4
  %1656 = trunc i64 %1655 to i8
  %1657 = and i8 %1656, 1
  store i8 %1657, i8* %51, align 1
  %1658 = icmp eq i64 %1642, 0
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %54, align 1
  %1660 = lshr i64 %1642, 63
  %1661 = trunc i64 %1660 to i8
  store i8 %1661, i8* %57, align 1
  %1662 = lshr i64 %1634, 63
  %1663 = xor i64 %1660, %1662
  %1664 = xor i64 %1660, %1641
  %1665 = add nuw nsw i64 %1663, %1664
  %1666 = icmp eq i64 %1665, 2
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %63, align 1
  %1668 = add i64 %1618, -104
  %1669 = add i64 %355, 109
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i32*
  %1671 = load i32, i32* %1670, align 4
  %1672 = sext i32 %1671 to i64
  store i64 %1672, i64* %RCX.i1817, align 8
  %1673 = shl nsw i64 %1672, 3
  %1674 = add i64 %1673, %1642
  %1675 = add i64 %355, 114
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to double*
  %1677 = load double, double* %1676, align 8
  %1678 = fadd double %1630, %1677
  store double %1678, double* %230, align 1
  %1679 = load i64, i64* %RBP.i, align 8
  %1680 = add i64 %1679, 40
  %1681 = add i64 %355, 118
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i64*
  %1683 = load i64, i64* %1682, align 8
  store i64 %1683, i64* %RAX.i1872, align 8
  %1684 = add i64 %1679, -100
  %1685 = add i64 %355, 122
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i32*
  %1687 = load i32, i32* %1686, align 4
  %1688 = sext i32 %1687 to i64
  %1689 = mul nsw i64 %1688, 33800
  store i64 %1689, i64* %RCX.i1817, align 8
  %1690 = lshr i64 %1689, 63
  %1691 = add i64 %1689, %1683
  store i64 %1691, i64* %RAX.i1872, align 8
  %1692 = icmp ult i64 %1691, %1683
  %1693 = icmp ult i64 %1691, %1689
  %1694 = or i1 %1692, %1693
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %39, align 1
  %1696 = trunc i64 %1691 to i32
  %1697 = and i32 %1696, 255
  %1698 = tail call i32 @llvm.ctpop.i32(i32 %1697)
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  %1701 = xor i8 %1700, 1
  store i8 %1701, i8* %46, align 1
  %1702 = xor i64 %1689, %1683
  %1703 = xor i64 %1702, %1691
  %1704 = lshr i64 %1703, 4
  %1705 = trunc i64 %1704 to i8
  %1706 = and i8 %1705, 1
  store i8 %1706, i8* %51, align 1
  %1707 = icmp eq i64 %1691, 0
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %54, align 1
  %1709 = lshr i64 %1691, 63
  %1710 = trunc i64 %1709 to i8
  store i8 %1710, i8* %57, align 1
  %1711 = lshr i64 %1683, 63
  %1712 = xor i64 %1709, %1711
  %1713 = xor i64 %1709, %1690
  %1714 = add nuw nsw i64 %1712, %1713
  %1715 = icmp eq i64 %1714, 2
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %63, align 1
  %1717 = add i64 %1679, -104
  %1718 = add i64 %355, 136
  store i64 %1718, i64* %3, align 8
  %1719 = inttoptr i64 %1717 to i32*
  %1720 = load i32, i32* %1719, align 4
  %1721 = sext i32 %1720 to i64
  %1722 = mul nsw i64 %1721, 520
  store i64 %1722, i64* %RCX.i1817, align 8
  %1723 = lshr i64 %1722, 63
  %1724 = add i64 %1722, %1691
  store i64 %1724, i64* %RAX.i1872, align 8
  %1725 = icmp ult i64 %1724, %1691
  %1726 = icmp ult i64 %1724, %1722
  %1727 = or i1 %1725, %1726
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %39, align 1
  %1729 = trunc i64 %1724 to i32
  %1730 = and i32 %1729, 255
  %1731 = tail call i32 @llvm.ctpop.i32(i32 %1730)
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  %1734 = xor i8 %1733, 1
  store i8 %1734, i8* %46, align 1
  %1735 = xor i64 %1722, %1691
  %1736 = xor i64 %1735, %1724
  %1737 = lshr i64 %1736, 4
  %1738 = trunc i64 %1737 to i8
  %1739 = and i8 %1738, 1
  store i8 %1739, i8* %51, align 1
  %1740 = icmp eq i64 %1724, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %54, align 1
  %1742 = lshr i64 %1724, 63
  %1743 = trunc i64 %1742 to i8
  store i8 %1743, i8* %57, align 1
  %1744 = xor i64 %1742, %1709
  %1745 = xor i64 %1742, %1723
  %1746 = add nuw nsw i64 %1744, %1745
  %1747 = icmp eq i64 %1746, 2
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %63, align 1
  %1749 = load i64, i64* %RBP.i, align 8
  %1750 = add i64 %1749, -48
  %1751 = add i64 %355, 150
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = sext i32 %1753 to i64
  store i64 %1754, i64* %RCX.i1817, align 8
  %1755 = shl nsw i64 %1754, 3
  %1756 = add i64 %1755, %1724
  %1757 = add i64 %355, 155
  store i64 %1757, i64* %3, align 8
  %1758 = load double, double* %230, align 1
  %1759 = inttoptr i64 %1756 to double*
  %1760 = load double, double* %1759, align 8
  %1761 = fsub double %1758, %1760
  store double %1761, double* %230, align 1
  %1762 = add i64 %1749, -96
  %1763 = add i64 %355, 159
  store i64 %1763, i64* %3, align 8
  %1764 = inttoptr i64 %1762 to i64*
  %1765 = load i64, i64* %1764, align 8
  store i64 %1765, i64* %RAX.i1872, align 8
  %1766 = add i64 %1749, -100
  %1767 = add i64 %355, 163
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i32*
  %1769 = load i32, i32* %1768, align 4
  %1770 = sext i32 %1769 to i64
  %1771 = mul nsw i64 %1770, 520
  store i64 %1771, i64* %RCX.i1817, align 8
  %1772 = lshr i64 %1771, 63
  %1773 = add i64 %1771, %1765
  store i64 %1773, i64* %RAX.i1872, align 8
  %1774 = icmp ult i64 %1773, %1765
  %1775 = icmp ult i64 %1773, %1771
  %1776 = or i1 %1774, %1775
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %39, align 1
  %1778 = trunc i64 %1773 to i32
  %1779 = and i32 %1778, 255
  %1780 = tail call i32 @llvm.ctpop.i32(i32 %1779)
  %1781 = trunc i32 %1780 to i8
  %1782 = and i8 %1781, 1
  %1783 = xor i8 %1782, 1
  store i8 %1783, i8* %46, align 1
  %1784 = xor i64 %1771, %1765
  %1785 = xor i64 %1784, %1773
  %1786 = lshr i64 %1785, 4
  %1787 = trunc i64 %1786 to i8
  %1788 = and i8 %1787, 1
  store i8 %1788, i8* %51, align 1
  %1789 = icmp eq i64 %1773, 0
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %54, align 1
  %1791 = lshr i64 %1773, 63
  %1792 = trunc i64 %1791 to i8
  store i8 %1792, i8* %57, align 1
  %1793 = lshr i64 %1765, 63
  %1794 = xor i64 %1791, %1793
  %1795 = xor i64 %1791, %1772
  %1796 = add nuw nsw i64 %1794, %1795
  %1797 = icmp eq i64 %1796, 2
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %63, align 1
  %1799 = add i64 %1749, -104
  %1800 = add i64 %355, 177
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i32*
  %1802 = load i32, i32* %1801, align 4
  %1803 = sext i32 %1802 to i64
  store i64 %1803, i64* %RCX.i1817, align 8
  %1804 = shl nsw i64 %1803, 3
  %1805 = add i64 %1804, %1773
  %1806 = add i64 %355, 182
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to double*
  store double %1761, double* %1807, align 8
  %1808 = load i64, i64* %RBP.i, align 8
  %1809 = add i64 %1808, 88
  %1810 = load i64, i64* %3, align 8
  %1811 = add i64 %1810, 4
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1809 to i64*
  %1813 = load i64, i64* %1812, align 8
  store i64 %1813, i64* %RAX.i1872, align 8
  %1814 = add i64 %1808, -104
  %1815 = add i64 %1810, 8
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i32*
  %1817 = load i32, i32* %1816, align 4
  %1818 = sext i32 %1817 to i64
  store i64 %1818, i64* %RCX.i1817, align 8
  %1819 = shl nsw i64 %1818, 3
  %1820 = add i64 %1819, %1813
  %1821 = add i64 %1810, 13
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to double*
  %1823 = load double, double* %1822, align 8
  store double %1823, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %1824 = add i64 %1808, 96
  %1825 = add i64 %1810, 17
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i64*
  %1827 = load i64, i64* %1826, align 8
  store i64 %1827, i64* %RAX.i1872, align 8
  %1828 = add i64 %1810, 21
  store i64 %1828, i64* %3, align 8
  %1829 = load i32, i32* %1816, align 4
  %1830 = sext i32 %1829 to i64
  store i64 %1830, i64* %RCX.i1817, align 8
  %1831 = shl nsw i64 %1830, 3
  %1832 = add i64 %1831, %1827
  %1833 = add i64 %1810, 26
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to double*
  %1835 = load double, double* %1834, align 8
  %1836 = fdiv double %1823, %1835
  store double %1836, double* %230, align 1
  store i64 0, i64* %231, align 1
  %1837 = add i64 %1808, 24
  %1838 = add i64 %1810, 30
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i64*
  %1840 = load i64, i64* %1839, align 8
  store i64 %1840, i64* %RAX.i1872, align 8
  %1841 = add i64 %1808, -100
  %1842 = add i64 %1810, 34
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = sext i32 %1844 to i64
  %1846 = mul nsw i64 %1845, 33800
  store i64 %1846, i64* %RCX.i1817, align 8
  %1847 = lshr i64 %1846, 63
  %1848 = add i64 %1846, %1840
  store i64 %1848, i64* %RAX.i1872, align 8
  %1849 = icmp ult i64 %1848, %1840
  %1850 = icmp ult i64 %1848, %1846
  %1851 = or i1 %1849, %1850
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %39, align 1
  %1853 = trunc i64 %1848 to i32
  %1854 = and i32 %1853, 255
  %1855 = tail call i32 @llvm.ctpop.i32(i32 %1854)
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  %1858 = xor i8 %1857, 1
  store i8 %1858, i8* %46, align 1
  %1859 = xor i64 %1846, %1840
  %1860 = xor i64 %1859, %1848
  %1861 = lshr i64 %1860, 4
  %1862 = trunc i64 %1861 to i8
  %1863 = and i8 %1862, 1
  store i8 %1863, i8* %51, align 1
  %1864 = icmp eq i64 %1848, 0
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %54, align 1
  %1866 = lshr i64 %1848, 63
  %1867 = trunc i64 %1866 to i8
  store i8 %1867, i8* %57, align 1
  %1868 = lshr i64 %1840, 63
  %1869 = xor i64 %1866, %1868
  %1870 = xor i64 %1866, %1847
  %1871 = add nuw nsw i64 %1869, %1870
  %1872 = icmp eq i64 %1871, 2
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %63, align 1
  %1874 = load i64, i64* %RBP.i, align 8
  %1875 = add i64 %1874, -104
  %1876 = add i64 %1810, 48
  store i64 %1876, i64* %3, align 8
  %1877 = inttoptr i64 %1875 to i32*
  %1878 = load i32, i32* %1877, align 4
  %1879 = sext i32 %1878 to i64
  %1880 = mul nsw i64 %1879, 520
  store i64 %1880, i64* %RCX.i1817, align 8
  %1881 = lshr i64 %1880, 63
  %1882 = add i64 %1880, %1848
  store i64 %1882, i64* %RAX.i1872, align 8
  %1883 = icmp ult i64 %1882, %1848
  %1884 = icmp ult i64 %1882, %1880
  %1885 = or i1 %1883, %1884
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %39, align 1
  %1887 = trunc i64 %1882 to i32
  %1888 = and i32 %1887, 255
  %1889 = tail call i32 @llvm.ctpop.i32(i32 %1888)
  %1890 = trunc i32 %1889 to i8
  %1891 = and i8 %1890, 1
  %1892 = xor i8 %1891, 1
  store i8 %1892, i8* %46, align 1
  %1893 = xor i64 %1880, %1848
  %1894 = xor i64 %1893, %1882
  %1895 = lshr i64 %1894, 4
  %1896 = trunc i64 %1895 to i8
  %1897 = and i8 %1896, 1
  store i8 %1897, i8* %51, align 1
  %1898 = icmp eq i64 %1882, 0
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %54, align 1
  %1900 = lshr i64 %1882, 63
  %1901 = trunc i64 %1900 to i8
  store i8 %1901, i8* %57, align 1
  %1902 = xor i64 %1900, %1866
  %1903 = xor i64 %1900, %1881
  %1904 = add nuw nsw i64 %1902, %1903
  %1905 = icmp eq i64 %1904, 2
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %63, align 1
  %1907 = add i64 %1874, -48
  %1908 = add i64 %1810, 62
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1907 to i32*
  %1910 = load i32, i32* %1909, align 4
  %1911 = sext i32 %1910 to i64
  store i64 %1911, i64* %RCX.i1817, align 8
  %1912 = shl nsw i64 %1911, 3
  %1913 = add i64 %1912, %1882
  %1914 = add i64 %1810, 67
  store i64 %1914, i64* %3, align 8
  %1915 = load double, double* %230, align 1
  %1916 = inttoptr i64 %1913 to double*
  %1917 = load double, double* %1916, align 8
  %1918 = fmul double %1915, %1917
  store double %1918, double* %230, align 1
  %1919 = add i64 %1874, -72
  %1920 = add i64 %1810, 72
  store i64 %1920, i64* %3, align 8
  %1921 = inttoptr i64 %1919 to double*
  %1922 = load double, double* %1921, align 8
  store double %1922, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %1923 = add i64 %1874, 96
  %1924 = add i64 %1810, 76
  store i64 %1924, i64* %3, align 8
  %1925 = inttoptr i64 %1923 to i64*
  %1926 = load i64, i64* %1925, align 8
  store i64 %1926, i64* %RAX.i1872, align 8
  %1927 = add i64 %1810, 80
  store i64 %1927, i64* %3, align 8
  %1928 = load i32, i32* %1877, align 4
  %1929 = sext i32 %1928 to i64
  store i64 %1929, i64* %RCX.i1817, align 8
  %1930 = shl nsw i64 %1929, 3
  %1931 = add i64 %1930, %1926
  %1932 = add i64 %1810, 85
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to double*
  %1934 = load double, double* %1933, align 8
  %1935 = fdiv double %1922, %1934
  store double %1935, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1936 = load i64, i64* %RBP.i, align 8
  %1937 = add i64 %1936, -96
  %1938 = add i64 %1810, 89
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i64*
  %1940 = load i64, i64* %1939, align 8
  store i64 %1940, i64* %RAX.i1872, align 8
  %1941 = add i64 %1936, -100
  %1942 = add i64 %1810, 93
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = sext i32 %1944 to i64
  %1946 = mul nsw i64 %1945, 520
  store i64 %1946, i64* %RCX.i1817, align 8
  %1947 = lshr i64 %1946, 63
  %1948 = add i64 %1946, %1940
  store i64 %1948, i64* %RAX.i1872, align 8
  %1949 = icmp ult i64 %1948, %1940
  %1950 = icmp ult i64 %1948, %1946
  %1951 = or i1 %1949, %1950
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %39, align 1
  %1953 = trunc i64 %1948 to i32
  %1954 = and i32 %1953, 255
  %1955 = tail call i32 @llvm.ctpop.i32(i32 %1954)
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  store i8 %1958, i8* %46, align 1
  %1959 = xor i64 %1946, %1940
  %1960 = xor i64 %1959, %1948
  %1961 = lshr i64 %1960, 4
  %1962 = trunc i64 %1961 to i8
  %1963 = and i8 %1962, 1
  store i8 %1963, i8* %51, align 1
  %1964 = icmp eq i64 %1948, 0
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %54, align 1
  %1966 = lshr i64 %1948, 63
  %1967 = trunc i64 %1966 to i8
  store i8 %1967, i8* %57, align 1
  %1968 = lshr i64 %1940, 63
  %1969 = xor i64 %1966, %1968
  %1970 = xor i64 %1966, %1947
  %1971 = add nuw nsw i64 %1969, %1970
  %1972 = icmp eq i64 %1971, 2
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %63, align 1
  %1974 = add i64 %1936, -104
  %1975 = add i64 %1810, 107
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1974 to i32*
  %1977 = load i32, i32* %1976, align 4
  %1978 = sext i32 %1977 to i64
  store i64 %1978, i64* %RCX.i1817, align 8
  %1979 = shl nsw i64 %1978, 3
  %1980 = add i64 %1979, %1948
  %1981 = add i64 %1810, 112
  store i64 %1981, i64* %3, align 8
  %1982 = inttoptr i64 %1980 to double*
  %1983 = load double, double* %1982, align 8
  %1984 = fmul double %1935, %1983
  store double %1984, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1985 = load double, double* %230, align 1
  %1986 = fsub double %1985, %1984
  store double %1986, double* %230, align 1
  %1987 = add i64 %1936, 16
  %1988 = add i64 %1810, 120
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1987 to i64*
  %1990 = load i64, i64* %1989, align 8
  store i64 %1990, i64* %RAX.i1872, align 8
  %1991 = load i64, i64* %RBP.i, align 8
  %1992 = add i64 %1991, -100
  %1993 = add i64 %1810, 124
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i32*
  %1995 = load i32, i32* %1994, align 4
  %1996 = sext i32 %1995 to i64
  %1997 = mul nsw i64 %1996, 520
  store i64 %1997, i64* %RCX.i1817, align 8
  %1998 = lshr i64 %1997, 63
  %1999 = add i64 %1997, %1990
  store i64 %1999, i64* %RAX.i1872, align 8
  %2000 = icmp ult i64 %1999, %1990
  %2001 = icmp ult i64 %1999, %1997
  %2002 = or i1 %2000, %2001
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %39, align 1
  %2004 = trunc i64 %1999 to i32
  %2005 = and i32 %2004, 255
  %2006 = tail call i32 @llvm.ctpop.i32(i32 %2005)
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  %2009 = xor i8 %2008, 1
  store i8 %2009, i8* %46, align 1
  %2010 = xor i64 %1997, %1990
  %2011 = xor i64 %2010, %1999
  %2012 = lshr i64 %2011, 4
  %2013 = trunc i64 %2012 to i8
  %2014 = and i8 %2013, 1
  store i8 %2014, i8* %51, align 1
  %2015 = icmp eq i64 %1999, 0
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %54, align 1
  %2017 = lshr i64 %1999, 63
  %2018 = trunc i64 %2017 to i8
  store i8 %2018, i8* %57, align 1
  %2019 = lshr i64 %1990, 63
  %2020 = xor i64 %2017, %2019
  %2021 = xor i64 %2017, %1998
  %2022 = add nuw nsw i64 %2020, %2021
  %2023 = icmp eq i64 %2022, 2
  %2024 = zext i1 %2023 to i8
  store i8 %2024, i8* %63, align 1
  %2025 = add i64 %1991, -104
  %2026 = add i64 %1810, 138
  store i64 %2026, i64* %3, align 8
  %2027 = inttoptr i64 %2025 to i32*
  %2028 = load i32, i32* %2027, align 4
  %2029 = sext i32 %2028 to i64
  store i64 %2029, i64* %RCX.i1817, align 8
  %2030 = shl nsw i64 %2029, 3
  %2031 = add i64 %2030, %1999
  %2032 = add i64 %1810, 143
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to double*
  store double %1986, double* %2033, align 8
  %2034 = load i64, i64* %RBP.i, align 8
  %2035 = add i64 %2034, 72
  %2036 = load i64, i64* %3, align 8
  %2037 = add i64 %2036, 4
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2035 to i64*
  %2039 = load i64, i64* %2038, align 8
  store i64 %2039, i64* %RAX.i1872, align 8
  %2040 = add i64 %2034, -48
  %2041 = add i64 %2036, 8
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2040 to i32*
  %2043 = load i32, i32* %2042, align 4
  %2044 = sext i32 %2043 to i64
  store i64 %2044, i64* %RCX.i1817, align 8
  %2045 = shl nsw i64 %2044, 3
  %2046 = add i64 %2045, %2039
  %2047 = add i64 %2036, 13
  store i64 %2047, i64* %3, align 8
  %2048 = inttoptr i64 %2046 to double*
  %2049 = load double, double* %2048, align 8
  store double %2049, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %2050 = add i64 %2034, 80
  %2051 = add i64 %2036, 17
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to i64*
  %2053 = load i64, i64* %2052, align 8
  store i64 %2053, i64* %RAX.i1872, align 8
  %2054 = add i64 %2036, 21
  store i64 %2054, i64* %3, align 8
  %2055 = load i32, i32* %2042, align 4
  %2056 = sext i32 %2055 to i64
  store i64 %2056, i64* %RCX.i1817, align 8
  %2057 = shl nsw i64 %2056, 3
  %2058 = add i64 %2057, %2053
  %2059 = add i64 %2036, 26
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to double*
  %2061 = load double, double* %2060, align 8
  %2062 = fdiv double %2049, %2061
  store double %2062, double* %230, align 1
  store i64 0, i64* %231, align 1
  %2063 = add i64 %2034, 48
  %2064 = add i64 %2036, 30
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i64*
  %2066 = load i64, i64* %2065, align 8
  store i64 %2066, i64* %RAX.i1872, align 8
  %2067 = add i64 %2034, -100
  %2068 = add i64 %2036, 34
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2067 to i32*
  %2070 = load i32, i32* %2069, align 4
  %2071 = sext i32 %2070 to i64
  %2072 = mul nsw i64 %2071, 33800
  store i64 %2072, i64* %RCX.i1817, align 8
  %2073 = lshr i64 %2072, 63
  %2074 = add i64 %2072, %2066
  store i64 %2074, i64* %RAX.i1872, align 8
  %2075 = icmp ult i64 %2074, %2066
  %2076 = icmp ult i64 %2074, %2072
  %2077 = or i1 %2075, %2076
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %39, align 1
  %2079 = trunc i64 %2074 to i32
  %2080 = and i32 %2079, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %46, align 1
  %2085 = xor i64 %2072, %2066
  %2086 = xor i64 %2085, %2074
  %2087 = lshr i64 %2086, 4
  %2088 = trunc i64 %2087 to i8
  %2089 = and i8 %2088, 1
  store i8 %2089, i8* %51, align 1
  %2090 = icmp eq i64 %2074, 0
  %2091 = zext i1 %2090 to i8
  store i8 %2091, i8* %54, align 1
  %2092 = lshr i64 %2074, 63
  %2093 = trunc i64 %2092 to i8
  store i8 %2093, i8* %57, align 1
  %2094 = lshr i64 %2066, 63
  %2095 = xor i64 %2092, %2094
  %2096 = xor i64 %2092, %2073
  %2097 = add nuw nsw i64 %2095, %2096
  %2098 = icmp eq i64 %2097, 2
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %63, align 1
  %2100 = load i64, i64* %RBP.i, align 8
  %2101 = add i64 %2100, -104
  %2102 = add i64 %2036, 48
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i32*
  %2104 = load i32, i32* %2103, align 4
  %2105 = sext i32 %2104 to i64
  %2106 = mul nsw i64 %2105, 520
  store i64 %2106, i64* %RCX.i1817, align 8
  %2107 = lshr i64 %2106, 63
  %2108 = add i64 %2106, %2074
  store i64 %2108, i64* %RAX.i1872, align 8
  %2109 = icmp ult i64 %2108, %2074
  %2110 = icmp ult i64 %2108, %2106
  %2111 = or i1 %2109, %2110
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %39, align 1
  %2113 = trunc i64 %2108 to i32
  %2114 = and i32 %2113, 255
  %2115 = tail call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  store i8 %2118, i8* %46, align 1
  %2119 = xor i64 %2106, %2074
  %2120 = xor i64 %2119, %2108
  %2121 = lshr i64 %2120, 4
  %2122 = trunc i64 %2121 to i8
  %2123 = and i8 %2122, 1
  store i8 %2123, i8* %51, align 1
  %2124 = icmp eq i64 %2108, 0
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %54, align 1
  %2126 = lshr i64 %2108, 63
  %2127 = trunc i64 %2126 to i8
  store i8 %2127, i8* %57, align 1
  %2128 = xor i64 %2126, %2092
  %2129 = xor i64 %2126, %2107
  %2130 = add nuw nsw i64 %2128, %2129
  %2131 = icmp eq i64 %2130, 2
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %63, align 1
  %2133 = add i64 %2100, -48
  %2134 = add i64 %2036, 62
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i32*
  %2136 = load i32, i32* %2135, align 4
  %2137 = sext i32 %2136 to i64
  store i64 %2137, i64* %RCX.i1817, align 8
  %2138 = shl nsw i64 %2137, 3
  %2139 = add i64 %2138, %2108
  %2140 = add i64 %2036, 67
  store i64 %2140, i64* %3, align 8
  %2141 = load double, double* %230, align 1
  %2142 = inttoptr i64 %2139 to double*
  %2143 = load double, double* %2142, align 8
  %2144 = fmul double %2141, %2143
  store double %2144, double* %230, align 1
  %2145 = add i64 %2100, -64
  %2146 = add i64 %2036, 72
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to double*
  %2148 = load double, double* %2147, align 8
  store double %2148, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %2149 = add i64 %2100, 64
  %2150 = add i64 %2036, 76
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i64*
  %2152 = load i64, i64* %2151, align 8
  store i64 %2152, i64* %RAX.i1872, align 8
  %2153 = add i64 %2100, -100
  %2154 = add i64 %2036, 80
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2153 to i32*
  %2156 = load i32, i32* %2155, align 4
  %2157 = sext i32 %2156 to i64
  store i64 %2157, i64* %RCX.i1817, align 8
  %2158 = shl nsw i64 %2157, 3
  %2159 = add i64 %2158, %2152
  %2160 = add i64 %2036, 85
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2159 to double*
  %2162 = load double, double* %2161, align 8
  %2163 = fmul double %2148, %2162
  store double %2163, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2164 = load i64, i64* %RBP.i, align 8
  %2165 = add i64 %2164, 80
  %2166 = add i64 %2036, 89
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i64*
  %2168 = load i64, i64* %2167, align 8
  store i64 %2168, i64* %RAX.i1872, align 8
  %2169 = add i64 %2164, -48
  %2170 = add i64 %2036, 93
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i32*
  %2172 = load i32, i32* %2171, align 4
  %2173 = sext i32 %2172 to i64
  store i64 %2173, i64* %RCX.i1817, align 8
  %2174 = shl nsw i64 %2173, 3
  %2175 = add i64 %2174, %2168
  %2176 = add i64 %2036, 98
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to double*
  %2178 = load double, double* %2177, align 8
  %2179 = fdiv double %2163, %2178
  store double %2179, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2180 = add i64 %2164, 16
  %2181 = add i64 %2036, 102
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i64*
  %2183 = load i64, i64* %2182, align 8
  store i64 %2183, i64* %RAX.i1872, align 8
  %2184 = add i64 %2164, -100
  %2185 = add i64 %2036, 106
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i32*
  %2187 = load i32, i32* %2186, align 4
  %2188 = sext i32 %2187 to i64
  %2189 = mul nsw i64 %2188, 520
  store i64 %2189, i64* %RCX.i1817, align 8
  %2190 = lshr i64 %2189, 63
  %2191 = add i64 %2189, %2183
  store i64 %2191, i64* %RAX.i1872, align 8
  %2192 = icmp ult i64 %2191, %2183
  %2193 = icmp ult i64 %2191, %2189
  %2194 = or i1 %2192, %2193
  %2195 = zext i1 %2194 to i8
  store i8 %2195, i8* %39, align 1
  %2196 = trunc i64 %2191 to i32
  %2197 = and i32 %2196, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %46, align 1
  %2202 = xor i64 %2189, %2183
  %2203 = xor i64 %2202, %2191
  %2204 = lshr i64 %2203, 4
  %2205 = trunc i64 %2204 to i8
  %2206 = and i8 %2205, 1
  store i8 %2206, i8* %51, align 1
  %2207 = icmp eq i64 %2191, 0
  %2208 = zext i1 %2207 to i8
  store i8 %2208, i8* %54, align 1
  %2209 = lshr i64 %2191, 63
  %2210 = trunc i64 %2209 to i8
  store i8 %2210, i8* %57, align 1
  %2211 = lshr i64 %2183, 63
  %2212 = xor i64 %2209, %2211
  %2213 = xor i64 %2209, %2190
  %2214 = add nuw nsw i64 %2212, %2213
  %2215 = icmp eq i64 %2214, 2
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %63, align 1
  %2217 = add i64 %2164, -104
  %2218 = add i64 %2036, 120
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i32*
  %2220 = load i32, i32* %2219, align 4
  %2221 = sext i32 %2220 to i64
  store i64 %2221, i64* %RCX.i1817, align 8
  %2222 = shl nsw i64 %2221, 3
  %2223 = add i64 %2222, %2191
  %2224 = add i64 %2036, 125
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2223 to double*
  %2226 = load double, double* %2225, align 8
  %2227 = fmul double %2179, %2226
  store double %2227, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2228 = load double, double* %230, align 1
  %2229 = fadd double %2228, %2227
  store double %2229, double* %230, align 1
  %2230 = load i64, i64* %RBP.i, align 8
  %2231 = add i64 %2230, -64
  %2232 = add i64 %2036, 134
  store i64 %2232, i64* %3, align 8
  %2233 = inttoptr i64 %2231 to double*
  %2234 = load double, double* %2233, align 8
  store double %2234, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %2235 = add i64 %2230, 56
  %2236 = add i64 %2036, 138
  store i64 %2236, i64* %3, align 8
  %2237 = inttoptr i64 %2235 to i64*
  %2238 = load i64, i64* %2237, align 8
  store i64 %2238, i64* %RAX.i1872, align 8
  %2239 = add i64 %2230, -100
  %2240 = add i64 %2036, 142
  store i64 %2240, i64* %3, align 8
  %2241 = inttoptr i64 %2239 to i32*
  %2242 = load i32, i32* %2241, align 4
  %2243 = sext i32 %2242 to i64
  store i64 %2243, i64* %RCX.i1817, align 8
  %2244 = shl nsw i64 %2243, 3
  %2245 = add i64 %2244, %2238
  %2246 = add i64 %2036, 147
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to double*
  %2248 = load double, double* %2247, align 8
  %2249 = fmul double %2234, %2248
  store double %2249, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2250 = add i64 %2230, 80
  %2251 = add i64 %2036, 151
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2250 to i64*
  %2253 = load i64, i64* %2252, align 8
  store i64 %2253, i64* %RAX.i1872, align 8
  %2254 = add i64 %2230, -48
  %2255 = add i64 %2036, 155
  store i64 %2255, i64* %3, align 8
  %2256 = inttoptr i64 %2254 to i32*
  %2257 = load i32, i32* %2256, align 4
  %2258 = sext i32 %2257 to i64
  store i64 %2258, i64* %RCX.i1817, align 8
  %2259 = shl nsw i64 %2258, 3
  %2260 = add i64 %2259, %2253
  %2261 = add i64 %2036, 160
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to double*
  %2263 = load double, double* %2262, align 8
  %2264 = fdiv double %2249, %2263
  store double %2264, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2265 = add i64 %2230, 24
  %2266 = add i64 %2036, 164
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i64*
  %2268 = load i64, i64* %2267, align 8
  store i64 %2268, i64* %RAX.i1872, align 8
  %2269 = add i64 %2036, 168
  store i64 %2269, i64* %3, align 8
  %2270 = load i32, i32* %2241, align 4
  %2271 = sext i32 %2270 to i64
  %2272 = mul nsw i64 %2271, 33800
  store i64 %2272, i64* %RCX.i1817, align 8
  %2273 = lshr i64 %2272, 63
  %2274 = add i64 %2272, %2268
  store i64 %2274, i64* %RAX.i1872, align 8
  %2275 = icmp ult i64 %2274, %2268
  %2276 = icmp ult i64 %2274, %2272
  %2277 = or i1 %2275, %2276
  %2278 = zext i1 %2277 to i8
  store i8 %2278, i8* %39, align 1
  %2279 = trunc i64 %2274 to i32
  %2280 = and i32 %2279, 255
  %2281 = tail call i32 @llvm.ctpop.i32(i32 %2280)
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  %2284 = xor i8 %2283, 1
  store i8 %2284, i8* %46, align 1
  %2285 = xor i64 %2272, %2268
  %2286 = xor i64 %2285, %2274
  %2287 = lshr i64 %2286, 4
  %2288 = trunc i64 %2287 to i8
  %2289 = and i8 %2288, 1
  store i8 %2289, i8* %51, align 1
  %2290 = icmp eq i64 %2274, 0
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %54, align 1
  %2292 = lshr i64 %2274, 63
  %2293 = trunc i64 %2292 to i8
  store i8 %2293, i8* %57, align 1
  %2294 = lshr i64 %2268, 63
  %2295 = xor i64 %2292, %2294
  %2296 = xor i64 %2292, %2273
  %2297 = add nuw nsw i64 %2295, %2296
  %2298 = icmp eq i64 %2297, 2
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %63, align 1
  %2300 = load i64, i64* %RBP.i, align 8
  %2301 = add i64 %2300, -104
  %2302 = add i64 %2036, 182
  store i64 %2302, i64* %3, align 8
  %2303 = inttoptr i64 %2301 to i32*
  %2304 = load i32, i32* %2303, align 4
  %2305 = sext i32 %2304 to i64
  %2306 = mul nsw i64 %2305, 520
  store i64 %2306, i64* %RCX.i1817, align 8
  %2307 = lshr i64 %2306, 63
  %2308 = add i64 %2306, %2274
  store i64 %2308, i64* %RAX.i1872, align 8
  %2309 = icmp ult i64 %2308, %2274
  %2310 = icmp ult i64 %2308, %2306
  %2311 = or i1 %2309, %2310
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %39, align 1
  %2313 = trunc i64 %2308 to i32
  %2314 = and i32 %2313, 255
  %2315 = tail call i32 @llvm.ctpop.i32(i32 %2314)
  %2316 = trunc i32 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = xor i8 %2317, 1
  store i8 %2318, i8* %46, align 1
  %2319 = xor i64 %2306, %2274
  %2320 = xor i64 %2319, %2308
  %2321 = lshr i64 %2320, 4
  %2322 = trunc i64 %2321 to i8
  %2323 = and i8 %2322, 1
  store i8 %2323, i8* %51, align 1
  %2324 = icmp eq i64 %2308, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %54, align 1
  %2326 = lshr i64 %2308, 63
  %2327 = trunc i64 %2326 to i8
  store i8 %2327, i8* %57, align 1
  %2328 = xor i64 %2326, %2292
  %2329 = xor i64 %2326, %2307
  %2330 = add nuw nsw i64 %2328, %2329
  %2331 = icmp eq i64 %2330, 2
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %63, align 1
  %2333 = add i64 %2300, -48
  %2334 = add i64 %2036, 196
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2333 to i32*
  %2336 = load i32, i32* %2335, align 4
  %2337 = sext i32 %2336 to i64
  store i64 %2337, i64* %RCX.i1817, align 8
  %2338 = shl nsw i64 %2337, 3
  %2339 = add i64 %2338, %2308
  %2340 = add i64 %2036, 201
  store i64 %2340, i64* %3, align 8
  %2341 = load double, double* %233, align 1
  %2342 = inttoptr i64 %2339 to double*
  %2343 = load double, double* %2342, align 8
  %2344 = fmul double %2341, %2343
  store double %2344, double* %233, align 1
  %2345 = load double, double* %230, align 1
  %2346 = fsub double %2345, %2344
  store double %2346, double* %230, align 1
  %2347 = add i64 %2300, 48
  %2348 = add i64 %2036, 209
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i64*
  %2350 = load i64, i64* %2349, align 8
  store i64 %2350, i64* %RAX.i1872, align 8
  %2351 = add i64 %2300, -100
  %2352 = add i64 %2036, 213
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i32*
  %2354 = load i32, i32* %2353, align 4
  %2355 = sext i32 %2354 to i64
  %2356 = mul nsw i64 %2355, 33800
  store i64 %2356, i64* %RCX.i1817, align 8
  %2357 = lshr i64 %2356, 63
  %2358 = add i64 %2356, %2350
  store i64 %2358, i64* %RAX.i1872, align 8
  %2359 = icmp ult i64 %2358, %2350
  %2360 = icmp ult i64 %2358, %2356
  %2361 = or i1 %2359, %2360
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %39, align 1
  %2363 = trunc i64 %2358 to i32
  %2364 = and i32 %2363, 255
  %2365 = tail call i32 @llvm.ctpop.i32(i32 %2364)
  %2366 = trunc i32 %2365 to i8
  %2367 = and i8 %2366, 1
  %2368 = xor i8 %2367, 1
  store i8 %2368, i8* %46, align 1
  %2369 = xor i64 %2356, %2350
  %2370 = xor i64 %2369, %2358
  %2371 = lshr i64 %2370, 4
  %2372 = trunc i64 %2371 to i8
  %2373 = and i8 %2372, 1
  store i8 %2373, i8* %51, align 1
  %2374 = icmp eq i64 %2358, 0
  %2375 = zext i1 %2374 to i8
  store i8 %2375, i8* %54, align 1
  %2376 = lshr i64 %2358, 63
  %2377 = trunc i64 %2376 to i8
  store i8 %2377, i8* %57, align 1
  %2378 = lshr i64 %2350, 63
  %2379 = xor i64 %2376, %2378
  %2380 = xor i64 %2376, %2357
  %2381 = add nuw nsw i64 %2379, %2380
  %2382 = icmp eq i64 %2381, 2
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %63, align 1
  %2384 = load i64, i64* %RBP.i, align 8
  %2385 = add i64 %2384, -104
  %2386 = add i64 %2036, 227
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i32*
  %2388 = load i32, i32* %2387, align 4
  %2389 = sext i32 %2388 to i64
  %2390 = mul nsw i64 %2389, 520
  store i64 %2390, i64* %RCX.i1817, align 8
  %2391 = lshr i64 %2390, 63
  %2392 = add i64 %2390, %2358
  store i64 %2392, i64* %RAX.i1872, align 8
  %2393 = icmp ult i64 %2392, %2358
  %2394 = icmp ult i64 %2392, %2390
  %2395 = or i1 %2393, %2394
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %39, align 1
  %2397 = trunc i64 %2392 to i32
  %2398 = and i32 %2397, 255
  %2399 = tail call i32 @llvm.ctpop.i32(i32 %2398)
  %2400 = trunc i32 %2399 to i8
  %2401 = and i8 %2400, 1
  %2402 = xor i8 %2401, 1
  store i8 %2402, i8* %46, align 1
  %2403 = xor i64 %2390, %2358
  %2404 = xor i64 %2403, %2392
  %2405 = lshr i64 %2404, 4
  %2406 = trunc i64 %2405 to i8
  %2407 = and i8 %2406, 1
  store i8 %2407, i8* %51, align 1
  %2408 = icmp eq i64 %2392, 0
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %54, align 1
  %2410 = lshr i64 %2392, 63
  %2411 = trunc i64 %2410 to i8
  store i8 %2411, i8* %57, align 1
  %2412 = xor i64 %2410, %2376
  %2413 = xor i64 %2410, %2391
  %2414 = add nuw nsw i64 %2412, %2413
  %2415 = icmp eq i64 %2414, 2
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %63, align 1
  %2417 = add i64 %2384, -48
  %2418 = add i64 %2036, 241
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2417 to i32*
  %2420 = load i32, i32* %2419, align 4
  %2421 = sext i32 %2420 to i64
  store i64 %2421, i64* %RCX.i1817, align 8
  %2422 = shl nsw i64 %2421, 3
  %2423 = add i64 %2422, %2392
  %2424 = add i64 %2036, 246
  store i64 %2424, i64* %3, align 8
  %2425 = load i64, i64* %148, align 1
  %2426 = inttoptr i64 %2423 to i64*
  store i64 %2425, i64* %2426, align 8
  %2427 = load i64, i64* %RBP.i, align 8
  %2428 = add i64 %2427, 16
  %2429 = load i64, i64* %3, align 8
  %2430 = add i64 %2429, 4
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2428 to i64*
  %2432 = load i64, i64* %2431, align 8
  store i64 %2432, i64* %RAX.i1872, align 8
  %2433 = add i64 %2427, -100
  %2434 = add i64 %2429, 8
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2433 to i32*
  %2436 = load i32, i32* %2435, align 4
  %2437 = sext i32 %2436 to i64
  %2438 = mul nsw i64 %2437, 520
  store i64 %2438, i64* %RCX.i1817, align 8
  %2439 = lshr i64 %2438, 63
  %2440 = add i64 %2438, %2432
  store i64 %2440, i64* %RAX.i1872, align 8
  %2441 = icmp ult i64 %2440, %2432
  %2442 = icmp ult i64 %2440, %2438
  %2443 = or i1 %2441, %2442
  %2444 = zext i1 %2443 to i8
  store i8 %2444, i8* %39, align 1
  %2445 = trunc i64 %2440 to i32
  %2446 = and i32 %2445, 255
  %2447 = tail call i32 @llvm.ctpop.i32(i32 %2446)
  %2448 = trunc i32 %2447 to i8
  %2449 = and i8 %2448, 1
  %2450 = xor i8 %2449, 1
  store i8 %2450, i8* %46, align 1
  %2451 = xor i64 %2438, %2432
  %2452 = xor i64 %2451, %2440
  %2453 = lshr i64 %2452, 4
  %2454 = trunc i64 %2453 to i8
  %2455 = and i8 %2454, 1
  store i8 %2455, i8* %51, align 1
  %2456 = icmp eq i64 %2440, 0
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %54, align 1
  %2458 = lshr i64 %2440, 63
  %2459 = trunc i64 %2458 to i8
  store i8 %2459, i8* %57, align 1
  %2460 = lshr i64 %2432, 63
  %2461 = xor i64 %2458, %2460
  %2462 = xor i64 %2458, %2439
  %2463 = add nuw nsw i64 %2461, %2462
  %2464 = icmp eq i64 %2463, 2
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %63, align 1
  %2466 = add i64 %2427, -104
  %2467 = add i64 %2429, 22
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = sext i32 %2469 to i64
  store i64 %2470, i64* %RCX.i1817, align 8
  %2471 = shl nsw i64 %2470, 3
  %2472 = add i64 %2471, %2440
  %2473 = add i64 %2429, 27
  store i64 %2473, i64* %3, align 8
  %2474 = inttoptr i64 %2472 to i64*
  %2475 = load i64, i64* %2474, align 8
  store i64 %2475, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %2476 = add i64 %2427, 24
  %2477 = add i64 %2429, 31
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2476 to i64*
  %2479 = load i64, i64* %2478, align 8
  store i64 %2479, i64* %RAX.i1872, align 8
  %2480 = add i64 %2429, 35
  store i64 %2480, i64* %3, align 8
  %2481 = load i32, i32* %2435, align 4
  %2482 = sext i32 %2481 to i64
  %2483 = mul nsw i64 %2482, 33800
  store i64 %2483, i64* %RCX.i1817, align 8
  %2484 = lshr i64 %2483, 63
  %2485 = add i64 %2483, %2479
  store i64 %2485, i64* %RAX.i1872, align 8
  %2486 = icmp ult i64 %2485, %2479
  %2487 = icmp ult i64 %2485, %2483
  %2488 = or i1 %2486, %2487
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %39, align 1
  %2490 = trunc i64 %2485 to i32
  %2491 = and i32 %2490, 255
  %2492 = tail call i32 @llvm.ctpop.i32(i32 %2491)
  %2493 = trunc i32 %2492 to i8
  %2494 = and i8 %2493, 1
  %2495 = xor i8 %2494, 1
  store i8 %2495, i8* %46, align 1
  %2496 = xor i64 %2483, %2479
  %2497 = xor i64 %2496, %2485
  %2498 = lshr i64 %2497, 4
  %2499 = trunc i64 %2498 to i8
  %2500 = and i8 %2499, 1
  store i8 %2500, i8* %51, align 1
  %2501 = icmp eq i64 %2485, 0
  %2502 = zext i1 %2501 to i8
  store i8 %2502, i8* %54, align 1
  %2503 = lshr i64 %2485, 63
  %2504 = trunc i64 %2503 to i8
  store i8 %2504, i8* %57, align 1
  %2505 = lshr i64 %2479, 63
  %2506 = xor i64 %2503, %2505
  %2507 = xor i64 %2503, %2484
  %2508 = add nuw nsw i64 %2506, %2507
  %2509 = icmp eq i64 %2508, 2
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %63, align 1
  %2511 = load i64, i64* %RBP.i, align 8
  %2512 = add i64 %2511, -104
  %2513 = add i64 %2429, 49
  store i64 %2513, i64* %3, align 8
  %2514 = inttoptr i64 %2512 to i32*
  %2515 = load i32, i32* %2514, align 4
  %2516 = sext i32 %2515 to i64
  %2517 = mul nsw i64 %2516, 520
  store i64 %2517, i64* %RCX.i1817, align 8
  %2518 = lshr i64 %2517, 63
  %2519 = add i64 %2517, %2485
  store i64 %2519, i64* %RAX.i1872, align 8
  %2520 = icmp ult i64 %2519, %2485
  %2521 = icmp ult i64 %2519, %2517
  %2522 = or i1 %2520, %2521
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %39, align 1
  %2524 = trunc i64 %2519 to i32
  %2525 = and i32 %2524, 255
  %2526 = tail call i32 @llvm.ctpop.i32(i32 %2525)
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  %2529 = xor i8 %2528, 1
  store i8 %2529, i8* %46, align 1
  %2530 = xor i64 %2517, %2485
  %2531 = xor i64 %2530, %2519
  %2532 = lshr i64 %2531, 4
  %2533 = trunc i64 %2532 to i8
  %2534 = and i8 %2533, 1
  store i8 %2534, i8* %51, align 1
  %2535 = icmp eq i64 %2519, 0
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %54, align 1
  %2537 = lshr i64 %2519, 63
  %2538 = trunc i64 %2537 to i8
  store i8 %2538, i8* %57, align 1
  %2539 = xor i64 %2537, %2503
  %2540 = xor i64 %2537, %2518
  %2541 = add nuw nsw i64 %2539, %2540
  %2542 = icmp eq i64 %2541, 2
  %2543 = zext i1 %2542 to i8
  store i8 %2543, i8* %63, align 1
  %2544 = add i64 %2511, -48
  %2545 = add i64 %2429, 63
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2544 to i32*
  %2547 = load i32, i32* %2546, align 4
  %2548 = sext i32 %2547 to i64
  store i64 %2548, i64* %RCX.i1817, align 8
  %2549 = shl nsw i64 %2548, 3
  %2550 = add i64 %2549, %2519
  %2551 = add i64 %2429, 68
  store i64 %2551, i64* %3, align 8
  %2552 = load i64, i64* %148, align 1
  %2553 = inttoptr i64 %2550 to i64*
  store i64 %2552, i64* %2553, align 8
  %2554 = load i64, i64* %RBP.i, align 8
  %2555 = add i64 %2554, -108
  %2556 = load i64, i64* %3, align 8
  %2557 = add i64 %2556, 7
  store i64 %2557, i64* %3, align 8
  %2558 = inttoptr i64 %2555 to i32*
  store i32 0, i32* %2558, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_402512

block_.L_402512:                                  ; preds = %block_40251e, %block_.L_40228c
  %2559 = phi i64 [ %3738, %block_40251e ], [ %.pre3, %block_.L_40228c ]
  %2560 = load i64, i64* %RBP.i, align 8
  %2561 = add i64 %2560, -108
  %2562 = add i64 %2559, 3
  store i64 %2562, i64* %3, align 8
  %2563 = inttoptr i64 %2561 to i32*
  %2564 = load i32, i32* %2563, align 4
  %2565 = zext i32 %2564 to i64
  store i64 %2565, i64* %RAX.i1872, align 8
  %2566 = add i64 %2560, -48
  %2567 = add i64 %2559, 6
  store i64 %2567, i64* %3, align 8
  %2568 = inttoptr i64 %2566 to i32*
  %2569 = load i32, i32* %2568, align 4
  %2570 = sub i32 %2564, %2569
  %2571 = icmp ult i32 %2564, %2569
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %39, align 1
  %2573 = and i32 %2570, 255
  %2574 = tail call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  store i8 %2577, i8* %46, align 1
  %2578 = xor i32 %2569, %2564
  %2579 = xor i32 %2578, %2570
  %2580 = lshr i32 %2579, 4
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  store i8 %2582, i8* %51, align 1
  %2583 = icmp eq i32 %2570, 0
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %54, align 1
  %2585 = lshr i32 %2570, 31
  %2586 = trunc i32 %2585 to i8
  store i8 %2586, i8* %57, align 1
  %2587 = lshr i32 %2564, 31
  %2588 = lshr i32 %2569, 31
  %2589 = xor i32 %2588, %2587
  %2590 = xor i32 %2585, %2587
  %2591 = add nuw nsw i32 %2590, %2589
  %2592 = icmp eq i32 %2591, 2
  %2593 = zext i1 %2592 to i8
  store i8 %2593, i8* %63, align 1
  %2594 = icmp ne i8 %2586, 0
  %2595 = xor i1 %2594, %2592
  %.v6 = select i1 %2595, i64 12, i64 665
  %2596 = add i64 %2559, %.v6
  %2597 = add i64 %2560, 32
  %2598 = add i64 %2596, 4
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2597 to i64*
  %2600 = load i64, i64* %2599, align 8
  store i64 %2600, i64* %RAX.i1872, align 8
  %2601 = add i64 %2560, -100
  %2602 = add i64 %2596, 8
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i32*
  %2604 = load i32, i32* %2603, align 4
  %2605 = sext i32 %2604 to i64
  %2606 = mul nsw i64 %2605, 33800
  store i64 %2606, i64* %RCX.i1817, align 8
  %2607 = lshr i64 %2606, 63
  %2608 = add i64 %2606, %2600
  store i64 %2608, i64* %RAX.i1872, align 8
  %2609 = icmp ult i64 %2608, %2600
  %2610 = icmp ult i64 %2608, %2606
  %2611 = or i1 %2609, %2610
  %2612 = zext i1 %2611 to i8
  store i8 %2612, i8* %39, align 1
  %2613 = trunc i64 %2608 to i32
  %2614 = and i32 %2613, 255
  %2615 = tail call i32 @llvm.ctpop.i32(i32 %2614)
  %2616 = trunc i32 %2615 to i8
  %2617 = and i8 %2616, 1
  %2618 = xor i8 %2617, 1
  store i8 %2618, i8* %46, align 1
  %2619 = xor i64 %2606, %2600
  %2620 = xor i64 %2619, %2608
  %2621 = lshr i64 %2620, 4
  %2622 = trunc i64 %2621 to i8
  %2623 = and i8 %2622, 1
  store i8 %2623, i8* %51, align 1
  %2624 = icmp eq i64 %2608, 0
  %2625 = zext i1 %2624 to i8
  store i8 %2625, i8* %54, align 1
  %2626 = lshr i64 %2608, 63
  %2627 = trunc i64 %2626 to i8
  store i8 %2627, i8* %57, align 1
  %2628 = lshr i64 %2600, 63
  %2629 = xor i64 %2626, %2628
  %2630 = xor i64 %2626, %2607
  %2631 = add nuw nsw i64 %2629, %2630
  %2632 = icmp eq i64 %2631, 2
  %2633 = zext i1 %2632 to i8
  store i8 %2633, i8* %63, align 1
  %2634 = add i64 %2560, -52
  %2635 = add i64 %2596, 22
  store i64 %2635, i64* %3, align 8
  %2636 = inttoptr i64 %2634 to i32*
  %2637 = load i32, i32* %2636, align 4
  %2638 = sext i32 %2637 to i64
  %2639 = mul nsw i64 %2638, 520
  store i64 %2639, i64* %RCX.i1817, align 8
  %2640 = lshr i64 %2639, 63
  %2641 = add i64 %2596, 32
  store i64 %2641, i64* %3, align 8
  %2642 = add i64 %2639, %2608
  store i64 %2642, i64* %RAX.i1872, align 8
  %2643 = icmp ult i64 %2642, %2608
  %2644 = icmp ult i64 %2642, %2639
  %2645 = or i1 %2643, %2644
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %39, align 1
  %2647 = trunc i64 %2642 to i32
  %2648 = and i32 %2647, 255
  %2649 = tail call i32 @llvm.ctpop.i32(i32 %2648)
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = xor i8 %2651, 1
  store i8 %2652, i8* %46, align 1
  %2653 = xor i64 %2639, %2608
  %2654 = xor i64 %2653, %2642
  %2655 = lshr i64 %2654, 4
  %2656 = trunc i64 %2655 to i8
  %2657 = and i8 %2656, 1
  store i8 %2657, i8* %51, align 1
  %2658 = icmp eq i64 %2642, 0
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %54, align 1
  %2660 = lshr i64 %2642, 63
  %2661 = trunc i64 %2660 to i8
  store i8 %2661, i8* %57, align 1
  %2662 = xor i64 %2660, %2626
  %2663 = xor i64 %2660, %2640
  %2664 = add nuw nsw i64 %2662, %2663
  %2665 = icmp eq i64 %2664, 2
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %63, align 1
  %2667 = load i64, i64* %RBP.i, align 8
  br i1 %2595, label %block_40251e, label %block_.L_4027ab

block_40251e:                                     ; preds = %block_.L_402512
  %2668 = add i64 %2667, -108
  %2669 = add i64 %2596, 36
  store i64 %2669, i64* %3, align 8
  %2670 = inttoptr i64 %2668 to i32*
  %2671 = load i32, i32* %2670, align 4
  %2672 = sext i32 %2671 to i64
  store i64 %2672, i64* %RCX.i1817, align 8
  %2673 = shl nsw i64 %2672, 3
  %2674 = add i64 %2673, %2642
  %2675 = add i64 %2596, 41
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to double*
  %2677 = load double, double* %2676, align 8
  store double %2677, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %2678 = add i64 %2667, -80
  %2679 = add i64 %2596, 45
  store i64 %2679, i64* %3, align 8
  %2680 = inttoptr i64 %2678 to i64*
  %2681 = load i64, i64* %2680, align 8
  store i64 %2681, i64* %RAX.i1872, align 8
  %2682 = add i64 %2667, -100
  %2683 = add i64 %2596, 49
  store i64 %2683, i64* %3, align 8
  %2684 = inttoptr i64 %2682 to i32*
  %2685 = load i32, i32* %2684, align 4
  %2686 = sext i32 %2685 to i64
  %2687 = mul nsw i64 %2686, 520
  store i64 %2687, i64* %RCX.i1817, align 8
  %2688 = lshr i64 %2687, 63
  %2689 = add i64 %2687, %2681
  store i64 %2689, i64* %RAX.i1872, align 8
  %2690 = icmp ult i64 %2689, %2681
  %2691 = icmp ult i64 %2689, %2687
  %2692 = or i1 %2690, %2691
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %39, align 1
  %2694 = trunc i64 %2689 to i32
  %2695 = and i32 %2694, 255
  %2696 = tail call i32 @llvm.ctpop.i32(i32 %2695)
  %2697 = trunc i32 %2696 to i8
  %2698 = and i8 %2697, 1
  %2699 = xor i8 %2698, 1
  store i8 %2699, i8* %46, align 1
  %2700 = xor i64 %2687, %2681
  %2701 = xor i64 %2700, %2689
  %2702 = lshr i64 %2701, 4
  %2703 = trunc i64 %2702 to i8
  %2704 = and i8 %2703, 1
  store i8 %2704, i8* %51, align 1
  %2705 = icmp eq i64 %2689, 0
  %2706 = zext i1 %2705 to i8
  store i8 %2706, i8* %54, align 1
  %2707 = lshr i64 %2689, 63
  %2708 = trunc i64 %2707 to i8
  store i8 %2708, i8* %57, align 1
  %2709 = lshr i64 %2681, 63
  %2710 = xor i64 %2707, %2709
  %2711 = xor i64 %2707, %2688
  %2712 = add nuw nsw i64 %2710, %2711
  %2713 = icmp eq i64 %2712, 2
  %2714 = zext i1 %2713 to i8
  store i8 %2714, i8* %63, align 1
  %2715 = add i64 %2596, 63
  store i64 %2715, i64* %3, align 8
  %2716 = load i32, i32* %2670, align 4
  %2717 = sext i32 %2716 to i64
  store i64 %2717, i64* %RCX.i1817, align 8
  %2718 = shl nsw i64 %2717, 3
  %2719 = add i64 %2718, %2689
  %2720 = add i64 %2596, 68
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to double*
  %2722 = load double, double* %2721, align 8
  %2723 = fsub double %2677, %2722
  store double %2723, double* %230, align 1
  store i64 0, i64* %231, align 1
  %2724 = load i64, i64* %RBP.i, align 8
  %2725 = add i64 %2724, 40
  %2726 = add i64 %2596, 72
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i64*
  %2728 = load i64, i64* %2727, align 8
  store i64 %2728, i64* %RAX.i1872, align 8
  %2729 = add i64 %2724, -100
  %2730 = add i64 %2596, 76
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2729 to i32*
  %2732 = load i32, i32* %2731, align 4
  %2733 = sext i32 %2732 to i64
  %2734 = mul nsw i64 %2733, 33800
  store i64 %2734, i64* %RCX.i1817, align 8
  %2735 = lshr i64 %2734, 63
  %2736 = add i64 %2734, %2728
  store i64 %2736, i64* %RAX.i1872, align 8
  %2737 = icmp ult i64 %2736, %2728
  %2738 = icmp ult i64 %2736, %2734
  %2739 = or i1 %2737, %2738
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %39, align 1
  %2741 = trunc i64 %2736 to i32
  %2742 = and i32 %2741, 255
  %2743 = tail call i32 @llvm.ctpop.i32(i32 %2742)
  %2744 = trunc i32 %2743 to i8
  %2745 = and i8 %2744, 1
  %2746 = xor i8 %2745, 1
  store i8 %2746, i8* %46, align 1
  %2747 = xor i64 %2734, %2728
  %2748 = xor i64 %2747, %2736
  %2749 = lshr i64 %2748, 4
  %2750 = trunc i64 %2749 to i8
  %2751 = and i8 %2750, 1
  store i8 %2751, i8* %51, align 1
  %2752 = icmp eq i64 %2736, 0
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %54, align 1
  %2754 = lshr i64 %2736, 63
  %2755 = trunc i64 %2754 to i8
  store i8 %2755, i8* %57, align 1
  %2756 = lshr i64 %2728, 63
  %2757 = xor i64 %2754, %2756
  %2758 = xor i64 %2754, %2735
  %2759 = add nuw nsw i64 %2757, %2758
  %2760 = icmp eq i64 %2759, 2
  %2761 = zext i1 %2760 to i8
  store i8 %2761, i8* %63, align 1
  %2762 = add i64 %2724, -52
  %2763 = add i64 %2596, 90
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i32*
  %2765 = load i32, i32* %2764, align 4
  %2766 = sext i32 %2765 to i64
  %2767 = mul nsw i64 %2766, 520
  store i64 %2767, i64* %RCX.i1817, align 8
  %2768 = lshr i64 %2767, 63
  %2769 = add i64 %2767, %2736
  store i64 %2769, i64* %RAX.i1872, align 8
  %2770 = icmp ult i64 %2769, %2736
  %2771 = icmp ult i64 %2769, %2767
  %2772 = or i1 %2770, %2771
  %2773 = zext i1 %2772 to i8
  store i8 %2773, i8* %39, align 1
  %2774 = trunc i64 %2769 to i32
  %2775 = and i32 %2774, 255
  %2776 = tail call i32 @llvm.ctpop.i32(i32 %2775)
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  %2779 = xor i8 %2778, 1
  store i8 %2779, i8* %46, align 1
  %2780 = xor i64 %2767, %2736
  %2781 = xor i64 %2780, %2769
  %2782 = lshr i64 %2781, 4
  %2783 = trunc i64 %2782 to i8
  %2784 = and i8 %2783, 1
  store i8 %2784, i8* %51, align 1
  %2785 = icmp eq i64 %2769, 0
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %54, align 1
  %2787 = lshr i64 %2769, 63
  %2788 = trunc i64 %2787 to i8
  store i8 %2788, i8* %57, align 1
  %2789 = xor i64 %2787, %2754
  %2790 = xor i64 %2787, %2768
  %2791 = add nuw nsw i64 %2789, %2790
  %2792 = icmp eq i64 %2791, 2
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %63, align 1
  %2794 = load i64, i64* %RBP.i, align 8
  %2795 = add i64 %2794, -108
  %2796 = add i64 %2596, 103
  store i64 %2796, i64* %3, align 8
  %2797 = inttoptr i64 %2795 to i32*
  %2798 = load i32, i32* %2797, align 4
  %2799 = add i32 %2798, 1
  %2800 = zext i32 %2799 to i64
  store i64 %2800, i64* %RDX.i1724, align 8
  %2801 = icmp eq i32 %2798, -1
  %2802 = icmp eq i32 %2799, 0
  %2803 = or i1 %2801, %2802
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %39, align 1
  %2805 = and i32 %2799, 255
  %2806 = tail call i32 @llvm.ctpop.i32(i32 %2805)
  %2807 = trunc i32 %2806 to i8
  %2808 = and i8 %2807, 1
  %2809 = xor i8 %2808, 1
  store i8 %2809, i8* %46, align 1
  %2810 = xor i32 %2798, %2799
  %2811 = lshr i32 %2810, 4
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  store i8 %2813, i8* %51, align 1
  %2814 = zext i1 %2802 to i8
  store i8 %2814, i8* %54, align 1
  %2815 = lshr i32 %2799, 31
  %2816 = trunc i32 %2815 to i8
  store i8 %2816, i8* %57, align 1
  %2817 = lshr i32 %2798, 31
  %2818 = xor i32 %2815, %2817
  %2819 = add nuw nsw i32 %2818, %2815
  %2820 = icmp eq i32 %2819, 2
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %63, align 1
  %2822 = sext i32 %2799 to i64
  store i64 %2822, i64* %RCX.i1817, align 8
  %2823 = shl nsw i64 %2822, 3
  %2824 = add i64 %2823, %2769
  %2825 = add i64 %2596, 114
  store i64 %2825, i64* %3, align 8
  %2826 = load double, double* %230, align 1
  %2827 = inttoptr i64 %2824 to double*
  %2828 = load double, double* %2827, align 8
  %2829 = fadd double %2826, %2828
  store double %2829, double* %230, align 1
  %2830 = add i64 %2794, 40
  %2831 = add i64 %2596, 118
  store i64 %2831, i64* %3, align 8
  %2832 = inttoptr i64 %2830 to i64*
  %2833 = load i64, i64* %2832, align 8
  store i64 %2833, i64* %RAX.i1872, align 8
  %2834 = add i64 %2794, -100
  %2835 = add i64 %2596, 122
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i32*
  %2837 = load i32, i32* %2836, align 4
  %2838 = sext i32 %2837 to i64
  %2839 = mul nsw i64 %2838, 33800
  store i64 %2839, i64* %RCX.i1817, align 8
  %2840 = lshr i64 %2839, 63
  %2841 = add i64 %2839, %2833
  store i64 %2841, i64* %RAX.i1872, align 8
  %2842 = icmp ult i64 %2841, %2833
  %2843 = icmp ult i64 %2841, %2839
  %2844 = or i1 %2842, %2843
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %39, align 1
  %2846 = trunc i64 %2841 to i32
  %2847 = and i32 %2846, 255
  %2848 = tail call i32 @llvm.ctpop.i32(i32 %2847)
  %2849 = trunc i32 %2848 to i8
  %2850 = and i8 %2849, 1
  %2851 = xor i8 %2850, 1
  store i8 %2851, i8* %46, align 1
  %2852 = xor i64 %2839, %2833
  %2853 = xor i64 %2852, %2841
  %2854 = lshr i64 %2853, 4
  %2855 = trunc i64 %2854 to i8
  %2856 = and i8 %2855, 1
  store i8 %2856, i8* %51, align 1
  %2857 = icmp eq i64 %2841, 0
  %2858 = zext i1 %2857 to i8
  store i8 %2858, i8* %54, align 1
  %2859 = lshr i64 %2841, 63
  %2860 = trunc i64 %2859 to i8
  store i8 %2860, i8* %57, align 1
  %2861 = lshr i64 %2833, 63
  %2862 = xor i64 %2859, %2861
  %2863 = xor i64 %2859, %2840
  %2864 = add nuw nsw i64 %2862, %2863
  %2865 = icmp eq i64 %2864, 2
  %2866 = zext i1 %2865 to i8
  store i8 %2866, i8* %63, align 1
  %2867 = load i64, i64* %RBP.i, align 8
  %2868 = add i64 %2867, -52
  %2869 = add i64 %2596, 136
  store i64 %2869, i64* %3, align 8
  %2870 = inttoptr i64 %2868 to i32*
  %2871 = load i32, i32* %2870, align 4
  %2872 = sext i32 %2871 to i64
  %2873 = mul nsw i64 %2872, 520
  store i64 %2873, i64* %RCX.i1817, align 8
  %2874 = lshr i64 %2873, 63
  %2875 = add i64 %2873, %2841
  store i64 %2875, i64* %RAX.i1872, align 8
  %2876 = icmp ult i64 %2875, %2841
  %2877 = icmp ult i64 %2875, %2873
  %2878 = or i1 %2876, %2877
  %2879 = zext i1 %2878 to i8
  store i8 %2879, i8* %39, align 1
  %2880 = trunc i64 %2875 to i32
  %2881 = and i32 %2880, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %46, align 1
  %2886 = xor i64 %2873, %2841
  %2887 = xor i64 %2886, %2875
  %2888 = lshr i64 %2887, 4
  %2889 = trunc i64 %2888 to i8
  %2890 = and i8 %2889, 1
  store i8 %2890, i8* %51, align 1
  %2891 = icmp eq i64 %2875, 0
  %2892 = zext i1 %2891 to i8
  store i8 %2892, i8* %54, align 1
  %2893 = lshr i64 %2875, 63
  %2894 = trunc i64 %2893 to i8
  store i8 %2894, i8* %57, align 1
  %2895 = xor i64 %2893, %2859
  %2896 = xor i64 %2893, %2874
  %2897 = add nuw nsw i64 %2895, %2896
  %2898 = icmp eq i64 %2897, 2
  %2899 = zext i1 %2898 to i8
  store i8 %2899, i8* %63, align 1
  %2900 = add i64 %2867, -108
  %2901 = add i64 %2596, 150
  store i64 %2901, i64* %3, align 8
  %2902 = inttoptr i64 %2900 to i32*
  %2903 = load i32, i32* %2902, align 4
  %2904 = sext i32 %2903 to i64
  store i64 %2904, i64* %RCX.i1817, align 8
  %2905 = shl nsw i64 %2904, 3
  %2906 = add i64 %2905, %2875
  %2907 = add i64 %2596, 155
  store i64 %2907, i64* %3, align 8
  %2908 = load double, double* %230, align 1
  %2909 = inttoptr i64 %2906 to double*
  %2910 = load double, double* %2909, align 8
  %2911 = fsub double %2908, %2910
  store double %2911, double* %230, align 1
  %2912 = add i64 %2867, -96
  %2913 = add i64 %2596, 159
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i64*
  %2915 = load i64, i64* %2914, align 8
  store i64 %2915, i64* %RAX.i1872, align 8
  %2916 = add i64 %2867, -100
  %2917 = add i64 %2596, 163
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2916 to i32*
  %2919 = load i32, i32* %2918, align 4
  %2920 = sext i32 %2919 to i64
  %2921 = mul nsw i64 %2920, 520
  store i64 %2921, i64* %RCX.i1817, align 8
  %2922 = lshr i64 %2921, 63
  %2923 = add i64 %2921, %2915
  store i64 %2923, i64* %RAX.i1872, align 8
  %2924 = icmp ult i64 %2923, %2915
  %2925 = icmp ult i64 %2923, %2921
  %2926 = or i1 %2924, %2925
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %39, align 1
  %2928 = trunc i64 %2923 to i32
  %2929 = and i32 %2928, 255
  %2930 = tail call i32 @llvm.ctpop.i32(i32 %2929)
  %2931 = trunc i32 %2930 to i8
  %2932 = and i8 %2931, 1
  %2933 = xor i8 %2932, 1
  store i8 %2933, i8* %46, align 1
  %2934 = xor i64 %2921, %2915
  %2935 = xor i64 %2934, %2923
  %2936 = lshr i64 %2935, 4
  %2937 = trunc i64 %2936 to i8
  %2938 = and i8 %2937, 1
  store i8 %2938, i8* %51, align 1
  %2939 = icmp eq i64 %2923, 0
  %2940 = zext i1 %2939 to i8
  store i8 %2940, i8* %54, align 1
  %2941 = lshr i64 %2923, 63
  %2942 = trunc i64 %2941 to i8
  store i8 %2942, i8* %57, align 1
  %2943 = lshr i64 %2915, 63
  %2944 = xor i64 %2941, %2943
  %2945 = xor i64 %2941, %2922
  %2946 = add nuw nsw i64 %2944, %2945
  %2947 = icmp eq i64 %2946, 2
  %2948 = zext i1 %2947 to i8
  store i8 %2948, i8* %63, align 1
  %2949 = load i64, i64* %RBP.i, align 8
  %2950 = add i64 %2949, -104
  %2951 = add i64 %2596, 177
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2950 to i32*
  %2953 = load i32, i32* %2952, align 4
  %2954 = sext i32 %2953 to i64
  store i64 %2954, i64* %RCX.i1817, align 8
  %2955 = shl nsw i64 %2954, 3
  %2956 = add i64 %2955, %2923
  %2957 = add i64 %2596, 182
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2956 to double*
  store double %2911, double* %2958, align 8
  %2959 = load i64, i64* %RBP.i, align 8
  %2960 = add i64 %2959, 88
  %2961 = load i64, i64* %3, align 8
  %2962 = add i64 %2961, 4
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2960 to i64*
  %2964 = load i64, i64* %2963, align 8
  store i64 %2964, i64* %RAX.i1872, align 8
  %2965 = add i64 %2959, -52
  %2966 = add i64 %2961, 8
  store i64 %2966, i64* %3, align 8
  %2967 = inttoptr i64 %2965 to i32*
  %2968 = load i32, i32* %2967, align 4
  %2969 = sext i32 %2968 to i64
  store i64 %2969, i64* %RCX.i1817, align 8
  %2970 = shl nsw i64 %2969, 3
  %2971 = add i64 %2970, %2964
  %2972 = add i64 %2961, 13
  store i64 %2972, i64* %3, align 8
  %2973 = inttoptr i64 %2971 to double*
  %2974 = load double, double* %2973, align 8
  store double %2974, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %2975 = add i64 %2959, 96
  %2976 = add i64 %2961, 17
  store i64 %2976, i64* %3, align 8
  %2977 = inttoptr i64 %2975 to i64*
  %2978 = load i64, i64* %2977, align 8
  store i64 %2978, i64* %RAX.i1872, align 8
  %2979 = add i64 %2959, -104
  %2980 = add i64 %2961, 21
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2979 to i32*
  %2982 = load i32, i32* %2981, align 4
  %2983 = sext i32 %2982 to i64
  store i64 %2983, i64* %RCX.i1817, align 8
  %2984 = shl nsw i64 %2983, 3
  %2985 = add i64 %2984, %2978
  %2986 = add i64 %2961, 26
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to double*
  %2988 = load double, double* %2987, align 8
  %2989 = fdiv double %2974, %2988
  store double %2989, double* %230, align 1
  store i64 0, i64* %231, align 1
  %2990 = add i64 %2959, 24
  %2991 = add i64 %2961, 30
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2990 to i64*
  %2993 = load i64, i64* %2992, align 8
  store i64 %2993, i64* %RAX.i1872, align 8
  %2994 = add i64 %2959, -100
  %2995 = add i64 %2961, 34
  store i64 %2995, i64* %3, align 8
  %2996 = inttoptr i64 %2994 to i32*
  %2997 = load i32, i32* %2996, align 4
  %2998 = sext i32 %2997 to i64
  %2999 = mul nsw i64 %2998, 33800
  store i64 %2999, i64* %RCX.i1817, align 8
  %3000 = lshr i64 %2999, 63
  %3001 = add i64 %2999, %2993
  store i64 %3001, i64* %RAX.i1872, align 8
  %3002 = icmp ult i64 %3001, %2993
  %3003 = icmp ult i64 %3001, %2999
  %3004 = or i1 %3002, %3003
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %39, align 1
  %3006 = trunc i64 %3001 to i32
  %3007 = and i32 %3006, 255
  %3008 = tail call i32 @llvm.ctpop.i32(i32 %3007)
  %3009 = trunc i32 %3008 to i8
  %3010 = and i8 %3009, 1
  %3011 = xor i8 %3010, 1
  store i8 %3011, i8* %46, align 1
  %3012 = xor i64 %2999, %2993
  %3013 = xor i64 %3012, %3001
  %3014 = lshr i64 %3013, 4
  %3015 = trunc i64 %3014 to i8
  %3016 = and i8 %3015, 1
  store i8 %3016, i8* %51, align 1
  %3017 = icmp eq i64 %3001, 0
  %3018 = zext i1 %3017 to i8
  store i8 %3018, i8* %54, align 1
  %3019 = lshr i64 %3001, 63
  %3020 = trunc i64 %3019 to i8
  store i8 %3020, i8* %57, align 1
  %3021 = lshr i64 %2993, 63
  %3022 = xor i64 %3019, %3021
  %3023 = xor i64 %3019, %3000
  %3024 = add nuw nsw i64 %3022, %3023
  %3025 = icmp eq i64 %3024, 2
  %3026 = zext i1 %3025 to i8
  store i8 %3026, i8* %63, align 1
  %3027 = load i64, i64* %RBP.i, align 8
  %3028 = add i64 %3027, -104
  %3029 = add i64 %2961, 48
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i32*
  %3031 = load i32, i32* %3030, align 4
  %3032 = sext i32 %3031 to i64
  %3033 = mul nsw i64 %3032, 520
  store i64 %3033, i64* %RCX.i1817, align 8
  %3034 = lshr i64 %3033, 63
  %3035 = add i64 %3033, %3001
  store i64 %3035, i64* %RAX.i1872, align 8
  %3036 = icmp ult i64 %3035, %3001
  %3037 = icmp ult i64 %3035, %3033
  %3038 = or i1 %3036, %3037
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %39, align 1
  %3040 = trunc i64 %3035 to i32
  %3041 = and i32 %3040, 255
  %3042 = tail call i32 @llvm.ctpop.i32(i32 %3041)
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = xor i8 %3044, 1
  store i8 %3045, i8* %46, align 1
  %3046 = xor i64 %3033, %3001
  %3047 = xor i64 %3046, %3035
  %3048 = lshr i64 %3047, 4
  %3049 = trunc i64 %3048 to i8
  %3050 = and i8 %3049, 1
  store i8 %3050, i8* %51, align 1
  %3051 = icmp eq i64 %3035, 0
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %54, align 1
  %3053 = lshr i64 %3035, 63
  %3054 = trunc i64 %3053 to i8
  store i8 %3054, i8* %57, align 1
  %3055 = xor i64 %3053, %3019
  %3056 = xor i64 %3053, %3034
  %3057 = add nuw nsw i64 %3055, %3056
  %3058 = icmp eq i64 %3057, 2
  %3059 = zext i1 %3058 to i8
  store i8 %3059, i8* %63, align 1
  %3060 = add i64 %3027, -108
  %3061 = add i64 %2961, 62
  store i64 %3061, i64* %3, align 8
  %3062 = inttoptr i64 %3060 to i32*
  %3063 = load i32, i32* %3062, align 4
  %3064 = sext i32 %3063 to i64
  store i64 %3064, i64* %RCX.i1817, align 8
  %3065 = shl nsw i64 %3064, 3
  %3066 = add i64 %3065, %3035
  %3067 = add i64 %2961, 67
  store i64 %3067, i64* %3, align 8
  %3068 = load double, double* %230, align 1
  %3069 = inttoptr i64 %3066 to double*
  %3070 = load double, double* %3069, align 8
  %3071 = fmul double %3068, %3070
  store double %3071, double* %230, align 1
  %3072 = add i64 %3027, -72
  %3073 = add i64 %2961, 72
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3072 to double*
  %3075 = load double, double* %3074, align 8
  store double %3075, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %3076 = add i64 %3027, 96
  %3077 = add i64 %2961, 76
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i64*
  %3079 = load i64, i64* %3078, align 8
  store i64 %3079, i64* %RAX.i1872, align 8
  %3080 = add i64 %2961, 80
  store i64 %3080, i64* %3, align 8
  %3081 = load i32, i32* %3030, align 4
  %3082 = sext i32 %3081 to i64
  store i64 %3082, i64* %RCX.i1817, align 8
  %3083 = shl nsw i64 %3082, 3
  %3084 = add i64 %3083, %3079
  %3085 = add i64 %2961, 85
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3084 to double*
  %3087 = load double, double* %3086, align 8
  %3088 = fdiv double %3075, %3087
  store double %3088, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3089 = load i64, i64* %RBP.i, align 8
  %3090 = add i64 %3089, -96
  %3091 = add i64 %2961, 89
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i64*
  %3093 = load i64, i64* %3092, align 8
  store i64 %3093, i64* %RAX.i1872, align 8
  %3094 = add i64 %3089, -100
  %3095 = add i64 %2961, 93
  store i64 %3095, i64* %3, align 8
  %3096 = inttoptr i64 %3094 to i32*
  %3097 = load i32, i32* %3096, align 4
  %3098 = sext i32 %3097 to i64
  %3099 = mul nsw i64 %3098, 520
  store i64 %3099, i64* %RCX.i1817, align 8
  %3100 = lshr i64 %3099, 63
  %3101 = add i64 %3099, %3093
  store i64 %3101, i64* %RAX.i1872, align 8
  %3102 = icmp ult i64 %3101, %3093
  %3103 = icmp ult i64 %3101, %3099
  %3104 = or i1 %3102, %3103
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %39, align 1
  %3106 = trunc i64 %3101 to i32
  %3107 = and i32 %3106, 255
  %3108 = tail call i32 @llvm.ctpop.i32(i32 %3107)
  %3109 = trunc i32 %3108 to i8
  %3110 = and i8 %3109, 1
  %3111 = xor i8 %3110, 1
  store i8 %3111, i8* %46, align 1
  %3112 = xor i64 %3099, %3093
  %3113 = xor i64 %3112, %3101
  %3114 = lshr i64 %3113, 4
  %3115 = trunc i64 %3114 to i8
  %3116 = and i8 %3115, 1
  store i8 %3116, i8* %51, align 1
  %3117 = icmp eq i64 %3101, 0
  %3118 = zext i1 %3117 to i8
  store i8 %3118, i8* %54, align 1
  %3119 = lshr i64 %3101, 63
  %3120 = trunc i64 %3119 to i8
  store i8 %3120, i8* %57, align 1
  %3121 = lshr i64 %3093, 63
  %3122 = xor i64 %3119, %3121
  %3123 = xor i64 %3119, %3100
  %3124 = add nuw nsw i64 %3122, %3123
  %3125 = icmp eq i64 %3124, 2
  %3126 = zext i1 %3125 to i8
  store i8 %3126, i8* %63, align 1
  %3127 = add i64 %3089, -104
  %3128 = add i64 %2961, 107
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = sext i32 %3130 to i64
  store i64 %3131, i64* %RCX.i1817, align 8
  %3132 = shl nsw i64 %3131, 3
  %3133 = add i64 %3132, %3101
  %3134 = add i64 %2961, 112
  store i64 %3134, i64* %3, align 8
  %3135 = inttoptr i64 %3133 to double*
  %3136 = load double, double* %3135, align 8
  %3137 = fmul double %3088, %3136
  store double %3137, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3138 = load double, double* %230, align 1
  %3139 = fsub double %3138, %3137
  store double %3139, double* %230, align 1
  %3140 = add i64 %3089, 16
  %3141 = add i64 %2961, 120
  store i64 %3141, i64* %3, align 8
  %3142 = inttoptr i64 %3140 to i64*
  %3143 = load i64, i64* %3142, align 8
  store i64 %3143, i64* %RAX.i1872, align 8
  %3144 = load i64, i64* %RBP.i, align 8
  %3145 = add i64 %3144, -100
  %3146 = add i64 %2961, 124
  store i64 %3146, i64* %3, align 8
  %3147 = inttoptr i64 %3145 to i32*
  %3148 = load i32, i32* %3147, align 4
  %3149 = sext i32 %3148 to i64
  %3150 = mul nsw i64 %3149, 520
  store i64 %3150, i64* %RCX.i1817, align 8
  %3151 = lshr i64 %3150, 63
  %3152 = add i64 %3150, %3143
  store i64 %3152, i64* %RAX.i1872, align 8
  %3153 = icmp ult i64 %3152, %3143
  %3154 = icmp ult i64 %3152, %3150
  %3155 = or i1 %3153, %3154
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %39, align 1
  %3157 = trunc i64 %3152 to i32
  %3158 = and i32 %3157, 255
  %3159 = tail call i32 @llvm.ctpop.i32(i32 %3158)
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  %3162 = xor i8 %3161, 1
  store i8 %3162, i8* %46, align 1
  %3163 = xor i64 %3150, %3143
  %3164 = xor i64 %3163, %3152
  %3165 = lshr i64 %3164, 4
  %3166 = trunc i64 %3165 to i8
  %3167 = and i8 %3166, 1
  store i8 %3167, i8* %51, align 1
  %3168 = icmp eq i64 %3152, 0
  %3169 = zext i1 %3168 to i8
  store i8 %3169, i8* %54, align 1
  %3170 = lshr i64 %3152, 63
  %3171 = trunc i64 %3170 to i8
  store i8 %3171, i8* %57, align 1
  %3172 = lshr i64 %3143, 63
  %3173 = xor i64 %3170, %3172
  %3174 = xor i64 %3170, %3151
  %3175 = add nuw nsw i64 %3173, %3174
  %3176 = icmp eq i64 %3175, 2
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %63, align 1
  %3178 = add i64 %3144, -104
  %3179 = add i64 %2961, 138
  store i64 %3179, i64* %3, align 8
  %3180 = inttoptr i64 %3178 to i32*
  %3181 = load i32, i32* %3180, align 4
  %3182 = sext i32 %3181 to i64
  store i64 %3182, i64* %RCX.i1817, align 8
  %3183 = shl nsw i64 %3182, 3
  %3184 = add i64 %3183, %3152
  %3185 = add i64 %2961, 143
  store i64 %3185, i64* %3, align 8
  %3186 = inttoptr i64 %3184 to double*
  store double %3139, double* %3186, align 8
  %3187 = load i64, i64* %RBP.i, align 8
  %3188 = add i64 %3187, 72
  %3189 = load i64, i64* %3, align 8
  %3190 = add i64 %3189, 4
  store i64 %3190, i64* %3, align 8
  %3191 = inttoptr i64 %3188 to i64*
  %3192 = load i64, i64* %3191, align 8
  store i64 %3192, i64* %RAX.i1872, align 8
  %3193 = add i64 %3187, -108
  %3194 = add i64 %3189, 8
  store i64 %3194, i64* %3, align 8
  %3195 = inttoptr i64 %3193 to i32*
  %3196 = load i32, i32* %3195, align 4
  %3197 = sext i32 %3196 to i64
  store i64 %3197, i64* %RCX.i1817, align 8
  %3198 = shl nsw i64 %3197, 3
  %3199 = add i64 %3198, %3192
  %3200 = add i64 %3189, 13
  store i64 %3200, i64* %3, align 8
  %3201 = inttoptr i64 %3199 to double*
  %3202 = load double, double* %3201, align 8
  store double %3202, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %3203 = add i64 %3187, 80
  %3204 = add i64 %3189, 17
  store i64 %3204, i64* %3, align 8
  %3205 = inttoptr i64 %3203 to i64*
  %3206 = load i64, i64* %3205, align 8
  store i64 %3206, i64* %RAX.i1872, align 8
  %3207 = add i64 %3189, 21
  store i64 %3207, i64* %3, align 8
  %3208 = load i32, i32* %3195, align 4
  %3209 = sext i32 %3208 to i64
  store i64 %3209, i64* %RCX.i1817, align 8
  %3210 = shl nsw i64 %3209, 3
  %3211 = add i64 %3210, %3206
  %3212 = add i64 %3189, 26
  store i64 %3212, i64* %3, align 8
  %3213 = inttoptr i64 %3211 to double*
  %3214 = load double, double* %3213, align 8
  %3215 = fdiv double %3202, %3214
  store double %3215, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3216 = add i64 %3187, 48
  %3217 = add i64 %3189, 30
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i64*
  %3219 = load i64, i64* %3218, align 8
  store i64 %3219, i64* %RAX.i1872, align 8
  %3220 = add i64 %3187, -100
  %3221 = add i64 %3189, 34
  store i64 %3221, i64* %3, align 8
  %3222 = inttoptr i64 %3220 to i32*
  %3223 = load i32, i32* %3222, align 4
  %3224 = sext i32 %3223 to i64
  %3225 = mul nsw i64 %3224, 33800
  store i64 %3225, i64* %RCX.i1817, align 8
  %3226 = lshr i64 %3225, 63
  %3227 = add i64 %3225, %3219
  store i64 %3227, i64* %RAX.i1872, align 8
  %3228 = icmp ult i64 %3227, %3219
  %3229 = icmp ult i64 %3227, %3225
  %3230 = or i1 %3228, %3229
  %3231 = zext i1 %3230 to i8
  store i8 %3231, i8* %39, align 1
  %3232 = trunc i64 %3227 to i32
  %3233 = and i32 %3232, 255
  %3234 = tail call i32 @llvm.ctpop.i32(i32 %3233)
  %3235 = trunc i32 %3234 to i8
  %3236 = and i8 %3235, 1
  %3237 = xor i8 %3236, 1
  store i8 %3237, i8* %46, align 1
  %3238 = xor i64 %3225, %3219
  %3239 = xor i64 %3238, %3227
  %3240 = lshr i64 %3239, 4
  %3241 = trunc i64 %3240 to i8
  %3242 = and i8 %3241, 1
  store i8 %3242, i8* %51, align 1
  %3243 = icmp eq i64 %3227, 0
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %54, align 1
  %3245 = lshr i64 %3227, 63
  %3246 = trunc i64 %3245 to i8
  store i8 %3246, i8* %57, align 1
  %3247 = lshr i64 %3219, 63
  %3248 = xor i64 %3245, %3247
  %3249 = xor i64 %3245, %3226
  %3250 = add nuw nsw i64 %3248, %3249
  %3251 = icmp eq i64 %3250, 2
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %63, align 1
  %3253 = load i64, i64* %RBP.i, align 8
  %3254 = add i64 %3253, -52
  %3255 = add i64 %3189, 48
  store i64 %3255, i64* %3, align 8
  %3256 = inttoptr i64 %3254 to i32*
  %3257 = load i32, i32* %3256, align 4
  %3258 = sext i32 %3257 to i64
  %3259 = mul nsw i64 %3258, 520
  store i64 %3259, i64* %RCX.i1817, align 8
  %3260 = lshr i64 %3259, 63
  %3261 = add i64 %3259, %3227
  store i64 %3261, i64* %RAX.i1872, align 8
  %3262 = icmp ult i64 %3261, %3227
  %3263 = icmp ult i64 %3261, %3259
  %3264 = or i1 %3262, %3263
  %3265 = zext i1 %3264 to i8
  store i8 %3265, i8* %39, align 1
  %3266 = trunc i64 %3261 to i32
  %3267 = and i32 %3266, 255
  %3268 = tail call i32 @llvm.ctpop.i32(i32 %3267)
  %3269 = trunc i32 %3268 to i8
  %3270 = and i8 %3269, 1
  %3271 = xor i8 %3270, 1
  store i8 %3271, i8* %46, align 1
  %3272 = xor i64 %3259, %3227
  %3273 = xor i64 %3272, %3261
  %3274 = lshr i64 %3273, 4
  %3275 = trunc i64 %3274 to i8
  %3276 = and i8 %3275, 1
  store i8 %3276, i8* %51, align 1
  %3277 = icmp eq i64 %3261, 0
  %3278 = zext i1 %3277 to i8
  store i8 %3278, i8* %54, align 1
  %3279 = lshr i64 %3261, 63
  %3280 = trunc i64 %3279 to i8
  store i8 %3280, i8* %57, align 1
  %3281 = xor i64 %3279, %3245
  %3282 = xor i64 %3279, %3260
  %3283 = add nuw nsw i64 %3281, %3282
  %3284 = icmp eq i64 %3283, 2
  %3285 = zext i1 %3284 to i8
  store i8 %3285, i8* %63, align 1
  %3286 = add i64 %3253, -108
  %3287 = add i64 %3189, 62
  store i64 %3287, i64* %3, align 8
  %3288 = inttoptr i64 %3286 to i32*
  %3289 = load i32, i32* %3288, align 4
  %3290 = sext i32 %3289 to i64
  store i64 %3290, i64* %RCX.i1817, align 8
  %3291 = shl nsw i64 %3290, 3
  %3292 = add i64 %3291, %3261
  %3293 = add i64 %3189, 67
  store i64 %3293, i64* %3, align 8
  %3294 = load double, double* %230, align 1
  %3295 = inttoptr i64 %3292 to double*
  %3296 = load double, double* %3295, align 8
  %3297 = fmul double %3294, %3296
  store double %3297, double* %230, align 1
  %3298 = add i64 %3253, -64
  %3299 = add i64 %3189, 72
  store i64 %3299, i64* %3, align 8
  %3300 = inttoptr i64 %3298 to double*
  %3301 = load double, double* %3300, align 8
  store double %3301, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %3302 = add i64 %3253, 64
  %3303 = add i64 %3189, 76
  store i64 %3303, i64* %3, align 8
  %3304 = inttoptr i64 %3302 to i64*
  %3305 = load i64, i64* %3304, align 8
  store i64 %3305, i64* %RAX.i1872, align 8
  %3306 = add i64 %3253, -100
  %3307 = add i64 %3189, 80
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3306 to i32*
  %3309 = load i32, i32* %3308, align 4
  %3310 = sext i32 %3309 to i64
  store i64 %3310, i64* %RCX.i1817, align 8
  %3311 = shl nsw i64 %3310, 3
  %3312 = add i64 %3311, %3305
  %3313 = add i64 %3189, 85
  store i64 %3313, i64* %3, align 8
  %3314 = inttoptr i64 %3312 to double*
  %3315 = load double, double* %3314, align 8
  %3316 = fmul double %3301, %3315
  store double %3316, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3317 = load i64, i64* %RBP.i, align 8
  %3318 = add i64 %3317, 80
  %3319 = add i64 %3189, 89
  store i64 %3319, i64* %3, align 8
  %3320 = inttoptr i64 %3318 to i64*
  %3321 = load i64, i64* %3320, align 8
  store i64 %3321, i64* %RAX.i1872, align 8
  %3322 = add i64 %3317, -108
  %3323 = add i64 %3189, 93
  store i64 %3323, i64* %3, align 8
  %3324 = inttoptr i64 %3322 to i32*
  %3325 = load i32, i32* %3324, align 4
  %3326 = sext i32 %3325 to i64
  store i64 %3326, i64* %RCX.i1817, align 8
  %3327 = shl nsw i64 %3326, 3
  %3328 = add i64 %3327, %3321
  %3329 = add i64 %3189, 98
  store i64 %3329, i64* %3, align 8
  %3330 = inttoptr i64 %3328 to double*
  %3331 = load double, double* %3330, align 8
  %3332 = fdiv double %3316, %3331
  store double %3332, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3333 = add i64 %3317, 16
  %3334 = add i64 %3189, 102
  store i64 %3334, i64* %3, align 8
  %3335 = inttoptr i64 %3333 to i64*
  %3336 = load i64, i64* %3335, align 8
  store i64 %3336, i64* %RAX.i1872, align 8
  %3337 = add i64 %3317, -100
  %3338 = add i64 %3189, 106
  store i64 %3338, i64* %3, align 8
  %3339 = inttoptr i64 %3337 to i32*
  %3340 = load i32, i32* %3339, align 4
  %3341 = sext i32 %3340 to i64
  %3342 = mul nsw i64 %3341, 520
  store i64 %3342, i64* %RCX.i1817, align 8
  %3343 = lshr i64 %3342, 63
  %3344 = add i64 %3342, %3336
  store i64 %3344, i64* %RAX.i1872, align 8
  %3345 = icmp ult i64 %3344, %3336
  %3346 = icmp ult i64 %3344, %3342
  %3347 = or i1 %3345, %3346
  %3348 = zext i1 %3347 to i8
  store i8 %3348, i8* %39, align 1
  %3349 = trunc i64 %3344 to i32
  %3350 = and i32 %3349, 255
  %3351 = tail call i32 @llvm.ctpop.i32(i32 %3350)
  %3352 = trunc i32 %3351 to i8
  %3353 = and i8 %3352, 1
  %3354 = xor i8 %3353, 1
  store i8 %3354, i8* %46, align 1
  %3355 = xor i64 %3342, %3336
  %3356 = xor i64 %3355, %3344
  %3357 = lshr i64 %3356, 4
  %3358 = trunc i64 %3357 to i8
  %3359 = and i8 %3358, 1
  store i8 %3359, i8* %51, align 1
  %3360 = icmp eq i64 %3344, 0
  %3361 = zext i1 %3360 to i8
  store i8 %3361, i8* %54, align 1
  %3362 = lshr i64 %3344, 63
  %3363 = trunc i64 %3362 to i8
  store i8 %3363, i8* %57, align 1
  %3364 = lshr i64 %3336, 63
  %3365 = xor i64 %3362, %3364
  %3366 = xor i64 %3362, %3343
  %3367 = add nuw nsw i64 %3365, %3366
  %3368 = icmp eq i64 %3367, 2
  %3369 = zext i1 %3368 to i8
  store i8 %3369, i8* %63, align 1
  %3370 = add i64 %3317, -104
  %3371 = add i64 %3189, 120
  store i64 %3371, i64* %3, align 8
  %3372 = inttoptr i64 %3370 to i32*
  %3373 = load i32, i32* %3372, align 4
  %3374 = sext i32 %3373 to i64
  store i64 %3374, i64* %RCX.i1817, align 8
  %3375 = shl nsw i64 %3374, 3
  %3376 = add i64 %3375, %3344
  %3377 = add i64 %3189, 125
  store i64 %3377, i64* %3, align 8
  %3378 = inttoptr i64 %3376 to double*
  %3379 = load double, double* %3378, align 8
  %3380 = fmul double %3332, %3379
  store double %3380, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3381 = load double, double* %230, align 1
  %3382 = fadd double %3381, %3380
  store double %3382, double* %230, align 1
  %3383 = load i64, i64* %RBP.i, align 8
  %3384 = add i64 %3383, -64
  %3385 = add i64 %3189, 134
  store i64 %3385, i64* %3, align 8
  %3386 = inttoptr i64 %3384 to double*
  %3387 = load double, double* %3386, align 8
  store double %3387, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %3388 = add i64 %3383, 56
  %3389 = add i64 %3189, 138
  store i64 %3389, i64* %3, align 8
  %3390 = inttoptr i64 %3388 to i64*
  %3391 = load i64, i64* %3390, align 8
  store i64 %3391, i64* %RAX.i1872, align 8
  %3392 = add i64 %3383, -100
  %3393 = add i64 %3189, 142
  store i64 %3393, i64* %3, align 8
  %3394 = inttoptr i64 %3392 to i32*
  %3395 = load i32, i32* %3394, align 4
  %3396 = sext i32 %3395 to i64
  store i64 %3396, i64* %RCX.i1817, align 8
  %3397 = shl nsw i64 %3396, 3
  %3398 = add i64 %3397, %3391
  %3399 = add i64 %3189, 147
  store i64 %3399, i64* %3, align 8
  %3400 = inttoptr i64 %3398 to double*
  %3401 = load double, double* %3400, align 8
  %3402 = fmul double %3387, %3401
  store double %3402, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3403 = add i64 %3383, 80
  %3404 = add i64 %3189, 151
  store i64 %3404, i64* %3, align 8
  %3405 = inttoptr i64 %3403 to i64*
  %3406 = load i64, i64* %3405, align 8
  store i64 %3406, i64* %RAX.i1872, align 8
  %3407 = add i64 %3383, -108
  %3408 = add i64 %3189, 155
  store i64 %3408, i64* %3, align 8
  %3409 = inttoptr i64 %3407 to i32*
  %3410 = load i32, i32* %3409, align 4
  %3411 = sext i32 %3410 to i64
  store i64 %3411, i64* %RCX.i1817, align 8
  %3412 = shl nsw i64 %3411, 3
  %3413 = add i64 %3412, %3406
  %3414 = add i64 %3189, 160
  store i64 %3414, i64* %3, align 8
  %3415 = inttoptr i64 %3413 to double*
  %3416 = load double, double* %3415, align 8
  %3417 = fdiv double %3402, %3416
  store double %3417, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3418 = add i64 %3383, 24
  %3419 = add i64 %3189, 164
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3418 to i64*
  %3421 = load i64, i64* %3420, align 8
  store i64 %3421, i64* %RAX.i1872, align 8
  %3422 = add i64 %3189, 168
  store i64 %3422, i64* %3, align 8
  %3423 = load i32, i32* %3394, align 4
  %3424 = sext i32 %3423 to i64
  %3425 = mul nsw i64 %3424, 33800
  store i64 %3425, i64* %RCX.i1817, align 8
  %3426 = lshr i64 %3425, 63
  %3427 = add i64 %3425, %3421
  store i64 %3427, i64* %RAX.i1872, align 8
  %3428 = icmp ult i64 %3427, %3421
  %3429 = icmp ult i64 %3427, %3425
  %3430 = or i1 %3428, %3429
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %39, align 1
  %3432 = trunc i64 %3427 to i32
  %3433 = and i32 %3432, 255
  %3434 = tail call i32 @llvm.ctpop.i32(i32 %3433)
  %3435 = trunc i32 %3434 to i8
  %3436 = and i8 %3435, 1
  %3437 = xor i8 %3436, 1
  store i8 %3437, i8* %46, align 1
  %3438 = xor i64 %3425, %3421
  %3439 = xor i64 %3438, %3427
  %3440 = lshr i64 %3439, 4
  %3441 = trunc i64 %3440 to i8
  %3442 = and i8 %3441, 1
  store i8 %3442, i8* %51, align 1
  %3443 = icmp eq i64 %3427, 0
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %54, align 1
  %3445 = lshr i64 %3427, 63
  %3446 = trunc i64 %3445 to i8
  store i8 %3446, i8* %57, align 1
  %3447 = lshr i64 %3421, 63
  %3448 = xor i64 %3445, %3447
  %3449 = xor i64 %3445, %3426
  %3450 = add nuw nsw i64 %3448, %3449
  %3451 = icmp eq i64 %3450, 2
  %3452 = zext i1 %3451 to i8
  store i8 %3452, i8* %63, align 1
  %3453 = load i64, i64* %RBP.i, align 8
  %3454 = add i64 %3453, -52
  %3455 = add i64 %3189, 182
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3454 to i32*
  %3457 = load i32, i32* %3456, align 4
  %3458 = sext i32 %3457 to i64
  %3459 = mul nsw i64 %3458, 520
  store i64 %3459, i64* %RCX.i1817, align 8
  %3460 = lshr i64 %3459, 63
  %3461 = add i64 %3459, %3427
  store i64 %3461, i64* %RAX.i1872, align 8
  %3462 = icmp ult i64 %3461, %3427
  %3463 = icmp ult i64 %3461, %3459
  %3464 = or i1 %3462, %3463
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %39, align 1
  %3466 = trunc i64 %3461 to i32
  %3467 = and i32 %3466, 255
  %3468 = tail call i32 @llvm.ctpop.i32(i32 %3467)
  %3469 = trunc i32 %3468 to i8
  %3470 = and i8 %3469, 1
  %3471 = xor i8 %3470, 1
  store i8 %3471, i8* %46, align 1
  %3472 = xor i64 %3459, %3427
  %3473 = xor i64 %3472, %3461
  %3474 = lshr i64 %3473, 4
  %3475 = trunc i64 %3474 to i8
  %3476 = and i8 %3475, 1
  store i8 %3476, i8* %51, align 1
  %3477 = icmp eq i64 %3461, 0
  %3478 = zext i1 %3477 to i8
  store i8 %3478, i8* %54, align 1
  %3479 = lshr i64 %3461, 63
  %3480 = trunc i64 %3479 to i8
  store i8 %3480, i8* %57, align 1
  %3481 = xor i64 %3479, %3445
  %3482 = xor i64 %3479, %3460
  %3483 = add nuw nsw i64 %3481, %3482
  %3484 = icmp eq i64 %3483, 2
  %3485 = zext i1 %3484 to i8
  store i8 %3485, i8* %63, align 1
  %3486 = add i64 %3453, -108
  %3487 = add i64 %3189, 196
  store i64 %3487, i64* %3, align 8
  %3488 = inttoptr i64 %3486 to i32*
  %3489 = load i32, i32* %3488, align 4
  %3490 = sext i32 %3489 to i64
  store i64 %3490, i64* %RCX.i1817, align 8
  %3491 = shl nsw i64 %3490, 3
  %3492 = add i64 %3491, %3461
  %3493 = add i64 %3189, 201
  store i64 %3493, i64* %3, align 8
  %3494 = load double, double* %233, align 1
  %3495 = inttoptr i64 %3492 to double*
  %3496 = load double, double* %3495, align 8
  %3497 = fmul double %3494, %3496
  store double %3497, double* %233, align 1
  %3498 = load double, double* %230, align 1
  %3499 = fsub double %3498, %3497
  store double %3499, double* %230, align 1
  %3500 = add i64 %3453, 48
  %3501 = add i64 %3189, 209
  store i64 %3501, i64* %3, align 8
  %3502 = inttoptr i64 %3500 to i64*
  %3503 = load i64, i64* %3502, align 8
  store i64 %3503, i64* %RAX.i1872, align 8
  %3504 = add i64 %3453, -100
  %3505 = add i64 %3189, 213
  store i64 %3505, i64* %3, align 8
  %3506 = inttoptr i64 %3504 to i32*
  %3507 = load i32, i32* %3506, align 4
  %3508 = sext i32 %3507 to i64
  %3509 = mul nsw i64 %3508, 33800
  store i64 %3509, i64* %RCX.i1817, align 8
  %3510 = lshr i64 %3509, 63
  %3511 = add i64 %3509, %3503
  store i64 %3511, i64* %RAX.i1872, align 8
  %3512 = icmp ult i64 %3511, %3503
  %3513 = icmp ult i64 %3511, %3509
  %3514 = or i1 %3512, %3513
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %39, align 1
  %3516 = trunc i64 %3511 to i32
  %3517 = and i32 %3516, 255
  %3518 = tail call i32 @llvm.ctpop.i32(i32 %3517)
  %3519 = trunc i32 %3518 to i8
  %3520 = and i8 %3519, 1
  %3521 = xor i8 %3520, 1
  store i8 %3521, i8* %46, align 1
  %3522 = xor i64 %3509, %3503
  %3523 = xor i64 %3522, %3511
  %3524 = lshr i64 %3523, 4
  %3525 = trunc i64 %3524 to i8
  %3526 = and i8 %3525, 1
  store i8 %3526, i8* %51, align 1
  %3527 = icmp eq i64 %3511, 0
  %3528 = zext i1 %3527 to i8
  store i8 %3528, i8* %54, align 1
  %3529 = lshr i64 %3511, 63
  %3530 = trunc i64 %3529 to i8
  store i8 %3530, i8* %57, align 1
  %3531 = lshr i64 %3503, 63
  %3532 = xor i64 %3529, %3531
  %3533 = xor i64 %3529, %3510
  %3534 = add nuw nsw i64 %3532, %3533
  %3535 = icmp eq i64 %3534, 2
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %63, align 1
  %3537 = load i64, i64* %RBP.i, align 8
  %3538 = add i64 %3537, -52
  %3539 = add i64 %3189, 227
  store i64 %3539, i64* %3, align 8
  %3540 = inttoptr i64 %3538 to i32*
  %3541 = load i32, i32* %3540, align 4
  %3542 = sext i32 %3541 to i64
  %3543 = mul nsw i64 %3542, 520
  store i64 %3543, i64* %RCX.i1817, align 8
  %3544 = lshr i64 %3543, 63
  %3545 = add i64 %3543, %3511
  store i64 %3545, i64* %RAX.i1872, align 8
  %3546 = icmp ult i64 %3545, %3511
  %3547 = icmp ult i64 %3545, %3543
  %3548 = or i1 %3546, %3547
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %39, align 1
  %3550 = trunc i64 %3545 to i32
  %3551 = and i32 %3550, 255
  %3552 = tail call i32 @llvm.ctpop.i32(i32 %3551)
  %3553 = trunc i32 %3552 to i8
  %3554 = and i8 %3553, 1
  %3555 = xor i8 %3554, 1
  store i8 %3555, i8* %46, align 1
  %3556 = xor i64 %3543, %3511
  %3557 = xor i64 %3556, %3545
  %3558 = lshr i64 %3557, 4
  %3559 = trunc i64 %3558 to i8
  %3560 = and i8 %3559, 1
  store i8 %3560, i8* %51, align 1
  %3561 = icmp eq i64 %3545, 0
  %3562 = zext i1 %3561 to i8
  store i8 %3562, i8* %54, align 1
  %3563 = lshr i64 %3545, 63
  %3564 = trunc i64 %3563 to i8
  store i8 %3564, i8* %57, align 1
  %3565 = xor i64 %3563, %3529
  %3566 = xor i64 %3563, %3544
  %3567 = add nuw nsw i64 %3565, %3566
  %3568 = icmp eq i64 %3567, 2
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %63, align 1
  %3570 = add i64 %3537, -108
  %3571 = add i64 %3189, 241
  store i64 %3571, i64* %3, align 8
  %3572 = inttoptr i64 %3570 to i32*
  %3573 = load i32, i32* %3572, align 4
  %3574 = sext i32 %3573 to i64
  store i64 %3574, i64* %RCX.i1817, align 8
  %3575 = shl nsw i64 %3574, 3
  %3576 = add i64 %3575, %3545
  %3577 = add i64 %3189, 246
  store i64 %3577, i64* %3, align 8
  %3578 = load i64, i64* %148, align 1
  %3579 = inttoptr i64 %3576 to i64*
  store i64 %3578, i64* %3579, align 8
  %3580 = load i64, i64* %RBP.i, align 8
  %3581 = add i64 %3580, 16
  %3582 = load i64, i64* %3, align 8
  %3583 = add i64 %3582, 4
  store i64 %3583, i64* %3, align 8
  %3584 = inttoptr i64 %3581 to i64*
  %3585 = load i64, i64* %3584, align 8
  store i64 %3585, i64* %RAX.i1872, align 8
  %3586 = add i64 %3580, -100
  %3587 = add i64 %3582, 8
  store i64 %3587, i64* %3, align 8
  %3588 = inttoptr i64 %3586 to i32*
  %3589 = load i32, i32* %3588, align 4
  %3590 = sext i32 %3589 to i64
  %3591 = mul nsw i64 %3590, 520
  store i64 %3591, i64* %RCX.i1817, align 8
  %3592 = lshr i64 %3591, 63
  %3593 = add i64 %3591, %3585
  store i64 %3593, i64* %RAX.i1872, align 8
  %3594 = icmp ult i64 %3593, %3585
  %3595 = icmp ult i64 %3593, %3591
  %3596 = or i1 %3594, %3595
  %3597 = zext i1 %3596 to i8
  store i8 %3597, i8* %39, align 1
  %3598 = trunc i64 %3593 to i32
  %3599 = and i32 %3598, 255
  %3600 = tail call i32 @llvm.ctpop.i32(i32 %3599)
  %3601 = trunc i32 %3600 to i8
  %3602 = and i8 %3601, 1
  %3603 = xor i8 %3602, 1
  store i8 %3603, i8* %46, align 1
  %3604 = xor i64 %3591, %3585
  %3605 = xor i64 %3604, %3593
  %3606 = lshr i64 %3605, 4
  %3607 = trunc i64 %3606 to i8
  %3608 = and i8 %3607, 1
  store i8 %3608, i8* %51, align 1
  %3609 = icmp eq i64 %3593, 0
  %3610 = zext i1 %3609 to i8
  store i8 %3610, i8* %54, align 1
  %3611 = lshr i64 %3593, 63
  %3612 = trunc i64 %3611 to i8
  store i8 %3612, i8* %57, align 1
  %3613 = lshr i64 %3585, 63
  %3614 = xor i64 %3611, %3613
  %3615 = xor i64 %3611, %3592
  %3616 = add nuw nsw i64 %3614, %3615
  %3617 = icmp eq i64 %3616, 2
  %3618 = zext i1 %3617 to i8
  store i8 %3618, i8* %63, align 1
  %3619 = add i64 %3580, -104
  %3620 = add i64 %3582, 22
  store i64 %3620, i64* %3, align 8
  %3621 = inttoptr i64 %3619 to i32*
  %3622 = load i32, i32* %3621, align 4
  %3623 = sext i32 %3622 to i64
  store i64 %3623, i64* %RCX.i1817, align 8
  %3624 = shl nsw i64 %3623, 3
  %3625 = add i64 %3624, %3593
  %3626 = add i64 %3582, 27
  store i64 %3626, i64* %3, align 8
  %3627 = inttoptr i64 %3625 to i64*
  %3628 = load i64, i64* %3627, align 8
  store i64 %3628, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %3629 = add i64 %3580, 24
  %3630 = add i64 %3582, 31
  store i64 %3630, i64* %3, align 8
  %3631 = inttoptr i64 %3629 to i64*
  %3632 = load i64, i64* %3631, align 8
  store i64 %3632, i64* %RAX.i1872, align 8
  %3633 = add i64 %3582, 35
  store i64 %3633, i64* %3, align 8
  %3634 = load i32, i32* %3588, align 4
  %3635 = sext i32 %3634 to i64
  %3636 = mul nsw i64 %3635, 33800
  store i64 %3636, i64* %RCX.i1817, align 8
  %3637 = lshr i64 %3636, 63
  %3638 = add i64 %3636, %3632
  store i64 %3638, i64* %RAX.i1872, align 8
  %3639 = icmp ult i64 %3638, %3632
  %3640 = icmp ult i64 %3638, %3636
  %3641 = or i1 %3639, %3640
  %3642 = zext i1 %3641 to i8
  store i8 %3642, i8* %39, align 1
  %3643 = trunc i64 %3638 to i32
  %3644 = and i32 %3643, 255
  %3645 = tail call i32 @llvm.ctpop.i32(i32 %3644)
  %3646 = trunc i32 %3645 to i8
  %3647 = and i8 %3646, 1
  %3648 = xor i8 %3647, 1
  store i8 %3648, i8* %46, align 1
  %3649 = xor i64 %3636, %3632
  %3650 = xor i64 %3649, %3638
  %3651 = lshr i64 %3650, 4
  %3652 = trunc i64 %3651 to i8
  %3653 = and i8 %3652, 1
  store i8 %3653, i8* %51, align 1
  %3654 = icmp eq i64 %3638, 0
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %54, align 1
  %3656 = lshr i64 %3638, 63
  %3657 = trunc i64 %3656 to i8
  store i8 %3657, i8* %57, align 1
  %3658 = lshr i64 %3632, 63
  %3659 = xor i64 %3656, %3658
  %3660 = xor i64 %3656, %3637
  %3661 = add nuw nsw i64 %3659, %3660
  %3662 = icmp eq i64 %3661, 2
  %3663 = zext i1 %3662 to i8
  store i8 %3663, i8* %63, align 1
  %3664 = load i64, i64* %RBP.i, align 8
  %3665 = add i64 %3664, -52
  %3666 = add i64 %3582, 49
  store i64 %3666, i64* %3, align 8
  %3667 = inttoptr i64 %3665 to i32*
  %3668 = load i32, i32* %3667, align 4
  %3669 = sext i32 %3668 to i64
  %3670 = mul nsw i64 %3669, 520
  store i64 %3670, i64* %RCX.i1817, align 8
  %3671 = lshr i64 %3670, 63
  %3672 = add i64 %3670, %3638
  store i64 %3672, i64* %RAX.i1872, align 8
  %3673 = icmp ult i64 %3672, %3638
  %3674 = icmp ult i64 %3672, %3670
  %3675 = or i1 %3673, %3674
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %39, align 1
  %3677 = trunc i64 %3672 to i32
  %3678 = and i32 %3677, 255
  %3679 = tail call i32 @llvm.ctpop.i32(i32 %3678)
  %3680 = trunc i32 %3679 to i8
  %3681 = and i8 %3680, 1
  %3682 = xor i8 %3681, 1
  store i8 %3682, i8* %46, align 1
  %3683 = xor i64 %3670, %3638
  %3684 = xor i64 %3683, %3672
  %3685 = lshr i64 %3684, 4
  %3686 = trunc i64 %3685 to i8
  %3687 = and i8 %3686, 1
  store i8 %3687, i8* %51, align 1
  %3688 = icmp eq i64 %3672, 0
  %3689 = zext i1 %3688 to i8
  store i8 %3689, i8* %54, align 1
  %3690 = lshr i64 %3672, 63
  %3691 = trunc i64 %3690 to i8
  store i8 %3691, i8* %57, align 1
  %3692 = xor i64 %3690, %3656
  %3693 = xor i64 %3690, %3671
  %3694 = add nuw nsw i64 %3692, %3693
  %3695 = icmp eq i64 %3694, 2
  %3696 = zext i1 %3695 to i8
  store i8 %3696, i8* %63, align 1
  %3697 = add i64 %3664, -108
  %3698 = add i64 %3582, 63
  store i64 %3698, i64* %3, align 8
  %3699 = inttoptr i64 %3697 to i32*
  %3700 = load i32, i32* %3699, align 4
  %3701 = sext i32 %3700 to i64
  store i64 %3701, i64* %RCX.i1817, align 8
  %3702 = shl nsw i64 %3701, 3
  %3703 = add i64 %3702, %3672
  %3704 = add i64 %3582, 68
  store i64 %3704, i64* %3, align 8
  %3705 = load i64, i64* %148, align 1
  %3706 = inttoptr i64 %3703 to i64*
  store i64 %3705, i64* %3706, align 8
  %3707 = load i64, i64* %RBP.i, align 8
  %3708 = add i64 %3707, -108
  %3709 = load i64, i64* %3, align 8
  %3710 = add i64 %3709, 3
  store i64 %3710, i64* %3, align 8
  %3711 = inttoptr i64 %3708 to i32*
  %3712 = load i32, i32* %3711, align 4
  %3713 = add i32 %3712, 1
  %3714 = zext i32 %3713 to i64
  store i64 %3714, i64* %RAX.i1872, align 8
  %3715 = icmp eq i32 %3712, -1
  %3716 = icmp eq i32 %3713, 0
  %3717 = or i1 %3715, %3716
  %3718 = zext i1 %3717 to i8
  store i8 %3718, i8* %39, align 1
  %3719 = and i32 %3713, 255
  %3720 = tail call i32 @llvm.ctpop.i32(i32 %3719)
  %3721 = trunc i32 %3720 to i8
  %3722 = and i8 %3721, 1
  %3723 = xor i8 %3722, 1
  store i8 %3723, i8* %46, align 1
  %3724 = xor i32 %3712, %3713
  %3725 = lshr i32 %3724, 4
  %3726 = trunc i32 %3725 to i8
  %3727 = and i8 %3726, 1
  store i8 %3727, i8* %51, align 1
  %3728 = zext i1 %3716 to i8
  store i8 %3728, i8* %54, align 1
  %3729 = lshr i32 %3713, 31
  %3730 = trunc i32 %3729 to i8
  store i8 %3730, i8* %57, align 1
  %3731 = lshr i32 %3712, 31
  %3732 = xor i32 %3729, %3731
  %3733 = add nuw nsw i32 %3732, %3729
  %3734 = icmp eq i32 %3733, 2
  %3735 = zext i1 %3734 to i8
  store i8 %3735, i8* %63, align 1
  %3736 = add i64 %3709, 9
  store i64 %3736, i64* %3, align 8
  store i32 %3713, i32* %3711, align 4
  %3737 = load i64, i64* %3, align 8
  %3738 = add i64 %3737, -660
  store i64 %3738, i64* %3, align 8
  br label %block_.L_402512

block_.L_4027ab:                                  ; preds = %block_.L_402512
  %3739 = add i64 %2667, -48
  %3740 = add i64 %2596, 36
  store i64 %3740, i64* %3, align 8
  %3741 = inttoptr i64 %3739 to i32*
  %3742 = load i32, i32* %3741, align 4
  %3743 = sext i32 %3742 to i64
  store i64 %3743, i64* %RCX.i1817, align 8
  %3744 = shl nsw i64 %3743, 3
  %3745 = add i64 %3744, %2642
  %3746 = add i64 %2596, 41
  store i64 %3746, i64* %3, align 8
  %3747 = inttoptr i64 %3745 to double*
  %3748 = load double, double* %3747, align 8
  store double %3748, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %3749 = add i64 %2667, -80
  %3750 = add i64 %2596, 45
  store i64 %3750, i64* %3, align 8
  %3751 = inttoptr i64 %3749 to i64*
  %3752 = load i64, i64* %3751, align 8
  store i64 %3752, i64* %RAX.i1872, align 8
  %3753 = add i64 %2667, -100
  %3754 = add i64 %2596, 49
  store i64 %3754, i64* %3, align 8
  %3755 = inttoptr i64 %3753 to i32*
  %3756 = load i32, i32* %3755, align 4
  %3757 = sext i32 %3756 to i64
  %3758 = mul nsw i64 %3757, 520
  store i64 %3758, i64* %RCX.i1817, align 8
  %3759 = lshr i64 %3758, 63
  %3760 = add i64 %3758, %3752
  store i64 %3760, i64* %RAX.i1872, align 8
  %3761 = icmp ult i64 %3760, %3752
  %3762 = icmp ult i64 %3760, %3758
  %3763 = or i1 %3761, %3762
  %3764 = zext i1 %3763 to i8
  store i8 %3764, i8* %39, align 1
  %3765 = trunc i64 %3760 to i32
  %3766 = and i32 %3765, 255
  %3767 = tail call i32 @llvm.ctpop.i32(i32 %3766)
  %3768 = trunc i32 %3767 to i8
  %3769 = and i8 %3768, 1
  %3770 = xor i8 %3769, 1
  store i8 %3770, i8* %46, align 1
  %3771 = xor i64 %3758, %3752
  %3772 = xor i64 %3771, %3760
  %3773 = lshr i64 %3772, 4
  %3774 = trunc i64 %3773 to i8
  %3775 = and i8 %3774, 1
  store i8 %3775, i8* %51, align 1
  %3776 = icmp eq i64 %3760, 0
  %3777 = zext i1 %3776 to i8
  store i8 %3777, i8* %54, align 1
  %3778 = lshr i64 %3760, 63
  %3779 = trunc i64 %3778 to i8
  store i8 %3779, i8* %57, align 1
  %3780 = lshr i64 %3752, 63
  %3781 = xor i64 %3778, %3780
  %3782 = xor i64 %3778, %3759
  %3783 = add nuw nsw i64 %3781, %3782
  %3784 = icmp eq i64 %3783, 2
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %63, align 1
  %3786 = add i64 %2596, 63
  store i64 %3786, i64* %3, align 8
  %3787 = load i32, i32* %3741, align 4
  %3788 = sext i32 %3787 to i64
  store i64 %3788, i64* %RCX.i1817, align 8
  %3789 = shl nsw i64 %3788, 3
  %3790 = add i64 %3789, %3760
  %3791 = add i64 %2596, 68
  store i64 %3791, i64* %3, align 8
  %3792 = inttoptr i64 %3790 to double*
  %3793 = load double, double* %3792, align 8
  %3794 = fsub double %3748, %3793
  store double %3794, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3795 = load i64, i64* %RBP.i, align 8
  %3796 = add i64 %3795, -88
  %3797 = add i64 %2596, 72
  store i64 %3797, i64* %3, align 8
  %3798 = inttoptr i64 %3796 to i64*
  %3799 = load i64, i64* %3798, align 8
  store i64 %3799, i64* %RAX.i1872, align 8
  %3800 = add i64 %3795, -100
  %3801 = add i64 %2596, 76
  store i64 %3801, i64* %3, align 8
  %3802 = inttoptr i64 %3800 to i32*
  %3803 = load i32, i32* %3802, align 4
  %3804 = sext i32 %3803 to i64
  %3805 = mul nsw i64 %3804, 520
  store i64 %3805, i64* %RCX.i1817, align 8
  %3806 = lshr i64 %3805, 63
  %3807 = add i64 %3805, %3799
  store i64 %3807, i64* %RAX.i1872, align 8
  %3808 = icmp ult i64 %3807, %3799
  %3809 = icmp ult i64 %3807, %3805
  %3810 = or i1 %3808, %3809
  %3811 = zext i1 %3810 to i8
  store i8 %3811, i8* %39, align 1
  %3812 = trunc i64 %3807 to i32
  %3813 = and i32 %3812, 255
  %3814 = tail call i32 @llvm.ctpop.i32(i32 %3813)
  %3815 = trunc i32 %3814 to i8
  %3816 = and i8 %3815, 1
  %3817 = xor i8 %3816, 1
  store i8 %3817, i8* %46, align 1
  %3818 = xor i64 %3805, %3799
  %3819 = xor i64 %3818, %3807
  %3820 = lshr i64 %3819, 4
  %3821 = trunc i64 %3820 to i8
  %3822 = and i8 %3821, 1
  store i8 %3822, i8* %51, align 1
  %3823 = icmp eq i64 %3807, 0
  %3824 = zext i1 %3823 to i8
  store i8 %3824, i8* %54, align 1
  %3825 = lshr i64 %3807, 63
  %3826 = trunc i64 %3825 to i8
  store i8 %3826, i8* %57, align 1
  %3827 = lshr i64 %3799, 63
  %3828 = xor i64 %3825, %3827
  %3829 = xor i64 %3825, %3806
  %3830 = add nuw nsw i64 %3828, %3829
  %3831 = icmp eq i64 %3830, 2
  %3832 = zext i1 %3831 to i8
  store i8 %3832, i8* %63, align 1
  %3833 = add i64 %3795, -52
  %3834 = add i64 %2596, 90
  store i64 %3834, i64* %3, align 8
  %3835 = inttoptr i64 %3833 to i32*
  %3836 = load i32, i32* %3835, align 4
  %3837 = sext i32 %3836 to i64
  store i64 %3837, i64* %RCX.i1817, align 8
  %3838 = shl nsw i64 %3837, 3
  %3839 = add i64 %3838, %3807
  %3840 = add i64 %2596, 95
  store i64 %3840, i64* %3, align 8
  %3841 = inttoptr i64 %3839 to double*
  %3842 = load double, double* %3841, align 8
  %3843 = fadd double %3794, %3842
  store double %3843, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3844 = add i64 %3795, 40
  %3845 = add i64 %2596, 99
  store i64 %3845, i64* %3, align 8
  %3846 = inttoptr i64 %3844 to i64*
  %3847 = load i64, i64* %3846, align 8
  store i64 %3847, i64* %RAX.i1872, align 8
  %3848 = add i64 %2596, 103
  store i64 %3848, i64* %3, align 8
  %3849 = load i32, i32* %3802, align 4
  %3850 = sext i32 %3849 to i64
  %3851 = mul nsw i64 %3850, 33800
  store i64 %3851, i64* %RCX.i1817, align 8
  %3852 = lshr i64 %3851, 63
  %3853 = add i64 %3851, %3847
  store i64 %3853, i64* %RAX.i1872, align 8
  %3854 = icmp ult i64 %3853, %3847
  %3855 = icmp ult i64 %3853, %3851
  %3856 = or i1 %3854, %3855
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %39, align 1
  %3858 = trunc i64 %3853 to i32
  %3859 = and i32 %3858, 255
  %3860 = tail call i32 @llvm.ctpop.i32(i32 %3859)
  %3861 = trunc i32 %3860 to i8
  %3862 = and i8 %3861, 1
  %3863 = xor i8 %3862, 1
  store i8 %3863, i8* %46, align 1
  %3864 = xor i64 %3851, %3847
  %3865 = xor i64 %3864, %3853
  %3866 = lshr i64 %3865, 4
  %3867 = trunc i64 %3866 to i8
  %3868 = and i8 %3867, 1
  store i8 %3868, i8* %51, align 1
  %3869 = icmp eq i64 %3853, 0
  %3870 = zext i1 %3869 to i8
  store i8 %3870, i8* %54, align 1
  %3871 = lshr i64 %3853, 63
  %3872 = trunc i64 %3871 to i8
  store i8 %3872, i8* %57, align 1
  %3873 = lshr i64 %3847, 63
  %3874 = xor i64 %3871, %3873
  %3875 = xor i64 %3871, %3852
  %3876 = add nuw nsw i64 %3874, %3875
  %3877 = icmp eq i64 %3876, 2
  %3878 = zext i1 %3877 to i8
  store i8 %3878, i8* %63, align 1
  %3879 = load i64, i64* %RBP.i, align 8
  %3880 = add i64 %3879, -52
  %3881 = add i64 %2596, 117
  store i64 %3881, i64* %3, align 8
  %3882 = inttoptr i64 %3880 to i32*
  %3883 = load i32, i32* %3882, align 4
  %3884 = sext i32 %3883 to i64
  %3885 = mul nsw i64 %3884, 520
  store i64 %3885, i64* %RCX.i1817, align 8
  %3886 = lshr i64 %3885, 63
  %3887 = add i64 %3885, %3853
  store i64 %3887, i64* %RAX.i1872, align 8
  %3888 = icmp ult i64 %3887, %3853
  %3889 = icmp ult i64 %3887, %3885
  %3890 = or i1 %3888, %3889
  %3891 = zext i1 %3890 to i8
  store i8 %3891, i8* %39, align 1
  %3892 = trunc i64 %3887 to i32
  %3893 = and i32 %3892, 255
  %3894 = tail call i32 @llvm.ctpop.i32(i32 %3893)
  %3895 = trunc i32 %3894 to i8
  %3896 = and i8 %3895, 1
  %3897 = xor i8 %3896, 1
  store i8 %3897, i8* %46, align 1
  %3898 = xor i64 %3885, %3853
  %3899 = xor i64 %3898, %3887
  %3900 = lshr i64 %3899, 4
  %3901 = trunc i64 %3900 to i8
  %3902 = and i8 %3901, 1
  store i8 %3902, i8* %51, align 1
  %3903 = icmp eq i64 %3887, 0
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %54, align 1
  %3905 = lshr i64 %3887, 63
  %3906 = trunc i64 %3905 to i8
  store i8 %3906, i8* %57, align 1
  %3907 = xor i64 %3905, %3871
  %3908 = xor i64 %3905, %3886
  %3909 = add nuw nsw i64 %3907, %3908
  %3910 = icmp eq i64 %3909, 2
  %3911 = zext i1 %3910 to i8
  store i8 %3911, i8* %63, align 1
  %3912 = add i64 %3879, -48
  %3913 = add i64 %2596, 131
  store i64 %3913, i64* %3, align 8
  %3914 = inttoptr i64 %3912 to i32*
  %3915 = load i32, i32* %3914, align 4
  %3916 = sext i32 %3915 to i64
  store i64 %3916, i64* %RCX.i1817, align 8
  %3917 = shl nsw i64 %3916, 3
  %3918 = add i64 %3917, %3887
  %3919 = add i64 %2596, 136
  store i64 %3919, i64* %3, align 8
  %3920 = load double, double* %230, align 1
  %3921 = inttoptr i64 %3918 to double*
  %3922 = load double, double* %3921, align 8
  %3923 = fsub double %3920, %3922
  store double %3923, double* %230, align 1
  %3924 = add i64 %3879, -96
  %3925 = add i64 %2596, 140
  store i64 %3925, i64* %3, align 8
  %3926 = inttoptr i64 %3924 to i64*
  %3927 = load i64, i64* %3926, align 8
  store i64 %3927, i64* %RAX.i1872, align 8
  %3928 = add i64 %3879, -100
  %3929 = add i64 %2596, 144
  store i64 %3929, i64* %3, align 8
  %3930 = inttoptr i64 %3928 to i32*
  %3931 = load i32, i32* %3930, align 4
  %3932 = sext i32 %3931 to i64
  %3933 = mul nsw i64 %3932, 520
  store i64 %3933, i64* %RCX.i1817, align 8
  %3934 = lshr i64 %3933, 63
  %3935 = add i64 %3933, %3927
  store i64 %3935, i64* %RAX.i1872, align 8
  %3936 = icmp ult i64 %3935, %3927
  %3937 = icmp ult i64 %3935, %3933
  %3938 = or i1 %3936, %3937
  %3939 = zext i1 %3938 to i8
  store i8 %3939, i8* %39, align 1
  %3940 = trunc i64 %3935 to i32
  %3941 = and i32 %3940, 255
  %3942 = tail call i32 @llvm.ctpop.i32(i32 %3941)
  %3943 = trunc i32 %3942 to i8
  %3944 = and i8 %3943, 1
  %3945 = xor i8 %3944, 1
  store i8 %3945, i8* %46, align 1
  %3946 = xor i64 %3933, %3927
  %3947 = xor i64 %3946, %3935
  %3948 = lshr i64 %3947, 4
  %3949 = trunc i64 %3948 to i8
  %3950 = and i8 %3949, 1
  store i8 %3950, i8* %51, align 1
  %3951 = icmp eq i64 %3935, 0
  %3952 = zext i1 %3951 to i8
  store i8 %3952, i8* %54, align 1
  %3953 = lshr i64 %3935, 63
  %3954 = trunc i64 %3953 to i8
  store i8 %3954, i8* %57, align 1
  %3955 = lshr i64 %3927, 63
  %3956 = xor i64 %3953, %3955
  %3957 = xor i64 %3953, %3934
  %3958 = add nuw nsw i64 %3956, %3957
  %3959 = icmp eq i64 %3958, 2
  %3960 = zext i1 %3959 to i8
  store i8 %3960, i8* %63, align 1
  %3961 = load i64, i64* %RBP.i, align 8
  %3962 = add i64 %3961, -104
  %3963 = add i64 %2596, 158
  store i64 %3963, i64* %3, align 8
  %3964 = inttoptr i64 %3962 to i32*
  %3965 = load i32, i32* %3964, align 4
  %3966 = sext i32 %3965 to i64
  store i64 %3966, i64* %RCX.i1817, align 8
  %3967 = shl nsw i64 %3966, 3
  %3968 = add i64 %3967, %3935
  %3969 = add i64 %2596, 163
  store i64 %3969, i64* %3, align 8
  %3970 = inttoptr i64 %3968 to double*
  store double %3923, double* %3970, align 8
  %3971 = load i64, i64* %RBP.i, align 8
  %3972 = add i64 %3971, 88
  %3973 = load i64, i64* %3, align 8
  %3974 = add i64 %3973, 4
  store i64 %3974, i64* %3, align 8
  %3975 = inttoptr i64 %3972 to i64*
  %3976 = load i64, i64* %3975, align 8
  store i64 %3976, i64* %RAX.i1872, align 8
  %3977 = add i64 %3971, -52
  %3978 = add i64 %3973, 8
  store i64 %3978, i64* %3, align 8
  %3979 = inttoptr i64 %3977 to i32*
  %3980 = load i32, i32* %3979, align 4
  %3981 = sext i32 %3980 to i64
  store i64 %3981, i64* %RCX.i1817, align 8
  %3982 = shl nsw i64 %3981, 3
  %3983 = add i64 %3982, %3976
  %3984 = add i64 %3973, 13
  store i64 %3984, i64* %3, align 8
  %3985 = inttoptr i64 %3983 to double*
  %3986 = load double, double* %3985, align 8
  store double %3986, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %3987 = add i64 %3971, 96
  %3988 = add i64 %3973, 17
  store i64 %3988, i64* %3, align 8
  %3989 = inttoptr i64 %3987 to i64*
  %3990 = load i64, i64* %3989, align 8
  store i64 %3990, i64* %RAX.i1872, align 8
  %3991 = add i64 %3973, 21
  store i64 %3991, i64* %3, align 8
  %3992 = load i32, i32* %3979, align 4
  %3993 = sext i32 %3992 to i64
  store i64 %3993, i64* %RCX.i1817, align 8
  %3994 = shl nsw i64 %3993, 3
  %3995 = add i64 %3994, %3990
  %3996 = add i64 %3973, 26
  store i64 %3996, i64* %3, align 8
  %3997 = inttoptr i64 %3995 to double*
  %3998 = load double, double* %3997, align 8
  %3999 = fdiv double %3986, %3998
  store double %3999, double* %230, align 1
  store i64 0, i64* %231, align 1
  %4000 = add i64 %3971, 24
  %4001 = add i64 %3973, 30
  store i64 %4001, i64* %3, align 8
  %4002 = inttoptr i64 %4000 to i64*
  %4003 = load i64, i64* %4002, align 8
  store i64 %4003, i64* %RAX.i1872, align 8
  %4004 = add i64 %3971, -100
  %4005 = add i64 %3973, 34
  store i64 %4005, i64* %3, align 8
  %4006 = inttoptr i64 %4004 to i32*
  %4007 = load i32, i32* %4006, align 4
  %4008 = sext i32 %4007 to i64
  %4009 = mul nsw i64 %4008, 33800
  store i64 %4009, i64* %RCX.i1817, align 8
  %4010 = lshr i64 %4009, 63
  %4011 = add i64 %4009, %4003
  store i64 %4011, i64* %RAX.i1872, align 8
  %4012 = icmp ult i64 %4011, %4003
  %4013 = icmp ult i64 %4011, %4009
  %4014 = or i1 %4012, %4013
  %4015 = zext i1 %4014 to i8
  store i8 %4015, i8* %39, align 1
  %4016 = trunc i64 %4011 to i32
  %4017 = and i32 %4016, 255
  %4018 = tail call i32 @llvm.ctpop.i32(i32 %4017)
  %4019 = trunc i32 %4018 to i8
  %4020 = and i8 %4019, 1
  %4021 = xor i8 %4020, 1
  store i8 %4021, i8* %46, align 1
  %4022 = xor i64 %4009, %4003
  %4023 = xor i64 %4022, %4011
  %4024 = lshr i64 %4023, 4
  %4025 = trunc i64 %4024 to i8
  %4026 = and i8 %4025, 1
  store i8 %4026, i8* %51, align 1
  %4027 = icmp eq i64 %4011, 0
  %4028 = zext i1 %4027 to i8
  store i8 %4028, i8* %54, align 1
  %4029 = lshr i64 %4011, 63
  %4030 = trunc i64 %4029 to i8
  store i8 %4030, i8* %57, align 1
  %4031 = lshr i64 %4003, 63
  %4032 = xor i64 %4029, %4031
  %4033 = xor i64 %4029, %4010
  %4034 = add nuw nsw i64 %4032, %4033
  %4035 = icmp eq i64 %4034, 2
  %4036 = zext i1 %4035 to i8
  store i8 %4036, i8* %63, align 1
  %4037 = load i64, i64* %RBP.i, align 8
  %4038 = add i64 %4037, -52
  %4039 = add i64 %3973, 48
  store i64 %4039, i64* %3, align 8
  %4040 = inttoptr i64 %4038 to i32*
  %4041 = load i32, i32* %4040, align 4
  %4042 = sext i32 %4041 to i64
  %4043 = mul nsw i64 %4042, 520
  store i64 %4043, i64* %RCX.i1817, align 8
  %4044 = lshr i64 %4043, 63
  %4045 = add i64 %4043, %4011
  store i64 %4045, i64* %RAX.i1872, align 8
  %4046 = icmp ult i64 %4045, %4011
  %4047 = icmp ult i64 %4045, %4043
  %4048 = or i1 %4046, %4047
  %4049 = zext i1 %4048 to i8
  store i8 %4049, i8* %39, align 1
  %4050 = trunc i64 %4045 to i32
  %4051 = and i32 %4050, 255
  %4052 = tail call i32 @llvm.ctpop.i32(i32 %4051)
  %4053 = trunc i32 %4052 to i8
  %4054 = and i8 %4053, 1
  %4055 = xor i8 %4054, 1
  store i8 %4055, i8* %46, align 1
  %4056 = xor i64 %4043, %4011
  %4057 = xor i64 %4056, %4045
  %4058 = lshr i64 %4057, 4
  %4059 = trunc i64 %4058 to i8
  %4060 = and i8 %4059, 1
  store i8 %4060, i8* %51, align 1
  %4061 = icmp eq i64 %4045, 0
  %4062 = zext i1 %4061 to i8
  store i8 %4062, i8* %54, align 1
  %4063 = lshr i64 %4045, 63
  %4064 = trunc i64 %4063 to i8
  store i8 %4064, i8* %57, align 1
  %4065 = xor i64 %4063, %4029
  %4066 = xor i64 %4063, %4044
  %4067 = add nuw nsw i64 %4065, %4066
  %4068 = icmp eq i64 %4067, 2
  %4069 = zext i1 %4068 to i8
  store i8 %4069, i8* %63, align 1
  %4070 = add i64 %4037, -48
  %4071 = add i64 %3973, 62
  store i64 %4071, i64* %3, align 8
  %4072 = inttoptr i64 %4070 to i32*
  %4073 = load i32, i32* %4072, align 4
  %4074 = sext i32 %4073 to i64
  store i64 %4074, i64* %RCX.i1817, align 8
  %4075 = shl nsw i64 %4074, 3
  %4076 = add i64 %4075, %4045
  %4077 = add i64 %3973, 67
  store i64 %4077, i64* %3, align 8
  %4078 = load double, double* %230, align 1
  %4079 = inttoptr i64 %4076 to double*
  %4080 = load double, double* %4079, align 8
  %4081 = fmul double %4078, %4080
  store double %4081, double* %230, align 1
  %4082 = add i64 %4037, -72
  %4083 = add i64 %3973, 72
  store i64 %4083, i64* %3, align 8
  %4084 = inttoptr i64 %4082 to double*
  %4085 = load double, double* %4084, align 8
  store double %4085, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %4086 = add i64 %4037, 96
  %4087 = add i64 %3973, 76
  store i64 %4087, i64* %3, align 8
  %4088 = inttoptr i64 %4086 to i64*
  %4089 = load i64, i64* %4088, align 8
  store i64 %4089, i64* %RAX.i1872, align 8
  %4090 = add i64 %3973, 80
  store i64 %4090, i64* %3, align 8
  %4091 = load i32, i32* %4040, align 4
  %4092 = sext i32 %4091 to i64
  store i64 %4092, i64* %RCX.i1817, align 8
  %4093 = shl nsw i64 %4092, 3
  %4094 = add i64 %4093, %4089
  %4095 = add i64 %3973, 85
  store i64 %4095, i64* %3, align 8
  %4096 = inttoptr i64 %4094 to double*
  %4097 = load double, double* %4096, align 8
  %4098 = fdiv double %4085, %4097
  store double %4098, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4099 = load i64, i64* %RBP.i, align 8
  %4100 = add i64 %4099, -96
  %4101 = add i64 %3973, 89
  store i64 %4101, i64* %3, align 8
  %4102 = inttoptr i64 %4100 to i64*
  %4103 = load i64, i64* %4102, align 8
  store i64 %4103, i64* %RAX.i1872, align 8
  %4104 = add i64 %4099, -100
  %4105 = add i64 %3973, 93
  store i64 %4105, i64* %3, align 8
  %4106 = inttoptr i64 %4104 to i32*
  %4107 = load i32, i32* %4106, align 4
  %4108 = sext i32 %4107 to i64
  %4109 = mul nsw i64 %4108, 520
  store i64 %4109, i64* %RCX.i1817, align 8
  %4110 = lshr i64 %4109, 63
  %4111 = add i64 %4109, %4103
  store i64 %4111, i64* %RAX.i1872, align 8
  %4112 = icmp ult i64 %4111, %4103
  %4113 = icmp ult i64 %4111, %4109
  %4114 = or i1 %4112, %4113
  %4115 = zext i1 %4114 to i8
  store i8 %4115, i8* %39, align 1
  %4116 = trunc i64 %4111 to i32
  %4117 = and i32 %4116, 255
  %4118 = tail call i32 @llvm.ctpop.i32(i32 %4117)
  %4119 = trunc i32 %4118 to i8
  %4120 = and i8 %4119, 1
  %4121 = xor i8 %4120, 1
  store i8 %4121, i8* %46, align 1
  %4122 = xor i64 %4109, %4103
  %4123 = xor i64 %4122, %4111
  %4124 = lshr i64 %4123, 4
  %4125 = trunc i64 %4124 to i8
  %4126 = and i8 %4125, 1
  store i8 %4126, i8* %51, align 1
  %4127 = icmp eq i64 %4111, 0
  %4128 = zext i1 %4127 to i8
  store i8 %4128, i8* %54, align 1
  %4129 = lshr i64 %4111, 63
  %4130 = trunc i64 %4129 to i8
  store i8 %4130, i8* %57, align 1
  %4131 = lshr i64 %4103, 63
  %4132 = xor i64 %4129, %4131
  %4133 = xor i64 %4129, %4110
  %4134 = add nuw nsw i64 %4132, %4133
  %4135 = icmp eq i64 %4134, 2
  %4136 = zext i1 %4135 to i8
  store i8 %4136, i8* %63, align 1
  %4137 = add i64 %4099, -104
  %4138 = add i64 %3973, 107
  store i64 %4138, i64* %3, align 8
  %4139 = inttoptr i64 %4137 to i32*
  %4140 = load i32, i32* %4139, align 4
  %4141 = sext i32 %4140 to i64
  store i64 %4141, i64* %RCX.i1817, align 8
  %4142 = shl nsw i64 %4141, 3
  %4143 = add i64 %4142, %4111
  %4144 = add i64 %3973, 112
  store i64 %4144, i64* %3, align 8
  %4145 = inttoptr i64 %4143 to double*
  %4146 = load double, double* %4145, align 8
  %4147 = fmul double %4098, %4146
  store double %4147, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4148 = load double, double* %230, align 1
  %4149 = fsub double %4148, %4147
  store double %4149, double* %230, align 1
  %4150 = add i64 %4099, 16
  %4151 = add i64 %3973, 120
  store i64 %4151, i64* %3, align 8
  %4152 = inttoptr i64 %4150 to i64*
  %4153 = load i64, i64* %4152, align 8
  store i64 %4153, i64* %RAX.i1872, align 8
  %4154 = load i64, i64* %RBP.i, align 8
  %4155 = add i64 %4154, -100
  %4156 = add i64 %3973, 124
  store i64 %4156, i64* %3, align 8
  %4157 = inttoptr i64 %4155 to i32*
  %4158 = load i32, i32* %4157, align 4
  %4159 = sext i32 %4158 to i64
  %4160 = mul nsw i64 %4159, 520
  store i64 %4160, i64* %RCX.i1817, align 8
  %4161 = lshr i64 %4160, 63
  %4162 = add i64 %4160, %4153
  store i64 %4162, i64* %RAX.i1872, align 8
  %4163 = icmp ult i64 %4162, %4153
  %4164 = icmp ult i64 %4162, %4160
  %4165 = or i1 %4163, %4164
  %4166 = zext i1 %4165 to i8
  store i8 %4166, i8* %39, align 1
  %4167 = trunc i64 %4162 to i32
  %4168 = and i32 %4167, 255
  %4169 = tail call i32 @llvm.ctpop.i32(i32 %4168)
  %4170 = trunc i32 %4169 to i8
  %4171 = and i8 %4170, 1
  %4172 = xor i8 %4171, 1
  store i8 %4172, i8* %46, align 1
  %4173 = xor i64 %4160, %4153
  %4174 = xor i64 %4173, %4162
  %4175 = lshr i64 %4174, 4
  %4176 = trunc i64 %4175 to i8
  %4177 = and i8 %4176, 1
  store i8 %4177, i8* %51, align 1
  %4178 = icmp eq i64 %4162, 0
  %4179 = zext i1 %4178 to i8
  store i8 %4179, i8* %54, align 1
  %4180 = lshr i64 %4162, 63
  %4181 = trunc i64 %4180 to i8
  store i8 %4181, i8* %57, align 1
  %4182 = lshr i64 %4153, 63
  %4183 = xor i64 %4180, %4182
  %4184 = xor i64 %4180, %4161
  %4185 = add nuw nsw i64 %4183, %4184
  %4186 = icmp eq i64 %4185, 2
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %63, align 1
  %4188 = add i64 %4154, -104
  %4189 = add i64 %3973, 138
  store i64 %4189, i64* %3, align 8
  %4190 = inttoptr i64 %4188 to i32*
  %4191 = load i32, i32* %4190, align 4
  %4192 = sext i32 %4191 to i64
  store i64 %4192, i64* %RCX.i1817, align 8
  %4193 = shl nsw i64 %4192, 3
  %4194 = add i64 %4193, %4162
  %4195 = add i64 %3973, 143
  store i64 %4195, i64* %3, align 8
  %4196 = inttoptr i64 %4194 to double*
  store double %4149, double* %4196, align 8
  %4197 = load i64, i64* %RBP.i, align 8
  %4198 = add i64 %4197, 72
  %4199 = load i64, i64* %3, align 8
  %4200 = add i64 %4199, 4
  store i64 %4200, i64* %3, align 8
  %4201 = inttoptr i64 %4198 to i64*
  %4202 = load i64, i64* %4201, align 8
  store i64 %4202, i64* %RAX.i1872, align 8
  %4203 = add i64 %4197, -48
  %4204 = add i64 %4199, 8
  store i64 %4204, i64* %3, align 8
  %4205 = inttoptr i64 %4203 to i32*
  %4206 = load i32, i32* %4205, align 4
  %4207 = sext i32 %4206 to i64
  store i64 %4207, i64* %RCX.i1817, align 8
  %4208 = shl nsw i64 %4207, 3
  %4209 = add i64 %4208, %4202
  %4210 = add i64 %4199, 13
  store i64 %4210, i64* %3, align 8
  %4211 = inttoptr i64 %4209 to double*
  %4212 = load double, double* %4211, align 8
  store double %4212, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %4213 = add i64 %4197, 80
  %4214 = add i64 %4199, 17
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i64*
  %4216 = load i64, i64* %4215, align 8
  store i64 %4216, i64* %RAX.i1872, align 8
  %4217 = add i64 %4199, 21
  store i64 %4217, i64* %3, align 8
  %4218 = load i32, i32* %4205, align 4
  %4219 = sext i32 %4218 to i64
  store i64 %4219, i64* %RCX.i1817, align 8
  %4220 = shl nsw i64 %4219, 3
  %4221 = add i64 %4220, %4216
  %4222 = add i64 %4199, 26
  store i64 %4222, i64* %3, align 8
  %4223 = inttoptr i64 %4221 to double*
  %4224 = load double, double* %4223, align 8
  %4225 = fdiv double %4212, %4224
  store double %4225, double* %230, align 1
  store i64 0, i64* %231, align 1
  %4226 = add i64 %4197, 48
  %4227 = add i64 %4199, 30
  store i64 %4227, i64* %3, align 8
  %4228 = inttoptr i64 %4226 to i64*
  %4229 = load i64, i64* %4228, align 8
  store i64 %4229, i64* %RAX.i1872, align 8
  %4230 = add i64 %4197, -100
  %4231 = add i64 %4199, 34
  store i64 %4231, i64* %3, align 8
  %4232 = inttoptr i64 %4230 to i32*
  %4233 = load i32, i32* %4232, align 4
  %4234 = sext i32 %4233 to i64
  %4235 = mul nsw i64 %4234, 33800
  store i64 %4235, i64* %RCX.i1817, align 8
  %4236 = lshr i64 %4235, 63
  %4237 = add i64 %4235, %4229
  store i64 %4237, i64* %RAX.i1872, align 8
  %4238 = icmp ult i64 %4237, %4229
  %4239 = icmp ult i64 %4237, %4235
  %4240 = or i1 %4238, %4239
  %4241 = zext i1 %4240 to i8
  store i8 %4241, i8* %39, align 1
  %4242 = trunc i64 %4237 to i32
  %4243 = and i32 %4242, 255
  %4244 = tail call i32 @llvm.ctpop.i32(i32 %4243)
  %4245 = trunc i32 %4244 to i8
  %4246 = and i8 %4245, 1
  %4247 = xor i8 %4246, 1
  store i8 %4247, i8* %46, align 1
  %4248 = xor i64 %4235, %4229
  %4249 = xor i64 %4248, %4237
  %4250 = lshr i64 %4249, 4
  %4251 = trunc i64 %4250 to i8
  %4252 = and i8 %4251, 1
  store i8 %4252, i8* %51, align 1
  %4253 = icmp eq i64 %4237, 0
  %4254 = zext i1 %4253 to i8
  store i8 %4254, i8* %54, align 1
  %4255 = lshr i64 %4237, 63
  %4256 = trunc i64 %4255 to i8
  store i8 %4256, i8* %57, align 1
  %4257 = lshr i64 %4229, 63
  %4258 = xor i64 %4255, %4257
  %4259 = xor i64 %4255, %4236
  %4260 = add nuw nsw i64 %4258, %4259
  %4261 = icmp eq i64 %4260, 2
  %4262 = zext i1 %4261 to i8
  store i8 %4262, i8* %63, align 1
  %4263 = load i64, i64* %RBP.i, align 8
  %4264 = add i64 %4263, -52
  %4265 = add i64 %4199, 48
  store i64 %4265, i64* %3, align 8
  %4266 = inttoptr i64 %4264 to i32*
  %4267 = load i32, i32* %4266, align 4
  %4268 = sext i32 %4267 to i64
  %4269 = mul nsw i64 %4268, 520
  store i64 %4269, i64* %RCX.i1817, align 8
  %4270 = lshr i64 %4269, 63
  %4271 = add i64 %4269, %4237
  store i64 %4271, i64* %RAX.i1872, align 8
  %4272 = icmp ult i64 %4271, %4237
  %4273 = icmp ult i64 %4271, %4269
  %4274 = or i1 %4272, %4273
  %4275 = zext i1 %4274 to i8
  store i8 %4275, i8* %39, align 1
  %4276 = trunc i64 %4271 to i32
  %4277 = and i32 %4276, 255
  %4278 = tail call i32 @llvm.ctpop.i32(i32 %4277)
  %4279 = trunc i32 %4278 to i8
  %4280 = and i8 %4279, 1
  %4281 = xor i8 %4280, 1
  store i8 %4281, i8* %46, align 1
  %4282 = xor i64 %4269, %4237
  %4283 = xor i64 %4282, %4271
  %4284 = lshr i64 %4283, 4
  %4285 = trunc i64 %4284 to i8
  %4286 = and i8 %4285, 1
  store i8 %4286, i8* %51, align 1
  %4287 = icmp eq i64 %4271, 0
  %4288 = zext i1 %4287 to i8
  store i8 %4288, i8* %54, align 1
  %4289 = lshr i64 %4271, 63
  %4290 = trunc i64 %4289 to i8
  store i8 %4290, i8* %57, align 1
  %4291 = xor i64 %4289, %4255
  %4292 = xor i64 %4289, %4270
  %4293 = add nuw nsw i64 %4291, %4292
  %4294 = icmp eq i64 %4293, 2
  %4295 = zext i1 %4294 to i8
  store i8 %4295, i8* %63, align 1
  %4296 = add i64 %4263, -48
  %4297 = add i64 %4199, 62
  store i64 %4297, i64* %3, align 8
  %4298 = inttoptr i64 %4296 to i32*
  %4299 = load i32, i32* %4298, align 4
  %4300 = sext i32 %4299 to i64
  store i64 %4300, i64* %RCX.i1817, align 8
  %4301 = shl nsw i64 %4300, 3
  %4302 = add i64 %4301, %4271
  %4303 = add i64 %4199, 67
  store i64 %4303, i64* %3, align 8
  %4304 = load double, double* %230, align 1
  %4305 = inttoptr i64 %4302 to double*
  %4306 = load double, double* %4305, align 8
  %4307 = fmul double %4304, %4306
  store double %4307, double* %230, align 1
  %4308 = add i64 %4263, -64
  %4309 = add i64 %4199, 72
  store i64 %4309, i64* %3, align 8
  %4310 = inttoptr i64 %4308 to double*
  %4311 = load double, double* %4310, align 8
  store double %4311, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %4312 = add i64 %4263, 64
  %4313 = add i64 %4199, 76
  store i64 %4313, i64* %3, align 8
  %4314 = inttoptr i64 %4312 to i64*
  %4315 = load i64, i64* %4314, align 8
  store i64 %4315, i64* %RAX.i1872, align 8
  %4316 = add i64 %4263, -100
  %4317 = add i64 %4199, 80
  store i64 %4317, i64* %3, align 8
  %4318 = inttoptr i64 %4316 to i32*
  %4319 = load i32, i32* %4318, align 4
  %4320 = sext i32 %4319 to i64
  store i64 %4320, i64* %RCX.i1817, align 8
  %4321 = shl nsw i64 %4320, 3
  %4322 = add i64 %4321, %4315
  %4323 = add i64 %4199, 85
  store i64 %4323, i64* %3, align 8
  %4324 = inttoptr i64 %4322 to double*
  %4325 = load double, double* %4324, align 8
  %4326 = fmul double %4311, %4325
  store double %4326, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4327 = load i64, i64* %RBP.i, align 8
  %4328 = add i64 %4327, 80
  %4329 = add i64 %4199, 89
  store i64 %4329, i64* %3, align 8
  %4330 = inttoptr i64 %4328 to i64*
  %4331 = load i64, i64* %4330, align 8
  store i64 %4331, i64* %RAX.i1872, align 8
  %4332 = add i64 %4327, -48
  %4333 = add i64 %4199, 93
  store i64 %4333, i64* %3, align 8
  %4334 = inttoptr i64 %4332 to i32*
  %4335 = load i32, i32* %4334, align 4
  %4336 = sext i32 %4335 to i64
  store i64 %4336, i64* %RCX.i1817, align 8
  %4337 = shl nsw i64 %4336, 3
  %4338 = add i64 %4337, %4331
  %4339 = add i64 %4199, 98
  store i64 %4339, i64* %3, align 8
  %4340 = inttoptr i64 %4338 to double*
  %4341 = load double, double* %4340, align 8
  %4342 = fdiv double %4326, %4341
  store double %4342, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4343 = add i64 %4327, 16
  %4344 = add i64 %4199, 102
  store i64 %4344, i64* %3, align 8
  %4345 = inttoptr i64 %4343 to i64*
  %4346 = load i64, i64* %4345, align 8
  store i64 %4346, i64* %RAX.i1872, align 8
  %4347 = add i64 %4327, -100
  %4348 = add i64 %4199, 106
  store i64 %4348, i64* %3, align 8
  %4349 = inttoptr i64 %4347 to i32*
  %4350 = load i32, i32* %4349, align 4
  %4351 = sext i32 %4350 to i64
  %4352 = mul nsw i64 %4351, 520
  store i64 %4352, i64* %RCX.i1817, align 8
  %4353 = lshr i64 %4352, 63
  %4354 = add i64 %4352, %4346
  store i64 %4354, i64* %RAX.i1872, align 8
  %4355 = icmp ult i64 %4354, %4346
  %4356 = icmp ult i64 %4354, %4352
  %4357 = or i1 %4355, %4356
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %39, align 1
  %4359 = trunc i64 %4354 to i32
  %4360 = and i32 %4359, 255
  %4361 = tail call i32 @llvm.ctpop.i32(i32 %4360)
  %4362 = trunc i32 %4361 to i8
  %4363 = and i8 %4362, 1
  %4364 = xor i8 %4363, 1
  store i8 %4364, i8* %46, align 1
  %4365 = xor i64 %4352, %4346
  %4366 = xor i64 %4365, %4354
  %4367 = lshr i64 %4366, 4
  %4368 = trunc i64 %4367 to i8
  %4369 = and i8 %4368, 1
  store i8 %4369, i8* %51, align 1
  %4370 = icmp eq i64 %4354, 0
  %4371 = zext i1 %4370 to i8
  store i8 %4371, i8* %54, align 1
  %4372 = lshr i64 %4354, 63
  %4373 = trunc i64 %4372 to i8
  store i8 %4373, i8* %57, align 1
  %4374 = lshr i64 %4346, 63
  %4375 = xor i64 %4372, %4374
  %4376 = xor i64 %4372, %4353
  %4377 = add nuw nsw i64 %4375, %4376
  %4378 = icmp eq i64 %4377, 2
  %4379 = zext i1 %4378 to i8
  store i8 %4379, i8* %63, align 1
  %4380 = add i64 %4327, -104
  %4381 = add i64 %4199, 120
  store i64 %4381, i64* %3, align 8
  %4382 = inttoptr i64 %4380 to i32*
  %4383 = load i32, i32* %4382, align 4
  %4384 = sext i32 %4383 to i64
  store i64 %4384, i64* %RCX.i1817, align 8
  %4385 = shl nsw i64 %4384, 3
  %4386 = add i64 %4385, %4354
  %4387 = add i64 %4199, 125
  store i64 %4387, i64* %3, align 8
  %4388 = inttoptr i64 %4386 to double*
  %4389 = load double, double* %4388, align 8
  %4390 = fmul double %4342, %4389
  store double %4390, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4391 = load double, double* %230, align 1
  %4392 = fadd double %4391, %4390
  store double %4392, double* %230, align 1
  %4393 = load i64, i64* %RBP.i, align 8
  %4394 = add i64 %4393, -64
  %4395 = add i64 %4199, 134
  store i64 %4395, i64* %3, align 8
  %4396 = inttoptr i64 %4394 to double*
  %4397 = load double, double* %4396, align 8
  store double %4397, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %4398 = add i64 %4393, 56
  %4399 = add i64 %4199, 138
  store i64 %4399, i64* %3, align 8
  %4400 = inttoptr i64 %4398 to i64*
  %4401 = load i64, i64* %4400, align 8
  store i64 %4401, i64* %RAX.i1872, align 8
  %4402 = add i64 %4393, -100
  %4403 = add i64 %4199, 142
  store i64 %4403, i64* %3, align 8
  %4404 = inttoptr i64 %4402 to i32*
  %4405 = load i32, i32* %4404, align 4
  %4406 = sext i32 %4405 to i64
  store i64 %4406, i64* %RCX.i1817, align 8
  %4407 = shl nsw i64 %4406, 3
  %4408 = add i64 %4407, %4401
  %4409 = add i64 %4199, 147
  store i64 %4409, i64* %3, align 8
  %4410 = inttoptr i64 %4408 to double*
  %4411 = load double, double* %4410, align 8
  %4412 = fmul double %4397, %4411
  store double %4412, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4413 = add i64 %4393, 80
  %4414 = add i64 %4199, 151
  store i64 %4414, i64* %3, align 8
  %4415 = inttoptr i64 %4413 to i64*
  %4416 = load i64, i64* %4415, align 8
  store i64 %4416, i64* %RAX.i1872, align 8
  %4417 = add i64 %4393, -48
  %4418 = add i64 %4199, 155
  store i64 %4418, i64* %3, align 8
  %4419 = inttoptr i64 %4417 to i32*
  %4420 = load i32, i32* %4419, align 4
  %4421 = sext i32 %4420 to i64
  store i64 %4421, i64* %RCX.i1817, align 8
  %4422 = shl nsw i64 %4421, 3
  %4423 = add i64 %4422, %4416
  %4424 = add i64 %4199, 160
  store i64 %4424, i64* %3, align 8
  %4425 = inttoptr i64 %4423 to double*
  %4426 = load double, double* %4425, align 8
  %4427 = fdiv double %4412, %4426
  store double %4427, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4428 = add i64 %4393, 24
  %4429 = add i64 %4199, 164
  store i64 %4429, i64* %3, align 8
  %4430 = inttoptr i64 %4428 to i64*
  %4431 = load i64, i64* %4430, align 8
  store i64 %4431, i64* %RAX.i1872, align 8
  %4432 = add i64 %4199, 168
  store i64 %4432, i64* %3, align 8
  %4433 = load i32, i32* %4404, align 4
  %4434 = sext i32 %4433 to i64
  %4435 = mul nsw i64 %4434, 33800
  store i64 %4435, i64* %RCX.i1817, align 8
  %4436 = lshr i64 %4435, 63
  %4437 = add i64 %4435, %4431
  store i64 %4437, i64* %RAX.i1872, align 8
  %4438 = icmp ult i64 %4437, %4431
  %4439 = icmp ult i64 %4437, %4435
  %4440 = or i1 %4438, %4439
  %4441 = zext i1 %4440 to i8
  store i8 %4441, i8* %39, align 1
  %4442 = trunc i64 %4437 to i32
  %4443 = and i32 %4442, 255
  %4444 = tail call i32 @llvm.ctpop.i32(i32 %4443)
  %4445 = trunc i32 %4444 to i8
  %4446 = and i8 %4445, 1
  %4447 = xor i8 %4446, 1
  store i8 %4447, i8* %46, align 1
  %4448 = xor i64 %4435, %4431
  %4449 = xor i64 %4448, %4437
  %4450 = lshr i64 %4449, 4
  %4451 = trunc i64 %4450 to i8
  %4452 = and i8 %4451, 1
  store i8 %4452, i8* %51, align 1
  %4453 = icmp eq i64 %4437, 0
  %4454 = zext i1 %4453 to i8
  store i8 %4454, i8* %54, align 1
  %4455 = lshr i64 %4437, 63
  %4456 = trunc i64 %4455 to i8
  store i8 %4456, i8* %57, align 1
  %4457 = lshr i64 %4431, 63
  %4458 = xor i64 %4455, %4457
  %4459 = xor i64 %4455, %4436
  %4460 = add nuw nsw i64 %4458, %4459
  %4461 = icmp eq i64 %4460, 2
  %4462 = zext i1 %4461 to i8
  store i8 %4462, i8* %63, align 1
  %4463 = load i64, i64* %RBP.i, align 8
  %4464 = add i64 %4463, -52
  %4465 = add i64 %4199, 182
  store i64 %4465, i64* %3, align 8
  %4466 = inttoptr i64 %4464 to i32*
  %4467 = load i32, i32* %4466, align 4
  %4468 = sext i32 %4467 to i64
  %4469 = mul nsw i64 %4468, 520
  store i64 %4469, i64* %RCX.i1817, align 8
  %4470 = lshr i64 %4469, 63
  %4471 = add i64 %4469, %4437
  store i64 %4471, i64* %RAX.i1872, align 8
  %4472 = icmp ult i64 %4471, %4437
  %4473 = icmp ult i64 %4471, %4469
  %4474 = or i1 %4472, %4473
  %4475 = zext i1 %4474 to i8
  store i8 %4475, i8* %39, align 1
  %4476 = trunc i64 %4471 to i32
  %4477 = and i32 %4476, 255
  %4478 = tail call i32 @llvm.ctpop.i32(i32 %4477)
  %4479 = trunc i32 %4478 to i8
  %4480 = and i8 %4479, 1
  %4481 = xor i8 %4480, 1
  store i8 %4481, i8* %46, align 1
  %4482 = xor i64 %4469, %4437
  %4483 = xor i64 %4482, %4471
  %4484 = lshr i64 %4483, 4
  %4485 = trunc i64 %4484 to i8
  %4486 = and i8 %4485, 1
  store i8 %4486, i8* %51, align 1
  %4487 = icmp eq i64 %4471, 0
  %4488 = zext i1 %4487 to i8
  store i8 %4488, i8* %54, align 1
  %4489 = lshr i64 %4471, 63
  %4490 = trunc i64 %4489 to i8
  store i8 %4490, i8* %57, align 1
  %4491 = xor i64 %4489, %4455
  %4492 = xor i64 %4489, %4470
  %4493 = add nuw nsw i64 %4491, %4492
  %4494 = icmp eq i64 %4493, 2
  %4495 = zext i1 %4494 to i8
  store i8 %4495, i8* %63, align 1
  %4496 = add i64 %4463, -48
  %4497 = add i64 %4199, 196
  store i64 %4497, i64* %3, align 8
  %4498 = inttoptr i64 %4496 to i32*
  %4499 = load i32, i32* %4498, align 4
  %4500 = sext i32 %4499 to i64
  store i64 %4500, i64* %RCX.i1817, align 8
  %4501 = shl nsw i64 %4500, 3
  %4502 = add i64 %4501, %4471
  %4503 = add i64 %4199, 201
  store i64 %4503, i64* %3, align 8
  %4504 = load double, double* %233, align 1
  %4505 = inttoptr i64 %4502 to double*
  %4506 = load double, double* %4505, align 8
  %4507 = fmul double %4504, %4506
  store double %4507, double* %233, align 1
  %4508 = load double, double* %230, align 1
  %4509 = fsub double %4508, %4507
  store double %4509, double* %230, align 1
  %4510 = add i64 %4463, 48
  %4511 = add i64 %4199, 209
  store i64 %4511, i64* %3, align 8
  %4512 = inttoptr i64 %4510 to i64*
  %4513 = load i64, i64* %4512, align 8
  store i64 %4513, i64* %RAX.i1872, align 8
  %4514 = add i64 %4463, -100
  %4515 = add i64 %4199, 213
  store i64 %4515, i64* %3, align 8
  %4516 = inttoptr i64 %4514 to i32*
  %4517 = load i32, i32* %4516, align 4
  %4518 = sext i32 %4517 to i64
  %4519 = mul nsw i64 %4518, 33800
  store i64 %4519, i64* %RCX.i1817, align 8
  %4520 = lshr i64 %4519, 63
  %4521 = add i64 %4519, %4513
  store i64 %4521, i64* %RAX.i1872, align 8
  %4522 = icmp ult i64 %4521, %4513
  %4523 = icmp ult i64 %4521, %4519
  %4524 = or i1 %4522, %4523
  %4525 = zext i1 %4524 to i8
  store i8 %4525, i8* %39, align 1
  %4526 = trunc i64 %4521 to i32
  %4527 = and i32 %4526, 255
  %4528 = tail call i32 @llvm.ctpop.i32(i32 %4527)
  %4529 = trunc i32 %4528 to i8
  %4530 = and i8 %4529, 1
  %4531 = xor i8 %4530, 1
  store i8 %4531, i8* %46, align 1
  %4532 = xor i64 %4519, %4513
  %4533 = xor i64 %4532, %4521
  %4534 = lshr i64 %4533, 4
  %4535 = trunc i64 %4534 to i8
  %4536 = and i8 %4535, 1
  store i8 %4536, i8* %51, align 1
  %4537 = icmp eq i64 %4521, 0
  %4538 = zext i1 %4537 to i8
  store i8 %4538, i8* %54, align 1
  %4539 = lshr i64 %4521, 63
  %4540 = trunc i64 %4539 to i8
  store i8 %4540, i8* %57, align 1
  %4541 = lshr i64 %4513, 63
  %4542 = xor i64 %4539, %4541
  %4543 = xor i64 %4539, %4520
  %4544 = add nuw nsw i64 %4542, %4543
  %4545 = icmp eq i64 %4544, 2
  %4546 = zext i1 %4545 to i8
  store i8 %4546, i8* %63, align 1
  %4547 = load i64, i64* %RBP.i, align 8
  %4548 = add i64 %4547, -52
  %4549 = add i64 %4199, 227
  store i64 %4549, i64* %3, align 8
  %4550 = inttoptr i64 %4548 to i32*
  %4551 = load i32, i32* %4550, align 4
  %4552 = sext i32 %4551 to i64
  %4553 = mul nsw i64 %4552, 520
  store i64 %4553, i64* %RCX.i1817, align 8
  %4554 = lshr i64 %4553, 63
  %4555 = add i64 %4553, %4521
  store i64 %4555, i64* %RAX.i1872, align 8
  %4556 = icmp ult i64 %4555, %4521
  %4557 = icmp ult i64 %4555, %4553
  %4558 = or i1 %4556, %4557
  %4559 = zext i1 %4558 to i8
  store i8 %4559, i8* %39, align 1
  %4560 = trunc i64 %4555 to i32
  %4561 = and i32 %4560, 255
  %4562 = tail call i32 @llvm.ctpop.i32(i32 %4561)
  %4563 = trunc i32 %4562 to i8
  %4564 = and i8 %4563, 1
  %4565 = xor i8 %4564, 1
  store i8 %4565, i8* %46, align 1
  %4566 = xor i64 %4553, %4521
  %4567 = xor i64 %4566, %4555
  %4568 = lshr i64 %4567, 4
  %4569 = trunc i64 %4568 to i8
  %4570 = and i8 %4569, 1
  store i8 %4570, i8* %51, align 1
  %4571 = icmp eq i64 %4555, 0
  %4572 = zext i1 %4571 to i8
  store i8 %4572, i8* %54, align 1
  %4573 = lshr i64 %4555, 63
  %4574 = trunc i64 %4573 to i8
  store i8 %4574, i8* %57, align 1
  %4575 = xor i64 %4573, %4539
  %4576 = xor i64 %4573, %4554
  %4577 = add nuw nsw i64 %4575, %4576
  %4578 = icmp eq i64 %4577, 2
  %4579 = zext i1 %4578 to i8
  store i8 %4579, i8* %63, align 1
  %4580 = add i64 %4547, -48
  %4581 = add i64 %4199, 241
  store i64 %4581, i64* %3, align 8
  %4582 = inttoptr i64 %4580 to i32*
  %4583 = load i32, i32* %4582, align 4
  %4584 = sext i32 %4583 to i64
  store i64 %4584, i64* %RCX.i1817, align 8
  %4585 = shl nsw i64 %4584, 3
  %4586 = add i64 %4585, %4555
  %4587 = add i64 %4199, 246
  store i64 %4587, i64* %3, align 8
  %4588 = load i64, i64* %148, align 1
  %4589 = inttoptr i64 %4586 to i64*
  store i64 %4588, i64* %4589, align 8
  %4590 = load i64, i64* %RBP.i, align 8
  %4591 = add i64 %4590, 16
  %4592 = load i64, i64* %3, align 8
  %4593 = add i64 %4592, 4
  store i64 %4593, i64* %3, align 8
  %4594 = inttoptr i64 %4591 to i64*
  %4595 = load i64, i64* %4594, align 8
  store i64 %4595, i64* %RAX.i1872, align 8
  %4596 = add i64 %4590, -100
  %4597 = add i64 %4592, 8
  store i64 %4597, i64* %3, align 8
  %4598 = inttoptr i64 %4596 to i32*
  %4599 = load i32, i32* %4598, align 4
  %4600 = sext i32 %4599 to i64
  %4601 = mul nsw i64 %4600, 520
  store i64 %4601, i64* %RCX.i1817, align 8
  %4602 = lshr i64 %4601, 63
  %4603 = add i64 %4601, %4595
  store i64 %4603, i64* %RAX.i1872, align 8
  %4604 = icmp ult i64 %4603, %4595
  %4605 = icmp ult i64 %4603, %4601
  %4606 = or i1 %4604, %4605
  %4607 = zext i1 %4606 to i8
  store i8 %4607, i8* %39, align 1
  %4608 = trunc i64 %4603 to i32
  %4609 = and i32 %4608, 255
  %4610 = tail call i32 @llvm.ctpop.i32(i32 %4609)
  %4611 = trunc i32 %4610 to i8
  %4612 = and i8 %4611, 1
  %4613 = xor i8 %4612, 1
  store i8 %4613, i8* %46, align 1
  %4614 = xor i64 %4601, %4595
  %4615 = xor i64 %4614, %4603
  %4616 = lshr i64 %4615, 4
  %4617 = trunc i64 %4616 to i8
  %4618 = and i8 %4617, 1
  store i8 %4618, i8* %51, align 1
  %4619 = icmp eq i64 %4603, 0
  %4620 = zext i1 %4619 to i8
  store i8 %4620, i8* %54, align 1
  %4621 = lshr i64 %4603, 63
  %4622 = trunc i64 %4621 to i8
  store i8 %4622, i8* %57, align 1
  %4623 = lshr i64 %4595, 63
  %4624 = xor i64 %4621, %4623
  %4625 = xor i64 %4621, %4602
  %4626 = add nuw nsw i64 %4624, %4625
  %4627 = icmp eq i64 %4626, 2
  %4628 = zext i1 %4627 to i8
  store i8 %4628, i8* %63, align 1
  %4629 = add i64 %4590, -104
  %4630 = add i64 %4592, 22
  store i64 %4630, i64* %3, align 8
  %4631 = inttoptr i64 %4629 to i32*
  %4632 = load i32, i32* %4631, align 4
  %4633 = sext i32 %4632 to i64
  store i64 %4633, i64* %RCX.i1817, align 8
  %4634 = shl nsw i64 %4633, 3
  %4635 = add i64 %4634, %4603
  %4636 = add i64 %4592, 27
  store i64 %4636, i64* %3, align 8
  %4637 = inttoptr i64 %4635 to i64*
  %4638 = load i64, i64* %4637, align 8
  store i64 %4638, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %4639 = add i64 %4590, 24
  %4640 = add i64 %4592, 31
  store i64 %4640, i64* %3, align 8
  %4641 = inttoptr i64 %4639 to i64*
  %4642 = load i64, i64* %4641, align 8
  store i64 %4642, i64* %RAX.i1872, align 8
  %4643 = add i64 %4592, 35
  store i64 %4643, i64* %3, align 8
  %4644 = load i32, i32* %4598, align 4
  %4645 = sext i32 %4644 to i64
  %4646 = mul nsw i64 %4645, 33800
  store i64 %4646, i64* %RCX.i1817, align 8
  %4647 = lshr i64 %4646, 63
  %4648 = add i64 %4646, %4642
  store i64 %4648, i64* %RAX.i1872, align 8
  %4649 = icmp ult i64 %4648, %4642
  %4650 = icmp ult i64 %4648, %4646
  %4651 = or i1 %4649, %4650
  %4652 = zext i1 %4651 to i8
  store i8 %4652, i8* %39, align 1
  %4653 = trunc i64 %4648 to i32
  %4654 = and i32 %4653, 255
  %4655 = tail call i32 @llvm.ctpop.i32(i32 %4654)
  %4656 = trunc i32 %4655 to i8
  %4657 = and i8 %4656, 1
  %4658 = xor i8 %4657, 1
  store i8 %4658, i8* %46, align 1
  %4659 = xor i64 %4646, %4642
  %4660 = xor i64 %4659, %4648
  %4661 = lshr i64 %4660, 4
  %4662 = trunc i64 %4661 to i8
  %4663 = and i8 %4662, 1
  store i8 %4663, i8* %51, align 1
  %4664 = icmp eq i64 %4648, 0
  %4665 = zext i1 %4664 to i8
  store i8 %4665, i8* %54, align 1
  %4666 = lshr i64 %4648, 63
  %4667 = trunc i64 %4666 to i8
  store i8 %4667, i8* %57, align 1
  %4668 = lshr i64 %4642, 63
  %4669 = xor i64 %4666, %4668
  %4670 = xor i64 %4666, %4647
  %4671 = add nuw nsw i64 %4669, %4670
  %4672 = icmp eq i64 %4671, 2
  %4673 = zext i1 %4672 to i8
  store i8 %4673, i8* %63, align 1
  %4674 = load i64, i64* %RBP.i, align 8
  %4675 = add i64 %4674, -52
  %4676 = add i64 %4592, 49
  store i64 %4676, i64* %3, align 8
  %4677 = inttoptr i64 %4675 to i32*
  %4678 = load i32, i32* %4677, align 4
  %4679 = sext i32 %4678 to i64
  %4680 = mul nsw i64 %4679, 520
  store i64 %4680, i64* %RCX.i1817, align 8
  %4681 = lshr i64 %4680, 63
  %4682 = add i64 %4680, %4648
  store i64 %4682, i64* %RAX.i1872, align 8
  %4683 = icmp ult i64 %4682, %4648
  %4684 = icmp ult i64 %4682, %4680
  %4685 = or i1 %4683, %4684
  %4686 = zext i1 %4685 to i8
  store i8 %4686, i8* %39, align 1
  %4687 = trunc i64 %4682 to i32
  %4688 = and i32 %4687, 255
  %4689 = tail call i32 @llvm.ctpop.i32(i32 %4688)
  %4690 = trunc i32 %4689 to i8
  %4691 = and i8 %4690, 1
  %4692 = xor i8 %4691, 1
  store i8 %4692, i8* %46, align 1
  %4693 = xor i64 %4680, %4648
  %4694 = xor i64 %4693, %4682
  %4695 = lshr i64 %4694, 4
  %4696 = trunc i64 %4695 to i8
  %4697 = and i8 %4696, 1
  store i8 %4697, i8* %51, align 1
  %4698 = icmp eq i64 %4682, 0
  %4699 = zext i1 %4698 to i8
  store i8 %4699, i8* %54, align 1
  %4700 = lshr i64 %4682, 63
  %4701 = trunc i64 %4700 to i8
  store i8 %4701, i8* %57, align 1
  %4702 = xor i64 %4700, %4666
  %4703 = xor i64 %4700, %4681
  %4704 = add nuw nsw i64 %4702, %4703
  %4705 = icmp eq i64 %4704, 2
  %4706 = zext i1 %4705 to i8
  store i8 %4706, i8* %63, align 1
  %4707 = add i64 %4674, -48
  %4708 = add i64 %4592, 63
  store i64 %4708, i64* %3, align 8
  %4709 = inttoptr i64 %4707 to i32*
  %4710 = load i32, i32* %4709, align 4
  %4711 = sext i32 %4710 to i64
  store i64 %4711, i64* %RCX.i1817, align 8
  %4712 = shl nsw i64 %4711, 3
  %4713 = add i64 %4712, %4682
  %4714 = add i64 %4592, 68
  store i64 %4714, i64* %3, align 8
  %4715 = load i64, i64* %148, align 1
  %4716 = inttoptr i64 %4713 to i64*
  store i64 %4715, i64* %4716, align 8
  %4717 = load i64, i64* %RBP.i, align 8
  %4718 = add i64 %4717, -104
  %4719 = load i64, i64* %3, align 8
  %4720 = add i64 %4719, 3
  store i64 %4720, i64* %3, align 8
  %4721 = inttoptr i64 %4718 to i32*
  %4722 = load i32, i32* %4721, align 4
  %4723 = add i32 %4722, 1
  %4724 = zext i32 %4723 to i64
  store i64 %4724, i64* %RAX.i1872, align 8
  %4725 = icmp eq i32 %4722, -1
  %4726 = icmp eq i32 %4723, 0
  %4727 = or i1 %4725, %4726
  %4728 = zext i1 %4727 to i8
  store i8 %4728, i8* %39, align 1
  %4729 = and i32 %4723, 255
  %4730 = tail call i32 @llvm.ctpop.i32(i32 %4729)
  %4731 = trunc i32 %4730 to i8
  %4732 = and i8 %4731, 1
  %4733 = xor i8 %4732, 1
  store i8 %4733, i8* %46, align 1
  %4734 = xor i32 %4722, %4723
  %4735 = lshr i32 %4734, 4
  %4736 = trunc i32 %4735 to i8
  %4737 = and i8 %4736, 1
  store i8 %4737, i8* %51, align 1
  %4738 = zext i1 %4726 to i8
  store i8 %4738, i8* %54, align 1
  %4739 = lshr i32 %4723, 31
  %4740 = trunc i32 %4739 to i8
  store i8 %4740, i8* %57, align 1
  %4741 = lshr i32 %4722, 31
  %4742 = xor i32 %4739, %4741
  %4743 = add nuw nsw i32 %4742, %4739
  %4744 = icmp eq i32 %4743, 2
  %4745 = zext i1 %4744 to i8
  store i8 %4745, i8* %63, align 1
  %4746 = add i64 %4719, 9
  store i64 %4746, i64* %3, align 8
  store i32 %4723, i32* %4721, align 4
  %4747 = load i64, i64* %3, align 8
  %4748 = add i64 %4747, -2643
  store i64 %4748, i64* %3, align 8
  br label %block_.L_401fcd

block_.L_402a25:                                  ; preds = %block_.L_401fcd
  %4749 = add i64 %278, -100
  %4750 = add i64 %314, 8
  store i64 %4750, i64* %3, align 8
  %4751 = inttoptr i64 %4749 to i32*
  %4752 = load i32, i32* %4751, align 4
  %4753 = add i32 %4752, 1
  %4754 = zext i32 %4753 to i64
  store i64 %4754, i64* %RAX.i1872, align 8
  %4755 = icmp eq i32 %4752, -1
  %4756 = icmp eq i32 %4753, 0
  %4757 = or i1 %4755, %4756
  %4758 = zext i1 %4757 to i8
  store i8 %4758, i8* %39, align 1
  %4759 = and i32 %4753, 255
  %4760 = tail call i32 @llvm.ctpop.i32(i32 %4759)
  %4761 = trunc i32 %4760 to i8
  %4762 = and i8 %4761, 1
  %4763 = xor i8 %4762, 1
  store i8 %4763, i8* %46, align 1
  %4764 = xor i32 %4752, %4753
  %4765 = lshr i32 %4764, 4
  %4766 = trunc i32 %4765 to i8
  %4767 = and i8 %4766, 1
  store i8 %4767, i8* %51, align 1
  %4768 = zext i1 %4756 to i8
  store i8 %4768, i8* %54, align 1
  %4769 = lshr i32 %4753, 31
  %4770 = trunc i32 %4769 to i8
  store i8 %4770, i8* %57, align 1
  %4771 = lshr i32 %4752, 31
  %4772 = xor i32 %4769, %4771
  %4773 = add nuw nsw i32 %4772, %4769
  %4774 = icmp eq i32 %4773, 2
  %4775 = zext i1 %4774 to i8
  store i8 %4775, i8* %63, align 1
  %4776 = add i64 %314, 14
  store i64 %4776, i64* %3, align 8
  store i32 %4753, i32* %4751, align 4
  %4777 = load i64, i64* %3, align 8
  %4778 = add i64 %4777, -2681
  store i64 %4778, i64* %3, align 8
  br label %block_.L_401fba

block_.L_402a38:                                  ; preds = %block_.L_401fba
  %4779 = load i64, i64* %6, align 8
  %4780 = add i64 %4779, 32
  store i64 %4780, i64* %6, align 8
  %4781 = icmp ugt i64 %4779, -33
  %4782 = zext i1 %4781 to i8
  store i8 %4782, i8* %39, align 1
  %4783 = trunc i64 %4780 to i32
  %4784 = and i32 %4783, 255
  %4785 = tail call i32 @llvm.ctpop.i32(i32 %4784)
  %4786 = trunc i32 %4785 to i8
  %4787 = and i8 %4786, 1
  %4788 = xor i8 %4787, 1
  store i8 %4788, i8* %46, align 1
  %4789 = xor i64 %4779, %4780
  %4790 = lshr i64 %4789, 4
  %4791 = trunc i64 %4790 to i8
  %4792 = and i8 %4791, 1
  store i8 %4792, i8* %51, align 1
  %4793 = icmp eq i64 %4780, 0
  %4794 = zext i1 %4793 to i8
  store i8 %4794, i8* %54, align 1
  %4795 = lshr i64 %4780, 63
  %4796 = trunc i64 %4795 to i8
  store i8 %4796, i8* %57, align 1
  %4797 = lshr i64 %4779, 63
  %4798 = xor i64 %4795, %4797
  %4799 = add nuw nsw i64 %4798, %4795
  %4800 = icmp eq i64 %4799, 2
  %4801 = zext i1 %4800 to i8
  store i8 %4801, i8* %63, align 1
  %4802 = add i64 %273, 5
  store i64 %4802, i64* %3, align 8
  %4803 = add i64 %4779, 40
  %4804 = inttoptr i64 %4780 to i64*
  %4805 = load i64, i64* %4804, align 8
  store i64 %4805, i64* %RBX.i1877, align 8
  store i64 %4803, i64* %6, align 8
  %4806 = add i64 %273, 7
  store i64 %4806, i64* %3, align 8
  %4807 = add i64 %4779, 48
  %4808 = inttoptr i64 %4803 to i64*
  %4809 = load i64, i64* %4808, align 8
  store i64 %4809, i64* %R12.i1879, align 8
  store i64 %4807, i64* %6, align 8
  %4810 = add i64 %273, 9
  store i64 %4810, i64* %3, align 8
  %4811 = add i64 %4779, 56
  %4812 = inttoptr i64 %4807 to i64*
  %4813 = load i64, i64* %4812, align 8
  store i64 %4813, i64* %R13.i1881, align 8
  store i64 %4811, i64* %6, align 8
  %4814 = add i64 %273, 11
  store i64 %4814, i64* %3, align 8
  %4815 = add i64 %4779, 64
  %4816 = inttoptr i64 %4811 to i64*
  %4817 = load i64, i64* %4816, align 8
  store i64 %4817, i64* %R14.i1883, align 8
  store i64 %4815, i64* %6, align 8
  %4818 = add i64 %273, 13
  store i64 %4818, i64* %3, align 8
  %4819 = add i64 %4779, 72
  %4820 = inttoptr i64 %4815 to i64*
  %4821 = load i64, i64* %4820, align 8
  store i64 %4821, i64* %R15.i1885, align 8
  store i64 %4819, i64* %6, align 8
  %4822 = add i64 %273, 14
  store i64 %4822, i64* %3, align 8
  %4823 = add i64 %4779, 80
  %4824 = inttoptr i64 %4819 to i64*
  %4825 = load i64, i64* %4824, align 8
  store i64 %4825, i64* %RBP.i, align 8
  store i64 %4823, i64* %6, align 8
  %4826 = add i64 %273, 15
  store i64 %4826, i64* %3, align 8
  %4827 = inttoptr i64 %4823 to i64*
  %4828 = load i64, i64* %4827, align 8
  store i64 %4828, i64* %3, align 8
  %4829 = add i64 %4779, 88
  store i64 %4829, i64* %6, align 8
  ret %struct.Memory* %2
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

define %struct.Memory* @routine_pushq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
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

define %struct.Memory* @routine_pushq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_pushq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
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

define %struct.Memory* @routine_pushq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
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

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x58__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x50__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x48__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x40__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x38__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r13__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %R13, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r12__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %R12, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
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

define %struct.Memory* @routine_jge_.L_402a38(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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

define %struct.Memory* @routine_jge_.L_402a25(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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

define %struct.Memory* @routine_jge_.L_40228c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %10 = mul nsw i128 %9, 33800
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

define %struct.Memory* @routine_addq__rcx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %10 = mul nsw i128 %9, 520
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

define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x28__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fdiv double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 3
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = inttoptr i64 %7 to double*
  %13 = load double, double* %12, align 8
  %14 = fdiv double %11, %13
  store double %14, double* %10, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

define %struct.Memory* @routine_movq_0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x38__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401fe0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4027ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_402512(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401fcd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402a2a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_401fba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_popq__r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R12, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R13, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_popq__r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_popq__r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
