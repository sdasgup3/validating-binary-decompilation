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

declare %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @autohelperpat142(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15.i373 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R15.i373, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i371 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %17 = load i64, i64* %R14.i371, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 2
  store i64 %19, i64* %3, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13.i369 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %23 = load i64, i64* %R13.i369, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 2
  store i64 %25, i64* %3, align 8
  %26 = add i64 %7, -32
  %27 = inttoptr i64 %26 to i64*
  store i64 %23, i64* %27, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12.i367 = getelementptr inbounds %union.anon, %union.anon* %28, i64 0, i32 0
  %29 = load i64, i64* %R12.i367, align 8
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 2
  store i64 %31, i64* %3, align 8
  %32 = add i64 %7, -40
  %33 = inttoptr i64 %32 to i64*
  store i64 %29, i64* %33, align 8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i365 = getelementptr inbounds %union.anon, %union.anon* %34, i64 0, i32 0
  %35 = load i64, i64* %RBX.i365, align 8
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  %38 = add i64 %7, -48
  %39 = inttoptr i64 %38 to i64*
  store i64 %35, i64* %39, align 8
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %7, -168
  store i64 %41, i64* %6, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i360 = bitcast %union.anon* %48 to i32*
  %RAX.i361 = getelementptr inbounds %union.anon, %union.anon* %48, i64 0, i32 0
  store i64 0, i64* %RAX.i361, align 8
  store i8 0, i8* %42, align 1
  store i8 1, i8* %43, align 1
  store i8 1, i8* %45, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %44, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i358 = bitcast %union.anon* %49 to i32*
  %50 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  store i64 3, i64* %50, align 8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -44
  %54 = load i32, i32* %EDI.i, align 4
  %55 = add i64 %40, 15
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i353 = bitcast %union.anon* %57 to i32*
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -48
  %60 = load i32, i32* %ESI.i353, align 4
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i350 = bitcast %union.anon* %64 to i32*
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -52
  %67 = load i32, i32* %EDX.i350, align 4
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 3
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %66 to i32*
  store i32 %67, i32* %70, align 4
  %71 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i347 = bitcast %union.anon* %71 to i32*
  %72 = load i64, i64* %RBP.i, align 8
  %73 = add i64 %72, -56
  %74 = load i32, i32* %ECX.i347, align 4
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 3
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %77, align 4
  %R9.i345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -44
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 4
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %79 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %R9.i345, align 8
  %RCX.i341 = getelementptr inbounds %union.anon, %union.anon* %71, i64 0, i32 0
  %85 = shl nsw i64 %84, 2
  %86 = add nsw i64 %85, 11904752
  %87 = add i64 %80, 12
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %86 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %RCX.i341, align 8
  %91 = add i64 %78, -48
  %92 = add i64 %80, 15
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = add i32 %94, %89
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RCX.i341, align 8
  %97 = icmp ult i32 %95, %89
  %98 = icmp ult i32 %95, %94
  %99 = or i1 %97, %98
  %100 = zext i1 %99 to i8
  store i8 %100, i8* %42, align 1
  %101 = and i32 %95, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101)
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %43, align 1
  %106 = xor i32 %94, %89
  %107 = xor i32 %106, %95
  %108 = lshr i32 %107, 4
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  store i8 %110, i8* %44, align 1
  %111 = icmp eq i32 %95, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %45, align 1
  %113 = lshr i32 %95, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %46, align 1
  %115 = lshr i32 %89, 31
  %116 = lshr i32 %94, 31
  %117 = xor i32 %113, %115
  %118 = xor i32 %113, %116
  %119 = add nuw nsw i32 %117, %118
  %120 = icmp eq i32 %119, 2
  %121 = zext i1 %120 to i8
  store i8 %121, i8* %47, align 1
  %122 = add i64 %78, -60
  %123 = add i64 %80, 18
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  store i32 %95, i32* %124, align 4
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -44
  %127 = load i64, i64* %3, align 8
  %128 = add i64 %127, 4
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %126 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %R9.i345, align 8
  %132 = shl nsw i64 %131, 2
  %133 = add nsw i64 %132, 11904784
  %134 = add i64 %127, 12
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RCX.i341, align 8
  %138 = add i64 %125, -48
  %139 = add i64 %127, 15
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, %136
  %143 = zext i32 %142 to i64
  store i64 %143, i64* %RCX.i341, align 8
  %144 = icmp ult i32 %142, %136
  %145 = icmp ult i32 %142, %141
  %146 = or i1 %144, %145
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %42, align 1
  %148 = and i32 %142, 255
  %149 = tail call i32 @llvm.ctpop.i32(i32 %148)
  %150 = trunc i32 %149 to i8
  %151 = and i8 %150, 1
  %152 = xor i8 %151, 1
  store i8 %152, i8* %43, align 1
  %153 = xor i32 %141, %136
  %154 = xor i32 %153, %142
  %155 = lshr i32 %154, 4
  %156 = trunc i32 %155 to i8
  %157 = and i8 %156, 1
  store i8 %157, i8* %44, align 1
  %158 = icmp eq i32 %142, 0
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %45, align 1
  %160 = lshr i32 %142, 31
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %46, align 1
  %162 = lshr i32 %136, 31
  %163 = lshr i32 %141, 31
  %164 = xor i32 %160, %162
  %165 = xor i32 %160, %163
  %166 = add nuw nsw i32 %164, %165
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %47, align 1
  %169 = add i64 %125, -64
  %170 = add i64 %127, 18
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  store i32 %142, i32* %171, align 4
  %172 = load i64, i64* %RBP.i, align 8
  %173 = add i64 %172, -44
  %174 = load i64, i64* %3, align 8
  %175 = add i64 %174, 4
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %173 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %R9.i345, align 8
  %179 = shl nsw i64 %178, 2
  %180 = add nsw i64 %179, 11905968
  %181 = add i64 %174, 12
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = zext i32 %183 to i64
  store i64 %184, i64* %RCX.i341, align 8
  %185 = add i64 %172, -48
  %186 = add i64 %174, 15
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = add i32 %188, %183
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RCX.i341, align 8
  %191 = icmp ult i32 %189, %183
  %192 = icmp ult i32 %189, %188
  %193 = or i1 %191, %192
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %42, align 1
  %195 = and i32 %189, 255
  %196 = tail call i32 @llvm.ctpop.i32(i32 %195)
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  %199 = xor i8 %198, 1
  store i8 %199, i8* %43, align 1
  %200 = xor i32 %188, %183
  %201 = xor i32 %200, %189
  %202 = lshr i32 %201, 4
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  store i8 %204, i8* %44, align 1
  %205 = icmp eq i32 %189, 0
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %45, align 1
  %207 = lshr i32 %189, 31
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %46, align 1
  %209 = lshr i32 %183, 31
  %210 = lshr i32 %188, 31
  %211 = xor i32 %207, %209
  %212 = xor i32 %207, %210
  %213 = add nuw nsw i32 %211, %212
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %47, align 1
  %216 = add i64 %172, -68
  %217 = add i64 %174, 18
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %216 to i32*
  store i32 %189, i32* %218, align 4
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -44
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 4
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %220 to i32*
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  store i64 %225, i64* %R9.i345, align 8
  %226 = shl nsw i64 %225, 2
  %227 = add nsw i64 %226, 11902416
  %228 = add i64 %221, 12
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %227 to i32*
  %230 = load i32, i32* %229, align 4
  %231 = zext i32 %230 to i64
  store i64 %231, i64* %RCX.i341, align 8
  %232 = add i64 %219, -48
  %233 = add i64 %221, 15
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = add i32 %235, %230
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RCX.i341, align 8
  %238 = icmp ult i32 %236, %230
  %239 = icmp ult i32 %236, %235
  %240 = or i1 %238, %239
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %42, align 1
  %242 = and i32 %236, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %43, align 1
  %247 = xor i32 %235, %230
  %248 = xor i32 %247, %236
  %249 = lshr i32 %248, 4
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  store i8 %251, i8* %44, align 1
  %252 = icmp eq i32 %236, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %45, align 1
  %254 = lshr i32 %236, 31
  %255 = trunc i32 %254 to i8
  store i8 %255, i8* %46, align 1
  %256 = lshr i32 %230, 31
  %257 = lshr i32 %235, 31
  %258 = xor i32 %254, %256
  %259 = xor i32 %254, %257
  %260 = add nuw nsw i32 %258, %259
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %47, align 1
  %263 = add i64 %219, -72
  %264 = add i64 %221, 18
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %263 to i32*
  store i32 %236, i32* %265, align 4
  %266 = load i64, i64* %RBP.i, align 8
  %267 = add i64 %266, -44
  %268 = load i64, i64* %3, align 8
  %269 = add i64 %268, 4
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  store i64 %272, i64* %R9.i345, align 8
  %273 = shl nsw i64 %272, 2
  %274 = add nsw i64 %273, 11903632
  %275 = add i64 %268, 12
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = zext i32 %277 to i64
  store i64 %278, i64* %RCX.i341, align 8
  %279 = add i64 %266, -48
  %280 = add i64 %268, 15
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = add i32 %282, %277
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RCX.i341, align 8
  %285 = icmp ult i32 %283, %277
  %286 = icmp ult i32 %283, %282
  %287 = or i1 %285, %286
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %42, align 1
  %289 = and i32 %283, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %43, align 1
  %294 = xor i32 %282, %277
  %295 = xor i32 %294, %283
  %296 = lshr i32 %295, 4
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  store i8 %298, i8* %44, align 1
  %299 = icmp eq i32 %283, 0
  %300 = zext i1 %299 to i8
  store i8 %300, i8* %45, align 1
  %301 = lshr i32 %283, 31
  %302 = trunc i32 %301 to i8
  store i8 %302, i8* %46, align 1
  %303 = lshr i32 %277, 31
  %304 = lshr i32 %282, 31
  %305 = xor i32 %301, %303
  %306 = xor i32 %301, %304
  %307 = add nuw nsw i32 %305, %306
  %308 = icmp eq i32 %307, 2
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %47, align 1
  %310 = add i64 %266, -76
  %311 = add i64 %268, 18
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i32*
  store i32 %283, i32* %312, align 4
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -44
  %315 = load i64, i64* %3, align 8
  %316 = add i64 %315, 4
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %314 to i32*
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  store i64 %319, i64* %R9.i345, align 8
  %320 = shl nsw i64 %319, 2
  %321 = add nsw i64 %320, 11902384
  %322 = add i64 %315, 12
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %321 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = zext i32 %324 to i64
  store i64 %325, i64* %RCX.i341, align 8
  %326 = add i64 %313, -48
  %327 = add i64 %315, 15
  store i64 %327, i64* %3, align 8
  %328 = inttoptr i64 %326 to i32*
  %329 = load i32, i32* %328, align 4
  %330 = add i32 %329, %324
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RCX.i341, align 8
  %332 = icmp ult i32 %330, %324
  %333 = icmp ult i32 %330, %329
  %334 = or i1 %332, %333
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %42, align 1
  %336 = and i32 %330, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %43, align 1
  %341 = xor i32 %329, %324
  %342 = xor i32 %341, %330
  %343 = lshr i32 %342, 4
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %44, align 1
  %346 = icmp eq i32 %330, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %45, align 1
  %348 = lshr i32 %330, 31
  %349 = trunc i32 %348 to i8
  store i8 %349, i8* %46, align 1
  %350 = lshr i32 %324, 31
  %351 = lshr i32 %329, 31
  %352 = xor i32 %348, %350
  %353 = xor i32 %348, %351
  %354 = add nuw nsw i32 %352, %353
  %355 = icmp eq i32 %354, 2
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %47, align 1
  %357 = add i64 %313, -80
  %358 = add i64 %315, 18
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i32*
  store i32 %330, i32* %359, align 4
  %360 = load i64, i64* %RBP.i, align 8
  %361 = add i64 %360, -44
  %362 = load i64, i64* %3, align 8
  %363 = add i64 %362, 4
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %361 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  store i64 %366, i64* %R9.i345, align 8
  %367 = shl nsw i64 %366, 2
  %368 = add nsw i64 %367, 11902448
  %369 = add i64 %362, 12
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RCX.i341, align 8
  %373 = add i64 %360, -48
  %374 = add i64 %362, 15
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = add i32 %376, %371
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RCX.i341, align 8
  %379 = icmp ult i32 %377, %371
  %380 = icmp ult i32 %377, %376
  %381 = or i1 %379, %380
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %42, align 1
  %383 = and i32 %377, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %43, align 1
  %388 = xor i32 %376, %371
  %389 = xor i32 %388, %377
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %44, align 1
  %393 = icmp eq i32 %377, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %45, align 1
  %395 = lshr i32 %377, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %46, align 1
  %397 = lshr i32 %371, 31
  %398 = lshr i32 %376, 31
  %399 = xor i32 %395, %397
  %400 = xor i32 %395, %398
  %401 = add nuw nsw i32 %399, %400
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %47, align 1
  %404 = add i64 %360, -84
  %405 = add i64 %362, 18
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  store i32 %377, i32* %406, align 4
  %407 = load i64, i64* %RBP.i, align 8
  %408 = add i64 %407, -44
  %409 = load i64, i64* %3, align 8
  %410 = add i64 %409, 4
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %408 to i32*
  %412 = load i32, i32* %411, align 4
  %413 = sext i32 %412 to i64
  store i64 %413, i64* %R9.i345, align 8
  %414 = shl nsw i64 %413, 2
  %415 = add nsw i64 %414, 11901264
  %416 = add i64 %409, 12
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RCX.i341, align 8
  %420 = add i64 %407, -48
  %421 = add i64 %409, 15
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = add i32 %423, %418
  %425 = zext i32 %424 to i64
  store i64 %425, i64* %RCX.i341, align 8
  %426 = icmp ult i32 %424, %418
  %427 = icmp ult i32 %424, %423
  %428 = or i1 %426, %427
  %429 = zext i1 %428 to i8
  store i8 %429, i8* %42, align 1
  %430 = and i32 %424, 255
  %431 = tail call i32 @llvm.ctpop.i32(i32 %430)
  %432 = trunc i32 %431 to i8
  %433 = and i8 %432, 1
  %434 = xor i8 %433, 1
  store i8 %434, i8* %43, align 1
  %435 = xor i32 %423, %418
  %436 = xor i32 %435, %424
  %437 = lshr i32 %436, 4
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  store i8 %439, i8* %44, align 1
  %440 = icmp eq i32 %424, 0
  %441 = zext i1 %440 to i8
  store i8 %441, i8* %45, align 1
  %442 = lshr i32 %424, 31
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %46, align 1
  %444 = lshr i32 %418, 31
  %445 = lshr i32 %423, 31
  %446 = xor i32 %442, %444
  %447 = xor i32 %442, %445
  %448 = add nuw nsw i32 %446, %447
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %47, align 1
  %451 = add i64 %407, -88
  %452 = add i64 %409, 18
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  store i32 %424, i32* %453, align 4
  %454 = load i64, i64* %RBP.i, align 8
  %455 = add i64 %454, -44
  %456 = load i64, i64* %3, align 8
  %457 = add i64 %456, 4
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %455 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = sext i32 %459 to i64
  store i64 %460, i64* %R9.i345, align 8
  %461 = shl nsw i64 %460, 2
  %462 = add nsw i64 %461, 11903568
  %463 = add i64 %456, 12
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %462 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RCX.i341, align 8
  %467 = add i64 %454, -48
  %468 = add i64 %456, 15
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = add i32 %470, %465
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RCX.i341, align 8
  %473 = icmp ult i32 %471, %465
  %474 = icmp ult i32 %471, %470
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %42, align 1
  %477 = and i32 %471, 255
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %43, align 1
  %482 = xor i32 %470, %465
  %483 = xor i32 %482, %471
  %484 = lshr i32 %483, 4
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  store i8 %486, i8* %44, align 1
  %487 = icmp eq i32 %471, 0
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %45, align 1
  %489 = lshr i32 %471, 31
  %490 = trunc i32 %489 to i8
  store i8 %490, i8* %46, align 1
  %491 = lshr i32 %465, 31
  %492 = lshr i32 %470, 31
  %493 = xor i32 %489, %491
  %494 = xor i32 %489, %492
  %495 = add nuw nsw i32 %493, %494
  %496 = icmp eq i32 %495, 2
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %47, align 1
  %498 = add i64 %454, -92
  %499 = add i64 %456, 18
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  store i32 %471, i32* %500, align 4
  %RDI.i237 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %501 = load i64, i64* %RBP.i, align 8
  %502 = add i64 %501, -52
  %503 = load i64, i64* %3, align 8
  %504 = add i64 %503, 3
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %502 to i32*
  %506 = load i32, i32* %505, align 4
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RDI.i237, align 8
  %508 = add i64 %501, -48
  %509 = add i64 %503, 6
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RCX.i341, align 8
  %RDX.i231 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %513 = add i64 %501, -64
  %514 = add i64 %503, 9
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = zext i32 %516 to i64
  store i64 %517, i64* %RDX.i231, align 8
  %518 = add i64 %501, -60
  %519 = add i64 %503, 13
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i32*
  %521 = load i32, i32* %520, align 4
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %R9.i345, align 8
  %RSI.i225 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %523 = add i64 %503, 16
  store i64 %523, i64* %3, align 8
  %524 = load i32, i32* %515, align 4
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RSI.i225, align 8
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i222 = bitcast %union.anon* %526 to i32*
  %527 = getelementptr inbounds %union.anon, %union.anon* %526, i64 0, i32 0
  %528 = add i64 %501, -92
  %529 = add i64 %503, 20
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %527, align 8
  %533 = add i64 %501, -96
  %534 = add i64 %503, 23
  store i64 %534, i64* %3, align 8
  %535 = inttoptr i64 %533 to i32*
  store i32 %524, i32* %535, align 4
  %536 = load i32, i32* %EAX.i360, align 4
  %537 = zext i32 %536 to i64
  %538 = load i64, i64* %3, align 8
  store i64 %537, i64* %RSI.i225, align 8
  %539 = load i64, i64* %RBP.i, align 8
  %540 = add i64 %539, -100
  %541 = load i32, i32* %EDX.i350, align 4
  %542 = add i64 %538, 5
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %540 to i32*
  store i32 %541, i32* %543, align 4
  %544 = load i32, i32* %R8D.i358, align 4
  %545 = zext i32 %544 to i64
  %546 = load i64, i64* %3, align 8
  store i64 %545, i64* %RDX.i231, align 8
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -100
  %549 = add i64 %546, 7
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i32*
  %551 = load i32, i32* %550, align 4
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %50, align 8
  %553 = add i64 %547, -96
  %554 = add i64 %546, 10
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %553 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RAX.i361, align 8
  %558 = bitcast i64* %6 to i32**
  %559 = load i32*, i32** %558, align 8
  %560 = add i64 %546, 13
  store i64 %560, i64* %3, align 8
  store i32 %556, i32* %559, align 4
  %561 = load i64, i64* %6, align 8
  %562 = add i64 %561, 8
  %563 = load i32, i32* %R10D.i222, align 4
  %564 = load i64, i64* %3, align 8
  %565 = add i64 %564, 5
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %562 to i32*
  store i32 %563, i32* %566, align 4
  %AL.i197 = bitcast %union.anon* %48 to i8*
  %567 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i197, align 1
  %568 = add i64 %567, -336869
  %569 = add i64 %567, 7
  %570 = load i64, i64* %6, align 8
  %571 = add i64 %570, -8
  %572 = inttoptr i64 %571 to i64*
  store i64 %569, i64* %572, align 8
  store i64 %571, i64* %6, align 8
  store i64 %568, i64* %3, align 8
  %call2_4ca897 = tail call %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* %0, i64 %568, %struct.Memory* %2)
  %573 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i341, align 8
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11B.i191 = bitcast %union.anon* %574 to i8*
  store i8 0, i8* %R11B.i191, align 1
  %575 = load i32, i32* %EAX.i360, align 4
  store i8 0, i8* %42, align 1
  %576 = and i32 %575, 255
  %577 = tail call i32 @llvm.ctpop.i32(i32 %576)
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  %580 = xor i8 %579, 1
  store i8 %580, i8* %43, align 1
  store i8 0, i8* %44, align 1
  %581 = icmp eq i32 %575, 0
  %582 = zext i1 %581 to i8
  store i8 %582, i8* %45, align 1
  %583 = lshr i32 %575, 31
  %584 = trunc i32 %583 to i8
  store i8 %584, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -101
  %587 = add i64 %573, 12
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i8*
  store i8 0, i8* %588, align 1
  %589 = load i64, i64* %3, align 8
  %590 = add i64 %589, 276
  %591 = add i64 %589, 6
  %592 = load i8, i8* %45, align 1
  %593 = icmp eq i8 %592, 0
  %594 = select i1 %593, i64 %590, i64 %591
  store i64 %594, i64* %3, align 8
  br i1 %593, label %block_.L_4ca9bc, label %block_4ca8ae

block_4ca8ae:                                     ; preds = %entry
  store i64 1, i64* %RSI.i225, align 8
  store i64 4, i64* %RDX.i231, align 8
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -52
  %597 = add i64 %594, 13
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %RDI.i237, align 8
  %601 = add i64 %595, -48
  %602 = add i64 %594, 16
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RCX.i341, align 8
  %606 = add i64 %595, -60
  %607 = add i64 %594, 20
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = zext i32 %609 to i64
  store i64 %610, i64* %50, align 8
  %611 = add i64 %595, -64
  %612 = add i64 %594, 24
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %R9.i345, align 8
  %616 = add i64 %595, -68
  %617 = add i64 %594, 27
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RAX.i361, align 8
  %621 = add i64 %594, 31
  store i64 %621, i64* %3, align 8
  %622 = load i32, i32* %608, align 4
  %623 = zext i32 %622 to i64
  store i64 %623, i64* %527, align 8
  %R11D.i160 = bitcast %union.anon* %574 to i32*
  %624 = getelementptr inbounds %union.anon, %union.anon* %574, i64 0, i32 0
  %625 = add i64 %594, 35
  store i64 %625, i64* %3, align 8
  %626 = load i32, i32* %618, align 4
  %627 = zext i32 %626 to i64
  store i64 %627, i64* %624, align 8
  %628 = load i32*, i32** %558, align 8
  %629 = add i64 %594, 38
  store i64 %629, i64* %3, align 8
  store i32 %619, i32* %628, align 4
  %630 = load i64, i64* %6, align 8
  %631 = add i64 %630, 8
  %632 = load i32, i32* %R10D.i222, align 4
  %633 = load i64, i64* %3, align 8
  %634 = add i64 %633, 5
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %631 to i32*
  store i32 %632, i32* %635, align 4
  %636 = load i64, i64* %6, align 8
  %637 = add i64 %636, 16
  %638 = load i32, i32* %R11D.i160, align 4
  %639 = load i64, i64* %3, align 8
  %640 = add i64 %639, 5
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %637 to i32*
  store i32 %638, i32* %641, align 4
  %642 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i197, align 1
  %643 = add i64 %642, -336942
  %644 = add i64 %642, 7
  %645 = load i64, i64* %6, align 8
  %646 = add i64 %645, -8
  %647 = inttoptr i64 %646 to i64*
  store i64 %644, i64* %647, align 8
  store i64 %646, i64* %6, align 8
  store i64 %643, i64* %3, align 8
  %call2_4ca8e0 = tail call %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* nonnull %0, i64 %643, %struct.Memory* %call2_4ca897)
  %648 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i341, align 8
  %BL.i142 = bitcast %union.anon* %34 to i8*
  store i8 0, i8* %BL.i142, align 1
  %649 = load i32, i32* %EAX.i360, align 4
  store i8 0, i8* %42, align 1
  %650 = and i32 %649, 255
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %43, align 1
  store i8 0, i8* %44, align 1
  %655 = icmp eq i32 %649, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %45, align 1
  %657 = lshr i32 %649, 31
  %658 = trunc i32 %657 to i8
  store i8 %658, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -101
  %661 = add i64 %648, 10
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i8*
  store i8 0, i8* %662, align 1
  %663 = load i64, i64* %3, align 8
  %664 = load i8, i8* %45, align 1
  %665 = icmp ne i8 %664, 0
  %.v = select i1 %665, i64 205, i64 6
  %666 = add i64 %663, %.v
  store i64 %666, i64* %3, align 8
  %cmpBr_4ca8ef = icmp eq i8 %664, 1
  br i1 %cmpBr_4ca8ef, label %block_.L_4ca9bc, label %block_4ca8f5

block_4ca8f5:                                     ; preds = %block_4ca8ae
  store i64 1, i64* %RSI.i225, align 8
  store i64 8, i64* %RDX.i231, align 8
  %667 = load i64, i64* %RBP.i, align 8
  %668 = add i64 %667, -52
  %669 = add i64 %666, 13
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RDI.i237, align 8
  %673 = add i64 %667, -48
  %674 = add i64 %666, 16
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %RCX.i341, align 8
  %678 = add i64 %667, -64
  %679 = add i64 %666, 20
  store i64 %679, i64* %3, align 8
  %680 = inttoptr i64 %678 to i32*
  %681 = load i32, i32* %680, align 4
  %682 = zext i32 %681 to i64
  store i64 %682, i64* %50, align 8
  %683 = add i64 %667, -60
  %684 = add i64 %666, 24
  store i64 %684, i64* %3, align 8
  %685 = inttoptr i64 %683 to i32*
  %686 = load i32, i32* %685, align 4
  %687 = zext i32 %686 to i64
  store i64 %687, i64* %R9.i345, align 8
  %688 = add i64 %667, -72
  %689 = add i64 %666, 27
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i32*
  %691 = load i32, i32* %690, align 4
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RAX.i361, align 8
  %693 = add i64 %667, -76
  %694 = add i64 %666, 31
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i32*
  %696 = load i32, i32* %695, align 4
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %527, align 8
  %698 = add i64 %667, -80
  %699 = add i64 %666, 35
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %624, align 8
  %703 = add i64 %667, -84
  %704 = add i64 %666, 38
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = zext i32 %706 to i64
  store i64 %707, i64* %RBX.i365, align 8
  %R14D.i106 = bitcast %union.anon* %16 to i32*
  %708 = add i64 %667, -88
  %709 = add i64 %666, 42
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %R14.i371, align 8
  %R15D.i103 = bitcast %union.anon* %11 to i32*
  %713 = add i64 %666, 46
  store i64 %713, i64* %3, align 8
  %714 = load i32, i32* %700, align 4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %R15.i373, align 8
  %R12D.i100 = bitcast %union.anon* %28 to i32*
  %716 = add i64 %666, 50
  store i64 %716, i64* %3, align 8
  %717 = load i32, i32* %710, align 4
  %718 = zext i32 %717 to i64
  store i64 %718, i64* %R12.i367, align 8
  %719 = load i32*, i32** %558, align 8
  %720 = add i64 %666, 53
  store i64 %720, i64* %3, align 8
  store i32 %691, i32* %719, align 4
  %721 = load i64, i64* %6, align 8
  %722 = add i64 %721, 8
  %723 = load i32, i32* %R10D.i222, align 4
  %724 = load i64, i64* %3, align 8
  %725 = add i64 %724, 5
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %722 to i32*
  store i32 %723, i32* %726, align 4
  %727 = load i64, i64* %6, align 8
  %728 = add i64 %727, 16
  %729 = load i32, i32* %R11D.i160, align 4
  %730 = load i64, i64* %3, align 8
  %731 = add i64 %730, 5
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %728 to i32*
  store i32 %729, i32* %732, align 4
  %EBX.i88 = bitcast %union.anon* %34 to i32*
  %733 = load i64, i64* %6, align 8
  %734 = add i64 %733, 24
  %735 = load i32, i32* %EBX.i88, align 4
  %736 = load i64, i64* %3, align 8
  %737 = add i64 %736, 4
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %734 to i32*
  store i32 %735, i32* %738, align 4
  %739 = load i64, i64* %6, align 8
  %740 = add i64 %739, 32
  %741 = load i32, i32* %R14D.i106, align 4
  %742 = load i64, i64* %3, align 8
  %743 = add i64 %742, 5
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %740 to i32*
  store i32 %741, i32* %744, align 4
  %745 = load i64, i64* %6, align 8
  %746 = add i64 %745, 40
  %747 = load i32, i32* %R15D.i103, align 4
  %748 = load i64, i64* %3, align 8
  %749 = add i64 %748, 5
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %746 to i32*
  store i32 %747, i32* %750, align 4
  %751 = load i64, i64* %6, align 8
  %752 = add i64 %751, 48
  %753 = load i32, i32* %R12D.i100, align 4
  %754 = load i64, i64* %3, align 8
  %755 = add i64 %754, 5
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %752 to i32*
  store i32 %753, i32* %756, align 4
  %757 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i197, align 1
  %758 = add i64 %757, -337047
  %759 = add i64 %757, 7
  %760 = load i64, i64* %6, align 8
  %761 = add i64 %760, -8
  %762 = inttoptr i64 %761 to i64*
  store i64 %759, i64* %762, align 8
  store i64 %761, i64* %6, align 8
  store i64 %758, i64* %3, align 8
  %call2_4ca949 = tail call %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* nonnull %0, i64 %758, %struct.Memory* %call2_4ca8e0)
  %763 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i341, align 8
  %R13B.i73 = bitcast %union.anon* %22 to i8*
  store i8 0, i8* %R13B.i73, align 1
  %764 = load i32, i32* %EAX.i360, align 4
  store i8 0, i8* %42, align 1
  %765 = and i32 %764, 255
  %766 = tail call i32 @llvm.ctpop.i32(i32 %765)
  %767 = trunc i32 %766 to i8
  %768 = and i8 %767, 1
  %769 = xor i8 %768, 1
  store i8 %769, i8* %43, align 1
  store i8 0, i8* %44, align 1
  %770 = icmp eq i32 %764, 0
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %45, align 1
  %772 = lshr i32 %764, 31
  %773 = trunc i32 %772 to i8
  store i8 %773, i8* %46, align 1
  store i8 0, i8* %47, align 1
  %774 = load i64, i64* %RBP.i, align 8
  %775 = add i64 %774, -101
  %776 = add i64 %763, 12
  store i64 %776, i64* %3, align 8
  %777 = inttoptr i64 %775 to i8*
  store i8 0, i8* %777, align 1
  %778 = load i64, i64* %3, align 8
  %779 = load i8, i8* %45, align 1
  %780 = icmp ne i8 %779, 0
  %.v3 = select i1 %780, i64 98, i64 6
  %781 = add i64 %778, %.v3
  store i64 %781, i64* %3, align 8
  %cmpBr_4ca95a = icmp eq i8 %779, 1
  br i1 %cmpBr_4ca95a, label %block_.L_4ca9bc, label %block_4ca960

block_4ca960:                                     ; preds = %block_4ca8f5
  store i64 0, i64* %RSI.i225, align 8
  store i8 0, i8* %42, align 1
  store i8 1, i8* %43, align 1
  store i8 1, i8* %45, align 1
  store i8 0, i8* %46, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %44, align 1
  store i64 7, i64* %RDX.i231, align 8
  %782 = load i64, i64* %RBP.i, align 8
  %783 = add i64 %782, -52
  %784 = add i64 %781, 10
  store i64 %784, i64* %3, align 8
  %785 = inttoptr i64 %783 to i32*
  %786 = load i32, i32* %785, align 4
  %787 = zext i32 %786 to i64
  store i64 %787, i64* %RDI.i237, align 8
  %788 = add i64 %782, -48
  %789 = add i64 %781, 13
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  %791 = load i32, i32* %790, align 4
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RCX.i341, align 8
  %793 = add i64 %782, -64
  %794 = add i64 %781, 17
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i32*
  %796 = load i32, i32* %795, align 4
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %50, align 8
  %798 = add i64 %782, -60
  %799 = add i64 %781, 21
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i32*
  %801 = load i32, i32* %800, align 4
  %802 = zext i32 %801 to i64
  store i64 %802, i64* %R9.i345, align 8
  %803 = add i64 %782, -72
  %804 = add i64 %781, 24
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = zext i32 %806 to i64
  store i64 %807, i64* %RAX.i361, align 8
  %808 = add i64 %782, -76
  %809 = add i64 %781, 28
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %527, align 8
  %813 = add i64 %782, -84
  %814 = add i64 %781, 32
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %624, align 8
  %818 = add i64 %782, -80
  %819 = add i64 %781, 35
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RBX.i365, align 8
  %823 = add i64 %781, 39
  store i64 %823, i64* %3, align 8
  %824 = load i32, i32* %815, align 4
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %R14.i371, align 8
  %826 = add i64 %782, -92
  %827 = add i64 %781, 43
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = zext i32 %829 to i64
  store i64 %830, i64* %R15.i373, align 8
  %831 = load i32*, i32** %558, align 8
  %832 = add i64 %781, 46
  store i64 %832, i64* %3, align 8
  store i32 %806, i32* %831, align 4
  %833 = load i64, i64* %6, align 8
  %834 = add i64 %833, 8
  %835 = load i32, i32* %R10D.i222, align 4
  %836 = load i64, i64* %3, align 8
  %837 = add i64 %836, 5
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %834 to i32*
  store i32 %835, i32* %838, align 4
  %839 = load i64, i64* %6, align 8
  %840 = add i64 %839, 16
  %841 = load i32, i32* %R11D.i160, align 4
  %842 = load i64, i64* %3, align 8
  %843 = add i64 %842, 5
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %840 to i32*
  store i32 %841, i32* %844, align 4
  %845 = load i64, i64* %6, align 8
  %846 = add i64 %845, 24
  %847 = load i32, i32* %EBX.i88, align 4
  %848 = load i64, i64* %3, align 8
  %849 = add i64 %848, 4
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %846 to i32*
  store i32 %847, i32* %850, align 4
  %851 = load i64, i64* %6, align 8
  %852 = add i64 %851, 32
  %853 = load i32, i32* %R14D.i106, align 4
  %854 = load i64, i64* %3, align 8
  %855 = add i64 %854, 5
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %852 to i32*
  store i32 %853, i32* %856, align 4
  %857 = load i64, i64* %6, align 8
  %858 = add i64 %857, 40
  %859 = load i32, i32* %R15D.i103, align 4
  %860 = load i64, i64* %3, align 8
  %861 = add i64 %860, 5
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %858 to i32*
  store i32 %859, i32* %862, align 4
  %863 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i197, align 1
  %864 = add i64 %863, -337142
  %865 = add i64 %863, 7
  %866 = load i64, i64* %6, align 8
  %867 = add i64 %866, -8
  %868 = inttoptr i64 %867 to i64*
  store i64 %865, i64* %868, align 8
  store i64 %867, i64* %6, align 8
  store i64 %864, i64* %3, align 8
  %call2_4ca9a8 = tail call %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* nonnull %0, i64 %864, %struct.Memory* %call2_4ca949)
  %869 = load i32, i32* %EAX.i360, align 4
  %870 = load i64, i64* %3, align 8
  %R12B.i21 = bitcast %union.anon* %28 to i8*
  %871 = icmp ne i32 %869, 0
  %872 = zext i1 %871 to i64
  %873 = xor i64 %872, 255
  %874 = trunc i64 %873 to i8
  store i8 %874, i8* %R12B.i21, align 1
  store i8 0, i8* %42, align 1
  %875 = trunc i64 %873 to i32
  %876 = tail call i32 @llvm.ctpop.i32(i32 %875)
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  store i8 %879, i8* %43, align 1
  store i8 0, i8* %45, align 1
  store i8 1, i8* %46, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %44, align 1
  %880 = load i64, i64* %RBP.i, align 8
  %881 = add i64 %880, -101
  %882 = add i64 %870, 15
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i8*
  store i8 %874, i8* %883, align 1
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4ca9bc

block_.L_4ca9bc:                                  ; preds = %block_4ca960, %block_4ca8f5, %block_4ca8ae, %entry
  %884 = phi i64 [ %590, %entry ], [ %666, %block_4ca8ae ], [ %781, %block_4ca8f5 ], [ %.pre, %block_4ca960 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4ca897, %entry ], [ %call2_4ca8e0, %block_4ca8ae ], [ %call2_4ca949, %block_4ca8f5 ], [ %call2_4ca9a8, %block_4ca960 ]
  %885 = load i64, i64* %RBP.i, align 8
  %886 = add i64 %885, -101
  %887 = add i64 %884, 3
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i8*
  %889 = load i8, i8* %888, align 1
  %890 = and i8 %889, 1
  %891 = zext i8 %890 to i64
  store i64 %891, i64* %RAX.i361, align 8
  %892 = load i64, i64* %6, align 8
  %893 = add i64 %892, 120
  store i64 %893, i64* %6, align 8
  %894 = icmp ugt i64 %892, -121
  %895 = zext i1 %894 to i8
  store i8 %895, i8* %42, align 1
  %896 = trunc i64 %893 to i32
  %897 = and i32 %896, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %43, align 1
  %902 = xor i64 %892, 16
  %903 = xor i64 %902, %893
  %904 = lshr i64 %903, 4
  %905 = trunc i64 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %44, align 1
  %907 = icmp eq i64 %893, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %45, align 1
  %909 = lshr i64 %893, 63
  %910 = trunc i64 %909 to i8
  store i8 %910, i8* %46, align 1
  %911 = lshr i64 %892, 63
  %912 = xor i64 %909, %911
  %913 = add nuw nsw i64 %912, %909
  %914 = icmp eq i64 %913, 2
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %47, align 1
  %916 = add i64 %884, 13
  store i64 %916, i64* %3, align 8
  %917 = add i64 %892, 128
  %918 = inttoptr i64 %893 to i64*
  %919 = load i64, i64* %918, align 8
  store i64 %919, i64* %RBX.i365, align 8
  store i64 %917, i64* %6, align 8
  %920 = add i64 %884, 15
  store i64 %920, i64* %3, align 8
  %921 = add i64 %892, 136
  %922 = inttoptr i64 %917 to i64*
  %923 = load i64, i64* %922, align 8
  store i64 %923, i64* %R12.i367, align 8
  store i64 %921, i64* %6, align 8
  %924 = add i64 %884, 17
  store i64 %924, i64* %3, align 8
  %925 = add i64 %892, 144
  %926 = inttoptr i64 %921 to i64*
  %927 = load i64, i64* %926, align 8
  store i64 %927, i64* %R13.i369, align 8
  store i64 %925, i64* %6, align 8
  %928 = add i64 %884, 19
  store i64 %928, i64* %3, align 8
  %929 = add i64 %892, 152
  %930 = inttoptr i64 %925 to i64*
  %931 = load i64, i64* %930, align 8
  store i64 %931, i64* %R14.i371, align 8
  store i64 %929, i64* %6, align 8
  %932 = add i64 %884, 21
  store i64 %932, i64* %3, align 8
  %933 = add i64 %892, 160
  %934 = inttoptr i64 %929 to i64*
  %935 = load i64, i64* %934, align 8
  store i64 %935, i64* %R15.i373, align 8
  store i64 %933, i64* %6, align 8
  %936 = add i64 %884, 22
  store i64 %936, i64* %3, align 8
  %937 = add i64 %892, 168
  %938 = inttoptr i64 %933 to i64*
  %939 = load i64, i64* %938, align 8
  store i64 %939, i64* %RBP.i, align 8
  store i64 %937, i64* %6, align 8
  %940 = add i64 %884, 23
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %937 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %3, align 8
  %943 = add i64 %892, 176
  store i64 %943, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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
define %struct.Memory* @routine_subq__0x78___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -120
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 120
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
define %struct.Memory* @routine_movl__0x3___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 3, i64* %3, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movl_0xb5a6f0___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11904752
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb5a710___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11904784
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb5abb0___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11905968
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb59dd0___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11902416
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb5a290___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11903632
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb59db0___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11902384
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb59df0___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11902448
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb59950___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11901264
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb5a250___r9_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11903568
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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
define %struct.Memory* @routine_movl__esi__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_movl__eax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_callq_.play_attack_defend2_n(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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
define %struct.Memory* @routine_movb__cl___r11b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R11B, align 1
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
define %struct.Memory* @routine_movb__r11b__MINUS0x65__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -101
  %6 = load i8, i8* %R11B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4ca9bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_movl__r11d__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___bl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %BL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__bl__MINUS0x65__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -101
  %6 = load i8, i8* %BL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4ca9bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____r12d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_movl__ebx__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 24
  %6 = load i32, i32* %EBX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d__0x20__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 32
  %6 = load i32, i32* %R14D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r15d__0x28__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 40
  %6 = load i32, i32* %R15D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r12d__0x30__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 48
  %6 = load i32, i32* %R12D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___r13b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R13B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r13b__MINUS0x65__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -101
  %6 = load i8, i8* %R13B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x7___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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
define %struct.Memory* @routine_setne__r12b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %R12B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___r12b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R12B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %R12B, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r12b__MINUS0x65__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -101
  %6 = load i8, i8* %R12B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x65__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -101
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = xor i8 %7, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl__al___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x78___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 120
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -121
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
attributes #1 = { alwaysinline }
attributes #2 = { norecurse nounwind }
attributes #3 = { nounwind }
