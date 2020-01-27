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
define %struct.Memory* @kernel_fdtd_apml(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  br label %block_.L_40147a

block_.L_40147a:                                  ; preds = %block_.L_401ee5, %entry
  %236 = phi i64 [ %4658, %block_.L_401ee5 ], [ %.pre, %entry ]
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
  br i1 %272, label %block_401486, label %block_.L_401ef8

block_401486:                                     ; preds = %block_.L_40147a
  %274 = add i64 %237, -104
  %275 = add i64 %273, 7
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i32*
  store i32 0, i32* %276, align 4
  %.pre1 = load i64, i64* %3, align 8
  br label %block_.L_40148d

block_.L_40148d:                                  ; preds = %block_.L_401c6b, %block_401486
  %277 = phi i64 [ %4628, %block_.L_401c6b ], [ %.pre1, %block_401486 ]
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
  br i1 %313, label %block_401499, label %block_.L_401ee5

block_401499:                                     ; preds = %block_.L_40148d
  %315 = add i64 %278, -108
  %316 = add i64 %314, 7
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  store i32 0, i32* %317, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_4014a0

block_.L_4014a0:                                  ; preds = %block_4014ac, %block_401499
  %318 = phi i64 [ %1503, %block_4014ac ], [ %.pre2, %block_401499 ]
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
  br i1 %354, label %block_4014ac, label %block_.L_40174c

block_4014ac:                                     ; preds = %block_.L_4014a0
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
  %483 = add i64 %481, %448
  store i64 %483, i64* %RAX.i1872, align 8
  %484 = icmp ult i64 %483, %448
  %485 = icmp ult i64 %483, %481
  %486 = or i1 %484, %485
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %39, align 1
  %488 = trunc i64 %483 to i32
  %489 = and i32 %488, 255
  %490 = tail call i32 @llvm.ctpop.i32(i32 %489)
  %491 = trunc i32 %490 to i8
  %492 = and i8 %491, 1
  %493 = xor i8 %492, 1
  store i8 %493, i8* %46, align 1
  %494 = xor i64 %481, %448
  %495 = xor i64 %494, %483
  %496 = lshr i64 %495, 4
  %497 = trunc i64 %496 to i8
  %498 = and i8 %497, 1
  store i8 %498, i8* %51, align 1
  %499 = icmp eq i64 %483, 0
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %54, align 1
  %501 = lshr i64 %483, 63
  %502 = trunc i64 %501 to i8
  store i8 %502, i8* %57, align 1
  %503 = xor i64 %501, %466
  %504 = xor i64 %501, %482
  %505 = add nuw nsw i64 %503, %504
  %506 = icmp eq i64 %505, 2
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %63, align 1
  %508 = load i64, i64* %RBP.i, align 8
  %509 = add i64 %508, -108
  %510 = add i64 %355, 82
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sext i32 %512 to i64
  store i64 %513, i64* %RCX.i1817, align 8
  %514 = shl nsw i64 %513, 3
  %515 = add i64 %514, %483
  %516 = add i64 %355, 87
  store i64 %516, i64* %3, align 8
  %517 = load double, double* %230, align 1
  %518 = inttoptr i64 %515 to double*
  %519 = load double, double* %518, align 8
  %520 = fsub double %517, %519
  store double %520, double* %230, align 1
  %521 = add i64 %508, 40
  %522 = add i64 %355, 91
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i64*
  %524 = load i64, i64* %523, align 8
  store i64 %524, i64* %RAX.i1872, align 8
  %525 = add i64 %508, -100
  %526 = add i64 %355, 95
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to i32*
  %528 = load i32, i32* %527, align 4
  %529 = sext i32 %528 to i64
  %530 = mul nsw i64 %529, 33800
  store i64 %530, i64* %RCX.i1817, align 8
  %531 = lshr i64 %530, 63
  %532 = add i64 %530, %524
  store i64 %532, i64* %RAX.i1872, align 8
  %533 = icmp ult i64 %532, %524
  %534 = icmp ult i64 %532, %530
  %535 = or i1 %533, %534
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %39, align 1
  %537 = trunc i64 %532 to i32
  %538 = and i32 %537, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %46, align 1
  %543 = xor i64 %530, %524
  %544 = xor i64 %543, %532
  %545 = lshr i64 %544, 4
  %546 = trunc i64 %545 to i8
  %547 = and i8 %546, 1
  store i8 %547, i8* %51, align 1
  %548 = icmp eq i64 %532, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %54, align 1
  %550 = lshr i64 %532, 63
  %551 = trunc i64 %550 to i8
  store i8 %551, i8* %57, align 1
  %552 = lshr i64 %524, 63
  %553 = xor i64 %550, %552
  %554 = xor i64 %550, %531
  %555 = add nuw nsw i64 %553, %554
  %556 = icmp eq i64 %555, 2
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %63, align 1
  %558 = add i64 %508, -104
  %559 = add i64 %355, 109
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i32*
  %561 = load i32, i32* %560, align 4
  %562 = sext i32 %561 to i64
  %563 = mul nsw i64 %562, 520
  store i64 %563, i64* %RCX.i1817, align 8
  %564 = lshr i64 %563, 63
  %565 = add i64 %563, %532
  store i64 %565, i64* %RAX.i1872, align 8
  %566 = icmp ult i64 %565, %532
  %567 = icmp ult i64 %565, %563
  %568 = or i1 %566, %567
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %39, align 1
  %570 = trunc i64 %565 to i32
  %571 = and i32 %570, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %46, align 1
  %576 = xor i64 %563, %532
  %577 = xor i64 %576, %565
  %578 = lshr i64 %577, 4
  %579 = trunc i64 %578 to i8
  %580 = and i8 %579, 1
  store i8 %580, i8* %51, align 1
  %581 = icmp eq i64 %565, 0
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %54, align 1
  %583 = lshr i64 %565, 63
  %584 = trunc i64 %583 to i8
  store i8 %584, i8* %57, align 1
  %585 = xor i64 %583, %550
  %586 = xor i64 %583, %564
  %587 = add nuw nsw i64 %585, %586
  %588 = icmp eq i64 %587, 2
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %63, align 1
  %590 = load i64, i64* %RBP.i, align 8
  %591 = add i64 %590, -108
  %592 = add i64 %355, 122
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %591 to i32*
  %594 = load i32, i32* %593, align 4
  %595 = add i32 %594, 1
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RDX.i1724, align 8
  %597 = icmp eq i32 %594, -1
  %598 = icmp eq i32 %595, 0
  %599 = or i1 %597, %598
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %39, align 1
  %601 = and i32 %595, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601)
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %46, align 1
  %606 = xor i32 %594, %595
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %51, align 1
  %610 = zext i1 %598 to i8
  store i8 %610, i8* %54, align 1
  %611 = lshr i32 %595, 31
  %612 = trunc i32 %611 to i8
  store i8 %612, i8* %57, align 1
  %613 = lshr i32 %594, 31
  %614 = xor i32 %611, %613
  %615 = add nuw nsw i32 %614, %611
  %616 = icmp eq i32 %615, 2
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %63, align 1
  %618 = sext i32 %595 to i64
  store i64 %618, i64* %RCX.i1817, align 8
  %619 = shl nsw i64 %618, 3
  %620 = add i64 %619, %565
  %621 = add i64 %355, 133
  store i64 %621, i64* %3, align 8
  %622 = load double, double* %230, align 1
  %623 = inttoptr i64 %620 to double*
  %624 = load double, double* %623, align 8
  %625 = fadd double %622, %624
  store double %625, double* %230, align 1
  %626 = add i64 %590, 40
  %627 = add i64 %355, 137
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %626 to i64*
  %629 = load i64, i64* %628, align 8
  store i64 %629, i64* %RAX.i1872, align 8
  %630 = add i64 %590, -100
  %631 = add i64 %355, 141
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i32*
  %633 = load i32, i32* %632, align 4
  %634 = sext i32 %633 to i64
  %635 = mul nsw i64 %634, 33800
  store i64 %635, i64* %RCX.i1817, align 8
  %636 = lshr i64 %635, 63
  %637 = add i64 %635, %629
  store i64 %637, i64* %RAX.i1872, align 8
  %638 = icmp ult i64 %637, %629
  %639 = icmp ult i64 %637, %635
  %640 = or i1 %638, %639
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %39, align 1
  %642 = trunc i64 %637 to i32
  %643 = and i32 %642, 255
  %644 = tail call i32 @llvm.ctpop.i32(i32 %643)
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  %647 = xor i8 %646, 1
  store i8 %647, i8* %46, align 1
  %648 = xor i64 %635, %629
  %649 = xor i64 %648, %637
  %650 = lshr i64 %649, 4
  %651 = trunc i64 %650 to i8
  %652 = and i8 %651, 1
  store i8 %652, i8* %51, align 1
  %653 = icmp eq i64 %637, 0
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %54, align 1
  %655 = lshr i64 %637, 63
  %656 = trunc i64 %655 to i8
  store i8 %656, i8* %57, align 1
  %657 = lshr i64 %629, 63
  %658 = xor i64 %655, %657
  %659 = xor i64 %655, %636
  %660 = add nuw nsw i64 %658, %659
  %661 = icmp eq i64 %660, 2
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %63, align 1
  %663 = add i64 %590, -104
  %664 = add i64 %355, 155
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = sext i32 %666 to i64
  %668 = mul nsw i64 %667, 520
  store i64 %668, i64* %RCX.i1817, align 8
  %669 = lshr i64 %668, 63
  %670 = add i64 %668, %637
  store i64 %670, i64* %RAX.i1872, align 8
  %671 = icmp ult i64 %670, %637
  %672 = icmp ult i64 %670, %668
  %673 = or i1 %671, %672
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %39, align 1
  %675 = trunc i64 %670 to i32
  %676 = and i32 %675, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %46, align 1
  %681 = xor i64 %668, %637
  %682 = xor i64 %681, %670
  %683 = lshr i64 %682, 4
  %684 = trunc i64 %683 to i8
  %685 = and i8 %684, 1
  store i8 %685, i8* %51, align 1
  %686 = icmp eq i64 %670, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %54, align 1
  %688 = lshr i64 %670, 63
  %689 = trunc i64 %688 to i8
  store i8 %689, i8* %57, align 1
  %690 = xor i64 %688, %655
  %691 = xor i64 %688, %669
  %692 = add nuw nsw i64 %690, %691
  %693 = icmp eq i64 %692, 2
  %694 = zext i1 %693 to i8
  store i8 %694, i8* %63, align 1
  %695 = add i64 %355, 169
  store i64 %695, i64* %3, align 8
  %696 = load i32, i32* %593, align 4
  %697 = sext i32 %696 to i64
  store i64 %697, i64* %RCX.i1817, align 8
  %698 = shl nsw i64 %697, 3
  %699 = add i64 %698, %670
  %700 = add i64 %355, 174
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %699 to double*
  %702 = load double, double* %701, align 8
  %703 = fsub double %625, %702
  store double %703, double* %230, align 1
  %704 = add i64 %590, -96
  %705 = add i64 %355, 178
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i64*
  %707 = load i64, i64* %706, align 8
  store i64 %707, i64* %RAX.i1872, align 8
  %708 = add i64 %355, 182
  store i64 %708, i64* %3, align 8
  %709 = load i32, i32* %632, align 4
  %710 = sext i32 %709 to i64
  %711 = mul nsw i64 %710, 520
  store i64 %711, i64* %RCX.i1817, align 8
  %712 = lshr i64 %711, 63
  %713 = add i64 %711, %707
  store i64 %713, i64* %RAX.i1872, align 8
  %714 = icmp ult i64 %713, %707
  %715 = icmp ult i64 %713, %711
  %716 = or i1 %714, %715
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %39, align 1
  %718 = trunc i64 %713 to i32
  %719 = and i32 %718, 255
  %720 = tail call i32 @llvm.ctpop.i32(i32 %719)
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  store i8 %723, i8* %46, align 1
  %724 = xor i64 %711, %707
  %725 = xor i64 %724, %713
  %726 = lshr i64 %725, 4
  %727 = trunc i64 %726 to i8
  %728 = and i8 %727, 1
  store i8 %728, i8* %51, align 1
  %729 = icmp eq i64 %713, 0
  %730 = zext i1 %729 to i8
  store i8 %730, i8* %54, align 1
  %731 = lshr i64 %713, 63
  %732 = trunc i64 %731 to i8
  store i8 %732, i8* %57, align 1
  %733 = lshr i64 %707, 63
  %734 = xor i64 %731, %733
  %735 = xor i64 %731, %712
  %736 = add nuw nsw i64 %734, %735
  %737 = icmp eq i64 %736, 2
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %63, align 1
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -104
  %741 = add i64 %355, 196
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = sext i32 %743 to i64
  store i64 %744, i64* %RCX.i1817, align 8
  %745 = shl nsw i64 %744, 3
  %746 = add i64 %745, %713
  %747 = add i64 %355, 201
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to double*
  store double %703, double* %748, align 8
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, 88
  %751 = load i64, i64* %3, align 8
  %752 = add i64 %751, 4
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %750 to i64*
  %754 = load i64, i64* %753, align 8
  store i64 %754, i64* %RAX.i1872, align 8
  %755 = add i64 %749, -104
  %756 = add i64 %751, 8
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = sext i32 %758 to i64
  store i64 %759, i64* %RCX.i1817, align 8
  %760 = shl nsw i64 %759, 3
  %761 = add i64 %760, %754
  %762 = add i64 %751, 13
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to double*
  %764 = load double, double* %763, align 8
  store double %764, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %765 = add i64 %749, 96
  %766 = add i64 %751, 17
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RAX.i1872, align 8
  %769 = add i64 %751, 21
  store i64 %769, i64* %3, align 8
  %770 = load i32, i32* %757, align 4
  %771 = sext i32 %770 to i64
  store i64 %771, i64* %RCX.i1817, align 8
  %772 = shl nsw i64 %771, 3
  %773 = add i64 %772, %768
  %774 = add i64 %751, 26
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to double*
  %776 = load double, double* %775, align 8
  %777 = fdiv double %764, %776
  store double %777, double* %230, align 1
  store i64 0, i64* %231, align 1
  %778 = add i64 %749, 24
  %779 = add i64 %751, 30
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i64*
  %781 = load i64, i64* %780, align 8
  store i64 %781, i64* %RAX.i1872, align 8
  %782 = add i64 %749, -100
  %783 = add i64 %751, 34
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = sext i32 %785 to i64
  %787 = mul nsw i64 %786, 33800
  store i64 %787, i64* %RCX.i1817, align 8
  %788 = lshr i64 %787, 63
  %789 = add i64 %787, %781
  store i64 %789, i64* %RAX.i1872, align 8
  %790 = icmp ult i64 %789, %781
  %791 = icmp ult i64 %789, %787
  %792 = or i1 %790, %791
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %39, align 1
  %794 = trunc i64 %789 to i32
  %795 = and i32 %794, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %46, align 1
  %800 = xor i64 %787, %781
  %801 = xor i64 %800, %789
  %802 = lshr i64 %801, 4
  %803 = trunc i64 %802 to i8
  %804 = and i8 %803, 1
  store i8 %804, i8* %51, align 1
  %805 = icmp eq i64 %789, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %54, align 1
  %807 = lshr i64 %789, 63
  %808 = trunc i64 %807 to i8
  store i8 %808, i8* %57, align 1
  %809 = lshr i64 %781, 63
  %810 = xor i64 %807, %809
  %811 = xor i64 %807, %788
  %812 = add nuw nsw i64 %810, %811
  %813 = icmp eq i64 %812, 2
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %63, align 1
  %815 = add i64 %751, 48
  store i64 %815, i64* %3, align 8
  %816 = load i32, i32* %757, align 4
  %817 = sext i32 %816 to i64
  %818 = mul nsw i64 %817, 520
  store i64 %818, i64* %RCX.i1817, align 8
  %819 = lshr i64 %818, 63
  %820 = add i64 %818, %789
  store i64 %820, i64* %RAX.i1872, align 8
  %821 = icmp ult i64 %820, %789
  %822 = icmp ult i64 %820, %818
  %823 = or i1 %821, %822
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %39, align 1
  %825 = trunc i64 %820 to i32
  %826 = and i32 %825, 255
  %827 = tail call i32 @llvm.ctpop.i32(i32 %826)
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  %830 = xor i8 %829, 1
  store i8 %830, i8* %46, align 1
  %831 = xor i64 %818, %789
  %832 = xor i64 %831, %820
  %833 = lshr i64 %832, 4
  %834 = trunc i64 %833 to i8
  %835 = and i8 %834, 1
  store i8 %835, i8* %51, align 1
  %836 = icmp eq i64 %820, 0
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %54, align 1
  %838 = lshr i64 %820, 63
  %839 = trunc i64 %838 to i8
  store i8 %839, i8* %57, align 1
  %840 = xor i64 %838, %807
  %841 = xor i64 %838, %819
  %842 = add nuw nsw i64 %840, %841
  %843 = icmp eq i64 %842, 2
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %63, align 1
  %845 = add i64 %749, -108
  %846 = add i64 %751, 62
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = sext i32 %848 to i64
  store i64 %849, i64* %RCX.i1817, align 8
  %850 = shl nsw i64 %849, 3
  %851 = add i64 %850, %820
  %852 = add i64 %751, 67
  store i64 %852, i64* %3, align 8
  %853 = load double, double* %230, align 1
  %854 = inttoptr i64 %851 to double*
  %855 = load double, double* %854, align 8
  %856 = fmul double %853, %855
  store double %856, double* %230, align 1
  %857 = add i64 %749, -72
  %858 = add i64 %751, 72
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to double*
  %860 = load double, double* %859, align 8
  store double %860, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %861 = add i64 %751, 76
  store i64 %861, i64* %3, align 8
  %862 = load i64, i64* %767, align 8
  store i64 %862, i64* %RAX.i1872, align 8
  %863 = add i64 %751, 80
  store i64 %863, i64* %3, align 8
  %864 = load i32, i32* %757, align 4
  %865 = sext i32 %864 to i64
  store i64 %865, i64* %RCX.i1817, align 8
  %866 = shl nsw i64 %865, 3
  %867 = add i64 %866, %862
  %868 = add i64 %751, 85
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to double*
  %870 = load double, double* %869, align 8
  %871 = fdiv double %860, %870
  store double %871, double* %233, align 1
  store i64 0, i64* %234, align 1
  %872 = load i64, i64* %RBP.i, align 8
  %873 = add i64 %872, -96
  %874 = add i64 %751, 89
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i64*
  %876 = load i64, i64* %875, align 8
  store i64 %876, i64* %RAX.i1872, align 8
  %877 = add i64 %872, -100
  %878 = add i64 %751, 93
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = sext i32 %880 to i64
  %882 = mul nsw i64 %881, 520
  store i64 %882, i64* %RCX.i1817, align 8
  %883 = lshr i64 %882, 63
  %884 = add i64 %882, %876
  store i64 %884, i64* %RAX.i1872, align 8
  %885 = icmp ult i64 %884, %876
  %886 = icmp ult i64 %884, %882
  %887 = or i1 %885, %886
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %39, align 1
  %889 = trunc i64 %884 to i32
  %890 = and i32 %889, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %46, align 1
  %895 = xor i64 %882, %876
  %896 = xor i64 %895, %884
  %897 = lshr i64 %896, 4
  %898 = trunc i64 %897 to i8
  %899 = and i8 %898, 1
  store i8 %899, i8* %51, align 1
  %900 = icmp eq i64 %884, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %54, align 1
  %902 = lshr i64 %884, 63
  %903 = trunc i64 %902 to i8
  store i8 %903, i8* %57, align 1
  %904 = lshr i64 %876, 63
  %905 = xor i64 %902, %904
  %906 = xor i64 %902, %883
  %907 = add nuw nsw i64 %905, %906
  %908 = icmp eq i64 %907, 2
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %63, align 1
  %910 = add i64 %872, -104
  %911 = add i64 %751, 107
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = sext i32 %913 to i64
  store i64 %914, i64* %RCX.i1817, align 8
  %915 = shl nsw i64 %914, 3
  %916 = add i64 %915, %884
  %917 = add i64 %751, 112
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %916 to double*
  %919 = load double, double* %918, align 8
  %920 = fmul double %871, %919
  store double %920, double* %233, align 1
  store i64 0, i64* %234, align 1
  %921 = fsub double %856, %920
  store double %921, double* %230, align 1
  %922 = add i64 %872, 16
  %923 = add i64 %751, 120
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i64*
  %925 = load i64, i64* %924, align 8
  store i64 %925, i64* %RAX.i1872, align 8
  %926 = add i64 %751, 124
  store i64 %926, i64* %3, align 8
  %927 = load i32, i32* %879, align 4
  %928 = sext i32 %927 to i64
  %929 = mul nsw i64 %928, 520
  store i64 %929, i64* %RCX.i1817, align 8
  %930 = lshr i64 %929, 63
  %931 = add i64 %929, %925
  store i64 %931, i64* %RAX.i1872, align 8
  %932 = icmp ult i64 %931, %925
  %933 = icmp ult i64 %931, %929
  %934 = or i1 %932, %933
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %39, align 1
  %936 = trunc i64 %931 to i32
  %937 = and i32 %936, 255
  %938 = tail call i32 @llvm.ctpop.i32(i32 %937)
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  %941 = xor i8 %940, 1
  store i8 %941, i8* %46, align 1
  %942 = xor i64 %929, %925
  %943 = xor i64 %942, %931
  %944 = lshr i64 %943, 4
  %945 = trunc i64 %944 to i8
  %946 = and i8 %945, 1
  store i8 %946, i8* %51, align 1
  %947 = icmp eq i64 %931, 0
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %54, align 1
  %949 = lshr i64 %931, 63
  %950 = trunc i64 %949 to i8
  store i8 %950, i8* %57, align 1
  %951 = lshr i64 %925, 63
  %952 = xor i64 %949, %951
  %953 = xor i64 %949, %930
  %954 = add nuw nsw i64 %952, %953
  %955 = icmp eq i64 %954, 2
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %63, align 1
  %957 = add i64 %751, 138
  store i64 %957, i64* %3, align 8
  %958 = load i32, i32* %912, align 4
  %959 = sext i32 %958 to i64
  store i64 %959, i64* %RCX.i1817, align 8
  %960 = shl nsw i64 %959, 3
  %961 = add i64 %960, %931
  %962 = add i64 %751, 143
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to double*
  store double %921, double* %963, align 8
  %964 = load i64, i64* %RBP.i, align 8
  %965 = add i64 %964, 72
  %966 = load i64, i64* %3, align 8
  %967 = add i64 %966, 4
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %965 to i64*
  %969 = load i64, i64* %968, align 8
  store i64 %969, i64* %RAX.i1872, align 8
  %970 = add i64 %964, -108
  %971 = add i64 %966, 8
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i32*
  %973 = load i32, i32* %972, align 4
  %974 = sext i32 %973 to i64
  store i64 %974, i64* %RCX.i1817, align 8
  %975 = shl nsw i64 %974, 3
  %976 = add i64 %975, %969
  %977 = add i64 %966, 13
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %976 to double*
  %979 = load double, double* %978, align 8
  store double %979, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %980 = add i64 %964, 80
  %981 = add i64 %966, 17
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i64*
  %983 = load i64, i64* %982, align 8
  store i64 %983, i64* %RAX.i1872, align 8
  %984 = add i64 %966, 21
  store i64 %984, i64* %3, align 8
  %985 = load i32, i32* %972, align 4
  %986 = sext i32 %985 to i64
  store i64 %986, i64* %RCX.i1817, align 8
  %987 = shl nsw i64 %986, 3
  %988 = add i64 %987, %983
  %989 = add i64 %966, 26
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to double*
  %991 = load double, double* %990, align 8
  %992 = fdiv double %979, %991
  store double %992, double* %230, align 1
  store i64 0, i64* %231, align 1
  %993 = add i64 %964, 48
  %994 = add i64 %966, 30
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %996, i64* %RAX.i1872, align 8
  %997 = add i64 %964, -100
  %998 = add i64 %966, 34
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %997 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = sext i32 %1000 to i64
  %1002 = mul nsw i64 %1001, 33800
  store i64 %1002, i64* %RCX.i1817, align 8
  %1003 = lshr i64 %1002, 63
  %1004 = add i64 %1002, %996
  store i64 %1004, i64* %RAX.i1872, align 8
  %1005 = icmp ult i64 %1004, %996
  %1006 = icmp ult i64 %1004, %1002
  %1007 = or i1 %1005, %1006
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %39, align 1
  %1009 = trunc i64 %1004 to i32
  %1010 = and i32 %1009, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010)
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %46, align 1
  %1015 = xor i64 %1002, %996
  %1016 = xor i64 %1015, %1004
  %1017 = lshr i64 %1016, 4
  %1018 = trunc i64 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %51, align 1
  %1020 = icmp eq i64 %1004, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %54, align 1
  %1022 = lshr i64 %1004, 63
  %1023 = trunc i64 %1022 to i8
  store i8 %1023, i8* %57, align 1
  %1024 = lshr i64 %996, 63
  %1025 = xor i64 %1022, %1024
  %1026 = xor i64 %1022, %1003
  %1027 = add nuw nsw i64 %1025, %1026
  %1028 = icmp eq i64 %1027, 2
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %63, align 1
  %1030 = add i64 %964, -104
  %1031 = add i64 %966, 48
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = mul nsw i64 %1034, 520
  store i64 %1035, i64* %RCX.i1817, align 8
  %1036 = lshr i64 %1035, 63
  %1037 = add i64 %1035, %1004
  store i64 %1037, i64* %RAX.i1872, align 8
  %1038 = icmp ult i64 %1037, %1004
  %1039 = icmp ult i64 %1037, %1035
  %1040 = or i1 %1038, %1039
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %39, align 1
  %1042 = trunc i64 %1037 to i32
  %1043 = and i32 %1042, 255
  %1044 = tail call i32 @llvm.ctpop.i32(i32 %1043)
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  %1047 = xor i8 %1046, 1
  store i8 %1047, i8* %46, align 1
  %1048 = xor i64 %1035, %1004
  %1049 = xor i64 %1048, %1037
  %1050 = lshr i64 %1049, 4
  %1051 = trunc i64 %1050 to i8
  %1052 = and i8 %1051, 1
  store i8 %1052, i8* %51, align 1
  %1053 = icmp eq i64 %1037, 0
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %54, align 1
  %1055 = lshr i64 %1037, 63
  %1056 = trunc i64 %1055 to i8
  store i8 %1056, i8* %57, align 1
  %1057 = xor i64 %1055, %1022
  %1058 = xor i64 %1055, %1036
  %1059 = add nuw nsw i64 %1057, %1058
  %1060 = icmp eq i64 %1059, 2
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %63, align 1
  %1062 = add i64 %966, 62
  store i64 %1062, i64* %3, align 8
  %1063 = load i32, i32* %972, align 4
  %1064 = sext i32 %1063 to i64
  store i64 %1064, i64* %RCX.i1817, align 8
  %1065 = shl nsw i64 %1064, 3
  %1066 = add i64 %1065, %1037
  %1067 = add i64 %966, 67
  store i64 %1067, i64* %3, align 8
  %1068 = load double, double* %230, align 1
  %1069 = inttoptr i64 %1066 to double*
  %1070 = load double, double* %1069, align 8
  %1071 = fmul double %1068, %1070
  store double %1071, double* %230, align 1
  %1072 = add i64 %964, -64
  %1073 = add i64 %966, 72
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to double*
  %1075 = load double, double* %1074, align 8
  store double %1075, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %1076 = add i64 %964, 64
  %1077 = add i64 %966, 76
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i64*
  %1079 = load i64, i64* %1078, align 8
  store i64 %1079, i64* %RAX.i1872, align 8
  %1080 = add i64 %966, 80
  store i64 %1080, i64* %3, align 8
  %1081 = load i32, i32* %999, align 4
  %1082 = sext i32 %1081 to i64
  store i64 %1082, i64* %RCX.i1817, align 8
  %1083 = shl nsw i64 %1082, 3
  %1084 = add i64 %1083, %1079
  %1085 = add i64 %966, 85
  store i64 %1085, i64* %3, align 8
  %1086 = inttoptr i64 %1084 to double*
  %1087 = load double, double* %1086, align 8
  %1088 = fmul double %1075, %1087
  store double %1088, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1089 = load i64, i64* %RBP.i, align 8
  %1090 = add i64 %1089, 80
  %1091 = add i64 %966, 89
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i64*
  %1093 = load i64, i64* %1092, align 8
  store i64 %1093, i64* %RAX.i1872, align 8
  %1094 = add i64 %1089, -108
  %1095 = add i64 %966, 93
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = sext i32 %1097 to i64
  store i64 %1098, i64* %RCX.i1817, align 8
  %1099 = shl nsw i64 %1098, 3
  %1100 = add i64 %1099, %1093
  %1101 = add i64 %966, 98
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to double*
  %1103 = load double, double* %1102, align 8
  %1104 = fdiv double %1088, %1103
  store double %1104, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1105 = add i64 %1089, 16
  %1106 = add i64 %966, 102
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i64*
  %1108 = load i64, i64* %1107, align 8
  store i64 %1108, i64* %RAX.i1872, align 8
  %1109 = add i64 %1089, -100
  %1110 = add i64 %966, 106
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i32*
  %1112 = load i32, i32* %1111, align 4
  %1113 = sext i32 %1112 to i64
  %1114 = mul nsw i64 %1113, 520
  store i64 %1114, i64* %RCX.i1817, align 8
  %1115 = lshr i64 %1114, 63
  %1116 = add i64 %1114, %1108
  store i64 %1116, i64* %RAX.i1872, align 8
  %1117 = icmp ult i64 %1116, %1108
  %1118 = icmp ult i64 %1116, %1114
  %1119 = or i1 %1117, %1118
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %39, align 1
  %1121 = trunc i64 %1116 to i32
  %1122 = and i32 %1121, 255
  %1123 = tail call i32 @llvm.ctpop.i32(i32 %1122)
  %1124 = trunc i32 %1123 to i8
  %1125 = and i8 %1124, 1
  %1126 = xor i8 %1125, 1
  store i8 %1126, i8* %46, align 1
  %1127 = xor i64 %1114, %1108
  %1128 = xor i64 %1127, %1116
  %1129 = lshr i64 %1128, 4
  %1130 = trunc i64 %1129 to i8
  %1131 = and i8 %1130, 1
  store i8 %1131, i8* %51, align 1
  %1132 = icmp eq i64 %1116, 0
  %1133 = zext i1 %1132 to i8
  store i8 %1133, i8* %54, align 1
  %1134 = lshr i64 %1116, 63
  %1135 = trunc i64 %1134 to i8
  store i8 %1135, i8* %57, align 1
  %1136 = lshr i64 %1108, 63
  %1137 = xor i64 %1134, %1136
  %1138 = xor i64 %1134, %1115
  %1139 = add nuw nsw i64 %1137, %1138
  %1140 = icmp eq i64 %1139, 2
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %63, align 1
  %1142 = add i64 %1089, -104
  %1143 = add i64 %966, 120
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = sext i32 %1145 to i64
  store i64 %1146, i64* %RCX.i1817, align 8
  %1147 = shl nsw i64 %1146, 3
  %1148 = add i64 %1147, %1116
  %1149 = add i64 %966, 125
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to double*
  %1151 = load double, double* %1150, align 8
  %1152 = fmul double %1104, %1151
  store double %1152, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1153 = load double, double* %230, align 1
  %1154 = fadd double %1153, %1152
  store double %1154, double* %230, align 1
  %1155 = add i64 %1089, -64
  %1156 = add i64 %966, 134
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to double*
  %1158 = load double, double* %1157, align 8
  store double %1158, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %1159 = add i64 %1089, 56
  %1160 = add i64 %966, 138
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i64*
  %1162 = load i64, i64* %1161, align 8
  store i64 %1162, i64* %RAX.i1872, align 8
  %1163 = add i64 %966, 142
  store i64 %1163, i64* %3, align 8
  %1164 = load i32, i32* %1111, align 4
  %1165 = sext i32 %1164 to i64
  store i64 %1165, i64* %RCX.i1817, align 8
  %1166 = shl nsw i64 %1165, 3
  %1167 = add i64 %1166, %1162
  %1168 = add i64 %966, 147
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to double*
  %1170 = load double, double* %1169, align 8
  %1171 = fmul double %1158, %1170
  store double %1171, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1172 = add i64 %966, 151
  store i64 %1172, i64* %3, align 8
  %1173 = load i64, i64* %1092, align 8
  store i64 %1173, i64* %RAX.i1872, align 8
  %1174 = add i64 %966, 155
  store i64 %1174, i64* %3, align 8
  %1175 = load i32, i32* %1096, align 4
  %1176 = sext i32 %1175 to i64
  store i64 %1176, i64* %RCX.i1817, align 8
  %1177 = shl nsw i64 %1176, 3
  %1178 = add i64 %1177, %1173
  %1179 = add i64 %966, 160
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to double*
  %1181 = load double, double* %1180, align 8
  %1182 = fdiv double %1171, %1181
  store double %1182, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1183 = add i64 %1089, 24
  %1184 = add i64 %966, 164
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i64*
  %1186 = load i64, i64* %1185, align 8
  store i64 %1186, i64* %RAX.i1872, align 8
  %1187 = add i64 %966, 168
  store i64 %1187, i64* %3, align 8
  %1188 = load i32, i32* %1111, align 4
  %1189 = sext i32 %1188 to i64
  %1190 = mul nsw i64 %1189, 33800
  store i64 %1190, i64* %RCX.i1817, align 8
  %1191 = lshr i64 %1190, 63
  %1192 = add i64 %1190, %1186
  store i64 %1192, i64* %RAX.i1872, align 8
  %1193 = icmp ult i64 %1192, %1186
  %1194 = icmp ult i64 %1192, %1190
  %1195 = or i1 %1193, %1194
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %39, align 1
  %1197 = trunc i64 %1192 to i32
  %1198 = and i32 %1197, 255
  %1199 = tail call i32 @llvm.ctpop.i32(i32 %1198)
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  %1202 = xor i8 %1201, 1
  store i8 %1202, i8* %46, align 1
  %1203 = xor i64 %1190, %1186
  %1204 = xor i64 %1203, %1192
  %1205 = lshr i64 %1204, 4
  %1206 = trunc i64 %1205 to i8
  %1207 = and i8 %1206, 1
  store i8 %1207, i8* %51, align 1
  %1208 = icmp eq i64 %1192, 0
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %54, align 1
  %1210 = lshr i64 %1192, 63
  %1211 = trunc i64 %1210 to i8
  store i8 %1211, i8* %57, align 1
  %1212 = lshr i64 %1186, 63
  %1213 = xor i64 %1210, %1212
  %1214 = xor i64 %1210, %1191
  %1215 = add nuw nsw i64 %1213, %1214
  %1216 = icmp eq i64 %1215, 2
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %63, align 1
  %1218 = load i64, i64* %RBP.i, align 8
  %1219 = add i64 %1218, -104
  %1220 = add i64 %966, 182
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = sext i32 %1222 to i64
  %1224 = mul nsw i64 %1223, 520
  store i64 %1224, i64* %RCX.i1817, align 8
  %1225 = lshr i64 %1224, 63
  %1226 = add i64 %1224, %1192
  store i64 %1226, i64* %RAX.i1872, align 8
  %1227 = icmp ult i64 %1226, %1192
  %1228 = icmp ult i64 %1226, %1224
  %1229 = or i1 %1227, %1228
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %39, align 1
  %1231 = trunc i64 %1226 to i32
  %1232 = and i32 %1231, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %46, align 1
  %1237 = xor i64 %1224, %1192
  %1238 = xor i64 %1237, %1226
  %1239 = lshr i64 %1238, 4
  %1240 = trunc i64 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %51, align 1
  %1242 = icmp eq i64 %1226, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %54, align 1
  %1244 = lshr i64 %1226, 63
  %1245 = trunc i64 %1244 to i8
  store i8 %1245, i8* %57, align 1
  %1246 = xor i64 %1244, %1210
  %1247 = xor i64 %1244, %1225
  %1248 = add nuw nsw i64 %1246, %1247
  %1249 = icmp eq i64 %1248, 2
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %63, align 1
  %1251 = add i64 %1218, -108
  %1252 = add i64 %966, 196
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i32*
  %1254 = load i32, i32* %1253, align 4
  %1255 = sext i32 %1254 to i64
  store i64 %1255, i64* %RCX.i1817, align 8
  %1256 = shl nsw i64 %1255, 3
  %1257 = add i64 %1256, %1226
  %1258 = add i64 %966, 201
  store i64 %1258, i64* %3, align 8
  %1259 = load double, double* %233, align 1
  %1260 = inttoptr i64 %1257 to double*
  %1261 = load double, double* %1260, align 8
  %1262 = fmul double %1259, %1261
  store double %1262, double* %233, align 1
  %1263 = load double, double* %230, align 1
  %1264 = fsub double %1263, %1262
  store double %1264, double* %230, align 1
  %1265 = add i64 %1218, 48
  %1266 = add i64 %966, 209
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i64*
  %1268 = load i64, i64* %1267, align 8
  store i64 %1268, i64* %RAX.i1872, align 8
  %1269 = add i64 %1218, -100
  %1270 = add i64 %966, 213
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = sext i32 %1272 to i64
  %1274 = mul nsw i64 %1273, 33800
  store i64 %1274, i64* %RCX.i1817, align 8
  %1275 = lshr i64 %1274, 63
  %1276 = add i64 %1274, %1268
  store i64 %1276, i64* %RAX.i1872, align 8
  %1277 = icmp ult i64 %1276, %1268
  %1278 = icmp ult i64 %1276, %1274
  %1279 = or i1 %1277, %1278
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %39, align 1
  %1281 = trunc i64 %1276 to i32
  %1282 = and i32 %1281, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %46, align 1
  %1287 = xor i64 %1274, %1268
  %1288 = xor i64 %1287, %1276
  %1289 = lshr i64 %1288, 4
  %1290 = trunc i64 %1289 to i8
  %1291 = and i8 %1290, 1
  store i8 %1291, i8* %51, align 1
  %1292 = icmp eq i64 %1276, 0
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %54, align 1
  %1294 = lshr i64 %1276, 63
  %1295 = trunc i64 %1294 to i8
  store i8 %1295, i8* %57, align 1
  %1296 = lshr i64 %1268, 63
  %1297 = xor i64 %1294, %1296
  %1298 = xor i64 %1294, %1275
  %1299 = add nuw nsw i64 %1297, %1298
  %1300 = icmp eq i64 %1299, 2
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %63, align 1
  %1302 = load i64, i64* %RBP.i, align 8
  %1303 = add i64 %1302, -104
  %1304 = add i64 %966, 227
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = sext i32 %1306 to i64
  %1308 = mul nsw i64 %1307, 520
  store i64 %1308, i64* %RCX.i1817, align 8
  %1309 = lshr i64 %1308, 63
  %1310 = add i64 %1308, %1276
  store i64 %1310, i64* %RAX.i1872, align 8
  %1311 = icmp ult i64 %1310, %1276
  %1312 = icmp ult i64 %1310, %1308
  %1313 = or i1 %1311, %1312
  %1314 = zext i1 %1313 to i8
  store i8 %1314, i8* %39, align 1
  %1315 = trunc i64 %1310 to i32
  %1316 = and i32 %1315, 255
  %1317 = tail call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  store i8 %1320, i8* %46, align 1
  %1321 = xor i64 %1308, %1276
  %1322 = xor i64 %1321, %1310
  %1323 = lshr i64 %1322, 4
  %1324 = trunc i64 %1323 to i8
  %1325 = and i8 %1324, 1
  store i8 %1325, i8* %51, align 1
  %1326 = icmp eq i64 %1310, 0
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %54, align 1
  %1328 = lshr i64 %1310, 63
  %1329 = trunc i64 %1328 to i8
  store i8 %1329, i8* %57, align 1
  %1330 = xor i64 %1328, %1294
  %1331 = xor i64 %1328, %1309
  %1332 = add nuw nsw i64 %1330, %1331
  %1333 = icmp eq i64 %1332, 2
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %63, align 1
  %1335 = add i64 %1302, -108
  %1336 = add i64 %966, 241
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i32*
  %1338 = load i32, i32* %1337, align 4
  %1339 = sext i32 %1338 to i64
  store i64 %1339, i64* %RCX.i1817, align 8
  %1340 = shl nsw i64 %1339, 3
  %1341 = add i64 %1340, %1310
  %1342 = add i64 %966, 246
  store i64 %1342, i64* %3, align 8
  %1343 = load i64, i64* %148, align 1
  %1344 = inttoptr i64 %1341 to i64*
  store i64 %1343, i64* %1344, align 8
  %1345 = load i64, i64* %RBP.i, align 8
  %1346 = add i64 %1345, 16
  %1347 = load i64, i64* %3, align 8
  %1348 = add i64 %1347, 4
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1346 to i64*
  %1350 = load i64, i64* %1349, align 8
  store i64 %1350, i64* %RAX.i1872, align 8
  %1351 = add i64 %1345, -100
  %1352 = add i64 %1347, 8
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = sext i32 %1354 to i64
  %1356 = mul nsw i64 %1355, 520
  store i64 %1356, i64* %RCX.i1817, align 8
  %1357 = lshr i64 %1356, 63
  %1358 = add i64 %1356, %1350
  store i64 %1358, i64* %RAX.i1872, align 8
  %1359 = icmp ult i64 %1358, %1350
  %1360 = icmp ult i64 %1358, %1356
  %1361 = or i1 %1359, %1360
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %39, align 1
  %1363 = trunc i64 %1358 to i32
  %1364 = and i32 %1363, 255
  %1365 = tail call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  store i8 %1368, i8* %46, align 1
  %1369 = xor i64 %1356, %1350
  %1370 = xor i64 %1369, %1358
  %1371 = lshr i64 %1370, 4
  %1372 = trunc i64 %1371 to i8
  %1373 = and i8 %1372, 1
  store i8 %1373, i8* %51, align 1
  %1374 = icmp eq i64 %1358, 0
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %54, align 1
  %1376 = lshr i64 %1358, 63
  %1377 = trunc i64 %1376 to i8
  store i8 %1377, i8* %57, align 1
  %1378 = lshr i64 %1350, 63
  %1379 = xor i64 %1376, %1378
  %1380 = xor i64 %1376, %1357
  %1381 = add nuw nsw i64 %1379, %1380
  %1382 = icmp eq i64 %1381, 2
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %63, align 1
  %1384 = add i64 %1345, -104
  %1385 = add i64 %1347, 22
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1384 to i32*
  %1387 = load i32, i32* %1386, align 4
  %1388 = sext i32 %1387 to i64
  store i64 %1388, i64* %RCX.i1817, align 8
  %1389 = shl nsw i64 %1388, 3
  %1390 = add i64 %1389, %1358
  %1391 = add i64 %1347, 27
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i64*
  %1393 = load i64, i64* %1392, align 8
  store i64 %1393, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %1394 = add i64 %1345, 24
  %1395 = add i64 %1347, 31
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i64*
  %1397 = load i64, i64* %1396, align 8
  store i64 %1397, i64* %RAX.i1872, align 8
  %1398 = add i64 %1347, 35
  store i64 %1398, i64* %3, align 8
  %1399 = load i32, i32* %1353, align 4
  %1400 = sext i32 %1399 to i64
  %1401 = mul nsw i64 %1400, 33800
  store i64 %1401, i64* %RCX.i1817, align 8
  %1402 = lshr i64 %1401, 63
  %1403 = add i64 %1401, %1397
  store i64 %1403, i64* %RAX.i1872, align 8
  %1404 = icmp ult i64 %1403, %1397
  %1405 = icmp ult i64 %1403, %1401
  %1406 = or i1 %1404, %1405
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %39, align 1
  %1408 = trunc i64 %1403 to i32
  %1409 = and i32 %1408, 255
  %1410 = tail call i32 @llvm.ctpop.i32(i32 %1409)
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  %1413 = xor i8 %1412, 1
  store i8 %1413, i8* %46, align 1
  %1414 = xor i64 %1401, %1397
  %1415 = xor i64 %1414, %1403
  %1416 = lshr i64 %1415, 4
  %1417 = trunc i64 %1416 to i8
  %1418 = and i8 %1417, 1
  store i8 %1418, i8* %51, align 1
  %1419 = icmp eq i64 %1403, 0
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %54, align 1
  %1421 = lshr i64 %1403, 63
  %1422 = trunc i64 %1421 to i8
  store i8 %1422, i8* %57, align 1
  %1423 = lshr i64 %1397, 63
  %1424 = xor i64 %1421, %1423
  %1425 = xor i64 %1421, %1402
  %1426 = add nuw nsw i64 %1424, %1425
  %1427 = icmp eq i64 %1426, 2
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %63, align 1
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -104
  %1431 = add i64 %1347, 49
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  %1433 = load i32, i32* %1432, align 4
  %1434 = sext i32 %1433 to i64
  %1435 = mul nsw i64 %1434, 520
  store i64 %1435, i64* %RCX.i1817, align 8
  %1436 = lshr i64 %1435, 63
  %1437 = add i64 %1435, %1403
  store i64 %1437, i64* %RAX.i1872, align 8
  %1438 = icmp ult i64 %1437, %1403
  %1439 = icmp ult i64 %1437, %1435
  %1440 = or i1 %1438, %1439
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %39, align 1
  %1442 = trunc i64 %1437 to i32
  %1443 = and i32 %1442, 255
  %1444 = tail call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  store i8 %1447, i8* %46, align 1
  %1448 = xor i64 %1435, %1403
  %1449 = xor i64 %1448, %1437
  %1450 = lshr i64 %1449, 4
  %1451 = trunc i64 %1450 to i8
  %1452 = and i8 %1451, 1
  store i8 %1452, i8* %51, align 1
  %1453 = icmp eq i64 %1437, 0
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %54, align 1
  %1455 = lshr i64 %1437, 63
  %1456 = trunc i64 %1455 to i8
  store i8 %1456, i8* %57, align 1
  %1457 = xor i64 %1455, %1421
  %1458 = xor i64 %1455, %1436
  %1459 = add nuw nsw i64 %1457, %1458
  %1460 = icmp eq i64 %1459, 2
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %63, align 1
  %1462 = add i64 %1429, -108
  %1463 = add i64 %1347, 63
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = sext i32 %1465 to i64
  store i64 %1466, i64* %RCX.i1817, align 8
  %1467 = shl nsw i64 %1466, 3
  %1468 = add i64 %1467, %1437
  %1469 = add i64 %1347, 68
  store i64 %1469, i64* %3, align 8
  %1470 = load i64, i64* %148, align 1
  %1471 = inttoptr i64 %1468 to i64*
  store i64 %1470, i64* %1471, align 8
  %1472 = load i64, i64* %RBP.i, align 8
  %1473 = add i64 %1472, -108
  %1474 = load i64, i64* %3, align 8
  %1475 = add i64 %1474, 3
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1473 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = add i32 %1477, 1
  %1479 = zext i32 %1478 to i64
  store i64 %1479, i64* %RAX.i1872, align 8
  %1480 = icmp eq i32 %1477, -1
  %1481 = icmp eq i32 %1478, 0
  %1482 = or i1 %1480, %1481
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %39, align 1
  %1484 = and i32 %1478, 255
  %1485 = tail call i32 @llvm.ctpop.i32(i32 %1484)
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  %1488 = xor i8 %1487, 1
  store i8 %1488, i8* %46, align 1
  %1489 = xor i32 %1477, %1478
  %1490 = lshr i32 %1489, 4
  %1491 = trunc i32 %1490 to i8
  %1492 = and i8 %1491, 1
  store i8 %1492, i8* %51, align 1
  %1493 = zext i1 %1481 to i8
  store i8 %1493, i8* %54, align 1
  %1494 = lshr i32 %1478, 31
  %1495 = trunc i32 %1494 to i8
  store i8 %1495, i8* %57, align 1
  %1496 = lshr i32 %1477, 31
  %1497 = xor i32 %1494, %1496
  %1498 = add nuw nsw i32 %1497, %1494
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %63, align 1
  %1501 = add i64 %1474, 9
  store i64 %1501, i64* %3, align 8
  store i32 %1478, i32* %1476, align 4
  %1502 = load i64, i64* %3, align 8
  %1503 = add i64 %1502, -679
  store i64 %1503, i64* %3, align 8
  br label %block_.L_4014a0

block_.L_40174c:                                  ; preds = %block_.L_4014a0
  %1504 = add i64 %426, -48
  %1505 = add i64 %355, 36
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  %1507 = load i32, i32* %1506, align 4
  %1508 = sext i32 %1507 to i64
  store i64 %1508, i64* %RCX.i1817, align 8
  %1509 = shl nsw i64 %1508, 3
  %1510 = add i64 %1509, %401
  %1511 = add i64 %355, 41
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i64*
  %1513 = load i64, i64* %1512, align 8
  store i64 %1513, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %1514 = add i64 %426, 32
  %1515 = add i64 %355, 45
  store i64 %1515, i64* %3, align 8
  %1516 = inttoptr i64 %1514 to i64*
  %1517 = load i64, i64* %1516, align 8
  store i64 %1517, i64* %RAX.i1872, align 8
  %1518 = add i64 %426, -100
  %1519 = add i64 %355, 49
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = sext i32 %1521 to i64
  %1523 = mul nsw i64 %1522, 33800
  store i64 %1523, i64* %RCX.i1817, align 8
  %1524 = lshr i64 %1523, 63
  %1525 = add i64 %1523, %1517
  store i64 %1525, i64* %RAX.i1872, align 8
  %1526 = icmp ult i64 %1525, %1517
  %1527 = icmp ult i64 %1525, %1523
  %1528 = or i1 %1526, %1527
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %39, align 1
  %1530 = trunc i64 %1525 to i32
  %1531 = and i32 %1530, 255
  %1532 = tail call i32 @llvm.ctpop.i32(i32 %1531)
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %46, align 1
  %1536 = xor i64 %1523, %1517
  %1537 = xor i64 %1536, %1525
  %1538 = lshr i64 %1537, 4
  %1539 = trunc i64 %1538 to i8
  %1540 = and i8 %1539, 1
  store i8 %1540, i8* %51, align 1
  %1541 = icmp eq i64 %1525, 0
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %54, align 1
  %1543 = lshr i64 %1525, 63
  %1544 = trunc i64 %1543 to i8
  store i8 %1544, i8* %57, align 1
  %1545 = lshr i64 %1517, 63
  %1546 = xor i64 %1543, %1545
  %1547 = xor i64 %1543, %1524
  %1548 = add nuw nsw i64 %1546, %1547
  %1549 = icmp eq i64 %1548, 2
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %63, align 1
  %1551 = add i64 %426, -104
  %1552 = add i64 %355, 62
  store i64 %1552, i64* %3, align 8
  %1553 = inttoptr i64 %1551 to i32*
  %1554 = load i32, i32* %1553, align 4
  %1555 = add i32 %1554, 1
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RDX.i1724, align 8
  %1557 = sext i32 %1555 to i64
  %1558 = mul nsw i64 %1557, 520
  store i64 %1558, i64* %RCX.i1817, align 8
  %1559 = lshr i64 %1558, 63
  %1560 = add i64 %1558, %1525
  store i64 %1560, i64* %RAX.i1872, align 8
  %1561 = icmp ult i64 %1560, %1525
  %1562 = icmp ult i64 %1560, %1558
  %1563 = or i1 %1561, %1562
  %1564 = zext i1 %1563 to i8
  store i8 %1564, i8* %39, align 1
  %1565 = trunc i64 %1560 to i32
  %1566 = and i32 %1565, 255
  %1567 = tail call i32 @llvm.ctpop.i32(i32 %1566)
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = xor i8 %1569, 1
  store i8 %1570, i8* %46, align 1
  %1571 = xor i64 %1558, %1525
  %1572 = xor i64 %1571, %1560
  %1573 = lshr i64 %1572, 4
  %1574 = trunc i64 %1573 to i8
  %1575 = and i8 %1574, 1
  store i8 %1575, i8* %51, align 1
  %1576 = icmp eq i64 %1560, 0
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %54, align 1
  %1578 = lshr i64 %1560, 63
  %1579 = trunc i64 %1578 to i8
  store i8 %1579, i8* %57, align 1
  %1580 = xor i64 %1578, %1543
  %1581 = xor i64 %1578, %1559
  %1582 = add nuw nsw i64 %1580, %1581
  %1583 = icmp eq i64 %1582, 2
  %1584 = zext i1 %1583 to i8
  store i8 %1584, i8* %63, align 1
  %1585 = load i64, i64* %RBP.i, align 8
  %1586 = add i64 %1585, -48
  %1587 = add i64 %355, 82
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1586 to i32*
  %1589 = load i32, i32* %1588, align 4
  %1590 = sext i32 %1589 to i64
  store i64 %1590, i64* %RCX.i1817, align 8
  %1591 = shl nsw i64 %1590, 3
  %1592 = add i64 %1591, %1560
  %1593 = add i64 %355, 87
  store i64 %1593, i64* %3, align 8
  %1594 = load double, double* %230, align 1
  %1595 = inttoptr i64 %1592 to double*
  %1596 = load double, double* %1595, align 8
  %1597 = fsub double %1594, %1596
  store double %1597, double* %230, align 1
  %1598 = add i64 %1585, -88
  %1599 = add i64 %355, 91
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i64*
  %1601 = load i64, i64* %1600, align 8
  store i64 %1601, i64* %RAX.i1872, align 8
  %1602 = add i64 %1585, -100
  %1603 = add i64 %355, 95
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i32*
  %1605 = load i32, i32* %1604, align 4
  %1606 = sext i32 %1605 to i64
  %1607 = mul nsw i64 %1606, 520
  store i64 %1607, i64* %RCX.i1817, align 8
  %1608 = lshr i64 %1607, 63
  %1609 = add i64 %1607, %1601
  store i64 %1609, i64* %RAX.i1872, align 8
  %1610 = icmp ult i64 %1609, %1601
  %1611 = icmp ult i64 %1609, %1607
  %1612 = or i1 %1610, %1611
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %39, align 1
  %1614 = trunc i64 %1609 to i32
  %1615 = and i32 %1614, 255
  %1616 = tail call i32 @llvm.ctpop.i32(i32 %1615)
  %1617 = trunc i32 %1616 to i8
  %1618 = and i8 %1617, 1
  %1619 = xor i8 %1618, 1
  store i8 %1619, i8* %46, align 1
  %1620 = xor i64 %1607, %1601
  %1621 = xor i64 %1620, %1609
  %1622 = lshr i64 %1621, 4
  %1623 = trunc i64 %1622 to i8
  %1624 = and i8 %1623, 1
  store i8 %1624, i8* %51, align 1
  %1625 = icmp eq i64 %1609, 0
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %54, align 1
  %1627 = lshr i64 %1609, 63
  %1628 = trunc i64 %1627 to i8
  store i8 %1628, i8* %57, align 1
  %1629 = lshr i64 %1601, 63
  %1630 = xor i64 %1627, %1629
  %1631 = xor i64 %1627, %1608
  %1632 = add nuw nsw i64 %1630, %1631
  %1633 = icmp eq i64 %1632, 2
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %63, align 1
  %1635 = add i64 %1585, -104
  %1636 = add i64 %355, 109
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1635 to i32*
  %1638 = load i32, i32* %1637, align 4
  %1639 = sext i32 %1638 to i64
  store i64 %1639, i64* %RCX.i1817, align 8
  %1640 = shl nsw i64 %1639, 3
  %1641 = add i64 %1640, %1609
  %1642 = add i64 %355, 114
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to double*
  %1644 = load double, double* %1643, align 8
  %1645 = fadd double %1597, %1644
  store double %1645, double* %230, align 1
  %1646 = add i64 %1585, 40
  %1647 = add i64 %355, 118
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1646 to i64*
  %1649 = load i64, i64* %1648, align 8
  store i64 %1649, i64* %RAX.i1872, align 8
  %1650 = add i64 %355, 122
  store i64 %1650, i64* %3, align 8
  %1651 = load i32, i32* %1604, align 4
  %1652 = sext i32 %1651 to i64
  %1653 = mul nsw i64 %1652, 33800
  store i64 %1653, i64* %RCX.i1817, align 8
  %1654 = lshr i64 %1653, 63
  %1655 = add i64 %1653, %1649
  store i64 %1655, i64* %RAX.i1872, align 8
  %1656 = icmp ult i64 %1655, %1649
  %1657 = icmp ult i64 %1655, %1653
  %1658 = or i1 %1656, %1657
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %39, align 1
  %1660 = trunc i64 %1655 to i32
  %1661 = and i32 %1660, 255
  %1662 = tail call i32 @llvm.ctpop.i32(i32 %1661)
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  %1665 = xor i8 %1664, 1
  store i8 %1665, i8* %46, align 1
  %1666 = xor i64 %1653, %1649
  %1667 = xor i64 %1666, %1655
  %1668 = lshr i64 %1667, 4
  %1669 = trunc i64 %1668 to i8
  %1670 = and i8 %1669, 1
  store i8 %1670, i8* %51, align 1
  %1671 = icmp eq i64 %1655, 0
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %54, align 1
  %1673 = lshr i64 %1655, 63
  %1674 = trunc i64 %1673 to i8
  store i8 %1674, i8* %57, align 1
  %1675 = lshr i64 %1649, 63
  %1676 = xor i64 %1673, %1675
  %1677 = xor i64 %1673, %1654
  %1678 = add nuw nsw i64 %1676, %1677
  %1679 = icmp eq i64 %1678, 2
  %1680 = zext i1 %1679 to i8
  store i8 %1680, i8* %63, align 1
  %1681 = add i64 %355, 136
  store i64 %1681, i64* %3, align 8
  %1682 = load i32, i32* %1637, align 4
  %1683 = sext i32 %1682 to i64
  %1684 = mul nsw i64 %1683, 520
  store i64 %1684, i64* %RCX.i1817, align 8
  %1685 = lshr i64 %1684, 63
  %1686 = add i64 %1684, %1655
  store i64 %1686, i64* %RAX.i1872, align 8
  %1687 = icmp ult i64 %1686, %1655
  %1688 = icmp ult i64 %1686, %1684
  %1689 = or i1 %1687, %1688
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %39, align 1
  %1691 = trunc i64 %1686 to i32
  %1692 = and i32 %1691, 255
  %1693 = tail call i32 @llvm.ctpop.i32(i32 %1692)
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  %1696 = xor i8 %1695, 1
  store i8 %1696, i8* %46, align 1
  %1697 = xor i64 %1684, %1655
  %1698 = xor i64 %1697, %1686
  %1699 = lshr i64 %1698, 4
  %1700 = trunc i64 %1699 to i8
  %1701 = and i8 %1700, 1
  store i8 %1701, i8* %51, align 1
  %1702 = icmp eq i64 %1686, 0
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %54, align 1
  %1704 = lshr i64 %1686, 63
  %1705 = trunc i64 %1704 to i8
  store i8 %1705, i8* %57, align 1
  %1706 = xor i64 %1704, %1673
  %1707 = xor i64 %1704, %1685
  %1708 = add nuw nsw i64 %1706, %1707
  %1709 = icmp eq i64 %1708, 2
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %63, align 1
  %1711 = load i64, i64* %RBP.i, align 8
  %1712 = add i64 %1711, -48
  %1713 = add i64 %355, 150
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = sext i32 %1715 to i64
  store i64 %1716, i64* %RCX.i1817, align 8
  %1717 = shl nsw i64 %1716, 3
  %1718 = add i64 %1717, %1686
  %1719 = add i64 %355, 155
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to double*
  %1721 = load double, double* %1720, align 8
  %1722 = fsub double %1645, %1721
  store double %1722, double* %230, align 1
  %1723 = add i64 %1711, -96
  %1724 = add i64 %355, 159
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1723 to i64*
  %1726 = load i64, i64* %1725, align 8
  store i64 %1726, i64* %RAX.i1872, align 8
  %1727 = add i64 %1711, -100
  %1728 = add i64 %355, 163
  store i64 %1728, i64* %3, align 8
  %1729 = inttoptr i64 %1727 to i32*
  %1730 = load i32, i32* %1729, align 4
  %1731 = sext i32 %1730 to i64
  %1732 = mul nsw i64 %1731, 520
  store i64 %1732, i64* %RCX.i1817, align 8
  %1733 = lshr i64 %1732, 63
  %1734 = add i64 %1732, %1726
  store i64 %1734, i64* %RAX.i1872, align 8
  %1735 = icmp ult i64 %1734, %1726
  %1736 = icmp ult i64 %1734, %1732
  %1737 = or i1 %1735, %1736
  %1738 = zext i1 %1737 to i8
  store i8 %1738, i8* %39, align 1
  %1739 = trunc i64 %1734 to i32
  %1740 = and i32 %1739, 255
  %1741 = tail call i32 @llvm.ctpop.i32(i32 %1740)
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = xor i8 %1743, 1
  store i8 %1744, i8* %46, align 1
  %1745 = xor i64 %1732, %1726
  %1746 = xor i64 %1745, %1734
  %1747 = lshr i64 %1746, 4
  %1748 = trunc i64 %1747 to i8
  %1749 = and i8 %1748, 1
  store i8 %1749, i8* %51, align 1
  %1750 = icmp eq i64 %1734, 0
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %54, align 1
  %1752 = lshr i64 %1734, 63
  %1753 = trunc i64 %1752 to i8
  store i8 %1753, i8* %57, align 1
  %1754 = lshr i64 %1726, 63
  %1755 = xor i64 %1752, %1754
  %1756 = xor i64 %1752, %1733
  %1757 = add nuw nsw i64 %1755, %1756
  %1758 = icmp eq i64 %1757, 2
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %63, align 1
  %1760 = add i64 %1711, -104
  %1761 = add i64 %355, 177
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i32*
  %1763 = load i32, i32* %1762, align 4
  %1764 = sext i32 %1763 to i64
  store i64 %1764, i64* %RCX.i1817, align 8
  %1765 = shl nsw i64 %1764, 3
  %1766 = add i64 %1765, %1734
  %1767 = add i64 %355, 182
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to double*
  store double %1722, double* %1768, align 8
  %1769 = load i64, i64* %RBP.i, align 8
  %1770 = add i64 %1769, 88
  %1771 = load i64, i64* %3, align 8
  %1772 = add i64 %1771, 4
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1770 to i64*
  %1774 = load i64, i64* %1773, align 8
  store i64 %1774, i64* %RAX.i1872, align 8
  %1775 = add i64 %1769, -104
  %1776 = add i64 %1771, 8
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i32*
  %1778 = load i32, i32* %1777, align 4
  %1779 = sext i32 %1778 to i64
  store i64 %1779, i64* %RCX.i1817, align 8
  %1780 = shl nsw i64 %1779, 3
  %1781 = add i64 %1780, %1774
  %1782 = add i64 %1771, 13
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to double*
  %1784 = load double, double* %1783, align 8
  store double %1784, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %1785 = add i64 %1769, 96
  %1786 = add i64 %1771, 17
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i64*
  %1788 = load i64, i64* %1787, align 8
  store i64 %1788, i64* %RAX.i1872, align 8
  %1789 = add i64 %1771, 21
  store i64 %1789, i64* %3, align 8
  %1790 = load i32, i32* %1777, align 4
  %1791 = sext i32 %1790 to i64
  store i64 %1791, i64* %RCX.i1817, align 8
  %1792 = shl nsw i64 %1791, 3
  %1793 = add i64 %1792, %1788
  %1794 = add i64 %1771, 26
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1793 to double*
  %1796 = load double, double* %1795, align 8
  %1797 = fdiv double %1784, %1796
  store double %1797, double* %230, align 1
  store i64 0, i64* %231, align 1
  %1798 = add i64 %1769, 24
  %1799 = add i64 %1771, 30
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i64*
  %1801 = load i64, i64* %1800, align 8
  store i64 %1801, i64* %RAX.i1872, align 8
  %1802 = add i64 %1769, -100
  %1803 = add i64 %1771, 34
  store i64 %1803, i64* %3, align 8
  %1804 = inttoptr i64 %1802 to i32*
  %1805 = load i32, i32* %1804, align 4
  %1806 = sext i32 %1805 to i64
  %1807 = mul nsw i64 %1806, 33800
  store i64 %1807, i64* %RCX.i1817, align 8
  %1808 = lshr i64 %1807, 63
  %1809 = add i64 %1807, %1801
  store i64 %1809, i64* %RAX.i1872, align 8
  %1810 = icmp ult i64 %1809, %1801
  %1811 = icmp ult i64 %1809, %1807
  %1812 = or i1 %1810, %1811
  %1813 = zext i1 %1812 to i8
  store i8 %1813, i8* %39, align 1
  %1814 = trunc i64 %1809 to i32
  %1815 = and i32 %1814, 255
  %1816 = tail call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  store i8 %1819, i8* %46, align 1
  %1820 = xor i64 %1807, %1801
  %1821 = xor i64 %1820, %1809
  %1822 = lshr i64 %1821, 4
  %1823 = trunc i64 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %51, align 1
  %1825 = icmp eq i64 %1809, 0
  %1826 = zext i1 %1825 to i8
  store i8 %1826, i8* %54, align 1
  %1827 = lshr i64 %1809, 63
  %1828 = trunc i64 %1827 to i8
  store i8 %1828, i8* %57, align 1
  %1829 = lshr i64 %1801, 63
  %1830 = xor i64 %1827, %1829
  %1831 = xor i64 %1827, %1808
  %1832 = add nuw nsw i64 %1830, %1831
  %1833 = icmp eq i64 %1832, 2
  %1834 = zext i1 %1833 to i8
  store i8 %1834, i8* %63, align 1
  %1835 = add i64 %1771, 48
  store i64 %1835, i64* %3, align 8
  %1836 = load i32, i32* %1777, align 4
  %1837 = sext i32 %1836 to i64
  %1838 = mul nsw i64 %1837, 520
  store i64 %1838, i64* %RCX.i1817, align 8
  %1839 = lshr i64 %1838, 63
  %1840 = add i64 %1838, %1809
  store i64 %1840, i64* %RAX.i1872, align 8
  %1841 = icmp ult i64 %1840, %1809
  %1842 = icmp ult i64 %1840, %1838
  %1843 = or i1 %1841, %1842
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %39, align 1
  %1845 = trunc i64 %1840 to i32
  %1846 = and i32 %1845, 255
  %1847 = tail call i32 @llvm.ctpop.i32(i32 %1846)
  %1848 = trunc i32 %1847 to i8
  %1849 = and i8 %1848, 1
  %1850 = xor i8 %1849, 1
  store i8 %1850, i8* %46, align 1
  %1851 = xor i64 %1838, %1809
  %1852 = xor i64 %1851, %1840
  %1853 = lshr i64 %1852, 4
  %1854 = trunc i64 %1853 to i8
  %1855 = and i8 %1854, 1
  store i8 %1855, i8* %51, align 1
  %1856 = icmp eq i64 %1840, 0
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %54, align 1
  %1858 = lshr i64 %1840, 63
  %1859 = trunc i64 %1858 to i8
  store i8 %1859, i8* %57, align 1
  %1860 = xor i64 %1858, %1827
  %1861 = xor i64 %1858, %1839
  %1862 = add nuw nsw i64 %1860, %1861
  %1863 = icmp eq i64 %1862, 2
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %63, align 1
  %1865 = add i64 %1769, -48
  %1866 = add i64 %1771, 62
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = sext i32 %1868 to i64
  store i64 %1869, i64* %RCX.i1817, align 8
  %1870 = shl nsw i64 %1869, 3
  %1871 = add i64 %1870, %1840
  %1872 = add i64 %1771, 67
  store i64 %1872, i64* %3, align 8
  %1873 = load double, double* %230, align 1
  %1874 = inttoptr i64 %1871 to double*
  %1875 = load double, double* %1874, align 8
  %1876 = fmul double %1873, %1875
  store double %1876, double* %230, align 1
  %1877 = add i64 %1769, -72
  %1878 = add i64 %1771, 72
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to double*
  %1880 = load double, double* %1879, align 8
  store double %1880, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %1881 = add i64 %1771, 76
  store i64 %1881, i64* %3, align 8
  %1882 = load i64, i64* %1787, align 8
  store i64 %1882, i64* %RAX.i1872, align 8
  %1883 = add i64 %1771, 80
  store i64 %1883, i64* %3, align 8
  %1884 = load i32, i32* %1777, align 4
  %1885 = sext i32 %1884 to i64
  store i64 %1885, i64* %RCX.i1817, align 8
  %1886 = shl nsw i64 %1885, 3
  %1887 = add i64 %1886, %1882
  %1888 = add i64 %1771, 85
  store i64 %1888, i64* %3, align 8
  %1889 = inttoptr i64 %1887 to double*
  %1890 = load double, double* %1889, align 8
  %1891 = fdiv double %1880, %1890
  store double %1891, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1892 = load i64, i64* %RBP.i, align 8
  %1893 = add i64 %1892, -96
  %1894 = add i64 %1771, 89
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i64*
  %1896 = load i64, i64* %1895, align 8
  store i64 %1896, i64* %RAX.i1872, align 8
  %1897 = add i64 %1892, -100
  %1898 = add i64 %1771, 93
  store i64 %1898, i64* %3, align 8
  %1899 = inttoptr i64 %1897 to i32*
  %1900 = load i32, i32* %1899, align 4
  %1901 = sext i32 %1900 to i64
  %1902 = mul nsw i64 %1901, 520
  store i64 %1902, i64* %RCX.i1817, align 8
  %1903 = lshr i64 %1902, 63
  %1904 = add i64 %1902, %1896
  store i64 %1904, i64* %RAX.i1872, align 8
  %1905 = icmp ult i64 %1904, %1896
  %1906 = icmp ult i64 %1904, %1902
  %1907 = or i1 %1905, %1906
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %39, align 1
  %1909 = trunc i64 %1904 to i32
  %1910 = and i32 %1909, 255
  %1911 = tail call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  store i8 %1914, i8* %46, align 1
  %1915 = xor i64 %1902, %1896
  %1916 = xor i64 %1915, %1904
  %1917 = lshr i64 %1916, 4
  %1918 = trunc i64 %1917 to i8
  %1919 = and i8 %1918, 1
  store i8 %1919, i8* %51, align 1
  %1920 = icmp eq i64 %1904, 0
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %54, align 1
  %1922 = lshr i64 %1904, 63
  %1923 = trunc i64 %1922 to i8
  store i8 %1923, i8* %57, align 1
  %1924 = lshr i64 %1896, 63
  %1925 = xor i64 %1922, %1924
  %1926 = xor i64 %1922, %1903
  %1927 = add nuw nsw i64 %1925, %1926
  %1928 = icmp eq i64 %1927, 2
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %63, align 1
  %1930 = add i64 %1892, -104
  %1931 = add i64 %1771, 107
  store i64 %1931, i64* %3, align 8
  %1932 = inttoptr i64 %1930 to i32*
  %1933 = load i32, i32* %1932, align 4
  %1934 = sext i32 %1933 to i64
  store i64 %1934, i64* %RCX.i1817, align 8
  %1935 = shl nsw i64 %1934, 3
  %1936 = add i64 %1935, %1904
  %1937 = add i64 %1771, 112
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to double*
  %1939 = load double, double* %1938, align 8
  %1940 = fmul double %1891, %1939
  store double %1940, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1941 = fsub double %1876, %1940
  store double %1941, double* %230, align 1
  %1942 = add i64 %1892, 16
  %1943 = add i64 %1771, 120
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i64*
  %1945 = load i64, i64* %1944, align 8
  store i64 %1945, i64* %RAX.i1872, align 8
  %1946 = add i64 %1771, 124
  store i64 %1946, i64* %3, align 8
  %1947 = load i32, i32* %1899, align 4
  %1948 = sext i32 %1947 to i64
  %1949 = mul nsw i64 %1948, 520
  store i64 %1949, i64* %RCX.i1817, align 8
  %1950 = lshr i64 %1949, 63
  %1951 = add i64 %1949, %1945
  store i64 %1951, i64* %RAX.i1872, align 8
  %1952 = icmp ult i64 %1951, %1945
  %1953 = icmp ult i64 %1951, %1949
  %1954 = or i1 %1952, %1953
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %39, align 1
  %1956 = trunc i64 %1951 to i32
  %1957 = and i32 %1956, 255
  %1958 = tail call i32 @llvm.ctpop.i32(i32 %1957)
  %1959 = trunc i32 %1958 to i8
  %1960 = and i8 %1959, 1
  %1961 = xor i8 %1960, 1
  store i8 %1961, i8* %46, align 1
  %1962 = xor i64 %1949, %1945
  %1963 = xor i64 %1962, %1951
  %1964 = lshr i64 %1963, 4
  %1965 = trunc i64 %1964 to i8
  %1966 = and i8 %1965, 1
  store i8 %1966, i8* %51, align 1
  %1967 = icmp eq i64 %1951, 0
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %54, align 1
  %1969 = lshr i64 %1951, 63
  %1970 = trunc i64 %1969 to i8
  store i8 %1970, i8* %57, align 1
  %1971 = lshr i64 %1945, 63
  %1972 = xor i64 %1969, %1971
  %1973 = xor i64 %1969, %1950
  %1974 = add nuw nsw i64 %1972, %1973
  %1975 = icmp eq i64 %1974, 2
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %63, align 1
  %1977 = add i64 %1771, 138
  store i64 %1977, i64* %3, align 8
  %1978 = load i32, i32* %1932, align 4
  %1979 = sext i32 %1978 to i64
  store i64 %1979, i64* %RCX.i1817, align 8
  %1980 = shl nsw i64 %1979, 3
  %1981 = add i64 %1980, %1951
  %1982 = add i64 %1771, 143
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to double*
  store double %1941, double* %1983, align 8
  %1984 = load i64, i64* %RBP.i, align 8
  %1985 = add i64 %1984, 72
  %1986 = load i64, i64* %3, align 8
  %1987 = add i64 %1986, 4
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1985 to i64*
  %1989 = load i64, i64* %1988, align 8
  store i64 %1989, i64* %RAX.i1872, align 8
  %1990 = add i64 %1984, -48
  %1991 = add i64 %1986, 8
  store i64 %1991, i64* %3, align 8
  %1992 = inttoptr i64 %1990 to i32*
  %1993 = load i32, i32* %1992, align 4
  %1994 = sext i32 %1993 to i64
  store i64 %1994, i64* %RCX.i1817, align 8
  %1995 = shl nsw i64 %1994, 3
  %1996 = add i64 %1995, %1989
  %1997 = add i64 %1986, 13
  store i64 %1997, i64* %3, align 8
  %1998 = inttoptr i64 %1996 to double*
  %1999 = load double, double* %1998, align 8
  store double %1999, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %2000 = add i64 %1984, 80
  %2001 = add i64 %1986, 17
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i64*
  %2003 = load i64, i64* %2002, align 8
  store i64 %2003, i64* %RAX.i1872, align 8
  %2004 = add i64 %1986, 21
  store i64 %2004, i64* %3, align 8
  %2005 = load i32, i32* %1992, align 4
  %2006 = sext i32 %2005 to i64
  store i64 %2006, i64* %RCX.i1817, align 8
  %2007 = shl nsw i64 %2006, 3
  %2008 = add i64 %2007, %2003
  %2009 = add i64 %1986, 26
  store i64 %2009, i64* %3, align 8
  %2010 = inttoptr i64 %2008 to double*
  %2011 = load double, double* %2010, align 8
  %2012 = fdiv double %1999, %2011
  store double %2012, double* %230, align 1
  store i64 0, i64* %231, align 1
  %2013 = add i64 %1984, 48
  %2014 = add i64 %1986, 30
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i64*
  %2016 = load i64, i64* %2015, align 8
  store i64 %2016, i64* %RAX.i1872, align 8
  %2017 = add i64 %1984, -100
  %2018 = add i64 %1986, 34
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = sext i32 %2020 to i64
  %2022 = mul nsw i64 %2021, 33800
  store i64 %2022, i64* %RCX.i1817, align 8
  %2023 = lshr i64 %2022, 63
  %2024 = add i64 %2022, %2016
  store i64 %2024, i64* %RAX.i1872, align 8
  %2025 = icmp ult i64 %2024, %2016
  %2026 = icmp ult i64 %2024, %2022
  %2027 = or i1 %2025, %2026
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %39, align 1
  %2029 = trunc i64 %2024 to i32
  %2030 = and i32 %2029, 255
  %2031 = tail call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  store i8 %2034, i8* %46, align 1
  %2035 = xor i64 %2022, %2016
  %2036 = xor i64 %2035, %2024
  %2037 = lshr i64 %2036, 4
  %2038 = trunc i64 %2037 to i8
  %2039 = and i8 %2038, 1
  store i8 %2039, i8* %51, align 1
  %2040 = icmp eq i64 %2024, 0
  %2041 = zext i1 %2040 to i8
  store i8 %2041, i8* %54, align 1
  %2042 = lshr i64 %2024, 63
  %2043 = trunc i64 %2042 to i8
  store i8 %2043, i8* %57, align 1
  %2044 = lshr i64 %2016, 63
  %2045 = xor i64 %2042, %2044
  %2046 = xor i64 %2042, %2023
  %2047 = add nuw nsw i64 %2045, %2046
  %2048 = icmp eq i64 %2047, 2
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %63, align 1
  %2050 = add i64 %1984, -104
  %2051 = add i64 %1986, 48
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to i32*
  %2053 = load i32, i32* %2052, align 4
  %2054 = sext i32 %2053 to i64
  %2055 = mul nsw i64 %2054, 520
  store i64 %2055, i64* %RCX.i1817, align 8
  %2056 = lshr i64 %2055, 63
  %2057 = add i64 %2055, %2024
  store i64 %2057, i64* %RAX.i1872, align 8
  %2058 = icmp ult i64 %2057, %2024
  %2059 = icmp ult i64 %2057, %2055
  %2060 = or i1 %2058, %2059
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %39, align 1
  %2062 = trunc i64 %2057 to i32
  %2063 = and i32 %2062, 255
  %2064 = tail call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  store i8 %2067, i8* %46, align 1
  %2068 = xor i64 %2055, %2024
  %2069 = xor i64 %2068, %2057
  %2070 = lshr i64 %2069, 4
  %2071 = trunc i64 %2070 to i8
  %2072 = and i8 %2071, 1
  store i8 %2072, i8* %51, align 1
  %2073 = icmp eq i64 %2057, 0
  %2074 = zext i1 %2073 to i8
  store i8 %2074, i8* %54, align 1
  %2075 = lshr i64 %2057, 63
  %2076 = trunc i64 %2075 to i8
  store i8 %2076, i8* %57, align 1
  %2077 = xor i64 %2075, %2042
  %2078 = xor i64 %2075, %2056
  %2079 = add nuw nsw i64 %2077, %2078
  %2080 = icmp eq i64 %2079, 2
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %63, align 1
  %2082 = add i64 %1986, 62
  store i64 %2082, i64* %3, align 8
  %2083 = load i32, i32* %1992, align 4
  %2084 = sext i32 %2083 to i64
  store i64 %2084, i64* %RCX.i1817, align 8
  %2085 = shl nsw i64 %2084, 3
  %2086 = add i64 %2085, %2057
  %2087 = add i64 %1986, 67
  store i64 %2087, i64* %3, align 8
  %2088 = load double, double* %230, align 1
  %2089 = inttoptr i64 %2086 to double*
  %2090 = load double, double* %2089, align 8
  %2091 = fmul double %2088, %2090
  store double %2091, double* %230, align 1
  %2092 = add i64 %1984, -64
  %2093 = add i64 %1986, 72
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2092 to double*
  %2095 = load double, double* %2094, align 8
  store double %2095, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %2096 = add i64 %1984, 64
  %2097 = add i64 %1986, 76
  store i64 %2097, i64* %3, align 8
  %2098 = inttoptr i64 %2096 to i64*
  %2099 = load i64, i64* %2098, align 8
  store i64 %2099, i64* %RAX.i1872, align 8
  %2100 = add i64 %1986, 80
  store i64 %2100, i64* %3, align 8
  %2101 = load i32, i32* %2019, align 4
  %2102 = sext i32 %2101 to i64
  store i64 %2102, i64* %RCX.i1817, align 8
  %2103 = shl nsw i64 %2102, 3
  %2104 = add i64 %2103, %2099
  %2105 = add i64 %1986, 85
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to double*
  %2107 = load double, double* %2106, align 8
  %2108 = fmul double %2095, %2107
  store double %2108, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2109 = load i64, i64* %RBP.i, align 8
  %2110 = add i64 %2109, 80
  %2111 = add i64 %1986, 89
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2110 to i64*
  %2113 = load i64, i64* %2112, align 8
  store i64 %2113, i64* %RAX.i1872, align 8
  %2114 = add i64 %2109, -48
  %2115 = add i64 %1986, 93
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i32*
  %2117 = load i32, i32* %2116, align 4
  %2118 = sext i32 %2117 to i64
  store i64 %2118, i64* %RCX.i1817, align 8
  %2119 = shl nsw i64 %2118, 3
  %2120 = add i64 %2119, %2113
  %2121 = add i64 %1986, 98
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2120 to double*
  %2123 = load double, double* %2122, align 8
  %2124 = fdiv double %2108, %2123
  store double %2124, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2125 = add i64 %2109, 16
  %2126 = add i64 %1986, 102
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i64*
  %2128 = load i64, i64* %2127, align 8
  store i64 %2128, i64* %RAX.i1872, align 8
  %2129 = add i64 %2109, -100
  %2130 = add i64 %1986, 106
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = sext i32 %2132 to i64
  %2134 = mul nsw i64 %2133, 520
  store i64 %2134, i64* %RCX.i1817, align 8
  %2135 = lshr i64 %2134, 63
  %2136 = add i64 %2134, %2128
  store i64 %2136, i64* %RAX.i1872, align 8
  %2137 = icmp ult i64 %2136, %2128
  %2138 = icmp ult i64 %2136, %2134
  %2139 = or i1 %2137, %2138
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %39, align 1
  %2141 = trunc i64 %2136 to i32
  %2142 = and i32 %2141, 255
  %2143 = tail call i32 @llvm.ctpop.i32(i32 %2142)
  %2144 = trunc i32 %2143 to i8
  %2145 = and i8 %2144, 1
  %2146 = xor i8 %2145, 1
  store i8 %2146, i8* %46, align 1
  %2147 = xor i64 %2134, %2128
  %2148 = xor i64 %2147, %2136
  %2149 = lshr i64 %2148, 4
  %2150 = trunc i64 %2149 to i8
  %2151 = and i8 %2150, 1
  store i8 %2151, i8* %51, align 1
  %2152 = icmp eq i64 %2136, 0
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %54, align 1
  %2154 = lshr i64 %2136, 63
  %2155 = trunc i64 %2154 to i8
  store i8 %2155, i8* %57, align 1
  %2156 = lshr i64 %2128, 63
  %2157 = xor i64 %2154, %2156
  %2158 = xor i64 %2154, %2135
  %2159 = add nuw nsw i64 %2157, %2158
  %2160 = icmp eq i64 %2159, 2
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %63, align 1
  %2162 = add i64 %2109, -104
  %2163 = add i64 %1986, 120
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2162 to i32*
  %2165 = load i32, i32* %2164, align 4
  %2166 = sext i32 %2165 to i64
  store i64 %2166, i64* %RCX.i1817, align 8
  %2167 = shl nsw i64 %2166, 3
  %2168 = add i64 %2167, %2136
  %2169 = add i64 %1986, 125
  store i64 %2169, i64* %3, align 8
  %2170 = inttoptr i64 %2168 to double*
  %2171 = load double, double* %2170, align 8
  %2172 = fmul double %2124, %2171
  store double %2172, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2173 = load double, double* %230, align 1
  %2174 = fadd double %2173, %2172
  store double %2174, double* %230, align 1
  %2175 = add i64 %2109, -64
  %2176 = add i64 %1986, 134
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2175 to double*
  %2178 = load double, double* %2177, align 8
  store double %2178, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %2179 = add i64 %2109, 56
  %2180 = add i64 %1986, 138
  store i64 %2180, i64* %3, align 8
  %2181 = inttoptr i64 %2179 to i64*
  %2182 = load i64, i64* %2181, align 8
  store i64 %2182, i64* %RAX.i1872, align 8
  %2183 = add i64 %1986, 142
  store i64 %2183, i64* %3, align 8
  %2184 = load i32, i32* %2131, align 4
  %2185 = sext i32 %2184 to i64
  store i64 %2185, i64* %RCX.i1817, align 8
  %2186 = shl nsw i64 %2185, 3
  %2187 = add i64 %2186, %2182
  %2188 = add i64 %1986, 147
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2187 to double*
  %2190 = load double, double* %2189, align 8
  %2191 = fmul double %2178, %2190
  store double %2191, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2192 = add i64 %1986, 151
  store i64 %2192, i64* %3, align 8
  %2193 = load i64, i64* %2112, align 8
  store i64 %2193, i64* %RAX.i1872, align 8
  %2194 = add i64 %1986, 155
  store i64 %2194, i64* %3, align 8
  %2195 = load i32, i32* %2116, align 4
  %2196 = sext i32 %2195 to i64
  store i64 %2196, i64* %RCX.i1817, align 8
  %2197 = shl nsw i64 %2196, 3
  %2198 = add i64 %2197, %2193
  %2199 = add i64 %1986, 160
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to double*
  %2201 = load double, double* %2200, align 8
  %2202 = fdiv double %2191, %2201
  store double %2202, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2203 = add i64 %2109, 24
  %2204 = add i64 %1986, 164
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i64*
  %2206 = load i64, i64* %2205, align 8
  store i64 %2206, i64* %RAX.i1872, align 8
  %2207 = add i64 %1986, 168
  store i64 %2207, i64* %3, align 8
  %2208 = load i32, i32* %2131, align 4
  %2209 = sext i32 %2208 to i64
  %2210 = mul nsw i64 %2209, 33800
  store i64 %2210, i64* %RCX.i1817, align 8
  %2211 = lshr i64 %2210, 63
  %2212 = add i64 %2210, %2206
  store i64 %2212, i64* %RAX.i1872, align 8
  %2213 = icmp ult i64 %2212, %2206
  %2214 = icmp ult i64 %2212, %2210
  %2215 = or i1 %2213, %2214
  %2216 = zext i1 %2215 to i8
  store i8 %2216, i8* %39, align 1
  %2217 = trunc i64 %2212 to i32
  %2218 = and i32 %2217, 255
  %2219 = tail call i32 @llvm.ctpop.i32(i32 %2218)
  %2220 = trunc i32 %2219 to i8
  %2221 = and i8 %2220, 1
  %2222 = xor i8 %2221, 1
  store i8 %2222, i8* %46, align 1
  %2223 = xor i64 %2210, %2206
  %2224 = xor i64 %2223, %2212
  %2225 = lshr i64 %2224, 4
  %2226 = trunc i64 %2225 to i8
  %2227 = and i8 %2226, 1
  store i8 %2227, i8* %51, align 1
  %2228 = icmp eq i64 %2212, 0
  %2229 = zext i1 %2228 to i8
  store i8 %2229, i8* %54, align 1
  %2230 = lshr i64 %2212, 63
  %2231 = trunc i64 %2230 to i8
  store i8 %2231, i8* %57, align 1
  %2232 = lshr i64 %2206, 63
  %2233 = xor i64 %2230, %2232
  %2234 = xor i64 %2230, %2211
  %2235 = add nuw nsw i64 %2233, %2234
  %2236 = icmp eq i64 %2235, 2
  %2237 = zext i1 %2236 to i8
  store i8 %2237, i8* %63, align 1
  %2238 = load i64, i64* %RBP.i, align 8
  %2239 = add i64 %2238, -104
  %2240 = add i64 %1986, 182
  store i64 %2240, i64* %3, align 8
  %2241 = inttoptr i64 %2239 to i32*
  %2242 = load i32, i32* %2241, align 4
  %2243 = sext i32 %2242 to i64
  %2244 = mul nsw i64 %2243, 520
  store i64 %2244, i64* %RCX.i1817, align 8
  %2245 = lshr i64 %2244, 63
  %2246 = add i64 %2244, %2212
  store i64 %2246, i64* %RAX.i1872, align 8
  %2247 = icmp ult i64 %2246, %2212
  %2248 = icmp ult i64 %2246, %2244
  %2249 = or i1 %2247, %2248
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %39, align 1
  %2251 = trunc i64 %2246 to i32
  %2252 = and i32 %2251, 255
  %2253 = tail call i32 @llvm.ctpop.i32(i32 %2252)
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  %2256 = xor i8 %2255, 1
  store i8 %2256, i8* %46, align 1
  %2257 = xor i64 %2244, %2212
  %2258 = xor i64 %2257, %2246
  %2259 = lshr i64 %2258, 4
  %2260 = trunc i64 %2259 to i8
  %2261 = and i8 %2260, 1
  store i8 %2261, i8* %51, align 1
  %2262 = icmp eq i64 %2246, 0
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %54, align 1
  %2264 = lshr i64 %2246, 63
  %2265 = trunc i64 %2264 to i8
  store i8 %2265, i8* %57, align 1
  %2266 = xor i64 %2264, %2230
  %2267 = xor i64 %2264, %2245
  %2268 = add nuw nsw i64 %2266, %2267
  %2269 = icmp eq i64 %2268, 2
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %63, align 1
  %2271 = add i64 %2238, -48
  %2272 = add i64 %1986, 196
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2271 to i32*
  %2274 = load i32, i32* %2273, align 4
  %2275 = sext i32 %2274 to i64
  store i64 %2275, i64* %RCX.i1817, align 8
  %2276 = shl nsw i64 %2275, 3
  %2277 = add i64 %2276, %2246
  %2278 = add i64 %1986, 201
  store i64 %2278, i64* %3, align 8
  %2279 = load double, double* %233, align 1
  %2280 = inttoptr i64 %2277 to double*
  %2281 = load double, double* %2280, align 8
  %2282 = fmul double %2279, %2281
  store double %2282, double* %233, align 1
  %2283 = load double, double* %230, align 1
  %2284 = fsub double %2283, %2282
  store double %2284, double* %230, align 1
  %2285 = add i64 %2238, 48
  %2286 = add i64 %1986, 209
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2285 to i64*
  %2288 = load i64, i64* %2287, align 8
  store i64 %2288, i64* %RAX.i1872, align 8
  %2289 = add i64 %2238, -100
  %2290 = add i64 %1986, 213
  store i64 %2290, i64* %3, align 8
  %2291 = inttoptr i64 %2289 to i32*
  %2292 = load i32, i32* %2291, align 4
  %2293 = sext i32 %2292 to i64
  %2294 = mul nsw i64 %2293, 33800
  store i64 %2294, i64* %RCX.i1817, align 8
  %2295 = lshr i64 %2294, 63
  %2296 = add i64 %2294, %2288
  store i64 %2296, i64* %RAX.i1872, align 8
  %2297 = icmp ult i64 %2296, %2288
  %2298 = icmp ult i64 %2296, %2294
  %2299 = or i1 %2297, %2298
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %39, align 1
  %2301 = trunc i64 %2296 to i32
  %2302 = and i32 %2301, 255
  %2303 = tail call i32 @llvm.ctpop.i32(i32 %2302)
  %2304 = trunc i32 %2303 to i8
  %2305 = and i8 %2304, 1
  %2306 = xor i8 %2305, 1
  store i8 %2306, i8* %46, align 1
  %2307 = xor i64 %2294, %2288
  %2308 = xor i64 %2307, %2296
  %2309 = lshr i64 %2308, 4
  %2310 = trunc i64 %2309 to i8
  %2311 = and i8 %2310, 1
  store i8 %2311, i8* %51, align 1
  %2312 = icmp eq i64 %2296, 0
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %54, align 1
  %2314 = lshr i64 %2296, 63
  %2315 = trunc i64 %2314 to i8
  store i8 %2315, i8* %57, align 1
  %2316 = lshr i64 %2288, 63
  %2317 = xor i64 %2314, %2316
  %2318 = xor i64 %2314, %2295
  %2319 = add nuw nsw i64 %2317, %2318
  %2320 = icmp eq i64 %2319, 2
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %63, align 1
  %2322 = load i64, i64* %RBP.i, align 8
  %2323 = add i64 %2322, -104
  %2324 = add i64 %1986, 227
  store i64 %2324, i64* %3, align 8
  %2325 = inttoptr i64 %2323 to i32*
  %2326 = load i32, i32* %2325, align 4
  %2327 = sext i32 %2326 to i64
  %2328 = mul nsw i64 %2327, 520
  store i64 %2328, i64* %RCX.i1817, align 8
  %2329 = lshr i64 %2328, 63
  %2330 = add i64 %2328, %2296
  store i64 %2330, i64* %RAX.i1872, align 8
  %2331 = icmp ult i64 %2330, %2296
  %2332 = icmp ult i64 %2330, %2328
  %2333 = or i1 %2331, %2332
  %2334 = zext i1 %2333 to i8
  store i8 %2334, i8* %39, align 1
  %2335 = trunc i64 %2330 to i32
  %2336 = and i32 %2335, 255
  %2337 = tail call i32 @llvm.ctpop.i32(i32 %2336)
  %2338 = trunc i32 %2337 to i8
  %2339 = and i8 %2338, 1
  %2340 = xor i8 %2339, 1
  store i8 %2340, i8* %46, align 1
  %2341 = xor i64 %2328, %2296
  %2342 = xor i64 %2341, %2330
  %2343 = lshr i64 %2342, 4
  %2344 = trunc i64 %2343 to i8
  %2345 = and i8 %2344, 1
  store i8 %2345, i8* %51, align 1
  %2346 = icmp eq i64 %2330, 0
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %54, align 1
  %2348 = lshr i64 %2330, 63
  %2349 = trunc i64 %2348 to i8
  store i8 %2349, i8* %57, align 1
  %2350 = xor i64 %2348, %2314
  %2351 = xor i64 %2348, %2329
  %2352 = add nuw nsw i64 %2350, %2351
  %2353 = icmp eq i64 %2352, 2
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %63, align 1
  %2355 = add i64 %2322, -48
  %2356 = add i64 %1986, 241
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  %2358 = load i32, i32* %2357, align 4
  %2359 = sext i32 %2358 to i64
  store i64 %2359, i64* %RCX.i1817, align 8
  %2360 = shl nsw i64 %2359, 3
  %2361 = add i64 %2360, %2330
  %2362 = add i64 %1986, 246
  store i64 %2362, i64* %3, align 8
  %2363 = load i64, i64* %148, align 1
  %2364 = inttoptr i64 %2361 to i64*
  store i64 %2363, i64* %2364, align 8
  %2365 = load i64, i64* %RBP.i, align 8
  %2366 = add i64 %2365, 16
  %2367 = load i64, i64* %3, align 8
  %2368 = add i64 %2367, 4
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2366 to i64*
  %2370 = load i64, i64* %2369, align 8
  store i64 %2370, i64* %RAX.i1872, align 8
  %2371 = add i64 %2365, -100
  %2372 = add i64 %2367, 8
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  %2374 = load i32, i32* %2373, align 4
  %2375 = sext i32 %2374 to i64
  %2376 = mul nsw i64 %2375, 520
  store i64 %2376, i64* %RCX.i1817, align 8
  %2377 = lshr i64 %2376, 63
  %2378 = add i64 %2376, %2370
  store i64 %2378, i64* %RAX.i1872, align 8
  %2379 = icmp ult i64 %2378, %2370
  %2380 = icmp ult i64 %2378, %2376
  %2381 = or i1 %2379, %2380
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %39, align 1
  %2383 = trunc i64 %2378 to i32
  %2384 = and i32 %2383, 255
  %2385 = tail call i32 @llvm.ctpop.i32(i32 %2384)
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  %2388 = xor i8 %2387, 1
  store i8 %2388, i8* %46, align 1
  %2389 = xor i64 %2376, %2370
  %2390 = xor i64 %2389, %2378
  %2391 = lshr i64 %2390, 4
  %2392 = trunc i64 %2391 to i8
  %2393 = and i8 %2392, 1
  store i8 %2393, i8* %51, align 1
  %2394 = icmp eq i64 %2378, 0
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %54, align 1
  %2396 = lshr i64 %2378, 63
  %2397 = trunc i64 %2396 to i8
  store i8 %2397, i8* %57, align 1
  %2398 = lshr i64 %2370, 63
  %2399 = xor i64 %2396, %2398
  %2400 = xor i64 %2396, %2377
  %2401 = add nuw nsw i64 %2399, %2400
  %2402 = icmp eq i64 %2401, 2
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %63, align 1
  %2404 = add i64 %2365, -104
  %2405 = add i64 %2367, 22
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i32*
  %2407 = load i32, i32* %2406, align 4
  %2408 = sext i32 %2407 to i64
  store i64 %2408, i64* %RCX.i1817, align 8
  %2409 = shl nsw i64 %2408, 3
  %2410 = add i64 %2409, %2378
  %2411 = add i64 %2367, 27
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to i64*
  %2413 = load i64, i64* %2412, align 8
  store i64 %2413, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %2414 = add i64 %2365, 24
  %2415 = add i64 %2367, 31
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2414 to i64*
  %2417 = load i64, i64* %2416, align 8
  store i64 %2417, i64* %RAX.i1872, align 8
  %2418 = add i64 %2367, 35
  store i64 %2418, i64* %3, align 8
  %2419 = load i32, i32* %2373, align 4
  %2420 = sext i32 %2419 to i64
  %2421 = mul nsw i64 %2420, 33800
  store i64 %2421, i64* %RCX.i1817, align 8
  %2422 = lshr i64 %2421, 63
  %2423 = add i64 %2421, %2417
  store i64 %2423, i64* %RAX.i1872, align 8
  %2424 = icmp ult i64 %2423, %2417
  %2425 = icmp ult i64 %2423, %2421
  %2426 = or i1 %2424, %2425
  %2427 = zext i1 %2426 to i8
  store i8 %2427, i8* %39, align 1
  %2428 = trunc i64 %2423 to i32
  %2429 = and i32 %2428, 255
  %2430 = tail call i32 @llvm.ctpop.i32(i32 %2429)
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  %2433 = xor i8 %2432, 1
  store i8 %2433, i8* %46, align 1
  %2434 = xor i64 %2421, %2417
  %2435 = xor i64 %2434, %2423
  %2436 = lshr i64 %2435, 4
  %2437 = trunc i64 %2436 to i8
  %2438 = and i8 %2437, 1
  store i8 %2438, i8* %51, align 1
  %2439 = icmp eq i64 %2423, 0
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %54, align 1
  %2441 = lshr i64 %2423, 63
  %2442 = trunc i64 %2441 to i8
  store i8 %2442, i8* %57, align 1
  %2443 = lshr i64 %2417, 63
  %2444 = xor i64 %2441, %2443
  %2445 = xor i64 %2441, %2422
  %2446 = add nuw nsw i64 %2444, %2445
  %2447 = icmp eq i64 %2446, 2
  %2448 = zext i1 %2447 to i8
  store i8 %2448, i8* %63, align 1
  %2449 = load i64, i64* %RBP.i, align 8
  %2450 = add i64 %2449, -104
  %2451 = add i64 %2367, 49
  store i64 %2451, i64* %3, align 8
  %2452 = inttoptr i64 %2450 to i32*
  %2453 = load i32, i32* %2452, align 4
  %2454 = sext i32 %2453 to i64
  %2455 = mul nsw i64 %2454, 520
  store i64 %2455, i64* %RCX.i1817, align 8
  %2456 = lshr i64 %2455, 63
  %2457 = add i64 %2455, %2423
  store i64 %2457, i64* %RAX.i1872, align 8
  %2458 = icmp ult i64 %2457, %2423
  %2459 = icmp ult i64 %2457, %2455
  %2460 = or i1 %2458, %2459
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %39, align 1
  %2462 = trunc i64 %2457 to i32
  %2463 = and i32 %2462, 255
  %2464 = tail call i32 @llvm.ctpop.i32(i32 %2463)
  %2465 = trunc i32 %2464 to i8
  %2466 = and i8 %2465, 1
  %2467 = xor i8 %2466, 1
  store i8 %2467, i8* %46, align 1
  %2468 = xor i64 %2455, %2423
  %2469 = xor i64 %2468, %2457
  %2470 = lshr i64 %2469, 4
  %2471 = trunc i64 %2470 to i8
  %2472 = and i8 %2471, 1
  store i8 %2472, i8* %51, align 1
  %2473 = icmp eq i64 %2457, 0
  %2474 = zext i1 %2473 to i8
  store i8 %2474, i8* %54, align 1
  %2475 = lshr i64 %2457, 63
  %2476 = trunc i64 %2475 to i8
  store i8 %2476, i8* %57, align 1
  %2477 = xor i64 %2475, %2441
  %2478 = xor i64 %2475, %2456
  %2479 = add nuw nsw i64 %2477, %2478
  %2480 = icmp eq i64 %2479, 2
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %63, align 1
  %2482 = add i64 %2449, -48
  %2483 = add i64 %2367, 63
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  %2485 = load i32, i32* %2484, align 4
  %2486 = sext i32 %2485 to i64
  store i64 %2486, i64* %RCX.i1817, align 8
  %2487 = shl nsw i64 %2486, 3
  %2488 = add i64 %2487, %2457
  %2489 = add i64 %2367, 68
  store i64 %2489, i64* %3, align 8
  %2490 = load i64, i64* %148, align 1
  %2491 = inttoptr i64 %2488 to i64*
  store i64 %2490, i64* %2491, align 8
  %2492 = load i64, i64* %RBP.i, align 8
  %2493 = add i64 %2492, -108
  %2494 = load i64, i64* %3, align 8
  %2495 = add i64 %2494, 7
  store i64 %2495, i64* %3, align 8
  %2496 = inttoptr i64 %2493 to i32*
  store i32 0, i32* %2496, align 4
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_4019d2

block_.L_4019d2:                                  ; preds = %block_4019de, %block_.L_40174c
  %2497 = phi i64 [ %3644, %block_4019de ], [ %.pre3, %block_.L_40174c ]
  %2498 = load i64, i64* %RBP.i, align 8
  %2499 = add i64 %2498, -108
  %2500 = add i64 %2497, 3
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2499 to i32*
  %2502 = load i32, i32* %2501, align 4
  %2503 = zext i32 %2502 to i64
  store i64 %2503, i64* %RAX.i1872, align 8
  %2504 = add i64 %2498, -48
  %2505 = add i64 %2497, 6
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i32*
  %2507 = load i32, i32* %2506, align 4
  %2508 = sub i32 %2502, %2507
  %2509 = icmp ult i32 %2502, %2507
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %39, align 1
  %2511 = and i32 %2508, 255
  %2512 = tail call i32 @llvm.ctpop.i32(i32 %2511)
  %2513 = trunc i32 %2512 to i8
  %2514 = and i8 %2513, 1
  %2515 = xor i8 %2514, 1
  store i8 %2515, i8* %46, align 1
  %2516 = xor i32 %2507, %2502
  %2517 = xor i32 %2516, %2508
  %2518 = lshr i32 %2517, 4
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  store i8 %2520, i8* %51, align 1
  %2521 = icmp eq i32 %2508, 0
  %2522 = zext i1 %2521 to i8
  store i8 %2522, i8* %54, align 1
  %2523 = lshr i32 %2508, 31
  %2524 = trunc i32 %2523 to i8
  store i8 %2524, i8* %57, align 1
  %2525 = lshr i32 %2502, 31
  %2526 = lshr i32 %2507, 31
  %2527 = xor i32 %2526, %2525
  %2528 = xor i32 %2523, %2525
  %2529 = add nuw nsw i32 %2528, %2527
  %2530 = icmp eq i32 %2529, 2
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %63, align 1
  %2532 = icmp ne i8 %2524, 0
  %2533 = xor i1 %2532, %2530
  %.v6 = select i1 %2533, i64 12, i64 665
  %2534 = add i64 %2497, %.v6
  %2535 = add i64 %2498, 32
  %2536 = add i64 %2534, 4
  store i64 %2536, i64* %3, align 8
  %2537 = inttoptr i64 %2535 to i64*
  %2538 = load i64, i64* %2537, align 8
  store i64 %2538, i64* %RAX.i1872, align 8
  %2539 = add i64 %2498, -100
  %2540 = add i64 %2534, 8
  store i64 %2540, i64* %3, align 8
  %2541 = inttoptr i64 %2539 to i32*
  %2542 = load i32, i32* %2541, align 4
  %2543 = sext i32 %2542 to i64
  %2544 = mul nsw i64 %2543, 33800
  store i64 %2544, i64* %RCX.i1817, align 8
  %2545 = lshr i64 %2544, 63
  %2546 = add i64 %2544, %2538
  store i64 %2546, i64* %RAX.i1872, align 8
  %2547 = icmp ult i64 %2546, %2538
  %2548 = icmp ult i64 %2546, %2544
  %2549 = or i1 %2547, %2548
  %2550 = zext i1 %2549 to i8
  store i8 %2550, i8* %39, align 1
  %2551 = trunc i64 %2546 to i32
  %2552 = and i32 %2551, 255
  %2553 = tail call i32 @llvm.ctpop.i32(i32 %2552)
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  %2556 = xor i8 %2555, 1
  store i8 %2556, i8* %46, align 1
  %2557 = xor i64 %2544, %2538
  %2558 = xor i64 %2557, %2546
  %2559 = lshr i64 %2558, 4
  %2560 = trunc i64 %2559 to i8
  %2561 = and i8 %2560, 1
  store i8 %2561, i8* %51, align 1
  %2562 = icmp eq i64 %2546, 0
  %2563 = zext i1 %2562 to i8
  store i8 %2563, i8* %54, align 1
  %2564 = lshr i64 %2546, 63
  %2565 = trunc i64 %2564 to i8
  store i8 %2565, i8* %57, align 1
  %2566 = lshr i64 %2538, 63
  %2567 = xor i64 %2564, %2566
  %2568 = xor i64 %2564, %2545
  %2569 = add nuw nsw i64 %2567, %2568
  %2570 = icmp eq i64 %2569, 2
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %63, align 1
  %2572 = add i64 %2498, -52
  %2573 = add i64 %2534, 22
  store i64 %2573, i64* %3, align 8
  %2574 = inttoptr i64 %2572 to i32*
  %2575 = load i32, i32* %2574, align 4
  %2576 = sext i32 %2575 to i64
  %2577 = mul nsw i64 %2576, 520
  store i64 %2577, i64* %RCX.i1817, align 8
  %2578 = lshr i64 %2577, 63
  %2579 = add i64 %2534, 32
  store i64 %2579, i64* %3, align 8
  %2580 = add i64 %2577, %2546
  store i64 %2580, i64* %RAX.i1872, align 8
  %2581 = icmp ult i64 %2580, %2546
  %2582 = icmp ult i64 %2580, %2577
  %2583 = or i1 %2581, %2582
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %39, align 1
  %2585 = trunc i64 %2580 to i32
  %2586 = and i32 %2585, 255
  %2587 = tail call i32 @llvm.ctpop.i32(i32 %2586)
  %2588 = trunc i32 %2587 to i8
  %2589 = and i8 %2588, 1
  %2590 = xor i8 %2589, 1
  store i8 %2590, i8* %46, align 1
  %2591 = xor i64 %2577, %2546
  %2592 = xor i64 %2591, %2580
  %2593 = lshr i64 %2592, 4
  %2594 = trunc i64 %2593 to i8
  %2595 = and i8 %2594, 1
  store i8 %2595, i8* %51, align 1
  %2596 = icmp eq i64 %2580, 0
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %54, align 1
  %2598 = lshr i64 %2580, 63
  %2599 = trunc i64 %2598 to i8
  store i8 %2599, i8* %57, align 1
  %2600 = xor i64 %2598, %2564
  %2601 = xor i64 %2598, %2578
  %2602 = add nuw nsw i64 %2600, %2601
  %2603 = icmp eq i64 %2602, 2
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %63, align 1
  %2605 = load i64, i64* %RBP.i, align 8
  br i1 %2533, label %block_4019de, label %block_.L_401c6b

block_4019de:                                     ; preds = %block_.L_4019d2
  %2606 = add i64 %2605, -108
  %2607 = add i64 %2534, 36
  store i64 %2607, i64* %3, align 8
  %2608 = inttoptr i64 %2606 to i32*
  %2609 = load i32, i32* %2608, align 4
  %2610 = sext i32 %2609 to i64
  store i64 %2610, i64* %RCX.i1817, align 8
  %2611 = shl nsw i64 %2610, 3
  %2612 = add i64 %2611, %2580
  %2613 = add i64 %2534, 41
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2612 to double*
  %2615 = load double, double* %2614, align 8
  store double %2615, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %2616 = add i64 %2605, -80
  %2617 = add i64 %2534, 45
  store i64 %2617, i64* %3, align 8
  %2618 = inttoptr i64 %2616 to i64*
  %2619 = load i64, i64* %2618, align 8
  store i64 %2619, i64* %RAX.i1872, align 8
  %2620 = add i64 %2605, -100
  %2621 = add i64 %2534, 49
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2620 to i32*
  %2623 = load i32, i32* %2622, align 4
  %2624 = sext i32 %2623 to i64
  %2625 = mul nsw i64 %2624, 520
  store i64 %2625, i64* %RCX.i1817, align 8
  %2626 = lshr i64 %2625, 63
  %2627 = add i64 %2625, %2619
  store i64 %2627, i64* %RAX.i1872, align 8
  %2628 = icmp ult i64 %2627, %2619
  %2629 = icmp ult i64 %2627, %2625
  %2630 = or i1 %2628, %2629
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %39, align 1
  %2632 = trunc i64 %2627 to i32
  %2633 = and i32 %2632, 255
  %2634 = tail call i32 @llvm.ctpop.i32(i32 %2633)
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = xor i8 %2636, 1
  store i8 %2637, i8* %46, align 1
  %2638 = xor i64 %2625, %2619
  %2639 = xor i64 %2638, %2627
  %2640 = lshr i64 %2639, 4
  %2641 = trunc i64 %2640 to i8
  %2642 = and i8 %2641, 1
  store i8 %2642, i8* %51, align 1
  %2643 = icmp eq i64 %2627, 0
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %54, align 1
  %2645 = lshr i64 %2627, 63
  %2646 = trunc i64 %2645 to i8
  store i8 %2646, i8* %57, align 1
  %2647 = lshr i64 %2619, 63
  %2648 = xor i64 %2645, %2647
  %2649 = xor i64 %2645, %2626
  %2650 = add nuw nsw i64 %2648, %2649
  %2651 = icmp eq i64 %2650, 2
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %63, align 1
  %2653 = add i64 %2534, 63
  store i64 %2653, i64* %3, align 8
  %2654 = load i32, i32* %2608, align 4
  %2655 = sext i32 %2654 to i64
  store i64 %2655, i64* %RCX.i1817, align 8
  %2656 = shl nsw i64 %2655, 3
  %2657 = add i64 %2656, %2627
  %2658 = add i64 %2534, 68
  store i64 %2658, i64* %3, align 8
  %2659 = inttoptr i64 %2657 to double*
  %2660 = load double, double* %2659, align 8
  %2661 = fsub double %2615, %2660
  store double %2661, double* %230, align 1
  store i64 0, i64* %231, align 1
  %2662 = add i64 %2605, 40
  %2663 = add i64 %2534, 72
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i64*
  %2665 = load i64, i64* %2664, align 8
  store i64 %2665, i64* %RAX.i1872, align 8
  %2666 = add i64 %2534, 76
  store i64 %2666, i64* %3, align 8
  %2667 = load i32, i32* %2622, align 4
  %2668 = sext i32 %2667 to i64
  %2669 = mul nsw i64 %2668, 33800
  store i64 %2669, i64* %RCX.i1817, align 8
  %2670 = lshr i64 %2669, 63
  %2671 = add i64 %2669, %2665
  store i64 %2671, i64* %RAX.i1872, align 8
  %2672 = icmp ult i64 %2671, %2665
  %2673 = icmp ult i64 %2671, %2669
  %2674 = or i1 %2672, %2673
  %2675 = zext i1 %2674 to i8
  store i8 %2675, i8* %39, align 1
  %2676 = trunc i64 %2671 to i32
  %2677 = and i32 %2676, 255
  %2678 = tail call i32 @llvm.ctpop.i32(i32 %2677)
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  store i8 %2681, i8* %46, align 1
  %2682 = xor i64 %2669, %2665
  %2683 = xor i64 %2682, %2671
  %2684 = lshr i64 %2683, 4
  %2685 = trunc i64 %2684 to i8
  %2686 = and i8 %2685, 1
  store i8 %2686, i8* %51, align 1
  %2687 = icmp eq i64 %2671, 0
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %54, align 1
  %2689 = lshr i64 %2671, 63
  %2690 = trunc i64 %2689 to i8
  store i8 %2690, i8* %57, align 1
  %2691 = lshr i64 %2665, 63
  %2692 = xor i64 %2689, %2691
  %2693 = xor i64 %2689, %2670
  %2694 = add nuw nsw i64 %2692, %2693
  %2695 = icmp eq i64 %2694, 2
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %63, align 1
  %2697 = add i64 %2605, -52
  %2698 = add i64 %2534, 90
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to i32*
  %2700 = load i32, i32* %2699, align 4
  %2701 = sext i32 %2700 to i64
  %2702 = mul nsw i64 %2701, 520
  store i64 %2702, i64* %RCX.i1817, align 8
  %2703 = lshr i64 %2702, 63
  %2704 = add i64 %2702, %2671
  store i64 %2704, i64* %RAX.i1872, align 8
  %2705 = icmp ult i64 %2704, %2671
  %2706 = icmp ult i64 %2704, %2702
  %2707 = or i1 %2705, %2706
  %2708 = zext i1 %2707 to i8
  store i8 %2708, i8* %39, align 1
  %2709 = trunc i64 %2704 to i32
  %2710 = and i32 %2709, 255
  %2711 = tail call i32 @llvm.ctpop.i32(i32 %2710)
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  %2714 = xor i8 %2713, 1
  store i8 %2714, i8* %46, align 1
  %2715 = xor i64 %2702, %2671
  %2716 = xor i64 %2715, %2704
  %2717 = lshr i64 %2716, 4
  %2718 = trunc i64 %2717 to i8
  %2719 = and i8 %2718, 1
  store i8 %2719, i8* %51, align 1
  %2720 = icmp eq i64 %2704, 0
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %54, align 1
  %2722 = lshr i64 %2704, 63
  %2723 = trunc i64 %2722 to i8
  store i8 %2723, i8* %57, align 1
  %2724 = xor i64 %2722, %2689
  %2725 = xor i64 %2722, %2703
  %2726 = add nuw nsw i64 %2724, %2725
  %2727 = icmp eq i64 %2726, 2
  %2728 = zext i1 %2727 to i8
  store i8 %2728, i8* %63, align 1
  %2729 = load i64, i64* %RBP.i, align 8
  %2730 = add i64 %2729, -108
  %2731 = add i64 %2534, 103
  store i64 %2731, i64* %3, align 8
  %2732 = inttoptr i64 %2730 to i32*
  %2733 = load i32, i32* %2732, align 4
  %2734 = add i32 %2733, 1
  %2735 = zext i32 %2734 to i64
  store i64 %2735, i64* %RDX.i1724, align 8
  %2736 = icmp eq i32 %2733, -1
  %2737 = icmp eq i32 %2734, 0
  %2738 = or i1 %2736, %2737
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %39, align 1
  %2740 = and i32 %2734, 255
  %2741 = tail call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  store i8 %2744, i8* %46, align 1
  %2745 = xor i32 %2733, %2734
  %2746 = lshr i32 %2745, 4
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  store i8 %2748, i8* %51, align 1
  %2749 = zext i1 %2737 to i8
  store i8 %2749, i8* %54, align 1
  %2750 = lshr i32 %2734, 31
  %2751 = trunc i32 %2750 to i8
  store i8 %2751, i8* %57, align 1
  %2752 = lshr i32 %2733, 31
  %2753 = xor i32 %2750, %2752
  %2754 = add nuw nsw i32 %2753, %2750
  %2755 = icmp eq i32 %2754, 2
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %63, align 1
  %2757 = sext i32 %2734 to i64
  store i64 %2757, i64* %RCX.i1817, align 8
  %2758 = shl nsw i64 %2757, 3
  %2759 = add i64 %2758, %2704
  %2760 = add i64 %2534, 114
  store i64 %2760, i64* %3, align 8
  %2761 = load double, double* %230, align 1
  %2762 = inttoptr i64 %2759 to double*
  %2763 = load double, double* %2762, align 8
  %2764 = fadd double %2761, %2763
  store double %2764, double* %230, align 1
  %2765 = add i64 %2729, 40
  %2766 = add i64 %2534, 118
  store i64 %2766, i64* %3, align 8
  %2767 = inttoptr i64 %2765 to i64*
  %2768 = load i64, i64* %2767, align 8
  store i64 %2768, i64* %RAX.i1872, align 8
  %2769 = add i64 %2729, -100
  %2770 = add i64 %2534, 122
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = sext i32 %2772 to i64
  %2774 = mul nsw i64 %2773, 33800
  store i64 %2774, i64* %RCX.i1817, align 8
  %2775 = lshr i64 %2774, 63
  %2776 = add i64 %2774, %2768
  store i64 %2776, i64* %RAX.i1872, align 8
  %2777 = icmp ult i64 %2776, %2768
  %2778 = icmp ult i64 %2776, %2774
  %2779 = or i1 %2777, %2778
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %39, align 1
  %2781 = trunc i64 %2776 to i32
  %2782 = and i32 %2781, 255
  %2783 = tail call i32 @llvm.ctpop.i32(i32 %2782)
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  store i8 %2786, i8* %46, align 1
  %2787 = xor i64 %2774, %2768
  %2788 = xor i64 %2787, %2776
  %2789 = lshr i64 %2788, 4
  %2790 = trunc i64 %2789 to i8
  %2791 = and i8 %2790, 1
  store i8 %2791, i8* %51, align 1
  %2792 = icmp eq i64 %2776, 0
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %54, align 1
  %2794 = lshr i64 %2776, 63
  %2795 = trunc i64 %2794 to i8
  store i8 %2795, i8* %57, align 1
  %2796 = lshr i64 %2768, 63
  %2797 = xor i64 %2794, %2796
  %2798 = xor i64 %2794, %2775
  %2799 = add nuw nsw i64 %2797, %2798
  %2800 = icmp eq i64 %2799, 2
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %63, align 1
  %2802 = add i64 %2729, -52
  %2803 = add i64 %2534, 136
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i32*
  %2805 = load i32, i32* %2804, align 4
  %2806 = sext i32 %2805 to i64
  %2807 = mul nsw i64 %2806, 520
  store i64 %2807, i64* %RCX.i1817, align 8
  %2808 = lshr i64 %2807, 63
  %2809 = add i64 %2807, %2776
  store i64 %2809, i64* %RAX.i1872, align 8
  %2810 = icmp ult i64 %2809, %2776
  %2811 = icmp ult i64 %2809, %2807
  %2812 = or i1 %2810, %2811
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %39, align 1
  %2814 = trunc i64 %2809 to i32
  %2815 = and i32 %2814, 255
  %2816 = tail call i32 @llvm.ctpop.i32(i32 %2815)
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  %2819 = xor i8 %2818, 1
  store i8 %2819, i8* %46, align 1
  %2820 = xor i64 %2807, %2776
  %2821 = xor i64 %2820, %2809
  %2822 = lshr i64 %2821, 4
  %2823 = trunc i64 %2822 to i8
  %2824 = and i8 %2823, 1
  store i8 %2824, i8* %51, align 1
  %2825 = icmp eq i64 %2809, 0
  %2826 = zext i1 %2825 to i8
  store i8 %2826, i8* %54, align 1
  %2827 = lshr i64 %2809, 63
  %2828 = trunc i64 %2827 to i8
  store i8 %2828, i8* %57, align 1
  %2829 = xor i64 %2827, %2794
  %2830 = xor i64 %2827, %2808
  %2831 = add nuw nsw i64 %2829, %2830
  %2832 = icmp eq i64 %2831, 2
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %63, align 1
  %2834 = add i64 %2534, 150
  store i64 %2834, i64* %3, align 8
  %2835 = load i32, i32* %2732, align 4
  %2836 = sext i32 %2835 to i64
  store i64 %2836, i64* %RCX.i1817, align 8
  %2837 = shl nsw i64 %2836, 3
  %2838 = add i64 %2837, %2809
  %2839 = add i64 %2534, 155
  store i64 %2839, i64* %3, align 8
  %2840 = inttoptr i64 %2838 to double*
  %2841 = load double, double* %2840, align 8
  %2842 = fsub double %2764, %2841
  store double %2842, double* %230, align 1
  %2843 = add i64 %2729, -96
  %2844 = add i64 %2534, 159
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i64*
  %2846 = load i64, i64* %2845, align 8
  store i64 %2846, i64* %RAX.i1872, align 8
  %2847 = add i64 %2534, 163
  store i64 %2847, i64* %3, align 8
  %2848 = load i32, i32* %2771, align 4
  %2849 = sext i32 %2848 to i64
  %2850 = mul nsw i64 %2849, 520
  store i64 %2850, i64* %RCX.i1817, align 8
  %2851 = lshr i64 %2850, 63
  %2852 = add i64 %2850, %2846
  store i64 %2852, i64* %RAX.i1872, align 8
  %2853 = icmp ult i64 %2852, %2846
  %2854 = icmp ult i64 %2852, %2850
  %2855 = or i1 %2853, %2854
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %39, align 1
  %2857 = trunc i64 %2852 to i32
  %2858 = and i32 %2857, 255
  %2859 = tail call i32 @llvm.ctpop.i32(i32 %2858)
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  %2862 = xor i8 %2861, 1
  store i8 %2862, i8* %46, align 1
  %2863 = xor i64 %2850, %2846
  %2864 = xor i64 %2863, %2852
  %2865 = lshr i64 %2864, 4
  %2866 = trunc i64 %2865 to i8
  %2867 = and i8 %2866, 1
  store i8 %2867, i8* %51, align 1
  %2868 = icmp eq i64 %2852, 0
  %2869 = zext i1 %2868 to i8
  store i8 %2869, i8* %54, align 1
  %2870 = lshr i64 %2852, 63
  %2871 = trunc i64 %2870 to i8
  store i8 %2871, i8* %57, align 1
  %2872 = lshr i64 %2846, 63
  %2873 = xor i64 %2870, %2872
  %2874 = xor i64 %2870, %2851
  %2875 = add nuw nsw i64 %2873, %2874
  %2876 = icmp eq i64 %2875, 2
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %63, align 1
  %2878 = load i64, i64* %RBP.i, align 8
  %2879 = add i64 %2878, -104
  %2880 = add i64 %2534, 177
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2879 to i32*
  %2882 = load i32, i32* %2881, align 4
  %2883 = sext i32 %2882 to i64
  store i64 %2883, i64* %RCX.i1817, align 8
  %2884 = shl nsw i64 %2883, 3
  %2885 = add i64 %2884, %2852
  %2886 = add i64 %2534, 182
  store i64 %2886, i64* %3, align 8
  %2887 = inttoptr i64 %2885 to double*
  store double %2842, double* %2887, align 8
  %2888 = load i64, i64* %RBP.i, align 8
  %2889 = add i64 %2888, 88
  %2890 = load i64, i64* %3, align 8
  %2891 = add i64 %2890, 4
  store i64 %2891, i64* %3, align 8
  %2892 = inttoptr i64 %2889 to i64*
  %2893 = load i64, i64* %2892, align 8
  store i64 %2893, i64* %RAX.i1872, align 8
  %2894 = add i64 %2888, -52
  %2895 = add i64 %2890, 8
  store i64 %2895, i64* %3, align 8
  %2896 = inttoptr i64 %2894 to i32*
  %2897 = load i32, i32* %2896, align 4
  %2898 = sext i32 %2897 to i64
  store i64 %2898, i64* %RCX.i1817, align 8
  %2899 = shl nsw i64 %2898, 3
  %2900 = add i64 %2899, %2893
  %2901 = add i64 %2890, 13
  store i64 %2901, i64* %3, align 8
  %2902 = inttoptr i64 %2900 to double*
  %2903 = load double, double* %2902, align 8
  store double %2903, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %2904 = add i64 %2888, 96
  %2905 = add i64 %2890, 17
  store i64 %2905, i64* %3, align 8
  %2906 = inttoptr i64 %2904 to i64*
  %2907 = load i64, i64* %2906, align 8
  store i64 %2907, i64* %RAX.i1872, align 8
  %2908 = add i64 %2888, -104
  %2909 = add i64 %2890, 21
  store i64 %2909, i64* %3, align 8
  %2910 = inttoptr i64 %2908 to i32*
  %2911 = load i32, i32* %2910, align 4
  %2912 = sext i32 %2911 to i64
  store i64 %2912, i64* %RCX.i1817, align 8
  %2913 = shl nsw i64 %2912, 3
  %2914 = add i64 %2913, %2907
  %2915 = add i64 %2890, 26
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to double*
  %2917 = load double, double* %2916, align 8
  %2918 = fdiv double %2903, %2917
  store double %2918, double* %230, align 1
  store i64 0, i64* %231, align 1
  %2919 = add i64 %2888, 24
  %2920 = add i64 %2890, 30
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i64*
  %2922 = load i64, i64* %2921, align 8
  store i64 %2922, i64* %RAX.i1872, align 8
  %2923 = add i64 %2888, -100
  %2924 = add i64 %2890, 34
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i32*
  %2926 = load i32, i32* %2925, align 4
  %2927 = sext i32 %2926 to i64
  %2928 = mul nsw i64 %2927, 33800
  store i64 %2928, i64* %RCX.i1817, align 8
  %2929 = lshr i64 %2928, 63
  %2930 = add i64 %2928, %2922
  store i64 %2930, i64* %RAX.i1872, align 8
  %2931 = icmp ult i64 %2930, %2922
  %2932 = icmp ult i64 %2930, %2928
  %2933 = or i1 %2931, %2932
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %39, align 1
  %2935 = trunc i64 %2930 to i32
  %2936 = and i32 %2935, 255
  %2937 = tail call i32 @llvm.ctpop.i32(i32 %2936)
  %2938 = trunc i32 %2937 to i8
  %2939 = and i8 %2938, 1
  %2940 = xor i8 %2939, 1
  store i8 %2940, i8* %46, align 1
  %2941 = xor i64 %2928, %2922
  %2942 = xor i64 %2941, %2930
  %2943 = lshr i64 %2942, 4
  %2944 = trunc i64 %2943 to i8
  %2945 = and i8 %2944, 1
  store i8 %2945, i8* %51, align 1
  %2946 = icmp eq i64 %2930, 0
  %2947 = zext i1 %2946 to i8
  store i8 %2947, i8* %54, align 1
  %2948 = lshr i64 %2930, 63
  %2949 = trunc i64 %2948 to i8
  store i8 %2949, i8* %57, align 1
  %2950 = lshr i64 %2922, 63
  %2951 = xor i64 %2948, %2950
  %2952 = xor i64 %2948, %2929
  %2953 = add nuw nsw i64 %2951, %2952
  %2954 = icmp eq i64 %2953, 2
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %63, align 1
  %2956 = add i64 %2890, 48
  store i64 %2956, i64* %3, align 8
  %2957 = load i32, i32* %2910, align 4
  %2958 = sext i32 %2957 to i64
  %2959 = mul nsw i64 %2958, 520
  store i64 %2959, i64* %RCX.i1817, align 8
  %2960 = lshr i64 %2959, 63
  %2961 = add i64 %2959, %2930
  store i64 %2961, i64* %RAX.i1872, align 8
  %2962 = icmp ult i64 %2961, %2930
  %2963 = icmp ult i64 %2961, %2959
  %2964 = or i1 %2962, %2963
  %2965 = zext i1 %2964 to i8
  store i8 %2965, i8* %39, align 1
  %2966 = trunc i64 %2961 to i32
  %2967 = and i32 %2966, 255
  %2968 = tail call i32 @llvm.ctpop.i32(i32 %2967)
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  %2971 = xor i8 %2970, 1
  store i8 %2971, i8* %46, align 1
  %2972 = xor i64 %2959, %2930
  %2973 = xor i64 %2972, %2961
  %2974 = lshr i64 %2973, 4
  %2975 = trunc i64 %2974 to i8
  %2976 = and i8 %2975, 1
  store i8 %2976, i8* %51, align 1
  %2977 = icmp eq i64 %2961, 0
  %2978 = zext i1 %2977 to i8
  store i8 %2978, i8* %54, align 1
  %2979 = lshr i64 %2961, 63
  %2980 = trunc i64 %2979 to i8
  store i8 %2980, i8* %57, align 1
  %2981 = xor i64 %2979, %2948
  %2982 = xor i64 %2979, %2960
  %2983 = add nuw nsw i64 %2981, %2982
  %2984 = icmp eq i64 %2983, 2
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %63, align 1
  %2986 = add i64 %2888, -108
  %2987 = add i64 %2890, 62
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i32*
  %2989 = load i32, i32* %2988, align 4
  %2990 = sext i32 %2989 to i64
  store i64 %2990, i64* %RCX.i1817, align 8
  %2991 = shl nsw i64 %2990, 3
  %2992 = add i64 %2991, %2961
  %2993 = add i64 %2890, 67
  store i64 %2993, i64* %3, align 8
  %2994 = load double, double* %230, align 1
  %2995 = inttoptr i64 %2992 to double*
  %2996 = load double, double* %2995, align 8
  %2997 = fmul double %2994, %2996
  store double %2997, double* %230, align 1
  %2998 = add i64 %2888, -72
  %2999 = add i64 %2890, 72
  store i64 %2999, i64* %3, align 8
  %3000 = inttoptr i64 %2998 to double*
  %3001 = load double, double* %3000, align 8
  store double %3001, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %3002 = add i64 %2890, 76
  store i64 %3002, i64* %3, align 8
  %3003 = load i64, i64* %2906, align 8
  store i64 %3003, i64* %RAX.i1872, align 8
  %3004 = add i64 %2890, 80
  store i64 %3004, i64* %3, align 8
  %3005 = load i32, i32* %2910, align 4
  %3006 = sext i32 %3005 to i64
  store i64 %3006, i64* %RCX.i1817, align 8
  %3007 = shl nsw i64 %3006, 3
  %3008 = add i64 %3007, %3003
  %3009 = add i64 %2890, 85
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to double*
  %3011 = load double, double* %3010, align 8
  %3012 = fdiv double %3001, %3011
  store double %3012, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3013 = load i64, i64* %RBP.i, align 8
  %3014 = add i64 %3013, -96
  %3015 = add i64 %2890, 89
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %3014 to i64*
  %3017 = load i64, i64* %3016, align 8
  store i64 %3017, i64* %RAX.i1872, align 8
  %3018 = add i64 %3013, -100
  %3019 = add i64 %2890, 93
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i32*
  %3021 = load i32, i32* %3020, align 4
  %3022 = sext i32 %3021 to i64
  %3023 = mul nsw i64 %3022, 520
  store i64 %3023, i64* %RCX.i1817, align 8
  %3024 = lshr i64 %3023, 63
  %3025 = add i64 %3023, %3017
  store i64 %3025, i64* %RAX.i1872, align 8
  %3026 = icmp ult i64 %3025, %3017
  %3027 = icmp ult i64 %3025, %3023
  %3028 = or i1 %3026, %3027
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %39, align 1
  %3030 = trunc i64 %3025 to i32
  %3031 = and i32 %3030, 255
  %3032 = tail call i32 @llvm.ctpop.i32(i32 %3031)
  %3033 = trunc i32 %3032 to i8
  %3034 = and i8 %3033, 1
  %3035 = xor i8 %3034, 1
  store i8 %3035, i8* %46, align 1
  %3036 = xor i64 %3023, %3017
  %3037 = xor i64 %3036, %3025
  %3038 = lshr i64 %3037, 4
  %3039 = trunc i64 %3038 to i8
  %3040 = and i8 %3039, 1
  store i8 %3040, i8* %51, align 1
  %3041 = icmp eq i64 %3025, 0
  %3042 = zext i1 %3041 to i8
  store i8 %3042, i8* %54, align 1
  %3043 = lshr i64 %3025, 63
  %3044 = trunc i64 %3043 to i8
  store i8 %3044, i8* %57, align 1
  %3045 = lshr i64 %3017, 63
  %3046 = xor i64 %3043, %3045
  %3047 = xor i64 %3043, %3024
  %3048 = add nuw nsw i64 %3046, %3047
  %3049 = icmp eq i64 %3048, 2
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %63, align 1
  %3051 = add i64 %3013, -104
  %3052 = add i64 %2890, 107
  store i64 %3052, i64* %3, align 8
  %3053 = inttoptr i64 %3051 to i32*
  %3054 = load i32, i32* %3053, align 4
  %3055 = sext i32 %3054 to i64
  store i64 %3055, i64* %RCX.i1817, align 8
  %3056 = shl nsw i64 %3055, 3
  %3057 = add i64 %3056, %3025
  %3058 = add i64 %2890, 112
  store i64 %3058, i64* %3, align 8
  %3059 = inttoptr i64 %3057 to double*
  %3060 = load double, double* %3059, align 8
  %3061 = fmul double %3012, %3060
  store double %3061, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3062 = fsub double %2997, %3061
  store double %3062, double* %230, align 1
  %3063 = add i64 %3013, 16
  %3064 = add i64 %2890, 120
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3063 to i64*
  %3066 = load i64, i64* %3065, align 8
  store i64 %3066, i64* %RAX.i1872, align 8
  %3067 = add i64 %2890, 124
  store i64 %3067, i64* %3, align 8
  %3068 = load i32, i32* %3020, align 4
  %3069 = sext i32 %3068 to i64
  %3070 = mul nsw i64 %3069, 520
  store i64 %3070, i64* %RCX.i1817, align 8
  %3071 = lshr i64 %3070, 63
  %3072 = add i64 %3070, %3066
  store i64 %3072, i64* %RAX.i1872, align 8
  %3073 = icmp ult i64 %3072, %3066
  %3074 = icmp ult i64 %3072, %3070
  %3075 = or i1 %3073, %3074
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %39, align 1
  %3077 = trunc i64 %3072 to i32
  %3078 = and i32 %3077, 255
  %3079 = tail call i32 @llvm.ctpop.i32(i32 %3078)
  %3080 = trunc i32 %3079 to i8
  %3081 = and i8 %3080, 1
  %3082 = xor i8 %3081, 1
  store i8 %3082, i8* %46, align 1
  %3083 = xor i64 %3070, %3066
  %3084 = xor i64 %3083, %3072
  %3085 = lshr i64 %3084, 4
  %3086 = trunc i64 %3085 to i8
  %3087 = and i8 %3086, 1
  store i8 %3087, i8* %51, align 1
  %3088 = icmp eq i64 %3072, 0
  %3089 = zext i1 %3088 to i8
  store i8 %3089, i8* %54, align 1
  %3090 = lshr i64 %3072, 63
  %3091 = trunc i64 %3090 to i8
  store i8 %3091, i8* %57, align 1
  %3092 = lshr i64 %3066, 63
  %3093 = xor i64 %3090, %3092
  %3094 = xor i64 %3090, %3071
  %3095 = add nuw nsw i64 %3093, %3094
  %3096 = icmp eq i64 %3095, 2
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %63, align 1
  %3098 = add i64 %2890, 138
  store i64 %3098, i64* %3, align 8
  %3099 = load i32, i32* %3053, align 4
  %3100 = sext i32 %3099 to i64
  store i64 %3100, i64* %RCX.i1817, align 8
  %3101 = shl nsw i64 %3100, 3
  %3102 = add i64 %3101, %3072
  %3103 = add i64 %2890, 143
  store i64 %3103, i64* %3, align 8
  %3104 = inttoptr i64 %3102 to double*
  store double %3062, double* %3104, align 8
  %3105 = load i64, i64* %RBP.i, align 8
  %3106 = add i64 %3105, 72
  %3107 = load i64, i64* %3, align 8
  %3108 = add i64 %3107, 4
  store i64 %3108, i64* %3, align 8
  %3109 = inttoptr i64 %3106 to i64*
  %3110 = load i64, i64* %3109, align 8
  store i64 %3110, i64* %RAX.i1872, align 8
  %3111 = add i64 %3105, -108
  %3112 = add i64 %3107, 8
  store i64 %3112, i64* %3, align 8
  %3113 = inttoptr i64 %3111 to i32*
  %3114 = load i32, i32* %3113, align 4
  %3115 = sext i32 %3114 to i64
  store i64 %3115, i64* %RCX.i1817, align 8
  %3116 = shl nsw i64 %3115, 3
  %3117 = add i64 %3116, %3110
  %3118 = add i64 %3107, 13
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to double*
  %3120 = load double, double* %3119, align 8
  store double %3120, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %3121 = add i64 %3105, 80
  %3122 = add i64 %3107, 17
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3121 to i64*
  %3124 = load i64, i64* %3123, align 8
  store i64 %3124, i64* %RAX.i1872, align 8
  %3125 = add i64 %3107, 21
  store i64 %3125, i64* %3, align 8
  %3126 = load i32, i32* %3113, align 4
  %3127 = sext i32 %3126 to i64
  store i64 %3127, i64* %RCX.i1817, align 8
  %3128 = shl nsw i64 %3127, 3
  %3129 = add i64 %3128, %3124
  %3130 = add i64 %3107, 26
  store i64 %3130, i64* %3, align 8
  %3131 = inttoptr i64 %3129 to double*
  %3132 = load double, double* %3131, align 8
  %3133 = fdiv double %3120, %3132
  store double %3133, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3134 = add i64 %3105, 48
  %3135 = add i64 %3107, 30
  store i64 %3135, i64* %3, align 8
  %3136 = inttoptr i64 %3134 to i64*
  %3137 = load i64, i64* %3136, align 8
  store i64 %3137, i64* %RAX.i1872, align 8
  %3138 = add i64 %3105, -100
  %3139 = add i64 %3107, 34
  store i64 %3139, i64* %3, align 8
  %3140 = inttoptr i64 %3138 to i32*
  %3141 = load i32, i32* %3140, align 4
  %3142 = sext i32 %3141 to i64
  %3143 = mul nsw i64 %3142, 33800
  store i64 %3143, i64* %RCX.i1817, align 8
  %3144 = lshr i64 %3143, 63
  %3145 = add i64 %3143, %3137
  store i64 %3145, i64* %RAX.i1872, align 8
  %3146 = icmp ult i64 %3145, %3137
  %3147 = icmp ult i64 %3145, %3143
  %3148 = or i1 %3146, %3147
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %39, align 1
  %3150 = trunc i64 %3145 to i32
  %3151 = and i32 %3150, 255
  %3152 = tail call i32 @llvm.ctpop.i32(i32 %3151)
  %3153 = trunc i32 %3152 to i8
  %3154 = and i8 %3153, 1
  %3155 = xor i8 %3154, 1
  store i8 %3155, i8* %46, align 1
  %3156 = xor i64 %3143, %3137
  %3157 = xor i64 %3156, %3145
  %3158 = lshr i64 %3157, 4
  %3159 = trunc i64 %3158 to i8
  %3160 = and i8 %3159, 1
  store i8 %3160, i8* %51, align 1
  %3161 = icmp eq i64 %3145, 0
  %3162 = zext i1 %3161 to i8
  store i8 %3162, i8* %54, align 1
  %3163 = lshr i64 %3145, 63
  %3164 = trunc i64 %3163 to i8
  store i8 %3164, i8* %57, align 1
  %3165 = lshr i64 %3137, 63
  %3166 = xor i64 %3163, %3165
  %3167 = xor i64 %3163, %3144
  %3168 = add nuw nsw i64 %3166, %3167
  %3169 = icmp eq i64 %3168, 2
  %3170 = zext i1 %3169 to i8
  store i8 %3170, i8* %63, align 1
  %3171 = add i64 %3105, -52
  %3172 = add i64 %3107, 48
  store i64 %3172, i64* %3, align 8
  %3173 = inttoptr i64 %3171 to i32*
  %3174 = load i32, i32* %3173, align 4
  %3175 = sext i32 %3174 to i64
  %3176 = mul nsw i64 %3175, 520
  store i64 %3176, i64* %RCX.i1817, align 8
  %3177 = lshr i64 %3176, 63
  %3178 = add i64 %3176, %3145
  store i64 %3178, i64* %RAX.i1872, align 8
  %3179 = icmp ult i64 %3178, %3145
  %3180 = icmp ult i64 %3178, %3176
  %3181 = or i1 %3179, %3180
  %3182 = zext i1 %3181 to i8
  store i8 %3182, i8* %39, align 1
  %3183 = trunc i64 %3178 to i32
  %3184 = and i32 %3183, 255
  %3185 = tail call i32 @llvm.ctpop.i32(i32 %3184)
  %3186 = trunc i32 %3185 to i8
  %3187 = and i8 %3186, 1
  %3188 = xor i8 %3187, 1
  store i8 %3188, i8* %46, align 1
  %3189 = xor i64 %3176, %3145
  %3190 = xor i64 %3189, %3178
  %3191 = lshr i64 %3190, 4
  %3192 = trunc i64 %3191 to i8
  %3193 = and i8 %3192, 1
  store i8 %3193, i8* %51, align 1
  %3194 = icmp eq i64 %3178, 0
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %54, align 1
  %3196 = lshr i64 %3178, 63
  %3197 = trunc i64 %3196 to i8
  store i8 %3197, i8* %57, align 1
  %3198 = xor i64 %3196, %3163
  %3199 = xor i64 %3196, %3177
  %3200 = add nuw nsw i64 %3198, %3199
  %3201 = icmp eq i64 %3200, 2
  %3202 = zext i1 %3201 to i8
  store i8 %3202, i8* %63, align 1
  %3203 = add i64 %3107, 62
  store i64 %3203, i64* %3, align 8
  %3204 = load i32, i32* %3113, align 4
  %3205 = sext i32 %3204 to i64
  store i64 %3205, i64* %RCX.i1817, align 8
  %3206 = shl nsw i64 %3205, 3
  %3207 = add i64 %3206, %3178
  %3208 = add i64 %3107, 67
  store i64 %3208, i64* %3, align 8
  %3209 = load double, double* %230, align 1
  %3210 = inttoptr i64 %3207 to double*
  %3211 = load double, double* %3210, align 8
  %3212 = fmul double %3209, %3211
  store double %3212, double* %230, align 1
  %3213 = add i64 %3105, -64
  %3214 = add i64 %3107, 72
  store i64 %3214, i64* %3, align 8
  %3215 = inttoptr i64 %3213 to double*
  %3216 = load double, double* %3215, align 8
  store double %3216, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %3217 = add i64 %3105, 64
  %3218 = add i64 %3107, 76
  store i64 %3218, i64* %3, align 8
  %3219 = inttoptr i64 %3217 to i64*
  %3220 = load i64, i64* %3219, align 8
  store i64 %3220, i64* %RAX.i1872, align 8
  %3221 = add i64 %3107, 80
  store i64 %3221, i64* %3, align 8
  %3222 = load i32, i32* %3140, align 4
  %3223 = sext i32 %3222 to i64
  store i64 %3223, i64* %RCX.i1817, align 8
  %3224 = shl nsw i64 %3223, 3
  %3225 = add i64 %3224, %3220
  %3226 = add i64 %3107, 85
  store i64 %3226, i64* %3, align 8
  %3227 = inttoptr i64 %3225 to double*
  %3228 = load double, double* %3227, align 8
  %3229 = fmul double %3216, %3228
  store double %3229, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3230 = load i64, i64* %RBP.i, align 8
  %3231 = add i64 %3230, 80
  %3232 = add i64 %3107, 89
  store i64 %3232, i64* %3, align 8
  %3233 = inttoptr i64 %3231 to i64*
  %3234 = load i64, i64* %3233, align 8
  store i64 %3234, i64* %RAX.i1872, align 8
  %3235 = add i64 %3230, -108
  %3236 = add i64 %3107, 93
  store i64 %3236, i64* %3, align 8
  %3237 = inttoptr i64 %3235 to i32*
  %3238 = load i32, i32* %3237, align 4
  %3239 = sext i32 %3238 to i64
  store i64 %3239, i64* %RCX.i1817, align 8
  %3240 = shl nsw i64 %3239, 3
  %3241 = add i64 %3240, %3234
  %3242 = add i64 %3107, 98
  store i64 %3242, i64* %3, align 8
  %3243 = inttoptr i64 %3241 to double*
  %3244 = load double, double* %3243, align 8
  %3245 = fdiv double %3229, %3244
  store double %3245, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3246 = add i64 %3230, 16
  %3247 = add i64 %3107, 102
  store i64 %3247, i64* %3, align 8
  %3248 = inttoptr i64 %3246 to i64*
  %3249 = load i64, i64* %3248, align 8
  store i64 %3249, i64* %RAX.i1872, align 8
  %3250 = add i64 %3230, -100
  %3251 = add i64 %3107, 106
  store i64 %3251, i64* %3, align 8
  %3252 = inttoptr i64 %3250 to i32*
  %3253 = load i32, i32* %3252, align 4
  %3254 = sext i32 %3253 to i64
  %3255 = mul nsw i64 %3254, 520
  store i64 %3255, i64* %RCX.i1817, align 8
  %3256 = lshr i64 %3255, 63
  %3257 = add i64 %3255, %3249
  store i64 %3257, i64* %RAX.i1872, align 8
  %3258 = icmp ult i64 %3257, %3249
  %3259 = icmp ult i64 %3257, %3255
  %3260 = or i1 %3258, %3259
  %3261 = zext i1 %3260 to i8
  store i8 %3261, i8* %39, align 1
  %3262 = trunc i64 %3257 to i32
  %3263 = and i32 %3262, 255
  %3264 = tail call i32 @llvm.ctpop.i32(i32 %3263)
  %3265 = trunc i32 %3264 to i8
  %3266 = and i8 %3265, 1
  %3267 = xor i8 %3266, 1
  store i8 %3267, i8* %46, align 1
  %3268 = xor i64 %3255, %3249
  %3269 = xor i64 %3268, %3257
  %3270 = lshr i64 %3269, 4
  %3271 = trunc i64 %3270 to i8
  %3272 = and i8 %3271, 1
  store i8 %3272, i8* %51, align 1
  %3273 = icmp eq i64 %3257, 0
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %54, align 1
  %3275 = lshr i64 %3257, 63
  %3276 = trunc i64 %3275 to i8
  store i8 %3276, i8* %57, align 1
  %3277 = lshr i64 %3249, 63
  %3278 = xor i64 %3275, %3277
  %3279 = xor i64 %3275, %3256
  %3280 = add nuw nsw i64 %3278, %3279
  %3281 = icmp eq i64 %3280, 2
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %63, align 1
  %3283 = add i64 %3230, -104
  %3284 = add i64 %3107, 120
  store i64 %3284, i64* %3, align 8
  %3285 = inttoptr i64 %3283 to i32*
  %3286 = load i32, i32* %3285, align 4
  %3287 = sext i32 %3286 to i64
  store i64 %3287, i64* %RCX.i1817, align 8
  %3288 = shl nsw i64 %3287, 3
  %3289 = add i64 %3288, %3257
  %3290 = add i64 %3107, 125
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3289 to double*
  %3292 = load double, double* %3291, align 8
  %3293 = fmul double %3245, %3292
  store double %3293, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3294 = load double, double* %230, align 1
  %3295 = fadd double %3294, %3293
  store double %3295, double* %230, align 1
  %3296 = add i64 %3230, -64
  %3297 = add i64 %3107, 134
  store i64 %3297, i64* %3, align 8
  %3298 = inttoptr i64 %3296 to double*
  %3299 = load double, double* %3298, align 8
  store double %3299, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %3300 = add i64 %3230, 56
  %3301 = add i64 %3107, 138
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3300 to i64*
  %3303 = load i64, i64* %3302, align 8
  store i64 %3303, i64* %RAX.i1872, align 8
  %3304 = add i64 %3107, 142
  store i64 %3304, i64* %3, align 8
  %3305 = load i32, i32* %3252, align 4
  %3306 = sext i32 %3305 to i64
  store i64 %3306, i64* %RCX.i1817, align 8
  %3307 = shl nsw i64 %3306, 3
  %3308 = add i64 %3307, %3303
  %3309 = add i64 %3107, 147
  store i64 %3309, i64* %3, align 8
  %3310 = inttoptr i64 %3308 to double*
  %3311 = load double, double* %3310, align 8
  %3312 = fmul double %3299, %3311
  store double %3312, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3313 = add i64 %3107, 151
  store i64 %3313, i64* %3, align 8
  %3314 = load i64, i64* %3233, align 8
  store i64 %3314, i64* %RAX.i1872, align 8
  %3315 = add i64 %3107, 155
  store i64 %3315, i64* %3, align 8
  %3316 = load i32, i32* %3237, align 4
  %3317 = sext i32 %3316 to i64
  store i64 %3317, i64* %RCX.i1817, align 8
  %3318 = shl nsw i64 %3317, 3
  %3319 = add i64 %3318, %3314
  %3320 = add i64 %3107, 160
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to double*
  %3322 = load double, double* %3321, align 8
  %3323 = fdiv double %3312, %3322
  store double %3323, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3324 = add i64 %3230, 24
  %3325 = add i64 %3107, 164
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3324 to i64*
  %3327 = load i64, i64* %3326, align 8
  store i64 %3327, i64* %RAX.i1872, align 8
  %3328 = add i64 %3107, 168
  store i64 %3328, i64* %3, align 8
  %3329 = load i32, i32* %3252, align 4
  %3330 = sext i32 %3329 to i64
  %3331 = mul nsw i64 %3330, 33800
  store i64 %3331, i64* %RCX.i1817, align 8
  %3332 = lshr i64 %3331, 63
  %3333 = add i64 %3331, %3327
  store i64 %3333, i64* %RAX.i1872, align 8
  %3334 = icmp ult i64 %3333, %3327
  %3335 = icmp ult i64 %3333, %3331
  %3336 = or i1 %3334, %3335
  %3337 = zext i1 %3336 to i8
  store i8 %3337, i8* %39, align 1
  %3338 = trunc i64 %3333 to i32
  %3339 = and i32 %3338, 255
  %3340 = tail call i32 @llvm.ctpop.i32(i32 %3339)
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  %3343 = xor i8 %3342, 1
  store i8 %3343, i8* %46, align 1
  %3344 = xor i64 %3331, %3327
  %3345 = xor i64 %3344, %3333
  %3346 = lshr i64 %3345, 4
  %3347 = trunc i64 %3346 to i8
  %3348 = and i8 %3347, 1
  store i8 %3348, i8* %51, align 1
  %3349 = icmp eq i64 %3333, 0
  %3350 = zext i1 %3349 to i8
  store i8 %3350, i8* %54, align 1
  %3351 = lshr i64 %3333, 63
  %3352 = trunc i64 %3351 to i8
  store i8 %3352, i8* %57, align 1
  %3353 = lshr i64 %3327, 63
  %3354 = xor i64 %3351, %3353
  %3355 = xor i64 %3351, %3332
  %3356 = add nuw nsw i64 %3354, %3355
  %3357 = icmp eq i64 %3356, 2
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %63, align 1
  %3359 = load i64, i64* %RBP.i, align 8
  %3360 = add i64 %3359, -52
  %3361 = add i64 %3107, 182
  store i64 %3361, i64* %3, align 8
  %3362 = inttoptr i64 %3360 to i32*
  %3363 = load i32, i32* %3362, align 4
  %3364 = sext i32 %3363 to i64
  %3365 = mul nsw i64 %3364, 520
  store i64 %3365, i64* %RCX.i1817, align 8
  %3366 = lshr i64 %3365, 63
  %3367 = add i64 %3365, %3333
  store i64 %3367, i64* %RAX.i1872, align 8
  %3368 = icmp ult i64 %3367, %3333
  %3369 = icmp ult i64 %3367, %3365
  %3370 = or i1 %3368, %3369
  %3371 = zext i1 %3370 to i8
  store i8 %3371, i8* %39, align 1
  %3372 = trunc i64 %3367 to i32
  %3373 = and i32 %3372, 255
  %3374 = tail call i32 @llvm.ctpop.i32(i32 %3373)
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  %3377 = xor i8 %3376, 1
  store i8 %3377, i8* %46, align 1
  %3378 = xor i64 %3365, %3333
  %3379 = xor i64 %3378, %3367
  %3380 = lshr i64 %3379, 4
  %3381 = trunc i64 %3380 to i8
  %3382 = and i8 %3381, 1
  store i8 %3382, i8* %51, align 1
  %3383 = icmp eq i64 %3367, 0
  %3384 = zext i1 %3383 to i8
  store i8 %3384, i8* %54, align 1
  %3385 = lshr i64 %3367, 63
  %3386 = trunc i64 %3385 to i8
  store i8 %3386, i8* %57, align 1
  %3387 = xor i64 %3385, %3351
  %3388 = xor i64 %3385, %3366
  %3389 = add nuw nsw i64 %3387, %3388
  %3390 = icmp eq i64 %3389, 2
  %3391 = zext i1 %3390 to i8
  store i8 %3391, i8* %63, align 1
  %3392 = add i64 %3359, -108
  %3393 = add i64 %3107, 196
  store i64 %3393, i64* %3, align 8
  %3394 = inttoptr i64 %3392 to i32*
  %3395 = load i32, i32* %3394, align 4
  %3396 = sext i32 %3395 to i64
  store i64 %3396, i64* %RCX.i1817, align 8
  %3397 = shl nsw i64 %3396, 3
  %3398 = add i64 %3397, %3367
  %3399 = add i64 %3107, 201
  store i64 %3399, i64* %3, align 8
  %3400 = load double, double* %233, align 1
  %3401 = inttoptr i64 %3398 to double*
  %3402 = load double, double* %3401, align 8
  %3403 = fmul double %3400, %3402
  store double %3403, double* %233, align 1
  %3404 = load double, double* %230, align 1
  %3405 = fsub double %3404, %3403
  store double %3405, double* %230, align 1
  %3406 = add i64 %3359, 48
  %3407 = add i64 %3107, 209
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3406 to i64*
  %3409 = load i64, i64* %3408, align 8
  store i64 %3409, i64* %RAX.i1872, align 8
  %3410 = add i64 %3359, -100
  %3411 = add i64 %3107, 213
  store i64 %3411, i64* %3, align 8
  %3412 = inttoptr i64 %3410 to i32*
  %3413 = load i32, i32* %3412, align 4
  %3414 = sext i32 %3413 to i64
  %3415 = mul nsw i64 %3414, 33800
  store i64 %3415, i64* %RCX.i1817, align 8
  %3416 = lshr i64 %3415, 63
  %3417 = add i64 %3415, %3409
  store i64 %3417, i64* %RAX.i1872, align 8
  %3418 = icmp ult i64 %3417, %3409
  %3419 = icmp ult i64 %3417, %3415
  %3420 = or i1 %3418, %3419
  %3421 = zext i1 %3420 to i8
  store i8 %3421, i8* %39, align 1
  %3422 = trunc i64 %3417 to i32
  %3423 = and i32 %3422, 255
  %3424 = tail call i32 @llvm.ctpop.i32(i32 %3423)
  %3425 = trunc i32 %3424 to i8
  %3426 = and i8 %3425, 1
  %3427 = xor i8 %3426, 1
  store i8 %3427, i8* %46, align 1
  %3428 = xor i64 %3415, %3409
  %3429 = xor i64 %3428, %3417
  %3430 = lshr i64 %3429, 4
  %3431 = trunc i64 %3430 to i8
  %3432 = and i8 %3431, 1
  store i8 %3432, i8* %51, align 1
  %3433 = icmp eq i64 %3417, 0
  %3434 = zext i1 %3433 to i8
  store i8 %3434, i8* %54, align 1
  %3435 = lshr i64 %3417, 63
  %3436 = trunc i64 %3435 to i8
  store i8 %3436, i8* %57, align 1
  %3437 = lshr i64 %3409, 63
  %3438 = xor i64 %3435, %3437
  %3439 = xor i64 %3435, %3416
  %3440 = add nuw nsw i64 %3438, %3439
  %3441 = icmp eq i64 %3440, 2
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %63, align 1
  %3443 = load i64, i64* %RBP.i, align 8
  %3444 = add i64 %3443, -52
  %3445 = add i64 %3107, 227
  store i64 %3445, i64* %3, align 8
  %3446 = inttoptr i64 %3444 to i32*
  %3447 = load i32, i32* %3446, align 4
  %3448 = sext i32 %3447 to i64
  %3449 = mul nsw i64 %3448, 520
  store i64 %3449, i64* %RCX.i1817, align 8
  %3450 = lshr i64 %3449, 63
  %3451 = add i64 %3449, %3417
  store i64 %3451, i64* %RAX.i1872, align 8
  %3452 = icmp ult i64 %3451, %3417
  %3453 = icmp ult i64 %3451, %3449
  %3454 = or i1 %3452, %3453
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %39, align 1
  %3456 = trunc i64 %3451 to i32
  %3457 = and i32 %3456, 255
  %3458 = tail call i32 @llvm.ctpop.i32(i32 %3457)
  %3459 = trunc i32 %3458 to i8
  %3460 = and i8 %3459, 1
  %3461 = xor i8 %3460, 1
  store i8 %3461, i8* %46, align 1
  %3462 = xor i64 %3449, %3417
  %3463 = xor i64 %3462, %3451
  %3464 = lshr i64 %3463, 4
  %3465 = trunc i64 %3464 to i8
  %3466 = and i8 %3465, 1
  store i8 %3466, i8* %51, align 1
  %3467 = icmp eq i64 %3451, 0
  %3468 = zext i1 %3467 to i8
  store i8 %3468, i8* %54, align 1
  %3469 = lshr i64 %3451, 63
  %3470 = trunc i64 %3469 to i8
  store i8 %3470, i8* %57, align 1
  %3471 = xor i64 %3469, %3435
  %3472 = xor i64 %3469, %3450
  %3473 = add nuw nsw i64 %3471, %3472
  %3474 = icmp eq i64 %3473, 2
  %3475 = zext i1 %3474 to i8
  store i8 %3475, i8* %63, align 1
  %3476 = add i64 %3443, -108
  %3477 = add i64 %3107, 241
  store i64 %3477, i64* %3, align 8
  %3478 = inttoptr i64 %3476 to i32*
  %3479 = load i32, i32* %3478, align 4
  %3480 = sext i32 %3479 to i64
  store i64 %3480, i64* %RCX.i1817, align 8
  %3481 = shl nsw i64 %3480, 3
  %3482 = add i64 %3481, %3451
  %3483 = add i64 %3107, 246
  store i64 %3483, i64* %3, align 8
  %3484 = load i64, i64* %148, align 1
  %3485 = inttoptr i64 %3482 to i64*
  store i64 %3484, i64* %3485, align 8
  %3486 = load i64, i64* %RBP.i, align 8
  %3487 = add i64 %3486, 16
  %3488 = load i64, i64* %3, align 8
  %3489 = add i64 %3488, 4
  store i64 %3489, i64* %3, align 8
  %3490 = inttoptr i64 %3487 to i64*
  %3491 = load i64, i64* %3490, align 8
  store i64 %3491, i64* %RAX.i1872, align 8
  %3492 = add i64 %3486, -100
  %3493 = add i64 %3488, 8
  store i64 %3493, i64* %3, align 8
  %3494 = inttoptr i64 %3492 to i32*
  %3495 = load i32, i32* %3494, align 4
  %3496 = sext i32 %3495 to i64
  %3497 = mul nsw i64 %3496, 520
  store i64 %3497, i64* %RCX.i1817, align 8
  %3498 = lshr i64 %3497, 63
  %3499 = add i64 %3497, %3491
  store i64 %3499, i64* %RAX.i1872, align 8
  %3500 = icmp ult i64 %3499, %3491
  %3501 = icmp ult i64 %3499, %3497
  %3502 = or i1 %3500, %3501
  %3503 = zext i1 %3502 to i8
  store i8 %3503, i8* %39, align 1
  %3504 = trunc i64 %3499 to i32
  %3505 = and i32 %3504, 255
  %3506 = tail call i32 @llvm.ctpop.i32(i32 %3505)
  %3507 = trunc i32 %3506 to i8
  %3508 = and i8 %3507, 1
  %3509 = xor i8 %3508, 1
  store i8 %3509, i8* %46, align 1
  %3510 = xor i64 %3497, %3491
  %3511 = xor i64 %3510, %3499
  %3512 = lshr i64 %3511, 4
  %3513 = trunc i64 %3512 to i8
  %3514 = and i8 %3513, 1
  store i8 %3514, i8* %51, align 1
  %3515 = icmp eq i64 %3499, 0
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %54, align 1
  %3517 = lshr i64 %3499, 63
  %3518 = trunc i64 %3517 to i8
  store i8 %3518, i8* %57, align 1
  %3519 = lshr i64 %3491, 63
  %3520 = xor i64 %3517, %3519
  %3521 = xor i64 %3517, %3498
  %3522 = add nuw nsw i64 %3520, %3521
  %3523 = icmp eq i64 %3522, 2
  %3524 = zext i1 %3523 to i8
  store i8 %3524, i8* %63, align 1
  %3525 = add i64 %3486, -104
  %3526 = add i64 %3488, 22
  store i64 %3526, i64* %3, align 8
  %3527 = inttoptr i64 %3525 to i32*
  %3528 = load i32, i32* %3527, align 4
  %3529 = sext i32 %3528 to i64
  store i64 %3529, i64* %RCX.i1817, align 8
  %3530 = shl nsw i64 %3529, 3
  %3531 = add i64 %3530, %3499
  %3532 = add i64 %3488, 27
  store i64 %3532, i64* %3, align 8
  %3533 = inttoptr i64 %3531 to i64*
  %3534 = load i64, i64* %3533, align 8
  store i64 %3534, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %3535 = add i64 %3486, 24
  %3536 = add i64 %3488, 31
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3535 to i64*
  %3538 = load i64, i64* %3537, align 8
  store i64 %3538, i64* %RAX.i1872, align 8
  %3539 = add i64 %3488, 35
  store i64 %3539, i64* %3, align 8
  %3540 = load i32, i32* %3494, align 4
  %3541 = sext i32 %3540 to i64
  %3542 = mul nsw i64 %3541, 33800
  store i64 %3542, i64* %RCX.i1817, align 8
  %3543 = lshr i64 %3542, 63
  %3544 = add i64 %3542, %3538
  store i64 %3544, i64* %RAX.i1872, align 8
  %3545 = icmp ult i64 %3544, %3538
  %3546 = icmp ult i64 %3544, %3542
  %3547 = or i1 %3545, %3546
  %3548 = zext i1 %3547 to i8
  store i8 %3548, i8* %39, align 1
  %3549 = trunc i64 %3544 to i32
  %3550 = and i32 %3549, 255
  %3551 = tail call i32 @llvm.ctpop.i32(i32 %3550)
  %3552 = trunc i32 %3551 to i8
  %3553 = and i8 %3552, 1
  %3554 = xor i8 %3553, 1
  store i8 %3554, i8* %46, align 1
  %3555 = xor i64 %3542, %3538
  %3556 = xor i64 %3555, %3544
  %3557 = lshr i64 %3556, 4
  %3558 = trunc i64 %3557 to i8
  %3559 = and i8 %3558, 1
  store i8 %3559, i8* %51, align 1
  %3560 = icmp eq i64 %3544, 0
  %3561 = zext i1 %3560 to i8
  store i8 %3561, i8* %54, align 1
  %3562 = lshr i64 %3544, 63
  %3563 = trunc i64 %3562 to i8
  store i8 %3563, i8* %57, align 1
  %3564 = lshr i64 %3538, 63
  %3565 = xor i64 %3562, %3564
  %3566 = xor i64 %3562, %3543
  %3567 = add nuw nsw i64 %3565, %3566
  %3568 = icmp eq i64 %3567, 2
  %3569 = zext i1 %3568 to i8
  store i8 %3569, i8* %63, align 1
  %3570 = load i64, i64* %RBP.i, align 8
  %3571 = add i64 %3570, -52
  %3572 = add i64 %3488, 49
  store i64 %3572, i64* %3, align 8
  %3573 = inttoptr i64 %3571 to i32*
  %3574 = load i32, i32* %3573, align 4
  %3575 = sext i32 %3574 to i64
  %3576 = mul nsw i64 %3575, 520
  store i64 %3576, i64* %RCX.i1817, align 8
  %3577 = lshr i64 %3576, 63
  %3578 = add i64 %3576, %3544
  store i64 %3578, i64* %RAX.i1872, align 8
  %3579 = icmp ult i64 %3578, %3544
  %3580 = icmp ult i64 %3578, %3576
  %3581 = or i1 %3579, %3580
  %3582 = zext i1 %3581 to i8
  store i8 %3582, i8* %39, align 1
  %3583 = trunc i64 %3578 to i32
  %3584 = and i32 %3583, 255
  %3585 = tail call i32 @llvm.ctpop.i32(i32 %3584)
  %3586 = trunc i32 %3585 to i8
  %3587 = and i8 %3586, 1
  %3588 = xor i8 %3587, 1
  store i8 %3588, i8* %46, align 1
  %3589 = xor i64 %3576, %3544
  %3590 = xor i64 %3589, %3578
  %3591 = lshr i64 %3590, 4
  %3592 = trunc i64 %3591 to i8
  %3593 = and i8 %3592, 1
  store i8 %3593, i8* %51, align 1
  %3594 = icmp eq i64 %3578, 0
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %54, align 1
  %3596 = lshr i64 %3578, 63
  %3597 = trunc i64 %3596 to i8
  store i8 %3597, i8* %57, align 1
  %3598 = xor i64 %3596, %3562
  %3599 = xor i64 %3596, %3577
  %3600 = add nuw nsw i64 %3598, %3599
  %3601 = icmp eq i64 %3600, 2
  %3602 = zext i1 %3601 to i8
  store i8 %3602, i8* %63, align 1
  %3603 = add i64 %3570, -108
  %3604 = add i64 %3488, 63
  store i64 %3604, i64* %3, align 8
  %3605 = inttoptr i64 %3603 to i32*
  %3606 = load i32, i32* %3605, align 4
  %3607 = sext i32 %3606 to i64
  store i64 %3607, i64* %RCX.i1817, align 8
  %3608 = shl nsw i64 %3607, 3
  %3609 = add i64 %3608, %3578
  %3610 = add i64 %3488, 68
  store i64 %3610, i64* %3, align 8
  %3611 = load i64, i64* %148, align 1
  %3612 = inttoptr i64 %3609 to i64*
  store i64 %3611, i64* %3612, align 8
  %3613 = load i64, i64* %RBP.i, align 8
  %3614 = add i64 %3613, -108
  %3615 = load i64, i64* %3, align 8
  %3616 = add i64 %3615, 3
  store i64 %3616, i64* %3, align 8
  %3617 = inttoptr i64 %3614 to i32*
  %3618 = load i32, i32* %3617, align 4
  %3619 = add i32 %3618, 1
  %3620 = zext i32 %3619 to i64
  store i64 %3620, i64* %RAX.i1872, align 8
  %3621 = icmp eq i32 %3618, -1
  %3622 = icmp eq i32 %3619, 0
  %3623 = or i1 %3621, %3622
  %3624 = zext i1 %3623 to i8
  store i8 %3624, i8* %39, align 1
  %3625 = and i32 %3619, 255
  %3626 = tail call i32 @llvm.ctpop.i32(i32 %3625)
  %3627 = trunc i32 %3626 to i8
  %3628 = and i8 %3627, 1
  %3629 = xor i8 %3628, 1
  store i8 %3629, i8* %46, align 1
  %3630 = xor i32 %3618, %3619
  %3631 = lshr i32 %3630, 4
  %3632 = trunc i32 %3631 to i8
  %3633 = and i8 %3632, 1
  store i8 %3633, i8* %51, align 1
  %3634 = zext i1 %3622 to i8
  store i8 %3634, i8* %54, align 1
  %3635 = lshr i32 %3619, 31
  %3636 = trunc i32 %3635 to i8
  store i8 %3636, i8* %57, align 1
  %3637 = lshr i32 %3618, 31
  %3638 = xor i32 %3635, %3637
  %3639 = add nuw nsw i32 %3638, %3635
  %3640 = icmp eq i32 %3639, 2
  %3641 = zext i1 %3640 to i8
  store i8 %3641, i8* %63, align 1
  %3642 = add i64 %3615, 9
  store i64 %3642, i64* %3, align 8
  store i32 %3619, i32* %3617, align 4
  %3643 = load i64, i64* %3, align 8
  %3644 = add i64 %3643, -660
  store i64 %3644, i64* %3, align 8
  br label %block_.L_4019d2

block_.L_401c6b:                                  ; preds = %block_.L_4019d2
  %3645 = add i64 %2605, -48
  %3646 = add i64 %2534, 36
  store i64 %3646, i64* %3, align 8
  %3647 = inttoptr i64 %3645 to i32*
  %3648 = load i32, i32* %3647, align 4
  %3649 = sext i32 %3648 to i64
  store i64 %3649, i64* %RCX.i1817, align 8
  %3650 = shl nsw i64 %3649, 3
  %3651 = add i64 %3650, %2580
  %3652 = add i64 %2534, 41
  store i64 %3652, i64* %3, align 8
  %3653 = inttoptr i64 %3651 to double*
  %3654 = load double, double* %3653, align 8
  store double %3654, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %3655 = add i64 %2605, -80
  %3656 = add i64 %2534, 45
  store i64 %3656, i64* %3, align 8
  %3657 = inttoptr i64 %3655 to i64*
  %3658 = load i64, i64* %3657, align 8
  store i64 %3658, i64* %RAX.i1872, align 8
  %3659 = add i64 %2605, -100
  %3660 = add i64 %2534, 49
  store i64 %3660, i64* %3, align 8
  %3661 = inttoptr i64 %3659 to i32*
  %3662 = load i32, i32* %3661, align 4
  %3663 = sext i32 %3662 to i64
  %3664 = mul nsw i64 %3663, 520
  store i64 %3664, i64* %RCX.i1817, align 8
  %3665 = lshr i64 %3664, 63
  %3666 = add i64 %3664, %3658
  store i64 %3666, i64* %RAX.i1872, align 8
  %3667 = icmp ult i64 %3666, %3658
  %3668 = icmp ult i64 %3666, %3664
  %3669 = or i1 %3667, %3668
  %3670 = zext i1 %3669 to i8
  store i8 %3670, i8* %39, align 1
  %3671 = trunc i64 %3666 to i32
  %3672 = and i32 %3671, 255
  %3673 = tail call i32 @llvm.ctpop.i32(i32 %3672)
  %3674 = trunc i32 %3673 to i8
  %3675 = and i8 %3674, 1
  %3676 = xor i8 %3675, 1
  store i8 %3676, i8* %46, align 1
  %3677 = xor i64 %3664, %3658
  %3678 = xor i64 %3677, %3666
  %3679 = lshr i64 %3678, 4
  %3680 = trunc i64 %3679 to i8
  %3681 = and i8 %3680, 1
  store i8 %3681, i8* %51, align 1
  %3682 = icmp eq i64 %3666, 0
  %3683 = zext i1 %3682 to i8
  store i8 %3683, i8* %54, align 1
  %3684 = lshr i64 %3666, 63
  %3685 = trunc i64 %3684 to i8
  store i8 %3685, i8* %57, align 1
  %3686 = lshr i64 %3658, 63
  %3687 = xor i64 %3684, %3686
  %3688 = xor i64 %3684, %3665
  %3689 = add nuw nsw i64 %3687, %3688
  %3690 = icmp eq i64 %3689, 2
  %3691 = zext i1 %3690 to i8
  store i8 %3691, i8* %63, align 1
  %3692 = add i64 %2534, 63
  store i64 %3692, i64* %3, align 8
  %3693 = load i32, i32* %3647, align 4
  %3694 = sext i32 %3693 to i64
  store i64 %3694, i64* %RCX.i1817, align 8
  %3695 = shl nsw i64 %3694, 3
  %3696 = add i64 %3695, %3666
  %3697 = add i64 %2534, 68
  store i64 %3697, i64* %3, align 8
  %3698 = inttoptr i64 %3696 to double*
  %3699 = load double, double* %3698, align 8
  %3700 = fsub double %3654, %3699
  store double %3700, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3701 = add i64 %2605, -88
  %3702 = add i64 %2534, 72
  store i64 %3702, i64* %3, align 8
  %3703 = inttoptr i64 %3701 to i64*
  %3704 = load i64, i64* %3703, align 8
  store i64 %3704, i64* %RAX.i1872, align 8
  %3705 = add i64 %2534, 76
  store i64 %3705, i64* %3, align 8
  %3706 = load i32, i32* %3661, align 4
  %3707 = sext i32 %3706 to i64
  %3708 = mul nsw i64 %3707, 520
  store i64 %3708, i64* %RCX.i1817, align 8
  %3709 = lshr i64 %3708, 63
  %3710 = add i64 %3708, %3704
  store i64 %3710, i64* %RAX.i1872, align 8
  %3711 = icmp ult i64 %3710, %3704
  %3712 = icmp ult i64 %3710, %3708
  %3713 = or i1 %3711, %3712
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %39, align 1
  %3715 = trunc i64 %3710 to i32
  %3716 = and i32 %3715, 255
  %3717 = tail call i32 @llvm.ctpop.i32(i32 %3716)
  %3718 = trunc i32 %3717 to i8
  %3719 = and i8 %3718, 1
  %3720 = xor i8 %3719, 1
  store i8 %3720, i8* %46, align 1
  %3721 = xor i64 %3708, %3704
  %3722 = xor i64 %3721, %3710
  %3723 = lshr i64 %3722, 4
  %3724 = trunc i64 %3723 to i8
  %3725 = and i8 %3724, 1
  store i8 %3725, i8* %51, align 1
  %3726 = icmp eq i64 %3710, 0
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %54, align 1
  %3728 = lshr i64 %3710, 63
  %3729 = trunc i64 %3728 to i8
  store i8 %3729, i8* %57, align 1
  %3730 = lshr i64 %3704, 63
  %3731 = xor i64 %3728, %3730
  %3732 = xor i64 %3728, %3709
  %3733 = add nuw nsw i64 %3731, %3732
  %3734 = icmp eq i64 %3733, 2
  %3735 = zext i1 %3734 to i8
  store i8 %3735, i8* %63, align 1
  %3736 = add i64 %2605, -52
  %3737 = add i64 %2534, 90
  store i64 %3737, i64* %3, align 8
  %3738 = inttoptr i64 %3736 to i32*
  %3739 = load i32, i32* %3738, align 4
  %3740 = sext i32 %3739 to i64
  store i64 %3740, i64* %RCX.i1817, align 8
  %3741 = shl nsw i64 %3740, 3
  %3742 = add i64 %3741, %3710
  %3743 = add i64 %2534, 95
  store i64 %3743, i64* %3, align 8
  %3744 = inttoptr i64 %3742 to double*
  %3745 = load double, double* %3744, align 8
  %3746 = fadd double %3700, %3745
  store double %3746, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3747 = add i64 %2605, 40
  %3748 = add i64 %2534, 99
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i64*
  %3750 = load i64, i64* %3749, align 8
  store i64 %3750, i64* %RAX.i1872, align 8
  %3751 = add i64 %2534, 103
  store i64 %3751, i64* %3, align 8
  %3752 = load i32, i32* %3661, align 4
  %3753 = sext i32 %3752 to i64
  %3754 = mul nsw i64 %3753, 33800
  store i64 %3754, i64* %RCX.i1817, align 8
  %3755 = lshr i64 %3754, 63
  %3756 = add i64 %3754, %3750
  store i64 %3756, i64* %RAX.i1872, align 8
  %3757 = icmp ult i64 %3756, %3750
  %3758 = icmp ult i64 %3756, %3754
  %3759 = or i1 %3757, %3758
  %3760 = zext i1 %3759 to i8
  store i8 %3760, i8* %39, align 1
  %3761 = trunc i64 %3756 to i32
  %3762 = and i32 %3761, 255
  %3763 = tail call i32 @llvm.ctpop.i32(i32 %3762)
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = xor i8 %3765, 1
  store i8 %3766, i8* %46, align 1
  %3767 = xor i64 %3754, %3750
  %3768 = xor i64 %3767, %3756
  %3769 = lshr i64 %3768, 4
  %3770 = trunc i64 %3769 to i8
  %3771 = and i8 %3770, 1
  store i8 %3771, i8* %51, align 1
  %3772 = icmp eq i64 %3756, 0
  %3773 = zext i1 %3772 to i8
  store i8 %3773, i8* %54, align 1
  %3774 = lshr i64 %3756, 63
  %3775 = trunc i64 %3774 to i8
  store i8 %3775, i8* %57, align 1
  %3776 = lshr i64 %3750, 63
  %3777 = xor i64 %3774, %3776
  %3778 = xor i64 %3774, %3755
  %3779 = add nuw nsw i64 %3777, %3778
  %3780 = icmp eq i64 %3779, 2
  %3781 = zext i1 %3780 to i8
  store i8 %3781, i8* %63, align 1
  %3782 = load i64, i64* %RBP.i, align 8
  %3783 = add i64 %3782, -52
  %3784 = add i64 %2534, 117
  store i64 %3784, i64* %3, align 8
  %3785 = inttoptr i64 %3783 to i32*
  %3786 = load i32, i32* %3785, align 4
  %3787 = sext i32 %3786 to i64
  %3788 = mul nsw i64 %3787, 520
  store i64 %3788, i64* %RCX.i1817, align 8
  %3789 = lshr i64 %3788, 63
  %3790 = add i64 %3788, %3756
  store i64 %3790, i64* %RAX.i1872, align 8
  %3791 = icmp ult i64 %3790, %3756
  %3792 = icmp ult i64 %3790, %3788
  %3793 = or i1 %3791, %3792
  %3794 = zext i1 %3793 to i8
  store i8 %3794, i8* %39, align 1
  %3795 = trunc i64 %3790 to i32
  %3796 = and i32 %3795, 255
  %3797 = tail call i32 @llvm.ctpop.i32(i32 %3796)
  %3798 = trunc i32 %3797 to i8
  %3799 = and i8 %3798, 1
  %3800 = xor i8 %3799, 1
  store i8 %3800, i8* %46, align 1
  %3801 = xor i64 %3788, %3756
  %3802 = xor i64 %3801, %3790
  %3803 = lshr i64 %3802, 4
  %3804 = trunc i64 %3803 to i8
  %3805 = and i8 %3804, 1
  store i8 %3805, i8* %51, align 1
  %3806 = icmp eq i64 %3790, 0
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %54, align 1
  %3808 = lshr i64 %3790, 63
  %3809 = trunc i64 %3808 to i8
  store i8 %3809, i8* %57, align 1
  %3810 = xor i64 %3808, %3774
  %3811 = xor i64 %3808, %3789
  %3812 = add nuw nsw i64 %3810, %3811
  %3813 = icmp eq i64 %3812, 2
  %3814 = zext i1 %3813 to i8
  store i8 %3814, i8* %63, align 1
  %3815 = add i64 %3782, -48
  %3816 = add i64 %2534, 131
  store i64 %3816, i64* %3, align 8
  %3817 = inttoptr i64 %3815 to i32*
  %3818 = load i32, i32* %3817, align 4
  %3819 = sext i32 %3818 to i64
  store i64 %3819, i64* %RCX.i1817, align 8
  %3820 = shl nsw i64 %3819, 3
  %3821 = add i64 %3820, %3790
  %3822 = add i64 %2534, 136
  store i64 %3822, i64* %3, align 8
  %3823 = load double, double* %230, align 1
  %3824 = inttoptr i64 %3821 to double*
  %3825 = load double, double* %3824, align 8
  %3826 = fsub double %3823, %3825
  store double %3826, double* %230, align 1
  %3827 = add i64 %3782, -96
  %3828 = add i64 %2534, 140
  store i64 %3828, i64* %3, align 8
  %3829 = inttoptr i64 %3827 to i64*
  %3830 = load i64, i64* %3829, align 8
  store i64 %3830, i64* %RAX.i1872, align 8
  %3831 = add i64 %3782, -100
  %3832 = add i64 %2534, 144
  store i64 %3832, i64* %3, align 8
  %3833 = inttoptr i64 %3831 to i32*
  %3834 = load i32, i32* %3833, align 4
  %3835 = sext i32 %3834 to i64
  %3836 = mul nsw i64 %3835, 520
  store i64 %3836, i64* %RCX.i1817, align 8
  %3837 = lshr i64 %3836, 63
  %3838 = add i64 %3836, %3830
  store i64 %3838, i64* %RAX.i1872, align 8
  %3839 = icmp ult i64 %3838, %3830
  %3840 = icmp ult i64 %3838, %3836
  %3841 = or i1 %3839, %3840
  %3842 = zext i1 %3841 to i8
  store i8 %3842, i8* %39, align 1
  %3843 = trunc i64 %3838 to i32
  %3844 = and i32 %3843, 255
  %3845 = tail call i32 @llvm.ctpop.i32(i32 %3844)
  %3846 = trunc i32 %3845 to i8
  %3847 = and i8 %3846, 1
  %3848 = xor i8 %3847, 1
  store i8 %3848, i8* %46, align 1
  %3849 = xor i64 %3836, %3830
  %3850 = xor i64 %3849, %3838
  %3851 = lshr i64 %3850, 4
  %3852 = trunc i64 %3851 to i8
  %3853 = and i8 %3852, 1
  store i8 %3853, i8* %51, align 1
  %3854 = icmp eq i64 %3838, 0
  %3855 = zext i1 %3854 to i8
  store i8 %3855, i8* %54, align 1
  %3856 = lshr i64 %3838, 63
  %3857 = trunc i64 %3856 to i8
  store i8 %3857, i8* %57, align 1
  %3858 = lshr i64 %3830, 63
  %3859 = xor i64 %3856, %3858
  %3860 = xor i64 %3856, %3837
  %3861 = add nuw nsw i64 %3859, %3860
  %3862 = icmp eq i64 %3861, 2
  %3863 = zext i1 %3862 to i8
  store i8 %3863, i8* %63, align 1
  %3864 = load i64, i64* %RBP.i, align 8
  %3865 = add i64 %3864, -104
  %3866 = add i64 %2534, 158
  store i64 %3866, i64* %3, align 8
  %3867 = inttoptr i64 %3865 to i32*
  %3868 = load i32, i32* %3867, align 4
  %3869 = sext i32 %3868 to i64
  store i64 %3869, i64* %RCX.i1817, align 8
  %3870 = shl nsw i64 %3869, 3
  %3871 = add i64 %3870, %3838
  %3872 = add i64 %2534, 163
  store i64 %3872, i64* %3, align 8
  %3873 = inttoptr i64 %3871 to double*
  store double %3826, double* %3873, align 8
  %3874 = load i64, i64* %RBP.i, align 8
  %3875 = add i64 %3874, 88
  %3876 = load i64, i64* %3, align 8
  %3877 = add i64 %3876, 4
  store i64 %3877, i64* %3, align 8
  %3878 = inttoptr i64 %3875 to i64*
  %3879 = load i64, i64* %3878, align 8
  store i64 %3879, i64* %RAX.i1872, align 8
  %3880 = add i64 %3874, -52
  %3881 = add i64 %3876, 8
  store i64 %3881, i64* %3, align 8
  %3882 = inttoptr i64 %3880 to i32*
  %3883 = load i32, i32* %3882, align 4
  %3884 = sext i32 %3883 to i64
  store i64 %3884, i64* %RCX.i1817, align 8
  %3885 = shl nsw i64 %3884, 3
  %3886 = add i64 %3885, %3879
  %3887 = add i64 %3876, 13
  store i64 %3887, i64* %3, align 8
  %3888 = inttoptr i64 %3886 to double*
  %3889 = load double, double* %3888, align 8
  store double %3889, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %3890 = add i64 %3874, 96
  %3891 = add i64 %3876, 17
  store i64 %3891, i64* %3, align 8
  %3892 = inttoptr i64 %3890 to i64*
  %3893 = load i64, i64* %3892, align 8
  store i64 %3893, i64* %RAX.i1872, align 8
  %3894 = add i64 %3876, 21
  store i64 %3894, i64* %3, align 8
  %3895 = load i32, i32* %3882, align 4
  %3896 = sext i32 %3895 to i64
  store i64 %3896, i64* %RCX.i1817, align 8
  %3897 = shl nsw i64 %3896, 3
  %3898 = add i64 %3897, %3893
  %3899 = add i64 %3876, 26
  store i64 %3899, i64* %3, align 8
  %3900 = inttoptr i64 %3898 to double*
  %3901 = load double, double* %3900, align 8
  %3902 = fdiv double %3889, %3901
  store double %3902, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3903 = add i64 %3874, 24
  %3904 = add i64 %3876, 30
  store i64 %3904, i64* %3, align 8
  %3905 = inttoptr i64 %3903 to i64*
  %3906 = load i64, i64* %3905, align 8
  store i64 %3906, i64* %RAX.i1872, align 8
  %3907 = add i64 %3874, -100
  %3908 = add i64 %3876, 34
  store i64 %3908, i64* %3, align 8
  %3909 = inttoptr i64 %3907 to i32*
  %3910 = load i32, i32* %3909, align 4
  %3911 = sext i32 %3910 to i64
  %3912 = mul nsw i64 %3911, 33800
  store i64 %3912, i64* %RCX.i1817, align 8
  %3913 = lshr i64 %3912, 63
  %3914 = add i64 %3912, %3906
  store i64 %3914, i64* %RAX.i1872, align 8
  %3915 = icmp ult i64 %3914, %3906
  %3916 = icmp ult i64 %3914, %3912
  %3917 = or i1 %3915, %3916
  %3918 = zext i1 %3917 to i8
  store i8 %3918, i8* %39, align 1
  %3919 = trunc i64 %3914 to i32
  %3920 = and i32 %3919, 255
  %3921 = tail call i32 @llvm.ctpop.i32(i32 %3920)
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = xor i8 %3923, 1
  store i8 %3924, i8* %46, align 1
  %3925 = xor i64 %3912, %3906
  %3926 = xor i64 %3925, %3914
  %3927 = lshr i64 %3926, 4
  %3928 = trunc i64 %3927 to i8
  %3929 = and i8 %3928, 1
  store i8 %3929, i8* %51, align 1
  %3930 = icmp eq i64 %3914, 0
  %3931 = zext i1 %3930 to i8
  store i8 %3931, i8* %54, align 1
  %3932 = lshr i64 %3914, 63
  %3933 = trunc i64 %3932 to i8
  store i8 %3933, i8* %57, align 1
  %3934 = lshr i64 %3906, 63
  %3935 = xor i64 %3932, %3934
  %3936 = xor i64 %3932, %3913
  %3937 = add nuw nsw i64 %3935, %3936
  %3938 = icmp eq i64 %3937, 2
  %3939 = zext i1 %3938 to i8
  store i8 %3939, i8* %63, align 1
  %3940 = add i64 %3876, 48
  store i64 %3940, i64* %3, align 8
  %3941 = load i32, i32* %3882, align 4
  %3942 = sext i32 %3941 to i64
  %3943 = mul nsw i64 %3942, 520
  store i64 %3943, i64* %RCX.i1817, align 8
  %3944 = lshr i64 %3943, 63
  %3945 = add i64 %3943, %3914
  store i64 %3945, i64* %RAX.i1872, align 8
  %3946 = icmp ult i64 %3945, %3914
  %3947 = icmp ult i64 %3945, %3943
  %3948 = or i1 %3946, %3947
  %3949 = zext i1 %3948 to i8
  store i8 %3949, i8* %39, align 1
  %3950 = trunc i64 %3945 to i32
  %3951 = and i32 %3950, 255
  %3952 = tail call i32 @llvm.ctpop.i32(i32 %3951)
  %3953 = trunc i32 %3952 to i8
  %3954 = and i8 %3953, 1
  %3955 = xor i8 %3954, 1
  store i8 %3955, i8* %46, align 1
  %3956 = xor i64 %3943, %3914
  %3957 = xor i64 %3956, %3945
  %3958 = lshr i64 %3957, 4
  %3959 = trunc i64 %3958 to i8
  %3960 = and i8 %3959, 1
  store i8 %3960, i8* %51, align 1
  %3961 = icmp eq i64 %3945, 0
  %3962 = zext i1 %3961 to i8
  store i8 %3962, i8* %54, align 1
  %3963 = lshr i64 %3945, 63
  %3964 = trunc i64 %3963 to i8
  store i8 %3964, i8* %57, align 1
  %3965 = xor i64 %3963, %3932
  %3966 = xor i64 %3963, %3944
  %3967 = add nuw nsw i64 %3965, %3966
  %3968 = icmp eq i64 %3967, 2
  %3969 = zext i1 %3968 to i8
  store i8 %3969, i8* %63, align 1
  %3970 = add i64 %3874, -48
  %3971 = add i64 %3876, 62
  store i64 %3971, i64* %3, align 8
  %3972 = inttoptr i64 %3970 to i32*
  %3973 = load i32, i32* %3972, align 4
  %3974 = sext i32 %3973 to i64
  store i64 %3974, i64* %RCX.i1817, align 8
  %3975 = shl nsw i64 %3974, 3
  %3976 = add i64 %3975, %3945
  %3977 = add i64 %3876, 67
  store i64 %3977, i64* %3, align 8
  %3978 = load double, double* %230, align 1
  %3979 = inttoptr i64 %3976 to double*
  %3980 = load double, double* %3979, align 8
  %3981 = fmul double %3978, %3980
  store double %3981, double* %230, align 1
  %3982 = add i64 %3874, -72
  %3983 = add i64 %3876, 72
  store i64 %3983, i64* %3, align 8
  %3984 = inttoptr i64 %3982 to double*
  %3985 = load double, double* %3984, align 8
  store double %3985, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %3986 = add i64 %3876, 76
  store i64 %3986, i64* %3, align 8
  %3987 = load i64, i64* %3892, align 8
  store i64 %3987, i64* %RAX.i1872, align 8
  %3988 = add i64 %3876, 80
  store i64 %3988, i64* %3, align 8
  %3989 = load i32, i32* %3882, align 4
  %3990 = sext i32 %3989 to i64
  store i64 %3990, i64* %RCX.i1817, align 8
  %3991 = shl nsw i64 %3990, 3
  %3992 = add i64 %3991, %3987
  %3993 = add i64 %3876, 85
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3992 to double*
  %3995 = load double, double* %3994, align 8
  %3996 = fdiv double %3985, %3995
  store double %3996, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3997 = load i64, i64* %RBP.i, align 8
  %3998 = add i64 %3997, -96
  %3999 = add i64 %3876, 89
  store i64 %3999, i64* %3, align 8
  %4000 = inttoptr i64 %3998 to i64*
  %4001 = load i64, i64* %4000, align 8
  store i64 %4001, i64* %RAX.i1872, align 8
  %4002 = add i64 %3997, -100
  %4003 = add i64 %3876, 93
  store i64 %4003, i64* %3, align 8
  %4004 = inttoptr i64 %4002 to i32*
  %4005 = load i32, i32* %4004, align 4
  %4006 = sext i32 %4005 to i64
  %4007 = mul nsw i64 %4006, 520
  store i64 %4007, i64* %RCX.i1817, align 8
  %4008 = lshr i64 %4007, 63
  %4009 = add i64 %4007, %4001
  store i64 %4009, i64* %RAX.i1872, align 8
  %4010 = icmp ult i64 %4009, %4001
  %4011 = icmp ult i64 %4009, %4007
  %4012 = or i1 %4010, %4011
  %4013 = zext i1 %4012 to i8
  store i8 %4013, i8* %39, align 1
  %4014 = trunc i64 %4009 to i32
  %4015 = and i32 %4014, 255
  %4016 = tail call i32 @llvm.ctpop.i32(i32 %4015)
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  %4019 = xor i8 %4018, 1
  store i8 %4019, i8* %46, align 1
  %4020 = xor i64 %4007, %4001
  %4021 = xor i64 %4020, %4009
  %4022 = lshr i64 %4021, 4
  %4023 = trunc i64 %4022 to i8
  %4024 = and i8 %4023, 1
  store i8 %4024, i8* %51, align 1
  %4025 = icmp eq i64 %4009, 0
  %4026 = zext i1 %4025 to i8
  store i8 %4026, i8* %54, align 1
  %4027 = lshr i64 %4009, 63
  %4028 = trunc i64 %4027 to i8
  store i8 %4028, i8* %57, align 1
  %4029 = lshr i64 %4001, 63
  %4030 = xor i64 %4027, %4029
  %4031 = xor i64 %4027, %4008
  %4032 = add nuw nsw i64 %4030, %4031
  %4033 = icmp eq i64 %4032, 2
  %4034 = zext i1 %4033 to i8
  store i8 %4034, i8* %63, align 1
  %4035 = add i64 %3997, -104
  %4036 = add i64 %3876, 107
  store i64 %4036, i64* %3, align 8
  %4037 = inttoptr i64 %4035 to i32*
  %4038 = load i32, i32* %4037, align 4
  %4039 = sext i32 %4038 to i64
  store i64 %4039, i64* %RCX.i1817, align 8
  %4040 = shl nsw i64 %4039, 3
  %4041 = add i64 %4040, %4009
  %4042 = add i64 %3876, 112
  store i64 %4042, i64* %3, align 8
  %4043 = inttoptr i64 %4041 to double*
  %4044 = load double, double* %4043, align 8
  %4045 = fmul double %3996, %4044
  store double %4045, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4046 = fsub double %3981, %4045
  store double %4046, double* %230, align 1
  %4047 = add i64 %3997, 16
  %4048 = add i64 %3876, 120
  store i64 %4048, i64* %3, align 8
  %4049 = inttoptr i64 %4047 to i64*
  %4050 = load i64, i64* %4049, align 8
  store i64 %4050, i64* %RAX.i1872, align 8
  %4051 = add i64 %3876, 124
  store i64 %4051, i64* %3, align 8
  %4052 = load i32, i32* %4004, align 4
  %4053 = sext i32 %4052 to i64
  %4054 = mul nsw i64 %4053, 520
  store i64 %4054, i64* %RCX.i1817, align 8
  %4055 = lshr i64 %4054, 63
  %4056 = add i64 %4054, %4050
  store i64 %4056, i64* %RAX.i1872, align 8
  %4057 = icmp ult i64 %4056, %4050
  %4058 = icmp ult i64 %4056, %4054
  %4059 = or i1 %4057, %4058
  %4060 = zext i1 %4059 to i8
  store i8 %4060, i8* %39, align 1
  %4061 = trunc i64 %4056 to i32
  %4062 = and i32 %4061, 255
  %4063 = tail call i32 @llvm.ctpop.i32(i32 %4062)
  %4064 = trunc i32 %4063 to i8
  %4065 = and i8 %4064, 1
  %4066 = xor i8 %4065, 1
  store i8 %4066, i8* %46, align 1
  %4067 = xor i64 %4054, %4050
  %4068 = xor i64 %4067, %4056
  %4069 = lshr i64 %4068, 4
  %4070 = trunc i64 %4069 to i8
  %4071 = and i8 %4070, 1
  store i8 %4071, i8* %51, align 1
  %4072 = icmp eq i64 %4056, 0
  %4073 = zext i1 %4072 to i8
  store i8 %4073, i8* %54, align 1
  %4074 = lshr i64 %4056, 63
  %4075 = trunc i64 %4074 to i8
  store i8 %4075, i8* %57, align 1
  %4076 = lshr i64 %4050, 63
  %4077 = xor i64 %4074, %4076
  %4078 = xor i64 %4074, %4055
  %4079 = add nuw nsw i64 %4077, %4078
  %4080 = icmp eq i64 %4079, 2
  %4081 = zext i1 %4080 to i8
  store i8 %4081, i8* %63, align 1
  %4082 = add i64 %3876, 138
  store i64 %4082, i64* %3, align 8
  %4083 = load i32, i32* %4037, align 4
  %4084 = sext i32 %4083 to i64
  store i64 %4084, i64* %RCX.i1817, align 8
  %4085 = shl nsw i64 %4084, 3
  %4086 = add i64 %4085, %4056
  %4087 = add i64 %3876, 143
  store i64 %4087, i64* %3, align 8
  %4088 = inttoptr i64 %4086 to double*
  store double %4046, double* %4088, align 8
  %4089 = load i64, i64* %RBP.i, align 8
  %4090 = add i64 %4089, 72
  %4091 = load i64, i64* %3, align 8
  %4092 = add i64 %4091, 4
  store i64 %4092, i64* %3, align 8
  %4093 = inttoptr i64 %4090 to i64*
  %4094 = load i64, i64* %4093, align 8
  store i64 %4094, i64* %RAX.i1872, align 8
  %4095 = add i64 %4089, -48
  %4096 = add i64 %4091, 8
  store i64 %4096, i64* %3, align 8
  %4097 = inttoptr i64 %4095 to i32*
  %4098 = load i32, i32* %4097, align 4
  %4099 = sext i32 %4098 to i64
  store i64 %4099, i64* %RCX.i1817, align 8
  %4100 = shl nsw i64 %4099, 3
  %4101 = add i64 %4100, %4094
  %4102 = add i64 %4091, 13
  store i64 %4102, i64* %3, align 8
  %4103 = inttoptr i64 %4101 to double*
  %4104 = load double, double* %4103, align 8
  store double %4104, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %4105 = add i64 %4089, 80
  %4106 = add i64 %4091, 17
  store i64 %4106, i64* %3, align 8
  %4107 = inttoptr i64 %4105 to i64*
  %4108 = load i64, i64* %4107, align 8
  store i64 %4108, i64* %RAX.i1872, align 8
  %4109 = add i64 %4091, 21
  store i64 %4109, i64* %3, align 8
  %4110 = load i32, i32* %4097, align 4
  %4111 = sext i32 %4110 to i64
  store i64 %4111, i64* %RCX.i1817, align 8
  %4112 = shl nsw i64 %4111, 3
  %4113 = add i64 %4112, %4108
  %4114 = add i64 %4091, 26
  store i64 %4114, i64* %3, align 8
  %4115 = inttoptr i64 %4113 to double*
  %4116 = load double, double* %4115, align 8
  %4117 = fdiv double %4104, %4116
  store double %4117, double* %230, align 1
  store i64 0, i64* %231, align 1
  %4118 = add i64 %4089, 48
  %4119 = add i64 %4091, 30
  store i64 %4119, i64* %3, align 8
  %4120 = inttoptr i64 %4118 to i64*
  %4121 = load i64, i64* %4120, align 8
  store i64 %4121, i64* %RAX.i1872, align 8
  %4122 = add i64 %4089, -100
  %4123 = add i64 %4091, 34
  store i64 %4123, i64* %3, align 8
  %4124 = inttoptr i64 %4122 to i32*
  %4125 = load i32, i32* %4124, align 4
  %4126 = sext i32 %4125 to i64
  %4127 = mul nsw i64 %4126, 33800
  store i64 %4127, i64* %RCX.i1817, align 8
  %4128 = lshr i64 %4127, 63
  %4129 = add i64 %4127, %4121
  store i64 %4129, i64* %RAX.i1872, align 8
  %4130 = icmp ult i64 %4129, %4121
  %4131 = icmp ult i64 %4129, %4127
  %4132 = or i1 %4130, %4131
  %4133 = zext i1 %4132 to i8
  store i8 %4133, i8* %39, align 1
  %4134 = trunc i64 %4129 to i32
  %4135 = and i32 %4134, 255
  %4136 = tail call i32 @llvm.ctpop.i32(i32 %4135)
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  %4139 = xor i8 %4138, 1
  store i8 %4139, i8* %46, align 1
  %4140 = xor i64 %4127, %4121
  %4141 = xor i64 %4140, %4129
  %4142 = lshr i64 %4141, 4
  %4143 = trunc i64 %4142 to i8
  %4144 = and i8 %4143, 1
  store i8 %4144, i8* %51, align 1
  %4145 = icmp eq i64 %4129, 0
  %4146 = zext i1 %4145 to i8
  store i8 %4146, i8* %54, align 1
  %4147 = lshr i64 %4129, 63
  %4148 = trunc i64 %4147 to i8
  store i8 %4148, i8* %57, align 1
  %4149 = lshr i64 %4121, 63
  %4150 = xor i64 %4147, %4149
  %4151 = xor i64 %4147, %4128
  %4152 = add nuw nsw i64 %4150, %4151
  %4153 = icmp eq i64 %4152, 2
  %4154 = zext i1 %4153 to i8
  store i8 %4154, i8* %63, align 1
  %4155 = add i64 %4089, -52
  %4156 = add i64 %4091, 48
  store i64 %4156, i64* %3, align 8
  %4157 = inttoptr i64 %4155 to i32*
  %4158 = load i32, i32* %4157, align 4
  %4159 = sext i32 %4158 to i64
  %4160 = mul nsw i64 %4159, 520
  store i64 %4160, i64* %RCX.i1817, align 8
  %4161 = lshr i64 %4160, 63
  %4162 = add i64 %4160, %4129
  store i64 %4162, i64* %RAX.i1872, align 8
  %4163 = icmp ult i64 %4162, %4129
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
  %4173 = xor i64 %4160, %4129
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
  %4182 = xor i64 %4180, %4147
  %4183 = xor i64 %4180, %4161
  %4184 = add nuw nsw i64 %4182, %4183
  %4185 = icmp eq i64 %4184, 2
  %4186 = zext i1 %4185 to i8
  store i8 %4186, i8* %63, align 1
  %4187 = add i64 %4091, 62
  store i64 %4187, i64* %3, align 8
  %4188 = load i32, i32* %4097, align 4
  %4189 = sext i32 %4188 to i64
  store i64 %4189, i64* %RCX.i1817, align 8
  %4190 = shl nsw i64 %4189, 3
  %4191 = add i64 %4190, %4162
  %4192 = add i64 %4091, 67
  store i64 %4192, i64* %3, align 8
  %4193 = load double, double* %230, align 1
  %4194 = inttoptr i64 %4191 to double*
  %4195 = load double, double* %4194, align 8
  %4196 = fmul double %4193, %4195
  store double %4196, double* %230, align 1
  %4197 = add i64 %4089, -64
  %4198 = add i64 %4091, 72
  store i64 %4198, i64* %3, align 8
  %4199 = inttoptr i64 %4197 to double*
  %4200 = load double, double* %4199, align 8
  store double %4200, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %4201 = add i64 %4089, 64
  %4202 = add i64 %4091, 76
  store i64 %4202, i64* %3, align 8
  %4203 = inttoptr i64 %4201 to i64*
  %4204 = load i64, i64* %4203, align 8
  store i64 %4204, i64* %RAX.i1872, align 8
  %4205 = add i64 %4091, 80
  store i64 %4205, i64* %3, align 8
  %4206 = load i32, i32* %4124, align 4
  %4207 = sext i32 %4206 to i64
  store i64 %4207, i64* %RCX.i1817, align 8
  %4208 = shl nsw i64 %4207, 3
  %4209 = add i64 %4208, %4204
  %4210 = add i64 %4091, 85
  store i64 %4210, i64* %3, align 8
  %4211 = inttoptr i64 %4209 to double*
  %4212 = load double, double* %4211, align 8
  %4213 = fmul double %4200, %4212
  store double %4213, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4214 = load i64, i64* %RBP.i, align 8
  %4215 = add i64 %4214, 80
  %4216 = add i64 %4091, 89
  store i64 %4216, i64* %3, align 8
  %4217 = inttoptr i64 %4215 to i64*
  %4218 = load i64, i64* %4217, align 8
  store i64 %4218, i64* %RAX.i1872, align 8
  %4219 = add i64 %4214, -48
  %4220 = add i64 %4091, 93
  store i64 %4220, i64* %3, align 8
  %4221 = inttoptr i64 %4219 to i32*
  %4222 = load i32, i32* %4221, align 4
  %4223 = sext i32 %4222 to i64
  store i64 %4223, i64* %RCX.i1817, align 8
  %4224 = shl nsw i64 %4223, 3
  %4225 = add i64 %4224, %4218
  %4226 = add i64 %4091, 98
  store i64 %4226, i64* %3, align 8
  %4227 = inttoptr i64 %4225 to double*
  %4228 = load double, double* %4227, align 8
  %4229 = fdiv double %4213, %4228
  store double %4229, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4230 = add i64 %4214, 16
  %4231 = add i64 %4091, 102
  store i64 %4231, i64* %3, align 8
  %4232 = inttoptr i64 %4230 to i64*
  %4233 = load i64, i64* %4232, align 8
  store i64 %4233, i64* %RAX.i1872, align 8
  %4234 = add i64 %4214, -100
  %4235 = add i64 %4091, 106
  store i64 %4235, i64* %3, align 8
  %4236 = inttoptr i64 %4234 to i32*
  %4237 = load i32, i32* %4236, align 4
  %4238 = sext i32 %4237 to i64
  %4239 = mul nsw i64 %4238, 520
  store i64 %4239, i64* %RCX.i1817, align 8
  %4240 = lshr i64 %4239, 63
  %4241 = add i64 %4239, %4233
  store i64 %4241, i64* %RAX.i1872, align 8
  %4242 = icmp ult i64 %4241, %4233
  %4243 = icmp ult i64 %4241, %4239
  %4244 = or i1 %4242, %4243
  %4245 = zext i1 %4244 to i8
  store i8 %4245, i8* %39, align 1
  %4246 = trunc i64 %4241 to i32
  %4247 = and i32 %4246, 255
  %4248 = tail call i32 @llvm.ctpop.i32(i32 %4247)
  %4249 = trunc i32 %4248 to i8
  %4250 = and i8 %4249, 1
  %4251 = xor i8 %4250, 1
  store i8 %4251, i8* %46, align 1
  %4252 = xor i64 %4239, %4233
  %4253 = xor i64 %4252, %4241
  %4254 = lshr i64 %4253, 4
  %4255 = trunc i64 %4254 to i8
  %4256 = and i8 %4255, 1
  store i8 %4256, i8* %51, align 1
  %4257 = icmp eq i64 %4241, 0
  %4258 = zext i1 %4257 to i8
  store i8 %4258, i8* %54, align 1
  %4259 = lshr i64 %4241, 63
  %4260 = trunc i64 %4259 to i8
  store i8 %4260, i8* %57, align 1
  %4261 = lshr i64 %4233, 63
  %4262 = xor i64 %4259, %4261
  %4263 = xor i64 %4259, %4240
  %4264 = add nuw nsw i64 %4262, %4263
  %4265 = icmp eq i64 %4264, 2
  %4266 = zext i1 %4265 to i8
  store i8 %4266, i8* %63, align 1
  %4267 = add i64 %4214, -104
  %4268 = add i64 %4091, 120
  store i64 %4268, i64* %3, align 8
  %4269 = inttoptr i64 %4267 to i32*
  %4270 = load i32, i32* %4269, align 4
  %4271 = sext i32 %4270 to i64
  store i64 %4271, i64* %RCX.i1817, align 8
  %4272 = shl nsw i64 %4271, 3
  %4273 = add i64 %4272, %4241
  %4274 = add i64 %4091, 125
  store i64 %4274, i64* %3, align 8
  %4275 = inttoptr i64 %4273 to double*
  %4276 = load double, double* %4275, align 8
  %4277 = fmul double %4229, %4276
  store double %4277, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4278 = load double, double* %230, align 1
  %4279 = fadd double %4278, %4277
  store double %4279, double* %230, align 1
  %4280 = add i64 %4214, -64
  %4281 = add i64 %4091, 134
  store i64 %4281, i64* %3, align 8
  %4282 = inttoptr i64 %4280 to double*
  %4283 = load double, double* %4282, align 8
  store double %4283, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %4284 = add i64 %4214, 56
  %4285 = add i64 %4091, 138
  store i64 %4285, i64* %3, align 8
  %4286 = inttoptr i64 %4284 to i64*
  %4287 = load i64, i64* %4286, align 8
  store i64 %4287, i64* %RAX.i1872, align 8
  %4288 = add i64 %4091, 142
  store i64 %4288, i64* %3, align 8
  %4289 = load i32, i32* %4236, align 4
  %4290 = sext i32 %4289 to i64
  store i64 %4290, i64* %RCX.i1817, align 8
  %4291 = shl nsw i64 %4290, 3
  %4292 = add i64 %4291, %4287
  %4293 = add i64 %4091, 147
  store i64 %4293, i64* %3, align 8
  %4294 = inttoptr i64 %4292 to double*
  %4295 = load double, double* %4294, align 8
  %4296 = fmul double %4283, %4295
  store double %4296, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4297 = add i64 %4091, 151
  store i64 %4297, i64* %3, align 8
  %4298 = load i64, i64* %4217, align 8
  store i64 %4298, i64* %RAX.i1872, align 8
  %4299 = add i64 %4091, 155
  store i64 %4299, i64* %3, align 8
  %4300 = load i32, i32* %4221, align 4
  %4301 = sext i32 %4300 to i64
  store i64 %4301, i64* %RCX.i1817, align 8
  %4302 = shl nsw i64 %4301, 3
  %4303 = add i64 %4302, %4298
  %4304 = add i64 %4091, 160
  store i64 %4304, i64* %3, align 8
  %4305 = inttoptr i64 %4303 to double*
  %4306 = load double, double* %4305, align 8
  %4307 = fdiv double %4296, %4306
  store double %4307, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4308 = add i64 %4214, 24
  %4309 = add i64 %4091, 164
  store i64 %4309, i64* %3, align 8
  %4310 = inttoptr i64 %4308 to i64*
  %4311 = load i64, i64* %4310, align 8
  store i64 %4311, i64* %RAX.i1872, align 8
  %4312 = add i64 %4091, 168
  store i64 %4312, i64* %3, align 8
  %4313 = load i32, i32* %4236, align 4
  %4314 = sext i32 %4313 to i64
  %4315 = mul nsw i64 %4314, 33800
  store i64 %4315, i64* %RCX.i1817, align 8
  %4316 = lshr i64 %4315, 63
  %4317 = add i64 %4315, %4311
  store i64 %4317, i64* %RAX.i1872, align 8
  %4318 = icmp ult i64 %4317, %4311
  %4319 = icmp ult i64 %4317, %4315
  %4320 = or i1 %4318, %4319
  %4321 = zext i1 %4320 to i8
  store i8 %4321, i8* %39, align 1
  %4322 = trunc i64 %4317 to i32
  %4323 = and i32 %4322, 255
  %4324 = tail call i32 @llvm.ctpop.i32(i32 %4323)
  %4325 = trunc i32 %4324 to i8
  %4326 = and i8 %4325, 1
  %4327 = xor i8 %4326, 1
  store i8 %4327, i8* %46, align 1
  %4328 = xor i64 %4315, %4311
  %4329 = xor i64 %4328, %4317
  %4330 = lshr i64 %4329, 4
  %4331 = trunc i64 %4330 to i8
  %4332 = and i8 %4331, 1
  store i8 %4332, i8* %51, align 1
  %4333 = icmp eq i64 %4317, 0
  %4334 = zext i1 %4333 to i8
  store i8 %4334, i8* %54, align 1
  %4335 = lshr i64 %4317, 63
  %4336 = trunc i64 %4335 to i8
  store i8 %4336, i8* %57, align 1
  %4337 = lshr i64 %4311, 63
  %4338 = xor i64 %4335, %4337
  %4339 = xor i64 %4335, %4316
  %4340 = add nuw nsw i64 %4338, %4339
  %4341 = icmp eq i64 %4340, 2
  %4342 = zext i1 %4341 to i8
  store i8 %4342, i8* %63, align 1
  %4343 = load i64, i64* %RBP.i, align 8
  %4344 = add i64 %4343, -52
  %4345 = add i64 %4091, 182
  store i64 %4345, i64* %3, align 8
  %4346 = inttoptr i64 %4344 to i32*
  %4347 = load i32, i32* %4346, align 4
  %4348 = sext i32 %4347 to i64
  %4349 = mul nsw i64 %4348, 520
  store i64 %4349, i64* %RCX.i1817, align 8
  %4350 = lshr i64 %4349, 63
  %4351 = add i64 %4349, %4317
  store i64 %4351, i64* %RAX.i1872, align 8
  %4352 = icmp ult i64 %4351, %4317
  %4353 = icmp ult i64 %4351, %4349
  %4354 = or i1 %4352, %4353
  %4355 = zext i1 %4354 to i8
  store i8 %4355, i8* %39, align 1
  %4356 = trunc i64 %4351 to i32
  %4357 = and i32 %4356, 255
  %4358 = tail call i32 @llvm.ctpop.i32(i32 %4357)
  %4359 = trunc i32 %4358 to i8
  %4360 = and i8 %4359, 1
  %4361 = xor i8 %4360, 1
  store i8 %4361, i8* %46, align 1
  %4362 = xor i64 %4349, %4317
  %4363 = xor i64 %4362, %4351
  %4364 = lshr i64 %4363, 4
  %4365 = trunc i64 %4364 to i8
  %4366 = and i8 %4365, 1
  store i8 %4366, i8* %51, align 1
  %4367 = icmp eq i64 %4351, 0
  %4368 = zext i1 %4367 to i8
  store i8 %4368, i8* %54, align 1
  %4369 = lshr i64 %4351, 63
  %4370 = trunc i64 %4369 to i8
  store i8 %4370, i8* %57, align 1
  %4371 = xor i64 %4369, %4335
  %4372 = xor i64 %4369, %4350
  %4373 = add nuw nsw i64 %4371, %4372
  %4374 = icmp eq i64 %4373, 2
  %4375 = zext i1 %4374 to i8
  store i8 %4375, i8* %63, align 1
  %4376 = add i64 %4343, -48
  %4377 = add i64 %4091, 196
  store i64 %4377, i64* %3, align 8
  %4378 = inttoptr i64 %4376 to i32*
  %4379 = load i32, i32* %4378, align 4
  %4380 = sext i32 %4379 to i64
  store i64 %4380, i64* %RCX.i1817, align 8
  %4381 = shl nsw i64 %4380, 3
  %4382 = add i64 %4381, %4351
  %4383 = add i64 %4091, 201
  store i64 %4383, i64* %3, align 8
  %4384 = load double, double* %233, align 1
  %4385 = inttoptr i64 %4382 to double*
  %4386 = load double, double* %4385, align 8
  %4387 = fmul double %4384, %4386
  store double %4387, double* %233, align 1
  %4388 = load double, double* %230, align 1
  %4389 = fsub double %4388, %4387
  store double %4389, double* %230, align 1
  %4390 = add i64 %4343, 48
  %4391 = add i64 %4091, 209
  store i64 %4391, i64* %3, align 8
  %4392 = inttoptr i64 %4390 to i64*
  %4393 = load i64, i64* %4392, align 8
  store i64 %4393, i64* %RAX.i1872, align 8
  %4394 = add i64 %4343, -100
  %4395 = add i64 %4091, 213
  store i64 %4395, i64* %3, align 8
  %4396 = inttoptr i64 %4394 to i32*
  %4397 = load i32, i32* %4396, align 4
  %4398 = sext i32 %4397 to i64
  %4399 = mul nsw i64 %4398, 33800
  store i64 %4399, i64* %RCX.i1817, align 8
  %4400 = lshr i64 %4399, 63
  %4401 = add i64 %4399, %4393
  store i64 %4401, i64* %RAX.i1872, align 8
  %4402 = icmp ult i64 %4401, %4393
  %4403 = icmp ult i64 %4401, %4399
  %4404 = or i1 %4402, %4403
  %4405 = zext i1 %4404 to i8
  store i8 %4405, i8* %39, align 1
  %4406 = trunc i64 %4401 to i32
  %4407 = and i32 %4406, 255
  %4408 = tail call i32 @llvm.ctpop.i32(i32 %4407)
  %4409 = trunc i32 %4408 to i8
  %4410 = and i8 %4409, 1
  %4411 = xor i8 %4410, 1
  store i8 %4411, i8* %46, align 1
  %4412 = xor i64 %4399, %4393
  %4413 = xor i64 %4412, %4401
  %4414 = lshr i64 %4413, 4
  %4415 = trunc i64 %4414 to i8
  %4416 = and i8 %4415, 1
  store i8 %4416, i8* %51, align 1
  %4417 = icmp eq i64 %4401, 0
  %4418 = zext i1 %4417 to i8
  store i8 %4418, i8* %54, align 1
  %4419 = lshr i64 %4401, 63
  %4420 = trunc i64 %4419 to i8
  store i8 %4420, i8* %57, align 1
  %4421 = lshr i64 %4393, 63
  %4422 = xor i64 %4419, %4421
  %4423 = xor i64 %4419, %4400
  %4424 = add nuw nsw i64 %4422, %4423
  %4425 = icmp eq i64 %4424, 2
  %4426 = zext i1 %4425 to i8
  store i8 %4426, i8* %63, align 1
  %4427 = load i64, i64* %RBP.i, align 8
  %4428 = add i64 %4427, -52
  %4429 = add i64 %4091, 227
  store i64 %4429, i64* %3, align 8
  %4430 = inttoptr i64 %4428 to i32*
  %4431 = load i32, i32* %4430, align 4
  %4432 = sext i32 %4431 to i64
  %4433 = mul nsw i64 %4432, 520
  store i64 %4433, i64* %RCX.i1817, align 8
  %4434 = lshr i64 %4433, 63
  %4435 = add i64 %4433, %4401
  store i64 %4435, i64* %RAX.i1872, align 8
  %4436 = icmp ult i64 %4435, %4401
  %4437 = icmp ult i64 %4435, %4433
  %4438 = or i1 %4436, %4437
  %4439 = zext i1 %4438 to i8
  store i8 %4439, i8* %39, align 1
  %4440 = trunc i64 %4435 to i32
  %4441 = and i32 %4440, 255
  %4442 = tail call i32 @llvm.ctpop.i32(i32 %4441)
  %4443 = trunc i32 %4442 to i8
  %4444 = and i8 %4443, 1
  %4445 = xor i8 %4444, 1
  store i8 %4445, i8* %46, align 1
  %4446 = xor i64 %4433, %4401
  %4447 = xor i64 %4446, %4435
  %4448 = lshr i64 %4447, 4
  %4449 = trunc i64 %4448 to i8
  %4450 = and i8 %4449, 1
  store i8 %4450, i8* %51, align 1
  %4451 = icmp eq i64 %4435, 0
  %4452 = zext i1 %4451 to i8
  store i8 %4452, i8* %54, align 1
  %4453 = lshr i64 %4435, 63
  %4454 = trunc i64 %4453 to i8
  store i8 %4454, i8* %57, align 1
  %4455 = xor i64 %4453, %4419
  %4456 = xor i64 %4453, %4434
  %4457 = add nuw nsw i64 %4455, %4456
  %4458 = icmp eq i64 %4457, 2
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %63, align 1
  %4460 = add i64 %4427, -48
  %4461 = add i64 %4091, 241
  store i64 %4461, i64* %3, align 8
  %4462 = inttoptr i64 %4460 to i32*
  %4463 = load i32, i32* %4462, align 4
  %4464 = sext i32 %4463 to i64
  store i64 %4464, i64* %RCX.i1817, align 8
  %4465 = shl nsw i64 %4464, 3
  %4466 = add i64 %4465, %4435
  %4467 = add i64 %4091, 246
  store i64 %4467, i64* %3, align 8
  %4468 = load i64, i64* %148, align 1
  %4469 = inttoptr i64 %4466 to i64*
  store i64 %4468, i64* %4469, align 8
  %4470 = load i64, i64* %RBP.i, align 8
  %4471 = add i64 %4470, 16
  %4472 = load i64, i64* %3, align 8
  %4473 = add i64 %4472, 4
  store i64 %4473, i64* %3, align 8
  %4474 = inttoptr i64 %4471 to i64*
  %4475 = load i64, i64* %4474, align 8
  store i64 %4475, i64* %RAX.i1872, align 8
  %4476 = add i64 %4470, -100
  %4477 = add i64 %4472, 8
  store i64 %4477, i64* %3, align 8
  %4478 = inttoptr i64 %4476 to i32*
  %4479 = load i32, i32* %4478, align 4
  %4480 = sext i32 %4479 to i64
  %4481 = mul nsw i64 %4480, 520
  store i64 %4481, i64* %RCX.i1817, align 8
  %4482 = lshr i64 %4481, 63
  %4483 = add i64 %4481, %4475
  store i64 %4483, i64* %RAX.i1872, align 8
  %4484 = icmp ult i64 %4483, %4475
  %4485 = icmp ult i64 %4483, %4481
  %4486 = or i1 %4484, %4485
  %4487 = zext i1 %4486 to i8
  store i8 %4487, i8* %39, align 1
  %4488 = trunc i64 %4483 to i32
  %4489 = and i32 %4488, 255
  %4490 = tail call i32 @llvm.ctpop.i32(i32 %4489)
  %4491 = trunc i32 %4490 to i8
  %4492 = and i8 %4491, 1
  %4493 = xor i8 %4492, 1
  store i8 %4493, i8* %46, align 1
  %4494 = xor i64 %4481, %4475
  %4495 = xor i64 %4494, %4483
  %4496 = lshr i64 %4495, 4
  %4497 = trunc i64 %4496 to i8
  %4498 = and i8 %4497, 1
  store i8 %4498, i8* %51, align 1
  %4499 = icmp eq i64 %4483, 0
  %4500 = zext i1 %4499 to i8
  store i8 %4500, i8* %54, align 1
  %4501 = lshr i64 %4483, 63
  %4502 = trunc i64 %4501 to i8
  store i8 %4502, i8* %57, align 1
  %4503 = lshr i64 %4475, 63
  %4504 = xor i64 %4501, %4503
  %4505 = xor i64 %4501, %4482
  %4506 = add nuw nsw i64 %4504, %4505
  %4507 = icmp eq i64 %4506, 2
  %4508 = zext i1 %4507 to i8
  store i8 %4508, i8* %63, align 1
  %4509 = add i64 %4470, -104
  %4510 = add i64 %4472, 22
  store i64 %4510, i64* %3, align 8
  %4511 = inttoptr i64 %4509 to i32*
  %4512 = load i32, i32* %4511, align 4
  %4513 = sext i32 %4512 to i64
  store i64 %4513, i64* %RCX.i1817, align 8
  %4514 = shl nsw i64 %4513, 3
  %4515 = add i64 %4514, %4483
  %4516 = add i64 %4472, 27
  store i64 %4516, i64* %3, align 8
  %4517 = inttoptr i64 %4515 to i64*
  %4518 = load i64, i64* %4517, align 8
  store i64 %4518, i64* %148, align 1
  store double 0.000000e+00, double* %232, align 1
  %4519 = add i64 %4470, 24
  %4520 = add i64 %4472, 31
  store i64 %4520, i64* %3, align 8
  %4521 = inttoptr i64 %4519 to i64*
  %4522 = load i64, i64* %4521, align 8
  store i64 %4522, i64* %RAX.i1872, align 8
  %4523 = add i64 %4472, 35
  store i64 %4523, i64* %3, align 8
  %4524 = load i32, i32* %4478, align 4
  %4525 = sext i32 %4524 to i64
  %4526 = mul nsw i64 %4525, 33800
  store i64 %4526, i64* %RCX.i1817, align 8
  %4527 = lshr i64 %4526, 63
  %4528 = add i64 %4526, %4522
  store i64 %4528, i64* %RAX.i1872, align 8
  %4529 = icmp ult i64 %4528, %4522
  %4530 = icmp ult i64 %4528, %4526
  %4531 = or i1 %4529, %4530
  %4532 = zext i1 %4531 to i8
  store i8 %4532, i8* %39, align 1
  %4533 = trunc i64 %4528 to i32
  %4534 = and i32 %4533, 255
  %4535 = tail call i32 @llvm.ctpop.i32(i32 %4534)
  %4536 = trunc i32 %4535 to i8
  %4537 = and i8 %4536, 1
  %4538 = xor i8 %4537, 1
  store i8 %4538, i8* %46, align 1
  %4539 = xor i64 %4526, %4522
  %4540 = xor i64 %4539, %4528
  %4541 = lshr i64 %4540, 4
  %4542 = trunc i64 %4541 to i8
  %4543 = and i8 %4542, 1
  store i8 %4543, i8* %51, align 1
  %4544 = icmp eq i64 %4528, 0
  %4545 = zext i1 %4544 to i8
  store i8 %4545, i8* %54, align 1
  %4546 = lshr i64 %4528, 63
  %4547 = trunc i64 %4546 to i8
  store i8 %4547, i8* %57, align 1
  %4548 = lshr i64 %4522, 63
  %4549 = xor i64 %4546, %4548
  %4550 = xor i64 %4546, %4527
  %4551 = add nuw nsw i64 %4549, %4550
  %4552 = icmp eq i64 %4551, 2
  %4553 = zext i1 %4552 to i8
  store i8 %4553, i8* %63, align 1
  %4554 = load i64, i64* %RBP.i, align 8
  %4555 = add i64 %4554, -52
  %4556 = add i64 %4472, 49
  store i64 %4556, i64* %3, align 8
  %4557 = inttoptr i64 %4555 to i32*
  %4558 = load i32, i32* %4557, align 4
  %4559 = sext i32 %4558 to i64
  %4560 = mul nsw i64 %4559, 520
  store i64 %4560, i64* %RCX.i1817, align 8
  %4561 = lshr i64 %4560, 63
  %4562 = add i64 %4560, %4528
  store i64 %4562, i64* %RAX.i1872, align 8
  %4563 = icmp ult i64 %4562, %4528
  %4564 = icmp ult i64 %4562, %4560
  %4565 = or i1 %4563, %4564
  %4566 = zext i1 %4565 to i8
  store i8 %4566, i8* %39, align 1
  %4567 = trunc i64 %4562 to i32
  %4568 = and i32 %4567, 255
  %4569 = tail call i32 @llvm.ctpop.i32(i32 %4568)
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  %4572 = xor i8 %4571, 1
  store i8 %4572, i8* %46, align 1
  %4573 = xor i64 %4560, %4528
  %4574 = xor i64 %4573, %4562
  %4575 = lshr i64 %4574, 4
  %4576 = trunc i64 %4575 to i8
  %4577 = and i8 %4576, 1
  store i8 %4577, i8* %51, align 1
  %4578 = icmp eq i64 %4562, 0
  %4579 = zext i1 %4578 to i8
  store i8 %4579, i8* %54, align 1
  %4580 = lshr i64 %4562, 63
  %4581 = trunc i64 %4580 to i8
  store i8 %4581, i8* %57, align 1
  %4582 = xor i64 %4580, %4546
  %4583 = xor i64 %4580, %4561
  %4584 = add nuw nsw i64 %4582, %4583
  %4585 = icmp eq i64 %4584, 2
  %4586 = zext i1 %4585 to i8
  store i8 %4586, i8* %63, align 1
  %4587 = add i64 %4554, -48
  %4588 = add i64 %4472, 63
  store i64 %4588, i64* %3, align 8
  %4589 = inttoptr i64 %4587 to i32*
  %4590 = load i32, i32* %4589, align 4
  %4591 = sext i32 %4590 to i64
  store i64 %4591, i64* %RCX.i1817, align 8
  %4592 = shl nsw i64 %4591, 3
  %4593 = add i64 %4592, %4562
  %4594 = add i64 %4472, 68
  store i64 %4594, i64* %3, align 8
  %4595 = load i64, i64* %148, align 1
  %4596 = inttoptr i64 %4593 to i64*
  store i64 %4595, i64* %4596, align 8
  %4597 = load i64, i64* %RBP.i, align 8
  %4598 = add i64 %4597, -104
  %4599 = load i64, i64* %3, align 8
  %4600 = add i64 %4599, 3
  store i64 %4600, i64* %3, align 8
  %4601 = inttoptr i64 %4598 to i32*
  %4602 = load i32, i32* %4601, align 4
  %4603 = add i32 %4602, 1
  %4604 = zext i32 %4603 to i64
  store i64 %4604, i64* %RAX.i1872, align 8
  %4605 = icmp eq i32 %4602, -1
  %4606 = icmp eq i32 %4603, 0
  %4607 = or i1 %4605, %4606
  %4608 = zext i1 %4607 to i8
  store i8 %4608, i8* %39, align 1
  %4609 = and i32 %4603, 255
  %4610 = tail call i32 @llvm.ctpop.i32(i32 %4609)
  %4611 = trunc i32 %4610 to i8
  %4612 = and i8 %4611, 1
  %4613 = xor i8 %4612, 1
  store i8 %4613, i8* %46, align 1
  %4614 = xor i32 %4602, %4603
  %4615 = lshr i32 %4614, 4
  %4616 = trunc i32 %4615 to i8
  %4617 = and i8 %4616, 1
  store i8 %4617, i8* %51, align 1
  %4618 = zext i1 %4606 to i8
  store i8 %4618, i8* %54, align 1
  %4619 = lshr i32 %4603, 31
  %4620 = trunc i32 %4619 to i8
  store i8 %4620, i8* %57, align 1
  %4621 = lshr i32 %4602, 31
  %4622 = xor i32 %4619, %4621
  %4623 = add nuw nsw i32 %4622, %4619
  %4624 = icmp eq i32 %4623, 2
  %4625 = zext i1 %4624 to i8
  store i8 %4625, i8* %63, align 1
  %4626 = add i64 %4599, 9
  store i64 %4626, i64* %3, align 8
  store i32 %4603, i32* %4601, align 4
  %4627 = load i64, i64* %3, align 8
  %4628 = add i64 %4627, -2643
  store i64 %4628, i64* %3, align 8
  br label %block_.L_40148d

block_.L_401ee5:                                  ; preds = %block_.L_40148d
  %4629 = add i64 %278, -100
  %4630 = add i64 %314, 8
  store i64 %4630, i64* %3, align 8
  %4631 = inttoptr i64 %4629 to i32*
  %4632 = load i32, i32* %4631, align 4
  %4633 = add i32 %4632, 1
  %4634 = zext i32 %4633 to i64
  store i64 %4634, i64* %RAX.i1872, align 8
  %4635 = icmp eq i32 %4632, -1
  %4636 = icmp eq i32 %4633, 0
  %4637 = or i1 %4635, %4636
  %4638 = zext i1 %4637 to i8
  store i8 %4638, i8* %39, align 1
  %4639 = and i32 %4633, 255
  %4640 = tail call i32 @llvm.ctpop.i32(i32 %4639)
  %4641 = trunc i32 %4640 to i8
  %4642 = and i8 %4641, 1
  %4643 = xor i8 %4642, 1
  store i8 %4643, i8* %46, align 1
  %4644 = xor i32 %4632, %4633
  %4645 = lshr i32 %4644, 4
  %4646 = trunc i32 %4645 to i8
  %4647 = and i8 %4646, 1
  store i8 %4647, i8* %51, align 1
  %4648 = zext i1 %4636 to i8
  store i8 %4648, i8* %54, align 1
  %4649 = lshr i32 %4633, 31
  %4650 = trunc i32 %4649 to i8
  store i8 %4650, i8* %57, align 1
  %4651 = lshr i32 %4632, 31
  %4652 = xor i32 %4649, %4651
  %4653 = add nuw nsw i32 %4652, %4649
  %4654 = icmp eq i32 %4653, 2
  %4655 = zext i1 %4654 to i8
  store i8 %4655, i8* %63, align 1
  %4656 = add i64 %314, 14
  store i64 %4656, i64* %3, align 8
  store i32 %4633, i32* %4631, align 4
  %4657 = load i64, i64* %3, align 8
  %4658 = add i64 %4657, -2681
  store i64 %4658, i64* %3, align 8
  br label %block_.L_40147a

block_.L_401ef8:                                  ; preds = %block_.L_40147a
  %4659 = load i64, i64* %6, align 8
  %4660 = add i64 %4659, 32
  store i64 %4660, i64* %6, align 8
  %4661 = icmp ugt i64 %4659, -33
  %4662 = zext i1 %4661 to i8
  store i8 %4662, i8* %39, align 1
  %4663 = trunc i64 %4660 to i32
  %4664 = and i32 %4663, 255
  %4665 = tail call i32 @llvm.ctpop.i32(i32 %4664)
  %4666 = trunc i32 %4665 to i8
  %4667 = and i8 %4666, 1
  %4668 = xor i8 %4667, 1
  store i8 %4668, i8* %46, align 1
  %4669 = xor i64 %4659, %4660
  %4670 = lshr i64 %4669, 4
  %4671 = trunc i64 %4670 to i8
  %4672 = and i8 %4671, 1
  store i8 %4672, i8* %51, align 1
  %4673 = icmp eq i64 %4660, 0
  %4674 = zext i1 %4673 to i8
  store i8 %4674, i8* %54, align 1
  %4675 = lshr i64 %4660, 63
  %4676 = trunc i64 %4675 to i8
  store i8 %4676, i8* %57, align 1
  %4677 = lshr i64 %4659, 63
  %4678 = xor i64 %4675, %4677
  %4679 = add nuw nsw i64 %4678, %4675
  %4680 = icmp eq i64 %4679, 2
  %4681 = zext i1 %4680 to i8
  store i8 %4681, i8* %63, align 1
  %4682 = add i64 %273, 5
  store i64 %4682, i64* %3, align 8
  %4683 = add i64 %4659, 40
  %4684 = inttoptr i64 %4660 to i64*
  %4685 = load i64, i64* %4684, align 8
  store i64 %4685, i64* %RBX.i1877, align 8
  store i64 %4683, i64* %6, align 8
  %4686 = add i64 %273, 7
  store i64 %4686, i64* %3, align 8
  %4687 = add i64 %4659, 48
  %4688 = inttoptr i64 %4683 to i64*
  %4689 = load i64, i64* %4688, align 8
  store i64 %4689, i64* %R12.i1879, align 8
  store i64 %4687, i64* %6, align 8
  %4690 = add i64 %273, 9
  store i64 %4690, i64* %3, align 8
  %4691 = add i64 %4659, 56
  %4692 = inttoptr i64 %4687 to i64*
  %4693 = load i64, i64* %4692, align 8
  store i64 %4693, i64* %R13.i1881, align 8
  store i64 %4691, i64* %6, align 8
  %4694 = add i64 %273, 11
  store i64 %4694, i64* %3, align 8
  %4695 = add i64 %4659, 64
  %4696 = inttoptr i64 %4691 to i64*
  %4697 = load i64, i64* %4696, align 8
  store i64 %4697, i64* %R14.i1883, align 8
  store i64 %4695, i64* %6, align 8
  %4698 = add i64 %273, 13
  store i64 %4698, i64* %3, align 8
  %4699 = add i64 %4659, 72
  %4700 = inttoptr i64 %4695 to i64*
  %4701 = load i64, i64* %4700, align 8
  store i64 %4701, i64* %R15.i1885, align 8
  store i64 %4699, i64* %6, align 8
  %4702 = add i64 %273, 14
  store i64 %4702, i64* %3, align 8
  %4703 = add i64 %4659, 80
  %4704 = inttoptr i64 %4699 to i64*
  %4705 = load i64, i64* %4704, align 8
  store i64 %4705, i64* %RBP.i, align 8
  store i64 %4703, i64* %6, align 8
  %4706 = add i64 %273, 15
  store i64 %4706, i64* %3, align 8
  %4707 = inttoptr i64 %4703 to i64*
  %4708 = load i64, i64* %4707, align 8
  store i64 %4708, i64* %3, align 8
  %4709 = add i64 %4659, 88
  store i64 %4709, i64* %6, align 8
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

define %struct.Memory* @routine_jge_.L_401ef8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401ee5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_40174c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4014a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jge_.L_401c6b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_4019d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_40148d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401eea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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

define %struct.Memory* @routine_jmpq_.L_40147a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
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
