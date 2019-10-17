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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @kernel_fdtd_apml(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %R15.i1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i1903, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i1901, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i1899, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i1897, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %RBX.i1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %30 = load i64, i64* %RBX.i1895, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  %33 = add i64 %7, -48
  %34 = inttoptr i64 %33 to i64*
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %7, -104
  store i64 %36, i64* %6, align 8
  %37 = icmp ult i64 %33, 56
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
  %47 = xor i64 %33, 16
  %48 = xor i64 %47, %36
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %51, i8* %52, align 1
  %53 = icmp eq i64 %36, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1
  %56 = lshr i64 %36, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1
  %59 = lshr i64 %33, 63
  %60 = xor i64 %56, %59
  %61 = add nuw nsw i64 %60, %59
  %62 = icmp eq i64 %61, 2
  %63 = zext i1 %62 to i8
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %63, i8* %64, align 1
  %RAX.i1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, 96
  %67 = add i64 %35, 8
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i64*
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %RAX.i1890, align 8
  %R10.i1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %70 = add i64 %65, 88
  %71 = add i64 %35, 12
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %R10.i1888, align 8
  %R11.i1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %74 = add i64 %65, 80
  %75 = add i64 %35, 16
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %R11.i1885, align 8
  %78 = add i64 %65, 72
  %79 = add i64 %35, 20
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i64*
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %RBX.i1895, align 8
  %82 = add i64 %65, 64
  %83 = add i64 %35, 24
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %82 to i64*
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %R14.i1901, align 8
  %86 = add i64 %65, 56
  %87 = add i64 %35, 28
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %R15.i1903, align 8
  %90 = add i64 %65, 48
  %91 = add i64 %35, 32
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %R12.i1897, align 8
  %94 = add i64 %65, 40
  %95 = add i64 %35, 36
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i64*
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %R13.i1899, align 8
  %98 = add i64 %65, -208
  %99 = add i64 %35, 43
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i64*
  store i64 %69, i64* %100, align 8
  %101 = load i64, i64* %RBP.i, align 8
  %102 = add i64 %101, 32
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %102 to i64*
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %RAX.i1890, align 8
  %107 = add i64 %101, -216
  %108 = add i64 %103, 11
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i64*
  store i64 %106, i64* %109, align 8
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, 24
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, 4
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %111 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %RAX.i1890, align 8
  %116 = add i64 %110, -224
  %117 = add i64 %112, 11
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i64*
  store i64 %115, i64* %118, align 8
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, 16
  %121 = load i64, i64* %3, align 8
  %122 = add i64 %121, 4
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %120 to i64*
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %RAX.i1890, align 8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %125 to i32*
  %126 = add i64 %119, -44
  %127 = load i32, i32* %EDI.i, align 4
  %128 = add i64 %121, 7
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %129, align 4
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %130 to i32*
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -48
  %133 = load i32, i32* %ESI.i, align 4
  %134 = load i64, i64* %3, align 8
  %135 = add i64 %134, 3
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %132 to i32*
  store i32 %133, i32* %136, align 4
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1844 = bitcast %union.anon* %137 to i32*
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -52
  %140 = load i32, i32* %EDX.i1844, align 4
  %141 = load i64, i64* %3, align 8
  %142 = add i64 %141, 3
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %139 to i32*
  store i32 %140, i32* %143, align 4
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -64
  %147 = load i64, i64* %3, align 8
  %148 = add i64 %147, 5
  store i64 %148, i64* %3, align 8
  %149 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %144, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %150 = load i64, i64* %149, align 1
  %151 = inttoptr i64 %146 to i64*
  store i64 %150, i64* %151, align 8
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -72
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 5
  store i64 %156, i64* %3, align 8
  %157 = bitcast %union.VectorReg* %152 to double*
  %158 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %152, i64 0, i32 0, i32 0, i32 0, i64 0
  %159 = load i64, i64* %158, align 1
  %160 = inttoptr i64 %154 to i64*
  store i64 %159, i64* %160, align 8
  %RCX.i1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -80
  %163 = load i64, i64* %RCX.i1835, align 8
  %164 = load i64, i64* %3, align 8
  %165 = add i64 %164, 4
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %162 to i64*
  store i64 %163, i64* %166, align 8
  %R8.i1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -88
  %169 = load i64, i64* %R8.i1833, align 8
  %170 = load i64, i64* %3, align 8
  %171 = add i64 %170, 4
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %168 to i64*
  store i64 %169, i64* %172, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -96
  %175 = load i64, i64* %R9.i, align 8
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 4
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %174 to i64*
  store i64 %175, i64* %178, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -104
  %181 = load i64, i64* %RAX.i1890, align 8
  %182 = load i64, i64* %3, align 8
  %183 = add i64 %182, 4
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %180 to i64*
  store i64 %181, i64* %184, align 8
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -224
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, 7
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %186 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %RAX.i1890, align 8
  %191 = add i64 %185, -112
  %192 = add i64 %187, 11
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i64*
  store i64 %190, i64* %193, align 8
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -216
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, 7
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %195 to i64*
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %RCX.i1835, align 8
  %200 = add i64 %194, -120
  %201 = add i64 %196, 11
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i64*
  store i64 %199, i64* %202, align 8
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -128
  %205 = load i64, i64* %R13.i1899, align 8
  %206 = load i64, i64* %3, align 8
  %207 = add i64 %206, 4
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %204 to i64*
  store i64 %205, i64* %208, align 8
  %209 = load i64, i64* %RBP.i, align 8
  %210 = add i64 %209, -136
  %211 = load i64, i64* %R12.i1897, align 8
  %212 = load i64, i64* %3, align 8
  %213 = add i64 %212, 7
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %210 to i64*
  store i64 %211, i64* %214, align 8
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -144
  %217 = load i64, i64* %R15.i1903, align 8
  %218 = load i64, i64* %3, align 8
  %219 = add i64 %218, 7
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %216 to i64*
  store i64 %217, i64* %220, align 8
  %221 = load i64, i64* %RBP.i, align 8
  %222 = add i64 %221, -152
  %223 = load i64, i64* %R14.i1901, align 8
  %224 = load i64, i64* %3, align 8
  %225 = add i64 %224, 7
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %222 to i64*
  store i64 %223, i64* %226, align 8
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -160
  %229 = load i64, i64* %RBX.i1895, align 8
  %230 = load i64, i64* %3, align 8
  %231 = add i64 %230, 7
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %228 to i64*
  store i64 %229, i64* %232, align 8
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -168
  %235 = load i64, i64* %R11.i1885, align 8
  %236 = load i64, i64* %3, align 8
  %237 = add i64 %236, 7
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %234 to i64*
  store i64 %235, i64* %238, align 8
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -176
  %241 = load i64, i64* %R10.i1888, align 8
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, 7
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %240 to i64*
  store i64 %241, i64* %244, align 8
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -208
  %247 = load i64, i64* %3, align 8
  %248 = add i64 %247, 7
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %246 to i64*
  %250 = load i64, i64* %249, align 8
  store i64 %250, i64* %R8.i1833, align 8
  %251 = add i64 %245, -184
  %252 = add i64 %247, 14
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i64*
  store i64 %250, i64* %253, align 8
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -188
  %256 = load i64, i64* %3, align 8
  %257 = add i64 %256, 10
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %255 to i32*
  store i32 0, i32* %258, align 4
  %259 = bitcast [32 x %union.VectorReg]* %144 to double*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %261 = bitcast i64* %260 to double*
  %RDX.i1724 = getelementptr inbounds %union.anon, %union.anon* %137, i64 0, i32 0
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %263 = bitcast i64* %262 to double*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_401581

block_.L_401581:                                  ; preds = %block_.L_402232, %entry
  %264 = phi i64 [ %4824, %block_.L_402232 ], [ %.pre, %entry ]
  %265 = load i64, i64* %RBP.i, align 8
  %266 = add i64 %265, -188
  %267 = add i64 %264, 6
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RAX.i1890, align 8
  %271 = add i64 %265, -44
  %272 = add i64 %264, 9
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i32*
  %274 = load i32, i32* %273, align 4
  %275 = sub i32 %269, %274
  %276 = icmp ult i32 %269, %274
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %39, align 1
  %278 = and i32 %275, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %46, align 1
  %283 = xor i32 %274, %269
  %284 = xor i32 %283, %275
  %285 = lshr i32 %284, 4
  %286 = trunc i32 %285 to i8
  %287 = and i8 %286, 1
  store i8 %287, i8* %52, align 1
  %288 = icmp eq i32 %275, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %55, align 1
  %290 = lshr i32 %275, 31
  %291 = trunc i32 %290 to i8
  store i8 %291, i8* %58, align 1
  %292 = lshr i32 %269, 31
  %293 = lshr i32 %274, 31
  %294 = xor i32 %293, %292
  %295 = xor i32 %290, %292
  %296 = add nuw nsw i32 %295, %294
  %297 = icmp eq i32 %296, 2
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %64, align 1
  %299 = icmp ne i8 %291, 0
  %300 = xor i1 %299, %297
  %.v15 = select i1 %300, i64 15, i64 3274
  %301 = add i64 %264, %.v15
  store i64 %301, i64* %3, align 8
  br i1 %300, label %block_401590, label %block_.L_40224b

block_401590:                                     ; preds = %block_.L_401581
  %302 = add i64 %265, -192
  %303 = add i64 %301, 10
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %302 to i32*
  store i32 0, i32* %304, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_40159a

block_.L_40159a:                                  ; preds = %block_.L_401f52, %block_401590
  %305 = phi i64 [ %4794, %block_.L_401f52 ], [ %.pre10, %block_401590 ]
  %306 = load i64, i64* %RBP.i, align 8
  %307 = add i64 %306, -192
  %308 = add i64 %305, 6
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RAX.i1890, align 8
  %312 = add i64 %306, -52
  %313 = add i64 %305, 9
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = sub i32 %310, %315
  %317 = icmp ult i32 %310, %315
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %39, align 1
  %319 = and i32 %316, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %46, align 1
  %324 = xor i32 %315, %310
  %325 = xor i32 %324, %316
  %326 = lshr i32 %325, 4
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  store i8 %328, i8* %52, align 1
  %329 = icmp eq i32 %316, 0
  %330 = zext i1 %329 to i8
  store i8 %330, i8* %55, align 1
  %331 = lshr i32 %316, 31
  %332 = trunc i32 %331 to i8
  store i8 %332, i8* %58, align 1
  %333 = lshr i32 %310, 31
  %334 = lshr i32 %315, 31
  %335 = xor i32 %334, %333
  %336 = xor i32 %331, %333
  %337 = add nuw nsw i32 %336, %335
  %338 = icmp eq i32 %337, 2
  %339 = zext i1 %338 to i8
  store i8 %339, i8* %64, align 1
  %340 = icmp ne i8 %332, 0
  %341 = xor i1 %340, %338
  %.v = select i1 %341, i64 15, i64 3224
  %342 = add i64 %305, %.v
  store i64 %342, i64* %3, align 8
  br i1 %341, label %block_4015a9, label %block_.L_402232

block_4015a9:                                     ; preds = %block_.L_40159a
  %343 = add i64 %306, -196
  %344 = add i64 %342, 10
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  store i32 0, i32* %345, align 4
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_4015b3

block_.L_4015b3:                                  ; preds = %block_4015c2, %block_4015a9
  %346 = phi i64 [ %1565, %block_4015c2 ], [ %.pre11, %block_4015a9 ]
  %347 = load i64, i64* %RBP.i, align 8
  %348 = add i64 %347, -196
  %349 = add i64 %346, 6
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RAX.i1890, align 8
  %353 = add i64 %347, -48
  %354 = add i64 %346, 9
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  %356 = load i32, i32* %355, align 4
  %357 = sub i32 %351, %356
  %358 = icmp ult i32 %351, %356
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %39, align 1
  %360 = and i32 %357, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %46, align 1
  %365 = xor i32 %356, %351
  %366 = xor i32 %365, %357
  %367 = lshr i32 %366, 4
  %368 = trunc i32 %367 to i8
  %369 = and i8 %368, 1
  store i8 %369, i8* %52, align 1
  %370 = icmp eq i32 %357, 0
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %55, align 1
  %372 = lshr i32 %357, 31
  %373 = trunc i32 %372 to i8
  store i8 %373, i8* %58, align 1
  %374 = lshr i32 %351, 31
  %375 = lshr i32 %356, 31
  %376 = xor i32 %375, %374
  %377 = xor i32 %372, %374
  %378 = add nuw nsw i32 %377, %376
  %379 = icmp eq i32 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %64, align 1
  %381 = icmp ne i8 %373, 0
  %382 = xor i1 %381, %379
  %.v13 = select i1 %382, i64 15, i64 864
  %383 = add i64 %346, %.v13
  %384 = add i64 %347, -120
  %385 = add i64 %383, 4
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %384 to i64*
  %387 = load i64, i64* %386, align 8
  store i64 %387, i64* %RAX.i1890, align 8
  %388 = add i64 %347, -188
  %389 = add i64 %383, 11
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i32*
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  %393 = mul nsw i64 %392, 33800
  store i64 %393, i64* %RCX.i1835, align 8
  %394 = lshr i64 %393, 63
  %395 = add i64 %393, %387
  store i64 %395, i64* %RAX.i1890, align 8
  %396 = icmp ult i64 %395, %387
  %397 = icmp ult i64 %395, %393
  %398 = or i1 %396, %397
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %39, align 1
  %400 = trunc i64 %395 to i32
  %401 = and i32 %400, 255
  %402 = tail call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  store i8 %405, i8* %46, align 1
  %406 = xor i64 %393, %387
  %407 = xor i64 %406, %395
  %408 = lshr i64 %407, 4
  %409 = trunc i64 %408 to i8
  %410 = and i8 %409, 1
  store i8 %410, i8* %52, align 1
  %411 = icmp eq i64 %395, 0
  %412 = zext i1 %411 to i8
  store i8 %412, i8* %55, align 1
  %413 = lshr i64 %395, 63
  %414 = trunc i64 %413 to i8
  store i8 %414, i8* %58, align 1
  %415 = lshr i64 %387, 63
  %416 = xor i64 %413, %415
  %417 = xor i64 %413, %394
  %418 = add nuw nsw i64 %416, %417
  %419 = icmp eq i64 %418, 2
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %64, align 1
  %421 = load i64, i64* %RBP.i, align 8
  %422 = add i64 %421, -192
  %423 = add i64 %383, 28
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = mul nsw i64 %426, 520
  store i64 %427, i64* %RCX.i1835, align 8
  %428 = lshr i64 %427, 63
  %429 = add i64 %383, 38
  store i64 %429, i64* %3, align 8
  %430 = add i64 %427, %395
  store i64 %430, i64* %RAX.i1890, align 8
  %431 = icmp ult i64 %430, %395
  %432 = icmp ult i64 %430, %427
  %433 = or i1 %431, %432
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %39, align 1
  %435 = trunc i64 %430 to i32
  %436 = and i32 %435, 255
  %437 = tail call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  store i8 %440, i8* %46, align 1
  %441 = xor i64 %427, %395
  %442 = xor i64 %441, %430
  %443 = lshr i64 %442, 4
  %444 = trunc i64 %443 to i8
  %445 = and i8 %444, 1
  store i8 %445, i8* %52, align 1
  %446 = icmp eq i64 %430, 0
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %55, align 1
  %448 = lshr i64 %430, 63
  %449 = trunc i64 %448 to i8
  store i8 %449, i8* %58, align 1
  %450 = xor i64 %448, %413
  %451 = xor i64 %448, %428
  %452 = add nuw nsw i64 %450, %451
  %453 = icmp eq i64 %452, 2
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %64, align 1
  br i1 %382, label %block_4015c2, label %block_.L_401913

block_4015c2:                                     ; preds = %block_.L_4015b3
  %455 = add i64 %421, -196
  %456 = add i64 %383, 45
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  store i64 %459, i64* %RCX.i1835, align 8
  %460 = shl nsw i64 %459, 3
  %461 = add i64 %460, %430
  %462 = add i64 %383, 50
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i64*
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %465 = add i64 %421, -120
  %466 = add i64 %383, 54
  store i64 %466, i64* %3, align 8
  %467 = inttoptr i64 %465 to i64*
  %468 = load i64, i64* %467, align 8
  store i64 %468, i64* %RAX.i1890, align 8
  %469 = add i64 %421, -188
  %470 = add i64 %383, 61
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i32*
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  %474 = mul nsw i64 %473, 33800
  store i64 %474, i64* %RCX.i1835, align 8
  %475 = lshr i64 %474, 63
  %476 = add i64 %474, %468
  store i64 %476, i64* %RAX.i1890, align 8
  %477 = icmp ult i64 %476, %468
  %478 = icmp ult i64 %476, %474
  %479 = or i1 %477, %478
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %39, align 1
  %481 = trunc i64 %476 to i32
  %482 = and i32 %481, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %46, align 1
  %487 = xor i64 %474, %468
  %488 = xor i64 %487, %476
  %489 = lshr i64 %488, 4
  %490 = trunc i64 %489 to i8
  %491 = and i8 %490, 1
  store i8 %491, i8* %52, align 1
  %492 = icmp eq i64 %476, 0
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %55, align 1
  %494 = lshr i64 %476, 63
  %495 = trunc i64 %494 to i8
  store i8 %495, i8* %58, align 1
  %496 = lshr i64 %468, 63
  %497 = xor i64 %494, %496
  %498 = xor i64 %494, %475
  %499 = add nuw nsw i64 %497, %498
  %500 = icmp eq i64 %499, 2
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %64, align 1
  %502 = add i64 %383, 77
  store i64 %502, i64* %3, align 8
  %503 = load i32, i32* %424, align 4
  %504 = add i32 %503, 1
  %505 = zext i32 %504 to i64
  store i64 %505, i64* %RDX.i1724, align 8
  %506 = sext i32 %504 to i64
  %507 = mul nsw i64 %506, 520
  store i64 %507, i64* %RCX.i1835, align 8
  %508 = lshr i64 %507, 63
  %509 = load i64, i64* %RAX.i1890, align 8
  %510 = add i64 %507, %509
  store i64 %510, i64* %RAX.i1890, align 8
  %511 = icmp ult i64 %510, %509
  %512 = icmp ult i64 %510, %507
  %513 = or i1 %511, %512
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %39, align 1
  %515 = trunc i64 %510 to i32
  %516 = and i32 %515, 255
  %517 = tail call i32 @llvm.ctpop.i32(i32 %516)
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  %520 = xor i8 %519, 1
  store i8 %520, i8* %46, align 1
  %521 = xor i64 %507, %509
  %522 = xor i64 %521, %510
  %523 = lshr i64 %522, 4
  %524 = trunc i64 %523 to i8
  %525 = and i8 %524, 1
  store i8 %525, i8* %52, align 1
  %526 = icmp eq i64 %510, 0
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %55, align 1
  %528 = lshr i64 %510, 63
  %529 = trunc i64 %528 to i8
  store i8 %529, i8* %58, align 1
  %530 = lshr i64 %509, 63
  %531 = xor i64 %528, %530
  %532 = xor i64 %528, %508
  %533 = add nuw nsw i64 %531, %532
  %534 = icmp eq i64 %533, 2
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %64, align 1
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -196
  %538 = add i64 %383, 100
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %537 to i32*
  %540 = load i32, i32* %539, align 4
  %541 = sext i32 %540 to i64
  store i64 %541, i64* %RCX.i1835, align 8
  %542 = shl nsw i64 %541, 3
  %543 = add i64 %542, %510
  %544 = add i64 %383, 105
  store i64 %544, i64* %3, align 8
  %545 = load double, double* %259, align 1
  %546 = inttoptr i64 %543 to double*
  %547 = load double, double* %546, align 8
  %548 = fsub double %545, %547
  store double %548, double* %259, align 1
  %549 = add i64 %536, -128
  %550 = add i64 %383, 109
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RAX.i1890, align 8
  %553 = add i64 %536, -188
  %554 = add i64 %383, 116
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = sext i32 %556 to i64
  %558 = mul nsw i64 %557, 33800
  store i64 %558, i64* %RCX.i1835, align 8
  %559 = lshr i64 %558, 63
  %560 = add i64 %558, %552
  store i64 %560, i64* %RAX.i1890, align 8
  %561 = icmp ult i64 %560, %552
  %562 = icmp ult i64 %560, %558
  %563 = or i1 %561, %562
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %39, align 1
  %565 = trunc i64 %560 to i32
  %566 = and i32 %565, 255
  %567 = tail call i32 @llvm.ctpop.i32(i32 %566)
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  store i8 %570, i8* %46, align 1
  %571 = xor i64 %558, %552
  %572 = xor i64 %571, %560
  %573 = lshr i64 %572, 4
  %574 = trunc i64 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %52, align 1
  %576 = icmp eq i64 %560, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %55, align 1
  %578 = lshr i64 %560, 63
  %579 = trunc i64 %578 to i8
  store i8 %579, i8* %58, align 1
  %580 = lshr i64 %552, 63
  %581 = xor i64 %578, %580
  %582 = xor i64 %578, %559
  %583 = add nuw nsw i64 %581, %582
  %584 = icmp eq i64 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %64, align 1
  %586 = add i64 %536, -192
  %587 = add i64 %383, 133
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = sext i32 %589 to i64
  %591 = mul nsw i64 %590, 520
  store i64 %591, i64* %RCX.i1835, align 8
  %592 = lshr i64 %591, 63
  %593 = add i64 %591, %560
  store i64 %593, i64* %RAX.i1890, align 8
  %594 = icmp ult i64 %593, %560
  %595 = icmp ult i64 %593, %591
  %596 = or i1 %594, %595
  %597 = zext i1 %596 to i8
  store i8 %597, i8* %39, align 1
  %598 = trunc i64 %593 to i32
  %599 = and i32 %598, 255
  %600 = tail call i32 @llvm.ctpop.i32(i32 %599)
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = xor i8 %602, 1
  store i8 %603, i8* %46, align 1
  %604 = xor i64 %591, %560
  %605 = xor i64 %604, %593
  %606 = lshr i64 %605, 4
  %607 = trunc i64 %606 to i8
  %608 = and i8 %607, 1
  store i8 %608, i8* %52, align 1
  %609 = icmp eq i64 %593, 0
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %55, align 1
  %611 = lshr i64 %593, 63
  %612 = trunc i64 %611 to i8
  store i8 %612, i8* %58, align 1
  %613 = xor i64 %611, %578
  %614 = xor i64 %611, %592
  %615 = add nuw nsw i64 %613, %614
  %616 = icmp eq i64 %615, 2
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %64, align 1
  %618 = load i64, i64* %RBP.i, align 8
  %619 = add i64 %618, -196
  %620 = add i64 %383, 149
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %619 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = add i32 %622, 1
  %624 = zext i32 %623 to i64
  store i64 %624, i64* %RDX.i1724, align 8
  %625 = icmp eq i32 %622, -1
  %626 = icmp eq i32 %623, 0
  %627 = or i1 %625, %626
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %39, align 1
  %629 = and i32 %623, 255
  %630 = tail call i32 @llvm.ctpop.i32(i32 %629)
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  store i8 %633, i8* %46, align 1
  %634 = xor i32 %623, %622
  %635 = lshr i32 %634, 4
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  store i8 %637, i8* %52, align 1
  %638 = zext i1 %626 to i8
  store i8 %638, i8* %55, align 1
  %639 = lshr i32 %623, 31
  %640 = trunc i32 %639 to i8
  store i8 %640, i8* %58, align 1
  %641 = lshr i32 %622, 31
  %642 = xor i32 %639, %641
  %643 = add nuw nsw i32 %642, %639
  %644 = icmp eq i32 %643, 2
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %64, align 1
  %646 = sext i32 %623 to i64
  store i64 %646, i64* %RCX.i1835, align 8
  %647 = shl nsw i64 %646, 3
  %648 = add i64 %593, %647
  %649 = add i64 %383, 160
  store i64 %649, i64* %3, align 8
  %650 = load double, double* %259, align 1
  %651 = inttoptr i64 %648 to double*
  %652 = load double, double* %651, align 8
  %653 = fadd double %650, %652
  store double %653, double* %259, align 1
  %654 = add i64 %618, -128
  %655 = add i64 %383, 164
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i64*
  %657 = load i64, i64* %656, align 8
  store i64 %657, i64* %RAX.i1890, align 8
  %658 = add i64 %618, -188
  %659 = add i64 %383, 171
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i32*
  %661 = load i32, i32* %660, align 4
  %662 = sext i32 %661 to i64
  %663 = mul nsw i64 %662, 33800
  store i64 %663, i64* %RCX.i1835, align 8
  %664 = lshr i64 %663, 63
  %665 = add i64 %663, %657
  store i64 %665, i64* %RAX.i1890, align 8
  %666 = icmp ult i64 %665, %657
  %667 = icmp ult i64 %665, %663
  %668 = or i1 %666, %667
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %39, align 1
  %670 = trunc i64 %665 to i32
  %671 = and i32 %670, 255
  %672 = tail call i32 @llvm.ctpop.i32(i32 %671)
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  store i8 %675, i8* %46, align 1
  %676 = xor i64 %663, %657
  %677 = xor i64 %676, %665
  %678 = lshr i64 %677, 4
  %679 = trunc i64 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %52, align 1
  %681 = icmp eq i64 %665, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %55, align 1
  %683 = lshr i64 %665, 63
  %684 = trunc i64 %683 to i8
  store i8 %684, i8* %58, align 1
  %685 = lshr i64 %657, 63
  %686 = xor i64 %683, %685
  %687 = xor i64 %683, %664
  %688 = add nuw nsw i64 %686, %687
  %689 = icmp eq i64 %688, 2
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %64, align 1
  %691 = load i64, i64* %RBP.i, align 8
  %692 = add i64 %691, -192
  %693 = add i64 %383, 188
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i32*
  %695 = load i32, i32* %694, align 4
  %696 = sext i32 %695 to i64
  %697 = mul nsw i64 %696, 520
  store i64 %697, i64* %RCX.i1835, align 8
  %698 = lshr i64 %697, 63
  %699 = add i64 %697, %665
  store i64 %699, i64* %RAX.i1890, align 8
  %700 = icmp ult i64 %699, %665
  %701 = icmp ult i64 %699, %697
  %702 = or i1 %700, %701
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %39, align 1
  %704 = trunc i64 %699 to i32
  %705 = and i32 %704, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %46, align 1
  %710 = xor i64 %697, %665
  %711 = xor i64 %710, %699
  %712 = lshr i64 %711, 4
  %713 = trunc i64 %712 to i8
  %714 = and i8 %713, 1
  store i8 %714, i8* %52, align 1
  %715 = icmp eq i64 %699, 0
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %55, align 1
  %717 = lshr i64 %699, 63
  %718 = trunc i64 %717 to i8
  store i8 %718, i8* %58, align 1
  %719 = xor i64 %717, %683
  %720 = xor i64 %717, %698
  %721 = add nuw nsw i64 %719, %720
  %722 = icmp eq i64 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %64, align 1
  %724 = add i64 %691, -196
  %725 = add i64 %383, 205
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = sext i32 %727 to i64
  store i64 %728, i64* %RCX.i1835, align 8
  %729 = shl nsw i64 %728, 3
  %730 = add i64 %729, %699
  %731 = add i64 %383, 210
  store i64 %731, i64* %3, align 8
  %732 = load double, double* %259, align 1
  %733 = inttoptr i64 %730 to double*
  %734 = load double, double* %733, align 8
  %735 = fsub double %732, %734
  store double %735, double* %259, align 1
  %736 = add i64 %691, -96
  %737 = add i64 %383, 214
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i64*
  %739 = load i64, i64* %738, align 8
  store i64 %739, i64* %RAX.i1890, align 8
  %740 = add i64 %691, -188
  %741 = add i64 %383, 221
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = sext i32 %743 to i64
  %745 = mul nsw i64 %744, 520
  store i64 %745, i64* %RCX.i1835, align 8
  %746 = lshr i64 %745, 63
  %747 = add i64 %745, %739
  store i64 %747, i64* %RAX.i1890, align 8
  %748 = icmp ult i64 %747, %739
  %749 = icmp ult i64 %747, %745
  %750 = or i1 %748, %749
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %39, align 1
  %752 = trunc i64 %747 to i32
  %753 = and i32 %752, 255
  %754 = tail call i32 @llvm.ctpop.i32(i32 %753)
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  %757 = xor i8 %756, 1
  store i8 %757, i8* %46, align 1
  %758 = xor i64 %745, %739
  %759 = xor i64 %758, %747
  %760 = lshr i64 %759, 4
  %761 = trunc i64 %760 to i8
  %762 = and i8 %761, 1
  store i8 %762, i8* %52, align 1
  %763 = icmp eq i64 %747, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %55, align 1
  %765 = lshr i64 %747, 63
  %766 = trunc i64 %765 to i8
  store i8 %766, i8* %58, align 1
  %767 = lshr i64 %739, 63
  %768 = xor i64 %765, %767
  %769 = xor i64 %765, %746
  %770 = add nuw nsw i64 %768, %769
  %771 = icmp eq i64 %770, 2
  %772 = zext i1 %771 to i8
  store i8 %772, i8* %64, align 1
  %773 = load i64, i64* %RBP.i, align 8
  %774 = add i64 %773, -192
  %775 = add i64 %383, 238
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  %778 = sext i32 %777 to i64
  store i64 %778, i64* %RCX.i1835, align 8
  %779 = shl nsw i64 %778, 3
  %780 = add i64 %779, %747
  %781 = add i64 %383, 243
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to double*
  store double %735, double* %782, align 8
  %783 = load i64, i64* %RBP.i, align 8
  %784 = add i64 %783, -176
  %785 = load i64, i64* %3, align 8
  %786 = add i64 %785, 7
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %784 to i64*
  %788 = load i64, i64* %787, align 8
  store i64 %788, i64* %RAX.i1890, align 8
  %789 = add i64 %783, -192
  %790 = add i64 %785, 14
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i32*
  %792 = load i32, i32* %791, align 4
  %793 = sext i32 %792 to i64
  store i64 %793, i64* %RCX.i1835, align 8
  %794 = shl nsw i64 %793, 3
  %795 = add i64 %794, %788
  %796 = add i64 %785, 19
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i64*
  %798 = load i64, i64* %797, align 8
  store i64 %798, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %799 = add i64 %783, -184
  %800 = add i64 %785, 26
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RAX.i1890, align 8
  %803 = add i64 %785, 33
  store i64 %803, i64* %3, align 8
  %804 = load i32, i32* %791, align 4
  %805 = sext i32 %804 to i64
  store i64 %805, i64* %RCX.i1835, align 8
  %806 = shl nsw i64 %805, 3
  %807 = add i64 %806, %802
  %808 = add i64 %785, 38
  store i64 %808, i64* %3, align 8
  %809 = bitcast i64 %798 to double
  %810 = inttoptr i64 %807 to double*
  %811 = load double, double* %810, align 8
  %812 = fdiv double %809, %811
  store double %812, double* %259, align 1
  store i64 0, i64* %260, align 1
  %813 = add i64 %783, -112
  %814 = add i64 %785, 42
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i64*
  %816 = load i64, i64* %815, align 8
  store i64 %816, i64* %RAX.i1890, align 8
  %817 = add i64 %783, -188
  %818 = add i64 %785, 49
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = sext i32 %820 to i64
  %822 = mul nsw i64 %821, 33800
  store i64 %822, i64* %RCX.i1835, align 8
  %823 = lshr i64 %822, 63
  %824 = add i64 %822, %816
  store i64 %824, i64* %RAX.i1890, align 8
  %825 = icmp ult i64 %824, %816
  %826 = icmp ult i64 %824, %822
  %827 = or i1 %825, %826
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %39, align 1
  %829 = trunc i64 %824 to i32
  %830 = and i32 %829, 255
  %831 = tail call i32 @llvm.ctpop.i32(i32 %830)
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = xor i8 %833, 1
  store i8 %834, i8* %46, align 1
  %835 = xor i64 %822, %816
  %836 = xor i64 %835, %824
  %837 = lshr i64 %836, 4
  %838 = trunc i64 %837 to i8
  %839 = and i8 %838, 1
  store i8 %839, i8* %52, align 1
  %840 = icmp eq i64 %824, 0
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %55, align 1
  %842 = lshr i64 %824, 63
  %843 = trunc i64 %842 to i8
  store i8 %843, i8* %58, align 1
  %844 = lshr i64 %816, 63
  %845 = xor i64 %842, %844
  %846 = xor i64 %842, %823
  %847 = add nuw nsw i64 %845, %846
  %848 = icmp eq i64 %847, 2
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %64, align 1
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -192
  %852 = add i64 %785, 66
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = sext i32 %854 to i64
  %856 = mul nsw i64 %855, 520
  store i64 %856, i64* %RCX.i1835, align 8
  %857 = lshr i64 %856, 63
  %858 = add i64 %856, %824
  store i64 %858, i64* %RAX.i1890, align 8
  %859 = icmp ult i64 %858, %824
  %860 = icmp ult i64 %858, %856
  %861 = or i1 %859, %860
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %39, align 1
  %863 = trunc i64 %858 to i32
  %864 = and i32 %863, 255
  %865 = tail call i32 @llvm.ctpop.i32(i32 %864)
  %866 = trunc i32 %865 to i8
  %867 = and i8 %866, 1
  %868 = xor i8 %867, 1
  store i8 %868, i8* %46, align 1
  %869 = xor i64 %856, %824
  %870 = xor i64 %869, %858
  %871 = lshr i64 %870, 4
  %872 = trunc i64 %871 to i8
  %873 = and i8 %872, 1
  store i8 %873, i8* %52, align 1
  %874 = icmp eq i64 %858, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %55, align 1
  %876 = lshr i64 %858, 63
  %877 = trunc i64 %876 to i8
  store i8 %877, i8* %58, align 1
  %878 = xor i64 %876, %842
  %879 = xor i64 %876, %857
  %880 = add nuw nsw i64 %878, %879
  %881 = icmp eq i64 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %64, align 1
  %883 = add i64 %850, -196
  %884 = add i64 %785, 83
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = sext i32 %886 to i64
  store i64 %887, i64* %RCX.i1835, align 8
  %888 = shl nsw i64 %887, 3
  %889 = add i64 %888, %858
  %890 = add i64 %785, 88
  store i64 %890, i64* %3, align 8
  %891 = load double, double* %259, align 1
  %892 = inttoptr i64 %889 to double*
  %893 = load double, double* %892, align 8
  %894 = fmul double %891, %893
  store double %894, double* %259, align 1
  %895 = add i64 %850, -72
  %896 = add i64 %785, 93
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i64*
  %898 = load i64, i64* %897, align 8
  store i64 %898, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %899 = add i64 %850, -184
  %900 = add i64 %785, 100
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i64*
  %902 = load i64, i64* %901, align 8
  store i64 %902, i64* %RAX.i1890, align 8
  %903 = add i64 %785, 107
  store i64 %903, i64* %3, align 8
  %904 = load i32, i32* %853, align 4
  %905 = sext i32 %904 to i64
  store i64 %905, i64* %RCX.i1835, align 8
  %906 = shl nsw i64 %905, 3
  %907 = add i64 %906, %902
  %908 = add i64 %785, 112
  store i64 %908, i64* %3, align 8
  %909 = bitcast i64 %898 to double
  %910 = inttoptr i64 %907 to double*
  %911 = load double, double* %910, align 8
  %912 = fdiv double %909, %911
  store double %912, double* %157, align 1
  store i64 0, i64* %262, align 1
  %913 = load i64, i64* %RBP.i, align 8
  %914 = add i64 %913, -96
  %915 = add i64 %785, 116
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i64*
  %917 = load i64, i64* %916, align 8
  store i64 %917, i64* %RAX.i1890, align 8
  %918 = add i64 %913, -188
  %919 = add i64 %785, 123
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i32*
  %921 = load i32, i32* %920, align 4
  %922 = sext i32 %921 to i64
  %923 = mul nsw i64 %922, 520
  store i64 %923, i64* %RCX.i1835, align 8
  %924 = lshr i64 %923, 63
  %925 = add i64 %923, %917
  store i64 %925, i64* %RAX.i1890, align 8
  %926 = icmp ult i64 %925, %917
  %927 = icmp ult i64 %925, %923
  %928 = or i1 %926, %927
  %929 = zext i1 %928 to i8
  store i8 %929, i8* %39, align 1
  %930 = trunc i64 %925 to i32
  %931 = and i32 %930, 255
  %932 = tail call i32 @llvm.ctpop.i32(i32 %931)
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  %935 = xor i8 %934, 1
  store i8 %935, i8* %46, align 1
  %936 = xor i64 %923, %917
  %937 = xor i64 %936, %925
  %938 = lshr i64 %937, 4
  %939 = trunc i64 %938 to i8
  %940 = and i8 %939, 1
  store i8 %940, i8* %52, align 1
  %941 = icmp eq i64 %925, 0
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %55, align 1
  %943 = lshr i64 %925, 63
  %944 = trunc i64 %943 to i8
  store i8 %944, i8* %58, align 1
  %945 = lshr i64 %917, 63
  %946 = xor i64 %943, %945
  %947 = xor i64 %943, %924
  %948 = add nuw nsw i64 %946, %947
  %949 = icmp eq i64 %948, 2
  %950 = zext i1 %949 to i8
  store i8 %950, i8* %64, align 1
  %951 = add i64 %913, -192
  %952 = add i64 %785, 140
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = sext i32 %954 to i64
  store i64 %955, i64* %RCX.i1835, align 8
  %956 = shl nsw i64 %955, 3
  %957 = add i64 %956, %925
  %958 = add i64 %785, 145
  store i64 %958, i64* %3, align 8
  %959 = inttoptr i64 %957 to double*
  %960 = load double, double* %959, align 8
  %961 = fmul double %912, %960
  store double %961, double* %157, align 1
  store i64 0, i64* %262, align 1
  %962 = load double, double* %259, align 1
  %963 = fsub double %962, %961
  store double %963, double* %259, align 1
  %964 = add i64 %913, -104
  %965 = add i64 %785, 153
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i64*
  %967 = load i64, i64* %966, align 8
  store i64 %967, i64* %RAX.i1890, align 8
  %968 = load i64, i64* %RBP.i, align 8
  %969 = add i64 %968, -188
  %970 = add i64 %785, 160
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  %972 = load i32, i32* %971, align 4
  %973 = sext i32 %972 to i64
  %974 = mul nsw i64 %973, 520
  store i64 %974, i64* %RCX.i1835, align 8
  %975 = lshr i64 %974, 63
  %976 = add i64 %974, %967
  store i64 %976, i64* %RAX.i1890, align 8
  %977 = icmp ult i64 %976, %967
  %978 = icmp ult i64 %976, %974
  %979 = or i1 %977, %978
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %39, align 1
  %981 = trunc i64 %976 to i32
  %982 = and i32 %981, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %46, align 1
  %987 = xor i64 %974, %967
  %988 = xor i64 %987, %976
  %989 = lshr i64 %988, 4
  %990 = trunc i64 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %52, align 1
  %992 = icmp eq i64 %976, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %55, align 1
  %994 = lshr i64 %976, 63
  %995 = trunc i64 %994 to i8
  store i8 %995, i8* %58, align 1
  %996 = lshr i64 %967, 63
  %997 = xor i64 %994, %996
  %998 = xor i64 %994, %975
  %999 = add nuw nsw i64 %997, %998
  %1000 = icmp eq i64 %999, 2
  %1001 = zext i1 %1000 to i8
  store i8 %1001, i8* %64, align 1
  %1002 = add i64 %968, -192
  %1003 = add i64 %785, 177
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = sext i32 %1005 to i64
  store i64 %1006, i64* %RCX.i1835, align 8
  %1007 = shl nsw i64 %1006, 3
  %1008 = add i64 %1007, %976
  %1009 = add i64 %785, 182
  store i64 %1009, i64* %3, align 8
  %1010 = inttoptr i64 %1008 to double*
  store double %963, double* %1010, align 8
  %1011 = load i64, i64* %RBP.i, align 8
  %1012 = add i64 %1011, -160
  %1013 = load i64, i64* %3, align 8
  %1014 = add i64 %1013, 7
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1012 to i64*
  %1016 = load i64, i64* %1015, align 8
  store i64 %1016, i64* %RAX.i1890, align 8
  %1017 = add i64 %1011, -196
  %1018 = add i64 %1013, 14
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i32*
  %1020 = load i32, i32* %1019, align 4
  %1021 = sext i32 %1020 to i64
  store i64 %1021, i64* %RCX.i1835, align 8
  %1022 = shl nsw i64 %1021, 3
  %1023 = add i64 %1022, %1016
  %1024 = add i64 %1013, 19
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i64*
  %1026 = load i64, i64* %1025, align 8
  store i64 %1026, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %1027 = add i64 %1011, -168
  %1028 = add i64 %1013, 26
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %RAX.i1890, align 8
  %1031 = add i64 %1013, 33
  store i64 %1031, i64* %3, align 8
  %1032 = load i32, i32* %1019, align 4
  %1033 = sext i32 %1032 to i64
  store i64 %1033, i64* %RCX.i1835, align 8
  %1034 = shl nsw i64 %1033, 3
  %1035 = add i64 %1034, %1030
  %1036 = add i64 %1013, 38
  store i64 %1036, i64* %3, align 8
  %1037 = bitcast i64 %1026 to double
  %1038 = inttoptr i64 %1035 to double*
  %1039 = load double, double* %1038, align 8
  %1040 = fdiv double %1037, %1039
  store double %1040, double* %259, align 1
  store i64 0, i64* %260, align 1
  %1041 = add i64 %1011, -136
  %1042 = add i64 %1013, 45
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i64*
  %1044 = load i64, i64* %1043, align 8
  store i64 %1044, i64* %RAX.i1890, align 8
  %1045 = add i64 %1011, -188
  %1046 = add i64 %1013, 52
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = sext i32 %1048 to i64
  %1050 = mul nsw i64 %1049, 33800
  store i64 %1050, i64* %RCX.i1835, align 8
  %1051 = lshr i64 %1050, 63
  %1052 = add i64 %1050, %1044
  store i64 %1052, i64* %RAX.i1890, align 8
  %1053 = icmp ult i64 %1052, %1044
  %1054 = icmp ult i64 %1052, %1050
  %1055 = or i1 %1053, %1054
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %39, align 1
  %1057 = trunc i64 %1052 to i32
  %1058 = and i32 %1057, 255
  %1059 = tail call i32 @llvm.ctpop.i32(i32 %1058)
  %1060 = trunc i32 %1059 to i8
  %1061 = and i8 %1060, 1
  %1062 = xor i8 %1061, 1
  store i8 %1062, i8* %46, align 1
  %1063 = xor i64 %1050, %1044
  %1064 = xor i64 %1063, %1052
  %1065 = lshr i64 %1064, 4
  %1066 = trunc i64 %1065 to i8
  %1067 = and i8 %1066, 1
  store i8 %1067, i8* %52, align 1
  %1068 = icmp eq i64 %1052, 0
  %1069 = zext i1 %1068 to i8
  store i8 %1069, i8* %55, align 1
  %1070 = lshr i64 %1052, 63
  %1071 = trunc i64 %1070 to i8
  store i8 %1071, i8* %58, align 1
  %1072 = lshr i64 %1044, 63
  %1073 = xor i64 %1070, %1072
  %1074 = xor i64 %1070, %1051
  %1075 = add nuw nsw i64 %1073, %1074
  %1076 = icmp eq i64 %1075, 2
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %64, align 1
  %1078 = load i64, i64* %RBP.i, align 8
  %1079 = add i64 %1078, -192
  %1080 = add i64 %1013, 69
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1079 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = mul nsw i64 %1083, 520
  store i64 %1084, i64* %RCX.i1835, align 8
  %1085 = lshr i64 %1084, 63
  %1086 = add i64 %1084, %1052
  store i64 %1086, i64* %RAX.i1890, align 8
  %1087 = icmp ult i64 %1086, %1052
  %1088 = icmp ult i64 %1086, %1084
  %1089 = or i1 %1087, %1088
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %39, align 1
  %1091 = trunc i64 %1086 to i32
  %1092 = and i32 %1091, 255
  %1093 = tail call i32 @llvm.ctpop.i32(i32 %1092)
  %1094 = trunc i32 %1093 to i8
  %1095 = and i8 %1094, 1
  %1096 = xor i8 %1095, 1
  store i8 %1096, i8* %46, align 1
  %1097 = xor i64 %1084, %1052
  %1098 = xor i64 %1097, %1086
  %1099 = lshr i64 %1098, 4
  %1100 = trunc i64 %1099 to i8
  %1101 = and i8 %1100, 1
  store i8 %1101, i8* %52, align 1
  %1102 = icmp eq i64 %1086, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %55, align 1
  %1104 = lshr i64 %1086, 63
  %1105 = trunc i64 %1104 to i8
  store i8 %1105, i8* %58, align 1
  %1106 = xor i64 %1104, %1070
  %1107 = xor i64 %1104, %1085
  %1108 = add nuw nsw i64 %1106, %1107
  %1109 = icmp eq i64 %1108, 2
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %64, align 1
  %1111 = add i64 %1078, -196
  %1112 = add i64 %1013, 86
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = sext i32 %1114 to i64
  store i64 %1115, i64* %RCX.i1835, align 8
  %1116 = shl nsw i64 %1115, 3
  %1117 = add i64 %1116, %1086
  %1118 = add i64 %1013, 91
  store i64 %1118, i64* %3, align 8
  %1119 = load double, double* %259, align 1
  %1120 = inttoptr i64 %1117 to double*
  %1121 = load double, double* %1120, align 8
  %1122 = fmul double %1119, %1121
  store double %1122, double* %259, align 1
  %1123 = add i64 %1078, -64
  %1124 = add i64 %1013, 96
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1123 to i64*
  %1126 = load i64, i64* %1125, align 8
  store i64 %1126, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %1127 = add i64 %1078, -152
  %1128 = add i64 %1013, 103
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i64*
  %1130 = load i64, i64* %1129, align 8
  store i64 %1130, i64* %RAX.i1890, align 8
  %1131 = add i64 %1078, -188
  %1132 = add i64 %1013, 110
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = sext i32 %1134 to i64
  store i64 %1135, i64* %RCX.i1835, align 8
  %1136 = shl nsw i64 %1135, 3
  %1137 = add i64 %1136, %1130
  %1138 = add i64 %1013, 115
  store i64 %1138, i64* %3, align 8
  %1139 = bitcast i64 %1126 to double
  %1140 = inttoptr i64 %1137 to double*
  %1141 = load double, double* %1140, align 8
  %1142 = fmul double %1139, %1141
  store double %1142, double* %157, align 1
  store i64 0, i64* %262, align 1
  %1143 = load i64, i64* %RBP.i, align 8
  %1144 = add i64 %1143, -168
  %1145 = add i64 %1013, 122
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i64*
  %1147 = load i64, i64* %1146, align 8
  store i64 %1147, i64* %RAX.i1890, align 8
  %1148 = add i64 %1143, -196
  %1149 = add i64 %1013, 129
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1148 to i32*
  %1151 = load i32, i32* %1150, align 4
  %1152 = sext i32 %1151 to i64
  store i64 %1152, i64* %RCX.i1835, align 8
  %1153 = shl nsw i64 %1152, 3
  %1154 = add i64 %1153, %1147
  %1155 = add i64 %1013, 134
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to double*
  %1157 = load double, double* %1156, align 8
  %1158 = fdiv double %1142, %1157
  store double %1158, double* %157, align 1
  store i64 0, i64* %262, align 1
  %1159 = add i64 %1143, -104
  %1160 = add i64 %1013, 138
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i64*
  %1162 = load i64, i64* %1161, align 8
  store i64 %1162, i64* %RAX.i1890, align 8
  %1163 = add i64 %1143, -188
  %1164 = add i64 %1013, 145
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i32*
  %1166 = load i32, i32* %1165, align 4
  %1167 = sext i32 %1166 to i64
  %1168 = mul nsw i64 %1167, 520
  store i64 %1168, i64* %RCX.i1835, align 8
  %1169 = lshr i64 %1168, 63
  %1170 = add i64 %1168, %1162
  store i64 %1170, i64* %RAX.i1890, align 8
  %1171 = icmp ult i64 %1170, %1162
  %1172 = icmp ult i64 %1170, %1168
  %1173 = or i1 %1171, %1172
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %39, align 1
  %1175 = trunc i64 %1170 to i32
  %1176 = and i32 %1175, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %46, align 1
  %1181 = xor i64 %1168, %1162
  %1182 = xor i64 %1181, %1170
  %1183 = lshr i64 %1182, 4
  %1184 = trunc i64 %1183 to i8
  %1185 = and i8 %1184, 1
  store i8 %1185, i8* %52, align 1
  %1186 = icmp eq i64 %1170, 0
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %55, align 1
  %1188 = lshr i64 %1170, 63
  %1189 = trunc i64 %1188 to i8
  store i8 %1189, i8* %58, align 1
  %1190 = lshr i64 %1162, 63
  %1191 = xor i64 %1188, %1190
  %1192 = xor i64 %1188, %1169
  %1193 = add nuw nsw i64 %1191, %1192
  %1194 = icmp eq i64 %1193, 2
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %64, align 1
  %1196 = add i64 %1143, -192
  %1197 = add i64 %1013, 162
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = sext i32 %1199 to i64
  store i64 %1200, i64* %RCX.i1835, align 8
  %1201 = shl nsw i64 %1200, 3
  %1202 = add i64 %1201, %1170
  %1203 = add i64 %1013, 167
  store i64 %1203, i64* %3, align 8
  %1204 = inttoptr i64 %1202 to double*
  %1205 = load double, double* %1204, align 8
  %1206 = fmul double %1158, %1205
  store double %1206, double* %157, align 1
  store i64 0, i64* %262, align 1
  %1207 = load double, double* %259, align 1
  %1208 = fadd double %1207, %1206
  store double %1208, double* %259, align 1
  %1209 = load i64, i64* %RBP.i, align 8
  %1210 = add i64 %1209, -64
  %1211 = add i64 %1013, 176
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i64*
  %1213 = load i64, i64* %1212, align 8
  store i64 %1213, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %1214 = add i64 %1209, -144
  %1215 = add i64 %1013, 183
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i64*
  %1217 = load i64, i64* %1216, align 8
  store i64 %1217, i64* %RAX.i1890, align 8
  %1218 = add i64 %1209, -188
  %1219 = add i64 %1013, 190
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i32*
  %1221 = load i32, i32* %1220, align 4
  %1222 = sext i32 %1221 to i64
  store i64 %1222, i64* %RCX.i1835, align 8
  %1223 = shl nsw i64 %1222, 3
  %1224 = add i64 %1223, %1217
  %1225 = add i64 %1013, 195
  store i64 %1225, i64* %3, align 8
  %1226 = bitcast i64 %1213 to double
  %1227 = inttoptr i64 %1224 to double*
  %1228 = load double, double* %1227, align 8
  %1229 = fmul double %1226, %1228
  store double %1229, double* %157, align 1
  store i64 0, i64* %262, align 1
  %1230 = add i64 %1209, -168
  %1231 = add i64 %1013, 202
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i64*
  %1233 = load i64, i64* %1232, align 8
  store i64 %1233, i64* %RAX.i1890, align 8
  %1234 = add i64 %1209, -196
  %1235 = add i64 %1013, 209
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i32*
  %1237 = load i32, i32* %1236, align 4
  %1238 = sext i32 %1237 to i64
  store i64 %1238, i64* %RCX.i1835, align 8
  %1239 = shl nsw i64 %1238, 3
  %1240 = add i64 %1239, %1233
  %1241 = add i64 %1013, 214
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to double*
  %1243 = load double, double* %1242, align 8
  %1244 = fdiv double %1229, %1243
  store double %1244, double* %157, align 1
  store i64 0, i64* %262, align 1
  %1245 = add i64 %1209, -112
  %1246 = add i64 %1013, 218
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i64*
  %1248 = load i64, i64* %1247, align 8
  store i64 %1248, i64* %RAX.i1890, align 8
  %1249 = add i64 %1013, 225
  store i64 %1249, i64* %3, align 8
  %1250 = load i32, i32* %1220, align 4
  %1251 = sext i32 %1250 to i64
  %1252 = mul nsw i64 %1251, 33800
  store i64 %1252, i64* %RCX.i1835, align 8
  %1253 = lshr i64 %1252, 63
  %1254 = add i64 %1252, %1248
  store i64 %1254, i64* %RAX.i1890, align 8
  %1255 = icmp ult i64 %1254, %1248
  %1256 = icmp ult i64 %1254, %1252
  %1257 = or i1 %1255, %1256
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %39, align 1
  %1259 = trunc i64 %1254 to i32
  %1260 = and i32 %1259, 255
  %1261 = tail call i32 @llvm.ctpop.i32(i32 %1260)
  %1262 = trunc i32 %1261 to i8
  %1263 = and i8 %1262, 1
  %1264 = xor i8 %1263, 1
  store i8 %1264, i8* %46, align 1
  %1265 = xor i64 %1252, %1248
  %1266 = xor i64 %1265, %1254
  %1267 = lshr i64 %1266, 4
  %1268 = trunc i64 %1267 to i8
  %1269 = and i8 %1268, 1
  store i8 %1269, i8* %52, align 1
  %1270 = icmp eq i64 %1254, 0
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %55, align 1
  %1272 = lshr i64 %1254, 63
  %1273 = trunc i64 %1272 to i8
  store i8 %1273, i8* %58, align 1
  %1274 = lshr i64 %1248, 63
  %1275 = xor i64 %1272, %1274
  %1276 = xor i64 %1272, %1253
  %1277 = add nuw nsw i64 %1275, %1276
  %1278 = icmp eq i64 %1277, 2
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %64, align 1
  %1280 = load i64, i64* %RBP.i, align 8
  %1281 = add i64 %1280, -192
  %1282 = add i64 %1013, 242
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1281 to i32*
  %1284 = load i32, i32* %1283, align 4
  %1285 = sext i32 %1284 to i64
  %1286 = mul nsw i64 %1285, 520
  store i64 %1286, i64* %RCX.i1835, align 8
  %1287 = lshr i64 %1286, 63
  %1288 = add i64 %1286, %1254
  store i64 %1288, i64* %RAX.i1890, align 8
  %1289 = icmp ult i64 %1288, %1254
  %1290 = icmp ult i64 %1288, %1286
  %1291 = or i1 %1289, %1290
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %39, align 1
  %1293 = trunc i64 %1288 to i32
  %1294 = and i32 %1293, 255
  %1295 = tail call i32 @llvm.ctpop.i32(i32 %1294)
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  store i8 %1298, i8* %46, align 1
  %1299 = xor i64 %1286, %1254
  %1300 = xor i64 %1299, %1288
  %1301 = lshr i64 %1300, 4
  %1302 = trunc i64 %1301 to i8
  %1303 = and i8 %1302, 1
  store i8 %1303, i8* %52, align 1
  %1304 = icmp eq i64 %1288, 0
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %55, align 1
  %1306 = lshr i64 %1288, 63
  %1307 = trunc i64 %1306 to i8
  store i8 %1307, i8* %58, align 1
  %1308 = xor i64 %1306, %1272
  %1309 = xor i64 %1306, %1287
  %1310 = add nuw nsw i64 %1308, %1309
  %1311 = icmp eq i64 %1310, 2
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %64, align 1
  %1313 = add i64 %1280, -196
  %1314 = add i64 %1013, 259
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = sext i32 %1316 to i64
  store i64 %1317, i64* %RCX.i1835, align 8
  %1318 = shl nsw i64 %1317, 3
  %1319 = add i64 %1318, %1288
  %1320 = add i64 %1013, 264
  store i64 %1320, i64* %3, align 8
  %1321 = load double, double* %157, align 1
  %1322 = inttoptr i64 %1319 to double*
  %1323 = load double, double* %1322, align 8
  %1324 = fmul double %1321, %1323
  store double %1324, double* %157, align 1
  %1325 = load double, double* %259, align 1
  %1326 = fsub double %1325, %1324
  store double %1326, double* %259, align 1
  %1327 = add i64 %1280, -136
  %1328 = add i64 %1013, 275
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i64*
  %1330 = load i64, i64* %1329, align 8
  store i64 %1330, i64* %RAX.i1890, align 8
  %1331 = add i64 %1280, -188
  %1332 = add i64 %1013, 282
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i32*
  %1334 = load i32, i32* %1333, align 4
  %1335 = sext i32 %1334 to i64
  %1336 = mul nsw i64 %1335, 33800
  store i64 %1336, i64* %RCX.i1835, align 8
  %1337 = lshr i64 %1336, 63
  %1338 = add i64 %1336, %1330
  store i64 %1338, i64* %RAX.i1890, align 8
  %1339 = icmp ult i64 %1338, %1330
  %1340 = icmp ult i64 %1338, %1336
  %1341 = or i1 %1339, %1340
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %39, align 1
  %1343 = trunc i64 %1338 to i32
  %1344 = and i32 %1343, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %46, align 1
  %1349 = xor i64 %1336, %1330
  %1350 = xor i64 %1349, %1338
  %1351 = lshr i64 %1350, 4
  %1352 = trunc i64 %1351 to i8
  %1353 = and i8 %1352, 1
  store i8 %1353, i8* %52, align 1
  %1354 = icmp eq i64 %1338, 0
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %55, align 1
  %1356 = lshr i64 %1338, 63
  %1357 = trunc i64 %1356 to i8
  store i8 %1357, i8* %58, align 1
  %1358 = lshr i64 %1330, 63
  %1359 = xor i64 %1356, %1358
  %1360 = xor i64 %1356, %1337
  %1361 = add nuw nsw i64 %1359, %1360
  %1362 = icmp eq i64 %1361, 2
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %64, align 1
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -192
  %1366 = add i64 %1013, 299
  store i64 %1366, i64* %3, align 8
  %1367 = inttoptr i64 %1365 to i32*
  %1368 = load i32, i32* %1367, align 4
  %1369 = sext i32 %1368 to i64
  %1370 = mul nsw i64 %1369, 520
  store i64 %1370, i64* %RCX.i1835, align 8
  %1371 = lshr i64 %1370, 63
  %1372 = add i64 %1370, %1338
  store i64 %1372, i64* %RAX.i1890, align 8
  %1373 = icmp ult i64 %1372, %1338
  %1374 = icmp ult i64 %1372, %1370
  %1375 = or i1 %1373, %1374
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %39, align 1
  %1377 = trunc i64 %1372 to i32
  %1378 = and i32 %1377, 255
  %1379 = tail call i32 @llvm.ctpop.i32(i32 %1378)
  %1380 = trunc i32 %1379 to i8
  %1381 = and i8 %1380, 1
  %1382 = xor i8 %1381, 1
  store i8 %1382, i8* %46, align 1
  %1383 = xor i64 %1370, %1338
  %1384 = xor i64 %1383, %1372
  %1385 = lshr i64 %1384, 4
  %1386 = trunc i64 %1385 to i8
  %1387 = and i8 %1386, 1
  store i8 %1387, i8* %52, align 1
  %1388 = icmp eq i64 %1372, 0
  %1389 = zext i1 %1388 to i8
  store i8 %1389, i8* %55, align 1
  %1390 = lshr i64 %1372, 63
  %1391 = trunc i64 %1390 to i8
  store i8 %1391, i8* %58, align 1
  %1392 = xor i64 %1390, %1356
  %1393 = xor i64 %1390, %1371
  %1394 = add nuw nsw i64 %1392, %1393
  %1395 = icmp eq i64 %1394, 2
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %64, align 1
  %1397 = add i64 %1364, -196
  %1398 = add i64 %1013, 316
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i32*
  %1400 = load i32, i32* %1399, align 4
  %1401 = sext i32 %1400 to i64
  store i64 %1401, i64* %RCX.i1835, align 8
  %1402 = shl nsw i64 %1401, 3
  %1403 = add i64 %1402, %1372
  %1404 = add i64 %1013, 321
  store i64 %1404, i64* %3, align 8
  %1405 = load i64, i64* %149, align 1
  %1406 = inttoptr i64 %1403 to i64*
  store i64 %1405, i64* %1406, align 8
  %1407 = load i64, i64* %RBP.i, align 8
  %1408 = add i64 %1407, -104
  %1409 = load i64, i64* %3, align 8
  %1410 = add i64 %1409, 4
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1408 to i64*
  %1412 = load i64, i64* %1411, align 8
  store i64 %1412, i64* %RAX.i1890, align 8
  %1413 = add i64 %1407, -188
  %1414 = add i64 %1409, 11
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i32*
  %1416 = load i32, i32* %1415, align 4
  %1417 = sext i32 %1416 to i64
  %1418 = mul nsw i64 %1417, 520
  store i64 %1418, i64* %RCX.i1835, align 8
  %1419 = lshr i64 %1418, 63
  %1420 = add i64 %1418, %1412
  store i64 %1420, i64* %RAX.i1890, align 8
  %1421 = icmp ult i64 %1420, %1412
  %1422 = icmp ult i64 %1420, %1418
  %1423 = or i1 %1421, %1422
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %39, align 1
  %1425 = trunc i64 %1420 to i32
  %1426 = and i32 %1425, 255
  %1427 = tail call i32 @llvm.ctpop.i32(i32 %1426)
  %1428 = trunc i32 %1427 to i8
  %1429 = and i8 %1428, 1
  %1430 = xor i8 %1429, 1
  store i8 %1430, i8* %46, align 1
  %1431 = xor i64 %1418, %1412
  %1432 = xor i64 %1431, %1420
  %1433 = lshr i64 %1432, 4
  %1434 = trunc i64 %1433 to i8
  %1435 = and i8 %1434, 1
  store i8 %1435, i8* %52, align 1
  %1436 = icmp eq i64 %1420, 0
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %55, align 1
  %1438 = lshr i64 %1420, 63
  %1439 = trunc i64 %1438 to i8
  store i8 %1439, i8* %58, align 1
  %1440 = lshr i64 %1412, 63
  %1441 = xor i64 %1438, %1440
  %1442 = xor i64 %1438, %1419
  %1443 = add nuw nsw i64 %1441, %1442
  %1444 = icmp eq i64 %1443, 2
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %64, align 1
  %1446 = add i64 %1407, -192
  %1447 = add i64 %1409, 28
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i32*
  %1449 = load i32, i32* %1448, align 4
  %1450 = sext i32 %1449 to i64
  store i64 %1450, i64* %RCX.i1835, align 8
  %1451 = shl nsw i64 %1450, 3
  %1452 = add i64 %1451, %1420
  %1453 = add i64 %1409, 33
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1452 to i64*
  %1455 = load i64, i64* %1454, align 8
  store i64 %1455, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %1456 = add i64 %1407, -112
  %1457 = add i64 %1409, 37
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1456 to i64*
  %1459 = load i64, i64* %1458, align 8
  store i64 %1459, i64* %RAX.i1890, align 8
  %1460 = add i64 %1409, 44
  store i64 %1460, i64* %3, align 8
  %1461 = load i32, i32* %1415, align 4
  %1462 = sext i32 %1461 to i64
  %1463 = mul nsw i64 %1462, 33800
  store i64 %1463, i64* %RCX.i1835, align 8
  %1464 = lshr i64 %1463, 63
  %1465 = add i64 %1463, %1459
  store i64 %1465, i64* %RAX.i1890, align 8
  %1466 = icmp ult i64 %1465, %1459
  %1467 = icmp ult i64 %1465, %1463
  %1468 = or i1 %1466, %1467
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %39, align 1
  %1470 = trunc i64 %1465 to i32
  %1471 = and i32 %1470, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %46, align 1
  %1476 = xor i64 %1463, %1459
  %1477 = xor i64 %1476, %1465
  %1478 = lshr i64 %1477, 4
  %1479 = trunc i64 %1478 to i8
  %1480 = and i8 %1479, 1
  store i8 %1480, i8* %52, align 1
  %1481 = icmp eq i64 %1465, 0
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %55, align 1
  %1483 = lshr i64 %1465, 63
  %1484 = trunc i64 %1483 to i8
  store i8 %1484, i8* %58, align 1
  %1485 = lshr i64 %1459, 63
  %1486 = xor i64 %1483, %1485
  %1487 = xor i64 %1483, %1464
  %1488 = add nuw nsw i64 %1486, %1487
  %1489 = icmp eq i64 %1488, 2
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %64, align 1
  %1491 = load i64, i64* %RBP.i, align 8
  %1492 = add i64 %1491, -192
  %1493 = add i64 %1409, 61
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1492 to i32*
  %1495 = load i32, i32* %1494, align 4
  %1496 = sext i32 %1495 to i64
  %1497 = mul nsw i64 %1496, 520
  store i64 %1497, i64* %RCX.i1835, align 8
  %1498 = lshr i64 %1497, 63
  %1499 = add i64 %1497, %1465
  store i64 %1499, i64* %RAX.i1890, align 8
  %1500 = icmp ult i64 %1499, %1465
  %1501 = icmp ult i64 %1499, %1497
  %1502 = or i1 %1500, %1501
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %39, align 1
  %1504 = trunc i64 %1499 to i32
  %1505 = and i32 %1504, 255
  %1506 = tail call i32 @llvm.ctpop.i32(i32 %1505)
  %1507 = trunc i32 %1506 to i8
  %1508 = and i8 %1507, 1
  %1509 = xor i8 %1508, 1
  store i8 %1509, i8* %46, align 1
  %1510 = xor i64 %1497, %1465
  %1511 = xor i64 %1510, %1499
  %1512 = lshr i64 %1511, 4
  %1513 = trunc i64 %1512 to i8
  %1514 = and i8 %1513, 1
  store i8 %1514, i8* %52, align 1
  %1515 = icmp eq i64 %1499, 0
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %55, align 1
  %1517 = lshr i64 %1499, 63
  %1518 = trunc i64 %1517 to i8
  store i8 %1518, i8* %58, align 1
  %1519 = xor i64 %1517, %1483
  %1520 = xor i64 %1517, %1498
  %1521 = add nuw nsw i64 %1519, %1520
  %1522 = icmp eq i64 %1521, 2
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %64, align 1
  %1524 = add i64 %1491, -196
  %1525 = add i64 %1409, 78
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i32*
  %1527 = load i32, i32* %1526, align 4
  %1528 = sext i32 %1527 to i64
  store i64 %1528, i64* %RCX.i1835, align 8
  %1529 = shl nsw i64 %1528, 3
  %1530 = add i64 %1529, %1499
  %1531 = add i64 %1409, 83
  store i64 %1531, i64* %3, align 8
  %1532 = load i64, i64* %149, align 1
  %1533 = inttoptr i64 %1530 to i64*
  store i64 %1532, i64* %1533, align 8
  %1534 = load i64, i64* %RBP.i, align 8
  %1535 = add i64 %1534, -196
  %1536 = load i64, i64* %3, align 8
  %1537 = add i64 %1536, 6
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1535 to i32*
  %1539 = load i32, i32* %1538, align 4
  %1540 = add i32 %1539, 1
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RAX.i1890, align 8
  %1542 = icmp eq i32 %1539, -1
  %1543 = icmp eq i32 %1540, 0
  %1544 = or i1 %1542, %1543
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %39, align 1
  %1546 = and i32 %1540, 255
  %1547 = tail call i32 @llvm.ctpop.i32(i32 %1546)
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  store i8 %1550, i8* %46, align 1
  %1551 = xor i32 %1540, %1539
  %1552 = lshr i32 %1551, 4
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  store i8 %1554, i8* %52, align 1
  %1555 = zext i1 %1543 to i8
  store i8 %1555, i8* %55, align 1
  %1556 = lshr i32 %1540, 31
  %1557 = trunc i32 %1556 to i8
  store i8 %1557, i8* %58, align 1
  %1558 = lshr i32 %1539, 31
  %1559 = xor i32 %1556, %1558
  %1560 = add nuw nsw i32 %1559, %1556
  %1561 = icmp eq i32 %1560, 2
  %1562 = zext i1 %1561 to i8
  store i8 %1562, i8* %64, align 1
  %1563 = add i64 %1536, 15
  store i64 %1563, i64* %3, align 8
  store i32 %1540, i32* %1538, align 4
  %1564 = load i64, i64* %3, align 8
  %1565 = add i64 %1564, -859
  store i64 %1565, i64* %3, align 8
  br label %block_.L_4015b3

block_.L_401913:                                  ; preds = %block_.L_4015b3
  %1566 = add i64 %421, -48
  %1567 = add i64 %383, 42
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1566 to i32*
  %1569 = load i32, i32* %1568, align 4
  %1570 = sext i32 %1569 to i64
  store i64 %1570, i64* %RCX.i1835, align 8
  %1571 = shl nsw i64 %1570, 3
  %1572 = add i64 %1571, %430
  %1573 = add i64 %383, 47
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1572 to i64*
  %1575 = load i64, i64* %1574, align 8
  store i64 %1575, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %1576 = add i64 %421, -120
  %1577 = add i64 %383, 51
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i64*
  %1579 = load i64, i64* %1578, align 8
  store i64 %1579, i64* %RAX.i1890, align 8
  %1580 = add i64 %421, -188
  %1581 = add i64 %383, 58
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i32*
  %1583 = load i32, i32* %1582, align 4
  %1584 = sext i32 %1583 to i64
  %1585 = mul nsw i64 %1584, 33800
  store i64 %1585, i64* %RCX.i1835, align 8
  %1586 = lshr i64 %1585, 63
  %1587 = add i64 %1585, %1579
  store i64 %1587, i64* %RAX.i1890, align 8
  %1588 = icmp ult i64 %1587, %1579
  %1589 = icmp ult i64 %1587, %1585
  %1590 = or i1 %1588, %1589
  %1591 = zext i1 %1590 to i8
  store i8 %1591, i8* %39, align 1
  %1592 = trunc i64 %1587 to i32
  %1593 = and i32 %1592, 255
  %1594 = tail call i32 @llvm.ctpop.i32(i32 %1593)
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  %1597 = xor i8 %1596, 1
  store i8 %1597, i8* %46, align 1
  %1598 = xor i64 %1585, %1579
  %1599 = xor i64 %1598, %1587
  %1600 = lshr i64 %1599, 4
  %1601 = trunc i64 %1600 to i8
  %1602 = and i8 %1601, 1
  store i8 %1602, i8* %52, align 1
  %1603 = icmp eq i64 %1587, 0
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %55, align 1
  %1605 = lshr i64 %1587, 63
  %1606 = trunc i64 %1605 to i8
  store i8 %1606, i8* %58, align 1
  %1607 = lshr i64 %1579, 63
  %1608 = xor i64 %1605, %1607
  %1609 = xor i64 %1605, %1586
  %1610 = add nuw nsw i64 %1608, %1609
  %1611 = icmp eq i64 %1610, 2
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %64, align 1
  %1613 = add i64 %383, 74
  store i64 %1613, i64* %3, align 8
  %1614 = load i32, i32* %424, align 4
  %1615 = add i32 %1614, 1
  %1616 = zext i32 %1615 to i64
  store i64 %1616, i64* %RDX.i1724, align 8
  %1617 = sext i32 %1615 to i64
  %1618 = mul nsw i64 %1617, 520
  store i64 %1618, i64* %RCX.i1835, align 8
  %1619 = lshr i64 %1618, 63
  %1620 = load i64, i64* %RAX.i1890, align 8
  %1621 = add i64 %1618, %1620
  store i64 %1621, i64* %RAX.i1890, align 8
  %1622 = icmp ult i64 %1621, %1620
  %1623 = icmp ult i64 %1621, %1618
  %1624 = or i1 %1622, %1623
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %39, align 1
  %1626 = trunc i64 %1621 to i32
  %1627 = and i32 %1626, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %46, align 1
  %1632 = xor i64 %1618, %1620
  %1633 = xor i64 %1632, %1621
  %1634 = lshr i64 %1633, 4
  %1635 = trunc i64 %1634 to i8
  %1636 = and i8 %1635, 1
  store i8 %1636, i8* %52, align 1
  %1637 = icmp eq i64 %1621, 0
  %1638 = zext i1 %1637 to i8
  store i8 %1638, i8* %55, align 1
  %1639 = lshr i64 %1621, 63
  %1640 = trunc i64 %1639 to i8
  store i8 %1640, i8* %58, align 1
  %1641 = lshr i64 %1620, 63
  %1642 = xor i64 %1639, %1641
  %1643 = xor i64 %1639, %1619
  %1644 = add nuw nsw i64 %1642, %1643
  %1645 = icmp eq i64 %1644, 2
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %64, align 1
  %1647 = load i64, i64* %RBP.i, align 8
  %1648 = add i64 %1647, -48
  %1649 = add i64 %383, 94
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i32*
  %1651 = load i32, i32* %1650, align 4
  %1652 = sext i32 %1651 to i64
  store i64 %1652, i64* %RCX.i1835, align 8
  %1653 = shl nsw i64 %1652, 3
  %1654 = add i64 %1653, %1621
  %1655 = add i64 %383, 99
  store i64 %1655, i64* %3, align 8
  %1656 = load double, double* %259, align 1
  %1657 = inttoptr i64 %1654 to double*
  %1658 = load double, double* %1657, align 8
  %1659 = fsub double %1656, %1658
  store double %1659, double* %259, align 1
  %1660 = add i64 %1647, -88
  %1661 = add i64 %383, 103
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to i64*
  %1663 = load i64, i64* %1662, align 8
  store i64 %1663, i64* %RAX.i1890, align 8
  %1664 = add i64 %1647, -188
  %1665 = add i64 %383, 110
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i32*
  %1667 = load i32, i32* %1666, align 4
  %1668 = sext i32 %1667 to i64
  %1669 = mul nsw i64 %1668, 520
  store i64 %1669, i64* %RCX.i1835, align 8
  %1670 = lshr i64 %1669, 63
  %1671 = add i64 %1669, %1663
  store i64 %1671, i64* %RAX.i1890, align 8
  %1672 = icmp ult i64 %1671, %1663
  %1673 = icmp ult i64 %1671, %1669
  %1674 = or i1 %1672, %1673
  %1675 = zext i1 %1674 to i8
  store i8 %1675, i8* %39, align 1
  %1676 = trunc i64 %1671 to i32
  %1677 = and i32 %1676, 255
  %1678 = tail call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %46, align 1
  %1682 = xor i64 %1669, %1663
  %1683 = xor i64 %1682, %1671
  %1684 = lshr i64 %1683, 4
  %1685 = trunc i64 %1684 to i8
  %1686 = and i8 %1685, 1
  store i8 %1686, i8* %52, align 1
  %1687 = icmp eq i64 %1671, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %55, align 1
  %1689 = lshr i64 %1671, 63
  %1690 = trunc i64 %1689 to i8
  store i8 %1690, i8* %58, align 1
  %1691 = lshr i64 %1663, 63
  %1692 = xor i64 %1689, %1691
  %1693 = xor i64 %1689, %1670
  %1694 = add nuw nsw i64 %1692, %1693
  %1695 = icmp eq i64 %1694, 2
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %64, align 1
  %1697 = add i64 %1647, -192
  %1698 = add i64 %383, 127
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1697 to i32*
  %1700 = load i32, i32* %1699, align 4
  %1701 = sext i32 %1700 to i64
  store i64 %1701, i64* %RCX.i1835, align 8
  %1702 = shl nsw i64 %1701, 3
  %1703 = add i64 %1702, %1671
  %1704 = add i64 %383, 132
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to double*
  %1706 = load double, double* %1705, align 8
  %1707 = fadd double %1659, %1706
  store double %1707, double* %259, align 1
  %1708 = load i64, i64* %RBP.i, align 8
  %1709 = add i64 %1708, -128
  %1710 = add i64 %383, 136
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i64*
  %1712 = load i64, i64* %1711, align 8
  store i64 %1712, i64* %RAX.i1890, align 8
  %1713 = add i64 %1708, -188
  %1714 = add i64 %383, 143
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1713 to i32*
  %1716 = load i32, i32* %1715, align 4
  %1717 = sext i32 %1716 to i64
  %1718 = mul nsw i64 %1717, 33800
  store i64 %1718, i64* %RCX.i1835, align 8
  %1719 = lshr i64 %1718, 63
  %1720 = add i64 %1718, %1712
  store i64 %1720, i64* %RAX.i1890, align 8
  %1721 = icmp ult i64 %1720, %1712
  %1722 = icmp ult i64 %1720, %1718
  %1723 = or i1 %1721, %1722
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %39, align 1
  %1725 = trunc i64 %1720 to i32
  %1726 = and i32 %1725, 255
  %1727 = tail call i32 @llvm.ctpop.i32(i32 %1726)
  %1728 = trunc i32 %1727 to i8
  %1729 = and i8 %1728, 1
  %1730 = xor i8 %1729, 1
  store i8 %1730, i8* %46, align 1
  %1731 = xor i64 %1718, %1712
  %1732 = xor i64 %1731, %1720
  %1733 = lshr i64 %1732, 4
  %1734 = trunc i64 %1733 to i8
  %1735 = and i8 %1734, 1
  store i8 %1735, i8* %52, align 1
  %1736 = icmp eq i64 %1720, 0
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %55, align 1
  %1738 = lshr i64 %1720, 63
  %1739 = trunc i64 %1738 to i8
  store i8 %1739, i8* %58, align 1
  %1740 = lshr i64 %1712, 63
  %1741 = xor i64 %1738, %1740
  %1742 = xor i64 %1738, %1719
  %1743 = add nuw nsw i64 %1741, %1742
  %1744 = icmp eq i64 %1743, 2
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %64, align 1
  %1746 = add i64 %1708, -192
  %1747 = add i64 %383, 160
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = sext i32 %1749 to i64
  %1751 = mul nsw i64 %1750, 520
  store i64 %1751, i64* %RCX.i1835, align 8
  %1752 = lshr i64 %1751, 63
  %1753 = add i64 %1751, %1720
  store i64 %1753, i64* %RAX.i1890, align 8
  %1754 = icmp ult i64 %1753, %1720
  %1755 = icmp ult i64 %1753, %1751
  %1756 = or i1 %1754, %1755
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %39, align 1
  %1758 = trunc i64 %1753 to i32
  %1759 = and i32 %1758, 255
  %1760 = tail call i32 @llvm.ctpop.i32(i32 %1759)
  %1761 = trunc i32 %1760 to i8
  %1762 = and i8 %1761, 1
  %1763 = xor i8 %1762, 1
  store i8 %1763, i8* %46, align 1
  %1764 = xor i64 %1751, %1720
  %1765 = xor i64 %1764, %1753
  %1766 = lshr i64 %1765, 4
  %1767 = trunc i64 %1766 to i8
  %1768 = and i8 %1767, 1
  store i8 %1768, i8* %52, align 1
  %1769 = icmp eq i64 %1753, 0
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %55, align 1
  %1771 = lshr i64 %1753, 63
  %1772 = trunc i64 %1771 to i8
  store i8 %1772, i8* %58, align 1
  %1773 = xor i64 %1771, %1738
  %1774 = xor i64 %1771, %1752
  %1775 = add nuw nsw i64 %1773, %1774
  %1776 = icmp eq i64 %1775, 2
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %64, align 1
  %1778 = load i64, i64* %RBP.i, align 8
  %1779 = add i64 %1778, -48
  %1780 = add i64 %383, 174
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i32*
  %1782 = load i32, i32* %1781, align 4
  %1783 = sext i32 %1782 to i64
  store i64 %1783, i64* %RCX.i1835, align 8
  %1784 = shl nsw i64 %1783, 3
  %1785 = add i64 %1784, %1753
  %1786 = add i64 %383, 179
  store i64 %1786, i64* %3, align 8
  %1787 = load double, double* %259, align 1
  %1788 = inttoptr i64 %1785 to double*
  %1789 = load double, double* %1788, align 8
  %1790 = fsub double %1787, %1789
  store double %1790, double* %259, align 1
  %1791 = add i64 %1778, -96
  %1792 = add i64 %383, 183
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i64*
  %1794 = load i64, i64* %1793, align 8
  store i64 %1794, i64* %RAX.i1890, align 8
  %1795 = add i64 %1778, -188
  %1796 = add i64 %383, 190
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = sext i32 %1798 to i64
  %1800 = mul nsw i64 %1799, 520
  store i64 %1800, i64* %RCX.i1835, align 8
  %1801 = lshr i64 %1800, 63
  %1802 = add i64 %1800, %1794
  store i64 %1802, i64* %RAX.i1890, align 8
  %1803 = icmp ult i64 %1802, %1794
  %1804 = icmp ult i64 %1802, %1800
  %1805 = or i1 %1803, %1804
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %39, align 1
  %1807 = trunc i64 %1802 to i32
  %1808 = and i32 %1807, 255
  %1809 = tail call i32 @llvm.ctpop.i32(i32 %1808)
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  %1812 = xor i8 %1811, 1
  store i8 %1812, i8* %46, align 1
  %1813 = xor i64 %1800, %1794
  %1814 = xor i64 %1813, %1802
  %1815 = lshr i64 %1814, 4
  %1816 = trunc i64 %1815 to i8
  %1817 = and i8 %1816, 1
  store i8 %1817, i8* %52, align 1
  %1818 = icmp eq i64 %1802, 0
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %55, align 1
  %1820 = lshr i64 %1802, 63
  %1821 = trunc i64 %1820 to i8
  store i8 %1821, i8* %58, align 1
  %1822 = lshr i64 %1794, 63
  %1823 = xor i64 %1820, %1822
  %1824 = xor i64 %1820, %1801
  %1825 = add nuw nsw i64 %1823, %1824
  %1826 = icmp eq i64 %1825, 2
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %64, align 1
  %1828 = add i64 %1778, -192
  %1829 = add i64 %383, 207
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i32*
  %1831 = load i32, i32* %1830, align 4
  %1832 = sext i32 %1831 to i64
  store i64 %1832, i64* %RCX.i1835, align 8
  %1833 = shl nsw i64 %1832, 3
  %1834 = add i64 %1833, %1802
  %1835 = add i64 %383, 212
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to double*
  store double %1790, double* %1836, align 8
  %1837 = load i64, i64* %RBP.i, align 8
  %1838 = add i64 %1837, -176
  %1839 = load i64, i64* %3, align 8
  %1840 = add i64 %1839, 7
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1838 to i64*
  %1842 = load i64, i64* %1841, align 8
  store i64 %1842, i64* %RAX.i1890, align 8
  %1843 = add i64 %1837, -192
  %1844 = add i64 %1839, 14
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1843 to i32*
  %1846 = load i32, i32* %1845, align 4
  %1847 = sext i32 %1846 to i64
  store i64 %1847, i64* %RCX.i1835, align 8
  %1848 = shl nsw i64 %1847, 3
  %1849 = add i64 %1848, %1842
  %1850 = add i64 %1839, 19
  store i64 %1850, i64* %3, align 8
  %1851 = inttoptr i64 %1849 to i64*
  %1852 = load i64, i64* %1851, align 8
  store i64 %1852, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %1853 = add i64 %1837, -184
  %1854 = add i64 %1839, 26
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i64*
  %1856 = load i64, i64* %1855, align 8
  store i64 %1856, i64* %RAX.i1890, align 8
  %1857 = add i64 %1839, 33
  store i64 %1857, i64* %3, align 8
  %1858 = load i32, i32* %1845, align 4
  %1859 = sext i32 %1858 to i64
  store i64 %1859, i64* %RCX.i1835, align 8
  %1860 = shl nsw i64 %1859, 3
  %1861 = add i64 %1860, %1856
  %1862 = add i64 %1839, 38
  store i64 %1862, i64* %3, align 8
  %1863 = bitcast i64 %1852 to double
  %1864 = inttoptr i64 %1861 to double*
  %1865 = load double, double* %1864, align 8
  %1866 = fdiv double %1863, %1865
  store double %1866, double* %259, align 1
  store i64 0, i64* %260, align 1
  %1867 = add i64 %1837, -112
  %1868 = add i64 %1839, 42
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i64*
  %1870 = load i64, i64* %1869, align 8
  store i64 %1870, i64* %RAX.i1890, align 8
  %1871 = add i64 %1837, -188
  %1872 = add i64 %1839, 49
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1871 to i32*
  %1874 = load i32, i32* %1873, align 4
  %1875 = sext i32 %1874 to i64
  %1876 = mul nsw i64 %1875, 33800
  store i64 %1876, i64* %RCX.i1835, align 8
  %1877 = lshr i64 %1876, 63
  %1878 = add i64 %1876, %1870
  store i64 %1878, i64* %RAX.i1890, align 8
  %1879 = icmp ult i64 %1878, %1870
  %1880 = icmp ult i64 %1878, %1876
  %1881 = or i1 %1879, %1880
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %39, align 1
  %1883 = trunc i64 %1878 to i32
  %1884 = and i32 %1883, 255
  %1885 = tail call i32 @llvm.ctpop.i32(i32 %1884)
  %1886 = trunc i32 %1885 to i8
  %1887 = and i8 %1886, 1
  %1888 = xor i8 %1887, 1
  store i8 %1888, i8* %46, align 1
  %1889 = xor i64 %1876, %1870
  %1890 = xor i64 %1889, %1878
  %1891 = lshr i64 %1890, 4
  %1892 = trunc i64 %1891 to i8
  %1893 = and i8 %1892, 1
  store i8 %1893, i8* %52, align 1
  %1894 = icmp eq i64 %1878, 0
  %1895 = zext i1 %1894 to i8
  store i8 %1895, i8* %55, align 1
  %1896 = lshr i64 %1878, 63
  %1897 = trunc i64 %1896 to i8
  store i8 %1897, i8* %58, align 1
  %1898 = lshr i64 %1870, 63
  %1899 = xor i64 %1896, %1898
  %1900 = xor i64 %1896, %1877
  %1901 = add nuw nsw i64 %1899, %1900
  %1902 = icmp eq i64 %1901, 2
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %64, align 1
  %1904 = load i64, i64* %RBP.i, align 8
  %1905 = add i64 %1904, -192
  %1906 = add i64 %1839, 66
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  %1908 = load i32, i32* %1907, align 4
  %1909 = sext i32 %1908 to i64
  %1910 = mul nsw i64 %1909, 520
  store i64 %1910, i64* %RCX.i1835, align 8
  %1911 = lshr i64 %1910, 63
  %1912 = add i64 %1910, %1878
  store i64 %1912, i64* %RAX.i1890, align 8
  %1913 = icmp ult i64 %1912, %1878
  %1914 = icmp ult i64 %1912, %1910
  %1915 = or i1 %1913, %1914
  %1916 = zext i1 %1915 to i8
  store i8 %1916, i8* %39, align 1
  %1917 = trunc i64 %1912 to i32
  %1918 = and i32 %1917, 255
  %1919 = tail call i32 @llvm.ctpop.i32(i32 %1918)
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  %1922 = xor i8 %1921, 1
  store i8 %1922, i8* %46, align 1
  %1923 = xor i64 %1910, %1878
  %1924 = xor i64 %1923, %1912
  %1925 = lshr i64 %1924, 4
  %1926 = trunc i64 %1925 to i8
  %1927 = and i8 %1926, 1
  store i8 %1927, i8* %52, align 1
  %1928 = icmp eq i64 %1912, 0
  %1929 = zext i1 %1928 to i8
  store i8 %1929, i8* %55, align 1
  %1930 = lshr i64 %1912, 63
  %1931 = trunc i64 %1930 to i8
  store i8 %1931, i8* %58, align 1
  %1932 = xor i64 %1930, %1896
  %1933 = xor i64 %1930, %1911
  %1934 = add nuw nsw i64 %1932, %1933
  %1935 = icmp eq i64 %1934, 2
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %64, align 1
  %1937 = add i64 %1904, -48
  %1938 = add i64 %1839, 80
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i32*
  %1940 = load i32, i32* %1939, align 4
  %1941 = sext i32 %1940 to i64
  store i64 %1941, i64* %RCX.i1835, align 8
  %1942 = shl nsw i64 %1941, 3
  %1943 = add i64 %1942, %1912
  %1944 = add i64 %1839, 85
  store i64 %1944, i64* %3, align 8
  %1945 = load double, double* %259, align 1
  %1946 = inttoptr i64 %1943 to double*
  %1947 = load double, double* %1946, align 8
  %1948 = fmul double %1945, %1947
  store double %1948, double* %259, align 1
  %1949 = add i64 %1904, -72
  %1950 = add i64 %1839, 90
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i64*
  %1952 = load i64, i64* %1951, align 8
  store i64 %1952, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %1953 = add i64 %1904, -184
  %1954 = add i64 %1839, 97
  store i64 %1954, i64* %3, align 8
  %1955 = inttoptr i64 %1953 to i64*
  %1956 = load i64, i64* %1955, align 8
  store i64 %1956, i64* %RAX.i1890, align 8
  %1957 = add i64 %1839, 104
  store i64 %1957, i64* %3, align 8
  %1958 = load i32, i32* %1907, align 4
  %1959 = sext i32 %1958 to i64
  store i64 %1959, i64* %RCX.i1835, align 8
  %1960 = shl nsw i64 %1959, 3
  %1961 = add i64 %1960, %1956
  %1962 = add i64 %1839, 109
  store i64 %1962, i64* %3, align 8
  %1963 = bitcast i64 %1952 to double
  %1964 = inttoptr i64 %1961 to double*
  %1965 = load double, double* %1964, align 8
  %1966 = fdiv double %1963, %1965
  store double %1966, double* %157, align 1
  store i64 0, i64* %262, align 1
  %1967 = load i64, i64* %RBP.i, align 8
  %1968 = add i64 %1967, -96
  %1969 = add i64 %1839, 113
  store i64 %1969, i64* %3, align 8
  %1970 = inttoptr i64 %1968 to i64*
  %1971 = load i64, i64* %1970, align 8
  store i64 %1971, i64* %RAX.i1890, align 8
  %1972 = add i64 %1967, -188
  %1973 = add i64 %1839, 120
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  %1975 = load i32, i32* %1974, align 4
  %1976 = sext i32 %1975 to i64
  %1977 = mul nsw i64 %1976, 520
  store i64 %1977, i64* %RCX.i1835, align 8
  %1978 = lshr i64 %1977, 63
  %1979 = add i64 %1977, %1971
  store i64 %1979, i64* %RAX.i1890, align 8
  %1980 = icmp ult i64 %1979, %1971
  %1981 = icmp ult i64 %1979, %1977
  %1982 = or i1 %1980, %1981
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %39, align 1
  %1984 = trunc i64 %1979 to i32
  %1985 = and i32 %1984, 255
  %1986 = tail call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  store i8 %1989, i8* %46, align 1
  %1990 = xor i64 %1977, %1971
  %1991 = xor i64 %1990, %1979
  %1992 = lshr i64 %1991, 4
  %1993 = trunc i64 %1992 to i8
  %1994 = and i8 %1993, 1
  store i8 %1994, i8* %52, align 1
  %1995 = icmp eq i64 %1979, 0
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %55, align 1
  %1997 = lshr i64 %1979, 63
  %1998 = trunc i64 %1997 to i8
  store i8 %1998, i8* %58, align 1
  %1999 = lshr i64 %1971, 63
  %2000 = xor i64 %1997, %1999
  %2001 = xor i64 %1997, %1978
  %2002 = add nuw nsw i64 %2000, %2001
  %2003 = icmp eq i64 %2002, 2
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %64, align 1
  %2005 = add i64 %1967, -192
  %2006 = add i64 %1839, 137
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = sext i32 %2008 to i64
  store i64 %2009, i64* %RCX.i1835, align 8
  %2010 = shl nsw i64 %2009, 3
  %2011 = add i64 %2010, %1979
  %2012 = add i64 %1839, 142
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to double*
  %2014 = load double, double* %2013, align 8
  %2015 = fmul double %1966, %2014
  store double %2015, double* %157, align 1
  store i64 0, i64* %262, align 1
  %2016 = load double, double* %259, align 1
  %2017 = fsub double %2016, %2015
  store double %2017, double* %259, align 1
  %2018 = add i64 %1967, -104
  %2019 = add i64 %1839, 150
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i64*
  %2021 = load i64, i64* %2020, align 8
  store i64 %2021, i64* %RAX.i1890, align 8
  %2022 = load i64, i64* %RBP.i, align 8
  %2023 = add i64 %2022, -188
  %2024 = add i64 %1839, 157
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i32*
  %2026 = load i32, i32* %2025, align 4
  %2027 = sext i32 %2026 to i64
  %2028 = mul nsw i64 %2027, 520
  store i64 %2028, i64* %RCX.i1835, align 8
  %2029 = lshr i64 %2028, 63
  %2030 = add i64 %2028, %2021
  store i64 %2030, i64* %RAX.i1890, align 8
  %2031 = icmp ult i64 %2030, %2021
  %2032 = icmp ult i64 %2030, %2028
  %2033 = or i1 %2031, %2032
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %39, align 1
  %2035 = trunc i64 %2030 to i32
  %2036 = and i32 %2035, 255
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %46, align 1
  %2041 = xor i64 %2028, %2021
  %2042 = xor i64 %2041, %2030
  %2043 = lshr i64 %2042, 4
  %2044 = trunc i64 %2043 to i8
  %2045 = and i8 %2044, 1
  store i8 %2045, i8* %52, align 1
  %2046 = icmp eq i64 %2030, 0
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %55, align 1
  %2048 = lshr i64 %2030, 63
  %2049 = trunc i64 %2048 to i8
  store i8 %2049, i8* %58, align 1
  %2050 = lshr i64 %2021, 63
  %2051 = xor i64 %2048, %2050
  %2052 = xor i64 %2048, %2029
  %2053 = add nuw nsw i64 %2051, %2052
  %2054 = icmp eq i64 %2053, 2
  %2055 = zext i1 %2054 to i8
  store i8 %2055, i8* %64, align 1
  %2056 = add i64 %2022, -192
  %2057 = add i64 %1839, 174
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to i32*
  %2059 = load i32, i32* %2058, align 4
  %2060 = sext i32 %2059 to i64
  store i64 %2060, i64* %RCX.i1835, align 8
  %2061 = shl nsw i64 %2060, 3
  %2062 = add i64 %2061, %2030
  %2063 = add i64 %1839, 179
  store i64 %2063, i64* %3, align 8
  %2064 = inttoptr i64 %2062 to double*
  store double %2017, double* %2064, align 8
  %2065 = load i64, i64* %RBP.i, align 8
  %2066 = add i64 %2065, -160
  %2067 = load i64, i64* %3, align 8
  %2068 = add i64 %2067, 7
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2066 to i64*
  %2070 = load i64, i64* %2069, align 8
  store i64 %2070, i64* %RAX.i1890, align 8
  %2071 = add i64 %2065, -48
  %2072 = add i64 %2067, 11
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = sext i32 %2074 to i64
  store i64 %2075, i64* %RCX.i1835, align 8
  %2076 = shl nsw i64 %2075, 3
  %2077 = add i64 %2076, %2070
  %2078 = add i64 %2067, 16
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i64*
  %2080 = load i64, i64* %2079, align 8
  store i64 %2080, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %2081 = add i64 %2065, -168
  %2082 = add i64 %2067, 23
  store i64 %2082, i64* %3, align 8
  %2083 = inttoptr i64 %2081 to i64*
  %2084 = load i64, i64* %2083, align 8
  store i64 %2084, i64* %RAX.i1890, align 8
  %2085 = add i64 %2067, 27
  store i64 %2085, i64* %3, align 8
  %2086 = load i32, i32* %2073, align 4
  %2087 = sext i32 %2086 to i64
  store i64 %2087, i64* %RCX.i1835, align 8
  %2088 = shl nsw i64 %2087, 3
  %2089 = add i64 %2088, %2084
  %2090 = add i64 %2067, 32
  store i64 %2090, i64* %3, align 8
  %2091 = bitcast i64 %2080 to double
  %2092 = inttoptr i64 %2089 to double*
  %2093 = load double, double* %2092, align 8
  %2094 = fdiv double %2091, %2093
  store double %2094, double* %259, align 1
  store i64 0, i64* %260, align 1
  %2095 = add i64 %2065, -136
  %2096 = add i64 %2067, 39
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to i64*
  %2098 = load i64, i64* %2097, align 8
  store i64 %2098, i64* %RAX.i1890, align 8
  %2099 = add i64 %2065, -188
  %2100 = add i64 %2067, 46
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2099 to i32*
  %2102 = load i32, i32* %2101, align 4
  %2103 = sext i32 %2102 to i64
  %2104 = mul nsw i64 %2103, 33800
  store i64 %2104, i64* %RCX.i1835, align 8
  %2105 = lshr i64 %2104, 63
  %2106 = add i64 %2104, %2098
  store i64 %2106, i64* %RAX.i1890, align 8
  %2107 = icmp ult i64 %2106, %2098
  %2108 = icmp ult i64 %2106, %2104
  %2109 = or i1 %2107, %2108
  %2110 = zext i1 %2109 to i8
  store i8 %2110, i8* %39, align 1
  %2111 = trunc i64 %2106 to i32
  %2112 = and i32 %2111, 255
  %2113 = tail call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  store i8 %2116, i8* %46, align 1
  %2117 = xor i64 %2104, %2098
  %2118 = xor i64 %2117, %2106
  %2119 = lshr i64 %2118, 4
  %2120 = trunc i64 %2119 to i8
  %2121 = and i8 %2120, 1
  store i8 %2121, i8* %52, align 1
  %2122 = icmp eq i64 %2106, 0
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %55, align 1
  %2124 = lshr i64 %2106, 63
  %2125 = trunc i64 %2124 to i8
  store i8 %2125, i8* %58, align 1
  %2126 = lshr i64 %2098, 63
  %2127 = xor i64 %2124, %2126
  %2128 = xor i64 %2124, %2105
  %2129 = add nuw nsw i64 %2127, %2128
  %2130 = icmp eq i64 %2129, 2
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %64, align 1
  %2132 = load i64, i64* %RBP.i, align 8
  %2133 = add i64 %2132, -192
  %2134 = add i64 %2067, 63
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i32*
  %2136 = load i32, i32* %2135, align 4
  %2137 = sext i32 %2136 to i64
  %2138 = mul nsw i64 %2137, 520
  store i64 %2138, i64* %RCX.i1835, align 8
  %2139 = lshr i64 %2138, 63
  %2140 = add i64 %2138, %2106
  store i64 %2140, i64* %RAX.i1890, align 8
  %2141 = icmp ult i64 %2140, %2106
  %2142 = icmp ult i64 %2140, %2138
  %2143 = or i1 %2141, %2142
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %39, align 1
  %2145 = trunc i64 %2140 to i32
  %2146 = and i32 %2145, 255
  %2147 = tail call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  store i8 %2150, i8* %46, align 1
  %2151 = xor i64 %2138, %2106
  %2152 = xor i64 %2151, %2140
  %2153 = lshr i64 %2152, 4
  %2154 = trunc i64 %2153 to i8
  %2155 = and i8 %2154, 1
  store i8 %2155, i8* %52, align 1
  %2156 = icmp eq i64 %2140, 0
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %55, align 1
  %2158 = lshr i64 %2140, 63
  %2159 = trunc i64 %2158 to i8
  store i8 %2159, i8* %58, align 1
  %2160 = xor i64 %2158, %2124
  %2161 = xor i64 %2158, %2139
  %2162 = add nuw nsw i64 %2160, %2161
  %2163 = icmp eq i64 %2162, 2
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %64, align 1
  %2165 = add i64 %2132, -48
  %2166 = add i64 %2067, 77
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i32*
  %2168 = load i32, i32* %2167, align 4
  %2169 = sext i32 %2168 to i64
  store i64 %2169, i64* %RCX.i1835, align 8
  %2170 = shl nsw i64 %2169, 3
  %2171 = add i64 %2170, %2140
  %2172 = add i64 %2067, 82
  store i64 %2172, i64* %3, align 8
  %2173 = load double, double* %259, align 1
  %2174 = inttoptr i64 %2171 to double*
  %2175 = load double, double* %2174, align 8
  %2176 = fmul double %2173, %2175
  store double %2176, double* %259, align 1
  %2177 = add i64 %2132, -64
  %2178 = add i64 %2067, 87
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i64*
  %2180 = load i64, i64* %2179, align 8
  store i64 %2180, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %2181 = add i64 %2132, -152
  %2182 = add i64 %2067, 94
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i64*
  %2184 = load i64, i64* %2183, align 8
  store i64 %2184, i64* %RAX.i1890, align 8
  %2185 = add i64 %2132, -188
  %2186 = add i64 %2067, 101
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i32*
  %2188 = load i32, i32* %2187, align 4
  %2189 = sext i32 %2188 to i64
  store i64 %2189, i64* %RCX.i1835, align 8
  %2190 = shl nsw i64 %2189, 3
  %2191 = add i64 %2190, %2184
  %2192 = add i64 %2067, 106
  store i64 %2192, i64* %3, align 8
  %2193 = bitcast i64 %2180 to double
  %2194 = inttoptr i64 %2191 to double*
  %2195 = load double, double* %2194, align 8
  %2196 = fmul double %2193, %2195
  store double %2196, double* %157, align 1
  store i64 0, i64* %262, align 1
  %2197 = load i64, i64* %RBP.i, align 8
  %2198 = add i64 %2197, -168
  %2199 = add i64 %2067, 113
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to i64*
  %2201 = load i64, i64* %2200, align 8
  store i64 %2201, i64* %RAX.i1890, align 8
  %2202 = add i64 %2197, -48
  %2203 = add i64 %2067, 117
  store i64 %2203, i64* %3, align 8
  %2204 = inttoptr i64 %2202 to i32*
  %2205 = load i32, i32* %2204, align 4
  %2206 = sext i32 %2205 to i64
  store i64 %2206, i64* %RCX.i1835, align 8
  %2207 = shl nsw i64 %2206, 3
  %2208 = add i64 %2207, %2201
  %2209 = add i64 %2067, 122
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to double*
  %2211 = load double, double* %2210, align 8
  %2212 = fdiv double %2196, %2211
  store double %2212, double* %157, align 1
  store i64 0, i64* %262, align 1
  %2213 = add i64 %2197, -104
  %2214 = add i64 %2067, 126
  store i64 %2214, i64* %3, align 8
  %2215 = inttoptr i64 %2213 to i64*
  %2216 = load i64, i64* %2215, align 8
  store i64 %2216, i64* %RAX.i1890, align 8
  %2217 = add i64 %2197, -188
  %2218 = add i64 %2067, 133
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i32*
  %2220 = load i32, i32* %2219, align 4
  %2221 = sext i32 %2220 to i64
  %2222 = mul nsw i64 %2221, 520
  store i64 %2222, i64* %RCX.i1835, align 8
  %2223 = lshr i64 %2222, 63
  %2224 = add i64 %2222, %2216
  store i64 %2224, i64* %RAX.i1890, align 8
  %2225 = icmp ult i64 %2224, %2216
  %2226 = icmp ult i64 %2224, %2222
  %2227 = or i1 %2225, %2226
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %39, align 1
  %2229 = trunc i64 %2224 to i32
  %2230 = and i32 %2229, 255
  %2231 = tail call i32 @llvm.ctpop.i32(i32 %2230)
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  %2234 = xor i8 %2233, 1
  store i8 %2234, i8* %46, align 1
  %2235 = xor i64 %2222, %2216
  %2236 = xor i64 %2235, %2224
  %2237 = lshr i64 %2236, 4
  %2238 = trunc i64 %2237 to i8
  %2239 = and i8 %2238, 1
  store i8 %2239, i8* %52, align 1
  %2240 = icmp eq i64 %2224, 0
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %55, align 1
  %2242 = lshr i64 %2224, 63
  %2243 = trunc i64 %2242 to i8
  store i8 %2243, i8* %58, align 1
  %2244 = lshr i64 %2216, 63
  %2245 = xor i64 %2242, %2244
  %2246 = xor i64 %2242, %2223
  %2247 = add nuw nsw i64 %2245, %2246
  %2248 = icmp eq i64 %2247, 2
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %64, align 1
  %2250 = add i64 %2197, -192
  %2251 = add i64 %2067, 150
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2250 to i32*
  %2253 = load i32, i32* %2252, align 4
  %2254 = sext i32 %2253 to i64
  store i64 %2254, i64* %RCX.i1835, align 8
  %2255 = shl nsw i64 %2254, 3
  %2256 = add i64 %2255, %2224
  %2257 = add i64 %2067, 155
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to double*
  %2259 = load double, double* %2258, align 8
  %2260 = fmul double %2212, %2259
  store double %2260, double* %157, align 1
  store i64 0, i64* %262, align 1
  %2261 = load double, double* %259, align 1
  %2262 = fadd double %2261, %2260
  store double %2262, double* %259, align 1
  %2263 = load i64, i64* %RBP.i, align 8
  %2264 = add i64 %2263, -64
  %2265 = add i64 %2067, 164
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i64*
  %2267 = load i64, i64* %2266, align 8
  store i64 %2267, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %2268 = add i64 %2263, -144
  %2269 = add i64 %2067, 171
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i64*
  %2271 = load i64, i64* %2270, align 8
  store i64 %2271, i64* %RAX.i1890, align 8
  %2272 = add i64 %2263, -188
  %2273 = add i64 %2067, 178
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i32*
  %2275 = load i32, i32* %2274, align 4
  %2276 = sext i32 %2275 to i64
  store i64 %2276, i64* %RCX.i1835, align 8
  %2277 = shl nsw i64 %2276, 3
  %2278 = add i64 %2277, %2271
  %2279 = add i64 %2067, 183
  store i64 %2279, i64* %3, align 8
  %2280 = bitcast i64 %2267 to double
  %2281 = inttoptr i64 %2278 to double*
  %2282 = load double, double* %2281, align 8
  %2283 = fmul double %2280, %2282
  store double %2283, double* %157, align 1
  store i64 0, i64* %262, align 1
  %2284 = add i64 %2263, -168
  %2285 = add i64 %2067, 190
  store i64 %2285, i64* %3, align 8
  %2286 = inttoptr i64 %2284 to i64*
  %2287 = load i64, i64* %2286, align 8
  store i64 %2287, i64* %RAX.i1890, align 8
  %2288 = add i64 %2263, -48
  %2289 = add i64 %2067, 194
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = sext i32 %2291 to i64
  store i64 %2292, i64* %RCX.i1835, align 8
  %2293 = shl nsw i64 %2292, 3
  %2294 = add i64 %2293, %2287
  %2295 = add i64 %2067, 199
  store i64 %2295, i64* %3, align 8
  %2296 = inttoptr i64 %2294 to double*
  %2297 = load double, double* %2296, align 8
  %2298 = fdiv double %2283, %2297
  store double %2298, double* %157, align 1
  store i64 0, i64* %262, align 1
  %2299 = add i64 %2263, -112
  %2300 = add i64 %2067, 203
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to i64*
  %2302 = load i64, i64* %2301, align 8
  store i64 %2302, i64* %RAX.i1890, align 8
  %2303 = add i64 %2067, 210
  store i64 %2303, i64* %3, align 8
  %2304 = load i32, i32* %2274, align 4
  %2305 = sext i32 %2304 to i64
  %2306 = mul nsw i64 %2305, 33800
  store i64 %2306, i64* %RCX.i1835, align 8
  %2307 = lshr i64 %2306, 63
  %2308 = add i64 %2306, %2302
  store i64 %2308, i64* %RAX.i1890, align 8
  %2309 = icmp ult i64 %2308, %2302
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
  %2319 = xor i64 %2306, %2302
  %2320 = xor i64 %2319, %2308
  %2321 = lshr i64 %2320, 4
  %2322 = trunc i64 %2321 to i8
  %2323 = and i8 %2322, 1
  store i8 %2323, i8* %52, align 1
  %2324 = icmp eq i64 %2308, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %55, align 1
  %2326 = lshr i64 %2308, 63
  %2327 = trunc i64 %2326 to i8
  store i8 %2327, i8* %58, align 1
  %2328 = lshr i64 %2302, 63
  %2329 = xor i64 %2326, %2328
  %2330 = xor i64 %2326, %2307
  %2331 = add nuw nsw i64 %2329, %2330
  %2332 = icmp eq i64 %2331, 2
  %2333 = zext i1 %2332 to i8
  store i8 %2333, i8* %64, align 1
  %2334 = load i64, i64* %RBP.i, align 8
  %2335 = add i64 %2334, -192
  %2336 = add i64 %2067, 227
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2335 to i32*
  %2338 = load i32, i32* %2337, align 4
  %2339 = sext i32 %2338 to i64
  %2340 = mul nsw i64 %2339, 520
  store i64 %2340, i64* %RCX.i1835, align 8
  %2341 = lshr i64 %2340, 63
  %2342 = add i64 %2340, %2308
  store i64 %2342, i64* %RAX.i1890, align 8
  %2343 = icmp ult i64 %2342, %2308
  %2344 = icmp ult i64 %2342, %2340
  %2345 = or i1 %2343, %2344
  %2346 = zext i1 %2345 to i8
  store i8 %2346, i8* %39, align 1
  %2347 = trunc i64 %2342 to i32
  %2348 = and i32 %2347, 255
  %2349 = tail call i32 @llvm.ctpop.i32(i32 %2348)
  %2350 = trunc i32 %2349 to i8
  %2351 = and i8 %2350, 1
  %2352 = xor i8 %2351, 1
  store i8 %2352, i8* %46, align 1
  %2353 = xor i64 %2340, %2308
  %2354 = xor i64 %2353, %2342
  %2355 = lshr i64 %2354, 4
  %2356 = trunc i64 %2355 to i8
  %2357 = and i8 %2356, 1
  store i8 %2357, i8* %52, align 1
  %2358 = icmp eq i64 %2342, 0
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %55, align 1
  %2360 = lshr i64 %2342, 63
  %2361 = trunc i64 %2360 to i8
  store i8 %2361, i8* %58, align 1
  %2362 = xor i64 %2360, %2326
  %2363 = xor i64 %2360, %2341
  %2364 = add nuw nsw i64 %2362, %2363
  %2365 = icmp eq i64 %2364, 2
  %2366 = zext i1 %2365 to i8
  store i8 %2366, i8* %64, align 1
  %2367 = add i64 %2334, -48
  %2368 = add i64 %2067, 241
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2367 to i32*
  %2370 = load i32, i32* %2369, align 4
  %2371 = sext i32 %2370 to i64
  store i64 %2371, i64* %RCX.i1835, align 8
  %2372 = shl nsw i64 %2371, 3
  %2373 = add i64 %2372, %2342
  %2374 = add i64 %2067, 246
  store i64 %2374, i64* %3, align 8
  %2375 = load double, double* %157, align 1
  %2376 = inttoptr i64 %2373 to double*
  %2377 = load double, double* %2376, align 8
  %2378 = fmul double %2375, %2377
  store double %2378, double* %157, align 1
  %2379 = load double, double* %259, align 1
  %2380 = fsub double %2379, %2378
  store double %2380, double* %259, align 1
  %2381 = add i64 %2334, -136
  %2382 = add i64 %2067, 257
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2381 to i64*
  %2384 = load i64, i64* %2383, align 8
  store i64 %2384, i64* %RAX.i1890, align 8
  %2385 = add i64 %2334, -188
  %2386 = add i64 %2067, 264
  store i64 %2386, i64* %3, align 8
  %2387 = inttoptr i64 %2385 to i32*
  %2388 = load i32, i32* %2387, align 4
  %2389 = sext i32 %2388 to i64
  %2390 = mul nsw i64 %2389, 33800
  store i64 %2390, i64* %RCX.i1835, align 8
  %2391 = lshr i64 %2390, 63
  %2392 = add i64 %2390, %2384
  store i64 %2392, i64* %RAX.i1890, align 8
  %2393 = icmp ult i64 %2392, %2384
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
  %2403 = xor i64 %2390, %2384
  %2404 = xor i64 %2403, %2392
  %2405 = lshr i64 %2404, 4
  %2406 = trunc i64 %2405 to i8
  %2407 = and i8 %2406, 1
  store i8 %2407, i8* %52, align 1
  %2408 = icmp eq i64 %2392, 0
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %55, align 1
  %2410 = lshr i64 %2392, 63
  %2411 = trunc i64 %2410 to i8
  store i8 %2411, i8* %58, align 1
  %2412 = lshr i64 %2384, 63
  %2413 = xor i64 %2410, %2412
  %2414 = xor i64 %2410, %2391
  %2415 = add nuw nsw i64 %2413, %2414
  %2416 = icmp eq i64 %2415, 2
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %64, align 1
  %2418 = load i64, i64* %RBP.i, align 8
  %2419 = add i64 %2418, -192
  %2420 = add i64 %2067, 281
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i32*
  %2422 = load i32, i32* %2421, align 4
  %2423 = sext i32 %2422 to i64
  %2424 = mul nsw i64 %2423, 520
  store i64 %2424, i64* %RCX.i1835, align 8
  %2425 = lshr i64 %2424, 63
  %2426 = add i64 %2424, %2392
  store i64 %2426, i64* %RAX.i1890, align 8
  %2427 = icmp ult i64 %2426, %2392
  %2428 = icmp ult i64 %2426, %2424
  %2429 = or i1 %2427, %2428
  %2430 = zext i1 %2429 to i8
  store i8 %2430, i8* %39, align 1
  %2431 = trunc i64 %2426 to i32
  %2432 = and i32 %2431, 255
  %2433 = tail call i32 @llvm.ctpop.i32(i32 %2432)
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  %2436 = xor i8 %2435, 1
  store i8 %2436, i8* %46, align 1
  %2437 = xor i64 %2424, %2392
  %2438 = xor i64 %2437, %2426
  %2439 = lshr i64 %2438, 4
  %2440 = trunc i64 %2439 to i8
  %2441 = and i8 %2440, 1
  store i8 %2441, i8* %52, align 1
  %2442 = icmp eq i64 %2426, 0
  %2443 = zext i1 %2442 to i8
  store i8 %2443, i8* %55, align 1
  %2444 = lshr i64 %2426, 63
  %2445 = trunc i64 %2444 to i8
  store i8 %2445, i8* %58, align 1
  %2446 = xor i64 %2444, %2410
  %2447 = xor i64 %2444, %2425
  %2448 = add nuw nsw i64 %2446, %2447
  %2449 = icmp eq i64 %2448, 2
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %64, align 1
  %2451 = add i64 %2418, -48
  %2452 = add i64 %2067, 295
  store i64 %2452, i64* %3, align 8
  %2453 = inttoptr i64 %2451 to i32*
  %2454 = load i32, i32* %2453, align 4
  %2455 = sext i32 %2454 to i64
  store i64 %2455, i64* %RCX.i1835, align 8
  %2456 = shl nsw i64 %2455, 3
  %2457 = add i64 %2456, %2426
  %2458 = add i64 %2067, 300
  store i64 %2458, i64* %3, align 8
  %2459 = load i64, i64* %149, align 1
  %2460 = inttoptr i64 %2457 to i64*
  store i64 %2459, i64* %2460, align 8
  %2461 = load i64, i64* %RBP.i, align 8
  %2462 = add i64 %2461, -104
  %2463 = load i64, i64* %3, align 8
  %2464 = add i64 %2463, 4
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2462 to i64*
  %2466 = load i64, i64* %2465, align 8
  store i64 %2466, i64* %RAX.i1890, align 8
  %2467 = add i64 %2461, -188
  %2468 = add i64 %2463, 11
  store i64 %2468, i64* %3, align 8
  %2469 = inttoptr i64 %2467 to i32*
  %2470 = load i32, i32* %2469, align 4
  %2471 = sext i32 %2470 to i64
  %2472 = mul nsw i64 %2471, 520
  store i64 %2472, i64* %RCX.i1835, align 8
  %2473 = lshr i64 %2472, 63
  %2474 = add i64 %2472, %2466
  store i64 %2474, i64* %RAX.i1890, align 8
  %2475 = icmp ult i64 %2474, %2466
  %2476 = icmp ult i64 %2474, %2472
  %2477 = or i1 %2475, %2476
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %39, align 1
  %2479 = trunc i64 %2474 to i32
  %2480 = and i32 %2479, 255
  %2481 = tail call i32 @llvm.ctpop.i32(i32 %2480)
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  %2484 = xor i8 %2483, 1
  store i8 %2484, i8* %46, align 1
  %2485 = xor i64 %2472, %2466
  %2486 = xor i64 %2485, %2474
  %2487 = lshr i64 %2486, 4
  %2488 = trunc i64 %2487 to i8
  %2489 = and i8 %2488, 1
  store i8 %2489, i8* %52, align 1
  %2490 = icmp eq i64 %2474, 0
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %55, align 1
  %2492 = lshr i64 %2474, 63
  %2493 = trunc i64 %2492 to i8
  store i8 %2493, i8* %58, align 1
  %2494 = lshr i64 %2466, 63
  %2495 = xor i64 %2492, %2494
  %2496 = xor i64 %2492, %2473
  %2497 = add nuw nsw i64 %2495, %2496
  %2498 = icmp eq i64 %2497, 2
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %64, align 1
  %2500 = add i64 %2461, -192
  %2501 = add i64 %2463, 28
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2500 to i32*
  %2503 = load i32, i32* %2502, align 4
  %2504 = sext i32 %2503 to i64
  store i64 %2504, i64* %RCX.i1835, align 8
  %2505 = shl nsw i64 %2504, 3
  %2506 = add i64 %2505, %2474
  %2507 = add i64 %2463, 33
  store i64 %2507, i64* %3, align 8
  %2508 = inttoptr i64 %2506 to i64*
  %2509 = load i64, i64* %2508, align 8
  store i64 %2509, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %2510 = add i64 %2461, -112
  %2511 = add i64 %2463, 37
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i64*
  %2513 = load i64, i64* %2512, align 8
  store i64 %2513, i64* %RAX.i1890, align 8
  %2514 = add i64 %2463, 44
  store i64 %2514, i64* %3, align 8
  %2515 = load i32, i32* %2469, align 4
  %2516 = sext i32 %2515 to i64
  %2517 = mul nsw i64 %2516, 33800
  store i64 %2517, i64* %RCX.i1835, align 8
  %2518 = lshr i64 %2517, 63
  %2519 = add i64 %2517, %2513
  store i64 %2519, i64* %RAX.i1890, align 8
  %2520 = icmp ult i64 %2519, %2513
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
  %2530 = xor i64 %2517, %2513
  %2531 = xor i64 %2530, %2519
  %2532 = lshr i64 %2531, 4
  %2533 = trunc i64 %2532 to i8
  %2534 = and i8 %2533, 1
  store i8 %2534, i8* %52, align 1
  %2535 = icmp eq i64 %2519, 0
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %55, align 1
  %2537 = lshr i64 %2519, 63
  %2538 = trunc i64 %2537 to i8
  store i8 %2538, i8* %58, align 1
  %2539 = lshr i64 %2513, 63
  %2540 = xor i64 %2537, %2539
  %2541 = xor i64 %2537, %2518
  %2542 = add nuw nsw i64 %2540, %2541
  %2543 = icmp eq i64 %2542, 2
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %64, align 1
  %2545 = load i64, i64* %RBP.i, align 8
  %2546 = add i64 %2545, -192
  %2547 = add i64 %2463, 61
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2546 to i32*
  %2549 = load i32, i32* %2548, align 4
  %2550 = sext i32 %2549 to i64
  %2551 = mul nsw i64 %2550, 520
  store i64 %2551, i64* %RCX.i1835, align 8
  %2552 = lshr i64 %2551, 63
  %2553 = add i64 %2551, %2519
  store i64 %2553, i64* %RAX.i1890, align 8
  %2554 = icmp ult i64 %2553, %2519
  %2555 = icmp ult i64 %2553, %2551
  %2556 = or i1 %2554, %2555
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %39, align 1
  %2558 = trunc i64 %2553 to i32
  %2559 = and i32 %2558, 255
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  store i8 %2563, i8* %46, align 1
  %2564 = xor i64 %2551, %2519
  %2565 = xor i64 %2564, %2553
  %2566 = lshr i64 %2565, 4
  %2567 = trunc i64 %2566 to i8
  %2568 = and i8 %2567, 1
  store i8 %2568, i8* %52, align 1
  %2569 = icmp eq i64 %2553, 0
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %55, align 1
  %2571 = lshr i64 %2553, 63
  %2572 = trunc i64 %2571 to i8
  store i8 %2572, i8* %58, align 1
  %2573 = xor i64 %2571, %2537
  %2574 = xor i64 %2571, %2552
  %2575 = add nuw nsw i64 %2573, %2574
  %2576 = icmp eq i64 %2575, 2
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %64, align 1
  %2578 = add i64 %2545, -48
  %2579 = add i64 %2463, 75
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2578 to i32*
  %2581 = load i32, i32* %2580, align 4
  %2582 = sext i32 %2581 to i64
  store i64 %2582, i64* %RCX.i1835, align 8
  %2583 = shl nsw i64 %2582, 3
  %2584 = add i64 %2583, %2553
  %2585 = add i64 %2463, 80
  store i64 %2585, i64* %3, align 8
  %2586 = load i64, i64* %149, align 1
  %2587 = inttoptr i64 %2584 to i64*
  store i64 %2586, i64* %2587, align 8
  %2588 = load i64, i64* %RBP.i, align 8
  %2589 = add i64 %2588, -196
  %2590 = load i64, i64* %3, align 8
  %2591 = add i64 %2590, 10
  store i64 %2591, i64* %3, align 8
  %2592 = inttoptr i64 %2589 to i32*
  store i32 0, i32* %2592, align 4
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_401c20

block_.L_401c20:                                  ; preds = %block_401c2f, %block_.L_401913
  %2593 = phi i64 [ %3778, %block_401c2f ], [ %.pre12, %block_.L_401913 ]
  %2594 = load i64, i64* %RBP.i, align 8
  %2595 = add i64 %2594, -196
  %2596 = add i64 %2593, 6
  store i64 %2596, i64* %3, align 8
  %2597 = inttoptr i64 %2595 to i32*
  %2598 = load i32, i32* %2597, align 4
  %2599 = zext i32 %2598 to i64
  store i64 %2599, i64* %RAX.i1890, align 8
  %2600 = add i64 %2594, -48
  %2601 = add i64 %2593, 9
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2600 to i32*
  %2603 = load i32, i32* %2602, align 4
  %2604 = sub i32 %2598, %2603
  %2605 = icmp ult i32 %2598, %2603
  %2606 = zext i1 %2605 to i8
  store i8 %2606, i8* %39, align 1
  %2607 = and i32 %2604, 255
  %2608 = tail call i32 @llvm.ctpop.i32(i32 %2607)
  %2609 = trunc i32 %2608 to i8
  %2610 = and i8 %2609, 1
  %2611 = xor i8 %2610, 1
  store i8 %2611, i8* %46, align 1
  %2612 = xor i32 %2603, %2598
  %2613 = xor i32 %2612, %2604
  %2614 = lshr i32 %2613, 4
  %2615 = trunc i32 %2614 to i8
  %2616 = and i8 %2615, 1
  store i8 %2616, i8* %52, align 1
  %2617 = icmp eq i32 %2604, 0
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %55, align 1
  %2619 = lshr i32 %2604, 31
  %2620 = trunc i32 %2619 to i8
  store i8 %2620, i8* %58, align 1
  %2621 = lshr i32 %2598, 31
  %2622 = lshr i32 %2603, 31
  %2623 = xor i32 %2622, %2621
  %2624 = xor i32 %2619, %2621
  %2625 = add nuw nsw i32 %2624, %2623
  %2626 = icmp eq i32 %2625, 2
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %64, align 1
  %2628 = icmp ne i8 %2620, 0
  %2629 = xor i1 %2628, %2626
  %.v14 = select i1 %2629, i64 15, i64 818
  %2630 = add i64 %2593, %.v14
  %2631 = add i64 %2594, -120
  %2632 = add i64 %2630, 4
  store i64 %2632, i64* %3, align 8
  %2633 = inttoptr i64 %2631 to i64*
  %2634 = load i64, i64* %2633, align 8
  store i64 %2634, i64* %RAX.i1890, align 8
  %2635 = add i64 %2594, -188
  %2636 = add i64 %2630, 11
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i32*
  %2638 = load i32, i32* %2637, align 4
  %2639 = sext i32 %2638 to i64
  %2640 = mul nsw i64 %2639, 33800
  store i64 %2640, i64* %RCX.i1835, align 8
  %2641 = lshr i64 %2640, 63
  %2642 = add i64 %2640, %2634
  store i64 %2642, i64* %RAX.i1890, align 8
  %2643 = icmp ult i64 %2642, %2634
  %2644 = icmp ult i64 %2642, %2640
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
  %2653 = xor i64 %2640, %2634
  %2654 = xor i64 %2653, %2642
  %2655 = lshr i64 %2654, 4
  %2656 = trunc i64 %2655 to i8
  %2657 = and i8 %2656, 1
  store i8 %2657, i8* %52, align 1
  %2658 = icmp eq i64 %2642, 0
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %55, align 1
  %2660 = lshr i64 %2642, 63
  %2661 = trunc i64 %2660 to i8
  store i8 %2661, i8* %58, align 1
  %2662 = lshr i64 %2634, 63
  %2663 = xor i64 %2660, %2662
  %2664 = xor i64 %2660, %2641
  %2665 = add nuw nsw i64 %2663, %2664
  %2666 = icmp eq i64 %2665, 2
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %64, align 1
  %2668 = load i64, i64* %RBP.i, align 8
  %2669 = add i64 %2668, -52
  %2670 = add i64 %2630, 25
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = sext i32 %2672 to i64
  %2674 = mul nsw i64 %2673, 520
  store i64 %2674, i64* %RCX.i1835, align 8
  %2675 = lshr i64 %2674, 63
  %2676 = add i64 %2630, 35
  store i64 %2676, i64* %3, align 8
  %2677 = add i64 %2674, %2642
  store i64 %2677, i64* %RAX.i1890, align 8
  %2678 = icmp ult i64 %2677, %2642
  %2679 = icmp ult i64 %2677, %2674
  %2680 = or i1 %2678, %2679
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %39, align 1
  %2682 = trunc i64 %2677 to i32
  %2683 = and i32 %2682, 255
  %2684 = tail call i32 @llvm.ctpop.i32(i32 %2683)
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  %2687 = xor i8 %2686, 1
  store i8 %2687, i8* %46, align 1
  %2688 = xor i64 %2674, %2642
  %2689 = xor i64 %2688, %2677
  %2690 = lshr i64 %2689, 4
  %2691 = trunc i64 %2690 to i8
  %2692 = and i8 %2691, 1
  store i8 %2692, i8* %52, align 1
  %2693 = icmp eq i64 %2677, 0
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %55, align 1
  %2695 = lshr i64 %2677, 63
  %2696 = trunc i64 %2695 to i8
  store i8 %2696, i8* %58, align 1
  %2697 = xor i64 %2695, %2660
  %2698 = xor i64 %2695, %2675
  %2699 = add nuw nsw i64 %2697, %2698
  %2700 = icmp eq i64 %2699, 2
  %2701 = zext i1 %2700 to i8
  store i8 %2701, i8* %64, align 1
  br i1 %2629, label %block_401c2f, label %block_.L_401f52

block_401c2f:                                     ; preds = %block_.L_401c20
  %2702 = add i64 %2668, -196
  %2703 = add i64 %2630, 42
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2702 to i32*
  %2705 = load i32, i32* %2704, align 4
  %2706 = sext i32 %2705 to i64
  store i64 %2706, i64* %RCX.i1835, align 8
  %2707 = shl nsw i64 %2706, 3
  %2708 = add i64 %2707, %2677
  %2709 = add i64 %2630, 47
  store i64 %2709, i64* %3, align 8
  %2710 = inttoptr i64 %2708 to i64*
  %2711 = load i64, i64* %2710, align 8
  store i64 %2711, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %2712 = add i64 %2668, -80
  %2713 = add i64 %2630, 51
  store i64 %2713, i64* %3, align 8
  %2714 = inttoptr i64 %2712 to i64*
  %2715 = load i64, i64* %2714, align 8
  store i64 %2715, i64* %RAX.i1890, align 8
  %2716 = add i64 %2668, -188
  %2717 = add i64 %2630, 58
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2716 to i32*
  %2719 = load i32, i32* %2718, align 4
  %2720 = sext i32 %2719 to i64
  %2721 = mul nsw i64 %2720, 520
  store i64 %2721, i64* %RCX.i1835, align 8
  %2722 = lshr i64 %2721, 63
  %2723 = add i64 %2721, %2715
  store i64 %2723, i64* %RAX.i1890, align 8
  %2724 = icmp ult i64 %2723, %2715
  %2725 = icmp ult i64 %2723, %2721
  %2726 = or i1 %2724, %2725
  %2727 = zext i1 %2726 to i8
  store i8 %2727, i8* %39, align 1
  %2728 = trunc i64 %2723 to i32
  %2729 = and i32 %2728, 255
  %2730 = tail call i32 @llvm.ctpop.i32(i32 %2729)
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  store i8 %2733, i8* %46, align 1
  %2734 = xor i64 %2721, %2715
  %2735 = xor i64 %2734, %2723
  %2736 = lshr i64 %2735, 4
  %2737 = trunc i64 %2736 to i8
  %2738 = and i8 %2737, 1
  store i8 %2738, i8* %52, align 1
  %2739 = icmp eq i64 %2723, 0
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %55, align 1
  %2741 = lshr i64 %2723, 63
  %2742 = trunc i64 %2741 to i8
  store i8 %2742, i8* %58, align 1
  %2743 = lshr i64 %2715, 63
  %2744 = xor i64 %2741, %2743
  %2745 = xor i64 %2741, %2722
  %2746 = add nuw nsw i64 %2744, %2745
  %2747 = icmp eq i64 %2746, 2
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %64, align 1
  %2749 = add i64 %2630, 75
  store i64 %2749, i64* %3, align 8
  %2750 = load i32, i32* %2704, align 4
  %2751 = sext i32 %2750 to i64
  store i64 %2751, i64* %RCX.i1835, align 8
  %2752 = shl nsw i64 %2751, 3
  %2753 = add i64 %2752, %2723
  %2754 = add i64 %2630, 80
  store i64 %2754, i64* %3, align 8
  %2755 = bitcast i64 %2711 to double
  %2756 = inttoptr i64 %2753 to double*
  %2757 = load double, double* %2756, align 8
  %2758 = fsub double %2755, %2757
  store double %2758, double* %259, align 1
  store i64 0, i64* %260, align 1
  %2759 = load i64, i64* %RBP.i, align 8
  %2760 = add i64 %2759, -128
  %2761 = add i64 %2630, 84
  store i64 %2761, i64* %3, align 8
  %2762 = inttoptr i64 %2760 to i64*
  %2763 = load i64, i64* %2762, align 8
  store i64 %2763, i64* %RAX.i1890, align 8
  %2764 = add i64 %2759, -188
  %2765 = add i64 %2630, 91
  store i64 %2765, i64* %3, align 8
  %2766 = inttoptr i64 %2764 to i32*
  %2767 = load i32, i32* %2766, align 4
  %2768 = sext i32 %2767 to i64
  %2769 = mul nsw i64 %2768, 33800
  store i64 %2769, i64* %RCX.i1835, align 8
  %2770 = lshr i64 %2769, 63
  %2771 = add i64 %2769, %2763
  store i64 %2771, i64* %RAX.i1890, align 8
  %2772 = icmp ult i64 %2771, %2763
  %2773 = icmp ult i64 %2771, %2769
  %2774 = or i1 %2772, %2773
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %39, align 1
  %2776 = trunc i64 %2771 to i32
  %2777 = and i32 %2776, 255
  %2778 = tail call i32 @llvm.ctpop.i32(i32 %2777)
  %2779 = trunc i32 %2778 to i8
  %2780 = and i8 %2779, 1
  %2781 = xor i8 %2780, 1
  store i8 %2781, i8* %46, align 1
  %2782 = xor i64 %2769, %2763
  %2783 = xor i64 %2782, %2771
  %2784 = lshr i64 %2783, 4
  %2785 = trunc i64 %2784 to i8
  %2786 = and i8 %2785, 1
  store i8 %2786, i8* %52, align 1
  %2787 = icmp eq i64 %2771, 0
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %55, align 1
  %2789 = lshr i64 %2771, 63
  %2790 = trunc i64 %2789 to i8
  store i8 %2790, i8* %58, align 1
  %2791 = lshr i64 %2763, 63
  %2792 = xor i64 %2789, %2791
  %2793 = xor i64 %2789, %2770
  %2794 = add nuw nsw i64 %2792, %2793
  %2795 = icmp eq i64 %2794, 2
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %64, align 1
  %2797 = add i64 %2759, -52
  %2798 = add i64 %2630, 105
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i32*
  %2800 = load i32, i32* %2799, align 4
  %2801 = sext i32 %2800 to i64
  %2802 = mul nsw i64 %2801, 520
  store i64 %2802, i64* %RCX.i1835, align 8
  %2803 = lshr i64 %2802, 63
  %2804 = add i64 %2802, %2771
  store i64 %2804, i64* %RAX.i1890, align 8
  %2805 = icmp ult i64 %2804, %2771
  %2806 = icmp ult i64 %2804, %2802
  %2807 = or i1 %2805, %2806
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %39, align 1
  %2809 = trunc i64 %2804 to i32
  %2810 = and i32 %2809, 255
  %2811 = tail call i32 @llvm.ctpop.i32(i32 %2810)
  %2812 = trunc i32 %2811 to i8
  %2813 = and i8 %2812, 1
  %2814 = xor i8 %2813, 1
  store i8 %2814, i8* %46, align 1
  %2815 = xor i64 %2802, %2771
  %2816 = xor i64 %2815, %2804
  %2817 = lshr i64 %2816, 4
  %2818 = trunc i64 %2817 to i8
  %2819 = and i8 %2818, 1
  store i8 %2819, i8* %52, align 1
  %2820 = icmp eq i64 %2804, 0
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %55, align 1
  %2822 = lshr i64 %2804, 63
  %2823 = trunc i64 %2822 to i8
  store i8 %2823, i8* %58, align 1
  %2824 = xor i64 %2822, %2789
  %2825 = xor i64 %2822, %2803
  %2826 = add nuw nsw i64 %2824, %2825
  %2827 = icmp eq i64 %2826, 2
  %2828 = zext i1 %2827 to i8
  store i8 %2828, i8* %64, align 1
  %2829 = load i64, i64* %RBP.i, align 8
  %2830 = add i64 %2829, -196
  %2831 = add i64 %2630, 121
  store i64 %2831, i64* %3, align 8
  %2832 = inttoptr i64 %2830 to i32*
  %2833 = load i32, i32* %2832, align 4
  %2834 = add i32 %2833, 1
  %2835 = zext i32 %2834 to i64
  store i64 %2835, i64* %RDX.i1724, align 8
  %2836 = icmp eq i32 %2833, -1
  %2837 = icmp eq i32 %2834, 0
  %2838 = or i1 %2836, %2837
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %39, align 1
  %2840 = and i32 %2834, 255
  %2841 = tail call i32 @llvm.ctpop.i32(i32 %2840)
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  %2844 = xor i8 %2843, 1
  store i8 %2844, i8* %46, align 1
  %2845 = xor i32 %2834, %2833
  %2846 = lshr i32 %2845, 4
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  store i8 %2848, i8* %52, align 1
  %2849 = zext i1 %2837 to i8
  store i8 %2849, i8* %55, align 1
  %2850 = lshr i32 %2834, 31
  %2851 = trunc i32 %2850 to i8
  store i8 %2851, i8* %58, align 1
  %2852 = lshr i32 %2833, 31
  %2853 = xor i32 %2850, %2852
  %2854 = add nuw nsw i32 %2853, %2850
  %2855 = icmp eq i32 %2854, 2
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %64, align 1
  %2857 = sext i32 %2834 to i64
  store i64 %2857, i64* %RCX.i1835, align 8
  %2858 = shl nsw i64 %2857, 3
  %2859 = add i64 %2804, %2858
  %2860 = add i64 %2630, 132
  store i64 %2860, i64* %3, align 8
  %2861 = load double, double* %259, align 1
  %2862 = inttoptr i64 %2859 to double*
  %2863 = load double, double* %2862, align 8
  %2864 = fadd double %2861, %2863
  store double %2864, double* %259, align 1
  %2865 = add i64 %2829, -128
  %2866 = add i64 %2630, 136
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2865 to i64*
  %2868 = load i64, i64* %2867, align 8
  store i64 %2868, i64* %RAX.i1890, align 8
  %2869 = add i64 %2829, -188
  %2870 = add i64 %2630, 143
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i32*
  %2872 = load i32, i32* %2871, align 4
  %2873 = sext i32 %2872 to i64
  %2874 = mul nsw i64 %2873, 33800
  store i64 %2874, i64* %RCX.i1835, align 8
  %2875 = lshr i64 %2874, 63
  %2876 = add i64 %2874, %2868
  store i64 %2876, i64* %RAX.i1890, align 8
  %2877 = icmp ult i64 %2876, %2868
  %2878 = icmp ult i64 %2876, %2874
  %2879 = or i1 %2877, %2878
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %39, align 1
  %2881 = trunc i64 %2876 to i32
  %2882 = and i32 %2881, 255
  %2883 = tail call i32 @llvm.ctpop.i32(i32 %2882)
  %2884 = trunc i32 %2883 to i8
  %2885 = and i8 %2884, 1
  %2886 = xor i8 %2885, 1
  store i8 %2886, i8* %46, align 1
  %2887 = xor i64 %2874, %2868
  %2888 = xor i64 %2887, %2876
  %2889 = lshr i64 %2888, 4
  %2890 = trunc i64 %2889 to i8
  %2891 = and i8 %2890, 1
  store i8 %2891, i8* %52, align 1
  %2892 = icmp eq i64 %2876, 0
  %2893 = zext i1 %2892 to i8
  store i8 %2893, i8* %55, align 1
  %2894 = lshr i64 %2876, 63
  %2895 = trunc i64 %2894 to i8
  store i8 %2895, i8* %58, align 1
  %2896 = lshr i64 %2868, 63
  %2897 = xor i64 %2894, %2896
  %2898 = xor i64 %2894, %2875
  %2899 = add nuw nsw i64 %2897, %2898
  %2900 = icmp eq i64 %2899, 2
  %2901 = zext i1 %2900 to i8
  store i8 %2901, i8* %64, align 1
  %2902 = load i64, i64* %RBP.i, align 8
  %2903 = add i64 %2902, -52
  %2904 = add i64 %2630, 157
  store i64 %2904, i64* %3, align 8
  %2905 = inttoptr i64 %2903 to i32*
  %2906 = load i32, i32* %2905, align 4
  %2907 = sext i32 %2906 to i64
  %2908 = mul nsw i64 %2907, 520
  store i64 %2908, i64* %RCX.i1835, align 8
  %2909 = lshr i64 %2908, 63
  %2910 = add i64 %2908, %2876
  store i64 %2910, i64* %RAX.i1890, align 8
  %2911 = icmp ult i64 %2910, %2876
  %2912 = icmp ult i64 %2910, %2908
  %2913 = or i1 %2911, %2912
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %39, align 1
  %2915 = trunc i64 %2910 to i32
  %2916 = and i32 %2915, 255
  %2917 = tail call i32 @llvm.ctpop.i32(i32 %2916)
  %2918 = trunc i32 %2917 to i8
  %2919 = and i8 %2918, 1
  %2920 = xor i8 %2919, 1
  store i8 %2920, i8* %46, align 1
  %2921 = xor i64 %2908, %2876
  %2922 = xor i64 %2921, %2910
  %2923 = lshr i64 %2922, 4
  %2924 = trunc i64 %2923 to i8
  %2925 = and i8 %2924, 1
  store i8 %2925, i8* %52, align 1
  %2926 = icmp eq i64 %2910, 0
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %55, align 1
  %2928 = lshr i64 %2910, 63
  %2929 = trunc i64 %2928 to i8
  store i8 %2929, i8* %58, align 1
  %2930 = xor i64 %2928, %2894
  %2931 = xor i64 %2928, %2909
  %2932 = add nuw nsw i64 %2930, %2931
  %2933 = icmp eq i64 %2932, 2
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %64, align 1
  %2935 = add i64 %2902, -196
  %2936 = add i64 %2630, 174
  store i64 %2936, i64* %3, align 8
  %2937 = inttoptr i64 %2935 to i32*
  %2938 = load i32, i32* %2937, align 4
  %2939 = sext i32 %2938 to i64
  store i64 %2939, i64* %RCX.i1835, align 8
  %2940 = shl nsw i64 %2939, 3
  %2941 = add i64 %2940, %2910
  %2942 = add i64 %2630, 179
  store i64 %2942, i64* %3, align 8
  %2943 = load double, double* %259, align 1
  %2944 = inttoptr i64 %2941 to double*
  %2945 = load double, double* %2944, align 8
  %2946 = fsub double %2943, %2945
  store double %2946, double* %259, align 1
  %2947 = add i64 %2902, -96
  %2948 = add i64 %2630, 183
  store i64 %2948, i64* %3, align 8
  %2949 = inttoptr i64 %2947 to i64*
  %2950 = load i64, i64* %2949, align 8
  store i64 %2950, i64* %RAX.i1890, align 8
  %2951 = add i64 %2902, -188
  %2952 = add i64 %2630, 190
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2951 to i32*
  %2954 = load i32, i32* %2953, align 4
  %2955 = sext i32 %2954 to i64
  %2956 = mul nsw i64 %2955, 520
  store i64 %2956, i64* %RCX.i1835, align 8
  %2957 = lshr i64 %2956, 63
  %2958 = add i64 %2956, %2950
  store i64 %2958, i64* %RAX.i1890, align 8
  %2959 = icmp ult i64 %2958, %2950
  %2960 = icmp ult i64 %2958, %2956
  %2961 = or i1 %2959, %2960
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %39, align 1
  %2963 = trunc i64 %2958 to i32
  %2964 = and i32 %2963, 255
  %2965 = tail call i32 @llvm.ctpop.i32(i32 %2964)
  %2966 = trunc i32 %2965 to i8
  %2967 = and i8 %2966, 1
  %2968 = xor i8 %2967, 1
  store i8 %2968, i8* %46, align 1
  %2969 = xor i64 %2956, %2950
  %2970 = xor i64 %2969, %2958
  %2971 = lshr i64 %2970, 4
  %2972 = trunc i64 %2971 to i8
  %2973 = and i8 %2972, 1
  store i8 %2973, i8* %52, align 1
  %2974 = icmp eq i64 %2958, 0
  %2975 = zext i1 %2974 to i8
  store i8 %2975, i8* %55, align 1
  %2976 = lshr i64 %2958, 63
  %2977 = trunc i64 %2976 to i8
  store i8 %2977, i8* %58, align 1
  %2978 = lshr i64 %2950, 63
  %2979 = xor i64 %2976, %2978
  %2980 = xor i64 %2976, %2957
  %2981 = add nuw nsw i64 %2979, %2980
  %2982 = icmp eq i64 %2981, 2
  %2983 = zext i1 %2982 to i8
  store i8 %2983, i8* %64, align 1
  %2984 = load i64, i64* %RBP.i, align 8
  %2985 = add i64 %2984, -192
  %2986 = add i64 %2630, 207
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2985 to i32*
  %2988 = load i32, i32* %2987, align 4
  %2989 = sext i32 %2988 to i64
  store i64 %2989, i64* %RCX.i1835, align 8
  %2990 = shl nsw i64 %2989, 3
  %2991 = add i64 %2990, %2958
  %2992 = add i64 %2630, 212
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to double*
  store double %2946, double* %2993, align 8
  %2994 = load i64, i64* %RBP.i, align 8
  %2995 = add i64 %2994, -176
  %2996 = load i64, i64* %3, align 8
  %2997 = add i64 %2996, 7
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2995 to i64*
  %2999 = load i64, i64* %2998, align 8
  store i64 %2999, i64* %RAX.i1890, align 8
  %3000 = add i64 %2994, -52
  %3001 = add i64 %2996, 11
  store i64 %3001, i64* %3, align 8
  %3002 = inttoptr i64 %3000 to i32*
  %3003 = load i32, i32* %3002, align 4
  %3004 = sext i32 %3003 to i64
  store i64 %3004, i64* %RCX.i1835, align 8
  %3005 = shl nsw i64 %3004, 3
  %3006 = add i64 %3005, %2999
  %3007 = add i64 %2996, 16
  store i64 %3007, i64* %3, align 8
  %3008 = inttoptr i64 %3006 to i64*
  %3009 = load i64, i64* %3008, align 8
  store i64 %3009, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %3010 = add i64 %2994, -184
  %3011 = add i64 %2996, 23
  store i64 %3011, i64* %3, align 8
  %3012 = inttoptr i64 %3010 to i64*
  %3013 = load i64, i64* %3012, align 8
  store i64 %3013, i64* %RAX.i1890, align 8
  %3014 = add i64 %2994, -192
  %3015 = add i64 %2996, 30
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %3014 to i32*
  %3017 = load i32, i32* %3016, align 4
  %3018 = sext i32 %3017 to i64
  store i64 %3018, i64* %RCX.i1835, align 8
  %3019 = shl nsw i64 %3018, 3
  %3020 = add i64 %3019, %3013
  %3021 = add i64 %2996, 35
  store i64 %3021, i64* %3, align 8
  %3022 = bitcast i64 %3009 to double
  %3023 = inttoptr i64 %3020 to double*
  %3024 = load double, double* %3023, align 8
  %3025 = fdiv double %3022, %3024
  store double %3025, double* %259, align 1
  store i64 0, i64* %260, align 1
  %3026 = add i64 %2994, -112
  %3027 = add i64 %2996, 39
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i64*
  %3029 = load i64, i64* %3028, align 8
  store i64 %3029, i64* %RAX.i1890, align 8
  %3030 = add i64 %2994, -188
  %3031 = add i64 %2996, 46
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3030 to i32*
  %3033 = load i32, i32* %3032, align 4
  %3034 = sext i32 %3033 to i64
  %3035 = mul nsw i64 %3034, 33800
  store i64 %3035, i64* %RCX.i1835, align 8
  %3036 = lshr i64 %3035, 63
  %3037 = add i64 %3035, %3029
  store i64 %3037, i64* %RAX.i1890, align 8
  %3038 = icmp ult i64 %3037, %3029
  %3039 = icmp ult i64 %3037, %3035
  %3040 = or i1 %3038, %3039
  %3041 = zext i1 %3040 to i8
  store i8 %3041, i8* %39, align 1
  %3042 = trunc i64 %3037 to i32
  %3043 = and i32 %3042, 255
  %3044 = tail call i32 @llvm.ctpop.i32(i32 %3043)
  %3045 = trunc i32 %3044 to i8
  %3046 = and i8 %3045, 1
  %3047 = xor i8 %3046, 1
  store i8 %3047, i8* %46, align 1
  %3048 = xor i64 %3035, %3029
  %3049 = xor i64 %3048, %3037
  %3050 = lshr i64 %3049, 4
  %3051 = trunc i64 %3050 to i8
  %3052 = and i8 %3051, 1
  store i8 %3052, i8* %52, align 1
  %3053 = icmp eq i64 %3037, 0
  %3054 = zext i1 %3053 to i8
  store i8 %3054, i8* %55, align 1
  %3055 = lshr i64 %3037, 63
  %3056 = trunc i64 %3055 to i8
  store i8 %3056, i8* %58, align 1
  %3057 = lshr i64 %3029, 63
  %3058 = xor i64 %3055, %3057
  %3059 = xor i64 %3055, %3036
  %3060 = add nuw nsw i64 %3058, %3059
  %3061 = icmp eq i64 %3060, 2
  %3062 = zext i1 %3061 to i8
  store i8 %3062, i8* %64, align 1
  %3063 = load i64, i64* %RBP.i, align 8
  %3064 = add i64 %3063, -192
  %3065 = add i64 %2996, 63
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to i32*
  %3067 = load i32, i32* %3066, align 4
  %3068 = sext i32 %3067 to i64
  %3069 = mul nsw i64 %3068, 520
  store i64 %3069, i64* %RCX.i1835, align 8
  %3070 = lshr i64 %3069, 63
  %3071 = add i64 %3069, %3037
  store i64 %3071, i64* %RAX.i1890, align 8
  %3072 = icmp ult i64 %3071, %3037
  %3073 = icmp ult i64 %3071, %3069
  %3074 = or i1 %3072, %3073
  %3075 = zext i1 %3074 to i8
  store i8 %3075, i8* %39, align 1
  %3076 = trunc i64 %3071 to i32
  %3077 = and i32 %3076, 255
  %3078 = tail call i32 @llvm.ctpop.i32(i32 %3077)
  %3079 = trunc i32 %3078 to i8
  %3080 = and i8 %3079, 1
  %3081 = xor i8 %3080, 1
  store i8 %3081, i8* %46, align 1
  %3082 = xor i64 %3069, %3037
  %3083 = xor i64 %3082, %3071
  %3084 = lshr i64 %3083, 4
  %3085 = trunc i64 %3084 to i8
  %3086 = and i8 %3085, 1
  store i8 %3086, i8* %52, align 1
  %3087 = icmp eq i64 %3071, 0
  %3088 = zext i1 %3087 to i8
  store i8 %3088, i8* %55, align 1
  %3089 = lshr i64 %3071, 63
  %3090 = trunc i64 %3089 to i8
  store i8 %3090, i8* %58, align 1
  %3091 = xor i64 %3089, %3055
  %3092 = xor i64 %3089, %3070
  %3093 = add nuw nsw i64 %3091, %3092
  %3094 = icmp eq i64 %3093, 2
  %3095 = zext i1 %3094 to i8
  store i8 %3095, i8* %64, align 1
  %3096 = add i64 %3063, -196
  %3097 = add i64 %2996, 80
  store i64 %3097, i64* %3, align 8
  %3098 = inttoptr i64 %3096 to i32*
  %3099 = load i32, i32* %3098, align 4
  %3100 = sext i32 %3099 to i64
  store i64 %3100, i64* %RCX.i1835, align 8
  %3101 = shl nsw i64 %3100, 3
  %3102 = add i64 %3101, %3071
  %3103 = add i64 %2996, 85
  store i64 %3103, i64* %3, align 8
  %3104 = load double, double* %259, align 1
  %3105 = inttoptr i64 %3102 to double*
  %3106 = load double, double* %3105, align 8
  %3107 = fmul double %3104, %3106
  store double %3107, double* %259, align 1
  %3108 = add i64 %3063, -72
  %3109 = add i64 %2996, 90
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i64*
  %3111 = load i64, i64* %3110, align 8
  store i64 %3111, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %3112 = add i64 %3063, -184
  %3113 = add i64 %2996, 97
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3112 to i64*
  %3115 = load i64, i64* %3114, align 8
  store i64 %3115, i64* %RAX.i1890, align 8
  %3116 = add i64 %2996, 104
  store i64 %3116, i64* %3, align 8
  %3117 = load i32, i32* %3066, align 4
  %3118 = sext i32 %3117 to i64
  store i64 %3118, i64* %RCX.i1835, align 8
  %3119 = shl nsw i64 %3118, 3
  %3120 = add i64 %3119, %3115
  %3121 = add i64 %2996, 109
  store i64 %3121, i64* %3, align 8
  %3122 = bitcast i64 %3111 to double
  %3123 = inttoptr i64 %3120 to double*
  %3124 = load double, double* %3123, align 8
  %3125 = fdiv double %3122, %3124
  store double %3125, double* %157, align 1
  store i64 0, i64* %262, align 1
  %3126 = load i64, i64* %RBP.i, align 8
  %3127 = add i64 %3126, -96
  %3128 = add i64 %2996, 113
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i64*
  %3130 = load i64, i64* %3129, align 8
  store i64 %3130, i64* %RAX.i1890, align 8
  %3131 = add i64 %3126, -188
  %3132 = add i64 %2996, 120
  store i64 %3132, i64* %3, align 8
  %3133 = inttoptr i64 %3131 to i32*
  %3134 = load i32, i32* %3133, align 4
  %3135 = sext i32 %3134 to i64
  %3136 = mul nsw i64 %3135, 520
  store i64 %3136, i64* %RCX.i1835, align 8
  %3137 = lshr i64 %3136, 63
  %3138 = add i64 %3136, %3130
  store i64 %3138, i64* %RAX.i1890, align 8
  %3139 = icmp ult i64 %3138, %3130
  %3140 = icmp ult i64 %3138, %3136
  %3141 = or i1 %3139, %3140
  %3142 = zext i1 %3141 to i8
  store i8 %3142, i8* %39, align 1
  %3143 = trunc i64 %3138 to i32
  %3144 = and i32 %3143, 255
  %3145 = tail call i32 @llvm.ctpop.i32(i32 %3144)
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = xor i8 %3147, 1
  store i8 %3148, i8* %46, align 1
  %3149 = xor i64 %3136, %3130
  %3150 = xor i64 %3149, %3138
  %3151 = lshr i64 %3150, 4
  %3152 = trunc i64 %3151 to i8
  %3153 = and i8 %3152, 1
  store i8 %3153, i8* %52, align 1
  %3154 = icmp eq i64 %3138, 0
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %55, align 1
  %3156 = lshr i64 %3138, 63
  %3157 = trunc i64 %3156 to i8
  store i8 %3157, i8* %58, align 1
  %3158 = lshr i64 %3130, 63
  %3159 = xor i64 %3156, %3158
  %3160 = xor i64 %3156, %3137
  %3161 = add nuw nsw i64 %3159, %3160
  %3162 = icmp eq i64 %3161, 2
  %3163 = zext i1 %3162 to i8
  store i8 %3163, i8* %64, align 1
  %3164 = add i64 %3126, -192
  %3165 = add i64 %2996, 137
  store i64 %3165, i64* %3, align 8
  %3166 = inttoptr i64 %3164 to i32*
  %3167 = load i32, i32* %3166, align 4
  %3168 = sext i32 %3167 to i64
  store i64 %3168, i64* %RCX.i1835, align 8
  %3169 = shl nsw i64 %3168, 3
  %3170 = add i64 %3169, %3138
  %3171 = add i64 %2996, 142
  store i64 %3171, i64* %3, align 8
  %3172 = inttoptr i64 %3170 to double*
  %3173 = load double, double* %3172, align 8
  %3174 = fmul double %3125, %3173
  store double %3174, double* %157, align 1
  store i64 0, i64* %262, align 1
  %3175 = load double, double* %259, align 1
  %3176 = fsub double %3175, %3174
  store double %3176, double* %259, align 1
  %3177 = add i64 %3126, -104
  %3178 = add i64 %2996, 150
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3177 to i64*
  %3180 = load i64, i64* %3179, align 8
  store i64 %3180, i64* %RAX.i1890, align 8
  %3181 = load i64, i64* %RBP.i, align 8
  %3182 = add i64 %3181, -188
  %3183 = add i64 %2996, 157
  store i64 %3183, i64* %3, align 8
  %3184 = inttoptr i64 %3182 to i32*
  %3185 = load i32, i32* %3184, align 4
  %3186 = sext i32 %3185 to i64
  %3187 = mul nsw i64 %3186, 520
  store i64 %3187, i64* %RCX.i1835, align 8
  %3188 = lshr i64 %3187, 63
  %3189 = add i64 %3187, %3180
  store i64 %3189, i64* %RAX.i1890, align 8
  %3190 = icmp ult i64 %3189, %3180
  %3191 = icmp ult i64 %3189, %3187
  %3192 = or i1 %3190, %3191
  %3193 = zext i1 %3192 to i8
  store i8 %3193, i8* %39, align 1
  %3194 = trunc i64 %3189 to i32
  %3195 = and i32 %3194, 255
  %3196 = tail call i32 @llvm.ctpop.i32(i32 %3195)
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = xor i8 %3198, 1
  store i8 %3199, i8* %46, align 1
  %3200 = xor i64 %3187, %3180
  %3201 = xor i64 %3200, %3189
  %3202 = lshr i64 %3201, 4
  %3203 = trunc i64 %3202 to i8
  %3204 = and i8 %3203, 1
  store i8 %3204, i8* %52, align 1
  %3205 = icmp eq i64 %3189, 0
  %3206 = zext i1 %3205 to i8
  store i8 %3206, i8* %55, align 1
  %3207 = lshr i64 %3189, 63
  %3208 = trunc i64 %3207 to i8
  store i8 %3208, i8* %58, align 1
  %3209 = lshr i64 %3180, 63
  %3210 = xor i64 %3207, %3209
  %3211 = xor i64 %3207, %3188
  %3212 = add nuw nsw i64 %3210, %3211
  %3213 = icmp eq i64 %3212, 2
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %64, align 1
  %3215 = add i64 %3181, -192
  %3216 = add i64 %2996, 174
  store i64 %3216, i64* %3, align 8
  %3217 = inttoptr i64 %3215 to i32*
  %3218 = load i32, i32* %3217, align 4
  %3219 = sext i32 %3218 to i64
  store i64 %3219, i64* %RCX.i1835, align 8
  %3220 = shl nsw i64 %3219, 3
  %3221 = add i64 %3220, %3189
  %3222 = add i64 %2996, 179
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to double*
  store double %3176, double* %3223, align 8
  %3224 = load i64, i64* %RBP.i, align 8
  %3225 = add i64 %3224, -160
  %3226 = load i64, i64* %3, align 8
  %3227 = add i64 %3226, 7
  store i64 %3227, i64* %3, align 8
  %3228 = inttoptr i64 %3225 to i64*
  %3229 = load i64, i64* %3228, align 8
  store i64 %3229, i64* %RAX.i1890, align 8
  %3230 = add i64 %3224, -196
  %3231 = add i64 %3226, 14
  store i64 %3231, i64* %3, align 8
  %3232 = inttoptr i64 %3230 to i32*
  %3233 = load i32, i32* %3232, align 4
  %3234 = sext i32 %3233 to i64
  store i64 %3234, i64* %RCX.i1835, align 8
  %3235 = shl nsw i64 %3234, 3
  %3236 = add i64 %3235, %3229
  %3237 = add i64 %3226, 19
  store i64 %3237, i64* %3, align 8
  %3238 = inttoptr i64 %3236 to i64*
  %3239 = load i64, i64* %3238, align 8
  store i64 %3239, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %3240 = add i64 %3224, -168
  %3241 = add i64 %3226, 26
  store i64 %3241, i64* %3, align 8
  %3242 = inttoptr i64 %3240 to i64*
  %3243 = load i64, i64* %3242, align 8
  store i64 %3243, i64* %RAX.i1890, align 8
  %3244 = add i64 %3226, 33
  store i64 %3244, i64* %3, align 8
  %3245 = load i32, i32* %3232, align 4
  %3246 = sext i32 %3245 to i64
  store i64 %3246, i64* %RCX.i1835, align 8
  %3247 = shl nsw i64 %3246, 3
  %3248 = add i64 %3247, %3243
  %3249 = add i64 %3226, 38
  store i64 %3249, i64* %3, align 8
  %3250 = bitcast i64 %3239 to double
  %3251 = inttoptr i64 %3248 to double*
  %3252 = load double, double* %3251, align 8
  %3253 = fdiv double %3250, %3252
  store double %3253, double* %259, align 1
  store i64 0, i64* %260, align 1
  %3254 = add i64 %3224, -136
  %3255 = add i64 %3226, 45
  store i64 %3255, i64* %3, align 8
  %3256 = inttoptr i64 %3254 to i64*
  %3257 = load i64, i64* %3256, align 8
  store i64 %3257, i64* %RAX.i1890, align 8
  %3258 = add i64 %3224, -188
  %3259 = add i64 %3226, 52
  store i64 %3259, i64* %3, align 8
  %3260 = inttoptr i64 %3258 to i32*
  %3261 = load i32, i32* %3260, align 4
  %3262 = sext i32 %3261 to i64
  %3263 = mul nsw i64 %3262, 33800
  store i64 %3263, i64* %RCX.i1835, align 8
  %3264 = lshr i64 %3263, 63
  %3265 = add i64 %3263, %3257
  store i64 %3265, i64* %RAX.i1890, align 8
  %3266 = icmp ult i64 %3265, %3257
  %3267 = icmp ult i64 %3265, %3263
  %3268 = or i1 %3266, %3267
  %3269 = zext i1 %3268 to i8
  store i8 %3269, i8* %39, align 1
  %3270 = trunc i64 %3265 to i32
  %3271 = and i32 %3270, 255
  %3272 = tail call i32 @llvm.ctpop.i32(i32 %3271)
  %3273 = trunc i32 %3272 to i8
  %3274 = and i8 %3273, 1
  %3275 = xor i8 %3274, 1
  store i8 %3275, i8* %46, align 1
  %3276 = xor i64 %3263, %3257
  %3277 = xor i64 %3276, %3265
  %3278 = lshr i64 %3277, 4
  %3279 = trunc i64 %3278 to i8
  %3280 = and i8 %3279, 1
  store i8 %3280, i8* %52, align 1
  %3281 = icmp eq i64 %3265, 0
  %3282 = zext i1 %3281 to i8
  store i8 %3282, i8* %55, align 1
  %3283 = lshr i64 %3265, 63
  %3284 = trunc i64 %3283 to i8
  store i8 %3284, i8* %58, align 1
  %3285 = lshr i64 %3257, 63
  %3286 = xor i64 %3283, %3285
  %3287 = xor i64 %3283, %3264
  %3288 = add nuw nsw i64 %3286, %3287
  %3289 = icmp eq i64 %3288, 2
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %64, align 1
  %3291 = load i64, i64* %RBP.i, align 8
  %3292 = add i64 %3291, -52
  %3293 = add i64 %3226, 66
  store i64 %3293, i64* %3, align 8
  %3294 = inttoptr i64 %3292 to i32*
  %3295 = load i32, i32* %3294, align 4
  %3296 = sext i32 %3295 to i64
  %3297 = mul nsw i64 %3296, 520
  store i64 %3297, i64* %RCX.i1835, align 8
  %3298 = lshr i64 %3297, 63
  %3299 = add i64 %3297, %3265
  store i64 %3299, i64* %RAX.i1890, align 8
  %3300 = icmp ult i64 %3299, %3265
  %3301 = icmp ult i64 %3299, %3297
  %3302 = or i1 %3300, %3301
  %3303 = zext i1 %3302 to i8
  store i8 %3303, i8* %39, align 1
  %3304 = trunc i64 %3299 to i32
  %3305 = and i32 %3304, 255
  %3306 = tail call i32 @llvm.ctpop.i32(i32 %3305)
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  %3309 = xor i8 %3308, 1
  store i8 %3309, i8* %46, align 1
  %3310 = xor i64 %3297, %3265
  %3311 = xor i64 %3310, %3299
  %3312 = lshr i64 %3311, 4
  %3313 = trunc i64 %3312 to i8
  %3314 = and i8 %3313, 1
  store i8 %3314, i8* %52, align 1
  %3315 = icmp eq i64 %3299, 0
  %3316 = zext i1 %3315 to i8
  store i8 %3316, i8* %55, align 1
  %3317 = lshr i64 %3299, 63
  %3318 = trunc i64 %3317 to i8
  store i8 %3318, i8* %58, align 1
  %3319 = xor i64 %3317, %3283
  %3320 = xor i64 %3317, %3298
  %3321 = add nuw nsw i64 %3319, %3320
  %3322 = icmp eq i64 %3321, 2
  %3323 = zext i1 %3322 to i8
  store i8 %3323, i8* %64, align 1
  %3324 = add i64 %3291, -196
  %3325 = add i64 %3226, 83
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3324 to i32*
  %3327 = load i32, i32* %3326, align 4
  %3328 = sext i32 %3327 to i64
  store i64 %3328, i64* %RCX.i1835, align 8
  %3329 = shl nsw i64 %3328, 3
  %3330 = add i64 %3329, %3299
  %3331 = add i64 %3226, 88
  store i64 %3331, i64* %3, align 8
  %3332 = load double, double* %259, align 1
  %3333 = inttoptr i64 %3330 to double*
  %3334 = load double, double* %3333, align 8
  %3335 = fmul double %3332, %3334
  store double %3335, double* %259, align 1
  %3336 = add i64 %3291, -64
  %3337 = add i64 %3226, 93
  store i64 %3337, i64* %3, align 8
  %3338 = inttoptr i64 %3336 to i64*
  %3339 = load i64, i64* %3338, align 8
  store i64 %3339, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %3340 = add i64 %3291, -152
  %3341 = add i64 %3226, 100
  store i64 %3341, i64* %3, align 8
  %3342 = inttoptr i64 %3340 to i64*
  %3343 = load i64, i64* %3342, align 8
  store i64 %3343, i64* %RAX.i1890, align 8
  %3344 = add i64 %3291, -188
  %3345 = add i64 %3226, 107
  store i64 %3345, i64* %3, align 8
  %3346 = inttoptr i64 %3344 to i32*
  %3347 = load i32, i32* %3346, align 4
  %3348 = sext i32 %3347 to i64
  store i64 %3348, i64* %RCX.i1835, align 8
  %3349 = shl nsw i64 %3348, 3
  %3350 = add i64 %3349, %3343
  %3351 = add i64 %3226, 112
  store i64 %3351, i64* %3, align 8
  %3352 = bitcast i64 %3339 to double
  %3353 = inttoptr i64 %3350 to double*
  %3354 = load double, double* %3353, align 8
  %3355 = fmul double %3352, %3354
  store double %3355, double* %157, align 1
  store i64 0, i64* %262, align 1
  %3356 = load i64, i64* %RBP.i, align 8
  %3357 = add i64 %3356, -168
  %3358 = add i64 %3226, 119
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i64*
  %3360 = load i64, i64* %3359, align 8
  store i64 %3360, i64* %RAX.i1890, align 8
  %3361 = add i64 %3356, -196
  %3362 = add i64 %3226, 126
  store i64 %3362, i64* %3, align 8
  %3363 = inttoptr i64 %3361 to i32*
  %3364 = load i32, i32* %3363, align 4
  %3365 = sext i32 %3364 to i64
  store i64 %3365, i64* %RCX.i1835, align 8
  %3366 = shl nsw i64 %3365, 3
  %3367 = add i64 %3366, %3360
  %3368 = add i64 %3226, 131
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to double*
  %3370 = load double, double* %3369, align 8
  %3371 = fdiv double %3355, %3370
  store double %3371, double* %157, align 1
  store i64 0, i64* %262, align 1
  %3372 = add i64 %3356, -104
  %3373 = add i64 %3226, 135
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3372 to i64*
  %3375 = load i64, i64* %3374, align 8
  store i64 %3375, i64* %RAX.i1890, align 8
  %3376 = add i64 %3356, -188
  %3377 = add i64 %3226, 142
  store i64 %3377, i64* %3, align 8
  %3378 = inttoptr i64 %3376 to i32*
  %3379 = load i32, i32* %3378, align 4
  %3380 = sext i32 %3379 to i64
  %3381 = mul nsw i64 %3380, 520
  store i64 %3381, i64* %RCX.i1835, align 8
  %3382 = lshr i64 %3381, 63
  %3383 = add i64 %3381, %3375
  store i64 %3383, i64* %RAX.i1890, align 8
  %3384 = icmp ult i64 %3383, %3375
  %3385 = icmp ult i64 %3383, %3381
  %3386 = or i1 %3384, %3385
  %3387 = zext i1 %3386 to i8
  store i8 %3387, i8* %39, align 1
  %3388 = trunc i64 %3383 to i32
  %3389 = and i32 %3388, 255
  %3390 = tail call i32 @llvm.ctpop.i32(i32 %3389)
  %3391 = trunc i32 %3390 to i8
  %3392 = and i8 %3391, 1
  %3393 = xor i8 %3392, 1
  store i8 %3393, i8* %46, align 1
  %3394 = xor i64 %3381, %3375
  %3395 = xor i64 %3394, %3383
  %3396 = lshr i64 %3395, 4
  %3397 = trunc i64 %3396 to i8
  %3398 = and i8 %3397, 1
  store i8 %3398, i8* %52, align 1
  %3399 = icmp eq i64 %3383, 0
  %3400 = zext i1 %3399 to i8
  store i8 %3400, i8* %55, align 1
  %3401 = lshr i64 %3383, 63
  %3402 = trunc i64 %3401 to i8
  store i8 %3402, i8* %58, align 1
  %3403 = lshr i64 %3375, 63
  %3404 = xor i64 %3401, %3403
  %3405 = xor i64 %3401, %3382
  %3406 = add nuw nsw i64 %3404, %3405
  %3407 = icmp eq i64 %3406, 2
  %3408 = zext i1 %3407 to i8
  store i8 %3408, i8* %64, align 1
  %3409 = add i64 %3356, -192
  %3410 = add i64 %3226, 159
  store i64 %3410, i64* %3, align 8
  %3411 = inttoptr i64 %3409 to i32*
  %3412 = load i32, i32* %3411, align 4
  %3413 = sext i32 %3412 to i64
  store i64 %3413, i64* %RCX.i1835, align 8
  %3414 = shl nsw i64 %3413, 3
  %3415 = add i64 %3414, %3383
  %3416 = add i64 %3226, 164
  store i64 %3416, i64* %3, align 8
  %3417 = inttoptr i64 %3415 to double*
  %3418 = load double, double* %3417, align 8
  %3419 = fmul double %3371, %3418
  store double %3419, double* %157, align 1
  store i64 0, i64* %262, align 1
  %3420 = load double, double* %259, align 1
  %3421 = fadd double %3420, %3419
  store double %3421, double* %259, align 1
  %3422 = load i64, i64* %RBP.i, align 8
  %3423 = add i64 %3422, -64
  %3424 = add i64 %3226, 173
  store i64 %3424, i64* %3, align 8
  %3425 = inttoptr i64 %3423 to i64*
  %3426 = load i64, i64* %3425, align 8
  store i64 %3426, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %3427 = add i64 %3422, -144
  %3428 = add i64 %3226, 180
  store i64 %3428, i64* %3, align 8
  %3429 = inttoptr i64 %3427 to i64*
  %3430 = load i64, i64* %3429, align 8
  store i64 %3430, i64* %RAX.i1890, align 8
  %3431 = add i64 %3422, -188
  %3432 = add i64 %3226, 187
  store i64 %3432, i64* %3, align 8
  %3433 = inttoptr i64 %3431 to i32*
  %3434 = load i32, i32* %3433, align 4
  %3435 = sext i32 %3434 to i64
  store i64 %3435, i64* %RCX.i1835, align 8
  %3436 = shl nsw i64 %3435, 3
  %3437 = add i64 %3436, %3430
  %3438 = add i64 %3226, 192
  store i64 %3438, i64* %3, align 8
  %3439 = bitcast i64 %3426 to double
  %3440 = inttoptr i64 %3437 to double*
  %3441 = load double, double* %3440, align 8
  %3442 = fmul double %3439, %3441
  store double %3442, double* %157, align 1
  store i64 0, i64* %262, align 1
  %3443 = add i64 %3422, -168
  %3444 = add i64 %3226, 199
  store i64 %3444, i64* %3, align 8
  %3445 = inttoptr i64 %3443 to i64*
  %3446 = load i64, i64* %3445, align 8
  store i64 %3446, i64* %RAX.i1890, align 8
  %3447 = add i64 %3422, -196
  %3448 = add i64 %3226, 206
  store i64 %3448, i64* %3, align 8
  %3449 = inttoptr i64 %3447 to i32*
  %3450 = load i32, i32* %3449, align 4
  %3451 = sext i32 %3450 to i64
  store i64 %3451, i64* %RCX.i1835, align 8
  %3452 = shl nsw i64 %3451, 3
  %3453 = add i64 %3452, %3446
  %3454 = add i64 %3226, 211
  store i64 %3454, i64* %3, align 8
  %3455 = inttoptr i64 %3453 to double*
  %3456 = load double, double* %3455, align 8
  %3457 = fdiv double %3442, %3456
  store double %3457, double* %157, align 1
  store i64 0, i64* %262, align 1
  %3458 = add i64 %3422, -112
  %3459 = add i64 %3226, 215
  store i64 %3459, i64* %3, align 8
  %3460 = inttoptr i64 %3458 to i64*
  %3461 = load i64, i64* %3460, align 8
  store i64 %3461, i64* %RAX.i1890, align 8
  %3462 = add i64 %3226, 222
  store i64 %3462, i64* %3, align 8
  %3463 = load i32, i32* %3433, align 4
  %3464 = sext i32 %3463 to i64
  %3465 = mul nsw i64 %3464, 33800
  store i64 %3465, i64* %RCX.i1835, align 8
  %3466 = lshr i64 %3465, 63
  %3467 = add i64 %3465, %3461
  store i64 %3467, i64* %RAX.i1890, align 8
  %3468 = icmp ult i64 %3467, %3461
  %3469 = icmp ult i64 %3467, %3465
  %3470 = or i1 %3468, %3469
  %3471 = zext i1 %3470 to i8
  store i8 %3471, i8* %39, align 1
  %3472 = trunc i64 %3467 to i32
  %3473 = and i32 %3472, 255
  %3474 = tail call i32 @llvm.ctpop.i32(i32 %3473)
  %3475 = trunc i32 %3474 to i8
  %3476 = and i8 %3475, 1
  %3477 = xor i8 %3476, 1
  store i8 %3477, i8* %46, align 1
  %3478 = xor i64 %3465, %3461
  %3479 = xor i64 %3478, %3467
  %3480 = lshr i64 %3479, 4
  %3481 = trunc i64 %3480 to i8
  %3482 = and i8 %3481, 1
  store i8 %3482, i8* %52, align 1
  %3483 = icmp eq i64 %3467, 0
  %3484 = zext i1 %3483 to i8
  store i8 %3484, i8* %55, align 1
  %3485 = lshr i64 %3467, 63
  %3486 = trunc i64 %3485 to i8
  store i8 %3486, i8* %58, align 1
  %3487 = lshr i64 %3461, 63
  %3488 = xor i64 %3485, %3487
  %3489 = xor i64 %3485, %3466
  %3490 = add nuw nsw i64 %3488, %3489
  %3491 = icmp eq i64 %3490, 2
  %3492 = zext i1 %3491 to i8
  store i8 %3492, i8* %64, align 1
  %3493 = load i64, i64* %RBP.i, align 8
  %3494 = add i64 %3493, -52
  %3495 = add i64 %3226, 236
  store i64 %3495, i64* %3, align 8
  %3496 = inttoptr i64 %3494 to i32*
  %3497 = load i32, i32* %3496, align 4
  %3498 = sext i32 %3497 to i64
  %3499 = mul nsw i64 %3498, 520
  store i64 %3499, i64* %RCX.i1835, align 8
  %3500 = lshr i64 %3499, 63
  %3501 = add i64 %3499, %3467
  store i64 %3501, i64* %RAX.i1890, align 8
  %3502 = icmp ult i64 %3501, %3467
  %3503 = icmp ult i64 %3501, %3499
  %3504 = or i1 %3502, %3503
  %3505 = zext i1 %3504 to i8
  store i8 %3505, i8* %39, align 1
  %3506 = trunc i64 %3501 to i32
  %3507 = and i32 %3506, 255
  %3508 = tail call i32 @llvm.ctpop.i32(i32 %3507)
  %3509 = trunc i32 %3508 to i8
  %3510 = and i8 %3509, 1
  %3511 = xor i8 %3510, 1
  store i8 %3511, i8* %46, align 1
  %3512 = xor i64 %3499, %3467
  %3513 = xor i64 %3512, %3501
  %3514 = lshr i64 %3513, 4
  %3515 = trunc i64 %3514 to i8
  %3516 = and i8 %3515, 1
  store i8 %3516, i8* %52, align 1
  %3517 = icmp eq i64 %3501, 0
  %3518 = zext i1 %3517 to i8
  store i8 %3518, i8* %55, align 1
  %3519 = lshr i64 %3501, 63
  %3520 = trunc i64 %3519 to i8
  store i8 %3520, i8* %58, align 1
  %3521 = xor i64 %3519, %3485
  %3522 = xor i64 %3519, %3500
  %3523 = add nuw nsw i64 %3521, %3522
  %3524 = icmp eq i64 %3523, 2
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %64, align 1
  %3526 = add i64 %3493, -196
  %3527 = add i64 %3226, 253
  store i64 %3527, i64* %3, align 8
  %3528 = inttoptr i64 %3526 to i32*
  %3529 = load i32, i32* %3528, align 4
  %3530 = sext i32 %3529 to i64
  store i64 %3530, i64* %RCX.i1835, align 8
  %3531 = shl nsw i64 %3530, 3
  %3532 = add i64 %3531, %3501
  %3533 = add i64 %3226, 258
  store i64 %3533, i64* %3, align 8
  %3534 = load double, double* %157, align 1
  %3535 = inttoptr i64 %3532 to double*
  %3536 = load double, double* %3535, align 8
  %3537 = fmul double %3534, %3536
  store double %3537, double* %157, align 1
  %3538 = load double, double* %259, align 1
  %3539 = fsub double %3538, %3537
  store double %3539, double* %259, align 1
  %3540 = add i64 %3493, -136
  %3541 = add i64 %3226, 269
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3540 to i64*
  %3543 = load i64, i64* %3542, align 8
  store i64 %3543, i64* %RAX.i1890, align 8
  %3544 = add i64 %3493, -188
  %3545 = add i64 %3226, 276
  store i64 %3545, i64* %3, align 8
  %3546 = inttoptr i64 %3544 to i32*
  %3547 = load i32, i32* %3546, align 4
  %3548 = sext i32 %3547 to i64
  %3549 = mul nsw i64 %3548, 33800
  store i64 %3549, i64* %RCX.i1835, align 8
  %3550 = lshr i64 %3549, 63
  %3551 = add i64 %3549, %3543
  store i64 %3551, i64* %RAX.i1890, align 8
  %3552 = icmp ult i64 %3551, %3543
  %3553 = icmp ult i64 %3551, %3549
  %3554 = or i1 %3552, %3553
  %3555 = zext i1 %3554 to i8
  store i8 %3555, i8* %39, align 1
  %3556 = trunc i64 %3551 to i32
  %3557 = and i32 %3556, 255
  %3558 = tail call i32 @llvm.ctpop.i32(i32 %3557)
  %3559 = trunc i32 %3558 to i8
  %3560 = and i8 %3559, 1
  %3561 = xor i8 %3560, 1
  store i8 %3561, i8* %46, align 1
  %3562 = xor i64 %3549, %3543
  %3563 = xor i64 %3562, %3551
  %3564 = lshr i64 %3563, 4
  %3565 = trunc i64 %3564 to i8
  %3566 = and i8 %3565, 1
  store i8 %3566, i8* %52, align 1
  %3567 = icmp eq i64 %3551, 0
  %3568 = zext i1 %3567 to i8
  store i8 %3568, i8* %55, align 1
  %3569 = lshr i64 %3551, 63
  %3570 = trunc i64 %3569 to i8
  store i8 %3570, i8* %58, align 1
  %3571 = lshr i64 %3543, 63
  %3572 = xor i64 %3569, %3571
  %3573 = xor i64 %3569, %3550
  %3574 = add nuw nsw i64 %3572, %3573
  %3575 = icmp eq i64 %3574, 2
  %3576 = zext i1 %3575 to i8
  store i8 %3576, i8* %64, align 1
  %3577 = load i64, i64* %RBP.i, align 8
  %3578 = add i64 %3577, -52
  %3579 = add i64 %3226, 290
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i32*
  %3581 = load i32, i32* %3580, align 4
  %3582 = sext i32 %3581 to i64
  %3583 = mul nsw i64 %3582, 520
  store i64 %3583, i64* %RCX.i1835, align 8
  %3584 = lshr i64 %3583, 63
  %3585 = add i64 %3583, %3551
  store i64 %3585, i64* %RAX.i1890, align 8
  %3586 = icmp ult i64 %3585, %3551
  %3587 = icmp ult i64 %3585, %3583
  %3588 = or i1 %3586, %3587
  %3589 = zext i1 %3588 to i8
  store i8 %3589, i8* %39, align 1
  %3590 = trunc i64 %3585 to i32
  %3591 = and i32 %3590, 255
  %3592 = tail call i32 @llvm.ctpop.i32(i32 %3591)
  %3593 = trunc i32 %3592 to i8
  %3594 = and i8 %3593, 1
  %3595 = xor i8 %3594, 1
  store i8 %3595, i8* %46, align 1
  %3596 = xor i64 %3583, %3551
  %3597 = xor i64 %3596, %3585
  %3598 = lshr i64 %3597, 4
  %3599 = trunc i64 %3598 to i8
  %3600 = and i8 %3599, 1
  store i8 %3600, i8* %52, align 1
  %3601 = icmp eq i64 %3585, 0
  %3602 = zext i1 %3601 to i8
  store i8 %3602, i8* %55, align 1
  %3603 = lshr i64 %3585, 63
  %3604 = trunc i64 %3603 to i8
  store i8 %3604, i8* %58, align 1
  %3605 = xor i64 %3603, %3569
  %3606 = xor i64 %3603, %3584
  %3607 = add nuw nsw i64 %3605, %3606
  %3608 = icmp eq i64 %3607, 2
  %3609 = zext i1 %3608 to i8
  store i8 %3609, i8* %64, align 1
  %3610 = add i64 %3577, -196
  %3611 = add i64 %3226, 307
  store i64 %3611, i64* %3, align 8
  %3612 = inttoptr i64 %3610 to i32*
  %3613 = load i32, i32* %3612, align 4
  %3614 = sext i32 %3613 to i64
  store i64 %3614, i64* %RCX.i1835, align 8
  %3615 = shl nsw i64 %3614, 3
  %3616 = add i64 %3615, %3585
  %3617 = add i64 %3226, 312
  store i64 %3617, i64* %3, align 8
  %3618 = load i64, i64* %149, align 1
  %3619 = inttoptr i64 %3616 to i64*
  store i64 %3618, i64* %3619, align 8
  %3620 = load i64, i64* %RBP.i, align 8
  %3621 = add i64 %3620, -104
  %3622 = load i64, i64* %3, align 8
  %3623 = add i64 %3622, 4
  store i64 %3623, i64* %3, align 8
  %3624 = inttoptr i64 %3621 to i64*
  %3625 = load i64, i64* %3624, align 8
  store i64 %3625, i64* %RAX.i1890, align 8
  %3626 = add i64 %3620, -188
  %3627 = add i64 %3622, 11
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3626 to i32*
  %3629 = load i32, i32* %3628, align 4
  %3630 = sext i32 %3629 to i64
  %3631 = mul nsw i64 %3630, 520
  store i64 %3631, i64* %RCX.i1835, align 8
  %3632 = lshr i64 %3631, 63
  %3633 = add i64 %3631, %3625
  store i64 %3633, i64* %RAX.i1890, align 8
  %3634 = icmp ult i64 %3633, %3625
  %3635 = icmp ult i64 %3633, %3631
  %3636 = or i1 %3634, %3635
  %3637 = zext i1 %3636 to i8
  store i8 %3637, i8* %39, align 1
  %3638 = trunc i64 %3633 to i32
  %3639 = and i32 %3638, 255
  %3640 = tail call i32 @llvm.ctpop.i32(i32 %3639)
  %3641 = trunc i32 %3640 to i8
  %3642 = and i8 %3641, 1
  %3643 = xor i8 %3642, 1
  store i8 %3643, i8* %46, align 1
  %3644 = xor i64 %3631, %3625
  %3645 = xor i64 %3644, %3633
  %3646 = lshr i64 %3645, 4
  %3647 = trunc i64 %3646 to i8
  %3648 = and i8 %3647, 1
  store i8 %3648, i8* %52, align 1
  %3649 = icmp eq i64 %3633, 0
  %3650 = zext i1 %3649 to i8
  store i8 %3650, i8* %55, align 1
  %3651 = lshr i64 %3633, 63
  %3652 = trunc i64 %3651 to i8
  store i8 %3652, i8* %58, align 1
  %3653 = lshr i64 %3625, 63
  %3654 = xor i64 %3651, %3653
  %3655 = xor i64 %3651, %3632
  %3656 = add nuw nsw i64 %3654, %3655
  %3657 = icmp eq i64 %3656, 2
  %3658 = zext i1 %3657 to i8
  store i8 %3658, i8* %64, align 1
  %3659 = add i64 %3620, -192
  %3660 = add i64 %3622, 28
  store i64 %3660, i64* %3, align 8
  %3661 = inttoptr i64 %3659 to i32*
  %3662 = load i32, i32* %3661, align 4
  %3663 = sext i32 %3662 to i64
  store i64 %3663, i64* %RCX.i1835, align 8
  %3664 = shl nsw i64 %3663, 3
  %3665 = add i64 %3664, %3633
  %3666 = add i64 %3622, 33
  store i64 %3666, i64* %3, align 8
  %3667 = inttoptr i64 %3665 to i64*
  %3668 = load i64, i64* %3667, align 8
  store i64 %3668, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %3669 = add i64 %3620, -112
  %3670 = add i64 %3622, 37
  store i64 %3670, i64* %3, align 8
  %3671 = inttoptr i64 %3669 to i64*
  %3672 = load i64, i64* %3671, align 8
  store i64 %3672, i64* %RAX.i1890, align 8
  %3673 = add i64 %3622, 44
  store i64 %3673, i64* %3, align 8
  %3674 = load i32, i32* %3628, align 4
  %3675 = sext i32 %3674 to i64
  %3676 = mul nsw i64 %3675, 33800
  store i64 %3676, i64* %RCX.i1835, align 8
  %3677 = lshr i64 %3676, 63
  %3678 = add i64 %3676, %3672
  store i64 %3678, i64* %RAX.i1890, align 8
  %3679 = icmp ult i64 %3678, %3672
  %3680 = icmp ult i64 %3678, %3676
  %3681 = or i1 %3679, %3680
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %39, align 1
  %3683 = trunc i64 %3678 to i32
  %3684 = and i32 %3683, 255
  %3685 = tail call i32 @llvm.ctpop.i32(i32 %3684)
  %3686 = trunc i32 %3685 to i8
  %3687 = and i8 %3686, 1
  %3688 = xor i8 %3687, 1
  store i8 %3688, i8* %46, align 1
  %3689 = xor i64 %3676, %3672
  %3690 = xor i64 %3689, %3678
  %3691 = lshr i64 %3690, 4
  %3692 = trunc i64 %3691 to i8
  %3693 = and i8 %3692, 1
  store i8 %3693, i8* %52, align 1
  %3694 = icmp eq i64 %3678, 0
  %3695 = zext i1 %3694 to i8
  store i8 %3695, i8* %55, align 1
  %3696 = lshr i64 %3678, 63
  %3697 = trunc i64 %3696 to i8
  store i8 %3697, i8* %58, align 1
  %3698 = lshr i64 %3672, 63
  %3699 = xor i64 %3696, %3698
  %3700 = xor i64 %3696, %3677
  %3701 = add nuw nsw i64 %3699, %3700
  %3702 = icmp eq i64 %3701, 2
  %3703 = zext i1 %3702 to i8
  store i8 %3703, i8* %64, align 1
  %3704 = load i64, i64* %RBP.i, align 8
  %3705 = add i64 %3704, -52
  %3706 = add i64 %3622, 58
  store i64 %3706, i64* %3, align 8
  %3707 = inttoptr i64 %3705 to i32*
  %3708 = load i32, i32* %3707, align 4
  %3709 = sext i32 %3708 to i64
  %3710 = mul nsw i64 %3709, 520
  store i64 %3710, i64* %RCX.i1835, align 8
  %3711 = lshr i64 %3710, 63
  %3712 = add i64 %3710, %3678
  store i64 %3712, i64* %RAX.i1890, align 8
  %3713 = icmp ult i64 %3712, %3678
  %3714 = icmp ult i64 %3712, %3710
  %3715 = or i1 %3713, %3714
  %3716 = zext i1 %3715 to i8
  store i8 %3716, i8* %39, align 1
  %3717 = trunc i64 %3712 to i32
  %3718 = and i32 %3717, 255
  %3719 = tail call i32 @llvm.ctpop.i32(i32 %3718)
  %3720 = trunc i32 %3719 to i8
  %3721 = and i8 %3720, 1
  %3722 = xor i8 %3721, 1
  store i8 %3722, i8* %46, align 1
  %3723 = xor i64 %3710, %3678
  %3724 = xor i64 %3723, %3712
  %3725 = lshr i64 %3724, 4
  %3726 = trunc i64 %3725 to i8
  %3727 = and i8 %3726, 1
  store i8 %3727, i8* %52, align 1
  %3728 = icmp eq i64 %3712, 0
  %3729 = zext i1 %3728 to i8
  store i8 %3729, i8* %55, align 1
  %3730 = lshr i64 %3712, 63
  %3731 = trunc i64 %3730 to i8
  store i8 %3731, i8* %58, align 1
  %3732 = xor i64 %3730, %3696
  %3733 = xor i64 %3730, %3711
  %3734 = add nuw nsw i64 %3732, %3733
  %3735 = icmp eq i64 %3734, 2
  %3736 = zext i1 %3735 to i8
  store i8 %3736, i8* %64, align 1
  %3737 = add i64 %3704, -196
  %3738 = add i64 %3622, 75
  store i64 %3738, i64* %3, align 8
  %3739 = inttoptr i64 %3737 to i32*
  %3740 = load i32, i32* %3739, align 4
  %3741 = sext i32 %3740 to i64
  store i64 %3741, i64* %RCX.i1835, align 8
  %3742 = shl nsw i64 %3741, 3
  %3743 = add i64 %3742, %3712
  %3744 = add i64 %3622, 80
  store i64 %3744, i64* %3, align 8
  %3745 = load i64, i64* %149, align 1
  %3746 = inttoptr i64 %3743 to i64*
  store i64 %3745, i64* %3746, align 8
  %3747 = load i64, i64* %RBP.i, align 8
  %3748 = add i64 %3747, -196
  %3749 = load i64, i64* %3, align 8
  %3750 = add i64 %3749, 6
  store i64 %3750, i64* %3, align 8
  %3751 = inttoptr i64 %3748 to i32*
  %3752 = load i32, i32* %3751, align 4
  %3753 = add i32 %3752, 1
  %3754 = zext i32 %3753 to i64
  store i64 %3754, i64* %RAX.i1890, align 8
  %3755 = icmp eq i32 %3752, -1
  %3756 = icmp eq i32 %3753, 0
  %3757 = or i1 %3755, %3756
  %3758 = zext i1 %3757 to i8
  store i8 %3758, i8* %39, align 1
  %3759 = and i32 %3753, 255
  %3760 = tail call i32 @llvm.ctpop.i32(i32 %3759)
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  %3763 = xor i8 %3762, 1
  store i8 %3763, i8* %46, align 1
  %3764 = xor i32 %3753, %3752
  %3765 = lshr i32 %3764, 4
  %3766 = trunc i32 %3765 to i8
  %3767 = and i8 %3766, 1
  store i8 %3767, i8* %52, align 1
  %3768 = zext i1 %3756 to i8
  store i8 %3768, i8* %55, align 1
  %3769 = lshr i32 %3753, 31
  %3770 = trunc i32 %3769 to i8
  store i8 %3770, i8* %58, align 1
  %3771 = lshr i32 %3752, 31
  %3772 = xor i32 %3769, %3771
  %3773 = add nuw nsw i32 %3772, %3769
  %3774 = icmp eq i32 %3773, 2
  %3775 = zext i1 %3774 to i8
  store i8 %3775, i8* %64, align 1
  %3776 = add i64 %3749, 15
  store i64 %3776, i64* %3, align 8
  store i32 %3753, i32* %3751, align 4
  %3777 = load i64, i64* %3, align 8
  %3778 = add i64 %3777, -813
  store i64 %3778, i64* %3, align 8
  br label %block_.L_401c20

block_.L_401f52:                                  ; preds = %block_.L_401c20
  %3779 = add i64 %2668, -48
  %3780 = add i64 %2630, 39
  store i64 %3780, i64* %3, align 8
  %3781 = inttoptr i64 %3779 to i32*
  %3782 = load i32, i32* %3781, align 4
  %3783 = sext i32 %3782 to i64
  store i64 %3783, i64* %RCX.i1835, align 8
  %3784 = shl nsw i64 %3783, 3
  %3785 = add i64 %3784, %2677
  %3786 = add i64 %2630, 44
  store i64 %3786, i64* %3, align 8
  %3787 = inttoptr i64 %3785 to i64*
  %3788 = load i64, i64* %3787, align 8
  store i64 %3788, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %3789 = add i64 %2668, -80
  %3790 = add i64 %2630, 48
  store i64 %3790, i64* %3, align 8
  %3791 = inttoptr i64 %3789 to i64*
  %3792 = load i64, i64* %3791, align 8
  store i64 %3792, i64* %RAX.i1890, align 8
  %3793 = add i64 %2668, -188
  %3794 = add i64 %2630, 55
  store i64 %3794, i64* %3, align 8
  %3795 = inttoptr i64 %3793 to i32*
  %3796 = load i32, i32* %3795, align 4
  %3797 = sext i32 %3796 to i64
  %3798 = mul nsw i64 %3797, 520
  store i64 %3798, i64* %RCX.i1835, align 8
  %3799 = lshr i64 %3798, 63
  %3800 = add i64 %3798, %3792
  store i64 %3800, i64* %RAX.i1890, align 8
  %3801 = icmp ult i64 %3800, %3792
  %3802 = icmp ult i64 %3800, %3798
  %3803 = or i1 %3801, %3802
  %3804 = zext i1 %3803 to i8
  store i8 %3804, i8* %39, align 1
  %3805 = trunc i64 %3800 to i32
  %3806 = and i32 %3805, 255
  %3807 = tail call i32 @llvm.ctpop.i32(i32 %3806)
  %3808 = trunc i32 %3807 to i8
  %3809 = and i8 %3808, 1
  %3810 = xor i8 %3809, 1
  store i8 %3810, i8* %46, align 1
  %3811 = xor i64 %3798, %3792
  %3812 = xor i64 %3811, %3800
  %3813 = lshr i64 %3812, 4
  %3814 = trunc i64 %3813 to i8
  %3815 = and i8 %3814, 1
  store i8 %3815, i8* %52, align 1
  %3816 = icmp eq i64 %3800, 0
  %3817 = zext i1 %3816 to i8
  store i8 %3817, i8* %55, align 1
  %3818 = lshr i64 %3800, 63
  %3819 = trunc i64 %3818 to i8
  store i8 %3819, i8* %58, align 1
  %3820 = lshr i64 %3792, 63
  %3821 = xor i64 %3818, %3820
  %3822 = xor i64 %3818, %3799
  %3823 = add nuw nsw i64 %3821, %3822
  %3824 = icmp eq i64 %3823, 2
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %64, align 1
  %3826 = add i64 %2630, 69
  store i64 %3826, i64* %3, align 8
  %3827 = load i32, i32* %3781, align 4
  %3828 = sext i32 %3827 to i64
  store i64 %3828, i64* %RCX.i1835, align 8
  %3829 = shl nsw i64 %3828, 3
  %3830 = add i64 %3829, %3800
  %3831 = add i64 %2630, 74
  store i64 %3831, i64* %3, align 8
  %3832 = bitcast i64 %3788 to double
  %3833 = inttoptr i64 %3830 to double*
  %3834 = load double, double* %3833, align 8
  %3835 = fsub double %3832, %3834
  store double %3835, double* %259, align 1
  store i64 0, i64* %260, align 1
  %3836 = load i64, i64* %RBP.i, align 8
  %3837 = add i64 %3836, -88
  %3838 = add i64 %2630, 78
  store i64 %3838, i64* %3, align 8
  %3839 = inttoptr i64 %3837 to i64*
  %3840 = load i64, i64* %3839, align 8
  store i64 %3840, i64* %RAX.i1890, align 8
  %3841 = add i64 %3836, -188
  %3842 = add i64 %2630, 85
  store i64 %3842, i64* %3, align 8
  %3843 = inttoptr i64 %3841 to i32*
  %3844 = load i32, i32* %3843, align 4
  %3845 = sext i32 %3844 to i64
  %3846 = mul nsw i64 %3845, 520
  store i64 %3846, i64* %RCX.i1835, align 8
  %3847 = lshr i64 %3846, 63
  %3848 = add i64 %3846, %3840
  store i64 %3848, i64* %RAX.i1890, align 8
  %3849 = icmp ult i64 %3848, %3840
  %3850 = icmp ult i64 %3848, %3846
  %3851 = or i1 %3849, %3850
  %3852 = zext i1 %3851 to i8
  store i8 %3852, i8* %39, align 1
  %3853 = trunc i64 %3848 to i32
  %3854 = and i32 %3853, 255
  %3855 = tail call i32 @llvm.ctpop.i32(i32 %3854)
  %3856 = trunc i32 %3855 to i8
  %3857 = and i8 %3856, 1
  %3858 = xor i8 %3857, 1
  store i8 %3858, i8* %46, align 1
  %3859 = xor i64 %3846, %3840
  %3860 = xor i64 %3859, %3848
  %3861 = lshr i64 %3860, 4
  %3862 = trunc i64 %3861 to i8
  %3863 = and i8 %3862, 1
  store i8 %3863, i8* %52, align 1
  %3864 = icmp eq i64 %3848, 0
  %3865 = zext i1 %3864 to i8
  store i8 %3865, i8* %55, align 1
  %3866 = lshr i64 %3848, 63
  %3867 = trunc i64 %3866 to i8
  store i8 %3867, i8* %58, align 1
  %3868 = lshr i64 %3840, 63
  %3869 = xor i64 %3866, %3868
  %3870 = xor i64 %3866, %3847
  %3871 = add nuw nsw i64 %3869, %3870
  %3872 = icmp eq i64 %3871, 2
  %3873 = zext i1 %3872 to i8
  store i8 %3873, i8* %64, align 1
  %3874 = add i64 %3836, -52
  %3875 = add i64 %2630, 99
  store i64 %3875, i64* %3, align 8
  %3876 = inttoptr i64 %3874 to i32*
  %3877 = load i32, i32* %3876, align 4
  %3878 = sext i32 %3877 to i64
  store i64 %3878, i64* %RCX.i1835, align 8
  %3879 = shl nsw i64 %3878, 3
  %3880 = add i64 %3879, %3848
  %3881 = add i64 %2630, 104
  store i64 %3881, i64* %3, align 8
  %3882 = inttoptr i64 %3880 to double*
  %3883 = load double, double* %3882, align 8
  %3884 = fadd double %3835, %3883
  store double %3884, double* %259, align 1
  store i64 0, i64* %260, align 1
  %3885 = add i64 %3836, -128
  %3886 = add i64 %2630, 108
  store i64 %3886, i64* %3, align 8
  %3887 = inttoptr i64 %3885 to i64*
  %3888 = load i64, i64* %3887, align 8
  store i64 %3888, i64* %RAX.i1890, align 8
  %3889 = add i64 %2630, 115
  store i64 %3889, i64* %3, align 8
  %3890 = load i32, i32* %3843, align 4
  %3891 = sext i32 %3890 to i64
  %3892 = mul nsw i64 %3891, 33800
  store i64 %3892, i64* %RCX.i1835, align 8
  %3893 = lshr i64 %3892, 63
  %3894 = add i64 %3892, %3888
  store i64 %3894, i64* %RAX.i1890, align 8
  %3895 = icmp ult i64 %3894, %3888
  %3896 = icmp ult i64 %3894, %3892
  %3897 = or i1 %3895, %3896
  %3898 = zext i1 %3897 to i8
  store i8 %3898, i8* %39, align 1
  %3899 = trunc i64 %3894 to i32
  %3900 = and i32 %3899, 255
  %3901 = tail call i32 @llvm.ctpop.i32(i32 %3900)
  %3902 = trunc i32 %3901 to i8
  %3903 = and i8 %3902, 1
  %3904 = xor i8 %3903, 1
  store i8 %3904, i8* %46, align 1
  %3905 = xor i64 %3892, %3888
  %3906 = xor i64 %3905, %3894
  %3907 = lshr i64 %3906, 4
  %3908 = trunc i64 %3907 to i8
  %3909 = and i8 %3908, 1
  store i8 %3909, i8* %52, align 1
  %3910 = icmp eq i64 %3894, 0
  %3911 = zext i1 %3910 to i8
  store i8 %3911, i8* %55, align 1
  %3912 = lshr i64 %3894, 63
  %3913 = trunc i64 %3912 to i8
  store i8 %3913, i8* %58, align 1
  %3914 = lshr i64 %3888, 63
  %3915 = xor i64 %3912, %3914
  %3916 = xor i64 %3912, %3893
  %3917 = add nuw nsw i64 %3915, %3916
  %3918 = icmp eq i64 %3917, 2
  %3919 = zext i1 %3918 to i8
  store i8 %3919, i8* %64, align 1
  %3920 = load i64, i64* %RBP.i, align 8
  %3921 = add i64 %3920, -52
  %3922 = add i64 %2630, 129
  store i64 %3922, i64* %3, align 8
  %3923 = inttoptr i64 %3921 to i32*
  %3924 = load i32, i32* %3923, align 4
  %3925 = sext i32 %3924 to i64
  %3926 = mul nsw i64 %3925, 520
  store i64 %3926, i64* %RCX.i1835, align 8
  %3927 = lshr i64 %3926, 63
  %3928 = add i64 %3926, %3894
  store i64 %3928, i64* %RAX.i1890, align 8
  %3929 = icmp ult i64 %3928, %3894
  %3930 = icmp ult i64 %3928, %3926
  %3931 = or i1 %3929, %3930
  %3932 = zext i1 %3931 to i8
  store i8 %3932, i8* %39, align 1
  %3933 = trunc i64 %3928 to i32
  %3934 = and i32 %3933, 255
  %3935 = tail call i32 @llvm.ctpop.i32(i32 %3934)
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  %3938 = xor i8 %3937, 1
  store i8 %3938, i8* %46, align 1
  %3939 = xor i64 %3926, %3894
  %3940 = xor i64 %3939, %3928
  %3941 = lshr i64 %3940, 4
  %3942 = trunc i64 %3941 to i8
  %3943 = and i8 %3942, 1
  store i8 %3943, i8* %52, align 1
  %3944 = icmp eq i64 %3928, 0
  %3945 = zext i1 %3944 to i8
  store i8 %3945, i8* %55, align 1
  %3946 = lshr i64 %3928, 63
  %3947 = trunc i64 %3946 to i8
  store i8 %3947, i8* %58, align 1
  %3948 = xor i64 %3946, %3912
  %3949 = xor i64 %3946, %3927
  %3950 = add nuw nsw i64 %3948, %3949
  %3951 = icmp eq i64 %3950, 2
  %3952 = zext i1 %3951 to i8
  store i8 %3952, i8* %64, align 1
  %3953 = add i64 %3920, -48
  %3954 = add i64 %2630, 143
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3953 to i32*
  %3956 = load i32, i32* %3955, align 4
  %3957 = sext i32 %3956 to i64
  store i64 %3957, i64* %RCX.i1835, align 8
  %3958 = shl nsw i64 %3957, 3
  %3959 = add i64 %3958, %3928
  %3960 = add i64 %2630, 148
  store i64 %3960, i64* %3, align 8
  %3961 = load double, double* %259, align 1
  %3962 = inttoptr i64 %3959 to double*
  %3963 = load double, double* %3962, align 8
  %3964 = fsub double %3961, %3963
  store double %3964, double* %259, align 1
  %3965 = add i64 %3920, -96
  %3966 = add i64 %2630, 152
  store i64 %3966, i64* %3, align 8
  %3967 = inttoptr i64 %3965 to i64*
  %3968 = load i64, i64* %3967, align 8
  store i64 %3968, i64* %RAX.i1890, align 8
  %3969 = add i64 %3920, -188
  %3970 = add i64 %2630, 159
  store i64 %3970, i64* %3, align 8
  %3971 = inttoptr i64 %3969 to i32*
  %3972 = load i32, i32* %3971, align 4
  %3973 = sext i32 %3972 to i64
  %3974 = mul nsw i64 %3973, 520
  store i64 %3974, i64* %RCX.i1835, align 8
  %3975 = lshr i64 %3974, 63
  %3976 = add i64 %3974, %3968
  store i64 %3976, i64* %RAX.i1890, align 8
  %3977 = icmp ult i64 %3976, %3968
  %3978 = icmp ult i64 %3976, %3974
  %3979 = or i1 %3977, %3978
  %3980 = zext i1 %3979 to i8
  store i8 %3980, i8* %39, align 1
  %3981 = trunc i64 %3976 to i32
  %3982 = and i32 %3981, 255
  %3983 = tail call i32 @llvm.ctpop.i32(i32 %3982)
  %3984 = trunc i32 %3983 to i8
  %3985 = and i8 %3984, 1
  %3986 = xor i8 %3985, 1
  store i8 %3986, i8* %46, align 1
  %3987 = xor i64 %3974, %3968
  %3988 = xor i64 %3987, %3976
  %3989 = lshr i64 %3988, 4
  %3990 = trunc i64 %3989 to i8
  %3991 = and i8 %3990, 1
  store i8 %3991, i8* %52, align 1
  %3992 = icmp eq i64 %3976, 0
  %3993 = zext i1 %3992 to i8
  store i8 %3993, i8* %55, align 1
  %3994 = lshr i64 %3976, 63
  %3995 = trunc i64 %3994 to i8
  store i8 %3995, i8* %58, align 1
  %3996 = lshr i64 %3968, 63
  %3997 = xor i64 %3994, %3996
  %3998 = xor i64 %3994, %3975
  %3999 = add nuw nsw i64 %3997, %3998
  %4000 = icmp eq i64 %3999, 2
  %4001 = zext i1 %4000 to i8
  store i8 %4001, i8* %64, align 1
  %4002 = load i64, i64* %RBP.i, align 8
  %4003 = add i64 %4002, -192
  %4004 = add i64 %2630, 176
  store i64 %4004, i64* %3, align 8
  %4005 = inttoptr i64 %4003 to i32*
  %4006 = load i32, i32* %4005, align 4
  %4007 = sext i32 %4006 to i64
  store i64 %4007, i64* %RCX.i1835, align 8
  %4008 = shl nsw i64 %4007, 3
  %4009 = add i64 %4008, %3976
  %4010 = add i64 %2630, 181
  store i64 %4010, i64* %3, align 8
  %4011 = inttoptr i64 %4009 to double*
  store double %3964, double* %4011, align 8
  %4012 = load i64, i64* %RBP.i, align 8
  %4013 = add i64 %4012, -176
  %4014 = load i64, i64* %3, align 8
  %4015 = add i64 %4014, 7
  store i64 %4015, i64* %3, align 8
  %4016 = inttoptr i64 %4013 to i64*
  %4017 = load i64, i64* %4016, align 8
  store i64 %4017, i64* %RAX.i1890, align 8
  %4018 = add i64 %4012, -52
  %4019 = add i64 %4014, 11
  store i64 %4019, i64* %3, align 8
  %4020 = inttoptr i64 %4018 to i32*
  %4021 = load i32, i32* %4020, align 4
  %4022 = sext i32 %4021 to i64
  store i64 %4022, i64* %RCX.i1835, align 8
  %4023 = shl nsw i64 %4022, 3
  %4024 = add i64 %4023, %4017
  %4025 = add i64 %4014, 16
  store i64 %4025, i64* %3, align 8
  %4026 = inttoptr i64 %4024 to i64*
  %4027 = load i64, i64* %4026, align 8
  store i64 %4027, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %4028 = add i64 %4012, -184
  %4029 = add i64 %4014, 23
  store i64 %4029, i64* %3, align 8
  %4030 = inttoptr i64 %4028 to i64*
  %4031 = load i64, i64* %4030, align 8
  store i64 %4031, i64* %RAX.i1890, align 8
  %4032 = add i64 %4014, 27
  store i64 %4032, i64* %3, align 8
  %4033 = load i32, i32* %4020, align 4
  %4034 = sext i32 %4033 to i64
  store i64 %4034, i64* %RCX.i1835, align 8
  %4035 = shl nsw i64 %4034, 3
  %4036 = add i64 %4035, %4031
  %4037 = add i64 %4014, 32
  store i64 %4037, i64* %3, align 8
  %4038 = bitcast i64 %4027 to double
  %4039 = inttoptr i64 %4036 to double*
  %4040 = load double, double* %4039, align 8
  %4041 = fdiv double %4038, %4040
  store double %4041, double* %259, align 1
  store i64 0, i64* %260, align 1
  %4042 = add i64 %4012, -112
  %4043 = add i64 %4014, 36
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4042 to i64*
  %4045 = load i64, i64* %4044, align 8
  store i64 %4045, i64* %RAX.i1890, align 8
  %4046 = add i64 %4012, -188
  %4047 = add i64 %4014, 43
  store i64 %4047, i64* %3, align 8
  %4048 = inttoptr i64 %4046 to i32*
  %4049 = load i32, i32* %4048, align 4
  %4050 = sext i32 %4049 to i64
  %4051 = mul nsw i64 %4050, 33800
  store i64 %4051, i64* %RCX.i1835, align 8
  %4052 = lshr i64 %4051, 63
  %4053 = add i64 %4051, %4045
  store i64 %4053, i64* %RAX.i1890, align 8
  %4054 = icmp ult i64 %4053, %4045
  %4055 = icmp ult i64 %4053, %4051
  %4056 = or i1 %4054, %4055
  %4057 = zext i1 %4056 to i8
  store i8 %4057, i8* %39, align 1
  %4058 = trunc i64 %4053 to i32
  %4059 = and i32 %4058, 255
  %4060 = tail call i32 @llvm.ctpop.i32(i32 %4059)
  %4061 = trunc i32 %4060 to i8
  %4062 = and i8 %4061, 1
  %4063 = xor i8 %4062, 1
  store i8 %4063, i8* %46, align 1
  %4064 = xor i64 %4051, %4045
  %4065 = xor i64 %4064, %4053
  %4066 = lshr i64 %4065, 4
  %4067 = trunc i64 %4066 to i8
  %4068 = and i8 %4067, 1
  store i8 %4068, i8* %52, align 1
  %4069 = icmp eq i64 %4053, 0
  %4070 = zext i1 %4069 to i8
  store i8 %4070, i8* %55, align 1
  %4071 = lshr i64 %4053, 63
  %4072 = trunc i64 %4071 to i8
  store i8 %4072, i8* %58, align 1
  %4073 = lshr i64 %4045, 63
  %4074 = xor i64 %4071, %4073
  %4075 = xor i64 %4071, %4052
  %4076 = add nuw nsw i64 %4074, %4075
  %4077 = icmp eq i64 %4076, 2
  %4078 = zext i1 %4077 to i8
  store i8 %4078, i8* %64, align 1
  %4079 = load i64, i64* %RBP.i, align 8
  %4080 = add i64 %4079, -52
  %4081 = add i64 %4014, 57
  store i64 %4081, i64* %3, align 8
  %4082 = inttoptr i64 %4080 to i32*
  %4083 = load i32, i32* %4082, align 4
  %4084 = sext i32 %4083 to i64
  %4085 = mul nsw i64 %4084, 520
  store i64 %4085, i64* %RCX.i1835, align 8
  %4086 = lshr i64 %4085, 63
  %4087 = add i64 %4085, %4053
  store i64 %4087, i64* %RAX.i1890, align 8
  %4088 = icmp ult i64 %4087, %4053
  %4089 = icmp ult i64 %4087, %4085
  %4090 = or i1 %4088, %4089
  %4091 = zext i1 %4090 to i8
  store i8 %4091, i8* %39, align 1
  %4092 = trunc i64 %4087 to i32
  %4093 = and i32 %4092, 255
  %4094 = tail call i32 @llvm.ctpop.i32(i32 %4093)
  %4095 = trunc i32 %4094 to i8
  %4096 = and i8 %4095, 1
  %4097 = xor i8 %4096, 1
  store i8 %4097, i8* %46, align 1
  %4098 = xor i64 %4085, %4053
  %4099 = xor i64 %4098, %4087
  %4100 = lshr i64 %4099, 4
  %4101 = trunc i64 %4100 to i8
  %4102 = and i8 %4101, 1
  store i8 %4102, i8* %52, align 1
  %4103 = icmp eq i64 %4087, 0
  %4104 = zext i1 %4103 to i8
  store i8 %4104, i8* %55, align 1
  %4105 = lshr i64 %4087, 63
  %4106 = trunc i64 %4105 to i8
  store i8 %4106, i8* %58, align 1
  %4107 = xor i64 %4105, %4071
  %4108 = xor i64 %4105, %4086
  %4109 = add nuw nsw i64 %4107, %4108
  %4110 = icmp eq i64 %4109, 2
  %4111 = zext i1 %4110 to i8
  store i8 %4111, i8* %64, align 1
  %4112 = add i64 %4079, -48
  %4113 = add i64 %4014, 71
  store i64 %4113, i64* %3, align 8
  %4114 = inttoptr i64 %4112 to i32*
  %4115 = load i32, i32* %4114, align 4
  %4116 = sext i32 %4115 to i64
  store i64 %4116, i64* %RCX.i1835, align 8
  %4117 = shl nsw i64 %4116, 3
  %4118 = add i64 %4117, %4087
  %4119 = add i64 %4014, 76
  store i64 %4119, i64* %3, align 8
  %4120 = load double, double* %259, align 1
  %4121 = inttoptr i64 %4118 to double*
  %4122 = load double, double* %4121, align 8
  %4123 = fmul double %4120, %4122
  store double %4123, double* %259, align 1
  %4124 = add i64 %4079, -72
  %4125 = add i64 %4014, 81
  store i64 %4125, i64* %3, align 8
  %4126 = inttoptr i64 %4124 to i64*
  %4127 = load i64, i64* %4126, align 8
  store i64 %4127, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %4128 = add i64 %4079, -184
  %4129 = add i64 %4014, 88
  store i64 %4129, i64* %3, align 8
  %4130 = inttoptr i64 %4128 to i64*
  %4131 = load i64, i64* %4130, align 8
  store i64 %4131, i64* %RAX.i1890, align 8
  %4132 = add i64 %4014, 92
  store i64 %4132, i64* %3, align 8
  %4133 = load i32, i32* %4082, align 4
  %4134 = sext i32 %4133 to i64
  store i64 %4134, i64* %RCX.i1835, align 8
  %4135 = shl nsw i64 %4134, 3
  %4136 = add i64 %4135, %4131
  %4137 = add i64 %4014, 97
  store i64 %4137, i64* %3, align 8
  %4138 = bitcast i64 %4127 to double
  %4139 = inttoptr i64 %4136 to double*
  %4140 = load double, double* %4139, align 8
  %4141 = fdiv double %4138, %4140
  store double %4141, double* %157, align 1
  store i64 0, i64* %262, align 1
  %4142 = load i64, i64* %RBP.i, align 8
  %4143 = add i64 %4142, -96
  %4144 = add i64 %4014, 101
  store i64 %4144, i64* %3, align 8
  %4145 = inttoptr i64 %4143 to i64*
  %4146 = load i64, i64* %4145, align 8
  store i64 %4146, i64* %RAX.i1890, align 8
  %4147 = add i64 %4142, -188
  %4148 = add i64 %4014, 108
  store i64 %4148, i64* %3, align 8
  %4149 = inttoptr i64 %4147 to i32*
  %4150 = load i32, i32* %4149, align 4
  %4151 = sext i32 %4150 to i64
  %4152 = mul nsw i64 %4151, 520
  store i64 %4152, i64* %RCX.i1835, align 8
  %4153 = lshr i64 %4152, 63
  %4154 = add i64 %4152, %4146
  store i64 %4154, i64* %RAX.i1890, align 8
  %4155 = icmp ult i64 %4154, %4146
  %4156 = icmp ult i64 %4154, %4152
  %4157 = or i1 %4155, %4156
  %4158 = zext i1 %4157 to i8
  store i8 %4158, i8* %39, align 1
  %4159 = trunc i64 %4154 to i32
  %4160 = and i32 %4159, 255
  %4161 = tail call i32 @llvm.ctpop.i32(i32 %4160)
  %4162 = trunc i32 %4161 to i8
  %4163 = and i8 %4162, 1
  %4164 = xor i8 %4163, 1
  store i8 %4164, i8* %46, align 1
  %4165 = xor i64 %4152, %4146
  %4166 = xor i64 %4165, %4154
  %4167 = lshr i64 %4166, 4
  %4168 = trunc i64 %4167 to i8
  %4169 = and i8 %4168, 1
  store i8 %4169, i8* %52, align 1
  %4170 = icmp eq i64 %4154, 0
  %4171 = zext i1 %4170 to i8
  store i8 %4171, i8* %55, align 1
  %4172 = lshr i64 %4154, 63
  %4173 = trunc i64 %4172 to i8
  store i8 %4173, i8* %58, align 1
  %4174 = lshr i64 %4146, 63
  %4175 = xor i64 %4172, %4174
  %4176 = xor i64 %4172, %4153
  %4177 = add nuw nsw i64 %4175, %4176
  %4178 = icmp eq i64 %4177, 2
  %4179 = zext i1 %4178 to i8
  store i8 %4179, i8* %64, align 1
  %4180 = add i64 %4142, -192
  %4181 = add i64 %4014, 125
  store i64 %4181, i64* %3, align 8
  %4182 = inttoptr i64 %4180 to i32*
  %4183 = load i32, i32* %4182, align 4
  %4184 = sext i32 %4183 to i64
  store i64 %4184, i64* %RCX.i1835, align 8
  %4185 = shl nsw i64 %4184, 3
  %4186 = add i64 %4185, %4154
  %4187 = add i64 %4014, 130
  store i64 %4187, i64* %3, align 8
  %4188 = inttoptr i64 %4186 to double*
  %4189 = load double, double* %4188, align 8
  %4190 = fmul double %4141, %4189
  store double %4190, double* %157, align 1
  store i64 0, i64* %262, align 1
  %4191 = load double, double* %259, align 1
  %4192 = fsub double %4191, %4190
  store double %4192, double* %259, align 1
  %4193 = add i64 %4142, -104
  %4194 = add i64 %4014, 138
  store i64 %4194, i64* %3, align 8
  %4195 = inttoptr i64 %4193 to i64*
  %4196 = load i64, i64* %4195, align 8
  store i64 %4196, i64* %RAX.i1890, align 8
  %4197 = load i64, i64* %RBP.i, align 8
  %4198 = add i64 %4197, -188
  %4199 = add i64 %4014, 145
  store i64 %4199, i64* %3, align 8
  %4200 = inttoptr i64 %4198 to i32*
  %4201 = load i32, i32* %4200, align 4
  %4202 = sext i32 %4201 to i64
  %4203 = mul nsw i64 %4202, 520
  store i64 %4203, i64* %RCX.i1835, align 8
  %4204 = lshr i64 %4203, 63
  %4205 = add i64 %4203, %4196
  store i64 %4205, i64* %RAX.i1890, align 8
  %4206 = icmp ult i64 %4205, %4196
  %4207 = icmp ult i64 %4205, %4203
  %4208 = or i1 %4206, %4207
  %4209 = zext i1 %4208 to i8
  store i8 %4209, i8* %39, align 1
  %4210 = trunc i64 %4205 to i32
  %4211 = and i32 %4210, 255
  %4212 = tail call i32 @llvm.ctpop.i32(i32 %4211)
  %4213 = trunc i32 %4212 to i8
  %4214 = and i8 %4213, 1
  %4215 = xor i8 %4214, 1
  store i8 %4215, i8* %46, align 1
  %4216 = xor i64 %4203, %4196
  %4217 = xor i64 %4216, %4205
  %4218 = lshr i64 %4217, 4
  %4219 = trunc i64 %4218 to i8
  %4220 = and i8 %4219, 1
  store i8 %4220, i8* %52, align 1
  %4221 = icmp eq i64 %4205, 0
  %4222 = zext i1 %4221 to i8
  store i8 %4222, i8* %55, align 1
  %4223 = lshr i64 %4205, 63
  %4224 = trunc i64 %4223 to i8
  store i8 %4224, i8* %58, align 1
  %4225 = lshr i64 %4196, 63
  %4226 = xor i64 %4223, %4225
  %4227 = xor i64 %4223, %4204
  %4228 = add nuw nsw i64 %4226, %4227
  %4229 = icmp eq i64 %4228, 2
  %4230 = zext i1 %4229 to i8
  store i8 %4230, i8* %64, align 1
  %4231 = add i64 %4197, -192
  %4232 = add i64 %4014, 162
  store i64 %4232, i64* %3, align 8
  %4233 = inttoptr i64 %4231 to i32*
  %4234 = load i32, i32* %4233, align 4
  %4235 = sext i32 %4234 to i64
  store i64 %4235, i64* %RCX.i1835, align 8
  %4236 = shl nsw i64 %4235, 3
  %4237 = add i64 %4236, %4205
  %4238 = add i64 %4014, 167
  store i64 %4238, i64* %3, align 8
  %4239 = inttoptr i64 %4237 to double*
  store double %4192, double* %4239, align 8
  %4240 = load i64, i64* %RBP.i, align 8
  %4241 = add i64 %4240, -160
  %4242 = load i64, i64* %3, align 8
  %4243 = add i64 %4242, 7
  store i64 %4243, i64* %3, align 8
  %4244 = inttoptr i64 %4241 to i64*
  %4245 = load i64, i64* %4244, align 8
  store i64 %4245, i64* %RAX.i1890, align 8
  %4246 = add i64 %4240, -48
  %4247 = add i64 %4242, 11
  store i64 %4247, i64* %3, align 8
  %4248 = inttoptr i64 %4246 to i32*
  %4249 = load i32, i32* %4248, align 4
  %4250 = sext i32 %4249 to i64
  store i64 %4250, i64* %RCX.i1835, align 8
  %4251 = shl nsw i64 %4250, 3
  %4252 = add i64 %4251, %4245
  %4253 = add i64 %4242, 16
  store i64 %4253, i64* %3, align 8
  %4254 = inttoptr i64 %4252 to i64*
  %4255 = load i64, i64* %4254, align 8
  store i64 %4255, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %4256 = add i64 %4240, -168
  %4257 = add i64 %4242, 23
  store i64 %4257, i64* %3, align 8
  %4258 = inttoptr i64 %4256 to i64*
  %4259 = load i64, i64* %4258, align 8
  store i64 %4259, i64* %RAX.i1890, align 8
  %4260 = add i64 %4242, 27
  store i64 %4260, i64* %3, align 8
  %4261 = load i32, i32* %4248, align 4
  %4262 = sext i32 %4261 to i64
  store i64 %4262, i64* %RCX.i1835, align 8
  %4263 = shl nsw i64 %4262, 3
  %4264 = add i64 %4263, %4259
  %4265 = add i64 %4242, 32
  store i64 %4265, i64* %3, align 8
  %4266 = bitcast i64 %4255 to double
  %4267 = inttoptr i64 %4264 to double*
  %4268 = load double, double* %4267, align 8
  %4269 = fdiv double %4266, %4268
  store double %4269, double* %259, align 1
  store i64 0, i64* %260, align 1
  %4270 = add i64 %4240, -136
  %4271 = add i64 %4242, 39
  store i64 %4271, i64* %3, align 8
  %4272 = inttoptr i64 %4270 to i64*
  %4273 = load i64, i64* %4272, align 8
  store i64 %4273, i64* %RAX.i1890, align 8
  %4274 = add i64 %4240, -188
  %4275 = add i64 %4242, 46
  store i64 %4275, i64* %3, align 8
  %4276 = inttoptr i64 %4274 to i32*
  %4277 = load i32, i32* %4276, align 4
  %4278 = sext i32 %4277 to i64
  %4279 = mul nsw i64 %4278, 33800
  store i64 %4279, i64* %RCX.i1835, align 8
  %4280 = lshr i64 %4279, 63
  %4281 = add i64 %4279, %4273
  store i64 %4281, i64* %RAX.i1890, align 8
  %4282 = icmp ult i64 %4281, %4273
  %4283 = icmp ult i64 %4281, %4279
  %4284 = or i1 %4282, %4283
  %4285 = zext i1 %4284 to i8
  store i8 %4285, i8* %39, align 1
  %4286 = trunc i64 %4281 to i32
  %4287 = and i32 %4286, 255
  %4288 = tail call i32 @llvm.ctpop.i32(i32 %4287)
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  %4291 = xor i8 %4290, 1
  store i8 %4291, i8* %46, align 1
  %4292 = xor i64 %4279, %4273
  %4293 = xor i64 %4292, %4281
  %4294 = lshr i64 %4293, 4
  %4295 = trunc i64 %4294 to i8
  %4296 = and i8 %4295, 1
  store i8 %4296, i8* %52, align 1
  %4297 = icmp eq i64 %4281, 0
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %55, align 1
  %4299 = lshr i64 %4281, 63
  %4300 = trunc i64 %4299 to i8
  store i8 %4300, i8* %58, align 1
  %4301 = lshr i64 %4273, 63
  %4302 = xor i64 %4299, %4301
  %4303 = xor i64 %4299, %4280
  %4304 = add nuw nsw i64 %4302, %4303
  %4305 = icmp eq i64 %4304, 2
  %4306 = zext i1 %4305 to i8
  store i8 %4306, i8* %64, align 1
  %4307 = load i64, i64* %RBP.i, align 8
  %4308 = add i64 %4307, -52
  %4309 = add i64 %4242, 60
  store i64 %4309, i64* %3, align 8
  %4310 = inttoptr i64 %4308 to i32*
  %4311 = load i32, i32* %4310, align 4
  %4312 = sext i32 %4311 to i64
  %4313 = mul nsw i64 %4312, 520
  store i64 %4313, i64* %RCX.i1835, align 8
  %4314 = lshr i64 %4313, 63
  %4315 = add i64 %4313, %4281
  store i64 %4315, i64* %RAX.i1890, align 8
  %4316 = icmp ult i64 %4315, %4281
  %4317 = icmp ult i64 %4315, %4313
  %4318 = or i1 %4316, %4317
  %4319 = zext i1 %4318 to i8
  store i8 %4319, i8* %39, align 1
  %4320 = trunc i64 %4315 to i32
  %4321 = and i32 %4320, 255
  %4322 = tail call i32 @llvm.ctpop.i32(i32 %4321)
  %4323 = trunc i32 %4322 to i8
  %4324 = and i8 %4323, 1
  %4325 = xor i8 %4324, 1
  store i8 %4325, i8* %46, align 1
  %4326 = xor i64 %4313, %4281
  %4327 = xor i64 %4326, %4315
  %4328 = lshr i64 %4327, 4
  %4329 = trunc i64 %4328 to i8
  %4330 = and i8 %4329, 1
  store i8 %4330, i8* %52, align 1
  %4331 = icmp eq i64 %4315, 0
  %4332 = zext i1 %4331 to i8
  store i8 %4332, i8* %55, align 1
  %4333 = lshr i64 %4315, 63
  %4334 = trunc i64 %4333 to i8
  store i8 %4334, i8* %58, align 1
  %4335 = xor i64 %4333, %4299
  %4336 = xor i64 %4333, %4314
  %4337 = add nuw nsw i64 %4335, %4336
  %4338 = icmp eq i64 %4337, 2
  %4339 = zext i1 %4338 to i8
  store i8 %4339, i8* %64, align 1
  %4340 = add i64 %4307, -48
  %4341 = add i64 %4242, 74
  store i64 %4341, i64* %3, align 8
  %4342 = inttoptr i64 %4340 to i32*
  %4343 = load i32, i32* %4342, align 4
  %4344 = sext i32 %4343 to i64
  store i64 %4344, i64* %RCX.i1835, align 8
  %4345 = shl nsw i64 %4344, 3
  %4346 = add i64 %4345, %4315
  %4347 = add i64 %4242, 79
  store i64 %4347, i64* %3, align 8
  %4348 = load double, double* %259, align 1
  %4349 = inttoptr i64 %4346 to double*
  %4350 = load double, double* %4349, align 8
  %4351 = fmul double %4348, %4350
  store double %4351, double* %259, align 1
  %4352 = add i64 %4307, -64
  %4353 = add i64 %4242, 84
  store i64 %4353, i64* %3, align 8
  %4354 = inttoptr i64 %4352 to i64*
  %4355 = load i64, i64* %4354, align 8
  store i64 %4355, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %4356 = add i64 %4307, -152
  %4357 = add i64 %4242, 91
  store i64 %4357, i64* %3, align 8
  %4358 = inttoptr i64 %4356 to i64*
  %4359 = load i64, i64* %4358, align 8
  store i64 %4359, i64* %RAX.i1890, align 8
  %4360 = add i64 %4307, -188
  %4361 = add i64 %4242, 98
  store i64 %4361, i64* %3, align 8
  %4362 = inttoptr i64 %4360 to i32*
  %4363 = load i32, i32* %4362, align 4
  %4364 = sext i32 %4363 to i64
  store i64 %4364, i64* %RCX.i1835, align 8
  %4365 = shl nsw i64 %4364, 3
  %4366 = add i64 %4365, %4359
  %4367 = add i64 %4242, 103
  store i64 %4367, i64* %3, align 8
  %4368 = bitcast i64 %4355 to double
  %4369 = inttoptr i64 %4366 to double*
  %4370 = load double, double* %4369, align 8
  %4371 = fmul double %4368, %4370
  store double %4371, double* %157, align 1
  store i64 0, i64* %262, align 1
  %4372 = load i64, i64* %RBP.i, align 8
  %4373 = add i64 %4372, -168
  %4374 = add i64 %4242, 110
  store i64 %4374, i64* %3, align 8
  %4375 = inttoptr i64 %4373 to i64*
  %4376 = load i64, i64* %4375, align 8
  store i64 %4376, i64* %RAX.i1890, align 8
  %4377 = add i64 %4372, -48
  %4378 = add i64 %4242, 114
  store i64 %4378, i64* %3, align 8
  %4379 = inttoptr i64 %4377 to i32*
  %4380 = load i32, i32* %4379, align 4
  %4381 = sext i32 %4380 to i64
  store i64 %4381, i64* %RCX.i1835, align 8
  %4382 = shl nsw i64 %4381, 3
  %4383 = add i64 %4382, %4376
  %4384 = add i64 %4242, 119
  store i64 %4384, i64* %3, align 8
  %4385 = inttoptr i64 %4383 to double*
  %4386 = load double, double* %4385, align 8
  %4387 = fdiv double %4371, %4386
  store double %4387, double* %157, align 1
  store i64 0, i64* %262, align 1
  %4388 = add i64 %4372, -104
  %4389 = add i64 %4242, 123
  store i64 %4389, i64* %3, align 8
  %4390 = inttoptr i64 %4388 to i64*
  %4391 = load i64, i64* %4390, align 8
  store i64 %4391, i64* %RAX.i1890, align 8
  %4392 = add i64 %4372, -188
  %4393 = add i64 %4242, 130
  store i64 %4393, i64* %3, align 8
  %4394 = inttoptr i64 %4392 to i32*
  %4395 = load i32, i32* %4394, align 4
  %4396 = sext i32 %4395 to i64
  %4397 = mul nsw i64 %4396, 520
  store i64 %4397, i64* %RCX.i1835, align 8
  %4398 = lshr i64 %4397, 63
  %4399 = add i64 %4397, %4391
  store i64 %4399, i64* %RAX.i1890, align 8
  %4400 = icmp ult i64 %4399, %4391
  %4401 = icmp ult i64 %4399, %4397
  %4402 = or i1 %4400, %4401
  %4403 = zext i1 %4402 to i8
  store i8 %4403, i8* %39, align 1
  %4404 = trunc i64 %4399 to i32
  %4405 = and i32 %4404, 255
  %4406 = tail call i32 @llvm.ctpop.i32(i32 %4405)
  %4407 = trunc i32 %4406 to i8
  %4408 = and i8 %4407, 1
  %4409 = xor i8 %4408, 1
  store i8 %4409, i8* %46, align 1
  %4410 = xor i64 %4397, %4391
  %4411 = xor i64 %4410, %4399
  %4412 = lshr i64 %4411, 4
  %4413 = trunc i64 %4412 to i8
  %4414 = and i8 %4413, 1
  store i8 %4414, i8* %52, align 1
  %4415 = icmp eq i64 %4399, 0
  %4416 = zext i1 %4415 to i8
  store i8 %4416, i8* %55, align 1
  %4417 = lshr i64 %4399, 63
  %4418 = trunc i64 %4417 to i8
  store i8 %4418, i8* %58, align 1
  %4419 = lshr i64 %4391, 63
  %4420 = xor i64 %4417, %4419
  %4421 = xor i64 %4417, %4398
  %4422 = add nuw nsw i64 %4420, %4421
  %4423 = icmp eq i64 %4422, 2
  %4424 = zext i1 %4423 to i8
  store i8 %4424, i8* %64, align 1
  %4425 = add i64 %4372, -192
  %4426 = add i64 %4242, 147
  store i64 %4426, i64* %3, align 8
  %4427 = inttoptr i64 %4425 to i32*
  %4428 = load i32, i32* %4427, align 4
  %4429 = sext i32 %4428 to i64
  store i64 %4429, i64* %RCX.i1835, align 8
  %4430 = shl nsw i64 %4429, 3
  %4431 = add i64 %4430, %4399
  %4432 = add i64 %4242, 152
  store i64 %4432, i64* %3, align 8
  %4433 = inttoptr i64 %4431 to double*
  %4434 = load double, double* %4433, align 8
  %4435 = fmul double %4387, %4434
  store double %4435, double* %157, align 1
  store i64 0, i64* %262, align 1
  %4436 = load double, double* %259, align 1
  %4437 = fadd double %4436, %4435
  store double %4437, double* %259, align 1
  %4438 = load i64, i64* %RBP.i, align 8
  %4439 = add i64 %4438, -64
  %4440 = add i64 %4242, 161
  store i64 %4440, i64* %3, align 8
  %4441 = inttoptr i64 %4439 to i64*
  %4442 = load i64, i64* %4441, align 8
  store i64 %4442, i64* %158, align 1
  store double 0.000000e+00, double* %263, align 1
  %4443 = add i64 %4438, -144
  %4444 = add i64 %4242, 168
  store i64 %4444, i64* %3, align 8
  %4445 = inttoptr i64 %4443 to i64*
  %4446 = load i64, i64* %4445, align 8
  store i64 %4446, i64* %RAX.i1890, align 8
  %4447 = add i64 %4438, -188
  %4448 = add i64 %4242, 175
  store i64 %4448, i64* %3, align 8
  %4449 = inttoptr i64 %4447 to i32*
  %4450 = load i32, i32* %4449, align 4
  %4451 = sext i32 %4450 to i64
  store i64 %4451, i64* %RCX.i1835, align 8
  %4452 = shl nsw i64 %4451, 3
  %4453 = add i64 %4452, %4446
  %4454 = add i64 %4242, 180
  store i64 %4454, i64* %3, align 8
  %4455 = bitcast i64 %4442 to double
  %4456 = inttoptr i64 %4453 to double*
  %4457 = load double, double* %4456, align 8
  %4458 = fmul double %4455, %4457
  store double %4458, double* %157, align 1
  store i64 0, i64* %262, align 1
  %4459 = add i64 %4438, -168
  %4460 = add i64 %4242, 187
  store i64 %4460, i64* %3, align 8
  %4461 = inttoptr i64 %4459 to i64*
  %4462 = load i64, i64* %4461, align 8
  store i64 %4462, i64* %RAX.i1890, align 8
  %4463 = add i64 %4438, -48
  %4464 = add i64 %4242, 191
  store i64 %4464, i64* %3, align 8
  %4465 = inttoptr i64 %4463 to i32*
  %4466 = load i32, i32* %4465, align 4
  %4467 = sext i32 %4466 to i64
  store i64 %4467, i64* %RCX.i1835, align 8
  %4468 = shl nsw i64 %4467, 3
  %4469 = add i64 %4468, %4462
  %4470 = add i64 %4242, 196
  store i64 %4470, i64* %3, align 8
  %4471 = inttoptr i64 %4469 to double*
  %4472 = load double, double* %4471, align 8
  %4473 = fdiv double %4458, %4472
  store double %4473, double* %157, align 1
  store i64 0, i64* %262, align 1
  %4474 = add i64 %4438, -112
  %4475 = add i64 %4242, 200
  store i64 %4475, i64* %3, align 8
  %4476 = inttoptr i64 %4474 to i64*
  %4477 = load i64, i64* %4476, align 8
  store i64 %4477, i64* %RAX.i1890, align 8
  %4478 = add i64 %4242, 207
  store i64 %4478, i64* %3, align 8
  %4479 = load i32, i32* %4449, align 4
  %4480 = sext i32 %4479 to i64
  %4481 = mul nsw i64 %4480, 33800
  store i64 %4481, i64* %RCX.i1835, align 8
  %4482 = lshr i64 %4481, 63
  %4483 = add i64 %4481, %4477
  store i64 %4483, i64* %RAX.i1890, align 8
  %4484 = icmp ult i64 %4483, %4477
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
  %4494 = xor i64 %4481, %4477
  %4495 = xor i64 %4494, %4483
  %4496 = lshr i64 %4495, 4
  %4497 = trunc i64 %4496 to i8
  %4498 = and i8 %4497, 1
  store i8 %4498, i8* %52, align 1
  %4499 = icmp eq i64 %4483, 0
  %4500 = zext i1 %4499 to i8
  store i8 %4500, i8* %55, align 1
  %4501 = lshr i64 %4483, 63
  %4502 = trunc i64 %4501 to i8
  store i8 %4502, i8* %58, align 1
  %4503 = lshr i64 %4477, 63
  %4504 = xor i64 %4501, %4503
  %4505 = xor i64 %4501, %4482
  %4506 = add nuw nsw i64 %4504, %4505
  %4507 = icmp eq i64 %4506, 2
  %4508 = zext i1 %4507 to i8
  store i8 %4508, i8* %64, align 1
  %4509 = load i64, i64* %RBP.i, align 8
  %4510 = add i64 %4509, -52
  %4511 = add i64 %4242, 221
  store i64 %4511, i64* %3, align 8
  %4512 = inttoptr i64 %4510 to i32*
  %4513 = load i32, i32* %4512, align 4
  %4514 = sext i32 %4513 to i64
  %4515 = mul nsw i64 %4514, 520
  store i64 %4515, i64* %RCX.i1835, align 8
  %4516 = lshr i64 %4515, 63
  %4517 = add i64 %4515, %4483
  store i64 %4517, i64* %RAX.i1890, align 8
  %4518 = icmp ult i64 %4517, %4483
  %4519 = icmp ult i64 %4517, %4515
  %4520 = or i1 %4518, %4519
  %4521 = zext i1 %4520 to i8
  store i8 %4521, i8* %39, align 1
  %4522 = trunc i64 %4517 to i32
  %4523 = and i32 %4522, 255
  %4524 = tail call i32 @llvm.ctpop.i32(i32 %4523)
  %4525 = trunc i32 %4524 to i8
  %4526 = and i8 %4525, 1
  %4527 = xor i8 %4526, 1
  store i8 %4527, i8* %46, align 1
  %4528 = xor i64 %4515, %4483
  %4529 = xor i64 %4528, %4517
  %4530 = lshr i64 %4529, 4
  %4531 = trunc i64 %4530 to i8
  %4532 = and i8 %4531, 1
  store i8 %4532, i8* %52, align 1
  %4533 = icmp eq i64 %4517, 0
  %4534 = zext i1 %4533 to i8
  store i8 %4534, i8* %55, align 1
  %4535 = lshr i64 %4517, 63
  %4536 = trunc i64 %4535 to i8
  store i8 %4536, i8* %58, align 1
  %4537 = xor i64 %4535, %4501
  %4538 = xor i64 %4535, %4516
  %4539 = add nuw nsw i64 %4537, %4538
  %4540 = icmp eq i64 %4539, 2
  %4541 = zext i1 %4540 to i8
  store i8 %4541, i8* %64, align 1
  %4542 = add i64 %4509, -48
  %4543 = add i64 %4242, 235
  store i64 %4543, i64* %3, align 8
  %4544 = inttoptr i64 %4542 to i32*
  %4545 = load i32, i32* %4544, align 4
  %4546 = sext i32 %4545 to i64
  store i64 %4546, i64* %RCX.i1835, align 8
  %4547 = shl nsw i64 %4546, 3
  %4548 = add i64 %4547, %4517
  %4549 = add i64 %4242, 240
  store i64 %4549, i64* %3, align 8
  %4550 = load double, double* %157, align 1
  %4551 = inttoptr i64 %4548 to double*
  %4552 = load double, double* %4551, align 8
  %4553 = fmul double %4550, %4552
  store double %4553, double* %157, align 1
  %4554 = load double, double* %259, align 1
  %4555 = fsub double %4554, %4553
  store double %4555, double* %259, align 1
  %4556 = add i64 %4509, -136
  %4557 = add i64 %4242, 251
  store i64 %4557, i64* %3, align 8
  %4558 = inttoptr i64 %4556 to i64*
  %4559 = load i64, i64* %4558, align 8
  store i64 %4559, i64* %RAX.i1890, align 8
  %4560 = add i64 %4509, -188
  %4561 = add i64 %4242, 258
  store i64 %4561, i64* %3, align 8
  %4562 = inttoptr i64 %4560 to i32*
  %4563 = load i32, i32* %4562, align 4
  %4564 = sext i32 %4563 to i64
  %4565 = mul nsw i64 %4564, 33800
  store i64 %4565, i64* %RCX.i1835, align 8
  %4566 = lshr i64 %4565, 63
  %4567 = add i64 %4565, %4559
  store i64 %4567, i64* %RAX.i1890, align 8
  %4568 = icmp ult i64 %4567, %4559
  %4569 = icmp ult i64 %4567, %4565
  %4570 = or i1 %4568, %4569
  %4571 = zext i1 %4570 to i8
  store i8 %4571, i8* %39, align 1
  %4572 = trunc i64 %4567 to i32
  %4573 = and i32 %4572, 255
  %4574 = tail call i32 @llvm.ctpop.i32(i32 %4573)
  %4575 = trunc i32 %4574 to i8
  %4576 = and i8 %4575, 1
  %4577 = xor i8 %4576, 1
  store i8 %4577, i8* %46, align 1
  %4578 = xor i64 %4565, %4559
  %4579 = xor i64 %4578, %4567
  %4580 = lshr i64 %4579, 4
  %4581 = trunc i64 %4580 to i8
  %4582 = and i8 %4581, 1
  store i8 %4582, i8* %52, align 1
  %4583 = icmp eq i64 %4567, 0
  %4584 = zext i1 %4583 to i8
  store i8 %4584, i8* %55, align 1
  %4585 = lshr i64 %4567, 63
  %4586 = trunc i64 %4585 to i8
  store i8 %4586, i8* %58, align 1
  %4587 = lshr i64 %4559, 63
  %4588 = xor i64 %4585, %4587
  %4589 = xor i64 %4585, %4566
  %4590 = add nuw nsw i64 %4588, %4589
  %4591 = icmp eq i64 %4590, 2
  %4592 = zext i1 %4591 to i8
  store i8 %4592, i8* %64, align 1
  %4593 = load i64, i64* %RBP.i, align 8
  %4594 = add i64 %4593, -52
  %4595 = add i64 %4242, 272
  store i64 %4595, i64* %3, align 8
  %4596 = inttoptr i64 %4594 to i32*
  %4597 = load i32, i32* %4596, align 4
  %4598 = sext i32 %4597 to i64
  %4599 = mul nsw i64 %4598, 520
  store i64 %4599, i64* %RCX.i1835, align 8
  %4600 = lshr i64 %4599, 63
  %4601 = add i64 %4599, %4567
  store i64 %4601, i64* %RAX.i1890, align 8
  %4602 = icmp ult i64 %4601, %4567
  %4603 = icmp ult i64 %4601, %4599
  %4604 = or i1 %4602, %4603
  %4605 = zext i1 %4604 to i8
  store i8 %4605, i8* %39, align 1
  %4606 = trunc i64 %4601 to i32
  %4607 = and i32 %4606, 255
  %4608 = tail call i32 @llvm.ctpop.i32(i32 %4607)
  %4609 = trunc i32 %4608 to i8
  %4610 = and i8 %4609, 1
  %4611 = xor i8 %4610, 1
  store i8 %4611, i8* %46, align 1
  %4612 = xor i64 %4599, %4567
  %4613 = xor i64 %4612, %4601
  %4614 = lshr i64 %4613, 4
  %4615 = trunc i64 %4614 to i8
  %4616 = and i8 %4615, 1
  store i8 %4616, i8* %52, align 1
  %4617 = icmp eq i64 %4601, 0
  %4618 = zext i1 %4617 to i8
  store i8 %4618, i8* %55, align 1
  %4619 = lshr i64 %4601, 63
  %4620 = trunc i64 %4619 to i8
  store i8 %4620, i8* %58, align 1
  %4621 = xor i64 %4619, %4585
  %4622 = xor i64 %4619, %4600
  %4623 = add nuw nsw i64 %4621, %4622
  %4624 = icmp eq i64 %4623, 2
  %4625 = zext i1 %4624 to i8
  store i8 %4625, i8* %64, align 1
  %4626 = add i64 %4593, -48
  %4627 = add i64 %4242, 286
  store i64 %4627, i64* %3, align 8
  %4628 = inttoptr i64 %4626 to i32*
  %4629 = load i32, i32* %4628, align 4
  %4630 = sext i32 %4629 to i64
  store i64 %4630, i64* %RCX.i1835, align 8
  %4631 = shl nsw i64 %4630, 3
  %4632 = add i64 %4631, %4601
  %4633 = add i64 %4242, 291
  store i64 %4633, i64* %3, align 8
  %4634 = load i64, i64* %149, align 1
  %4635 = inttoptr i64 %4632 to i64*
  store i64 %4634, i64* %4635, align 8
  %4636 = load i64, i64* %RBP.i, align 8
  %4637 = add i64 %4636, -104
  %4638 = load i64, i64* %3, align 8
  %4639 = add i64 %4638, 4
  store i64 %4639, i64* %3, align 8
  %4640 = inttoptr i64 %4637 to i64*
  %4641 = load i64, i64* %4640, align 8
  store i64 %4641, i64* %RAX.i1890, align 8
  %4642 = add i64 %4636, -188
  %4643 = add i64 %4638, 11
  store i64 %4643, i64* %3, align 8
  %4644 = inttoptr i64 %4642 to i32*
  %4645 = load i32, i32* %4644, align 4
  %4646 = sext i32 %4645 to i64
  %4647 = mul nsw i64 %4646, 520
  store i64 %4647, i64* %RCX.i1835, align 8
  %4648 = lshr i64 %4647, 63
  %4649 = add i64 %4647, %4641
  store i64 %4649, i64* %RAX.i1890, align 8
  %4650 = icmp ult i64 %4649, %4641
  %4651 = icmp ult i64 %4649, %4647
  %4652 = or i1 %4650, %4651
  %4653 = zext i1 %4652 to i8
  store i8 %4653, i8* %39, align 1
  %4654 = trunc i64 %4649 to i32
  %4655 = and i32 %4654, 255
  %4656 = tail call i32 @llvm.ctpop.i32(i32 %4655)
  %4657 = trunc i32 %4656 to i8
  %4658 = and i8 %4657, 1
  %4659 = xor i8 %4658, 1
  store i8 %4659, i8* %46, align 1
  %4660 = xor i64 %4647, %4641
  %4661 = xor i64 %4660, %4649
  %4662 = lshr i64 %4661, 4
  %4663 = trunc i64 %4662 to i8
  %4664 = and i8 %4663, 1
  store i8 %4664, i8* %52, align 1
  %4665 = icmp eq i64 %4649, 0
  %4666 = zext i1 %4665 to i8
  store i8 %4666, i8* %55, align 1
  %4667 = lshr i64 %4649, 63
  %4668 = trunc i64 %4667 to i8
  store i8 %4668, i8* %58, align 1
  %4669 = lshr i64 %4641, 63
  %4670 = xor i64 %4667, %4669
  %4671 = xor i64 %4667, %4648
  %4672 = add nuw nsw i64 %4670, %4671
  %4673 = icmp eq i64 %4672, 2
  %4674 = zext i1 %4673 to i8
  store i8 %4674, i8* %64, align 1
  %4675 = add i64 %4636, -192
  %4676 = add i64 %4638, 28
  store i64 %4676, i64* %3, align 8
  %4677 = inttoptr i64 %4675 to i32*
  %4678 = load i32, i32* %4677, align 4
  %4679 = sext i32 %4678 to i64
  store i64 %4679, i64* %RCX.i1835, align 8
  %4680 = shl nsw i64 %4679, 3
  %4681 = add i64 %4680, %4649
  %4682 = add i64 %4638, 33
  store i64 %4682, i64* %3, align 8
  %4683 = inttoptr i64 %4681 to i64*
  %4684 = load i64, i64* %4683, align 8
  store i64 %4684, i64* %149, align 1
  store double 0.000000e+00, double* %261, align 1
  %4685 = add i64 %4636, -112
  %4686 = add i64 %4638, 37
  store i64 %4686, i64* %3, align 8
  %4687 = inttoptr i64 %4685 to i64*
  %4688 = load i64, i64* %4687, align 8
  store i64 %4688, i64* %RAX.i1890, align 8
  %4689 = add i64 %4638, 44
  store i64 %4689, i64* %3, align 8
  %4690 = load i32, i32* %4644, align 4
  %4691 = sext i32 %4690 to i64
  %4692 = mul nsw i64 %4691, 33800
  store i64 %4692, i64* %RCX.i1835, align 8
  %4693 = lshr i64 %4692, 63
  %4694 = add i64 %4692, %4688
  store i64 %4694, i64* %RAX.i1890, align 8
  %4695 = icmp ult i64 %4694, %4688
  %4696 = icmp ult i64 %4694, %4692
  %4697 = or i1 %4695, %4696
  %4698 = zext i1 %4697 to i8
  store i8 %4698, i8* %39, align 1
  %4699 = trunc i64 %4694 to i32
  %4700 = and i32 %4699, 255
  %4701 = tail call i32 @llvm.ctpop.i32(i32 %4700)
  %4702 = trunc i32 %4701 to i8
  %4703 = and i8 %4702, 1
  %4704 = xor i8 %4703, 1
  store i8 %4704, i8* %46, align 1
  %4705 = xor i64 %4692, %4688
  %4706 = xor i64 %4705, %4694
  %4707 = lshr i64 %4706, 4
  %4708 = trunc i64 %4707 to i8
  %4709 = and i8 %4708, 1
  store i8 %4709, i8* %52, align 1
  %4710 = icmp eq i64 %4694, 0
  %4711 = zext i1 %4710 to i8
  store i8 %4711, i8* %55, align 1
  %4712 = lshr i64 %4694, 63
  %4713 = trunc i64 %4712 to i8
  store i8 %4713, i8* %58, align 1
  %4714 = lshr i64 %4688, 63
  %4715 = xor i64 %4712, %4714
  %4716 = xor i64 %4712, %4693
  %4717 = add nuw nsw i64 %4715, %4716
  %4718 = icmp eq i64 %4717, 2
  %4719 = zext i1 %4718 to i8
  store i8 %4719, i8* %64, align 1
  %4720 = load i64, i64* %RBP.i, align 8
  %4721 = add i64 %4720, -52
  %4722 = add i64 %4638, 58
  store i64 %4722, i64* %3, align 8
  %4723 = inttoptr i64 %4721 to i32*
  %4724 = load i32, i32* %4723, align 4
  %4725 = sext i32 %4724 to i64
  %4726 = mul nsw i64 %4725, 520
  store i64 %4726, i64* %RCX.i1835, align 8
  %4727 = lshr i64 %4726, 63
  %4728 = add i64 %4726, %4694
  store i64 %4728, i64* %RAX.i1890, align 8
  %4729 = icmp ult i64 %4728, %4694
  %4730 = icmp ult i64 %4728, %4726
  %4731 = or i1 %4729, %4730
  %4732 = zext i1 %4731 to i8
  store i8 %4732, i8* %39, align 1
  %4733 = trunc i64 %4728 to i32
  %4734 = and i32 %4733, 255
  %4735 = tail call i32 @llvm.ctpop.i32(i32 %4734)
  %4736 = trunc i32 %4735 to i8
  %4737 = and i8 %4736, 1
  %4738 = xor i8 %4737, 1
  store i8 %4738, i8* %46, align 1
  %4739 = xor i64 %4726, %4694
  %4740 = xor i64 %4739, %4728
  %4741 = lshr i64 %4740, 4
  %4742 = trunc i64 %4741 to i8
  %4743 = and i8 %4742, 1
  store i8 %4743, i8* %52, align 1
  %4744 = icmp eq i64 %4728, 0
  %4745 = zext i1 %4744 to i8
  store i8 %4745, i8* %55, align 1
  %4746 = lshr i64 %4728, 63
  %4747 = trunc i64 %4746 to i8
  store i8 %4747, i8* %58, align 1
  %4748 = xor i64 %4746, %4712
  %4749 = xor i64 %4746, %4727
  %4750 = add nuw nsw i64 %4748, %4749
  %4751 = icmp eq i64 %4750, 2
  %4752 = zext i1 %4751 to i8
  store i8 %4752, i8* %64, align 1
  %4753 = add i64 %4720, -48
  %4754 = add i64 %4638, 72
  store i64 %4754, i64* %3, align 8
  %4755 = inttoptr i64 %4753 to i32*
  %4756 = load i32, i32* %4755, align 4
  %4757 = sext i32 %4756 to i64
  store i64 %4757, i64* %RCX.i1835, align 8
  %4758 = shl nsw i64 %4757, 3
  %4759 = add i64 %4758, %4728
  %4760 = add i64 %4638, 77
  store i64 %4760, i64* %3, align 8
  %4761 = load i64, i64* %149, align 1
  %4762 = inttoptr i64 %4759 to i64*
  store i64 %4761, i64* %4762, align 8
  %4763 = load i64, i64* %RBP.i, align 8
  %4764 = add i64 %4763, -192
  %4765 = load i64, i64* %3, align 8
  %4766 = add i64 %4765, 6
  store i64 %4766, i64* %3, align 8
  %4767 = inttoptr i64 %4764 to i32*
  %4768 = load i32, i32* %4767, align 4
  %4769 = add i32 %4768, 1
  %4770 = zext i32 %4769 to i64
  store i64 %4770, i64* %RAX.i1890, align 8
  %4771 = icmp eq i32 %4768, -1
  %4772 = icmp eq i32 %4769, 0
  %4773 = or i1 %4771, %4772
  %4774 = zext i1 %4773 to i8
  store i8 %4774, i8* %39, align 1
  %4775 = and i32 %4769, 255
  %4776 = tail call i32 @llvm.ctpop.i32(i32 %4775)
  %4777 = trunc i32 %4776 to i8
  %4778 = and i8 %4777, 1
  %4779 = xor i8 %4778, 1
  store i8 %4779, i8* %46, align 1
  %4780 = xor i32 %4769, %4768
  %4781 = lshr i32 %4780, 4
  %4782 = trunc i32 %4781 to i8
  %4783 = and i8 %4782, 1
  store i8 %4783, i8* %52, align 1
  %4784 = zext i1 %4772 to i8
  store i8 %4784, i8* %55, align 1
  %4785 = lshr i32 %4769, 31
  %4786 = trunc i32 %4785 to i8
  store i8 %4786, i8* %58, align 1
  %4787 = lshr i32 %4768, 31
  %4788 = xor i32 %4785, %4787
  %4789 = add nuw nsw i32 %4788, %4785
  %4790 = icmp eq i32 %4789, 2
  %4791 = zext i1 %4790 to i8
  store i8 %4791, i8* %64, align 1
  %4792 = add i64 %4765, 15
  store i64 %4792, i64* %3, align 8
  store i32 %4769, i32* %4767, align 4
  %4793 = load i64, i64* %3, align 8
  %4794 = add i64 %4793, -3219
  store i64 %4794, i64* %3, align 8
  br label %block_.L_40159a

block_.L_402232:                                  ; preds = %block_.L_40159a
  %4795 = add i64 %306, -188
  %4796 = add i64 %342, 11
  store i64 %4796, i64* %3, align 8
  %4797 = inttoptr i64 %4795 to i32*
  %4798 = load i32, i32* %4797, align 4
  %4799 = add i32 %4798, 1
  %4800 = zext i32 %4799 to i64
  store i64 %4800, i64* %RAX.i1890, align 8
  %4801 = icmp eq i32 %4798, -1
  %4802 = icmp eq i32 %4799, 0
  %4803 = or i1 %4801, %4802
  %4804 = zext i1 %4803 to i8
  store i8 %4804, i8* %39, align 1
  %4805 = and i32 %4799, 255
  %4806 = tail call i32 @llvm.ctpop.i32(i32 %4805)
  %4807 = trunc i32 %4806 to i8
  %4808 = and i8 %4807, 1
  %4809 = xor i8 %4808, 1
  store i8 %4809, i8* %46, align 1
  %4810 = xor i32 %4799, %4798
  %4811 = lshr i32 %4810, 4
  %4812 = trunc i32 %4811 to i8
  %4813 = and i8 %4812, 1
  store i8 %4813, i8* %52, align 1
  %4814 = zext i1 %4802 to i8
  store i8 %4814, i8* %55, align 1
  %4815 = lshr i32 %4799, 31
  %4816 = trunc i32 %4815 to i8
  store i8 %4816, i8* %58, align 1
  %4817 = lshr i32 %4798, 31
  %4818 = xor i32 %4815, %4817
  %4819 = add nuw nsw i32 %4818, %4815
  %4820 = icmp eq i32 %4819, 2
  %4821 = zext i1 %4820 to i8
  store i8 %4821, i8* %64, align 1
  %4822 = add i64 %342, 20
  store i64 %4822, i64* %3, align 8
  store i32 %4799, i32* %4797, align 4
  %4823 = load i64, i64* %3, align 8
  %4824 = add i64 %4823, -3269
  store i64 %4824, i64* %3, align 8
  br label %block_.L_401581

block_.L_40224b:                                  ; preds = %block_.L_401581
  %4825 = load i64, i64* %6, align 8
  %4826 = add i64 %4825, 56
  store i64 %4826, i64* %6, align 8
  %4827 = icmp ugt i64 %4825, -57
  %4828 = zext i1 %4827 to i8
  store i8 %4828, i8* %39, align 1
  %4829 = trunc i64 %4826 to i32
  %4830 = and i32 %4829, 255
  %4831 = tail call i32 @llvm.ctpop.i32(i32 %4830)
  %4832 = trunc i32 %4831 to i8
  %4833 = and i8 %4832, 1
  %4834 = xor i8 %4833, 1
  store i8 %4834, i8* %46, align 1
  %4835 = xor i64 %4825, 16
  %4836 = xor i64 %4835, %4826
  %4837 = lshr i64 %4836, 4
  %4838 = trunc i64 %4837 to i8
  %4839 = and i8 %4838, 1
  store i8 %4839, i8* %52, align 1
  %4840 = icmp eq i64 %4826, 0
  %4841 = zext i1 %4840 to i8
  store i8 %4841, i8* %55, align 1
  %4842 = lshr i64 %4826, 63
  %4843 = trunc i64 %4842 to i8
  store i8 %4843, i8* %58, align 1
  %4844 = lshr i64 %4825, 63
  %4845 = xor i64 %4842, %4844
  %4846 = add nuw nsw i64 %4845, %4842
  %4847 = icmp eq i64 %4846, 2
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %64, align 1
  %4849 = add i64 %301, 5
  store i64 %4849, i64* %3, align 8
  %4850 = add i64 %4825, 64
  %4851 = inttoptr i64 %4826 to i64*
  %4852 = load i64, i64* %4851, align 8
  store i64 %4852, i64* %RBX.i1895, align 8
  store i64 %4850, i64* %6, align 8
  %4853 = add i64 %301, 7
  store i64 %4853, i64* %3, align 8
  %4854 = add i64 %4825, 72
  %4855 = inttoptr i64 %4850 to i64*
  %4856 = load i64, i64* %4855, align 8
  store i64 %4856, i64* %R12.i1897, align 8
  store i64 %4854, i64* %6, align 8
  %4857 = add i64 %301, 9
  store i64 %4857, i64* %3, align 8
  %4858 = add i64 %4825, 80
  %4859 = inttoptr i64 %4854 to i64*
  %4860 = load i64, i64* %4859, align 8
  store i64 %4860, i64* %R13.i1899, align 8
  store i64 %4858, i64* %6, align 8
  %4861 = add i64 %301, 11
  store i64 %4861, i64* %3, align 8
  %4862 = add i64 %4825, 88
  %4863 = inttoptr i64 %4858 to i64*
  %4864 = load i64, i64* %4863, align 8
  store i64 %4864, i64* %R14.i1901, align 8
  store i64 %4862, i64* %6, align 8
  %4865 = add i64 %301, 13
  store i64 %4865, i64* %3, align 8
  %4866 = add i64 %4825, 96
  %4867 = inttoptr i64 %4862 to i64*
  %4868 = load i64, i64* %4867, align 8
  store i64 %4868, i64* %R15.i1903, align 8
  store i64 %4866, i64* %6, align 8
  %4869 = add i64 %301, 14
  store i64 %4869, i64* %3, align 8
  %4870 = add i64 %4825, 104
  %4871 = inttoptr i64 %4866 to i64*
  %4872 = load i64, i64* %4871, align 8
  store i64 %4872, i64* %RBP.i, align 8
  store i64 %4870, i64* %6, align 8
  %4873 = add i64 %301, 15
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4870 to i64*
  %4875 = load i64, i64* %4874, align 8
  store i64 %4875, i64* %3, align 8
  %4876 = add i64 %4825, 112
  store i64 %4876, i64* %6, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_pushq__r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_subq__0x38___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -56
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 56
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x58__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x50__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x48__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x40__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x38__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x30__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x28__rbp____r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r13__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %R13, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r12__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %R12, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40224b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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
define %struct.Memory* @routine_jge_.L_402232(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401913(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xbc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_imulq__0x8408___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movslq_MINUS0xc0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_imulq__0x208___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
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
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_subsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
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
define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %6 to i64*
  store i64 %10, i64* %11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd___rax__rcx_8____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4015b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401f52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_jmpq_.L_401c20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40159a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_402237(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401581(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x38___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 56
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -57
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
define %struct.Memory* @routine_popq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
attributes #1 = { alwaysinline nounwind }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
