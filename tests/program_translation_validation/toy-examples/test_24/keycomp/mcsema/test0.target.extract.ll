; ModuleID = 'mcsema/test0.target.opt.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @strlen(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4005c0.to_byte(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400630.read_bytes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @keycomp(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 80
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i581 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, -24
  %42 = load i64, i64* %RDI.i581, align 8
  %43 = add i64 %10, 11
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %46 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %RDI.i581, align 8
  %51 = add i64 %47, -684
  %52 = add i64 %47, 9
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, -8
  %55 = inttoptr i64 %54 to i64*
  store i64 %52, i64* %55, align 8
  store i64 %54, i64* %6, align 8
  store i64 %51, i64* %3, align 8
  %56 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %2)
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i578 = bitcast %union.anon* %57 to i32*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i579 = getelementptr inbounds %union.anon, %union.anon* %58, i64 0, i32 0
  %59 = load i32, i32* %EAX.i578, align 4
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* %3, align 8
  store i64 %60, i64* %RCX.i579, align 8
  %ECX.i575 = bitcast %union.anon* %58 to i32*
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -32
  %64 = add i64 %61, 5
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %63 to i32*
  store i32 %59, i32* %65, align 4
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -32
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %67 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %71, -37
  %73 = icmp ult i32 %71, 37
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %14, align 1
  %75 = and i32 %72, 255
  %76 = tail call i32 @llvm.ctpop.i32(i32 %75)
  %77 = trunc i32 %76 to i8
  %78 = and i8 %77, 1
  %79 = xor i8 %78, 1
  store i8 %79, i8* %21, align 1
  %80 = xor i32 %71, %72
  %81 = lshr i32 %80, 4
  %82 = trunc i32 %81 to i8
  %83 = and i8 %82, 1
  store i8 %83, i8* %27, align 1
  %84 = icmp eq i32 %72, 0
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %30, align 1
  %86 = lshr i32 %72, 31
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %33, align 1
  %88 = lshr i32 %71, 31
  %89 = xor i32 %86, %88
  %90 = add nuw nsw i32 %89, %88
  %91 = icmp eq i32 %90, 2
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %39, align 1
  %.v = select i1 %84, i64 21, i64 10
  %93 = add i64 %68, %.v
  store i64 %93, i64* %3, align 8
  %RAX.i562 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  br i1 %84, label %block_.L_40076f, label %block_400764

block_400764:                                     ; preds = %entry
  %94 = add i64 %93, 3
  store i64 %94, i64* %3, align 8
  %95 = load i32, i32* %70, align 4
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RAX.i562, align 8
  %97 = add i64 %66, -4
  %98 = add i64 %93, 6
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i32*
  store i32 %95, i32* %99, align 4
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 1005
  store i64 %101, i64* %3, align 8
  br label %block_.L_400b57

block_.L_40076f:                                  ; preds = %entry
  %102 = add i64 %66, -16
  %103 = add i64 %93, 4
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i64*
  %105 = load i64, i64* %104, align 8
  %106 = add i64 %105, 4
  store i64 %106, i64* %RAX.i562, align 8
  %107 = icmp ugt i64 %105, -5
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %14, align 1
  %109 = trunc i64 %106 to i32
  %110 = and i32 %109, 255
  %111 = tail call i32 @llvm.ctpop.i32(i32 %110)
  %112 = trunc i32 %111 to i8
  %113 = and i8 %112, 1
  %114 = xor i8 %113, 1
  store i8 %114, i8* %21, align 1
  %115 = xor i64 %105, %106
  %116 = lshr i64 %115, 4
  %117 = trunc i64 %116 to i8
  %118 = and i8 %117, 1
  store i8 %118, i8* %27, align 1
  %119 = icmp eq i64 %106, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %30, align 1
  %121 = lshr i64 %106, 63
  %122 = trunc i64 %121 to i8
  store i8 %122, i8* %33, align 1
  %123 = lshr i64 %105, 63
  %124 = xor i64 %121, %123
  %125 = add nuw nsw i64 %124, %121
  %126 = icmp eq i64 %125, 2
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %39, align 1
  %128 = add i64 %93, 12
  store i64 %128, i64* %3, align 8
  store i64 %106, i64* %104, align 8
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -16
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 4
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %130 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RAX.i562, align 8
  %135 = add i64 %131, 7
  store i64 %135, i64* %3, align 8
  %136 = inttoptr i64 %134 to i8*
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i64
  %139 = and i64 %138, 4294967295
  store i64 %139, i64* %RCX.i579, align 8
  %140 = sext i8 %137 to i32
  %141 = add nsw i32 %140, -100
  %142 = icmp ult i8 %137, 100
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %14, align 1
  %144 = and i32 %141, 255
  %145 = tail call i32 @llvm.ctpop.i32(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = and i8 %146, 1
  %148 = xor i8 %147, 1
  store i8 %148, i8* %21, align 1
  %149 = xor i32 %140, %141
  %150 = lshr i32 %149, 4
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  store i8 %152, i8* %27, align 1
  %153 = icmp eq i32 %141, 0
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %30, align 1
  %155 = lshr i32 %141, 31
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %33, align 1
  %157 = lshr i32 %140, 31
  %158 = xor i32 %155, %157
  %159 = add nuw nsw i32 %158, %157
  %160 = icmp eq i32 %159, 2
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %39, align 1
  %.v51 = select i1 %153, i64 28, i64 16
  %162 = add i64 %131, %.v51
  store i64 %162, i64* %3, align 8
  br i1 %153, label %block_.L_400797, label %block_40078b

block_40078b:                                     ; preds = %block_.L_40076f
  %163 = add i64 %129, -4
  %164 = add i64 %162, 7
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  store i32 -2, i32* %165, align 4
  %166 = load i64, i64* %3, align 8
  %167 = add i64 %166, 965
  store i64 %167, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400797:                                  ; preds = %block_.L_40076f
  %168 = add i64 %162, 4
  store i64 %168, i64* %3, align 8
  %169 = load i64, i64* %133, align 8
  store i64 %169, i64* %RAX.i562, align 8
  %170 = add i64 %169, 1
  %171 = add i64 %162, 8
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i8*
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i64
  store i64 %174, i64* %RDI.i581, align 8
  %175 = add i64 %162, -471
  %176 = add i64 %162, 13
  %177 = load i64, i64* %6, align 8
  %178 = add i64 %177, -8
  %179 = inttoptr i64 %178 to i64*
  store i64 %176, i64* %179, align 8
  store i64 %178, i64* %6, align 8
  store i64 %175, i64* %3, align 8
  %call2_40079f = tail call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %175, %struct.Memory* %56)
  %180 = load i32, i32* %EAX.i578, align 4
  %181 = load i64, i64* %3, align 8
  %182 = add i32 %180, -9
  %183 = icmp ult i32 %180, 9
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %14, align 1
  %185 = and i32 %182, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185)
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %21, align 1
  %190 = xor i32 %180, %182
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %27, align 1
  %194 = icmp eq i32 %182, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %30, align 1
  %196 = lshr i32 %182, 31
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %33, align 1
  %198 = lshr i32 %180, 31
  %199 = xor i32 %196, %198
  %200 = add nuw nsw i32 %199, %198
  %201 = icmp eq i32 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %39, align 1
  %.v52 = select i1 %194, i64 21, i64 9
  %203 = add i64 %181, %.v52
  store i64 %203, i64* %3, align 8
  %204 = load i64, i64* %RBP.i, align 8
  br i1 %194, label %block_.L_4007b9, label %block_4007ad

block_4007ad:                                     ; preds = %block_.L_400797
  %205 = add i64 %204, -4
  %206 = add i64 %203, 7
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  store i32 -3, i32* %207, align 4
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, 931
  store i64 %209, i64* %3, align 8
  br label %block_.L_400b57

block_.L_4007b9:                                  ; preds = %block_.L_400797
  %210 = add i64 %204, -16
  %211 = add i64 %203, 4
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %RAX.i562, align 8
  %214 = add i64 %213, 2
  %215 = add i64 %203, 8
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i8*
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i64
  store i64 %218, i64* %RDI.i581, align 8
  %219 = add i64 %203, -505
  %220 = add i64 %203, 13
  %221 = load i64, i64* %6, align 8
  %222 = add i64 %221, -8
  %223 = inttoptr i64 %222 to i64*
  store i64 %220, i64* %223, align 8
  store i64 %222, i64* %6, align 8
  store i64 %219, i64* %3, align 8
  %call2_4007c1 = tail call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %219, %struct.Memory* %call2_40079f)
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -24
  %226 = load i32, i32* %EAX.i578, align 4
  %227 = load i64, i64* %3, align 8
  %228 = add i64 %227, 3
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %225 to i32*
  store i32 %226, i32* %229, align 4
  %230 = load i64, i64* %RBP.i, align 8
  %231 = add i64 %230, -24
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, 3
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %231 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = shl i32 %235, 1
  %237 = zext i32 %236 to i64
  store i64 %237, i64* %RAX.i562, align 8
  %238 = lshr i32 %235, 30
  %239 = and i32 %238, 1
  %240 = add i32 %236, -26
  %241 = icmp ult i32 %236, 26
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %14, align 1
  %243 = and i32 %240, 254
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %21, align 1
  %248 = xor i32 %236, 16
  %249 = xor i32 %248, %240
  %250 = lshr i32 %249, 4
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  store i8 %252, i8* %27, align 1
  %253 = icmp eq i32 %240, 0
  %254 = zext i1 %253 to i8
  store i8 %254, i8* %30, align 1
  %255 = lshr i32 %240, 31
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* %33, align 1
  %257 = xor i32 %255, %239
  %258 = add nuw nsw i32 %257, %239
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %39, align 1
  %.v53 = select i1 %253, i64 27, i64 15
  %261 = add i64 %232, %.v53
  store i64 %261, i64* %3, align 8
  br i1 %253, label %block_.L_4007e4, label %block_4007d8

block_4007d8:                                     ; preds = %block_.L_4007b9
  %262 = add i64 %230, -4
  %263 = add i64 %261, 7
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i32*
  store i32 -4, i32* %264, align 4
  %265 = load i64, i64* %3, align 8
  %266 = add i64 %265, 888
  store i64 %266, i64* %3, align 8
  br label %block_.L_400b57

block_.L_4007e4:                                  ; preds = %block_.L_4007b9
  %267 = add i64 %230, -16
  %268 = add i64 %261, 4
  store i64 %268, i64* %3, align 8
  %269 = inttoptr i64 %267 to i64*
  %270 = load i64, i64* %269, align 8
  store i64 %270, i64* %RAX.i562, align 8
  %271 = add i64 %270, 3
  %272 = add i64 %261, 8
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i8*
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i64
  store i64 %275, i64* %RDI.i581, align 8
  %276 = add i64 %261, -548
  %277 = add i64 %261, 13
  %278 = load i64, i64* %6, align 8
  %279 = add i64 %278, -8
  %280 = inttoptr i64 %279 to i64*
  store i64 %277, i64* %280, align 8
  store i64 %279, i64* %6, align 8
  store i64 %276, i64* %3, align 8
  %call2_4007ec = tail call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %276, %struct.Memory* %call2_4007c1)
  %281 = load i64, i64* %3, align 8
  store i64 2, i64* %RDI.i581, align 8
  %282 = load i64, i64* %RBP.i, align 8
  %283 = add i64 %282, -28
  %284 = load i32, i32* %EAX.i578, align 4
  %285 = add i64 %281, 8
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %283 to i32*
  store i32 %284, i32* %286, align 4
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -28
  %289 = load i64, i64* %3, align 8
  %290 = add i64 %289, 3
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %288 to i32*
  %292 = load i32, i32* %291, align 4
  %293 = add i32 %292, 1
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX.i562, align 8
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
  %304 = xor i32 %292, %293
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %27, align 1
  %308 = zext i1 %296 to i8
  store i8 %308, i8* %30, align 1
  %309 = lshr i32 %293, 31
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %33, align 1
  %311 = lshr i32 %292, 31
  %312 = xor i32 %309, %311
  %313 = add nuw nsw i32 %312, %309
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %39, align 1
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %317 = sext i32 %293 to i64
  %318 = lshr i64 %317, 32
  store i64 %318, i64* %316, align 8
  %EDI.i489 = bitcast %union.anon* %40 to i32*
  %319 = load i32, i32* %EDI.i489, align 4
  %320 = add i64 %289, 9
  store i64 %320, i64* %3, align 8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %322 = sext i32 %319 to i64
  %323 = shl nuw i64 %318, 32
  %324 = or i64 %323, %294
  %325 = sdiv i64 %324, %322
  %326 = shl i64 %325, 32
  %327 = ashr exact i64 %326, 32
  %328 = icmp eq i64 %325, %327
  br i1 %328, label %331, label %329

; <label>:329:                                    ; preds = %block_.L_4007e4
  %330 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %320, %struct.Memory* %call2_4007ec)
  %.pre = load i32, i32* %EAX.i578, align 4
  %.pre1 = load i64, i64* %3, align 8
  %.pre74 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__edi.exit

; <label>:331:                                    ; preds = %block_.L_4007e4
  %332 = srem i64 %324, %322
  %333 = and i64 %325, 4294967295
  store i64 %333, i64* %RAX.i562, align 8
  %334 = getelementptr inbounds %union.anon, %union.anon* %321, i64 0, i32 0
  %335 = and i64 %332, 4294967295
  store i64 %335, i64* %334, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %336 = trunc i64 %325 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %331, %329
  %337 = phi i64 [ %.pre74, %329 ], [ %287, %331 ]
  %338 = phi i64 [ %.pre1, %329 ], [ %320, %331 ]
  %339 = phi i32 [ %.pre, %329 ], [ %336, %331 ]
  %340 = phi %struct.Memory* [ %330, %329 ], [ %call2_4007ec, %331 ]
  %341 = add i32 %339, -7
  %342 = icmp ult i32 %339, 7
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %14, align 1
  %344 = and i32 %341, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %21, align 1
  %349 = xor i32 %339, %341
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %27, align 1
  %353 = icmp eq i32 %341, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %30, align 1
  %355 = lshr i32 %341, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %33, align 1
  %357 = lshr i32 %339, 31
  %358 = xor i32 %355, %357
  %359 = add nuw nsw i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %39, align 1
  %.v54 = select i1 %353, i64 21, i64 9
  %362 = add i64 %338, %.v54
  store i64 %362, i64* %3, align 8
  br i1 %353, label %block_.L_400817, label %block_40080b

block_40080b:                                     ; preds = %routine_idivl__edi.exit
  %363 = add i64 %337, -4
  %364 = add i64 %362, 7
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i32*
  store i32 -5, i32* %365, align 4
  %366 = load i64, i64* %3, align 8
  %367 = add i64 %366, 837
  store i64 %367, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400817:                                  ; preds = %routine_idivl__edi.exit
  %368 = add i64 %337, -16
  %369 = add i64 %362, 4
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i64*
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* %RAX.i562, align 8
  %372 = add i64 %371, 4
  %373 = add i64 %362, 8
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i8*
  %375 = load i8, i8* %374, align 1
  %376 = and i8 %375, 15
  %377 = zext i8 %376 to i64
  %378 = zext i8 %376 to i32
  store i64 %377, i64* %RCX.i579, align 8
  %379 = add nsw i32 %378, -1
  %380 = icmp eq i8 %376, 0
  %381 = zext i1 %380 to i8
  store i8 %381, i8* %14, align 1
  %382 = and i32 %379, 255
  %383 = tail call i32 @llvm.ctpop.i32(i32 %382)
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  %386 = xor i8 %385, 1
  store i8 %386, i8* %21, align 1
  %387 = lshr i32 %379, 4
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  store i8 %389, i8* %27, align 1
  %390 = icmp eq i32 %379, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %30, align 1
  %392 = lshr i32 %379, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v55 = select i1 %390, i64 20, i64 55
  %394 = add i64 %362, %.v55
  store i64 %394, i64* %3, align 8
  br i1 %390, label %block_40082b, label %block_.L_40084e

block_40082b:                                     ; preds = %block_.L_400817
  %395 = add i64 %394, 4
  store i64 %395, i64* %3, align 8
  %396 = load i64, i64* %370, align 8
  store i64 %396, i64* %RAX.i562, align 8
  %397 = add i64 %396, 4
  %398 = add i64 %394, 8
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i8*
  %400 = load i8, i8* %399, align 1
  %401 = and i8 %400, -16
  %402 = zext i8 %401 to i64
  %403 = zext i8 %401 to i32
  store i64 %402, i64* %RCX.i579, align 8
  %404 = add nsw i32 %403, -48
  %405 = icmp ult i8 %401, 48
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %14, align 1
  %407 = and i32 %404, 240
  %408 = tail call i32 @llvm.ctpop.i32(i32 %407)
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %21, align 1
  %412 = xor i8 %401, 16
  %413 = zext i8 %412 to i32
  %414 = xor i32 %413, %404
  %415 = lshr exact i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %27, align 1
  %418 = icmp eq i32 %404, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %30, align 1
  %420 = lshr i32 %404, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v56 = select i1 %418, i64 23, i64 35
  %422 = add i64 %394, %.v56
  store i64 %422, i64* %3, align 8
  br i1 %418, label %block_400842, label %block_.L_40084e

block_400842:                                     ; preds = %block_40082b
  %423 = add i64 %337, -20
  %424 = add i64 %422, 7
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  store i32 -4, i32* %425, align 4
  %426 = load i64, i64* %3, align 8
  %427 = load i64, i64* %RBP.i, align 8
  %428 = add i64 %427, -16
  %429 = add i64 %426, 21
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i64*
  %431 = load i64, i64* %430, align 8
  store i64 %431, i64* %RAX.i562, align 8
  %432 = add i64 %431, 5
  %433 = add i64 %426, 25
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %432 to i8*
  %435 = load i8, i8* %434, align 1
  %436 = and i8 %435, 15
  %437 = zext i8 %436 to i64
  %438 = zext i8 %436 to i32
  store i64 %437, i64* %RCX.i579, align 8
  store i8 0, i8* %14, align 1
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %21, align 1
  %443 = icmp eq i8 %436, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %CL.i444 = bitcast %union.anon* %58 to i8*
  %DL.i445 = bitcast %union.anon* %321 to i8*
  store i8 %436, i8* %DL.i445, align 1
  %445 = add i64 %427, -33
  %446 = add i64 %426, 33
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i8*
  store i8 %436, i8* %447, align 1
  %448 = load i64, i64* %RBP.i, align 8
  %449 = add i64 %448, -16
  %450 = load i64, i64* %3, align 8
  %451 = add i64 %450, 4
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %449 to i64*
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %RAX.i562, align 8
  %454 = add i64 %453, 5
  %455 = add i64 %450, 8
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i8*
  %457 = load i8, i8* %456, align 1
  %458 = and i8 %457, -16
  %459 = zext i8 %458 to i64
  %460 = zext i8 %458 to i32
  store i64 %459, i64* %RCX.i579, align 8
  store i8 0, i8* %14, align 1
  %461 = tail call i32 @llvm.ctpop.i32(i32 %460)
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = xor i8 %463, 1
  store i8 %464, i8* %21, align 1
  %465 = icmp eq i8 %458, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 %458, i8* %DL.i445, align 1
  %467 = add i64 %448, -34
  %468 = add i64 %450, 19
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i8*
  store i8 %458, i8* %469, align 1
  %470 = load i64, i64* %RBP.i, align 8
  %471 = add i64 %470, -33
  %472 = load i64, i64* %3, align 8
  %473 = add i64 %472, 4
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %471 to i8*
  %475 = load i8, i8* %474, align 1
  %476 = zext i8 %475 to i64
  store i64 %476, i64* %RCX.i579, align 8
  %477 = zext i8 %475 to i32
  %478 = add nsw i32 %477, -3
  %479 = icmp ult i8 %475, 3
  %480 = zext i1 %479 to i8
  store i8 %480, i8* %14, align 1
  %481 = and i32 %478, 255
  %482 = tail call i32 @llvm.ctpop.i32(i32 %481)
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  %485 = xor i8 %484, 1
  store i8 %485, i8* %21, align 1
  %486 = xor i32 %477, %478
  %487 = lshr i32 %486, 4
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  store i8 %489, i8* %27, align 1
  %490 = icmp eq i32 %478, 0
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %30, align 1
  %492 = lshr i32 %478, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v57 = select i1 %490, i64 13, i64 40
  %494 = add i64 %472, %.v57
  store i64 %494, i64* %3, align 8
  br i1 %490, label %block_40088a, label %block_.L_4008a5

block_.L_40084e:                                  ; preds = %block_40082b, %block_.L_400817
  %495 = phi i64 [ %422, %block_40082b ], [ %394, %block_.L_400817 ]
  %496 = add i64 %337, -4
  %497 = add i64 %495, 7
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  store i32 -6, i32* %498, align 4
  %499 = load i64, i64* %3, align 8
  %500 = add i64 %499, 770
  store i64 %500, i64* %3, align 8
  br label %block_.L_400b57

block_40088a:                                     ; preds = %block_400842
  %501 = add i64 %470, -34
  %502 = add i64 %494, 4
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i8*
  %504 = load i8, i8* %503, align 1
  %505 = zext i8 %504 to i64
  store i64 %505, i64* %RAX.i562, align 8
  %506 = zext i8 %504 to i32
  %507 = add nsw i32 %506, -96
  %508 = icmp ult i8 %504, 96
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %14, align 1
  %510 = and i32 %507, 255
  %511 = tail call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  store i8 %514, i8* %21, align 1
  %515 = xor i32 %506, %507
  %516 = lshr i32 %515, 4
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %27, align 1
  %519 = icmp eq i32 %507, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %30, align 1
  %521 = lshr i32 %507, 31
  %522 = trunc i32 %521 to i8
  store i8 %522, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v58 = select i1 %519, i64 13, i64 27
  %523 = add i64 %494, %.v58
  store i64 %523, i64* %3, align 8
  br i1 %519, label %block_400897, label %block_.L_4008a5

block_400897:                                     ; preds = %block_40088a
  %524 = add i64 %470, -20
  %525 = add i64 %523, 3
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i32*
  %527 = load i32, i32* %526, align 4
  %528 = add i32 %527, 4
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RAX.i562, align 8
  %530 = icmp ugt i32 %527, -5
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %14, align 1
  %532 = and i32 %528, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %21, align 1
  %537 = xor i32 %527, %528
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  store i8 %540, i8* %27, align 1
  %541 = icmp eq i32 %528, 0
  %542 = zext i1 %541 to i8
  store i8 %542, i8* %30, align 1
  %543 = lshr i32 %528, 31
  %544 = trunc i32 %543 to i8
  store i8 %544, i8* %33, align 1
  %545 = lshr i32 %527, 31
  %546 = xor i32 %543, %545
  %547 = add nuw nsw i32 %546, %543
  %548 = icmp eq i32 %547, 2
  %549 = zext i1 %548 to i8
  store i8 %549, i8* %39, align 1
  %550 = add i64 %523, 9
  store i64 %550, i64* %3, align 8
  store i32 %528, i32* %526, align 4
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, 14
  store i64 %552, i64* %3, align 8
  br label %block_.L_4008ae

block_.L_4008a5:                                  ; preds = %block_40088a, %block_400842
  %553 = phi i64 [ %523, %block_40088a ], [ %494, %block_400842 ]
  %554 = add i64 %470, -20
  %555 = add i64 %553, 3
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = add i32 %557, 5
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RAX.i562, align 8
  %560 = icmp ugt i32 %557, -6
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %14, align 1
  %562 = and i32 %558, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %21, align 1
  %567 = xor i32 %557, %558
  %568 = lshr i32 %567, 4
  %569 = trunc i32 %568 to i8
  %570 = and i8 %569, 1
  store i8 %570, i8* %27, align 1
  %571 = icmp eq i32 %558, 0
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %30, align 1
  %573 = lshr i32 %558, 31
  %574 = trunc i32 %573 to i8
  store i8 %574, i8* %33, align 1
  %575 = lshr i32 %557, 31
  %576 = xor i32 %573, %575
  %577 = add nuw nsw i32 %576, %573
  %578 = icmp eq i32 %577, 2
  %579 = zext i1 %578 to i8
  store i8 %579, i8* %39, align 1
  %580 = add i64 %553, 9
  store i64 %580, i64* %3, align 8
  store i32 %558, i32* %556, align 4
  %.pre2 = load i64, i64* %3, align 8
  br label %block_.L_4008ae

block_.L_4008ae:                                  ; preds = %block_.L_4008a5, %block_400897
  %581 = phi i64 [ %.pre2, %block_.L_4008a5 ], [ %552, %block_400897 ]
  %582 = load i64, i64* %RBP.i, align 8
  %583 = add i64 %582, -16
  %584 = add i64 %581, 4
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i64*
  %586 = load i64, i64* %585, align 8
  store i64 %586, i64* %RAX.i562, align 8
  %587 = add i64 %586, 6
  %588 = add i64 %581, 8
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %587 to i8*
  %590 = load i8, i8* %589, align 1
  %591 = zext i8 %590 to i64
  store i64 %591, i64* %RDI.i581, align 8
  %592 = add i64 %581, -750
  %593 = add i64 %581, 13
  %594 = load i64, i64* %6, align 8
  %595 = add i64 %594, -8
  %596 = inttoptr i64 %595 to i64*
  store i64 %593, i64* %596, align 8
  store i64 %595, i64* %6, align 8
  store i64 %592, i64* %3, align 8
  %call2_4008b6 = tail call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %592, %struct.Memory* %340)
  %AL.i = bitcast %union.anon* %57 to i8*
  %597 = load i8, i8* %AL.i, align 1
  %598 = load i64, i64* %3, align 8
  store i8 %597, i8* %CL.i444, align 1
  %599 = load i64, i64* %RBP.i, align 8
  %600 = add i64 %599, -35
  %601 = add i64 %598, 5
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i8*
  store i8 %597, i8* %602, align 1
  %RDX.i384 = getelementptr inbounds %union.anon, %union.anon* %321, i64 0, i32 0
  %603 = load i64, i64* %RBP.i, align 8
  %604 = add i64 %603, -16
  %605 = load i64, i64* %3, align 8
  %606 = add i64 %605, 4
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %604 to i64*
  %608 = load i64, i64* %607, align 8
  store i64 %608, i64* %RDX.i384, align 8
  %609 = add i64 %608, 7
  %610 = add i64 %605, 8
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i8*
  %612 = load i8, i8* %611, align 1
  %613 = zext i8 %612 to i64
  store i64 %613, i64* %RDI.i581, align 8
  %614 = add i64 %605, -768
  %615 = add i64 %605, 13
  %616 = load i64, i64* %6, align 8
  %617 = add i64 %616, -8
  %618 = inttoptr i64 %617 to i64*
  store i64 %615, i64* %618, align 8
  store i64 %617, i64* %6, align 8
  store i64 %614, i64* %3, align 8
  %call2_4008c8 = tail call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %614, %struct.Memory* %call2_4008b6)
  %619 = load i64, i64* %RBP.i, align 8
  %620 = add i64 %619, -35
  %621 = load i64, i64* %3, align 8
  %622 = add i64 %621, 4
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %620 to i8*
  %624 = load i8, i8* %623, align 1
  %625 = zext i8 %624 to i64
  %626 = load i32, i32* %EAX.i578, align 4
  %627 = zext i32 %626 to i64
  %628 = or i64 %627, %625
  %629 = trunc i64 %628 to i32
  store i64 %628, i64* %RDI.i581, align 8
  store i8 0, i8* %14, align 1
  %630 = and i32 %629, 255
  %631 = tail call i32 @llvm.ctpop.i32(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  %634 = xor i8 %633, 1
  store i8 %634, i8* %21, align 1
  %635 = icmp eq i32 %629, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %30, align 1
  %637 = lshr i32 %629, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %639 = trunc i64 %628 to i8
  store i8 %639, i8* %CL.i444, align 1
  %640 = add i64 %621, 12
  store i64 %640, i64* %3, align 8
  store i8 %639, i8* %623, align 1
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -35
  %643 = load i64, i64* %3, align 8
  %644 = add i64 %643, 4
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %642 to i8*
  %646 = load i8, i8* %645, align 1
  %647 = zext i8 %646 to i64
  %648 = xor i64 %647, 4294967295
  store i64 %648, i64* %RAX.i562, align 8
  %649 = trunc i64 %648 to i32
  %650 = add nsw i32 %649, -70
  store i8 0, i8* %14, align 1
  %651 = and i32 %650, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %21, align 1
  %656 = xor i8 %646, 16
  %657 = zext i8 %656 to i32
  %658 = xor i32 %657, %650
  %659 = lshr i32 %658, 4
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  store i8 %661, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 1, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %662 = add i64 %641, -20
  %663 = add i64 %643, 33
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RCX.i579, align 8
  %667 = add i64 %643, 36
  store i64 %667, i64* %3, align 8
  %668 = load i32, i32* %664, align 4
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RAX.i562, align 8
  %670 = add i64 %643, 38
  store i64 %670, i64* %3, align 8
  %671 = trunc i32 %665 to i5
  switch i5 %671, label %677 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %672
  ]

; <label>:672:                                    ; preds = %block_.L_4008ae
  %673 = shl i32 %668, 1
  %674 = icmp slt i32 %668, 0
  %675 = icmp slt i32 %673, 0
  %676 = xor i1 %674, %675
  br label %686

; <label>:677:                                    ; preds = %block_.L_4008ae
  %678 = and i32 %665, 31
  %679 = zext i32 %678 to i64
  %680 = add nuw nsw i64 %679, 4294967295
  %681 = and i64 %680, 4294967295
  %682 = shl i64 %669, %681
  %683 = trunc i64 %682 to i32
  %684 = icmp slt i32 %683, 0
  %685 = shl i32 %683, 1
  br label %686

; <label>:686:                                    ; preds = %677, %672
  %687 = phi i1 [ %674, %672 ], [ %684, %677 ]
  %688 = phi i1 [ %676, %672 ], [ false, %677 ]
  %689 = phi i32 [ %673, %672 ], [ %685, %677 ]
  %690 = zext i32 %689 to i64
  store i64 %690, i64* %RAX.i562, align 8
  %691 = zext i1 %687 to i8
  store i8 %691, i8* %14, align 1
  %692 = and i32 %689, 254
  %693 = tail call i32 @llvm.ctpop.i32(i32 %692)
  %694 = trunc i32 %693 to i8
  %695 = and i8 %694, 1
  %696 = xor i8 %695, 1
  store i8 %696, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %697 = icmp eq i32 %689, 0
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %30, align 1
  %699 = lshr i32 %689, 31
  %700 = trunc i32 %699 to i8
  store i8 %700, i8* %33, align 1
  %701 = zext i1 %688 to i8
  store i8 %701, i8* %39, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %686, %block_.L_4008ae
  %702 = phi i32 [ %689, %686 ], [ %668, %block_.L_4008ae ]
  %703 = add i64 %643, 41
  store i64 %703, i64* %3, align 8
  store i32 %702, i32* %664, align 4
  %.pre3 = load i64, i64* %RBP.i, align 8
  %.pre4 = load i64, i64* %3, align 8
  %704 = add i64 %.pre3, -20
  %705 = add i64 %.pre4, 4
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i32*
  %707 = load i32, i32* %706, align 4
  store i8 0, i8* %14, align 1
  %708 = and i32 %707, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %713 = icmp eq i32 %707, 0
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %30, align 1
  %715 = lshr i32 %707, 31
  %716 = trunc i32 %715 to i8
  store i8 %716, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v59 = select i1 %713, i64 22, i64 10
  %717 = add i64 %.pre4, %.v59
  store i64 %717, i64* %3, align 8
  br i1 %713, label %block_.L_400918, label %block_40090c

block_40090c:                                     ; preds = %routine_shll__cl___eax.exit
  %718 = add i64 %.pre3, -4
  %719 = add i64 %717, 7
  store i64 %719, i64* %3, align 8
  %720 = inttoptr i64 %718 to i32*
  store i32 -7, i32* %720, align 4
  %721 = load i64, i64* %3, align 8
  %722 = add i64 %721, 580
  store i64 %722, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400918:                                  ; preds = %routine_shll__cl___eax.exit
  store i64 0, i64* %RDI.i581, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 4, i64* %RDX.i384, align 8
  %723 = add i64 %.pre3, -16
  %724 = add i64 %717, 11
  store i64 %724, i64* %3, align 8
  %725 = inttoptr i64 %723 to i64*
  %726 = load i64, i64* %725, align 8
  %727 = add i64 %726, 8
  store i64 %727, i64* %RAX.i562, align 8
  %728 = icmp ugt i64 %726, -9
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %14, align 1
  %730 = trunc i64 %727 to i32
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  %736 = xor i64 %726, %727
  %737 = lshr i64 %736, 4
  %738 = trunc i64 %737 to i8
  %739 = and i8 %738, 1
  store i8 %739, i8* %27, align 1
  %740 = icmp eq i64 %727, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %30, align 1
  %742 = lshr i64 %727, 63
  %743 = trunc i64 %742 to i8
  store i8 %743, i8* %33, align 1
  %744 = lshr i64 %726, 63
  %745 = xor i64 %742, %744
  %746 = add nuw nsw i64 %745, %742
  %747 = icmp eq i64 %746, 2
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %39, align 1
  %RSI.i323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 %727, i64* %RSI.i323, align 8
  %749 = add i64 %717, -744
  %750 = add i64 %717, 23
  %751 = load i64, i64* %6, align 8
  %752 = add i64 %751, -8
  %753 = inttoptr i64 %752 to i64*
  store i64 %750, i64* %753, align 8
  store i64 %752, i64* %6, align 8
  store i64 %749, i64* %3, align 8
  %call2_40092a = tail call %struct.Memory* @sub_400630.read_bytes(%struct.State* %0, i64 %749, %struct.Memory* %call2_4008c8)
  %AX.i = bitcast %union.anon* %57 to i16*
  %CX.i319 = bitcast %union.anon* %58 to i16*
  %754 = load i16, i16* %AX.i, align 2
  %755 = load i64, i64* %3, align 8
  store i16 %754, i16* %CX.i319, align 2
  %756 = load i64, i64* %RBP.i, align 8
  %757 = add i64 %756, -38
  %758 = add i64 %755, 7
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i16*
  store i16 %754, i16* %759, align 2
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -38
  %762 = load i64, i64* %3, align 8
  %763 = add i64 %762, 4
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %761 to i16*
  %765 = load i16, i16* %764, align 2
  %766 = or i16 %765, 21845
  %767 = zext i16 %766 to i64
  store i64 %767, i64* %RAX.i562, align 8
  %768 = zext i16 %766 to i32
  %769 = add nsw i32 %768, -56663
  %770 = icmp ult i16 %766, -8873
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %14, align 1
  %772 = and i32 %769, 254
  %773 = tail call i32 @llvm.ctpop.i32(i32 %772)
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  %776 = xor i8 %775, 1
  store i8 %776, i8* %21, align 1
  %777 = lshr i32 %769, 4
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  store i8 %779, i8* %27, align 1
  %780 = icmp eq i32 %769, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %30, align 1
  %782 = lshr i32 %769, 31
  %783 = trunc i32 %782 to i8
  store i8 %783, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v60 = select i1 %780, i64 20, i64 52
  %784 = add i64 %762, %.v60
  store i64 %784, i64* %3, align 8
  br i1 %780, label %block_40094a, label %block_.L_40096a

block_40094a:                                     ; preds = %block_.L_400918
  %785 = add i64 %784, 4
  store i64 %785, i64* %3, align 8
  %786 = load i16, i16* %764, align 2
  %787 = or i16 %786, -21846
  %788 = zext i16 %787 to i64
  store i64 %788, i64* %RAX.i562, align 8
  %789 = zext i16 %787 to i32
  %790 = add nsw i32 %789, -65211
  %791 = icmp ult i16 %787, -325
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %14, align 1
  %793 = and i32 %790, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %21, align 1
  %798 = xor i16 %787, 16
  %799 = zext i16 %798 to i32
  %800 = xor i32 %799, %790
  %801 = lshr i32 %800, 4
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %27, align 1
  %804 = icmp eq i32 %790, 0
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %30, align 1
  %806 = lshr i32 %790, 31
  %807 = trunc i32 %806 to i8
  store i8 %807, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v61 = select i1 %804, i64 20, i64 32
  %808 = add i64 %784, %.v61
  store i64 %808, i64* %3, align 8
  br i1 %804, label %block_40095e, label %block_.L_40096a

block_40095e:                                     ; preds = %block_40094a
  %809 = add i64 %760, -20
  %810 = add i64 %808, 7
  store i64 %810, i64* %3, align 8
  %811 = inttoptr i64 %809 to i32*
  store i32 43690, i32* %811, align 4
  %812 = load i64, i64* %3, align 8
  %813 = add i64 %812, 12
  store i64 %813, i64* %3, align 8
  br label %block_.L_400971

block_.L_40096a:                                  ; preds = %block_40094a, %block_.L_400918
  %814 = phi i64 [ %808, %block_40094a ], [ %784, %block_.L_400918 ]
  %815 = add i64 %760, -20
  %816 = add i64 %814, 7
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  store i32 48059, i32* %817, align 4
  %.pre5 = load i64, i64* %3, align 8
  br label %block_.L_400971

block_.L_400971:                                  ; preds = %block_.L_40096a, %block_40095e
  %818 = phi i64 [ %.pre5, %block_.L_40096a ], [ %813, %block_40095e ]
  store i64 0, i64* %RDI.i581, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 8, i64* %RDX.i384, align 8
  %819 = load i64, i64* %RBP.i, align 8
  %820 = add i64 %819, -16
  %821 = add i64 %818, 11
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i64*
  %823 = load i64, i64* %822, align 8
  %824 = add i64 %823, 12
  store i64 %824, i64* %RAX.i562, align 8
  %825 = icmp ugt i64 %823, -13
  %826 = zext i1 %825 to i8
  store i8 %826, i8* %14, align 1
  %827 = trunc i64 %824 to i32
  %828 = and i32 %827, 255
  %829 = tail call i32 @llvm.ctpop.i32(i32 %828)
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  store i8 %832, i8* %21, align 1
  %833 = xor i64 %823, %824
  %834 = lshr i64 %833, 4
  %835 = trunc i64 %834 to i8
  %836 = and i8 %835, 1
  store i8 %836, i8* %27, align 1
  %837 = icmp eq i64 %824, 0
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %30, align 1
  %839 = lshr i64 %824, 63
  %840 = trunc i64 %839 to i8
  store i8 %840, i8* %33, align 1
  %841 = lshr i64 %823, 63
  %842 = xor i64 %839, %841
  %843 = add nuw nsw i64 %842, %839
  %844 = icmp eq i64 %843, 2
  %845 = zext i1 %844 to i8
  store i8 %845, i8* %39, align 1
  store i64 %824, i64* %RSI.i323, align 8
  %846 = add i64 %818, -833
  %847 = add i64 %818, 23
  %848 = load i64, i64* %6, align 8
  %849 = add i64 %848, -8
  %850 = inttoptr i64 %849 to i64*
  store i64 %847, i64* %850, align 8
  store i64 %849, i64* %6, align 8
  store i64 %846, i64* %3, align 8
  %call2_400983 = tail call %struct.Memory* @sub_400630.read_bytes(%struct.State* %0, i64 %846, %struct.Memory* %call2_40092a)
  %851 = load i64, i64* %RBP.i, align 8
  %852 = add i64 %851, -44
  %853 = load i32, i32* %EAX.i578, align 4
  %854 = load i64, i64* %3, align 8
  %855 = add i64 %854, 3
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %852 to i32*
  store i32 %853, i32* %856, align 4
  %857 = load i64, i64* %RBP.i, align 8
  %858 = add i64 %857, -44
  %859 = load i64, i64* %3, align 8
  %860 = add i64 %859, 3
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %858 to i32*
  %862 = load i32, i32* %861, align 4
  %863 = zext i32 %862 to i64
  %864 = xor i64 %863, -1534560611
  %865 = trunc i64 %864 to i32
  %866 = and i64 %864, 4294967295
  store i64 %866, i64* %RAX.i562, align 8
  store i8 0, i8* %14, align 1
  %867 = and i32 %865, 255
  %868 = tail call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  store i8 %871, i8* %21, align 1
  %872 = icmp eq i32 %865, 0
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %30, align 1
  %874 = lshr i32 %865, 31
  %875 = trunc i32 %874 to i8
  store i8 %875, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %876 = add i64 %857, -48
  %877 = add i64 %859, 11
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i32*
  store i32 %865, i32* %878, align 4
  %879 = load i64, i64* %RBP.i, align 8
  %880 = add i64 %879, -48
  %881 = load i64, i64* %3, align 8
  %882 = add i64 %881, 3
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %880 to i32*
  %884 = load i32, i32* %883, align 4
  %885 = lshr i32 %884, 15
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = lshr i32 %884, 16
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RAX.i562, align 8
  store i8 %887, i8* %14, align 1
  %890 = and i32 %888, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %895 = icmp eq i32 %888, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %897 = add i64 %879, -52
  %898 = add i64 %881, 9
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i32*
  store i32 %888, i32* %899, align 4
  %900 = load i64, i64* %RBP.i, align 8
  %901 = add i64 %900, -48
  %902 = load i64, i64* %3, align 8
  %903 = add i64 %902, 3
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %901 to i32*
  %905 = load i32, i32* %904, align 4
  %906 = and i32 %905, 65535
  %907 = zext i32 %906 to i64
  store i64 %907, i64* %RAX.i562, align 8
  store i8 0, i8* %14, align 1
  %908 = and i32 %905, 255
  %909 = tail call i32 @llvm.ctpop.i32(i32 %908)
  %910 = trunc i32 %909 to i8
  %911 = and i8 %910, 1
  %912 = xor i8 %911, 1
  store i8 %912, i8* %21, align 1
  %913 = icmp eq i32 %906, 0
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %915 = add i64 %900, -56
  %916 = add i64 %902, 11
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  store i32 %906, i32* %917, align 4
  %918 = load i64, i64* %RBP.i, align 8
  %919 = add i64 %918, -52
  %920 = load i64, i64* %3, align 8
  %921 = add i64 %920, 4
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %919 to i32*
  %923 = load i32, i32* %922, align 4
  %924 = add i32 %923, -79
  %925 = icmp ult i32 %923, 79
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %14, align 1
  %927 = and i32 %924, 255
  %928 = tail call i32 @llvm.ctpop.i32(i32 %927)
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  store i8 %931, i8* %21, align 1
  %932 = xor i32 %923, %924
  %933 = lshr i32 %932, 4
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  store i8 %935, i8* %27, align 1
  %936 = icmp eq i32 %924, 0
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %30, align 1
  %938 = lshr i32 %924, 31
  %939 = trunc i32 %938 to i8
  store i8 %939, i8* %33, align 1
  %940 = lshr i32 %923, 31
  %941 = xor i32 %938, %940
  %942 = add nuw nsw i32 %941, %940
  %943 = icmp eq i32 %942, 2
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %39, align 1
  %.v62 = select i1 %936, i64 10, i64 34
  %945 = add i64 %920, %.v62
  store i64 %945, i64* %3, align 8
  br i1 %936, label %block_4009b4, label %block_.L_400971.block_.L_4009cc_crit_edge

block_.L_400971.block_.L_4009cc_crit_edge:        ; preds = %block_.L_400971
  %.pre46 = add i64 %918, -20
  %.pre48 = inttoptr i64 %.pre46 to i32*
  br label %block_.L_4009cc

block_4009b4:                                     ; preds = %block_.L_400971
  %946 = add i64 %918, -56
  %947 = add i64 %945, 3
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = zext i32 %949 to i64
  store i64 %950, i64* %RAX.i562, align 8
  %951 = add i64 %918, -20
  %952 = add i64 %945, 6
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %951 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = sub i32 %949, %954
  %956 = icmp ult i32 %949, %954
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %14, align 1
  %958 = and i32 %955, 255
  %959 = tail call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  store i8 %962, i8* %21, align 1
  %963 = xor i32 %954, %949
  %964 = xor i32 %963, %955
  %965 = lshr i32 %964, 4
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  store i8 %967, i8* %27, align 1
  %968 = icmp eq i32 %955, 0
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %30, align 1
  %970 = lshr i32 %955, 31
  %971 = trunc i32 %970 to i8
  store i8 %971, i8* %33, align 1
  %972 = lshr i32 %949, 31
  %973 = lshr i32 %954, 31
  %974 = xor i32 %973, %972
  %975 = xor i32 %970, %972
  %976 = add nuw nsw i32 %975, %974
  %977 = icmp eq i32 %976, 2
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %39, align 1
  %.v63 = select i1 %968, i64 12, i64 24
  %979 = add i64 %945, %.v63
  store i64 %979, i64* %3, align 8
  br i1 %968, label %block_4009c0, label %block_.L_4009cc

block_4009c0:                                     ; preds = %block_4009b4
  %980 = add i64 %979, 7
  store i64 %980, i64* %3, align 8
  store i32 0, i32* %953, align 4
  %981 = load i64, i64* %3, align 8
  %982 = add i64 %981, 12
  store i64 %982, i64* %3, align 8
  br label %block_.L_4009d3

block_.L_4009cc:                                  ; preds = %block_4009b4, %block_.L_400971.block_.L_4009cc_crit_edge
  %.pre-phi49 = phi i32* [ %.pre48, %block_.L_400971.block_.L_4009cc_crit_edge ], [ %953, %block_4009b4 ]
  %983 = phi i64 [ %945, %block_.L_400971.block_.L_4009cc_crit_edge ], [ %979, %block_4009b4 ]
  %984 = add i64 %983, 7
  store i64 %984, i64* %3, align 8
  store i32 48351, i32* %.pre-phi49, align 4
  %.pre6 = load i64, i64* %3, align 8
  br label %block_.L_4009d3

block_.L_4009d3:                                  ; preds = %block_.L_4009cc, %block_4009c0
  %985 = phi i64 [ %.pre6, %block_.L_4009cc ], [ %982, %block_4009c0 ]
  store i64 8, i64* %RDX.i384, align 8
  %986 = load i64, i64* %RBP.i, align 8
  %987 = add i64 %986, -20
  %988 = add i64 %985, 8
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %RDI.i581, align 8
  %992 = add i64 %986, -16
  %993 = add i64 %985, 12
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i64*
  %995 = load i64, i64* %994, align 8
  %996 = add i64 %995, 20
  store i64 %996, i64* %RAX.i562, align 8
  %997 = icmp ugt i64 %995, -21
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %14, align 1
  %999 = trunc i64 %996 to i32
  %1000 = and i32 %999, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %21, align 1
  %1005 = xor i64 %995, 16
  %1006 = xor i64 %1005, %996
  %1007 = lshr i64 %1006, 4
  %1008 = trunc i64 %1007 to i8
  %1009 = and i8 %1008, 1
  store i8 %1009, i8* %27, align 1
  %1010 = icmp eq i64 %996, 0
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %30, align 1
  %1012 = lshr i64 %996, 63
  %1013 = trunc i64 %1012 to i8
  store i8 %1013, i8* %33, align 1
  %1014 = lshr i64 %995, 63
  %1015 = xor i64 %1012, %1014
  %1016 = add nuw nsw i64 %1015, %1012
  %1017 = icmp eq i64 %1016, 2
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %39, align 1
  store i64 %996, i64* %RSI.i323, align 8
  %1019 = add i64 %985, -931
  %1020 = add i64 %985, 24
  %1021 = load i64, i64* %6, align 8
  %1022 = add i64 %1021, -8
  %1023 = inttoptr i64 %1022 to i64*
  store i64 %1020, i64* %1023, align 8
  store i64 %1022, i64* %6, align 8
  store i64 %1019, i64* %3, align 8
  %call2_4009e6 = tail call %struct.Memory* @sub_400630.read_bytes(%struct.State* %0, i64 %1019, %struct.Memory* %call2_400983)
  %1024 = load i64, i64* %RBP.i, align 8
  %1025 = add i64 %1024, -60
  %1026 = load i32, i32* %EAX.i578, align 4
  %1027 = load i64, i64* %3, align 8
  %1028 = add i64 %1027, 3
  store i64 %1028, i64* %3, align 8
  %1029 = inttoptr i64 %1025 to i32*
  store i32 %1026, i32* %1029, align 4
  %1030 = load i64, i64* %RBP.i, align 8
  %1031 = add i64 %1030, -60
  %1032 = load i64, i64* %3, align 8
  %1033 = add i64 %1032, 3
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1031 to i32*
  %1035 = load i32, i32* %1034, align 4
  %1036 = add i32 %1035, -3
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RAX.i562, align 8
  %1038 = icmp ult i32 %1035, 3
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %14, align 1
  %1040 = and i32 %1036, 255
  %1041 = tail call i32 @llvm.ctpop.i32(i32 %1040)
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  store i8 %1044, i8* %21, align 1
  %1045 = xor i32 %1035, %1036
  %1046 = lshr i32 %1045, 4
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %27, align 1
  %1049 = icmp eq i32 %1036, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %30, align 1
  %1051 = lshr i32 %1036, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %33, align 1
  %1053 = lshr i32 %1035, 31
  %1054 = xor i32 %1051, %1053
  %1055 = add nuw nsw i32 %1054, %1053
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %39, align 1
  %1058 = add i64 %1032, 9
  store i64 %1058, i64* %3, align 8
  store i32 %1036, i32* %1034, align 4
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -60
  %1061 = load i64, i64* %3, align 8
  %1062 = add i64 %1061, 3
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1060 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = and i32 %1064, 7
  %1066 = zext i32 %1065 to i64
  store i64 %1066, i64* %RAX.i562, align 8
  %1067 = tail call i32 @llvm.ctpop.i32(i32 %1065)
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  %1070 = xor i8 %1069, 1
  %1071 = icmp eq i32 %1065, 0
  %1072 = zext i1 %1071 to i8
  store i8 0, i8* %14, align 1
  store i8 %1070, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %1072, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v64 = select i1 %1071, i64 27, i64 15
  %1073 = add i64 %1061, %.v64
  store i64 %1073, i64* %3, align 8
  br i1 %1071, label %block_.L_400a12, label %block_400a06

block_400a06:                                     ; preds = %block_.L_4009d3
  %1074 = add i64 %1059, -4
  %1075 = add i64 %1073, 7
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  store i32 -21, i32* %1076, align 4
  %1077 = load i64, i64* %3, align 8
  %1078 = add i64 %1077, 330
  store i64 %1078, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400a12:                                  ; preds = %block_.L_4009d3
  %1079 = add i64 %1073, 3
  store i64 %1079, i64* %3, align 8
  %1080 = load i32, i32* %1063, align 4
  %1081 = xor i32 %1080, -2147483648
  %1082 = zext i32 %1081 to i64
  store i64 %1082, i64* %RAX.i562, align 8
  %.lobit = lshr i32 %1080, 31
  %1083 = trunc i32 %.lobit to i8
  %.not = xor i8 %1083, 1
  store i8 %.not, i8* %14, align 1
  %1084 = and i32 %1080, 255
  %1085 = tail call i32 @llvm.ctpop.i32(i32 %1084)
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1089 = icmp eq i32 %1081, 0
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %30, align 1
  %1091 = lshr i32 %1081, 31
  %1092 = trunc i32 %1091 to i8
  store i8 %1092, i8* %33, align 1
  store i8 %.not, i8* %39, align 1
  %1093 = add i64 %1073, 11
  store i64 %1093, i64* %3, align 8
  store i32 %1081, i32* %1063, align 4
  %1094 = load i64, i64* %RBP.i, align 8
  %1095 = add i64 %1094, -60
  %1096 = load i64, i64* %3, align 8
  %1097 = add i64 %1096, 7
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1095 to i32*
  %1099 = load i32, i32* %1098, align 4
  %1100 = add i32 %1099, -268435455
  %1101 = icmp ult i32 %1099, 268435455
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %14, align 1
  %1103 = and i32 %1100, 255
  %1104 = tail call i32 @llvm.ctpop.i32(i32 %1103)
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = xor i8 %1106, 1
  store i8 %1107, i8* %21, align 1
  %1108 = xor i32 %1099, 16
  %1109 = xor i32 %1108, %1100
  %1110 = lshr i32 %1109, 4
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  store i8 %1112, i8* %27, align 1
  %1113 = icmp eq i32 %1100, 0
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %30, align 1
  %1115 = lshr i32 %1100, 31
  %1116 = trunc i32 %1115 to i8
  store i8 %1116, i8* %33, align 1
  %1117 = lshr i32 %1099, 31
  %1118 = xor i32 %1115, %1117
  %1119 = add nuw nsw i32 %1118, %1117
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %39, align 1
  %1122 = or i1 %1113, %1101
  %.v67 = select i1 %1122, i64 25, i64 13
  %1123 = add i64 %1096, %.v67
  store i64 %1123, i64* %3, align 8
  br i1 %1122, label %block_.L_400a36, label %block_400a2a

block_400a2a:                                     ; preds = %block_.L_400a12
  %1124 = add i64 %1094, -4
  %1125 = add i64 %1123, 7
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  store i32 -22, i32* %1126, align 4
  %1127 = load i64, i64* %3, align 8
  %1128 = add i64 %1127, 294
  store i64 %1128, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400a36:                                  ; preds = %block_.L_400a12
  store i64 10000, i64* %RAX.i562, align 8
  %1129 = add i64 %1123, 8
  store i64 %1129, i64* %3, align 8
  %1130 = load i32, i32* %1098, align 4
  %1131 = xor i32 %1130, 13631488
  %1132 = zext i32 %1131 to i64
  store i64 %1132, i64* %RCX.i579, align 8
  store i8 0, i8* %14, align 1
  %1133 = and i32 %1130, 255
  %1134 = tail call i32 @llvm.ctpop.i32(i32 %1133)
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  %1137 = xor i8 %1136, 1
  store i8 %1137, i8* %21, align 1
  %1138 = icmp eq i32 %1131, 0
  %1139 = zext i1 %1138 to i8
  store i8 %1139, i8* %30, align 1
  %1140 = lshr i32 %1130, 31
  %1141 = trunc i32 %1140 to i8
  store i8 %1141, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1142 = add i64 %1123, 17
  store i64 %1142, i64* %3, align 8
  store i32 %1131, i32* %1098, align 4
  %1143 = load i64, i64* %RBP.i, align 8
  %1144 = add i64 %1143, -60
  %1145 = load i64, i64* %3, align 8
  %1146 = add i64 %1145, 3
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1144 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = lshr i32 %1148, 3
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  %1152 = lshr i32 %1148, 4
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %RCX.i579, align 8
  store i8 %1151, i8* %14, align 1
  %1154 = and i32 %1152, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1159 = icmp eq i32 %1152, 0
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1161 = add i64 %1145, 9
  store i64 %1161, i64* %3, align 8
  store i32 %1152, i32* %1147, align 4
  %1162 = load i64, i64* %RBP.i, align 8
  %1163 = add i64 %1162, -60
  %1164 = load i64, i64* %3, align 8
  %1165 = add i64 %1164, 3
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1163 to i32*
  %1167 = load i32, i32* %1166, align 4
  %1168 = add i32 %1167, -226
  %1169 = zext i32 %1168 to i64
  store i64 %1169, i64* %RCX.i579, align 8
  %1170 = icmp ult i32 %1167, 226
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %14, align 1
  %1172 = and i32 %1168, 255
  %1173 = tail call i32 @llvm.ctpop.i32(i32 %1172)
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  %1176 = xor i8 %1175, 1
  store i8 %1176, i8* %21, align 1
  %1177 = xor i32 %1167, %1168
  %1178 = lshr i32 %1177, 4
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  store i8 %1180, i8* %27, align 1
  %1181 = icmp eq i32 %1168, 0
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %30, align 1
  %1183 = lshr i32 %1168, 31
  %1184 = trunc i32 %1183 to i8
  store i8 %1184, i8* %33, align 1
  %1185 = lshr i32 %1167, 31
  %1186 = xor i32 %1183, %1185
  %1187 = add nuw nsw i32 %1186, %1185
  %1188 = icmp eq i32 %1187, 2
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %39, align 1
  %1190 = add i64 %1164, 12
  store i64 %1190, i64* %3, align 8
  store i32 %1168, i32* %1166, align 4
  %1191 = load i64, i64* %RBP.i, align 8
  %1192 = add i64 %1191, -60
  %1193 = load i64, i64* %3, align 8
  %1194 = add i64 %1193, 3
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1192 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = zext i32 %1196 to i64
  store i64 %1197, i64* %RCX.i579, align 8
  %1198 = add i64 %1191, -68
  %1199 = load i32, i32* %EAX.i578, align 4
  %1200 = add i64 %1193, 6
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1198 to i32*
  store i32 %1199, i32* %1201, align 4
  %1202 = load i32, i32* %ECX.i575, align 4
  %1203 = zext i32 %1202 to i64
  %1204 = load i64, i64* %3, align 8
  store i64 %1203, i64* %RAX.i562, align 8
  store i64 0, i64* %RDX.i384, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -68
  %1207 = add i64 %1204, 7
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RCX.i579, align 8
  %div = udiv i32 %1202, %1209
  %1211 = zext i32 %div to i64
  %1212 = urem i32 %1202, %1209
  %1213 = zext i32 %1212 to i64
  store i64 %1211, i64* %RAX.i562, align 8
  store i64 %1213, i64* %RDX.i384, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1214 = add i64 %1205, -60
  %1215 = add i64 %1204, 12
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  store i32 %div, i32* %1216, align 4
  %1217 = load i64, i64* %RBP.i, align 8
  %1218 = add i64 %1217, -60
  %1219 = load i64, i64* %3, align 8
  %1220 = add i64 %1219, 4
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1218 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = add i32 %1222, -3
  %1224 = icmp ult i32 %1222, 3
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %14, align 1
  %1226 = and i32 %1223, 255
  %1227 = tail call i32 @llvm.ctpop.i32(i32 %1226)
  %1228 = trunc i32 %1227 to i8
  %1229 = and i8 %1228, 1
  %1230 = xor i8 %1229, 1
  store i8 %1230, i8* %21, align 1
  %1231 = xor i32 %1222, %1223
  %1232 = lshr i32 %1231, 4
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  store i8 %1234, i8* %27, align 1
  %1235 = icmp eq i32 %1223, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %30, align 1
  %1237 = lshr i32 %1223, 31
  %1238 = trunc i32 %1237 to i8
  store i8 %1238, i8* %33, align 1
  %1239 = lshr i32 %1222, 31
  %1240 = xor i32 %1237, %1239
  %1241 = add nuw nsw i32 %1240, %1239
  %1242 = icmp eq i32 %1241, 2
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %39, align 1
  %.v68 = select i1 %1235, i64 21, i64 10
  %1244 = add i64 %1219, %.v68
  store i64 %1244, i64* %3, align 8
  br i1 %1235, label %block_.L_400a83, label %block_400a78

block_400a78:                                     ; preds = %block_.L_400a36
  %1245 = add i64 %1244, 3
  store i64 %1245, i64* %3, align 8
  %1246 = load i32, i32* %1221, align 4
  %1247 = zext i32 %1246 to i64
  store i64 %1247, i64* %RAX.i562, align 8
  %1248 = add i64 %1217, -4
  %1249 = add i64 %1244, 6
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i32*
  store i32 %1246, i32* %1250, align 4
  %1251 = load i64, i64* %3, align 8
  %1252 = add i64 %1251, 217
  store i64 %1252, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400a83:                                  ; preds = %block_.L_400a36
  store i64 4, i64* %RDX.i384, align 8
  %1253 = add i64 %1217, -20
  %1254 = add i64 %1244, 8
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = zext i32 %1256 to i64
  store i64 %1257, i64* %RDI.i581, align 8
  %1258 = add i64 %1217, -16
  %1259 = add i64 %1244, 12
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i64*
  %1261 = load i64, i64* %1260, align 8
  %1262 = add i64 %1261, 28
  store i64 %1262, i64* %RAX.i562, align 8
  %1263 = icmp ugt i64 %1261, -29
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %14, align 1
  %1265 = trunc i64 %1262 to i32
  %1266 = and i32 %1265, 255
  %1267 = tail call i32 @llvm.ctpop.i32(i32 %1266)
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  %1270 = xor i8 %1269, 1
  store i8 %1270, i8* %21, align 1
  %1271 = xor i64 %1261, 16
  %1272 = xor i64 %1271, %1262
  %1273 = lshr i64 %1272, 4
  %1274 = trunc i64 %1273 to i8
  %1275 = and i8 %1274, 1
  store i8 %1275, i8* %27, align 1
  %1276 = icmp eq i64 %1262, 0
  %1277 = zext i1 %1276 to i8
  store i8 %1277, i8* %30, align 1
  %1278 = lshr i64 %1262, 63
  %1279 = trunc i64 %1278 to i8
  store i8 %1279, i8* %33, align 1
  %1280 = lshr i64 %1261, 63
  %1281 = xor i64 %1278, %1280
  %1282 = add nuw nsw i64 %1281, %1278
  %1283 = icmp eq i64 %1282, 2
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %39, align 1
  store i64 %1262, i64* %RSI.i323, align 8
  %1285 = add i64 %1244, -1107
  %1286 = add i64 %1244, 24
  %1287 = load i64, i64* %6, align 8
  %1288 = add i64 %1287, -8
  %1289 = inttoptr i64 %1288 to i64*
  store i64 %1286, i64* %1289, align 8
  store i64 %1288, i64* %6, align 8
  store i64 %1285, i64* %3, align 8
  %call2_400a96 = tail call %struct.Memory* @sub_400630.read_bytes(%struct.State* %0, i64 %1285, %struct.Memory* %call2_4009e6)
  %1290 = load i64, i64* %RBP.i, align 8
  %1291 = add i64 %1290, -64
  %1292 = load i32, i32* %EAX.i578, align 4
  %1293 = load i64, i64* %3, align 8
  %1294 = add i64 %1293, 3
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1291 to i32*
  store i32 %1292, i32* %1295, align 4
  %1296 = load i64, i64* %RBP.i, align 8
  %1297 = add i64 %1296, -16
  %1298 = load i64, i64* %3, align 8
  %1299 = add i64 %1298, 4
  store i64 %1299, i64* %3, align 8
  %1300 = inttoptr i64 %1297 to i64*
  %1301 = load i64, i64* %1300, align 8
  store i64 %1301, i64* %RSI.i323, align 8
  %1302 = add i64 %1301, 28
  %1303 = add i64 %1298, 8
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i8*
  %1305 = load i8, i8* %1304, align 1
  %1306 = sext i8 %1305 to i64
  %1307 = and i64 %1306, 4294967295
  store i64 %1307, i64* %RAX.i562, align 8
  %1308 = sext i8 %1305 to i32
  %1309 = add nsw i32 %1308, -100
  %1310 = icmp ult i8 %1305, 100
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %14, align 1
  %1312 = and i32 %1309, 255
  %1313 = tail call i32 @llvm.ctpop.i32(i32 %1312)
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  %1316 = xor i8 %1315, 1
  store i8 %1316, i8* %21, align 1
  %1317 = xor i32 %1308, %1309
  %1318 = lshr i32 %1317, 4
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  store i8 %1320, i8* %27, align 1
  %1321 = icmp eq i32 %1309, 0
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %30, align 1
  %1323 = lshr i32 %1309, 31
  %1324 = trunc i32 %1323 to i8
  store i8 %1324, i8* %33, align 1
  %1325 = lshr i32 %1308, 31
  %1326 = xor i32 %1323, %1325
  %1327 = add nuw nsw i32 %1326, %1325
  %1328 = icmp eq i32 %1327, 2
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %39, align 1
  %.v69 = select i1 %1321, i64 17, i64 48
  %1330 = add i64 %1298, %.v69
  store i64 %1330, i64* %3, align 8
  br i1 %1321, label %block_400aaf, label %block_.L_400ace

block_400aaf:                                     ; preds = %block_.L_400a83
  %1331 = add i64 %1330, 4
  store i64 %1331, i64* %3, align 8
  %1332 = load i64, i64* %1300, align 8
  store i64 %1332, i64* %RAX.i562, align 8
  %1333 = add i64 %1332, 29
  %1334 = add i64 %1330, 8
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i8*
  %1336 = load i8, i8* %1335, align 1
  %1337 = sext i8 %1336 to i64
  %1338 = and i64 %1337, 4294967295
  store i64 %1338, i64* %RCX.i579, align 8
  %1339 = sext i8 %1336 to i32
  %1340 = add nsw i32 %1339, -100
  %1341 = icmp ult i8 %1336, 100
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %14, align 1
  %1343 = and i32 %1340, 255
  %1344 = tail call i32 @llvm.ctpop.i32(i32 %1343)
  %1345 = trunc i32 %1344 to i8
  %1346 = and i8 %1345, 1
  %1347 = xor i8 %1346, 1
  store i8 %1347, i8* %21, align 1
  %1348 = xor i32 %1339, %1340
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %27, align 1
  %1352 = icmp eq i32 %1340, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %30, align 1
  %1354 = lshr i32 %1340, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %33, align 1
  %1356 = lshr i32 %1339, 31
  %1357 = xor i32 %1354, %1356
  %1358 = add nuw nsw i32 %1357, %1356
  %1359 = icmp eq i32 %1358, 2
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %39, align 1
  %.v70 = select i1 %1352, i64 17, i64 31
  %1361 = add i64 %1330, %.v70
  store i64 %1361, i64* %3, align 8
  br i1 %1352, label %block_400ac0, label %block_.L_400ace

block_400ac0:                                     ; preds = %block_400aaf
  %1362 = add i64 %1296, -64
  %1363 = add i64 %1361, 3
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i32*
  %1365 = load i32, i32* %1364, align 4
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RAX.i562, align 8
  %1367 = add i64 %1296, -20
  %1368 = add i64 %1361, 6
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i32*
  %1370 = load i32, i32* %1369, align 4
  %1371 = xor i32 %1370, %1365
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %RAX.i562, align 8
  store i8 0, i8* %14, align 1
  %1373 = and i32 %1371, 255
  %1374 = tail call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  store i8 %1377, i8* %21, align 1
  %1378 = icmp eq i32 %1371, 0
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %30, align 1
  %1380 = lshr i32 %1371, 31
  %1381 = trunc i32 %1380 to i8
  store i8 %1381, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1382 = add i64 %1361, 9
  store i64 %1382, i64* %3, align 8
  store i32 %1371, i32* %1369, align 4
  %1383 = load i64, i64* %3, align 8
  %1384 = add i64 %1383, 136
  br label %block_.L_400b51

block_.L_400ace:                                  ; preds = %block_400aaf, %block_.L_400a83
  %1385 = phi i64 [ %1361, %block_400aaf ], [ %1330, %block_.L_400a83 ]
  %1386 = add i64 %1385, 4
  store i64 %1386, i64* %3, align 8
  %1387 = load i64, i64* %1300, align 8
  store i64 %1387, i64* %RAX.i562, align 8
  %1388 = add i64 %1387, 28
  %1389 = add i64 %1385, 8
  store i64 %1389, i64* %3, align 8
  %1390 = inttoptr i64 %1388 to i8*
  %1391 = load i8, i8* %1390, align 1
  %1392 = sext i8 %1391 to i64
  %1393 = and i64 %1392, 4294967295
  store i64 %1393, i64* %RCX.i579, align 8
  %1394 = add i64 %1385, 12
  store i64 %1394, i64* %3, align 8
  %1395 = load i64, i64* %1300, align 8
  store i64 %1395, i64* %RAX.i562, align 8
  %1396 = add i64 %1395, 29
  %1397 = add i64 %1385, 16
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i8*
  %1399 = load i8, i8* %1398, align 1
  %1400 = sext i8 %1399 to i64
  %1401 = and i64 %1400, 4294967295
  store i64 %1401, i64* %RDX.i384, align 8
  %1402 = sext i8 %1391 to i32
  %1403 = sext i8 %1399 to i32
  %1404 = sub nsw i32 %1402, %1403
  %1405 = icmp ult i8 %1391, %1399
  %1406 = zext i1 %1405 to i8
  store i8 %1406, i8* %14, align 1
  %1407 = and i32 %1404, 255
  %1408 = tail call i32 @llvm.ctpop.i32(i32 %1407)
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  %1411 = xor i8 %1410, 1
  store i8 %1411, i8* %21, align 1
  %1412 = xor i8 %1399, %1391
  %1413 = zext i8 %1412 to i32
  %1414 = xor i32 %1413, %1404
  %1415 = lshr i32 %1414, 4
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  store i8 %1417, i8* %27, align 1
  %1418 = icmp eq i32 %1404, 0
  %1419 = zext i1 %1418 to i8
  store i8 %1419, i8* %30, align 1
  %1420 = lshr i32 %1404, 31
  %1421 = trunc i32 %1420 to i8
  store i8 %1421, i8* %33, align 1
  %1422 = lshr i32 %1402, 31
  %1423 = lshr i32 %1403, 31
  %1424 = xor i32 %1423, %1422
  %1425 = xor i32 %1420, %1422
  %1426 = add nuw nsw i32 %1425, %1424
  %1427 = icmp eq i32 %1426, 2
  %1428 = zext i1 %1427 to i8
  store i8 %1428, i8* %39, align 1
  %.v71 = select i1 %1418, i64 24, i64 120
  %1429 = add i64 %1385, %.v71
  store i64 %1429, i64* %3, align 8
  br i1 %1418, label %block_400ae6, label %block_.L_400b46

block_400ae6:                                     ; preds = %block_.L_400ace
  store i64 15, i64* %RAX.i562, align 8
  %1430 = add i64 %1429, 9
  store i64 %1430, i64* %3, align 8
  %1431 = load i64, i64* %1300, align 8
  store i64 %1431, i64* %RCX.i579, align 8
  %1432 = add i64 %1431, 31
  %1433 = add i64 %1429, 13
  store i64 %1433, i64* %3, align 8
  %1434 = inttoptr i64 %1432 to i8*
  %1435 = load i8, i8* %1434, align 1
  %1436 = sext i8 %1435 to i64
  %1437 = and i64 %1436, 4294967295
  store i64 %1437, i64* %RDX.i384, align 8
  %1438 = add i64 %1429, 17
  store i64 %1438, i64* %3, align 8
  %1439 = load i64, i64* %1300, align 8
  store i64 %1439, i64* %RCX.i579, align 8
  %1440 = add i64 %1439, 30
  %1441 = add i64 %1429, 21
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i8*
  %1443 = load i8, i8* %1442, align 1
  %1444 = sext i8 %1443 to i64
  %1445 = and i64 %1444, 4294967295
  store i64 %1445, i64* %RSI.i323, align 8
  %1446 = sext i8 %1443 to i32
  %1447 = sext i8 %1435 to i32
  %1448 = sub nsw i32 %1447, %1446
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %RDX.i384, align 8
  %1450 = lshr i32 %1448, 31
  %1451 = sub nsw i32 15, %1448
  %1452 = zext i32 %1451 to i64
  store i64 %1452, i64* %RAX.i562, align 8
  %1453 = icmp ugt i32 %1448, 15
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %14, align 1
  %1455 = and i32 %1451, 255
  %1456 = tail call i32 @llvm.ctpop.i32(i32 %1455)
  %1457 = trunc i32 %1456 to i8
  %1458 = and i8 %1457, 1
  %1459 = xor i8 %1458, 1
  store i8 %1459, i8* %21, align 1
  %1460 = xor i32 %1448, %1451
  %1461 = lshr i32 %1460, 4
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  store i8 %1463, i8* %27, align 1
  %1464 = icmp eq i32 %1451, 0
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %30, align 1
  %1466 = lshr i32 %1451, 31
  %1467 = trunc i32 %1466 to i8
  store i8 %1467, i8* %33, align 1
  %1468 = add nuw nsw i32 %1466, %1450
  %1469 = icmp eq i32 %1468, 2
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %39, align 1
  %1471 = add i64 %1296, -20
  %1472 = add i64 %1429, 28
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = add i32 %1474, %1451
  %1476 = zext i32 %1475 to i64
  store i64 %1476, i64* %RAX.i562, align 8
  %1477 = icmp ult i32 %1475, %1451
  %1478 = icmp ult i32 %1475, %1474
  %1479 = or i1 %1477, %1478
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %14, align 1
  %1481 = and i32 %1475, 255
  %1482 = tail call i32 @llvm.ctpop.i32(i32 %1481)
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = xor i8 %1484, 1
  store i8 %1485, i8* %21, align 1
  %1486 = xor i32 %1474, %1451
  %1487 = xor i32 %1486, %1475
  %1488 = lshr i32 %1487, 4
  %1489 = trunc i32 %1488 to i8
  %1490 = and i8 %1489, 1
  store i8 %1490, i8* %27, align 1
  %1491 = icmp eq i32 %1475, 0
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %30, align 1
  %1493 = lshr i32 %1475, 31
  %1494 = trunc i32 %1493 to i8
  store i8 %1494, i8* %33, align 1
  %1495 = lshr i32 %1474, 31
  %1496 = xor i32 %1493, %1466
  %1497 = xor i32 %1493, %1495
  %1498 = add nuw nsw i32 %1496, %1497
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %39, align 1
  %1501 = add i64 %1429, 31
  store i64 %1501, i64* %3, align 8
  store i32 %1475, i32* %1473, align 4
  %1502 = load i64, i64* %RBP.i, align 8
  %1503 = add i64 %1502, -16
  %1504 = load i64, i64* %3, align 8
  %1505 = add i64 %1504, 4
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1503 to i64*
  %1507 = load i64, i64* %1506, align 8
  store i64 %1507, i64* %RCX.i579, align 8
  %1508 = add i64 %1507, 28
  %1509 = add i64 %1504, 8
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i8*
  %1511 = load i8, i8* %1510, align 1
  %1512 = zext i8 %1511 to i64
  store i64 %1512, i64* %RDI.i581, align 8
  %1513 = add i64 %1504, -1349
  %1514 = add i64 %1504, 13
  %1515 = load i64, i64* %6, align 8
  %1516 = add i64 %1515, -8
  %1517 = inttoptr i64 %1516 to i64*
  store i64 %1514, i64* %1517, align 8
  store i64 %1516, i64* %6, align 8
  store i64 %1513, i64* %3, align 8
  %call2_400b0d = tail call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %1513, %struct.Memory* %call2_400a96)
  %1518 = load i64, i64* %RBP.i, align 8
  %1519 = add i64 %1518, -20
  %1520 = load i64, i64* %3, align 8
  %1521 = add i64 %1520, 3
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1519 to i32*
  %1523 = load i32, i32* %1522, align 4
  %1524 = load i32, i32* %EAX.i578, align 4
  %1525 = sub i32 %1523, %1524
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RDX.i384, align 8
  %1527 = icmp ult i32 %1523, %1524
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %14, align 1
  %1529 = and i32 %1525, 255
  %1530 = tail call i32 @llvm.ctpop.i32(i32 %1529)
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  %1533 = xor i8 %1532, 1
  store i8 %1533, i8* %21, align 1
  %1534 = xor i32 %1524, %1523
  %1535 = xor i32 %1534, %1525
  %1536 = lshr i32 %1535, 4
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  store i8 %1538, i8* %27, align 1
  %1539 = icmp eq i32 %1525, 0
  %1540 = zext i1 %1539 to i8
  store i8 %1540, i8* %30, align 1
  %1541 = lshr i32 %1525, 31
  %1542 = trunc i32 %1541 to i8
  store i8 %1542, i8* %33, align 1
  %1543 = lshr i32 %1523, 31
  %1544 = lshr i32 %1524, 31
  %1545 = xor i32 %1544, %1543
  %1546 = xor i32 %1541, %1543
  %1547 = add nuw nsw i32 %1546, %1545
  %1548 = icmp eq i32 %1547, 2
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %39, align 1
  %1550 = add i64 %1520, 8
  store i64 %1550, i64* %3, align 8
  store i32 %1525, i32* %1522, align 4
  %1551 = load i64, i64* %RBP.i, align 8
  %1552 = add i64 %1551, -20
  %1553 = load i64, i64* %3, align 8
  %1554 = add i64 %1553, 4
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1552 to i32*
  %1556 = load i32, i32* %1555, align 4
  store i8 0, i8* %14, align 1
  %1557 = and i32 %1556, 255
  %1558 = tail call i32 @llvm.ctpop.i32(i32 %1557)
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  store i8 %1561, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1562 = icmp eq i32 %1556, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %30, align 1
  %1564 = lshr i32 %1556, 31
  %1565 = trunc i32 %1564 to i8
  store i8 %1565, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v72 = select i1 %1562, i64 10, i64 39
  %1566 = add i64 %1553, %.v72
  store i64 %1566, i64* %3, align 8
  br i1 %1562, label %block_400b24, label %block_.L_400b41

block_400b24:                                     ; preds = %block_400ae6
  %1567 = add i64 %1551, -16
  %1568 = add i64 %1566, 4
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i64*
  %1570 = load i64, i64* %1569, align 8
  store i64 %1570, i64* %RAX.i562, align 8
  %1571 = add i64 %1570, 31
  %1572 = add i64 %1566, 8
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to i8*
  %1574 = load i8, i8* %1573, align 1
  %1575 = zext i8 %1574 to i64
  store i64 %1575, i64* %RDI.i581, align 8
  %1576 = add i64 %1566, -1380
  %1577 = add i64 %1566, 13
  %1578 = load i64, i64* %6, align 8
  %1579 = add i64 %1578, -8
  %1580 = inttoptr i64 %1579 to i64*
  store i64 %1577, i64* %1580, align 8
  store i64 %1579, i64* %6, align 8
  store i64 %1576, i64* %3, align 8
  %call2_400b2c = tail call %struct.Memory* @sub_4005c0.to_byte(%struct.State* %0, i64 %1576, %struct.Memory* %call2_400b0d)
  %1581 = load i32, i32* %EAX.i578, align 4
  %1582 = load i64, i64* %3, align 8
  %1583 = add i32 %1581, -4
  %1584 = icmp ult i32 %1581, 4
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %14, align 1
  %1586 = and i32 %1583, 255
  %1587 = tail call i32 @llvm.ctpop.i32(i32 %1586)
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  %1590 = xor i8 %1589, 1
  store i8 %1590, i8* %21, align 1
  %1591 = xor i32 %1581, %1583
  %1592 = lshr i32 %1591, 4
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  store i8 %1594, i8* %27, align 1
  %1595 = icmp eq i32 %1583, 0
  %1596 = zext i1 %1595 to i8
  store i8 %1596, i8* %30, align 1
  %1597 = lshr i32 %1583, 31
  %1598 = trunc i32 %1597 to i8
  store i8 %1598, i8* %33, align 1
  %1599 = lshr i32 %1581, 31
  %1600 = xor i32 %1597, %1599
  %1601 = add nuw nsw i32 %1600, %1599
  %1602 = icmp eq i32 %1601, 2
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %39, align 1
  %.v73 = select i1 %1595, i64 16, i64 9
  %1604 = add i64 %1582, %.v73
  store i64 %1604, i64* %3, align 8
  br i1 %1595, label %block_.L_400b41, label %block_400b3a

block_400b3a:                                     ; preds = %block_400b24
  %1605 = load i64, i64* %RBP.i, align 8
  %1606 = add i64 %1605, -20
  %1607 = add i64 %1604, 7
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i32*
  store i32 -32, i32* %1608, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_400b41

block_.L_400b41:                                  ; preds = %block_400b3a, %block_400b24, %block_400ae6
  %1609 = phi i64 [ %1566, %block_400ae6 ], [ %1604, %block_400b24 ], [ %.pre10, %block_400b3a ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_400b0d, %block_400ae6 ], [ %call2_400b2c, %block_400b24 ], [ %call2_400b2c, %block_400b3a ]
  %1610 = add i64 %1609, 11
  store i64 %1610, i64* %3, align 8
  br label %block_.L_400b4c

block_.L_400b46:                                  ; preds = %block_.L_400ace
  %1611 = add i64 %1296, -64
  %1612 = add i64 %1429, 3
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i32*
  %1614 = load i32, i32* %1613, align 4
  %1615 = zext i32 %1614 to i64
  store i64 %1615, i64* %RAX.i562, align 8
  %1616 = add i64 %1296, -20
  %1617 = add i64 %1429, 6
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i32*
  store i32 %1614, i32* %1618, align 4
  %.pre11 = load i64, i64* %3, align 8
  br label %block_.L_400b4c

block_.L_400b4c:                                  ; preds = %block_.L_400b46, %block_.L_400b41
  %1619 = phi i64 [ %.pre11, %block_.L_400b46 ], [ %1610, %block_.L_400b41 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_400a96, %block_.L_400b46 ], [ %MEMORY.9, %block_.L_400b41 ]
  %1620 = add i64 %1619, 5
  br label %block_.L_400b51

block_.L_400b51:                                  ; preds = %block_.L_400b4c, %block_400ac0
  %.sink = phi i64 [ %1620, %block_.L_400b4c ], [ %1384, %block_400ac0 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.10, %block_.L_400b4c ], [ %call2_400a96, %block_400ac0 ]
  %1621 = load i64, i64* %RBP.i, align 8
  %1622 = add i64 %1621, -20
  %1623 = add i64 %.sink, 3
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RAX.i562, align 8
  %1627 = add i64 %1621, -4
  %1628 = add i64 %.sink, 6
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i32*
  store i32 %1625, i32* %1629, align 4
  %.pre12 = load i64, i64* %3, align 8
  br label %block_.L_400b57

block_.L_400b57:                                  ; preds = %block_.L_400b51, %block_400a78, %block_400a2a, %block_400a06, %block_40090c, %block_.L_40084e, %block_40080b, %block_4007d8, %block_4007ad, %block_40078b, %block_400764
  %1630 = phi i64 [ %500, %block_.L_40084e ], [ %.pre12, %block_.L_400b51 ], [ %1252, %block_400a78 ], [ %1128, %block_400a2a ], [ %1078, %block_400a06 ], [ %722, %block_40090c ], [ %367, %block_40080b ], [ %266, %block_4007d8 ], [ %209, %block_4007ad ], [ %167, %block_40078b ], [ %101, %block_400764 ]
  %MEMORY.12 = phi %struct.Memory* [ %340, %block_.L_40084e ], [ %MEMORY.11, %block_.L_400b51 ], [ %call2_4009e6, %block_400a78 ], [ %call2_4009e6, %block_400a2a ], [ %call2_4009e6, %block_400a06 ], [ %call2_4008c8, %block_40090c ], [ %340, %block_40080b ], [ %call2_4007c1, %block_4007d8 ], [ %call2_40079f, %block_4007ad ], [ %56, %block_40078b ], [ %56, %block_400764 ]
  %1631 = load i64, i64* %RBP.i, align 8
  %1632 = add i64 %1631, -4
  %1633 = add i64 %1630, 3
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i32*
  %1635 = load i32, i32* %1634, align 4
  %1636 = zext i32 %1635 to i64
  store i64 %1636, i64* %RAX.i562, align 8
  %1637 = load i64, i64* %6, align 8
  %1638 = add i64 %1637, 80
  store i64 %1638, i64* %6, align 8
  %1639 = icmp ugt i64 %1637, -81
  %1640 = zext i1 %1639 to i8
  store i8 %1640, i8* %14, align 1
  %1641 = trunc i64 %1638 to i32
  %1642 = and i32 %1641, 255
  %1643 = tail call i32 @llvm.ctpop.i32(i32 %1642)
  %1644 = trunc i32 %1643 to i8
  %1645 = and i8 %1644, 1
  %1646 = xor i8 %1645, 1
  store i8 %1646, i8* %21, align 1
  %1647 = xor i64 %1637, 16
  %1648 = xor i64 %1647, %1638
  %1649 = lshr i64 %1648, 4
  %1650 = trunc i64 %1649 to i8
  %1651 = and i8 %1650, 1
  store i8 %1651, i8* %27, align 1
  %1652 = icmp eq i64 %1638, 0
  %1653 = zext i1 %1652 to i8
  store i8 %1653, i8* %30, align 1
  %1654 = lshr i64 %1638, 63
  %1655 = trunc i64 %1654 to i8
  store i8 %1655, i8* %33, align 1
  %1656 = lshr i64 %1637, 63
  %1657 = xor i64 %1654, %1656
  %1658 = add nuw nsw i64 %1657, %1654
  %1659 = icmp eq i64 %1658, 2
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %39, align 1
  %1661 = add i64 %1630, 8
  store i64 %1661, i64* %3, align 8
  %1662 = add i64 %1637, 88
  %1663 = inttoptr i64 %1638 to i64*
  %1664 = load i64, i64* %1663, align 8
  store i64 %1664, i64* %RBP.i, align 8
  store i64 %1662, i64* %6, align 8
  %1665 = add i64 %1630, 9
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1662 to i64*
  %1667 = load i64, i64* %1666, align 8
  store i64 %1667, i64* %3, align 8
  %1668 = add i64 %1637, 96
  store i64 %1668, i64* %6, align 8
  ret %struct.Memory* %MEMORY.12
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
