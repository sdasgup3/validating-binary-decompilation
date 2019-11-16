; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x4590ec_type = type <{ [8 x i8] }>
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
@G__0x4590ec = global %G__0x4590ec_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @AllocPlan7Body(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 32
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
  %RAX.i803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RAX.i803, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i801 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 111, i64* %RCX.i801, align 8
  %RDI.i798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i798, align 8
  %42 = add i64 %10, 26
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i795 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i795, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %RSI.i792 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -12
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 3
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  store i64 %57, i64* %RSI.i792, align 8
  %58 = add i64 %51, -8
  %59 = add i64 %53, 7
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %58 to i64*
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %RDI.i798, align 8
  %62 = add i64 %61, 136
  %63 = add i64 %53, 13
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %62 to i32*
  store i32 %56, i32* %64, align 4
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -12
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 3
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  %70 = load i32, i32* %69, align 4
  %71 = add i32 %70, 2
  %72 = icmp ugt i32 %70, -3
  %73 = zext i1 %72 to i8
  store i8 %73, i8* %14, align 1
  %74 = and i32 %71, 255
  %75 = tail call i32 @llvm.ctpop.i32(i32 %74)
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  store i8 %78, i8* %21, align 1
  %79 = xor i32 %71, %70
  %80 = lshr i32 %79, 4
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %26, align 1
  %83 = icmp eq i32 %71, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %29, align 1
  %85 = lshr i32 %71, 31
  %86 = trunc i32 %85 to i8
  store i8 %86, i8* %32, align 1
  %87 = lshr i32 %70, 31
  %88 = xor i32 %85, %87
  %89 = add nuw nsw i32 %88, %85
  %90 = icmp eq i32 %89, 2
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %38, align 1
  %92 = sext i32 %71 to i64
  %93 = add i64 %65, -32
  %94 = add i64 %67, 17
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  store i64 %92, i64* %95, align 8
  %96 = load i64, i64* %RAX.i803, align 8
  %97 = load i64, i64* %3, align 8
  store i64 %96, i64* %RDI.i798, align 8
  %ECX.i768 = bitcast %union.anon* %39 to i32*
  %98 = load i32, i32* %ECX.i768, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RSI.i792, align 8
  %RDX.i765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -32
  %102 = add i64 %97, 9
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i64*
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %RDX.i765, align 8
  %105 = add i64 %97, 82004
  %106 = add i64 %97, 14
  %107 = load i64, i64* %6, align 8
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %106, i64* %109, align 8
  store i64 %108, i64* %6, align 8
  store i64 %105, i64* %3, align 8
  %call2_432015 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %105, %struct.Memory* %2)
  %110 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 112, i64* %RSI.i792, align 8
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -8
  %113 = add i64 %110, 19
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i64*
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %RDX.i765, align 8
  %116 = add i64 %115, 24
  %117 = load i64, i64* %RAX.i803, align 8
  %118 = add i64 %110, 23
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %119, align 8
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -12
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %122, 3
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %121 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = add i32 %125, 2
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RCX.i801, align 8
  %128 = icmp ugt i32 %125, -3
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %14, align 1
  %130 = and i32 %126, 255
  %131 = tail call i32 @llvm.ctpop.i32(i32 %130)
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 1
  %134 = xor i8 %133, 1
  store i8 %134, i8* %21, align 1
  %135 = xor i32 %126, %125
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %26, align 1
  %139 = icmp eq i32 %126, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %29, align 1
  %141 = lshr i32 %126, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %32, align 1
  %143 = lshr i32 %125, 31
  %144 = xor i32 %141, %143
  %145 = add nuw nsw i32 %144, %141
  %146 = icmp eq i32 %145, 2
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %38, align 1
  %148 = sext i32 %126 to i64
  store i64 %148, i64* %RAX.i803, align 8
  store i64 %148, i64* %RDX.i765, align 8
  %149 = add i64 %122, 81967
  %150 = add i64 %122, 21
  %151 = load i64, i64* %6, align 8
  %152 = add i64 %151, -8
  %153 = inttoptr i64 %152 to i64*
  store i64 %150, i64* %153, align 8
  store i64 %152, i64* %6, align 8
  store i64 %149, i64* %3, align 8
  %call2_432041 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %149, %struct.Memory* %call2_432015)
  %154 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 113, i64* %RSI.i792, align 8
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -8
  %157 = add i64 %154, 19
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RDX.i765, align 8
  %160 = add i64 %159, 32
  %161 = load i64, i64* %RAX.i803, align 8
  %162 = add i64 %154, 23
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %163, align 8
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -12
  %166 = load i64, i64* %3, align 8
  %167 = add i64 %166, 3
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %165 to i32*
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %169, 2
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RCX.i801, align 8
  %172 = icmp ugt i32 %169, -3
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %14, align 1
  %174 = and i32 %170, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174)
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %21, align 1
  %179 = xor i32 %170, %169
  %180 = lshr i32 %179, 4
  %181 = trunc i32 %180 to i8
  %182 = and i8 %181, 1
  store i8 %182, i8* %26, align 1
  %183 = icmp eq i32 %170, 0
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %29, align 1
  %185 = lshr i32 %170, 31
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %32, align 1
  %187 = lshr i32 %169, 31
  %188 = xor i32 %185, %187
  %189 = add nuw nsw i32 %188, %185
  %190 = icmp eq i32 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %38, align 1
  %192 = sext i32 %170 to i64
  store i64 %192, i64* %RAX.i803, align 8
  store i64 %192, i64* %RDX.i765, align 8
  %193 = add i64 %166, 81923
  %194 = add i64 %166, 21
  %195 = load i64, i64* %6, align 8
  %196 = add i64 %195, -8
  %197 = inttoptr i64 %196 to i64*
  store i64 %194, i64* %197, align 8
  store i64 %196, i64* %6, align 8
  store i64 %193, i64* %3, align 8
  %call2_43206d = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %193, %struct.Memory* %call2_432041)
  %198 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 114, i64* %RSI.i792, align 8
  %199 = load i64, i64* %RBP.i, align 8
  %200 = add i64 %199, -8
  %201 = add i64 %198, 19
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i64*
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %RDX.i765, align 8
  %204 = add i64 %203, 40
  %205 = load i64, i64* %RAX.i803, align 8
  %206 = add i64 %198, 23
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %204 to i64*
  store i64 %205, i64* %207, align 8
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -12
  %210 = load i64, i64* %3, align 8
  %211 = add i64 %210, 3
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = add i32 %213, 1
  %215 = zext i32 %214 to i64
  store i64 %215, i64* %RCX.i801, align 8
  %216 = icmp eq i32 %214, 0
  %217 = zext i1 %216 to i8
  %218 = lshr i32 %214, 31
  %219 = trunc i32 %218 to i8
  %220 = sext i32 %214 to i64
  %221 = shl nsw i64 %220, 2
  store i64 %221, i64* %RAX.i803, align 8
  store i8 %219, i8* %14, align 1
  %222 = trunc i64 %221 to i32
  %223 = and i32 %222, 252
  %224 = tail call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  store i8 %227, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %217, i8* %29, align 1
  %228 = lshr i64 %220, 61
  %229 = trunc i64 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %221, i64* %RDX.i765, align 8
  %231 = add i64 %210, 81879
  %232 = add i64 %210, 21
  %233 = load i64, i64* %6, align 8
  %234 = add i64 %233, -8
  %235 = inttoptr i64 %234 to i64*
  store i64 %232, i64* %235, align 8
  store i64 %234, i64* %6, align 8
  store i64 %231, i64* %3, align 8
  %call2_432099 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %231, %struct.Memory* %call2_43206d)
  %236 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 116, i64* %RSI.i792, align 8
  %237 = load i64, i64* %RBP.i, align 8
  %238 = add i64 %237, -8
  %239 = add i64 %236, 19
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i64*
  %241 = load i64, i64* %240, align 8
  store i64 %241, i64* %RDX.i765, align 8
  %242 = add i64 %241, 72
  %243 = load i64, i64* %RAX.i803, align 8
  %244 = add i64 %236, 23
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %242 to i64*
  store i64 %243, i64* %245, align 8
  %246 = load i64, i64* %RBP.i, align 8
  %247 = add i64 %246, -12
  %248 = load i64, i64* %3, align 8
  %249 = add i64 %248, 4
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %247 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = shl nsw i64 %252, 3
  store i64 %253, i64* %RAX.i803, align 8
  %.lobit5 = lshr i32 %251, 31
  %254 = trunc i32 %.lobit5 to i8
  store i8 %254, i8* %14, align 1
  %255 = trunc i64 %253 to i32
  %256 = and i32 %255, 248
  %257 = tail call i32 @llvm.ctpop.i32(i32 %256)
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = xor i8 %259, 1
  store i8 %260, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %261 = icmp eq i32 %251, 0
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %29, align 1
  %263 = lshr i64 %252, 60
  %264 = trunc i64 %263 to i8
  %265 = and i8 %264, 1
  store i8 %265, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %253, i64* %RDX.i765, align 8
  %266 = add i64 %248, 81835
  %267 = add i64 %248, 16
  %268 = load i64, i64* %6, align 8
  %269 = add i64 %268, -8
  %270 = inttoptr i64 %269 to i64*
  store i64 %267, i64* %270, align 8
  store i64 %269, i64* %6, align 8
  store i64 %266, i64* %3, align 8
  %call2_4320c0 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %266, %struct.Memory* %call2_432099)
  %271 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 117, i64* %RSI.i792, align 8
  %272 = load i64, i64* %RBP.i, align 8
  %273 = add i64 %272, -8
  %274 = add i64 %271, 19
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %276, i64* %RDX.i765, align 8
  %277 = add i64 %276, 144
  %278 = load i64, i64* %RAX.i803, align 8
  %279 = add i64 %271, 26
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %277 to i64*
  store i64 %278, i64* %280, align 8
  %281 = load i64, i64* %RBP.i, align 8
  %282 = add i64 %281, -12
  %283 = load i64, i64* %3, align 8
  %284 = add i64 %283, 3
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %282 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = add i32 %286, 1
  %288 = zext i32 %287 to i64
  store i64 %288, i64* %RCX.i801, align 8
  %289 = icmp eq i32 %287, 0
  %290 = zext i1 %289 to i8
  %291 = lshr i32 %287, 31
  %292 = trunc i32 %291 to i8
  %293 = sext i32 %287 to i64
  %294 = shl nsw i64 %293, 3
  store i64 %294, i64* %RAX.i803, align 8
  store i8 %292, i8* %14, align 1
  %295 = trunc i64 %294 to i32
  %296 = and i32 %295, 248
  %297 = tail call i32 @llvm.ctpop.i32(i32 %296)
  %298 = trunc i32 %297 to i8
  %299 = and i8 %298, 1
  %300 = xor i8 %299, 1
  store i8 %300, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %290, i8* %29, align 1
  %301 = lshr i64 %293, 60
  %302 = trunc i64 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %294, i64* %RDX.i765, align 8
  %304 = add i64 %283, 81793
  %305 = add i64 %283, 21
  %306 = load i64, i64* %6, align 8
  %307 = add i64 %306, -8
  %308 = inttoptr i64 %307 to i64*
  store i64 %305, i64* %308, align 8
  store i64 %307, i64* %6, align 8
  store i64 %304, i64* %3, align 8
  %call2_4320ef = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %304, %struct.Memory* %call2_4320c0)
  %309 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 118, i64* %RSI.i792, align 8
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -8
  %312 = add i64 %309, 19
  store i64 %312, i64* %3, align 8
  %313 = inttoptr i64 %311 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %RDX.i765, align 8
  %315 = add i64 %314, 152
  %316 = load i64, i64* %RAX.i803, align 8
  %317 = add i64 %309, 26
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %315 to i64*
  store i64 %316, i64* %318, align 8
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -12
  %321 = load i64, i64* %3, align 8
  %322 = add i64 %321, 4
  store i64 %322, i64* %3, align 8
  %323 = inttoptr i64 %320 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = shl nsw i64 %325, 3
  store i64 %326, i64* %RAX.i803, align 8
  %.lobit7 = lshr i32 %324, 31
  %327 = trunc i32 %.lobit7 to i8
  store i8 %327, i8* %14, align 1
  %328 = trunc i64 %326 to i32
  %329 = and i32 %328, 248
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %334 = icmp eq i32 %324, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %29, align 1
  %336 = lshr i64 %325, 60
  %337 = trunc i64 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %326, i64* %RDX.i765, align 8
  %339 = add i64 %321, 81746
  %340 = add i64 %321, 16
  %341 = load i64, i64* %6, align 8
  %342 = add i64 %341, -8
  %343 = inttoptr i64 %342 to i64*
  store i64 %340, i64* %343, align 8
  store i64 %342, i64* %6, align 8
  store i64 %339, i64* %3, align 8
  %call2_432119 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %339, %struct.Memory* %call2_4320ef)
  %344 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 119, i64* %RSI.i792, align 8
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -8
  %347 = add i64 %344, 19
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %RDX.i765, align 8
  %350 = add i64 %349, 160
  %351 = load i64, i64* %RAX.i803, align 8
  %352 = add i64 %344, 26
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %350 to i64*
  store i64 %351, i64* %353, align 8
  %354 = load i64, i64* %RBP.i, align 8
  %355 = add i64 %354, -12
  %356 = load i64, i64* %3, align 8
  %357 = add i64 %356, 4
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %355 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = sext i32 %359 to i64
  %361 = mul nsw i64 %360, 7
  %362 = and i64 %361, 4294967295
  store i64 %362, i64* %RCX.i801, align 8
  %363 = trunc i64 %361 to i32
  %sext = mul i64 %360, 30064771072
  %364 = ashr exact i64 %sext, 32
  %365 = ashr exact i64 %sext, 30
  store i64 %365, i64* %RAX.i803, align 8
  %.lobit8 = lshr i32 %363, 31
  %366 = trunc i32 %.lobit8 to i8
  store i8 %366, i8* %14, align 1
  %367 = trunc i64 %365 to i32
  %368 = and i32 %367, 252
  %369 = tail call i32 @llvm.ctpop.i32(i32 %368)
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  %372 = xor i8 %371, 1
  store i8 %372, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %373 = icmp eq i32 %363, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %29, align 1
  %375 = lshr i64 %364, 61
  %376 = trunc i64 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %365, i64* %RDX.i765, align 8
  %378 = add i64 %356, 81704
  %379 = add i64 %356, 19
  %380 = load i64, i64* %6, align 8
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %379, i64* %382, align 8
  store i64 %381, i64* %6, align 8
  store i64 %378, i64* %3, align 8
  %call2_432146 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %378, %struct.Memory* %call2_432119)
  %383 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 120, i64* %RSI.i792, align 8
  %384 = load i64, i64* %RBP.i, align 8
  %385 = add i64 %384, -8
  %386 = add i64 %383, 19
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %RDX.i765, align 8
  %389 = add i64 %388, 144
  %390 = add i64 %383, 26
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  %392 = load i64, i64* %391, align 8
  store i64 %392, i64* %RDX.i765, align 8
  %393 = load i64, i64* %RAX.i803, align 8
  %394 = add i64 %383, 29
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %392 to i64*
  store i64 %393, i64* %395, align 8
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -12
  %398 = load i64, i64* %3, align 8
  %399 = add i64 %398, 3
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %397 to i32*
  %401 = load i32, i32* %400, align 4
  %402 = add i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = mul nsw i64 %403, 20
  %405 = and i64 %404, 4294967292
  store i64 %405, i64* %RCX.i801, align 8
  %406 = trunc i64 %404 to i32
  %sext41 = mul i64 %403, 85899345920
  %407 = ashr exact i64 %sext41, 32
  %408 = ashr exact i64 %sext41, 30
  store i64 %408, i64* %RAX.i803, align 8
  %.lobit9 = lshr i32 %406, 31
  %409 = trunc i32 %.lobit9 to i8
  store i8 %409, i8* %14, align 1
  %410 = trunc i64 %408 to i32
  %411 = and i32 %410, 240
  %412 = tail call i32 @llvm.ctpop.i32(i32 %411)
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  %415 = xor i8 %414, 1
  store i8 %415, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %416 = icmp eq i32 %406, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %29, align 1
  %418 = lshr i64 %407, 61
  %419 = trunc i64 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %408, i64* %RDX.i765, align 8
  %421 = add i64 %398, 81656
  %422 = add i64 %398, 24
  %423 = load i64, i64* %6, align 8
  %424 = add i64 %423, -8
  %425 = inttoptr i64 %424 to i64*
  store i64 %422, i64* %425, align 8
  store i64 %424, i64* %6, align 8
  store i64 %421, i64* %3, align 8
  %call2_43217b = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %421, %struct.Memory* %call2_432146)
  %426 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 121, i64* %RSI.i792, align 8
  %427 = load i64, i64* %RBP.i, align 8
  %428 = add i64 %427, -8
  %429 = add i64 %426, 19
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i64*
  %431 = load i64, i64* %430, align 8
  store i64 %431, i64* %RDX.i765, align 8
  %432 = add i64 %431, 152
  %433 = add i64 %426, 26
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i64*
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %RDX.i765, align 8
  %436 = load i64, i64* %RAX.i803, align 8
  %437 = add i64 %426, 29
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %435 to i64*
  store i64 %436, i64* %438, align 8
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -12
  %441 = load i64, i64* %3, align 8
  %442 = add i64 %441, 4
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %440 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = sext i32 %444 to i64
  %446 = mul nsw i64 %445, 20
  %447 = and i64 %446, 4294967292
  store i64 %447, i64* %RCX.i801, align 8
  %448 = trunc i64 %446 to i32
  %sext42 = mul i64 %445, 85899345920
  %449 = ashr exact i64 %sext42, 32
  %450 = ashr exact i64 %sext42, 30
  store i64 %450, i64* %RAX.i803, align 8
  %.lobit10 = lshr i32 %448, 31
  %451 = trunc i32 %.lobit10 to i8
  store i8 %451, i8* %14, align 1
  %452 = trunc i64 %450 to i32
  %453 = and i32 %452, 240
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %458 = icmp eq i32 %448, 0
  %459 = zext i1 %458 to i8
  store i8 %459, i8* %29, align 1
  %460 = lshr i64 %449, 61
  %461 = trunc i64 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %450, i64* %RDX.i765, align 8
  %463 = add i64 %441, 81603
  %464 = add i64 %441, 19
  %465 = load i64, i64* %6, align 8
  %466 = add i64 %465, -8
  %467 = inttoptr i64 %466 to i64*
  store i64 %464, i64* %467, align 8
  store i64 %466, i64* %6, align 8
  store i64 %463, i64* %3, align 8
  %call2_4321ab = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %463, %struct.Memory* %call2_43217b)
  %468 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 123, i64* %RSI.i792, align 8
  store i64 56, i64* %RCX.i801, align 8
  store i64 56, i64* %RDX.i765, align 8
  %R8.i544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %469 = load i64, i64* %RBP.i, align 8
  %470 = add i64 %469, -8
  %471 = add i64 %468, 26
  store i64 %471, i64* %3, align 8
  %472 = inttoptr i64 %470 to i64*
  %473 = load i64, i64* %472, align 8
  store i64 %473, i64* %R8.i544, align 8
  %474 = add i64 %473, 160
  %475 = add i64 %468, 33
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i64*
  %477 = load i64, i64* %476, align 8
  store i64 %477, i64* %R8.i544, align 8
  %478 = load i64, i64* %RAX.i803, align 8
  %479 = add i64 %468, 36
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %477 to i64*
  store i64 %478, i64* %480, align 8
  %481 = load i64, i64* %3, align 8
  %482 = add i64 %481, 81548
  %483 = add i64 %481, 5
  %484 = load i64, i64* %6, align 8
  %485 = add i64 %484, -8
  %486 = inttoptr i64 %485 to i64*
  store i64 %483, i64* %486, align 8
  store i64 %485, i64* %6, align 8
  store i64 %482, i64* %3, align 8
  %call2_4321d4 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %482, %struct.Memory* %call2_4321ab)
  %487 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 124, i64* %RSI.i792, align 8
  store i64 192, i64* %RCX.i801, align 8
  store i64 192, i64* %RDX.i765, align 8
  %488 = load i64, i64* %RBP.i, align 8
  %489 = add i64 %488, -8
  %490 = add i64 %487, 26
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %R8.i544, align 8
  %493 = add i64 %492, 312
  %494 = load i64, i64* %RAX.i803, align 8
  %495 = add i64 %487, 33
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %493 to i64*
  store i64 %494, i64* %496, align 8
  %497 = load i64, i64* %3, align 8
  %498 = add i64 %497, 81510
  %499 = add i64 %497, 5
  %500 = load i64, i64* %6, align 8
  %501 = add i64 %500, -8
  %502 = inttoptr i64 %501 to i64*
  store i64 %499, i64* %502, align 8
  store i64 %501, i64* %6, align 8
  store i64 %498, i64* %3, align 8
  %call2_4321fa = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %498, %struct.Memory* %call2_4321d4)
  %503 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 125, i64* %RSI.i792, align 8
  store i64 192, i64* %RCX.i801, align 8
  store i64 192, i64* %RDX.i765, align 8
  %504 = load i64, i64* %RBP.i, align 8
  %505 = add i64 %504, -8
  %506 = add i64 %503, 26
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i64*
  %508 = load i64, i64* %507, align 8
  store i64 %508, i64* %R8.i544, align 8
  %509 = add i64 %508, 320
  %510 = load i64, i64* %RAX.i803, align 8
  %511 = add i64 %503, 33
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %509 to i64*
  store i64 %510, i64* %512, align 8
  %513 = load i64, i64* %3, align 8
  %514 = add i64 %513, 81472
  %515 = add i64 %513, 5
  %516 = load i64, i64* %6, align 8
  %517 = add i64 %516, -8
  %518 = inttoptr i64 %517 to i64*
  store i64 %515, i64* %518, align 8
  store i64 %517, i64* %6, align 8
  store i64 %514, i64* %3, align 8
  %call2_432220 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %514, %struct.Memory* %call2_4321fa)
  %519 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 126, i64* %RSI.i792, align 8
  %520 = load i64, i64* %RBP.i, align 8
  %521 = add i64 %520, -8
  %522 = add i64 %519, 19
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i64*
  %524 = load i64, i64* %523, align 8
  store i64 %524, i64* %RDX.i765, align 8
  %525 = add i64 %524, 328
  %526 = load i64, i64* %RAX.i803, align 8
  %527 = add i64 %519, 26
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %525 to i64*
  store i64 %526, i64* %528, align 8
  %529 = load i64, i64* %RBP.i, align 8
  %530 = add i64 %529, -12
  %531 = load i64, i64* %3, align 8
  %532 = add i64 %531, 4
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %530 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = sext i32 %534 to i64
  %536 = mul nsw i64 %535, 7
  %537 = and i64 %536, 4294967295
  store i64 %537, i64* %RCX.i801, align 8
  %538 = trunc i64 %536 to i32
  %sext43 = mul i64 %535, 30064771072
  %539 = ashr exact i64 %sext43, 32
  %540 = ashr exact i64 %sext43, 30
  store i64 %540, i64* %RAX.i803, align 8
  %.lobit11 = lshr i32 %538, 31
  %541 = trunc i32 %.lobit11 to i8
  store i8 %541, i8* %14, align 1
  %542 = trunc i64 %540 to i32
  %543 = and i32 %542, 252
  %544 = tail call i32 @llvm.ctpop.i32(i32 %543)
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  %547 = xor i8 %546, 1
  store i8 %547, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %548 = icmp eq i32 %538, 0
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %29, align 1
  %550 = lshr i64 %539, 61
  %551 = trunc i64 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %540, i64* %RDX.i765, align 8
  %553 = add i64 %531, 81441
  %554 = add i64 %531, 19
  %555 = load i64, i64* %6, align 8
  %556 = add i64 %555, -8
  %557 = inttoptr i64 %556 to i64*
  store i64 %554, i64* %557, align 8
  store i64 %556, i64* %6, align 8
  store i64 %553, i64* %3, align 8
  %call2_43224d = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %553, %struct.Memory* %call2_432220)
  %558 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 127, i64* %RSI.i792, align 8
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -8
  %561 = add i64 %558, 19
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %RDX.i765, align 8
  %564 = add i64 %563, 384
  %565 = load i64, i64* %RAX.i803, align 8
  %566 = add i64 %558, 26
  store i64 %566, i64* %3, align 8
  %567 = inttoptr i64 %564 to i64*
  store i64 %565, i64* %567, align 8
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -12
  %570 = load i64, i64* %3, align 8
  %571 = add i64 %570, 3
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %569 to i32*
  %573 = load i32, i32* %572, align 4
  %574 = add i32 %573, 1
  %575 = sext i32 %574 to i64
  %576 = mul nsw i64 %575, 24
  %577 = and i64 %576, 4294967288
  store i64 %577, i64* %RCX.i801, align 8
  %578 = trunc i64 %576 to i32
  %sext44 = mul i64 %575, 103079215104
  %579 = ashr exact i64 %sext44, 32
  %580 = ashr exact i64 %sext44, 30
  store i64 %580, i64* %RAX.i803, align 8
  %.lobit12 = lshr i32 %578, 31
  %581 = trunc i32 %.lobit12 to i8
  store i8 %581, i8* %14, align 1
  %582 = trunc i64 %580 to i32
  %583 = and i32 %582, 224
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %588 = icmp eq i32 %578, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %29, align 1
  %590 = lshr i64 %579, 61
  %591 = trunc i64 %590 to i8
  %592 = and i8 %591, 1
  store i8 %592, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %580, i64* %RDX.i765, align 8
  %593 = add i64 %570, 81396
  %594 = add i64 %570, 24
  %595 = load i64, i64* %6, align 8
  %596 = add i64 %595, -8
  %597 = inttoptr i64 %596 to i64*
  store i64 %594, i64* %597, align 8
  store i64 %596, i64* %6, align 8
  store i64 %593, i64* %3, align 8
  %call2_43227f = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %593, %struct.Memory* %call2_43224d)
  %598 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 128, i64* %RSI.i792, align 8
  %599 = load i64, i64* %RBP.i, align 8
  %600 = add i64 %599, -8
  %601 = add i64 %598, 19
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %RDX.i765, align 8
  %604 = add i64 %603, 392
  %605 = load i64, i64* %RAX.i803, align 8
  %606 = add i64 %598, 26
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %604 to i64*
  store i64 %605, i64* %607, align 8
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -12
  %610 = load i64, i64* %3, align 8
  %611 = add i64 %610, 4
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %609 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = sext i32 %613 to i64
  %615 = mul nsw i64 %614, 24
  %616 = and i64 %615, 4294967288
  store i64 %616, i64* %RCX.i801, align 8
  %617 = trunc i64 %615 to i32
  %sext45 = mul i64 %614, 103079215104
  %618 = ashr exact i64 %sext45, 32
  %619 = ashr exact i64 %sext45, 30
  store i64 %619, i64* %RAX.i803, align 8
  %.lobit13 = lshr i32 %617, 31
  %620 = trunc i32 %.lobit13 to i8
  store i8 %620, i8* %14, align 1
  %621 = trunc i64 %619 to i32
  %622 = and i32 %621, 224
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %627 = icmp eq i32 %617, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %29, align 1
  %629 = lshr i64 %618, 61
  %630 = trunc i64 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %619, i64* %RDX.i765, align 8
  %632 = add i64 %610, 81346
  %633 = add i64 %610, 19
  %634 = load i64, i64* %6, align 8
  %635 = add i64 %634, -8
  %636 = inttoptr i64 %635 to i64*
  store i64 %633, i64* %636, align 8
  store i64 %635, i64* %6, align 8
  store i64 %632, i64* %3, align 8
  %call2_4322ac = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %632, %struct.Memory* %call2_43227f)
  %637 = load i64, i64* %RBP.i, align 8
  %638 = add i64 %637, -8
  %639 = load i64, i64* %3, align 8
  %640 = add i64 %639, 4
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %638 to i64*
  %642 = load i64, i64* %641, align 8
  store i64 %642, i64* %RDX.i765, align 8
  %643 = add i64 %642, 400
  %644 = load i64, i64* %RAX.i803, align 8
  %645 = add i64 %639, 11
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %643 to i64*
  store i64 %644, i64* %646, align 8
  %647 = load i64, i64* %RBP.i, align 8
  %648 = add i64 %647, -8
  %649 = load i64, i64* %3, align 8
  %650 = add i64 %649, 4
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %648 to i64*
  %652 = load i64, i64* %651, align 8
  store i64 %652, i64* %RAX.i803, align 8
  %653 = add i64 %652, 384
  %654 = add i64 %649, 11
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i64*
  %656 = load i64, i64* %655, align 8
  store i64 %656, i64* %RAX.i803, align 8
  %657 = add i64 %649, 15
  store i64 %657, i64* %3, align 8
  %658 = load i64, i64* %651, align 8
  store i64 %658, i64* %RDX.i765, align 8
  %659 = add i64 %658, 312
  %660 = add i64 %649, 22
  store i64 %660, i64* %3, align 8
  %661 = inttoptr i64 %659 to i64*
  %662 = load i64, i64* %661, align 8
  store i64 %662, i64* %RDX.i765, align 8
  %663 = add i64 %649, 25
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i64*
  store i64 %656, i64* %664, align 8
  %665 = load i64, i64* %RBP.i, align 8
  %666 = add i64 %665, -8
  %667 = load i64, i64* %3, align 8
  %668 = add i64 %667, 4
  store i64 %668, i64* %3, align 8
  %669 = inttoptr i64 %666 to i64*
  %670 = load i64, i64* %669, align 8
  store i64 %670, i64* %RAX.i803, align 8
  %671 = add i64 %670, 392
  %672 = add i64 %667, 11
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i64*
  %674 = load i64, i64* %673, align 8
  store i64 %674, i64* %RAX.i803, align 8
  %675 = add i64 %667, 15
  store i64 %675, i64* %3, align 8
  %676 = load i64, i64* %669, align 8
  store i64 %676, i64* %RDX.i765, align 8
  %677 = add i64 %676, 320
  %678 = add i64 %667, 22
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i64*
  %680 = load i64, i64* %679, align 8
  store i64 %680, i64* %RDX.i765, align 8
  %681 = add i64 %667, 25
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  store i64 %674, i64* %682, align 8
  %683 = load i64, i64* %RBP.i, align 8
  %684 = add i64 %683, -8
  %685 = load i64, i64* %3, align 8
  %686 = add i64 %685, 4
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %684 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %RAX.i803, align 8
  %689 = add i64 %688, 400
  %690 = add i64 %685, 11
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i64*
  %692 = load i64, i64* %691, align 8
  store i64 %692, i64* %RAX.i803, align 8
  %693 = add i64 %685, 15
  store i64 %693, i64* %3, align 8
  %694 = load i64, i64* %687, align 8
  store i64 %694, i64* %RDX.i765, align 8
  %695 = add i64 %694, 328
  %696 = add i64 %685, 22
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i64*
  %698 = load i64, i64* %697, align 8
  store i64 %698, i64* %RDX.i765, align 8
  %699 = add i64 %685, 25
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i64*
  store i64 %692, i64* %700, align 8
  %701 = load i64, i64* %RBP.i, align 8
  %702 = add i64 %701, -16
  %703 = load i64, i64* %3, align 8
  %704 = add i64 %703, 7
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %702 to i32*
  store i32 1, i32* %705, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43230e

block_.L_43230e:                                  ; preds = %block_.L_4323b3, %entry
  %706 = phi i64 [ %1003, %block_.L_4323b3 ], [ %.pre, %entry ]
  %707 = load i64, i64* %RBP.i, align 8
  %708 = add i64 %707, -16
  %709 = add i64 %706, 3
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RAX.i803, align 8
  %713 = add i64 %707, -12
  %714 = add i64 %706, 6
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = sub i32 %711, %716
  %718 = icmp ult i32 %711, %716
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %14, align 1
  %720 = and i32 %717, 255
  %721 = tail call i32 @llvm.ctpop.i32(i32 %720)
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  store i8 %724, i8* %21, align 1
  %725 = xor i32 %716, %711
  %726 = xor i32 %725, %717
  %727 = lshr i32 %726, 4
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  store i8 %729, i8* %26, align 1
  %730 = icmp eq i32 %717, 0
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %29, align 1
  %732 = lshr i32 %717, 31
  %733 = trunc i32 %732 to i8
  store i8 %733, i8* %32, align 1
  %734 = lshr i32 %711, 31
  %735 = lshr i32 %716, 31
  %736 = xor i32 %735, %734
  %737 = xor i32 %732, %734
  %738 = add nuw nsw i32 %737, %736
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %38, align 1
  %741 = icmp ne i8 %733, 0
  %742 = xor i1 %741, %739
  %.demorgan = or i1 %730, %742
  %.v = select i1 %.demorgan, i64 12, i64 184
  %743 = add i64 %706, %.v
  store i64 %743, i64* %3, align 8
  br i1 %.demorgan, label %block_43231a, label %block_.L_4323c6

block_43231a:                                     ; preds = %block_.L_43230e
  %744 = add i64 %707, -8
  %745 = add i64 %743, 4
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i64*
  %747 = load i64, i64* %746, align 8
  store i64 %747, i64* %RAX.i803, align 8
  %748 = add i64 %747, 152
  %749 = add i64 %743, 11
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i64*
  %751 = load i64, i64* %750, align 8
  store i64 %751, i64* %RAX.i803, align 8
  %752 = add i64 %743, 14
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i64*
  %754 = load i64, i64* %753, align 8
  store i64 %754, i64* %RAX.i803, align 8
  %755 = add i64 %743, 18
  store i64 %755, i64* %3, align 8
  %756 = load i32, i32* %710, align 4
  %757 = sext i32 %756 to i64
  %758 = mul nsw i64 %757, 20
  %759 = and i64 %758, 4294967292
  store i64 %759, i64* %RCX.i801, align 8
  %sext46 = mul i64 %757, 85899345920
  %760 = ashr exact i64 %sext46, 30
  store i64 %760, i64* %RDX.i765, align 8
  %761 = add i64 %760, %754
  store i64 %761, i64* %RAX.i803, align 8
  %762 = icmp ult i64 %761, %754
  %763 = icmp ult i64 %761, %760
  %764 = or i1 %762, %763
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %14, align 1
  %766 = trunc i64 %761 to i32
  %767 = and i32 %766, 255
  %768 = tail call i32 @llvm.ctpop.i32(i32 %767)
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  %771 = xor i8 %770, 1
  store i8 %771, i8* %21, align 1
  %772 = xor i64 %760, %754
  %773 = xor i64 %772, %761
  %774 = lshr i64 %773, 4
  %775 = trunc i64 %774 to i8
  %776 = and i8 %775, 1
  store i8 %776, i8* %26, align 1
  %777 = icmp eq i64 %761, 0
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %29, align 1
  %779 = lshr i64 %761, 63
  %780 = trunc i64 %779 to i8
  store i8 %780, i8* %32, align 1
  %781 = lshr i64 %754, 63
  %782 = lshr i64 %760, 63
  %783 = xor i64 %779, %781
  %784 = xor i64 %779, %782
  %785 = add nuw nsw i64 %783, %784
  %786 = icmp eq i64 %785, 2
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %38, align 1
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -8
  %790 = add i64 %743, 32
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RDX.i765, align 8
  %793 = add i64 %792, 152
  %794 = add i64 %743, 39
  store i64 %794, i64* %3, align 8
  %795 = inttoptr i64 %793 to i64*
  %796 = load i64, i64* %795, align 8
  store i64 %796, i64* %RDX.i765, align 8
  %797 = add i64 %788, -16
  %798 = add i64 %743, 43
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = sext i32 %800 to i64
  store i64 %801, i64* %RSI.i792, align 8
  %802 = shl nsw i64 %801, 3
  %803 = add i64 %802, %796
  %804 = add i64 %743, 47
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  store i64 %761, i64* %805, align 8
  %806 = load i64, i64* %RBP.i, align 8
  %807 = add i64 %806, -16
  %808 = load i64, i64* %3, align 8
  %809 = add i64 %808, 3
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %807 to i32*
  %811 = load i32, i32* %810, align 4
  %812 = zext i32 %811 to i64
  store i64 %812, i64* %RCX.i801, align 8
  %813 = add i64 %806, -12
  %814 = add i64 %808, 6
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = sub i32 %811, %816
  %818 = icmp ult i32 %811, %816
  %819 = zext i1 %818 to i8
  store i8 %819, i8* %14, align 1
  %820 = and i32 %817, 255
  %821 = tail call i32 @llvm.ctpop.i32(i32 %820)
  %822 = trunc i32 %821 to i8
  %823 = and i8 %822, 1
  %824 = xor i8 %823, 1
  store i8 %824, i8* %21, align 1
  %825 = xor i32 %816, %811
  %826 = xor i32 %825, %817
  %827 = lshr i32 %826, 4
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  store i8 %829, i8* %26, align 1
  %830 = icmp eq i32 %817, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %29, align 1
  %832 = lshr i32 %817, 31
  %833 = trunc i32 %832 to i8
  store i8 %833, i8* %32, align 1
  %834 = lshr i32 %811, 31
  %835 = lshr i32 %816, 31
  %836 = xor i32 %835, %834
  %837 = xor i32 %832, %834
  %838 = add nuw nsw i32 %837, %836
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %38, align 1
  %841 = icmp ne i8 %833, 0
  %842 = xor i1 %841, %839
  %.v55 = select i1 %842, i64 12, i64 106
  %843 = add i64 %808, %.v55
  store i64 %843, i64* %3, align 8
  br i1 %842, label %block_432355, label %block_.L_4323b3

block_432355:                                     ; preds = %block_43231a
  %844 = add i64 %806, -8
  %845 = add i64 %843, 4
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to i64*
  %847 = load i64, i64* %846, align 8
  store i64 %847, i64* %RAX.i803, align 8
  %848 = add i64 %847, 160
  %849 = add i64 %843, 11
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i64*
  %851 = load i64, i64* %850, align 8
  store i64 %851, i64* %RAX.i803, align 8
  %852 = add i64 %843, 14
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %RAX.i803, align 8
  %855 = add i64 %843, 18
  store i64 %855, i64* %3, align 8
  %856 = load i32, i32* %810, align 4
  %857 = sext i32 %856 to i64
  %858 = mul nsw i64 %857, 20
  %859 = and i64 %858, 4294967292
  store i64 %859, i64* %RCX.i801, align 8
  %sext47 = mul i64 %857, 85899345920
  %860 = ashr exact i64 %sext47, 30
  store i64 %860, i64* %RDX.i765, align 8
  %861 = add i64 %860, %854
  store i64 %861, i64* %RAX.i803, align 8
  %862 = icmp ult i64 %861, %854
  %863 = icmp ult i64 %861, %860
  %864 = or i1 %862, %863
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %14, align 1
  %866 = trunc i64 %861 to i32
  %867 = and i32 %866, 255
  %868 = tail call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  store i8 %871, i8* %21, align 1
  %872 = xor i64 %860, %854
  %873 = xor i64 %872, %861
  %874 = lshr i64 %873, 4
  %875 = trunc i64 %874 to i8
  %876 = and i8 %875, 1
  store i8 %876, i8* %26, align 1
  %877 = icmp eq i64 %861, 0
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %29, align 1
  %879 = lshr i64 %861, 63
  %880 = trunc i64 %879 to i8
  store i8 %880, i8* %32, align 1
  %881 = lshr i64 %854, 63
  %882 = lshr i64 %860, 63
  %883 = xor i64 %879, %881
  %884 = xor i64 %879, %882
  %885 = add nuw nsw i64 %883, %884
  %886 = icmp eq i64 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %38, align 1
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -8
  %890 = add i64 %843, 32
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i64*
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %RDX.i765, align 8
  %893 = add i64 %892, 160
  %894 = add i64 %843, 39
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i64*
  %896 = load i64, i64* %895, align 8
  store i64 %896, i64* %RDX.i765, align 8
  %897 = add i64 %888, -16
  %898 = add i64 %843, 43
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i32*
  %900 = load i32, i32* %899, align 4
  %901 = sext i32 %900 to i64
  store i64 %901, i64* %RSI.i792, align 8
  %902 = shl nsw i64 %901, 3
  %903 = add i64 %902, %896
  %904 = add i64 %843, 47
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i64*
  store i64 %861, i64* %905, align 8
  %906 = load i64, i64* %RBP.i, align 8
  %907 = add i64 %906, -8
  %908 = load i64, i64* %3, align 8
  %909 = add i64 %908, 4
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %907 to i64*
  %911 = load i64, i64* %910, align 8
  store i64 %911, i64* %RAX.i803, align 8
  %912 = add i64 %911, 144
  %913 = add i64 %908, 11
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i64*
  %915 = load i64, i64* %914, align 8
  store i64 %915, i64* %RAX.i803, align 8
  %916 = add i64 %908, 14
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i64*
  %918 = load i64, i64* %917, align 8
  store i64 %918, i64* %RAX.i803, align 8
  %919 = add i64 %906, -16
  %920 = add i64 %908, 18
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = sext i32 %922 to i64
  %924 = mul nsw i64 %923, 7
  %925 = and i64 %924, 4294967295
  store i64 %925, i64* %RCX.i801, align 8
  %sext48 = mul i64 %923, 30064771072
  %926 = ashr exact i64 %sext48, 30
  store i64 %926, i64* %RDX.i765, align 8
  %927 = add i64 %926, %918
  store i64 %927, i64* %RAX.i803, align 8
  %928 = icmp ult i64 %927, %918
  %929 = icmp ult i64 %927, %926
  %930 = or i1 %928, %929
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %14, align 1
  %932 = trunc i64 %927 to i32
  %933 = and i32 %932, 255
  %934 = tail call i32 @llvm.ctpop.i32(i32 %933)
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = xor i8 %936, 1
  store i8 %937, i8* %21, align 1
  %938 = xor i64 %926, %918
  %939 = xor i64 %938, %927
  %940 = lshr i64 %939, 4
  %941 = trunc i64 %940 to i8
  %942 = and i8 %941, 1
  store i8 %942, i8* %26, align 1
  %943 = icmp eq i64 %927, 0
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %29, align 1
  %945 = lshr i64 %927, 63
  %946 = trunc i64 %945 to i8
  store i8 %946, i8* %32, align 1
  %947 = lshr i64 %918, 63
  %948 = lshr i64 %926, 63
  %949 = xor i64 %945, %947
  %950 = xor i64 %945, %948
  %951 = add nuw nsw i64 %949, %950
  %952 = icmp eq i64 %951, 2
  %953 = zext i1 %952 to i8
  store i8 %953, i8* %38, align 1
  %954 = load i64, i64* %RBP.i, align 8
  %955 = add i64 %954, -8
  %956 = add i64 %908, 32
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %955 to i64*
  %958 = load i64, i64* %957, align 8
  store i64 %958, i64* %RDX.i765, align 8
  %959 = add i64 %958, 144
  %960 = add i64 %908, 39
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i64*
  %962 = load i64, i64* %961, align 8
  store i64 %962, i64* %RDX.i765, align 8
  %963 = add i64 %954, -16
  %964 = add i64 %908, 43
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i32*
  %966 = load i32, i32* %965, align 4
  %967 = sext i32 %966 to i64
  store i64 %967, i64* %RSI.i792, align 8
  %968 = shl nsw i64 %967, 3
  %969 = add i64 %968, %962
  %970 = add i64 %908, 47
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i64*
  store i64 %927, i64* %971, align 8
  %.pre36 = load i64, i64* %3, align 8
  %.pre37 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4323b3

block_.L_4323b3:                                  ; preds = %block_43231a, %block_432355
  %972 = phi i64 [ %806, %block_43231a ], [ %.pre37, %block_432355 ]
  %973 = phi i64 [ %843, %block_43231a ], [ %.pre36, %block_432355 ]
  %974 = add i64 %972, -16
  %975 = add i64 %973, 8
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = add i32 %977, 1
  %979 = zext i32 %978 to i64
  store i64 %979, i64* %RAX.i803, align 8
  %980 = icmp eq i32 %977, -1
  %981 = icmp eq i32 %978, 0
  %982 = or i1 %980, %981
  %983 = zext i1 %982 to i8
  store i8 %983, i8* %14, align 1
  %984 = and i32 %978, 255
  %985 = tail call i32 @llvm.ctpop.i32(i32 %984)
  %986 = trunc i32 %985 to i8
  %987 = and i8 %986, 1
  %988 = xor i8 %987, 1
  store i8 %988, i8* %21, align 1
  %989 = xor i32 %978, %977
  %990 = lshr i32 %989, 4
  %991 = trunc i32 %990 to i8
  %992 = and i8 %991, 1
  store i8 %992, i8* %26, align 1
  %993 = zext i1 %981 to i8
  store i8 %993, i8* %29, align 1
  %994 = lshr i32 %978, 31
  %995 = trunc i32 %994 to i8
  store i8 %995, i8* %32, align 1
  %996 = lshr i32 %977, 31
  %997 = xor i32 %994, %996
  %998 = add nuw nsw i32 %997, %994
  %999 = icmp eq i32 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %38, align 1
  %1001 = add i64 %973, 14
  store i64 %1001, i64* %3, align 8
  store i32 %978, i32* %976, align 4
  %1002 = load i64, i64* %3, align 8
  %1003 = add i64 %1002, -179
  store i64 %1003, i64* %3, align 8
  br label %block_.L_43230e

block_.L_4323c6:                                  ; preds = %block_.L_43230e
  %1004 = add i64 %707, -20
  %1005 = add i64 %743, 7
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  store i32 1, i32* %1006, align 4
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_4323cd

block_.L_4323cd:                                  ; preds = %block_4323d7, %block_.L_4323c6
  %1007 = phi i64 [ %1212, %block_4323d7 ], [ %.pre38, %block_.L_4323c6 ]
  %1008 = load i64, i64* %RBP.i, align 8
  %1009 = add i64 %1008, -20
  %1010 = add i64 %1007, 4
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i32*
  %1012 = load i32, i32* %1011, align 4
  %1013 = add i32 %1012, -24
  %1014 = icmp ult i32 %1012, 24
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %14, align 1
  %1016 = and i32 %1013, 255
  %1017 = tail call i32 @llvm.ctpop.i32(i32 %1016)
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  %1020 = xor i8 %1019, 1
  store i8 %1020, i8* %21, align 1
  %1021 = xor i32 %1012, 16
  %1022 = xor i32 %1021, %1013
  %1023 = lshr i32 %1022, 4
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  store i8 %1025, i8* %26, align 1
  %1026 = icmp eq i32 %1013, 0
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %29, align 1
  %1028 = lshr i32 %1013, 31
  %1029 = trunc i32 %1028 to i8
  store i8 %1029, i8* %32, align 1
  %1030 = lshr i32 %1012, 31
  %1031 = xor i32 %1028, %1030
  %1032 = add nuw nsw i32 %1031, %1030
  %1033 = icmp eq i32 %1032, 2
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %38, align 1
  %1035 = icmp ne i8 %1029, 0
  %1036 = xor i1 %1035, %1033
  %.v52 = select i1 %1036, i64 10, i64 129
  %1037 = add i64 %1007, %.v52
  store i64 %1037, i64* %3, align 8
  br i1 %1036, label %block_4323d7, label %block_.L_43244e

block_4323d7:                                     ; preds = %block_.L_4323cd
  %1038 = add i64 %1008, -8
  %1039 = add i64 %1037, 4
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i64*
  %1041 = load i64, i64* %1040, align 8
  store i64 %1041, i64* %RAX.i803, align 8
  %1042 = add i64 %1041, 320
  %1043 = add i64 %1037, 11
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %RAX.i803, align 8
  %1046 = add i64 %1037, 14
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i64*
  %1048 = load i64, i64* %1047, align 8
  store i64 %1048, i64* %RAX.i803, align 8
  %1049 = add i64 %1037, 17
  store i64 %1049, i64* %3, align 8
  %1050 = load i32, i32* %1011, align 4
  %1051 = zext i32 %1050 to i64
  store i64 %1051, i64* %RCX.i801, align 8
  %1052 = add i64 %1008, -12
  %1053 = add i64 %1037, 20
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  %1056 = add i32 %1055, 1
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RDX.i765, align 8
  %1058 = sext i32 %1050 to i64
  %1059 = sext i32 %1056 to i64
  %1060 = mul nsw i64 %1059, %1058
  %1061 = and i64 %1060, 4294967295
  store i64 %1061, i64* %RCX.i801, align 8
  %sext50 = shl i64 %1060, 32
  %1062 = ashr exact i64 %sext50, 30
  store i64 %1062, i64* %RSI.i792, align 8
  %1063 = load i64, i64* %RAX.i803, align 8
  %1064 = add i64 %1062, %1063
  store i64 %1064, i64* %RAX.i803, align 8
  %1065 = icmp ult i64 %1064, %1063
  %1066 = icmp ult i64 %1064, %1062
  %1067 = or i1 %1065, %1066
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %14, align 1
  %1069 = trunc i64 %1064 to i32
  %1070 = and i32 %1069, 255
  %1071 = tail call i32 @llvm.ctpop.i32(i32 %1070)
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  %1074 = xor i8 %1073, 1
  store i8 %1074, i8* %21, align 1
  %1075 = xor i64 %1062, %1063
  %1076 = xor i64 %1075, %1064
  %1077 = lshr i64 %1076, 4
  %1078 = trunc i64 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %26, align 1
  %1080 = icmp eq i64 %1064, 0
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %29, align 1
  %1082 = lshr i64 %1064, 63
  %1083 = trunc i64 %1082 to i8
  store i8 %1083, i8* %32, align 1
  %1084 = lshr i64 %1063, 63
  %1085 = lshr i64 %1062, 63
  %1086 = xor i64 %1082, %1084
  %1087 = xor i64 %1082, %1085
  %1088 = add nuw nsw i64 %1086, %1087
  %1089 = icmp eq i64 %1088, 2
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %38, align 1
  %1091 = load i64, i64* %RBP.i, align 8
  %1092 = add i64 %1091, -8
  %1093 = add i64 %1037, 40
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i64*
  %1095 = load i64, i64* %1094, align 8
  store i64 %1095, i64* %RSI.i792, align 8
  %1096 = add i64 %1095, 320
  %1097 = add i64 %1037, 47
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i64*
  %1099 = load i64, i64* %1098, align 8
  store i64 %1099, i64* %RSI.i792, align 8
  %1100 = add i64 %1091, -20
  %1101 = add i64 %1037, 51
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = sext i32 %1103 to i64
  store i64 %1104, i64* %RDI.i798, align 8
  %1105 = shl nsw i64 %1104, 3
  %1106 = add i64 %1105, %1099
  %1107 = add i64 %1037, 55
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i64*
  store i64 %1064, i64* %1108, align 8
  %1109 = load i64, i64* %RBP.i, align 8
  %1110 = add i64 %1109, -8
  %1111 = load i64, i64* %3, align 8
  %1112 = add i64 %1111, 4
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1110 to i64*
  %1114 = load i64, i64* %1113, align 8
  store i64 %1114, i64* %RAX.i803, align 8
  %1115 = add i64 %1114, 328
  %1116 = add i64 %1111, 11
  store i64 %1116, i64* %3, align 8
  %1117 = inttoptr i64 %1115 to i64*
  %1118 = load i64, i64* %1117, align 8
  store i64 %1118, i64* %RAX.i803, align 8
  %1119 = add i64 %1111, 14
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RAX.i803, align 8
  %1122 = add i64 %1109, -20
  %1123 = add i64 %1111, 17
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i32*
  %1125 = load i32, i32* %1124, align 4
  %1126 = zext i32 %1125 to i64
  store i64 %1126, i64* %RCX.i801, align 8
  %1127 = add i64 %1109, -12
  %1128 = add i64 %1111, 21
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i32*
  %1130 = load i32, i32* %1129, align 4
  %1131 = sext i32 %1125 to i64
  %1132 = sext i32 %1130 to i64
  %1133 = mul nsw i64 %1132, %1131
  %1134 = and i64 %1133, 4294967295
  store i64 %1134, i64* %RCX.i801, align 8
  %sext51 = shl i64 %1133, 32
  %1135 = ashr exact i64 %sext51, 30
  store i64 %1135, i64* %RSI.i792, align 8
  %1136 = add i64 %1135, %1121
  store i64 %1136, i64* %RAX.i803, align 8
  %1137 = icmp ult i64 %1136, %1121
  %1138 = icmp ult i64 %1136, %1135
  %1139 = or i1 %1137, %1138
  %1140 = zext i1 %1139 to i8
  store i8 %1140, i8* %14, align 1
  %1141 = trunc i64 %1136 to i32
  %1142 = and i32 %1141, 255
  %1143 = tail call i32 @llvm.ctpop.i32(i32 %1142)
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  store i8 %1146, i8* %21, align 1
  %1147 = xor i64 %1135, %1121
  %1148 = xor i64 %1147, %1136
  %1149 = lshr i64 %1148, 4
  %1150 = trunc i64 %1149 to i8
  %1151 = and i8 %1150, 1
  store i8 %1151, i8* %26, align 1
  %1152 = icmp eq i64 %1136, 0
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %29, align 1
  %1154 = lshr i64 %1136, 63
  %1155 = trunc i64 %1154 to i8
  store i8 %1155, i8* %32, align 1
  %1156 = lshr i64 %1121, 63
  %1157 = lshr i64 %1135, 63
  %1158 = xor i64 %1154, %1156
  %1159 = xor i64 %1154, %1157
  %1160 = add nuw nsw i64 %1158, %1159
  %1161 = icmp eq i64 %1160, 2
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %38, align 1
  %1163 = load i64, i64* %RBP.i, align 8
  %1164 = add i64 %1163, -8
  %1165 = add i64 %1111, 35
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1164 to i64*
  %1167 = load i64, i64* %1166, align 8
  store i64 %1167, i64* %RSI.i792, align 8
  %1168 = add i64 %1167, 328
  %1169 = add i64 %1111, 42
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i64*
  %1171 = load i64, i64* %1170, align 8
  store i64 %1171, i64* %RSI.i792, align 8
  %1172 = add i64 %1163, -20
  %1173 = add i64 %1111, 46
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = sext i32 %1175 to i64
  store i64 %1176, i64* %RDI.i798, align 8
  %1177 = shl nsw i64 %1176, 3
  %1178 = add i64 %1177, %1171
  %1179 = add i64 %1111, 50
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i64*
  store i64 %1136, i64* %1180, align 8
  %1181 = load i64, i64* %RBP.i, align 8
  %1182 = add i64 %1181, -20
  %1183 = load i64, i64* %3, align 8
  %1184 = add i64 %1183, 3
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1182 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = add i32 %1186, 1
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RAX.i803, align 8
  %1189 = icmp eq i32 %1186, -1
  %1190 = icmp eq i32 %1187, 0
  %1191 = or i1 %1189, %1190
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %14, align 1
  %1193 = and i32 %1187, 255
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %21, align 1
  %1198 = xor i32 %1187, %1186
  %1199 = lshr i32 %1198, 4
  %1200 = trunc i32 %1199 to i8
  %1201 = and i8 %1200, 1
  store i8 %1201, i8* %26, align 1
  %1202 = zext i1 %1190 to i8
  store i8 %1202, i8* %29, align 1
  %1203 = lshr i32 %1187, 31
  %1204 = trunc i32 %1203 to i8
  store i8 %1204, i8* %32, align 1
  %1205 = lshr i32 %1186, 31
  %1206 = xor i32 %1203, %1205
  %1207 = add nuw nsw i32 %1206, %1203
  %1208 = icmp eq i32 %1207, 2
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %38, align 1
  %1210 = add i64 %1183, 9
  store i64 %1210, i64* %3, align 8
  store i32 %1187, i32* %1185, align 4
  %1211 = load i64, i64* %3, align 8
  %1212 = add i64 %1211, -124
  store i64 %1212, i64* %3, align 8
  br label %block_.L_4323cd

block_.L_43244e:                                  ; preds = %block_.L_4323cd
  %1213 = add i64 %1037, 7
  store i64 %1213, i64* %3, align 8
  store i32 0, i32* %1011, align 4
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_432455

block_.L_432455:                                  ; preds = %block_43245f, %block_.L_43244e
  %1214 = phi i64 [ %1343, %block_43245f ], [ %.pre39, %block_.L_43244e ]
  %1215 = load i64, i64* %RBP.i, align 8
  %1216 = add i64 %1215, -20
  %1217 = add i64 %1214, 4
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = add i32 %1219, -7
  %1221 = icmp ult i32 %1219, 7
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %14, align 1
  %1223 = and i32 %1220, 255
  %1224 = tail call i32 @llvm.ctpop.i32(i32 %1223)
  %1225 = trunc i32 %1224 to i8
  %1226 = and i8 %1225, 1
  %1227 = xor i8 %1226, 1
  store i8 %1227, i8* %21, align 1
  %1228 = xor i32 %1220, %1219
  %1229 = lshr i32 %1228, 4
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  store i8 %1231, i8* %26, align 1
  %1232 = icmp eq i32 %1220, 0
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %29, align 1
  %1234 = lshr i32 %1220, 31
  %1235 = trunc i32 %1234 to i8
  store i8 %1235, i8* %32, align 1
  %1236 = lshr i32 %1219, 31
  %1237 = xor i32 %1234, %1236
  %1238 = add nuw nsw i32 %1237, %1236
  %1239 = icmp eq i32 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %38, align 1
  %1241 = icmp ne i8 %1235, 0
  %1242 = xor i1 %1241, %1239
  %.v53 = select i1 %1242, i64 10, i64 74
  %1243 = add i64 %1214, %.v53
  store i64 %1243, i64* %3, align 8
  br i1 %1242, label %block_43245f, label %block_.L_43249f

block_43245f:                                     ; preds = %block_.L_432455
  %1244 = add i64 %1215, -8
  %1245 = add i64 %1243, 4
  store i64 %1245, i64* %3, align 8
  %1246 = inttoptr i64 %1244 to i64*
  %1247 = load i64, i64* %1246, align 8
  store i64 %1247, i64* %RAX.i803, align 8
  %1248 = add i64 %1247, 312
  %1249 = add i64 %1243, 11
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i64*
  %1251 = load i64, i64* %1250, align 8
  store i64 %1251, i64* %RAX.i803, align 8
  %1252 = add i64 %1243, 14
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i64*
  %1254 = load i64, i64* %1253, align 8
  store i64 %1254, i64* %RAX.i803, align 8
  %1255 = add i64 %1243, 17
  store i64 %1255, i64* %3, align 8
  %1256 = load i32, i32* %1218, align 4
  %1257 = zext i32 %1256 to i64
  store i64 %1257, i64* %RCX.i801, align 8
  %1258 = add i64 %1215, -12
  %1259 = add i64 %1243, 21
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = sext i32 %1256 to i64
  %1263 = sext i32 %1261 to i64
  %1264 = mul nsw i64 %1263, %1262
  %1265 = and i64 %1264, 4294967295
  store i64 %1265, i64* %RCX.i801, align 8
  %sext49 = shl i64 %1264, 32
  %1266 = ashr exact i64 %sext49, 30
  store i64 %1266, i64* %RDX.i765, align 8
  %1267 = add i64 %1266, %1254
  store i64 %1267, i64* %RAX.i803, align 8
  %1268 = icmp ult i64 %1267, %1254
  %1269 = icmp ult i64 %1267, %1266
  %1270 = or i1 %1268, %1269
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %14, align 1
  %1272 = trunc i64 %1267 to i32
  %1273 = and i32 %1272, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %21, align 1
  %1278 = xor i64 %1266, %1254
  %1279 = xor i64 %1278, %1267
  %1280 = lshr i64 %1279, 4
  %1281 = trunc i64 %1280 to i8
  %1282 = and i8 %1281, 1
  store i8 %1282, i8* %26, align 1
  %1283 = icmp eq i64 %1267, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %29, align 1
  %1285 = lshr i64 %1267, 63
  %1286 = trunc i64 %1285 to i8
  store i8 %1286, i8* %32, align 1
  %1287 = lshr i64 %1254, 63
  %1288 = lshr i64 %1266, 63
  %1289 = xor i64 %1285, %1287
  %1290 = xor i64 %1285, %1288
  %1291 = add nuw nsw i64 %1289, %1290
  %1292 = icmp eq i64 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %38, align 1
  %1294 = load i64, i64* %RBP.i, align 8
  %1295 = add i64 %1294, -8
  %1296 = add i64 %1243, 35
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i64*
  %1298 = load i64, i64* %1297, align 8
  store i64 %1298, i64* %RDX.i765, align 8
  %1299 = add i64 %1298, 312
  %1300 = add i64 %1243, 42
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i64*
  %1302 = load i64, i64* %1301, align 8
  store i64 %1302, i64* %RDX.i765, align 8
  %1303 = add i64 %1294, -20
  %1304 = add i64 %1243, 46
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1303 to i32*
  %1306 = load i32, i32* %1305, align 4
  %1307 = sext i32 %1306 to i64
  store i64 %1307, i64* %RSI.i792, align 8
  %1308 = shl nsw i64 %1307, 3
  %1309 = add i64 %1308, %1302
  %1310 = add i64 %1243, 50
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i64*
  store i64 %1267, i64* %1311, align 8
  %1312 = load i64, i64* %RBP.i, align 8
  %1313 = add i64 %1312, -20
  %1314 = load i64, i64* %3, align 8
  %1315 = add i64 %1314, 3
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1313 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = add i32 %1317, 1
  %1319 = zext i32 %1318 to i64
  store i64 %1319, i64* %RAX.i803, align 8
  %1320 = icmp eq i32 %1317, -1
  %1321 = icmp eq i32 %1318, 0
  %1322 = or i1 %1320, %1321
  %1323 = zext i1 %1322 to i8
  store i8 %1323, i8* %14, align 1
  %1324 = and i32 %1318, 255
  %1325 = tail call i32 @llvm.ctpop.i32(i32 %1324)
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = xor i8 %1327, 1
  store i8 %1328, i8* %21, align 1
  %1329 = xor i32 %1318, %1317
  %1330 = lshr i32 %1329, 4
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  store i8 %1332, i8* %26, align 1
  %1333 = zext i1 %1321 to i8
  store i8 %1333, i8* %29, align 1
  %1334 = lshr i32 %1318, 31
  %1335 = trunc i32 %1334 to i8
  store i8 %1335, i8* %32, align 1
  %1336 = lshr i32 %1317, 31
  %1337 = xor i32 %1334, %1336
  %1338 = add nuw nsw i32 %1337, %1334
  %1339 = icmp eq i32 %1338, 2
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %38, align 1
  %1341 = add i64 %1314, 9
  store i64 %1341, i64* %3, align 8
  store i32 %1318, i32* %1316, align 4
  %1342 = load i64, i64* %3, align 8
  %1343 = add i64 %1342, -69
  store i64 %1343, i64* %3, align 8
  br label %block_.L_432455

block_.L_43249f:                                  ; preds = %block_.L_432455
  %1344 = add i64 %1243, 7
  store i64 %1344, i64* %3, align 8
  store i32 0, i32* %1218, align 4
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_4324a6

block_.L_4324a6:                                  ; preds = %block_4324b0, %block_.L_43249f
  %1345 = phi i64 [ %1424, %block_4324b0 ], [ %.pre40, %block_.L_43249f ]
  %1346 = load i64, i64* %RBP.i, align 8
  %1347 = add i64 %1346, -20
  %1348 = add i64 %1345, 4
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i32*
  %1350 = load i32, i32* %1349, align 4
  %1351 = add i32 %1350, -7
  %1352 = icmp ult i32 %1350, 7
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %14, align 1
  %1354 = and i32 %1351, 255
  %1355 = tail call i32 @llvm.ctpop.i32(i32 %1354)
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  %1358 = xor i8 %1357, 1
  store i8 %1358, i8* %21, align 1
  %1359 = xor i32 %1351, %1350
  %1360 = lshr i32 %1359, 4
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  store i8 %1362, i8* %26, align 1
  %1363 = icmp eq i32 %1351, 0
  %1364 = zext i1 %1363 to i8
  store i8 %1364, i8* %29, align 1
  %1365 = lshr i32 %1351, 31
  %1366 = trunc i32 %1365 to i8
  store i8 %1366, i8* %32, align 1
  %1367 = lshr i32 %1350, 31
  %1368 = xor i32 %1365, %1367
  %1369 = add nuw nsw i32 %1368, %1367
  %1370 = icmp eq i32 %1369, 2
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %38, align 1
  %1372 = icmp ne i8 %1366, 0
  %1373 = xor i1 %1372, %1370
  %.v54 = select i1 %1373, i64 10, i64 49
  %1374 = add i64 %1345, %.v54
  store i64 %1374, i64* %3, align 8
  br i1 %1373, label %block_4324b0, label %block_.L_4324d7

block_4324b0:                                     ; preds = %block_.L_4324a6
  %1375 = add i64 %1346, -8
  %1376 = add i64 %1374, 4
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i64*
  %1378 = load i64, i64* %1377, align 8
  store i64 %1378, i64* %RAX.i803, align 8
  %1379 = add i64 %1378, 312
  %1380 = add i64 %1374, 11
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i64*
  %1382 = load i64, i64* %1381, align 8
  store i64 %1382, i64* %RAX.i803, align 8
  %1383 = add i64 %1374, 15
  store i64 %1383, i64* %3, align 8
  %1384 = load i32, i32* %1349, align 4
  %1385 = sext i32 %1384 to i64
  store i64 %1385, i64* %RCX.i801, align 8
  %1386 = shl nsw i64 %1385, 3
  %1387 = add i64 %1386, %1382
  %1388 = add i64 %1374, 19
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i64*
  %1390 = load i64, i64* %1389, align 8
  store i64 %1390, i64* %RAX.i803, align 8
  %1391 = add i64 %1374, 25
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  store i32 -987654321, i32* %1392, align 4
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -20
  %1395 = load i64, i64* %3, align 8
  %1396 = add i64 %1395, 3
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1394 to i32*
  %1398 = load i32, i32* %1397, align 4
  %1399 = add i32 %1398, 1
  %1400 = zext i32 %1399 to i64
  store i64 %1400, i64* %RAX.i803, align 8
  %1401 = icmp eq i32 %1398, -1
  %1402 = icmp eq i32 %1399, 0
  %1403 = or i1 %1401, %1402
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %14, align 1
  %1405 = and i32 %1399, 255
  %1406 = tail call i32 @llvm.ctpop.i32(i32 %1405)
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  %1409 = xor i8 %1408, 1
  store i8 %1409, i8* %21, align 1
  %1410 = xor i32 %1399, %1398
  %1411 = lshr i32 %1410, 4
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  store i8 %1413, i8* %26, align 1
  %1414 = zext i1 %1402 to i8
  store i8 %1414, i8* %29, align 1
  %1415 = lshr i32 %1399, 31
  %1416 = trunc i32 %1415 to i8
  store i8 %1416, i8* %32, align 1
  %1417 = lshr i32 %1398, 31
  %1418 = xor i32 %1415, %1417
  %1419 = add nuw nsw i32 %1418, %1415
  %1420 = icmp eq i32 %1419, 2
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %38, align 1
  %1422 = add i64 %1395, 9
  store i64 %1422, i64* %3, align 8
  store i32 %1399, i32* %1397, align 4
  %1423 = load i64, i64* %3, align 8
  %1424 = add i64 %1423, -44
  store i64 %1424, i64* %3, align 8
  br label %block_.L_4324a6

block_.L_4324d7:                                  ; preds = %block_.L_4324a6
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 157, i64* %RSI.i792, align 8
  %1425 = add i64 %1346, -12
  %1426 = add i64 %1374, 18
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = add i32 %1428, 1
  %1430 = zext i32 %1429 to i64
  store i64 %1430, i64* %RAX.i803, align 8
  %1431 = icmp eq i32 %1429, 0
  %1432 = zext i1 %1431 to i8
  %1433 = lshr i32 %1429, 31
  %1434 = trunc i32 %1433 to i8
  %1435 = sext i32 %1429 to i64
  %1436 = shl nsw i64 %1435, 2
  store i64 %1436, i64* %RCX.i801, align 8
  store i8 %1434, i8* %14, align 1
  %1437 = trunc i64 %1436 to i32
  %1438 = and i32 %1437, 252
  %1439 = tail call i32 @llvm.ctpop.i32(i32 %1438)
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  store i8 %1442, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1432, i8* %29, align 1
  %1443 = lshr i64 %1435, 61
  %1444 = trunc i64 %1443 to i8
  %1445 = and i8 %1444, 1
  store i8 %1445, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1436, i64* %RDX.i765, align 8
  %1446 = add i64 %1374, 80777
  %1447 = add i64 %1374, 36
  %1448 = load i64, i64* %6, align 8
  %1449 = add i64 %1448, -8
  %1450 = inttoptr i64 %1449 to i64*
  store i64 %1447, i64* %1450, align 8
  store i64 %1449, i64* %6, align 8
  store i64 %1446, i64* %3, align 8
  %call2_4324f6 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %1446, %struct.Memory* %call2_4322ac)
  %1451 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 158, i64* %RSI.i792, align 8
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -8
  %1454 = add i64 %1451, 19
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i64*
  %1456 = load i64, i64* %1455, align 8
  store i64 %1456, i64* %RCX.i801, align 8
  %1457 = add i64 %1456, 208
  %1458 = load i64, i64* %RAX.i803, align 8
  %1459 = add i64 %1451, 26
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1457 to i64*
  store i64 %1458, i64* %1460, align 8
  %1461 = load i64, i64* %RBP.i, align 8
  %1462 = add i64 %1461, -12
  %1463 = load i64, i64* %3, align 8
  %1464 = add i64 %1463, 4
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1462 to i32*
  %1466 = load i32, i32* %1465, align 4
  %1467 = add i32 %1466, 1
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %R8.i544, align 8
  %1469 = icmp eq i32 %1467, 0
  %1470 = zext i1 %1469 to i8
  %1471 = lshr i32 %1467, 31
  %1472 = trunc i32 %1471 to i8
  %1473 = sext i32 %1467 to i64
  %1474 = shl nsw i64 %1473, 2
  store i64 %1474, i64* %RAX.i803, align 8
  store i8 %1472, i8* %14, align 1
  %1475 = trunc i64 %1474 to i32
  %1476 = and i32 %1475, 252
  %1477 = tail call i32 @llvm.ctpop.i32(i32 %1476)
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = xor i8 %1479, 1
  store i8 %1480, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1470, i8* %29, align 1
  %1481 = lshr i64 %1473, 61
  %1482 = trunc i64 %1481 to i8
  %1483 = and i8 %1482, 1
  store i8 %1483, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1474, i64* %RDX.i765, align 8
  %1484 = add i64 %1463, 80715
  %1485 = add i64 %1463, 23
  %1486 = load i64, i64* %6, align 8
  %1487 = add i64 %1486, -8
  %1488 = inttoptr i64 %1487 to i64*
  store i64 %1485, i64* %1488, align 8
  store i64 %1487, i64* %6, align 8
  store i64 %1484, i64* %3, align 8
  %call2_432527 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %1484, %struct.Memory* %call2_4324f6)
  %1489 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 160, i64* %RSI.i792, align 8
  %1490 = load i64, i64* %RBP.i, align 8
  %1491 = add i64 %1490, -8
  %1492 = add i64 %1489, 19
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i64*
  %1494 = load i64, i64* %1493, align 8
  store i64 %1494, i64* %RCX.i801, align 8
  %1495 = add i64 %1494, 216
  %1496 = load i64, i64* %RAX.i803, align 8
  %1497 = add i64 %1489, 26
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1495 to i64*
  store i64 %1496, i64* %1498, align 8
  %1499 = load i64, i64* %RBP.i, align 8
  %1500 = add i64 %1499, -12
  %1501 = load i64, i64* %3, align 8
  %1502 = add i64 %1501, 4
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1500 to i32*
  %1504 = load i32, i32* %1503, align 4
  %1505 = add i32 %1504, 1
  %1506 = zext i32 %1505 to i64
  store i64 %1506, i64* %R8.i544, align 8
  %1507 = icmp eq i32 %1505, 0
  %1508 = zext i1 %1507 to i8
  %1509 = lshr i32 %1505, 31
  %1510 = trunc i32 %1509 to i8
  %1511 = sext i32 %1505 to i64
  %1512 = shl nsw i64 %1511, 2
  store i64 %1512, i64* %RAX.i803, align 8
  store i8 %1510, i8* %14, align 1
  %1513 = trunc i64 %1512 to i32
  %1514 = and i32 %1513, 252
  %1515 = tail call i32 @llvm.ctpop.i32(i32 %1514)
  %1516 = trunc i32 %1515 to i8
  %1517 = and i8 %1516, 1
  %1518 = xor i8 %1517, 1
  store i8 %1518, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1508, i8* %29, align 1
  %1519 = lshr i64 %1511, 61
  %1520 = trunc i64 %1519 to i8
  %1521 = and i8 %1520, 1
  store i8 %1521, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1512, i64* %RDX.i765, align 8
  %1522 = add i64 %1501, 80666
  %1523 = add i64 %1501, 23
  %1524 = load i64, i64* %6, align 8
  %1525 = add i64 %1524, -8
  %1526 = inttoptr i64 %1525 to i64*
  store i64 %1523, i64* %1526, align 8
  store i64 %1525, i64* %6, align 8
  store i64 %1522, i64* %3, align 8
  %call2_432558 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %1522, %struct.Memory* %call2_432527)
  %1527 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i798, align 8
  store i64 161, i64* %RSI.i792, align 8
  %1528 = load i64, i64* %RBP.i, align 8
  %1529 = add i64 %1528, -8
  %1530 = add i64 %1527, 19
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to i64*
  %1532 = load i64, i64* %1531, align 8
  store i64 %1532, i64* %RCX.i801, align 8
  %1533 = add i64 %1532, 408
  %1534 = load i64, i64* %RAX.i803, align 8
  %1535 = add i64 %1527, 26
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1533 to i64*
  store i64 %1534, i64* %1536, align 8
  %1537 = load i64, i64* %RBP.i, align 8
  %1538 = add i64 %1537, -12
  %1539 = load i64, i64* %3, align 8
  %1540 = add i64 %1539, 4
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1538 to i32*
  %1542 = load i32, i32* %1541, align 4
  %1543 = add i32 %1542, 1
  %1544 = zext i32 %1543 to i64
  store i64 %1544, i64* %R8.i544, align 8
  %1545 = icmp eq i32 %1543, 0
  %1546 = zext i1 %1545 to i8
  %1547 = lshr i32 %1543, 31
  %1548 = trunc i32 %1547 to i8
  %1549 = sext i32 %1543 to i64
  %1550 = shl nsw i64 %1549, 2
  store i64 %1550, i64* %RAX.i803, align 8
  store i8 %1548, i8* %14, align 1
  %1551 = trunc i64 %1550 to i32
  %1552 = and i32 %1551, 252
  %1553 = tail call i32 @llvm.ctpop.i32(i32 %1552)
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  store i8 %1556, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1546, i8* %29, align 1
  %1557 = lshr i64 %1549, 61
  %1558 = trunc i64 %1557 to i8
  %1559 = and i8 %1558, 1
  store i8 %1559, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1550, i64* %RDX.i765, align 8
  %1560 = add i64 %1539, 80617
  %1561 = add i64 %1539, 23
  %1562 = load i64, i64* %6, align 8
  %1563 = add i64 %1562, -8
  %1564 = inttoptr i64 %1563 to i64*
  store i64 %1561, i64* %1564, align 8
  store i64 %1563, i64* %6, align 8
  store i64 %1560, i64* %3, align 8
  %call2_432589 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %1560, %struct.Memory* %call2_432558)
  %1565 = load i64, i64* %RBP.i, align 8
  %1566 = add i64 %1565, -8
  %1567 = load i64, i64* %3, align 8
  %1568 = add i64 %1567, 4
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1566 to i64*
  %1570 = load i64, i64* %1569, align 8
  store i64 %1570, i64* %RCX.i801, align 8
  %1571 = add i64 %1570, 416
  %1572 = load i64, i64* %RAX.i803, align 8
  %1573 = add i64 %1567, 11
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1571 to i64*
  store i64 %1572, i64* %1574, align 8
  %1575 = load i64, i64* %RBP.i, align 8
  %1576 = add i64 %1575, -8
  %1577 = load i64, i64* %3, align 8
  %1578 = add i64 %1577, 4
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1576 to i64*
  %1580 = load i64, i64* %1579, align 8
  store i64 %1580, i64* %RAX.i803, align 8
  %1581 = add i64 %1580, 408
  %1582 = add i64 %1577, 11
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i64*
  %1584 = load i64, i64* %1583, align 8
  store i64 %1584, i64* %RAX.i803, align 8
  %1585 = add i64 %1577, 15
  store i64 %1585, i64* %3, align 8
  %1586 = load i64, i64* %1579, align 8
  store i64 %1586, i64* %RCX.i801, align 8
  %1587 = add i64 %1586, 368
  %1588 = add i64 %1577, 22
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i64*
  store i64 %1584, i64* %1589, align 8
  %1590 = load i64, i64* %RBP.i, align 8
  %1591 = add i64 %1590, -8
  %1592 = load i64, i64* %3, align 8
  %1593 = add i64 %1592, 4
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1591 to i64*
  %1595 = load i64, i64* %1594, align 8
  store i64 %1595, i64* %RAX.i803, align 8
  %1596 = add i64 %1595, 416
  %1597 = add i64 %1592, 11
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i64*
  %1599 = load i64, i64* %1598, align 8
  store i64 %1599, i64* %RAX.i803, align 8
  %1600 = add i64 %1592, 15
  store i64 %1600, i64* %3, align 8
  %1601 = load i64, i64* %1594, align 8
  store i64 %1601, i64* %RCX.i801, align 8
  %1602 = add i64 %1601, 376
  %1603 = add i64 %1592, 22
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i64*
  store i64 %1599, i64* %1604, align 8
  %1605 = load i64, i64* %6, align 8
  %1606 = load i64, i64* %3, align 8
  %1607 = add i64 %1605, 32
  store i64 %1607, i64* %6, align 8
  %1608 = icmp ugt i64 %1605, -33
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %14, align 1
  %1610 = trunc i64 %1607 to i32
  %1611 = and i32 %1610, 255
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = xor i64 %1607, %1605
  %1617 = lshr i64 %1616, 4
  %1618 = trunc i64 %1617 to i8
  %1619 = and i8 %1618, 1
  store i8 %1619, i8* %26, align 1
  %1620 = icmp eq i64 %1607, 0
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %29, align 1
  %1622 = lshr i64 %1607, 63
  %1623 = trunc i64 %1622 to i8
  store i8 %1623, i8* %32, align 1
  %1624 = lshr i64 %1605, 63
  %1625 = xor i64 %1622, %1624
  %1626 = add nuw nsw i64 %1625, %1622
  %1627 = icmp eq i64 %1626, 2
  %1628 = zext i1 %1627 to i8
  store i8 %1628, i8* %38, align 1
  %1629 = add i64 %1606, 5
  store i64 %1629, i64* %3, align 8
  %1630 = add i64 %1605, 40
  %1631 = inttoptr i64 %1607 to i64*
  %1632 = load i64, i64* %1631, align 8
  store i64 %1632, i64* %RBP.i, align 8
  store i64 %1630, i64* %6, align 8
  %1633 = add i64 %1606, 6
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1630 to i64*
  %1635 = load i64, i64* %1634, align 8
  store i64 %1635, i64* %3, align 8
  %1636 = add i64 %1605, 48
  store i64 %1636, i64* %6, align 8
  ret %struct.Memory* %call2_432589
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
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movq__0x4590ec___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6f___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 111, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x88__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 136
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -3
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__esi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x70___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 112, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -3
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
  %31 = add nuw nsw i32 %30, %26
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x71___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 113, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x20__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x72___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 114, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x28__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x74___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 116, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x48__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x75___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 117, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x90__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x76___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 118, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x98__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x77___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 119, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0xa0__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x7__MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i64 %9, 7
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 30064771072
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x78___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 120, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x90__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14___ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  %8 = mul nsw i64 %7, 20
  %9 = trunc i64 %8 to i32
  %10 = and i64 %8, 4294967292
  store i64 %10, i64* %RCX, align 8
  %11 = mul i64 %7, 85899345920
  %12 = ashr exact i64 %11, 32
  %13 = icmp ne i64 %12, %8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 252
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i32 %9, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x79___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 121, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x98__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 85899345920
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 252
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 123, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x38___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 56, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_0xa0__r8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 124, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 192, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x138__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 125, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x140__r8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 126, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x148__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 127, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x180__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 384
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x18___ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  %8 = mul nsw i64 %7, 24
  %9 = trunc i64 %8 to i32
  %10 = and i64 %8, 4294967288
  store i64 %10, i64* %RCX, align 8
  %11 = mul i64 %7, 103079215104
  %12 = ashr exact i64 %11, 32
  %13 = icmp ne i64 %12, %8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 248
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i32 %9, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x80___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 128, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x188__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 392
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x18__MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i64 %9, 24
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967288
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 103079215104
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 248
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x190__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 400
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x180__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 384
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x188__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_0x190__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jg_.L_4323c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 85899345920
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 252
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RDX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jge_.L_4323b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xa0__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x7__MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 7
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 30064771072
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4323b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43230e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x18__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -24
  %10 = icmp ult i32 %8, 24
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43244e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %5 to i64
  %11 = mul nsw i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %RCX, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RSI, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x140__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsi__rdi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RCX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x148__rsi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4323cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -7
  %10 = icmp ult i32 %8, 7
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
define %struct.Memory* @routine_jge_.L_43249f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_432455(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4324d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_jmpq_.L_4324a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x9d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 157, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  store i8 %17, i8* %11, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = icmp eq i64 %6, 0
  %21 = zext i1 %20 to i8
  store i8 %21, i8* %19, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x9e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 158, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0xd0__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 208
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r8d___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 160, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0xd8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 216
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 161, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x198__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 408
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x1a0__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 416
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x198__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x170__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 368
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x1a0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x178__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 376
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
