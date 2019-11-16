; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x663038_type = type <{ [4 x i8] }>
%G_0x66303c_type = type <{ [4 x i8] }>
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
@G_0x663038 = local_unnamed_addr global %G_0x663038_type zeroinitializer
@G_0x66303c = local_unnamed_addr global %G_0x66303c_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @malloc(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446f90.read_i32(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_447000.read_i16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_447070.read_offset(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_447130.indexfile_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401410.fread_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4471f0.SSIClose(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @load_indexfile(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSI.i311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %39 = add i64 %7, -28
  store i64 %39, i64* %RSI.i311, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i341 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, -24
  %42 = load i64, i64* %RDI.i341, align 8
  %43 = add i64 %10, 15
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -28
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 7
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 6, i32* %49, align 4
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i64*
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %RDI.i341, align 8
  %56 = add i64 %55, 104
  %57 = add i64 %52, 12
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i64*
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -16
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 4
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %60 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %RDI.i341, align 8
  %65 = add i64 %64, 112
  %66 = add i64 %61, 12
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i64*
  store i64 0, i64* %67, align 8
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -16
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 4
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %RDI.i341, align 8
  %74 = add i64 %73, 120
  %75 = add i64 %70, 12
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i64*
  store i64 0, i64* %76, align 8
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -16
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %78 to i64*
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %RDI.i341, align 8
  %83 = add i64 %82, 128
  %84 = add i64 %79, 15
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i64*
  store i64 0, i64* %85, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -16
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 4
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %87 to i64*
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %RDI.i341, align 8
  %92 = add i64 %91, 136
  %93 = add i64 %88, 15
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %92 to i64*
  store i64 0, i64* %94, align 8
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -16
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 4
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %96 to i64*
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %RDI.i341, align 8
  %101 = add i64 %100, 12
  %102 = add i64 %97, 10
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %101 to i16*
  store i16 0, i16* %103, align 2
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -16
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %RDI.i341, align 8
  %110 = add i64 %106, 7
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %109 to i64*
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %RDI.i341, align 8
  %113 = add i64 %106, 1533
  %114 = add i64 %106, 12
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, -8
  %117 = inttoptr i64 %116 to i64*
  store i64 %114, i64* %117, align 8
  store i64 %116, i64* %6, align 8
  store i64 %113, i64* %3, align 8
  %call2_44699a = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64 %113, %struct.Memory* %2)
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i831 = bitcast %union.anon* %118 to i32*
  %119 = load i32, i32* %EAX.i831, align 4
  %120 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %121 = and i32 %119, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %126 = icmp eq i32 %119, 0
  %127 = zext i1 %126 to i8
  store i8 %127, i8* %29, align 1
  %128 = lshr i32 %119, 31
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v185 = select i1 %126, i64 9, i64 21
  %130 = add i64 %120, %.v185
  store i64 %130, i64* %3, align 8
  br i1 %126, label %block_4469a8, label %block_.L_4469b4

block_4469a8:                                     ; preds = %entry
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -28
  %133 = add i64 %130, 7
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %132 to i32*
  store i32 5, i32* %134, align 4
  %135 = load i64, i64* %3, align 8
  %136 = add i64 %135, 1469
  %.pre182 = getelementptr inbounds %union.anon, %union.anon* %118, i64 0, i32 0
  br label %block_.L_446f6c

block_.L_4469b4:                                  ; preds = %entry
  %RAX.i824 = getelementptr inbounds %union.anon, %union.anon* %118, i64 0, i32 0
  %137 = load i64, i64* %RBP.i, align 8
  %138 = add i64 %137, -20
  %139 = add i64 %130, 3
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %138 to i32*
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RAX.i824, align 8
  %143 = load i32, i32* bitcast (%G_0x663038_type* @G_0x663038 to i32*), align 8
  %144 = sub i32 %141, %143
  %145 = icmp ult i32 %141, %143
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %14, align 1
  %147 = and i32 %144, 255
  %148 = tail call i32 @llvm.ctpop.i32(i32 %147)
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  %151 = xor i8 %150, 1
  store i8 %151, i8* %21, align 1
  %152 = xor i32 %143, %141
  %153 = xor i32 %152, %144
  %154 = lshr i32 %153, 4
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  store i8 %156, i8* %26, align 1
  %157 = icmp eq i32 %144, 0
  %158 = zext i1 %157 to i8
  store i8 %158, i8* %29, align 1
  %159 = lshr i32 %144, 31
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %32, align 1
  %161 = lshr i32 %141, 31
  %162 = lshr i32 %143, 31
  %163 = xor i32 %162, %161
  %164 = xor i32 %159, %161
  %165 = add nuw nsw i32 %164, %163
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %38, align 1
  %.v186 = select i1 %157, i64 44, i64 16
  %168 = add i64 %130, %.v186
  store i64 %168, i64* %3, align 8
  br i1 %157, label %block_.L_4469e0, label %block_4469c4

block_4469c4:                                     ; preds = %block_.L_4469b4
  %169 = add i64 %168, 3
  store i64 %169, i64* %3, align 8
  %170 = load i32, i32* %140, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RAX.i824, align 8
  %172 = load i32, i32* bitcast (%G_0x66303c_type* @G_0x66303c to i32*), align 8
  %173 = sub i32 %170, %172
  %174 = icmp ult i32 %170, %172
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %14, align 1
  %176 = and i32 %173, 255
  %177 = tail call i32 @llvm.ctpop.i32(i32 %176)
  %178 = trunc i32 %177 to i8
  %179 = and i8 %178, 1
  %180 = xor i8 %179, 1
  store i8 %180, i8* %21, align 1
  %181 = xor i32 %172, %170
  %182 = xor i32 %181, %173
  %183 = lshr i32 %182, 4
  %184 = trunc i32 %183 to i8
  %185 = and i8 %184, 1
  store i8 %185, i8* %26, align 1
  %186 = icmp eq i32 %173, 0
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %29, align 1
  %188 = lshr i32 %173, 31
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %32, align 1
  %190 = lshr i32 %170, 31
  %191 = lshr i32 %172, 31
  %192 = xor i32 %191, %190
  %193 = xor i32 %188, %190
  %194 = add nuw nsw i32 %193, %192
  %195 = icmp eq i32 %194, 2
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %38, align 1
  %.v187 = select i1 %186, i64 28, i64 16
  %197 = add i64 %168, %.v187
  store i64 %197, i64* %3, align 8
  br i1 %186, label %block_.L_4469e0, label %block_4469d4

block_4469d4:                                     ; preds = %block_4469c4
  %198 = add i64 %137, -28
  %199 = add i64 %197, 7
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  store i32 5, i32* %200, align 4
  %201 = load i64, i64* %3, align 8
  %202 = add i64 %201, 1425
  br label %block_.L_446f6c

block_.L_4469e0:                                  ; preds = %block_4469c4, %block_.L_4469b4
  %203 = phi i64 [ %197, %block_4469c4 ], [ %168, %block_.L_4469b4 ]
  %204 = add i64 %137, -16
  %205 = add i64 %203, 4
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i64*
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %RAX.i824, align 8
  %208 = add i64 %203, 7
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i64*
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %RDI.i341, align 8
  %211 = add i64 %203, 11
  store i64 %211, i64* %3, align 8
  %212 = load i64, i64* %206, align 8
  %213 = add i64 %212, 8
  store i64 %213, i64* %RAX.i824, align 8
  %214 = icmp ugt i64 %212, -9
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %14, align 1
  %216 = trunc i64 %213 to i32
  %217 = and i32 %216, 255
  %218 = tail call i32 @llvm.ctpop.i32(i32 %217)
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = xor i8 %220, 1
  store i8 %221, i8* %21, align 1
  %222 = xor i64 %213, %212
  %223 = lshr i64 %222, 4
  %224 = trunc i64 %223 to i8
  %225 = and i8 %224, 1
  store i8 %225, i8* %26, align 1
  %226 = icmp eq i64 %213, 0
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %29, align 1
  %228 = lshr i64 %213, 63
  %229 = trunc i64 %228 to i8
  store i8 %229, i8* %32, align 1
  %230 = lshr i64 %212, 63
  %231 = xor i64 %228, %230
  %232 = add nuw nsw i64 %231, %228
  %233 = icmp eq i64 %232, 2
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %38, align 1
  store i64 %213, i64* %RSI.i311, align 8
  %235 = add i64 %203, 1456
  %236 = add i64 %203, 23
  %237 = load i64, i64* %6, align 8
  %238 = add i64 %237, -8
  %239 = inttoptr i64 %238 to i64*
  store i64 %236, i64* %239, align 8
  store i64 %238, i64* %6, align 8
  store i64 %235, i64* %3, align 8
  %call2_4469f2 = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %235, %struct.Memory* %call2_44699a)
  %240 = load i32, i32* %EAX.i831, align 4
  %241 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %242 = and i32 %240, 255
  %243 = tail call i32 @llvm.ctpop.i32(i32 %242)
  %244 = trunc i32 %243 to i8
  %245 = and i8 %244, 1
  %246 = xor i8 %245, 1
  store i8 %246, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %247 = icmp eq i32 %240, 0
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %29, align 1
  %249 = lshr i32 %240, 31
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v188 = select i1 %247, i64 9, i64 14
  %251 = add i64 %241, %.v188
  store i64 %251, i64* %3, align 8
  br i1 %247, label %block_446a00, label %block_.L_446a05

block_446a00:                                     ; preds = %block_.L_4469e0
  %252 = add i64 %251, 1388
  br label %block_.L_446f6c

block_.L_446a05:                                  ; preds = %block_.L_4469e0
  %253 = load i64, i64* %RBP.i, align 8
  %254 = add i64 %253, -16
  %255 = add i64 %251, 4
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %RAX.i824, align 8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i788 = getelementptr inbounds %union.anon, %union.anon* %258, i64 0, i32 0
  %259 = add i64 %257, 8
  %260 = add i64 %251, 7
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %259 to i32*
  %262 = load i32, i32* %261, align 4
  %263 = and i32 %262, 2
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RCX.i788, align 8
  %ECX.i783 = bitcast %union.anon* %258 to i32*
  store i8 0, i8* %14, align 1
  %265 = tail call i32 @llvm.ctpop.i32(i32 %263)
  %266 = trunc i32 %265 to i8
  %267 = xor i8 %266, 1
  store i8 %267, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit183 = lshr exact i32 %263, 1
  %268 = trunc i32 %.lobit183 to i8
  %269 = xor i8 %268, 1
  store i8 %269, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %270 = icmp eq i8 %269, 0
  %.v189 = select i1 %270, i64 38, i64 19
  %271 = add i64 %251, %.v189
  store i64 %271, i64* %3, align 8
  br i1 %270, label %block_.L_446a2b, label %block_446a18

block_446a18:                                     ; preds = %block_.L_446a05
  %272 = add i64 %271, 4
  store i64 %272, i64* %3, align 8
  %273 = load i64, i64* %256, align 8
  store i64 %273, i64* %RAX.i824, align 8
  %274 = add i64 %273, 8
  %275 = add i64 %271, 7
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 1
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RCX.i788, align 8
  store i8 0, i8* %14, align 1
  %280 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %281 = trunc i32 %280 to i8
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %283 = icmp eq i32 %278, 0
  %284 = trunc i32 %278 to i8
  %285 = xor i8 %284, 1
  store i8 %285, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v190 = select i1 %283, i64 31, i64 19
  %286 = add i64 %271, %.v190
  store i64 %286, i64* %3, align 8
  br i1 %283, label %block_.L_446a37, label %block_.L_446a2b

block_.L_446a2b:                                  ; preds = %block_446a18, %block_.L_446a05
  %287 = phi i64 [ %286, %block_446a18 ], [ %271, %block_.L_446a05 ]
  %288 = add i64 %253, -28
  %289 = add i64 %287, 7
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  store i32 7, i32* %290, align 4
  %291 = load i64, i64* %3, align 8
  %292 = add i64 %291, 1338
  br label %block_.L_446f6c

block_.L_446a37:                                  ; preds = %block_446a18
  store i64 0, i64* %RAX.i824, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RCX.i788, align 8
  %RDX.i760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %293 = add i64 %286, 11
  store i64 %293, i64* %3, align 8
  %294 = load i64, i64* %256, align 8
  store i64 %294, i64* %RDX.i760, align 8
  %295 = add i64 %294, 8
  %296 = add i64 %286, 14
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %298, 2
  store i8 0, i8* %14, align 1
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = xor i8 %301, 1
  store i8 %302, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit184 = lshr exact i32 %299, 1
  %303 = trunc i32 %.lobit184 to i8
  %304 = xor i8 %303, 1
  store i8 %304, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %305 = zext i32 %.lobit184 to i64
  store i64 %305, i64* %RSI.i311, align 8
  %DIL.i745 = bitcast %union.anon* %40 to i8*
  %306 = trunc i32 %.lobit184 to i8
  store i8 %306, i8* %DIL.i745, align 1
  %307 = add i64 %286, 32
  store i64 %307, i64* %3, align 8
  %308 = load i64, i64* %256, align 8
  store i64 %308, i64* %RDX.i760, align 8
  %309 = add i64 %308, 96
  %310 = add i64 %286, 36
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i8*
  store i8 %306, i8* %311, align 1
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -16
  %314 = load i64, i64* %3, align 8
  %315 = add i64 %314, 4
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %313 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RDX.i760, align 8
  %318 = add i64 %317, 8
  %319 = add i64 %314, 7
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = and i32 %321, 1
  %323 = zext i32 %322 to i64
  store i64 %323, i64* %RSI.i311, align 8
  store i8 0, i8* %14, align 1
  %324 = tail call i32 @llvm.ctpop.i32(i32 %322)
  %325 = trunc i32 %324 to i8
  %326 = xor i8 %325, 1
  store i8 %326, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %327 = trunc i32 %322 to i8
  %328 = xor i8 %327, 1
  store i8 %328, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %329 = load i32, i32* %ECX.i783, align 4
  %330 = zext i32 %329 to i64
  %331 = icmp eq i8 %328, 0
  %332 = load i64, i64* %RAX.i824, align 8
  %333 = select i1 %331, i64 %330, i64 %332
  %334 = and i64 %333, 4294967295
  store i64 %334, i64* %RAX.i824, align 8
  %335 = trunc i64 %333 to i8
  store i8 %335, i8* %DIL.i745, align 1
  %336 = add i64 %314, 23
  store i64 %336, i64* %3, align 8
  %337 = load i64, i64* %316, align 8
  store i64 %337, i64* %RDX.i760, align 8
  %338 = add i64 %337, 97
  %339 = add i64 %314, 27
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i8*
  store i8 %335, i8* %340, align 1
  %341 = load i64, i64* %RBP.i, align 8
  %342 = add i64 %341, -16
  %343 = load i64, i64* %3, align 8
  %344 = add i64 %343, 4
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %342 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %RDX.i760, align 8
  %347 = add i64 %343, 7
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i64*
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %RDI.i341, align 8
  %350 = add i64 %343, 11
  store i64 %350, i64* %3, align 8
  %351 = load i64, i64* %345, align 8
  %352 = add i64 %351, 12
  store i64 %352, i64* %RDX.i760, align 8
  %353 = icmp ugt i64 %351, -13
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %14, align 1
  %355 = trunc i64 %352 to i32
  %356 = and i32 %355, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356)
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %21, align 1
  %361 = xor i64 %352, %351
  %362 = lshr i64 %361, 4
  %363 = trunc i64 %362 to i8
  %364 = and i8 %363, 1
  store i8 %364, i8* %26, align 1
  %365 = icmp eq i64 %352, 0
  %366 = zext i1 %365 to i8
  store i8 %366, i8* %29, align 1
  %367 = lshr i64 %352, 63
  %368 = trunc i64 %367 to i8
  store i8 %368, i8* %32, align 1
  %369 = lshr i64 %351, 63
  %370 = xor i64 %367, %369
  %371 = add nuw nsw i64 %370, %367
  %372 = icmp eq i64 %371, 2
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %38, align 1
  store i64 %352, i64* %RSI.i311, align 8
  %374 = add i64 %343, 1418
  %375 = add i64 %343, 23
  %376 = load i64, i64* %6, align 8
  %377 = add i64 %376, -8
  %378 = inttoptr i64 %377 to i64*
  store i64 %375, i64* %378, align 8
  store i64 %377, i64* %6, align 8
  store i64 %374, i64* %3, align 8
  %call2_446a88 = tail call %struct.Memory* @sub_447000.read_i16(%struct.State* nonnull %0, i64 %374, %struct.Memory* %call2_4469f2)
  %379 = load i32, i32* %EAX.i831, align 4
  %380 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %381 = and i32 %379, 255
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %386 = icmp eq i32 %379, 0
  %387 = zext i1 %386 to i8
  store i8 %387, i8* %29, align 1
  %388 = lshr i32 %379, 31
  %389 = trunc i32 %388 to i8
  store i8 %389, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v191 = select i1 %386, i64 9, i64 14
  %390 = add i64 %380, %.v191
  store i64 %390, i64* %3, align 8
  br i1 %386, label %block_446a96, label %block_.L_446a9b

block_446a96:                                     ; preds = %block_.L_446a37
  %391 = add i64 %390, 1238
  br label %block_.L_446f6c

block_.L_446a9b:                                  ; preds = %block_.L_446a37
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -16
  %394 = add i64 %390, 4
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i64*
  %396 = load i64, i64* %395, align 8
  store i64 %396, i64* %RAX.i824, align 8
  %397 = add i64 %390, 7
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i64*
  %399 = load i64, i64* %398, align 8
  store i64 %399, i64* %RDI.i341, align 8
  %400 = add i64 %390, 11
  store i64 %400, i64* %3, align 8
  %401 = load i64, i64* %395, align 8
  %402 = add i64 %401, 16
  store i64 %402, i64* %RAX.i824, align 8
  %403 = icmp ugt i64 %401, -17
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %14, align 1
  %405 = trunc i64 %402 to i32
  %406 = and i32 %405, 255
  %407 = tail call i32 @llvm.ctpop.i32(i32 %406)
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %410 = xor i8 %409, 1
  store i8 %410, i8* %21, align 1
  %411 = xor i64 %401, 16
  %412 = xor i64 %411, %402
  %413 = lshr i64 %412, 4
  %414 = trunc i64 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %26, align 1
  %416 = icmp eq i64 %402, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %29, align 1
  %418 = lshr i64 %402, 63
  %419 = trunc i64 %418 to i8
  store i8 %419, i8* %32, align 1
  %420 = lshr i64 %401, 63
  %421 = xor i64 %418, %420
  %422 = add nuw nsw i64 %421, %418
  %423 = icmp eq i64 %422, 2
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %38, align 1
  store i64 %402, i64* %RSI.i311, align 8
  %425 = add i64 %390, 1269
  %426 = add i64 %390, 23
  %427 = load i64, i64* %6, align 8
  %428 = add i64 %427, -8
  %429 = inttoptr i64 %428 to i64*
  store i64 %426, i64* %429, align 8
  store i64 %428, i64* %6, align 8
  store i64 %425, i64* %3, align 8
  %call2_446aad = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %425, %struct.Memory* %call2_446a88)
  %430 = load i32, i32* %EAX.i831, align 4
  %431 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %432 = and i32 %430, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %437 = icmp eq i32 %430, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %29, align 1
  %439 = lshr i32 %430, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v192 = select i1 %437, i64 9, i64 14
  %441 = add i64 %431, %.v192
  store i64 %441, i64* %3, align 8
  br i1 %437, label %block_446abb, label %block_.L_446ac0

block_446abb:                                     ; preds = %block_.L_446a9b
  %442 = add i64 %441, 1201
  br label %block_.L_446f6c

block_.L_446ac0:                                  ; preds = %block_.L_446a9b
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -16
  %445 = add i64 %441, 4
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i64*
  %447 = load i64, i64* %446, align 8
  store i64 %447, i64* %RAX.i824, align 8
  %448 = add i64 %441, 7
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %RDI.i341, align 8
  %451 = add i64 %441, 11
  store i64 %451, i64* %3, align 8
  %452 = load i64, i64* %446, align 8
  %453 = add i64 %452, 20
  store i64 %453, i64* %RAX.i824, align 8
  %454 = icmp ugt i64 %452, -21
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %14, align 1
  %456 = trunc i64 %453 to i32
  %457 = and i32 %456, 255
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457)
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  store i8 %461, i8* %21, align 1
  %462 = xor i64 %452, 16
  %463 = xor i64 %462, %453
  %464 = lshr i64 %463, 4
  %465 = trunc i64 %464 to i8
  %466 = and i8 %465, 1
  store i8 %466, i8* %26, align 1
  %467 = icmp eq i64 %453, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %29, align 1
  %469 = lshr i64 %453, 63
  %470 = trunc i64 %469 to i8
  store i8 %470, i8* %32, align 1
  %471 = lshr i64 %452, 63
  %472 = xor i64 %469, %471
  %473 = add nuw nsw i64 %472, %469
  %474 = icmp eq i64 %473, 2
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %38, align 1
  store i64 %453, i64* %RSI.i311, align 8
  %476 = add i64 %441, 1232
  %477 = add i64 %441, 23
  %478 = load i64, i64* %6, align 8
  %479 = add i64 %478, -8
  %480 = inttoptr i64 %479 to i64*
  store i64 %477, i64* %480, align 8
  store i64 %479, i64* %6, align 8
  store i64 %476, i64* %3, align 8
  %call2_446ad2 = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %476, %struct.Memory* %call2_446aad)
  %481 = load i32, i32* %EAX.i831, align 4
  %482 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %483 = and i32 %481, 255
  %484 = tail call i32 @llvm.ctpop.i32(i32 %483)
  %485 = trunc i32 %484 to i8
  %486 = and i8 %485, 1
  %487 = xor i8 %486, 1
  store i8 %487, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %488 = icmp eq i32 %481, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %29, align 1
  %490 = lshr i32 %481, 31
  %491 = trunc i32 %490 to i8
  store i8 %491, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v193 = select i1 %488, i64 9, i64 14
  %492 = add i64 %482, %.v193
  store i64 %492, i64* %3, align 8
  br i1 %488, label %block_446ae0, label %block_.L_446ae5

block_446ae0:                                     ; preds = %block_.L_446ac0
  %493 = add i64 %492, 1164
  br label %block_.L_446f6c

block_.L_446ae5:                                  ; preds = %block_.L_446ac0
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -16
  %496 = add i64 %492, 4
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i64*
  %498 = load i64, i64* %497, align 8
  store i64 %498, i64* %RAX.i824, align 8
  %499 = add i64 %492, 7
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i64*
  %501 = load i64, i64* %500, align 8
  store i64 %501, i64* %RDI.i341, align 8
  %502 = add i64 %492, 11
  store i64 %502, i64* %3, align 8
  %503 = load i64, i64* %497, align 8
  %504 = add i64 %503, 24
  store i64 %504, i64* %RAX.i824, align 8
  %505 = icmp ugt i64 %503, -25
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %14, align 1
  %507 = trunc i64 %504 to i32
  %508 = and i32 %507, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %21, align 1
  %513 = xor i64 %503, 16
  %514 = xor i64 %513, %504
  %515 = lshr i64 %514, 4
  %516 = trunc i64 %515 to i8
  %517 = and i8 %516, 1
  store i8 %517, i8* %26, align 1
  %518 = icmp eq i64 %504, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %29, align 1
  %520 = lshr i64 %504, 63
  %521 = trunc i64 %520 to i8
  store i8 %521, i8* %32, align 1
  %522 = lshr i64 %503, 63
  %523 = xor i64 %520, %522
  %524 = add nuw nsw i64 %523, %520
  %525 = icmp eq i64 %524, 2
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %38, align 1
  store i64 %504, i64* %RSI.i311, align 8
  %527 = add i64 %492, 1195
  %528 = add i64 %492, 23
  %529 = load i64, i64* %6, align 8
  %530 = add i64 %529, -8
  %531 = inttoptr i64 %530 to i64*
  store i64 %528, i64* %531, align 8
  store i64 %530, i64* %6, align 8
  store i64 %527, i64* %3, align 8
  %call2_446af7 = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %527, %struct.Memory* %call2_446ad2)
  %532 = load i32, i32* %EAX.i831, align 4
  %533 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %534 = and i32 %532, 255
  %535 = tail call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  store i8 %538, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %539 = icmp eq i32 %532, 0
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %29, align 1
  %541 = lshr i32 %532, 31
  %542 = trunc i32 %541 to i8
  store i8 %542, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v194 = select i1 %539, i64 9, i64 14
  %543 = add i64 %533, %.v194
  store i64 %543, i64* %3, align 8
  br i1 %539, label %block_446b05, label %block_.L_446b0a

block_446b05:                                     ; preds = %block_.L_446ae5
  %544 = add i64 %543, 1127
  br label %block_.L_446f6c

block_.L_446b0a:                                  ; preds = %block_.L_446ae5
  %545 = load i64, i64* %RBP.i, align 8
  %546 = add i64 %545, -16
  %547 = add i64 %543, 4
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i64*
  %549 = load i64, i64* %548, align 8
  store i64 %549, i64* %RAX.i824, align 8
  %550 = add i64 %543, 7
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %549 to i64*
  %552 = load i64, i64* %551, align 8
  store i64 %552, i64* %RDI.i341, align 8
  %553 = add i64 %543, 11
  store i64 %553, i64* %3, align 8
  %554 = load i64, i64* %548, align 8
  %555 = add i64 %554, 28
  store i64 %555, i64* %RAX.i824, align 8
  %556 = icmp ugt i64 %554, -29
  %557 = zext i1 %556 to i8
  store i8 %557, i8* %14, align 1
  %558 = trunc i64 %555 to i32
  %559 = and i32 %558, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559)
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %21, align 1
  %564 = xor i64 %554, 16
  %565 = xor i64 %564, %555
  %566 = lshr i64 %565, 4
  %567 = trunc i64 %566 to i8
  %568 = and i8 %567, 1
  store i8 %568, i8* %26, align 1
  %569 = icmp eq i64 %555, 0
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %29, align 1
  %571 = lshr i64 %555, 63
  %572 = trunc i64 %571 to i8
  store i8 %572, i8* %32, align 1
  %573 = lshr i64 %554, 63
  %574 = xor i64 %571, %573
  %575 = add nuw nsw i64 %574, %571
  %576 = icmp eq i64 %575, 2
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %38, align 1
  store i64 %555, i64* %RSI.i311, align 8
  %578 = add i64 %543, 1158
  %579 = add i64 %543, 23
  %580 = load i64, i64* %6, align 8
  %581 = add i64 %580, -8
  %582 = inttoptr i64 %581 to i64*
  store i64 %579, i64* %582, align 8
  store i64 %581, i64* %6, align 8
  store i64 %578, i64* %3, align 8
  %call2_446b1c = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %578, %struct.Memory* %call2_446af7)
  %583 = load i32, i32* %EAX.i831, align 4
  %584 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %585 = and i32 %583, 255
  %586 = tail call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %590 = icmp eq i32 %583, 0
  %591 = zext i1 %590 to i8
  store i8 %591, i8* %29, align 1
  %592 = lshr i32 %583, 31
  %593 = trunc i32 %592 to i8
  store i8 %593, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v195 = select i1 %590, i64 9, i64 14
  %594 = add i64 %584, %.v195
  store i64 %594, i64* %3, align 8
  br i1 %590, label %block_446b2a, label %block_.L_446b2f

block_446b2a:                                     ; preds = %block_.L_446b0a
  %595 = add i64 %594, 1090
  br label %block_.L_446f6c

block_.L_446b2f:                                  ; preds = %block_.L_446b0a
  %596 = load i64, i64* %RBP.i, align 8
  %597 = add i64 %596, -16
  %598 = add i64 %594, 4
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i64*
  %600 = load i64, i64* %599, align 8
  store i64 %600, i64* %RAX.i824, align 8
  %601 = add i64 %594, 7
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i64*
  %603 = load i64, i64* %602, align 8
  store i64 %603, i64* %RDI.i341, align 8
  %604 = add i64 %594, 11
  store i64 %604, i64* %3, align 8
  %605 = load i64, i64* %599, align 8
  %606 = add i64 %605, 32
  store i64 %606, i64* %RAX.i824, align 8
  %607 = icmp ugt i64 %605, -33
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %14, align 1
  %609 = trunc i64 %606 to i32
  %610 = and i32 %609, 255
  %611 = tail call i32 @llvm.ctpop.i32(i32 %610)
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  %614 = xor i8 %613, 1
  store i8 %614, i8* %21, align 1
  %615 = xor i64 %606, %605
  %616 = lshr i64 %615, 4
  %617 = trunc i64 %616 to i8
  %618 = and i8 %617, 1
  store i8 %618, i8* %26, align 1
  %619 = icmp eq i64 %606, 0
  %620 = zext i1 %619 to i8
  store i8 %620, i8* %29, align 1
  %621 = lshr i64 %606, 63
  %622 = trunc i64 %621 to i8
  store i8 %622, i8* %32, align 1
  %623 = lshr i64 %605, 63
  %624 = xor i64 %621, %623
  %625 = add nuw nsw i64 %624, %621
  %626 = icmp eq i64 %625, 2
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %38, align 1
  store i64 %606, i64* %RSI.i311, align 8
  %628 = add i64 %594, 1121
  %629 = add i64 %594, 23
  %630 = load i64, i64* %6, align 8
  %631 = add i64 %630, -8
  %632 = inttoptr i64 %631 to i64*
  store i64 %629, i64* %632, align 8
  store i64 %631, i64* %6, align 8
  store i64 %628, i64* %3, align 8
  %call2_446b41 = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %628, %struct.Memory* %call2_446b1c)
  %633 = load i32, i32* %EAX.i831, align 4
  %634 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %635 = and i32 %633, 255
  %636 = tail call i32 @llvm.ctpop.i32(i32 %635)
  %637 = trunc i32 %636 to i8
  %638 = and i8 %637, 1
  %639 = xor i8 %638, 1
  store i8 %639, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %640 = icmp eq i32 %633, 0
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %29, align 1
  %642 = lshr i32 %633, 31
  %643 = trunc i32 %642 to i8
  store i8 %643, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v196 = select i1 %640, i64 9, i64 14
  %644 = add i64 %634, %.v196
  store i64 %644, i64* %3, align 8
  br i1 %640, label %block_446b4f, label %block_.L_446b54

block_446b4f:                                     ; preds = %block_.L_446b2f
  %645 = add i64 %644, 1053
  br label %block_.L_446f6c

block_.L_446b54:                                  ; preds = %block_.L_446b2f
  %646 = load i64, i64* %RBP.i, align 8
  %647 = add i64 %646, -16
  %648 = add i64 %644, 4
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i64*
  %650 = load i64, i64* %649, align 8
  store i64 %650, i64* %RAX.i824, align 8
  %651 = add i64 %644, 7
  store i64 %651, i64* %3, align 8
  %652 = inttoptr i64 %650 to i64*
  %653 = load i64, i64* %652, align 8
  store i64 %653, i64* %RDI.i341, align 8
  %654 = add i64 %644, 11
  store i64 %654, i64* %3, align 8
  %655 = load i64, i64* %649, align 8
  %656 = add i64 %655, 36
  store i64 %656, i64* %RAX.i824, align 8
  %657 = icmp ugt i64 %655, -37
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %14, align 1
  %659 = trunc i64 %656 to i32
  %660 = and i32 %659, 255
  %661 = tail call i32 @llvm.ctpop.i32(i32 %660)
  %662 = trunc i32 %661 to i8
  %663 = and i8 %662, 1
  %664 = xor i8 %663, 1
  store i8 %664, i8* %21, align 1
  %665 = xor i64 %656, %655
  %666 = lshr i64 %665, 4
  %667 = trunc i64 %666 to i8
  %668 = and i8 %667, 1
  store i8 %668, i8* %26, align 1
  %669 = icmp eq i64 %656, 0
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %29, align 1
  %671 = lshr i64 %656, 63
  %672 = trunc i64 %671 to i8
  store i8 %672, i8* %32, align 1
  %673 = lshr i64 %655, 63
  %674 = xor i64 %671, %673
  %675 = add nuw nsw i64 %674, %671
  %676 = icmp eq i64 %675, 2
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %38, align 1
  store i64 %656, i64* %RSI.i311, align 8
  %678 = add i64 %644, 1084
  %679 = add i64 %644, 23
  %680 = load i64, i64* %6, align 8
  %681 = add i64 %680, -8
  %682 = inttoptr i64 %681 to i64*
  store i64 %679, i64* %682, align 8
  store i64 %681, i64* %6, align 8
  store i64 %678, i64* %3, align 8
  %call2_446b66 = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %678, %struct.Memory* %call2_446b41)
  %683 = load i32, i32* %EAX.i831, align 4
  %684 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %685 = and i32 %683, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %690 = icmp eq i32 %683, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %29, align 1
  %692 = lshr i32 %683, 31
  %693 = trunc i32 %692 to i8
  store i8 %693, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v197 = select i1 %690, i64 9, i64 14
  %694 = add i64 %684, %.v197
  store i64 %694, i64* %3, align 8
  br i1 %690, label %block_446b74, label %block_.L_446b79

block_446b74:                                     ; preds = %block_.L_446b54
  %695 = add i64 %694, 1016
  br label %block_.L_446f6c

block_.L_446b79:                                  ; preds = %block_.L_446b54
  %696 = load i64, i64* %RBP.i, align 8
  %697 = add i64 %696, -16
  %698 = add i64 %694, 4
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i64*
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %RAX.i824, align 8
  %701 = add i64 %694, 7
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i64*
  %703 = load i64, i64* %702, align 8
  store i64 %703, i64* %RDI.i341, align 8
  %704 = add i64 %694, 11
  store i64 %704, i64* %3, align 8
  %705 = load i64, i64* %699, align 8
  %706 = add i64 %705, 40
  store i64 %706, i64* %RAX.i824, align 8
  %707 = icmp ugt i64 %705, -41
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %14, align 1
  %709 = trunc i64 %706 to i32
  %710 = and i32 %709, 255
  %711 = tail call i32 @llvm.ctpop.i32(i32 %710)
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  %714 = xor i8 %713, 1
  store i8 %714, i8* %21, align 1
  %715 = xor i64 %706, %705
  %716 = lshr i64 %715, 4
  %717 = trunc i64 %716 to i8
  %718 = and i8 %717, 1
  store i8 %718, i8* %26, align 1
  %719 = icmp eq i64 %706, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %29, align 1
  %721 = lshr i64 %706, 63
  %722 = trunc i64 %721 to i8
  store i8 %722, i8* %32, align 1
  %723 = lshr i64 %705, 63
  %724 = xor i64 %721, %723
  %725 = add nuw nsw i64 %724, %721
  %726 = icmp eq i64 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %38, align 1
  store i64 %706, i64* %RSI.i311, align 8
  %728 = add i64 %694, 1047
  %729 = add i64 %694, 23
  %730 = load i64, i64* %6, align 8
  %731 = add i64 %730, -8
  %732 = inttoptr i64 %731 to i64*
  store i64 %729, i64* %732, align 8
  store i64 %731, i64* %6, align 8
  store i64 %728, i64* %3, align 8
  %call2_446b8b = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %728, %struct.Memory* %call2_446b66)
  %733 = load i32, i32* %EAX.i831, align 4
  %734 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %735 = and i32 %733, 255
  %736 = tail call i32 @llvm.ctpop.i32(i32 %735)
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = xor i8 %738, 1
  store i8 %739, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %740 = icmp eq i32 %733, 0
  %741 = zext i1 %740 to i8
  store i8 %741, i8* %29, align 1
  %742 = lshr i32 %733, 31
  %743 = trunc i32 %742 to i8
  store i8 %743, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v198 = select i1 %740, i64 9, i64 14
  %744 = add i64 %734, %.v198
  store i64 %744, i64* %3, align 8
  br i1 %740, label %block_446b99, label %block_.L_446b9e

block_446b99:                                     ; preds = %block_.L_446b79
  %745 = add i64 %744, 979
  br label %block_.L_446f6c

block_.L_446b9e:                                  ; preds = %block_.L_446b79
  %746 = load i64, i64* %RBP.i, align 8
  %747 = add i64 %746, -16
  %748 = add i64 %744, 4
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %747 to i64*
  %750 = load i64, i64* %749, align 8
  store i64 %750, i64* %RAX.i824, align 8
  %751 = add i64 %744, 7
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i64*
  %753 = load i64, i64* %752, align 8
  store i64 %753, i64* %RDI.i341, align 8
  %754 = add i64 %744, 11
  store i64 %754, i64* %3, align 8
  %755 = load i64, i64* %749, align 8
  %756 = add i64 %755, 44
  store i64 %756, i64* %RAX.i824, align 8
  %757 = icmp ugt i64 %755, -45
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %14, align 1
  %759 = trunc i64 %756 to i32
  %760 = and i32 %759, 255
  %761 = tail call i32 @llvm.ctpop.i32(i32 %760)
  %762 = trunc i32 %761 to i8
  %763 = and i8 %762, 1
  %764 = xor i8 %763, 1
  store i8 %764, i8* %21, align 1
  %765 = xor i64 %756, %755
  %766 = lshr i64 %765, 4
  %767 = trunc i64 %766 to i8
  %768 = and i8 %767, 1
  store i8 %768, i8* %26, align 1
  %769 = icmp eq i64 %756, 0
  %770 = zext i1 %769 to i8
  store i8 %770, i8* %29, align 1
  %771 = lshr i64 %756, 63
  %772 = trunc i64 %771 to i8
  store i8 %772, i8* %32, align 1
  %773 = lshr i64 %755, 63
  %774 = xor i64 %771, %773
  %775 = add nuw nsw i64 %774, %771
  %776 = icmp eq i64 %775, 2
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %38, align 1
  store i64 %756, i64* %RSI.i311, align 8
  %778 = add i64 %744, 1010
  %779 = add i64 %744, 23
  %780 = load i64, i64* %6, align 8
  %781 = add i64 %780, -8
  %782 = inttoptr i64 %781 to i64*
  store i64 %779, i64* %782, align 8
  store i64 %781, i64* %6, align 8
  store i64 %778, i64* %3, align 8
  %call2_446bb0 = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %778, %struct.Memory* %call2_446b8b)
  %783 = load i32, i32* %EAX.i831, align 4
  %784 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %785 = and i32 %783, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %790 = icmp eq i32 %783, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %29, align 1
  %792 = lshr i32 %783, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v199 = select i1 %790, i64 9, i64 14
  %794 = add i64 %784, %.v199
  store i64 %794, i64* %3, align 8
  br i1 %790, label %block_446bbe, label %block_.L_446bc3

block_446bbe:                                     ; preds = %block_.L_446b9e
  %795 = add i64 %794, 942
  br label %block_.L_446f6c

block_.L_446bc3:                                  ; preds = %block_.L_446b9e
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -16
  %798 = add i64 %794, 4
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i64*
  %800 = load i64, i64* %799, align 8
  store i64 %800, i64* %RAX.i824, align 8
  %801 = add i64 %794, 7
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i64*
  %803 = load i64, i64* %802, align 8
  store i64 %803, i64* %RDI.i341, align 8
  %804 = add i64 %794, 11
  store i64 %804, i64* %3, align 8
  %805 = load i64, i64* %799, align 8
  store i64 %805, i64* %RAX.i824, align 8
  %CL.i537 = bitcast %union.anon* %258 to i8*
  %806 = add i64 %805, 96
  %807 = add i64 %794, 14
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i8*
  %809 = load i8, i8* %808, align 1
  store i8 %809, i8* %CL.i537, align 1
  %810 = add i64 %794, 18
  store i64 %810, i64* %3, align 8
  %811 = load i64, i64* %799, align 8
  %812 = add i64 %811, 48
  store i64 %812, i64* %RAX.i824, align 8
  %813 = icmp ugt i64 %811, -49
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %14, align 1
  %815 = trunc i64 %812 to i32
  %816 = and i32 %815, 255
  %817 = tail call i32 @llvm.ctpop.i32(i32 %816)
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  %820 = xor i8 %819, 1
  store i8 %820, i8* %21, align 1
  %821 = xor i64 %811, 16
  %822 = xor i64 %821, %812
  %823 = lshr i64 %822, 4
  %824 = trunc i64 %823 to i8
  %825 = and i8 %824, 1
  store i8 %825, i8* %26, align 1
  %826 = icmp eq i64 %812, 0
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %29, align 1
  %828 = lshr i64 %812, 63
  %829 = trunc i64 %828 to i8
  store i8 %829, i8* %32, align 1
  %830 = lshr i64 %811, 63
  %831 = xor i64 %828, %830
  %832 = add nuw nsw i64 %831, %828
  %833 = icmp eq i64 %832, 2
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %38, align 1
  %835 = sext i8 %809 to i64
  %836 = and i64 %835, 4294967295
  store i64 %836, i64* %RSI.i311, align 8
  store i64 %812, i64* %RDX.i760, align 8
  %837 = add i64 %794, 1197
  %838 = add i64 %794, 33
  %839 = load i64, i64* %6, align 8
  %840 = add i64 %839, -8
  %841 = inttoptr i64 %840 to i64*
  store i64 %838, i64* %841, align 8
  store i64 %840, i64* %6, align 8
  store i64 %837, i64* %3, align 8
  %call2_446bdf = tail call %struct.Memory* @sub_447070.read_offset(%struct.State* nonnull %0, i64 %837, %struct.Memory* %call2_446bb0)
  %842 = load i32, i32* %EAX.i831, align 4
  %843 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %844 = and i32 %842, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %849 = icmp eq i32 %842, 0
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %29, align 1
  %851 = lshr i32 %842, 31
  %852 = trunc i32 %851 to i8
  store i8 %852, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v200 = select i1 %849, i64 9, i64 14
  %853 = add i64 %843, %.v200
  store i64 %853, i64* %3, align 8
  br i1 %849, label %block_446bed, label %block_.L_446bf2

block_446bed:                                     ; preds = %block_.L_446bc3
  %854 = add i64 %853, 895
  br label %block_.L_446f6c

block_.L_446bf2:                                  ; preds = %block_.L_446bc3
  %855 = load i64, i64* %RBP.i, align 8
  %856 = add i64 %855, -16
  %857 = add i64 %853, 4
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i64*
  %859 = load i64, i64* %858, align 8
  store i64 %859, i64* %RAX.i824, align 8
  %860 = add i64 %853, 7
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i64*
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %RDI.i341, align 8
  %863 = add i64 %853, 11
  store i64 %863, i64* %3, align 8
  %864 = load i64, i64* %858, align 8
  store i64 %864, i64* %RAX.i824, align 8
  %865 = add i64 %864, 96
  %866 = add i64 %853, 14
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i8*
  %868 = load i8, i8* %867, align 1
  store i8 %868, i8* %CL.i537, align 1
  %869 = add i64 %853, 18
  store i64 %869, i64* %3, align 8
  %870 = load i64, i64* %858, align 8
  %871 = add i64 %870, 64
  store i64 %871, i64* %RAX.i824, align 8
  %872 = icmp ugt i64 %870, -65
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %14, align 1
  %874 = trunc i64 %871 to i32
  %875 = and i32 %874, 255
  %876 = tail call i32 @llvm.ctpop.i32(i32 %875)
  %877 = trunc i32 %876 to i8
  %878 = and i8 %877, 1
  %879 = xor i8 %878, 1
  store i8 %879, i8* %21, align 1
  %880 = xor i64 %871, %870
  %881 = lshr i64 %880, 4
  %882 = trunc i64 %881 to i8
  %883 = and i8 %882, 1
  store i8 %883, i8* %26, align 1
  %884 = icmp eq i64 %871, 0
  %885 = zext i1 %884 to i8
  store i8 %885, i8* %29, align 1
  %886 = lshr i64 %871, 63
  %887 = trunc i64 %886 to i8
  store i8 %887, i8* %32, align 1
  %888 = lshr i64 %870, 63
  %889 = xor i64 %886, %888
  %890 = add nuw nsw i64 %889, %886
  %891 = icmp eq i64 %890, 2
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %38, align 1
  %893 = sext i8 %868 to i64
  %894 = and i64 %893, 4294967295
  store i64 %894, i64* %RSI.i311, align 8
  store i64 %871, i64* %RDX.i760, align 8
  %895 = add i64 %853, 1150
  %896 = add i64 %853, 33
  %897 = load i64, i64* %6, align 8
  %898 = add i64 %897, -8
  %899 = inttoptr i64 %898 to i64*
  store i64 %896, i64* %899, align 8
  store i64 %898, i64* %6, align 8
  store i64 %895, i64* %3, align 8
  %call2_446c0e = tail call %struct.Memory* @sub_447070.read_offset(%struct.State* nonnull %0, i64 %895, %struct.Memory* %call2_446bdf)
  %900 = load i32, i32* %EAX.i831, align 4
  %901 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %902 = and i32 %900, 255
  %903 = tail call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  store i8 %906, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %907 = icmp eq i32 %900, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %29, align 1
  %909 = lshr i32 %900, 31
  %910 = trunc i32 %909 to i8
  store i8 %910, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v201 = select i1 %907, i64 9, i64 14
  %911 = add i64 %901, %.v201
  store i64 %911, i64* %3, align 8
  br i1 %907, label %block_446c1c, label %block_.L_446c21

block_446c1c:                                     ; preds = %block_.L_446bf2
  %912 = add i64 %911, 848
  br label %block_.L_446f6c

block_.L_446c21:                                  ; preds = %block_.L_446bf2
  %913 = load i64, i64* %RBP.i, align 8
  %914 = add i64 %913, -16
  %915 = add i64 %911, 4
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i64*
  %917 = load i64, i64* %916, align 8
  store i64 %917, i64* %RAX.i824, align 8
  %918 = add i64 %911, 7
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i64*
  %920 = load i64, i64* %919, align 8
  store i64 %920, i64* %RDI.i341, align 8
  %921 = add i64 %911, 11
  store i64 %921, i64* %3, align 8
  %922 = load i64, i64* %916, align 8
  store i64 %922, i64* %RAX.i824, align 8
  %923 = add i64 %922, 96
  %924 = add i64 %911, 14
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i8*
  %926 = load i8, i8* %925, align 1
  store i8 %926, i8* %CL.i537, align 1
  %927 = add i64 %911, 18
  store i64 %927, i64* %3, align 8
  %928 = load i64, i64* %916, align 8
  %929 = add i64 %928, 80
  store i64 %929, i64* %RAX.i824, align 8
  %930 = icmp ugt i64 %928, -81
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %14, align 1
  %932 = trunc i64 %929 to i32
  %933 = and i32 %932, 255
  %934 = tail call i32 @llvm.ctpop.i32(i32 %933)
  %935 = trunc i32 %934 to i8
  %936 = and i8 %935, 1
  %937 = xor i8 %936, 1
  store i8 %937, i8* %21, align 1
  %938 = xor i64 %928, 16
  %939 = xor i64 %938, %929
  %940 = lshr i64 %939, 4
  %941 = trunc i64 %940 to i8
  %942 = and i8 %941, 1
  store i8 %942, i8* %26, align 1
  %943 = icmp eq i64 %929, 0
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %29, align 1
  %945 = lshr i64 %929, 63
  %946 = trunc i64 %945 to i8
  store i8 %946, i8* %32, align 1
  %947 = lshr i64 %928, 63
  %948 = xor i64 %945, %947
  %949 = add nuw nsw i64 %948, %945
  %950 = icmp eq i64 %949, 2
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %38, align 1
  %952 = sext i8 %926 to i64
  %953 = and i64 %952, 4294967295
  store i64 %953, i64* %RSI.i311, align 8
  store i64 %929, i64* %RDX.i760, align 8
  %954 = add i64 %911, 1103
  %955 = add i64 %911, 33
  %956 = load i64, i64* %6, align 8
  %957 = add i64 %956, -8
  %958 = inttoptr i64 %957 to i64*
  store i64 %955, i64* %958, align 8
  store i64 %957, i64* %6, align 8
  store i64 %954, i64* %3, align 8
  %call2_446c3d = tail call %struct.Memory* @sub_447070.read_offset(%struct.State* nonnull %0, i64 %954, %struct.Memory* %call2_446c0e)
  %959 = load i32, i32* %EAX.i831, align 4
  %960 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %961 = and i32 %959, 255
  %962 = tail call i32 @llvm.ctpop.i32(i32 %961)
  %963 = trunc i32 %962 to i8
  %964 = and i8 %963, 1
  %965 = xor i8 %964, 1
  store i8 %965, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %966 = icmp eq i32 %959, 0
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %29, align 1
  %968 = lshr i32 %959, 31
  %969 = trunc i32 %968 to i8
  store i8 %969, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v202 = select i1 %966, i64 9, i64 14
  %970 = add i64 %960, %.v202
  store i64 %970, i64* %3, align 8
  br i1 %966, label %block_446c4b, label %block_.L_446c50

block_446c4b:                                     ; preds = %block_.L_446c21
  %971 = add i64 %970, 801
  br label %block_.L_446f6c

block_.L_446c50:                                  ; preds = %block_.L_446c21
  %972 = load i64, i64* %RBP.i, align 8
  %973 = add i64 %972, -16
  %974 = add i64 %970, 4
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i64*
  %976 = load i64, i64* %975, align 8
  store i64 %976, i64* %RAX.i824, align 8
  %977 = add i64 %976, 12
  %978 = add i64 %970, 8
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i16*
  %980 = load i16, i16* %979, align 2
  %981 = zext i16 %980 to i64
  store i64 %981, i64* %RCX.i788, align 8
  store i8 0, i8* %14, align 1
  %982 = and i16 %980, 255
  %983 = zext i16 %982 to i32
  %984 = tail call i32 @llvm.ctpop.i32(i32 %983)
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  %987 = xor i8 %986, 1
  store i8 %987, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %988 = icmp eq i16 %980, 0
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v203 = select i1 %988, i64 17, i64 22
  %990 = add i64 %970, %.v203
  store i64 %990, i64* %3, align 8
  br i1 %988, label %block_446c61, label %block_.L_446c66

block_446c61:                                     ; preds = %block_.L_446c50
  %991 = add i64 %990, 779
  br label %block_.L_446f6c

block_.L_446c66:                                  ; preds = %block_.L_446c50
  %992 = add i64 %990, 4
  store i64 %992, i64* %3, align 8
  %993 = load i64, i64* %975, align 8
  store i64 %993, i64* %RAX.i824, align 8
  %994 = add i64 %993, 12
  %995 = add i64 %990, 8
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i16*
  %997 = load i16, i16* %996, align 2
  %998 = zext i16 %997 to i64
  store i64 %998, i64* %RCX.i788, align 8
  %999 = zext i16 %997 to i64
  %1000 = shl nuw nsw i64 %999, 3
  store i64 %1000, i64* %RAX.i824, align 8
  store i8 0, i8* %14, align 1
  %1001 = trunc i64 %1000 to i32
  %1002 = and i32 %1001, 248
  %1003 = tail call i32 @llvm.ctpop.i32(i32 %1002)
  %1004 = trunc i32 %1003 to i8
  %1005 = and i8 %1004, 1
  %1006 = xor i8 %1005, 1
  store i8 %1006, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1007 = icmp eq i16 %997, 0
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1000, i64* %RDI.i341, align 8
  %1009 = add i64 %990, -284310
  %1010 = add i64 %990, 22
  %1011 = load i64, i64* %6, align 8
  %1012 = add i64 %1011, -8
  %1013 = inttoptr i64 %1012 to i64*
  store i64 %1010, i64* %1013, align 8
  store i64 %1012, i64* %6, align 8
  store i64 %1009, i64* %3, align 8
  %1014 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %call2_446c3d)
  %1015 = load i64, i64* %RBP.i, align 8
  %1016 = add i64 %1015, -16
  %1017 = load i64, i64* %3, align 8
  %1018 = add i64 %1017, 4
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1016 to i64*
  %1020 = load i64, i64* %1019, align 8
  store i64 %1020, i64* %RDI.i341, align 8
  %1021 = add i64 %1020, 104
  %1022 = load i64, i64* %RAX.i824, align 8
  %1023 = add i64 %1017, 8
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1021 to i64*
  store i64 %1022, i64* %1024, align 8
  %1025 = load i64, i64* %RAX.i824, align 8
  %1026 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1027 = trunc i64 %1025 to i32
  %1028 = and i32 %1027, 255
  %1029 = tail call i32 @llvm.ctpop.i32(i32 %1028)
  %1030 = trunc i32 %1029 to i8
  %1031 = and i8 %1030, 1
  %1032 = xor i8 %1031, 1
  store i8 %1032, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1033 = icmp eq i64 %1025, 0
  %1034 = zext i1 %1033 to i8
  store i8 %1034, i8* %29, align 1
  %1035 = lshr i64 %1025, 63
  %1036 = trunc i64 %1035 to i8
  store i8 %1036, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v204 = select i1 %1033, i64 10, i64 22
  %1037 = add i64 %1026, %.v204
  store i64 %1037, i64* %3, align 8
  %1038 = load i64, i64* %RBP.i, align 8
  br i1 %1033, label %block_446c8e, label %block_.L_446c9a

block_446c8e:                                     ; preds = %block_.L_446c66
  %1039 = add i64 %1038, -28
  %1040 = add i64 %1037, 7
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  store i32 3, i32* %1041, align 4
  %1042 = load i64, i64* %3, align 8
  %1043 = add i64 %1042, 727
  br label %block_.L_446f6c

block_.L_446c9a:                                  ; preds = %block_.L_446c66
  %1044 = add i64 %1038, -22
  %1045 = add i64 %1037, 6
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i16*
  store i16 0, i16* %1046, align 2
  %AX.i394 = bitcast %union.anon* %118 to i16*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_446ca0

block_.L_446ca0:                                  ; preds = %block_446cb4, %block_.L_446c9a
  %1047 = phi i64 [ %1130, %block_446cb4 ], [ %.pre, %block_.L_446c9a ]
  %1048 = load i64, i64* %RBP.i, align 8
  %1049 = add i64 %1048, -22
  %1050 = add i64 %1047, 4
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i16*
  %1052 = load i16, i16* %1051, align 2
  %1053 = zext i16 %1052 to i64
  store i64 %1053, i64* %RAX.i824, align 8
  %1054 = add i64 %1048, -16
  %1055 = add i64 %1047, 8
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i64*
  %1057 = load i64, i64* %1056, align 8
  store i64 %1057, i64* %RCX.i788, align 8
  %1058 = add i64 %1057, 12
  %1059 = add i64 %1047, 12
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i16*
  %1061 = load i16, i16* %1060, align 2
  %1062 = zext i16 %1061 to i64
  store i64 %1062, i64* %RDX.i760, align 8
  %1063 = zext i16 %1052 to i32
  %1064 = zext i16 %1061 to i32
  %1065 = sub nsw i32 %1063, %1064
  %1066 = icmp ult i16 %1052, %1061
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %14, align 1
  %1068 = and i32 %1065, 255
  %1069 = tail call i32 @llvm.ctpop.i32(i32 %1068)
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  %1072 = xor i8 %1071, 1
  store i8 %1072, i8* %21, align 1
  %1073 = xor i16 %1061, %1052
  %1074 = zext i16 %1073 to i32
  %1075 = xor i32 %1074, %1065
  %1076 = lshr i32 %1075, 4
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %26, align 1
  %1079 = icmp eq i32 %1065, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %29, align 1
  %1081 = lshr i32 %1065, 31
  %1082 = trunc i32 %1081 to i8
  store i8 %1082, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1083 = icmp ne i8 %1082, 0
  %.v = select i1 %1083, i64 20, i64 59
  %1084 = add i64 %1047, %.v
  %1085 = add i64 %1084, 4
  store i64 %1085, i64* %3, align 8
  %1086 = load i64, i64* %1056, align 8
  store i64 %1086, i64* %RAX.i824, align 8
  br i1 %1083, label %block_446cb4, label %block_.L_446cdb

block_446cb4:                                     ; preds = %block_.L_446ca0
  %1087 = add i64 %1086, 104
  %1088 = add i64 %1084, 8
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i64*
  %1090 = load i64, i64* %1089, align 8
  store i64 %1090, i64* %RAX.i824, align 8
  %1091 = add i64 %1084, 12
  store i64 %1091, i64* %3, align 8
  %1092 = load i16, i16* %1051, align 2
  %1093 = zext i16 %1092 to i64
  store i64 %1093, i64* %RCX.i788, align 8
  %1094 = zext i16 %1092 to i64
  store i64 %1094, i64* %RDX.i760, align 8
  %1095 = shl nuw nsw i64 %1094, 3
  %1096 = add i64 %1090, %1095
  %1097 = add i64 %1084, 22
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1096 to i64*
  store i64 0, i64* %1098, align 8
  %1099 = load i64, i64* %RBP.i, align 8
  %1100 = add i64 %1099, -22
  %1101 = load i64, i64* %3, align 8
  %1102 = add i64 %1101, 4
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1100 to i16*
  %1104 = load i16, i16* %1103, align 2
  %1105 = add i16 %1104, 1
  store i16 %1105, i16* %AX.i394, align 2
  %1106 = icmp eq i16 %1104, -1
  %1107 = icmp eq i16 %1105, 0
  %1108 = or i1 %1106, %1107
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %14, align 1
  %1110 = and i16 %1105, 255
  %1111 = zext i16 %1110 to i32
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %21, align 1
  %1116 = xor i16 %1105, %1104
  %1117 = lshr i16 %1116, 4
  %1118 = trunc i16 %1117 to i8
  %1119 = and i8 %1118, 1
  store i8 %1119, i8* %26, align 1
  %1120 = zext i1 %1107 to i8
  store i8 %1120, i8* %29, align 1
  %1121 = lshr i16 %1105, 15
  %1122 = trunc i16 %1121 to i8
  store i8 %1122, i8* %32, align 1
  %1123 = lshr i16 %1104, 15
  %1124 = xor i16 %1121, %1123
  %1125 = add nuw nsw i16 %1124, %1121
  %1126 = icmp eq i16 %1125, 2
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %38, align 1
  %1128 = add i64 %1101, 12
  store i64 %1128, i64* %3, align 8
  store i16 %1105, i16* %1103, align 2
  %1129 = load i64, i64* %3, align 8
  %1130 = add i64 %1129, -54
  store i64 %1130, i64* %3, align 8
  br label %block_.L_446ca0

block_.L_446cdb:                                  ; preds = %block_.L_446ca0
  %1131 = add i64 %1086, 12
  %1132 = add i64 %1084, 8
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i16*
  %1134 = load i16, i16* %1133, align 2
  %1135 = zext i16 %1134 to i64
  store i64 %1135, i64* %RCX.i788, align 8
  %1136 = zext i16 %1134 to i64
  %1137 = shl nuw nsw i64 %1136, 2
  store i64 %1137, i64* %RAX.i824, align 8
  store i8 0, i8* %14, align 1
  %1138 = trunc i64 %1137 to i32
  %1139 = and i32 %1138, 252
  %1140 = tail call i32 @llvm.ctpop.i32(i32 %1139)
  %1141 = trunc i32 %1140 to i8
  %1142 = and i8 %1141, 1
  %1143 = xor i8 %1142, 1
  store i8 %1143, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1144 = icmp eq i16 %1134, 0
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1137, i64* %RDI.i341, align 8
  %1146 = add i64 %1084, -284427
  %1147 = add i64 %1084, 22
  %1148 = load i64, i64* %6, align 8
  %1149 = add i64 %1148, -8
  %1150 = inttoptr i64 %1149 to i64*
  store i64 %1147, i64* %1150, align 8
  store i64 %1149, i64* %6, align 8
  store i64 %1146, i64* %3, align 8
  %1151 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1014)
  %1152 = load i64, i64* %RBP.i, align 8
  %1153 = add i64 %1152, -16
  %1154 = load i64, i64* %3, align 8
  %1155 = add i64 %1154, 4
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1153 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RDI.i341, align 8
  %1158 = add i64 %1157, 112
  %1159 = load i64, i64* %RAX.i824, align 8
  %1160 = add i64 %1154, 8
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1158 to i64*
  store i64 %1159, i64* %1161, align 8
  %1162 = load i64, i64* %RAX.i824, align 8
  %1163 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1164 = trunc i64 %1162 to i32
  %1165 = and i32 %1164, 255
  %1166 = tail call i32 @llvm.ctpop.i32(i32 %1165)
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  %1169 = xor i8 %1168, 1
  store i8 %1169, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1170 = icmp eq i64 %1162, 0
  %1171 = zext i1 %1170 to i8
  store i8 %1171, i8* %29, align 1
  %1172 = lshr i64 %1162, 63
  %1173 = trunc i64 %1172 to i8
  store i8 %1173, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v205 = select i1 %1170, i64 10, i64 22
  %1174 = add i64 %1163, %.v205
  store i64 %1174, i64* %3, align 8
  %1175 = load i64, i64* %RBP.i, align 8
  br i1 %1170, label %block_446d03, label %block_.L_446d0f

block_446d03:                                     ; preds = %block_.L_446cdb
  %1176 = add i64 %1175, -28
  %1177 = add i64 %1174, 7
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i32*
  store i32 3, i32* %1178, align 4
  %1179 = load i64, i64* %3, align 8
  %1180 = add i64 %1179, 610
  br label %block_.L_446f6c

block_.L_446d0f:                                  ; preds = %block_.L_446cdb
  %1181 = add i64 %1175, -16
  %1182 = add i64 %1174, 4
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i64*
  %1184 = load i64, i64* %1183, align 8
  store i64 %1184, i64* %RAX.i824, align 8
  %1185 = add i64 %1184, 12
  %1186 = add i64 %1174, 8
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i16*
  %1188 = load i16, i16* %1187, align 2
  %1189 = zext i16 %1188 to i64
  store i64 %1189, i64* %RCX.i788, align 8
  %1190 = zext i16 %1188 to i64
  %1191 = shl nuw nsw i64 %1190, 2
  store i64 %1191, i64* %RAX.i824, align 8
  store i8 0, i8* %14, align 1
  %1192 = trunc i64 %1191 to i32
  %1193 = and i32 %1192, 252
  %1194 = tail call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  store i8 %1197, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1198 = icmp eq i16 %1188, 0
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1191, i64* %RDI.i341, align 8
  %1200 = add i64 %1174, -284479
  %1201 = add i64 %1174, 22
  %1202 = load i64, i64* %6, align 8
  %1203 = add i64 %1202, -8
  %1204 = inttoptr i64 %1203 to i64*
  store i64 %1201, i64* %1204, align 8
  store i64 %1203, i64* %6, align 8
  store i64 %1200, i64* %3, align 8
  %1205 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1151)
  %1206 = load i64, i64* %RBP.i, align 8
  %1207 = add i64 %1206, -16
  %1208 = load i64, i64* %3, align 8
  %1209 = add i64 %1208, 4
  store i64 %1209, i64* %3, align 8
  %1210 = inttoptr i64 %1207 to i64*
  %1211 = load i64, i64* %1210, align 8
  store i64 %1211, i64* %RDI.i341, align 8
  %1212 = add i64 %1211, 120
  %1213 = load i64, i64* %RAX.i824, align 8
  %1214 = add i64 %1208, 8
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1212 to i64*
  store i64 %1213, i64* %1215, align 8
  %1216 = load i64, i64* %RAX.i824, align 8
  %1217 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1218 = trunc i64 %1216 to i32
  %1219 = and i32 %1218, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1224 = icmp eq i64 %1216, 0
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %29, align 1
  %1226 = lshr i64 %1216, 63
  %1227 = trunc i64 %1226 to i8
  store i8 %1227, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v206 = select i1 %1224, i64 10, i64 22
  %1228 = add i64 %1217, %.v206
  store i64 %1228, i64* %3, align 8
  %1229 = load i64, i64* %RBP.i, align 8
  br i1 %1224, label %block_446d37, label %block_.L_446d43

block_446d37:                                     ; preds = %block_.L_446d0f
  %1230 = add i64 %1229, -28
  %1231 = add i64 %1228, 7
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  store i32 3, i32* %1232, align 4
  %1233 = load i64, i64* %3, align 8
  %1234 = add i64 %1233, 558
  br label %block_.L_446f6c

block_.L_446d43:                                  ; preds = %block_.L_446d0f
  %1235 = add i64 %1229, -16
  %1236 = add i64 %1228, 4
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  store i64 %1238, i64* %RAX.i824, align 8
  %1239 = add i64 %1238, 12
  %1240 = add i64 %1228, 8
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i16*
  %1242 = load i16, i16* %1241, align 2
  %1243 = zext i16 %1242 to i64
  store i64 %1243, i64* %RCX.i788, align 8
  %1244 = zext i16 %1242 to i64
  %1245 = shl nuw nsw i64 %1244, 2
  store i64 %1245, i64* %RAX.i824, align 8
  store i8 0, i8* %14, align 1
  %1246 = trunc i64 %1245 to i32
  %1247 = and i32 %1246, 252
  %1248 = tail call i32 @llvm.ctpop.i32(i32 %1247)
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  %1251 = xor i8 %1250, 1
  store i8 %1251, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1252 = icmp eq i16 %1242, 0
  %1253 = zext i1 %1252 to i8
  store i8 %1253, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1245, i64* %RDI.i341, align 8
  %1254 = add i64 %1228, -284531
  %1255 = add i64 %1228, 22
  %1256 = load i64, i64* %6, align 8
  %1257 = add i64 %1256, -8
  %1258 = inttoptr i64 %1257 to i64*
  store i64 %1255, i64* %1258, align 8
  store i64 %1257, i64* %6, align 8
  store i64 %1254, i64* %3, align 8
  %1259 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1205)
  %1260 = load i64, i64* %RBP.i, align 8
  %1261 = add i64 %1260, -16
  %1262 = load i64, i64* %3, align 8
  %1263 = add i64 %1262, 4
  store i64 %1263, i64* %3, align 8
  %1264 = inttoptr i64 %1261 to i64*
  %1265 = load i64, i64* %1264, align 8
  store i64 %1265, i64* %RDI.i341, align 8
  %1266 = add i64 %1265, 128
  %1267 = load i64, i64* %RAX.i824, align 8
  %1268 = add i64 %1262, 11
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1266 to i64*
  store i64 %1267, i64* %1269, align 8
  %1270 = load i64, i64* %RAX.i824, align 8
  %1271 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1272 = trunc i64 %1270 to i32
  %1273 = and i32 %1272, 255
  %1274 = tail call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  store i8 %1277, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1278 = icmp eq i64 %1270, 0
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %29, align 1
  %1280 = lshr i64 %1270, 63
  %1281 = trunc i64 %1280 to i8
  store i8 %1281, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v207 = select i1 %1278, i64 10, i64 22
  %1282 = add i64 %1271, %.v207
  store i64 %1282, i64* %3, align 8
  %1283 = load i64, i64* %RBP.i, align 8
  br i1 %1278, label %block_446d6e, label %block_.L_446d7a

block_446d6e:                                     ; preds = %block_.L_446d43
  %1284 = add i64 %1283, -28
  %1285 = add i64 %1282, 7
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  store i32 3, i32* %1286, align 4
  %1287 = load i64, i64* %3, align 8
  %1288 = add i64 %1287, 503
  br label %block_.L_446f6c

block_.L_446d7a:                                  ; preds = %block_.L_446d43
  %1289 = add i64 %1283, -16
  %1290 = add i64 %1282, 4
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RAX.i824, align 8
  %1293 = add i64 %1292, 12
  %1294 = add i64 %1282, 8
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i16*
  %1296 = load i16, i16* %1295, align 2
  %1297 = zext i16 %1296 to i64
  store i64 %1297, i64* %RCX.i788, align 8
  %1298 = zext i16 %1296 to i64
  %1299 = shl nuw nsw i64 %1298, 2
  store i64 %1299, i64* %RAX.i824, align 8
  store i8 0, i8* %14, align 1
  %1300 = trunc i64 %1299 to i32
  %1301 = and i32 %1300, 252
  %1302 = tail call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  store i8 %1305, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1306 = icmp eq i16 %1296, 0
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %1299, i64* %RDI.i341, align 8
  %1308 = add i64 %1282, -284586
  %1309 = add i64 %1282, 22
  %1310 = load i64, i64* %6, align 8
  %1311 = add i64 %1310, -8
  %1312 = inttoptr i64 %1311 to i64*
  store i64 %1309, i64* %1312, align 8
  store i64 %1311, i64* %6, align 8
  store i64 %1308, i64* %3, align 8
  %1313 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %1259)
  %1314 = load i64, i64* %RBP.i, align 8
  %1315 = add i64 %1314, -16
  %1316 = load i64, i64* %3, align 8
  %1317 = add i64 %1316, 4
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1315 to i64*
  %1319 = load i64, i64* %1318, align 8
  store i64 %1319, i64* %RDI.i341, align 8
  %1320 = add i64 %1319, 136
  %1321 = load i64, i64* %RAX.i824, align 8
  %1322 = add i64 %1316, 11
  store i64 %1322, i64* %3, align 8
  %1323 = inttoptr i64 %1320 to i64*
  store i64 %1321, i64* %1323, align 8
  %1324 = load i64, i64* %RAX.i824, align 8
  %1325 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1326 = trunc i64 %1324 to i32
  %1327 = and i32 %1326, 255
  %1328 = tail call i32 @llvm.ctpop.i32(i32 %1327)
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  %1331 = xor i8 %1330, 1
  store i8 %1331, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1332 = icmp eq i64 %1324, 0
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %29, align 1
  %1334 = lshr i64 %1324, 63
  %1335 = trunc i64 %1334 to i8
  store i8 %1335, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v208 = select i1 %1332, i64 10, i64 22
  %1336 = add i64 %1325, %.v208
  store i64 %1336, i64* %3, align 8
  %1337 = load i64, i64* %RBP.i, align 8
  br i1 %1332, label %block_446da5, label %block_.L_446db1

block_446da5:                                     ; preds = %block_.L_446d7a
  %1338 = add i64 %1337, -28
  %1339 = add i64 %1336, 7
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to i32*
  store i32 3, i32* %1340, align 4
  %1341 = load i64, i64* %3, align 8
  %1342 = add i64 %1341, 448
  br label %block_.L_446f6c

block_.L_446db1:                                  ; preds = %block_.L_446d7a
  %1343 = add i64 %1337, -22
  %1344 = add i64 %1336, 6
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i16*
  store i16 0, i16* %1345, align 2
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_446db7

block_.L_446db7:                                  ; preds = %block_.L_446f4a, %block_.L_446db1
  %1347 = phi i64 [ %.pre180, %block_.L_446db1 ], [ %1853, %block_.L_446f4a ]
  %MEMORY.3 = phi %struct.Memory* [ %1313, %block_.L_446db1 ], [ %call2_446f37, %block_.L_446f4a ]
  %1348 = load i64, i64* %RBP.i, align 8
  %1349 = add i64 %1348, -22
  %1350 = add i64 %1347, 4
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i16*
  %1352 = load i16, i16* %1351, align 2
  %1353 = zext i16 %1352 to i64
  store i64 %1353, i64* %RAX.i824, align 8
  %1354 = add i64 %1348, -16
  %1355 = add i64 %1347, 8
  store i64 %1355, i64* %3, align 8
  %1356 = inttoptr i64 %1354 to i64*
  %1357 = load i64, i64* %1356, align 8
  store i64 %1357, i64* %RCX.i788, align 8
  %1358 = add i64 %1357, 12
  %1359 = add i64 %1347, 12
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i16*
  %1361 = load i16, i16* %1360, align 2
  %1362 = zext i16 %1361 to i64
  store i64 %1362, i64* %RDX.i760, align 8
  %1363 = zext i16 %1352 to i32
  %1364 = zext i16 %1361 to i32
  %1365 = sub nsw i32 %1363, %1364
  %1366 = icmp ult i16 %1352, %1361
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %14, align 1
  %1368 = and i32 %1365, 255
  %1369 = tail call i32 @llvm.ctpop.i32(i32 %1368)
  %1370 = trunc i32 %1369 to i8
  %1371 = and i8 %1370, 1
  %1372 = xor i8 %1371, 1
  store i8 %1372, i8* %21, align 1
  %1373 = xor i16 %1361, %1352
  %1374 = zext i16 %1373 to i32
  %1375 = xor i32 %1374, %1365
  %1376 = lshr i32 %1375, 4
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 1
  store i8 %1378, i8* %26, align 1
  %1379 = icmp eq i32 %1365, 0
  %1380 = zext i1 %1379 to i8
  store i8 %1380, i8* %29, align 1
  %1381 = lshr i32 %1365, 31
  %1382 = trunc i32 %1381 to i8
  store i8 %1382, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1383 = icmp ne i8 %1382, 0
  %.v209 = select i1 %1383, i64 20, i64 425
  %1384 = add i64 %1347, %.v209
  store i64 %1384, i64* %3, align 8
  br i1 %1383, label %block_446dcb, label %block_.L_446f60

block_446dcb:                                     ; preds = %block_.L_446db7
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %3, align 8
  %1386 = load i64, i64* %1356, align 8
  store i64 %1386, i64* %RDI.i341, align 8
  %1387 = add i64 %1384, 8
  store i64 %1387, i64* %3, align 8
  %1388 = load i64, i64* %1356, align 8
  %1389 = add i64 %1388, 48
  store i64 %1389, i64* %RAX.i824, align 8
  %1390 = icmp ugt i64 %1388, -49
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %14, align 1
  %1392 = trunc i64 %1389 to i32
  %1393 = and i32 %1392, 255
  %1394 = tail call i32 @llvm.ctpop.i32(i32 %1393)
  %1395 = trunc i32 %1394 to i8
  %1396 = and i8 %1395, 1
  %1397 = xor i8 %1396, 1
  store i8 %1397, i8* %21, align 1
  %1398 = xor i64 %1388, 16
  %1399 = xor i64 %1398, %1389
  %1400 = lshr i64 %1399, 4
  %1401 = trunc i64 %1400 to i8
  %1402 = and i8 %1401, 1
  store i8 %1402, i8* %26, align 1
  %1403 = icmp eq i64 %1389, 0
  %1404 = zext i1 %1403 to i8
  store i8 %1404, i8* %29, align 1
  %1405 = lshr i64 %1389, 63
  %1406 = trunc i64 %1405 to i8
  store i8 %1406, i8* %32, align 1
  %1407 = lshr i64 %1388, 63
  %1408 = xor i64 %1405, %1407
  %1409 = add nuw nsw i64 %1408, %1405
  %1410 = icmp eq i64 %1409, 2
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %38, align 1
  %1412 = add i64 %1384, 16
  store i64 %1412, i64* %3, align 8
  %1413 = load i64, i64* %1356, align 8
  store i64 %1413, i64* %RCX.i788, align 8
  %1414 = add i64 %1413, 36
  %1415 = add i64 %1384, 19
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RDX.i760, align 8
  %1419 = add i64 %1384, 23
  store i64 %1419, i64* %3, align 8
  %1420 = load i16, i16* %1351, align 2
  %1421 = zext i16 %1420 to i64
  store i64 %1421, i64* %RCX.i788, align 8
  store i64 %1389, i64* %RSI.i311, align 8
  %1422 = add i64 %1384, 869
  %1423 = add i64 %1384, 31
  %1424 = load i64, i64* %6, align 8
  %1425 = add i64 %1424, -8
  %1426 = inttoptr i64 %1425 to i64*
  store i64 %1423, i64* %1426, align 8
  store i64 %1425, i64* %6, align 8
  store i64 %1422, i64* %3, align 8
  %call2_446de5 = tail call %struct.Memory* @sub_447130.indexfile_position(%struct.State* nonnull %0, i64 %1422, %struct.Memory* %MEMORY.3)
  %1427 = load i32, i32* %EAX.i831, align 4
  %1428 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1429 = and i32 %1427, 255
  %1430 = tail call i32 @llvm.ctpop.i32(i32 %1429)
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  store i8 %1433, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1434 = icmp eq i32 %1427, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %29, align 1
  %1436 = lshr i32 %1427, 31
  %1437 = trunc i32 %1436 to i8
  store i8 %1437, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v210 = select i1 %1434, i64 14, i64 9
  %1438 = add i64 %1428, %.v210
  store i64 %1438, i64* %3, align 8
  br i1 %1434, label %block_.L_446df8, label %block_446df3

block_446df3:                                     ; preds = %block_446dcb
  %1439 = add i64 %1438, 377
  br label %block_.L_446f6c

block_.L_446df8:                                  ; preds = %block_446dcb
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -16
  %1442 = add i64 %1438, 4
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i64*
  %1444 = load i64, i64* %1443, align 8
  store i64 %1444, i64* %RAX.i824, align 8
  %1445 = add i64 %1444, 24
  %1446 = add i64 %1438, 7
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i32*
  %1448 = load i32, i32* %1447, align 4
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %RCX.i788, align 8
  store i64 %1449, i64* %RAX.i824, align 8
  store i64 %1449, i64* %RDI.i341, align 8
  %1450 = add i64 %1438, -284712
  %1451 = add i64 %1438, 21
  %1452 = load i64, i64* %6, align 8
  %1453 = add i64 %1452, -8
  %1454 = inttoptr i64 %1453 to i64*
  store i64 %1451, i64* %1454, align 8
  store i64 %1453, i64* %6, align 8
  store i64 %1450, i64* %3, align 8
  %1455 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @malloc to i64), %struct.Memory* %MEMORY.3)
  %1456 = load i64, i64* %RBP.i, align 8
  %1457 = add i64 %1456, -16
  %1458 = load i64, i64* %3, align 8
  %1459 = add i64 %1458, 4
  store i64 %1459, i64* %3, align 8
  %1460 = inttoptr i64 %1457 to i64*
  %1461 = load i64, i64* %1460, align 8
  store i64 %1461, i64* %RDI.i341, align 8
  %1462 = add i64 %1461, 104
  %1463 = add i64 %1458, 8
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i64*
  %1465 = load i64, i64* %1464, align 8
  store i64 %1465, i64* %RDI.i341, align 8
  %1466 = add i64 %1456, -22
  %1467 = add i64 %1458, 12
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i16*
  %1469 = load i16, i16* %1468, align 2
  %1470 = zext i16 %1469 to i64
  store i64 %1470, i64* %RCX.i788, align 8
  %1471 = zext i16 %1469 to i64
  store i64 %1471, i64* %RDX.i760, align 8
  %1472 = shl nuw nsw i64 %1471, 3
  %1473 = add i64 %1465, %1472
  %1474 = load i64, i64* %RAX.i824, align 8
  %1475 = add i64 %1458, 18
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1473 to i64*
  store i64 %1474, i64* %1476, align 8
  %1477 = load i64, i64* %RAX.i824, align 8
  %1478 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1479 = trunc i64 %1477 to i32
  %1480 = and i32 %1479, 255
  %1481 = tail call i32 @llvm.ctpop.i32(i32 %1480)
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = xor i8 %1483, 1
  store i8 %1484, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1485 = icmp eq i64 %1477, 0
  %1486 = zext i1 %1485 to i8
  store i8 %1486, i8* %29, align 1
  %1487 = lshr i64 %1477, 63
  %1488 = trunc i64 %1487 to i8
  store i8 %1488, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v211 = select i1 %1485, i64 10, i64 22
  %1489 = add i64 %1478, %.v211
  store i64 %1489, i64* %3, align 8
  br i1 %1485, label %block_446e29, label %block_.L_446e35

block_446e29:                                     ; preds = %block_.L_446df8
  %1490 = load i64, i64* %RBP.i, align 8
  %1491 = add i64 %1490, -28
  %1492 = add i64 %1489, 7
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  store i32 3, i32* %1493, align 4
  %1494 = load i64, i64* %3, align 8
  %1495 = add i64 %1494, 316
  br label %block_.L_446f6c

block_.L_446e35:                                  ; preds = %block_.L_446df8
  store i64 1, i64* %RAX.i824, align 8
  store i64 1, i64* %RSI.i311, align 8
  %1496 = load i64, i64* %RBP.i, align 8
  %1497 = add i64 %1496, -16
  %1498 = add i64 %1489, 11
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i64*
  %1500 = load i64, i64* %1499, align 8
  store i64 %1500, i64* %RCX.i788, align 8
  %1501 = add i64 %1500, 104
  %1502 = add i64 %1489, 15
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i64*
  %1504 = load i64, i64* %1503, align 8
  store i64 %1504, i64* %RCX.i788, align 8
  %1505 = add i64 %1496, -22
  %1506 = add i64 %1489, 19
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i16*
  %1508 = load i16, i16* %1507, align 2
  %1509 = zext i16 %1508 to i64
  store i64 %1509, i64* %RAX.i824, align 8
  %1510 = zext i16 %1508 to i64
  store i64 %1510, i64* %RDX.i760, align 8
  %1511 = shl nuw nsw i64 %1510, 3
  %1512 = add i64 %1504, %1511
  %1513 = add i64 %1489, 25
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i64*
  %1515 = load i64, i64* %1514, align 8
  store i64 %1515, i64* %RDI.i341, align 8
  %1516 = add i64 %1489, 29
  store i64 %1516, i64* %3, align 8
  %1517 = load i64, i64* %1499, align 8
  store i64 %1517, i64* %RCX.i788, align 8
  %1518 = add i64 %1517, 24
  %1519 = add i64 %1489, 32
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RAX.i824, align 8
  store i64 %1522, i64* %RDX.i760, align 8
  %1523 = add i64 %1489, 38
  store i64 %1523, i64* %3, align 8
  %1524 = load i64, i64* %1499, align 8
  store i64 %1524, i64* %RCX.i788, align 8
  %1525 = add i64 %1489, 41
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1524 to i64*
  %1527 = load i64, i64* %1526, align 8
  store i64 %1527, i64* %RCX.i788, align 8
  %1528 = add i64 %1489, -285221
  %1529 = add i64 %1489, 46
  %1530 = load i64, i64* %6, align 8
  %1531 = add i64 %1530, -8
  %1532 = inttoptr i64 %1531 to i64*
  store i64 %1529, i64* %1532, align 8
  store i64 %1531, i64* %6, align 8
  store i64 %1528, i64* %3, align 8
  %call2_446e5e = tail call %struct.Memory* @sub_401410.fread_plt(%struct.State* nonnull %0, i64 %1528, %struct.Memory* %1455)
  %1533 = load i64, i64* %RBP.i, align 8
  %1534 = add i64 %1533, -16
  %1535 = load i64, i64* %3, align 8
  %1536 = add i64 %1535, 4
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1534 to i64*
  %1538 = load i64, i64* %1537, align 8
  store i64 %1538, i64* %RCX.i788, align 8
  %1539 = add i64 %1538, 24
  %1540 = add i64 %1535, 8
  store i64 %1540, i64* %3, align 8
  %1541 = inttoptr i64 %1539 to i32*
  %1542 = load i32, i32* %1541, align 4
  %1543 = zext i32 %1542 to i64
  store i64 %1543, i64* %1346, align 8
  store i64 %1543, i64* %RCX.i788, align 8
  %1544 = load i64, i64* %RAX.i824, align 8
  %1545 = sub i64 %1544, %1543
  %1546 = icmp ult i64 %1544, %1543
  %1547 = zext i1 %1546 to i8
  store i8 %1547, i8* %14, align 1
  %1548 = trunc i64 %1545 to i32
  %1549 = and i32 %1548, 255
  %1550 = tail call i32 @llvm.ctpop.i32(i32 %1549)
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  %1553 = xor i8 %1552, 1
  store i8 %1553, i8* %21, align 1
  %1554 = xor i64 %1544, %1543
  %1555 = xor i64 %1554, %1545
  %1556 = lshr i64 %1555, 4
  %1557 = trunc i64 %1556 to i8
  %1558 = and i8 %1557, 1
  store i8 %1558, i8* %26, align 1
  %1559 = icmp eq i64 %1545, 0
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %29, align 1
  %1561 = lshr i64 %1545, 63
  %1562 = trunc i64 %1561 to i8
  store i8 %1562, i8* %32, align 1
  %1563 = lshr i64 %1544, 63
  %1564 = xor i64 %1561, %1563
  %1565 = add nuw nsw i64 %1564, %1563
  %1566 = icmp eq i64 %1565, 2
  %1567 = zext i1 %1566 to i8
  store i8 %1567, i8* %38, align 1
  %.v212 = select i1 %1559, i64 25, i64 20
  %1568 = add i64 %1535, %.v212
  store i64 %1568, i64* %3, align 8
  br i1 %1559, label %block_.L_446e7c, label %block_446e77

block_446e77:                                     ; preds = %block_.L_446e35
  %1569 = add i64 %1568, 245
  br label %block_.L_446f6c

block_.L_446e7c:                                  ; preds = %block_.L_446e35
  %1570 = add i64 %1568, 4
  store i64 %1570, i64* %3, align 8
  %1571 = load i64, i64* %1537, align 8
  store i64 %1571, i64* %RAX.i824, align 8
  %1572 = add i64 %1568, 7
  store i64 %1572, i64* %3, align 8
  %1573 = inttoptr i64 %1571 to i64*
  %1574 = load i64, i64* %1573, align 8
  store i64 %1574, i64* %RDI.i341, align 8
  %1575 = add i64 %1568, 11
  store i64 %1575, i64* %3, align 8
  %1576 = load i64, i64* %1537, align 8
  store i64 %1576, i64* %RAX.i824, align 8
  %1577 = add i64 %1576, 112
  %1578 = add i64 %1568, 15
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to i64*
  %1580 = load i64, i64* %1579, align 8
  store i64 %1580, i64* %RAX.i824, align 8
  %1581 = add i64 %1533, -22
  %1582 = add i64 %1568, 19
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i16*
  %1584 = load i16, i16* %1583, align 2
  %1585 = zext i16 %1584 to i64
  store i64 %1585, i64* %RCX.i788, align 8
  %1586 = zext i16 %1584 to i64
  %1587 = shl nuw nsw i64 %1586, 2
  store i64 %1587, i64* %RDX.i760, align 8
  %1588 = add i64 %1587, %1580
  store i64 %1588, i64* %RAX.i824, align 8
  %1589 = icmp ult i64 %1588, %1580
  %1590 = icmp ult i64 %1588, %1587
  %1591 = or i1 %1589, %1590
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %14, align 1
  %1593 = trunc i64 %1588 to i32
  %1594 = and i32 %1593, 255
  %1595 = tail call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  store i8 %1598, i8* %21, align 1
  %1599 = xor i64 %1587, %1580
  %1600 = xor i64 %1599, %1588
  %1601 = lshr i64 %1600, 4
  %1602 = trunc i64 %1601 to i8
  %1603 = and i8 %1602, 1
  store i8 %1603, i8* %26, align 1
  %1604 = icmp eq i64 %1588, 0
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %29, align 1
  %1606 = lshr i64 %1588, 63
  %1607 = trunc i64 %1606 to i8
  store i8 %1607, i8* %32, align 1
  %1608 = lshr i64 %1580, 63
  %1609 = xor i64 %1606, %1608
  %1610 = add nuw nsw i64 %1609, %1606
  %1611 = icmp eq i64 %1610, 2
  %1612 = zext i1 %1611 to i8
  store i8 %1612, i8* %38, align 1
  store i64 %1588, i64* %RSI.i311, align 8
  %1613 = add i64 %1568, 276
  %1614 = add i64 %1568, 36
  %1615 = load i64, i64* %6, align 8
  %1616 = add i64 %1615, -8
  %1617 = inttoptr i64 %1616 to i64*
  store i64 %1614, i64* %1617, align 8
  store i64 %1616, i64* %6, align 8
  store i64 %1613, i64* %3, align 8
  %call2_446e9b = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %1613, %struct.Memory* %call2_446e5e)
  %1618 = load i32, i32* %EAX.i831, align 4
  %1619 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1620 = and i32 %1618, 255
  %1621 = tail call i32 @llvm.ctpop.i32(i32 %1620)
  %1622 = trunc i32 %1621 to i8
  %1623 = and i8 %1622, 1
  %1624 = xor i8 %1623, 1
  store i8 %1624, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1625 = icmp eq i32 %1618, 0
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %29, align 1
  %1627 = lshr i32 %1618, 31
  %1628 = trunc i32 %1627 to i8
  store i8 %1628, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v213 = select i1 %1625, i64 9, i64 14
  %1629 = add i64 %1619, %.v213
  store i64 %1629, i64* %3, align 8
  br i1 %1625, label %block_446ea9, label %block_.L_446eae

block_446ea9:                                     ; preds = %block_.L_446e7c
  %1630 = add i64 %1629, 195
  br label %block_.L_446f6c

block_.L_446eae:                                  ; preds = %block_.L_446e7c
  %1631 = load i64, i64* %RBP.i, align 8
  %1632 = add i64 %1631, -16
  %1633 = add i64 %1629, 4
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i64*
  %1635 = load i64, i64* %1634, align 8
  store i64 %1635, i64* %RAX.i824, align 8
  %1636 = add i64 %1629, 7
  store i64 %1636, i64* %3, align 8
  %1637 = inttoptr i64 %1635 to i64*
  %1638 = load i64, i64* %1637, align 8
  store i64 %1638, i64* %RDI.i341, align 8
  %1639 = add i64 %1629, 11
  store i64 %1639, i64* %3, align 8
  %1640 = load i64, i64* %1634, align 8
  store i64 %1640, i64* %RAX.i824, align 8
  %1641 = add i64 %1640, 120
  %1642 = add i64 %1629, 15
  store i64 %1642, i64* %3, align 8
  %1643 = inttoptr i64 %1641 to i64*
  %1644 = load i64, i64* %1643, align 8
  store i64 %1644, i64* %RAX.i824, align 8
  %1645 = add i64 %1631, -22
  %1646 = add i64 %1629, 19
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i16*
  %1648 = load i16, i16* %1647, align 2
  %1649 = zext i16 %1648 to i64
  store i64 %1649, i64* %RCX.i788, align 8
  %1650 = zext i16 %1648 to i64
  %1651 = shl nuw nsw i64 %1650, 2
  store i64 %1651, i64* %RDX.i760, align 8
  %1652 = add i64 %1651, %1644
  store i64 %1652, i64* %RAX.i824, align 8
  %1653 = icmp ult i64 %1652, %1644
  %1654 = icmp ult i64 %1652, %1651
  %1655 = or i1 %1653, %1654
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %14, align 1
  %1657 = trunc i64 %1652 to i32
  %1658 = and i32 %1657, 255
  %1659 = tail call i32 @llvm.ctpop.i32(i32 %1658)
  %1660 = trunc i32 %1659 to i8
  %1661 = and i8 %1660, 1
  %1662 = xor i8 %1661, 1
  store i8 %1662, i8* %21, align 1
  %1663 = xor i64 %1651, %1644
  %1664 = xor i64 %1663, %1652
  %1665 = lshr i64 %1664, 4
  %1666 = trunc i64 %1665 to i8
  %1667 = and i8 %1666, 1
  store i8 %1667, i8* %26, align 1
  %1668 = icmp eq i64 %1652, 0
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %29, align 1
  %1670 = lshr i64 %1652, 63
  %1671 = trunc i64 %1670 to i8
  store i8 %1671, i8* %32, align 1
  %1672 = lshr i64 %1644, 63
  %1673 = xor i64 %1670, %1672
  %1674 = add nuw nsw i64 %1673, %1670
  %1675 = icmp eq i64 %1674, 2
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %38, align 1
  store i64 %1652, i64* %RSI.i311, align 8
  %1677 = add i64 %1629, 226
  %1678 = add i64 %1629, 36
  %1679 = load i64, i64* %6, align 8
  %1680 = add i64 %1679, -8
  %1681 = inttoptr i64 %1680 to i64*
  store i64 %1678, i64* %1681, align 8
  store i64 %1680, i64* %6, align 8
  store i64 %1677, i64* %3, align 8
  %call2_446ecd = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %1677, %struct.Memory* %call2_446e9b)
  %1682 = load i32, i32* %EAX.i831, align 4
  %1683 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1684 = and i32 %1682, 255
  %1685 = tail call i32 @llvm.ctpop.i32(i32 %1684)
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = xor i8 %1687, 1
  store i8 %1688, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1689 = icmp eq i32 %1682, 0
  %1690 = zext i1 %1689 to i8
  store i8 %1690, i8* %29, align 1
  %1691 = lshr i32 %1682, 31
  %1692 = trunc i32 %1691 to i8
  store i8 %1692, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v214 = select i1 %1689, i64 9, i64 14
  %1693 = add i64 %1683, %.v214
  store i64 %1693, i64* %3, align 8
  br i1 %1689, label %block_446edb, label %block_.L_446ee0

block_446edb:                                     ; preds = %block_.L_446eae
  %1694 = add i64 %1693, 145
  br label %block_.L_446f6c

block_.L_446ee0:                                  ; preds = %block_.L_446eae
  %1695 = load i64, i64* %RBP.i, align 8
  %1696 = add i64 %1695, -16
  %1697 = add i64 %1693, 4
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1696 to i64*
  %1699 = load i64, i64* %1698, align 8
  store i64 %1699, i64* %RAX.i824, align 8
  %1700 = add i64 %1693, 7
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1699 to i64*
  %1702 = load i64, i64* %1701, align 8
  store i64 %1702, i64* %RDI.i341, align 8
  %1703 = add i64 %1693, 11
  store i64 %1703, i64* %3, align 8
  %1704 = load i64, i64* %1698, align 8
  store i64 %1704, i64* %RAX.i824, align 8
  %1705 = add i64 %1704, 128
  %1706 = add i64 %1693, 18
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i64*
  %1708 = load i64, i64* %1707, align 8
  store i64 %1708, i64* %RAX.i824, align 8
  %1709 = add i64 %1695, -22
  %1710 = add i64 %1693, 22
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i16*
  %1712 = load i16, i16* %1711, align 2
  %1713 = zext i16 %1712 to i64
  store i64 %1713, i64* %RCX.i788, align 8
  %1714 = zext i16 %1712 to i64
  %1715 = shl nuw nsw i64 %1714, 2
  store i64 %1715, i64* %RDX.i760, align 8
  %1716 = add i64 %1715, %1708
  store i64 %1716, i64* %RAX.i824, align 8
  %1717 = icmp ult i64 %1716, %1708
  %1718 = icmp ult i64 %1716, %1715
  %1719 = or i1 %1717, %1718
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %14, align 1
  %1721 = trunc i64 %1716 to i32
  %1722 = and i32 %1721, 255
  %1723 = tail call i32 @llvm.ctpop.i32(i32 %1722)
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  %1726 = xor i8 %1725, 1
  store i8 %1726, i8* %21, align 1
  %1727 = xor i64 %1715, %1708
  %1728 = xor i64 %1727, %1716
  %1729 = lshr i64 %1728, 4
  %1730 = trunc i64 %1729 to i8
  %1731 = and i8 %1730, 1
  store i8 %1731, i8* %26, align 1
  %1732 = icmp eq i64 %1716, 0
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %29, align 1
  %1734 = lshr i64 %1716, 63
  %1735 = trunc i64 %1734 to i8
  store i8 %1735, i8* %32, align 1
  %1736 = lshr i64 %1708, 63
  %1737 = xor i64 %1734, %1736
  %1738 = add nuw nsw i64 %1737, %1734
  %1739 = icmp eq i64 %1738, 2
  %1740 = zext i1 %1739 to i8
  store i8 %1740, i8* %38, align 1
  store i64 %1716, i64* %RSI.i311, align 8
  %1741 = add i64 %1693, 176
  %1742 = add i64 %1693, 39
  %1743 = load i64, i64* %6, align 8
  %1744 = add i64 %1743, -8
  %1745 = inttoptr i64 %1744 to i64*
  store i64 %1742, i64* %1745, align 8
  store i64 %1744, i64* %6, align 8
  store i64 %1741, i64* %3, align 8
  %call2_446f02 = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %1741, %struct.Memory* %call2_446ecd)
  %1746 = load i32, i32* %EAX.i831, align 4
  %1747 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1748 = and i32 %1746, 255
  %1749 = tail call i32 @llvm.ctpop.i32(i32 %1748)
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = xor i8 %1751, 1
  store i8 %1752, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1753 = icmp eq i32 %1746, 0
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %29, align 1
  %1755 = lshr i32 %1746, 31
  %1756 = trunc i32 %1755 to i8
  store i8 %1756, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v215 = select i1 %1753, i64 9, i64 14
  %1757 = add i64 %1747, %.v215
  store i64 %1757, i64* %3, align 8
  br i1 %1753, label %block_446f10, label %block_.L_446f15

block_446f10:                                     ; preds = %block_.L_446ee0
  %1758 = add i64 %1757, 92
  br label %block_.L_446f6c

block_.L_446f15:                                  ; preds = %block_.L_446ee0
  %1759 = load i64, i64* %RBP.i, align 8
  %1760 = add i64 %1759, -16
  %1761 = add i64 %1757, 4
  store i64 %1761, i64* %3, align 8
  %1762 = inttoptr i64 %1760 to i64*
  %1763 = load i64, i64* %1762, align 8
  store i64 %1763, i64* %RAX.i824, align 8
  %1764 = add i64 %1757, 7
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1763 to i64*
  %1766 = load i64, i64* %1765, align 8
  store i64 %1766, i64* %RDI.i341, align 8
  %1767 = add i64 %1757, 11
  store i64 %1767, i64* %3, align 8
  %1768 = load i64, i64* %1762, align 8
  store i64 %1768, i64* %RAX.i824, align 8
  %1769 = add i64 %1768, 136
  %1770 = add i64 %1757, 18
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i64*
  %1772 = load i64, i64* %1771, align 8
  store i64 %1772, i64* %RAX.i824, align 8
  %1773 = add i64 %1759, -22
  %1774 = add i64 %1757, 22
  store i64 %1774, i64* %3, align 8
  %1775 = inttoptr i64 %1773 to i16*
  %1776 = load i16, i16* %1775, align 2
  %1777 = zext i16 %1776 to i64
  store i64 %1777, i64* %RCX.i788, align 8
  %1778 = zext i16 %1776 to i64
  %1779 = shl nuw nsw i64 %1778, 2
  store i64 %1779, i64* %RDX.i760, align 8
  %1780 = add i64 %1779, %1772
  store i64 %1780, i64* %RAX.i824, align 8
  %1781 = icmp ult i64 %1780, %1772
  %1782 = icmp ult i64 %1780, %1779
  %1783 = or i1 %1781, %1782
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %14, align 1
  %1785 = trunc i64 %1780 to i32
  %1786 = and i32 %1785, 255
  %1787 = tail call i32 @llvm.ctpop.i32(i32 %1786)
  %1788 = trunc i32 %1787 to i8
  %1789 = and i8 %1788, 1
  %1790 = xor i8 %1789, 1
  store i8 %1790, i8* %21, align 1
  %1791 = xor i64 %1779, %1772
  %1792 = xor i64 %1791, %1780
  %1793 = lshr i64 %1792, 4
  %1794 = trunc i64 %1793 to i8
  %1795 = and i8 %1794, 1
  store i8 %1795, i8* %26, align 1
  %1796 = icmp eq i64 %1780, 0
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %29, align 1
  %1798 = lshr i64 %1780, 63
  %1799 = trunc i64 %1798 to i8
  store i8 %1799, i8* %32, align 1
  %1800 = lshr i64 %1772, 63
  %1801 = xor i64 %1798, %1800
  %1802 = add nuw nsw i64 %1801, %1798
  %1803 = icmp eq i64 %1802, 2
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %38, align 1
  store i64 %1780, i64* %RSI.i311, align 8
  %1805 = add i64 %1757, 123
  %1806 = add i64 %1757, 39
  %1807 = load i64, i64* %6, align 8
  %1808 = add i64 %1807, -8
  %1809 = inttoptr i64 %1808 to i64*
  store i64 %1806, i64* %1809, align 8
  store i64 %1808, i64* %6, align 8
  store i64 %1805, i64* %3, align 8
  %call2_446f37 = tail call %struct.Memory* @sub_446f90.read_i32(%struct.State* nonnull %0, i64 %1805, %struct.Memory* %call2_446f02)
  %1810 = load i32, i32* %EAX.i831, align 4
  %1811 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1812 = and i32 %1810, 255
  %1813 = tail call i32 @llvm.ctpop.i32(i32 %1812)
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = xor i8 %1815, 1
  store i8 %1816, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1817 = icmp eq i32 %1810, 0
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %29, align 1
  %1819 = lshr i32 %1810, 31
  %1820 = trunc i32 %1819 to i8
  store i8 %1820, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v216 = select i1 %1817, i64 9, i64 14
  %1821 = add i64 %1811, %.v216
  store i64 %1821, i64* %3, align 8
  br i1 %1817, label %block_446f45, label %block_.L_446f4a

block_446f45:                                     ; preds = %block_.L_446f15
  %1822 = add i64 %1821, 39
  br label %block_.L_446f6c

block_.L_446f4a:                                  ; preds = %block_.L_446f15
  %1823 = load i64, i64* %RBP.i, align 8
  %1824 = add i64 %1823, -22
  %1825 = add i64 %1821, 9
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i16*
  %1827 = load i16, i16* %1826, align 2
  %1828 = add i16 %1827, 1
  store i16 %1828, i16* %AX.i394, align 2
  %1829 = icmp eq i16 %1827, -1
  %1830 = icmp eq i16 %1828, 0
  %1831 = or i1 %1829, %1830
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %14, align 1
  %1833 = and i16 %1828, 255
  %1834 = zext i16 %1833 to i32
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834)
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %21, align 1
  %1839 = xor i16 %1828, %1827
  %1840 = lshr i16 %1839, 4
  %1841 = trunc i16 %1840 to i8
  %1842 = and i8 %1841, 1
  store i8 %1842, i8* %26, align 1
  %1843 = zext i1 %1830 to i8
  store i8 %1843, i8* %29, align 1
  %1844 = lshr i16 %1828, 15
  %1845 = trunc i16 %1844 to i8
  store i8 %1845, i8* %32, align 1
  %1846 = lshr i16 %1827, 15
  %1847 = xor i16 %1844, %1846
  %1848 = add nuw nsw i16 %1847, %1844
  %1849 = icmp eq i16 %1848, 2
  %1850 = zext i1 %1849 to i8
  store i8 %1850, i8* %38, align 1
  %1851 = add i64 %1821, 17
  store i64 %1851, i64* %3, align 8
  store i16 %1828, i16* %1826, align 2
  %1852 = load i64, i64* %3, align 8
  %1853 = add i64 %1852, -420
  store i64 %1853, i64* %3, align 8
  br label %block_.L_446db7

block_.L_446f60:                                  ; preds = %block_.L_446db7
  %1854 = add i64 %1348, -4
  %1855 = add i64 %1384, 7
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i32*
  store i32 0, i32* %1856, align 4
  %1857 = load i64, i64* %3, align 8
  %1858 = add i64 %1857, 20
  store i64 %1858, i64* %3, align 8
  br label %block_.L_446f7b

block_.L_446f6c:                                  ; preds = %block_446f45, %block_446f10, %block_446edb, %block_446ea9, %block_446e77, %block_446e29, %block_446df3, %block_446da5, %block_446d6e, %block_446d37, %block_446d03, %block_446c8e, %block_446c61, %block_446c4b, %block_446c1c, %block_446bed, %block_446bbe, %block_446b99, %block_446b74, %block_446b4f, %block_446b2a, %block_446b05, %block_446ae0, %block_446abb, %block_446a96, %block_.L_446a2b, %block_446a00, %block_4469d4, %block_4469a8
  %RAX.i10.pre-phi = phi i64* [ %RAX.i824, %block_446f45 ], [ %RAX.i824, %block_446f10 ], [ %RAX.i824, %block_446edb ], [ %RAX.i824, %block_446ea9 ], [ %RAX.i824, %block_446e77 ], [ %RAX.i824, %block_446e29 ], [ %RAX.i824, %block_446df3 ], [ %RAX.i824, %block_446da5 ], [ %RAX.i824, %block_446d6e ], [ %RAX.i824, %block_446d37 ], [ %RAX.i824, %block_446d03 ], [ %RAX.i824, %block_446c8e ], [ %RAX.i824, %block_446c61 ], [ %RAX.i824, %block_446c4b ], [ %RAX.i824, %block_446c1c ], [ %RAX.i824, %block_446bed ], [ %RAX.i824, %block_446bbe ], [ %RAX.i824, %block_446b99 ], [ %RAX.i824, %block_446b74 ], [ %RAX.i824, %block_446b4f ], [ %RAX.i824, %block_446b2a ], [ %RAX.i824, %block_446b05 ], [ %RAX.i824, %block_446ae0 ], [ %RAX.i824, %block_446abb ], [ %RAX.i824, %block_446a96 ], [ %RAX.i824, %block_.L_446a2b ], [ %RAX.i824, %block_446a00 ], [ %RAX.i824, %block_4469d4 ], [ %.pre182, %block_4469a8 ]
  %.sink = phi i64 [ %1822, %block_446f45 ], [ %1758, %block_446f10 ], [ %1694, %block_446edb ], [ %1630, %block_446ea9 ], [ %1569, %block_446e77 ], [ %1495, %block_446e29 ], [ %1439, %block_446df3 ], [ %1342, %block_446da5 ], [ %1288, %block_446d6e ], [ %1234, %block_446d37 ], [ %1180, %block_446d03 ], [ %1043, %block_446c8e ], [ %991, %block_446c61 ], [ %971, %block_446c4b ], [ %912, %block_446c1c ], [ %854, %block_446bed ], [ %795, %block_446bbe ], [ %745, %block_446b99 ], [ %695, %block_446b74 ], [ %645, %block_446b4f ], [ %595, %block_446b2a ], [ %544, %block_446b05 ], [ %493, %block_446ae0 ], [ %442, %block_446abb ], [ %391, %block_446a96 ], [ %292, %block_.L_446a2b ], [ %252, %block_446a00 ], [ %202, %block_4469d4 ], [ %136, %block_4469a8 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_446f37, %block_446f45 ], [ %call2_446f02, %block_446f10 ], [ %call2_446ecd, %block_446edb ], [ %call2_446e9b, %block_446ea9 ], [ %call2_446e5e, %block_446e77 ], [ %1455, %block_446e29 ], [ %MEMORY.3, %block_446df3 ], [ %1313, %block_446da5 ], [ %1259, %block_446d6e ], [ %1205, %block_446d37 ], [ %1151, %block_446d03 ], [ %1014, %block_446c8e ], [ %call2_446c3d, %block_446c61 ], [ %call2_446c3d, %block_446c4b ], [ %call2_446c0e, %block_446c1c ], [ %call2_446bdf, %block_446bed ], [ %call2_446bb0, %block_446bbe ], [ %call2_446b8b, %block_446b99 ], [ %call2_446b66, %block_446b74 ], [ %call2_446b41, %block_446b4f ], [ %call2_446b1c, %block_446b2a ], [ %call2_446af7, %block_446b05 ], [ %call2_446ad2, %block_446ae0 ], [ %call2_446aad, %block_446abb ], [ %call2_446a88, %block_446a96 ], [ %call2_4469f2, %block_.L_446a2b ], [ %call2_4469f2, %block_446a00 ], [ %call2_44699a, %block_4469d4 ], [ %call2_44699a, %block_4469a8 ]
  %1859 = load i64, i64* %RBP.i, align 8
  %1860 = add i64 %1859, -16
  %1861 = add i64 %.sink, 4
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1860 to i64*
  %1863 = load i64, i64* %1862, align 8
  store i64 %1863, i64* %RDI.i341, align 8
  %1864 = add i64 %.sink, 644
  %1865 = add i64 %.sink, 9
  %1866 = load i64, i64* %6, align 8
  %1867 = add i64 %1866, -8
  %1868 = inttoptr i64 %1867 to i64*
  store i64 %1865, i64* %1868, align 8
  store i64 %1867, i64* %6, align 8
  store i64 %1864, i64* %3, align 8
  %call2_446f70 = tail call %struct.Memory* @sub_4471f0.SSIClose(%struct.State* nonnull %0, i64 %1864, %struct.Memory* %MEMORY.4)
  %1869 = load i64, i64* %RBP.i, align 8
  %1870 = add i64 %1869, -28
  %1871 = load i64, i64* %3, align 8
  %1872 = add i64 %1871, 3
  store i64 %1872, i64* %3, align 8
  %1873 = inttoptr i64 %1870 to i32*
  %1874 = load i32, i32* %1873, align 4
  %1875 = zext i32 %1874 to i64
  store i64 %1875, i64* %RAX.i10.pre-phi, align 8
  %1876 = add i64 %1869, -4
  %1877 = add i64 %1871, 6
  store i64 %1877, i64* %3, align 8
  %1878 = inttoptr i64 %1876 to i32*
  store i32 %1874, i32* %1878, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_446f7b

block_.L_446f7b:                                  ; preds = %block_.L_446f6c, %block_.L_446f60
  %RAX.i.pre-phi = phi i64* [ %RAX.i10.pre-phi, %block_.L_446f6c ], [ %RAX.i824, %block_.L_446f60 ]
  %1879 = phi i64 [ %.pre181, %block_.L_446f6c ], [ %1858, %block_.L_446f60 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_446f70, %block_.L_446f6c ], [ %MEMORY.3, %block_.L_446f60 ]
  %1880 = load i64, i64* %RBP.i, align 8
  %1881 = add i64 %1880, -4
  %1882 = add i64 %1879, 3
  store i64 %1882, i64* %3, align 8
  %1883 = inttoptr i64 %1881 to i32*
  %1884 = load i32, i32* %1883, align 4
  %1885 = zext i32 %1884 to i64
  store i64 %1885, i64* %RAX.i.pre-phi, align 8
  %1886 = load i64, i64* %6, align 8
  %1887 = add i64 %1886, 32
  store i64 %1887, i64* %6, align 8
  %1888 = icmp ugt i64 %1886, -33
  %1889 = zext i1 %1888 to i8
  store i8 %1889, i8* %14, align 1
  %1890 = trunc i64 %1887 to i32
  %1891 = and i32 %1890, 255
  %1892 = tail call i32 @llvm.ctpop.i32(i32 %1891)
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  store i8 %1895, i8* %21, align 1
  %1896 = xor i64 %1887, %1886
  %1897 = lshr i64 %1896, 4
  %1898 = trunc i64 %1897 to i8
  %1899 = and i8 %1898, 1
  store i8 %1899, i8* %26, align 1
  %1900 = icmp eq i64 %1887, 0
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %29, align 1
  %1902 = lshr i64 %1887, 63
  %1903 = trunc i64 %1902 to i8
  store i8 %1903, i8* %32, align 1
  %1904 = lshr i64 %1886, 63
  %1905 = xor i64 %1902, %1904
  %1906 = add nuw nsw i64 %1905, %1902
  %1907 = icmp eq i64 %1906, 2
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %38, align 1
  %1909 = add i64 %1879, 8
  store i64 %1909, i64* %3, align 8
  %1910 = add i64 %1886, 40
  %1911 = inttoptr i64 %1887 to i64*
  %1912 = load i64, i64* %1911, align 8
  store i64 %1912, i64* %RBP.i, align 8
  store i64 %1910, i64* %6, align 8
  %1913 = add i64 %1879, 9
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1910 to i64*
  %1915 = load i64, i64* %1914, align 8
  store i64 %1915, i64* %3, align 8
  %1916 = add i64 %1886, 48
  store i64 %1916, i64* %6, align 8
  ret %struct.Memory* %MEMORY.5
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
define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 6, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x68__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x70__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x78__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x80__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0x88__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 11
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0x0__0xc__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  store i16 0, i16* %7, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.read_i32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4469b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x663038___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x663038_type* @G_0x663038 to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4469e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x66303c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x66303c_type* @G_0x66303c to i32*), align 8
  %8 = sub i32 %4, %7
  %9 = icmp ult i32 %4, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = and i32 %8, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i32 %7, %4
  %19 = xor i32 %18, %8
  %20 = lshr i32 %19, 4
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i32 %8, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %8, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %4, 31
  %31 = lshr i32 %7, 31
  %32 = xor i32 %31, %30
  %33 = xor i32 %27, %30
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
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
define %struct.Memory* @routine_movq___rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -9
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
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_446a05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_446a2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_446a37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 7, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_andl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RSI, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil___dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %SIL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dil__0x60__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 96
  %6 = load i8, i8* %DIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dil__0x61__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 97
  %6 = load i8, i8* %DIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12
  store i64 %6, i64* %RDX, align 8
  %7 = icmp ugt i64 %3, -13
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
define %struct.Memory* @routine_movq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.read_i16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_446a9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -17
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
define %struct.Memory* @routine_jne_.L_446ac0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x14___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 20
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -21
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
define %struct.Memory* @routine_jne_.L_446ae5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x18___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 24
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -25
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
define %struct.Memory* @routine_jne_.L_446b0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x1c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 28
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -29
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
define %struct.Memory* @routine_jne_.L_446b2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_446b54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x24___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 36
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -37
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
define %struct.Memory* @routine_jne_.L_446b79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x28___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 40
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -41
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
define %struct.Memory* @routine_jne_.L_446b9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x2c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 44
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -45
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
define %struct.Memory* @routine_jne_.L_446bc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_0x60__rax____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x30___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 48
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -49
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
define %struct.Memory* @routine_movsbl__cl___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i8 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.read_offset(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_446bf2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x40___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_446c21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -81
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
define %struct.Memory* @routine_jne_.L_446c50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzwl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_446c66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.malloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x68__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_446c9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__0x0__MINUS0x16__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -22
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  store i16 0, i16* %7, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x16__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -22
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
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
define %struct.Memory* @routine_movzwl_0xc__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = sub i32 %5, %6
  %10 = icmp ult i32 %5, %6
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
  %19 = xor i32 %6, %5
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
  %31 = lshr i32 %5, 31
  %32 = lshr i32 %6, 31
  %33 = xor i32 %32, %31
  %34 = xor i32 %28, %31
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_446cdb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzwl_MINUS0x16__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -22
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i16*
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__0x0____rax__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  store i64 0, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw_MINUS0x16__rbp____ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -22
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i16*
  %9 = load i16, i16* %8, align 2
  store i16 %9, i16* %AX, align 2
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addw__0x1___ax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %4 = load i16, i16* %AX, align 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = add i16 %4, 1
  store i16 %7, i16* %AX, align 2
  %8 = icmp eq i16 %4, -1
  %9 = icmp eq i16 %7, 0
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i16 %7, 255
  %14 = zext i16 %13 to i32
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i16 %7, %4
  %21 = lshr i16 %20, 4
  %22 = trunc i16 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = zext i1 %9 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i16 %7, 15
  %28 = trunc i16 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i16 %4, 15
  %31 = xor i16 %27, %30
  %32 = add nuw nsw i16 %31, %27
  %33 = icmp eq i16 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movw__ax__MINUS0x16__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AX = bitcast %union.anon* %3 to i16*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -22
  %6 = load i16, i16* %AX, align 2
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i16*
  store i16 %6, i16* %9, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_446ca0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__rax__0x70__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_446d0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x78__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_446d43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x80__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 128
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_446d7a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x88__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_446db1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_446f60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x24__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_callq_.indexfile_position(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_446df8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_shlq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x68__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_446e35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x68__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_callq_.fread_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x18__rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_446e7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_446eae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_446ee0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x80__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_446f15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x88__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_446f4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_446f4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_446db7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_446f7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.SSIClose(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
