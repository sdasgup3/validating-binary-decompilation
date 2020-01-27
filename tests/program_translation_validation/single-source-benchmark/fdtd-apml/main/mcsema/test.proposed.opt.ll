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

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400f90.init_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4013d0.kernel_fdtd_apml(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401f10.kernel_fdtd_apml_StrictFP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402a50.check_FP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402bf0.print_array(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i24, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i33, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i42, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i51, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %RBX.i60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %30 = load i64, i64* %RBX.i60, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  %33 = add i64 %7, -48
  %34 = inttoptr i64 %33 to i64*
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %7, -440
  store i64 %36, i64* %6, align 8
  %37 = icmp ult i64 %33, 392
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
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i78 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %EAX.i = bitcast %union.anon* %64 to i32*
  %RCX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4225, i64* %RCX.i, align 8
  store i64 8, i64* %RAX.i78, align 8
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -44
  %67 = add i64 %35, 26
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i32*
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %69 to i32*
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -48
  %72 = load i32, i32* %EDI.i, align 4
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 3
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %75, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -56
  %78 = load i64, i64* %RSI.i, align 8
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -60
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 7
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %83 to i32*
  store i32 64, i32* %86, align 4
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -64
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 7
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %88 to i32*
  store i32 64, i32* %91, align 4
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -68
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 7
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %93 to i32*
  store i32 64, i32* %96, align 4
  %RDI.i159 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %97 = load i64, i64* %RCX.i, align 8
  %98 = load i64, i64* %3, align 8
  store i64 %97, i64* %RDI.i159, align 8
  %99 = load i32, i32* %EAX.i, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RSI.i, align 8
  %101 = add i64 %98, -259
  %102 = add i64 %98, 10
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105, align 8
  store i64 %104, i64* %6, align 8
  store i64 %101, i64* %3, align 8
  %call2_4008c8 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %101, %struct.Memory* %2)
  %106 = load i64, i64* %3, align 8
  store i64 4225, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -96
  %109 = load i64, i64* %RAX.i78, align 8
  %110 = add i64 %106, 16
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, -285
  %114 = add i64 %112, 5
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, -8
  %117 = inttoptr i64 %116 to i64*
  store i64 %114, i64* %117, align 8
  store i64 %116, i64* %6, align 8
  store i64 %113, i64* %3, align 8
  %call2_4008dd = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %113, %struct.Memory* %call2_4008c8)
  %118 = load i64, i64* %3, align 8
  store i64 4225, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -104
  %121 = load i64, i64* %RAX.i78, align 8
  %122 = add i64 %118, 16
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, -306
  %126 = add i64 %124, 5
  %127 = load i64, i64* %6, align 8
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*
  store i64 %126, i64* %129, align 8
  store i64 %128, i64* %6, align 8
  store i64 %125, i64* %3, align 8
  %call2_4008f2 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %125, %struct.Memory* %call2_4008dd)
  %130 = load i64, i64* %3, align 8
  store i64 4225, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -112
  %133 = load i64, i64* %RAX.i78, align 8
  %134 = add i64 %130, 16
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %132 to i64*
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %3, align 8
  %137 = add i64 %136, -327
  %138 = add i64 %136, 5
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, -8
  %141 = inttoptr i64 %140 to i64*
  store i64 %138, i64* %141, align 8
  store i64 %140, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  %call2_400907 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %137, %struct.Memory* %call2_4008f2)
  %142 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -120
  %145 = load i64, i64* %RAX.i78, align 8
  %146 = add i64 %142, 16
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %144 to i64*
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %3, align 8
  %149 = add i64 %148, -348
  %150 = add i64 %148, 5
  %151 = load i64, i64* %6, align 8
  %152 = add i64 %151, -8
  %153 = inttoptr i64 %152 to i64*
  store i64 %150, i64* %153, align 8
  store i64 %152, i64* %6, align 8
  store i64 %149, i64* %3, align 8
  %call2_40091c = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %149, %struct.Memory* %call2_400907)
  %154 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -128
  %157 = load i64, i64* %RAX.i78, align 8
  %158 = add i64 %154, 16
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %156 to i64*
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %3, align 8
  %161 = add i64 %160, -369
  %162 = add i64 %160, 5
  %163 = load i64, i64* %6, align 8
  %164 = add i64 %163, -8
  %165 = inttoptr i64 %164 to i64*
  store i64 %162, i64* %165, align 8
  store i64 %164, i64* %6, align 8
  store i64 %161, i64* %3, align 8
  %call2_400931 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %161, %struct.Memory* %call2_40091c)
  %166 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -136
  %169 = load i64, i64* %RAX.i78, align 8
  %170 = add i64 %166, 19
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %168 to i64*
  store i64 %169, i64* %171, align 8
  %172 = load i64, i64* %3, align 8
  %173 = add i64 %172, -393
  %174 = add i64 %172, 5
  %175 = load i64, i64* %6, align 8
  %176 = add i64 %175, -8
  %177 = inttoptr i64 %176 to i64*
  store i64 %174, i64* %177, align 8
  store i64 %176, i64* %6, align 8
  store i64 %173, i64* %3, align 8
  %call2_400949 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %173, %struct.Memory* %call2_400931)
  %178 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -144
  %181 = load i64, i64* %RAX.i78, align 8
  %182 = add i64 %178, 19
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %180 to i64*
  store i64 %181, i64* %183, align 8
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, -417
  %186 = add i64 %184, 5
  %187 = load i64, i64* %6, align 8
  %188 = add i64 %187, -8
  %189 = inttoptr i64 %188 to i64*
  store i64 %186, i64* %189, align 8
  store i64 %188, i64* %6, align 8
  store i64 %185, i64* %3, align 8
  %call2_400961 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %185, %struct.Memory* %call2_400949)
  %190 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -152
  %193 = load i64, i64* %RAX.i78, align 8
  %194 = add i64 %190, 19
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %192 to i64*
  store i64 %193, i64* %195, align 8
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, -441
  %198 = add i64 %196, 5
  %199 = load i64, i64* %6, align 8
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %198, i64* %201, align 8
  store i64 %200, i64* %6, align 8
  store i64 %197, i64* %3, align 8
  %call2_400979 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %197, %struct.Memory* %call2_400961)
  %202 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -160
  %205 = load i64, i64* %RAX.i78, align 8
  %206 = add i64 %202, 19
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %204 to i64*
  store i64 %205, i64* %207, align 8
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, -465
  %210 = add i64 %208, 5
  %211 = load i64, i64* %6, align 8
  %212 = add i64 %211, -8
  %213 = inttoptr i64 %212 to i64*
  store i64 %210, i64* %213, align 8
  store i64 %212, i64* %6, align 8
  store i64 %209, i64* %3, align 8
  %call2_400991 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %209, %struct.Memory* %call2_400979)
  %214 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -168
  %217 = load i64, i64* %RAX.i78, align 8
  %218 = add i64 %214, 19
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %216 to i64*
  store i64 %217, i64* %219, align 8
  %220 = load i64, i64* %3, align 8
  %221 = add i64 %220, -489
  %222 = add i64 %220, 5
  %223 = load i64, i64* %6, align 8
  %224 = add i64 %223, -8
  %225 = inttoptr i64 %224 to i64*
  store i64 %222, i64* %225, align 8
  store i64 %224, i64* %6, align 8
  store i64 %221, i64* %3, align 8
  %call2_4009a9 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %221, %struct.Memory* %call2_400991)
  %226 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -176
  %229 = load i64, i64* %RAX.i78, align 8
  %230 = add i64 %226, 19
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %228 to i64*
  store i64 %229, i64* %231, align 8
  %232 = load i64, i64* %3, align 8
  %233 = add i64 %232, -513
  %234 = add i64 %232, 5
  %235 = load i64, i64* %6, align 8
  %236 = add i64 %235, -8
  %237 = inttoptr i64 %236 to i64*
  store i64 %234, i64* %237, align 8
  store i64 %236, i64* %6, align 8
  store i64 %233, i64* %3, align 8
  %call2_4009c1 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %233, %struct.Memory* %call2_4009a9)
  %238 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -184
  %241 = load i64, i64* %RAX.i78, align 8
  %242 = add i64 %238, 19
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %240 to i64*
  store i64 %241, i64* %243, align 8
  %244 = load i64, i64* %3, align 8
  %245 = add i64 %244, -537
  %246 = add i64 %244, 5
  %247 = load i64, i64* %6, align 8
  %248 = add i64 %247, -8
  %249 = inttoptr i64 %248 to i64*
  store i64 %246, i64* %249, align 8
  store i64 %248, i64* %6, align 8
  store i64 %245, i64* %3, align 8
  %call2_4009d9 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %245, %struct.Memory* %call2_4009c1)
  %250 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -192
  %253 = load i64, i64* %RAX.i78, align 8
  %254 = add i64 %250, 19
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %252 to i64*
  store i64 %253, i64* %255, align 8
  %256 = load i64, i64* %3, align 8
  %257 = add i64 %256, -561
  %258 = add i64 %256, 5
  %259 = load i64, i64* %6, align 8
  %260 = add i64 %259, -8
  %261 = inttoptr i64 %260 to i64*
  store i64 %258, i64* %261, align 8
  store i64 %260, i64* %6, align 8
  store i64 %257, i64* %3, align 8
  %call2_4009f1 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %257, %struct.Memory* %call2_4009d9)
  %262 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -200
  %265 = load i64, i64* %RAX.i78, align 8
  %266 = add i64 %262, 19
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %264 to i64*
  store i64 %265, i64* %267, align 8
  %268 = load i64, i64* %3, align 8
  %269 = add i64 %268, -585
  %270 = add i64 %268, 5
  %271 = load i64, i64* %6, align 8
  %272 = add i64 %271, -8
  %273 = inttoptr i64 %272 to i64*
  store i64 %270, i64* %273, align 8
  store i64 %272, i64* %6, align 8
  store i64 %269, i64* %3, align 8
  %call2_400a09 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %269, %struct.Memory* %call2_4009f1)
  %274 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -208
  %277 = load i64, i64* %RAX.i78, align 8
  %278 = add i64 %274, 19
  store i64 %278, i64* %3, align 8
  %279 = inttoptr i64 %276 to i64*
  store i64 %277, i64* %279, align 8
  %280 = load i64, i64* %3, align 8
  %281 = add i64 %280, -609
  %282 = add i64 %280, 5
  %283 = load i64, i64* %6, align 8
  %284 = add i64 %283, -8
  %285 = inttoptr i64 %284 to i64*
  store i64 %282, i64* %285, align 8
  store i64 %284, i64* %6, align 8
  store i64 %281, i64* %3, align 8
  %call2_400a21 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %281, %struct.Memory* %call2_400a09)
  %286 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -216
  %289 = load i64, i64* %RAX.i78, align 8
  %290 = add i64 %286, 19
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %288 to i64*
  store i64 %289, i64* %291, align 8
  %292 = load i64, i64* %3, align 8
  %293 = add i64 %292, -633
  %294 = add i64 %292, 5
  %295 = load i64, i64* %6, align 8
  %296 = add i64 %295, -8
  %297 = inttoptr i64 %296 to i64*
  store i64 %294, i64* %297, align 8
  store i64 %296, i64* %6, align 8
  store i64 %293, i64* %3, align 8
  %call2_400a39 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %293, %struct.Memory* %call2_400a21)
  %298 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %299 = load i64, i64* %RBP.i, align 8
  %300 = add i64 %299, -224
  %301 = load i64, i64* %RAX.i78, align 8
  %302 = add i64 %298, 19
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %300 to i64*
  store i64 %301, i64* %303, align 8
  %304 = load i64, i64* %3, align 8
  %305 = add i64 %304, -657
  %306 = add i64 %304, 5
  %307 = load i64, i64* %6, align 8
  %308 = add i64 %307, -8
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  store i64 %308, i64* %6, align 8
  store i64 %305, i64* %3, align 8
  %call2_400a51 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %305, %struct.Memory* %call2_400a39)
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -80
  %312 = load i64, i64* %3, align 8
  store i64 %311, i64* %RCX.i, align 8
  %R8.i706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %313 = add i64 %310, -88
  store i64 %313, i64* %R8.i706, align 8
  %314 = add i64 %310, -232
  %315 = load i64, i64* %RAX.i78, align 8
  %316 = add i64 %312, 15
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %314 to i64*
  store i64 %315, i64* %317, align 8
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -60
  %320 = load i64, i64* %3, align 8
  %321 = add i64 %320, 3
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RDI.i159, align 8
  %325 = add i64 %318, -68
  %326 = add i64 %320, 6
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RSI.i, align 8
  %RDX.i693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %330 = add i64 %318, -64
  %331 = add i64 %320, 9
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RDX.i693, align 8
  %R9.i691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %335 = add i64 %318, -96
  %336 = add i64 %320, 13
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %R9.i691, align 8
  %339 = add i64 %318, -104
  %340 = add i64 %320, 17
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i64*
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %RAX.i78, align 8
  %R10.i685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %343 = add i64 %318, -136
  %344 = add i64 %320, 24
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %R10.i685, align 8
  %R11.i682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %347 = add i64 %318, -144
  %348 = add i64 %320, 31
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %R11.i682, align 8
  %351 = add i64 %318, -152
  %352 = add i64 %320, 38
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i64*
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %RBX.i60, align 8
  %355 = add i64 %318, -192
  %356 = add i64 %320, 45
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %R14.i33, align 8
  %359 = add i64 %318, -200
  %360 = add i64 %320, 52
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %R15.i24, align 8
  %363 = add i64 %318, -208
  %364 = add i64 %320, 59
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %R12.i51, align 8
  %367 = add i64 %318, -216
  %368 = add i64 %320, 66
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %R13.i42, align 8
  %371 = add i64 %318, -240
  %372 = add i64 %320, 73
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i64*
  store i64 %342, i64* %373, align 8
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -224
  %376 = load i64, i64* %3, align 8
  %377 = add i64 %376, 7
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RAX.i78, align 8
  %380 = add i64 %374, -248
  %381 = add i64 %376, 14
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i64*
  store i64 %379, i64* %382, align 8
  %383 = load i64, i64* %RBP.i, align 8
  %384 = add i64 %383, -232
  %385 = load i64, i64* %3, align 8
  %386 = add i64 %385, 7
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %384 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %RAX.i78, align 8
  %389 = add i64 %383, -256
  %390 = add i64 %385, 14
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i64*
  store i64 %388, i64* %391, align 8
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -240
  %394 = load i64, i64* %3, align 8
  %395 = add i64 %394, 7
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %393 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RAX.i78, align 8
  %398 = bitcast i64* %6 to i64**
  %399 = load i64*, i64** %398, align 8
  %400 = add i64 %394, 11
  store i64 %400, i64* %3, align 8
  store i64 %397, i64* %399, align 8
  %401 = load i64, i64* %6, align 8
  %402 = add i64 %401, 8
  %403 = load i64, i64* %R10.i685, align 8
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, 5
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %402 to i64*
  store i64 %403, i64* %406, align 8
  %407 = load i64, i64* %6, align 8
  %408 = add i64 %407, 16
  %409 = load i64, i64* %R11.i682, align 8
  %410 = load i64, i64* %3, align 8
  %411 = add i64 %410, 5
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %408 to i64*
  store i64 %409, i64* %412, align 8
  %413 = load i64, i64* %6, align 8
  %414 = add i64 %413, 24
  %415 = load i64, i64* %RBX.i60, align 8
  %416 = load i64, i64* %3, align 8
  %417 = add i64 %416, 5
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %414 to i64*
  store i64 %415, i64* %418, align 8
  %419 = load i64, i64* %6, align 8
  %420 = add i64 %419, 32
  %421 = load i64, i64* %R14.i33, align 8
  %422 = load i64, i64* %3, align 8
  %423 = add i64 %422, 5
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %420 to i64*
  store i64 %421, i64* %424, align 8
  %425 = load i64, i64* %6, align 8
  %426 = add i64 %425, 40
  %427 = load i64, i64* %R15.i24, align 8
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 5
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %426 to i64*
  store i64 %427, i64* %430, align 8
  %431 = load i64, i64* %6, align 8
  %432 = add i64 %431, 48
  %433 = load i64, i64* %R12.i51, align 8
  %434 = load i64, i64* %3, align 8
  %435 = add i64 %434, 5
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %432 to i64*
  store i64 %433, i64* %436, align 8
  %437 = load i64, i64* %6, align 8
  %438 = add i64 %437, 56
  %439 = load i64, i64* %R13.i42, align 8
  %440 = load i64, i64* %3, align 8
  %441 = add i64 %440, 5
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %438 to i64*
  store i64 %439, i64* %442, align 8
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -248
  %445 = load i64, i64* %3, align 8
  %446 = add i64 %445, 7
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %444 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RAX.i78, align 8
  %449 = load i64, i64* %6, align 8
  %450 = add i64 %449, 64
  %451 = add i64 %445, 12
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i64*
  store i64 %448, i64* %452, align 8
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -256
  %455 = load i64, i64* %3, align 8
  %456 = add i64 %455, 7
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %454 to i64*
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* %RAX.i78, align 8
  %459 = load i64, i64* %6, align 8
  %460 = add i64 %459, 72
  %461 = add i64 %455, 12
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i64*
  store i64 %458, i64* %462, align 8
  %463 = load i64, i64* %3, align 8
  %464 = add i64 %463, 1152
  %465 = add i64 %463, 5
  %466 = load i64, i64* %6, align 8
  %467 = add i64 %466, -8
  %468 = inttoptr i64 %467 to i64*
  store i64 %465, i64* %468, align 8
  store i64 %467, i64* %6, align 8
  store i64 %464, i64* %3, align 8
  %call2_400b10 = tail call %struct.Memory* @sub_400f90.init_array(%struct.State* %0, i64 %464, %struct.Memory* %call2_400a51)
  %469 = load i64, i64* %RBP.i, align 8
  %470 = add i64 %469, -60
  %471 = load i64, i64* %3, align 8
  %472 = add i64 %471, 3
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %470 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RDI.i159, align 8
  %476 = add i64 %469, -68
  %477 = add i64 %471, 6
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RSI.i, align 8
  %481 = add i64 %469, -64
  %482 = add i64 %471, 9
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  %485 = zext i32 %484 to i64
  store i64 %485, i64* %RDX.i693, align 8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %487 = add i64 %469, -80
  %488 = add i64 %471, 14
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i64*
  %490 = load i64, i64* %489, align 8
  %491 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %486, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %490, i64* %491, align 1
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %493 = bitcast i64* %492 to double*
  store double 0.000000e+00, double* %493, align 1
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %495 = add i64 %469, -88
  %496 = add i64 %471, 19
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i64*
  %498 = load i64, i64* %497, align 8
  %499 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %494, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %498, i64* %499, align 1
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %501 = bitcast i64* %500 to double*
  store double 0.000000e+00, double* %501, align 1
  %502 = add i64 %469, -96
  %503 = add i64 %471, 23
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i64*
  %505 = load i64, i64* %504, align 8
  store i64 %505, i64* %RCX.i, align 8
  %506 = add i64 %469, -104
  %507 = add i64 %471, 27
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %506 to i64*
  %509 = load i64, i64* %508, align 8
  store i64 %509, i64* %R8.i706, align 8
  %510 = add i64 %469, -112
  %511 = add i64 %471, 31
  store i64 %511, i64* %3, align 8
  %512 = inttoptr i64 %510 to i64*
  %513 = load i64, i64* %512, align 8
  store i64 %513, i64* %R9.i691, align 8
  %514 = add i64 %469, -120
  %515 = add i64 %471, 35
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i64*
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %RAX.i78, align 8
  %518 = add i64 %469, -128
  %519 = add i64 %471, 39
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i64*
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %R10.i685, align 8
  %522 = add i64 %469, -136
  %523 = add i64 %471, 46
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i64*
  %525 = load i64, i64* %524, align 8
  store i64 %525, i64* %R11.i682, align 8
  %526 = add i64 %469, -144
  %527 = add i64 %471, 53
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i64*
  %529 = load i64, i64* %528, align 8
  store i64 %529, i64* %RBX.i60, align 8
  %530 = add i64 %469, -152
  %531 = add i64 %471, 60
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %R14.i33, align 8
  %534 = add i64 %469, -192
  %535 = add i64 %471, 67
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %R15.i24, align 8
  %538 = add i64 %469, -200
  %539 = add i64 %471, 74
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %R12.i51, align 8
  %542 = add i64 %469, -208
  %543 = add i64 %471, 81
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i64*
  %545 = load i64, i64* %544, align 8
  store i64 %545, i64* %R13.i42, align 8
  %546 = add i64 %469, -264
  %547 = add i64 %471, 88
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i64*
  store i64 %517, i64* %548, align 8
  %549 = load i64, i64* %RBP.i, align 8
  %550 = add i64 %549, -216
  %551 = load i64, i64* %3, align 8
  %552 = add i64 %551, 7
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %550 to i64*
  %554 = load i64, i64* %553, align 8
  store i64 %554, i64* %RAX.i78, align 8
  %555 = add i64 %549, -272
  %556 = add i64 %551, 14
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i64*
  store i64 %554, i64* %557, align 8
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -224
  %560 = load i64, i64* %3, align 8
  %561 = add i64 %560, 7
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %559 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %RAX.i78, align 8
  %564 = add i64 %558, -280
  %565 = add i64 %560, 14
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i64*
  store i64 %563, i64* %566, align 8
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -232
  %569 = load i64, i64* %3, align 8
  %570 = add i64 %569, 7
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %568 to i64*
  %572 = load i64, i64* %571, align 8
  store i64 %572, i64* %RAX.i78, align 8
  %573 = add i64 %567, -288
  %574 = add i64 %569, 14
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i64*
  store i64 %572, i64* %575, align 8
  %576 = load i64, i64* %RBP.i, align 8
  %577 = add i64 %576, -264
  %578 = load i64, i64* %3, align 8
  %579 = add i64 %578, 7
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %577 to i64*
  %581 = load i64, i64* %580, align 8
  store i64 %581, i64* %RAX.i78, align 8
  %582 = load i64*, i64** %398, align 8
  %583 = add i64 %578, 11
  store i64 %583, i64* %3, align 8
  store i64 %581, i64* %582, align 8
  %584 = load i64, i64* %6, align 8
  %585 = add i64 %584, 8
  %586 = load i64, i64* %R10.i685, align 8
  %587 = load i64, i64* %3, align 8
  %588 = add i64 %587, 5
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %585 to i64*
  store i64 %586, i64* %589, align 8
  %590 = load i64, i64* %6, align 8
  %591 = add i64 %590, 16
  %592 = load i64, i64* %R11.i682, align 8
  %593 = load i64, i64* %3, align 8
  %594 = add i64 %593, 5
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %591 to i64*
  store i64 %592, i64* %595, align 8
  %596 = load i64, i64* %6, align 8
  %597 = add i64 %596, 24
  %598 = load i64, i64* %RBX.i60, align 8
  %599 = load i64, i64* %3, align 8
  %600 = add i64 %599, 5
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %597 to i64*
  store i64 %598, i64* %601, align 8
  %602 = load i64, i64* %6, align 8
  %603 = add i64 %602, 32
  %604 = load i64, i64* %R14.i33, align 8
  %605 = load i64, i64* %3, align 8
  %606 = add i64 %605, 5
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %603 to i64*
  store i64 %604, i64* %607, align 8
  %608 = load i64, i64* %6, align 8
  %609 = add i64 %608, 40
  %610 = load i64, i64* %R15.i24, align 8
  %611 = load i64, i64* %3, align 8
  %612 = add i64 %611, 5
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %609 to i64*
  store i64 %610, i64* %613, align 8
  %614 = load i64, i64* %6, align 8
  %615 = add i64 %614, 48
  %616 = load i64, i64* %R12.i51, align 8
  %617 = load i64, i64* %3, align 8
  %618 = add i64 %617, 5
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %615 to i64*
  store i64 %616, i64* %619, align 8
  %620 = load i64, i64* %6, align 8
  %621 = add i64 %620, 56
  %622 = load i64, i64* %R13.i42, align 8
  %623 = load i64, i64* %3, align 8
  %624 = add i64 %623, 5
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %621 to i64*
  store i64 %622, i64* %625, align 8
  %626 = load i64, i64* %RBP.i, align 8
  %627 = add i64 %626, -272
  %628 = load i64, i64* %3, align 8
  %629 = add i64 %628, 7
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %627 to i64*
  %631 = load i64, i64* %630, align 8
  store i64 %631, i64* %RAX.i78, align 8
  %632 = load i64, i64* %6, align 8
  %633 = add i64 %632, 64
  %634 = add i64 %628, 12
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i64*
  store i64 %631, i64* %635, align 8
  %636 = load i64, i64* %RBP.i, align 8
  %637 = add i64 %636, -280
  %638 = load i64, i64* %3, align 8
  %639 = add i64 %638, 7
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %637 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RAX.i78, align 8
  %642 = load i64, i64* %6, align 8
  %643 = add i64 %642, 72
  %644 = add i64 %638, 12
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i64*
  store i64 %641, i64* %645, align 8
  %646 = load i64, i64* %RBP.i, align 8
  %647 = add i64 %646, -288
  %648 = load i64, i64* %3, align 8
  %649 = add i64 %648, 7
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %647 to i64*
  %651 = load i64, i64* %650, align 8
  store i64 %651, i64* %RAX.i78, align 8
  %652 = load i64, i64* %6, align 8
  %653 = add i64 %652, 80
  %654 = add i64 %648, 12
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i64*
  store i64 %651, i64* %655, align 8
  %656 = load i64, i64* %3, align 8
  %657 = add i64 %656, 2023
  %658 = add i64 %656, 5
  %659 = load i64, i64* %6, align 8
  %660 = add i64 %659, -8
  %661 = inttoptr i64 %660 to i64*
  store i64 %658, i64* %661, align 8
  store i64 %660, i64* %6, align 8
  store i64 %657, i64* %3, align 8
  %call2_400be9 = tail call %struct.Memory* @sub_4013d0.kernel_fdtd_apml(%struct.State* %0, i64 %657, %struct.Memory* %call2_400b10)
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -80
  %664 = load i64, i64* %3, align 8
  store i64 %663, i64* %RCX.i, align 8
  %665 = add i64 %662, -88
  store i64 %665, i64* %R8.i706, align 8
  %666 = add i64 %662, -60
  %667 = add i64 %664, 11
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = zext i32 %669 to i64
  store i64 %670, i64* %RDI.i159, align 8
  %671 = add i64 %662, -68
  %672 = add i64 %664, 14
  store i64 %672, i64* %3, align 8
  %673 = inttoptr i64 %671 to i32*
  %674 = load i32, i32* %673, align 4
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RSI.i, align 8
  %676 = add i64 %662, -64
  %677 = add i64 %664, 17
  store i64 %677, i64* %3, align 8
  %678 = inttoptr i64 %676 to i32*
  %679 = load i32, i32* %678, align 4
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %RDX.i693, align 8
  %681 = add i64 %662, -96
  %682 = add i64 %664, 21
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %681 to i64*
  %684 = load i64, i64* %683, align 8
  store i64 %684, i64* %R9.i691, align 8
  %685 = add i64 %662, -104
  %686 = add i64 %664, 25
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %RAX.i78, align 8
  %689 = add i64 %662, -168
  %690 = add i64 %664, 32
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i64*
  %692 = load i64, i64* %691, align 8
  store i64 %692, i64* %R10.i685, align 8
  %693 = add i64 %662, -176
  %694 = add i64 %664, 39
  store i64 %694, i64* %3, align 8
  %695 = inttoptr i64 %693 to i64*
  %696 = load i64, i64* %695, align 8
  store i64 %696, i64* %R11.i682, align 8
  %697 = add i64 %662, -184
  %698 = add i64 %664, 46
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i64*
  %700 = load i64, i64* %699, align 8
  store i64 %700, i64* %RBX.i60, align 8
  %701 = add i64 %662, -192
  %702 = add i64 %664, 53
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %R14.i33, align 8
  %705 = add i64 %662, -200
  %706 = add i64 %664, 60
  store i64 %706, i64* %3, align 8
  %707 = inttoptr i64 %705 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %R15.i24, align 8
  %709 = add i64 %662, -208
  %710 = add i64 %664, 67
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i64*
  %712 = load i64, i64* %711, align 8
  store i64 %712, i64* %R12.i51, align 8
  %713 = add i64 %662, -216
  %714 = add i64 %664, 74
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i64*
  %716 = load i64, i64* %715, align 8
  store i64 %716, i64* %R13.i42, align 8
  %717 = add i64 %662, -296
  %718 = add i64 %664, 81
  store i64 %718, i64* %3, align 8
  %719 = inttoptr i64 %717 to i64*
  store i64 %688, i64* %719, align 8
  %720 = load i64, i64* %RBP.i, align 8
  %721 = add i64 %720, -224
  %722 = load i64, i64* %3, align 8
  %723 = add i64 %722, 7
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %721 to i64*
  %725 = load i64, i64* %724, align 8
  store i64 %725, i64* %RAX.i78, align 8
  %726 = add i64 %720, -304
  %727 = add i64 %722, 14
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %726 to i64*
  store i64 %725, i64* %728, align 8
  %729 = load i64, i64* %RBP.i, align 8
  %730 = add i64 %729, -232
  %731 = load i64, i64* %3, align 8
  %732 = add i64 %731, 7
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %730 to i64*
  %734 = load i64, i64* %733, align 8
  store i64 %734, i64* %RAX.i78, align 8
  %735 = add i64 %729, -312
  %736 = add i64 %731, 14
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i64*
  store i64 %734, i64* %737, align 8
  %738 = load i64, i64* %RBP.i, align 8
  %739 = add i64 %738, -296
  %740 = load i64, i64* %3, align 8
  %741 = add i64 %740, 7
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %739 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %RAX.i78, align 8
  %744 = load i64*, i64** %398, align 8
  %745 = add i64 %740, 11
  store i64 %745, i64* %3, align 8
  store i64 %743, i64* %744, align 8
  %746 = load i64, i64* %6, align 8
  %747 = add i64 %746, 8
  %748 = load i64, i64* %R10.i685, align 8
  %749 = load i64, i64* %3, align 8
  %750 = add i64 %749, 5
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %747 to i64*
  store i64 %748, i64* %751, align 8
  %752 = load i64, i64* %6, align 8
  %753 = add i64 %752, 16
  %754 = load i64, i64* %R11.i682, align 8
  %755 = load i64, i64* %3, align 8
  %756 = add i64 %755, 5
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %753 to i64*
  store i64 %754, i64* %757, align 8
  %758 = load i64, i64* %6, align 8
  %759 = add i64 %758, 24
  %760 = load i64, i64* %RBX.i60, align 8
  %761 = load i64, i64* %3, align 8
  %762 = add i64 %761, 5
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %759 to i64*
  store i64 %760, i64* %763, align 8
  %764 = load i64, i64* %6, align 8
  %765 = add i64 %764, 32
  %766 = load i64, i64* %R14.i33, align 8
  %767 = load i64, i64* %3, align 8
  %768 = add i64 %767, 5
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %765 to i64*
  store i64 %766, i64* %769, align 8
  %770 = load i64, i64* %6, align 8
  %771 = add i64 %770, 40
  %772 = load i64, i64* %R15.i24, align 8
  %773 = load i64, i64* %3, align 8
  %774 = add i64 %773, 5
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %771 to i64*
  store i64 %772, i64* %775, align 8
  %776 = load i64, i64* %6, align 8
  %777 = add i64 %776, 48
  %778 = load i64, i64* %R12.i51, align 8
  %779 = load i64, i64* %3, align 8
  %780 = add i64 %779, 5
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %777 to i64*
  store i64 %778, i64* %781, align 8
  %782 = load i64, i64* %6, align 8
  %783 = add i64 %782, 56
  %784 = load i64, i64* %R13.i42, align 8
  %785 = load i64, i64* %3, align 8
  %786 = add i64 %785, 5
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %783 to i64*
  store i64 %784, i64* %787, align 8
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -304
  %790 = load i64, i64* %3, align 8
  %791 = add i64 %790, 7
  store i64 %791, i64* %3, align 8
  %792 = inttoptr i64 %789 to i64*
  %793 = load i64, i64* %792, align 8
  store i64 %793, i64* %RAX.i78, align 8
  %794 = load i64, i64* %6, align 8
  %795 = add i64 %794, 64
  %796 = add i64 %790, 12
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i64*
  store i64 %793, i64* %797, align 8
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -312
  %800 = load i64, i64* %3, align 8
  %801 = add i64 %800, 7
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %799 to i64*
  %803 = load i64, i64* %802, align 8
  store i64 %803, i64* %RAX.i78, align 8
  %804 = load i64, i64* %6, align 8
  %805 = add i64 %804, 72
  %806 = add i64 %800, 12
  store i64 %806, i64* %3, align 8
  %807 = inttoptr i64 %805 to i64*
  store i64 %803, i64* %807, align 8
  %808 = load i64, i64* %3, align 8
  %809 = add i64 %808, 751
  %810 = add i64 %808, 5
  %811 = load i64, i64* %6, align 8
  %812 = add i64 %811, -8
  %813 = inttoptr i64 %812 to i64*
  store i64 %810, i64* %813, align 8
  store i64 %812, i64* %6, align 8
  store i64 %809, i64* %3, align 8
  %call2_400ca1 = tail call %struct.Memory* @sub_400f90.init_array(%struct.State* %0, i64 %809, %struct.Memory* %call2_400be9)
  %814 = load i64, i64* %RBP.i, align 8
  %815 = add i64 %814, -60
  %816 = load i64, i64* %3, align 8
  %817 = add i64 %816, 3
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %815 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = zext i32 %819 to i64
  store i64 %820, i64* %RDI.i159, align 8
  %821 = add i64 %814, -68
  %822 = add i64 %816, 6
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RSI.i, align 8
  %826 = add i64 %814, -64
  %827 = add i64 %816, 9
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %826 to i32*
  %829 = load i32, i32* %828, align 4
  %830 = zext i32 %829 to i64
  store i64 %830, i64* %RDX.i693, align 8
  %831 = add i64 %814, -80
  %832 = add i64 %816, 14
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i64*
  %834 = load i64, i64* %833, align 8
  store i64 %834, i64* %491, align 1
  store double 0.000000e+00, double* %493, align 1
  %835 = add i64 %814, -88
  %836 = add i64 %816, 19
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i64*
  %838 = load i64, i64* %837, align 8
  store i64 %838, i64* %499, align 1
  store double 0.000000e+00, double* %501, align 1
  %839 = add i64 %814, -96
  %840 = add i64 %816, 23
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i64*
  %842 = load i64, i64* %841, align 8
  store i64 %842, i64* %RCX.i, align 8
  %843 = add i64 %814, -104
  %844 = add i64 %816, 27
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i64*
  %846 = load i64, i64* %845, align 8
  store i64 %846, i64* %R8.i706, align 8
  %847 = add i64 %814, -112
  %848 = add i64 %816, 31
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %847 to i64*
  %850 = load i64, i64* %849, align 8
  store i64 %850, i64* %R9.i691, align 8
  %851 = add i64 %814, -120
  %852 = add i64 %816, 35
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %RAX.i78, align 8
  %855 = add i64 %814, -160
  %856 = add i64 %816, 42
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i64*
  %858 = load i64, i64* %857, align 8
  store i64 %858, i64* %R10.i685, align 8
  %859 = add i64 %814, -168
  %860 = add i64 %816, 49
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i64*
  %862 = load i64, i64* %861, align 8
  store i64 %862, i64* %R11.i682, align 8
  %863 = add i64 %814, -176
  %864 = add i64 %816, 56
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i64*
  %866 = load i64, i64* %865, align 8
  store i64 %866, i64* %RBX.i60, align 8
  %867 = add i64 %814, -184
  %868 = add i64 %816, 63
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i64*
  %870 = load i64, i64* %869, align 8
  store i64 %870, i64* %R14.i33, align 8
  %871 = add i64 %814, -192
  %872 = add i64 %816, 70
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %871 to i64*
  %874 = load i64, i64* %873, align 8
  store i64 %874, i64* %R15.i24, align 8
  %875 = add i64 %814, -200
  %876 = add i64 %816, 77
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i64*
  %878 = load i64, i64* %877, align 8
  store i64 %878, i64* %R12.i51, align 8
  %879 = add i64 %814, -208
  %880 = add i64 %816, 84
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i64*
  %882 = load i64, i64* %881, align 8
  store i64 %882, i64* %R13.i42, align 8
  %883 = load i64, i64* %RBP.i, align 8
  %884 = add i64 %883, -320
  %885 = add i64 %816, 91
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i64*
  store i64 %854, i64* %886, align 8
  %887 = load i64, i64* %RBP.i, align 8
  %888 = add i64 %887, -216
  %889 = load i64, i64* %3, align 8
  %890 = add i64 %889, 7
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %888 to i64*
  %892 = load i64, i64* %891, align 8
  store i64 %892, i64* %RAX.i78, align 8
  %893 = add i64 %887, -328
  %894 = add i64 %889, 14
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %893 to i64*
  store i64 %892, i64* %895, align 8
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -224
  %898 = load i64, i64* %3, align 8
  %899 = add i64 %898, 7
  store i64 %899, i64* %3, align 8
  %900 = inttoptr i64 %897 to i64*
  %901 = load i64, i64* %900, align 8
  store i64 %901, i64* %RAX.i78, align 8
  %902 = add i64 %896, -336
  %903 = add i64 %898, 14
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i64*
  store i64 %901, i64* %904, align 8
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -232
  %907 = load i64, i64* %3, align 8
  %908 = add i64 %907, 7
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %906 to i64*
  %910 = load i64, i64* %909, align 8
  store i64 %910, i64* %RAX.i78, align 8
  %911 = add i64 %905, -344
  %912 = add i64 %907, 14
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i64*
  store i64 %910, i64* %913, align 8
  %914 = load i64, i64* %RBP.i, align 8
  %915 = add i64 %914, -320
  %916 = load i64, i64* %3, align 8
  %917 = add i64 %916, 7
  store i64 %917, i64* %3, align 8
  %918 = inttoptr i64 %915 to i64*
  %919 = load i64, i64* %918, align 8
  store i64 %919, i64* %RAX.i78, align 8
  %920 = load i64*, i64** %398, align 8
  %921 = add i64 %916, 11
  store i64 %921, i64* %3, align 8
  store i64 %919, i64* %920, align 8
  %922 = load i64, i64* %6, align 8
  %923 = add i64 %922, 8
  %924 = load i64, i64* %R10.i685, align 8
  %925 = load i64, i64* %3, align 8
  %926 = add i64 %925, 5
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %923 to i64*
  store i64 %924, i64* %927, align 8
  %928 = load i64, i64* %6, align 8
  %929 = add i64 %928, 16
  %930 = load i64, i64* %R11.i682, align 8
  %931 = load i64, i64* %3, align 8
  %932 = add i64 %931, 5
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %929 to i64*
  store i64 %930, i64* %933, align 8
  %934 = load i64, i64* %6, align 8
  %935 = add i64 %934, 24
  %936 = load i64, i64* %RBX.i60, align 8
  %937 = load i64, i64* %3, align 8
  %938 = add i64 %937, 5
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %935 to i64*
  store i64 %936, i64* %939, align 8
  %940 = load i64, i64* %6, align 8
  %941 = add i64 %940, 32
  %942 = load i64, i64* %R14.i33, align 8
  %943 = load i64, i64* %3, align 8
  %944 = add i64 %943, 5
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %941 to i64*
  store i64 %942, i64* %945, align 8
  %946 = load i64, i64* %6, align 8
  %947 = add i64 %946, 40
  %948 = load i64, i64* %R15.i24, align 8
  %949 = load i64, i64* %3, align 8
  %950 = add i64 %949, 5
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %947 to i64*
  store i64 %948, i64* %951, align 8
  %952 = load i64, i64* %6, align 8
  %953 = add i64 %952, 48
  %954 = load i64, i64* %R12.i51, align 8
  %955 = load i64, i64* %3, align 8
  %956 = add i64 %955, 5
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %953 to i64*
  store i64 %954, i64* %957, align 8
  %958 = load i64, i64* %6, align 8
  %959 = add i64 %958, 56
  %960 = load i64, i64* %R13.i42, align 8
  %961 = load i64, i64* %3, align 8
  %962 = add i64 %961, 5
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %959 to i64*
  store i64 %960, i64* %963, align 8
  %964 = load i64, i64* %RBP.i, align 8
  %965 = add i64 %964, -328
  %966 = load i64, i64* %3, align 8
  %967 = add i64 %966, 7
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %965 to i64*
  %969 = load i64, i64* %968, align 8
  store i64 %969, i64* %RAX.i78, align 8
  %970 = load i64, i64* %6, align 8
  %971 = add i64 %970, 64
  %972 = add i64 %966, 12
  store i64 %972, i64* %3, align 8
  %973 = inttoptr i64 %971 to i64*
  store i64 %969, i64* %973, align 8
  %974 = load i64, i64* %RBP.i, align 8
  %975 = add i64 %974, -336
  %976 = load i64, i64* %3, align 8
  %977 = add i64 %976, 7
  store i64 %977, i64* %3, align 8
  %978 = inttoptr i64 %975 to i64*
  %979 = load i64, i64* %978, align 8
  store i64 %979, i64* %RAX.i78, align 8
  %980 = load i64, i64* %6, align 8
  %981 = add i64 %980, 72
  %982 = add i64 %976, 12
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  store i64 %979, i64* %983, align 8
  %984 = load i64, i64* %RBP.i, align 8
  %985 = add i64 %984, -344
  %986 = load i64, i64* %3, align 8
  %987 = add i64 %986, 7
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %985 to i64*
  %989 = load i64, i64* %988, align 8
  store i64 %989, i64* %RAX.i78, align 8
  %990 = load i64, i64* %6, align 8
  %991 = add i64 %990, 80
  %992 = add i64 %986, 12
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i64*
  store i64 %989, i64* %993, align 8
  %994 = load i64, i64* %3, align 8
  %995 = add i64 %994, 4499
  %996 = add i64 %994, 5
  %997 = load i64, i64* %6, align 8
  %998 = add i64 %997, -8
  %999 = inttoptr i64 %998 to i64*
  store i64 %996, i64* %999, align 8
  store i64 %998, i64* %6, align 8
  store i64 %995, i64* %3, align 8
  %call2_400d7d = tail call %struct.Memory* @sub_401f10.kernel_fdtd_apml_StrictFP(%struct.State* %0, i64 %995, %struct.Memory* %call2_400ca1)
  %1000 = load i64, i64* %RBP.i, align 8
  %1001 = add i64 %1000, -60
  %1002 = load i64, i64* %3, align 8
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1001 to i32*
  %1005 = load i32, i32* %1004, align 4
  %1006 = zext i32 %1005 to i64
  store i64 %1006, i64* %RDI.i159, align 8
  %1007 = add i64 %1000, -68
  %1008 = add i64 %1002, 6
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i32*
  %1010 = load i32, i32* %1009, align 4
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RSI.i, align 8
  %1012 = add i64 %1000, -64
  %1013 = add i64 %1002, 9
  store i64 %1013, i64* %3, align 8
  %1014 = inttoptr i64 %1012 to i32*
  %1015 = load i32, i32* %1014, align 4
  %1016 = zext i32 %1015 to i64
  store i64 %1016, i64* %RDX.i693, align 8
  %1017 = add i64 %1000, -128
  %1018 = add i64 %1002, 13
  store i64 %1018, i64* %3, align 8
  %1019 = inttoptr i64 %1017 to i64*
  %1020 = load i64, i64* %1019, align 8
  store i64 %1020, i64* %RCX.i, align 8
  %1021 = add i64 %1000, -160
  %1022 = add i64 %1002, 20
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i64*
  %1024 = load i64, i64* %1023, align 8
  store i64 %1024, i64* %R8.i706, align 8
  %1025 = add i64 %1002, 7374
  %1026 = add i64 %1002, 25
  %1027 = load i64, i64* %6, align 8
  %1028 = add i64 %1027, -8
  %1029 = inttoptr i64 %1028 to i64*
  store i64 %1026, i64* %1029, align 8
  store i64 %1028, i64* %6, align 8
  store i64 %1025, i64* %3, align 8
  %call2_400d96 = tail call %struct.Memory* @sub_402a50.check_FP(%struct.State* %0, i64 %1025, %struct.Memory* %call2_400d7d)
  %1030 = load i32, i32* %EAX.i, align 4
  %1031 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1032 = and i32 %1030, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1037 = icmp eq i32 %1030, 0
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %54, align 1
  %1039 = lshr i32 %1030, 31
  %1040 = trunc i32 %1039 to i8
  store i8 %1040, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v = select i1 %1037, i64 9, i64 21
  %1041 = add i64 %1031, %.v
  store i64 %1041, i64* %3, align 8
  %1042 = load i64, i64* %RBP.i, align 8
  br i1 %1037, label %block_400da4, label %block_.L_400db0

block_400da4:                                     ; preds = %entry
  %1043 = add i64 %1042, -44
  %1044 = add i64 %1041, 7
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  store i32 1, i32* %1045, align 4
  %1046 = load i64, i64* %3, align 8
  %1047 = add i64 %1046, 460
  store i64 %1047, i64* %3, align 8
  br label %block_.L_400f77

block_.L_400db0:                                  ; preds = %entry
  %1048 = add i64 %1042, -60
  %1049 = add i64 %1041, 3
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1048 to i32*
  %1051 = load i32, i32* %1050, align 4
  %1052 = zext i32 %1051 to i64
  store i64 %1052, i64* %RDI.i159, align 8
  %1053 = add i64 %1042, -68
  %1054 = add i64 %1041, 6
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = zext i32 %1056 to i64
  store i64 %1057, i64* %RSI.i, align 8
  %1058 = add i64 %1042, -64
  %1059 = add i64 %1041, 9
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RDX.i693, align 8
  %1063 = add i64 %1042, -136
  %1064 = add i64 %1041, 16
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i64*
  %1066 = load i64, i64* %1065, align 8
  store i64 %1066, i64* %RCX.i, align 8
  %1067 = add i64 %1042, -168
  %1068 = add i64 %1041, 23
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i64*
  %1070 = load i64, i64* %1069, align 8
  store i64 %1070, i64* %R8.i706, align 8
  %1071 = add i64 %1041, 7328
  %1072 = add i64 %1041, 28
  %1073 = load i64, i64* %6, align 8
  %1074 = add i64 %1073, -8
  %1075 = inttoptr i64 %1074 to i64*
  store i64 %1072, i64* %1075, align 8
  store i64 %1074, i64* %6, align 8
  store i64 %1071, i64* %3, align 8
  %call2_400dc7 = tail call %struct.Memory* @sub_402a50.check_FP(%struct.State* %0, i64 %1071, %struct.Memory* %call2_400d96)
  %1076 = load i32, i32* %EAX.i, align 4
  %1077 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1078 = and i32 %1076, 255
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078)
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1083 = icmp eq i32 %1076, 0
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %54, align 1
  %1085 = lshr i32 %1076, 31
  %1086 = trunc i32 %1085 to i8
  store i8 %1086, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v1 = select i1 %1083, i64 9, i64 21
  %1087 = add i64 %1077, %.v1
  store i64 %1087, i64* %3, align 8
  %1088 = load i64, i64* %RBP.i, align 8
  br i1 %1083, label %block_400dd5, label %block_.L_400de1

block_400dd5:                                     ; preds = %block_.L_400db0
  %1089 = add i64 %1088, -44
  %1090 = add i64 %1087, 7
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  store i32 1, i32* %1091, align 4
  %1092 = load i64, i64* %3, align 8
  %1093 = add i64 %1092, 411
  store i64 %1093, i64* %3, align 8
  br label %block_.L_400f77

block_.L_400de1:                                  ; preds = %block_.L_400db0
  %1094 = add i64 %1088, -60
  %1095 = add i64 %1087, 3
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = zext i32 %1097 to i64
  store i64 %1098, i64* %RDI.i159, align 8
  %1099 = add i64 %1088, -68
  %1100 = add i64 %1087, 6
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i32*
  %1102 = load i32, i32* %1101, align 4
  %1103 = zext i32 %1102 to i64
  store i64 %1103, i64* %RSI.i, align 8
  %1104 = add i64 %1088, -64
  %1105 = add i64 %1087, 9
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1104 to i32*
  %1107 = load i32, i32* %1106, align 4
  %1108 = zext i32 %1107 to i64
  store i64 %1108, i64* %RDX.i693, align 8
  %1109 = add i64 %1088, -144
  %1110 = add i64 %1087, 16
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i64*
  %1112 = load i64, i64* %1111, align 8
  store i64 %1112, i64* %RCX.i, align 8
  %1113 = add i64 %1088, -176
  %1114 = add i64 %1087, 23
  store i64 %1114, i64* %3, align 8
  %1115 = inttoptr i64 %1113 to i64*
  %1116 = load i64, i64* %1115, align 8
  store i64 %1116, i64* %R8.i706, align 8
  %1117 = add i64 %1087, 7279
  %1118 = add i64 %1087, 28
  %1119 = load i64, i64* %6, align 8
  %1120 = add i64 %1119, -8
  %1121 = inttoptr i64 %1120 to i64*
  store i64 %1118, i64* %1121, align 8
  store i64 %1120, i64* %6, align 8
  store i64 %1117, i64* %3, align 8
  %call2_400df8 = tail call %struct.Memory* @sub_402a50.check_FP(%struct.State* %0, i64 %1117, %struct.Memory* %call2_400dc7)
  %1122 = load i32, i32* %EAX.i, align 4
  %1123 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1124 = and i32 %1122, 255
  %1125 = tail call i32 @llvm.ctpop.i32(i32 %1124)
  %1126 = trunc i32 %1125 to i8
  %1127 = and i8 %1126, 1
  %1128 = xor i8 %1127, 1
  store i8 %1128, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1129 = icmp eq i32 %1122, 0
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %54, align 1
  %1131 = lshr i32 %1122, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v2 = select i1 %1129, i64 9, i64 21
  %1133 = add i64 %1123, %.v2
  store i64 %1133, i64* %3, align 8
  %1134 = load i64, i64* %RBP.i, align 8
  br i1 %1129, label %block_400e06, label %block_.L_400e12

block_400e06:                                     ; preds = %block_.L_400de1
  %1135 = add i64 %1134, -44
  %1136 = add i64 %1133, 7
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i32*
  store i32 1, i32* %1137, align 4
  %1138 = load i64, i64* %3, align 8
  %1139 = add i64 %1138, 362
  store i64 %1139, i64* %3, align 8
  br label %block_.L_400f77

block_.L_400e12:                                  ; preds = %block_.L_400de1
  %1140 = add i64 %1134, -60
  %1141 = add i64 %1133, 3
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RDI.i159, align 8
  %1145 = add i64 %1134, -68
  %1146 = add i64 %1133, 6
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = zext i32 %1148 to i64
  store i64 %1149, i64* %RSI.i, align 8
  %1150 = add i64 %1134, -64
  %1151 = add i64 %1133, 9
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RDX.i693, align 8
  %1155 = add i64 %1134, -152
  %1156 = add i64 %1133, 16
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i64*
  %1158 = load i64, i64* %1157, align 8
  store i64 %1158, i64* %RCX.i, align 8
  %1159 = add i64 %1134, -184
  %1160 = add i64 %1133, 23
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i64*
  %1162 = load i64, i64* %1161, align 8
  store i64 %1162, i64* %R8.i706, align 8
  %1163 = add i64 %1133, 7230
  %1164 = add i64 %1133, 28
  %1165 = load i64, i64* %6, align 8
  %1166 = add i64 %1165, -8
  %1167 = inttoptr i64 %1166 to i64*
  store i64 %1164, i64* %1167, align 8
  store i64 %1166, i64* %6, align 8
  store i64 %1163, i64* %3, align 8
  %call2_400e29 = tail call %struct.Memory* @sub_402a50.check_FP(%struct.State* %0, i64 %1163, %struct.Memory* %call2_400df8)
  %1168 = load i32, i32* %EAX.i, align 4
  %1169 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1170 = and i32 %1168, 255
  %1171 = tail call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  store i8 %1174, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1175 = icmp eq i32 %1168, 0
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %54, align 1
  %1177 = lshr i32 %1168, 31
  %1178 = trunc i32 %1177 to i8
  store i8 %1178, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v3 = select i1 %1175, i64 9, i64 21
  %1179 = add i64 %1169, %.v3
  store i64 %1179, i64* %3, align 8
  %1180 = load i64, i64* %RBP.i, align 8
  br i1 %1175, label %block_400e37, label %block_.L_400e43

block_400e37:                                     ; preds = %block_.L_400e12
  %1181 = add i64 %1180, -44
  %1182 = add i64 %1179, 7
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  store i32 1, i32* %1183, align 4
  %1184 = load i64, i64* %3, align 8
  %1185 = add i64 %1184, 313
  store i64 %1185, i64* %3, align 8
  br label %block_.L_400f77

block_.L_400e43:                                  ; preds = %block_.L_400e12
  %1186 = add i64 %1180, -60
  %1187 = add i64 %1179, 3
  store i64 %1187, i64* %3, align 8
  %1188 = inttoptr i64 %1186 to i32*
  %1189 = load i32, i32* %1188, align 4
  %1190 = zext i32 %1189 to i64
  store i64 %1190, i64* %RDI.i159, align 8
  %1191 = add i64 %1180, -68
  %1192 = add i64 %1179, 6
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1191 to i32*
  %1194 = load i32, i32* %1193, align 4
  %1195 = zext i32 %1194 to i64
  store i64 %1195, i64* %RSI.i, align 8
  %1196 = add i64 %1180, -64
  %1197 = add i64 %1179, 9
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RDX.i693, align 8
  %1201 = add i64 %1180, -160
  %1202 = add i64 %1179, 16
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i64*
  %1204 = load i64, i64* %1203, align 8
  store i64 %1204, i64* %RCX.i, align 8
  %1205 = add i64 %1180, -168
  %1206 = add i64 %1179, 23
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i64*
  %1208 = load i64, i64* %1207, align 8
  store i64 %1208, i64* %R8.i706, align 8
  %1209 = add i64 %1180, -176
  %1210 = add i64 %1179, 30
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i64*
  %1212 = load i64, i64* %1211, align 8
  store i64 %1212, i64* %R9.i691, align 8
  %1213 = add i64 %1180, -184
  %1214 = add i64 %1179, 37
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1213 to i64*
  %1216 = load i64, i64* %1215, align 8
  store i64 %1216, i64* %RAX.i78, align 8
  %1217 = load i64*, i64** %398, align 8
  %1218 = add i64 %1179, 41
  store i64 %1218, i64* %3, align 8
  store i64 %1216, i64* %1217, align 8
  %1219 = load i64, i64* %3, align 8
  %1220 = add i64 %1219, 7556
  %1221 = add i64 %1219, 5
  %1222 = load i64, i64* %6, align 8
  %1223 = add i64 %1222, -8
  %1224 = inttoptr i64 %1223 to i64*
  store i64 %1221, i64* %1224, align 8
  store i64 %1223, i64* %6, align 8
  store i64 %1220, i64* %3, align 8
  %call2_400e6c = tail call %struct.Memory* @sub_402bf0.print_array(%struct.State* %0, i64 %1220, %struct.Memory* %call2_400e29)
  %1225 = load i64, i64* %RBP.i, align 8
  %1226 = add i64 %1225, -96
  %1227 = load i64, i64* %3, align 8
  %1228 = add i64 %1227, 4
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1226 to i64*
  %1230 = load i64, i64* %1229, align 8
  store i64 %1230, i64* %RAX.i78, align 8
  store i64 %1230, i64* %RDI.i159, align 8
  %1231 = add i64 %1227, -2337
  %1232 = add i64 %1227, 12
  %1233 = load i64, i64* %6, align 8
  %1234 = add i64 %1233, -8
  %1235 = inttoptr i64 %1234 to i64*
  store i64 %1232, i64* %1235, align 8
  store i64 %1234, i64* %6, align 8
  store i64 %1231, i64* %3, align 8
  %1236 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_400e6c)
  %1237 = load i64, i64* %RBP.i, align 8
  %1238 = add i64 %1237, -104
  %1239 = load i64, i64* %3, align 8
  %1240 = add i64 %1239, 4
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1238 to i64*
  %1242 = load i64, i64* %1241, align 8
  store i64 %1242, i64* %RAX.i78, align 8
  store i64 %1242, i64* %RDI.i159, align 8
  %1243 = add i64 %1239, -2349
  %1244 = add i64 %1239, 12
  %1245 = load i64, i64* %6, align 8
  %1246 = add i64 %1245, -8
  %1247 = inttoptr i64 %1246 to i64*
  store i64 %1244, i64* %1247, align 8
  store i64 %1246, i64* %6, align 8
  store i64 %1243, i64* %3, align 8
  %1248 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1236)
  %1249 = load i64, i64* %RBP.i, align 8
  %1250 = add i64 %1249, -112
  %1251 = load i64, i64* %3, align 8
  %1252 = add i64 %1251, 4
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1250 to i64*
  %1254 = load i64, i64* %1253, align 8
  store i64 %1254, i64* %RAX.i78, align 8
  store i64 %1254, i64* %RDI.i159, align 8
  %1255 = add i64 %1251, -2361
  %1256 = add i64 %1251, 12
  %1257 = load i64, i64* %6, align 8
  %1258 = add i64 %1257, -8
  %1259 = inttoptr i64 %1258 to i64*
  store i64 %1256, i64* %1259, align 8
  store i64 %1258, i64* %6, align 8
  store i64 %1255, i64* %3, align 8
  %1260 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1248)
  %1261 = load i64, i64* %RBP.i, align 8
  %1262 = add i64 %1261, -120
  %1263 = load i64, i64* %3, align 8
  %1264 = add i64 %1263, 4
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1262 to i64*
  %1266 = load i64, i64* %1265, align 8
  store i64 %1266, i64* %RAX.i78, align 8
  store i64 %1266, i64* %RDI.i159, align 8
  %1267 = add i64 %1263, -2373
  %1268 = add i64 %1263, 12
  %1269 = load i64, i64* %6, align 8
  %1270 = add i64 %1269, -8
  %1271 = inttoptr i64 %1270 to i64*
  store i64 %1268, i64* %1271, align 8
  store i64 %1270, i64* %6, align 8
  store i64 %1267, i64* %3, align 8
  %1272 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1260)
  %1273 = load i64, i64* %RBP.i, align 8
  %1274 = add i64 %1273, -128
  %1275 = load i64, i64* %3, align 8
  %1276 = add i64 %1275, 4
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1274 to i64*
  %1278 = load i64, i64* %1277, align 8
  store i64 %1278, i64* %RAX.i78, align 8
  store i64 %1278, i64* %RDI.i159, align 8
  %1279 = add i64 %1275, -2385
  %1280 = add i64 %1275, 12
  %1281 = load i64, i64* %6, align 8
  %1282 = add i64 %1281, -8
  %1283 = inttoptr i64 %1282 to i64*
  store i64 %1280, i64* %1283, align 8
  store i64 %1282, i64* %6, align 8
  store i64 %1279, i64* %3, align 8
  %1284 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1272)
  %1285 = load i64, i64* %RBP.i, align 8
  %1286 = add i64 %1285, -136
  %1287 = load i64, i64* %3, align 8
  %1288 = add i64 %1287, 7
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1286 to i64*
  %1290 = load i64, i64* %1289, align 8
  store i64 %1290, i64* %RAX.i78, align 8
  store i64 %1290, i64* %RDI.i159, align 8
  %1291 = add i64 %1287, -2397
  %1292 = add i64 %1287, 15
  %1293 = load i64, i64* %6, align 8
  %1294 = add i64 %1293, -8
  %1295 = inttoptr i64 %1294 to i64*
  store i64 %1292, i64* %1295, align 8
  store i64 %1294, i64* %6, align 8
  store i64 %1291, i64* %3, align 8
  %1296 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1284)
  %1297 = load i64, i64* %RBP.i, align 8
  %1298 = add i64 %1297, -144
  %1299 = load i64, i64* %3, align 8
  %1300 = add i64 %1299, 7
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1298 to i64*
  %1302 = load i64, i64* %1301, align 8
  store i64 %1302, i64* %RAX.i78, align 8
  store i64 %1302, i64* %RDI.i159, align 8
  %1303 = add i64 %1299, -2412
  %1304 = add i64 %1299, 15
  %1305 = load i64, i64* %6, align 8
  %1306 = add i64 %1305, -8
  %1307 = inttoptr i64 %1306 to i64*
  store i64 %1304, i64* %1307, align 8
  store i64 %1306, i64* %6, align 8
  store i64 %1303, i64* %3, align 8
  %1308 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1296)
  %1309 = load i64, i64* %RBP.i, align 8
  %1310 = add i64 %1309, -152
  %1311 = load i64, i64* %3, align 8
  %1312 = add i64 %1311, 7
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1310 to i64*
  %1314 = load i64, i64* %1313, align 8
  store i64 %1314, i64* %RAX.i78, align 8
  store i64 %1314, i64* %RDI.i159, align 8
  %1315 = add i64 %1311, -2427
  %1316 = add i64 %1311, 15
  %1317 = load i64, i64* %6, align 8
  %1318 = add i64 %1317, -8
  %1319 = inttoptr i64 %1318 to i64*
  store i64 %1316, i64* %1319, align 8
  store i64 %1318, i64* %6, align 8
  store i64 %1315, i64* %3, align 8
  %1320 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1308)
  %1321 = load i64, i64* %RBP.i, align 8
  %1322 = add i64 %1321, -160
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, 7
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1322 to i64*
  %1326 = load i64, i64* %1325, align 8
  store i64 %1326, i64* %RAX.i78, align 8
  store i64 %1326, i64* %RDI.i159, align 8
  %1327 = add i64 %1323, -2442
  %1328 = add i64 %1323, 15
  %1329 = load i64, i64* %6, align 8
  %1330 = add i64 %1329, -8
  %1331 = inttoptr i64 %1330 to i64*
  store i64 %1328, i64* %1331, align 8
  store i64 %1330, i64* %6, align 8
  store i64 %1327, i64* %3, align 8
  %1332 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1320)
  %1333 = load i64, i64* %RBP.i, align 8
  %1334 = add i64 %1333, -168
  %1335 = load i64, i64* %3, align 8
  %1336 = add i64 %1335, 7
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1334 to i64*
  %1338 = load i64, i64* %1337, align 8
  store i64 %1338, i64* %RAX.i78, align 8
  store i64 %1338, i64* %RDI.i159, align 8
  %1339 = add i64 %1335, -2457
  %1340 = add i64 %1335, 15
  %1341 = load i64, i64* %6, align 8
  %1342 = add i64 %1341, -8
  %1343 = inttoptr i64 %1342 to i64*
  store i64 %1340, i64* %1343, align 8
  store i64 %1342, i64* %6, align 8
  store i64 %1339, i64* %3, align 8
  %1344 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1332)
  %1345 = load i64, i64* %RBP.i, align 8
  %1346 = add i64 %1345, -176
  %1347 = load i64, i64* %3, align 8
  %1348 = add i64 %1347, 7
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1346 to i64*
  %1350 = load i64, i64* %1349, align 8
  store i64 %1350, i64* %RAX.i78, align 8
  store i64 %1350, i64* %RDI.i159, align 8
  %1351 = add i64 %1347, -2472
  %1352 = add i64 %1347, 15
  %1353 = load i64, i64* %6, align 8
  %1354 = add i64 %1353, -8
  %1355 = inttoptr i64 %1354 to i64*
  store i64 %1352, i64* %1355, align 8
  store i64 %1354, i64* %6, align 8
  store i64 %1351, i64* %3, align 8
  %1356 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1344)
  %1357 = load i64, i64* %RBP.i, align 8
  %1358 = add i64 %1357, -184
  %1359 = load i64, i64* %3, align 8
  %1360 = add i64 %1359, 7
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1358 to i64*
  %1362 = load i64, i64* %1361, align 8
  store i64 %1362, i64* %RAX.i78, align 8
  store i64 %1362, i64* %RDI.i159, align 8
  %1363 = add i64 %1359, -2487
  %1364 = add i64 %1359, 15
  %1365 = load i64, i64* %6, align 8
  %1366 = add i64 %1365, -8
  %1367 = inttoptr i64 %1366 to i64*
  store i64 %1364, i64* %1367, align 8
  store i64 %1366, i64* %6, align 8
  store i64 %1363, i64* %3, align 8
  %1368 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1356)
  %1369 = load i64, i64* %RBP.i, align 8
  %1370 = add i64 %1369, -192
  %1371 = load i64, i64* %3, align 8
  %1372 = add i64 %1371, 7
  store i64 %1372, i64* %3, align 8
  %1373 = inttoptr i64 %1370 to i64*
  %1374 = load i64, i64* %1373, align 8
  store i64 %1374, i64* %RAX.i78, align 8
  store i64 %1374, i64* %RDI.i159, align 8
  %1375 = add i64 %1371, -2502
  %1376 = add i64 %1371, 15
  %1377 = load i64, i64* %6, align 8
  %1378 = add i64 %1377, -8
  %1379 = inttoptr i64 %1378 to i64*
  store i64 %1376, i64* %1379, align 8
  store i64 %1378, i64* %6, align 8
  store i64 %1375, i64* %3, align 8
  %1380 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1368)
  %1381 = load i64, i64* %RBP.i, align 8
  %1382 = add i64 %1381, -200
  %1383 = load i64, i64* %3, align 8
  %1384 = add i64 %1383, 7
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1382 to i64*
  %1386 = load i64, i64* %1385, align 8
  store i64 %1386, i64* %RAX.i78, align 8
  store i64 %1386, i64* %RDI.i159, align 8
  %1387 = add i64 %1383, -2517
  %1388 = add i64 %1383, 15
  %1389 = load i64, i64* %6, align 8
  %1390 = add i64 %1389, -8
  %1391 = inttoptr i64 %1390 to i64*
  store i64 %1388, i64* %1391, align 8
  store i64 %1390, i64* %6, align 8
  store i64 %1387, i64* %3, align 8
  %1392 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1380)
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -208
  %1395 = load i64, i64* %3, align 8
  %1396 = add i64 %1395, 7
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1394 to i64*
  %1398 = load i64, i64* %1397, align 8
  store i64 %1398, i64* %RAX.i78, align 8
  store i64 %1398, i64* %RDI.i159, align 8
  %1399 = add i64 %1395, -2532
  %1400 = add i64 %1395, 15
  %1401 = load i64, i64* %6, align 8
  %1402 = add i64 %1401, -8
  %1403 = inttoptr i64 %1402 to i64*
  store i64 %1400, i64* %1403, align 8
  store i64 %1402, i64* %6, align 8
  store i64 %1399, i64* %3, align 8
  %1404 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1392)
  %1405 = load i64, i64* %RBP.i, align 8
  %1406 = add i64 %1405, -216
  %1407 = load i64, i64* %3, align 8
  %1408 = add i64 %1407, 7
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1406 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %RAX.i78, align 8
  store i64 %1410, i64* %RDI.i159, align 8
  %1411 = add i64 %1407, -2547
  %1412 = add i64 %1407, 15
  %1413 = load i64, i64* %6, align 8
  %1414 = add i64 %1413, -8
  %1415 = inttoptr i64 %1414 to i64*
  store i64 %1412, i64* %1415, align 8
  store i64 %1414, i64* %6, align 8
  store i64 %1411, i64* %3, align 8
  %1416 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1404)
  %1417 = load i64, i64* %RBP.i, align 8
  %1418 = add i64 %1417, -224
  %1419 = load i64, i64* %3, align 8
  %1420 = add i64 %1419, 7
  store i64 %1420, i64* %3, align 8
  %1421 = inttoptr i64 %1418 to i64*
  %1422 = load i64, i64* %1421, align 8
  store i64 %1422, i64* %RAX.i78, align 8
  store i64 %1422, i64* %RDI.i159, align 8
  %1423 = add i64 %1419, -2562
  %1424 = add i64 %1419, 15
  %1425 = load i64, i64* %6, align 8
  %1426 = add i64 %1425, -8
  %1427 = inttoptr i64 %1426 to i64*
  store i64 %1424, i64* %1427, align 8
  store i64 %1426, i64* %6, align 8
  store i64 %1423, i64* %3, align 8
  %1428 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1416)
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -232
  %1431 = load i64, i64* %3, align 8
  %1432 = add i64 %1431, 7
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1430 to i64*
  %1434 = load i64, i64* %1433, align 8
  store i64 %1434, i64* %RAX.i78, align 8
  store i64 %1434, i64* %RDI.i159, align 8
  %1435 = add i64 %1431, -2577
  %1436 = add i64 %1431, 15
  %1437 = load i64, i64* %6, align 8
  %1438 = add i64 %1437, -8
  %1439 = inttoptr i64 %1438 to i64*
  store i64 %1436, i64* %1439, align 8
  store i64 %1438, i64* %6, align 8
  store i64 %1435, i64* %3, align 8
  %1440 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1428)
  %1441 = load i64, i64* %RBP.i, align 8
  %1442 = add i64 %1441, -44
  %1443 = load i64, i64* %3, align 8
  %1444 = add i64 %1443, 7
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1442 to i32*
  store i32 0, i32* %1445, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400f77

block_.L_400f77:                                  ; preds = %block_.L_400e43, %block_400e37, %block_400e06, %block_400dd5, %block_400da4
  %1446 = phi i64 [ %.pre, %block_.L_400e43 ], [ %1185, %block_400e37 ], [ %1139, %block_400e06 ], [ %1093, %block_400dd5 ], [ %1047, %block_400da4 ]
  %MEMORY.0 = phi %struct.Memory* [ %1440, %block_.L_400e43 ], [ %call2_400e29, %block_400e37 ], [ %call2_400df8, %block_400e06 ], [ %call2_400dc7, %block_400dd5 ], [ %call2_400d96, %block_400da4 ]
  %1447 = load i64, i64* %RBP.i, align 8
  %1448 = add i64 %1447, -44
  %1449 = add i64 %1446, 3
  store i64 %1449, i64* %3, align 8
  %1450 = inttoptr i64 %1448 to i32*
  %1451 = load i32, i32* %1450, align 4
  %1452 = zext i32 %1451 to i64
  store i64 %1452, i64* %RAX.i78, align 8
  %1453 = load i64, i64* %6, align 8
  %1454 = add i64 %1453, 392
  store i64 %1454, i64* %6, align 8
  %1455 = icmp ugt i64 %1453, -393
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %39, align 1
  %1457 = trunc i64 %1454 to i32
  %1458 = and i32 %1457, 255
  %1459 = tail call i32 @llvm.ctpop.i32(i32 %1458)
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = xor i8 %1461, 1
  store i8 %1462, i8* %46, align 1
  %1463 = xor i64 %1453, %1454
  %1464 = lshr i64 %1463, 4
  %1465 = trunc i64 %1464 to i8
  %1466 = and i8 %1465, 1
  store i8 %1466, i8* %51, align 1
  %1467 = icmp eq i64 %1454, 0
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %54, align 1
  %1469 = lshr i64 %1454, 63
  %1470 = trunc i64 %1469 to i8
  store i8 %1470, i8* %57, align 1
  %1471 = lshr i64 %1453, 63
  %1472 = xor i64 %1469, %1471
  %1473 = add nuw nsw i64 %1472, %1469
  %1474 = icmp eq i64 %1473, 2
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %63, align 1
  %1476 = add i64 %1446, 11
  store i64 %1476, i64* %3, align 8
  %1477 = add i64 %1453, 400
  %1478 = inttoptr i64 %1454 to i64*
  %1479 = load i64, i64* %1478, align 8
  store i64 %1479, i64* %RBX.i60, align 8
  store i64 %1477, i64* %6, align 8
  %1480 = add i64 %1446, 13
  store i64 %1480, i64* %3, align 8
  %1481 = add i64 %1453, 408
  %1482 = inttoptr i64 %1477 to i64*
  %1483 = load i64, i64* %1482, align 8
  store i64 %1483, i64* %R12.i51, align 8
  store i64 %1481, i64* %6, align 8
  %1484 = add i64 %1446, 15
  store i64 %1484, i64* %3, align 8
  %1485 = add i64 %1453, 416
  %1486 = inttoptr i64 %1481 to i64*
  %1487 = load i64, i64* %1486, align 8
  store i64 %1487, i64* %R13.i42, align 8
  store i64 %1485, i64* %6, align 8
  %1488 = add i64 %1446, 17
  store i64 %1488, i64* %3, align 8
  %1489 = add i64 %1453, 424
  %1490 = inttoptr i64 %1485 to i64*
  %1491 = load i64, i64* %1490, align 8
  store i64 %1491, i64* %R14.i33, align 8
  store i64 %1489, i64* %6, align 8
  %1492 = add i64 %1446, 19
  store i64 %1492, i64* %3, align 8
  %1493 = add i64 %1453, 432
  %1494 = inttoptr i64 %1489 to i64*
  %1495 = load i64, i64* %1494, align 8
  store i64 %1495, i64* %R15.i24, align 8
  store i64 %1493, i64* %6, align 8
  %1496 = add i64 %1446, 20
  store i64 %1496, i64* %3, align 8
  %1497 = add i64 %1453, 440
  %1498 = inttoptr i64 %1493 to i64*
  %1499 = load i64, i64* %1498, align 8
  store i64 %1499, i64* %RBP.i, align 8
  store i64 %1497, i64* %6, align 8
  %1500 = add i64 %1446, 21
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1497 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %3, align 8
  %1503 = add i64 %1453, 448
  store i64 %1503, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
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

define %struct.Memory* @routine_subq__0x188___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -392
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 392
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

define %struct.Memory* @routine_movl__0x1081___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4225, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x40__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 64, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x40__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 64, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x40__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 64, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x1081___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4225, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__0x430c1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 274625, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x41___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 65, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x58__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x60__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x88__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xc0__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xc8__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xd0__rbp____r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xd8__rbp____r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__0x18__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r14__0x20__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r15__0x28__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r12__0x30__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %R12, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r13__0x38__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %R13, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x40__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x48__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.init_array(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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

define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x80__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x88__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x98__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xc0__rbp____r15(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xc8__rbp____r12(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xd0__rbp____r13(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x120__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x108__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x120__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x50__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.kernel_fdtd_apml(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb0__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x130__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x138__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x128__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x130__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x138__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____r14(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x140__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x148__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x150__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x158__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x140__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x148__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x150__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x158__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.kernel_fdtd_apml_StrictFP(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.check_FP(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jne_.L_400db0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400f77(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400de1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb0__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400e12(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400e43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb0__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.print_array(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x188___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 392
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -393
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
