; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x618d80_type = type <{ [8 x i8] }>
%G__0x415992_type = type <{ [8 x i8] }>
%G__0x415a0a_type = type <{ [8 x i8] }>
%G__0x415a21_type = type <{ [8 x i8] }>
%G__0x415a39_type = type <{ [8 x i8] }>
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
@G_0x618d80 = local_unnamed_addr global %G_0x618d80_type zeroinitializer
@G__0x415992 = global %G__0x415992_type zeroinitializer
@G__0x415a0a = global %G__0x415a0a_type zeroinitializer
@G__0x415a21 = global %G__0x415a21_type zeroinitializer
@G__0x415a39 = global %G__0x415a39_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4039b0.fallbackQSort3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @fallbackSort(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -2184
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 2176
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
  %RDI.i779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %39 = add i64 %7, -16
  %40 = load i64, i64* %RDI.i779, align 8
  %41 = add i64 %10, 14
  store i64 %41, i64* %3, align 8
  %42 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %42, align 8
  %RSI.i1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %43 = load i64, i64* %RBP.i, align 8
  %44 = add i64 %43, -16
  %45 = load i64, i64* %RSI.i1000, align 8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %48, align 8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1213 = getelementptr inbounds %union.anon, %union.anon* %49, i64 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -24
  %52 = load i64, i64* %RDX.i1213, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1235 = bitcast %union.anon* %56 to i32*
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -28
  %59 = load i32, i32* %ECX.i1235, align 4
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 3
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %58 to i32*
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1232 = bitcast %union.anon* %63 to i32*
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -32
  %66 = load i32, i32* %R8D.i1232, align 4
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 4
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %69, align 4
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -16
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i64*
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %RDX.i1213, align 8
  %76 = add i64 %70, -2144
  %77 = add i64 %72, 11
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %76 to i64*
  store i64 %75, i64* %78, align 8
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -32
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %80 to i32*
  %84 = load i32, i32* %83, align 4
  %85 = add i32 %84, -4
  %86 = icmp ult i32 %84, 4
  %87 = zext i1 %86 to i8
  store i8 %87, i8* %14, align 1
  %88 = and i32 %85, 255
  %89 = tail call i32 @llvm.ctpop.i32(i32 %88)
  %90 = trunc i32 %89 to i8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  store i8 %92, i8* %21, align 1
  %93 = xor i32 %85, %84
  %94 = lshr i32 %93, 4
  %95 = trunc i32 %94 to i8
  %96 = and i8 %95, 1
  store i8 %96, i8* %26, align 1
  %97 = icmp eq i32 %85, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %29, align 1
  %99 = lshr i32 %85, 31
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %32, align 1
  %101 = lshr i32 %84, 31
  %102 = xor i32 %99, %101
  %103 = add nuw nsw i32 %102, %101
  %104 = icmp eq i32 %103, 2
  %105 = zext i1 %104 to i8
  store i8 %105, i8* %38, align 1
  %106 = icmp ne i8 %100, 0
  %107 = xor i1 %106, %104
  %.v162 = select i1 %107, i64 41, i64 10
  %108 = add i64 %81, %.v162
  store i64 %108, i64* %3, align 8
  br i1 %107, label %entry.block_.L_400d92_crit_edge, label %block_400d73

entry.block_.L_400d92_crit_edge:                  ; preds = %entry
  %.pre147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre148 = bitcast %union.anon* %.pre147 to i32*
  br label %block_.L_400d92

block_400d73:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x415992_type* @G__0x415992 to i64), i64* %RSI.i1000, align 8
  %109 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*), align 8
  store i64 %109, i64* %RDI.i779, align 8
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i1217 = bitcast %union.anon* %110 to i8*
  store i8 0, i8* %AL.i1217, align 1
  %111 = add i64 %108, -1091
  %112 = add i64 %108, 25
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*
  store i64 %112, i64* %115, align 8
  store i64 %114, i64* %6, align 8
  store i64 %111, i64* %3, align 8
  %116 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %2)
  %EAX.i1210 = bitcast %union.anon* %110 to i32*
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -2148
  %119 = load i32, i32* %EAX.i1210, align 4
  %120 = load i64, i64* %3, align 8
  %121 = add i64 %120, 6
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %122, align 4
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_400d92

block_.L_400d92:                                  ; preds = %entry.block_.L_400d92_crit_edge, %block_400d73
  %EAX.i1191.pre-phi = phi i32* [ %.pre148, %entry.block_.L_400d92_crit_edge ], [ %EAX.i1210, %block_400d73 ]
  %.pre-phi = phi %union.anon* [ %.pre147, %entry.block_.L_400d92_crit_edge ], [ %110, %block_400d73 ]
  %123 = phi i64 [ %108, %entry.block_.L_400d92_crit_edge ], [ %.pre105, %block_400d73 ]
  %124 = phi i64 [ %79, %entry.block_.L_400d92_crit_edge ], [ %.pre, %block_400d73 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry.block_.L_400d92_crit_edge ], [ %116, %block_400d73 ]
  %125 = add i64 %124, -2104
  %126 = add i64 %123, 10
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %125 to i32*
  store i32 0, i32* %127, align 4
  %RAX.i1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_400d9c

block_.L_400d9c:                                  ; preds = %block_400dac, %block_.L_400d92
  %128 = phi i64 [ %197, %block_400dac ], [ %.pre106, %block_.L_400d92 ]
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -2104
  %131 = add i64 %128, 10
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = add i32 %133, -257
  %135 = icmp ult i32 %133, 257
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %14, align 1
  %137 = and i32 %134, 255
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137)
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %21, align 1
  %142 = xor i32 %134, %133
  %143 = lshr i32 %142, 4
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  store i8 %145, i8* %26, align 1
  %146 = icmp eq i32 %134, 0
  %147 = zext i1 %146 to i8
  store i8 %147, i8* %29, align 1
  %148 = lshr i32 %134, 31
  %149 = trunc i32 %148 to i8
  store i8 %149, i8* %32, align 1
  %150 = lshr i32 %133, 31
  %151 = xor i32 %148, %150
  %152 = add nuw nsw i32 %151, %150
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %38, align 1
  %155 = icmp ne i8 %149, 0
  %156 = xor i1 %155, %153
  %.v163 = select i1 %156, i64 16, i64 54
  %157 = add i64 %128, %.v163
  store i64 %157, i64* %3, align 8
  br i1 %156, label %block_400dac, label %block_.L_400dd2

block_400dac:                                     ; preds = %block_.L_400d9c
  %158 = add i64 %157, 7
  store i64 %158, i64* %3, align 8
  %159 = load i32, i32* %132, align 4
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %RAX.i1202, align 8
  %161 = shl nsw i64 %160, 2
  %162 = add i64 %129, -1072
  %163 = add i64 %162, %161
  %164 = add i64 %157, 18
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %163 to i32*
  store i32 0, i32* %165, align 4
  %166 = load i64, i64* %RBP.i, align 8
  %167 = add i64 %166, -2104
  %168 = load i64, i64* %3, align 8
  %169 = add i64 %168, 6
  store i64 %169, i64* %3, align 8
  %170 = inttoptr i64 %167 to i32*
  %171 = load i32, i32* %170, align 4
  %172 = add i32 %171, 1
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i1202, align 8
  %174 = icmp eq i32 %171, -1
  %175 = icmp eq i32 %172, 0
  %176 = or i1 %174, %175
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %14, align 1
  %178 = and i32 %172, 255
  %179 = tail call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  store i8 %182, i8* %21, align 1
  %183 = xor i32 %172, %171
  %184 = lshr i32 %183, 4
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  store i8 %186, i8* %26, align 1
  %187 = zext i1 %175 to i8
  store i8 %187, i8* %29, align 1
  %188 = lshr i32 %172, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %32, align 1
  %190 = lshr i32 %171, 31
  %191 = xor i32 %188, %190
  %192 = add nuw nsw i32 %191, %188
  %193 = icmp eq i32 %192, 2
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %38, align 1
  %195 = add i64 %168, 15
  store i64 %195, i64* %3, align 8
  store i32 %172, i32* %170, align 4
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, -49
  store i64 %197, i64* %3, align 8
  br label %block_.L_400d9c

block_.L_400dd2:                                  ; preds = %block_.L_400d9c
  %198 = add i64 %157, 10
  store i64 %198, i64* %3, align 8
  store i32 0, i32* %132, align 4
  %RCX.i1175 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_400ddc

block_.L_400ddc:                                  ; preds = %block_400deb, %block_.L_400dd2
  %199 = phi i64 [ %314, %block_400deb ], [ %.pre107, %block_.L_400dd2 ]
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -2104
  %202 = add i64 %199, 6
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RAX.i1202, align 8
  %206 = add i64 %200, -28
  %207 = add i64 %199, 9
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = sub i32 %204, %209
  %211 = icmp ult i32 %204, %209
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %14, align 1
  %213 = and i32 %210, 255
  %214 = tail call i32 @llvm.ctpop.i32(i32 %213)
  %215 = trunc i32 %214 to i8
  %216 = and i8 %215, 1
  %217 = xor i8 %216, 1
  store i8 %217, i8* %21, align 1
  %218 = xor i32 %209, %204
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
  %227 = lshr i32 %204, 31
  %228 = lshr i32 %209, 31
  %229 = xor i32 %228, %227
  %230 = xor i32 %225, %227
  %231 = add nuw nsw i32 %230, %229
  %232 = icmp eq i32 %231, 2
  %233 = zext i1 %232 to i8
  store i8 %233, i8* %38, align 1
  %234 = icmp ne i8 %226, 0
  %235 = xor i1 %234, %232
  %.v164 = select i1 %235, i64 15, i64 72
  %236 = add i64 %199, %.v164
  store i64 %236, i64* %3, align 8
  br i1 %235, label %block_400deb, label %block_.L_400e24

block_400deb:                                     ; preds = %block_.L_400ddc
  %237 = add i64 %200, -2144
  %238 = add i64 %236, 7
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i64*
  %240 = load i64, i64* %239, align 8
  store i64 %240, i64* %RAX.i1202, align 8
  %241 = add i64 %236, 14
  store i64 %241, i64* %3, align 8
  %242 = load i32, i32* %203, align 4
  %243 = sext i32 %242 to i64
  store i64 %243, i64* %RCX.i1175, align 8
  %244 = add i64 %240, %243
  %245 = add i64 %236, 18
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i8*
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i64
  store i64 %248, i64* %RDX.i1213, align 8
  %249 = zext i8 %247 to i64
  store i64 %249, i64* %RAX.i1202, align 8
  %250 = shl nuw nsw i64 %249, 2
  %251 = add nsw i64 %250, -1072
  %252 = add i64 %251, %200
  %253 = add i64 %236, 27
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = add i32 %255, 1
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RDX.i1213, align 8
  %258 = icmp eq i32 %255, -1
  %259 = icmp eq i32 %256, 0
  %260 = or i1 %258, %259
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %14, align 1
  %262 = and i32 %256, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %21, align 1
  %267 = xor i32 %256, %255
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %26, align 1
  %271 = zext i1 %259 to i8
  store i8 %271, i8* %29, align 1
  %272 = lshr i32 %256, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %32, align 1
  %274 = lshr i32 %255, 31
  %275 = xor i32 %272, %274
  %276 = add nuw nsw i32 %275, %272
  %277 = icmp eq i32 %276, 2
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %38, align 1
  %279 = add i64 %200, -1072
  %280 = add i64 %279, %250
  %281 = add i64 %236, 37
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  store i32 %256, i32* %282, align 4
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -2104
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 6
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, 1
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX.i1202, align 8
  %291 = icmp eq i32 %288, -1
  %292 = icmp eq i32 %289, 0
  %293 = or i1 %291, %292
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %14, align 1
  %295 = and i32 %289, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %21, align 1
  %300 = xor i32 %289, %288
  %301 = lshr i32 %300, 4
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %26, align 1
  %304 = zext i1 %292 to i8
  store i8 %304, i8* %29, align 1
  %305 = lshr i32 %289, 31
  %306 = trunc i32 %305 to i8
  store i8 %306, i8* %32, align 1
  %307 = lshr i32 %288, 31
  %308 = xor i32 %305, %307
  %309 = add nuw nsw i32 %308, %305
  %310 = icmp eq i32 %309, 2
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %38, align 1
  %312 = add i64 %285, 15
  store i64 %312, i64* %3, align 8
  store i32 %289, i32* %287, align 4
  %313 = load i64, i64* %3, align 8
  %314 = add i64 %313, -67
  store i64 %314, i64* %3, align 8
  br label %block_.L_400ddc

block_.L_400e24:                                  ; preds = %block_.L_400ddc
  %315 = add i64 %236, 10
  store i64 %315, i64* %3, align 8
  store i32 0, i32* %203, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_400e2e

block_.L_400e2e:                                  ; preds = %block_400e3e, %block_.L_400e24
  %316 = phi i64 [ %395, %block_400e3e ], [ %.pre108, %block_.L_400e24 ]
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -2104
  %319 = add i64 %316, 10
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = add i32 %321, -256
  %323 = icmp ult i32 %321, 256
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %14, align 1
  %325 = and i32 %322, 255
  %326 = tail call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  store i8 %329, i8* %21, align 1
  %330 = xor i32 %322, %321
  %331 = lshr i32 %330, 4
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  store i8 %333, i8* %26, align 1
  %334 = icmp eq i32 %322, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %29, align 1
  %336 = lshr i32 %322, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %32, align 1
  %338 = lshr i32 %321, 31
  %339 = xor i32 %336, %338
  %340 = add nuw nsw i32 %339, %338
  %341 = icmp eq i32 %340, 2
  %342 = zext i1 %341 to i8
  store i8 %342, i8* %38, align 1
  %343 = icmp ne i8 %337, 0
  %344 = xor i1 %343, %341
  %.v165 = select i1 %344, i64 16, i64 64
  %345 = add i64 %316, %.v165
  store i64 %345, i64* %3, align 8
  br i1 %344, label %block_400e3e, label %block_.L_400e6e

block_400e3e:                                     ; preds = %block_.L_400e2e
  %346 = add i64 %345, 7
  store i64 %346, i64* %3, align 8
  %347 = load i32, i32* %320, align 4
  %348 = sext i32 %347 to i64
  store i64 %348, i64* %RAX.i1202, align 8
  %349 = shl nsw i64 %348, 2
  %350 = add i64 %317, -1072
  %351 = add i64 %350, %349
  %352 = add i64 %345, 14
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %RCX.i1175, align 8
  %356 = add i64 %345, 21
  store i64 %356, i64* %3, align 8
  %357 = load i32, i32* %320, align 4
  %358 = sext i32 %357 to i64
  store i64 %358, i64* %RAX.i1202, align 8
  %359 = shl nsw i64 %358, 2
  %360 = add i64 %317, -2096
  %361 = add i64 %360, %359
  %362 = add i64 %345, 28
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %361 to i32*
  store i32 %354, i32* %363, align 4
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -2104
  %366 = load i64, i64* %3, align 8
  %367 = add i64 %366, 6
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %365 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = add i32 %369, 1
  %371 = zext i32 %370 to i64
  store i64 %371, i64* %RAX.i1202, align 8
  %372 = icmp eq i32 %369, -1
  %373 = icmp eq i32 %370, 0
  %374 = or i1 %372, %373
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %14, align 1
  %376 = and i32 %370, 255
  %377 = tail call i32 @llvm.ctpop.i32(i32 %376)
  %378 = trunc i32 %377 to i8
  %379 = and i8 %378, 1
  %380 = xor i8 %379, 1
  store i8 %380, i8* %21, align 1
  %381 = xor i32 %370, %369
  %382 = lshr i32 %381, 4
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  store i8 %384, i8* %26, align 1
  %385 = zext i1 %373 to i8
  store i8 %385, i8* %29, align 1
  %386 = lshr i32 %370, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %32, align 1
  %388 = lshr i32 %369, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %386
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %38, align 1
  %393 = add i64 %366, 15
  store i64 %393, i64* %3, align 8
  store i32 %370, i32* %368, align 4
  %394 = load i64, i64* %3, align 8
  %395 = add i64 %394, -59
  store i64 %395, i64* %3, align 8
  br label %block_.L_400e2e

block_.L_400e6e:                                  ; preds = %block_.L_400e2e
  %396 = add i64 %345, 10
  store i64 %396, i64* %3, align 8
  store i32 1, i32* %320, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_400e78

block_.L_400e78:                                  ; preds = %block_400e88, %block_.L_400e6e
  %397 = phi i64 [ %530, %block_400e88 ], [ %.pre109, %block_.L_400e6e ]
  %398 = load i64, i64* %RBP.i, align 8
  %399 = add i64 %398, -2104
  %400 = add i64 %397, 10
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = add i32 %402, -257
  %404 = icmp ult i32 %402, 257
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %14, align 1
  %406 = and i32 %403, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %21, align 1
  %411 = xor i32 %403, %402
  %412 = lshr i32 %411, 4
  %413 = trunc i32 %412 to i8
  %414 = and i8 %413, 1
  store i8 %414, i8* %26, align 1
  %415 = icmp eq i32 %403, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %29, align 1
  %417 = lshr i32 %403, 31
  %418 = trunc i32 %417 to i8
  store i8 %418, i8* %32, align 1
  %419 = lshr i32 %402, 31
  %420 = xor i32 %417, %419
  %421 = add nuw nsw i32 %420, %419
  %422 = icmp eq i32 %421, 2
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %38, align 1
  %424 = icmp ne i8 %418, 0
  %425 = xor i1 %424, %422
  %.v166 = select i1 %425, i64 16, i64 76
  %426 = add i64 %397, %.v166
  store i64 %426, i64* %3, align 8
  br i1 %425, label %block_400e88, label %block_.L_400ec4

block_400e88:                                     ; preds = %block_.L_400e78
  %427 = add i64 %426, 6
  store i64 %427, i64* %3, align 8
  %428 = load i32, i32* %401, align 4
  %429 = add i32 %428, -1
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RAX.i1202, align 8
  %431 = icmp eq i32 %428, 0
  %432 = zext i1 %431 to i8
  store i8 %432, i8* %14, align 1
  %433 = and i32 %429, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433)
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %21, align 1
  %438 = xor i32 %429, %428
  %439 = lshr i32 %438, 4
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %26, align 1
  %442 = icmp eq i32 %429, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %29, align 1
  %444 = lshr i32 %429, 31
  %445 = trunc i32 %444 to i8
  store i8 %445, i8* %32, align 1
  %446 = lshr i32 %428, 31
  %447 = xor i32 %444, %446
  %448 = add nuw nsw i32 %447, %446
  %449 = icmp eq i32 %448, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %38, align 1
  %451 = sext i32 %429 to i64
  store i64 %451, i64* %RCX.i1175, align 8
  %452 = shl nsw i64 %451, 2
  %453 = add nsw i64 %452, -1072
  %454 = add i64 %453, %398
  %455 = add i64 %426, 19
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX.i1202, align 8
  %459 = add i64 %426, 26
  store i64 %459, i64* %3, align 8
  %460 = load i32, i32* %401, align 4
  %461 = sext i32 %460 to i64
  store i64 %461, i64* %RCX.i1175, align 8
  %462 = shl nsw i64 %461, 2
  %463 = add nsw i64 %462, -1072
  %464 = add i64 %463, %398
  %465 = add i64 %426, 33
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i32*
  %467 = load i32, i32* %466, align 4
  %468 = add i32 %467, %457
  %469 = zext i32 %468 to i64
  store i64 %469, i64* %RAX.i1202, align 8
  %470 = icmp ult i32 %468, %457
  %471 = icmp ult i32 %468, %467
  %472 = or i1 %470, %471
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %14, align 1
  %474 = and i32 %468, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %21, align 1
  %479 = xor i32 %467, %457
  %480 = xor i32 %479, %468
  %481 = lshr i32 %480, 4
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  store i8 %483, i8* %26, align 1
  %484 = icmp eq i32 %468, 0
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %29, align 1
  %486 = lshr i32 %468, 31
  %487 = trunc i32 %486 to i8
  store i8 %487, i8* %32, align 1
  %488 = lshr i32 %457, 31
  %489 = lshr i32 %467, 31
  %490 = xor i32 %486, %488
  %491 = xor i32 %486, %489
  %492 = add nuw nsw i32 %490, %491
  %493 = icmp eq i32 %492, 2
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %38, align 1
  %495 = add i64 %398, -1072
  %496 = add i64 %495, %462
  %497 = add i64 %426, 40
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  store i32 %468, i32* %498, align 4
  %499 = load i64, i64* %RBP.i, align 8
  %500 = add i64 %499, -2104
  %501 = load i64, i64* %3, align 8
  %502 = add i64 %501, 6
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %500 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = add i32 %504, 1
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RAX.i1202, align 8
  %507 = icmp eq i32 %504, -1
  %508 = icmp eq i32 %505, 0
  %509 = or i1 %507, %508
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %14, align 1
  %511 = and i32 %505, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %21, align 1
  %516 = xor i32 %505, %504
  %517 = lshr i32 %516, 4
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  store i8 %519, i8* %26, align 1
  %520 = zext i1 %508 to i8
  store i8 %520, i8* %29, align 1
  %521 = lshr i32 %505, 31
  %522 = trunc i32 %521 to i8
  store i8 %522, i8* %32, align 1
  %523 = lshr i32 %504, 31
  %524 = xor i32 %521, %523
  %525 = add nuw nsw i32 %524, %521
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %38, align 1
  %528 = add i64 %501, 15
  store i64 %528, i64* %3, align 8
  store i32 %505, i32* %503, align 4
  %529 = load i64, i64* %3, align 8
  %530 = add i64 %529, -71
  store i64 %530, i64* %3, align 8
  br label %block_.L_400e78

block_.L_400ec4:                                  ; preds = %block_.L_400e78
  %531 = add i64 %426, 10
  store i64 %531, i64* %3, align 8
  store i32 0, i32* %401, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_400ece

block_.L_400ece:                                  ; preds = %block_400edd, %block_.L_400ec4
  %532 = phi i64 [ %692, %block_400edd ], [ %.pre110, %block_.L_400ec4 ]
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -2104
  %535 = add i64 %532, 6
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = zext i32 %537 to i64
  store i64 %538, i64* %RAX.i1202, align 8
  %539 = add i64 %533, -28
  %540 = add i64 %532, 9
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %539 to i32*
  %542 = load i32, i32* %541, align 4
  %543 = sub i32 %537, %542
  %544 = icmp ult i32 %537, %542
  %545 = zext i1 %544 to i8
  store i8 %545, i8* %14, align 1
  %546 = and i32 %543, 255
  %547 = tail call i32 @llvm.ctpop.i32(i32 %546)
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  store i8 %550, i8* %21, align 1
  %551 = xor i32 %542, %537
  %552 = xor i32 %551, %543
  %553 = lshr i32 %552, 4
  %554 = trunc i32 %553 to i8
  %555 = and i8 %554, 1
  store i8 %555, i8* %26, align 1
  %556 = icmp eq i32 %543, 0
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %29, align 1
  %558 = lshr i32 %543, 31
  %559 = trunc i32 %558 to i8
  store i8 %559, i8* %32, align 1
  %560 = lshr i32 %537, 31
  %561 = lshr i32 %542, 31
  %562 = xor i32 %561, %560
  %563 = xor i32 %558, %560
  %564 = add nuw nsw i32 %563, %562
  %565 = icmp eq i32 %564, 2
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %38, align 1
  %567 = icmp ne i8 %559, 0
  %568 = xor i1 %567, %565
  %.v167 = select i1 %568, i64 15, i64 122
  %569 = add i64 %532, %.v167
  store i64 %569, i64* %3, align 8
  br i1 %568, label %block_400edd, label %block_.L_400f48

block_400edd:                                     ; preds = %block_.L_400ece
  %570 = add i64 %533, -2144
  %571 = add i64 %569, 7
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to i64*
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %RAX.i1202, align 8
  %574 = add i64 %569, 14
  store i64 %574, i64* %3, align 8
  %575 = load i32, i32* %536, align 4
  %576 = sext i32 %575 to i64
  store i64 %576, i64* %RCX.i1175, align 8
  %577 = add i64 %573, %576
  %578 = add i64 %569, 18
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i8*
  %580 = load i8, i8* %579, align 1
  %581 = zext i8 %580 to i64
  store i64 %581, i64* %RDX.i1213, align 8
  %582 = add i64 %533, -2108
  %583 = zext i8 %580 to i32
  %584 = add i64 %569, 24
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %582 to i32*
  store i32 %583, i32* %585, align 4
  %586 = load i64, i64* %RBP.i, align 8
  %587 = add i64 %586, -2108
  %588 = load i64, i64* %3, align 8
  %589 = add i64 %588, 7
  store i64 %589, i64* %3, align 8
  %590 = inttoptr i64 %587 to i32*
  %591 = load i32, i32* %590, align 4
  %592 = sext i32 %591 to i64
  store i64 %592, i64* %RAX.i1202, align 8
  %593 = shl nsw i64 %592, 2
  %594 = add i64 %586, -1072
  %595 = add i64 %594, %593
  %596 = add i64 %588, 14
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = add i32 %598, -1
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %RDX.i1213, align 8
  %601 = icmp eq i32 %598, 0
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %14, align 1
  %603 = and i32 %599, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %21, align 1
  %608 = xor i32 %599, %598
  %609 = lshr i32 %608, 4
  %610 = trunc i32 %609 to i8
  %611 = and i8 %610, 1
  store i8 %611, i8* %26, align 1
  %612 = icmp eq i32 %599, 0
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %29, align 1
  %614 = lshr i32 %599, 31
  %615 = trunc i32 %614 to i8
  store i8 %615, i8* %32, align 1
  %616 = lshr i32 %598, 31
  %617 = xor i32 %614, %616
  %618 = add nuw nsw i32 %617, %616
  %619 = icmp eq i32 %618, 2
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %38, align 1
  %621 = add i64 %586, -2112
  %622 = add i64 %588, 23
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i32*
  store i32 %599, i32* %623, align 4
  %624 = load i64, i64* %RBP.i, align 8
  %625 = add i64 %624, -2112
  %626 = load i64, i64* %3, align 8
  %627 = add i64 %626, 6
  store i64 %627, i64* %3, align 8
  %628 = inttoptr i64 %625 to i32*
  %629 = load i32, i32* %628, align 4
  %630 = zext i32 %629 to i64
  store i64 %630, i64* %RDX.i1213, align 8
  %631 = add i64 %624, -2108
  %632 = add i64 %626, 13
  store i64 %632, i64* %3, align 8
  %633 = inttoptr i64 %631 to i32*
  %634 = load i32, i32* %633, align 4
  %635 = sext i32 %634 to i64
  store i64 %635, i64* %RAX.i1202, align 8
  %636 = shl nsw i64 %635, 2
  %637 = add i64 %624, -1072
  %638 = add i64 %637, %636
  %639 = add i64 %626, 20
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  store i32 %629, i32* %640, align 4
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -2104
  %643 = load i64, i64* %3, align 8
  %644 = add i64 %643, 6
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %642 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RDX.i1213, align 8
  %648 = add i64 %641, -8
  %649 = add i64 %643, 10
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RAX.i1202, align 8
  %652 = add i64 %641, -2112
  %653 = add i64 %643, 17
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = sext i32 %655 to i64
  store i64 %656, i64* %RCX.i1175, align 8
  %657 = shl nsw i64 %656, 2
  %658 = add i64 %657, %651
  %659 = add i64 %643, 20
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i32*
  store i32 %646, i32* %660, align 4
  %661 = load i64, i64* %RBP.i, align 8
  %662 = add i64 %661, -2104
  %663 = load i64, i64* %3, align 8
  %664 = add i64 %663, 6
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %662 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = add i32 %666, 1
  %668 = zext i32 %667 to i64
  store i64 %668, i64* %RAX.i1202, align 8
  %669 = icmp eq i32 %666, -1
  %670 = icmp eq i32 %667, 0
  %671 = or i1 %669, %670
  %672 = zext i1 %671 to i8
  store i8 %672, i8* %14, align 1
  %673 = and i32 %667, 255
  %674 = tail call i32 @llvm.ctpop.i32(i32 %673)
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  %677 = xor i8 %676, 1
  store i8 %677, i8* %21, align 1
  %678 = xor i32 %667, %666
  %679 = lshr i32 %678, 4
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %26, align 1
  %682 = zext i1 %670 to i8
  store i8 %682, i8* %29, align 1
  %683 = lshr i32 %667, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %32, align 1
  %685 = lshr i32 %666, 31
  %686 = xor i32 %683, %685
  %687 = add nuw nsw i32 %686, %683
  %688 = icmp eq i32 %687, 2
  %689 = zext i1 %688 to i8
  store i8 %689, i8* %38, align 1
  %690 = add i64 %663, 15
  store i64 %690, i64* %3, align 8
  store i32 %667, i32* %665, align 4
  %691 = load i64, i64* %3, align 8
  %692 = add i64 %691, -117
  store i64 %692, i64* %3, align 8
  br label %block_.L_400ece

block_.L_400f48:                                  ; preds = %block_.L_400ece
  store i64 32, i64* %RAX.i1202, align 8
  %693 = add i64 %569, 8
  store i64 %693, i64* %3, align 8
  %694 = load i32, i32* %541, align 4
  %695 = zext i32 %694 to i64
  store i64 %695, i64* %RCX.i1175, align 8
  %696 = add i64 %533, -2152
  %697 = add i64 %569, 14
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  store i32 32, i32* %698, align 4
  %699 = load i32, i32* %ECX.i1235, align 4
  %700 = zext i32 %699 to i64
  %701 = load i64, i64* %3, align 8
  store i64 %700, i64* %RAX.i1202, align 8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %703 = sext i32 %699 to i64
  %704 = lshr i64 %703, 32
  store i64 %704, i64* %702, align 8
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -2152
  %707 = add i64 %701, 9
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = zext i32 %709 to i64
  store i64 %710, i64* %RCX.i1175, align 8
  %711 = add i64 %701, 11
  store i64 %711, i64* %3, align 8
  %712 = sext i32 %709 to i64
  %713 = shl nuw i64 %704, 32
  %714 = or i64 %713, %700
  %715 = sdiv i64 %714, %712
  %716 = shl i64 %715, 32
  %717 = ashr exact i64 %716, 32
  %718 = icmp eq i64 %715, %717
  br i1 %718, label %721, label %719

; <label>:719:                                    ; preds = %block_.L_400f48
  %720 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %711, %struct.Memory* %MEMORY.0)
  %.pre111 = load i64, i64* %RAX.i1202, align 8
  %.pre112 = load i64, i64* %3, align 8
  %.pre113 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:721:                                    ; preds = %block_.L_400f48
  %722 = srem i64 %714, %712
  %723 = and i64 %715, 4294967295
  store i64 %723, i64* %RAX.i1202, align 8
  %724 = and i64 %722, 4294967295
  store i64 %724, i64* %RDX.i1213, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %721, %719
  %725 = phi i64 [ %.pre113, %719 ], [ %705, %721 ]
  %726 = phi i64 [ %.pre112, %719 ], [ %711, %721 ]
  %727 = phi i64 [ %.pre111, %719 ], [ %723, %721 ]
  %728 = phi %struct.Memory* [ %720, %719 ], [ %MEMORY.0, %721 ]
  %729 = trunc i64 %727 to i32
  %730 = add i32 %729, 2
  %731 = zext i32 %730 to i64
  store i64 %731, i64* %RAX.i1202, align 8
  %732 = icmp ugt i32 %729, -3
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %14, align 1
  %734 = and i32 %730, 255
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %21, align 1
  %739 = xor i32 %730, %729
  %740 = lshr i32 %739, 4
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  store i8 %742, i8* %26, align 1
  %743 = icmp eq i32 %730, 0
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %29, align 1
  %745 = lshr i32 %730, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %32, align 1
  %747 = lshr i32 %729, 31
  %748 = xor i32 %745, %747
  %749 = add nuw nsw i32 %748, %745
  %750 = icmp eq i32 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %38, align 1
  %752 = add i64 %725, -2136
  %753 = add i64 %726, 9
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %752 to i32*
  store i32 %730, i32* %754, align 4
  %755 = load i64, i64* %RBP.i, align 8
  %756 = add i64 %755, -2104
  %757 = load i64, i64* %3, align 8
  %758 = add i64 %757, 10
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %756 to i32*
  store i32 0, i32* %759, align 4
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_400f74

block_.L_400f74:                                  ; preds = %block_400f86, %routine_idivl__ecx.exit
  %760 = phi i64 [ %840, %block_400f86 ], [ %.pre114, %routine_idivl__ecx.exit ]
  %761 = load i64, i64* %RBP.i, align 8
  %762 = add i64 %761, -2104
  %763 = add i64 %760, 6
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  %765 = load i32, i32* %764, align 4
  %766 = zext i32 %765 to i64
  store i64 %766, i64* %RAX.i1202, align 8
  %767 = add i64 %761, -2136
  %768 = add i64 %760, 12
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = sub i32 %765, %770
  %772 = icmp ult i32 %765, %770
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %14, align 1
  %774 = and i32 %771, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %21, align 1
  %779 = xor i32 %770, %765
  %780 = xor i32 %779, %771
  %781 = lshr i32 %780, 4
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  store i8 %783, i8* %26, align 1
  %784 = icmp eq i32 %771, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %29, align 1
  %786 = lshr i32 %771, 31
  %787 = trunc i32 %786 to i8
  store i8 %787, i8* %32, align 1
  %788 = lshr i32 %765, 31
  %789 = lshr i32 %770, 31
  %790 = xor i32 %789, %788
  %791 = xor i32 %786, %788
  %792 = add nuw nsw i32 %791, %790
  %793 = icmp eq i32 %792, 2
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %38, align 1
  %795 = icmp ne i8 %787, 0
  %796 = xor i1 %795, %793
  %.v168 = select i1 %796, i64 18, i64 56
  %797 = add i64 %760, %.v168
  store i64 %797, i64* %3, align 8
  br i1 %796, label %block_400f86, label %block_.L_400fac

block_400f86:                                     ; preds = %block_.L_400f74
  %798 = add i64 %761, -24
  %799 = add i64 %797, 4
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i64*
  %801 = load i64, i64* %800, align 8
  store i64 %801, i64* %RAX.i1202, align 8
  %802 = add i64 %797, 11
  store i64 %802, i64* %3, align 8
  %803 = load i32, i32* %764, align 4
  %804 = sext i32 %803 to i64
  store i64 %804, i64* %RCX.i1175, align 8
  %805 = shl nsw i64 %804, 2
  %806 = add i64 %805, %801
  %807 = add i64 %797, 18
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i32*
  store i32 0, i32* %808, align 4
  %809 = load i64, i64* %RBP.i, align 8
  %810 = add i64 %809, -2104
  %811 = load i64, i64* %3, align 8
  %812 = add i64 %811, 6
  store i64 %812, i64* %3, align 8
  %813 = inttoptr i64 %810 to i32*
  %814 = load i32, i32* %813, align 4
  %815 = add i32 %814, 1
  %816 = zext i32 %815 to i64
  store i64 %816, i64* %RAX.i1202, align 8
  %817 = icmp eq i32 %814, -1
  %818 = icmp eq i32 %815, 0
  %819 = or i1 %817, %818
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %14, align 1
  %821 = and i32 %815, 255
  %822 = tail call i32 @llvm.ctpop.i32(i32 %821)
  %823 = trunc i32 %822 to i8
  %824 = and i8 %823, 1
  %825 = xor i8 %824, 1
  store i8 %825, i8* %21, align 1
  %826 = xor i32 %815, %814
  %827 = lshr i32 %826, 4
  %828 = trunc i32 %827 to i8
  %829 = and i8 %828, 1
  store i8 %829, i8* %26, align 1
  %830 = zext i1 %818 to i8
  store i8 %830, i8* %29, align 1
  %831 = lshr i32 %815, 31
  %832 = trunc i32 %831 to i8
  store i8 %832, i8* %32, align 1
  %833 = lshr i32 %814, 31
  %834 = xor i32 %831, %833
  %835 = add nuw nsw i32 %834, %831
  %836 = icmp eq i32 %835, 2
  %837 = zext i1 %836 to i8
  store i8 %837, i8* %38, align 1
  %838 = add i64 %811, 15
  store i64 %838, i64* %3, align 8
  store i32 %815, i32* %813, align 4
  %839 = load i64, i64* %3, align 8
  %840 = add i64 %839, -51
  store i64 %840, i64* %3, align 8
  br label %block_.L_400f74

block_.L_400fac:                                  ; preds = %block_.L_400f74
  %841 = add i64 %797, 10
  store i64 %841, i64* %3, align 8
  store i32 0, i32* %764, align 4
  %CL.i943 = bitcast %union.anon* %56 to i8*
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_400fb6

block_.L_400fb6:                                  ; preds = %routine_shll__cl___eax.exit945, %block_.L_400fac
  %842 = phi i64 [ %993, %routine_shll__cl___eax.exit945 ], [ %.pre115, %block_.L_400fac ]
  %843 = load i64, i64* %RBP.i, align 8
  %844 = add i64 %843, -2104
  %845 = add i64 %842, 10
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = add i32 %847, -256
  %849 = icmp ult i32 %847, 256
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %14, align 1
  %851 = and i32 %848, 255
  %852 = tail call i32 @llvm.ctpop.i32(i32 %851)
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  %855 = xor i8 %854, 1
  store i8 %855, i8* %21, align 1
  %856 = xor i32 %848, %847
  %857 = lshr i32 %856, 4
  %858 = trunc i32 %857 to i8
  %859 = and i8 %858, 1
  store i8 %859, i8* %26, align 1
  %860 = icmp eq i32 %848, 0
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %29, align 1
  %862 = lshr i32 %848, 31
  %863 = trunc i32 %862 to i8
  store i8 %863, i8* %32, align 1
  %864 = lshr i32 %847, 31
  %865 = xor i32 %862, %864
  %866 = add nuw nsw i32 %865, %864
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  store i8 %868, i8* %38, align 1
  %869 = icmp ne i8 %863, 0
  %870 = xor i1 %869, %867
  %.v169 = select i1 %870, i64 16, i64 92
  %871 = add i64 %842, %.v169
  store i64 %871, i64* %3, align 8
  br i1 %870, label %block_400fc6, label %block_.L_401012

block_400fc6:                                     ; preds = %block_.L_400fb6
  store i64 1, i64* %RAX.i1202, align 8
  %872 = add i64 %871, 12
  store i64 %872, i64* %3, align 8
  %873 = load i32, i32* %846, align 4
  %874 = sext i32 %873 to i64
  store i64 %874, i64* %RCX.i1175, align 8
  %875 = shl nsw i64 %874, 2
  %876 = add i64 %843, -1072
  %877 = add i64 %876, %875
  %878 = add i64 %871, 19
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = zext i32 %880 to i64
  %882 = and i64 %881, 31
  %883 = trunc i64 %882 to i32
  store i64 %882, i64* %RDX.i1213, align 8
  store i8 0, i8* %14, align 1
  %884 = tail call i32 @llvm.ctpop.i32(i32 %883)
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  %887 = xor i8 %886, 1
  store i8 %887, i8* %21, align 1
  %888 = icmp eq i32 %883, 0
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %882, i64* %RCX.i1175, align 8
  %890 = add i64 %871, 26
  store i64 %890, i64* %3, align 8
  %891 = trunc i32 %880 to i5
  switch i5 %891, label %892 [
    i5 0, label %routine_shll__cl___eax.exit945
    i5 1, label %900
  ]

; <label>:892:                                    ; preds = %block_400fc6
  %893 = and i64 %881, 31
  %894 = add nuw nsw i64 %893, 4294967295
  %895 = and i64 %894, 4294967295
  %896 = shl i64 1, %895
  %897 = trunc i64 %896 to i32
  %898 = icmp slt i32 %897, 0
  %899 = shl i32 %897, 1
  br label %900

; <label>:900:                                    ; preds = %block_400fc6, %892
  %901 = phi i1 [ %898, %892 ], [ false, %block_400fc6 ]
  %902 = phi i32 [ %899, %892 ], [ 2, %block_400fc6 ]
  %903 = zext i32 %902 to i64
  store i64 %903, i64* %RAX.i1202, align 8
  %904 = zext i1 %901 to i8
  store i8 %904, i8* %14, align 1
  %905 = and i32 %902, 254
  %906 = tail call i32 @llvm.ctpop.i32(i32 %905)
  %907 = trunc i32 %906 to i8
  %908 = and i8 %907, 1
  %909 = xor i8 %908, 1
  store i8 %909, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %910 = icmp eq i32 %902, 0
  %911 = zext i1 %910 to i8
  store i8 %911, i8* %29, align 1
  %912 = lshr i32 %902, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit945

routine_shll__cl___eax.exit945:                   ; preds = %900, %block_400fc6
  %914 = phi i32 [ %902, %900 ], [ 1, %block_400fc6 ]
  %915 = add i64 %843, -24
  %916 = add i64 %871, 30
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i64*
  %918 = load i64, i64* %917, align 8
  store i64 %918, i64* %RSI.i1000, align 8
  %919 = add i64 %871, 37
  store i64 %919, i64* %3, align 8
  %920 = load i32, i32* %846, align 4
  %921 = sext i32 %920 to i64
  store i64 %921, i64* %RDI.i779, align 8
  %922 = shl nsw i64 %921, 2
  %923 = add i64 %876, %922
  %924 = add i64 %871, 44
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i32*
  %926 = load i32, i32* %925, align 4
  %927 = sext i32 %926 to i64
  %928 = ashr i64 %927, 4
  %929 = lshr i64 %928, 1
  %930 = trunc i64 %928 to i8
  %931 = and i8 %930, 1
  %932 = trunc i64 %929 to i32
  %933 = and i64 %929, 4294967295
  store i64 %933, i64* %RDX.i1213, align 8
  store i8 %931, i8* %14, align 1
  %934 = and i32 %932, 255
  %935 = tail call i32 @llvm.ctpop.i32(i32 %934)
  %936 = trunc i32 %935 to i8
  %937 = and i8 %936, 1
  %938 = xor i8 %937, 1
  store i8 %938, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %939 = icmp eq i32 %932, 0
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %29, align 1
  %941 = lshr i64 %928, 32
  %942 = trunc i64 %941 to i8
  %943 = and i8 %942, 1
  store i8 %943, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext161 = shl i64 %929, 32
  %944 = ashr exact i64 %sext161, 32
  store i64 %944, i64* %RDI.i779, align 8
  %945 = ashr exact i64 %sext161, 30
  %946 = add i64 %918, %945
  %947 = add i64 %871, 53
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = or i32 %949, %914
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RAX.i1202, align 8
  store i8 0, i8* %14, align 1
  %952 = and i32 %950, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %21, align 1
  %957 = icmp eq i32 %950, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %29, align 1
  %959 = lshr i32 %950, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %961 = add i64 %871, 56
  store i64 %961, i64* %3, align 8
  store i32 %950, i32* %948, align 4
  %962 = load i64, i64* %RBP.i, align 8
  %963 = add i64 %962, -2104
  %964 = load i64, i64* %3, align 8
  %965 = add i64 %964, 6
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %963 to i32*
  %967 = load i32, i32* %966, align 4
  %968 = add i32 %967, 1
  %969 = zext i32 %968 to i64
  store i64 %969, i64* %RAX.i1202, align 8
  %970 = icmp eq i32 %967, -1
  %971 = icmp eq i32 %968, 0
  %972 = or i1 %970, %971
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %14, align 1
  %974 = and i32 %968, 255
  %975 = tail call i32 @llvm.ctpop.i32(i32 %974)
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  %978 = xor i8 %977, 1
  store i8 %978, i8* %21, align 1
  %979 = xor i32 %968, %967
  %980 = lshr i32 %979, 4
  %981 = trunc i32 %980 to i8
  %982 = and i8 %981, 1
  store i8 %982, i8* %26, align 1
  %983 = zext i1 %971 to i8
  store i8 %983, i8* %29, align 1
  %984 = lshr i32 %968, 31
  %985 = trunc i32 %984 to i8
  store i8 %985, i8* %32, align 1
  %986 = lshr i32 %967, 31
  %987 = xor i32 %984, %986
  %988 = add nuw nsw i32 %987, %984
  %989 = icmp eq i32 %988, 2
  %990 = zext i1 %989 to i8
  store i8 %990, i8* %38, align 1
  %991 = add i64 %964, 15
  store i64 %991, i64* %3, align 8
  store i32 %968, i32* %966, align 4
  %992 = load i64, i64* %3, align 8
  %993 = add i64 %992, -87
  store i64 %993, i64* %3, align 8
  br label %block_.L_400fb6

block_.L_401012:                                  ; preds = %block_.L_400fb6
  %994 = add i64 %871, 10
  store i64 %994, i64* %3, align 8
  store i32 0, i32* %846, align 4
  %995 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %R9.i867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_40101c

block_.L_40101c:                                  ; preds = %routine_shll__cl___eax.exit838, %block_.L_401012
  %996 = phi i64 [ %1283, %routine_shll__cl___eax.exit838 ], [ %.pre116, %block_.L_401012 ]
  %997 = load i64, i64* %RBP.i, align 8
  %998 = add i64 %997, -2104
  %999 = add i64 %996, 7
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i32*
  %1001 = load i32, i32* %1000, align 4
  %1002 = add i32 %1001, -32
  %1003 = icmp ult i32 %1001, 32
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %14, align 1
  %1005 = and i32 %1002, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %21, align 1
  %1010 = xor i32 %1002, %1001
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %26, align 1
  %1014 = icmp eq i32 %1002, 0
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %29, align 1
  %1016 = lshr i32 %1002, 31
  %1017 = trunc i32 %1016 to i8
  store i8 %1017, i8* %32, align 1
  %1018 = lshr i32 %1001, 31
  %1019 = xor i32 %1016, %1018
  %1020 = add nuw nsw i32 %1019, %1018
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %38, align 1
  %1023 = icmp ne i8 %1017, 0
  %1024 = xor i1 %1023, %1021
  %.v170 = select i1 %1024, i64 13, i64 156
  %1025 = add i64 %996, %.v170
  store i64 %1025, i64* %3, align 8
  br i1 %1024, label %block_401029, label %block_.L_4010b8

block_401029:                                     ; preds = %block_.L_40101c
  store i64 1, i64* %RAX.i1202, align 8
  %1026 = add i64 %997, -28
  %1027 = add i64 %1025, 8
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = zext i32 %1029 to i64
  store i64 %1030, i64* %RCX.i1175, align 8
  %1031 = add i64 %1025, 14
  store i64 %1031, i64* %3, align 8
  %1032 = load i32, i32* %1000, align 4
  %1033 = shl i32 %1032, 1
  %1034 = add i32 %1033, %1029
  %1035 = zext i32 %1034 to i64
  %1036 = and i64 %1035, 31
  %1037 = trunc i64 %1036 to i32
  store i64 %1036, i64* %RCX.i1175, align 8
  store i8 0, i8* %14, align 1
  %1038 = tail call i32 @llvm.ctpop.i32(i32 %1037)
  %1039 = trunc i32 %1038 to i8
  %1040 = and i8 %1039, 1
  %1041 = xor i8 %1040, 1
  store i8 %1041, i8* %21, align 1
  %1042 = icmp eq i32 %1037, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RDX.i1213, align 8
  %1044 = add i64 %1025, 25
  store i64 %1044, i64* %3, align 8
  %1045 = trunc i32 %1034 to i5
  switch i5 %1045, label %1046 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %1054
  ]

; <label>:1046:                                   ; preds = %block_401029
  %1047 = and i64 %1035, 31
  %1048 = add nuw nsw i64 %1047, 4294967295
  %1049 = and i64 %1048, 4294967295
  %1050 = shl i64 1, %1049
  %1051 = trunc i64 %1050 to i32
  %1052 = icmp slt i32 %1051, 0
  %1053 = shl i32 %1051, 1
  br label %1054

; <label>:1054:                                   ; preds = %block_401029, %1046
  %1055 = phi i1 [ %1052, %1046 ], [ false, %block_401029 ]
  %1056 = phi i32 [ %1053, %1046 ], [ 2, %block_401029 ]
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RDX.i1213, align 8
  %1058 = zext i1 %1055 to i8
  store i8 %1058, i8* %14, align 1
  %1059 = and i32 %1056, 254
  %1060 = tail call i32 @llvm.ctpop.i32(i32 %1059)
  %1061 = trunc i32 %1060 to i8
  %1062 = and i8 %1061, 1
  %1063 = xor i8 %1062, 1
  store i8 %1063, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1064 = icmp eq i32 %1056, 0
  %1065 = zext i1 %1064 to i8
  store i8 %1065, i8* %29, align 1
  %1066 = lshr i32 %1056, 31
  %1067 = trunc i32 %1066 to i8
  store i8 %1067, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %1054, %block_401029
  %1068 = load i64, i64* %RBP.i, align 8
  %1069 = add i64 %1068, -24
  %1070 = add i64 %1025, 29
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i64*
  %1072 = load i64, i64* %1071, align 8
  store i64 %1072, i64* %RSI.i1000, align 8
  %1073 = add i64 %1068, -28
  %1074 = add i64 %1025, 32
  store i64 %1074, i64* %3, align 8
  %1075 = inttoptr i64 %1073 to i32*
  %1076 = load i32, i32* %1075, align 4
  %1077 = zext i32 %1076 to i64
  store i64 %1077, i64* %RDI.i779, align 8
  %1078 = add i64 %1068, -2104
  %1079 = add i64 %1025, 39
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1078 to i32*
  %1081 = load i32, i32* %1080, align 4
  %1082 = shl i32 %1081, 1
  %1083 = zext i32 %1082 to i64
  store i64 %1083, i64* %995, align 8
  %1084 = add i32 %1082, %1076
  %1085 = zext i32 %1084 to i64
  %1086 = shl nuw i64 %1085, 32
  %1087 = ashr i64 %1086, 36
  %1088 = lshr i64 %1087, 1
  %1089 = trunc i64 %1087 to i8
  %1090 = and i8 %1089, 1
  %1091 = trunc i64 %1088 to i32
  %1092 = and i64 %1088, 4294967295
  store i64 %1092, i64* %RDI.i779, align 8
  store i8 %1090, i8* %14, align 1
  %1093 = and i32 %1091, 255
  %1094 = tail call i32 @llvm.ctpop.i32(i32 %1093)
  %1095 = trunc i32 %1094 to i8
  %1096 = and i8 %1095, 1
  %1097 = xor i8 %1096, 1
  store i8 %1097, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1098 = icmp eq i32 %1091, 0
  %1099 = zext i1 %1098 to i8
  store i8 %1099, i8* %29, align 1
  %1100 = lshr i64 %1087, 32
  %1101 = trunc i64 %1100 to i8
  %1102 = and i8 %1101, 1
  store i8 %1102, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext159 = shl i64 %1088, 32
  %1103 = ashr exact i64 %sext159, 32
  store i64 %1103, i64* %R9.i867, align 8
  %1104 = load i64, i64* %RDX.i1213, align 8
  %1105 = load i64, i64* %RSI.i1000, align 8
  %1106 = ashr exact i64 %sext159, 30
  %1107 = add i64 %1105, %1106
  %1108 = add i64 %1025, 55
  store i64 %1108, i64* %3, align 8
  %1109 = trunc i64 %1104 to i32
  %1110 = inttoptr i64 %1107 to i32*
  %1111 = load i32, i32* %1110, align 4
  %1112 = or i32 %1111, %1109
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RDX.i1213, align 8
  store i8 0, i8* %14, align 1
  %1114 = and i32 %1112, 255
  %1115 = tail call i32 @llvm.ctpop.i32(i32 %1114)
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  store i8 %1118, i8* %21, align 1
  %1119 = icmp eq i32 %1112, 0
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %29, align 1
  %1121 = lshr i32 %1112, 31
  %1122 = trunc i32 %1121 to i8
  store i8 %1122, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1123 = add i64 %1025, 59
  store i64 %1123, i64* %3, align 8
  store i32 %1112, i32* %1110, align 4
  %1124 = load i64, i64* %RBP.i, align 8
  %1125 = add i64 %1124, -28
  %1126 = load i64, i64* %3, align 8
  %1127 = add i64 %1126, 3
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1125 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RDX.i1213, align 8
  %1131 = add i64 %1124, -2104
  %1132 = add i64 %1126, 9
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = shl i32 %1134, 1
  %1136 = zext i32 %1135 to i64
  store i64 %1136, i64* %RDI.i779, align 8
  %1137 = add i32 %1135, %1129
  %1138 = add i32 %1137, 1
  %1139 = zext i32 %1138 to i64
  %1140 = and i64 %1139, 31
  %1141 = trunc i64 %1140 to i32
  store i64 %1140, i64* %RDX.i1213, align 8
  store i8 0, i8* %14, align 1
  %1142 = tail call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  store i8 %1145, i8* %21, align 1
  %1146 = icmp eq i32 %1141, 0
  %1147 = zext i1 %1146 to i8
  store i8 %1147, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %1140, i64* %RCX.i1175, align 8
  %1148 = load i64, i64* %RAX.i1202, align 8
  %1149 = add i64 %1126, 23
  store i64 %1149, i64* %3, align 8
  %1150 = trunc i32 %1138 to i5
  switch i5 %1150, label %1157 [
    i5 0, label %routine_shll__cl___eax.exit838
    i5 1, label %1151
  ]

; <label>:1151:                                   ; preds = %routine_shll__cl___edx.exit
  %1152 = trunc i64 %1148 to i32
  %1153 = shl i32 %1152, 1
  %1154 = icmp slt i32 %1152, 0
  %1155 = icmp slt i32 %1153, 0
  %1156 = xor i1 %1154, %1155
  br label %1166

; <label>:1157:                                   ; preds = %routine_shll__cl___edx.exit
  %1158 = and i64 %1139, 31
  %1159 = add nuw nsw i64 %1158, 4294967295
  %1160 = and i64 %1148, 4294967295
  %1161 = and i64 %1159, 4294967295
  %1162 = shl i64 %1160, %1161
  %1163 = trunc i64 %1162 to i32
  %1164 = icmp slt i32 %1163, 0
  %1165 = shl i32 %1163, 1
  br label %1166

; <label>:1166:                                   ; preds = %1157, %1151
  %1167 = phi i1 [ %1154, %1151 ], [ %1164, %1157 ]
  %1168 = phi i1 [ %1156, %1151 ], [ false, %1157 ]
  %1169 = phi i32 [ %1153, %1151 ], [ %1165, %1157 ]
  %1170 = zext i32 %1169 to i64
  store i64 %1170, i64* %RAX.i1202, align 8
  %1171 = zext i1 %1167 to i8
  store i8 %1171, i8* %14, align 1
  %1172 = and i32 %1169, 254
  %1173 = tail call i32 @llvm.ctpop.i32(i32 %1172)
  %1174 = trunc i32 %1173 to i8
  %1175 = and i8 %1174, 1
  %1176 = xor i8 %1175, 1
  store i8 %1176, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1177 = icmp eq i32 %1169, 0
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %29, align 1
  %1179 = lshr i32 %1169, 31
  %1180 = trunc i32 %1179 to i8
  store i8 %1180, i8* %32, align 1
  %1181 = zext i1 %1168 to i8
  store i8 %1181, i8* %38, align 1
  br label %routine_shll__cl___eax.exit838

routine_shll__cl___eax.exit838:                   ; preds = %1166, %routine_shll__cl___edx.exit
  %1182 = phi i64 [ %1170, %1166 ], [ %1148, %routine_shll__cl___edx.exit ]
  %1183 = xor i64 %1182, -1
  %1184 = trunc i64 %1183 to i32
  %1185 = and i64 %1183, 4294967295
  store i64 %1185, i64* %RAX.i1202, align 8
  store i8 0, i8* %14, align 1
  %1186 = and i32 %1184, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %21, align 1
  %1191 = icmp eq i32 %1184, 0
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %29, align 1
  %1193 = lshr i32 %1184, 31
  %1194 = trunc i32 %1193 to i8
  store i8 %1194, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1195 = load i64, i64* %RBP.i, align 8
  %1196 = add i64 %1195, -24
  %1197 = add i64 %1126, 30
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i64*
  %1199 = load i64, i64* %1198, align 8
  store i64 %1199, i64* %RSI.i1000, align 8
  %1200 = add i64 %1195, -28
  %1201 = add i64 %1126, 33
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i32*
  %1203 = load i32, i32* %1202, align 4
  %1204 = zext i32 %1203 to i64
  store i64 %1204, i64* %RDX.i1213, align 8
  %1205 = add i64 %1195, -2104
  %1206 = add i64 %1126, 39
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = shl i32 %1208, 1
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RDI.i779, align 8
  %1211 = add i32 %1209, %1203
  %1212 = add i32 %1211, 1
  %1213 = zext i32 %1212 to i64
  %1214 = shl nuw i64 %1213, 32
  %1215 = ashr i64 %1214, 36
  %1216 = lshr i64 %1215, 1
  %1217 = trunc i64 %1215 to i8
  %1218 = and i8 %1217, 1
  %1219 = trunc i64 %1216 to i32
  %1220 = and i64 %1216, 4294967295
  store i64 %1220, i64* %RDX.i1213, align 8
  store i8 %1218, i8* %14, align 1
  %1221 = and i32 %1219, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1226 = icmp eq i32 %1219, 0
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %29, align 1
  %1228 = lshr i64 %1215, 32
  %1229 = trunc i64 %1228 to i8
  %1230 = and i8 %1229, 1
  store i8 %1230, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext160 = shl i64 %1216, 32
  %1231 = ashr exact i64 %sext160, 32
  store i64 %1231, i64* %R9.i867, align 8
  %1232 = load i64, i64* %RAX.i1202, align 8
  %1233 = load i64, i64* %RSI.i1000, align 8
  %1234 = ashr exact i64 %sext160, 30
  %1235 = add i64 %1233, %1234
  %1236 = add i64 %1126, 56
  store i64 %1236, i64* %3, align 8
  %1237 = trunc i64 %1232 to i32
  %1238 = inttoptr i64 %1235 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = and i32 %1239, %1237
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RAX.i1202, align 8
  store i8 0, i8* %14, align 1
  %1242 = and i32 %1240, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %21, align 1
  %1247 = icmp eq i32 %1240, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %29, align 1
  %1249 = lshr i32 %1240, 31
  %1250 = trunc i32 %1249 to i8
  store i8 %1250, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1251 = add i64 %1126, 60
  store i64 %1251, i64* %3, align 8
  store i32 %1240, i32* %1238, align 4
  %1252 = load i64, i64* %RBP.i, align 8
  %1253 = add i64 %1252, -2104
  %1254 = load i64, i64* %3, align 8
  %1255 = add i64 %1254, 6
  store i64 %1255, i64* %3, align 8
  %1256 = inttoptr i64 %1253 to i32*
  %1257 = load i32, i32* %1256, align 4
  %1258 = add i32 %1257, 1
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RAX.i1202, align 8
  %1260 = icmp eq i32 %1257, -1
  %1261 = icmp eq i32 %1258, 0
  %1262 = or i1 %1260, %1261
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %14, align 1
  %1264 = and i32 %1258, 255
  %1265 = tail call i32 @llvm.ctpop.i32(i32 %1264)
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  %1268 = xor i8 %1267, 1
  store i8 %1268, i8* %21, align 1
  %1269 = xor i32 %1258, %1257
  %1270 = lshr i32 %1269, 4
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  store i8 %1272, i8* %26, align 1
  %1273 = zext i1 %1261 to i8
  store i8 %1273, i8* %29, align 1
  %1274 = lshr i32 %1258, 31
  %1275 = trunc i32 %1274 to i8
  store i8 %1275, i8* %32, align 1
  %1276 = lshr i32 %1257, 31
  %1277 = xor i32 %1274, %1276
  %1278 = add nuw nsw i32 %1277, %1274
  %1279 = icmp eq i32 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %38, align 1
  %1281 = add i64 %1254, 15
  store i64 %1281, i64* %3, align 8
  store i32 %1258, i32* %1256, align 4
  %1282 = load i64, i64* %3, align 8
  %1283 = add i64 %1282, -151
  store i64 %1283, i64* %3, align 8
  br label %block_.L_40101c

block_.L_4010b8:                                  ; preds = %block_.L_40101c
  %1284 = add i64 %997, -2100
  %1285 = add i64 %1025, 10
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  store i32 1, i32* %1286, align 4
  %AL.i656 = bitcast %union.anon* %.pre-phi to i8*
  %.pre117 = load i64, i64* %RBP.i, align 8
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_4010c2

block_.L_4010c2:                                  ; preds = %block_.L_4015e7, %block_.L_4010b8
  %1287 = phi i64 [ %.pre118, %block_.L_4010b8 ], [ %3223, %block_.L_4015e7 ]
  %1288 = phi i64 [ %.pre117, %block_.L_4010b8 ], [ %3142, %block_.L_4015e7 ]
  %MEMORY.9 = phi %struct.Memory* [ %728, %block_.L_4010b8 ], [ %MEMORY.29, %block_.L_4015e7 ]
  %1289 = add i64 %1288, -32
  %1290 = add i64 %1287, 4
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i32*
  %1292 = load i32, i32* %1291, align 4
  %1293 = add i32 %1292, -4
  %1294 = icmp ult i32 %1292, 4
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %14, align 1
  %1296 = and i32 %1293, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %21, align 1
  %1301 = xor i32 %1293, %1292
  %1302 = lshr i32 %1301, 4
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  store i8 %1304, i8* %26, align 1
  %1305 = icmp eq i32 %1293, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %29, align 1
  %1307 = lshr i32 %1293, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %32, align 1
  %1309 = lshr i32 %1292, 31
  %1310 = xor i32 %1307, %1309
  %1311 = add nuw nsw i32 %1310, %1309
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %38, align 1
  %1314 = icmp ne i8 %1308, 0
  %1315 = xor i1 %1314, %1312
  %.v171 = select i1 %1315, i64 47, i64 10
  %1316 = add i64 %1287, %.v171
  store i64 %1316, i64* %3, align 8
  br i1 %1315, label %block_.L_4010f1, label %block_4010cc

block_4010cc:                                     ; preds = %block_.L_4010c2
  store i64 ptrtoint (%G__0x415a0a_type* @G__0x415a0a to i64), i64* %RSI.i1000, align 8
  %1317 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*), align 8
  store i64 %1317, i64* %RDI.i779, align 8
  %1318 = add i64 %1288, -2100
  %1319 = add i64 %1316, 24
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i32*
  %1321 = load i32, i32* %1320, align 4
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RDX.i1213, align 8
  store i8 0, i8* %AL.i656, align 1
  %1323 = add i64 %1316, -1948
  %1324 = add i64 %1316, 31
  %1325 = load i64, i64* %6, align 8
  %1326 = add i64 %1325, -8
  %1327 = inttoptr i64 %1326 to i64*
  store i64 %1324, i64* %1327, align 8
  store i64 %1326, i64* %6, align 8
  store i64 %1323, i64* %3, align 8
  %1328 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.9)
  %1329 = load i64, i64* %RBP.i, align 8
  %1330 = add i64 %1329, -2156
  %1331 = load i32, i32* %EAX.i1191.pre-phi, align 4
  %1332 = load i64, i64* %3, align 8
  %1333 = add i64 %1332, 6
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1330 to i32*
  store i32 %1331, i32* %1334, align 4
  %.pre119 = load i64, i64* %RBP.i, align 8
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_4010f1

block_.L_4010f1:                                  ; preds = %block_4010cc, %block_.L_4010c2
  %1335 = phi i64 [ %1316, %block_.L_4010c2 ], [ %.pre120, %block_4010cc ]
  %1336 = phi i64 [ %1288, %block_.L_4010c2 ], [ %.pre119, %block_4010cc ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_.L_4010c2 ], [ %1328, %block_4010cc ]
  %1337 = add i64 %1336, -2108
  %1338 = add i64 %1335, 10
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i32*
  store i32 0, i32* %1339, align 4
  %1340 = load i64, i64* %RBP.i, align 8
  %1341 = add i64 %1340, -2104
  %1342 = load i64, i64* %3, align 8
  %1343 = add i64 %1342, 10
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1341 to i32*
  store i32 0, i32* %1344, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_401105

block_.L_401105:                                  ; preds = %block_.L_401186, %block_.L_4010f1
  %1345 = phi i64 [ %1619, %block_.L_401186 ], [ %.pre121, %block_.L_4010f1 ]
  %1346 = load i64, i64* %RBP.i, align 8
  %1347 = add i64 %1346, -2104
  %1348 = add i64 %1345, 6
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i32*
  %1350 = load i32, i32* %1349, align 4
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RAX.i1202, align 8
  %1352 = add i64 %1346, -28
  %1353 = add i64 %1345, 9
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i32*
  %1355 = load i32, i32* %1354, align 4
  %1356 = sub i32 %1350, %1355
  %1357 = icmp ult i32 %1350, %1355
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %14, align 1
  %1359 = and i32 %1356, 255
  %1360 = tail call i32 @llvm.ctpop.i32(i32 %1359)
  %1361 = trunc i32 %1360 to i8
  %1362 = and i8 %1361, 1
  %1363 = xor i8 %1362, 1
  store i8 %1363, i8* %21, align 1
  %1364 = xor i32 %1355, %1350
  %1365 = xor i32 %1364, %1356
  %1366 = lshr i32 %1365, 4
  %1367 = trunc i32 %1366 to i8
  %1368 = and i8 %1367, 1
  store i8 %1368, i8* %26, align 1
  %1369 = icmp eq i32 %1356, 0
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %29, align 1
  %1371 = lshr i32 %1356, 31
  %1372 = trunc i32 %1371 to i8
  store i8 %1372, i8* %32, align 1
  %1373 = lshr i32 %1350, 31
  %1374 = lshr i32 %1355, 31
  %1375 = xor i32 %1374, %1373
  %1376 = xor i32 %1371, %1373
  %1377 = add nuw nsw i32 %1376, %1375
  %1378 = icmp eq i32 %1377, 2
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %38, align 1
  %1380 = icmp ne i8 %1372, 0
  %1381 = xor i1 %1380, %1378
  %.v172 = select i1 %1381, i64 15, i64 169
  %1382 = add i64 %1345, %.v172
  store i64 %1382, i64* %3, align 8
  br i1 %1381, label %block_401114, label %block_.L_4011ae

block_401114:                                     ; preds = %block_.L_401105
  store i64 1, i64* %RAX.i1202, align 8
  %1383 = add i64 %1346, -24
  %1384 = add i64 %1382, 9
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i64*
  %1386 = load i64, i64* %1385, align 8
  store i64 %1386, i64* %RCX.i1175, align 8
  %1387 = add i64 %1382, 15
  store i64 %1387, i64* %3, align 8
  %1388 = load i32, i32* %1349, align 4
  %1389 = sext i32 %1388 to i64
  %1390 = ashr i64 %1389, 4
  %1391 = lshr i64 %1390, 1
  %1392 = trunc i64 %1390 to i8
  %1393 = and i8 %1392, 1
  %1394 = trunc i64 %1391 to i32
  %1395 = and i64 %1391, 4294967295
  store i64 %1395, i64* %RDX.i1213, align 8
  store i8 %1393, i8* %14, align 1
  %1396 = and i32 %1394, 255
  %1397 = tail call i32 @llvm.ctpop.i32(i32 %1396)
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  store i8 %1400, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1401 = icmp eq i32 %1394, 0
  %1402 = zext i1 %1401 to i8
  store i8 %1402, i8* %29, align 1
  %1403 = lshr i64 %1390, 32
  %1404 = trunc i64 %1403 to i8
  %1405 = and i8 %1404, 1
  store i8 %1405, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext158 = shl i64 %1391, 32
  %1406 = ashr exact i64 %sext158, 32
  store i64 %1406, i64* %RSI.i1000, align 8
  %1407 = ashr exact i64 %sext158, 30
  %1408 = add i64 %1386, %1407
  %1409 = add i64 %1382, 24
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i32*
  %1411 = load i32, i32* %1410, align 4
  %1412 = zext i32 %1411 to i64
  store i64 %1412, i64* %RDX.i1213, align 8
  %1413 = add i64 %1382, 30
  store i64 %1413, i64* %3, align 8
  %1414 = load i32, i32* %1349, align 4
  %1415 = zext i32 %1414 to i64
  %1416 = and i64 %1415, 31
  %1417 = trunc i64 %1416 to i32
  store i64 %1416, i64* %RDI.i779, align 8
  store i8 0, i8* %14, align 1
  %1418 = tail call i32 @llvm.ctpop.i32(i32 %1417)
  %1419 = trunc i32 %1418 to i8
  %1420 = and i8 %1419, 1
  %1421 = xor i8 %1420, 1
  store i8 %1421, i8* %21, align 1
  %1422 = icmp eq i32 %1417, 0
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %1416, i64* %RCX.i1175, align 8
  %1424 = add i64 %1382, 37
  store i64 %1424, i64* %3, align 8
  %1425 = trunc i32 %1414 to i5
  switch i5 %1425, label %1426 [
    i5 0, label %routine_shll__cl___eax.exit738
    i5 1, label %1434
  ]

; <label>:1426:                                   ; preds = %block_401114
  %1427 = and i64 %1415, 31
  %1428 = add nuw nsw i64 %1427, 4294967295
  %1429 = and i64 %1428, 4294967295
  %1430 = shl i64 1, %1429
  %1431 = trunc i64 %1430 to i32
  %1432 = icmp slt i32 %1431, 0
  %1433 = shl i32 %1431, 1
  br label %1434

; <label>:1434:                                   ; preds = %block_401114, %1426
  %1435 = phi i1 [ %1432, %1426 ], [ false, %block_401114 ]
  %1436 = phi i32 [ %1433, %1426 ], [ 2, %block_401114 ]
  %1437 = zext i32 %1436 to i64
  store i64 %1437, i64* %RAX.i1202, align 8
  %1438 = zext i1 %1435 to i8
  store i8 %1438, i8* %14, align 1
  %1439 = and i32 %1436, 254
  %1440 = tail call i32 @llvm.ctpop.i32(i32 %1439)
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1444 = icmp eq i32 %1436, 0
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %29, align 1
  %1446 = lshr i32 %1436, 31
  %1447 = trunc i32 %1446 to i8
  store i8 %1447, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit738

routine_shll__cl___eax.exit738:                   ; preds = %1434, %block_401114
  %1448 = phi i32 [ %1436, %1434 ], [ 1, %block_401114 ]
  %1449 = and i32 %1448, %1411
  %1450 = zext i32 %1449 to i64
  store i64 %1450, i64* %RDX.i1213, align 8
  %1451 = and i32 %1449, 255
  %1452 = tail call i32 @llvm.ctpop.i32(i32 %1451)
  %1453 = trunc i32 %1452 to i8
  %1454 = and i8 %1453, 1
  %1455 = xor i8 %1454, 1
  %1456 = icmp eq i32 %1449, 0
  %1457 = zext i1 %1456 to i8
  %1458 = lshr i32 %1449, 31
  %1459 = trunc i32 %1458 to i8
  store i8 0, i8* %14, align 1
  store i8 %1455, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1457, i8* %29, align 1
  store i8 %1459, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v193 = select i1 %1456, i64 60, i64 48
  %1460 = add i64 %1382, %.v193
  store i64 %1460, i64* %3, align 8
  br i1 %1456, label %block_.L_401150, label %block_401144

block_401144:                                     ; preds = %routine_shll__cl___eax.exit738
  %1461 = add i64 %1460, 6
  store i64 %1461, i64* %3, align 8
  %1462 = load i32, i32* %1349, align 4
  %1463 = zext i32 %1462 to i64
  store i64 %1463, i64* %RAX.i1202, align 8
  %1464 = add i64 %1346, -2108
  %1465 = add i64 %1460, 12
  store i64 %1465, i64* %3, align 8
  %1466 = inttoptr i64 %1464 to i32*
  store i32 %1462, i32* %1466, align 4
  %.pre143 = load i64, i64* %RBP.i, align 8
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_401150

block_.L_401150:                                  ; preds = %block_401144, %routine_shll__cl___eax.exit738
  %1467 = phi i64 [ %.pre144, %block_401144 ], [ %1460, %routine_shll__cl___eax.exit738 ]
  %1468 = phi i64 [ %.pre143, %block_401144 ], [ %1346, %routine_shll__cl___eax.exit738 ]
  %1469 = add i64 %1468, -8
  %1470 = add i64 %1467, 4
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i64*
  %1472 = load i64, i64* %1471, align 8
  store i64 %1472, i64* %RAX.i1202, align 8
  %1473 = add i64 %1468, -2104
  %1474 = add i64 %1467, 11
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = sext i32 %1476 to i64
  store i64 %1477, i64* %RCX.i1175, align 8
  %1478 = shl nsw i64 %1477, 2
  %1479 = add i64 %1478, %1472
  %1480 = add i64 %1467, 14
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = zext i32 %1482 to i64
  store i64 %1483, i64* %RDX.i1213, align 8
  %1484 = add i64 %1468, -2100
  %1485 = add i64 %1467, 20
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = sub i32 %1482, %1487
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %RDX.i1213, align 8
  %1490 = icmp ult i32 %1482, %1487
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %14, align 1
  %1492 = and i32 %1488, 255
  %1493 = tail call i32 @llvm.ctpop.i32(i32 %1492)
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  %1496 = xor i8 %1495, 1
  store i8 %1496, i8* %21, align 1
  %1497 = xor i32 %1487, %1482
  %1498 = xor i32 %1497, %1488
  %1499 = lshr i32 %1498, 4
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  store i8 %1501, i8* %26, align 1
  %1502 = icmp eq i32 %1488, 0
  %1503 = zext i1 %1502 to i8
  store i8 %1503, i8* %29, align 1
  %1504 = lshr i32 %1488, 31
  %1505 = trunc i32 %1504 to i8
  store i8 %1505, i8* %32, align 1
  %1506 = lshr i32 %1482, 31
  %1507 = lshr i32 %1487, 31
  %1508 = xor i32 %1507, %1506
  %1509 = xor i32 %1504, %1506
  %1510 = add nuw nsw i32 %1509, %1508
  %1511 = icmp eq i32 %1510, 2
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %38, align 1
  %1513 = add i64 %1468, -2112
  %1514 = add i64 %1467, 26
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  store i32 %1488, i32* %1515, align 4
  %1516 = load i64, i64* %RBP.i, align 8
  %1517 = add i64 %1516, -2112
  %1518 = load i64, i64* %3, align 8
  %1519 = add i64 %1518, 7
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1517 to i32*
  %1521 = load i32, i32* %1520, align 4
  store i8 0, i8* %14, align 1
  %1522 = and i32 %1521, 255
  %1523 = tail call i32 @llvm.ctpop.i32(i32 %1522)
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  %1526 = xor i8 %1525, 1
  store i8 %1526, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1527 = icmp eq i32 %1521, 0
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %29, align 1
  %1529 = lshr i32 %1521, 31
  %1530 = trunc i32 %1529 to i8
  store i8 %1530, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1531 = icmp ne i8 %1530, 0
  %.v = select i1 %1531, i64 6, i64 21
  %1532 = add i64 %1519, %.v
  store i64 %1532, i64* %3, align 8
  br i1 %1531, label %block_401177, label %block_.L_401186

block_401177:                                     ; preds = %block_.L_401150
  %1533 = add i64 %1516, -28
  %1534 = add i64 %1532, 3
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RAX.i1202, align 8
  %1538 = add i64 %1532, 9
  store i64 %1538, i64* %3, align 8
  %1539 = load i32, i32* %1520, align 4
  %1540 = add i32 %1539, %1536
  %1541 = zext i32 %1540 to i64
  store i64 %1541, i64* %RAX.i1202, align 8
  %1542 = icmp ult i32 %1540, %1536
  %1543 = icmp ult i32 %1540, %1539
  %1544 = or i1 %1542, %1543
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %14, align 1
  %1546 = and i32 %1540, 255
  %1547 = tail call i32 @llvm.ctpop.i32(i32 %1546)
  %1548 = trunc i32 %1547 to i8
  %1549 = and i8 %1548, 1
  %1550 = xor i8 %1549, 1
  store i8 %1550, i8* %21, align 1
  %1551 = xor i32 %1539, %1536
  %1552 = xor i32 %1551, %1540
  %1553 = lshr i32 %1552, 4
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  store i8 %1555, i8* %26, align 1
  %1556 = icmp eq i32 %1540, 0
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %29, align 1
  %1558 = lshr i32 %1540, 31
  %1559 = trunc i32 %1558 to i8
  store i8 %1559, i8* %32, align 1
  %1560 = lshr i32 %1536, 31
  %1561 = lshr i32 %1539, 31
  %1562 = xor i32 %1558, %1560
  %1563 = xor i32 %1558, %1561
  %1564 = add nuw nsw i32 %1562, %1563
  %1565 = icmp eq i32 %1564, 2
  %1566 = zext i1 %1565 to i8
  store i8 %1566, i8* %38, align 1
  %1567 = add i64 %1532, 15
  store i64 %1567, i64* %3, align 8
  store i32 %1540, i32* %1520, align 4
  %.pre145 = load i64, i64* %RBP.i, align 8
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_401186

block_.L_401186:                                  ; preds = %block_.L_401150, %block_401177
  %1568 = phi i64 [ %1532, %block_.L_401150 ], [ %.pre146, %block_401177 ]
  %1569 = phi i64 [ %1516, %block_.L_401150 ], [ %.pre145, %block_401177 ]
  %1570 = add i64 %1569, -2108
  %1571 = add i64 %1568, 6
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i32*
  %1573 = load i32, i32* %1572, align 4
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RAX.i1202, align 8
  %1575 = add i64 %1569, -16
  %1576 = add i64 %1568, 10
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i64*
  %1578 = load i64, i64* %1577, align 8
  store i64 %1578, i64* %RCX.i1175, align 8
  %1579 = add i64 %1569, -2112
  %1580 = add i64 %1568, 17
  store i64 %1580, i64* %3, align 8
  %1581 = inttoptr i64 %1579 to i32*
  %1582 = load i32, i32* %1581, align 4
  %1583 = sext i32 %1582 to i64
  store i64 %1583, i64* %RDX.i1213, align 8
  %1584 = shl nsw i64 %1583, 2
  %1585 = add i64 %1584, %1578
  %1586 = add i64 %1568, 20
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i32*
  store i32 %1573, i32* %1587, align 4
  %1588 = load i64, i64* %RBP.i, align 8
  %1589 = add i64 %1588, -2104
  %1590 = load i64, i64* %3, align 8
  %1591 = add i64 %1590, 6
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1589 to i32*
  %1593 = load i32, i32* %1592, align 4
  %1594 = add i32 %1593, 1
  %1595 = zext i32 %1594 to i64
  store i64 %1595, i64* %RAX.i1202, align 8
  %1596 = icmp eq i32 %1593, -1
  %1597 = icmp eq i32 %1594, 0
  %1598 = or i1 %1596, %1597
  %1599 = zext i1 %1598 to i8
  store i8 %1599, i8* %14, align 1
  %1600 = and i32 %1594, 255
  %1601 = tail call i32 @llvm.ctpop.i32(i32 %1600)
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  %1604 = xor i8 %1603, 1
  store i8 %1604, i8* %21, align 1
  %1605 = xor i32 %1594, %1593
  %1606 = lshr i32 %1605, 4
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  store i8 %1608, i8* %26, align 1
  %1609 = zext i1 %1597 to i8
  store i8 %1609, i8* %29, align 1
  %1610 = lshr i32 %1594, 31
  %1611 = trunc i32 %1610 to i8
  store i8 %1611, i8* %32, align 1
  %1612 = lshr i32 %1593, 31
  %1613 = xor i32 %1610, %1612
  %1614 = add nuw nsw i32 %1613, %1610
  %1615 = icmp eq i32 %1614, 2
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %38, align 1
  %1617 = add i64 %1590, 15
  store i64 %1617, i64* %3, align 8
  store i32 %1594, i32* %1592, align 4
  %1618 = load i64, i64* %3, align 8
  %1619 = add i64 %1618, -164
  store i64 %1619, i64* %3, align 8
  br label %block_.L_401105

block_.L_4011ae:                                  ; preds = %block_.L_401105
  %1620 = add i64 %1346, -2132
  %1621 = add i64 %1382, 10
  store i64 %1621, i64* %3, align 8
  %1622 = inttoptr i64 %1620 to i32*
  store i32 0, i32* %1622, align 4
  %1623 = load i64, i64* %RBP.i, align 8
  %1624 = add i64 %1623, -2120
  %1625 = load i64, i64* %3, align 8
  %1626 = add i64 %1625, 10
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1624 to i32*
  store i32 -1, i32* %1627, align 4
  %.pre122 = load i64, i64* %RBP.i, align 8
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_4011c2

block_.L_4011c2:                                  ; preds = %block_.L_401583, %block_.L_4011ae
  %1628 = phi i64 [ %.pre123, %block_.L_4011ae ], [ %3070, %block_.L_401583 ]
  %1629 = phi i64 [ %.pre122, %block_.L_4011ae ], [ %3069, %block_.L_401583 ]
  %1630 = add i64 %1629, -2120
  %1631 = add i64 %1628, 6
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i32*
  %1633 = load i32, i32* %1632, align 4
  %1634 = add i32 %1633, 1
  %1635 = zext i32 %1634 to i64
  store i64 %1635, i64* %RAX.i1202, align 8
  %1636 = icmp eq i32 %1633, -1
  %1637 = icmp eq i32 %1634, 0
  %1638 = or i1 %1636, %1637
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %14, align 1
  %1640 = and i32 %1634, 255
  %1641 = tail call i32 @llvm.ctpop.i32(i32 %1640)
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  store i8 %1644, i8* %21, align 1
  %1645 = xor i32 %1634, %1633
  %1646 = lshr i32 %1645, 4
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  store i8 %1648, i8* %26, align 1
  %1649 = zext i1 %1637 to i8
  store i8 %1649, i8* %29, align 1
  %1650 = lshr i32 %1634, 31
  %1651 = trunc i32 %1650 to i8
  store i8 %1651, i8* %32, align 1
  %1652 = lshr i32 %1633, 31
  %1653 = xor i32 %1650, %1652
  %1654 = add nuw nsw i32 %1653, %1650
  %1655 = icmp eq i32 %1654, 2
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %38, align 1
  %1657 = add i64 %1629, -2112
  %1658 = add i64 %1628, 15
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  store i32 %1634, i32* %1659, align 4
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_4011d1

block_.L_4011d1:                                  ; preds = %block_.L_401242, %block_.L_4011c2
  %1660 = phi i64 [ %1877, %block_.L_401242 ], [ %.pre124, %block_.L_4011c2 ]
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %CL.i943, align 1
  store i64 1, i64* %RAX.i1202, align 8
  %1661 = load i64, i64* %RBP.i, align 8
  %1662 = add i64 %1661, -24
  %1663 = add i64 %1660, 13
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i64*
  %1665 = load i64, i64* %1664, align 8
  store i64 %1665, i64* %RDX.i1213, align 8
  %1666 = add i64 %1661, -2112
  %1667 = add i64 %1660, 19
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = sext i32 %1669 to i64
  %1671 = ashr i64 %1670, 4
  %1672 = lshr i64 %1671, 1
  %1673 = trunc i64 %1671 to i8
  %1674 = and i8 %1673, 1
  %1675 = trunc i64 %1672 to i32
  %1676 = and i64 %1672, 4294967295
  store i64 %1676, i64* %RSI.i1000, align 8
  store i8 %1674, i8* %14, align 1
  %1677 = and i32 %1675, 255
  %1678 = tail call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1682 = icmp eq i32 %1675, 0
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %29, align 1
  %1684 = lshr i64 %1671, 32
  %1685 = trunc i64 %1684 to i8
  %1686 = and i8 %1685, 1
  store i8 %1686, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext = shl i64 %1672, 32
  %1687 = ashr exact i64 %sext, 32
  store i64 %1687, i64* %RDI.i779, align 8
  %1688 = ashr exact i64 %sext, 30
  %1689 = add i64 %1665, %1688
  %1690 = add i64 %1660, 28
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1689 to i32*
  %1692 = load i32, i32* %1691, align 4
  %1693 = zext i32 %1692 to i64
  store i64 %1693, i64* %RSI.i1000, align 8
  %1694 = add i64 %1660, 35
  store i64 %1694, i64* %3, align 8
  %1695 = load i32, i32* %1668, align 4
  %1696 = and i32 %1695, 31
  %1697 = zext i32 %1696 to i64
  store i64 %1697, i64* %995, align 8
  store i8 0, i8* %14, align 1
  %1698 = tail call i32 @llvm.ctpop.i32(i32 %1696)
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  %1701 = xor i8 %1700, 1
  store i8 %1701, i8* %21, align 1
  %1702 = icmp eq i32 %1696, 0
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1704 = add i64 %1661, -2157
  %1705 = add i64 %1660, 45
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i8*
  store i8 0, i8* %1706, align 1
  %1707 = load i32, i32* %R8D.i1232, align 4
  %1708 = zext i32 %1707 to i64
  %1709 = load i64, i64* %3, align 8
  store i64 %1708, i64* %RCX.i1175, align 8
  %1710 = load i64, i64* %RAX.i1202, align 8
  %1711 = add i64 %1709, 5
  store i64 %1711, i64* %3, align 8
  %1712 = trunc i32 %1707 to i5
  %1713 = trunc i64 %1710 to i32
  switch i5 %1712, label %1719 [
    i5 0, label %routine_shll__cl___eax.exit626
    i5 1, label %1714
  ]

; <label>:1714:                                   ; preds = %block_.L_4011d1
  %1715 = shl i32 %1713, 1
  %1716 = icmp slt i32 %1713, 0
  %1717 = icmp slt i32 %1715, 0
  %1718 = xor i1 %1716, %1717
  br label %1729

; <label>:1719:                                   ; preds = %block_.L_4011d1
  %1720 = and i32 %1707, 31
  %1721 = zext i32 %1720 to i64
  %1722 = add nuw nsw i64 %1721, 4294967295
  %1723 = and i64 %1710, 4294967295
  %1724 = and i64 %1722, 4294967295
  %1725 = shl i64 %1723, %1724
  %1726 = trunc i64 %1725 to i32
  %1727 = icmp slt i32 %1726, 0
  %1728 = shl i32 %1726, 1
  br label %1729

; <label>:1729:                                   ; preds = %1719, %1714
  %1730 = phi i1 [ %1716, %1714 ], [ %1727, %1719 ]
  %1731 = phi i1 [ %1718, %1714 ], [ false, %1719 ]
  %1732 = phi i32 [ %1715, %1714 ], [ %1728, %1719 ]
  %1733 = zext i32 %1732 to i64
  store i64 %1733, i64* %RAX.i1202, align 8
  %1734 = zext i1 %1730 to i8
  store i8 %1734, i8* %14, align 1
  %1735 = and i32 %1732, 254
  %1736 = tail call i32 @llvm.ctpop.i32(i32 %1735)
  %1737 = trunc i32 %1736 to i8
  %1738 = and i8 %1737, 1
  %1739 = xor i8 %1738, 1
  store i8 %1739, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1740 = icmp eq i32 %1732, 0
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %29, align 1
  %1742 = lshr i32 %1732, 31
  %1743 = trunc i32 %1742 to i8
  store i8 %1743, i8* %32, align 1
  %1744 = zext i1 %1731 to i8
  store i8 %1744, i8* %38, align 1
  br label %routine_shll__cl___eax.exit626

routine_shll__cl___eax.exit626:                   ; preds = %1729, %block_.L_4011d1
  %1745 = phi i32 [ %1732, %1729 ], [ %1713, %block_.L_4011d1 ]
  %1746 = load i64, i64* %RSI.i1000, align 8
  %1747 = zext i32 %1745 to i64
  %1748 = and i64 %1747, %1746
  %1749 = trunc i64 %1748 to i32
  store i64 %1748, i64* %RSI.i1000, align 8
  %1750 = and i32 %1749, 255
  %1751 = tail call i32 @llvm.ctpop.i32(i32 %1750)
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  %1754 = xor i8 %1753, 1
  %1755 = icmp eq i32 %1749, 0
  %1756 = zext i1 %1755 to i8
  %1757 = lshr i32 %1749, 31
  %1758 = trunc i32 %1757 to i8
  store i8 0, i8* %14, align 1
  store i8 %1754, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1756, i8* %29, align 1
  store i8 %1758, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1759 = load i64, i64* %RBP.i, align 8
  %1760 = add i64 %1759, -2157
  %1761 = add i64 %1709, 16
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i8*
  %1763 = load i8, i8* %1762, align 1
  store i8 %1763, i8* %CL.i943, align 1
  %1764 = add i64 %1759, -2158
  %1765 = add i64 %1709, 22
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i8*
  store i8 %1763, i8* %1766, align 1
  %1767 = load i64, i64* %3, align 8
  %1768 = load i8, i8* %29, align 1
  %1769 = icmp ne i8 %1768, 0
  %.v238 = select i1 %1769, i64 27, i64 6
  %1770 = add i64 %1767, %.v238
  store i64 %1770, i64* %3, align 8
  %cmpBr_401214 = icmp eq i8 %1768, 1
  br i1 %cmpBr_401214, label %block_.L_40122f, label %block_40121a

block_40121a:                                     ; preds = %routine_shll__cl___eax.exit626
  %1771 = load i64, i64* %RBP.i, align 8
  %1772 = add i64 %1771, -2112
  %1773 = add i64 %1770, 6
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to i32*
  %1775 = load i32, i32* %1774, align 4
  %1776 = and i32 %1775, 31
  %1777 = zext i32 %1776 to i64
  store i64 %1777, i64* %RAX.i1202, align 8
  %1778 = icmp eq i32 %1776, 0
  %1779 = zext i1 %1778 to i8
  store i8 0, i8* %14, align 1
  %1780 = tail call i32 @llvm.ctpop.i32(i32 %1776)
  %1781 = trunc i32 %1780 to i8
  %1782 = and i8 %1781, 1
  %1783 = xor i8 %1782, 1
  store i8 %1783, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1779, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1784 = xor i1 %1778, true
  %1785 = zext i1 %1784 to i8
  store i8 %1785, i8* %CL.i943, align 1
  %1786 = add i64 %1771, -2158
  %1787 = add i64 %1770, 21
  store i64 %1787, i64* %3, align 8
  %1788 = inttoptr i64 %1786 to i8*
  store i8 %1785, i8* %1788, align 1
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_40122f

block_.L_40122f:                                  ; preds = %block_40121a, %routine_shll__cl___eax.exit626
  %1789 = phi i64 [ %.pre125, %block_40121a ], [ %1770, %routine_shll__cl___eax.exit626 ]
  %1790 = load i64, i64* %RBP.i, align 8
  %1791 = add i64 %1790, -2158
  %1792 = add i64 %1789, 6
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i8*
  %1794 = load i8, i8* %1793, align 1
  store i8 %1794, i8* %AL.i656, align 1
  %1795 = and i8 %1794, 1
  store i8 0, i8* %14, align 1
  %1796 = zext i8 %1795 to i32
  %1797 = tail call i32 @llvm.ctpop.i32(i32 %1796)
  %1798 = trunc i32 %1797 to i8
  %1799 = xor i8 %1798, 1
  store i8 %1799, i8* %21, align 1
  %1800 = xor i8 %1795, 1
  store i8 %1800, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1801 = icmp eq i8 %1800, 0
  %.v173 = select i1 %1801, i64 19, i64 14
  %1802 = add i64 %1789, %.v173
  store i64 %1802, i64* %3, align 8
  br i1 %1801, label %block_.L_401242, label %block_40123d

block_40123d:                                     ; preds = %block_.L_40122f
  store i64 1, i64* %RAX.i1202, align 8
  %1803 = add i64 %1790, -24
  %1804 = add i64 %1802, 34
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1803 to i64*
  %1806 = load i64, i64* %1805, align 8
  store i64 %1806, i64* %RCX.i1175, align 8
  %1807 = add i64 %1790, -2112
  %1808 = add i64 %1802, 40
  store i64 %1808, i64* %3, align 8
  %1809 = inttoptr i64 %1807 to i32*
  %1810 = load i32, i32* %1809, align 4
  %1811 = sext i32 %1810 to i64
  %1812 = ashr i64 %1811, 4
  %1813 = lshr i64 %1812, 1
  %1814 = trunc i64 %1812 to i8
  %1815 = and i8 %1814, 1
  %1816 = trunc i64 %1813 to i32
  %1817 = and i64 %1813, 4294967295
  store i64 %1817, i64* %RDX.i1213, align 8
  store i8 %1815, i8* %14, align 1
  %1818 = and i32 %1816, 255
  %1819 = tail call i32 @llvm.ctpop.i32(i32 %1818)
  %1820 = trunc i32 %1819 to i8
  %1821 = and i8 %1820, 1
  %1822 = xor i8 %1821, 1
  store i8 %1822, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1823 = icmp eq i32 %1816, 0
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %29, align 1
  %1825 = lshr i64 %1812, 32
  %1826 = trunc i64 %1825 to i8
  %1827 = and i8 %1826, 1
  store i8 %1827, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext149 = shl i64 %1813, 32
  %1828 = ashr exact i64 %sext149, 32
  store i64 %1828, i64* %RSI.i1000, align 8
  %1829 = ashr exact i64 %sext149, 30
  %1830 = add i64 %1806, %1829
  %1831 = add i64 %1802, 49
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = zext i32 %1833 to i64
  store i64 %1834, i64* %RDX.i1213, align 8
  %1835 = add i64 %1802, 55
  store i64 %1835, i64* %3, align 8
  %1836 = load i32, i32* %1809, align 4
  %1837 = zext i32 %1836 to i64
  %1838 = and i64 %1837, 31
  %1839 = trunc i64 %1838 to i32
  store i64 %1838, i64* %RDI.i779, align 8
  store i8 0, i8* %14, align 1
  %1840 = tail call i32 @llvm.ctpop.i32(i32 %1839)
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  %1843 = xor i8 %1842, 1
  store i8 %1843, i8* %21, align 1
  %1844 = icmp eq i32 %1839, 0
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %1838, i64* %RCX.i1175, align 8
  %1846 = add i64 %1802, 62
  store i64 %1846, i64* %3, align 8
  %1847 = trunc i32 %1836 to i5
  switch i5 %1847, label %1878 [
    i5 0, label %routine_shll__cl___eax.exit557
    i5 1, label %1886
  ]

block_.L_401242:                                  ; preds = %block_.L_40122f
  %1848 = add i64 %1790, -2112
  %1849 = add i64 %1802, 6
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = add i32 %1851, 1
  %1853 = zext i32 %1852 to i64
  store i64 %1853, i64* %RAX.i1202, align 8
  %1854 = icmp eq i32 %1851, -1
  %1855 = icmp eq i32 %1852, 0
  %1856 = or i1 %1854, %1855
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %14, align 1
  %1858 = and i32 %1852, 255
  %1859 = tail call i32 @llvm.ctpop.i32(i32 %1858)
  %1860 = trunc i32 %1859 to i8
  %1861 = and i8 %1860, 1
  %1862 = xor i8 %1861, 1
  store i8 %1862, i8* %21, align 1
  %1863 = xor i32 %1852, %1851
  %1864 = lshr i32 %1863, 4
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  store i8 %1866, i8* %26, align 1
  %1867 = zext i1 %1855 to i8
  store i8 %1867, i8* %29, align 1
  %1868 = lshr i32 %1852, 31
  %1869 = trunc i32 %1868 to i8
  store i8 %1869, i8* %32, align 1
  %1870 = lshr i32 %1851, 31
  %1871 = xor i32 %1868, %1870
  %1872 = add nuw nsw i32 %1871, %1868
  %1873 = icmp eq i32 %1872, 2
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %38, align 1
  %1875 = add i64 %1802, 15
  store i64 %1875, i64* %3, align 8
  store i32 %1852, i32* %1850, align 4
  %1876 = load i64, i64* %3, align 8
  %1877 = add i64 %1876, -128
  store i64 %1877, i64* %3, align 8
  br label %block_.L_4011d1

; <label>:1878:                                   ; preds = %block_40123d
  %1879 = and i64 %1837, 31
  %1880 = add nuw nsw i64 %1879, 4294967295
  %1881 = and i64 %1880, 4294967295
  %1882 = shl i64 1, %1881
  %1883 = trunc i64 %1882 to i32
  %1884 = icmp slt i32 %1883, 0
  %1885 = shl i32 %1883, 1
  br label %1886

; <label>:1886:                                   ; preds = %block_40123d, %1878
  %1887 = phi i1 [ %1884, %1878 ], [ false, %block_40123d ]
  %1888 = phi i32 [ %1885, %1878 ], [ 2, %block_40123d ]
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %RAX.i1202, align 8
  %1890 = zext i1 %1887 to i8
  store i8 %1890, i8* %14, align 1
  %1891 = and i32 %1888, 254
  %1892 = tail call i32 @llvm.ctpop.i32(i32 %1891)
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  store i8 %1895, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1896 = icmp eq i32 %1888, 0
  %1897 = zext i1 %1896 to i8
  store i8 %1897, i8* %29, align 1
  %1898 = lshr i32 %1888, 31
  %1899 = trunc i32 %1898 to i8
  store i8 %1899, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit557

routine_shll__cl___eax.exit557:                   ; preds = %1886, %block_40123d
  %1900 = phi i32 [ %1888, %1886 ], [ 1, %block_40123d ]
  %1901 = and i32 %1900, %1833
  %1902 = zext i32 %1901 to i64
  store i64 %1902, i64* %RDX.i1213, align 8
  %1903 = and i32 %1901, 255
  %1904 = tail call i32 @llvm.ctpop.i32(i32 %1903)
  %1905 = trunc i32 %1904 to i8
  %1906 = and i8 %1905, 1
  %1907 = xor i8 %1906, 1
  %1908 = icmp eq i32 %1901, 0
  %1909 = zext i1 %1908 to i8
  %1910 = lshr i32 %1901, 31
  %1911 = trunc i32 %1910 to i8
  store i8 0, i8* %14, align 1
  store i8 %1907, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1909, i8* %29, align 1
  store i8 %1911, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v174 = select i1 %1908, i64 202, i64 73
  %1912 = add i64 %1802, %.v174
  store i64 %1912, i64* %3, align 8
  br i1 %1908, label %block_.L_401307, label %block_401286

block_401286:                                     ; preds = %routine_shll__cl___eax.exit557
  %1913 = add i64 %1912, 5
  br label %block_.L_40128b

block_.L_40128b:                                  ; preds = %block_4012a5, %block_401286
  %1914 = phi i64 [ %1790, %block_401286 ], [ %.pre126, %block_4012a5 ]
  %storemerge = phi i64 [ %1913, %block_401286 ], [ %1996, %block_4012a5 ]
  %1915 = add i64 %1914, -24
  %1916 = add i64 %storemerge, 4
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i64*
  %1918 = load i64, i64* %1917, align 8
  store i64 %1918, i64* %RAX.i1202, align 8
  %1919 = add i64 %1914, -2112
  %1920 = add i64 %storemerge, 10
  store i64 %1920, i64* %3, align 8
  %1921 = inttoptr i64 %1919 to i32*
  %1922 = load i32, i32* %1921, align 4
  %1923 = sext i32 %1922 to i64
  %1924 = ashr i64 %1923, 4
  %1925 = lshr i64 %1924, 1
  %1926 = trunc i64 %1924 to i8
  %1927 = and i8 %1926, 1
  %1928 = trunc i64 %1925 to i32
  %1929 = and i64 %1925, 4294967295
  store i64 %1929, i64* %RCX.i1175, align 8
  store i8 %1927, i8* %14, align 1
  %1930 = and i32 %1928, 255
  %1931 = tail call i32 @llvm.ctpop.i32(i32 %1930)
  %1932 = trunc i32 %1931 to i8
  %1933 = and i8 %1932, 1
  %1934 = xor i8 %1933, 1
  store i8 %1934, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1935 = icmp eq i32 %1928, 0
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %29, align 1
  %1937 = lshr i64 %1924, 32
  %1938 = trunc i64 %1937 to i8
  %1939 = and i8 %1938, 1
  store i8 %1939, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext150 = shl i64 %1925, 32
  %1940 = ashr exact i64 %sext150, 32
  store i64 %1940, i64* %RDX.i1213, align 8
  %1941 = ashr exact i64 %sext150, 30
  %1942 = add i64 %1918, %1941
  %1943 = add i64 %storemerge, 20
  store i64 %1943, i64* %3, align 8
  %1944 = inttoptr i64 %1942 to i32*
  %1945 = load i32, i32* %1944, align 4
  %1946 = add i32 %1945, 1
  %1947 = icmp ne i32 %1945, -1
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %14, align 1
  %1949 = and i32 %1946, 255
  %1950 = tail call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  store i8 %1953, i8* %21, align 1
  %1954 = xor i32 %1945, 16
  %1955 = xor i32 %1954, %1946
  %1956 = lshr i32 %1955, 4
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  store i8 %1958, i8* %26, align 1
  %1959 = icmp eq i32 %1946, 0
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %29, align 1
  %1961 = lshr i32 %1946, 31
  %1962 = trunc i32 %1961 to i8
  store i8 %1962, i8* %32, align 1
  %1963 = lshr i32 %1945, 31
  %1964 = xor i32 %1963, 1
  %1965 = xor i32 %1961, %1963
  %1966 = add nuw nsw i32 %1965, %1964
  %1967 = icmp eq i32 %1966, 2
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %38, align 1
  %.v175 = select i1 %1959, i64 26, i64 46
  %1969 = add i64 %storemerge, %.v175
  store i64 %1969, i64* %3, align 8
  br i1 %1959, label %block_4012a5, label %block_.L_4012b9

block_4012a5:                                     ; preds = %block_.L_40128b
  %1970 = add i64 %1969, 6
  store i64 %1970, i64* %3, align 8
  %1971 = load i32, i32* %1921, align 4
  %1972 = add i32 %1971, 32
  %1973 = zext i32 %1972 to i64
  store i64 %1973, i64* %RAX.i1202, align 8
  %1974 = icmp ugt i32 %1971, -33
  %1975 = zext i1 %1974 to i8
  store i8 %1975, i8* %14, align 1
  %1976 = and i32 %1972, 255
  %1977 = tail call i32 @llvm.ctpop.i32(i32 %1976)
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = xor i8 %1979, 1
  store i8 %1980, i8* %21, align 1
  %1981 = xor i32 %1972, %1971
  %1982 = lshr i32 %1981, 4
  %1983 = trunc i32 %1982 to i8
  %1984 = and i8 %1983, 1
  store i8 %1984, i8* %26, align 1
  %1985 = icmp eq i32 %1972, 0
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %29, align 1
  %1987 = lshr i32 %1972, 31
  %1988 = trunc i32 %1987 to i8
  store i8 %1988, i8* %32, align 1
  %1989 = lshr i32 %1971, 31
  %1990 = xor i32 %1987, %1989
  %1991 = add nuw nsw i32 %1990, %1987
  %1992 = icmp eq i32 %1991, 2
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %38, align 1
  %1994 = add i64 %1969, 15
  store i64 %1994, i64* %3, align 8
  store i32 %1972, i32* %1921, align 4
  %1995 = load i64, i64* %3, align 8
  %1996 = add i64 %1995, -41
  %1997 = add i64 %1995, 5
  store i64 %1997, i64* %3, align 8
  %.pre126 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40128b

block_.L_4012b9:                                  ; preds = %block_.L_40128b
  %1998 = add i64 %1969, 5
  br label %block_.L_4012be

block_.L_4012be:                                  ; preds = %block_4012ee, %block_.L_4012b9
  %1999 = phi i64 [ %1914, %block_.L_4012b9 ], [ %.pre127, %block_4012ee ]
  %storemerge38 = phi i64 [ %1998, %block_.L_4012b9 ], [ %2107, %block_4012ee ]
  store i64 1, i64* %RAX.i1202, align 8
  %2000 = add i64 %1999, -24
  %2001 = add i64 %storemerge38, 9
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i64*
  %2003 = load i64, i64* %2002, align 8
  store i64 %2003, i64* %RCX.i1175, align 8
  %2004 = add i64 %1999, -2112
  %2005 = add i64 %storemerge38, 15
  store i64 %2005, i64* %3, align 8
  %2006 = inttoptr i64 %2004 to i32*
  %2007 = load i32, i32* %2006, align 4
  %2008 = sext i32 %2007 to i64
  %2009 = ashr i64 %2008, 4
  %2010 = lshr i64 %2009, 1
  %2011 = trunc i64 %2009 to i8
  %2012 = and i8 %2011, 1
  %2013 = trunc i64 %2010 to i32
  %2014 = and i64 %2010, 4294967295
  store i64 %2014, i64* %RDX.i1213, align 8
  store i8 %2012, i8* %14, align 1
  %2015 = and i32 %2013, 255
  %2016 = tail call i32 @llvm.ctpop.i32(i32 %2015)
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  %2019 = xor i8 %2018, 1
  store i8 %2019, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2020 = icmp eq i32 %2013, 0
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %29, align 1
  %2022 = lshr i64 %2009, 32
  %2023 = trunc i64 %2022 to i8
  %2024 = and i8 %2023, 1
  store i8 %2024, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext151 = shl i64 %2010, 32
  %2025 = ashr exact i64 %sext151, 32
  store i64 %2025, i64* %RSI.i1000, align 8
  %2026 = ashr exact i64 %sext151, 30
  %2027 = add i64 %2003, %2026
  %2028 = add i64 %storemerge38, 24
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2027 to i32*
  %2030 = load i32, i32* %2029, align 4
  %2031 = zext i32 %2030 to i64
  store i64 %2031, i64* %RDX.i1213, align 8
  %2032 = add i64 %storemerge38, 30
  store i64 %2032, i64* %3, align 8
  %2033 = load i32, i32* %2006, align 4
  %2034 = zext i32 %2033 to i64
  %2035 = and i64 %2034, 31
  %2036 = trunc i64 %2035 to i32
  store i64 %2035, i64* %RDI.i779, align 8
  store i8 0, i8* %14, align 1
  %2037 = tail call i32 @llvm.ctpop.i32(i32 %2036)
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  %2040 = xor i8 %2039, 1
  store i8 %2040, i8* %21, align 1
  %2041 = icmp eq i32 %2036, 0
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %2035, i64* %RCX.i1175, align 8
  %2043 = add i64 %storemerge38, 37
  store i64 %2043, i64* %3, align 8
  %2044 = trunc i32 %2033 to i5
  switch i5 %2044, label %2045 [
    i5 0, label %routine_shll__cl___eax.exit496
    i5 1, label %2053
  ]

; <label>:2045:                                   ; preds = %block_.L_4012be
  %2046 = and i64 %2034, 31
  %2047 = add nuw nsw i64 %2046, 4294967295
  %2048 = and i64 %2047, 4294967295
  %2049 = shl i64 1, %2048
  %2050 = trunc i64 %2049 to i32
  %2051 = icmp slt i32 %2050, 0
  %2052 = shl i32 %2050, 1
  br label %2053

; <label>:2053:                                   ; preds = %block_.L_4012be, %2045
  %2054 = phi i1 [ %2051, %2045 ], [ false, %block_.L_4012be ]
  %2055 = phi i32 [ %2052, %2045 ], [ 2, %block_.L_4012be ]
  %2056 = zext i32 %2055 to i64
  store i64 %2056, i64* %RAX.i1202, align 8
  %2057 = zext i1 %2054 to i8
  store i8 %2057, i8* %14, align 1
  %2058 = and i32 %2055, 254
  %2059 = tail call i32 @llvm.ctpop.i32(i32 %2058)
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = xor i8 %2061, 1
  store i8 %2062, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2063 = icmp eq i32 %2055, 0
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %29, align 1
  %2065 = lshr i32 %2055, 31
  %2066 = trunc i32 %2065 to i8
  store i8 %2066, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit496

routine_shll__cl___eax.exit496:                   ; preds = %2053, %block_.L_4012be
  %2067 = phi i32 [ %2055, %2053 ], [ 1, %block_.L_4012be ]
  %2068 = and i32 %2067, %2030
  %2069 = zext i32 %2068 to i64
  store i64 %2069, i64* %RDX.i1213, align 8
  %2070 = and i32 %2068, 255
  %2071 = tail call i32 @llvm.ctpop.i32(i32 %2070)
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = xor i8 %2073, 1
  %2075 = icmp eq i32 %2068, 0
  %2076 = zext i1 %2075 to i8
  %2077 = lshr i32 %2068, 31
  %2078 = trunc i32 %2077 to i8
  store i8 0, i8* %14, align 1
  store i8 %2074, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %2076, i8* %29, align 1
  store i8 %2078, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v176 = select i1 %2075, i64 68, i64 48
  %2079 = add i64 %storemerge38, %.v176
  store i64 %2079, i64* %3, align 8
  br i1 %2075, label %block_.L_401302, label %block_4012ee

block_4012ee:                                     ; preds = %routine_shll__cl___eax.exit496
  %2080 = add i64 %2079, 6
  store i64 %2080, i64* %3, align 8
  %2081 = load i32, i32* %2006, align 4
  %2082 = add i32 %2081, 1
  %2083 = zext i32 %2082 to i64
  store i64 %2083, i64* %RAX.i1202, align 8
  %2084 = icmp eq i32 %2081, -1
  %2085 = icmp eq i32 %2082, 0
  %2086 = or i1 %2084, %2085
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %14, align 1
  %2088 = and i32 %2082, 255
  %2089 = tail call i32 @llvm.ctpop.i32(i32 %2088)
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  %2092 = xor i8 %2091, 1
  store i8 %2092, i8* %21, align 1
  %2093 = xor i32 %2082, %2081
  %2094 = lshr i32 %2093, 4
  %2095 = trunc i32 %2094 to i8
  %2096 = and i8 %2095, 1
  store i8 %2096, i8* %26, align 1
  %2097 = zext i1 %2085 to i8
  store i8 %2097, i8* %29, align 1
  %2098 = lshr i32 %2082, 31
  %2099 = trunc i32 %2098 to i8
  store i8 %2099, i8* %32, align 1
  %2100 = lshr i32 %2081, 31
  %2101 = xor i32 %2098, %2100
  %2102 = add nuw nsw i32 %2101, %2098
  %2103 = icmp eq i32 %2102, 2
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %38, align 1
  %2105 = add i64 %2079, 15
  store i64 %2105, i64* %3, align 8
  store i32 %2082, i32* %2006, align 4
  %2106 = load i64, i64* %3, align 8
  %2107 = add i64 %2106, -63
  %2108 = add i64 %2106, 5
  store i64 %2108, i64* %3, align 8
  %.pre127 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4012be

block_.L_401302:                                  ; preds = %routine_shll__cl___eax.exit496
  %2109 = add i64 %2079, 5
  store i64 %2109, i64* %3, align 8
  br label %block_.L_401307

block_.L_401307:                                  ; preds = %block_.L_401302, %routine_shll__cl___eax.exit557
  %2110 = phi i64 [ %2109, %block_.L_401302 ], [ %1912, %routine_shll__cl___eax.exit557 ]
  %2111 = phi i64 [ %1999, %block_.L_401302 ], [ %1790, %routine_shll__cl___eax.exit557 ]
  %2112 = add i64 %2111, -2112
  %2113 = add i64 %2110, 6
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i32*
  %2115 = load i32, i32* %2114, align 4
  %2116 = add i32 %2115, -1
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %RAX.i1202, align 8
  %2118 = icmp eq i32 %2115, 0
  %2119 = zext i1 %2118 to i8
  store i8 %2119, i8* %14, align 1
  %2120 = and i32 %2116, 255
  %2121 = tail call i32 @llvm.ctpop.i32(i32 %2120)
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  %2124 = xor i8 %2123, 1
  store i8 %2124, i8* %21, align 1
  %2125 = xor i32 %2116, %2115
  %2126 = lshr i32 %2125, 4
  %2127 = trunc i32 %2126 to i8
  %2128 = and i8 %2127, 1
  store i8 %2128, i8* %26, align 1
  %2129 = icmp eq i32 %2116, 0
  %2130 = zext i1 %2129 to i8
  store i8 %2130, i8* %29, align 1
  %2131 = lshr i32 %2116, 31
  %2132 = trunc i32 %2131 to i8
  store i8 %2132, i8* %32, align 1
  %2133 = lshr i32 %2115, 31
  %2134 = xor i32 %2131, %2133
  %2135 = add nuw nsw i32 %2134, %2133
  %2136 = icmp eq i32 %2135, 2
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %38, align 1
  %2138 = add i64 %2111, -2116
  %2139 = add i64 %2110, 15
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i32*
  store i32 %2116, i32* %2140, align 4
  %2141 = load i64, i64* %RBP.i, align 8
  %2142 = add i64 %2141, -2116
  %2143 = load i64, i64* %3, align 8
  %2144 = add i64 %2143, 6
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2142 to i32*
  %2146 = load i32, i32* %2145, align 4
  %2147 = zext i32 %2146 to i64
  store i64 %2147, i64* %RAX.i1202, align 8
  %2148 = add i64 %2141, -28
  %2149 = add i64 %2143, 9
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2148 to i32*
  %2151 = load i32, i32* %2150, align 4
  %2152 = sub i32 %2146, %2151
  %2153 = icmp ult i32 %2146, %2151
  %2154 = zext i1 %2153 to i8
  store i8 %2154, i8* %14, align 1
  %2155 = and i32 %2152, 255
  %2156 = tail call i32 @llvm.ctpop.i32(i32 %2155)
  %2157 = trunc i32 %2156 to i8
  %2158 = and i8 %2157, 1
  %2159 = xor i8 %2158, 1
  store i8 %2159, i8* %21, align 1
  %2160 = xor i32 %2151, %2146
  %2161 = xor i32 %2160, %2152
  %2162 = lshr i32 %2161, 4
  %2163 = trunc i32 %2162 to i8
  %2164 = and i8 %2163, 1
  store i8 %2164, i8* %26, align 1
  %2165 = icmp eq i32 %2152, 0
  %2166 = zext i1 %2165 to i8
  store i8 %2166, i8* %29, align 1
  %2167 = lshr i32 %2152, 31
  %2168 = trunc i32 %2167 to i8
  store i8 %2168, i8* %32, align 1
  %2169 = lshr i32 %2146, 31
  %2170 = lshr i32 %2151, 31
  %2171 = xor i32 %2170, %2169
  %2172 = xor i32 %2167, %2169
  %2173 = add nuw nsw i32 %2172, %2171
  %2174 = icmp eq i32 %2173, 2
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %38, align 1
  %2176 = icmp ne i8 %2168, 0
  %2177 = xor i1 %2176, %2174
  %.v177 = select i1 %2177, i64 20, i64 15
  %2178 = add i64 %2143, %.v177
  store i64 %2178, i64* %3, align 8
  br i1 %2177, label %block_.L_40132a, label %block_401325

block_401325:                                     ; preds = %block_.L_401307
  %2179 = add i64 %2178, 611
  br label %block_.L_401588

block_.L_40132a:                                  ; preds = %block_.L_401307
  %2180 = add i64 %2178, 5
  br label %block_.L_40132f

block_.L_40132f:                                  ; preds = %block_.L_4013a0, %block_.L_40132a
  %2181 = phi i64 [ %2141, %block_.L_40132a ], [ %.pre129, %block_.L_4013a0 ]
  %2182 = phi i32 [ %2146, %block_.L_40132a ], [ %2417, %block_.L_4013a0 ]
  %2183 = phi i64 [ %2147, %block_.L_40132a ], [ %.pre128, %block_.L_4013a0 ]
  %storemerge42 = phi i64 [ %2180, %block_.L_40132a ], [ %2415, %block_.L_4013a0 ]
  %2184 = zext i32 %2182 to i64
  %2185 = xor i64 %2184, %2183
  %2186 = trunc i64 %2185 to i32
  store i8 0, i8* %14, align 1
  %2187 = and i32 %2186, 255
  %2188 = tail call i32 @llvm.ctpop.i32(i32 %2187)
  %2189 = trunc i32 %2188 to i8
  %2190 = and i8 %2189, 1
  %2191 = xor i8 %2190, 1
  store i8 %2191, i8* %21, align 1
  %2192 = icmp eq i32 %2186, 0
  %2193 = zext i1 %2192 to i8
  store i8 %2193, i8* %29, align 1
  %2194 = lshr i32 %2186, 31
  %2195 = trunc i32 %2194 to i8
  store i8 %2195, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2196 = trunc i64 %2185 to i8
  store i8 %2196, i8* %CL.i943, align 1
  store i64 1, i64* %RAX.i1202, align 8
  %2197 = add i64 %2181, -24
  %2198 = add i64 %storemerge42, 13
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2197 to i64*
  %2200 = load i64, i64* %2199, align 8
  store i64 %2200, i64* %RDX.i1213, align 8
  %2201 = add i64 %2181, -2112
  %2202 = add i64 %storemerge42, 19
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = sext i32 %2204 to i64
  %2206 = ashr i64 %2205, 4
  %2207 = lshr i64 %2206, 1
  %2208 = trunc i64 %2206 to i8
  %2209 = and i8 %2208, 1
  %2210 = trunc i64 %2207 to i32
  %2211 = and i64 %2207, 4294967295
  store i64 %2211, i64* %RSI.i1000, align 8
  store i8 %2209, i8* %14, align 1
  %2212 = and i32 %2210, 255
  %2213 = tail call i32 @llvm.ctpop.i32(i32 %2212)
  %2214 = trunc i32 %2213 to i8
  %2215 = and i8 %2214, 1
  %2216 = xor i8 %2215, 1
  store i8 %2216, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2217 = icmp eq i32 %2210, 0
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %29, align 1
  %2219 = lshr i64 %2206, 32
  %2220 = trunc i64 %2219 to i8
  %2221 = and i8 %2220, 1
  store i8 %2221, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext152 = shl i64 %2207, 32
  %2222 = ashr exact i64 %sext152, 32
  store i64 %2222, i64* %RDI.i779, align 8
  %2223 = ashr exact i64 %sext152, 30
  %2224 = add i64 %2200, %2223
  %2225 = add i64 %storemerge42, 28
  store i64 %2225, i64* %3, align 8
  %2226 = inttoptr i64 %2224 to i32*
  %2227 = load i32, i32* %2226, align 4
  %2228 = zext i32 %2227 to i64
  store i64 %2228, i64* %RSI.i1000, align 8
  %2229 = add i64 %storemerge42, 35
  store i64 %2229, i64* %3, align 8
  %2230 = load i32, i32* %2203, align 4
  %2231 = and i32 %2230, 31
  %2232 = zext i32 %2231 to i64
  store i64 %2232, i64* %995, align 8
  store i8 0, i8* %14, align 1
  %2233 = tail call i32 @llvm.ctpop.i32(i32 %2231)
  %2234 = trunc i32 %2233 to i8
  %2235 = and i8 %2234, 1
  %2236 = xor i8 %2235, 1
  store i8 %2236, i8* %21, align 1
  %2237 = icmp eq i32 %2231, 0
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2239 = load i64, i64* %RBP.i, align 8
  %2240 = add i64 %2239, -2159
  %2241 = add i64 %storemerge42, 45
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i8*
  store i8 %2196, i8* %2242, align 1
  %2243 = load i32, i32* %R8D.i1232, align 4
  %2244 = zext i32 %2243 to i64
  %2245 = load i64, i64* %3, align 8
  store i64 %2244, i64* %RCX.i1175, align 8
  %2246 = load i64, i64* %RAX.i1202, align 8
  %2247 = add i64 %2245, 5
  store i64 %2247, i64* %3, align 8
  %2248 = trunc i32 %2243 to i5
  %2249 = trunc i64 %2246 to i32
  switch i5 %2248, label %2255 [
    i5 0, label %routine_shll__cl___eax.exit426
    i5 1, label %2250
  ]

; <label>:2250:                                   ; preds = %block_.L_40132f
  %2251 = shl i32 %2249, 1
  %2252 = icmp slt i32 %2249, 0
  %2253 = icmp slt i32 %2251, 0
  %2254 = xor i1 %2252, %2253
  br label %2265

; <label>:2255:                                   ; preds = %block_.L_40132f
  %2256 = and i32 %2243, 31
  %2257 = zext i32 %2256 to i64
  %2258 = add nuw nsw i64 %2257, 4294967295
  %2259 = and i64 %2246, 4294967295
  %2260 = and i64 %2258, 4294967295
  %2261 = shl i64 %2259, %2260
  %2262 = trunc i64 %2261 to i32
  %2263 = icmp slt i32 %2262, 0
  %2264 = shl i32 %2262, 1
  br label %2265

; <label>:2265:                                   ; preds = %2255, %2250
  %2266 = phi i1 [ %2252, %2250 ], [ %2263, %2255 ]
  %2267 = phi i1 [ %2254, %2250 ], [ false, %2255 ]
  %2268 = phi i32 [ %2251, %2250 ], [ %2264, %2255 ]
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RAX.i1202, align 8
  %2270 = zext i1 %2266 to i8
  store i8 %2270, i8* %14, align 1
  %2271 = and i32 %2268, 254
  %2272 = tail call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  store i8 %2275, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2276 = icmp eq i32 %2268, 0
  %2277 = zext i1 %2276 to i8
  store i8 %2277, i8* %29, align 1
  %2278 = lshr i32 %2268, 31
  %2279 = trunc i32 %2278 to i8
  store i8 %2279, i8* %32, align 1
  %2280 = zext i1 %2267 to i8
  store i8 %2280, i8* %38, align 1
  br label %routine_shll__cl___eax.exit426

routine_shll__cl___eax.exit426:                   ; preds = %2265, %block_.L_40132f
  %2281 = phi i32 [ %2268, %2265 ], [ %2249, %block_.L_40132f ]
  %2282 = load i64, i64* %RSI.i1000, align 8
  %2283 = zext i32 %2281 to i64
  %2284 = and i64 %2283, %2282
  %2285 = trunc i64 %2284 to i32
  store i64 %2284, i64* %RSI.i1000, align 8
  %2286 = and i32 %2285, 255
  %2287 = tail call i32 @llvm.ctpop.i32(i32 %2286)
  %2288 = trunc i32 %2287 to i8
  %2289 = and i8 %2288, 1
  %2290 = xor i8 %2289, 1
  %2291 = icmp eq i32 %2285, 0
  %2292 = zext i1 %2291 to i8
  %2293 = lshr i32 %2285, 31
  %2294 = trunc i32 %2293 to i8
  store i8 0, i8* %14, align 1
  store i8 %2290, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %2292, i8* %29, align 1
  store i8 %2294, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2295 = load i64, i64* %RBP.i, align 8
  %2296 = add i64 %2295, -2159
  %2297 = add i64 %2245, 16
  store i64 %2297, i64* %3, align 8
  %2298 = inttoptr i64 %2296 to i8*
  %2299 = load i8, i8* %2298, align 1
  store i8 %2299, i8* %CL.i943, align 1
  %2300 = add i64 %2295, -2160
  %2301 = add i64 %2245, 22
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2300 to i8*
  store i8 %2299, i8* %2302, align 1
  %2303 = load i64, i64* %3, align 8
  %2304 = add i64 %2303, 27
  %2305 = add i64 %2303, 6
  %2306 = load i8, i8* %29, align 1
  %2307 = icmp eq i8 %2306, 0
  %2308 = select i1 %2307, i64 %2304, i64 %2305
  store i64 %2308, i64* %3, align 8
  br i1 %2307, label %block_.L_40138d, label %block_401378

block_401378:                                     ; preds = %routine_shll__cl___eax.exit426
  %2309 = load i64, i64* %RBP.i, align 8
  %2310 = add i64 %2309, -2112
  %2311 = add i64 %2308, 6
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2310 to i32*
  %2313 = load i32, i32* %2312, align 4
  %2314 = and i32 %2313, 31
  %2315 = zext i32 %2314 to i64
  store i64 %2315, i64* %RAX.i1202, align 8
  %2316 = icmp eq i32 %2314, 0
  %2317 = zext i1 %2316 to i8
  store i8 0, i8* %14, align 1
  %2318 = tail call i32 @llvm.ctpop.i32(i32 %2314)
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = xor i8 %2320, 1
  store i8 %2321, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %2317, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2322 = xor i1 %2316, true
  %2323 = zext i1 %2322 to i8
  store i8 %2323, i8* %CL.i943, align 1
  %2324 = add i64 %2309, -2160
  %2325 = add i64 %2308, 21
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i8*
  store i8 %2323, i8* %2326, align 1
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_40138d

block_.L_40138d:                                  ; preds = %block_401378, %routine_shll__cl___eax.exit426
  %2327 = phi i64 [ %.pre130, %block_401378 ], [ %2304, %routine_shll__cl___eax.exit426 ]
  %2328 = load i64, i64* %RBP.i, align 8
  %2329 = add i64 %2328, -2160
  %2330 = add i64 %2327, 6
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2329 to i8*
  %2332 = load i8, i8* %2331, align 1
  store i8 %2332, i8* %AL.i656, align 1
  %2333 = and i8 %2332, 1
  store i8 0, i8* %14, align 1
  %2334 = zext i8 %2333 to i32
  %2335 = tail call i32 @llvm.ctpop.i32(i32 %2334)
  %2336 = trunc i32 %2335 to i8
  %2337 = xor i8 %2336, 1
  store i8 %2337, i8* %21, align 1
  %2338 = xor i8 %2333, 1
  store i8 %2338, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2339 = icmp eq i8 %2338, 0
  %.v185 = select i1 %2339, i64 19, i64 14
  %2340 = add i64 %2327, %.v185
  store i64 %2340, i64* %3, align 8
  br i1 %2339, label %block_.L_4013a0, label %block_40139b

block_40139b:                                     ; preds = %block_.L_40138d
  store i64 1, i64* %RAX.i1202, align 8
  %2341 = add i64 %2328, -24
  %2342 = add i64 %2340, 34
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i64*
  %2344 = load i64, i64* %2343, align 8
  store i64 %2344, i64* %RCX.i1175, align 8
  %2345 = add i64 %2328, -2112
  %2346 = add i64 %2340, 40
  store i64 %2346, i64* %3, align 8
  %2347 = inttoptr i64 %2345 to i32*
  %2348 = load i32, i32* %2347, align 4
  %2349 = sext i32 %2348 to i64
  %2350 = ashr i64 %2349, 4
  %2351 = lshr i64 %2350, 1
  %2352 = trunc i64 %2350 to i8
  %2353 = and i8 %2352, 1
  %2354 = trunc i64 %2351 to i32
  %2355 = and i64 %2351, 4294967295
  store i64 %2355, i64* %RDX.i1213, align 8
  store i8 %2353, i8* %14, align 1
  %2356 = and i32 %2354, 255
  %2357 = tail call i32 @llvm.ctpop.i32(i32 %2356)
  %2358 = trunc i32 %2357 to i8
  %2359 = and i8 %2358, 1
  %2360 = xor i8 %2359, 1
  store i8 %2360, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2361 = icmp eq i32 %2354, 0
  %2362 = zext i1 %2361 to i8
  store i8 %2362, i8* %29, align 1
  %2363 = lshr i64 %2350, 32
  %2364 = trunc i64 %2363 to i8
  %2365 = and i8 %2364, 1
  store i8 %2365, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext153 = shl i64 %2351, 32
  %2366 = ashr exact i64 %sext153, 32
  store i64 %2366, i64* %RSI.i1000, align 8
  %2367 = ashr exact i64 %sext153, 30
  %2368 = add i64 %2344, %2367
  %2369 = add i64 %2340, 49
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RDX.i1213, align 8
  %2373 = add i64 %2340, 55
  store i64 %2373, i64* %3, align 8
  %2374 = load i32, i32* %2347, align 4
  %2375 = zext i32 %2374 to i64
  %2376 = and i64 %2375, 31
  %2377 = trunc i64 %2376 to i32
  store i64 %2376, i64* %RDI.i779, align 8
  store i8 0, i8* %14, align 1
  %2378 = tail call i32 @llvm.ctpop.i32(i32 %2377)
  %2379 = trunc i32 %2378 to i8
  %2380 = and i8 %2379, 1
  %2381 = xor i8 %2380, 1
  store i8 %2381, i8* %21, align 1
  %2382 = icmp eq i32 %2377, 0
  %2383 = zext i1 %2382 to i8
  store i8 %2383, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %2376, i64* %RCX.i1175, align 8
  %2384 = add i64 %2340, 62
  store i64 %2384, i64* %3, align 8
  %2385 = trunc i32 %2374 to i5
  switch i5 %2385, label %2418 [
    i5 0, label %routine_shll__cl___eax.exit357
    i5 1, label %2426
  ]

block_.L_4013a0:                                  ; preds = %block_.L_40138d
  %2386 = add i64 %2328, -2112
  %2387 = add i64 %2340, 6
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i32*
  %2389 = load i32, i32* %2388, align 4
  %2390 = add i32 %2389, 1
  %2391 = zext i32 %2390 to i64
  store i64 %2391, i64* %RAX.i1202, align 8
  %2392 = icmp eq i32 %2389, -1
  %2393 = icmp eq i32 %2390, 0
  %2394 = or i1 %2392, %2393
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %14, align 1
  %2396 = and i32 %2390, 255
  %2397 = tail call i32 @llvm.ctpop.i32(i32 %2396)
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = xor i8 %2399, 1
  store i8 %2400, i8* %21, align 1
  %2401 = xor i32 %2390, %2389
  %2402 = lshr i32 %2401, 4
  %2403 = trunc i32 %2402 to i8
  %2404 = and i8 %2403, 1
  store i8 %2404, i8* %26, align 1
  %2405 = zext i1 %2393 to i8
  store i8 %2405, i8* %29, align 1
  %2406 = lshr i32 %2390, 31
  %2407 = trunc i32 %2406 to i8
  store i8 %2407, i8* %32, align 1
  %2408 = lshr i32 %2389, 31
  %2409 = xor i32 %2406, %2408
  %2410 = add nuw nsw i32 %2409, %2406
  %2411 = icmp eq i32 %2410, 2
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %38, align 1
  %2413 = add i64 %2340, 15
  store i64 %2413, i64* %3, align 8
  store i32 %2390, i32* %2388, align 4
  %2414 = load i64, i64* %3, align 8
  %2415 = add i64 %2414, -128
  %2416 = add i64 %2414, 5
  store i64 %2416, i64* %3, align 8
  %.pre128 = load i64, i64* %RAX.i1202, align 8
  %2417 = trunc i64 %.pre128 to i32
  %.pre129 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40132f

; <label>:2418:                                   ; preds = %block_40139b
  %2419 = and i64 %2375, 31
  %2420 = add nuw nsw i64 %2419, 4294967295
  %2421 = and i64 %2420, 4294967295
  %2422 = shl i64 1, %2421
  %2423 = trunc i64 %2422 to i32
  %2424 = icmp slt i32 %2423, 0
  %2425 = shl i32 %2423, 1
  br label %2426

; <label>:2426:                                   ; preds = %block_40139b, %2418
  %2427 = phi i1 [ %2424, %2418 ], [ false, %block_40139b ]
  %2428 = phi i32 [ %2425, %2418 ], [ 2, %block_40139b ]
  %2429 = zext i32 %2428 to i64
  store i64 %2429, i64* %RAX.i1202, align 8
  %2430 = zext i1 %2427 to i8
  store i8 %2430, i8* %14, align 1
  %2431 = and i32 %2428, 254
  %2432 = tail call i32 @llvm.ctpop.i32(i32 %2431)
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  %2435 = xor i8 %2434, 1
  store i8 %2435, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2436 = icmp eq i32 %2428, 0
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %29, align 1
  %2438 = lshr i32 %2428, 31
  %2439 = trunc i32 %2438 to i8
  store i8 %2439, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit357

routine_shll__cl___eax.exit357:                   ; preds = %2426, %block_40139b
  %2440 = phi i32 [ %2428, %2426 ], [ 1, %block_40139b ]
  %2441 = and i32 %2440, %2371
  %2442 = zext i32 %2441 to i64
  store i64 %2442, i64* %RDX.i1213, align 8
  %2443 = and i32 %2441, 255
  %2444 = tail call i32 @llvm.ctpop.i32(i32 %2443)
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  %2448 = icmp eq i32 %2441, 0
  %2449 = zext i1 %2448 to i8
  %2450 = lshr i32 %2441, 31
  %2451 = trunc i32 %2450 to i8
  store i8 0, i8* %14, align 1
  store i8 %2447, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %2449, i8* %29, align 1
  store i8 %2451, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v186 = select i1 %2448, i64 73, i64 216
  %2452 = add i64 %2340, %.v186
  store i64 %2452, i64* %3, align 8
  br i1 %2448, label %block_4013e4, label %block_.L_401473

block_4013e4:                                     ; preds = %routine_shll__cl___eax.exit357
  %2453 = add i64 %2452, 5
  br label %block_.L_4013e9

block_.L_4013e9:                                  ; preds = %block_401403, %block_4013e4
  %2454 = phi i64 [ %2328, %block_4013e4 ], [ %.pre131, %block_401403 ]
  %storemerge43 = phi i64 [ %2453, %block_4013e4 ], [ %2522, %block_401403 ]
  %2455 = add i64 %2454, -24
  %2456 = add i64 %storemerge43, 4
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i64*
  %2458 = load i64, i64* %2457, align 8
  store i64 %2458, i64* %RAX.i1202, align 8
  %2459 = add i64 %2454, -2112
  %2460 = add i64 %storemerge43, 10
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i32*
  %2462 = load i32, i32* %2461, align 4
  %2463 = sext i32 %2462 to i64
  %2464 = ashr i64 %2463, 4
  %2465 = lshr i64 %2464, 1
  %2466 = trunc i64 %2464 to i8
  %2467 = and i8 %2466, 1
  %2468 = trunc i64 %2465 to i32
  %2469 = and i64 %2465, 4294967295
  store i64 %2469, i64* %RCX.i1175, align 8
  store i8 %2467, i8* %14, align 1
  %2470 = and i32 %2468, 255
  %2471 = tail call i32 @llvm.ctpop.i32(i32 %2470)
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  %2474 = xor i8 %2473, 1
  store i8 %2474, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2475 = icmp eq i32 %2468, 0
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %29, align 1
  %2477 = lshr i64 %2464, 32
  %2478 = trunc i64 %2477 to i8
  %2479 = and i8 %2478, 1
  store i8 %2479, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext154 = shl i64 %2465, 32
  %2480 = ashr exact i64 %sext154, 32
  store i64 %2480, i64* %RDX.i1213, align 8
  %2481 = ashr exact i64 %sext154, 30
  %2482 = add i64 %2458, %2481
  %2483 = add i64 %storemerge43, 20
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  %2485 = load i32, i32* %2484, align 4
  store i8 0, i8* %14, align 1
  %2486 = and i32 %2485, 255
  %2487 = tail call i32 @llvm.ctpop.i32(i32 %2486)
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  %2490 = xor i8 %2489, 1
  store i8 %2490, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2491 = icmp eq i32 %2485, 0
  %2492 = zext i1 %2491 to i8
  store i8 %2492, i8* %29, align 1
  %2493 = lshr i32 %2485, 31
  %2494 = trunc i32 %2493 to i8
  store i8 %2494, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v191 = select i1 %2491, i64 26, i64 46
  %2495 = add i64 %storemerge43, %.v191
  store i64 %2495, i64* %3, align 8
  br i1 %2491, label %block_401403, label %block_.L_401417

block_401403:                                     ; preds = %block_.L_4013e9
  %2496 = add i64 %2495, 6
  store i64 %2496, i64* %3, align 8
  %2497 = load i32, i32* %2461, align 4
  %2498 = add i32 %2497, 32
  %2499 = zext i32 %2498 to i64
  store i64 %2499, i64* %RAX.i1202, align 8
  %2500 = icmp ugt i32 %2497, -33
  %2501 = zext i1 %2500 to i8
  store i8 %2501, i8* %14, align 1
  %2502 = and i32 %2498, 255
  %2503 = tail call i32 @llvm.ctpop.i32(i32 %2502)
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  %2506 = xor i8 %2505, 1
  store i8 %2506, i8* %21, align 1
  %2507 = xor i32 %2498, %2497
  %2508 = lshr i32 %2507, 4
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  store i8 %2510, i8* %26, align 1
  %2511 = icmp eq i32 %2498, 0
  %2512 = zext i1 %2511 to i8
  store i8 %2512, i8* %29, align 1
  %2513 = lshr i32 %2498, 31
  %2514 = trunc i32 %2513 to i8
  store i8 %2514, i8* %32, align 1
  %2515 = lshr i32 %2497, 31
  %2516 = xor i32 %2513, %2515
  %2517 = add nuw nsw i32 %2516, %2513
  %2518 = icmp eq i32 %2517, 2
  %2519 = zext i1 %2518 to i8
  store i8 %2519, i8* %38, align 1
  %2520 = add i64 %2495, 15
  store i64 %2520, i64* %3, align 8
  store i32 %2498, i32* %2461, align 4
  %2521 = load i64, i64* %3, align 8
  %2522 = add i64 %2521, -41
  %2523 = add i64 %2521, 5
  store i64 %2523, i64* %3, align 8
  %.pre131 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4013e9

block_.L_401417:                                  ; preds = %block_.L_4013e9
  %2524 = add i64 %2495, 5
  br label %block_.L_40141c

block_.L_40141c:                                  ; preds = %block_.L_40145a, %block_.L_401417
  %2525 = phi i64 [ %2454, %block_.L_401417 ], [ %.pre132, %block_.L_40145a ]
  %storemerge44 = phi i64 [ %2524, %block_.L_401417 ], [ %2635, %block_.L_40145a ]
  store i64 1, i64* %RAX.i1202, align 8
  %2526 = add i64 %2525, -24
  %2527 = add i64 %storemerge44, 9
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i64*
  %2529 = load i64, i64* %2528, align 8
  store i64 %2529, i64* %RCX.i1175, align 8
  %2530 = add i64 %2525, -2112
  %2531 = add i64 %storemerge44, 15
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2530 to i32*
  %2533 = load i32, i32* %2532, align 4
  %2534 = sext i32 %2533 to i64
  %2535 = ashr i64 %2534, 4
  %2536 = lshr i64 %2535, 1
  %2537 = trunc i64 %2535 to i8
  %2538 = and i8 %2537, 1
  %2539 = trunc i64 %2536 to i32
  %2540 = and i64 %2536, 4294967295
  store i64 %2540, i64* %RDX.i1213, align 8
  store i8 %2538, i8* %14, align 1
  %2541 = and i32 %2539, 255
  %2542 = tail call i32 @llvm.ctpop.i32(i32 %2541)
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = xor i8 %2544, 1
  store i8 %2545, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2546 = icmp eq i32 %2539, 0
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %29, align 1
  %2548 = lshr i64 %2535, 32
  %2549 = trunc i64 %2548 to i8
  %2550 = and i8 %2549, 1
  store i8 %2550, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext155 = shl i64 %2536, 32
  %2551 = ashr exact i64 %sext155, 32
  store i64 %2551, i64* %RSI.i1000, align 8
  %2552 = ashr exact i64 %sext155, 30
  %2553 = add i64 %2529, %2552
  %2554 = add i64 %storemerge44, 24
  store i64 %2554, i64* %3, align 8
  %2555 = inttoptr i64 %2553 to i32*
  %2556 = load i32, i32* %2555, align 4
  %2557 = zext i32 %2556 to i64
  store i64 %2557, i64* %RDX.i1213, align 8
  %2558 = add i64 %storemerge44, 30
  store i64 %2558, i64* %3, align 8
  %2559 = load i32, i32* %2532, align 4
  %2560 = zext i32 %2559 to i64
  %2561 = and i64 %2560, 31
  %2562 = trunc i64 %2561 to i32
  store i64 %2561, i64* %RDI.i779, align 8
  store i8 0, i8* %14, align 1
  %2563 = tail call i32 @llvm.ctpop.i32(i32 %2562)
  %2564 = trunc i32 %2563 to i8
  %2565 = and i8 %2564, 1
  %2566 = xor i8 %2565, 1
  store i8 %2566, i8* %21, align 1
  %2567 = icmp eq i32 %2562, 0
  %2568 = zext i1 %2567 to i8
  store i8 %2568, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 %2561, i64* %RCX.i1175, align 8
  %2569 = add i64 %storemerge44, 37
  store i64 %2569, i64* %3, align 8
  %2570 = trunc i32 %2559 to i5
  switch i5 %2570, label %2571 [
    i5 0, label %routine_shll__cl___eax.exit297
    i5 1, label %2579
  ]

; <label>:2571:                                   ; preds = %block_.L_40141c
  %2572 = and i64 %2560, 31
  %2573 = add nuw nsw i64 %2572, 4294967295
  %2574 = and i64 %2573, 4294967295
  %2575 = shl i64 1, %2574
  %2576 = trunc i64 %2575 to i32
  %2577 = icmp slt i32 %2576, 0
  %2578 = shl i32 %2576, 1
  br label %2579

; <label>:2579:                                   ; preds = %block_.L_40141c, %2571
  %2580 = phi i1 [ %2577, %2571 ], [ false, %block_.L_40141c ]
  %2581 = phi i32 [ %2578, %2571 ], [ 2, %block_.L_40141c ]
  %2582 = zext i32 %2581 to i64
  store i64 %2582, i64* %RAX.i1202, align 8
  %2583 = zext i1 %2580 to i8
  store i8 %2583, i8* %14, align 1
  %2584 = and i32 %2581, 254
  %2585 = tail call i32 @llvm.ctpop.i32(i32 %2584)
  %2586 = trunc i32 %2585 to i8
  %2587 = and i8 %2586, 1
  %2588 = xor i8 %2587, 1
  store i8 %2588, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2589 = icmp eq i32 %2581, 0
  %2590 = zext i1 %2589 to i8
  store i8 %2590, i8* %29, align 1
  %2591 = lshr i32 %2581, 31
  %2592 = trunc i32 %2591 to i8
  store i8 %2592, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit297

routine_shll__cl___eax.exit297:                   ; preds = %2579, %block_.L_40141c
  %2593 = phi i32 [ %2581, %2579 ], [ 1, %block_.L_40141c ]
  %2594 = and i32 %2593, %2556
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RDX.i1213, align 8
  %2596 = icmp ne i32 %2594, 0
  %2597 = zext i1 %2596 to i8
  %2598 = xor i8 %2597, -1
  store i8 %2598, i8* %CL.i943, align 1
  %2599 = and i8 %2598, 1
  store i8 0, i8* %14, align 1
  %2600 = zext i8 %2599 to i32
  %2601 = tail call i32 @llvm.ctpop.i32(i32 %2600)
  %2602 = trunc i32 %2601 to i8
  %2603 = xor i8 %2602, 1
  store i8 %2603, i8* %21, align 1
  %2604 = xor i8 %2599, 1
  store i8 %2604, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2605 = icmp eq i8 %2604, 0
  %.v192 = select i1 %2605, i64 62, i64 57
  %2606 = add i64 %storemerge44, %.v192
  store i64 %2606, i64* %3, align 8
  br i1 %2605, label %block_.L_40145a, label %block_401455

block_401455:                                     ; preds = %routine_shll__cl___eax.exit297
  %2607 = add i64 %2606, 30
  store i64 %2607, i64* %3, align 8
  br label %block_.L_401473

block_.L_40145a:                                  ; preds = %routine_shll__cl___eax.exit297
  %2608 = add i64 %2606, 6
  store i64 %2608, i64* %3, align 8
  %2609 = load i32, i32* %2532, align 4
  %2610 = add i32 %2609, 1
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %RAX.i1202, align 8
  %2612 = icmp eq i32 %2609, -1
  %2613 = icmp eq i32 %2610, 0
  %2614 = or i1 %2612, %2613
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %14, align 1
  %2616 = and i32 %2610, 255
  %2617 = tail call i32 @llvm.ctpop.i32(i32 %2616)
  %2618 = trunc i32 %2617 to i8
  %2619 = and i8 %2618, 1
  %2620 = xor i8 %2619, 1
  store i8 %2620, i8* %21, align 1
  %2621 = xor i32 %2610, %2609
  %2622 = lshr i32 %2621, 4
  %2623 = trunc i32 %2622 to i8
  %2624 = and i8 %2623, 1
  store i8 %2624, i8* %26, align 1
  %2625 = zext i1 %2613 to i8
  store i8 %2625, i8* %29, align 1
  %2626 = lshr i32 %2610, 31
  %2627 = trunc i32 %2626 to i8
  store i8 %2627, i8* %32, align 1
  %2628 = lshr i32 %2609, 31
  %2629 = xor i32 %2626, %2628
  %2630 = add nuw nsw i32 %2629, %2626
  %2631 = icmp eq i32 %2630, 2
  %2632 = zext i1 %2631 to i8
  store i8 %2632, i8* %38, align 1
  %2633 = add i64 %2606, 15
  store i64 %2633, i64* %3, align 8
  store i32 %2610, i32* %2532, align 4
  %2634 = load i64, i64* %3, align 8
  %2635 = add i64 %2634, -77
  %2636 = add i64 %2634, 5
  store i64 %2636, i64* %3, align 8
  %.pre132 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40141c

block_.L_401473:                                  ; preds = %routine_shll__cl___eax.exit357, %block_401455
  %2637 = phi i64 [ %2607, %block_401455 ], [ %2452, %routine_shll__cl___eax.exit357 ]
  %2638 = phi i64 [ %2525, %block_401455 ], [ %2328, %routine_shll__cl___eax.exit357 ]
  %2639 = add i64 %2638, -2112
  %2640 = add i64 %2637, 6
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = add i32 %2642, -1
  %2644 = zext i32 %2643 to i64
  store i64 %2644, i64* %RAX.i1202, align 8
  %2645 = icmp eq i32 %2642, 0
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %14, align 1
  %2647 = and i32 %2643, 255
  %2648 = tail call i32 @llvm.ctpop.i32(i32 %2647)
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  %2651 = xor i8 %2650, 1
  store i8 %2651, i8* %21, align 1
  %2652 = xor i32 %2643, %2642
  %2653 = lshr i32 %2652, 4
  %2654 = trunc i32 %2653 to i8
  %2655 = and i8 %2654, 1
  store i8 %2655, i8* %26, align 1
  %2656 = icmp eq i32 %2643, 0
  %2657 = zext i1 %2656 to i8
  store i8 %2657, i8* %29, align 1
  %2658 = lshr i32 %2643, 31
  %2659 = trunc i32 %2658 to i8
  store i8 %2659, i8* %32, align 1
  %2660 = lshr i32 %2642, 31
  %2661 = xor i32 %2658, %2660
  %2662 = add nuw nsw i32 %2661, %2660
  %2663 = icmp eq i32 %2662, 2
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %38, align 1
  %2665 = add i64 %2638, -2120
  %2666 = add i64 %2637, 15
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2665 to i32*
  store i32 %2643, i32* %2667, align 4
  %2668 = load i64, i64* %RBP.i, align 8
  %2669 = add i64 %2668, -2120
  %2670 = load i64, i64* %3, align 8
  %2671 = add i64 %2670, 6
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2669 to i32*
  %2673 = load i32, i32* %2672, align 4
  %2674 = zext i32 %2673 to i64
  store i64 %2674, i64* %RAX.i1202, align 8
  %2675 = add i64 %2668, -28
  %2676 = add i64 %2670, 9
  store i64 %2676, i64* %3, align 8
  %2677 = inttoptr i64 %2675 to i32*
  %2678 = load i32, i32* %2677, align 4
  %2679 = sub i32 %2673, %2678
  %2680 = icmp ult i32 %2673, %2678
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %14, align 1
  %2682 = and i32 %2679, 255
  %2683 = tail call i32 @llvm.ctpop.i32(i32 %2682)
  %2684 = trunc i32 %2683 to i8
  %2685 = and i8 %2684, 1
  %2686 = xor i8 %2685, 1
  store i8 %2686, i8* %21, align 1
  %2687 = xor i32 %2678, %2673
  %2688 = xor i32 %2687, %2679
  %2689 = lshr i32 %2688, 4
  %2690 = trunc i32 %2689 to i8
  %2691 = and i8 %2690, 1
  store i8 %2691, i8* %26, align 1
  %2692 = icmp eq i32 %2679, 0
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %29, align 1
  %2694 = lshr i32 %2679, 31
  %2695 = trunc i32 %2694 to i8
  store i8 %2695, i8* %32, align 1
  %2696 = lshr i32 %2673, 31
  %2697 = lshr i32 %2678, 31
  %2698 = xor i32 %2697, %2696
  %2699 = xor i32 %2694, %2696
  %2700 = add nuw nsw i32 %2699, %2698
  %2701 = icmp eq i32 %2700, 2
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %38, align 1
  %2703 = icmp ne i8 %2695, 0
  %2704 = xor i1 %2703, %2701
  %.v187 = select i1 %2704, i64 20, i64 15
  %2705 = add i64 %2670, %.v187
  store i64 %2705, i64* %3, align 8
  br i1 %2704, label %block_.L_401496, label %block_401491

block_401491:                                     ; preds = %block_.L_401473
  %2706 = add i64 %2705, 247
  %2707 = add i64 %2705, 5
  store i64 %2707, i64* %3, align 8
  br label %block_.L_401588

block_.L_401496:                                  ; preds = %block_.L_401473
  %2708 = add i64 %2705, 6
  store i64 %2708, i64* %3, align 8
  %2709 = load i32, i32* %2672, align 4
  %2710 = zext i32 %2709 to i64
  store i64 %2710, i64* %RAX.i1202, align 8
  %2711 = add i64 %2668, -2116
  %2712 = add i64 %2705, 12
  store i64 %2712, i64* %3, align 8
  %2713 = inttoptr i64 %2711 to i32*
  %2714 = load i32, i32* %2713, align 4
  %2715 = sub i32 %2709, %2714
  %2716 = icmp ult i32 %2709, %2714
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %14, align 1
  %2718 = and i32 %2715, 255
  %2719 = tail call i32 @llvm.ctpop.i32(i32 %2718)
  %2720 = trunc i32 %2719 to i8
  %2721 = and i8 %2720, 1
  %2722 = xor i8 %2721, 1
  store i8 %2722, i8* %21, align 1
  %2723 = xor i32 %2714, %2709
  %2724 = xor i32 %2723, %2715
  %2725 = lshr i32 %2724, 4
  %2726 = trunc i32 %2725 to i8
  %2727 = and i8 %2726, 1
  store i8 %2727, i8* %26, align 1
  %2728 = icmp eq i32 %2715, 0
  %2729 = zext i1 %2728 to i8
  store i8 %2729, i8* %29, align 1
  %2730 = lshr i32 %2715, 31
  %2731 = trunc i32 %2730 to i8
  store i8 %2731, i8* %32, align 1
  %2732 = lshr i32 %2709, 31
  %2733 = lshr i32 %2714, 31
  %2734 = xor i32 %2733, %2732
  %2735 = xor i32 %2730, %2732
  %2736 = add nuw nsw i32 %2735, %2734
  %2737 = icmp eq i32 %2736, 2
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %38, align 1
  %2739 = icmp ne i8 %2731, 0
  %2740 = xor i1 %2739, %2737
  %2741 = or i1 %2728, %2740
  %.v188 = select i1 %2741, i64 237, i64 18
  %2742 = add i64 %2705, %.v188
  store i64 %2742, i64* %3, align 8
  br i1 %2741, label %block_.L_401583, label %block_4014a8

block_4014a8:                                     ; preds = %block_.L_401496
  %2743 = add i64 %2742, 6
  store i64 %2743, i64* %3, align 8
  %2744 = load i32, i32* %2672, align 4
  %2745 = zext i32 %2744 to i64
  store i64 %2745, i64* %RAX.i1202, align 8
  %2746 = add i64 %2742, 12
  store i64 %2746, i64* %3, align 8
  %2747 = load i32, i32* %2713, align 4
  %2748 = sub i32 %2744, %2747
  %2749 = lshr i32 %2748, 31
  %2750 = add i32 %2748, 1
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %RAX.i1202, align 8
  %2752 = icmp eq i32 %2748, -1
  %2753 = icmp eq i32 %2750, 0
  %2754 = or i1 %2752, %2753
  %2755 = zext i1 %2754 to i8
  store i8 %2755, i8* %14, align 1
  %2756 = and i32 %2750, 255
  %2757 = tail call i32 @llvm.ctpop.i32(i32 %2756)
  %2758 = trunc i32 %2757 to i8
  %2759 = and i8 %2758, 1
  %2760 = xor i8 %2759, 1
  store i8 %2760, i8* %21, align 1
  %2761 = xor i32 %2750, %2748
  %2762 = lshr i32 %2761, 4
  %2763 = trunc i32 %2762 to i8
  %2764 = and i8 %2763, 1
  store i8 %2764, i8* %26, align 1
  %2765 = zext i1 %2753 to i8
  store i8 %2765, i8* %29, align 1
  %2766 = lshr i32 %2750, 31
  %2767 = trunc i32 %2766 to i8
  store i8 %2767, i8* %32, align 1
  %2768 = xor i32 %2766, %2749
  %2769 = add nuw nsw i32 %2768, %2766
  %2770 = icmp eq i32 %2769, 2
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %38, align 1
  %2772 = add i64 %2668, -2132
  %2773 = add i64 %2742, 21
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2772 to i32*
  %2775 = load i32, i32* %2774, align 4
  %2776 = add i32 %2775, %2750
  %2777 = zext i32 %2776 to i64
  store i64 %2777, i64* %RAX.i1202, align 8
  %2778 = icmp ult i32 %2776, %2750
  %2779 = icmp ult i32 %2776, %2775
  %2780 = or i1 %2778, %2779
  %2781 = zext i1 %2780 to i8
  store i8 %2781, i8* %14, align 1
  %2782 = and i32 %2776, 255
  %2783 = tail call i32 @llvm.ctpop.i32(i32 %2782)
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  store i8 %2786, i8* %21, align 1
  %2787 = xor i32 %2775, %2750
  %2788 = xor i32 %2787, %2776
  %2789 = lshr i32 %2788, 4
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  store i8 %2791, i8* %26, align 1
  %2792 = icmp eq i32 %2776, 0
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %29, align 1
  %2794 = lshr i32 %2776, 31
  %2795 = trunc i32 %2794 to i8
  store i8 %2795, i8* %32, align 1
  %2796 = lshr i32 %2775, 31
  %2797 = xor i32 %2794, %2766
  %2798 = xor i32 %2794, %2796
  %2799 = add nuw nsw i32 %2797, %2798
  %2800 = icmp eq i32 %2799, 2
  %2801 = zext i1 %2800 to i8
  store i8 %2801, i8* %38, align 1
  %2802 = load i64, i64* %RBP.i, align 8
  %2803 = add i64 %2802, -2132
  %2804 = add i64 %2742, 27
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i32*
  store i32 %2776, i32* %2805, align 4
  %2806 = load i64, i64* %RBP.i, align 8
  %2807 = add i64 %2806, -8
  %2808 = load i64, i64* %3, align 8
  %2809 = add i64 %2808, 4
  store i64 %2809, i64* %3, align 8
  %2810 = inttoptr i64 %2807 to i64*
  %2811 = load i64, i64* %2810, align 8
  store i64 %2811, i64* %RDI.i779, align 8
  %2812 = add i64 %2806, -16
  %2813 = add i64 %2808, 8
  store i64 %2813, i64* %3, align 8
  %2814 = inttoptr i64 %2812 to i64*
  %2815 = load i64, i64* %2814, align 8
  store i64 %2815, i64* %RSI.i1000, align 8
  %2816 = add i64 %2806, -2116
  %2817 = add i64 %2808, 14
  store i64 %2817, i64* %3, align 8
  %2818 = inttoptr i64 %2816 to i32*
  %2819 = load i32, i32* %2818, align 4
  %2820 = zext i32 %2819 to i64
  store i64 %2820, i64* %RDX.i1213, align 8
  %2821 = add i64 %2806, -2120
  %2822 = add i64 %2808, 20
  store i64 %2822, i64* %3, align 8
  %2823 = inttoptr i64 %2821 to i32*
  %2824 = load i32, i32* %2823, align 4
  %2825 = zext i32 %2824 to i64
  store i64 %2825, i64* %RCX.i1175, align 8
  %2826 = add i64 %2808, 9453
  %2827 = add i64 %2808, 25
  %2828 = load i64, i64* %6, align 8
  %2829 = add i64 %2828, -8
  %2830 = inttoptr i64 %2829 to i64*
  store i64 %2827, i64* %2830, align 8
  store i64 %2829, i64* %6, align 8
  store i64 %2826, i64* %3, align 8
  %call2_4014d7 = tail call %struct.Memory* @sub_4039b0.fallbackQSort3(%struct.State* nonnull %0, i64 %2826, %struct.Memory* %MEMORY.10)
  %2831 = load i64, i64* %RBP.i, align 8
  %2832 = add i64 %2831, -2124
  %2833 = load i64, i64* %3, align 8
  %2834 = add i64 %2833, 10
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2832 to i32*
  store i32 -1, i32* %2835, align 4
  %2836 = load i64, i64* %RBP.i, align 8
  %2837 = add i64 %2836, -2116
  %2838 = load i64, i64* %3, align 8
  %2839 = add i64 %2838, 6
  store i64 %2839, i64* %3, align 8
  %2840 = inttoptr i64 %2837 to i32*
  %2841 = load i32, i32* %2840, align 4
  %2842 = zext i32 %2841 to i64
  store i64 %2842, i64* %RAX.i1202, align 8
  %2843 = add i64 %2836, -2104
  %2844 = add i64 %2838, 12
  store i64 %2844, i64* %3, align 8
  %2845 = inttoptr i64 %2843 to i32*
  store i32 %2841, i32* %2845, align 4
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_4014f2

block_.L_4014f2:                                  ; preds = %block_.L_401565, %block_4014a8
  %2846 = phi i64 [ %3066, %block_.L_401565 ], [ %.pre140, %block_4014a8 ]
  %2847 = load i64, i64* %RBP.i, align 8
  %2848 = add i64 %2847, -2104
  %2849 = add i64 %2846, 6
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i32*
  %2851 = load i32, i32* %2850, align 4
  %2852 = zext i32 %2851 to i64
  store i64 %2852, i64* %RAX.i1202, align 8
  %2853 = add i64 %2847, -2120
  %2854 = add i64 %2846, 12
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i32*
  %2856 = load i32, i32* %2855, align 4
  %2857 = sub i32 %2851, %2856
  %2858 = icmp ult i32 %2851, %2856
  %2859 = zext i1 %2858 to i8
  store i8 %2859, i8* %14, align 1
  %2860 = and i32 %2857, 255
  %2861 = tail call i32 @llvm.ctpop.i32(i32 %2860)
  %2862 = trunc i32 %2861 to i8
  %2863 = and i8 %2862, 1
  %2864 = xor i8 %2863, 1
  store i8 %2864, i8* %21, align 1
  %2865 = xor i32 %2856, %2851
  %2866 = xor i32 %2865, %2857
  %2867 = lshr i32 %2866, 4
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  store i8 %2869, i8* %26, align 1
  %2870 = icmp eq i32 %2857, 0
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %29, align 1
  %2872 = lshr i32 %2857, 31
  %2873 = trunc i32 %2872 to i8
  store i8 %2873, i8* %32, align 1
  %2874 = lshr i32 %2851, 31
  %2875 = lshr i32 %2856, 31
  %2876 = xor i32 %2875, %2874
  %2877 = xor i32 %2872, %2874
  %2878 = add nuw nsw i32 %2877, %2876
  %2879 = icmp eq i32 %2878, 2
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %38, align 1
  %2881 = icmp ne i8 %2873, 0
  %2882 = xor i1 %2881, %2879
  %.demorgan156 = or i1 %2870, %2882
  %.v189 = select i1 %.demorgan156, i64 18, i64 140
  %2883 = add i64 %2846, %.v189
  store i64 %2883, i64* %3, align 8
  br i1 %.demorgan156, label %block_401504, label %block_.L_40157e

block_401504:                                     ; preds = %block_.L_4014f2
  %2884 = add i64 %2847, -16
  %2885 = add i64 %2883, 4
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i64*
  %2887 = load i64, i64* %2886, align 8
  store i64 %2887, i64* %RAX.i1202, align 8
  %2888 = add i64 %2847, -8
  %2889 = add i64 %2883, 8
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i64*
  %2891 = load i64, i64* %2890, align 8
  store i64 %2891, i64* %RCX.i1175, align 8
  %2892 = add i64 %2883, 15
  store i64 %2892, i64* %3, align 8
  %2893 = load i32, i32* %2850, align 4
  %2894 = sext i32 %2893 to i64
  store i64 %2894, i64* %RDX.i1213, align 8
  %2895 = shl nsw i64 %2894, 2
  %2896 = add i64 %2895, %2891
  %2897 = add i64 %2883, 18
  store i64 %2897, i64* %3, align 8
  %2898 = inttoptr i64 %2896 to i32*
  %2899 = load i32, i32* %2898, align 4
  %2900 = zext i32 %2899 to i64
  store i64 %2900, i64* %RSI.i1000, align 8
  store i64 %2900, i64* %RCX.i1175, align 8
  %2901 = shl nuw nsw i64 %2900, 2
  %2902 = add i64 %2887, %2901
  %2903 = add i64 %2883, 23
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i32*
  %2905 = load i32, i32* %2904, align 4
  %2906 = zext i32 %2905 to i64
  store i64 %2906, i64* %RSI.i1000, align 8
  %2907 = add i64 %2847, -2128
  %2908 = add i64 %2883, 29
  store i64 %2908, i64* %3, align 8
  %2909 = inttoptr i64 %2907 to i32*
  store i32 %2905, i32* %2909, align 4
  %2910 = load i64, i64* %RBP.i, align 8
  %2911 = add i64 %2910, -2124
  %2912 = load i64, i64* %3, align 8
  %2913 = add i64 %2912, 6
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2911 to i32*
  %2915 = load i32, i32* %2914, align 4
  %2916 = zext i32 %2915 to i64
  store i64 %2916, i64* %RSI.i1000, align 8
  %2917 = add i64 %2910, -2128
  %2918 = add i64 %2912, 12
  store i64 %2918, i64* %3, align 8
  %2919 = inttoptr i64 %2917 to i32*
  %2920 = load i32, i32* %2919, align 4
  %2921 = sub i32 %2915, %2920
  %2922 = icmp ult i32 %2915, %2920
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %14, align 1
  %2924 = and i32 %2921, 255
  %2925 = tail call i32 @llvm.ctpop.i32(i32 %2924)
  %2926 = trunc i32 %2925 to i8
  %2927 = and i8 %2926, 1
  %2928 = xor i8 %2927, 1
  store i8 %2928, i8* %21, align 1
  %2929 = xor i32 %2920, %2915
  %2930 = xor i32 %2929, %2921
  %2931 = lshr i32 %2930, 4
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  store i8 %2933, i8* %26, align 1
  %2934 = icmp eq i32 %2921, 0
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %29, align 1
  %2936 = lshr i32 %2921, 31
  %2937 = trunc i32 %2936 to i8
  store i8 %2937, i8* %32, align 1
  %2938 = lshr i32 %2915, 31
  %2939 = lshr i32 %2920, 31
  %2940 = xor i32 %2939, %2938
  %2941 = xor i32 %2936, %2938
  %2942 = add nuw nsw i32 %2941, %2940
  %2943 = icmp eq i32 %2942, 2
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %38, align 1
  %.v190 = select i1 %2934, i64 68, i64 18
  %2945 = add i64 %2912, %.v190
  store i64 %2945, i64* %3, align 8
  br i1 %2934, label %block_.L_401565, label %block_401533

block_401533:                                     ; preds = %block_401504
  store i64 1, i64* %RAX.i1202, align 8
  %2946 = add i64 %2910, -2104
  %2947 = add i64 %2945, 11
  store i64 %2947, i64* %3, align 8
  %2948 = inttoptr i64 %2946 to i32*
  %2949 = load i32, i32* %2948, align 4
  %2950 = zext i32 %2949 to i64
  %2951 = and i64 %2950, 31
  %2952 = trunc i64 %2951 to i32
  store i64 %2951, i64* %RCX.i1175, align 8
  store i8 0, i8* %14, align 1
  %2953 = tail call i32 @llvm.ctpop.i32(i32 %2952)
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  %2956 = xor i8 %2955, 1
  store i8 %2956, i8* %21, align 1
  %2957 = icmp eq i32 %2952, 0
  %2958 = zext i1 %2957 to i8
  store i8 %2958, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2959 = add i64 %2945, 16
  store i64 %2959, i64* %3, align 8
  %2960 = trunc i32 %2949 to i5
  switch i5 %2960, label %2961 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %2969
  ]

; <label>:2961:                                   ; preds = %block_401533
  %2962 = and i64 %2950, 31
  %2963 = add nuw nsw i64 %2962, 4294967295
  %2964 = and i64 %2963, 4294967295
  %2965 = shl i64 1, %2964
  %2966 = trunc i64 %2965 to i32
  %2967 = icmp slt i32 %2966, 0
  %2968 = shl i32 %2966, 1
  br label %2969

; <label>:2969:                                   ; preds = %block_401533, %2961
  %2970 = phi i1 [ %2967, %2961 ], [ false, %block_401533 ]
  %2971 = phi i32 [ %2968, %2961 ], [ 2, %block_401533 ]
  %2972 = zext i32 %2971 to i64
  store i64 %2972, i64* %RAX.i1202, align 8
  %2973 = zext i1 %2970 to i8
  store i8 %2973, i8* %14, align 1
  %2974 = and i32 %2971, 254
  %2975 = tail call i32 @llvm.ctpop.i32(i32 %2974)
  %2976 = trunc i32 %2975 to i8
  %2977 = and i8 %2976, 1
  %2978 = xor i8 %2977, 1
  store i8 %2978, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2979 = icmp eq i32 %2971, 0
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %29, align 1
  %2981 = lshr i32 %2971, 31
  %2982 = trunc i32 %2981 to i8
  store i8 %2982, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %2969, %block_401533
  %2983 = phi i32 [ %2971, %2969 ], [ 1, %block_401533 ]
  %2984 = add i64 %2910, -24
  %2985 = add i64 %2945, 20
  store i64 %2985, i64* %3, align 8
  %2986 = inttoptr i64 %2984 to i64*
  %2987 = load i64, i64* %2986, align 8
  store i64 %2987, i64* %RDX.i1213, align 8
  %2988 = add i64 %2945, 26
  store i64 %2988, i64* %3, align 8
  %2989 = load i32, i32* %2948, align 4
  %2990 = sext i32 %2989 to i64
  %2991 = ashr i64 %2990, 4
  %2992 = lshr i64 %2991, 1
  %2993 = trunc i64 %2991 to i8
  %2994 = and i8 %2993, 1
  %2995 = trunc i64 %2992 to i32
  %2996 = and i64 %2992, 4294967295
  store i64 %2996, i64* %RSI.i1000, align 8
  store i8 %2994, i8* %14, align 1
  %2997 = and i32 %2995, 255
  %2998 = tail call i32 @llvm.ctpop.i32(i32 %2997)
  %2999 = trunc i32 %2998 to i8
  %3000 = and i8 %2999, 1
  %3001 = xor i8 %3000, 1
  store i8 %3001, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3002 = icmp eq i32 %2995, 0
  %3003 = zext i1 %3002 to i8
  store i8 %3003, i8* %29, align 1
  %3004 = lshr i64 %2991, 32
  %3005 = trunc i64 %3004 to i8
  %3006 = and i8 %3005, 1
  store i8 %3006, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %sext157 = shl i64 %2992, 32
  %3007 = ashr exact i64 %sext157, 32
  store i64 %3007, i64* %RDI.i779, align 8
  %3008 = ashr exact i64 %sext157, 30
  %3009 = add i64 %2987, %3008
  %3010 = add i64 %2945, 35
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3009 to i32*
  %3012 = load i32, i32* %3011, align 4
  %3013 = or i32 %3012, %2983
  %3014 = zext i32 %3013 to i64
  store i64 %3014, i64* %RAX.i1202, align 8
  store i8 0, i8* %14, align 1
  %3015 = and i32 %3013, 255
  %3016 = tail call i32 @llvm.ctpop.i32(i32 %3015)
  %3017 = trunc i32 %3016 to i8
  %3018 = and i8 %3017, 1
  %3019 = xor i8 %3018, 1
  store i8 %3019, i8* %21, align 1
  %3020 = icmp eq i32 %3013, 0
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %29, align 1
  %3022 = lshr i32 %3013, 31
  %3023 = trunc i32 %3022 to i8
  store i8 %3023, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3024 = add i64 %2945, 38
  store i64 %3024, i64* %3, align 8
  store i32 %3013, i32* %3011, align 4
  %3025 = load i64, i64* %RBP.i, align 8
  %3026 = add i64 %3025, -2128
  %3027 = load i64, i64* %3, align 8
  %3028 = add i64 %3027, 6
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3026 to i32*
  %3030 = load i32, i32* %3029, align 4
  %3031 = zext i32 %3030 to i64
  store i64 %3031, i64* %RAX.i1202, align 8
  %3032 = add i64 %3025, -2124
  %3033 = add i64 %3027, 12
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to i32*
  store i32 %3030, i32* %3034, align 4
  %.pre141 = load i64, i64* %3, align 8
  %.pre142 = load i64, i64* %RBP.i, align 8
  br label %block_.L_401565

block_.L_401565:                                  ; preds = %routine_shll__cl___eax.exit, %block_401504
  %3035 = phi i64 [ %.pre142, %routine_shll__cl___eax.exit ], [ %2910, %block_401504 ]
  %3036 = phi i64 [ %.pre141, %routine_shll__cl___eax.exit ], [ %2945, %block_401504 ]
  %3037 = add i64 %3035, -2104
  %3038 = add i64 %3036, 11
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3037 to i32*
  %3040 = load i32, i32* %3039, align 4
  %3041 = add i32 %3040, 1
  %3042 = zext i32 %3041 to i64
  store i64 %3042, i64* %RAX.i1202, align 8
  %3043 = icmp eq i32 %3040, -1
  %3044 = icmp eq i32 %3041, 0
  %3045 = or i1 %3043, %3044
  %3046 = zext i1 %3045 to i8
  store i8 %3046, i8* %14, align 1
  %3047 = and i32 %3041, 255
  %3048 = tail call i32 @llvm.ctpop.i32(i32 %3047)
  %3049 = trunc i32 %3048 to i8
  %3050 = and i8 %3049, 1
  %3051 = xor i8 %3050, 1
  store i8 %3051, i8* %21, align 1
  %3052 = xor i32 %3041, %3040
  %3053 = lshr i32 %3052, 4
  %3054 = trunc i32 %3053 to i8
  %3055 = and i8 %3054, 1
  store i8 %3055, i8* %26, align 1
  %3056 = zext i1 %3044 to i8
  store i8 %3056, i8* %29, align 1
  %3057 = lshr i32 %3041, 31
  %3058 = trunc i32 %3057 to i8
  store i8 %3058, i8* %32, align 1
  %3059 = lshr i32 %3040, 31
  %3060 = xor i32 %3057, %3059
  %3061 = add nuw nsw i32 %3060, %3057
  %3062 = icmp eq i32 %3061, 2
  %3063 = zext i1 %3062 to i8
  store i8 %3063, i8* %38, align 1
  %3064 = add i64 %3036, 20
  store i64 %3064, i64* %3, align 8
  store i32 %3041, i32* %3039, align 4
  %3065 = load i64, i64* %3, align 8
  %3066 = add i64 %3065, -135
  store i64 %3066, i64* %3, align 8
  br label %block_.L_4014f2

block_.L_40157e:                                  ; preds = %block_.L_4014f2
  %3067 = add i64 %2883, 5
  store i64 %3067, i64* %3, align 8
  br label %block_.L_401583

block_.L_401583:                                  ; preds = %block_.L_40157e, %block_.L_401496
  %3068 = phi i64 [ %2742, %block_.L_401496 ], [ %3067, %block_.L_40157e ]
  %3069 = phi i64 [ %2668, %block_.L_401496 ], [ %2847, %block_.L_40157e ]
  %3070 = add i64 %3068, -961
  store i64 %3070, i64* %3, align 8
  br label %block_.L_4011c2

block_.L_401588:                                  ; preds = %block_401491, %block_401325
  %3071 = phi i64 [ %2141, %block_401325 ], [ %2668, %block_401491 ]
  %storemerge39 = phi i64 [ %2179, %block_401325 ], [ %2706, %block_401491 ]
  %3072 = add i64 %3071, -32
  %3073 = add i64 %storemerge39, 4
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3072 to i32*
  %3075 = load i32, i32* %3074, align 4
  %3076 = add i32 %3075, -4
  %3077 = icmp ult i32 %3075, 4
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %14, align 1
  %3079 = and i32 %3076, 255
  %3080 = tail call i32 @llvm.ctpop.i32(i32 %3079)
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  %3083 = xor i8 %3082, 1
  store i8 %3083, i8* %21, align 1
  %3084 = xor i32 %3076, %3075
  %3085 = lshr i32 %3084, 4
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  store i8 %3087, i8* %26, align 1
  %3088 = icmp eq i32 %3076, 0
  %3089 = zext i1 %3088 to i8
  store i8 %3089, i8* %29, align 1
  %3090 = lshr i32 %3076, 31
  %3091 = trunc i32 %3090 to i8
  store i8 %3091, i8* %32, align 1
  %3092 = lshr i32 %3075, 31
  %3093 = xor i32 %3090, %3092
  %3094 = add nuw nsw i32 %3093, %3092
  %3095 = icmp eq i32 %3094, 2
  %3096 = zext i1 %3095 to i8
  store i8 %3096, i8* %38, align 1
  %3097 = icmp ne i8 %3091, 0
  %3098 = xor i1 %3097, %3095
  %.v178 = select i1 %3098, i64 47, i64 10
  %3099 = add i64 %storemerge39, %.v178
  store i64 %3099, i64* %3, align 8
  br i1 %3098, label %block_.L_4015b7, label %block_401592

block_401592:                                     ; preds = %block_.L_401588
  store i64 ptrtoint (%G__0x415a21_type* @G__0x415a21 to i64), i64* %RSI.i1000, align 8
  %3100 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*), align 8
  store i64 %3100, i64* %RDI.i779, align 8
  %3101 = add i64 %3071, -2132
  %3102 = add i64 %3099, 24
  store i64 %3102, i64* %3, align 8
  %3103 = inttoptr i64 %3101 to i32*
  %3104 = load i32, i32* %3103, align 4
  %3105 = zext i32 %3104 to i64
  store i64 %3105, i64* %RDX.i1213, align 8
  store i8 0, i8* %AL.i656, align 1
  %3106 = add i64 %3099, -3170
  %3107 = add i64 %3099, 31
  %3108 = load i64, i64* %6, align 8
  %3109 = add i64 %3108, -8
  %3110 = inttoptr i64 %3109 to i64*
  store i64 %3107, i64* %3110, align 8
  store i64 %3109, i64* %6, align 8
  store i64 %3106, i64* %3, align 8
  %3111 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.10)
  %3112 = load i64, i64* %RBP.i, align 8
  %3113 = add i64 %3112, -2164
  %3114 = load i32, i32* %EAX.i1191.pre-phi, align 4
  %3115 = load i64, i64* %3, align 8
  %3116 = add i64 %3115, 6
  store i64 %3116, i64* %3, align 8
  %3117 = inttoptr i64 %3113 to i32*
  store i32 %3114, i32* %3117, align 4
  %.pre133 = load i64, i64* %RBP.i, align 8
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_4015b7

block_.L_4015b7:                                  ; preds = %block_401592, %block_.L_401588
  %3118 = phi i64 [ %3099, %block_.L_401588 ], [ %.pre134, %block_401592 ]
  %3119 = phi i64 [ %3071, %block_.L_401588 ], [ %.pre133, %block_401592 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.10, %block_.L_401588 ], [ %3111, %block_401592 ]
  %3120 = add i64 %3119, -2100
  %3121 = add i64 %3118, 6
  store i64 %3121, i64* %3, align 8
  %3122 = inttoptr i64 %3120 to i32*
  %3123 = load i32, i32* %3122, align 4
  %3124 = shl i32 %3123, 1
  %3125 = icmp slt i32 %3123, 0
  %3126 = icmp slt i32 %3124, 0
  %3127 = xor i1 %3125, %3126
  %3128 = zext i32 %3124 to i64
  store i64 %3128, i64* %RAX.i1202, align 8
  %.lobit40 = lshr i32 %3123, 31
  %3129 = trunc i32 %.lobit40 to i8
  store i8 %3129, i8* %14, align 1
  %3130 = and i32 %3124, 254
  %3131 = tail call i32 @llvm.ctpop.i32(i32 %3130)
  %3132 = trunc i32 %3131 to i8
  %3133 = and i8 %3132, 1
  %3134 = xor i8 %3133, 1
  store i8 %3134, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3135 = icmp eq i32 %3124, 0
  %3136 = zext i1 %3135 to i8
  store i8 %3136, i8* %29, align 1
  %3137 = lshr i32 %3123, 30
  %3138 = trunc i32 %3137 to i8
  %3139 = and i8 %3138, 1
  store i8 %3139, i8* %32, align 1
  %3140 = zext i1 %3127 to i8
  store i8 %3140, i8* %38, align 1
  %3141 = add i64 %3118, 14
  store i64 %3141, i64* %3, align 8
  store i32 %3124, i32* %3122, align 4
  %3142 = load i64, i64* %RBP.i, align 8
  %3143 = add i64 %3142, -2100
  %3144 = load i64, i64* %3, align 8
  %3145 = add i64 %3144, 6
  store i64 %3145, i64* %3, align 8
  %3146 = inttoptr i64 %3143 to i32*
  %3147 = load i32, i32* %3146, align 4
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RAX.i1202, align 8
  %3149 = add i64 %3142, -28
  %3150 = add i64 %3144, 9
  store i64 %3150, i64* %3, align 8
  %3151 = inttoptr i64 %3149 to i32*
  %3152 = load i32, i32* %3151, align 4
  %3153 = sub i32 %3147, %3152
  %3154 = icmp ult i32 %3147, %3152
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %14, align 1
  %3156 = and i32 %3153, 255
  %3157 = tail call i32 @llvm.ctpop.i32(i32 %3156)
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  %3160 = xor i8 %3159, 1
  store i8 %3160, i8* %21, align 1
  %3161 = xor i32 %3152, %3147
  %3162 = xor i32 %3161, %3153
  %3163 = lshr i32 %3162, 4
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  store i8 %3165, i8* %26, align 1
  %3166 = icmp eq i32 %3153, 0
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %29, align 1
  %3168 = lshr i32 %3153, 31
  %3169 = trunc i32 %3168 to i8
  store i8 %3169, i8* %32, align 1
  %3170 = lshr i32 %3147, 31
  %3171 = lshr i32 %3152, 31
  %3172 = xor i32 %3171, %3170
  %3173 = xor i32 %3168, %3170
  %3174 = add nuw nsw i32 %3173, %3172
  %3175 = icmp eq i32 %3174, 2
  %3176 = zext i1 %3175 to i8
  store i8 %3176, i8* %38, align 1
  %3177 = icmp ne i8 %3169, 0
  %3178 = xor i1 %3177, %3175
  %.demorgan = or i1 %3166, %3178
  %.v179 = select i1 %.demorgan, i64 15, i64 28
  %3179 = add i64 %3144, %.v179
  store i64 %3179, i64* %3, align 8
  br i1 %.demorgan, label %block_4015d5, label %block_.L_4015e2

block_4015d5:                                     ; preds = %block_.L_4015b7
  %3180 = add i64 %3142, -2132
  %3181 = add i64 %3179, 7
  store i64 %3181, i64* %3, align 8
  %3182 = inttoptr i64 %3180 to i32*
  %3183 = load i32, i32* %3182, align 4
  store i8 0, i8* %14, align 1
  %3184 = and i32 %3183, 255
  %3185 = tail call i32 @llvm.ctpop.i32(i32 %3184)
  %3186 = trunc i32 %3185 to i8
  %3187 = and i8 %3186, 1
  %3188 = xor i8 %3187, 1
  store i8 %3188, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3189 = icmp eq i32 %3183, 0
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %29, align 1
  %3191 = lshr i32 %3183, 31
  %3192 = trunc i32 %3191 to i8
  store i8 %3192, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v184 = select i1 %3189, i64 13, i64 18
  %3193 = add i64 %3179, %.v184
  store i64 %3193, i64* %3, align 8
  br i1 %3189, label %block_.L_4015e2, label %block_.L_4015e7

block_.L_4015e2:                                  ; preds = %block_4015d5, %block_.L_4015b7
  %3194 = phi i64 [ %3193, %block_4015d5 ], [ %3179, %block_.L_4015b7 ]
  %3195 = add i64 %3142, -32
  %3196 = add i64 %3194, 14
  store i64 %3196, i64* %3, align 8
  %3197 = inttoptr i64 %3195 to i32*
  %3198 = load i32, i32* %3197, align 4
  %3199 = add i32 %3198, -4
  %3200 = icmp ult i32 %3198, 4
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %14, align 1
  %3202 = and i32 %3199, 255
  %3203 = tail call i32 @llvm.ctpop.i32(i32 %3202)
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  %3206 = xor i8 %3205, 1
  store i8 %3206, i8* %21, align 1
  %3207 = xor i32 %3199, %3198
  %3208 = lshr i32 %3207, 4
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  store i8 %3210, i8* %26, align 1
  %3211 = icmp eq i32 %3199, 0
  %3212 = zext i1 %3211 to i8
  store i8 %3212, i8* %29, align 1
  %3213 = lshr i32 %3199, 31
  %3214 = trunc i32 %3213 to i8
  store i8 %3214, i8* %32, align 1
  %3215 = lshr i32 %3198, 31
  %3216 = xor i32 %3213, %3215
  %3217 = add nuw nsw i32 %3216, %3215
  %3218 = icmp eq i32 %3217, 2
  %3219 = zext i1 %3218 to i8
  store i8 %3219, i8* %38, align 1
  %3220 = icmp ne i8 %3214, 0
  %3221 = xor i1 %3220, %3218
  %.v180 = select i1 %3221, i64 51, i64 20
  %3222 = add i64 %3194, %.v180
  store i64 %3222, i64* %3, align 8
  br i1 %3221, label %block_.L_401615, label %block_4015f6

block_.L_4015e7:                                  ; preds = %block_4015d5
  %3223 = add i64 %3193, -1317
  store i64 %3223, i64* %3, align 8
  br label %block_.L_4010c2

block_4015f6:                                     ; preds = %block_.L_4015e2
  store i64 ptrtoint (%G__0x415a39_type* @G__0x415a39 to i64), i64* %RSI.i1000, align 8
  %3224 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*), align 8
  store i64 %3224, i64* %RDI.i779, align 8
  store i8 0, i8* %AL.i656, align 1
  %3225 = add i64 %3222, -3270
  %3226 = add i64 %3222, 25
  %3227 = load i64, i64* %6, align 8
  %3228 = add i64 %3227, -8
  %3229 = inttoptr i64 %3228 to i64*
  store i64 %3226, i64* %3229, align 8
  store i64 %3228, i64* %6, align 8
  store i64 %3225, i64* %3, align 8
  %3230 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.29)
  %3231 = load i64, i64* %RBP.i, align 8
  %3232 = add i64 %3231, -2168
  %3233 = load i32, i32* %EAX.i1191.pre-phi, align 4
  %3234 = load i64, i64* %3, align 8
  %3235 = add i64 %3234, 6
  store i64 %3235, i64* %3, align 8
  %3236 = inttoptr i64 %3232 to i32*
  store i32 %3233, i32* %3236, align 4
  %.pre135 = load i64, i64* %RBP.i, align 8
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_401615

block_.L_401615:                                  ; preds = %block_4015f6, %block_.L_4015e2
  %3237 = phi i64 [ %3222, %block_.L_4015e2 ], [ %.pre136, %block_4015f6 ]
  %3238 = phi i64 [ %3142, %block_.L_4015e2 ], [ %.pre135, %block_4015f6 ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.29, %block_.L_4015e2 ], [ %3230, %block_4015f6 ]
  %3239 = add i64 %3238, -2108
  %3240 = add i64 %3237, 10
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i32*
  store i32 0, i32* %3241, align 4
  %3242 = load i64, i64* %RBP.i, align 8
  %3243 = add i64 %3242, -2104
  %3244 = load i64, i64* %3, align 8
  %3245 = add i64 %3244, 10
  store i64 %3245, i64* %3, align 8
  %3246 = inttoptr i64 %3243 to i32*
  store i32 0, i32* %3246, align 4
  %DL.i34 = bitcast %union.anon* %49 to i8*
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_401629

block_.L_401629:                                  ; preds = %block_.L_401666, %block_.L_401615
  %3247 = phi i64 [ %3431, %block_.L_401666 ], [ %.pre137, %block_.L_401615 ]
  %3248 = load i64, i64* %RBP.i, align 8
  %3249 = add i64 %3248, -2104
  %3250 = add i64 %3247, 6
  store i64 %3250, i64* %3, align 8
  %3251 = inttoptr i64 %3249 to i32*
  %3252 = load i32, i32* %3251, align 4
  %3253 = zext i32 %3252 to i64
  store i64 %3253, i64* %RAX.i1202, align 8
  %3254 = add i64 %3248, -28
  %3255 = add i64 %3247, 9
  store i64 %3255, i64* %3, align 8
  %3256 = inttoptr i64 %3254 to i32*
  %3257 = load i32, i32* %3256, align 4
  %3258 = sub i32 %3252, %3257
  %3259 = icmp ult i32 %3252, %3257
  %3260 = zext i1 %3259 to i8
  store i8 %3260, i8* %14, align 1
  %3261 = and i32 %3258, 255
  %3262 = tail call i32 @llvm.ctpop.i32(i32 %3261)
  %3263 = trunc i32 %3262 to i8
  %3264 = and i8 %3263, 1
  %3265 = xor i8 %3264, 1
  store i8 %3265, i8* %21, align 1
  %3266 = xor i32 %3257, %3252
  %3267 = xor i32 %3266, %3258
  %3268 = lshr i32 %3267, 4
  %3269 = trunc i32 %3268 to i8
  %3270 = and i8 %3269, 1
  store i8 %3270, i8* %26, align 1
  %3271 = icmp eq i32 %3258, 0
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %29, align 1
  %3273 = lshr i32 %3258, 31
  %3274 = trunc i32 %3273 to i8
  store i8 %3274, i8* %32, align 1
  %3275 = lshr i32 %3252, 31
  %3276 = lshr i32 %3257, 31
  %3277 = xor i32 %3276, %3275
  %3278 = xor i32 %3273, %3275
  %3279 = add nuw nsw i32 %3278, %3277
  %3280 = icmp eq i32 %3279, 2
  %3281 = zext i1 %3280 to i8
  store i8 %3281, i8* %38, align 1
  %3282 = icmp ne i8 %3274, 0
  %3283 = xor i1 %3282, %3280
  %.v181 = select i1 %3283, i64 15, i64 139
  %3284 = add i64 %3247, %.v181
  store i64 %3284, i64* %3, align 8
  br i1 %3283, label %block_401638, label %block_.L_4016b4

block_401638:                                     ; preds = %block_.L_401629
  %3285 = add i64 %3284, 5
  br label %block_.L_40163d

block_.L_40163d:                                  ; preds = %block_401652, %block_401638
  %3286 = phi i64 [ %3248, %block_401638 ], [ %.pre139, %block_401652 ]
  %storemerge41 = phi i64 [ %3285, %block_401638 ], [ %3335, %block_401652 ]
  %3287 = add i64 %3286, -2108
  %3288 = add i64 %storemerge41, 7
  store i64 %3288, i64* %3, align 8
  %3289 = inttoptr i64 %3287 to i32*
  %3290 = load i32, i32* %3289, align 4
  %3291 = sext i32 %3290 to i64
  store i64 %3291, i64* %RAX.i1202, align 8
  %3292 = shl nsw i64 %3291, 2
  %3293 = add i64 %3286, -2096
  %3294 = add i64 %3293, %3292
  %3295 = add i64 %storemerge41, 15
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to i32*
  %3297 = load i32, i32* %3296, align 4
  store i8 0, i8* %14, align 1
  %3298 = and i32 %3297, 255
  %3299 = tail call i32 @llvm.ctpop.i32(i32 %3298)
  %3300 = trunc i32 %3299 to i8
  %3301 = and i8 %3300, 1
  %3302 = xor i8 %3301, 1
  store i8 %3302, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3303 = icmp eq i32 %3297, 0
  %3304 = zext i1 %3303 to i8
  store i8 %3304, i8* %29, align 1
  %3305 = lshr i32 %3297, 31
  %3306 = trunc i32 %3305 to i8
  store i8 %3306, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v183 = select i1 %3303, i64 21, i64 41
  %3307 = add i64 %storemerge41, %.v183
  store i64 %3307, i64* %3, align 8
  br i1 %3303, label %block_401652, label %block_.L_401666

block_401652:                                     ; preds = %block_.L_40163d
  %3308 = add i64 %3307, 6
  store i64 %3308, i64* %3, align 8
  %3309 = load i32, i32* %3289, align 4
  %3310 = add i32 %3309, 1
  %3311 = zext i32 %3310 to i64
  store i64 %3311, i64* %RAX.i1202, align 8
  %3312 = icmp eq i32 %3309, -1
  %3313 = icmp eq i32 %3310, 0
  %3314 = or i1 %3312, %3313
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %14, align 1
  %3316 = and i32 %3310, 255
  %3317 = tail call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  store i8 %3320, i8* %21, align 1
  %3321 = xor i32 %3310, %3309
  %3322 = lshr i32 %3321, 4
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  store i8 %3324, i8* %26, align 1
  %3325 = zext i1 %3313 to i8
  store i8 %3325, i8* %29, align 1
  %3326 = lshr i32 %3310, 31
  %3327 = trunc i32 %3326 to i8
  store i8 %3327, i8* %32, align 1
  %3328 = lshr i32 %3309, 31
  %3329 = xor i32 %3326, %3328
  %3330 = add nuw nsw i32 %3329, %3326
  %3331 = icmp eq i32 %3330, 2
  %3332 = zext i1 %3331 to i8
  store i8 %3332, i8* %38, align 1
  %3333 = add i64 %3307, 15
  store i64 %3333, i64* %3, align 8
  store i32 %3310, i32* %3289, align 4
  %3334 = load i64, i64* %3, align 8
  %3335 = add i64 %3334, -36
  %3336 = add i64 %3334, 5
  store i64 %3336, i64* %3, align 8
  %.pre139 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40163d

block_.L_401666:                                  ; preds = %block_.L_40163d
  %3337 = add i64 %3307, 7
  store i64 %3337, i64* %3, align 8
  %3338 = load i32, i32* %3289, align 4
  %3339 = sext i32 %3338 to i64
  store i64 %3339, i64* %RAX.i1202, align 8
  %3340 = shl nsw i64 %3339, 2
  %3341 = add i64 %3293, %3340
  %3342 = add i64 %3307, 14
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3341 to i32*
  %3344 = load i32, i32* %3343, align 4
  %3345 = add i32 %3344, -1
  %3346 = zext i32 %3345 to i64
  store i64 %3346, i64* %RCX.i1175, align 8
  %3347 = icmp ne i32 %3344, 0
  %3348 = zext i1 %3347 to i8
  store i8 %3348, i8* %14, align 1
  %3349 = and i32 %3345, 255
  %3350 = tail call i32 @llvm.ctpop.i32(i32 %3349)
  %3351 = trunc i32 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = xor i8 %3352, 1
  store i8 %3353, i8* %21, align 1
  %3354 = xor i32 %3344, 16
  %3355 = xor i32 %3354, %3345
  %3356 = lshr i32 %3355, 4
  %3357 = trunc i32 %3356 to i8
  %3358 = and i8 %3357, 1
  store i8 %3358, i8* %26, align 1
  %3359 = icmp eq i32 %3345, 0
  %3360 = zext i1 %3359 to i8
  store i8 %3360, i8* %29, align 1
  %3361 = lshr i32 %3345, 31
  %3362 = trunc i32 %3361 to i8
  store i8 %3362, i8* %32, align 1
  %3363 = lshr i32 %3344, 31
  %3364 = xor i32 %3361, %3363
  %3365 = xor i32 %3361, 1
  %3366 = add nuw nsw i32 %3364, %3365
  %3367 = icmp eq i32 %3366, 2
  %3368 = zext i1 %3367 to i8
  store i8 %3368, i8* %38, align 1
  %3369 = add i64 %3307, 24
  store i64 %3369, i64* %3, align 8
  store i32 %3345, i32* %3343, align 4
  %3370 = load i64, i64* %RBP.i, align 8
  %3371 = add i64 %3370, -2108
  %3372 = load i64, i64* %3, align 8
  %3373 = add i64 %3372, 6
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3371 to i32*
  %3375 = load i32, i32* %3374, align 4
  %3376 = zext i32 %3375 to i64
  store i64 %3376, i64* %RCX.i1175, align 8
  %3377 = trunc i32 %3375 to i8
  store i8 %3377, i8* %DL.i34, align 1
  %3378 = add i64 %3370, -2144
  %3379 = add i64 %3372, 15
  store i64 %3379, i64* %3, align 8
  %3380 = inttoptr i64 %3378 to i64*
  %3381 = load i64, i64* %3380, align 8
  store i64 %3381, i64* %RAX.i1202, align 8
  %3382 = add i64 %3370, -8
  %3383 = add i64 %3372, 19
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3382 to i64*
  %3385 = load i64, i64* %3384, align 8
  store i64 %3385, i64* %RSI.i1000, align 8
  %3386 = add i64 %3370, -2104
  %3387 = add i64 %3372, 26
  store i64 %3387, i64* %3, align 8
  %3388 = inttoptr i64 %3386 to i32*
  %3389 = load i32, i32* %3388, align 4
  %3390 = sext i32 %3389 to i64
  store i64 %3390, i64* %RDI.i779, align 8
  %3391 = shl nsw i64 %3390, 2
  %3392 = add i64 %3391, %3385
  %3393 = add i64 %3372, 29
  store i64 %3393, i64* %3, align 8
  %3394 = inttoptr i64 %3392 to i32*
  %3395 = load i32, i32* %3394, align 4
  %3396 = zext i32 %3395 to i64
  store i64 %3396, i64* %RCX.i1175, align 8
  store i64 %3396, i64* %RSI.i1000, align 8
  %3397 = add i64 %3381, %3396
  %3398 = add i64 %3372, 34
  store i64 %3398, i64* %3, align 8
  %3399 = inttoptr i64 %3397 to i8*
  store i8 %3377, i8* %3399, align 1
  %3400 = load i64, i64* %RBP.i, align 8
  %3401 = add i64 %3400, -2104
  %3402 = load i64, i64* %3, align 8
  %3403 = add i64 %3402, 6
  store i64 %3403, i64* %3, align 8
  %3404 = inttoptr i64 %3401 to i32*
  %3405 = load i32, i32* %3404, align 4
  %3406 = add i32 %3405, 1
  %3407 = zext i32 %3406 to i64
  store i64 %3407, i64* %RAX.i1202, align 8
  %3408 = icmp eq i32 %3405, -1
  %3409 = icmp eq i32 %3406, 0
  %3410 = or i1 %3408, %3409
  %3411 = zext i1 %3410 to i8
  store i8 %3411, i8* %14, align 1
  %3412 = and i32 %3406, 255
  %3413 = tail call i32 @llvm.ctpop.i32(i32 %3412)
  %3414 = trunc i32 %3413 to i8
  %3415 = and i8 %3414, 1
  %3416 = xor i8 %3415, 1
  store i8 %3416, i8* %21, align 1
  %3417 = xor i32 %3406, %3405
  %3418 = lshr i32 %3417, 4
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  store i8 %3420, i8* %26, align 1
  %3421 = zext i1 %3409 to i8
  store i8 %3421, i8* %29, align 1
  %3422 = lshr i32 %3406, 31
  %3423 = trunc i32 %3422 to i8
  store i8 %3423, i8* %32, align 1
  %3424 = lshr i32 %3405, 31
  %3425 = xor i32 %3422, %3424
  %3426 = add nuw nsw i32 %3425, %3422
  %3427 = icmp eq i32 %3426, 2
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %38, align 1
  %3429 = add i64 %3402, 15
  store i64 %3429, i64* %3, align 8
  store i32 %3406, i32* %3404, align 4
  %3430 = load i64, i64* %3, align 8
  %3431 = add i64 %3430, -134
  store i64 %3431, i64* %3, align 8
  br label %block_.L_401629

block_.L_4016b4:                                  ; preds = %block_.L_401629
  %3432 = add i64 %3248, -2108
  %3433 = add i64 %3284, 10
  store i64 %3433, i64* %3, align 8
  %3434 = inttoptr i64 %3432 to i32*
  %3435 = load i32, i32* %3434, align 4
  %3436 = add i32 %3435, -256
  %3437 = icmp ult i32 %3435, 256
  %3438 = zext i1 %3437 to i8
  store i8 %3438, i8* %14, align 1
  %3439 = and i32 %3436, 255
  %3440 = tail call i32 @llvm.ctpop.i32(i32 %3439)
  %3441 = trunc i32 %3440 to i8
  %3442 = and i8 %3441, 1
  %3443 = xor i8 %3442, 1
  store i8 %3443, i8* %21, align 1
  %3444 = xor i32 %3436, %3435
  %3445 = lshr i32 %3444, 4
  %3446 = trunc i32 %3445 to i8
  %3447 = and i8 %3446, 1
  store i8 %3447, i8* %26, align 1
  %3448 = icmp eq i32 %3436, 0
  %3449 = zext i1 %3448 to i8
  store i8 %3449, i8* %29, align 1
  %3450 = lshr i32 %3436, 31
  %3451 = trunc i32 %3450 to i8
  store i8 %3451, i8* %32, align 1
  %3452 = lshr i32 %3435, 31
  %3453 = xor i32 %3450, %3452
  %3454 = add nuw nsw i32 %3453, %3452
  %3455 = icmp eq i32 %3454, 2
  %3456 = zext i1 %3455 to i8
  store i8 %3456, i8* %38, align 1
  %3457 = icmp ne i8 %3451, 0
  %3458 = xor i1 %3457, %3455
  %.v182 = select i1 %3458, i64 26, i64 16
  %3459 = add i64 %3284, %.v182
  store i64 %3459, i64* %3, align 8
  br i1 %3458, label %block_.L_4016ce, label %block_4016c4

block_4016c4:                                     ; preds = %block_.L_4016b4
  store i64 1005, i64* %RDI.i779, align 8
  %3460 = add i64 %3459, 14428
  %3461 = add i64 %3459, 10
  %3462 = load i64, i64* %6, align 8
  %3463 = add i64 %3462, -8
  %3464 = inttoptr i64 %3463 to i64*
  store i64 %3461, i64* %3464, align 8
  store i64 %3463, i64* %6, align 8
  store i64 %3460, i64* %3, align 8
  %call2_4016c9 = tail call %struct.Memory* @sub_404f20.BZ2_bz__AssertH__fail(%struct.State* nonnull %0, i64 %3460, %struct.Memory* %MEMORY.31)
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_4016ce

block_.L_4016ce:                                  ; preds = %block_4016c4, %block_.L_4016b4
  %3465 = phi i64 [ %3459, %block_.L_4016b4 ], [ %.pre138, %block_4016c4 ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.31, %block_.L_4016b4 ], [ %call2_4016c9, %block_4016c4 ]
  %3466 = load i64, i64* %6, align 8
  %3467 = add i64 %3466, 2176
  store i64 %3467, i64* %6, align 8
  %3468 = icmp ugt i64 %3466, -2177
  %3469 = zext i1 %3468 to i8
  store i8 %3469, i8* %14, align 1
  %3470 = trunc i64 %3467 to i32
  %3471 = and i32 %3470, 255
  %3472 = tail call i32 @llvm.ctpop.i32(i32 %3471)
  %3473 = trunc i32 %3472 to i8
  %3474 = and i8 %3473, 1
  %3475 = xor i8 %3474, 1
  store i8 %3475, i8* %21, align 1
  %3476 = xor i64 %3467, %3466
  %3477 = lshr i64 %3476, 4
  %3478 = trunc i64 %3477 to i8
  %3479 = and i8 %3478, 1
  store i8 %3479, i8* %26, align 1
  %3480 = icmp eq i64 %3467, 0
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %29, align 1
  %3482 = lshr i64 %3467, 63
  %3483 = trunc i64 %3482 to i8
  store i8 %3483, i8* %32, align 1
  %3484 = lshr i64 %3466, 63
  %3485 = xor i64 %3482, %3484
  %3486 = add nuw nsw i64 %3485, %3482
  %3487 = icmp eq i64 %3486, 2
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %38, align 1
  %3489 = add i64 %3465, 8
  store i64 %3489, i64* %3, align 8
  %3490 = add i64 %3466, 2184
  %3491 = inttoptr i64 %3467 to i64*
  %3492 = load i64, i64* %3491, align 8
  store i64 %3492, i64* %RBP.i, align 8
  store i64 %3490, i64* %6, align 8
  %3493 = add i64 %3465, 9
  store i64 %3493, i64* %3, align 8
  %3494 = inttoptr i64 %3490 to i64*
  %3495 = load i64, i64* %3494, align 8
  store i64 %3495, i64* %3, align 8
  %3496 = add i64 %3466, 2192
  store i64 %3496, i64* %6, align 8
  ret %struct.Memory* %MEMORY.34
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
define %struct.Memory* @routine_subq__0x880___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -2176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 2176
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x860__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2144
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %8, 4
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
define %struct.Memory* @routine_jl_.L_400d92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x415992___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x415992_type* @G__0x415992 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x618d80___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x618d80_type* @G_0x618d80 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x864__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x838__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x101__MINUS0x838__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -257
  %10 = icmp ult i32 %8, 257
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
define %struct.Memory* @routine_jge_.L_400dd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x838__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x430__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1072
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x838__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
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
define %struct.Memory* @routine_movl__eax__MINUS0x838__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400d9c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_jge_.L_400e24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x860__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x838__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
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
define %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x430__rbp__rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1072
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x430__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1072
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ddc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x100__MINUS0x838__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -256
  %10 = icmp ult i32 %8, 256
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
define %struct.Memory* @routine_jge_.L_400e6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x430__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1072
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x830__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2096
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x838__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400ec4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x430__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1072
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x430__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1072
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x430__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1072
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400e78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_400f48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x83c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2108
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x83c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x840__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2112
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x840__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2112
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
define %struct.Memory* @routine_movl_MINUS0x838__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
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
define %struct.Memory* @routine_movslq_MINUS0x840__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2112
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
define %struct.Memory* @routine_jmpq_.L_400ece(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x20___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 32, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl__eax__MINUS0x868__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x868__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
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
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x858__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x858__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -2136
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
define %struct.Memory* @routine_jge_.L_400fac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401012(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x430__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1072
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 31
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RAX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x838__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x430__rbp__rdi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1072
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x5___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 36
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RDX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl___rsi__rdi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rsi__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20__MINUS0x838__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -32
  %10 = icmp ult i32 %8, 32
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
define %struct.Memory* @routine_jge_.L_4010b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_andl__0x1f___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 31
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RDX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_MINUS0x838__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = shl i32 %5, 1
  %9 = icmp slt i32 %5, 0
  %10 = icmp slt i32 %8, 0
  %11 = xor i1 %9, %10
  %12 = zext i32 %8 to i64
  store i64 %12, i64* %4, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %5, 31
  %14 = trunc i32 %.lobit to i8
  store i8 %14, i8* %13, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %16 = and i32 %8, 254
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  store i8 %20, i8* %15, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %5, 30
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  store i8 %28, i8* %25, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %30 = zext i1 %11 to i8
  store i8 %30, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__r8d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %R8D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_sarl__0x5___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 36
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RDI, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edi___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl___rsi__r9_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx____rsi__r9_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_MINUS0x838__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDI, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__edi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = add i32 %5, %9
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = icmp ult i32 %10, %9
  %13 = icmp ult i32 %10, %5
  %14 = or i1 %12, %13
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %10, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %6, %4
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %10
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %10, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %10, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %5, 31
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
define %struct.Memory* @routine_xorl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, -1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl___rsi__r9_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rsi__r9_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %R9, align 8
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
define %struct.Memory* @routine_jmpq_.L_40101c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x834__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_4010f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x415a0a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x415a0a_type* @G__0x415a0a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x834__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2100
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
define %struct.Memory* @routine_movl__eax__MINUS0x86c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x83c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4011ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1f___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 31
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = and i64 %6, %4
  %10 = trunc i64 %9 to i32
  store i64 %9, i64* %RDX, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %10, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %10, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
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
define %struct.Memory* @routine_je_.L_401150(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x83c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x834__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2100
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x840__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_401186(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_addl_MINUS0x840__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2112
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
define %struct.Memory* @routine_movl__eax__MINUS0x840__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2112
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x83c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x840__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401105(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x854__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x848__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x848__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2120
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
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
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
define %struct.Memory* @routine_movl_MINUS0x840__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 36
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RSI, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
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
define %struct.Memory* @routine_movl___rdx__rdi_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x840__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1f___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = and i32 %5, 31
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %8, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x86d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2157
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = and i64 %6, %4
  %10 = trunc i64 %9 to i32
  store i64 %9, i64* %RSI, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %10, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %10, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movb_MINUS0x86d__rbp____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2157
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x86e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2158
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40122f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x840__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2112
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
define %struct.Memory* @routine_andl__0x1f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 31
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %7, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
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
define %struct.Memory* @routine_setne__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x86e__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2158
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
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
define %struct.Memory* @routine_jne_.L_401242(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401256(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4011d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x840__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2112
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
define %struct.Memory* @routine_je_.L_401307(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40128b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x840__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x5___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 36
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %11, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %11, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i64 %7, 32
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
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
define %struct.Memory* @routine_cmpl__0xffffffff____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, 1
  %12 = icmp ne i32 %10, -1
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
  %21 = xor i32 %10, 16
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
  %33 = lshr i32 %10, 31
  %34 = xor i32 %33, 1
  %35 = xor i32 %30, %33
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4012b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x20___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -33
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
define %struct.Memory* @routine_jmpq_.L_4012be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_401302(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401307(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x844__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2116
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x844__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_40132a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_401588(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40132f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x86f__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2159
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x86f__rbp____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2159
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x870__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2160
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40138d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_MINUS0x870__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4013a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4013b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401473(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4013e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i32 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i32 %10, 31
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401417(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40141c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %CL, align 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
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
define %struct.Memory* @routine_jne_.L_40145a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40146e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401473(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x848__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_401496(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x844__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -2116
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
define %struct.Memory* @routine_jle_.L_401583(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = or i1 %6, %13
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %14, i64 %rel_off1, i64 %rel_off2
  %16 = add i64 %.v, %3
  store i64 %16, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x844__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2116
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x854__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2132
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
define %struct.Memory* @routine_movl__eax__MINUS0x854__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x844__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2116
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
define %struct.Memory* @routine_movl_MINUS0x848__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2120
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
define %struct.Memory* @routine_callq_.fallbackQSort3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x84c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x848__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -2120
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
define %struct.Memory* @routine_jg_.L_40157e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x838__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x850__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2128
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x850__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -2128
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
define %struct.Memory* @routine_je_.L_401565(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x838__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
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
define %struct.Memory* @routine_movl_MINUS0x838__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl___rdx__rdi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = trunc i64 %3 to i32
  %11 = inttoptr i64 %7 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdx__rdi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x850__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40156a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4014f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401583(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4011c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_4015b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x415a21___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x415a21_type* @G__0x415a21 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x854__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2132
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
define %struct.Memory* @routine_movl__eax__MINUS0x874__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x834__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2100
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
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %.lobit = lshr i32 %6, 31
  %13 = trunc i32 %.lobit to i8
  store i8 %13, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = and i32 %7, 254
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  store i8 %19, i8* %14, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %25 = lshr i32 %6, 30
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  store i8 %27, i8* %24, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %29 = zext i1 %10 to i8
  store i8 %29, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x834__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2100
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4015e2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x854__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4015e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4015ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4010c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_401615(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x415a39___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x415a39_type* @G__0x415a39 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x878__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4016b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40163d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x830__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2096
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_401666(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x830__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2096
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl_MINUS0x83c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2108
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
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
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
define %struct.Memory* @routine_movl___rsi__rdi_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movb__dl____rax__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_401629(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x100__MINUS0x83c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -256
  %10 = icmp ult i32 %8, 256
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
define %struct.Memory* @routine_jl_.L_4016ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3ed___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1005, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.BZ2_bz__AssertH__fail(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x880___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 2176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -2177
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
