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
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %RSP.i1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %R15.i1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i1885, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %PC.i, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i1883, align 8
  %16 = load i64, i64* %PC.i, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC.i, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i1881, align 8
  %21 = load i64, i64* %PC.i, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %PC.i, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i1879, align 8
  %26 = load i64, i64* %PC.i, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %PC.i, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %RBX.i1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %30 = load i64, i64* %RBX.i1877, align 8
  %31 = load i64, i64* %PC.i, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %PC.i, align 8
  %33 = add i64 %7, -48
  %34 = inttoptr i64 %33 to i64*
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %PC.i, align 8
  %36 = add i64 %7, -80
  store i64 %36, i64* %RSP.i1887, align 8
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
  store i64 %66, i64* %PC.i, align 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %RAX.i1872, align 8
  %R10.i1870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %69 = add i64 %64, 88
  %70 = add i64 %35, 12
  store i64 %70, i64* %PC.i, align 8
  %71 = inttoptr i64 %69 to i64*
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %R10.i1870, align 8
  %R11.i1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %73 = add i64 %64, 80
  %74 = add i64 %35, 16
  store i64 %74, i64* %PC.i, align 8
  %75 = inttoptr i64 %73 to i64*
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %R11.i1867, align 8
  %77 = add i64 %64, 72
  %78 = add i64 %35, 20
  store i64 %78, i64* %PC.i, align 8
  %79 = inttoptr i64 %77 to i64*
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %RBX.i1877, align 8
  %81 = add i64 %64, 64
  %82 = add i64 %35, 24
  store i64 %82, i64* %PC.i, align 8
  %83 = inttoptr i64 %81 to i64*
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %R14.i1883, align 8
  %85 = add i64 %64, 56
  %86 = add i64 %35, 28
  store i64 %86, i64* %PC.i, align 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %R15.i1885, align 8
  %89 = add i64 %64, 48
  %90 = add i64 %35, 32
  store i64 %90, i64* %PC.i, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %R12.i1879, align 8
  %93 = add i64 %64, 40
  %94 = add i64 %35, 36
  store i64 %94, i64* %PC.i, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %R13.i1881, align 8
  %97 = add i64 %64, -120
  %98 = add i64 %35, 40
  store i64 %98, i64* %PC.i, align 8
  %99 = inttoptr i64 %97 to i64*
  store i64 %68, i64* %99, align 8
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, 32
  %102 = load i64, i64* %PC.i, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %PC.i, align 8
  %104 = inttoptr i64 %101 to i64*
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %RAX.i1872, align 8
  %106 = add i64 %100, -128
  %107 = add i64 %102, 8
  store i64 %107, i64* %PC.i, align 8
  %108 = inttoptr i64 %106 to i64*
  store i64 %105, i64* %108, align 8
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, 24
  %111 = load i64, i64* %PC.i, align 8
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC.i, align 8
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %RAX.i1872, align 8
  %115 = add i64 %109, -136
  %116 = add i64 %111, 11
  store i64 %116, i64* %PC.i, align 8
  %117 = inttoptr i64 %115 to i64*
  store i64 %114, i64* %117, align 8
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, 16
  %120 = load i64, i64* %PC.i, align 8
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC.i, align 8
  %122 = inttoptr i64 %119 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %RAX.i1872, align 8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %124 to i32*
  %125 = add i64 %118, -44
  %126 = load i32, i32* %EDI.i, align 4
  %127 = add i64 %120, 7
  store i64 %127, i64* %PC.i, align 8
  %128 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %128, align 4
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %129 to i32*
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -48
  %132 = load i32, i32* %ESI.i, align 4
  %133 = load i64, i64* %PC.i, align 8
  %134 = add i64 %133, 3
  store i64 %134, i64* %PC.i, align 8
  %135 = inttoptr i64 %131 to i32*
  store i32 %132, i32* %135, align 4
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1826 = bitcast %union.anon* %136 to i32*
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -52
  %139 = load i32, i32* %EDX.i1826, align 4
  %140 = load i64, i64* %PC.i, align 8
  %141 = add i64 %140, 3
  store i64 %141, i64* %PC.i, align 8
  %142 = inttoptr i64 %138 to i32*
  store i32 %139, i32* %142, align 4
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -64
  %146 = load i64, i64* %PC.i, align 8
  %147 = add i64 %146, 5
  store i64 %147, i64* %PC.i, align 8
  %148 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %149 = load i64, i64* %148, align 1
  %150 = inttoptr i64 %145 to i64*
  store i64 %149, i64* %150, align 8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -72
  %154 = load i64, i64* %PC.i, align 8
  %155 = add i64 %154, 5
  store i64 %155, i64* %PC.i, align 8
  %156 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %151, i64 0, i32 0, i32 0, i32 0, i64 0
  %157 = load i64, i64* %156, align 1
  %158 = inttoptr i64 %153 to i64*
  store i64 %157, i64* %158, align 8
  %RCX.i1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %159 = load i64, i64* %RBP.i, align 8
  %160 = add i64 %159, -80
  %161 = load i64, i64* %RCX.i1817, align 8
  %162 = load i64, i64* %PC.i, align 8
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC.i, align 8
  %164 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %164, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -88
  %167 = load i64, i64* %R8.i, align 8
  %168 = load i64, i64* %PC.i, align 8
  %169 = add i64 %168, 4
  store i64 %169, i64* %PC.i, align 8
  %170 = inttoptr i64 %166 to i64*
  store i64 %167, i64* %170, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %171 = load i64, i64* %RBP.i, align 8
  %172 = add i64 %171, -96
  %173 = load i64, i64* %R9.i, align 8
  %174 = load i64, i64* %PC.i, align 8
  %175 = add i64 %174, 4
  store i64 %175, i64* %PC.i, align 8
  %176 = inttoptr i64 %172 to i64*
  store i64 %173, i64* %176, align 8
  %177 = load i64, i64* %RBP.i, align 8
  %178 = add i64 %177, -100
  %179 = load i64, i64* %PC.i, align 8
  %180 = add i64 %179, 7
  store i64 %180, i64* %PC.i, align 8
  %181 = inttoptr i64 %178 to i32*
  store i32 0, i32* %181, align 4
  %182 = load i64, i64* %RBP.i, align 8
  %183 = add i64 %182, -144
  %184 = load i64, i64* %R13.i1881, align 8
  %185 = load i64, i64* %PC.i, align 8
  %186 = add i64 %185, 7
  store i64 %186, i64* %PC.i, align 8
  %187 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %187, align 8
  %188 = load i64, i64* %RBP.i, align 8
  %189 = add i64 %188, -152
  %190 = load i64, i64* %RAX.i1872, align 8
  %191 = load i64, i64* %PC.i, align 8
  %192 = add i64 %191, 7
  store i64 %192, i64* %PC.i, align 8
  %193 = inttoptr i64 %189 to i64*
  store i64 %190, i64* %193, align 8
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -160
  %196 = load i64, i64* %R10.i1870, align 8
  %197 = load i64, i64* %PC.i, align 8
  %198 = add i64 %197, 7
  store i64 %198, i64* %PC.i, align 8
  %199 = inttoptr i64 %195 to i64*
  store i64 %196, i64* %199, align 8
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -168
  %202 = load i64, i64* %R11.i1867, align 8
  %203 = load i64, i64* %PC.i, align 8
  %204 = add i64 %203, 7
  store i64 %204, i64* %PC.i, align 8
  %205 = inttoptr i64 %201 to i64*
  store i64 %202, i64* %205, align 8
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -176
  %208 = load i64, i64* %RBX.i1877, align 8
  %209 = load i64, i64* %PC.i, align 8
  %210 = add i64 %209, 7
  store i64 %210, i64* %PC.i, align 8
  %211 = inttoptr i64 %207 to i64*
  store i64 %208, i64* %211, align 8
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -184
  %214 = load i64, i64* %R14.i1883, align 8
  %215 = load i64, i64* %PC.i, align 8
  %216 = add i64 %215, 7
  store i64 %216, i64* %PC.i, align 8
  %217 = inttoptr i64 %213 to i64*
  store i64 %214, i64* %217, align 8
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -192
  %220 = load i64, i64* %R15.i1885, align 8
  %221 = load i64, i64* %PC.i, align 8
  %222 = add i64 %221, 7
  store i64 %222, i64* %PC.i, align 8
  %223 = inttoptr i64 %219 to i64*
  store i64 %220, i64* %223, align 8
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -200
  %226 = load i64, i64* %R12.i1879, align 8
  %227 = load i64, i64* %PC.i, align 8
  %228 = add i64 %227, 7
  store i64 %228, i64* %PC.i, align 8
  %229 = inttoptr i64 %225 to i64*
  store i64 %226, i64* %229, align 8
  %230 = bitcast [32 x %union.VectorReg]* %143 to double*
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %232 = bitcast i64* %231 to double*
  %RDX.i1724 = getelementptr inbounds %union.anon, %union.anon* %136, i64 0, i32 0
  %233 = bitcast %union.VectorReg* %151 to double*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %235 = bitcast i64* %234 to double*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_40147a

block_.L_40147a:                                  ; preds = %block_.L_401ee5, %entry
  %236 = phi i64 [ %4798, %block_.L_401ee5 ], [ %.pre, %entry ]
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -100
  %239 = add i64 %236, 3
  store i64 %239, i64* %PC.i, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RAX.i1872, align 8
  %243 = add i64 %237, -44
  %244 = add i64 %236, 6
  store i64 %244, i64* %PC.i, align 8
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
  store i64 %275, i64* %PC.i, align 8
  %276 = inttoptr i64 %274 to i32*
  store i32 0, i32* %276, align 4
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_40148d

block_.L_40148d:                                  ; preds = %block_.L_401c6b, %block_401486
  %277 = phi i64 [ %4767, %block_.L_401c6b ], [ %.pre1, %block_401486 ]
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -104
  %280 = add i64 %277, 3
  store i64 %280, i64* %PC.i, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RAX.i1872, align 8
  %284 = add i64 %278, -52
  %285 = add i64 %277, 6
  store i64 %285, i64* %PC.i, align 8
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
  store i64 %316, i64* %PC.i, align 8
  %317 = inttoptr i64 %315 to i32*
  store i32 0, i32* %317, align 4
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_4014a0

block_.L_4014a0:                                  ; preds = %block_4014ac, %block_401499
  %318 = phi i64 [ %1540, %block_4014ac ], [ %.pre2, %block_401499 ]
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -108
  %321 = add i64 %318, 3
  store i64 %321, i64* %PC.i, align 8
  %322 = inttoptr i64 %320 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX.i1872, align 8
  %325 = add i64 %319, -48
  %326 = add i64 %318, 6
  store i64 %326, i64* %PC.i, align 8
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
  store i64 %357, i64* %PC.i, align 8
  %358 = inttoptr i64 %356 to i64*
  %359 = load i64, i64* %358, align 8
  store i64 %359, i64* %RAX.i1872, align 8
  %360 = add i64 %319, -100
  %361 = add i64 %355, 8
  store i64 %361, i64* %PC.i, align 8
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
  store i64 %394, i64* %PC.i, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = mul nsw i64 %397, 520
  store i64 %398, i64* %RCX.i1817, align 8
  %399 = lshr i64 %398, 63
  %400 = add i64 %355, 32
  store i64 %400, i64* %PC.i, align 8
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
  store i64 %428, i64* %PC.i, align 8
  %429 = inttoptr i64 %427 to i32*
  %430 = load i32, i32* %429, align 4
  %431 = sext i32 %430 to i64
  store i64 %431, i64* %RCX.i1817, align 8
  %432 = shl nsw i64 %431, 3
  %433 = add i64 %432, %401
  %434 = add i64 %355, 41
  store i64 %434, i64* %PC.i, align 8
  %435 = inttoptr i64 %433 to i64*
  %436 = load i64, i64* %435, align 8
  %437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %436, i64* %437, align 1
  store double 0.000000e+00, double* %232, align 1
  %438 = add i64 %426, 32
  %439 = add i64 %355, 45
  store i64 %439, i64* %PC.i, align 8
  %440 = inttoptr i64 %438 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RAX.i1872, align 8
  %442 = add i64 %426, -100
  %443 = add i64 %355, 49
  store i64 %443, i64* %PC.i, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = sext i32 %445 to i64
  %447 = mul nsw i64 %446, 33800
  store i64 %447, i64* %RCX.i1817, align 8
  %448 = lshr i64 %447, 63
  %449 = add i64 %447, %441
  store i64 %449, i64* %RAX.i1872, align 8
  %450 = icmp ult i64 %449, %441
  %451 = icmp ult i64 %449, %447
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %39, align 1
  %454 = trunc i64 %449 to i32
  %455 = and i32 %454, 255
  %456 = tail call i32 @llvm.ctpop.i32(i32 %455)
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  %459 = xor i8 %458, 1
  store i8 %459, i8* %46, align 1
  %460 = xor i64 %447, %441
  %461 = xor i64 %460, %449
  %462 = lshr i64 %461, 4
  %463 = trunc i64 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %51, align 1
  %465 = icmp eq i64 %449, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %54, align 1
  %467 = lshr i64 %449, 63
  %468 = trunc i64 %467 to i8
  store i8 %468, i8* %57, align 1
  %469 = lshr i64 %441, 63
  %470 = xor i64 %467, %469
  %471 = xor i64 %467, %448
  %472 = add nuw nsw i64 %470, %471
  %473 = icmp eq i64 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %63, align 1
  %475 = add i64 %426, -104
  %476 = add i64 %355, 62
  store i64 %476, i64* %PC.i, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = add i32 %478, 1
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RDX.i1724, align 8
  %481 = sext i32 %479 to i64
  %482 = mul nsw i64 %481, 520
  store i64 %482, i64* %RCX.i1817, align 8
  %483 = lshr i64 %482, 63
  %484 = load i64, i64* %RAX.i1872, align 8
  %485 = add i64 %482, %484
  store i64 %485, i64* %RAX.i1872, align 8
  %486 = icmp ult i64 %485, %484
  %487 = icmp ult i64 %485, %482
  %488 = or i1 %486, %487
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %39, align 1
  %490 = trunc i64 %485 to i32
  %491 = and i32 %490, 255
  %492 = tail call i32 @llvm.ctpop.i32(i32 %491)
  %493 = trunc i32 %492 to i8
  %494 = and i8 %493, 1
  %495 = xor i8 %494, 1
  store i8 %495, i8* %46, align 1
  %496 = xor i64 %482, %484
  %497 = xor i64 %496, %485
  %498 = lshr i64 %497, 4
  %499 = trunc i64 %498 to i8
  %500 = and i8 %499, 1
  store i8 %500, i8* %51, align 1
  %501 = icmp eq i64 %485, 0
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %54, align 1
  %503 = lshr i64 %485, 63
  %504 = trunc i64 %503 to i8
  store i8 %504, i8* %57, align 1
  %505 = lshr i64 %484, 63
  %506 = xor i64 %503, %505
  %507 = xor i64 %503, %483
  %508 = add nuw nsw i64 %506, %507
  %509 = icmp eq i64 %508, 2
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %63, align 1
  %511 = load i64, i64* %RBP.i, align 8
  %512 = add i64 %511, -108
  %513 = add i64 %355, 82
  store i64 %513, i64* %PC.i, align 8
  %514 = inttoptr i64 %512 to i32*
  %515 = load i32, i32* %514, align 4
  %516 = sext i32 %515 to i64
  store i64 %516, i64* %RCX.i1817, align 8
  %517 = shl nsw i64 %516, 3
  %518 = add i64 %517, %485
  %519 = add i64 %355, 87
  store i64 %519, i64* %PC.i, align 8
  %520 = load double, double* %230, align 1
  %521 = inttoptr i64 %518 to double*
  %522 = load double, double* %521, align 8
  %523 = fsub double %520, %522
  store double %523, double* %230, align 1
  %524 = add i64 %511, 40
  %525 = add i64 %355, 91
  store i64 %525, i64* %PC.i, align 8
  %526 = inttoptr i64 %524 to i64*
  %527 = load i64, i64* %526, align 8
  store i64 %527, i64* %RAX.i1872, align 8
  %528 = add i64 %511, -100
  %529 = add i64 %355, 95
  store i64 %529, i64* %PC.i, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = sext i32 %531 to i64
  %533 = mul nsw i64 %532, 33800
  store i64 %533, i64* %RCX.i1817, align 8
  %534 = lshr i64 %533, 63
  %535 = add i64 %533, %527
  store i64 %535, i64* %RAX.i1872, align 8
  %536 = icmp ult i64 %535, %527
  %537 = icmp ult i64 %535, %533
  %538 = or i1 %536, %537
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %39, align 1
  %540 = trunc i64 %535 to i32
  %541 = and i32 %540, 255
  %542 = tail call i32 @llvm.ctpop.i32(i32 %541)
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = xor i8 %544, 1
  store i8 %545, i8* %46, align 1
  %546 = xor i64 %533, %527
  %547 = xor i64 %546, %535
  %548 = lshr i64 %547, 4
  %549 = trunc i64 %548 to i8
  %550 = and i8 %549, 1
  store i8 %550, i8* %51, align 1
  %551 = icmp eq i64 %535, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %54, align 1
  %553 = lshr i64 %535, 63
  %554 = trunc i64 %553 to i8
  store i8 %554, i8* %57, align 1
  %555 = lshr i64 %527, 63
  %556 = xor i64 %553, %555
  %557 = xor i64 %553, %534
  %558 = add nuw nsw i64 %556, %557
  %559 = icmp eq i64 %558, 2
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %63, align 1
  %561 = add i64 %511, -104
  %562 = add i64 %355, 109
  store i64 %562, i64* %PC.i, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = sext i32 %564 to i64
  %566 = mul nsw i64 %565, 520
  store i64 %566, i64* %RCX.i1817, align 8
  %567 = lshr i64 %566, 63
  %568 = add i64 %566, %535
  store i64 %568, i64* %RAX.i1872, align 8
  %569 = icmp ult i64 %568, %535
  %570 = icmp ult i64 %568, %566
  %571 = or i1 %569, %570
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %39, align 1
  %573 = trunc i64 %568 to i32
  %574 = and i32 %573, 255
  %575 = tail call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  store i8 %578, i8* %46, align 1
  %579 = xor i64 %566, %535
  %580 = xor i64 %579, %568
  %581 = lshr i64 %580, 4
  %582 = trunc i64 %581 to i8
  %583 = and i8 %582, 1
  store i8 %583, i8* %51, align 1
  %584 = icmp eq i64 %568, 0
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %54, align 1
  %586 = lshr i64 %568, 63
  %587 = trunc i64 %586 to i8
  store i8 %587, i8* %57, align 1
  %588 = xor i64 %586, %553
  %589 = xor i64 %586, %567
  %590 = add nuw nsw i64 %588, %589
  %591 = icmp eq i64 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %63, align 1
  %593 = load i64, i64* %RBP.i, align 8
  %594 = add i64 %593, -108
  %595 = add i64 %355, 122
  store i64 %595, i64* %PC.i, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = add i32 %597, 1
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RDX.i1724, align 8
  %600 = icmp eq i32 %597, -1
  %601 = icmp eq i32 %598, 0
  %602 = or i1 %600, %601
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %39, align 1
  %604 = and i32 %598, 255
  %605 = tail call i32 @llvm.ctpop.i32(i32 %604)
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  store i8 %608, i8* %46, align 1
  %609 = xor i32 %597, %598
  %610 = lshr i32 %609, 4
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  store i8 %612, i8* %51, align 1
  %613 = icmp eq i32 %598, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %54, align 1
  %615 = lshr i32 %598, 31
  %616 = trunc i32 %615 to i8
  store i8 %616, i8* %57, align 1
  %617 = lshr i32 %597, 31
  %618 = xor i32 %615, %617
  %619 = add nuw nsw i32 %618, %615
  %620 = icmp eq i32 %619, 2
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %63, align 1
  %622 = sext i32 %598 to i64
  store i64 %622, i64* %RCX.i1817, align 8
  %623 = shl nsw i64 %622, 3
  %624 = add i64 %623, %568
  %625 = add i64 %355, 133
  store i64 %625, i64* %PC.i, align 8
  %626 = load double, double* %230, align 1
  %627 = inttoptr i64 %624 to double*
  %628 = load double, double* %627, align 8
  %629 = fadd double %626, %628
  store double %629, double* %230, align 1
  %630 = add i64 %593, 40
  %631 = add i64 %355, 137
  store i64 %631, i64* %PC.i, align 8
  %632 = inttoptr i64 %630 to i64*
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %RAX.i1872, align 8
  %634 = add i64 %593, -100
  %635 = add i64 %355, 141
  store i64 %635, i64* %PC.i, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = sext i32 %637 to i64
  %639 = mul nsw i64 %638, 33800
  store i64 %639, i64* %RCX.i1817, align 8
  %640 = lshr i64 %639, 63
  %641 = add i64 %639, %633
  store i64 %641, i64* %RAX.i1872, align 8
  %642 = icmp ult i64 %641, %633
  %643 = icmp ult i64 %641, %639
  %644 = or i1 %642, %643
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %39, align 1
  %646 = trunc i64 %641 to i32
  %647 = and i32 %646, 255
  %648 = tail call i32 @llvm.ctpop.i32(i32 %647)
  %649 = trunc i32 %648 to i8
  %650 = and i8 %649, 1
  %651 = xor i8 %650, 1
  store i8 %651, i8* %46, align 1
  %652 = xor i64 %639, %633
  %653 = xor i64 %652, %641
  %654 = lshr i64 %653, 4
  %655 = trunc i64 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %51, align 1
  %657 = icmp eq i64 %641, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %54, align 1
  %659 = lshr i64 %641, 63
  %660 = trunc i64 %659 to i8
  store i8 %660, i8* %57, align 1
  %661 = lshr i64 %633, 63
  %662 = xor i64 %659, %661
  %663 = xor i64 %659, %640
  %664 = add nuw nsw i64 %662, %663
  %665 = icmp eq i64 %664, 2
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %63, align 1
  %667 = load i64, i64* %RBP.i, align 8
  %668 = add i64 %667, -104
  %669 = add i64 %355, 155
  store i64 %669, i64* %PC.i, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = sext i32 %671 to i64
  %673 = mul nsw i64 %672, 520
  store i64 %673, i64* %RCX.i1817, align 8
  %674 = lshr i64 %673, 63
  %675 = add i64 %673, %641
  store i64 %675, i64* %RAX.i1872, align 8
  %676 = icmp ult i64 %675, %641
  %677 = icmp ult i64 %675, %673
  %678 = or i1 %676, %677
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %39, align 1
  %680 = trunc i64 %675 to i32
  %681 = and i32 %680, 255
  %682 = tail call i32 @llvm.ctpop.i32(i32 %681)
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  %685 = xor i8 %684, 1
  store i8 %685, i8* %46, align 1
  %686 = xor i64 %673, %641
  %687 = xor i64 %686, %675
  %688 = lshr i64 %687, 4
  %689 = trunc i64 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %51, align 1
  %691 = icmp eq i64 %675, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %54, align 1
  %693 = lshr i64 %675, 63
  %694 = trunc i64 %693 to i8
  store i8 %694, i8* %57, align 1
  %695 = xor i64 %693, %659
  %696 = xor i64 %693, %674
  %697 = add nuw nsw i64 %695, %696
  %698 = icmp eq i64 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %63, align 1
  %700 = add i64 %667, -108
  %701 = add i64 %355, 169
  store i64 %701, i64* %PC.i, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  store i64 %704, i64* %RCX.i1817, align 8
  %705 = shl nsw i64 %704, 3
  %706 = add i64 %705, %675
  %707 = add i64 %355, 174
  store i64 %707, i64* %PC.i, align 8
  %708 = load double, double* %230, align 1
  %709 = inttoptr i64 %706 to double*
  %710 = load double, double* %709, align 8
  %711 = fsub double %708, %710
  store double %711, double* %230, align 1
  %712 = add i64 %667, -96
  %713 = add i64 %355, 178
  store i64 %713, i64* %PC.i, align 8
  %714 = inttoptr i64 %712 to i64*
  %715 = load i64, i64* %714, align 8
  store i64 %715, i64* %RAX.i1872, align 8
  %716 = add i64 %667, -100
  %717 = add i64 %355, 182
  store i64 %717, i64* %PC.i, align 8
  %718 = inttoptr i64 %716 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = sext i32 %719 to i64
  %721 = mul nsw i64 %720, 520
  store i64 %721, i64* %RCX.i1817, align 8
  %722 = lshr i64 %721, 63
  %723 = add i64 %721, %715
  store i64 %723, i64* %RAX.i1872, align 8
  %724 = icmp ult i64 %723, %715
  %725 = icmp ult i64 %723, %721
  %726 = or i1 %724, %725
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %39, align 1
  %728 = trunc i64 %723 to i32
  %729 = and i32 %728, 255
  %730 = tail call i32 @llvm.ctpop.i32(i32 %729)
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  store i8 %733, i8* %46, align 1
  %734 = xor i64 %721, %715
  %735 = xor i64 %734, %723
  %736 = lshr i64 %735, 4
  %737 = trunc i64 %736 to i8
  %738 = and i8 %737, 1
  store i8 %738, i8* %51, align 1
  %739 = icmp eq i64 %723, 0
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %54, align 1
  %741 = lshr i64 %723, 63
  %742 = trunc i64 %741 to i8
  store i8 %742, i8* %57, align 1
  %743 = lshr i64 %715, 63
  %744 = xor i64 %741, %743
  %745 = xor i64 %741, %722
  %746 = add nuw nsw i64 %744, %745
  %747 = icmp eq i64 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %63, align 1
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -104
  %751 = add i64 %355, 196
  store i64 %751, i64* %PC.i, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = sext i32 %753 to i64
  store i64 %754, i64* %RCX.i1817, align 8
  %755 = shl nsw i64 %754, 3
  %756 = add i64 %755, %723
  %757 = add i64 %355, 201
  store i64 %757, i64* %PC.i, align 8
  %758 = inttoptr i64 %756 to double*
  store double %711, double* %758, align 8
  %759 = load i64, i64* %RBP.i, align 8
  %760 = add i64 %759, 88
  %761 = load i64, i64* %PC.i, align 8
  %762 = add i64 %761, 4
  store i64 %762, i64* %PC.i, align 8
  %763 = inttoptr i64 %760 to i64*
  %764 = load i64, i64* %763, align 8
  store i64 %764, i64* %RAX.i1872, align 8
  %765 = add i64 %759, -104
  %766 = add i64 %761, 8
  store i64 %766, i64* %PC.i, align 8
  %767 = inttoptr i64 %765 to i32*
  %768 = load i32, i32* %767, align 4
  %769 = sext i32 %768 to i64
  store i64 %769, i64* %RCX.i1817, align 8
  %770 = shl nsw i64 %769, 3
  %771 = add i64 %770, %764
  %772 = add i64 %761, 13
  store i64 %772, i64* %PC.i, align 8
  %773 = inttoptr i64 %771 to double*
  %774 = load double, double* %773, align 8
  store double %774, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %775 = add i64 %759, 96
  %776 = add i64 %761, 17
  store i64 %776, i64* %PC.i, align 8
  %777 = inttoptr i64 %775 to i64*
  %778 = load i64, i64* %777, align 8
  store i64 %778, i64* %RAX.i1872, align 8
  %779 = add i64 %761, 21
  store i64 %779, i64* %PC.i, align 8
  %780 = load i32, i32* %767, align 4
  %781 = sext i32 %780 to i64
  store i64 %781, i64* %RCX.i1817, align 8
  %782 = shl nsw i64 %781, 3
  %783 = add i64 %782, %778
  %784 = add i64 %761, 26
  store i64 %784, i64* %PC.i, align 8
  %785 = inttoptr i64 %783 to double*
  %786 = load double, double* %785, align 8
  %787 = fdiv double %774, %786
  store double %787, double* %230, align 1
  store i64 0, i64* %231, align 1
  %788 = add i64 %759, 24
  %789 = add i64 %761, 30
  store i64 %789, i64* %PC.i, align 8
  %790 = inttoptr i64 %788 to i64*
  %791 = load i64, i64* %790, align 8
  store i64 %791, i64* %RAX.i1872, align 8
  %792 = add i64 %759, -100
  %793 = add i64 %761, 34
  store i64 %793, i64* %PC.i, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = sext i32 %795 to i64
  %797 = mul nsw i64 %796, 33800
  store i64 %797, i64* %RCX.i1817, align 8
  %798 = lshr i64 %797, 63
  %799 = add i64 %797, %791
  store i64 %799, i64* %RAX.i1872, align 8
  %800 = icmp ult i64 %799, %791
  %801 = icmp ult i64 %799, %797
  %802 = or i1 %800, %801
  %803 = zext i1 %802 to i8
  store i8 %803, i8* %39, align 1
  %804 = trunc i64 %799 to i32
  %805 = and i32 %804, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805)
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %46, align 1
  %810 = xor i64 %797, %791
  %811 = xor i64 %810, %799
  %812 = lshr i64 %811, 4
  %813 = trunc i64 %812 to i8
  %814 = and i8 %813, 1
  store i8 %814, i8* %51, align 1
  %815 = icmp eq i64 %799, 0
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %54, align 1
  %817 = lshr i64 %799, 63
  %818 = trunc i64 %817 to i8
  store i8 %818, i8* %57, align 1
  %819 = lshr i64 %791, 63
  %820 = xor i64 %817, %819
  %821 = xor i64 %817, %798
  %822 = add nuw nsw i64 %820, %821
  %823 = icmp eq i64 %822, 2
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %63, align 1
  %825 = load i64, i64* %RBP.i, align 8
  %826 = add i64 %825, -104
  %827 = add i64 %761, 48
  store i64 %827, i64* %PC.i, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = sext i32 %829 to i64
  %831 = mul nsw i64 %830, 520
  store i64 %831, i64* %RCX.i1817, align 8
  %832 = lshr i64 %831, 63
  %833 = add i64 %831, %799
  store i64 %833, i64* %RAX.i1872, align 8
  %834 = icmp ult i64 %833, %799
  %835 = icmp ult i64 %833, %831
  %836 = or i1 %834, %835
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %39, align 1
  %838 = trunc i64 %833 to i32
  %839 = and i32 %838, 255
  %840 = tail call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  store i8 %843, i8* %46, align 1
  %844 = xor i64 %831, %799
  %845 = xor i64 %844, %833
  %846 = lshr i64 %845, 4
  %847 = trunc i64 %846 to i8
  %848 = and i8 %847, 1
  store i8 %848, i8* %51, align 1
  %849 = icmp eq i64 %833, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %54, align 1
  %851 = lshr i64 %833, 63
  %852 = trunc i64 %851 to i8
  store i8 %852, i8* %57, align 1
  %853 = xor i64 %851, %817
  %854 = xor i64 %851, %832
  %855 = add nuw nsw i64 %853, %854
  %856 = icmp eq i64 %855, 2
  %857 = zext i1 %856 to i8
  store i8 %857, i8* %63, align 1
  %858 = add i64 %825, -108
  %859 = add i64 %761, 62
  store i64 %859, i64* %PC.i, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = sext i32 %861 to i64
  store i64 %862, i64* %RCX.i1817, align 8
  %863 = shl nsw i64 %862, 3
  %864 = add i64 %863, %833
  %865 = add i64 %761, 67
  store i64 %865, i64* %PC.i, align 8
  %866 = load double, double* %230, align 1
  %867 = inttoptr i64 %864 to double*
  %868 = load double, double* %867, align 8
  %869 = fmul double %866, %868
  store double %869, double* %230, align 1
  %870 = add i64 %825, -72
  %871 = add i64 %761, 72
  store i64 %871, i64* %PC.i, align 8
  %872 = inttoptr i64 %870 to double*
  %873 = load double, double* %872, align 8
  store double %873, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %874 = add i64 %825, 96
  %875 = add i64 %761, 76
  store i64 %875, i64* %PC.i, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %RAX.i1872, align 8
  %878 = add i64 %761, 80
  store i64 %878, i64* %PC.i, align 8
  %879 = load i32, i32* %828, align 4
  %880 = sext i32 %879 to i64
  store i64 %880, i64* %RCX.i1817, align 8
  %881 = shl nsw i64 %880, 3
  %882 = add i64 %881, %877
  %883 = add i64 %761, 85
  store i64 %883, i64* %PC.i, align 8
  %884 = inttoptr i64 %882 to double*
  %885 = load double, double* %884, align 8
  %886 = fdiv double %873, %885
  store double %886, double* %233, align 1
  store i64 0, i64* %234, align 1
  %887 = load i64, i64* %RBP.i, align 8
  %888 = add i64 %887, -96
  %889 = add i64 %761, 89
  store i64 %889, i64* %PC.i, align 8
  %890 = inttoptr i64 %888 to i64*
  %891 = load i64, i64* %890, align 8
  store i64 %891, i64* %RAX.i1872, align 8
  %892 = add i64 %887, -100
  %893 = add i64 %761, 93
  store i64 %893, i64* %PC.i, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = sext i32 %895 to i64
  %897 = mul nsw i64 %896, 520
  store i64 %897, i64* %RCX.i1817, align 8
  %898 = lshr i64 %897, 63
  %899 = add i64 %897, %891
  store i64 %899, i64* %RAX.i1872, align 8
  %900 = icmp ult i64 %899, %891
  %901 = icmp ult i64 %899, %897
  %902 = or i1 %900, %901
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %39, align 1
  %904 = trunc i64 %899 to i32
  %905 = and i32 %904, 255
  %906 = tail call i32 @llvm.ctpop.i32(i32 %905)
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  store i8 %909, i8* %46, align 1
  %910 = xor i64 %897, %891
  %911 = xor i64 %910, %899
  %912 = lshr i64 %911, 4
  %913 = trunc i64 %912 to i8
  %914 = and i8 %913, 1
  store i8 %914, i8* %51, align 1
  %915 = icmp eq i64 %899, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %54, align 1
  %917 = lshr i64 %899, 63
  %918 = trunc i64 %917 to i8
  store i8 %918, i8* %57, align 1
  %919 = lshr i64 %891, 63
  %920 = xor i64 %917, %919
  %921 = xor i64 %917, %898
  %922 = add nuw nsw i64 %920, %921
  %923 = icmp eq i64 %922, 2
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %63, align 1
  %925 = add i64 %887, -104
  %926 = add i64 %761, 107
  store i64 %926, i64* %PC.i, align 8
  %927 = inttoptr i64 %925 to i32*
  %928 = load i32, i32* %927, align 4
  %929 = sext i32 %928 to i64
  store i64 %929, i64* %RCX.i1817, align 8
  %930 = shl nsw i64 %929, 3
  %931 = add i64 %930, %899
  %932 = add i64 %761, 112
  store i64 %932, i64* %PC.i, align 8
  %933 = inttoptr i64 %931 to double*
  %934 = load double, double* %933, align 8
  %935 = fmul double %886, %934
  store double %935, double* %233, align 1
  store i64 0, i64* %234, align 1
  %936 = load double, double* %230, align 1
  %937 = fsub double %936, %935
  store double %937, double* %230, align 1
  %938 = add i64 %887, 16
  %939 = add i64 %761, 120
  store i64 %939, i64* %PC.i, align 8
  %940 = inttoptr i64 %938 to i64*
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %RAX.i1872, align 8
  %942 = load i64, i64* %RBP.i, align 8
  %943 = add i64 %942, -100
  %944 = add i64 %761, 124
  store i64 %944, i64* %PC.i, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = sext i32 %946 to i64
  %948 = mul nsw i64 %947, 520
  store i64 %948, i64* %RCX.i1817, align 8
  %949 = lshr i64 %948, 63
  %950 = add i64 %948, %941
  store i64 %950, i64* %RAX.i1872, align 8
  %951 = icmp ult i64 %950, %941
  %952 = icmp ult i64 %950, %948
  %953 = or i1 %951, %952
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %39, align 1
  %955 = trunc i64 %950 to i32
  %956 = and i32 %955, 255
  %957 = tail call i32 @llvm.ctpop.i32(i32 %956)
  %958 = trunc i32 %957 to i8
  %959 = and i8 %958, 1
  %960 = xor i8 %959, 1
  store i8 %960, i8* %46, align 1
  %961 = xor i64 %948, %941
  %962 = xor i64 %961, %950
  %963 = lshr i64 %962, 4
  %964 = trunc i64 %963 to i8
  %965 = and i8 %964, 1
  store i8 %965, i8* %51, align 1
  %966 = icmp eq i64 %950, 0
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %54, align 1
  %968 = lshr i64 %950, 63
  %969 = trunc i64 %968 to i8
  store i8 %969, i8* %57, align 1
  %970 = lshr i64 %941, 63
  %971 = xor i64 %968, %970
  %972 = xor i64 %968, %949
  %973 = add nuw nsw i64 %971, %972
  %974 = icmp eq i64 %973, 2
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %63, align 1
  %976 = add i64 %942, -104
  %977 = add i64 %761, 138
  store i64 %977, i64* %PC.i, align 8
  %978 = inttoptr i64 %976 to i32*
  %979 = load i32, i32* %978, align 4
  %980 = sext i32 %979 to i64
  store i64 %980, i64* %RCX.i1817, align 8
  %981 = shl nsw i64 %980, 3
  %982 = add i64 %981, %950
  %983 = add i64 %761, 143
  store i64 %983, i64* %PC.i, align 8
  %984 = inttoptr i64 %982 to double*
  store double %937, double* %984, align 8
  %985 = load i64, i64* %RBP.i, align 8
  %986 = add i64 %985, 72
  %987 = load i64, i64* %PC.i, align 8
  %988 = add i64 %987, 4
  store i64 %988, i64* %PC.i, align 8
  %989 = inttoptr i64 %986 to i64*
  %990 = load i64, i64* %989, align 8
  store i64 %990, i64* %RAX.i1872, align 8
  %991 = add i64 %985, -108
  %992 = add i64 %987, 8
  store i64 %992, i64* %PC.i, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = sext i32 %994 to i64
  store i64 %995, i64* %RCX.i1817, align 8
  %996 = shl nsw i64 %995, 3
  %997 = add i64 %996, %990
  %998 = add i64 %987, 13
  store i64 %998, i64* %PC.i, align 8
  %999 = inttoptr i64 %997 to double*
  %1000 = load double, double* %999, align 8
  store double %1000, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %1001 = add i64 %985, 80
  %1002 = add i64 %987, 17
  store i64 %1002, i64* %PC.i, align 8
  %1003 = inttoptr i64 %1001 to i64*
  %1004 = load i64, i64* %1003, align 8
  store i64 %1004, i64* %RAX.i1872, align 8
  %1005 = add i64 %987, 21
  store i64 %1005, i64* %PC.i, align 8
  %1006 = load i32, i32* %993, align 4
  %1007 = sext i32 %1006 to i64
  store i64 %1007, i64* %RCX.i1817, align 8
  %1008 = shl nsw i64 %1007, 3
  %1009 = add i64 %1008, %1004
  %1010 = add i64 %987, 26
  store i64 %1010, i64* %PC.i, align 8
  %1011 = inttoptr i64 %1009 to double*
  %1012 = load double, double* %1011, align 8
  %1013 = fdiv double %1000, %1012
  store double %1013, double* %230, align 1
  store i64 0, i64* %231, align 1
  %1014 = add i64 %985, 48
  %1015 = add i64 %987, 30
  store i64 %1015, i64* %PC.i, align 8
  %1016 = inttoptr i64 %1014 to i64*
  %1017 = load i64, i64* %1016, align 8
  store i64 %1017, i64* %RAX.i1872, align 8
  %1018 = add i64 %985, -100
  %1019 = add i64 %987, 34
  store i64 %1019, i64* %PC.i, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = mul nsw i64 %1022, 33800
  store i64 %1023, i64* %RCX.i1817, align 8
  %1024 = lshr i64 %1023, 63
  %1025 = add i64 %1023, %1017
  store i64 %1025, i64* %RAX.i1872, align 8
  %1026 = icmp ult i64 %1025, %1017
  %1027 = icmp ult i64 %1025, %1023
  %1028 = or i1 %1026, %1027
  %1029 = zext i1 %1028 to i8
  store i8 %1029, i8* %39, align 1
  %1030 = trunc i64 %1025 to i32
  %1031 = and i32 %1030, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %46, align 1
  %1036 = xor i64 %1023, %1017
  %1037 = xor i64 %1036, %1025
  %1038 = lshr i64 %1037, 4
  %1039 = trunc i64 %1038 to i8
  %1040 = and i8 %1039, 1
  store i8 %1040, i8* %51, align 1
  %1041 = icmp eq i64 %1025, 0
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %54, align 1
  %1043 = lshr i64 %1025, 63
  %1044 = trunc i64 %1043 to i8
  store i8 %1044, i8* %57, align 1
  %1045 = lshr i64 %1017, 63
  %1046 = xor i64 %1043, %1045
  %1047 = xor i64 %1043, %1024
  %1048 = add nuw nsw i64 %1046, %1047
  %1049 = icmp eq i64 %1048, 2
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %63, align 1
  %1051 = load i64, i64* %RBP.i, align 8
  %1052 = add i64 %1051, -104
  %1053 = add i64 %987, 48
  store i64 %1053, i64* %PC.i, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = mul nsw i64 %1056, 520
  store i64 %1057, i64* %RCX.i1817, align 8
  %1058 = lshr i64 %1057, 63
  %1059 = add i64 %1057, %1025
  store i64 %1059, i64* %RAX.i1872, align 8
  %1060 = icmp ult i64 %1059, %1025
  %1061 = icmp ult i64 %1059, %1057
  %1062 = or i1 %1060, %1061
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %39, align 1
  %1064 = trunc i64 %1059 to i32
  %1065 = and i32 %1064, 255
  %1066 = tail call i32 @llvm.ctpop.i32(i32 %1065)
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  store i8 %1069, i8* %46, align 1
  %1070 = xor i64 %1057, %1025
  %1071 = xor i64 %1070, %1059
  %1072 = lshr i64 %1071, 4
  %1073 = trunc i64 %1072 to i8
  %1074 = and i8 %1073, 1
  store i8 %1074, i8* %51, align 1
  %1075 = icmp eq i64 %1059, 0
  %1076 = zext i1 %1075 to i8
  store i8 %1076, i8* %54, align 1
  %1077 = lshr i64 %1059, 63
  %1078 = trunc i64 %1077 to i8
  store i8 %1078, i8* %57, align 1
  %1079 = xor i64 %1077, %1043
  %1080 = xor i64 %1077, %1058
  %1081 = add nuw nsw i64 %1079, %1080
  %1082 = icmp eq i64 %1081, 2
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %63, align 1
  %1084 = add i64 %1051, -108
  %1085 = add i64 %987, 62
  store i64 %1085, i64* %PC.i, align 8
  %1086 = inttoptr i64 %1084 to i32*
  %1087 = load i32, i32* %1086, align 4
  %1088 = sext i32 %1087 to i64
  store i64 %1088, i64* %RCX.i1817, align 8
  %1089 = shl nsw i64 %1088, 3
  %1090 = add i64 %1089, %1059
  %1091 = add i64 %987, 67
  store i64 %1091, i64* %PC.i, align 8
  %1092 = load double, double* %230, align 1
  %1093 = inttoptr i64 %1090 to double*
  %1094 = load double, double* %1093, align 8
  %1095 = fmul double %1092, %1094
  store double %1095, double* %230, align 1
  %1096 = add i64 %1051, -64
  %1097 = add i64 %987, 72
  store i64 %1097, i64* %PC.i, align 8
  %1098 = inttoptr i64 %1096 to double*
  %1099 = load double, double* %1098, align 8
  store double %1099, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %1100 = add i64 %1051, 64
  %1101 = add i64 %987, 76
  store i64 %1101, i64* %PC.i, align 8
  %1102 = inttoptr i64 %1100 to i64*
  %1103 = load i64, i64* %1102, align 8
  store i64 %1103, i64* %RAX.i1872, align 8
  %1104 = add i64 %1051, -100
  %1105 = add i64 %987, 80
  store i64 %1105, i64* %PC.i, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  %1108 = sext i32 %1107 to i64
  store i64 %1108, i64* %RCX.i1817, align 8
  %1109 = shl nsw i64 %1108, 3
  %1110 = add i64 %1109, %1103
  %1111 = add i64 %987, 85
  store i64 %1111, i64* %PC.i, align 8
  %1112 = inttoptr i64 %1110 to double*
  %1113 = load double, double* %1112, align 8
  %1114 = fmul double %1099, %1113
  store double %1114, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1115 = load i64, i64* %RBP.i, align 8
  %1116 = add i64 %1115, 80
  %1117 = add i64 %987, 89
  store i64 %1117, i64* %PC.i, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %RAX.i1872, align 8
  %1120 = add i64 %1115, -108
  %1121 = add i64 %987, 93
  store i64 %1121, i64* %PC.i, align 8
  %1122 = inttoptr i64 %1120 to i32*
  %1123 = load i32, i32* %1122, align 4
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RCX.i1817, align 8
  %1125 = shl nsw i64 %1124, 3
  %1126 = add i64 %1125, %1119
  %1127 = add i64 %987, 98
  store i64 %1127, i64* %PC.i, align 8
  %1128 = inttoptr i64 %1126 to double*
  %1129 = load double, double* %1128, align 8
  %1130 = fdiv double %1114, %1129
  store double %1130, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1131 = add i64 %1115, 16
  %1132 = add i64 %987, 102
  store i64 %1132, i64* %PC.i, align 8
  %1133 = inttoptr i64 %1131 to i64*
  %1134 = load i64, i64* %1133, align 8
  store i64 %1134, i64* %RAX.i1872, align 8
  %1135 = add i64 %1115, -100
  %1136 = add i64 %987, 106
  store i64 %1136, i64* %PC.i, align 8
  %1137 = inttoptr i64 %1135 to i32*
  %1138 = load i32, i32* %1137, align 4
  %1139 = sext i32 %1138 to i64
  %1140 = mul nsw i64 %1139, 520
  store i64 %1140, i64* %RCX.i1817, align 8
  %1141 = lshr i64 %1140, 63
  %1142 = add i64 %1140, %1134
  store i64 %1142, i64* %RAX.i1872, align 8
  %1143 = icmp ult i64 %1142, %1134
  %1144 = icmp ult i64 %1142, %1140
  %1145 = or i1 %1143, %1144
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %39, align 1
  %1147 = trunc i64 %1142 to i32
  %1148 = and i32 %1147, 255
  %1149 = tail call i32 @llvm.ctpop.i32(i32 %1148)
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  %1152 = xor i8 %1151, 1
  store i8 %1152, i8* %46, align 1
  %1153 = xor i64 %1140, %1134
  %1154 = xor i64 %1153, %1142
  %1155 = lshr i64 %1154, 4
  %1156 = trunc i64 %1155 to i8
  %1157 = and i8 %1156, 1
  store i8 %1157, i8* %51, align 1
  %1158 = icmp eq i64 %1142, 0
  %1159 = zext i1 %1158 to i8
  store i8 %1159, i8* %54, align 1
  %1160 = lshr i64 %1142, 63
  %1161 = trunc i64 %1160 to i8
  store i8 %1161, i8* %57, align 1
  %1162 = lshr i64 %1134, 63
  %1163 = xor i64 %1160, %1162
  %1164 = xor i64 %1160, %1141
  %1165 = add nuw nsw i64 %1163, %1164
  %1166 = icmp eq i64 %1165, 2
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %63, align 1
  %1168 = add i64 %1115, -104
  %1169 = add i64 %987, 120
  store i64 %1169, i64* %PC.i, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = sext i32 %1171 to i64
  store i64 %1172, i64* %RCX.i1817, align 8
  %1173 = shl nsw i64 %1172, 3
  %1174 = add i64 %1173, %1142
  %1175 = add i64 %987, 125
  store i64 %1175, i64* %PC.i, align 8
  %1176 = inttoptr i64 %1174 to double*
  %1177 = load double, double* %1176, align 8
  %1178 = fmul double %1130, %1177
  store double %1178, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1179 = load double, double* %230, align 1
  %1180 = fadd double %1179, %1178
  store double %1180, double* %230, align 1
  %1181 = load i64, i64* %RBP.i, align 8
  %1182 = add i64 %1181, -64
  %1183 = add i64 %987, 134
  store i64 %1183, i64* %PC.i, align 8
  %1184 = inttoptr i64 %1182 to double*
  %1185 = load double, double* %1184, align 8
  store double %1185, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %1186 = add i64 %1181, 56
  %1187 = add i64 %987, 138
  store i64 %1187, i64* %PC.i, align 8
  %1188 = inttoptr i64 %1186 to i64*
  %1189 = load i64, i64* %1188, align 8
  store i64 %1189, i64* %RAX.i1872, align 8
  %1190 = add i64 %1181, -100
  %1191 = add i64 %987, 142
  store i64 %1191, i64* %PC.i, align 8
  %1192 = inttoptr i64 %1190 to i32*
  %1193 = load i32, i32* %1192, align 4
  %1194 = sext i32 %1193 to i64
  store i64 %1194, i64* %RCX.i1817, align 8
  %1195 = shl nsw i64 %1194, 3
  %1196 = add i64 %1195, %1189
  %1197 = add i64 %987, 147
  store i64 %1197, i64* %PC.i, align 8
  %1198 = inttoptr i64 %1196 to double*
  %1199 = load double, double* %1198, align 8
  %1200 = fmul double %1185, %1199
  store double %1200, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1201 = add i64 %1181, 80
  %1202 = add i64 %987, 151
  store i64 %1202, i64* %PC.i, align 8
  %1203 = inttoptr i64 %1201 to i64*
  %1204 = load i64, i64* %1203, align 8
  store i64 %1204, i64* %RAX.i1872, align 8
  %1205 = add i64 %1181, -108
  %1206 = add i64 %987, 155
  store i64 %1206, i64* %PC.i, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = sext i32 %1208 to i64
  store i64 %1209, i64* %RCX.i1817, align 8
  %1210 = shl nsw i64 %1209, 3
  %1211 = add i64 %1210, %1204
  %1212 = add i64 %987, 160
  store i64 %1212, i64* %PC.i, align 8
  %1213 = inttoptr i64 %1211 to double*
  %1214 = load double, double* %1213, align 8
  %1215 = fdiv double %1200, %1214
  store double %1215, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1216 = add i64 %1181, 24
  %1217 = add i64 %987, 164
  store i64 %1217, i64* %PC.i, align 8
  %1218 = inttoptr i64 %1216 to i64*
  %1219 = load i64, i64* %1218, align 8
  store i64 %1219, i64* %RAX.i1872, align 8
  %1220 = add i64 %987, 168
  store i64 %1220, i64* %PC.i, align 8
  %1221 = load i32, i32* %1192, align 4
  %1222 = sext i32 %1221 to i64
  %1223 = mul nsw i64 %1222, 33800
  store i64 %1223, i64* %RCX.i1817, align 8
  %1224 = lshr i64 %1223, 63
  %1225 = add i64 %1223, %1219
  store i64 %1225, i64* %RAX.i1872, align 8
  %1226 = icmp ult i64 %1225, %1219
  %1227 = icmp ult i64 %1225, %1223
  %1228 = or i1 %1226, %1227
  %1229 = zext i1 %1228 to i8
  store i8 %1229, i8* %39, align 1
  %1230 = trunc i64 %1225 to i32
  %1231 = and i32 %1230, 255
  %1232 = tail call i32 @llvm.ctpop.i32(i32 %1231)
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  %1235 = xor i8 %1234, 1
  store i8 %1235, i8* %46, align 1
  %1236 = xor i64 %1223, %1219
  %1237 = xor i64 %1236, %1225
  %1238 = lshr i64 %1237, 4
  %1239 = trunc i64 %1238 to i8
  %1240 = and i8 %1239, 1
  store i8 %1240, i8* %51, align 1
  %1241 = icmp eq i64 %1225, 0
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %54, align 1
  %1243 = lshr i64 %1225, 63
  %1244 = trunc i64 %1243 to i8
  store i8 %1244, i8* %57, align 1
  %1245 = lshr i64 %1219, 63
  %1246 = xor i64 %1243, %1245
  %1247 = xor i64 %1243, %1224
  %1248 = add nuw nsw i64 %1246, %1247
  %1249 = icmp eq i64 %1248, 2
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %63, align 1
  %1251 = load i64, i64* %RBP.i, align 8
  %1252 = add i64 %1251, -104
  %1253 = add i64 %987, 182
  store i64 %1253, i64* %PC.i, align 8
  %1254 = inttoptr i64 %1252 to i32*
  %1255 = load i32, i32* %1254, align 4
  %1256 = sext i32 %1255 to i64
  %1257 = mul nsw i64 %1256, 520
  store i64 %1257, i64* %RCX.i1817, align 8
  %1258 = lshr i64 %1257, 63
  %1259 = add i64 %1257, %1225
  store i64 %1259, i64* %RAX.i1872, align 8
  %1260 = icmp ult i64 %1259, %1225
  %1261 = icmp ult i64 %1259, %1257
  %1262 = or i1 %1260, %1261
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %39, align 1
  %1264 = trunc i64 %1259 to i32
  %1265 = and i32 %1264, 255
  %1266 = tail call i32 @llvm.ctpop.i32(i32 %1265)
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  store i8 %1269, i8* %46, align 1
  %1270 = xor i64 %1257, %1225
  %1271 = xor i64 %1270, %1259
  %1272 = lshr i64 %1271, 4
  %1273 = trunc i64 %1272 to i8
  %1274 = and i8 %1273, 1
  store i8 %1274, i8* %51, align 1
  %1275 = icmp eq i64 %1259, 0
  %1276 = zext i1 %1275 to i8
  store i8 %1276, i8* %54, align 1
  %1277 = lshr i64 %1259, 63
  %1278 = trunc i64 %1277 to i8
  store i8 %1278, i8* %57, align 1
  %1279 = xor i64 %1277, %1243
  %1280 = xor i64 %1277, %1258
  %1281 = add nuw nsw i64 %1279, %1280
  %1282 = icmp eq i64 %1281, 2
  %1283 = zext i1 %1282 to i8
  store i8 %1283, i8* %63, align 1
  %1284 = add i64 %1251, -108
  %1285 = add i64 %987, 196
  store i64 %1285, i64* %PC.i, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  %1288 = sext i32 %1287 to i64
  store i64 %1288, i64* %RCX.i1817, align 8
  %1289 = shl nsw i64 %1288, 3
  %1290 = add i64 %1289, %1259
  %1291 = add i64 %987, 201
  store i64 %1291, i64* %PC.i, align 8
  %1292 = load double, double* %233, align 1
  %1293 = inttoptr i64 %1290 to double*
  %1294 = load double, double* %1293, align 8
  %1295 = fmul double %1292, %1294
  store double %1295, double* %233, align 1
  %1296 = load double, double* %230, align 1
  %1297 = fsub double %1296, %1295
  store double %1297, double* %230, align 1
  %1298 = add i64 %1251, 48
  %1299 = add i64 %987, 209
  store i64 %1299, i64* %PC.i, align 8
  %1300 = inttoptr i64 %1298 to i64*
  %1301 = load i64, i64* %1300, align 8
  store i64 %1301, i64* %RAX.i1872, align 8
  %1302 = add i64 %1251, -100
  %1303 = add i64 %987, 213
  store i64 %1303, i64* %PC.i, align 8
  %1304 = inttoptr i64 %1302 to i32*
  %1305 = load i32, i32* %1304, align 4
  %1306 = sext i32 %1305 to i64
  %1307 = mul nsw i64 %1306, 33800
  store i64 %1307, i64* %RCX.i1817, align 8
  %1308 = lshr i64 %1307, 63
  %1309 = add i64 %1307, %1301
  store i64 %1309, i64* %RAX.i1872, align 8
  %1310 = icmp ult i64 %1309, %1301
  %1311 = icmp ult i64 %1309, %1307
  %1312 = or i1 %1310, %1311
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %39, align 1
  %1314 = trunc i64 %1309 to i32
  %1315 = and i32 %1314, 255
  %1316 = tail call i32 @llvm.ctpop.i32(i32 %1315)
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  %1319 = xor i8 %1318, 1
  store i8 %1319, i8* %46, align 1
  %1320 = xor i64 %1307, %1301
  %1321 = xor i64 %1320, %1309
  %1322 = lshr i64 %1321, 4
  %1323 = trunc i64 %1322 to i8
  %1324 = and i8 %1323, 1
  store i8 %1324, i8* %51, align 1
  %1325 = icmp eq i64 %1309, 0
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %54, align 1
  %1327 = lshr i64 %1309, 63
  %1328 = trunc i64 %1327 to i8
  store i8 %1328, i8* %57, align 1
  %1329 = lshr i64 %1301, 63
  %1330 = xor i64 %1327, %1329
  %1331 = xor i64 %1327, %1308
  %1332 = add nuw nsw i64 %1330, %1331
  %1333 = icmp eq i64 %1332, 2
  %1334 = zext i1 %1333 to i8
  store i8 %1334, i8* %63, align 1
  %1335 = load i64, i64* %RBP.i, align 8
  %1336 = add i64 %1335, -104
  %1337 = add i64 %987, 227
  store i64 %1337, i64* %PC.i, align 8
  %1338 = inttoptr i64 %1336 to i32*
  %1339 = load i32, i32* %1338, align 4
  %1340 = sext i32 %1339 to i64
  %1341 = mul nsw i64 %1340, 520
  store i64 %1341, i64* %RCX.i1817, align 8
  %1342 = lshr i64 %1341, 63
  %1343 = add i64 %1341, %1309
  store i64 %1343, i64* %RAX.i1872, align 8
  %1344 = icmp ult i64 %1343, %1309
  %1345 = icmp ult i64 %1343, %1341
  %1346 = or i1 %1344, %1345
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %39, align 1
  %1348 = trunc i64 %1343 to i32
  %1349 = and i32 %1348, 255
  %1350 = tail call i32 @llvm.ctpop.i32(i32 %1349)
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = xor i8 %1352, 1
  store i8 %1353, i8* %46, align 1
  %1354 = xor i64 %1341, %1309
  %1355 = xor i64 %1354, %1343
  %1356 = lshr i64 %1355, 4
  %1357 = trunc i64 %1356 to i8
  %1358 = and i8 %1357, 1
  store i8 %1358, i8* %51, align 1
  %1359 = icmp eq i64 %1343, 0
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %54, align 1
  %1361 = lshr i64 %1343, 63
  %1362 = trunc i64 %1361 to i8
  store i8 %1362, i8* %57, align 1
  %1363 = xor i64 %1361, %1327
  %1364 = xor i64 %1361, %1342
  %1365 = add nuw nsw i64 %1363, %1364
  %1366 = icmp eq i64 %1365, 2
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %63, align 1
  %1368 = add i64 %1335, -108
  %1369 = add i64 %987, 241
  store i64 %1369, i64* %PC.i, align 8
  %1370 = inttoptr i64 %1368 to i32*
  %1371 = load i32, i32* %1370, align 4
  %1372 = sext i32 %1371 to i64
  store i64 %1372, i64* %RCX.i1817, align 8
  %1373 = shl nsw i64 %1372, 3
  %1374 = add i64 %1373, %1343
  %1375 = add i64 %987, 246
  store i64 %1375, i64* %PC.i, align 8
  %1376 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1377 = load i64, i64* %1376, align 1
  %1378 = inttoptr i64 %1374 to i64*
  store i64 %1377, i64* %1378, align 8
  %1379 = load i64, i64* %RBP.i, align 8
  %1380 = add i64 %1379, 16
  %1381 = load i64, i64* %PC.i, align 8
  %1382 = add i64 %1381, 4
  store i64 %1382, i64* %PC.i, align 8
  %1383 = inttoptr i64 %1380 to i64*
  %1384 = load i64, i64* %1383, align 8
  store i64 %1384, i64* %RAX.i1872, align 8
  %1385 = add i64 %1379, -100
  %1386 = add i64 %1381, 8
  store i64 %1386, i64* %PC.i, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = sext i32 %1388 to i64
  %1390 = mul nsw i64 %1389, 520
  store i64 %1390, i64* %RCX.i1817, align 8
  %1391 = lshr i64 %1390, 63
  %1392 = add i64 %1390, %1384
  store i64 %1392, i64* %RAX.i1872, align 8
  %1393 = icmp ult i64 %1392, %1384
  %1394 = icmp ult i64 %1392, %1390
  %1395 = or i1 %1393, %1394
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %39, align 1
  %1397 = trunc i64 %1392 to i32
  %1398 = and i32 %1397, 255
  %1399 = tail call i32 @llvm.ctpop.i32(i32 %1398)
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  %1402 = xor i8 %1401, 1
  store i8 %1402, i8* %46, align 1
  %1403 = xor i64 %1390, %1384
  %1404 = xor i64 %1403, %1392
  %1405 = lshr i64 %1404, 4
  %1406 = trunc i64 %1405 to i8
  %1407 = and i8 %1406, 1
  store i8 %1407, i8* %51, align 1
  %1408 = icmp eq i64 %1392, 0
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %54, align 1
  %1410 = lshr i64 %1392, 63
  %1411 = trunc i64 %1410 to i8
  store i8 %1411, i8* %57, align 1
  %1412 = lshr i64 %1384, 63
  %1413 = xor i64 %1410, %1412
  %1414 = xor i64 %1410, %1391
  %1415 = add nuw nsw i64 %1413, %1414
  %1416 = icmp eq i64 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %63, align 1
  %1418 = add i64 %1379, -104
  %1419 = add i64 %1381, 22
  store i64 %1419, i64* %PC.i, align 8
  %1420 = inttoptr i64 %1418 to i32*
  %1421 = load i32, i32* %1420, align 4
  %1422 = sext i32 %1421 to i64
  store i64 %1422, i64* %RCX.i1817, align 8
  %1423 = shl nsw i64 %1422, 3
  %1424 = add i64 %1423, %1392
  %1425 = add i64 %1381, 27
  store i64 %1425, i64* %PC.i, align 8
  %1426 = inttoptr i64 %1424 to i64*
  %1427 = load i64, i64* %1426, align 8
  %1428 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1427, i64* %1428, align 1
  store double 0.000000e+00, double* %232, align 1
  %1429 = add i64 %1379, 24
  %1430 = add i64 %1381, 31
  store i64 %1430, i64* %PC.i, align 8
  %1431 = inttoptr i64 %1429 to i64*
  %1432 = load i64, i64* %1431, align 8
  store i64 %1432, i64* %RAX.i1872, align 8
  %1433 = add i64 %1381, 35
  store i64 %1433, i64* %PC.i, align 8
  %1434 = load i32, i32* %1387, align 4
  %1435 = sext i32 %1434 to i64
  %1436 = mul nsw i64 %1435, 33800
  store i64 %1436, i64* %RCX.i1817, align 8
  %1437 = lshr i64 %1436, 63
  %1438 = add i64 %1436, %1432
  store i64 %1438, i64* %RAX.i1872, align 8
  %1439 = icmp ult i64 %1438, %1432
  %1440 = icmp ult i64 %1438, %1436
  %1441 = or i1 %1439, %1440
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %39, align 1
  %1443 = trunc i64 %1438 to i32
  %1444 = and i32 %1443, 255
  %1445 = tail call i32 @llvm.ctpop.i32(i32 %1444)
  %1446 = trunc i32 %1445 to i8
  %1447 = and i8 %1446, 1
  %1448 = xor i8 %1447, 1
  store i8 %1448, i8* %46, align 1
  %1449 = xor i64 %1436, %1432
  %1450 = xor i64 %1449, %1438
  %1451 = lshr i64 %1450, 4
  %1452 = trunc i64 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %51, align 1
  %1454 = icmp eq i64 %1438, 0
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %54, align 1
  %1456 = lshr i64 %1438, 63
  %1457 = trunc i64 %1456 to i8
  store i8 %1457, i8* %57, align 1
  %1458 = lshr i64 %1432, 63
  %1459 = xor i64 %1456, %1458
  %1460 = xor i64 %1456, %1437
  %1461 = add nuw nsw i64 %1459, %1460
  %1462 = icmp eq i64 %1461, 2
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %63, align 1
  %1464 = load i64, i64* %RBP.i, align 8
  %1465 = add i64 %1464, -104
  %1466 = add i64 %1381, 49
  store i64 %1466, i64* %PC.i, align 8
  %1467 = inttoptr i64 %1465 to i32*
  %1468 = load i32, i32* %1467, align 4
  %1469 = sext i32 %1468 to i64
  %1470 = mul nsw i64 %1469, 520
  store i64 %1470, i64* %RCX.i1817, align 8
  %1471 = lshr i64 %1470, 63
  %1472 = add i64 %1470, %1438
  store i64 %1472, i64* %RAX.i1872, align 8
  %1473 = icmp ult i64 %1472, %1438
  %1474 = icmp ult i64 %1472, %1470
  %1475 = or i1 %1473, %1474
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %39, align 1
  %1477 = trunc i64 %1472 to i32
  %1478 = and i32 %1477, 255
  %1479 = tail call i32 @llvm.ctpop.i32(i32 %1478)
  %1480 = trunc i32 %1479 to i8
  %1481 = and i8 %1480, 1
  %1482 = xor i8 %1481, 1
  store i8 %1482, i8* %46, align 1
  %1483 = xor i64 %1470, %1438
  %1484 = xor i64 %1483, %1472
  %1485 = lshr i64 %1484, 4
  %1486 = trunc i64 %1485 to i8
  %1487 = and i8 %1486, 1
  store i8 %1487, i8* %51, align 1
  %1488 = icmp eq i64 %1472, 0
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %54, align 1
  %1490 = lshr i64 %1472, 63
  %1491 = trunc i64 %1490 to i8
  store i8 %1491, i8* %57, align 1
  %1492 = xor i64 %1490, %1456
  %1493 = xor i64 %1490, %1471
  %1494 = add nuw nsw i64 %1492, %1493
  %1495 = icmp eq i64 %1494, 2
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %63, align 1
  %1497 = add i64 %1464, -108
  %1498 = add i64 %1381, 63
  store i64 %1498, i64* %PC.i, align 8
  %1499 = inttoptr i64 %1497 to i32*
  %1500 = load i32, i32* %1499, align 4
  %1501 = sext i32 %1500 to i64
  store i64 %1501, i64* %RCX.i1817, align 8
  %1502 = shl nsw i64 %1501, 3
  %1503 = add i64 %1502, %1472
  %1504 = add i64 %1381, 68
  store i64 %1504, i64* %PC.i, align 8
  %1505 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1506 = load i64, i64* %1505, align 1
  %1507 = inttoptr i64 %1503 to i64*
  store i64 %1506, i64* %1507, align 8
  %1508 = load i64, i64* %RBP.i, align 8
  %1509 = add i64 %1508, -108
  %1510 = load i64, i64* %PC.i, align 8
  %1511 = add i64 %1510, 3
  store i64 %1511, i64* %PC.i, align 8
  %1512 = inttoptr i64 %1509 to i32*
  %1513 = load i32, i32* %1512, align 4
  %1514 = add i32 %1513, 1
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RAX.i1872, align 8
  %1516 = icmp eq i32 %1513, -1
  %1517 = icmp eq i32 %1514, 0
  %1518 = or i1 %1516, %1517
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %39, align 1
  %1520 = and i32 %1514, 255
  %1521 = tail call i32 @llvm.ctpop.i32(i32 %1520)
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  %1524 = xor i8 %1523, 1
  store i8 %1524, i8* %46, align 1
  %1525 = xor i32 %1513, %1514
  %1526 = lshr i32 %1525, 4
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  store i8 %1528, i8* %51, align 1
  %1529 = icmp eq i32 %1514, 0
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %54, align 1
  %1531 = lshr i32 %1514, 31
  %1532 = trunc i32 %1531 to i8
  store i8 %1532, i8* %57, align 1
  %1533 = lshr i32 %1513, 31
  %1534 = xor i32 %1531, %1533
  %1535 = add nuw nsw i32 %1534, %1531
  %1536 = icmp eq i32 %1535, 2
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %63, align 1
  %1538 = add i64 %1510, 9
  store i64 %1538, i64* %PC.i, align 8
  store i32 %1514, i32* %1512, align 4
  %1539 = load i64, i64* %PC.i, align 8
  %1540 = add i64 %1539, -679
  store i64 %1540, i64* %3, align 8
  br label %block_.L_4014a0

block_.L_40174c:                                  ; preds = %block_.L_4014a0
  %1541 = add i64 %426, -48
  %1542 = add i64 %355, 36
  store i64 %1542, i64* %PC.i, align 8
  %1543 = inttoptr i64 %1541 to i32*
  %1544 = load i32, i32* %1543, align 4
  %1545 = sext i32 %1544 to i64
  store i64 %1545, i64* %RCX.i1817, align 8
  %1546 = shl nsw i64 %1545, 3
  %1547 = add i64 %1546, %401
  %1548 = add i64 %355, 41
  store i64 %1548, i64* %PC.i, align 8
  %1549 = inttoptr i64 %1547 to i64*
  %1550 = load i64, i64* %1549, align 8
  %1551 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1550, i64* %1551, align 1
  store double 0.000000e+00, double* %232, align 1
  %1552 = add i64 %426, 32
  %1553 = add i64 %355, 45
  store i64 %1553, i64* %PC.i, align 8
  %1554 = inttoptr i64 %1552 to i64*
  %1555 = load i64, i64* %1554, align 8
  store i64 %1555, i64* %RAX.i1872, align 8
  %1556 = add i64 %426, -100
  %1557 = add i64 %355, 49
  store i64 %1557, i64* %PC.i, align 8
  %1558 = inttoptr i64 %1556 to i32*
  %1559 = load i32, i32* %1558, align 4
  %1560 = sext i32 %1559 to i64
  %1561 = mul nsw i64 %1560, 33800
  store i64 %1561, i64* %RCX.i1817, align 8
  %1562 = lshr i64 %1561, 63
  %1563 = add i64 %1561, %1555
  store i64 %1563, i64* %RAX.i1872, align 8
  %1564 = icmp ult i64 %1563, %1555
  %1565 = icmp ult i64 %1563, %1561
  %1566 = or i1 %1564, %1565
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %39, align 1
  %1568 = trunc i64 %1563 to i32
  %1569 = and i32 %1568, 255
  %1570 = tail call i32 @llvm.ctpop.i32(i32 %1569)
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = xor i8 %1572, 1
  store i8 %1573, i8* %46, align 1
  %1574 = xor i64 %1561, %1555
  %1575 = xor i64 %1574, %1563
  %1576 = lshr i64 %1575, 4
  %1577 = trunc i64 %1576 to i8
  %1578 = and i8 %1577, 1
  store i8 %1578, i8* %51, align 1
  %1579 = icmp eq i64 %1563, 0
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %54, align 1
  %1581 = lshr i64 %1563, 63
  %1582 = trunc i64 %1581 to i8
  store i8 %1582, i8* %57, align 1
  %1583 = lshr i64 %1555, 63
  %1584 = xor i64 %1581, %1583
  %1585 = xor i64 %1581, %1562
  %1586 = add nuw nsw i64 %1584, %1585
  %1587 = icmp eq i64 %1586, 2
  %1588 = zext i1 %1587 to i8
  store i8 %1588, i8* %63, align 1
  %1589 = add i64 %426, -104
  %1590 = add i64 %355, 62
  store i64 %1590, i64* %PC.i, align 8
  %1591 = inttoptr i64 %1589 to i32*
  %1592 = load i32, i32* %1591, align 4
  %1593 = add i32 %1592, 1
  %1594 = zext i32 %1593 to i64
  store i64 %1594, i64* %RDX.i1724, align 8
  %1595 = sext i32 %1593 to i64
  %1596 = mul nsw i64 %1595, 520
  store i64 %1596, i64* %RCX.i1817, align 8
  %1597 = lshr i64 %1596, 63
  %1598 = load i64, i64* %RAX.i1872, align 8
  %1599 = add i64 %1596, %1598
  store i64 %1599, i64* %RAX.i1872, align 8
  %1600 = icmp ult i64 %1599, %1598
  %1601 = icmp ult i64 %1599, %1596
  %1602 = or i1 %1600, %1601
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %39, align 1
  %1604 = trunc i64 %1599 to i32
  %1605 = and i32 %1604, 255
  %1606 = tail call i32 @llvm.ctpop.i32(i32 %1605)
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  %1609 = xor i8 %1608, 1
  store i8 %1609, i8* %46, align 1
  %1610 = xor i64 %1596, %1598
  %1611 = xor i64 %1610, %1599
  %1612 = lshr i64 %1611, 4
  %1613 = trunc i64 %1612 to i8
  %1614 = and i8 %1613, 1
  store i8 %1614, i8* %51, align 1
  %1615 = icmp eq i64 %1599, 0
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %54, align 1
  %1617 = lshr i64 %1599, 63
  %1618 = trunc i64 %1617 to i8
  store i8 %1618, i8* %57, align 1
  %1619 = lshr i64 %1598, 63
  %1620 = xor i64 %1617, %1619
  %1621 = xor i64 %1617, %1597
  %1622 = add nuw nsw i64 %1620, %1621
  %1623 = icmp eq i64 %1622, 2
  %1624 = zext i1 %1623 to i8
  store i8 %1624, i8* %63, align 1
  %1625 = load i64, i64* %RBP.i, align 8
  %1626 = add i64 %1625, -48
  %1627 = add i64 %355, 82
  store i64 %1627, i64* %PC.i, align 8
  %1628 = inttoptr i64 %1626 to i32*
  %1629 = load i32, i32* %1628, align 4
  %1630 = sext i32 %1629 to i64
  store i64 %1630, i64* %RCX.i1817, align 8
  %1631 = shl nsw i64 %1630, 3
  %1632 = add i64 %1631, %1599
  %1633 = add i64 %355, 87
  store i64 %1633, i64* %PC.i, align 8
  %1634 = load double, double* %230, align 1
  %1635 = inttoptr i64 %1632 to double*
  %1636 = load double, double* %1635, align 8
  %1637 = fsub double %1634, %1636
  store double %1637, double* %230, align 1
  %1638 = add i64 %1625, -88
  %1639 = add i64 %355, 91
  store i64 %1639, i64* %PC.i, align 8
  %1640 = inttoptr i64 %1638 to i64*
  %1641 = load i64, i64* %1640, align 8
  store i64 %1641, i64* %RAX.i1872, align 8
  %1642 = add i64 %1625, -100
  %1643 = add i64 %355, 95
  store i64 %1643, i64* %PC.i, align 8
  %1644 = inttoptr i64 %1642 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = sext i32 %1645 to i64
  %1647 = mul nsw i64 %1646, 520
  store i64 %1647, i64* %RCX.i1817, align 8
  %1648 = lshr i64 %1647, 63
  %1649 = add i64 %1647, %1641
  store i64 %1649, i64* %RAX.i1872, align 8
  %1650 = icmp ult i64 %1649, %1641
  %1651 = icmp ult i64 %1649, %1647
  %1652 = or i1 %1650, %1651
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %39, align 1
  %1654 = trunc i64 %1649 to i32
  %1655 = and i32 %1654, 255
  %1656 = tail call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = and i8 %1657, 1
  %1659 = xor i8 %1658, 1
  store i8 %1659, i8* %46, align 1
  %1660 = xor i64 %1647, %1641
  %1661 = xor i64 %1660, %1649
  %1662 = lshr i64 %1661, 4
  %1663 = trunc i64 %1662 to i8
  %1664 = and i8 %1663, 1
  store i8 %1664, i8* %51, align 1
  %1665 = icmp eq i64 %1649, 0
  %1666 = zext i1 %1665 to i8
  store i8 %1666, i8* %54, align 1
  %1667 = lshr i64 %1649, 63
  %1668 = trunc i64 %1667 to i8
  store i8 %1668, i8* %57, align 1
  %1669 = lshr i64 %1641, 63
  %1670 = xor i64 %1667, %1669
  %1671 = xor i64 %1667, %1648
  %1672 = add nuw nsw i64 %1670, %1671
  %1673 = icmp eq i64 %1672, 2
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %63, align 1
  %1675 = add i64 %1625, -104
  %1676 = add i64 %355, 109
  store i64 %1676, i64* %PC.i, align 8
  %1677 = inttoptr i64 %1675 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = sext i32 %1678 to i64
  store i64 %1679, i64* %RCX.i1817, align 8
  %1680 = shl nsw i64 %1679, 3
  %1681 = add i64 %1680, %1649
  %1682 = add i64 %355, 114
  store i64 %1682, i64* %PC.i, align 8
  %1683 = inttoptr i64 %1681 to double*
  %1684 = load double, double* %1683, align 8
  %1685 = fadd double %1637, %1684
  store double %1685, double* %230, align 1
  %1686 = load i64, i64* %RBP.i, align 8
  %1687 = add i64 %1686, 40
  %1688 = add i64 %355, 118
  store i64 %1688, i64* %PC.i, align 8
  %1689 = inttoptr i64 %1687 to i64*
  %1690 = load i64, i64* %1689, align 8
  store i64 %1690, i64* %RAX.i1872, align 8
  %1691 = add i64 %1686, -100
  %1692 = add i64 %355, 122
  store i64 %1692, i64* %PC.i, align 8
  %1693 = inttoptr i64 %1691 to i32*
  %1694 = load i32, i32* %1693, align 4
  %1695 = sext i32 %1694 to i64
  %1696 = mul nsw i64 %1695, 33800
  store i64 %1696, i64* %RCX.i1817, align 8
  %1697 = lshr i64 %1696, 63
  %1698 = add i64 %1696, %1690
  store i64 %1698, i64* %RAX.i1872, align 8
  %1699 = icmp ult i64 %1698, %1690
  %1700 = icmp ult i64 %1698, %1696
  %1701 = or i1 %1699, %1700
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %39, align 1
  %1703 = trunc i64 %1698 to i32
  %1704 = and i32 %1703, 255
  %1705 = tail call i32 @llvm.ctpop.i32(i32 %1704)
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %46, align 1
  %1709 = xor i64 %1696, %1690
  %1710 = xor i64 %1709, %1698
  %1711 = lshr i64 %1710, 4
  %1712 = trunc i64 %1711 to i8
  %1713 = and i8 %1712, 1
  store i8 %1713, i8* %51, align 1
  %1714 = icmp eq i64 %1698, 0
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %54, align 1
  %1716 = lshr i64 %1698, 63
  %1717 = trunc i64 %1716 to i8
  store i8 %1717, i8* %57, align 1
  %1718 = lshr i64 %1690, 63
  %1719 = xor i64 %1716, %1718
  %1720 = xor i64 %1716, %1697
  %1721 = add nuw nsw i64 %1719, %1720
  %1722 = icmp eq i64 %1721, 2
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %63, align 1
  %1724 = add i64 %1686, -104
  %1725 = add i64 %355, 136
  store i64 %1725, i64* %PC.i, align 8
  %1726 = inttoptr i64 %1724 to i32*
  %1727 = load i32, i32* %1726, align 4
  %1728 = sext i32 %1727 to i64
  %1729 = mul nsw i64 %1728, 520
  store i64 %1729, i64* %RCX.i1817, align 8
  %1730 = lshr i64 %1729, 63
  %1731 = add i64 %1729, %1698
  store i64 %1731, i64* %RAX.i1872, align 8
  %1732 = icmp ult i64 %1731, %1698
  %1733 = icmp ult i64 %1731, %1729
  %1734 = or i1 %1732, %1733
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %39, align 1
  %1736 = trunc i64 %1731 to i32
  %1737 = and i32 %1736, 255
  %1738 = tail call i32 @llvm.ctpop.i32(i32 %1737)
  %1739 = trunc i32 %1738 to i8
  %1740 = and i8 %1739, 1
  %1741 = xor i8 %1740, 1
  store i8 %1741, i8* %46, align 1
  %1742 = xor i64 %1729, %1698
  %1743 = xor i64 %1742, %1731
  %1744 = lshr i64 %1743, 4
  %1745 = trunc i64 %1744 to i8
  %1746 = and i8 %1745, 1
  store i8 %1746, i8* %51, align 1
  %1747 = icmp eq i64 %1731, 0
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %54, align 1
  %1749 = lshr i64 %1731, 63
  %1750 = trunc i64 %1749 to i8
  store i8 %1750, i8* %57, align 1
  %1751 = xor i64 %1749, %1716
  %1752 = xor i64 %1749, %1730
  %1753 = add nuw nsw i64 %1751, %1752
  %1754 = icmp eq i64 %1753, 2
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %63, align 1
  %1756 = load i64, i64* %RBP.i, align 8
  %1757 = add i64 %1756, -48
  %1758 = add i64 %355, 150
  store i64 %1758, i64* %PC.i, align 8
  %1759 = inttoptr i64 %1757 to i32*
  %1760 = load i32, i32* %1759, align 4
  %1761 = sext i32 %1760 to i64
  store i64 %1761, i64* %RCX.i1817, align 8
  %1762 = shl nsw i64 %1761, 3
  %1763 = add i64 %1762, %1731
  %1764 = add i64 %355, 155
  store i64 %1764, i64* %PC.i, align 8
  %1765 = load double, double* %230, align 1
  %1766 = inttoptr i64 %1763 to double*
  %1767 = load double, double* %1766, align 8
  %1768 = fsub double %1765, %1767
  store double %1768, double* %230, align 1
  %1769 = add i64 %1756, -96
  %1770 = add i64 %355, 159
  store i64 %1770, i64* %PC.i, align 8
  %1771 = inttoptr i64 %1769 to i64*
  %1772 = load i64, i64* %1771, align 8
  store i64 %1772, i64* %RAX.i1872, align 8
  %1773 = add i64 %1756, -100
  %1774 = add i64 %355, 163
  store i64 %1774, i64* %PC.i, align 8
  %1775 = inttoptr i64 %1773 to i32*
  %1776 = load i32, i32* %1775, align 4
  %1777 = sext i32 %1776 to i64
  %1778 = mul nsw i64 %1777, 520
  store i64 %1778, i64* %RCX.i1817, align 8
  %1779 = lshr i64 %1778, 63
  %1780 = add i64 %1778, %1772
  store i64 %1780, i64* %RAX.i1872, align 8
  %1781 = icmp ult i64 %1780, %1772
  %1782 = icmp ult i64 %1780, %1778
  %1783 = or i1 %1781, %1782
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %39, align 1
  %1785 = trunc i64 %1780 to i32
  %1786 = and i32 %1785, 255
  %1787 = tail call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  store i8 %1790, i8* %46, align 1
  %1791 = xor i64 %1778, %1772
  %1792 = xor i64 %1791, %1780
  %1793 = lshr i64 %1792, 4
  %1794 = trunc i64 %1793 to i8
  %1795 = and i8 %1794, 1
  store i8 %1795, i8* %51, align 1
  %1796 = icmp eq i64 %1780, 0
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %54, align 1
  %1798 = lshr i64 %1780, 63
  %1799 = trunc i64 %1798 to i8
  store i8 %1799, i8* %57, align 1
  %1800 = lshr i64 %1772, 63
  %1801 = xor i64 %1798, %1800
  %1802 = xor i64 %1798, %1779
  %1803 = add nuw nsw i64 %1801, %1802
  %1804 = icmp eq i64 %1803, 2
  %1805 = zext i1 %1804 to i8
  store i8 %1805, i8* %63, align 1
  %1806 = add i64 %1756, -104
  %1807 = add i64 %355, 177
  store i64 %1807, i64* %PC.i, align 8
  %1808 = inttoptr i64 %1806 to i32*
  %1809 = load i32, i32* %1808, align 4
  %1810 = sext i32 %1809 to i64
  store i64 %1810, i64* %RCX.i1817, align 8
  %1811 = shl nsw i64 %1810, 3
  %1812 = add i64 %1811, %1780
  %1813 = add i64 %355, 182
  store i64 %1813, i64* %PC.i, align 8
  %1814 = inttoptr i64 %1812 to double*
  store double %1768, double* %1814, align 8
  %1815 = load i64, i64* %RBP.i, align 8
  %1816 = add i64 %1815, 88
  %1817 = load i64, i64* %PC.i, align 8
  %1818 = add i64 %1817, 4
  store i64 %1818, i64* %PC.i, align 8
  %1819 = inttoptr i64 %1816 to i64*
  %1820 = load i64, i64* %1819, align 8
  store i64 %1820, i64* %RAX.i1872, align 8
  %1821 = add i64 %1815, -104
  %1822 = add i64 %1817, 8
  store i64 %1822, i64* %PC.i, align 8
  %1823 = inttoptr i64 %1821 to i32*
  %1824 = load i32, i32* %1823, align 4
  %1825 = sext i32 %1824 to i64
  store i64 %1825, i64* %RCX.i1817, align 8
  %1826 = shl nsw i64 %1825, 3
  %1827 = add i64 %1826, %1820
  %1828 = add i64 %1817, 13
  store i64 %1828, i64* %PC.i, align 8
  %1829 = inttoptr i64 %1827 to double*
  %1830 = load double, double* %1829, align 8
  store double %1830, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %1831 = add i64 %1815, 96
  %1832 = add i64 %1817, 17
  store i64 %1832, i64* %PC.i, align 8
  %1833 = inttoptr i64 %1831 to i64*
  %1834 = load i64, i64* %1833, align 8
  store i64 %1834, i64* %RAX.i1872, align 8
  %1835 = add i64 %1817, 21
  store i64 %1835, i64* %PC.i, align 8
  %1836 = load i32, i32* %1823, align 4
  %1837 = sext i32 %1836 to i64
  store i64 %1837, i64* %RCX.i1817, align 8
  %1838 = shl nsw i64 %1837, 3
  %1839 = add i64 %1838, %1834
  %1840 = add i64 %1817, 26
  store i64 %1840, i64* %PC.i, align 8
  %1841 = inttoptr i64 %1839 to double*
  %1842 = load double, double* %1841, align 8
  %1843 = fdiv double %1830, %1842
  store double %1843, double* %230, align 1
  store i64 0, i64* %231, align 1
  %1844 = add i64 %1815, 24
  %1845 = add i64 %1817, 30
  store i64 %1845, i64* %PC.i, align 8
  %1846 = inttoptr i64 %1844 to i64*
  %1847 = load i64, i64* %1846, align 8
  store i64 %1847, i64* %RAX.i1872, align 8
  %1848 = add i64 %1815, -100
  %1849 = add i64 %1817, 34
  store i64 %1849, i64* %PC.i, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = sext i32 %1851 to i64
  %1853 = mul nsw i64 %1852, 33800
  store i64 %1853, i64* %RCX.i1817, align 8
  %1854 = lshr i64 %1853, 63
  %1855 = add i64 %1853, %1847
  store i64 %1855, i64* %RAX.i1872, align 8
  %1856 = icmp ult i64 %1855, %1847
  %1857 = icmp ult i64 %1855, %1853
  %1858 = or i1 %1856, %1857
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %39, align 1
  %1860 = trunc i64 %1855 to i32
  %1861 = and i32 %1860, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861)
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %46, align 1
  %1866 = xor i64 %1853, %1847
  %1867 = xor i64 %1866, %1855
  %1868 = lshr i64 %1867, 4
  %1869 = trunc i64 %1868 to i8
  %1870 = and i8 %1869, 1
  store i8 %1870, i8* %51, align 1
  %1871 = icmp eq i64 %1855, 0
  %1872 = zext i1 %1871 to i8
  store i8 %1872, i8* %54, align 1
  %1873 = lshr i64 %1855, 63
  %1874 = trunc i64 %1873 to i8
  store i8 %1874, i8* %57, align 1
  %1875 = lshr i64 %1847, 63
  %1876 = xor i64 %1873, %1875
  %1877 = xor i64 %1873, %1854
  %1878 = add nuw nsw i64 %1876, %1877
  %1879 = icmp eq i64 %1878, 2
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %63, align 1
  %1881 = load i64, i64* %RBP.i, align 8
  %1882 = add i64 %1881, -104
  %1883 = add i64 %1817, 48
  store i64 %1883, i64* %PC.i, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = sext i32 %1885 to i64
  %1887 = mul nsw i64 %1886, 520
  store i64 %1887, i64* %RCX.i1817, align 8
  %1888 = lshr i64 %1887, 63
  %1889 = add i64 %1887, %1855
  store i64 %1889, i64* %RAX.i1872, align 8
  %1890 = icmp ult i64 %1889, %1855
  %1891 = icmp ult i64 %1889, %1887
  %1892 = or i1 %1890, %1891
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %39, align 1
  %1894 = trunc i64 %1889 to i32
  %1895 = and i32 %1894, 255
  %1896 = tail call i32 @llvm.ctpop.i32(i32 %1895)
  %1897 = trunc i32 %1896 to i8
  %1898 = and i8 %1897, 1
  %1899 = xor i8 %1898, 1
  store i8 %1899, i8* %46, align 1
  %1900 = xor i64 %1887, %1855
  %1901 = xor i64 %1900, %1889
  %1902 = lshr i64 %1901, 4
  %1903 = trunc i64 %1902 to i8
  %1904 = and i8 %1903, 1
  store i8 %1904, i8* %51, align 1
  %1905 = icmp eq i64 %1889, 0
  %1906 = zext i1 %1905 to i8
  store i8 %1906, i8* %54, align 1
  %1907 = lshr i64 %1889, 63
  %1908 = trunc i64 %1907 to i8
  store i8 %1908, i8* %57, align 1
  %1909 = xor i64 %1907, %1873
  %1910 = xor i64 %1907, %1888
  %1911 = add nuw nsw i64 %1909, %1910
  %1912 = icmp eq i64 %1911, 2
  %1913 = zext i1 %1912 to i8
  store i8 %1913, i8* %63, align 1
  %1914 = add i64 %1881, -48
  %1915 = add i64 %1817, 62
  store i64 %1915, i64* %PC.i, align 8
  %1916 = inttoptr i64 %1914 to i32*
  %1917 = load i32, i32* %1916, align 4
  %1918 = sext i32 %1917 to i64
  store i64 %1918, i64* %RCX.i1817, align 8
  %1919 = shl nsw i64 %1918, 3
  %1920 = add i64 %1919, %1889
  %1921 = add i64 %1817, 67
  store i64 %1921, i64* %PC.i, align 8
  %1922 = load double, double* %230, align 1
  %1923 = inttoptr i64 %1920 to double*
  %1924 = load double, double* %1923, align 8
  %1925 = fmul double %1922, %1924
  store double %1925, double* %230, align 1
  %1926 = add i64 %1881, -72
  %1927 = add i64 %1817, 72
  store i64 %1927, i64* %PC.i, align 8
  %1928 = inttoptr i64 %1926 to double*
  %1929 = load double, double* %1928, align 8
  store double %1929, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %1930 = add i64 %1881, 96
  %1931 = add i64 %1817, 76
  store i64 %1931, i64* %PC.i, align 8
  %1932 = inttoptr i64 %1930 to i64*
  %1933 = load i64, i64* %1932, align 8
  store i64 %1933, i64* %RAX.i1872, align 8
  %1934 = add i64 %1817, 80
  store i64 %1934, i64* %PC.i, align 8
  %1935 = load i32, i32* %1884, align 4
  %1936 = sext i32 %1935 to i64
  store i64 %1936, i64* %RCX.i1817, align 8
  %1937 = shl nsw i64 %1936, 3
  %1938 = add i64 %1937, %1933
  %1939 = add i64 %1817, 85
  store i64 %1939, i64* %PC.i, align 8
  %1940 = inttoptr i64 %1938 to double*
  %1941 = load double, double* %1940, align 8
  %1942 = fdiv double %1929, %1941
  store double %1942, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1943 = load i64, i64* %RBP.i, align 8
  %1944 = add i64 %1943, -96
  %1945 = add i64 %1817, 89
  store i64 %1945, i64* %PC.i, align 8
  %1946 = inttoptr i64 %1944 to i64*
  %1947 = load i64, i64* %1946, align 8
  store i64 %1947, i64* %RAX.i1872, align 8
  %1948 = add i64 %1943, -100
  %1949 = add i64 %1817, 93
  store i64 %1949, i64* %PC.i, align 8
  %1950 = inttoptr i64 %1948 to i32*
  %1951 = load i32, i32* %1950, align 4
  %1952 = sext i32 %1951 to i64
  %1953 = mul nsw i64 %1952, 520
  store i64 %1953, i64* %RCX.i1817, align 8
  %1954 = lshr i64 %1953, 63
  %1955 = add i64 %1953, %1947
  store i64 %1955, i64* %RAX.i1872, align 8
  %1956 = icmp ult i64 %1955, %1947
  %1957 = icmp ult i64 %1955, %1953
  %1958 = or i1 %1956, %1957
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %39, align 1
  %1960 = trunc i64 %1955 to i32
  %1961 = and i32 %1960, 255
  %1962 = tail call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  store i8 %1965, i8* %46, align 1
  %1966 = xor i64 %1953, %1947
  %1967 = xor i64 %1966, %1955
  %1968 = lshr i64 %1967, 4
  %1969 = trunc i64 %1968 to i8
  %1970 = and i8 %1969, 1
  store i8 %1970, i8* %51, align 1
  %1971 = icmp eq i64 %1955, 0
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %54, align 1
  %1973 = lshr i64 %1955, 63
  %1974 = trunc i64 %1973 to i8
  store i8 %1974, i8* %57, align 1
  %1975 = lshr i64 %1947, 63
  %1976 = xor i64 %1973, %1975
  %1977 = xor i64 %1973, %1954
  %1978 = add nuw nsw i64 %1976, %1977
  %1979 = icmp eq i64 %1978, 2
  %1980 = zext i1 %1979 to i8
  store i8 %1980, i8* %63, align 1
  %1981 = add i64 %1943, -104
  %1982 = add i64 %1817, 107
  store i64 %1982, i64* %PC.i, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = sext i32 %1984 to i64
  store i64 %1985, i64* %RCX.i1817, align 8
  %1986 = shl nsw i64 %1985, 3
  %1987 = add i64 %1986, %1955
  %1988 = add i64 %1817, 112
  store i64 %1988, i64* %PC.i, align 8
  %1989 = inttoptr i64 %1987 to double*
  %1990 = load double, double* %1989, align 8
  %1991 = fmul double %1942, %1990
  store double %1991, double* %233, align 1
  store i64 0, i64* %234, align 1
  %1992 = load double, double* %230, align 1
  %1993 = fsub double %1992, %1991
  store double %1993, double* %230, align 1
  %1994 = add i64 %1943, 16
  %1995 = add i64 %1817, 120
  store i64 %1995, i64* %PC.i, align 8
  %1996 = inttoptr i64 %1994 to i64*
  %1997 = load i64, i64* %1996, align 8
  store i64 %1997, i64* %RAX.i1872, align 8
  %1998 = load i64, i64* %RBP.i, align 8
  %1999 = add i64 %1998, -100
  %2000 = add i64 %1817, 124
  store i64 %2000, i64* %PC.i, align 8
  %2001 = inttoptr i64 %1999 to i32*
  %2002 = load i32, i32* %2001, align 4
  %2003 = sext i32 %2002 to i64
  %2004 = mul nsw i64 %2003, 520
  store i64 %2004, i64* %RCX.i1817, align 8
  %2005 = lshr i64 %2004, 63
  %2006 = add i64 %2004, %1997
  store i64 %2006, i64* %RAX.i1872, align 8
  %2007 = icmp ult i64 %2006, %1997
  %2008 = icmp ult i64 %2006, %2004
  %2009 = or i1 %2007, %2008
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %39, align 1
  %2011 = trunc i64 %2006 to i32
  %2012 = and i32 %2011, 255
  %2013 = tail call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  store i8 %2016, i8* %46, align 1
  %2017 = xor i64 %2004, %1997
  %2018 = xor i64 %2017, %2006
  %2019 = lshr i64 %2018, 4
  %2020 = trunc i64 %2019 to i8
  %2021 = and i8 %2020, 1
  store i8 %2021, i8* %51, align 1
  %2022 = icmp eq i64 %2006, 0
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %54, align 1
  %2024 = lshr i64 %2006, 63
  %2025 = trunc i64 %2024 to i8
  store i8 %2025, i8* %57, align 1
  %2026 = lshr i64 %1997, 63
  %2027 = xor i64 %2024, %2026
  %2028 = xor i64 %2024, %2005
  %2029 = add nuw nsw i64 %2027, %2028
  %2030 = icmp eq i64 %2029, 2
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %63, align 1
  %2032 = add i64 %1998, -104
  %2033 = add i64 %1817, 138
  store i64 %2033, i64* %PC.i, align 8
  %2034 = inttoptr i64 %2032 to i32*
  %2035 = load i32, i32* %2034, align 4
  %2036 = sext i32 %2035 to i64
  store i64 %2036, i64* %RCX.i1817, align 8
  %2037 = shl nsw i64 %2036, 3
  %2038 = add i64 %2037, %2006
  %2039 = add i64 %1817, 143
  store i64 %2039, i64* %PC.i, align 8
  %2040 = inttoptr i64 %2038 to double*
  store double %1993, double* %2040, align 8
  %2041 = load i64, i64* %RBP.i, align 8
  %2042 = add i64 %2041, 72
  %2043 = load i64, i64* %PC.i, align 8
  %2044 = add i64 %2043, 4
  store i64 %2044, i64* %PC.i, align 8
  %2045 = inttoptr i64 %2042 to i64*
  %2046 = load i64, i64* %2045, align 8
  store i64 %2046, i64* %RAX.i1872, align 8
  %2047 = add i64 %2041, -48
  %2048 = add i64 %2043, 8
  store i64 %2048, i64* %PC.i, align 8
  %2049 = inttoptr i64 %2047 to i32*
  %2050 = load i32, i32* %2049, align 4
  %2051 = sext i32 %2050 to i64
  store i64 %2051, i64* %RCX.i1817, align 8
  %2052 = shl nsw i64 %2051, 3
  %2053 = add i64 %2052, %2046
  %2054 = add i64 %2043, 13
  store i64 %2054, i64* %PC.i, align 8
  %2055 = inttoptr i64 %2053 to double*
  %2056 = load double, double* %2055, align 8
  store double %2056, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %2057 = add i64 %2041, 80
  %2058 = add i64 %2043, 17
  store i64 %2058, i64* %PC.i, align 8
  %2059 = inttoptr i64 %2057 to i64*
  %2060 = load i64, i64* %2059, align 8
  store i64 %2060, i64* %RAX.i1872, align 8
  %2061 = add i64 %2043, 21
  store i64 %2061, i64* %PC.i, align 8
  %2062 = load i32, i32* %2049, align 4
  %2063 = sext i32 %2062 to i64
  store i64 %2063, i64* %RCX.i1817, align 8
  %2064 = shl nsw i64 %2063, 3
  %2065 = add i64 %2064, %2060
  %2066 = add i64 %2043, 26
  store i64 %2066, i64* %PC.i, align 8
  %2067 = inttoptr i64 %2065 to double*
  %2068 = load double, double* %2067, align 8
  %2069 = fdiv double %2056, %2068
  store double %2069, double* %230, align 1
  store i64 0, i64* %231, align 1
  %2070 = add i64 %2041, 48
  %2071 = add i64 %2043, 30
  store i64 %2071, i64* %PC.i, align 8
  %2072 = inttoptr i64 %2070 to i64*
  %2073 = load i64, i64* %2072, align 8
  store i64 %2073, i64* %RAX.i1872, align 8
  %2074 = add i64 %2041, -100
  %2075 = add i64 %2043, 34
  store i64 %2075, i64* %PC.i, align 8
  %2076 = inttoptr i64 %2074 to i32*
  %2077 = load i32, i32* %2076, align 4
  %2078 = sext i32 %2077 to i64
  %2079 = mul nsw i64 %2078, 33800
  store i64 %2079, i64* %RCX.i1817, align 8
  %2080 = lshr i64 %2079, 63
  %2081 = add i64 %2079, %2073
  store i64 %2081, i64* %RAX.i1872, align 8
  %2082 = icmp ult i64 %2081, %2073
  %2083 = icmp ult i64 %2081, %2079
  %2084 = or i1 %2082, %2083
  %2085 = zext i1 %2084 to i8
  store i8 %2085, i8* %39, align 1
  %2086 = trunc i64 %2081 to i32
  %2087 = and i32 %2086, 255
  %2088 = tail call i32 @llvm.ctpop.i32(i32 %2087)
  %2089 = trunc i32 %2088 to i8
  %2090 = and i8 %2089, 1
  %2091 = xor i8 %2090, 1
  store i8 %2091, i8* %46, align 1
  %2092 = xor i64 %2079, %2073
  %2093 = xor i64 %2092, %2081
  %2094 = lshr i64 %2093, 4
  %2095 = trunc i64 %2094 to i8
  %2096 = and i8 %2095, 1
  store i8 %2096, i8* %51, align 1
  %2097 = icmp eq i64 %2081, 0
  %2098 = zext i1 %2097 to i8
  store i8 %2098, i8* %54, align 1
  %2099 = lshr i64 %2081, 63
  %2100 = trunc i64 %2099 to i8
  store i8 %2100, i8* %57, align 1
  %2101 = lshr i64 %2073, 63
  %2102 = xor i64 %2099, %2101
  %2103 = xor i64 %2099, %2080
  %2104 = add nuw nsw i64 %2102, %2103
  %2105 = icmp eq i64 %2104, 2
  %2106 = zext i1 %2105 to i8
  store i8 %2106, i8* %63, align 1
  %2107 = load i64, i64* %RBP.i, align 8
  %2108 = add i64 %2107, -104
  %2109 = add i64 %2043, 48
  store i64 %2109, i64* %PC.i, align 8
  %2110 = inttoptr i64 %2108 to i32*
  %2111 = load i32, i32* %2110, align 4
  %2112 = sext i32 %2111 to i64
  %2113 = mul nsw i64 %2112, 520
  store i64 %2113, i64* %RCX.i1817, align 8
  %2114 = lshr i64 %2113, 63
  %2115 = add i64 %2113, %2081
  store i64 %2115, i64* %RAX.i1872, align 8
  %2116 = icmp ult i64 %2115, %2081
  %2117 = icmp ult i64 %2115, %2113
  %2118 = or i1 %2116, %2117
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %39, align 1
  %2120 = trunc i64 %2115 to i32
  %2121 = and i32 %2120, 255
  %2122 = tail call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  store i8 %2125, i8* %46, align 1
  %2126 = xor i64 %2113, %2081
  %2127 = xor i64 %2126, %2115
  %2128 = lshr i64 %2127, 4
  %2129 = trunc i64 %2128 to i8
  %2130 = and i8 %2129, 1
  store i8 %2130, i8* %51, align 1
  %2131 = icmp eq i64 %2115, 0
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %54, align 1
  %2133 = lshr i64 %2115, 63
  %2134 = trunc i64 %2133 to i8
  store i8 %2134, i8* %57, align 1
  %2135 = xor i64 %2133, %2099
  %2136 = xor i64 %2133, %2114
  %2137 = add nuw nsw i64 %2135, %2136
  %2138 = icmp eq i64 %2137, 2
  %2139 = zext i1 %2138 to i8
  store i8 %2139, i8* %63, align 1
  %2140 = add i64 %2107, -48
  %2141 = add i64 %2043, 62
  store i64 %2141, i64* %PC.i, align 8
  %2142 = inttoptr i64 %2140 to i32*
  %2143 = load i32, i32* %2142, align 4
  %2144 = sext i32 %2143 to i64
  store i64 %2144, i64* %RCX.i1817, align 8
  %2145 = shl nsw i64 %2144, 3
  %2146 = add i64 %2145, %2115
  %2147 = add i64 %2043, 67
  store i64 %2147, i64* %PC.i, align 8
  %2148 = load double, double* %230, align 1
  %2149 = inttoptr i64 %2146 to double*
  %2150 = load double, double* %2149, align 8
  %2151 = fmul double %2148, %2150
  store double %2151, double* %230, align 1
  %2152 = add i64 %2107, -64
  %2153 = add i64 %2043, 72
  store i64 %2153, i64* %PC.i, align 8
  %2154 = inttoptr i64 %2152 to double*
  %2155 = load double, double* %2154, align 8
  store double %2155, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %2156 = add i64 %2107, 64
  %2157 = add i64 %2043, 76
  store i64 %2157, i64* %PC.i, align 8
  %2158 = inttoptr i64 %2156 to i64*
  %2159 = load i64, i64* %2158, align 8
  store i64 %2159, i64* %RAX.i1872, align 8
  %2160 = add i64 %2107, -100
  %2161 = add i64 %2043, 80
  store i64 %2161, i64* %PC.i, align 8
  %2162 = inttoptr i64 %2160 to i32*
  %2163 = load i32, i32* %2162, align 4
  %2164 = sext i32 %2163 to i64
  store i64 %2164, i64* %RCX.i1817, align 8
  %2165 = shl nsw i64 %2164, 3
  %2166 = add i64 %2165, %2159
  %2167 = add i64 %2043, 85
  store i64 %2167, i64* %PC.i, align 8
  %2168 = inttoptr i64 %2166 to double*
  %2169 = load double, double* %2168, align 8
  %2170 = fmul double %2155, %2169
  store double %2170, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2171 = load i64, i64* %RBP.i, align 8
  %2172 = add i64 %2171, 80
  %2173 = add i64 %2043, 89
  store i64 %2173, i64* %PC.i, align 8
  %2174 = inttoptr i64 %2172 to i64*
  %2175 = load i64, i64* %2174, align 8
  store i64 %2175, i64* %RAX.i1872, align 8
  %2176 = add i64 %2171, -48
  %2177 = add i64 %2043, 93
  store i64 %2177, i64* %PC.i, align 8
  %2178 = inttoptr i64 %2176 to i32*
  %2179 = load i32, i32* %2178, align 4
  %2180 = sext i32 %2179 to i64
  store i64 %2180, i64* %RCX.i1817, align 8
  %2181 = shl nsw i64 %2180, 3
  %2182 = add i64 %2181, %2175
  %2183 = add i64 %2043, 98
  store i64 %2183, i64* %PC.i, align 8
  %2184 = inttoptr i64 %2182 to double*
  %2185 = load double, double* %2184, align 8
  %2186 = fdiv double %2170, %2185
  store double %2186, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2187 = add i64 %2171, 16
  %2188 = add i64 %2043, 102
  store i64 %2188, i64* %PC.i, align 8
  %2189 = inttoptr i64 %2187 to i64*
  %2190 = load i64, i64* %2189, align 8
  store i64 %2190, i64* %RAX.i1872, align 8
  %2191 = add i64 %2171, -100
  %2192 = add i64 %2043, 106
  store i64 %2192, i64* %PC.i, align 8
  %2193 = inttoptr i64 %2191 to i32*
  %2194 = load i32, i32* %2193, align 4
  %2195 = sext i32 %2194 to i64
  %2196 = mul nsw i64 %2195, 520
  store i64 %2196, i64* %RCX.i1817, align 8
  %2197 = lshr i64 %2196, 63
  %2198 = add i64 %2196, %2190
  store i64 %2198, i64* %RAX.i1872, align 8
  %2199 = icmp ult i64 %2198, %2190
  %2200 = icmp ult i64 %2198, %2196
  %2201 = or i1 %2199, %2200
  %2202 = zext i1 %2201 to i8
  store i8 %2202, i8* %39, align 1
  %2203 = trunc i64 %2198 to i32
  %2204 = and i32 %2203, 255
  %2205 = tail call i32 @llvm.ctpop.i32(i32 %2204)
  %2206 = trunc i32 %2205 to i8
  %2207 = and i8 %2206, 1
  %2208 = xor i8 %2207, 1
  store i8 %2208, i8* %46, align 1
  %2209 = xor i64 %2196, %2190
  %2210 = xor i64 %2209, %2198
  %2211 = lshr i64 %2210, 4
  %2212 = trunc i64 %2211 to i8
  %2213 = and i8 %2212, 1
  store i8 %2213, i8* %51, align 1
  %2214 = icmp eq i64 %2198, 0
  %2215 = zext i1 %2214 to i8
  store i8 %2215, i8* %54, align 1
  %2216 = lshr i64 %2198, 63
  %2217 = trunc i64 %2216 to i8
  store i8 %2217, i8* %57, align 1
  %2218 = lshr i64 %2190, 63
  %2219 = xor i64 %2216, %2218
  %2220 = xor i64 %2216, %2197
  %2221 = add nuw nsw i64 %2219, %2220
  %2222 = icmp eq i64 %2221, 2
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %63, align 1
  %2224 = add i64 %2171, -104
  %2225 = add i64 %2043, 120
  store i64 %2225, i64* %PC.i, align 8
  %2226 = inttoptr i64 %2224 to i32*
  %2227 = load i32, i32* %2226, align 4
  %2228 = sext i32 %2227 to i64
  store i64 %2228, i64* %RCX.i1817, align 8
  %2229 = shl nsw i64 %2228, 3
  %2230 = add i64 %2229, %2198
  %2231 = add i64 %2043, 125
  store i64 %2231, i64* %PC.i, align 8
  %2232 = inttoptr i64 %2230 to double*
  %2233 = load double, double* %2232, align 8
  %2234 = fmul double %2186, %2233
  store double %2234, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2235 = load double, double* %230, align 1
  %2236 = fadd double %2235, %2234
  store double %2236, double* %230, align 1
  %2237 = load i64, i64* %RBP.i, align 8
  %2238 = add i64 %2237, -64
  %2239 = add i64 %2043, 134
  store i64 %2239, i64* %PC.i, align 8
  %2240 = inttoptr i64 %2238 to double*
  %2241 = load double, double* %2240, align 8
  store double %2241, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %2242 = add i64 %2237, 56
  %2243 = add i64 %2043, 138
  store i64 %2243, i64* %PC.i, align 8
  %2244 = inttoptr i64 %2242 to i64*
  %2245 = load i64, i64* %2244, align 8
  store i64 %2245, i64* %RAX.i1872, align 8
  %2246 = add i64 %2237, -100
  %2247 = add i64 %2043, 142
  store i64 %2247, i64* %PC.i, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = sext i32 %2249 to i64
  store i64 %2250, i64* %RCX.i1817, align 8
  %2251 = shl nsw i64 %2250, 3
  %2252 = add i64 %2251, %2245
  %2253 = add i64 %2043, 147
  store i64 %2253, i64* %PC.i, align 8
  %2254 = inttoptr i64 %2252 to double*
  %2255 = load double, double* %2254, align 8
  %2256 = fmul double %2241, %2255
  store double %2256, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2257 = add i64 %2237, 80
  %2258 = add i64 %2043, 151
  store i64 %2258, i64* %PC.i, align 8
  %2259 = inttoptr i64 %2257 to i64*
  %2260 = load i64, i64* %2259, align 8
  store i64 %2260, i64* %RAX.i1872, align 8
  %2261 = add i64 %2237, -48
  %2262 = add i64 %2043, 155
  store i64 %2262, i64* %PC.i, align 8
  %2263 = inttoptr i64 %2261 to i32*
  %2264 = load i32, i32* %2263, align 4
  %2265 = sext i32 %2264 to i64
  store i64 %2265, i64* %RCX.i1817, align 8
  %2266 = shl nsw i64 %2265, 3
  %2267 = add i64 %2266, %2260
  %2268 = add i64 %2043, 160
  store i64 %2268, i64* %PC.i, align 8
  %2269 = inttoptr i64 %2267 to double*
  %2270 = load double, double* %2269, align 8
  %2271 = fdiv double %2256, %2270
  store double %2271, double* %233, align 1
  store i64 0, i64* %234, align 1
  %2272 = add i64 %2237, 24
  %2273 = add i64 %2043, 164
  store i64 %2273, i64* %PC.i, align 8
  %2274 = inttoptr i64 %2272 to i64*
  %2275 = load i64, i64* %2274, align 8
  store i64 %2275, i64* %RAX.i1872, align 8
  %2276 = add i64 %2043, 168
  store i64 %2276, i64* %PC.i, align 8
  %2277 = load i32, i32* %2248, align 4
  %2278 = sext i32 %2277 to i64
  %2279 = mul nsw i64 %2278, 33800
  store i64 %2279, i64* %RCX.i1817, align 8
  %2280 = lshr i64 %2279, 63
  %2281 = add i64 %2279, %2275
  store i64 %2281, i64* %RAX.i1872, align 8
  %2282 = icmp ult i64 %2281, %2275
  %2283 = icmp ult i64 %2281, %2279
  %2284 = or i1 %2282, %2283
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %39, align 1
  %2286 = trunc i64 %2281 to i32
  %2287 = and i32 %2286, 255
  %2288 = tail call i32 @llvm.ctpop.i32(i32 %2287)
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  %2291 = xor i8 %2290, 1
  store i8 %2291, i8* %46, align 1
  %2292 = xor i64 %2279, %2275
  %2293 = xor i64 %2292, %2281
  %2294 = lshr i64 %2293, 4
  %2295 = trunc i64 %2294 to i8
  %2296 = and i8 %2295, 1
  store i8 %2296, i8* %51, align 1
  %2297 = icmp eq i64 %2281, 0
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %54, align 1
  %2299 = lshr i64 %2281, 63
  %2300 = trunc i64 %2299 to i8
  store i8 %2300, i8* %57, align 1
  %2301 = lshr i64 %2275, 63
  %2302 = xor i64 %2299, %2301
  %2303 = xor i64 %2299, %2280
  %2304 = add nuw nsw i64 %2302, %2303
  %2305 = icmp eq i64 %2304, 2
  %2306 = zext i1 %2305 to i8
  store i8 %2306, i8* %63, align 1
  %2307 = load i64, i64* %RBP.i, align 8
  %2308 = add i64 %2307, -104
  %2309 = add i64 %2043, 182
  store i64 %2309, i64* %PC.i, align 8
  %2310 = inttoptr i64 %2308 to i32*
  %2311 = load i32, i32* %2310, align 4
  %2312 = sext i32 %2311 to i64
  %2313 = mul nsw i64 %2312, 520
  store i64 %2313, i64* %RCX.i1817, align 8
  %2314 = lshr i64 %2313, 63
  %2315 = add i64 %2313, %2281
  store i64 %2315, i64* %RAX.i1872, align 8
  %2316 = icmp ult i64 %2315, %2281
  %2317 = icmp ult i64 %2315, %2313
  %2318 = or i1 %2316, %2317
  %2319 = zext i1 %2318 to i8
  store i8 %2319, i8* %39, align 1
  %2320 = trunc i64 %2315 to i32
  %2321 = and i32 %2320, 255
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %46, align 1
  %2326 = xor i64 %2313, %2281
  %2327 = xor i64 %2326, %2315
  %2328 = lshr i64 %2327, 4
  %2329 = trunc i64 %2328 to i8
  %2330 = and i8 %2329, 1
  store i8 %2330, i8* %51, align 1
  %2331 = icmp eq i64 %2315, 0
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %54, align 1
  %2333 = lshr i64 %2315, 63
  %2334 = trunc i64 %2333 to i8
  store i8 %2334, i8* %57, align 1
  %2335 = xor i64 %2333, %2299
  %2336 = xor i64 %2333, %2314
  %2337 = add nuw nsw i64 %2335, %2336
  %2338 = icmp eq i64 %2337, 2
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %63, align 1
  %2340 = add i64 %2307, -48
  %2341 = add i64 %2043, 196
  store i64 %2341, i64* %PC.i, align 8
  %2342 = inttoptr i64 %2340 to i32*
  %2343 = load i32, i32* %2342, align 4
  %2344 = sext i32 %2343 to i64
  store i64 %2344, i64* %RCX.i1817, align 8
  %2345 = shl nsw i64 %2344, 3
  %2346 = add i64 %2345, %2315
  %2347 = add i64 %2043, 201
  store i64 %2347, i64* %PC.i, align 8
  %2348 = load double, double* %233, align 1
  %2349 = inttoptr i64 %2346 to double*
  %2350 = load double, double* %2349, align 8
  %2351 = fmul double %2348, %2350
  store double %2351, double* %233, align 1
  %2352 = load double, double* %230, align 1
  %2353 = fsub double %2352, %2351
  store double %2353, double* %230, align 1
  %2354 = add i64 %2307, 48
  %2355 = add i64 %2043, 209
  store i64 %2355, i64* %PC.i, align 8
  %2356 = inttoptr i64 %2354 to i64*
  %2357 = load i64, i64* %2356, align 8
  store i64 %2357, i64* %RAX.i1872, align 8
  %2358 = add i64 %2307, -100
  %2359 = add i64 %2043, 213
  store i64 %2359, i64* %PC.i, align 8
  %2360 = inttoptr i64 %2358 to i32*
  %2361 = load i32, i32* %2360, align 4
  %2362 = sext i32 %2361 to i64
  %2363 = mul nsw i64 %2362, 33800
  store i64 %2363, i64* %RCX.i1817, align 8
  %2364 = lshr i64 %2363, 63
  %2365 = add i64 %2363, %2357
  store i64 %2365, i64* %RAX.i1872, align 8
  %2366 = icmp ult i64 %2365, %2357
  %2367 = icmp ult i64 %2365, %2363
  %2368 = or i1 %2366, %2367
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %39, align 1
  %2370 = trunc i64 %2365 to i32
  %2371 = and i32 %2370, 255
  %2372 = tail call i32 @llvm.ctpop.i32(i32 %2371)
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = xor i8 %2374, 1
  store i8 %2375, i8* %46, align 1
  %2376 = xor i64 %2363, %2357
  %2377 = xor i64 %2376, %2365
  %2378 = lshr i64 %2377, 4
  %2379 = trunc i64 %2378 to i8
  %2380 = and i8 %2379, 1
  store i8 %2380, i8* %51, align 1
  %2381 = icmp eq i64 %2365, 0
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %54, align 1
  %2383 = lshr i64 %2365, 63
  %2384 = trunc i64 %2383 to i8
  store i8 %2384, i8* %57, align 1
  %2385 = lshr i64 %2357, 63
  %2386 = xor i64 %2383, %2385
  %2387 = xor i64 %2383, %2364
  %2388 = add nuw nsw i64 %2386, %2387
  %2389 = icmp eq i64 %2388, 2
  %2390 = zext i1 %2389 to i8
  store i8 %2390, i8* %63, align 1
  %2391 = load i64, i64* %RBP.i, align 8
  %2392 = add i64 %2391, -104
  %2393 = add i64 %2043, 227
  store i64 %2393, i64* %PC.i, align 8
  %2394 = inttoptr i64 %2392 to i32*
  %2395 = load i32, i32* %2394, align 4
  %2396 = sext i32 %2395 to i64
  %2397 = mul nsw i64 %2396, 520
  store i64 %2397, i64* %RCX.i1817, align 8
  %2398 = lshr i64 %2397, 63
  %2399 = add i64 %2397, %2365
  store i64 %2399, i64* %RAX.i1872, align 8
  %2400 = icmp ult i64 %2399, %2365
  %2401 = icmp ult i64 %2399, %2397
  %2402 = or i1 %2400, %2401
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %39, align 1
  %2404 = trunc i64 %2399 to i32
  %2405 = and i32 %2404, 255
  %2406 = tail call i32 @llvm.ctpop.i32(i32 %2405)
  %2407 = trunc i32 %2406 to i8
  %2408 = and i8 %2407, 1
  %2409 = xor i8 %2408, 1
  store i8 %2409, i8* %46, align 1
  %2410 = xor i64 %2397, %2365
  %2411 = xor i64 %2410, %2399
  %2412 = lshr i64 %2411, 4
  %2413 = trunc i64 %2412 to i8
  %2414 = and i8 %2413, 1
  store i8 %2414, i8* %51, align 1
  %2415 = icmp eq i64 %2399, 0
  %2416 = zext i1 %2415 to i8
  store i8 %2416, i8* %54, align 1
  %2417 = lshr i64 %2399, 63
  %2418 = trunc i64 %2417 to i8
  store i8 %2418, i8* %57, align 1
  %2419 = xor i64 %2417, %2383
  %2420 = xor i64 %2417, %2398
  %2421 = add nuw nsw i64 %2419, %2420
  %2422 = icmp eq i64 %2421, 2
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %63, align 1
  %2424 = add i64 %2391, -48
  %2425 = add i64 %2043, 241
  store i64 %2425, i64* %PC.i, align 8
  %2426 = inttoptr i64 %2424 to i32*
  %2427 = load i32, i32* %2426, align 4
  %2428 = sext i32 %2427 to i64
  store i64 %2428, i64* %RCX.i1817, align 8
  %2429 = shl nsw i64 %2428, 3
  %2430 = add i64 %2429, %2399
  %2431 = add i64 %2043, 246
  store i64 %2431, i64* %PC.i, align 8
  %2432 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2433 = load i64, i64* %2432, align 1
  %2434 = inttoptr i64 %2430 to i64*
  store i64 %2433, i64* %2434, align 8
  %2435 = load i64, i64* %RBP.i, align 8
  %2436 = add i64 %2435, 16
  %2437 = load i64, i64* %PC.i, align 8
  %2438 = add i64 %2437, 4
  store i64 %2438, i64* %PC.i, align 8
  %2439 = inttoptr i64 %2436 to i64*
  %2440 = load i64, i64* %2439, align 8
  store i64 %2440, i64* %RAX.i1872, align 8
  %2441 = add i64 %2435, -100
  %2442 = add i64 %2437, 8
  store i64 %2442, i64* %PC.i, align 8
  %2443 = inttoptr i64 %2441 to i32*
  %2444 = load i32, i32* %2443, align 4
  %2445 = sext i32 %2444 to i64
  %2446 = mul nsw i64 %2445, 520
  store i64 %2446, i64* %RCX.i1817, align 8
  %2447 = lshr i64 %2446, 63
  %2448 = add i64 %2446, %2440
  store i64 %2448, i64* %RAX.i1872, align 8
  %2449 = icmp ult i64 %2448, %2440
  %2450 = icmp ult i64 %2448, %2446
  %2451 = or i1 %2449, %2450
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %39, align 1
  %2453 = trunc i64 %2448 to i32
  %2454 = and i32 %2453, 255
  %2455 = tail call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  store i8 %2458, i8* %46, align 1
  %2459 = xor i64 %2446, %2440
  %2460 = xor i64 %2459, %2448
  %2461 = lshr i64 %2460, 4
  %2462 = trunc i64 %2461 to i8
  %2463 = and i8 %2462, 1
  store i8 %2463, i8* %51, align 1
  %2464 = icmp eq i64 %2448, 0
  %2465 = zext i1 %2464 to i8
  store i8 %2465, i8* %54, align 1
  %2466 = lshr i64 %2448, 63
  %2467 = trunc i64 %2466 to i8
  store i8 %2467, i8* %57, align 1
  %2468 = lshr i64 %2440, 63
  %2469 = xor i64 %2466, %2468
  %2470 = xor i64 %2466, %2447
  %2471 = add nuw nsw i64 %2469, %2470
  %2472 = icmp eq i64 %2471, 2
  %2473 = zext i1 %2472 to i8
  store i8 %2473, i8* %63, align 1
  %2474 = add i64 %2435, -104
  %2475 = add i64 %2437, 22
  store i64 %2475, i64* %PC.i, align 8
  %2476 = inttoptr i64 %2474 to i32*
  %2477 = load i32, i32* %2476, align 4
  %2478 = sext i32 %2477 to i64
  store i64 %2478, i64* %RCX.i1817, align 8
  %2479 = shl nsw i64 %2478, 3
  %2480 = add i64 %2479, %2448
  %2481 = add i64 %2437, 27
  store i64 %2481, i64* %PC.i, align 8
  %2482 = inttoptr i64 %2480 to i64*
  %2483 = load i64, i64* %2482, align 8
  %2484 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %2483, i64* %2484, align 1
  store double 0.000000e+00, double* %232, align 1
  %2485 = add i64 %2435, 24
  %2486 = add i64 %2437, 31
  store i64 %2486, i64* %PC.i, align 8
  %2487 = inttoptr i64 %2485 to i64*
  %2488 = load i64, i64* %2487, align 8
  store i64 %2488, i64* %RAX.i1872, align 8
  %2489 = add i64 %2437, 35
  store i64 %2489, i64* %PC.i, align 8
  %2490 = load i32, i32* %2443, align 4
  %2491 = sext i32 %2490 to i64
  %2492 = mul nsw i64 %2491, 33800
  store i64 %2492, i64* %RCX.i1817, align 8
  %2493 = lshr i64 %2492, 63
  %2494 = add i64 %2492, %2488
  store i64 %2494, i64* %RAX.i1872, align 8
  %2495 = icmp ult i64 %2494, %2488
  %2496 = icmp ult i64 %2494, %2492
  %2497 = or i1 %2495, %2496
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %39, align 1
  %2499 = trunc i64 %2494 to i32
  %2500 = and i32 %2499, 255
  %2501 = tail call i32 @llvm.ctpop.i32(i32 %2500)
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  %2504 = xor i8 %2503, 1
  store i8 %2504, i8* %46, align 1
  %2505 = xor i64 %2492, %2488
  %2506 = xor i64 %2505, %2494
  %2507 = lshr i64 %2506, 4
  %2508 = trunc i64 %2507 to i8
  %2509 = and i8 %2508, 1
  store i8 %2509, i8* %51, align 1
  %2510 = icmp eq i64 %2494, 0
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %54, align 1
  %2512 = lshr i64 %2494, 63
  %2513 = trunc i64 %2512 to i8
  store i8 %2513, i8* %57, align 1
  %2514 = lshr i64 %2488, 63
  %2515 = xor i64 %2512, %2514
  %2516 = xor i64 %2512, %2493
  %2517 = add nuw nsw i64 %2515, %2516
  %2518 = icmp eq i64 %2517, 2
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %63, align 1
  %2520 = load i64, i64* %RBP.i, align 8
  %2521 = add i64 %2520, -104
  %2522 = add i64 %2437, 49
  store i64 %2522, i64* %PC.i, align 8
  %2523 = inttoptr i64 %2521 to i32*
  %2524 = load i32, i32* %2523, align 4
  %2525 = sext i32 %2524 to i64
  %2526 = mul nsw i64 %2525, 520
  store i64 %2526, i64* %RCX.i1817, align 8
  %2527 = lshr i64 %2526, 63
  %2528 = add i64 %2526, %2494
  store i64 %2528, i64* %RAX.i1872, align 8
  %2529 = icmp ult i64 %2528, %2494
  %2530 = icmp ult i64 %2528, %2526
  %2531 = or i1 %2529, %2530
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %39, align 1
  %2533 = trunc i64 %2528 to i32
  %2534 = and i32 %2533, 255
  %2535 = tail call i32 @llvm.ctpop.i32(i32 %2534)
  %2536 = trunc i32 %2535 to i8
  %2537 = and i8 %2536, 1
  %2538 = xor i8 %2537, 1
  store i8 %2538, i8* %46, align 1
  %2539 = xor i64 %2526, %2494
  %2540 = xor i64 %2539, %2528
  %2541 = lshr i64 %2540, 4
  %2542 = trunc i64 %2541 to i8
  %2543 = and i8 %2542, 1
  store i8 %2543, i8* %51, align 1
  %2544 = icmp eq i64 %2528, 0
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %54, align 1
  %2546 = lshr i64 %2528, 63
  %2547 = trunc i64 %2546 to i8
  store i8 %2547, i8* %57, align 1
  %2548 = xor i64 %2546, %2512
  %2549 = xor i64 %2546, %2527
  %2550 = add nuw nsw i64 %2548, %2549
  %2551 = icmp eq i64 %2550, 2
  %2552 = zext i1 %2551 to i8
  store i8 %2552, i8* %63, align 1
  %2553 = add i64 %2520, -48
  %2554 = add i64 %2437, 63
  store i64 %2554, i64* %PC.i, align 8
  %2555 = inttoptr i64 %2553 to i32*
  %2556 = load i32, i32* %2555, align 4
  %2557 = sext i32 %2556 to i64
  store i64 %2557, i64* %RCX.i1817, align 8
  %2558 = shl nsw i64 %2557, 3
  %2559 = add i64 %2558, %2528
  %2560 = add i64 %2437, 68
  store i64 %2560, i64* %PC.i, align 8
  %2561 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %2562 = load i64, i64* %2561, align 1
  %2563 = inttoptr i64 %2559 to i64*
  store i64 %2562, i64* %2563, align 8
  %2564 = load i64, i64* %RBP.i, align 8
  %2565 = add i64 %2564, -108
  %2566 = load i64, i64* %PC.i, align 8
  %2567 = add i64 %2566, 7
  store i64 %2567, i64* %PC.i, align 8
  %2568 = inttoptr i64 %2565 to i32*
  store i32 0, i32* %2568, align 4
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_4019d2

block_.L_4019d2:                                  ; preds = %block_4019de, %block_.L_40174c
  %2569 = phi i64 [ %3753, %block_4019de ], [ %.pre3, %block_.L_40174c ]
  %2570 = load i64, i64* %RBP.i, align 8
  %2571 = add i64 %2570, -108
  %2572 = add i64 %2569, 3
  store i64 %2572, i64* %PC.i, align 8
  %2573 = inttoptr i64 %2571 to i32*
  %2574 = load i32, i32* %2573, align 4
  %2575 = zext i32 %2574 to i64
  store i64 %2575, i64* %RAX.i1872, align 8
  %2576 = add i64 %2570, -48
  %2577 = add i64 %2569, 6
  store i64 %2577, i64* %PC.i, align 8
  %2578 = inttoptr i64 %2576 to i32*
  %2579 = load i32, i32* %2578, align 4
  %2580 = sub i32 %2574, %2579
  %2581 = icmp ult i32 %2574, %2579
  %2582 = zext i1 %2581 to i8
  store i8 %2582, i8* %39, align 1
  %2583 = and i32 %2580, 255
  %2584 = tail call i32 @llvm.ctpop.i32(i32 %2583)
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  %2587 = xor i8 %2586, 1
  store i8 %2587, i8* %46, align 1
  %2588 = xor i32 %2579, %2574
  %2589 = xor i32 %2588, %2580
  %2590 = lshr i32 %2589, 4
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  store i8 %2592, i8* %51, align 1
  %2593 = icmp eq i32 %2580, 0
  %2594 = zext i1 %2593 to i8
  store i8 %2594, i8* %54, align 1
  %2595 = lshr i32 %2580, 31
  %2596 = trunc i32 %2595 to i8
  store i8 %2596, i8* %57, align 1
  %2597 = lshr i32 %2574, 31
  %2598 = lshr i32 %2579, 31
  %2599 = xor i32 %2598, %2597
  %2600 = xor i32 %2595, %2597
  %2601 = add nuw nsw i32 %2600, %2599
  %2602 = icmp eq i32 %2601, 2
  %2603 = zext i1 %2602 to i8
  store i8 %2603, i8* %63, align 1
  %2604 = icmp ne i8 %2596, 0
  %2605 = xor i1 %2604, %2602
  %.v6 = select i1 %2605, i64 12, i64 665
  %2606 = add i64 %2569, %.v6
  %2607 = add i64 %2570, 32
  %2608 = add i64 %2606, 4
  store i64 %2608, i64* %PC.i, align 8
  %2609 = inttoptr i64 %2607 to i64*
  %2610 = load i64, i64* %2609, align 8
  store i64 %2610, i64* %RAX.i1872, align 8
  %2611 = add i64 %2570, -100
  %2612 = add i64 %2606, 8
  store i64 %2612, i64* %PC.i, align 8
  %2613 = inttoptr i64 %2611 to i32*
  %2614 = load i32, i32* %2613, align 4
  %2615 = sext i32 %2614 to i64
  %2616 = mul nsw i64 %2615, 33800
  store i64 %2616, i64* %RCX.i1817, align 8
  %2617 = lshr i64 %2616, 63
  %2618 = add i64 %2616, %2610
  store i64 %2618, i64* %RAX.i1872, align 8
  %2619 = icmp ult i64 %2618, %2610
  %2620 = icmp ult i64 %2618, %2616
  %2621 = or i1 %2619, %2620
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %39, align 1
  %2623 = trunc i64 %2618 to i32
  %2624 = and i32 %2623, 255
  %2625 = tail call i32 @llvm.ctpop.i32(i32 %2624)
  %2626 = trunc i32 %2625 to i8
  %2627 = and i8 %2626, 1
  %2628 = xor i8 %2627, 1
  store i8 %2628, i8* %46, align 1
  %2629 = xor i64 %2616, %2610
  %2630 = xor i64 %2629, %2618
  %2631 = lshr i64 %2630, 4
  %2632 = trunc i64 %2631 to i8
  %2633 = and i8 %2632, 1
  store i8 %2633, i8* %51, align 1
  %2634 = icmp eq i64 %2618, 0
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %54, align 1
  %2636 = lshr i64 %2618, 63
  %2637 = trunc i64 %2636 to i8
  store i8 %2637, i8* %57, align 1
  %2638 = lshr i64 %2610, 63
  %2639 = xor i64 %2636, %2638
  %2640 = xor i64 %2636, %2617
  %2641 = add nuw nsw i64 %2639, %2640
  %2642 = icmp eq i64 %2641, 2
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %63, align 1
  %2644 = add i64 %2570, -52
  %2645 = add i64 %2606, 22
  store i64 %2645, i64* %PC.i, align 8
  %2646 = inttoptr i64 %2644 to i32*
  %2647 = load i32, i32* %2646, align 4
  %2648 = sext i32 %2647 to i64
  %2649 = mul nsw i64 %2648, 520
  store i64 %2649, i64* %RCX.i1817, align 8
  %2650 = lshr i64 %2649, 63
  %2651 = add i64 %2606, 32
  store i64 %2651, i64* %PC.i, align 8
  %2652 = add i64 %2649, %2618
  store i64 %2652, i64* %RAX.i1872, align 8
  %2653 = icmp ult i64 %2652, %2618
  %2654 = icmp ult i64 %2652, %2649
  %2655 = or i1 %2653, %2654
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %39, align 1
  %2657 = trunc i64 %2652 to i32
  %2658 = and i32 %2657, 255
  %2659 = tail call i32 @llvm.ctpop.i32(i32 %2658)
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  %2662 = xor i8 %2661, 1
  store i8 %2662, i8* %46, align 1
  %2663 = xor i64 %2649, %2618
  %2664 = xor i64 %2663, %2652
  %2665 = lshr i64 %2664, 4
  %2666 = trunc i64 %2665 to i8
  %2667 = and i8 %2666, 1
  store i8 %2667, i8* %51, align 1
  %2668 = icmp eq i64 %2652, 0
  %2669 = zext i1 %2668 to i8
  store i8 %2669, i8* %54, align 1
  %2670 = lshr i64 %2652, 63
  %2671 = trunc i64 %2670 to i8
  store i8 %2671, i8* %57, align 1
  %2672 = xor i64 %2670, %2636
  %2673 = xor i64 %2670, %2650
  %2674 = add nuw nsw i64 %2672, %2673
  %2675 = icmp eq i64 %2674, 2
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %63, align 1
  %2677 = load i64, i64* %RBP.i, align 8
  br i1 %2605, label %block_4019de, label %block_.L_401c6b

block_4019de:                                     ; preds = %block_.L_4019d2
  %2678 = add i64 %2677, -108
  %2679 = add i64 %2606, 36
  store i64 %2679, i64* %PC.i, align 8
  %2680 = inttoptr i64 %2678 to i32*
  %2681 = load i32, i32* %2680, align 4
  %2682 = sext i32 %2681 to i64
  store i64 %2682, i64* %RCX.i1817, align 8
  %2683 = shl nsw i64 %2682, 3
  %2684 = add i64 %2683, %2652
  %2685 = add i64 %2606, 41
  store i64 %2685, i64* %PC.i, align 8
  %2686 = inttoptr i64 %2684 to double*
  %2687 = load double, double* %2686, align 8
  store double %2687, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %2688 = add i64 %2677, -80
  %2689 = add i64 %2606, 45
  store i64 %2689, i64* %PC.i, align 8
  %2690 = inttoptr i64 %2688 to i64*
  %2691 = load i64, i64* %2690, align 8
  store i64 %2691, i64* %RAX.i1872, align 8
  %2692 = add i64 %2677, -100
  %2693 = add i64 %2606, 49
  store i64 %2693, i64* %PC.i, align 8
  %2694 = inttoptr i64 %2692 to i32*
  %2695 = load i32, i32* %2694, align 4
  %2696 = sext i32 %2695 to i64
  %2697 = mul nsw i64 %2696, 520
  store i64 %2697, i64* %RCX.i1817, align 8
  %2698 = lshr i64 %2697, 63
  %2699 = add i64 %2697, %2691
  store i64 %2699, i64* %RAX.i1872, align 8
  %2700 = icmp ult i64 %2699, %2691
  %2701 = icmp ult i64 %2699, %2697
  %2702 = or i1 %2700, %2701
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %39, align 1
  %2704 = trunc i64 %2699 to i32
  %2705 = and i32 %2704, 255
  %2706 = tail call i32 @llvm.ctpop.i32(i32 %2705)
  %2707 = trunc i32 %2706 to i8
  %2708 = and i8 %2707, 1
  %2709 = xor i8 %2708, 1
  store i8 %2709, i8* %46, align 1
  %2710 = xor i64 %2697, %2691
  %2711 = xor i64 %2710, %2699
  %2712 = lshr i64 %2711, 4
  %2713 = trunc i64 %2712 to i8
  %2714 = and i8 %2713, 1
  store i8 %2714, i8* %51, align 1
  %2715 = icmp eq i64 %2699, 0
  %2716 = zext i1 %2715 to i8
  store i8 %2716, i8* %54, align 1
  %2717 = lshr i64 %2699, 63
  %2718 = trunc i64 %2717 to i8
  store i8 %2718, i8* %57, align 1
  %2719 = lshr i64 %2691, 63
  %2720 = xor i64 %2717, %2719
  %2721 = xor i64 %2717, %2698
  %2722 = add nuw nsw i64 %2720, %2721
  %2723 = icmp eq i64 %2722, 2
  %2724 = zext i1 %2723 to i8
  store i8 %2724, i8* %63, align 1
  %2725 = add i64 %2606, 63
  store i64 %2725, i64* %PC.i, align 8
  %2726 = load i32, i32* %2680, align 4
  %2727 = sext i32 %2726 to i64
  store i64 %2727, i64* %RCX.i1817, align 8
  %2728 = shl nsw i64 %2727, 3
  %2729 = add i64 %2728, %2699
  %2730 = add i64 %2606, 68
  store i64 %2730, i64* %PC.i, align 8
  %2731 = inttoptr i64 %2729 to double*
  %2732 = load double, double* %2731, align 8
  %2733 = fsub double %2687, %2732
  store double %2733, double* %230, align 1
  store i64 0, i64* %231, align 1
  %2734 = load i64, i64* %RBP.i, align 8
  %2735 = add i64 %2734, 40
  %2736 = add i64 %2606, 72
  store i64 %2736, i64* %PC.i, align 8
  %2737 = inttoptr i64 %2735 to i64*
  %2738 = load i64, i64* %2737, align 8
  store i64 %2738, i64* %RAX.i1872, align 8
  %2739 = add i64 %2734, -100
  %2740 = add i64 %2606, 76
  store i64 %2740, i64* %PC.i, align 8
  %2741 = inttoptr i64 %2739 to i32*
  %2742 = load i32, i32* %2741, align 4
  %2743 = sext i32 %2742 to i64
  %2744 = mul nsw i64 %2743, 33800
  store i64 %2744, i64* %RCX.i1817, align 8
  %2745 = lshr i64 %2744, 63
  %2746 = add i64 %2744, %2738
  store i64 %2746, i64* %RAX.i1872, align 8
  %2747 = icmp ult i64 %2746, %2738
  %2748 = icmp ult i64 %2746, %2744
  %2749 = or i1 %2747, %2748
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %39, align 1
  %2751 = trunc i64 %2746 to i32
  %2752 = and i32 %2751, 255
  %2753 = tail call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  store i8 %2756, i8* %46, align 1
  %2757 = xor i64 %2744, %2738
  %2758 = xor i64 %2757, %2746
  %2759 = lshr i64 %2758, 4
  %2760 = trunc i64 %2759 to i8
  %2761 = and i8 %2760, 1
  store i8 %2761, i8* %51, align 1
  %2762 = icmp eq i64 %2746, 0
  %2763 = zext i1 %2762 to i8
  store i8 %2763, i8* %54, align 1
  %2764 = lshr i64 %2746, 63
  %2765 = trunc i64 %2764 to i8
  store i8 %2765, i8* %57, align 1
  %2766 = lshr i64 %2738, 63
  %2767 = xor i64 %2764, %2766
  %2768 = xor i64 %2764, %2745
  %2769 = add nuw nsw i64 %2767, %2768
  %2770 = icmp eq i64 %2769, 2
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %63, align 1
  %2772 = add i64 %2734, -52
  %2773 = add i64 %2606, 90
  store i64 %2773, i64* %PC.i, align 8
  %2774 = inttoptr i64 %2772 to i32*
  %2775 = load i32, i32* %2774, align 4
  %2776 = sext i32 %2775 to i64
  %2777 = mul nsw i64 %2776, 520
  store i64 %2777, i64* %RCX.i1817, align 8
  %2778 = lshr i64 %2777, 63
  %2779 = add i64 %2777, %2746
  store i64 %2779, i64* %RAX.i1872, align 8
  %2780 = icmp ult i64 %2779, %2746
  %2781 = icmp ult i64 %2779, %2777
  %2782 = or i1 %2780, %2781
  %2783 = zext i1 %2782 to i8
  store i8 %2783, i8* %39, align 1
  %2784 = trunc i64 %2779 to i32
  %2785 = and i32 %2784, 255
  %2786 = tail call i32 @llvm.ctpop.i32(i32 %2785)
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = xor i8 %2788, 1
  store i8 %2789, i8* %46, align 1
  %2790 = xor i64 %2777, %2746
  %2791 = xor i64 %2790, %2779
  %2792 = lshr i64 %2791, 4
  %2793 = trunc i64 %2792 to i8
  %2794 = and i8 %2793, 1
  store i8 %2794, i8* %51, align 1
  %2795 = icmp eq i64 %2779, 0
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %54, align 1
  %2797 = lshr i64 %2779, 63
  %2798 = trunc i64 %2797 to i8
  store i8 %2798, i8* %57, align 1
  %2799 = xor i64 %2797, %2764
  %2800 = xor i64 %2797, %2778
  %2801 = add nuw nsw i64 %2799, %2800
  %2802 = icmp eq i64 %2801, 2
  %2803 = zext i1 %2802 to i8
  store i8 %2803, i8* %63, align 1
  %2804 = load i64, i64* %RBP.i, align 8
  %2805 = add i64 %2804, -108
  %2806 = add i64 %2606, 103
  store i64 %2806, i64* %PC.i, align 8
  %2807 = inttoptr i64 %2805 to i32*
  %2808 = load i32, i32* %2807, align 4
  %2809 = add i32 %2808, 1
  %2810 = zext i32 %2809 to i64
  store i64 %2810, i64* %RDX.i1724, align 8
  %2811 = icmp eq i32 %2808, -1
  %2812 = icmp eq i32 %2809, 0
  %2813 = or i1 %2811, %2812
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %39, align 1
  %2815 = and i32 %2809, 255
  %2816 = tail call i32 @llvm.ctpop.i32(i32 %2815)
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  %2819 = xor i8 %2818, 1
  store i8 %2819, i8* %46, align 1
  %2820 = xor i32 %2808, %2809
  %2821 = lshr i32 %2820, 4
  %2822 = trunc i32 %2821 to i8
  %2823 = and i8 %2822, 1
  store i8 %2823, i8* %51, align 1
  %2824 = icmp eq i32 %2809, 0
  %2825 = zext i1 %2824 to i8
  store i8 %2825, i8* %54, align 1
  %2826 = lshr i32 %2809, 31
  %2827 = trunc i32 %2826 to i8
  store i8 %2827, i8* %57, align 1
  %2828 = lshr i32 %2808, 31
  %2829 = xor i32 %2826, %2828
  %2830 = add nuw nsw i32 %2829, %2826
  %2831 = icmp eq i32 %2830, 2
  %2832 = zext i1 %2831 to i8
  store i8 %2832, i8* %63, align 1
  %2833 = sext i32 %2809 to i64
  store i64 %2833, i64* %RCX.i1817, align 8
  %2834 = shl nsw i64 %2833, 3
  %2835 = add i64 %2834, %2779
  %2836 = add i64 %2606, 114
  store i64 %2836, i64* %PC.i, align 8
  %2837 = load double, double* %230, align 1
  %2838 = inttoptr i64 %2835 to double*
  %2839 = load double, double* %2838, align 8
  %2840 = fadd double %2837, %2839
  store double %2840, double* %230, align 1
  %2841 = add i64 %2804, 40
  %2842 = add i64 %2606, 118
  store i64 %2842, i64* %PC.i, align 8
  %2843 = inttoptr i64 %2841 to i64*
  %2844 = load i64, i64* %2843, align 8
  store i64 %2844, i64* %RAX.i1872, align 8
  %2845 = add i64 %2804, -100
  %2846 = add i64 %2606, 122
  store i64 %2846, i64* %PC.i, align 8
  %2847 = inttoptr i64 %2845 to i32*
  %2848 = load i32, i32* %2847, align 4
  %2849 = sext i32 %2848 to i64
  %2850 = mul nsw i64 %2849, 33800
  store i64 %2850, i64* %RCX.i1817, align 8
  %2851 = lshr i64 %2850, 63
  %2852 = add i64 %2850, %2844
  store i64 %2852, i64* %RAX.i1872, align 8
  %2853 = icmp ult i64 %2852, %2844
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
  %2863 = xor i64 %2850, %2844
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
  %2872 = lshr i64 %2844, 63
  %2873 = xor i64 %2870, %2872
  %2874 = xor i64 %2870, %2851
  %2875 = add nuw nsw i64 %2873, %2874
  %2876 = icmp eq i64 %2875, 2
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %63, align 1
  %2878 = load i64, i64* %RBP.i, align 8
  %2879 = add i64 %2878, -52
  %2880 = add i64 %2606, 136
  store i64 %2880, i64* %PC.i, align 8
  %2881 = inttoptr i64 %2879 to i32*
  %2882 = load i32, i32* %2881, align 4
  %2883 = sext i32 %2882 to i64
  %2884 = mul nsw i64 %2883, 520
  store i64 %2884, i64* %RCX.i1817, align 8
  %2885 = lshr i64 %2884, 63
  %2886 = add i64 %2884, %2852
  store i64 %2886, i64* %RAX.i1872, align 8
  %2887 = icmp ult i64 %2886, %2852
  %2888 = icmp ult i64 %2886, %2884
  %2889 = or i1 %2887, %2888
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %39, align 1
  %2891 = trunc i64 %2886 to i32
  %2892 = and i32 %2891, 255
  %2893 = tail call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  store i8 %2896, i8* %46, align 1
  %2897 = xor i64 %2884, %2852
  %2898 = xor i64 %2897, %2886
  %2899 = lshr i64 %2898, 4
  %2900 = trunc i64 %2899 to i8
  %2901 = and i8 %2900, 1
  store i8 %2901, i8* %51, align 1
  %2902 = icmp eq i64 %2886, 0
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %54, align 1
  %2904 = lshr i64 %2886, 63
  %2905 = trunc i64 %2904 to i8
  store i8 %2905, i8* %57, align 1
  %2906 = xor i64 %2904, %2870
  %2907 = xor i64 %2904, %2885
  %2908 = add nuw nsw i64 %2906, %2907
  %2909 = icmp eq i64 %2908, 2
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %63, align 1
  %2911 = add i64 %2878, -108
  %2912 = add i64 %2606, 150
  store i64 %2912, i64* %PC.i, align 8
  %2913 = inttoptr i64 %2911 to i32*
  %2914 = load i32, i32* %2913, align 4
  %2915 = sext i32 %2914 to i64
  store i64 %2915, i64* %RCX.i1817, align 8
  %2916 = shl nsw i64 %2915, 3
  %2917 = add i64 %2916, %2886
  %2918 = add i64 %2606, 155
  store i64 %2918, i64* %PC.i, align 8
  %2919 = load double, double* %230, align 1
  %2920 = inttoptr i64 %2917 to double*
  %2921 = load double, double* %2920, align 8
  %2922 = fsub double %2919, %2921
  store double %2922, double* %230, align 1
  %2923 = add i64 %2878, -96
  %2924 = add i64 %2606, 159
  store i64 %2924, i64* %PC.i, align 8
  %2925 = inttoptr i64 %2923 to i64*
  %2926 = load i64, i64* %2925, align 8
  store i64 %2926, i64* %RAX.i1872, align 8
  %2927 = add i64 %2878, -100
  %2928 = add i64 %2606, 163
  store i64 %2928, i64* %PC.i, align 8
  %2929 = inttoptr i64 %2927 to i32*
  %2930 = load i32, i32* %2929, align 4
  %2931 = sext i32 %2930 to i64
  %2932 = mul nsw i64 %2931, 520
  store i64 %2932, i64* %RCX.i1817, align 8
  %2933 = lshr i64 %2932, 63
  %2934 = add i64 %2932, %2926
  store i64 %2934, i64* %RAX.i1872, align 8
  %2935 = icmp ult i64 %2934, %2926
  %2936 = icmp ult i64 %2934, %2932
  %2937 = or i1 %2935, %2936
  %2938 = zext i1 %2937 to i8
  store i8 %2938, i8* %39, align 1
  %2939 = trunc i64 %2934 to i32
  %2940 = and i32 %2939, 255
  %2941 = tail call i32 @llvm.ctpop.i32(i32 %2940)
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  %2944 = xor i8 %2943, 1
  store i8 %2944, i8* %46, align 1
  %2945 = xor i64 %2932, %2926
  %2946 = xor i64 %2945, %2934
  %2947 = lshr i64 %2946, 4
  %2948 = trunc i64 %2947 to i8
  %2949 = and i8 %2948, 1
  store i8 %2949, i8* %51, align 1
  %2950 = icmp eq i64 %2934, 0
  %2951 = zext i1 %2950 to i8
  store i8 %2951, i8* %54, align 1
  %2952 = lshr i64 %2934, 63
  %2953 = trunc i64 %2952 to i8
  store i8 %2953, i8* %57, align 1
  %2954 = lshr i64 %2926, 63
  %2955 = xor i64 %2952, %2954
  %2956 = xor i64 %2952, %2933
  %2957 = add nuw nsw i64 %2955, %2956
  %2958 = icmp eq i64 %2957, 2
  %2959 = zext i1 %2958 to i8
  store i8 %2959, i8* %63, align 1
  %2960 = load i64, i64* %RBP.i, align 8
  %2961 = add i64 %2960, -104
  %2962 = add i64 %2606, 177
  store i64 %2962, i64* %PC.i, align 8
  %2963 = inttoptr i64 %2961 to i32*
  %2964 = load i32, i32* %2963, align 4
  %2965 = sext i32 %2964 to i64
  store i64 %2965, i64* %RCX.i1817, align 8
  %2966 = shl nsw i64 %2965, 3
  %2967 = add i64 %2966, %2934
  %2968 = add i64 %2606, 182
  store i64 %2968, i64* %PC.i, align 8
  %2969 = inttoptr i64 %2967 to double*
  store double %2922, double* %2969, align 8
  %2970 = load i64, i64* %RBP.i, align 8
  %2971 = add i64 %2970, 88
  %2972 = load i64, i64* %PC.i, align 8
  %2973 = add i64 %2972, 4
  store i64 %2973, i64* %PC.i, align 8
  %2974 = inttoptr i64 %2971 to i64*
  %2975 = load i64, i64* %2974, align 8
  store i64 %2975, i64* %RAX.i1872, align 8
  %2976 = add i64 %2970, -52
  %2977 = add i64 %2972, 8
  store i64 %2977, i64* %PC.i, align 8
  %2978 = inttoptr i64 %2976 to i32*
  %2979 = load i32, i32* %2978, align 4
  %2980 = sext i32 %2979 to i64
  store i64 %2980, i64* %RCX.i1817, align 8
  %2981 = shl nsw i64 %2980, 3
  %2982 = add i64 %2981, %2975
  %2983 = add i64 %2972, 13
  store i64 %2983, i64* %PC.i, align 8
  %2984 = inttoptr i64 %2982 to double*
  %2985 = load double, double* %2984, align 8
  store double %2985, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %2986 = add i64 %2970, 96
  %2987 = add i64 %2972, 17
  store i64 %2987, i64* %PC.i, align 8
  %2988 = inttoptr i64 %2986 to i64*
  %2989 = load i64, i64* %2988, align 8
  store i64 %2989, i64* %RAX.i1872, align 8
  %2990 = add i64 %2970, -104
  %2991 = add i64 %2972, 21
  store i64 %2991, i64* %PC.i, align 8
  %2992 = inttoptr i64 %2990 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = sext i32 %2993 to i64
  store i64 %2994, i64* %RCX.i1817, align 8
  %2995 = shl nsw i64 %2994, 3
  %2996 = add i64 %2995, %2989
  %2997 = add i64 %2972, 26
  store i64 %2997, i64* %PC.i, align 8
  %2998 = inttoptr i64 %2996 to double*
  %2999 = load double, double* %2998, align 8
  %3000 = fdiv double %2985, %2999
  store double %3000, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3001 = add i64 %2970, 24
  %3002 = add i64 %2972, 30
  store i64 %3002, i64* %PC.i, align 8
  %3003 = inttoptr i64 %3001 to i64*
  %3004 = load i64, i64* %3003, align 8
  store i64 %3004, i64* %RAX.i1872, align 8
  %3005 = add i64 %2970, -100
  %3006 = add i64 %2972, 34
  store i64 %3006, i64* %PC.i, align 8
  %3007 = inttoptr i64 %3005 to i32*
  %3008 = load i32, i32* %3007, align 4
  %3009 = sext i32 %3008 to i64
  %3010 = mul nsw i64 %3009, 33800
  store i64 %3010, i64* %RCX.i1817, align 8
  %3011 = lshr i64 %3010, 63
  %3012 = add i64 %3010, %3004
  store i64 %3012, i64* %RAX.i1872, align 8
  %3013 = icmp ult i64 %3012, %3004
  %3014 = icmp ult i64 %3012, %3010
  %3015 = or i1 %3013, %3014
  %3016 = zext i1 %3015 to i8
  store i8 %3016, i8* %39, align 1
  %3017 = trunc i64 %3012 to i32
  %3018 = and i32 %3017, 255
  %3019 = tail call i32 @llvm.ctpop.i32(i32 %3018)
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  %3022 = xor i8 %3021, 1
  store i8 %3022, i8* %46, align 1
  %3023 = xor i64 %3010, %3004
  %3024 = xor i64 %3023, %3012
  %3025 = lshr i64 %3024, 4
  %3026 = trunc i64 %3025 to i8
  %3027 = and i8 %3026, 1
  store i8 %3027, i8* %51, align 1
  %3028 = icmp eq i64 %3012, 0
  %3029 = zext i1 %3028 to i8
  store i8 %3029, i8* %54, align 1
  %3030 = lshr i64 %3012, 63
  %3031 = trunc i64 %3030 to i8
  store i8 %3031, i8* %57, align 1
  %3032 = lshr i64 %3004, 63
  %3033 = xor i64 %3030, %3032
  %3034 = xor i64 %3030, %3011
  %3035 = add nuw nsw i64 %3033, %3034
  %3036 = icmp eq i64 %3035, 2
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %63, align 1
  %3038 = load i64, i64* %RBP.i, align 8
  %3039 = add i64 %3038, -104
  %3040 = add i64 %2972, 48
  store i64 %3040, i64* %PC.i, align 8
  %3041 = inttoptr i64 %3039 to i32*
  %3042 = load i32, i32* %3041, align 4
  %3043 = sext i32 %3042 to i64
  %3044 = mul nsw i64 %3043, 520
  store i64 %3044, i64* %RCX.i1817, align 8
  %3045 = lshr i64 %3044, 63
  %3046 = add i64 %3044, %3012
  store i64 %3046, i64* %RAX.i1872, align 8
  %3047 = icmp ult i64 %3046, %3012
  %3048 = icmp ult i64 %3046, %3044
  %3049 = or i1 %3047, %3048
  %3050 = zext i1 %3049 to i8
  store i8 %3050, i8* %39, align 1
  %3051 = trunc i64 %3046 to i32
  %3052 = and i32 %3051, 255
  %3053 = tail call i32 @llvm.ctpop.i32(i32 %3052)
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  %3056 = xor i8 %3055, 1
  store i8 %3056, i8* %46, align 1
  %3057 = xor i64 %3044, %3012
  %3058 = xor i64 %3057, %3046
  %3059 = lshr i64 %3058, 4
  %3060 = trunc i64 %3059 to i8
  %3061 = and i8 %3060, 1
  store i8 %3061, i8* %51, align 1
  %3062 = icmp eq i64 %3046, 0
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %54, align 1
  %3064 = lshr i64 %3046, 63
  %3065 = trunc i64 %3064 to i8
  store i8 %3065, i8* %57, align 1
  %3066 = xor i64 %3064, %3030
  %3067 = xor i64 %3064, %3045
  %3068 = add nuw nsw i64 %3066, %3067
  %3069 = icmp eq i64 %3068, 2
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %63, align 1
  %3071 = add i64 %3038, -108
  %3072 = add i64 %2972, 62
  store i64 %3072, i64* %PC.i, align 8
  %3073 = inttoptr i64 %3071 to i32*
  %3074 = load i32, i32* %3073, align 4
  %3075 = sext i32 %3074 to i64
  store i64 %3075, i64* %RCX.i1817, align 8
  %3076 = shl nsw i64 %3075, 3
  %3077 = add i64 %3076, %3046
  %3078 = add i64 %2972, 67
  store i64 %3078, i64* %PC.i, align 8
  %3079 = load double, double* %230, align 1
  %3080 = inttoptr i64 %3077 to double*
  %3081 = load double, double* %3080, align 8
  %3082 = fmul double %3079, %3081
  store double %3082, double* %230, align 1
  %3083 = add i64 %3038, -72
  %3084 = add i64 %2972, 72
  store i64 %3084, i64* %PC.i, align 8
  %3085 = inttoptr i64 %3083 to double*
  %3086 = load double, double* %3085, align 8
  store double %3086, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %3087 = add i64 %3038, 96
  %3088 = add i64 %2972, 76
  store i64 %3088, i64* %PC.i, align 8
  %3089 = inttoptr i64 %3087 to i64*
  %3090 = load i64, i64* %3089, align 8
  store i64 %3090, i64* %RAX.i1872, align 8
  %3091 = add i64 %2972, 80
  store i64 %3091, i64* %PC.i, align 8
  %3092 = load i32, i32* %3041, align 4
  %3093 = sext i32 %3092 to i64
  store i64 %3093, i64* %RCX.i1817, align 8
  %3094 = shl nsw i64 %3093, 3
  %3095 = add i64 %3094, %3090
  %3096 = add i64 %2972, 85
  store i64 %3096, i64* %PC.i, align 8
  %3097 = inttoptr i64 %3095 to double*
  %3098 = load double, double* %3097, align 8
  %3099 = fdiv double %3086, %3098
  store double %3099, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3100 = load i64, i64* %RBP.i, align 8
  %3101 = add i64 %3100, -96
  %3102 = add i64 %2972, 89
  store i64 %3102, i64* %PC.i, align 8
  %3103 = inttoptr i64 %3101 to i64*
  %3104 = load i64, i64* %3103, align 8
  store i64 %3104, i64* %RAX.i1872, align 8
  %3105 = add i64 %3100, -100
  %3106 = add i64 %2972, 93
  store i64 %3106, i64* %PC.i, align 8
  %3107 = inttoptr i64 %3105 to i32*
  %3108 = load i32, i32* %3107, align 4
  %3109 = sext i32 %3108 to i64
  %3110 = mul nsw i64 %3109, 520
  store i64 %3110, i64* %RCX.i1817, align 8
  %3111 = lshr i64 %3110, 63
  %3112 = add i64 %3110, %3104
  store i64 %3112, i64* %RAX.i1872, align 8
  %3113 = icmp ult i64 %3112, %3104
  %3114 = icmp ult i64 %3112, %3110
  %3115 = or i1 %3113, %3114
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %39, align 1
  %3117 = trunc i64 %3112 to i32
  %3118 = and i32 %3117, 255
  %3119 = tail call i32 @llvm.ctpop.i32(i32 %3118)
  %3120 = trunc i32 %3119 to i8
  %3121 = and i8 %3120, 1
  %3122 = xor i8 %3121, 1
  store i8 %3122, i8* %46, align 1
  %3123 = xor i64 %3110, %3104
  %3124 = xor i64 %3123, %3112
  %3125 = lshr i64 %3124, 4
  %3126 = trunc i64 %3125 to i8
  %3127 = and i8 %3126, 1
  store i8 %3127, i8* %51, align 1
  %3128 = icmp eq i64 %3112, 0
  %3129 = zext i1 %3128 to i8
  store i8 %3129, i8* %54, align 1
  %3130 = lshr i64 %3112, 63
  %3131 = trunc i64 %3130 to i8
  store i8 %3131, i8* %57, align 1
  %3132 = lshr i64 %3104, 63
  %3133 = xor i64 %3130, %3132
  %3134 = xor i64 %3130, %3111
  %3135 = add nuw nsw i64 %3133, %3134
  %3136 = icmp eq i64 %3135, 2
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %63, align 1
  %3138 = add i64 %3100, -104
  %3139 = add i64 %2972, 107
  store i64 %3139, i64* %PC.i, align 8
  %3140 = inttoptr i64 %3138 to i32*
  %3141 = load i32, i32* %3140, align 4
  %3142 = sext i32 %3141 to i64
  store i64 %3142, i64* %RCX.i1817, align 8
  %3143 = shl nsw i64 %3142, 3
  %3144 = add i64 %3143, %3112
  %3145 = add i64 %2972, 112
  store i64 %3145, i64* %PC.i, align 8
  %3146 = inttoptr i64 %3144 to double*
  %3147 = load double, double* %3146, align 8
  %3148 = fmul double %3099, %3147
  store double %3148, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3149 = load double, double* %230, align 1
  %3150 = fsub double %3149, %3148
  store double %3150, double* %230, align 1
  %3151 = add i64 %3100, 16
  %3152 = add i64 %2972, 120
  store i64 %3152, i64* %PC.i, align 8
  %3153 = inttoptr i64 %3151 to i64*
  %3154 = load i64, i64* %3153, align 8
  store i64 %3154, i64* %RAX.i1872, align 8
  %3155 = load i64, i64* %RBP.i, align 8
  %3156 = add i64 %3155, -100
  %3157 = add i64 %2972, 124
  store i64 %3157, i64* %PC.i, align 8
  %3158 = inttoptr i64 %3156 to i32*
  %3159 = load i32, i32* %3158, align 4
  %3160 = sext i32 %3159 to i64
  %3161 = mul nsw i64 %3160, 520
  store i64 %3161, i64* %RCX.i1817, align 8
  %3162 = lshr i64 %3161, 63
  %3163 = add i64 %3161, %3154
  store i64 %3163, i64* %RAX.i1872, align 8
  %3164 = icmp ult i64 %3163, %3154
  %3165 = icmp ult i64 %3163, %3161
  %3166 = or i1 %3164, %3165
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %39, align 1
  %3168 = trunc i64 %3163 to i32
  %3169 = and i32 %3168, 255
  %3170 = tail call i32 @llvm.ctpop.i32(i32 %3169)
  %3171 = trunc i32 %3170 to i8
  %3172 = and i8 %3171, 1
  %3173 = xor i8 %3172, 1
  store i8 %3173, i8* %46, align 1
  %3174 = xor i64 %3161, %3154
  %3175 = xor i64 %3174, %3163
  %3176 = lshr i64 %3175, 4
  %3177 = trunc i64 %3176 to i8
  %3178 = and i8 %3177, 1
  store i8 %3178, i8* %51, align 1
  %3179 = icmp eq i64 %3163, 0
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %54, align 1
  %3181 = lshr i64 %3163, 63
  %3182 = trunc i64 %3181 to i8
  store i8 %3182, i8* %57, align 1
  %3183 = lshr i64 %3154, 63
  %3184 = xor i64 %3181, %3183
  %3185 = xor i64 %3181, %3162
  %3186 = add nuw nsw i64 %3184, %3185
  %3187 = icmp eq i64 %3186, 2
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %63, align 1
  %3189 = add i64 %3155, -104
  %3190 = add i64 %2972, 138
  store i64 %3190, i64* %PC.i, align 8
  %3191 = inttoptr i64 %3189 to i32*
  %3192 = load i32, i32* %3191, align 4
  %3193 = sext i32 %3192 to i64
  store i64 %3193, i64* %RCX.i1817, align 8
  %3194 = shl nsw i64 %3193, 3
  %3195 = add i64 %3194, %3163
  %3196 = add i64 %2972, 143
  store i64 %3196, i64* %PC.i, align 8
  %3197 = inttoptr i64 %3195 to double*
  store double %3150, double* %3197, align 8
  %3198 = load i64, i64* %RBP.i, align 8
  %3199 = add i64 %3198, 72
  %3200 = load i64, i64* %PC.i, align 8
  %3201 = add i64 %3200, 4
  store i64 %3201, i64* %PC.i, align 8
  %3202 = inttoptr i64 %3199 to i64*
  %3203 = load i64, i64* %3202, align 8
  store i64 %3203, i64* %RAX.i1872, align 8
  %3204 = add i64 %3198, -108
  %3205 = add i64 %3200, 8
  store i64 %3205, i64* %PC.i, align 8
  %3206 = inttoptr i64 %3204 to i32*
  %3207 = load i32, i32* %3206, align 4
  %3208 = sext i32 %3207 to i64
  store i64 %3208, i64* %RCX.i1817, align 8
  %3209 = shl nsw i64 %3208, 3
  %3210 = add i64 %3209, %3203
  %3211 = add i64 %3200, 13
  store i64 %3211, i64* %PC.i, align 8
  %3212 = inttoptr i64 %3210 to double*
  %3213 = load double, double* %3212, align 8
  store double %3213, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %3214 = add i64 %3198, 80
  %3215 = add i64 %3200, 17
  store i64 %3215, i64* %PC.i, align 8
  %3216 = inttoptr i64 %3214 to i64*
  %3217 = load i64, i64* %3216, align 8
  store i64 %3217, i64* %RAX.i1872, align 8
  %3218 = add i64 %3200, 21
  store i64 %3218, i64* %PC.i, align 8
  %3219 = load i32, i32* %3206, align 4
  %3220 = sext i32 %3219 to i64
  store i64 %3220, i64* %RCX.i1817, align 8
  %3221 = shl nsw i64 %3220, 3
  %3222 = add i64 %3221, %3217
  %3223 = add i64 %3200, 26
  store i64 %3223, i64* %PC.i, align 8
  %3224 = inttoptr i64 %3222 to double*
  %3225 = load double, double* %3224, align 8
  %3226 = fdiv double %3213, %3225
  store double %3226, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3227 = add i64 %3198, 48
  %3228 = add i64 %3200, 30
  store i64 %3228, i64* %PC.i, align 8
  %3229 = inttoptr i64 %3227 to i64*
  %3230 = load i64, i64* %3229, align 8
  store i64 %3230, i64* %RAX.i1872, align 8
  %3231 = add i64 %3198, -100
  %3232 = add i64 %3200, 34
  store i64 %3232, i64* %PC.i, align 8
  %3233 = inttoptr i64 %3231 to i32*
  %3234 = load i32, i32* %3233, align 4
  %3235 = sext i32 %3234 to i64
  %3236 = mul nsw i64 %3235, 33800
  store i64 %3236, i64* %RCX.i1817, align 8
  %3237 = lshr i64 %3236, 63
  %3238 = add i64 %3236, %3230
  store i64 %3238, i64* %RAX.i1872, align 8
  %3239 = icmp ult i64 %3238, %3230
  %3240 = icmp ult i64 %3238, %3236
  %3241 = or i1 %3239, %3240
  %3242 = zext i1 %3241 to i8
  store i8 %3242, i8* %39, align 1
  %3243 = trunc i64 %3238 to i32
  %3244 = and i32 %3243, 255
  %3245 = tail call i32 @llvm.ctpop.i32(i32 %3244)
  %3246 = trunc i32 %3245 to i8
  %3247 = and i8 %3246, 1
  %3248 = xor i8 %3247, 1
  store i8 %3248, i8* %46, align 1
  %3249 = xor i64 %3236, %3230
  %3250 = xor i64 %3249, %3238
  %3251 = lshr i64 %3250, 4
  %3252 = trunc i64 %3251 to i8
  %3253 = and i8 %3252, 1
  store i8 %3253, i8* %51, align 1
  %3254 = icmp eq i64 %3238, 0
  %3255 = zext i1 %3254 to i8
  store i8 %3255, i8* %54, align 1
  %3256 = lshr i64 %3238, 63
  %3257 = trunc i64 %3256 to i8
  store i8 %3257, i8* %57, align 1
  %3258 = lshr i64 %3230, 63
  %3259 = xor i64 %3256, %3258
  %3260 = xor i64 %3256, %3237
  %3261 = add nuw nsw i64 %3259, %3260
  %3262 = icmp eq i64 %3261, 2
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %63, align 1
  %3264 = load i64, i64* %RBP.i, align 8
  %3265 = add i64 %3264, -52
  %3266 = add i64 %3200, 48
  store i64 %3266, i64* %PC.i, align 8
  %3267 = inttoptr i64 %3265 to i32*
  %3268 = load i32, i32* %3267, align 4
  %3269 = sext i32 %3268 to i64
  %3270 = mul nsw i64 %3269, 520
  store i64 %3270, i64* %RCX.i1817, align 8
  %3271 = lshr i64 %3270, 63
  %3272 = add i64 %3270, %3238
  store i64 %3272, i64* %RAX.i1872, align 8
  %3273 = icmp ult i64 %3272, %3238
  %3274 = icmp ult i64 %3272, %3270
  %3275 = or i1 %3273, %3274
  %3276 = zext i1 %3275 to i8
  store i8 %3276, i8* %39, align 1
  %3277 = trunc i64 %3272 to i32
  %3278 = and i32 %3277, 255
  %3279 = tail call i32 @llvm.ctpop.i32(i32 %3278)
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  %3282 = xor i8 %3281, 1
  store i8 %3282, i8* %46, align 1
  %3283 = xor i64 %3270, %3238
  %3284 = xor i64 %3283, %3272
  %3285 = lshr i64 %3284, 4
  %3286 = trunc i64 %3285 to i8
  %3287 = and i8 %3286, 1
  store i8 %3287, i8* %51, align 1
  %3288 = icmp eq i64 %3272, 0
  %3289 = zext i1 %3288 to i8
  store i8 %3289, i8* %54, align 1
  %3290 = lshr i64 %3272, 63
  %3291 = trunc i64 %3290 to i8
  store i8 %3291, i8* %57, align 1
  %3292 = xor i64 %3290, %3256
  %3293 = xor i64 %3290, %3271
  %3294 = add nuw nsw i64 %3292, %3293
  %3295 = icmp eq i64 %3294, 2
  %3296 = zext i1 %3295 to i8
  store i8 %3296, i8* %63, align 1
  %3297 = add i64 %3264, -108
  %3298 = add i64 %3200, 62
  store i64 %3298, i64* %PC.i, align 8
  %3299 = inttoptr i64 %3297 to i32*
  %3300 = load i32, i32* %3299, align 4
  %3301 = sext i32 %3300 to i64
  store i64 %3301, i64* %RCX.i1817, align 8
  %3302 = shl nsw i64 %3301, 3
  %3303 = add i64 %3302, %3272
  %3304 = add i64 %3200, 67
  store i64 %3304, i64* %PC.i, align 8
  %3305 = load double, double* %230, align 1
  %3306 = inttoptr i64 %3303 to double*
  %3307 = load double, double* %3306, align 8
  %3308 = fmul double %3305, %3307
  store double %3308, double* %230, align 1
  %3309 = add i64 %3264, -64
  %3310 = add i64 %3200, 72
  store i64 %3310, i64* %PC.i, align 8
  %3311 = inttoptr i64 %3309 to double*
  %3312 = load double, double* %3311, align 8
  store double %3312, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %3313 = add i64 %3264, 64
  %3314 = add i64 %3200, 76
  store i64 %3314, i64* %PC.i, align 8
  %3315 = inttoptr i64 %3313 to i64*
  %3316 = load i64, i64* %3315, align 8
  store i64 %3316, i64* %RAX.i1872, align 8
  %3317 = add i64 %3264, -100
  %3318 = add i64 %3200, 80
  store i64 %3318, i64* %PC.i, align 8
  %3319 = inttoptr i64 %3317 to i32*
  %3320 = load i32, i32* %3319, align 4
  %3321 = sext i32 %3320 to i64
  store i64 %3321, i64* %RCX.i1817, align 8
  %3322 = shl nsw i64 %3321, 3
  %3323 = add i64 %3322, %3316
  %3324 = add i64 %3200, 85
  store i64 %3324, i64* %PC.i, align 8
  %3325 = inttoptr i64 %3323 to double*
  %3326 = load double, double* %3325, align 8
  %3327 = fmul double %3312, %3326
  store double %3327, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3328 = load i64, i64* %RBP.i, align 8
  %3329 = add i64 %3328, 80
  %3330 = add i64 %3200, 89
  store i64 %3330, i64* %PC.i, align 8
  %3331 = inttoptr i64 %3329 to i64*
  %3332 = load i64, i64* %3331, align 8
  store i64 %3332, i64* %RAX.i1872, align 8
  %3333 = add i64 %3328, -108
  %3334 = add i64 %3200, 93
  store i64 %3334, i64* %PC.i, align 8
  %3335 = inttoptr i64 %3333 to i32*
  %3336 = load i32, i32* %3335, align 4
  %3337 = sext i32 %3336 to i64
  store i64 %3337, i64* %RCX.i1817, align 8
  %3338 = shl nsw i64 %3337, 3
  %3339 = add i64 %3338, %3332
  %3340 = add i64 %3200, 98
  store i64 %3340, i64* %PC.i, align 8
  %3341 = inttoptr i64 %3339 to double*
  %3342 = load double, double* %3341, align 8
  %3343 = fdiv double %3327, %3342
  store double %3343, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3344 = add i64 %3328, 16
  %3345 = add i64 %3200, 102
  store i64 %3345, i64* %PC.i, align 8
  %3346 = inttoptr i64 %3344 to i64*
  %3347 = load i64, i64* %3346, align 8
  store i64 %3347, i64* %RAX.i1872, align 8
  %3348 = add i64 %3328, -100
  %3349 = add i64 %3200, 106
  store i64 %3349, i64* %PC.i, align 8
  %3350 = inttoptr i64 %3348 to i32*
  %3351 = load i32, i32* %3350, align 4
  %3352 = sext i32 %3351 to i64
  %3353 = mul nsw i64 %3352, 520
  store i64 %3353, i64* %RCX.i1817, align 8
  %3354 = lshr i64 %3353, 63
  %3355 = add i64 %3353, %3347
  store i64 %3355, i64* %RAX.i1872, align 8
  %3356 = icmp ult i64 %3355, %3347
  %3357 = icmp ult i64 %3355, %3353
  %3358 = or i1 %3356, %3357
  %3359 = zext i1 %3358 to i8
  store i8 %3359, i8* %39, align 1
  %3360 = trunc i64 %3355 to i32
  %3361 = and i32 %3360, 255
  %3362 = tail call i32 @llvm.ctpop.i32(i32 %3361)
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  %3365 = xor i8 %3364, 1
  store i8 %3365, i8* %46, align 1
  %3366 = xor i64 %3353, %3347
  %3367 = xor i64 %3366, %3355
  %3368 = lshr i64 %3367, 4
  %3369 = trunc i64 %3368 to i8
  %3370 = and i8 %3369, 1
  store i8 %3370, i8* %51, align 1
  %3371 = icmp eq i64 %3355, 0
  %3372 = zext i1 %3371 to i8
  store i8 %3372, i8* %54, align 1
  %3373 = lshr i64 %3355, 63
  %3374 = trunc i64 %3373 to i8
  store i8 %3374, i8* %57, align 1
  %3375 = lshr i64 %3347, 63
  %3376 = xor i64 %3373, %3375
  %3377 = xor i64 %3373, %3354
  %3378 = add nuw nsw i64 %3376, %3377
  %3379 = icmp eq i64 %3378, 2
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %63, align 1
  %3381 = add i64 %3328, -104
  %3382 = add i64 %3200, 120
  store i64 %3382, i64* %PC.i, align 8
  %3383 = inttoptr i64 %3381 to i32*
  %3384 = load i32, i32* %3383, align 4
  %3385 = sext i32 %3384 to i64
  store i64 %3385, i64* %RCX.i1817, align 8
  %3386 = shl nsw i64 %3385, 3
  %3387 = add i64 %3386, %3355
  %3388 = add i64 %3200, 125
  store i64 %3388, i64* %PC.i, align 8
  %3389 = inttoptr i64 %3387 to double*
  %3390 = load double, double* %3389, align 8
  %3391 = fmul double %3343, %3390
  store double %3391, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3392 = load double, double* %230, align 1
  %3393 = fadd double %3392, %3391
  store double %3393, double* %230, align 1
  %3394 = load i64, i64* %RBP.i, align 8
  %3395 = add i64 %3394, -64
  %3396 = add i64 %3200, 134
  store i64 %3396, i64* %PC.i, align 8
  %3397 = inttoptr i64 %3395 to double*
  %3398 = load double, double* %3397, align 8
  store double %3398, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %3399 = add i64 %3394, 56
  %3400 = add i64 %3200, 138
  store i64 %3400, i64* %PC.i, align 8
  %3401 = inttoptr i64 %3399 to i64*
  %3402 = load i64, i64* %3401, align 8
  store i64 %3402, i64* %RAX.i1872, align 8
  %3403 = add i64 %3394, -100
  %3404 = add i64 %3200, 142
  store i64 %3404, i64* %PC.i, align 8
  %3405 = inttoptr i64 %3403 to i32*
  %3406 = load i32, i32* %3405, align 4
  %3407 = sext i32 %3406 to i64
  store i64 %3407, i64* %RCX.i1817, align 8
  %3408 = shl nsw i64 %3407, 3
  %3409 = add i64 %3408, %3402
  %3410 = add i64 %3200, 147
  store i64 %3410, i64* %PC.i, align 8
  %3411 = inttoptr i64 %3409 to double*
  %3412 = load double, double* %3411, align 8
  %3413 = fmul double %3398, %3412
  store double %3413, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3414 = add i64 %3394, 80
  %3415 = add i64 %3200, 151
  store i64 %3415, i64* %PC.i, align 8
  %3416 = inttoptr i64 %3414 to i64*
  %3417 = load i64, i64* %3416, align 8
  store i64 %3417, i64* %RAX.i1872, align 8
  %3418 = add i64 %3394, -108
  %3419 = add i64 %3200, 155
  store i64 %3419, i64* %PC.i, align 8
  %3420 = inttoptr i64 %3418 to i32*
  %3421 = load i32, i32* %3420, align 4
  %3422 = sext i32 %3421 to i64
  store i64 %3422, i64* %RCX.i1817, align 8
  %3423 = shl nsw i64 %3422, 3
  %3424 = add i64 %3423, %3417
  %3425 = add i64 %3200, 160
  store i64 %3425, i64* %PC.i, align 8
  %3426 = inttoptr i64 %3424 to double*
  %3427 = load double, double* %3426, align 8
  %3428 = fdiv double %3413, %3427
  store double %3428, double* %233, align 1
  store i64 0, i64* %234, align 1
  %3429 = add i64 %3394, 24
  %3430 = add i64 %3200, 164
  store i64 %3430, i64* %PC.i, align 8
  %3431 = inttoptr i64 %3429 to i64*
  %3432 = load i64, i64* %3431, align 8
  store i64 %3432, i64* %RAX.i1872, align 8
  %3433 = add i64 %3200, 168
  store i64 %3433, i64* %PC.i, align 8
  %3434 = load i32, i32* %3405, align 4
  %3435 = sext i32 %3434 to i64
  %3436 = mul nsw i64 %3435, 33800
  store i64 %3436, i64* %RCX.i1817, align 8
  %3437 = lshr i64 %3436, 63
  %3438 = add i64 %3436, %3432
  store i64 %3438, i64* %RAX.i1872, align 8
  %3439 = icmp ult i64 %3438, %3432
  %3440 = icmp ult i64 %3438, %3436
  %3441 = or i1 %3439, %3440
  %3442 = zext i1 %3441 to i8
  store i8 %3442, i8* %39, align 1
  %3443 = trunc i64 %3438 to i32
  %3444 = and i32 %3443, 255
  %3445 = tail call i32 @llvm.ctpop.i32(i32 %3444)
  %3446 = trunc i32 %3445 to i8
  %3447 = and i8 %3446, 1
  %3448 = xor i8 %3447, 1
  store i8 %3448, i8* %46, align 1
  %3449 = xor i64 %3436, %3432
  %3450 = xor i64 %3449, %3438
  %3451 = lshr i64 %3450, 4
  %3452 = trunc i64 %3451 to i8
  %3453 = and i8 %3452, 1
  store i8 %3453, i8* %51, align 1
  %3454 = icmp eq i64 %3438, 0
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %54, align 1
  %3456 = lshr i64 %3438, 63
  %3457 = trunc i64 %3456 to i8
  store i8 %3457, i8* %57, align 1
  %3458 = lshr i64 %3432, 63
  %3459 = xor i64 %3456, %3458
  %3460 = xor i64 %3456, %3437
  %3461 = add nuw nsw i64 %3459, %3460
  %3462 = icmp eq i64 %3461, 2
  %3463 = zext i1 %3462 to i8
  store i8 %3463, i8* %63, align 1
  %3464 = load i64, i64* %RBP.i, align 8
  %3465 = add i64 %3464, -52
  %3466 = add i64 %3200, 182
  store i64 %3466, i64* %PC.i, align 8
  %3467 = inttoptr i64 %3465 to i32*
  %3468 = load i32, i32* %3467, align 4
  %3469 = sext i32 %3468 to i64
  %3470 = mul nsw i64 %3469, 520
  store i64 %3470, i64* %RCX.i1817, align 8
  %3471 = lshr i64 %3470, 63
  %3472 = add i64 %3470, %3438
  store i64 %3472, i64* %RAX.i1872, align 8
  %3473 = icmp ult i64 %3472, %3438
  %3474 = icmp ult i64 %3472, %3470
  %3475 = or i1 %3473, %3474
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %39, align 1
  %3477 = trunc i64 %3472 to i32
  %3478 = and i32 %3477, 255
  %3479 = tail call i32 @llvm.ctpop.i32(i32 %3478)
  %3480 = trunc i32 %3479 to i8
  %3481 = and i8 %3480, 1
  %3482 = xor i8 %3481, 1
  store i8 %3482, i8* %46, align 1
  %3483 = xor i64 %3470, %3438
  %3484 = xor i64 %3483, %3472
  %3485 = lshr i64 %3484, 4
  %3486 = trunc i64 %3485 to i8
  %3487 = and i8 %3486, 1
  store i8 %3487, i8* %51, align 1
  %3488 = icmp eq i64 %3472, 0
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %54, align 1
  %3490 = lshr i64 %3472, 63
  %3491 = trunc i64 %3490 to i8
  store i8 %3491, i8* %57, align 1
  %3492 = xor i64 %3490, %3456
  %3493 = xor i64 %3490, %3471
  %3494 = add nuw nsw i64 %3492, %3493
  %3495 = icmp eq i64 %3494, 2
  %3496 = zext i1 %3495 to i8
  store i8 %3496, i8* %63, align 1
  %3497 = add i64 %3464, -108
  %3498 = add i64 %3200, 196
  store i64 %3498, i64* %PC.i, align 8
  %3499 = inttoptr i64 %3497 to i32*
  %3500 = load i32, i32* %3499, align 4
  %3501 = sext i32 %3500 to i64
  store i64 %3501, i64* %RCX.i1817, align 8
  %3502 = shl nsw i64 %3501, 3
  %3503 = add i64 %3502, %3472
  %3504 = add i64 %3200, 201
  store i64 %3504, i64* %PC.i, align 8
  %3505 = load double, double* %233, align 1
  %3506 = inttoptr i64 %3503 to double*
  %3507 = load double, double* %3506, align 8
  %3508 = fmul double %3505, %3507
  store double %3508, double* %233, align 1
  %3509 = load double, double* %230, align 1
  %3510 = fsub double %3509, %3508
  store double %3510, double* %230, align 1
  %3511 = add i64 %3464, 48
  %3512 = add i64 %3200, 209
  store i64 %3512, i64* %PC.i, align 8
  %3513 = inttoptr i64 %3511 to i64*
  %3514 = load i64, i64* %3513, align 8
  store i64 %3514, i64* %RAX.i1872, align 8
  %3515 = add i64 %3464, -100
  %3516 = add i64 %3200, 213
  store i64 %3516, i64* %PC.i, align 8
  %3517 = inttoptr i64 %3515 to i32*
  %3518 = load i32, i32* %3517, align 4
  %3519 = sext i32 %3518 to i64
  %3520 = mul nsw i64 %3519, 33800
  store i64 %3520, i64* %RCX.i1817, align 8
  %3521 = lshr i64 %3520, 63
  %3522 = add i64 %3520, %3514
  store i64 %3522, i64* %RAX.i1872, align 8
  %3523 = icmp ult i64 %3522, %3514
  %3524 = icmp ult i64 %3522, %3520
  %3525 = or i1 %3523, %3524
  %3526 = zext i1 %3525 to i8
  store i8 %3526, i8* %39, align 1
  %3527 = trunc i64 %3522 to i32
  %3528 = and i32 %3527, 255
  %3529 = tail call i32 @llvm.ctpop.i32(i32 %3528)
  %3530 = trunc i32 %3529 to i8
  %3531 = and i8 %3530, 1
  %3532 = xor i8 %3531, 1
  store i8 %3532, i8* %46, align 1
  %3533 = xor i64 %3520, %3514
  %3534 = xor i64 %3533, %3522
  %3535 = lshr i64 %3534, 4
  %3536 = trunc i64 %3535 to i8
  %3537 = and i8 %3536, 1
  store i8 %3537, i8* %51, align 1
  %3538 = icmp eq i64 %3522, 0
  %3539 = zext i1 %3538 to i8
  store i8 %3539, i8* %54, align 1
  %3540 = lshr i64 %3522, 63
  %3541 = trunc i64 %3540 to i8
  store i8 %3541, i8* %57, align 1
  %3542 = lshr i64 %3514, 63
  %3543 = xor i64 %3540, %3542
  %3544 = xor i64 %3540, %3521
  %3545 = add nuw nsw i64 %3543, %3544
  %3546 = icmp eq i64 %3545, 2
  %3547 = zext i1 %3546 to i8
  store i8 %3547, i8* %63, align 1
  %3548 = load i64, i64* %RBP.i, align 8
  %3549 = add i64 %3548, -52
  %3550 = add i64 %3200, 227
  store i64 %3550, i64* %PC.i, align 8
  %3551 = inttoptr i64 %3549 to i32*
  %3552 = load i32, i32* %3551, align 4
  %3553 = sext i32 %3552 to i64
  %3554 = mul nsw i64 %3553, 520
  store i64 %3554, i64* %RCX.i1817, align 8
  %3555 = lshr i64 %3554, 63
  %3556 = add i64 %3554, %3522
  store i64 %3556, i64* %RAX.i1872, align 8
  %3557 = icmp ult i64 %3556, %3522
  %3558 = icmp ult i64 %3556, %3554
  %3559 = or i1 %3557, %3558
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %39, align 1
  %3561 = trunc i64 %3556 to i32
  %3562 = and i32 %3561, 255
  %3563 = tail call i32 @llvm.ctpop.i32(i32 %3562)
  %3564 = trunc i32 %3563 to i8
  %3565 = and i8 %3564, 1
  %3566 = xor i8 %3565, 1
  store i8 %3566, i8* %46, align 1
  %3567 = xor i64 %3554, %3522
  %3568 = xor i64 %3567, %3556
  %3569 = lshr i64 %3568, 4
  %3570 = trunc i64 %3569 to i8
  %3571 = and i8 %3570, 1
  store i8 %3571, i8* %51, align 1
  %3572 = icmp eq i64 %3556, 0
  %3573 = zext i1 %3572 to i8
  store i8 %3573, i8* %54, align 1
  %3574 = lshr i64 %3556, 63
  %3575 = trunc i64 %3574 to i8
  store i8 %3575, i8* %57, align 1
  %3576 = xor i64 %3574, %3540
  %3577 = xor i64 %3574, %3555
  %3578 = add nuw nsw i64 %3576, %3577
  %3579 = icmp eq i64 %3578, 2
  %3580 = zext i1 %3579 to i8
  store i8 %3580, i8* %63, align 1
  %3581 = add i64 %3548, -108
  %3582 = add i64 %3200, 241
  store i64 %3582, i64* %PC.i, align 8
  %3583 = inttoptr i64 %3581 to i32*
  %3584 = load i32, i32* %3583, align 4
  %3585 = sext i32 %3584 to i64
  store i64 %3585, i64* %RCX.i1817, align 8
  %3586 = shl nsw i64 %3585, 3
  %3587 = add i64 %3586, %3556
  %3588 = add i64 %3200, 246
  store i64 %3588, i64* %PC.i, align 8
  %3589 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3590 = load i64, i64* %3589, align 1
  %3591 = inttoptr i64 %3587 to i64*
  store i64 %3590, i64* %3591, align 8
  %3592 = load i64, i64* %RBP.i, align 8
  %3593 = add i64 %3592, 16
  %3594 = load i64, i64* %PC.i, align 8
  %3595 = add i64 %3594, 4
  store i64 %3595, i64* %PC.i, align 8
  %3596 = inttoptr i64 %3593 to i64*
  %3597 = load i64, i64* %3596, align 8
  store i64 %3597, i64* %RAX.i1872, align 8
  %3598 = add i64 %3592, -100
  %3599 = add i64 %3594, 8
  store i64 %3599, i64* %PC.i, align 8
  %3600 = inttoptr i64 %3598 to i32*
  %3601 = load i32, i32* %3600, align 4
  %3602 = sext i32 %3601 to i64
  %3603 = mul nsw i64 %3602, 520
  store i64 %3603, i64* %RCX.i1817, align 8
  %3604 = lshr i64 %3603, 63
  %3605 = add i64 %3603, %3597
  store i64 %3605, i64* %RAX.i1872, align 8
  %3606 = icmp ult i64 %3605, %3597
  %3607 = icmp ult i64 %3605, %3603
  %3608 = or i1 %3606, %3607
  %3609 = zext i1 %3608 to i8
  store i8 %3609, i8* %39, align 1
  %3610 = trunc i64 %3605 to i32
  %3611 = and i32 %3610, 255
  %3612 = tail call i32 @llvm.ctpop.i32(i32 %3611)
  %3613 = trunc i32 %3612 to i8
  %3614 = and i8 %3613, 1
  %3615 = xor i8 %3614, 1
  store i8 %3615, i8* %46, align 1
  %3616 = xor i64 %3603, %3597
  %3617 = xor i64 %3616, %3605
  %3618 = lshr i64 %3617, 4
  %3619 = trunc i64 %3618 to i8
  %3620 = and i8 %3619, 1
  store i8 %3620, i8* %51, align 1
  %3621 = icmp eq i64 %3605, 0
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %54, align 1
  %3623 = lshr i64 %3605, 63
  %3624 = trunc i64 %3623 to i8
  store i8 %3624, i8* %57, align 1
  %3625 = lshr i64 %3597, 63
  %3626 = xor i64 %3623, %3625
  %3627 = xor i64 %3623, %3604
  %3628 = add nuw nsw i64 %3626, %3627
  %3629 = icmp eq i64 %3628, 2
  %3630 = zext i1 %3629 to i8
  store i8 %3630, i8* %63, align 1
  %3631 = add i64 %3592, -104
  %3632 = add i64 %3594, 22
  store i64 %3632, i64* %PC.i, align 8
  %3633 = inttoptr i64 %3631 to i32*
  %3634 = load i32, i32* %3633, align 4
  %3635 = sext i32 %3634 to i64
  store i64 %3635, i64* %RCX.i1817, align 8
  %3636 = shl nsw i64 %3635, 3
  %3637 = add i64 %3636, %3605
  %3638 = add i64 %3594, 27
  store i64 %3638, i64* %PC.i, align 8
  %3639 = inttoptr i64 %3637 to i64*
  %3640 = load i64, i64* %3639, align 8
  %3641 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %3640, i64* %3641, align 1
  store double 0.000000e+00, double* %232, align 1
  %3642 = add i64 %3592, 24
  %3643 = add i64 %3594, 31
  store i64 %3643, i64* %PC.i, align 8
  %3644 = inttoptr i64 %3642 to i64*
  %3645 = load i64, i64* %3644, align 8
  store i64 %3645, i64* %RAX.i1872, align 8
  %3646 = add i64 %3594, 35
  store i64 %3646, i64* %PC.i, align 8
  %3647 = load i32, i32* %3600, align 4
  %3648 = sext i32 %3647 to i64
  %3649 = mul nsw i64 %3648, 33800
  store i64 %3649, i64* %RCX.i1817, align 8
  %3650 = lshr i64 %3649, 63
  %3651 = add i64 %3649, %3645
  store i64 %3651, i64* %RAX.i1872, align 8
  %3652 = icmp ult i64 %3651, %3645
  %3653 = icmp ult i64 %3651, %3649
  %3654 = or i1 %3652, %3653
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %39, align 1
  %3656 = trunc i64 %3651 to i32
  %3657 = and i32 %3656, 255
  %3658 = tail call i32 @llvm.ctpop.i32(i32 %3657)
  %3659 = trunc i32 %3658 to i8
  %3660 = and i8 %3659, 1
  %3661 = xor i8 %3660, 1
  store i8 %3661, i8* %46, align 1
  %3662 = xor i64 %3649, %3645
  %3663 = xor i64 %3662, %3651
  %3664 = lshr i64 %3663, 4
  %3665 = trunc i64 %3664 to i8
  %3666 = and i8 %3665, 1
  store i8 %3666, i8* %51, align 1
  %3667 = icmp eq i64 %3651, 0
  %3668 = zext i1 %3667 to i8
  store i8 %3668, i8* %54, align 1
  %3669 = lshr i64 %3651, 63
  %3670 = trunc i64 %3669 to i8
  store i8 %3670, i8* %57, align 1
  %3671 = lshr i64 %3645, 63
  %3672 = xor i64 %3669, %3671
  %3673 = xor i64 %3669, %3650
  %3674 = add nuw nsw i64 %3672, %3673
  %3675 = icmp eq i64 %3674, 2
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %63, align 1
  %3677 = load i64, i64* %RBP.i, align 8
  %3678 = add i64 %3677, -52
  %3679 = add i64 %3594, 49
  store i64 %3679, i64* %PC.i, align 8
  %3680 = inttoptr i64 %3678 to i32*
  %3681 = load i32, i32* %3680, align 4
  %3682 = sext i32 %3681 to i64
  %3683 = mul nsw i64 %3682, 520
  store i64 %3683, i64* %RCX.i1817, align 8
  %3684 = lshr i64 %3683, 63
  %3685 = add i64 %3683, %3651
  store i64 %3685, i64* %RAX.i1872, align 8
  %3686 = icmp ult i64 %3685, %3651
  %3687 = icmp ult i64 %3685, %3683
  %3688 = or i1 %3686, %3687
  %3689 = zext i1 %3688 to i8
  store i8 %3689, i8* %39, align 1
  %3690 = trunc i64 %3685 to i32
  %3691 = and i32 %3690, 255
  %3692 = tail call i32 @llvm.ctpop.i32(i32 %3691)
  %3693 = trunc i32 %3692 to i8
  %3694 = and i8 %3693, 1
  %3695 = xor i8 %3694, 1
  store i8 %3695, i8* %46, align 1
  %3696 = xor i64 %3683, %3651
  %3697 = xor i64 %3696, %3685
  %3698 = lshr i64 %3697, 4
  %3699 = trunc i64 %3698 to i8
  %3700 = and i8 %3699, 1
  store i8 %3700, i8* %51, align 1
  %3701 = icmp eq i64 %3685, 0
  %3702 = zext i1 %3701 to i8
  store i8 %3702, i8* %54, align 1
  %3703 = lshr i64 %3685, 63
  %3704 = trunc i64 %3703 to i8
  store i8 %3704, i8* %57, align 1
  %3705 = xor i64 %3703, %3669
  %3706 = xor i64 %3703, %3684
  %3707 = add nuw nsw i64 %3705, %3706
  %3708 = icmp eq i64 %3707, 2
  %3709 = zext i1 %3708 to i8
  store i8 %3709, i8* %63, align 1
  %3710 = add i64 %3677, -108
  %3711 = add i64 %3594, 63
  store i64 %3711, i64* %PC.i, align 8
  %3712 = inttoptr i64 %3710 to i32*
  %3713 = load i32, i32* %3712, align 4
  %3714 = sext i32 %3713 to i64
  store i64 %3714, i64* %RCX.i1817, align 8
  %3715 = shl nsw i64 %3714, 3
  %3716 = add i64 %3715, %3685
  %3717 = add i64 %3594, 68
  store i64 %3717, i64* %PC.i, align 8
  %3718 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %3719 = load i64, i64* %3718, align 1
  %3720 = inttoptr i64 %3716 to i64*
  store i64 %3719, i64* %3720, align 8
  %3721 = load i64, i64* %RBP.i, align 8
  %3722 = add i64 %3721, -108
  %3723 = load i64, i64* %PC.i, align 8
  %3724 = add i64 %3723, 3
  store i64 %3724, i64* %PC.i, align 8
  %3725 = inttoptr i64 %3722 to i32*
  %3726 = load i32, i32* %3725, align 4
  %3727 = add i32 %3726, 1
  %3728 = zext i32 %3727 to i64
  store i64 %3728, i64* %RAX.i1872, align 8
  %3729 = icmp eq i32 %3726, -1
  %3730 = icmp eq i32 %3727, 0
  %3731 = or i1 %3729, %3730
  %3732 = zext i1 %3731 to i8
  store i8 %3732, i8* %39, align 1
  %3733 = and i32 %3727, 255
  %3734 = tail call i32 @llvm.ctpop.i32(i32 %3733)
  %3735 = trunc i32 %3734 to i8
  %3736 = and i8 %3735, 1
  %3737 = xor i8 %3736, 1
  store i8 %3737, i8* %46, align 1
  %3738 = xor i32 %3726, %3727
  %3739 = lshr i32 %3738, 4
  %3740 = trunc i32 %3739 to i8
  %3741 = and i8 %3740, 1
  store i8 %3741, i8* %51, align 1
  %3742 = icmp eq i32 %3727, 0
  %3743 = zext i1 %3742 to i8
  store i8 %3743, i8* %54, align 1
  %3744 = lshr i32 %3727, 31
  %3745 = trunc i32 %3744 to i8
  store i8 %3745, i8* %57, align 1
  %3746 = lshr i32 %3726, 31
  %3747 = xor i32 %3744, %3746
  %3748 = add nuw nsw i32 %3747, %3744
  %3749 = icmp eq i32 %3748, 2
  %3750 = zext i1 %3749 to i8
  store i8 %3750, i8* %63, align 1
  %3751 = add i64 %3723, 9
  store i64 %3751, i64* %PC.i, align 8
  store i32 %3727, i32* %3725, align 4
  %3752 = load i64, i64* %PC.i, align 8
  %3753 = add i64 %3752, -660
  store i64 %3753, i64* %3, align 8
  br label %block_.L_4019d2

block_.L_401c6b:                                  ; preds = %block_.L_4019d2
  %3754 = add i64 %2677, -48
  %3755 = add i64 %2606, 36
  store i64 %3755, i64* %PC.i, align 8
  %3756 = inttoptr i64 %3754 to i32*
  %3757 = load i32, i32* %3756, align 4
  %3758 = sext i32 %3757 to i64
  store i64 %3758, i64* %RCX.i1817, align 8
  %3759 = shl nsw i64 %3758, 3
  %3760 = add i64 %3759, %2652
  %3761 = add i64 %2606, 41
  store i64 %3761, i64* %PC.i, align 8
  %3762 = inttoptr i64 %3760 to double*
  %3763 = load double, double* %3762, align 8
  store double %3763, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %3764 = add i64 %2677, -80
  %3765 = add i64 %2606, 45
  store i64 %3765, i64* %PC.i, align 8
  %3766 = inttoptr i64 %3764 to i64*
  %3767 = load i64, i64* %3766, align 8
  store i64 %3767, i64* %RAX.i1872, align 8
  %3768 = add i64 %2677, -100
  %3769 = add i64 %2606, 49
  store i64 %3769, i64* %PC.i, align 8
  %3770 = inttoptr i64 %3768 to i32*
  %3771 = load i32, i32* %3770, align 4
  %3772 = sext i32 %3771 to i64
  %3773 = mul nsw i64 %3772, 520
  store i64 %3773, i64* %RCX.i1817, align 8
  %3774 = lshr i64 %3773, 63
  %3775 = add i64 %3773, %3767
  store i64 %3775, i64* %RAX.i1872, align 8
  %3776 = icmp ult i64 %3775, %3767
  %3777 = icmp ult i64 %3775, %3773
  %3778 = or i1 %3776, %3777
  %3779 = zext i1 %3778 to i8
  store i8 %3779, i8* %39, align 1
  %3780 = trunc i64 %3775 to i32
  %3781 = and i32 %3780, 255
  %3782 = tail call i32 @llvm.ctpop.i32(i32 %3781)
  %3783 = trunc i32 %3782 to i8
  %3784 = and i8 %3783, 1
  %3785 = xor i8 %3784, 1
  store i8 %3785, i8* %46, align 1
  %3786 = xor i64 %3773, %3767
  %3787 = xor i64 %3786, %3775
  %3788 = lshr i64 %3787, 4
  %3789 = trunc i64 %3788 to i8
  %3790 = and i8 %3789, 1
  store i8 %3790, i8* %51, align 1
  %3791 = icmp eq i64 %3775, 0
  %3792 = zext i1 %3791 to i8
  store i8 %3792, i8* %54, align 1
  %3793 = lshr i64 %3775, 63
  %3794 = trunc i64 %3793 to i8
  store i8 %3794, i8* %57, align 1
  %3795 = lshr i64 %3767, 63
  %3796 = xor i64 %3793, %3795
  %3797 = xor i64 %3793, %3774
  %3798 = add nuw nsw i64 %3796, %3797
  %3799 = icmp eq i64 %3798, 2
  %3800 = zext i1 %3799 to i8
  store i8 %3800, i8* %63, align 1
  %3801 = add i64 %2606, 63
  store i64 %3801, i64* %PC.i, align 8
  %3802 = load i32, i32* %3756, align 4
  %3803 = sext i32 %3802 to i64
  store i64 %3803, i64* %RCX.i1817, align 8
  %3804 = shl nsw i64 %3803, 3
  %3805 = add i64 %3804, %3775
  %3806 = add i64 %2606, 68
  store i64 %3806, i64* %PC.i, align 8
  %3807 = inttoptr i64 %3805 to double*
  %3808 = load double, double* %3807, align 8
  %3809 = fsub double %3763, %3808
  store double %3809, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3810 = load i64, i64* %RBP.i, align 8
  %3811 = add i64 %3810, -88
  %3812 = add i64 %2606, 72
  store i64 %3812, i64* %PC.i, align 8
  %3813 = inttoptr i64 %3811 to i64*
  %3814 = load i64, i64* %3813, align 8
  store i64 %3814, i64* %RAX.i1872, align 8
  %3815 = add i64 %3810, -100
  %3816 = add i64 %2606, 76
  store i64 %3816, i64* %PC.i, align 8
  %3817 = inttoptr i64 %3815 to i32*
  %3818 = load i32, i32* %3817, align 4
  %3819 = sext i32 %3818 to i64
  %3820 = mul nsw i64 %3819, 520
  store i64 %3820, i64* %RCX.i1817, align 8
  %3821 = lshr i64 %3820, 63
  %3822 = add i64 %3820, %3814
  store i64 %3822, i64* %RAX.i1872, align 8
  %3823 = icmp ult i64 %3822, %3814
  %3824 = icmp ult i64 %3822, %3820
  %3825 = or i1 %3823, %3824
  %3826 = zext i1 %3825 to i8
  store i8 %3826, i8* %39, align 1
  %3827 = trunc i64 %3822 to i32
  %3828 = and i32 %3827, 255
  %3829 = tail call i32 @llvm.ctpop.i32(i32 %3828)
  %3830 = trunc i32 %3829 to i8
  %3831 = and i8 %3830, 1
  %3832 = xor i8 %3831, 1
  store i8 %3832, i8* %46, align 1
  %3833 = xor i64 %3820, %3814
  %3834 = xor i64 %3833, %3822
  %3835 = lshr i64 %3834, 4
  %3836 = trunc i64 %3835 to i8
  %3837 = and i8 %3836, 1
  store i8 %3837, i8* %51, align 1
  %3838 = icmp eq i64 %3822, 0
  %3839 = zext i1 %3838 to i8
  store i8 %3839, i8* %54, align 1
  %3840 = lshr i64 %3822, 63
  %3841 = trunc i64 %3840 to i8
  store i8 %3841, i8* %57, align 1
  %3842 = lshr i64 %3814, 63
  %3843 = xor i64 %3840, %3842
  %3844 = xor i64 %3840, %3821
  %3845 = add nuw nsw i64 %3843, %3844
  %3846 = icmp eq i64 %3845, 2
  %3847 = zext i1 %3846 to i8
  store i8 %3847, i8* %63, align 1
  %3848 = add i64 %3810, -52
  %3849 = add i64 %2606, 90
  store i64 %3849, i64* %PC.i, align 8
  %3850 = inttoptr i64 %3848 to i32*
  %3851 = load i32, i32* %3850, align 4
  %3852 = sext i32 %3851 to i64
  store i64 %3852, i64* %RCX.i1817, align 8
  %3853 = shl nsw i64 %3852, 3
  %3854 = add i64 %3853, %3822
  %3855 = add i64 %2606, 95
  store i64 %3855, i64* %PC.i, align 8
  %3856 = inttoptr i64 %3854 to double*
  %3857 = load double, double* %3856, align 8
  %3858 = fadd double %3809, %3857
  store double %3858, double* %230, align 1
  store i64 0, i64* %231, align 1
  %3859 = add i64 %3810, 40
  %3860 = add i64 %2606, 99
  store i64 %3860, i64* %PC.i, align 8
  %3861 = inttoptr i64 %3859 to i64*
  %3862 = load i64, i64* %3861, align 8
  store i64 %3862, i64* %RAX.i1872, align 8
  %3863 = add i64 %2606, 103
  store i64 %3863, i64* %PC.i, align 8
  %3864 = load i32, i32* %3817, align 4
  %3865 = sext i32 %3864 to i64
  %3866 = mul nsw i64 %3865, 33800
  store i64 %3866, i64* %RCX.i1817, align 8
  %3867 = lshr i64 %3866, 63
  %3868 = add i64 %3866, %3862
  store i64 %3868, i64* %RAX.i1872, align 8
  %3869 = icmp ult i64 %3868, %3862
  %3870 = icmp ult i64 %3868, %3866
  %3871 = or i1 %3869, %3870
  %3872 = zext i1 %3871 to i8
  store i8 %3872, i8* %39, align 1
  %3873 = trunc i64 %3868 to i32
  %3874 = and i32 %3873, 255
  %3875 = tail call i32 @llvm.ctpop.i32(i32 %3874)
  %3876 = trunc i32 %3875 to i8
  %3877 = and i8 %3876, 1
  %3878 = xor i8 %3877, 1
  store i8 %3878, i8* %46, align 1
  %3879 = xor i64 %3866, %3862
  %3880 = xor i64 %3879, %3868
  %3881 = lshr i64 %3880, 4
  %3882 = trunc i64 %3881 to i8
  %3883 = and i8 %3882, 1
  store i8 %3883, i8* %51, align 1
  %3884 = icmp eq i64 %3868, 0
  %3885 = zext i1 %3884 to i8
  store i8 %3885, i8* %54, align 1
  %3886 = lshr i64 %3868, 63
  %3887 = trunc i64 %3886 to i8
  store i8 %3887, i8* %57, align 1
  %3888 = lshr i64 %3862, 63
  %3889 = xor i64 %3886, %3888
  %3890 = xor i64 %3886, %3867
  %3891 = add nuw nsw i64 %3889, %3890
  %3892 = icmp eq i64 %3891, 2
  %3893 = zext i1 %3892 to i8
  store i8 %3893, i8* %63, align 1
  %3894 = load i64, i64* %RBP.i, align 8
  %3895 = add i64 %3894, -52
  %3896 = add i64 %2606, 117
  store i64 %3896, i64* %PC.i, align 8
  %3897 = inttoptr i64 %3895 to i32*
  %3898 = load i32, i32* %3897, align 4
  %3899 = sext i32 %3898 to i64
  %3900 = mul nsw i64 %3899, 520
  store i64 %3900, i64* %RCX.i1817, align 8
  %3901 = lshr i64 %3900, 63
  %3902 = add i64 %3900, %3868
  store i64 %3902, i64* %RAX.i1872, align 8
  %3903 = icmp ult i64 %3902, %3868
  %3904 = icmp ult i64 %3902, %3900
  %3905 = or i1 %3903, %3904
  %3906 = zext i1 %3905 to i8
  store i8 %3906, i8* %39, align 1
  %3907 = trunc i64 %3902 to i32
  %3908 = and i32 %3907, 255
  %3909 = tail call i32 @llvm.ctpop.i32(i32 %3908)
  %3910 = trunc i32 %3909 to i8
  %3911 = and i8 %3910, 1
  %3912 = xor i8 %3911, 1
  store i8 %3912, i8* %46, align 1
  %3913 = xor i64 %3900, %3868
  %3914 = xor i64 %3913, %3902
  %3915 = lshr i64 %3914, 4
  %3916 = trunc i64 %3915 to i8
  %3917 = and i8 %3916, 1
  store i8 %3917, i8* %51, align 1
  %3918 = icmp eq i64 %3902, 0
  %3919 = zext i1 %3918 to i8
  store i8 %3919, i8* %54, align 1
  %3920 = lshr i64 %3902, 63
  %3921 = trunc i64 %3920 to i8
  store i8 %3921, i8* %57, align 1
  %3922 = xor i64 %3920, %3886
  %3923 = xor i64 %3920, %3901
  %3924 = add nuw nsw i64 %3922, %3923
  %3925 = icmp eq i64 %3924, 2
  %3926 = zext i1 %3925 to i8
  store i8 %3926, i8* %63, align 1
  %3927 = add i64 %3894, -48
  %3928 = add i64 %2606, 131
  store i64 %3928, i64* %PC.i, align 8
  %3929 = inttoptr i64 %3927 to i32*
  %3930 = load i32, i32* %3929, align 4
  %3931 = sext i32 %3930 to i64
  store i64 %3931, i64* %RCX.i1817, align 8
  %3932 = shl nsw i64 %3931, 3
  %3933 = add i64 %3932, %3902
  %3934 = add i64 %2606, 136
  store i64 %3934, i64* %PC.i, align 8
  %3935 = load double, double* %230, align 1
  %3936 = inttoptr i64 %3933 to double*
  %3937 = load double, double* %3936, align 8
  %3938 = fsub double %3935, %3937
  store double %3938, double* %230, align 1
  %3939 = add i64 %3894, -96
  %3940 = add i64 %2606, 140
  store i64 %3940, i64* %PC.i, align 8
  %3941 = inttoptr i64 %3939 to i64*
  %3942 = load i64, i64* %3941, align 8
  store i64 %3942, i64* %RAX.i1872, align 8
  %3943 = add i64 %3894, -100
  %3944 = add i64 %2606, 144
  store i64 %3944, i64* %PC.i, align 8
  %3945 = inttoptr i64 %3943 to i32*
  %3946 = load i32, i32* %3945, align 4
  %3947 = sext i32 %3946 to i64
  %3948 = mul nsw i64 %3947, 520
  store i64 %3948, i64* %RCX.i1817, align 8
  %3949 = lshr i64 %3948, 63
  %3950 = add i64 %3948, %3942
  store i64 %3950, i64* %RAX.i1872, align 8
  %3951 = icmp ult i64 %3950, %3942
  %3952 = icmp ult i64 %3950, %3948
  %3953 = or i1 %3951, %3952
  %3954 = zext i1 %3953 to i8
  store i8 %3954, i8* %39, align 1
  %3955 = trunc i64 %3950 to i32
  %3956 = and i32 %3955, 255
  %3957 = tail call i32 @llvm.ctpop.i32(i32 %3956)
  %3958 = trunc i32 %3957 to i8
  %3959 = and i8 %3958, 1
  %3960 = xor i8 %3959, 1
  store i8 %3960, i8* %46, align 1
  %3961 = xor i64 %3948, %3942
  %3962 = xor i64 %3961, %3950
  %3963 = lshr i64 %3962, 4
  %3964 = trunc i64 %3963 to i8
  %3965 = and i8 %3964, 1
  store i8 %3965, i8* %51, align 1
  %3966 = icmp eq i64 %3950, 0
  %3967 = zext i1 %3966 to i8
  store i8 %3967, i8* %54, align 1
  %3968 = lshr i64 %3950, 63
  %3969 = trunc i64 %3968 to i8
  store i8 %3969, i8* %57, align 1
  %3970 = lshr i64 %3942, 63
  %3971 = xor i64 %3968, %3970
  %3972 = xor i64 %3968, %3949
  %3973 = add nuw nsw i64 %3971, %3972
  %3974 = icmp eq i64 %3973, 2
  %3975 = zext i1 %3974 to i8
  store i8 %3975, i8* %63, align 1
  %3976 = load i64, i64* %RBP.i, align 8
  %3977 = add i64 %3976, -104
  %3978 = add i64 %2606, 158
  store i64 %3978, i64* %PC.i, align 8
  %3979 = inttoptr i64 %3977 to i32*
  %3980 = load i32, i32* %3979, align 4
  %3981 = sext i32 %3980 to i64
  store i64 %3981, i64* %RCX.i1817, align 8
  %3982 = shl nsw i64 %3981, 3
  %3983 = add i64 %3982, %3950
  %3984 = add i64 %2606, 163
  store i64 %3984, i64* %PC.i, align 8
  %3985 = inttoptr i64 %3983 to double*
  store double %3938, double* %3985, align 8
  %3986 = load i64, i64* %RBP.i, align 8
  %3987 = add i64 %3986, 88
  %3988 = load i64, i64* %PC.i, align 8
  %3989 = add i64 %3988, 4
  store i64 %3989, i64* %PC.i, align 8
  %3990 = inttoptr i64 %3987 to i64*
  %3991 = load i64, i64* %3990, align 8
  store i64 %3991, i64* %RAX.i1872, align 8
  %3992 = add i64 %3986, -52
  %3993 = add i64 %3988, 8
  store i64 %3993, i64* %PC.i, align 8
  %3994 = inttoptr i64 %3992 to i32*
  %3995 = load i32, i32* %3994, align 4
  %3996 = sext i32 %3995 to i64
  store i64 %3996, i64* %RCX.i1817, align 8
  %3997 = shl nsw i64 %3996, 3
  %3998 = add i64 %3997, %3991
  %3999 = add i64 %3988, 13
  store i64 %3999, i64* %PC.i, align 8
  %4000 = inttoptr i64 %3998 to double*
  %4001 = load double, double* %4000, align 8
  store double %4001, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %4002 = add i64 %3986, 96
  %4003 = add i64 %3988, 17
  store i64 %4003, i64* %PC.i, align 8
  %4004 = inttoptr i64 %4002 to i64*
  %4005 = load i64, i64* %4004, align 8
  store i64 %4005, i64* %RAX.i1872, align 8
  %4006 = add i64 %3988, 21
  store i64 %4006, i64* %PC.i, align 8
  %4007 = load i32, i32* %3994, align 4
  %4008 = sext i32 %4007 to i64
  store i64 %4008, i64* %RCX.i1817, align 8
  %4009 = shl nsw i64 %4008, 3
  %4010 = add i64 %4009, %4005
  %4011 = add i64 %3988, 26
  store i64 %4011, i64* %PC.i, align 8
  %4012 = inttoptr i64 %4010 to double*
  %4013 = load double, double* %4012, align 8
  %4014 = fdiv double %4001, %4013
  store double %4014, double* %230, align 1
  store i64 0, i64* %231, align 1
  %4015 = add i64 %3986, 24
  %4016 = add i64 %3988, 30
  store i64 %4016, i64* %PC.i, align 8
  %4017 = inttoptr i64 %4015 to i64*
  %4018 = load i64, i64* %4017, align 8
  store i64 %4018, i64* %RAX.i1872, align 8
  %4019 = add i64 %3986, -100
  %4020 = add i64 %3988, 34
  store i64 %4020, i64* %PC.i, align 8
  %4021 = inttoptr i64 %4019 to i32*
  %4022 = load i32, i32* %4021, align 4
  %4023 = sext i32 %4022 to i64
  %4024 = mul nsw i64 %4023, 33800
  store i64 %4024, i64* %RCX.i1817, align 8
  %4025 = lshr i64 %4024, 63
  %4026 = add i64 %4024, %4018
  store i64 %4026, i64* %RAX.i1872, align 8
  %4027 = icmp ult i64 %4026, %4018
  %4028 = icmp ult i64 %4026, %4024
  %4029 = or i1 %4027, %4028
  %4030 = zext i1 %4029 to i8
  store i8 %4030, i8* %39, align 1
  %4031 = trunc i64 %4026 to i32
  %4032 = and i32 %4031, 255
  %4033 = tail call i32 @llvm.ctpop.i32(i32 %4032)
  %4034 = trunc i32 %4033 to i8
  %4035 = and i8 %4034, 1
  %4036 = xor i8 %4035, 1
  store i8 %4036, i8* %46, align 1
  %4037 = xor i64 %4024, %4018
  %4038 = xor i64 %4037, %4026
  %4039 = lshr i64 %4038, 4
  %4040 = trunc i64 %4039 to i8
  %4041 = and i8 %4040, 1
  store i8 %4041, i8* %51, align 1
  %4042 = icmp eq i64 %4026, 0
  %4043 = zext i1 %4042 to i8
  store i8 %4043, i8* %54, align 1
  %4044 = lshr i64 %4026, 63
  %4045 = trunc i64 %4044 to i8
  store i8 %4045, i8* %57, align 1
  %4046 = lshr i64 %4018, 63
  %4047 = xor i64 %4044, %4046
  %4048 = xor i64 %4044, %4025
  %4049 = add nuw nsw i64 %4047, %4048
  %4050 = icmp eq i64 %4049, 2
  %4051 = zext i1 %4050 to i8
  store i8 %4051, i8* %63, align 1
  %4052 = load i64, i64* %RBP.i, align 8
  %4053 = add i64 %4052, -52
  %4054 = add i64 %3988, 48
  store i64 %4054, i64* %PC.i, align 8
  %4055 = inttoptr i64 %4053 to i32*
  %4056 = load i32, i32* %4055, align 4
  %4057 = sext i32 %4056 to i64
  %4058 = mul nsw i64 %4057, 520
  store i64 %4058, i64* %RCX.i1817, align 8
  %4059 = lshr i64 %4058, 63
  %4060 = add i64 %4058, %4026
  store i64 %4060, i64* %RAX.i1872, align 8
  %4061 = icmp ult i64 %4060, %4026
  %4062 = icmp ult i64 %4060, %4058
  %4063 = or i1 %4061, %4062
  %4064 = zext i1 %4063 to i8
  store i8 %4064, i8* %39, align 1
  %4065 = trunc i64 %4060 to i32
  %4066 = and i32 %4065, 255
  %4067 = tail call i32 @llvm.ctpop.i32(i32 %4066)
  %4068 = trunc i32 %4067 to i8
  %4069 = and i8 %4068, 1
  %4070 = xor i8 %4069, 1
  store i8 %4070, i8* %46, align 1
  %4071 = xor i64 %4058, %4026
  %4072 = xor i64 %4071, %4060
  %4073 = lshr i64 %4072, 4
  %4074 = trunc i64 %4073 to i8
  %4075 = and i8 %4074, 1
  store i8 %4075, i8* %51, align 1
  %4076 = icmp eq i64 %4060, 0
  %4077 = zext i1 %4076 to i8
  store i8 %4077, i8* %54, align 1
  %4078 = lshr i64 %4060, 63
  %4079 = trunc i64 %4078 to i8
  store i8 %4079, i8* %57, align 1
  %4080 = xor i64 %4078, %4044
  %4081 = xor i64 %4078, %4059
  %4082 = add nuw nsw i64 %4080, %4081
  %4083 = icmp eq i64 %4082, 2
  %4084 = zext i1 %4083 to i8
  store i8 %4084, i8* %63, align 1
  %4085 = add i64 %4052, -48
  %4086 = add i64 %3988, 62
  store i64 %4086, i64* %PC.i, align 8
  %4087 = inttoptr i64 %4085 to i32*
  %4088 = load i32, i32* %4087, align 4
  %4089 = sext i32 %4088 to i64
  store i64 %4089, i64* %RCX.i1817, align 8
  %4090 = shl nsw i64 %4089, 3
  %4091 = add i64 %4090, %4060
  %4092 = add i64 %3988, 67
  store i64 %4092, i64* %PC.i, align 8
  %4093 = load double, double* %230, align 1
  %4094 = inttoptr i64 %4091 to double*
  %4095 = load double, double* %4094, align 8
  %4096 = fmul double %4093, %4095
  store double %4096, double* %230, align 1
  %4097 = add i64 %4052, -72
  %4098 = add i64 %3988, 72
  store i64 %4098, i64* %PC.i, align 8
  %4099 = inttoptr i64 %4097 to double*
  %4100 = load double, double* %4099, align 8
  store double %4100, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %4101 = add i64 %4052, 96
  %4102 = add i64 %3988, 76
  store i64 %4102, i64* %PC.i, align 8
  %4103 = inttoptr i64 %4101 to i64*
  %4104 = load i64, i64* %4103, align 8
  store i64 %4104, i64* %RAX.i1872, align 8
  %4105 = add i64 %3988, 80
  store i64 %4105, i64* %PC.i, align 8
  %4106 = load i32, i32* %4055, align 4
  %4107 = sext i32 %4106 to i64
  store i64 %4107, i64* %RCX.i1817, align 8
  %4108 = shl nsw i64 %4107, 3
  %4109 = add i64 %4108, %4104
  %4110 = add i64 %3988, 85
  store i64 %4110, i64* %PC.i, align 8
  %4111 = inttoptr i64 %4109 to double*
  %4112 = load double, double* %4111, align 8
  %4113 = fdiv double %4100, %4112
  store double %4113, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4114 = load i64, i64* %RBP.i, align 8
  %4115 = add i64 %4114, -96
  %4116 = add i64 %3988, 89
  store i64 %4116, i64* %PC.i, align 8
  %4117 = inttoptr i64 %4115 to i64*
  %4118 = load i64, i64* %4117, align 8
  store i64 %4118, i64* %RAX.i1872, align 8
  %4119 = add i64 %4114, -100
  %4120 = add i64 %3988, 93
  store i64 %4120, i64* %PC.i, align 8
  %4121 = inttoptr i64 %4119 to i32*
  %4122 = load i32, i32* %4121, align 4
  %4123 = sext i32 %4122 to i64
  %4124 = mul nsw i64 %4123, 520
  store i64 %4124, i64* %RCX.i1817, align 8
  %4125 = lshr i64 %4124, 63
  %4126 = add i64 %4124, %4118
  store i64 %4126, i64* %RAX.i1872, align 8
  %4127 = icmp ult i64 %4126, %4118
  %4128 = icmp ult i64 %4126, %4124
  %4129 = or i1 %4127, %4128
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %39, align 1
  %4131 = trunc i64 %4126 to i32
  %4132 = and i32 %4131, 255
  %4133 = tail call i32 @llvm.ctpop.i32(i32 %4132)
  %4134 = trunc i32 %4133 to i8
  %4135 = and i8 %4134, 1
  %4136 = xor i8 %4135, 1
  store i8 %4136, i8* %46, align 1
  %4137 = xor i64 %4124, %4118
  %4138 = xor i64 %4137, %4126
  %4139 = lshr i64 %4138, 4
  %4140 = trunc i64 %4139 to i8
  %4141 = and i8 %4140, 1
  store i8 %4141, i8* %51, align 1
  %4142 = icmp eq i64 %4126, 0
  %4143 = zext i1 %4142 to i8
  store i8 %4143, i8* %54, align 1
  %4144 = lshr i64 %4126, 63
  %4145 = trunc i64 %4144 to i8
  store i8 %4145, i8* %57, align 1
  %4146 = lshr i64 %4118, 63
  %4147 = xor i64 %4144, %4146
  %4148 = xor i64 %4144, %4125
  %4149 = add nuw nsw i64 %4147, %4148
  %4150 = icmp eq i64 %4149, 2
  %4151 = zext i1 %4150 to i8
  store i8 %4151, i8* %63, align 1
  %4152 = add i64 %4114, -104
  %4153 = add i64 %3988, 107
  store i64 %4153, i64* %PC.i, align 8
  %4154 = inttoptr i64 %4152 to i32*
  %4155 = load i32, i32* %4154, align 4
  %4156 = sext i32 %4155 to i64
  store i64 %4156, i64* %RCX.i1817, align 8
  %4157 = shl nsw i64 %4156, 3
  %4158 = add i64 %4157, %4126
  %4159 = add i64 %3988, 112
  store i64 %4159, i64* %PC.i, align 8
  %4160 = inttoptr i64 %4158 to double*
  %4161 = load double, double* %4160, align 8
  %4162 = fmul double %4113, %4161
  store double %4162, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4163 = load double, double* %230, align 1
  %4164 = fsub double %4163, %4162
  store double %4164, double* %230, align 1
  %4165 = add i64 %4114, 16
  %4166 = add i64 %3988, 120
  store i64 %4166, i64* %PC.i, align 8
  %4167 = inttoptr i64 %4165 to i64*
  %4168 = load i64, i64* %4167, align 8
  store i64 %4168, i64* %RAX.i1872, align 8
  %4169 = load i64, i64* %RBP.i, align 8
  %4170 = add i64 %4169, -100
  %4171 = add i64 %3988, 124
  store i64 %4171, i64* %PC.i, align 8
  %4172 = inttoptr i64 %4170 to i32*
  %4173 = load i32, i32* %4172, align 4
  %4174 = sext i32 %4173 to i64
  %4175 = mul nsw i64 %4174, 520
  store i64 %4175, i64* %RCX.i1817, align 8
  %4176 = lshr i64 %4175, 63
  %4177 = add i64 %4175, %4168
  store i64 %4177, i64* %RAX.i1872, align 8
  %4178 = icmp ult i64 %4177, %4168
  %4179 = icmp ult i64 %4177, %4175
  %4180 = or i1 %4178, %4179
  %4181 = zext i1 %4180 to i8
  store i8 %4181, i8* %39, align 1
  %4182 = trunc i64 %4177 to i32
  %4183 = and i32 %4182, 255
  %4184 = tail call i32 @llvm.ctpop.i32(i32 %4183)
  %4185 = trunc i32 %4184 to i8
  %4186 = and i8 %4185, 1
  %4187 = xor i8 %4186, 1
  store i8 %4187, i8* %46, align 1
  %4188 = xor i64 %4175, %4168
  %4189 = xor i64 %4188, %4177
  %4190 = lshr i64 %4189, 4
  %4191 = trunc i64 %4190 to i8
  %4192 = and i8 %4191, 1
  store i8 %4192, i8* %51, align 1
  %4193 = icmp eq i64 %4177, 0
  %4194 = zext i1 %4193 to i8
  store i8 %4194, i8* %54, align 1
  %4195 = lshr i64 %4177, 63
  %4196 = trunc i64 %4195 to i8
  store i8 %4196, i8* %57, align 1
  %4197 = lshr i64 %4168, 63
  %4198 = xor i64 %4195, %4197
  %4199 = xor i64 %4195, %4176
  %4200 = add nuw nsw i64 %4198, %4199
  %4201 = icmp eq i64 %4200, 2
  %4202 = zext i1 %4201 to i8
  store i8 %4202, i8* %63, align 1
  %4203 = add i64 %4169, -104
  %4204 = add i64 %3988, 138
  store i64 %4204, i64* %PC.i, align 8
  %4205 = inttoptr i64 %4203 to i32*
  %4206 = load i32, i32* %4205, align 4
  %4207 = sext i32 %4206 to i64
  store i64 %4207, i64* %RCX.i1817, align 8
  %4208 = shl nsw i64 %4207, 3
  %4209 = add i64 %4208, %4177
  %4210 = add i64 %3988, 143
  store i64 %4210, i64* %PC.i, align 8
  %4211 = inttoptr i64 %4209 to double*
  store double %4164, double* %4211, align 8
  %4212 = load i64, i64* %RBP.i, align 8
  %4213 = add i64 %4212, 72
  %4214 = load i64, i64* %PC.i, align 8
  %4215 = add i64 %4214, 4
  store i64 %4215, i64* %PC.i, align 8
  %4216 = inttoptr i64 %4213 to i64*
  %4217 = load i64, i64* %4216, align 8
  store i64 %4217, i64* %RAX.i1872, align 8
  %4218 = add i64 %4212, -48
  %4219 = add i64 %4214, 8
  store i64 %4219, i64* %PC.i, align 8
  %4220 = inttoptr i64 %4218 to i32*
  %4221 = load i32, i32* %4220, align 4
  %4222 = sext i32 %4221 to i64
  store i64 %4222, i64* %RCX.i1817, align 8
  %4223 = shl nsw i64 %4222, 3
  %4224 = add i64 %4223, %4217
  %4225 = add i64 %4214, 13
  store i64 %4225, i64* %PC.i, align 8
  %4226 = inttoptr i64 %4224 to double*
  %4227 = load double, double* %4226, align 8
  store double %4227, double* %230, align 1
  store double 0.000000e+00, double* %232, align 1
  %4228 = add i64 %4212, 80
  %4229 = add i64 %4214, 17
  store i64 %4229, i64* %PC.i, align 8
  %4230 = inttoptr i64 %4228 to i64*
  %4231 = load i64, i64* %4230, align 8
  store i64 %4231, i64* %RAX.i1872, align 8
  %4232 = add i64 %4214, 21
  store i64 %4232, i64* %PC.i, align 8
  %4233 = load i32, i32* %4220, align 4
  %4234 = sext i32 %4233 to i64
  store i64 %4234, i64* %RCX.i1817, align 8
  %4235 = shl nsw i64 %4234, 3
  %4236 = add i64 %4235, %4231
  %4237 = add i64 %4214, 26
  store i64 %4237, i64* %PC.i, align 8
  %4238 = inttoptr i64 %4236 to double*
  %4239 = load double, double* %4238, align 8
  %4240 = fdiv double %4227, %4239
  store double %4240, double* %230, align 1
  store i64 0, i64* %231, align 1
  %4241 = add i64 %4212, 48
  %4242 = add i64 %4214, 30
  store i64 %4242, i64* %PC.i, align 8
  %4243 = inttoptr i64 %4241 to i64*
  %4244 = load i64, i64* %4243, align 8
  store i64 %4244, i64* %RAX.i1872, align 8
  %4245 = add i64 %4212, -100
  %4246 = add i64 %4214, 34
  store i64 %4246, i64* %PC.i, align 8
  %4247 = inttoptr i64 %4245 to i32*
  %4248 = load i32, i32* %4247, align 4
  %4249 = sext i32 %4248 to i64
  %4250 = mul nsw i64 %4249, 33800
  store i64 %4250, i64* %RCX.i1817, align 8
  %4251 = lshr i64 %4250, 63
  %4252 = add i64 %4250, %4244
  store i64 %4252, i64* %RAX.i1872, align 8
  %4253 = icmp ult i64 %4252, %4244
  %4254 = icmp ult i64 %4252, %4250
  %4255 = or i1 %4253, %4254
  %4256 = zext i1 %4255 to i8
  store i8 %4256, i8* %39, align 1
  %4257 = trunc i64 %4252 to i32
  %4258 = and i32 %4257, 255
  %4259 = tail call i32 @llvm.ctpop.i32(i32 %4258)
  %4260 = trunc i32 %4259 to i8
  %4261 = and i8 %4260, 1
  %4262 = xor i8 %4261, 1
  store i8 %4262, i8* %46, align 1
  %4263 = xor i64 %4250, %4244
  %4264 = xor i64 %4263, %4252
  %4265 = lshr i64 %4264, 4
  %4266 = trunc i64 %4265 to i8
  %4267 = and i8 %4266, 1
  store i8 %4267, i8* %51, align 1
  %4268 = icmp eq i64 %4252, 0
  %4269 = zext i1 %4268 to i8
  store i8 %4269, i8* %54, align 1
  %4270 = lshr i64 %4252, 63
  %4271 = trunc i64 %4270 to i8
  store i8 %4271, i8* %57, align 1
  %4272 = lshr i64 %4244, 63
  %4273 = xor i64 %4270, %4272
  %4274 = xor i64 %4270, %4251
  %4275 = add nuw nsw i64 %4273, %4274
  %4276 = icmp eq i64 %4275, 2
  %4277 = zext i1 %4276 to i8
  store i8 %4277, i8* %63, align 1
  %4278 = load i64, i64* %RBP.i, align 8
  %4279 = add i64 %4278, -52
  %4280 = add i64 %4214, 48
  store i64 %4280, i64* %PC.i, align 8
  %4281 = inttoptr i64 %4279 to i32*
  %4282 = load i32, i32* %4281, align 4
  %4283 = sext i32 %4282 to i64
  %4284 = mul nsw i64 %4283, 520
  store i64 %4284, i64* %RCX.i1817, align 8
  %4285 = lshr i64 %4284, 63
  %4286 = add i64 %4284, %4252
  store i64 %4286, i64* %RAX.i1872, align 8
  %4287 = icmp ult i64 %4286, %4252
  %4288 = icmp ult i64 %4286, %4284
  %4289 = or i1 %4287, %4288
  %4290 = zext i1 %4289 to i8
  store i8 %4290, i8* %39, align 1
  %4291 = trunc i64 %4286 to i32
  %4292 = and i32 %4291, 255
  %4293 = tail call i32 @llvm.ctpop.i32(i32 %4292)
  %4294 = trunc i32 %4293 to i8
  %4295 = and i8 %4294, 1
  %4296 = xor i8 %4295, 1
  store i8 %4296, i8* %46, align 1
  %4297 = xor i64 %4284, %4252
  %4298 = xor i64 %4297, %4286
  %4299 = lshr i64 %4298, 4
  %4300 = trunc i64 %4299 to i8
  %4301 = and i8 %4300, 1
  store i8 %4301, i8* %51, align 1
  %4302 = icmp eq i64 %4286, 0
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %54, align 1
  %4304 = lshr i64 %4286, 63
  %4305 = trunc i64 %4304 to i8
  store i8 %4305, i8* %57, align 1
  %4306 = xor i64 %4304, %4270
  %4307 = xor i64 %4304, %4285
  %4308 = add nuw nsw i64 %4306, %4307
  %4309 = icmp eq i64 %4308, 2
  %4310 = zext i1 %4309 to i8
  store i8 %4310, i8* %63, align 1
  %4311 = add i64 %4278, -48
  %4312 = add i64 %4214, 62
  store i64 %4312, i64* %PC.i, align 8
  %4313 = inttoptr i64 %4311 to i32*
  %4314 = load i32, i32* %4313, align 4
  %4315 = sext i32 %4314 to i64
  store i64 %4315, i64* %RCX.i1817, align 8
  %4316 = shl nsw i64 %4315, 3
  %4317 = add i64 %4316, %4286
  %4318 = add i64 %4214, 67
  store i64 %4318, i64* %PC.i, align 8
  %4319 = load double, double* %230, align 1
  %4320 = inttoptr i64 %4317 to double*
  %4321 = load double, double* %4320, align 8
  %4322 = fmul double %4319, %4321
  store double %4322, double* %230, align 1
  %4323 = add i64 %4278, -64
  %4324 = add i64 %4214, 72
  store i64 %4324, i64* %PC.i, align 8
  %4325 = inttoptr i64 %4323 to double*
  %4326 = load double, double* %4325, align 8
  store double %4326, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %4327 = add i64 %4278, 64
  %4328 = add i64 %4214, 76
  store i64 %4328, i64* %PC.i, align 8
  %4329 = inttoptr i64 %4327 to i64*
  %4330 = load i64, i64* %4329, align 8
  store i64 %4330, i64* %RAX.i1872, align 8
  %4331 = add i64 %4278, -100
  %4332 = add i64 %4214, 80
  store i64 %4332, i64* %PC.i, align 8
  %4333 = inttoptr i64 %4331 to i32*
  %4334 = load i32, i32* %4333, align 4
  %4335 = sext i32 %4334 to i64
  store i64 %4335, i64* %RCX.i1817, align 8
  %4336 = shl nsw i64 %4335, 3
  %4337 = add i64 %4336, %4330
  %4338 = add i64 %4214, 85
  store i64 %4338, i64* %PC.i, align 8
  %4339 = inttoptr i64 %4337 to double*
  %4340 = load double, double* %4339, align 8
  %4341 = fmul double %4326, %4340
  store double %4341, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4342 = load i64, i64* %RBP.i, align 8
  %4343 = add i64 %4342, 80
  %4344 = add i64 %4214, 89
  store i64 %4344, i64* %PC.i, align 8
  %4345 = inttoptr i64 %4343 to i64*
  %4346 = load i64, i64* %4345, align 8
  store i64 %4346, i64* %RAX.i1872, align 8
  %4347 = add i64 %4342, -48
  %4348 = add i64 %4214, 93
  store i64 %4348, i64* %PC.i, align 8
  %4349 = inttoptr i64 %4347 to i32*
  %4350 = load i32, i32* %4349, align 4
  %4351 = sext i32 %4350 to i64
  store i64 %4351, i64* %RCX.i1817, align 8
  %4352 = shl nsw i64 %4351, 3
  %4353 = add i64 %4352, %4346
  %4354 = add i64 %4214, 98
  store i64 %4354, i64* %PC.i, align 8
  %4355 = inttoptr i64 %4353 to double*
  %4356 = load double, double* %4355, align 8
  %4357 = fdiv double %4341, %4356
  store double %4357, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4358 = add i64 %4342, 16
  %4359 = add i64 %4214, 102
  store i64 %4359, i64* %PC.i, align 8
  %4360 = inttoptr i64 %4358 to i64*
  %4361 = load i64, i64* %4360, align 8
  store i64 %4361, i64* %RAX.i1872, align 8
  %4362 = add i64 %4342, -100
  %4363 = add i64 %4214, 106
  store i64 %4363, i64* %PC.i, align 8
  %4364 = inttoptr i64 %4362 to i32*
  %4365 = load i32, i32* %4364, align 4
  %4366 = sext i32 %4365 to i64
  %4367 = mul nsw i64 %4366, 520
  store i64 %4367, i64* %RCX.i1817, align 8
  %4368 = lshr i64 %4367, 63
  %4369 = add i64 %4367, %4361
  store i64 %4369, i64* %RAX.i1872, align 8
  %4370 = icmp ult i64 %4369, %4361
  %4371 = icmp ult i64 %4369, %4367
  %4372 = or i1 %4370, %4371
  %4373 = zext i1 %4372 to i8
  store i8 %4373, i8* %39, align 1
  %4374 = trunc i64 %4369 to i32
  %4375 = and i32 %4374, 255
  %4376 = tail call i32 @llvm.ctpop.i32(i32 %4375)
  %4377 = trunc i32 %4376 to i8
  %4378 = and i8 %4377, 1
  %4379 = xor i8 %4378, 1
  store i8 %4379, i8* %46, align 1
  %4380 = xor i64 %4367, %4361
  %4381 = xor i64 %4380, %4369
  %4382 = lshr i64 %4381, 4
  %4383 = trunc i64 %4382 to i8
  %4384 = and i8 %4383, 1
  store i8 %4384, i8* %51, align 1
  %4385 = icmp eq i64 %4369, 0
  %4386 = zext i1 %4385 to i8
  store i8 %4386, i8* %54, align 1
  %4387 = lshr i64 %4369, 63
  %4388 = trunc i64 %4387 to i8
  store i8 %4388, i8* %57, align 1
  %4389 = lshr i64 %4361, 63
  %4390 = xor i64 %4387, %4389
  %4391 = xor i64 %4387, %4368
  %4392 = add nuw nsw i64 %4390, %4391
  %4393 = icmp eq i64 %4392, 2
  %4394 = zext i1 %4393 to i8
  store i8 %4394, i8* %63, align 1
  %4395 = add i64 %4342, -104
  %4396 = add i64 %4214, 120
  store i64 %4396, i64* %PC.i, align 8
  %4397 = inttoptr i64 %4395 to i32*
  %4398 = load i32, i32* %4397, align 4
  %4399 = sext i32 %4398 to i64
  store i64 %4399, i64* %RCX.i1817, align 8
  %4400 = shl nsw i64 %4399, 3
  %4401 = add i64 %4400, %4369
  %4402 = add i64 %4214, 125
  store i64 %4402, i64* %PC.i, align 8
  %4403 = inttoptr i64 %4401 to double*
  %4404 = load double, double* %4403, align 8
  %4405 = fmul double %4357, %4404
  store double %4405, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4406 = load double, double* %230, align 1
  %4407 = fadd double %4406, %4405
  store double %4407, double* %230, align 1
  %4408 = load i64, i64* %RBP.i, align 8
  %4409 = add i64 %4408, -64
  %4410 = add i64 %4214, 134
  store i64 %4410, i64* %PC.i, align 8
  %4411 = inttoptr i64 %4409 to double*
  %4412 = load double, double* %4411, align 8
  store double %4412, double* %233, align 1
  store double 0.000000e+00, double* %235, align 1
  %4413 = add i64 %4408, 56
  %4414 = add i64 %4214, 138
  store i64 %4414, i64* %PC.i, align 8
  %4415 = inttoptr i64 %4413 to i64*
  %4416 = load i64, i64* %4415, align 8
  store i64 %4416, i64* %RAX.i1872, align 8
  %4417 = add i64 %4408, -100
  %4418 = add i64 %4214, 142
  store i64 %4418, i64* %PC.i, align 8
  %4419 = inttoptr i64 %4417 to i32*
  %4420 = load i32, i32* %4419, align 4
  %4421 = sext i32 %4420 to i64
  store i64 %4421, i64* %RCX.i1817, align 8
  %4422 = shl nsw i64 %4421, 3
  %4423 = add i64 %4422, %4416
  %4424 = add i64 %4214, 147
  store i64 %4424, i64* %PC.i, align 8
  %4425 = inttoptr i64 %4423 to double*
  %4426 = load double, double* %4425, align 8
  %4427 = fmul double %4412, %4426
  store double %4427, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4428 = add i64 %4408, 80
  %4429 = add i64 %4214, 151
  store i64 %4429, i64* %PC.i, align 8
  %4430 = inttoptr i64 %4428 to i64*
  %4431 = load i64, i64* %4430, align 8
  store i64 %4431, i64* %RAX.i1872, align 8
  %4432 = add i64 %4408, -48
  %4433 = add i64 %4214, 155
  store i64 %4433, i64* %PC.i, align 8
  %4434 = inttoptr i64 %4432 to i32*
  %4435 = load i32, i32* %4434, align 4
  %4436 = sext i32 %4435 to i64
  store i64 %4436, i64* %RCX.i1817, align 8
  %4437 = shl nsw i64 %4436, 3
  %4438 = add i64 %4437, %4431
  %4439 = add i64 %4214, 160
  store i64 %4439, i64* %PC.i, align 8
  %4440 = inttoptr i64 %4438 to double*
  %4441 = load double, double* %4440, align 8
  %4442 = fdiv double %4427, %4441
  store double %4442, double* %233, align 1
  store i64 0, i64* %234, align 1
  %4443 = add i64 %4408, 24
  %4444 = add i64 %4214, 164
  store i64 %4444, i64* %PC.i, align 8
  %4445 = inttoptr i64 %4443 to i64*
  %4446 = load i64, i64* %4445, align 8
  store i64 %4446, i64* %RAX.i1872, align 8
  %4447 = add i64 %4214, 168
  store i64 %4447, i64* %PC.i, align 8
  %4448 = load i32, i32* %4419, align 4
  %4449 = sext i32 %4448 to i64
  %4450 = mul nsw i64 %4449, 33800
  store i64 %4450, i64* %RCX.i1817, align 8
  %4451 = lshr i64 %4450, 63
  %4452 = add i64 %4450, %4446
  store i64 %4452, i64* %RAX.i1872, align 8
  %4453 = icmp ult i64 %4452, %4446
  %4454 = icmp ult i64 %4452, %4450
  %4455 = or i1 %4453, %4454
  %4456 = zext i1 %4455 to i8
  store i8 %4456, i8* %39, align 1
  %4457 = trunc i64 %4452 to i32
  %4458 = and i32 %4457, 255
  %4459 = tail call i32 @llvm.ctpop.i32(i32 %4458)
  %4460 = trunc i32 %4459 to i8
  %4461 = and i8 %4460, 1
  %4462 = xor i8 %4461, 1
  store i8 %4462, i8* %46, align 1
  %4463 = xor i64 %4450, %4446
  %4464 = xor i64 %4463, %4452
  %4465 = lshr i64 %4464, 4
  %4466 = trunc i64 %4465 to i8
  %4467 = and i8 %4466, 1
  store i8 %4467, i8* %51, align 1
  %4468 = icmp eq i64 %4452, 0
  %4469 = zext i1 %4468 to i8
  store i8 %4469, i8* %54, align 1
  %4470 = lshr i64 %4452, 63
  %4471 = trunc i64 %4470 to i8
  store i8 %4471, i8* %57, align 1
  %4472 = lshr i64 %4446, 63
  %4473 = xor i64 %4470, %4472
  %4474 = xor i64 %4470, %4451
  %4475 = add nuw nsw i64 %4473, %4474
  %4476 = icmp eq i64 %4475, 2
  %4477 = zext i1 %4476 to i8
  store i8 %4477, i8* %63, align 1
  %4478 = load i64, i64* %RBP.i, align 8
  %4479 = add i64 %4478, -52
  %4480 = add i64 %4214, 182
  store i64 %4480, i64* %PC.i, align 8
  %4481 = inttoptr i64 %4479 to i32*
  %4482 = load i32, i32* %4481, align 4
  %4483 = sext i32 %4482 to i64
  %4484 = mul nsw i64 %4483, 520
  store i64 %4484, i64* %RCX.i1817, align 8
  %4485 = lshr i64 %4484, 63
  %4486 = add i64 %4484, %4452
  store i64 %4486, i64* %RAX.i1872, align 8
  %4487 = icmp ult i64 %4486, %4452
  %4488 = icmp ult i64 %4486, %4484
  %4489 = or i1 %4487, %4488
  %4490 = zext i1 %4489 to i8
  store i8 %4490, i8* %39, align 1
  %4491 = trunc i64 %4486 to i32
  %4492 = and i32 %4491, 255
  %4493 = tail call i32 @llvm.ctpop.i32(i32 %4492)
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  %4496 = xor i8 %4495, 1
  store i8 %4496, i8* %46, align 1
  %4497 = xor i64 %4484, %4452
  %4498 = xor i64 %4497, %4486
  %4499 = lshr i64 %4498, 4
  %4500 = trunc i64 %4499 to i8
  %4501 = and i8 %4500, 1
  store i8 %4501, i8* %51, align 1
  %4502 = icmp eq i64 %4486, 0
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %54, align 1
  %4504 = lshr i64 %4486, 63
  %4505 = trunc i64 %4504 to i8
  store i8 %4505, i8* %57, align 1
  %4506 = xor i64 %4504, %4470
  %4507 = xor i64 %4504, %4485
  %4508 = add nuw nsw i64 %4506, %4507
  %4509 = icmp eq i64 %4508, 2
  %4510 = zext i1 %4509 to i8
  store i8 %4510, i8* %63, align 1
  %4511 = add i64 %4478, -48
  %4512 = add i64 %4214, 196
  store i64 %4512, i64* %PC.i, align 8
  %4513 = inttoptr i64 %4511 to i32*
  %4514 = load i32, i32* %4513, align 4
  %4515 = sext i32 %4514 to i64
  store i64 %4515, i64* %RCX.i1817, align 8
  %4516 = shl nsw i64 %4515, 3
  %4517 = add i64 %4516, %4486
  %4518 = add i64 %4214, 201
  store i64 %4518, i64* %PC.i, align 8
  %4519 = load double, double* %233, align 1
  %4520 = inttoptr i64 %4517 to double*
  %4521 = load double, double* %4520, align 8
  %4522 = fmul double %4519, %4521
  store double %4522, double* %233, align 1
  %4523 = load double, double* %230, align 1
  %4524 = fsub double %4523, %4522
  store double %4524, double* %230, align 1
  %4525 = add i64 %4478, 48
  %4526 = add i64 %4214, 209
  store i64 %4526, i64* %PC.i, align 8
  %4527 = inttoptr i64 %4525 to i64*
  %4528 = load i64, i64* %4527, align 8
  store i64 %4528, i64* %RAX.i1872, align 8
  %4529 = add i64 %4478, -100
  %4530 = add i64 %4214, 213
  store i64 %4530, i64* %PC.i, align 8
  %4531 = inttoptr i64 %4529 to i32*
  %4532 = load i32, i32* %4531, align 4
  %4533 = sext i32 %4532 to i64
  %4534 = mul nsw i64 %4533, 33800
  store i64 %4534, i64* %RCX.i1817, align 8
  %4535 = lshr i64 %4534, 63
  %4536 = add i64 %4534, %4528
  store i64 %4536, i64* %RAX.i1872, align 8
  %4537 = icmp ult i64 %4536, %4528
  %4538 = icmp ult i64 %4536, %4534
  %4539 = or i1 %4537, %4538
  %4540 = zext i1 %4539 to i8
  store i8 %4540, i8* %39, align 1
  %4541 = trunc i64 %4536 to i32
  %4542 = and i32 %4541, 255
  %4543 = tail call i32 @llvm.ctpop.i32(i32 %4542)
  %4544 = trunc i32 %4543 to i8
  %4545 = and i8 %4544, 1
  %4546 = xor i8 %4545, 1
  store i8 %4546, i8* %46, align 1
  %4547 = xor i64 %4534, %4528
  %4548 = xor i64 %4547, %4536
  %4549 = lshr i64 %4548, 4
  %4550 = trunc i64 %4549 to i8
  %4551 = and i8 %4550, 1
  store i8 %4551, i8* %51, align 1
  %4552 = icmp eq i64 %4536, 0
  %4553 = zext i1 %4552 to i8
  store i8 %4553, i8* %54, align 1
  %4554 = lshr i64 %4536, 63
  %4555 = trunc i64 %4554 to i8
  store i8 %4555, i8* %57, align 1
  %4556 = lshr i64 %4528, 63
  %4557 = xor i64 %4554, %4556
  %4558 = xor i64 %4554, %4535
  %4559 = add nuw nsw i64 %4557, %4558
  %4560 = icmp eq i64 %4559, 2
  %4561 = zext i1 %4560 to i8
  store i8 %4561, i8* %63, align 1
  %4562 = load i64, i64* %RBP.i, align 8
  %4563 = add i64 %4562, -52
  %4564 = add i64 %4214, 227
  store i64 %4564, i64* %PC.i, align 8
  %4565 = inttoptr i64 %4563 to i32*
  %4566 = load i32, i32* %4565, align 4
  %4567 = sext i32 %4566 to i64
  %4568 = mul nsw i64 %4567, 520
  store i64 %4568, i64* %RCX.i1817, align 8
  %4569 = lshr i64 %4568, 63
  %4570 = add i64 %4568, %4536
  store i64 %4570, i64* %RAX.i1872, align 8
  %4571 = icmp ult i64 %4570, %4536
  %4572 = icmp ult i64 %4570, %4568
  %4573 = or i1 %4571, %4572
  %4574 = zext i1 %4573 to i8
  store i8 %4574, i8* %39, align 1
  %4575 = trunc i64 %4570 to i32
  %4576 = and i32 %4575, 255
  %4577 = tail call i32 @llvm.ctpop.i32(i32 %4576)
  %4578 = trunc i32 %4577 to i8
  %4579 = and i8 %4578, 1
  %4580 = xor i8 %4579, 1
  store i8 %4580, i8* %46, align 1
  %4581 = xor i64 %4568, %4536
  %4582 = xor i64 %4581, %4570
  %4583 = lshr i64 %4582, 4
  %4584 = trunc i64 %4583 to i8
  %4585 = and i8 %4584, 1
  store i8 %4585, i8* %51, align 1
  %4586 = icmp eq i64 %4570, 0
  %4587 = zext i1 %4586 to i8
  store i8 %4587, i8* %54, align 1
  %4588 = lshr i64 %4570, 63
  %4589 = trunc i64 %4588 to i8
  store i8 %4589, i8* %57, align 1
  %4590 = xor i64 %4588, %4554
  %4591 = xor i64 %4588, %4569
  %4592 = add nuw nsw i64 %4590, %4591
  %4593 = icmp eq i64 %4592, 2
  %4594 = zext i1 %4593 to i8
  store i8 %4594, i8* %63, align 1
  %4595 = add i64 %4562, -48
  %4596 = add i64 %4214, 241
  store i64 %4596, i64* %PC.i, align 8
  %4597 = inttoptr i64 %4595 to i32*
  %4598 = load i32, i32* %4597, align 4
  %4599 = sext i32 %4598 to i64
  store i64 %4599, i64* %RCX.i1817, align 8
  %4600 = shl nsw i64 %4599, 3
  %4601 = add i64 %4600, %4570
  %4602 = add i64 %4214, 246
  store i64 %4602, i64* %PC.i, align 8
  %4603 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %4604 = load i64, i64* %4603, align 1
  %4605 = inttoptr i64 %4601 to i64*
  store i64 %4604, i64* %4605, align 8
  %4606 = load i64, i64* %RBP.i, align 8
  %4607 = add i64 %4606, 16
  %4608 = load i64, i64* %PC.i, align 8
  %4609 = add i64 %4608, 4
  store i64 %4609, i64* %PC.i, align 8
  %4610 = inttoptr i64 %4607 to i64*
  %4611 = load i64, i64* %4610, align 8
  store i64 %4611, i64* %RAX.i1872, align 8
  %4612 = add i64 %4606, -100
  %4613 = add i64 %4608, 8
  store i64 %4613, i64* %PC.i, align 8
  %4614 = inttoptr i64 %4612 to i32*
  %4615 = load i32, i32* %4614, align 4
  %4616 = sext i32 %4615 to i64
  %4617 = mul nsw i64 %4616, 520
  store i64 %4617, i64* %RCX.i1817, align 8
  %4618 = lshr i64 %4617, 63
  %4619 = add i64 %4617, %4611
  store i64 %4619, i64* %RAX.i1872, align 8
  %4620 = icmp ult i64 %4619, %4611
  %4621 = icmp ult i64 %4619, %4617
  %4622 = or i1 %4620, %4621
  %4623 = zext i1 %4622 to i8
  store i8 %4623, i8* %39, align 1
  %4624 = trunc i64 %4619 to i32
  %4625 = and i32 %4624, 255
  %4626 = tail call i32 @llvm.ctpop.i32(i32 %4625)
  %4627 = trunc i32 %4626 to i8
  %4628 = and i8 %4627, 1
  %4629 = xor i8 %4628, 1
  store i8 %4629, i8* %46, align 1
  %4630 = xor i64 %4617, %4611
  %4631 = xor i64 %4630, %4619
  %4632 = lshr i64 %4631, 4
  %4633 = trunc i64 %4632 to i8
  %4634 = and i8 %4633, 1
  store i8 %4634, i8* %51, align 1
  %4635 = icmp eq i64 %4619, 0
  %4636 = zext i1 %4635 to i8
  store i8 %4636, i8* %54, align 1
  %4637 = lshr i64 %4619, 63
  %4638 = trunc i64 %4637 to i8
  store i8 %4638, i8* %57, align 1
  %4639 = lshr i64 %4611, 63
  %4640 = xor i64 %4637, %4639
  %4641 = xor i64 %4637, %4618
  %4642 = add nuw nsw i64 %4640, %4641
  %4643 = icmp eq i64 %4642, 2
  %4644 = zext i1 %4643 to i8
  store i8 %4644, i8* %63, align 1
  %4645 = add i64 %4606, -104
  %4646 = add i64 %4608, 22
  store i64 %4646, i64* %PC.i, align 8
  %4647 = inttoptr i64 %4645 to i32*
  %4648 = load i32, i32* %4647, align 4
  %4649 = sext i32 %4648 to i64
  store i64 %4649, i64* %RCX.i1817, align 8
  %4650 = shl nsw i64 %4649, 3
  %4651 = add i64 %4650, %4619
  %4652 = add i64 %4608, 27
  store i64 %4652, i64* %PC.i, align 8
  %4653 = inttoptr i64 %4651 to i64*
  %4654 = load i64, i64* %4653, align 8
  %4655 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %4654, i64* %4655, align 1
  store double 0.000000e+00, double* %232, align 1
  %4656 = add i64 %4606, 24
  %4657 = add i64 %4608, 31
  store i64 %4657, i64* %PC.i, align 8
  %4658 = inttoptr i64 %4656 to i64*
  %4659 = load i64, i64* %4658, align 8
  store i64 %4659, i64* %RAX.i1872, align 8
  %4660 = add i64 %4608, 35
  store i64 %4660, i64* %PC.i, align 8
  %4661 = load i32, i32* %4614, align 4
  %4662 = sext i32 %4661 to i64
  %4663 = mul nsw i64 %4662, 33800
  store i64 %4663, i64* %RCX.i1817, align 8
  %4664 = lshr i64 %4663, 63
  %4665 = add i64 %4663, %4659
  store i64 %4665, i64* %RAX.i1872, align 8
  %4666 = icmp ult i64 %4665, %4659
  %4667 = icmp ult i64 %4665, %4663
  %4668 = or i1 %4666, %4667
  %4669 = zext i1 %4668 to i8
  store i8 %4669, i8* %39, align 1
  %4670 = trunc i64 %4665 to i32
  %4671 = and i32 %4670, 255
  %4672 = tail call i32 @llvm.ctpop.i32(i32 %4671)
  %4673 = trunc i32 %4672 to i8
  %4674 = and i8 %4673, 1
  %4675 = xor i8 %4674, 1
  store i8 %4675, i8* %46, align 1
  %4676 = xor i64 %4663, %4659
  %4677 = xor i64 %4676, %4665
  %4678 = lshr i64 %4677, 4
  %4679 = trunc i64 %4678 to i8
  %4680 = and i8 %4679, 1
  store i8 %4680, i8* %51, align 1
  %4681 = icmp eq i64 %4665, 0
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %54, align 1
  %4683 = lshr i64 %4665, 63
  %4684 = trunc i64 %4683 to i8
  store i8 %4684, i8* %57, align 1
  %4685 = lshr i64 %4659, 63
  %4686 = xor i64 %4683, %4685
  %4687 = xor i64 %4683, %4664
  %4688 = add nuw nsw i64 %4686, %4687
  %4689 = icmp eq i64 %4688, 2
  %4690 = zext i1 %4689 to i8
  store i8 %4690, i8* %63, align 1
  %4691 = load i64, i64* %RBP.i, align 8
  %4692 = add i64 %4691, -52
  %4693 = add i64 %4608, 49
  store i64 %4693, i64* %PC.i, align 8
  %4694 = inttoptr i64 %4692 to i32*
  %4695 = load i32, i32* %4694, align 4
  %4696 = sext i32 %4695 to i64
  %4697 = mul nsw i64 %4696, 520
  store i64 %4697, i64* %RCX.i1817, align 8
  %4698 = lshr i64 %4697, 63
  %4699 = add i64 %4697, %4665
  store i64 %4699, i64* %RAX.i1872, align 8
  %4700 = icmp ult i64 %4699, %4665
  %4701 = icmp ult i64 %4699, %4697
  %4702 = or i1 %4700, %4701
  %4703 = zext i1 %4702 to i8
  store i8 %4703, i8* %39, align 1
  %4704 = trunc i64 %4699 to i32
  %4705 = and i32 %4704, 255
  %4706 = tail call i32 @llvm.ctpop.i32(i32 %4705)
  %4707 = trunc i32 %4706 to i8
  %4708 = and i8 %4707, 1
  %4709 = xor i8 %4708, 1
  store i8 %4709, i8* %46, align 1
  %4710 = xor i64 %4697, %4665
  %4711 = xor i64 %4710, %4699
  %4712 = lshr i64 %4711, 4
  %4713 = trunc i64 %4712 to i8
  %4714 = and i8 %4713, 1
  store i8 %4714, i8* %51, align 1
  %4715 = icmp eq i64 %4699, 0
  %4716 = zext i1 %4715 to i8
  store i8 %4716, i8* %54, align 1
  %4717 = lshr i64 %4699, 63
  %4718 = trunc i64 %4717 to i8
  store i8 %4718, i8* %57, align 1
  %4719 = xor i64 %4717, %4683
  %4720 = xor i64 %4717, %4698
  %4721 = add nuw nsw i64 %4719, %4720
  %4722 = icmp eq i64 %4721, 2
  %4723 = zext i1 %4722 to i8
  store i8 %4723, i8* %63, align 1
  %4724 = add i64 %4691, -48
  %4725 = add i64 %4608, 63
  store i64 %4725, i64* %PC.i, align 8
  %4726 = inttoptr i64 %4724 to i32*
  %4727 = load i32, i32* %4726, align 4
  %4728 = sext i32 %4727 to i64
  store i64 %4728, i64* %RCX.i1817, align 8
  %4729 = shl nsw i64 %4728, 3
  %4730 = add i64 %4729, %4699
  %4731 = add i64 %4608, 68
  store i64 %4731, i64* %PC.i, align 8
  %4732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %143, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %4733 = load i64, i64* %4732, align 1
  %4734 = inttoptr i64 %4730 to i64*
  store i64 %4733, i64* %4734, align 8
  %4735 = load i64, i64* %RBP.i, align 8
  %4736 = add i64 %4735, -104
  %4737 = load i64, i64* %PC.i, align 8
  %4738 = add i64 %4737, 3
  store i64 %4738, i64* %PC.i, align 8
  %4739 = inttoptr i64 %4736 to i32*
  %4740 = load i32, i32* %4739, align 4
  %4741 = add i32 %4740, 1
  %4742 = zext i32 %4741 to i64
  store i64 %4742, i64* %RAX.i1872, align 8
  %4743 = icmp eq i32 %4740, -1
  %4744 = icmp eq i32 %4741, 0
  %4745 = or i1 %4743, %4744
  %4746 = zext i1 %4745 to i8
  store i8 %4746, i8* %39, align 1
  %4747 = and i32 %4741, 255
  %4748 = tail call i32 @llvm.ctpop.i32(i32 %4747)
  %4749 = trunc i32 %4748 to i8
  %4750 = and i8 %4749, 1
  %4751 = xor i8 %4750, 1
  store i8 %4751, i8* %46, align 1
  %4752 = xor i32 %4740, %4741
  %4753 = lshr i32 %4752, 4
  %4754 = trunc i32 %4753 to i8
  %4755 = and i8 %4754, 1
  store i8 %4755, i8* %51, align 1
  %4756 = icmp eq i32 %4741, 0
  %4757 = zext i1 %4756 to i8
  store i8 %4757, i8* %54, align 1
  %4758 = lshr i32 %4741, 31
  %4759 = trunc i32 %4758 to i8
  store i8 %4759, i8* %57, align 1
  %4760 = lshr i32 %4740, 31
  %4761 = xor i32 %4758, %4760
  %4762 = add nuw nsw i32 %4761, %4758
  %4763 = icmp eq i32 %4762, 2
  %4764 = zext i1 %4763 to i8
  store i8 %4764, i8* %63, align 1
  %4765 = add i64 %4737, 9
  store i64 %4765, i64* %PC.i, align 8
  store i32 %4741, i32* %4739, align 4
  %4766 = load i64, i64* %PC.i, align 8
  %4767 = add i64 %4766, -2643
  store i64 %4767, i64* %3, align 8
  br label %block_.L_40148d

block_.L_401ee5:                                  ; preds = %block_.L_40148d
  %4768 = add i64 %278, -100
  %4769 = add i64 %314, 8
  store i64 %4769, i64* %PC.i, align 8
  %4770 = inttoptr i64 %4768 to i32*
  %4771 = load i32, i32* %4770, align 4
  %4772 = add i32 %4771, 1
  %4773 = zext i32 %4772 to i64
  store i64 %4773, i64* %RAX.i1872, align 8
  %4774 = icmp eq i32 %4771, -1
  %4775 = icmp eq i32 %4772, 0
  %4776 = or i1 %4774, %4775
  %4777 = zext i1 %4776 to i8
  store i8 %4777, i8* %39, align 1
  %4778 = and i32 %4772, 255
  %4779 = tail call i32 @llvm.ctpop.i32(i32 %4778)
  %4780 = trunc i32 %4779 to i8
  %4781 = and i8 %4780, 1
  %4782 = xor i8 %4781, 1
  store i8 %4782, i8* %46, align 1
  %4783 = xor i32 %4771, %4772
  %4784 = lshr i32 %4783, 4
  %4785 = trunc i32 %4784 to i8
  %4786 = and i8 %4785, 1
  store i8 %4786, i8* %51, align 1
  %4787 = icmp eq i32 %4772, 0
  %4788 = zext i1 %4787 to i8
  store i8 %4788, i8* %54, align 1
  %4789 = lshr i32 %4772, 31
  %4790 = trunc i32 %4789 to i8
  store i8 %4790, i8* %57, align 1
  %4791 = lshr i32 %4771, 31
  %4792 = xor i32 %4789, %4791
  %4793 = add nuw nsw i32 %4792, %4789
  %4794 = icmp eq i32 %4793, 2
  %4795 = zext i1 %4794 to i8
  store i8 %4795, i8* %63, align 1
  %4796 = add i64 %314, 14
  store i64 %4796, i64* %PC.i, align 8
  store i32 %4772, i32* %4770, align 4
  %4797 = load i64, i64* %PC.i, align 8
  %4798 = add i64 %4797, -2681
  store i64 %4798, i64* %3, align 8
  br label %block_.L_40147a

block_.L_401ef8:                                  ; preds = %block_.L_40147a
  %4799 = load i64, i64* %RSP.i1887, align 8
  %4800 = add i64 %4799, 32
  store i64 %4800, i64* %RSP.i1887, align 8
  %4801 = icmp ugt i64 %4799, -33
  %4802 = zext i1 %4801 to i8
  store i8 %4802, i8* %39, align 1
  %4803 = trunc i64 %4800 to i32
  %4804 = and i32 %4803, 255
  %4805 = tail call i32 @llvm.ctpop.i32(i32 %4804)
  %4806 = trunc i32 %4805 to i8
  %4807 = and i8 %4806, 1
  %4808 = xor i8 %4807, 1
  store i8 %4808, i8* %46, align 1
  %4809 = xor i64 %4799, %4800
  %4810 = lshr i64 %4809, 4
  %4811 = trunc i64 %4810 to i8
  %4812 = and i8 %4811, 1
  store i8 %4812, i8* %51, align 1
  %4813 = icmp eq i64 %4800, 0
  %4814 = zext i1 %4813 to i8
  store i8 %4814, i8* %54, align 1
  %4815 = lshr i64 %4800, 63
  %4816 = trunc i64 %4815 to i8
  store i8 %4816, i8* %57, align 1
  %4817 = lshr i64 %4799, 63
  %4818 = xor i64 %4815, %4817
  %4819 = add nuw nsw i64 %4818, %4815
  %4820 = icmp eq i64 %4819, 2
  %4821 = zext i1 %4820 to i8
  store i8 %4821, i8* %63, align 1
  %4822 = add i64 %273, 5
  store i64 %4822, i64* %PC.i, align 8
  %4823 = add i64 %4799, 40
  %4824 = inttoptr i64 %4800 to i64*
  %4825 = load i64, i64* %4824, align 8
  store i64 %4825, i64* %RBX.i1877, align 8
  store i64 %4823, i64* %6, align 8
  %4826 = add i64 %273, 7
  store i64 %4826, i64* %PC.i, align 8
  %4827 = add i64 %4799, 48
  %4828 = inttoptr i64 %4823 to i64*
  %4829 = load i64, i64* %4828, align 8
  store i64 %4829, i64* %R12.i1879, align 8
  store i64 %4827, i64* %6, align 8
  %4830 = add i64 %273, 9
  store i64 %4830, i64* %PC.i, align 8
  %4831 = add i64 %4799, 56
  %4832 = inttoptr i64 %4827 to i64*
  %4833 = load i64, i64* %4832, align 8
  store i64 %4833, i64* %R13.i1881, align 8
  store i64 %4831, i64* %6, align 8
  %4834 = add i64 %273, 11
  store i64 %4834, i64* %PC.i, align 8
  %4835 = add i64 %4799, 64
  %4836 = inttoptr i64 %4831 to i64*
  %4837 = load i64, i64* %4836, align 8
  store i64 %4837, i64* %R14.i1883, align 8
  store i64 %4835, i64* %6, align 8
  %4838 = add i64 %273, 13
  store i64 %4838, i64* %PC.i, align 8
  %4839 = add i64 %4799, 72
  %4840 = inttoptr i64 %4835 to i64*
  %4841 = load i64, i64* %4840, align 8
  store i64 %4841, i64* %R15.i1885, align 8
  store i64 %4839, i64* %6, align 8
  %4842 = add i64 %273, 14
  store i64 %4842, i64* %PC.i, align 8
  %4843 = add i64 %4799, 80
  %4844 = inttoptr i64 %4839 to i64*
  %4845 = load i64, i64* %4844, align 8
  store i64 %4845, i64* %RBP.i, align 8
  store i64 %4843, i64* %6, align 8
  %4846 = add i64 %273, 15
  store i64 %4846, i64* %PC.i, align 8
  %4847 = inttoptr i64 %4843 to i64*
  %4848 = load i64, i64* %4847, align 8
  store i64 %4848, i64* %3, align 8
  %4849 = add i64 %4799, 88
  store i64 %4849, i64* %6, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %20 = trunc i64 %3 to i32
  %21 = xor i32 %20, %7
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %7, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %29
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %10, i64 %rel_off2, i64 %rel_off1
  %14 = add i64 %3, %.v
  store i64 %14, i64* %13, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401eea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
