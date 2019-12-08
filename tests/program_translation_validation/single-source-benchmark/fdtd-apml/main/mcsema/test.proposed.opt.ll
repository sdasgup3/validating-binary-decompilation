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
  %RSP.i15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %R15.i24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i24, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %PC.i, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i33, align 8
  %16 = load i64, i64* %PC.i, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC.i, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i42, align 8
  %21 = load i64, i64* %PC.i, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %PC.i, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i51, align 8
  %26 = load i64, i64* %PC.i, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %PC.i, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %RBX.i60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %30 = load i64, i64* %RBX.i60, align 8
  %31 = load i64, i64* %PC.i, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %PC.i, align 8
  %33 = add i64 %7, -48
  %34 = inttoptr i64 %33 to i64*
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %PC.i, align 8
  %36 = add i64 %7, -440
  store i64 %36, i64* %RSP.i15, align 8
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
  store i64 %67, i64* %PC.i, align 8
  %68 = inttoptr i64 %66 to i32*
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %69 to i32*
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -48
  %72 = load i32, i32* %EDI.i, align 4
  %73 = load i64, i64* %PC.i, align 8
  %74 = add i64 %73, 3
  store i64 %74, i64* %PC.i, align 8
  %75 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %75, align 4
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -56
  %78 = load i64, i64* %RSI.i, align 8
  %79 = load i64, i64* %PC.i, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i, align 8
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* %RBP.i, align 8
  %83 = add i64 %82, -60
  %84 = load i64, i64* %PC.i, align 8
  %85 = add i64 %84, 7
  store i64 %85, i64* %PC.i, align 8
  %86 = inttoptr i64 %83 to i32*
  store i32 64, i32* %86, align 4
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -64
  %89 = load i64, i64* %PC.i, align 8
  %90 = add i64 %89, 7
  store i64 %90, i64* %PC.i, align 8
  %91 = inttoptr i64 %88 to i32*
  store i32 64, i32* %91, align 4
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -68
  %94 = load i64, i64* %PC.i, align 8
  %95 = add i64 %94, 7
  store i64 %95, i64* %PC.i, align 8
  %96 = inttoptr i64 %93 to i32*
  store i32 64, i32* %96, align 4
  %RDI.i159 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %97 = load i64, i64* %RCX.i, align 8
  %98 = load i64, i64* %PC.i, align 8
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
  %106 = load i64, i64* %PC.i, align 8
  store i64 4225, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -96
  %109 = load i64, i64* %RAX.i78, align 8
  %110 = add i64 %106, 16
  store i64 %110, i64* %PC.i, align 8
  %111 = inttoptr i64 %108 to i64*
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %PC.i, align 8
  %113 = add i64 %112, -285
  %114 = add i64 %112, 5
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, -8
  %117 = inttoptr i64 %116 to i64*
  store i64 %114, i64* %117, align 8
  store i64 %116, i64* %6, align 8
  store i64 %113, i64* %3, align 8
  %call2_4008dd = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %113, %struct.Memory* %call2_4008c8)
  %118 = load i64, i64* %PC.i, align 8
  store i64 4225, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -104
  %121 = load i64, i64* %RAX.i78, align 8
  %122 = add i64 %118, 16
  store i64 %122, i64* %PC.i, align 8
  %123 = inttoptr i64 %120 to i64*
  store i64 %121, i64* %123, align 8
  %124 = load i64, i64* %PC.i, align 8
  %125 = add i64 %124, -306
  %126 = add i64 %124, 5
  %127 = load i64, i64* %6, align 8
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*
  store i64 %126, i64* %129, align 8
  store i64 %128, i64* %6, align 8
  store i64 %125, i64* %3, align 8
  %call2_4008f2 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %125, %struct.Memory* %call2_4008dd)
  %130 = load i64, i64* %PC.i, align 8
  store i64 4225, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -112
  %133 = load i64, i64* %RAX.i78, align 8
  %134 = add i64 %130, 16
  store i64 %134, i64* %PC.i, align 8
  %135 = inttoptr i64 %132 to i64*
  store i64 %133, i64* %135, align 8
  %136 = load i64, i64* %PC.i, align 8
  %137 = add i64 %136, -327
  %138 = add i64 %136, 5
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, -8
  %141 = inttoptr i64 %140 to i64*
  store i64 %138, i64* %141, align 8
  store i64 %140, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  %call2_400907 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %137, %struct.Memory* %call2_4008f2)
  %142 = load i64, i64* %PC.i, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -120
  %145 = load i64, i64* %RAX.i78, align 8
  %146 = add i64 %142, 16
  store i64 %146, i64* %PC.i, align 8
  %147 = inttoptr i64 %144 to i64*
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %PC.i, align 8
  %149 = add i64 %148, -348
  %150 = add i64 %148, 5
  %151 = load i64, i64* %6, align 8
  %152 = add i64 %151, -8
  %153 = inttoptr i64 %152 to i64*
  store i64 %150, i64* %153, align 8
  store i64 %152, i64* %6, align 8
  store i64 %149, i64* %3, align 8
  %call2_40091c = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %149, %struct.Memory* %call2_400907)
  %154 = load i64, i64* %PC.i, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -128
  %157 = load i64, i64* %RAX.i78, align 8
  %158 = add i64 %154, 16
  store i64 %158, i64* %PC.i, align 8
  %159 = inttoptr i64 %156 to i64*
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %PC.i, align 8
  %161 = add i64 %160, -369
  %162 = add i64 %160, 5
  %163 = load i64, i64* %6, align 8
  %164 = add i64 %163, -8
  %165 = inttoptr i64 %164 to i64*
  store i64 %162, i64* %165, align 8
  store i64 %164, i64* %6, align 8
  store i64 %161, i64* %3, align 8
  %call2_400931 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %161, %struct.Memory* %call2_40091c)
  %166 = load i64, i64* %PC.i, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -136
  %169 = load i64, i64* %RAX.i78, align 8
  %170 = add i64 %166, 19
  store i64 %170, i64* %PC.i, align 8
  %171 = inttoptr i64 %168 to i64*
  store i64 %169, i64* %171, align 8
  %172 = load i64, i64* %PC.i, align 8
  %173 = add i64 %172, -393
  %174 = add i64 %172, 5
  %175 = load i64, i64* %6, align 8
  %176 = add i64 %175, -8
  %177 = inttoptr i64 %176 to i64*
  store i64 %174, i64* %177, align 8
  store i64 %176, i64* %6, align 8
  store i64 %173, i64* %3, align 8
  %call2_400949 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %173, %struct.Memory* %call2_400931)
  %178 = load i64, i64* %PC.i, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -144
  %181 = load i64, i64* %RAX.i78, align 8
  %182 = add i64 %178, 19
  store i64 %182, i64* %PC.i, align 8
  %183 = inttoptr i64 %180 to i64*
  store i64 %181, i64* %183, align 8
  %184 = load i64, i64* %PC.i, align 8
  %185 = add i64 %184, -417
  %186 = add i64 %184, 5
  %187 = load i64, i64* %6, align 8
  %188 = add i64 %187, -8
  %189 = inttoptr i64 %188 to i64*
  store i64 %186, i64* %189, align 8
  store i64 %188, i64* %6, align 8
  store i64 %185, i64* %3, align 8
  %call2_400961 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %185, %struct.Memory* %call2_400949)
  %190 = load i64, i64* %PC.i, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -152
  %193 = load i64, i64* %RAX.i78, align 8
  %194 = add i64 %190, 19
  store i64 %194, i64* %PC.i, align 8
  %195 = inttoptr i64 %192 to i64*
  store i64 %193, i64* %195, align 8
  %196 = load i64, i64* %PC.i, align 8
  %197 = add i64 %196, -441
  %198 = add i64 %196, 5
  %199 = load i64, i64* %6, align 8
  %200 = add i64 %199, -8
  %201 = inttoptr i64 %200 to i64*
  store i64 %198, i64* %201, align 8
  store i64 %200, i64* %6, align 8
  store i64 %197, i64* %3, align 8
  %call2_400979 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %197, %struct.Memory* %call2_400961)
  %202 = load i64, i64* %PC.i, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -160
  %205 = load i64, i64* %RAX.i78, align 8
  %206 = add i64 %202, 19
  store i64 %206, i64* %PC.i, align 8
  %207 = inttoptr i64 %204 to i64*
  store i64 %205, i64* %207, align 8
  %208 = load i64, i64* %PC.i, align 8
  %209 = add i64 %208, -465
  %210 = add i64 %208, 5
  %211 = load i64, i64* %6, align 8
  %212 = add i64 %211, -8
  %213 = inttoptr i64 %212 to i64*
  store i64 %210, i64* %213, align 8
  store i64 %212, i64* %6, align 8
  store i64 %209, i64* %3, align 8
  %call2_400991 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %209, %struct.Memory* %call2_400979)
  %214 = load i64, i64* %PC.i, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -168
  %217 = load i64, i64* %RAX.i78, align 8
  %218 = add i64 %214, 19
  store i64 %218, i64* %PC.i, align 8
  %219 = inttoptr i64 %216 to i64*
  store i64 %217, i64* %219, align 8
  %220 = load i64, i64* %PC.i, align 8
  %221 = add i64 %220, -489
  %222 = add i64 %220, 5
  %223 = load i64, i64* %6, align 8
  %224 = add i64 %223, -8
  %225 = inttoptr i64 %224 to i64*
  store i64 %222, i64* %225, align 8
  store i64 %224, i64* %6, align 8
  store i64 %221, i64* %3, align 8
  %call2_4009a9 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %221, %struct.Memory* %call2_400991)
  %226 = load i64, i64* %PC.i, align 8
  store i64 274625, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -176
  %229 = load i64, i64* %RAX.i78, align 8
  %230 = add i64 %226, 19
  store i64 %230, i64* %PC.i, align 8
  %231 = inttoptr i64 %228 to i64*
  store i64 %229, i64* %231, align 8
  %232 = load i64, i64* %PC.i, align 8
  %233 = add i64 %232, -513
  %234 = add i64 %232, 5
  %235 = load i64, i64* %6, align 8
  %236 = add i64 %235, -8
  %237 = inttoptr i64 %236 to i64*
  store i64 %234, i64* %237, align 8
  store i64 %236, i64* %6, align 8
  store i64 %233, i64* %3, align 8
  %call2_4009c1 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %233, %struct.Memory* %call2_4009a9)
  %238 = load i64, i64* %PC.i, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -184
  %241 = load i64, i64* %RAX.i78, align 8
  %242 = add i64 %238, 19
  store i64 %242, i64* %PC.i, align 8
  %243 = inttoptr i64 %240 to i64*
  store i64 %241, i64* %243, align 8
  %244 = load i64, i64* %PC.i, align 8
  %245 = add i64 %244, -537
  %246 = add i64 %244, 5
  %247 = load i64, i64* %6, align 8
  %248 = add i64 %247, -8
  %249 = inttoptr i64 %248 to i64*
  store i64 %246, i64* %249, align 8
  store i64 %248, i64* %6, align 8
  store i64 %245, i64* %3, align 8
  %call2_4009d9 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %245, %struct.Memory* %call2_4009c1)
  %250 = load i64, i64* %PC.i, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -192
  %253 = load i64, i64* %RAX.i78, align 8
  %254 = add i64 %250, 19
  store i64 %254, i64* %PC.i, align 8
  %255 = inttoptr i64 %252 to i64*
  store i64 %253, i64* %255, align 8
  %256 = load i64, i64* %PC.i, align 8
  %257 = add i64 %256, -561
  %258 = add i64 %256, 5
  %259 = load i64, i64* %6, align 8
  %260 = add i64 %259, -8
  %261 = inttoptr i64 %260 to i64*
  store i64 %258, i64* %261, align 8
  store i64 %260, i64* %6, align 8
  store i64 %257, i64* %3, align 8
  %call2_4009f1 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %257, %struct.Memory* %call2_4009d9)
  %262 = load i64, i64* %PC.i, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -200
  %265 = load i64, i64* %RAX.i78, align 8
  %266 = add i64 %262, 19
  store i64 %266, i64* %PC.i, align 8
  %267 = inttoptr i64 %264 to i64*
  store i64 %265, i64* %267, align 8
  %268 = load i64, i64* %PC.i, align 8
  %269 = add i64 %268, -585
  %270 = add i64 %268, 5
  %271 = load i64, i64* %6, align 8
  %272 = add i64 %271, -8
  %273 = inttoptr i64 %272 to i64*
  store i64 %270, i64* %273, align 8
  store i64 %272, i64* %6, align 8
  store i64 %269, i64* %3, align 8
  %call2_400a09 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %269, %struct.Memory* %call2_4009f1)
  %274 = load i64, i64* %PC.i, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -208
  %277 = load i64, i64* %RAX.i78, align 8
  %278 = add i64 %274, 19
  store i64 %278, i64* %PC.i, align 8
  %279 = inttoptr i64 %276 to i64*
  store i64 %277, i64* %279, align 8
  %280 = load i64, i64* %PC.i, align 8
  %281 = add i64 %280, -609
  %282 = add i64 %280, 5
  %283 = load i64, i64* %6, align 8
  %284 = add i64 %283, -8
  %285 = inttoptr i64 %284 to i64*
  store i64 %282, i64* %285, align 8
  store i64 %284, i64* %6, align 8
  store i64 %281, i64* %3, align 8
  %call2_400a21 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %281, %struct.Memory* %call2_400a09)
  %286 = load i64, i64* %PC.i, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -216
  %289 = load i64, i64* %RAX.i78, align 8
  %290 = add i64 %286, 19
  store i64 %290, i64* %PC.i, align 8
  %291 = inttoptr i64 %288 to i64*
  store i64 %289, i64* %291, align 8
  %292 = load i64, i64* %PC.i, align 8
  %293 = add i64 %292, -633
  %294 = add i64 %292, 5
  %295 = load i64, i64* %6, align 8
  %296 = add i64 %295, -8
  %297 = inttoptr i64 %296 to i64*
  store i64 %294, i64* %297, align 8
  store i64 %296, i64* %6, align 8
  store i64 %293, i64* %3, align 8
  %call2_400a39 = tail call %struct.Memory* @sub_4007c0.polybench_alloc_data(%struct.State* %0, i64 %293, %struct.Memory* %call2_400a21)
  %298 = load i64, i64* %PC.i, align 8
  store i64 65, i64* %RDI.i159, align 8
  store i64 8, i64* %RSI.i, align 8
  %299 = load i64, i64* %RBP.i, align 8
  %300 = add i64 %299, -224
  %301 = load i64, i64* %RAX.i78, align 8
  %302 = add i64 %298, 19
  store i64 %302, i64* %PC.i, align 8
  %303 = inttoptr i64 %300 to i64*
  store i64 %301, i64* %303, align 8
  %304 = load i64, i64* %PC.i, align 8
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
  %312 = load i64, i64* %PC.i, align 8
  store i64 %311, i64* %RCX.i, align 8
  %R8.i706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %313 = add i64 %310, -88
  store i64 %313, i64* %R8.i706, align 8
  %314 = add i64 %310, -232
  %315 = load i64, i64* %RAX.i78, align 8
  %316 = add i64 %312, 15
  store i64 %316, i64* %PC.i, align 8
  %317 = inttoptr i64 %314 to i64*
  store i64 %315, i64* %317, align 8
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -60
  %320 = load i64, i64* %PC.i, align 8
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC.i, align 8
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RDI.i159, align 8
  %325 = add i64 %318, -68
  %326 = add i64 %320, 6
  store i64 %326, i64* %PC.i, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RSI.i, align 8
  %RDX.i693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %330 = add i64 %318, -64
  %331 = add i64 %320, 9
  store i64 %331, i64* %PC.i, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RDX.i693, align 8
  %R9.i691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %335 = add i64 %318, -96
  %336 = add i64 %320, 13
  store i64 %336, i64* %PC.i, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %R9.i691, align 8
  %339 = add i64 %318, -104
  %340 = add i64 %320, 17
  store i64 %340, i64* %PC.i, align 8
  %341 = inttoptr i64 %339 to i64*
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %RAX.i78, align 8
  %R10.i685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %343 = add i64 %318, -136
  %344 = add i64 %320, 24
  store i64 %344, i64* %PC.i, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %R10.i685, align 8
  %R11.i682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %347 = add i64 %318, -144
  %348 = add i64 %320, 31
  store i64 %348, i64* %PC.i, align 8
  %349 = inttoptr i64 %347 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %R11.i682, align 8
  %351 = add i64 %318, -152
  %352 = add i64 %320, 38
  store i64 %352, i64* %PC.i, align 8
  %353 = inttoptr i64 %351 to i64*
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %RBX.i60, align 8
  %355 = add i64 %318, -192
  %356 = add i64 %320, 45
  store i64 %356, i64* %PC.i, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %R14.i33, align 8
  %359 = add i64 %318, -200
  %360 = add i64 %320, 52
  store i64 %360, i64* %PC.i, align 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %R15.i24, align 8
  %363 = add i64 %318, -208
  %364 = add i64 %320, 59
  store i64 %364, i64* %PC.i, align 8
  %365 = inttoptr i64 %363 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %R12.i51, align 8
  %367 = add i64 %318, -216
  %368 = add i64 %320, 66
  store i64 %368, i64* %PC.i, align 8
  %369 = inttoptr i64 %367 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %R13.i42, align 8
  %371 = add i64 %318, -240
  %372 = add i64 %320, 73
  store i64 %372, i64* %PC.i, align 8
  %373 = inttoptr i64 %371 to i64*
  store i64 %342, i64* %373, align 8
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -224
  %376 = load i64, i64* %PC.i, align 8
  %377 = add i64 %376, 7
  store i64 %377, i64* %PC.i, align 8
  %378 = inttoptr i64 %375 to i64*
  %379 = load i64, i64* %378, align 8
  store i64 %379, i64* %RAX.i78, align 8
  %380 = add i64 %374, -248
  %381 = add i64 %376, 14
  store i64 %381, i64* %PC.i, align 8
  %382 = inttoptr i64 %380 to i64*
  store i64 %379, i64* %382, align 8
  %383 = load i64, i64* %RBP.i, align 8
  %384 = add i64 %383, -232
  %385 = load i64, i64* %PC.i, align 8
  %386 = add i64 %385, 7
  store i64 %386, i64* %PC.i, align 8
  %387 = inttoptr i64 %384 to i64*
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %RAX.i78, align 8
  %389 = add i64 %383, -256
  %390 = add i64 %385, 14
  store i64 %390, i64* %PC.i, align 8
  %391 = inttoptr i64 %389 to i64*
  store i64 %388, i64* %391, align 8
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -240
  %394 = load i64, i64* %PC.i, align 8
  %395 = add i64 %394, 7
  store i64 %395, i64* %PC.i, align 8
  %396 = inttoptr i64 %393 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %RAX.i78, align 8
  %398 = bitcast i64* %RSP.i15 to i64**
  %399 = load i64*, i64** %398, align 8
  %400 = add i64 %394, 11
  store i64 %400, i64* %PC.i, align 8
  store i64 %397, i64* %399, align 8
  %401 = load i64, i64* %RSP.i15, align 8
  %402 = add i64 %401, 8
  %403 = load i64, i64* %R10.i685, align 8
  %404 = load i64, i64* %PC.i, align 8
  %405 = add i64 %404, 5
  store i64 %405, i64* %PC.i, align 8
  %406 = inttoptr i64 %402 to i64*
  store i64 %403, i64* %406, align 8
  %407 = load i64, i64* %RSP.i15, align 8
  %408 = add i64 %407, 16
  %409 = load i64, i64* %R11.i682, align 8
  %410 = load i64, i64* %PC.i, align 8
  %411 = add i64 %410, 5
  store i64 %411, i64* %PC.i, align 8
  %412 = inttoptr i64 %408 to i64*
  store i64 %409, i64* %412, align 8
  %413 = load i64, i64* %RSP.i15, align 8
  %414 = add i64 %413, 24
  %415 = load i64, i64* %RBX.i60, align 8
  %416 = load i64, i64* %PC.i, align 8
  %417 = add i64 %416, 5
  store i64 %417, i64* %PC.i, align 8
  %418 = inttoptr i64 %414 to i64*
  store i64 %415, i64* %418, align 8
  %419 = load i64, i64* %RSP.i15, align 8
  %420 = add i64 %419, 32
  %421 = load i64, i64* %R14.i33, align 8
  %422 = load i64, i64* %PC.i, align 8
  %423 = add i64 %422, 5
  store i64 %423, i64* %PC.i, align 8
  %424 = inttoptr i64 %420 to i64*
  store i64 %421, i64* %424, align 8
  %425 = load i64, i64* %RSP.i15, align 8
  %426 = add i64 %425, 40
  %427 = load i64, i64* %R15.i24, align 8
  %428 = load i64, i64* %PC.i, align 8
  %429 = add i64 %428, 5
  store i64 %429, i64* %PC.i, align 8
  %430 = inttoptr i64 %426 to i64*
  store i64 %427, i64* %430, align 8
  %431 = load i64, i64* %RSP.i15, align 8
  %432 = add i64 %431, 48
  %433 = load i64, i64* %R12.i51, align 8
  %434 = load i64, i64* %PC.i, align 8
  %435 = add i64 %434, 5
  store i64 %435, i64* %PC.i, align 8
  %436 = inttoptr i64 %432 to i64*
  store i64 %433, i64* %436, align 8
  %437 = load i64, i64* %RSP.i15, align 8
  %438 = add i64 %437, 56
  %439 = load i64, i64* %R13.i42, align 8
  %440 = load i64, i64* %PC.i, align 8
  %441 = add i64 %440, 5
  store i64 %441, i64* %PC.i, align 8
  %442 = inttoptr i64 %438 to i64*
  store i64 %439, i64* %442, align 8
  %443 = load i64, i64* %RBP.i, align 8
  %444 = add i64 %443, -248
  %445 = load i64, i64* %PC.i, align 8
  %446 = add i64 %445, 7
  store i64 %446, i64* %PC.i, align 8
  %447 = inttoptr i64 %444 to i64*
  %448 = load i64, i64* %447, align 8
  store i64 %448, i64* %RAX.i78, align 8
  %449 = load i64, i64* %RSP.i15, align 8
  %450 = add i64 %449, 64
  %451 = add i64 %445, 12
  store i64 %451, i64* %PC.i, align 8
  %452 = inttoptr i64 %450 to i64*
  store i64 %448, i64* %452, align 8
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -256
  %455 = load i64, i64* %PC.i, align 8
  %456 = add i64 %455, 7
  store i64 %456, i64* %PC.i, align 8
  %457 = inttoptr i64 %454 to i64*
  %458 = load i64, i64* %457, align 8
  store i64 %458, i64* %RAX.i78, align 8
  %459 = load i64, i64* %RSP.i15, align 8
  %460 = add i64 %459, 72
  %461 = add i64 %455, 12
  store i64 %461, i64* %PC.i, align 8
  %462 = inttoptr i64 %460 to i64*
  store i64 %458, i64* %462, align 8
  %463 = load i64, i64* %PC.i, align 8
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
  %471 = load i64, i64* %PC.i, align 8
  %472 = add i64 %471, 3
  store i64 %472, i64* %PC.i, align 8
  %473 = inttoptr i64 %470 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RDI.i159, align 8
  %476 = add i64 %469, -68
  %477 = add i64 %471, 6
  store i64 %477, i64* %PC.i, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RSI.i, align 8
  %481 = add i64 %469, -64
  %482 = add i64 %471, 9
  store i64 %482, i64* %PC.i, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  %485 = zext i32 %484 to i64
  store i64 %485, i64* %RDX.i693, align 8
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %487 = add i64 %469, -80
  %488 = add i64 %471, 14
  store i64 %488, i64* %PC.i, align 8
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
  store i64 %496, i64* %PC.i, align 8
  %497 = inttoptr i64 %495 to i64*
  %498 = load i64, i64* %497, align 8
  %499 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %494, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %498, i64* %499, align 1
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %501 = bitcast i64* %500 to double*
  store double 0.000000e+00, double* %501, align 1
  %502 = add i64 %469, -96
  %503 = add i64 %471, 23
  store i64 %503, i64* %PC.i, align 8
  %504 = inttoptr i64 %502 to i64*
  %505 = load i64, i64* %504, align 8
  store i64 %505, i64* %RCX.i, align 8
  %506 = add i64 %469, -104
  %507 = add i64 %471, 27
  store i64 %507, i64* %PC.i, align 8
  %508 = inttoptr i64 %506 to i64*
  %509 = load i64, i64* %508, align 8
  store i64 %509, i64* %R8.i706, align 8
  %510 = add i64 %469, -112
  %511 = add i64 %471, 31
  store i64 %511, i64* %PC.i, align 8
  %512 = inttoptr i64 %510 to i64*
  %513 = load i64, i64* %512, align 8
  store i64 %513, i64* %R9.i691, align 8
  %514 = add i64 %469, -120
  %515 = add i64 %471, 35
  store i64 %515, i64* %PC.i, align 8
  %516 = inttoptr i64 %514 to i64*
  %517 = load i64, i64* %516, align 8
  store i64 %517, i64* %RAX.i78, align 8
  %518 = add i64 %469, -128
  %519 = add i64 %471, 39
  store i64 %519, i64* %PC.i, align 8
  %520 = inttoptr i64 %518 to i64*
  %521 = load i64, i64* %520, align 8
  store i64 %521, i64* %R10.i685, align 8
  %522 = add i64 %469, -136
  %523 = add i64 %471, 46
  store i64 %523, i64* %PC.i, align 8
  %524 = inttoptr i64 %522 to i64*
  %525 = load i64, i64* %524, align 8
  store i64 %525, i64* %R11.i682, align 8
  %526 = add i64 %469, -144
  %527 = add i64 %471, 53
  store i64 %527, i64* %PC.i, align 8
  %528 = inttoptr i64 %526 to i64*
  %529 = load i64, i64* %528, align 8
  store i64 %529, i64* %RBX.i60, align 8
  %530 = add i64 %469, -152
  %531 = add i64 %471, 60
  store i64 %531, i64* %PC.i, align 8
  %532 = inttoptr i64 %530 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %R14.i33, align 8
  %534 = add i64 %469, -192
  %535 = add i64 %471, 67
  store i64 %535, i64* %PC.i, align 8
  %536 = inttoptr i64 %534 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %R15.i24, align 8
  %538 = load i64, i64* %RBP.i, align 8
  %539 = add i64 %538, -200
  %540 = add i64 %471, 74
  store i64 %540, i64* %PC.i, align 8
  %541 = inttoptr i64 %539 to i64*
  %542 = load i64, i64* %541, align 8
  store i64 %542, i64* %R12.i51, align 8
  %543 = add i64 %538, -208
  %544 = add i64 %471, 81
  store i64 %544, i64* %PC.i, align 8
  %545 = inttoptr i64 %543 to i64*
  %546 = load i64, i64* %545, align 8
  store i64 %546, i64* %R13.i42, align 8
  %547 = add i64 %538, -264
  %548 = add i64 %471, 88
  store i64 %548, i64* %PC.i, align 8
  %549 = inttoptr i64 %547 to i64*
  store i64 %517, i64* %549, align 8
  %550 = load i64, i64* %RBP.i, align 8
  %551 = add i64 %550, -216
  %552 = load i64, i64* %PC.i, align 8
  %553 = add i64 %552, 7
  store i64 %553, i64* %PC.i, align 8
  %554 = inttoptr i64 %551 to i64*
  %555 = load i64, i64* %554, align 8
  store i64 %555, i64* %RAX.i78, align 8
  %556 = add i64 %550, -272
  %557 = add i64 %552, 14
  store i64 %557, i64* %PC.i, align 8
  %558 = inttoptr i64 %556 to i64*
  store i64 %555, i64* %558, align 8
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -224
  %561 = load i64, i64* %PC.i, align 8
  %562 = add i64 %561, 7
  store i64 %562, i64* %PC.i, align 8
  %563 = inttoptr i64 %560 to i64*
  %564 = load i64, i64* %563, align 8
  store i64 %564, i64* %RAX.i78, align 8
  %565 = add i64 %559, -280
  %566 = add i64 %561, 14
  store i64 %566, i64* %PC.i, align 8
  %567 = inttoptr i64 %565 to i64*
  store i64 %564, i64* %567, align 8
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -232
  %570 = load i64, i64* %PC.i, align 8
  %571 = add i64 %570, 7
  store i64 %571, i64* %PC.i, align 8
  %572 = inttoptr i64 %569 to i64*
  %573 = load i64, i64* %572, align 8
  store i64 %573, i64* %RAX.i78, align 8
  %574 = add i64 %568, -288
  %575 = add i64 %570, 14
  store i64 %575, i64* %PC.i, align 8
  %576 = inttoptr i64 %574 to i64*
  store i64 %573, i64* %576, align 8
  %577 = load i64, i64* %RBP.i, align 8
  %578 = add i64 %577, -264
  %579 = load i64, i64* %PC.i, align 8
  %580 = add i64 %579, 7
  store i64 %580, i64* %PC.i, align 8
  %581 = inttoptr i64 %578 to i64*
  %582 = load i64, i64* %581, align 8
  store i64 %582, i64* %RAX.i78, align 8
  %583 = bitcast i64* %RSP.i15 to i64**
  %584 = load i64*, i64** %583, align 8
  %585 = add i64 %579, 11
  store i64 %585, i64* %PC.i, align 8
  store i64 %582, i64* %584, align 8
  %586 = load i64, i64* %RSP.i15, align 8
  %587 = add i64 %586, 8
  %588 = load i64, i64* %R10.i685, align 8
  %589 = load i64, i64* %PC.i, align 8
  %590 = add i64 %589, 5
  store i64 %590, i64* %PC.i, align 8
  %591 = inttoptr i64 %587 to i64*
  store i64 %588, i64* %591, align 8
  %592 = load i64, i64* %RSP.i15, align 8
  %593 = add i64 %592, 16
  %594 = load i64, i64* %R11.i682, align 8
  %595 = load i64, i64* %PC.i, align 8
  %596 = add i64 %595, 5
  store i64 %596, i64* %PC.i, align 8
  %597 = inttoptr i64 %593 to i64*
  store i64 %594, i64* %597, align 8
  %598 = load i64, i64* %RSP.i15, align 8
  %599 = add i64 %598, 24
  %600 = load i64, i64* %RBX.i60, align 8
  %601 = load i64, i64* %PC.i, align 8
  %602 = add i64 %601, 5
  store i64 %602, i64* %PC.i, align 8
  %603 = inttoptr i64 %599 to i64*
  store i64 %600, i64* %603, align 8
  %604 = load i64, i64* %RSP.i15, align 8
  %605 = add i64 %604, 32
  %606 = load i64, i64* %R14.i33, align 8
  %607 = load i64, i64* %PC.i, align 8
  %608 = add i64 %607, 5
  store i64 %608, i64* %PC.i, align 8
  %609 = inttoptr i64 %605 to i64*
  store i64 %606, i64* %609, align 8
  %610 = load i64, i64* %RSP.i15, align 8
  %611 = add i64 %610, 40
  %612 = load i64, i64* %R15.i24, align 8
  %613 = load i64, i64* %PC.i, align 8
  %614 = add i64 %613, 5
  store i64 %614, i64* %PC.i, align 8
  %615 = inttoptr i64 %611 to i64*
  store i64 %612, i64* %615, align 8
  %616 = load i64, i64* %RSP.i15, align 8
  %617 = add i64 %616, 48
  %618 = load i64, i64* %R12.i51, align 8
  %619 = load i64, i64* %PC.i, align 8
  %620 = add i64 %619, 5
  store i64 %620, i64* %PC.i, align 8
  %621 = inttoptr i64 %617 to i64*
  store i64 %618, i64* %621, align 8
  %622 = load i64, i64* %RSP.i15, align 8
  %623 = add i64 %622, 56
  %624 = load i64, i64* %R13.i42, align 8
  %625 = load i64, i64* %PC.i, align 8
  %626 = add i64 %625, 5
  store i64 %626, i64* %PC.i, align 8
  %627 = inttoptr i64 %623 to i64*
  store i64 %624, i64* %627, align 8
  %628 = load i64, i64* %RBP.i, align 8
  %629 = add i64 %628, -272
  %630 = load i64, i64* %PC.i, align 8
  %631 = add i64 %630, 7
  store i64 %631, i64* %PC.i, align 8
  %632 = inttoptr i64 %629 to i64*
  %633 = load i64, i64* %632, align 8
  store i64 %633, i64* %RAX.i78, align 8
  %634 = load i64, i64* %RSP.i15, align 8
  %635 = add i64 %634, 64
  %636 = add i64 %630, 12
  store i64 %636, i64* %PC.i, align 8
  %637 = inttoptr i64 %635 to i64*
  store i64 %633, i64* %637, align 8
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -280
  %640 = load i64, i64* %PC.i, align 8
  %641 = add i64 %640, 7
  store i64 %641, i64* %PC.i, align 8
  %642 = inttoptr i64 %639 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RAX.i78, align 8
  %644 = load i64, i64* %RSP.i15, align 8
  %645 = add i64 %644, 72
  %646 = add i64 %640, 12
  store i64 %646, i64* %PC.i, align 8
  %647 = inttoptr i64 %645 to i64*
  store i64 %643, i64* %647, align 8
  %648 = load i64, i64* %RBP.i, align 8
  %649 = add i64 %648, -288
  %650 = load i64, i64* %PC.i, align 8
  %651 = add i64 %650, 7
  store i64 %651, i64* %PC.i, align 8
  %652 = inttoptr i64 %649 to i64*
  %653 = load i64, i64* %652, align 8
  store i64 %653, i64* %RAX.i78, align 8
  %654 = load i64, i64* %RSP.i15, align 8
  %655 = add i64 %654, 80
  %656 = add i64 %650, 12
  store i64 %656, i64* %PC.i, align 8
  %657 = inttoptr i64 %655 to i64*
  store i64 %653, i64* %657, align 8
  %658 = load i64, i64* %PC.i, align 8
  %659 = add i64 %658, 2023
  %660 = add i64 %658, 5
  %661 = load i64, i64* %6, align 8
  %662 = add i64 %661, -8
  %663 = inttoptr i64 %662 to i64*
  store i64 %660, i64* %663, align 8
  store i64 %662, i64* %6, align 8
  store i64 %659, i64* %3, align 8
  %call2_400be9 = tail call %struct.Memory* @sub_4013d0.kernel_fdtd_apml(%struct.State* %0, i64 %659, %struct.Memory* %call2_400b10)
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -80
  %666 = load i64, i64* %PC.i, align 8
  store i64 %665, i64* %RCX.i, align 8
  %667 = add i64 %664, -88
  store i64 %667, i64* %R8.i706, align 8
  %668 = add i64 %664, -60
  %669 = add i64 %666, 11
  store i64 %669, i64* %PC.i, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %RDI.i159, align 8
  %673 = add i64 %664, -68
  %674 = add i64 %666, 14
  store i64 %674, i64* %PC.i, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = zext i32 %676 to i64
  store i64 %677, i64* %RSI.i, align 8
  %678 = add i64 %664, -64
  %679 = add i64 %666, 17
  store i64 %679, i64* %PC.i, align 8
  %680 = inttoptr i64 %678 to i32*
  %681 = load i32, i32* %680, align 4
  %682 = zext i32 %681 to i64
  store i64 %682, i64* %RDX.i693, align 8
  %683 = add i64 %664, -96
  %684 = add i64 %666, 21
  store i64 %684, i64* %PC.i, align 8
  %685 = inttoptr i64 %683 to i64*
  %686 = load i64, i64* %685, align 8
  store i64 %686, i64* %R9.i691, align 8
  %687 = add i64 %664, -104
  %688 = add i64 %666, 25
  store i64 %688, i64* %PC.i, align 8
  %689 = inttoptr i64 %687 to i64*
  %690 = load i64, i64* %689, align 8
  store i64 %690, i64* %RAX.i78, align 8
  %691 = add i64 %664, -168
  %692 = add i64 %666, 32
  store i64 %692, i64* %PC.i, align 8
  %693 = inttoptr i64 %691 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %R10.i685, align 8
  %695 = add i64 %664, -176
  %696 = add i64 %666, 39
  store i64 %696, i64* %PC.i, align 8
  %697 = inttoptr i64 %695 to i64*
  %698 = load i64, i64* %697, align 8
  store i64 %698, i64* %R11.i682, align 8
  %699 = add i64 %664, -184
  %700 = add i64 %666, 46
  store i64 %700, i64* %PC.i, align 8
  %701 = inttoptr i64 %699 to i64*
  %702 = load i64, i64* %701, align 8
  store i64 %702, i64* %RBX.i60, align 8
  %703 = add i64 %664, -192
  %704 = add i64 %666, 53
  store i64 %704, i64* %PC.i, align 8
  %705 = inttoptr i64 %703 to i64*
  %706 = load i64, i64* %705, align 8
  store i64 %706, i64* %R14.i33, align 8
  %707 = add i64 %664, -200
  %708 = add i64 %666, 60
  store i64 %708, i64* %PC.i, align 8
  %709 = inttoptr i64 %707 to i64*
  %710 = load i64, i64* %709, align 8
  store i64 %710, i64* %R15.i24, align 8
  %711 = add i64 %664, -208
  %712 = add i64 %666, 67
  store i64 %712, i64* %PC.i, align 8
  %713 = inttoptr i64 %711 to i64*
  %714 = load i64, i64* %713, align 8
  store i64 %714, i64* %R12.i51, align 8
  %715 = add i64 %664, -216
  %716 = add i64 %666, 74
  store i64 %716, i64* %PC.i, align 8
  %717 = inttoptr i64 %715 to i64*
  %718 = load i64, i64* %717, align 8
  store i64 %718, i64* %R13.i42, align 8
  %719 = add i64 %664, -296
  %720 = add i64 %666, 81
  store i64 %720, i64* %PC.i, align 8
  %721 = inttoptr i64 %719 to i64*
  store i64 %690, i64* %721, align 8
  %722 = load i64, i64* %RBP.i, align 8
  %723 = add i64 %722, -224
  %724 = load i64, i64* %PC.i, align 8
  %725 = add i64 %724, 7
  store i64 %725, i64* %PC.i, align 8
  %726 = inttoptr i64 %723 to i64*
  %727 = load i64, i64* %726, align 8
  store i64 %727, i64* %RAX.i78, align 8
  %728 = add i64 %722, -304
  %729 = add i64 %724, 14
  store i64 %729, i64* %PC.i, align 8
  %730 = inttoptr i64 %728 to i64*
  store i64 %727, i64* %730, align 8
  %731 = load i64, i64* %RBP.i, align 8
  %732 = add i64 %731, -232
  %733 = load i64, i64* %PC.i, align 8
  %734 = add i64 %733, 7
  store i64 %734, i64* %PC.i, align 8
  %735 = inttoptr i64 %732 to i64*
  %736 = load i64, i64* %735, align 8
  store i64 %736, i64* %RAX.i78, align 8
  %737 = add i64 %731, -312
  %738 = add i64 %733, 14
  store i64 %738, i64* %PC.i, align 8
  %739 = inttoptr i64 %737 to i64*
  store i64 %736, i64* %739, align 8
  %740 = load i64, i64* %RBP.i, align 8
  %741 = add i64 %740, -296
  %742 = load i64, i64* %PC.i, align 8
  %743 = add i64 %742, 7
  store i64 %743, i64* %PC.i, align 8
  %744 = inttoptr i64 %741 to i64*
  %745 = load i64, i64* %744, align 8
  store i64 %745, i64* %RAX.i78, align 8
  %746 = bitcast i64* %RSP.i15 to i64**
  %747 = load i64*, i64** %746, align 8
  %748 = add i64 %742, 11
  store i64 %748, i64* %PC.i, align 8
  store i64 %745, i64* %747, align 8
  %749 = load i64, i64* %RSP.i15, align 8
  %750 = add i64 %749, 8
  %751 = load i64, i64* %R10.i685, align 8
  %752 = load i64, i64* %PC.i, align 8
  %753 = add i64 %752, 5
  store i64 %753, i64* %PC.i, align 8
  %754 = inttoptr i64 %750 to i64*
  store i64 %751, i64* %754, align 8
  %755 = load i64, i64* %RSP.i15, align 8
  %756 = add i64 %755, 16
  %757 = load i64, i64* %R11.i682, align 8
  %758 = load i64, i64* %PC.i, align 8
  %759 = add i64 %758, 5
  store i64 %759, i64* %PC.i, align 8
  %760 = inttoptr i64 %756 to i64*
  store i64 %757, i64* %760, align 8
  %761 = load i64, i64* %RSP.i15, align 8
  %762 = add i64 %761, 24
  %763 = load i64, i64* %RBX.i60, align 8
  %764 = load i64, i64* %PC.i, align 8
  %765 = add i64 %764, 5
  store i64 %765, i64* %PC.i, align 8
  %766 = inttoptr i64 %762 to i64*
  store i64 %763, i64* %766, align 8
  %767 = load i64, i64* %RSP.i15, align 8
  %768 = add i64 %767, 32
  %769 = load i64, i64* %R14.i33, align 8
  %770 = load i64, i64* %PC.i, align 8
  %771 = add i64 %770, 5
  store i64 %771, i64* %PC.i, align 8
  %772 = inttoptr i64 %768 to i64*
  store i64 %769, i64* %772, align 8
  %773 = load i64, i64* %RSP.i15, align 8
  %774 = add i64 %773, 40
  %775 = load i64, i64* %R15.i24, align 8
  %776 = load i64, i64* %PC.i, align 8
  %777 = add i64 %776, 5
  store i64 %777, i64* %PC.i, align 8
  %778 = inttoptr i64 %774 to i64*
  store i64 %775, i64* %778, align 8
  %779 = load i64, i64* %RSP.i15, align 8
  %780 = add i64 %779, 48
  %781 = load i64, i64* %R12.i51, align 8
  %782 = load i64, i64* %PC.i, align 8
  %783 = add i64 %782, 5
  store i64 %783, i64* %PC.i, align 8
  %784 = inttoptr i64 %780 to i64*
  store i64 %781, i64* %784, align 8
  %785 = load i64, i64* %RSP.i15, align 8
  %786 = add i64 %785, 56
  %787 = load i64, i64* %R13.i42, align 8
  %788 = load i64, i64* %PC.i, align 8
  %789 = add i64 %788, 5
  store i64 %789, i64* %PC.i, align 8
  %790 = inttoptr i64 %786 to i64*
  store i64 %787, i64* %790, align 8
  %791 = load i64, i64* %RBP.i, align 8
  %792 = add i64 %791, -304
  %793 = load i64, i64* %PC.i, align 8
  %794 = add i64 %793, 7
  store i64 %794, i64* %PC.i, align 8
  %795 = inttoptr i64 %792 to i64*
  %796 = load i64, i64* %795, align 8
  store i64 %796, i64* %RAX.i78, align 8
  %797 = load i64, i64* %RSP.i15, align 8
  %798 = add i64 %797, 64
  %799 = add i64 %793, 12
  store i64 %799, i64* %PC.i, align 8
  %800 = inttoptr i64 %798 to i64*
  store i64 %796, i64* %800, align 8
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -312
  %803 = load i64, i64* %PC.i, align 8
  %804 = add i64 %803, 7
  store i64 %804, i64* %PC.i, align 8
  %805 = inttoptr i64 %802 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RAX.i78, align 8
  %807 = load i64, i64* %RSP.i15, align 8
  %808 = add i64 %807, 72
  %809 = add i64 %803, 12
  store i64 %809, i64* %PC.i, align 8
  %810 = inttoptr i64 %808 to i64*
  store i64 %806, i64* %810, align 8
  %811 = load i64, i64* %PC.i, align 8
  %812 = add i64 %811, 751
  %813 = add i64 %811, 5
  %814 = load i64, i64* %6, align 8
  %815 = add i64 %814, -8
  %816 = inttoptr i64 %815 to i64*
  store i64 %813, i64* %816, align 8
  store i64 %815, i64* %6, align 8
  store i64 %812, i64* %3, align 8
  %call2_400ca1 = tail call %struct.Memory* @sub_400f90.init_array(%struct.State* %0, i64 %812, %struct.Memory* %call2_400be9)
  %817 = load i64, i64* %RBP.i, align 8
  %818 = add i64 %817, -60
  %819 = load i64, i64* %PC.i, align 8
  %820 = add i64 %819, 3
  store i64 %820, i64* %PC.i, align 8
  %821 = inttoptr i64 %818 to i32*
  %822 = load i32, i32* %821, align 4
  %823 = zext i32 %822 to i64
  store i64 %823, i64* %RDI.i159, align 8
  %824 = add i64 %817, -68
  %825 = add i64 %819, 6
  store i64 %825, i64* %PC.i, align 8
  %826 = inttoptr i64 %824 to i32*
  %827 = load i32, i32* %826, align 4
  %828 = zext i32 %827 to i64
  store i64 %828, i64* %RSI.i, align 8
  %829 = add i64 %817, -64
  %830 = add i64 %819, 9
  store i64 %830, i64* %PC.i, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RDX.i693, align 8
  %834 = add i64 %817, -80
  %835 = add i64 %819, 14
  store i64 %835, i64* %PC.i, align 8
  %836 = inttoptr i64 %834 to i64*
  %837 = load i64, i64* %836, align 8
  %838 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %486, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %837, i64* %838, align 1
  store double 0.000000e+00, double* %493, align 1
  %839 = add i64 %817, -88
  %840 = add i64 %819, 19
  store i64 %840, i64* %PC.i, align 8
  %841 = inttoptr i64 %839 to i64*
  %842 = load i64, i64* %841, align 8
  %843 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %494, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %842, i64* %843, align 1
  store double 0.000000e+00, double* %501, align 1
  %844 = add i64 %817, -96
  %845 = add i64 %819, 23
  store i64 %845, i64* %PC.i, align 8
  %846 = inttoptr i64 %844 to i64*
  %847 = load i64, i64* %846, align 8
  store i64 %847, i64* %RCX.i, align 8
  %848 = add i64 %817, -104
  %849 = add i64 %819, 27
  store i64 %849, i64* %PC.i, align 8
  %850 = inttoptr i64 %848 to i64*
  %851 = load i64, i64* %850, align 8
  store i64 %851, i64* %R8.i706, align 8
  %852 = add i64 %817, -112
  %853 = add i64 %819, 31
  store i64 %853, i64* %PC.i, align 8
  %854 = inttoptr i64 %852 to i64*
  %855 = load i64, i64* %854, align 8
  store i64 %855, i64* %R9.i691, align 8
  %856 = add i64 %817, -120
  %857 = add i64 %819, 35
  store i64 %857, i64* %PC.i, align 8
  %858 = inttoptr i64 %856 to i64*
  %859 = load i64, i64* %858, align 8
  store i64 %859, i64* %RAX.i78, align 8
  %860 = add i64 %817, -160
  %861 = add i64 %819, 42
  store i64 %861, i64* %PC.i, align 8
  %862 = inttoptr i64 %860 to i64*
  %863 = load i64, i64* %862, align 8
  store i64 %863, i64* %R10.i685, align 8
  %864 = add i64 %817, -168
  %865 = add i64 %819, 49
  store i64 %865, i64* %PC.i, align 8
  %866 = inttoptr i64 %864 to i64*
  %867 = load i64, i64* %866, align 8
  store i64 %867, i64* %R11.i682, align 8
  %868 = add i64 %817, -176
  %869 = add i64 %819, 56
  store i64 %869, i64* %PC.i, align 8
  %870 = inttoptr i64 %868 to i64*
  %871 = load i64, i64* %870, align 8
  store i64 %871, i64* %RBX.i60, align 8
  %872 = add i64 %817, -184
  %873 = add i64 %819, 63
  store i64 %873, i64* %PC.i, align 8
  %874 = inttoptr i64 %872 to i64*
  %875 = load i64, i64* %874, align 8
  store i64 %875, i64* %R14.i33, align 8
  %876 = add i64 %817, -192
  %877 = add i64 %819, 70
  store i64 %877, i64* %PC.i, align 8
  %878 = inttoptr i64 %876 to i64*
  %879 = load i64, i64* %878, align 8
  store i64 %879, i64* %R15.i24, align 8
  %880 = add i64 %817, -200
  %881 = add i64 %819, 77
  store i64 %881, i64* %PC.i, align 8
  %882 = inttoptr i64 %880 to i64*
  %883 = load i64, i64* %882, align 8
  store i64 %883, i64* %R12.i51, align 8
  %884 = add i64 %817, -208
  %885 = add i64 %819, 84
  store i64 %885, i64* %PC.i, align 8
  %886 = inttoptr i64 %884 to i64*
  %887 = load i64, i64* %886, align 8
  store i64 %887, i64* %R13.i42, align 8
  %888 = load i64, i64* %RBP.i, align 8
  %889 = add i64 %888, -320
  %890 = add i64 %819, 91
  store i64 %890, i64* %PC.i, align 8
  %891 = inttoptr i64 %889 to i64*
  store i64 %859, i64* %891, align 8
  %892 = load i64, i64* %RBP.i, align 8
  %893 = add i64 %892, -216
  %894 = load i64, i64* %PC.i, align 8
  %895 = add i64 %894, 7
  store i64 %895, i64* %PC.i, align 8
  %896 = inttoptr i64 %893 to i64*
  %897 = load i64, i64* %896, align 8
  store i64 %897, i64* %RAX.i78, align 8
  %898 = add i64 %892, -328
  %899 = add i64 %894, 14
  store i64 %899, i64* %PC.i, align 8
  %900 = inttoptr i64 %898 to i64*
  store i64 %897, i64* %900, align 8
  %901 = load i64, i64* %RBP.i, align 8
  %902 = add i64 %901, -224
  %903 = load i64, i64* %PC.i, align 8
  %904 = add i64 %903, 7
  store i64 %904, i64* %PC.i, align 8
  %905 = inttoptr i64 %902 to i64*
  %906 = load i64, i64* %905, align 8
  store i64 %906, i64* %RAX.i78, align 8
  %907 = add i64 %901, -336
  %908 = add i64 %903, 14
  store i64 %908, i64* %PC.i, align 8
  %909 = inttoptr i64 %907 to i64*
  store i64 %906, i64* %909, align 8
  %910 = load i64, i64* %RBP.i, align 8
  %911 = add i64 %910, -232
  %912 = load i64, i64* %PC.i, align 8
  %913 = add i64 %912, 7
  store i64 %913, i64* %PC.i, align 8
  %914 = inttoptr i64 %911 to i64*
  %915 = load i64, i64* %914, align 8
  store i64 %915, i64* %RAX.i78, align 8
  %916 = add i64 %910, -344
  %917 = add i64 %912, 14
  store i64 %917, i64* %PC.i, align 8
  %918 = inttoptr i64 %916 to i64*
  store i64 %915, i64* %918, align 8
  %919 = load i64, i64* %RBP.i, align 8
  %920 = add i64 %919, -320
  %921 = load i64, i64* %PC.i, align 8
  %922 = add i64 %921, 7
  store i64 %922, i64* %PC.i, align 8
  %923 = inttoptr i64 %920 to i64*
  %924 = load i64, i64* %923, align 8
  store i64 %924, i64* %RAX.i78, align 8
  %925 = bitcast i64* %RSP.i15 to i64**
  %926 = load i64*, i64** %925, align 8
  %927 = add i64 %921, 11
  store i64 %927, i64* %PC.i, align 8
  store i64 %924, i64* %926, align 8
  %928 = load i64, i64* %RSP.i15, align 8
  %929 = add i64 %928, 8
  %930 = load i64, i64* %R10.i685, align 8
  %931 = load i64, i64* %PC.i, align 8
  %932 = add i64 %931, 5
  store i64 %932, i64* %PC.i, align 8
  %933 = inttoptr i64 %929 to i64*
  store i64 %930, i64* %933, align 8
  %934 = load i64, i64* %RSP.i15, align 8
  %935 = add i64 %934, 16
  %936 = load i64, i64* %R11.i682, align 8
  %937 = load i64, i64* %PC.i, align 8
  %938 = add i64 %937, 5
  store i64 %938, i64* %PC.i, align 8
  %939 = inttoptr i64 %935 to i64*
  store i64 %936, i64* %939, align 8
  %940 = load i64, i64* %RSP.i15, align 8
  %941 = add i64 %940, 24
  %942 = load i64, i64* %RBX.i60, align 8
  %943 = load i64, i64* %PC.i, align 8
  %944 = add i64 %943, 5
  store i64 %944, i64* %PC.i, align 8
  %945 = inttoptr i64 %941 to i64*
  store i64 %942, i64* %945, align 8
  %946 = load i64, i64* %RSP.i15, align 8
  %947 = add i64 %946, 32
  %948 = load i64, i64* %R14.i33, align 8
  %949 = load i64, i64* %PC.i, align 8
  %950 = add i64 %949, 5
  store i64 %950, i64* %PC.i, align 8
  %951 = inttoptr i64 %947 to i64*
  store i64 %948, i64* %951, align 8
  %952 = load i64, i64* %RSP.i15, align 8
  %953 = add i64 %952, 40
  %954 = load i64, i64* %R15.i24, align 8
  %955 = load i64, i64* %PC.i, align 8
  %956 = add i64 %955, 5
  store i64 %956, i64* %PC.i, align 8
  %957 = inttoptr i64 %953 to i64*
  store i64 %954, i64* %957, align 8
  %958 = load i64, i64* %RSP.i15, align 8
  %959 = add i64 %958, 48
  %960 = load i64, i64* %R12.i51, align 8
  %961 = load i64, i64* %PC.i, align 8
  %962 = add i64 %961, 5
  store i64 %962, i64* %PC.i, align 8
  %963 = inttoptr i64 %959 to i64*
  store i64 %960, i64* %963, align 8
  %964 = load i64, i64* %RSP.i15, align 8
  %965 = add i64 %964, 56
  %966 = load i64, i64* %R13.i42, align 8
  %967 = load i64, i64* %PC.i, align 8
  %968 = add i64 %967, 5
  store i64 %968, i64* %PC.i, align 8
  %969 = inttoptr i64 %965 to i64*
  store i64 %966, i64* %969, align 8
  %970 = load i64, i64* %RBP.i, align 8
  %971 = add i64 %970, -328
  %972 = load i64, i64* %PC.i, align 8
  %973 = add i64 %972, 7
  store i64 %973, i64* %PC.i, align 8
  %974 = inttoptr i64 %971 to i64*
  %975 = load i64, i64* %974, align 8
  store i64 %975, i64* %RAX.i78, align 8
  %976 = load i64, i64* %RSP.i15, align 8
  %977 = add i64 %976, 64
  %978 = add i64 %972, 12
  store i64 %978, i64* %PC.i, align 8
  %979 = inttoptr i64 %977 to i64*
  store i64 %975, i64* %979, align 8
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -336
  %982 = load i64, i64* %PC.i, align 8
  %983 = add i64 %982, 7
  store i64 %983, i64* %PC.i, align 8
  %984 = inttoptr i64 %981 to i64*
  %985 = load i64, i64* %984, align 8
  store i64 %985, i64* %RAX.i78, align 8
  %986 = load i64, i64* %RSP.i15, align 8
  %987 = add i64 %986, 72
  %988 = add i64 %982, 12
  store i64 %988, i64* %PC.i, align 8
  %989 = inttoptr i64 %987 to i64*
  store i64 %985, i64* %989, align 8
  %990 = load i64, i64* %RBP.i, align 8
  %991 = add i64 %990, -344
  %992 = load i64, i64* %PC.i, align 8
  %993 = add i64 %992, 7
  store i64 %993, i64* %PC.i, align 8
  %994 = inttoptr i64 %991 to i64*
  %995 = load i64, i64* %994, align 8
  store i64 %995, i64* %RAX.i78, align 8
  %996 = load i64, i64* %RSP.i15, align 8
  %997 = add i64 %996, 80
  %998 = add i64 %992, 12
  store i64 %998, i64* %PC.i, align 8
  %999 = inttoptr i64 %997 to i64*
  store i64 %995, i64* %999, align 8
  %1000 = load i64, i64* %PC.i, align 8
  %1001 = add i64 %1000, 4499
  %1002 = add i64 %1000, 5
  %1003 = load i64, i64* %6, align 8
  %1004 = add i64 %1003, -8
  %1005 = inttoptr i64 %1004 to i64*
  store i64 %1002, i64* %1005, align 8
  store i64 %1004, i64* %6, align 8
  store i64 %1001, i64* %3, align 8
  %call2_400d7d = tail call %struct.Memory* @sub_401f10.kernel_fdtd_apml_StrictFP(%struct.State* %0, i64 %1001, %struct.Memory* %call2_400ca1)
  %1006 = load i64, i64* %RBP.i, align 8
  %1007 = add i64 %1006, -60
  %1008 = load i64, i64* %PC.i, align 8
  %1009 = add i64 %1008, 3
  store i64 %1009, i64* %PC.i, align 8
  %1010 = inttoptr i64 %1007 to i32*
  %1011 = load i32, i32* %1010, align 4
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %RDI.i159, align 8
  %1013 = add i64 %1006, -68
  %1014 = add i64 %1008, 6
  store i64 %1014, i64* %PC.i, align 8
  %1015 = inttoptr i64 %1013 to i32*
  %1016 = load i32, i32* %1015, align 4
  %1017 = zext i32 %1016 to i64
  store i64 %1017, i64* %RSI.i, align 8
  %1018 = add i64 %1006, -64
  %1019 = add i64 %1008, 9
  store i64 %1019, i64* %PC.i, align 8
  %1020 = inttoptr i64 %1018 to i32*
  %1021 = load i32, i32* %1020, align 4
  %1022 = zext i32 %1021 to i64
  store i64 %1022, i64* %RDX.i693, align 8
  %1023 = add i64 %1006, -128
  %1024 = add i64 %1008, 13
  store i64 %1024, i64* %PC.i, align 8
  %1025 = inttoptr i64 %1023 to i64*
  %1026 = load i64, i64* %1025, align 8
  store i64 %1026, i64* %RCX.i, align 8
  %1027 = add i64 %1006, -160
  %1028 = add i64 %1008, 20
  store i64 %1028, i64* %PC.i, align 8
  %1029 = inttoptr i64 %1027 to i64*
  %1030 = load i64, i64* %1029, align 8
  store i64 %1030, i64* %R8.i706, align 8
  %1031 = add i64 %1008, 7374
  %1032 = add i64 %1008, 25
  %1033 = load i64, i64* %6, align 8
  %1034 = add i64 %1033, -8
  %1035 = inttoptr i64 %1034 to i64*
  store i64 %1032, i64* %1035, align 8
  store i64 %1034, i64* %6, align 8
  store i64 %1031, i64* %3, align 8
  %call2_400d96 = tail call %struct.Memory* @sub_402a50.check_FP(%struct.State* %0, i64 %1031, %struct.Memory* %call2_400d7d)
  %1036 = load i32, i32* %EAX.i, align 4
  %1037 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %39, align 1
  %1038 = and i32 %1036, 255
  %1039 = tail call i32 @llvm.ctpop.i32(i32 %1038)
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  %1042 = xor i8 %1041, 1
  store i8 %1042, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1043 = icmp eq i32 %1036, 0
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %54, align 1
  %1045 = lshr i32 %1036, 31
  %1046 = trunc i32 %1045 to i8
  store i8 %1046, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v = select i1 %1043, i64 9, i64 21
  %1047 = add i64 %1037, %.v
  store i64 %1047, i64* %3, align 8
  %1048 = load i64, i64* %RBP.i, align 8
  br i1 %1043, label %block_400da4, label %block_.L_400db0

block_400da4:                                     ; preds = %entry
  %1049 = add i64 %1048, -44
  %1050 = add i64 %1047, 7
  store i64 %1050, i64* %PC.i, align 8
  %1051 = inttoptr i64 %1049 to i32*
  store i32 1, i32* %1051, align 4
  %1052 = load i64, i64* %PC.i, align 8
  %1053 = add i64 %1052, 460
  store i64 %1053, i64* %3, align 8
  br label %block_.L_400f77

block_.L_400db0:                                  ; preds = %entry
  %1054 = add i64 %1048, -60
  %1055 = add i64 %1047, 3
  store i64 %1055, i64* %PC.i, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RDI.i159, align 8
  %1059 = add i64 %1048, -68
  %1060 = add i64 %1047, 6
  store i64 %1060, i64* %PC.i, align 8
  %1061 = inttoptr i64 %1059 to i32*
  %1062 = load i32, i32* %1061, align 4
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RSI.i, align 8
  %1064 = add i64 %1048, -64
  %1065 = add i64 %1047, 9
  store i64 %1065, i64* %PC.i, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %RDX.i693, align 8
  %1069 = add i64 %1048, -136
  %1070 = add i64 %1047, 16
  store i64 %1070, i64* %PC.i, align 8
  %1071 = inttoptr i64 %1069 to i64*
  %1072 = load i64, i64* %1071, align 8
  store i64 %1072, i64* %RCX.i, align 8
  %1073 = add i64 %1048, -168
  %1074 = add i64 %1047, 23
  store i64 %1074, i64* %PC.i, align 8
  %1075 = inttoptr i64 %1073 to i64*
  %1076 = load i64, i64* %1075, align 8
  store i64 %1076, i64* %R8.i706, align 8
  %1077 = add i64 %1047, 7328
  %1078 = add i64 %1047, 28
  %1079 = load i64, i64* %6, align 8
  %1080 = add i64 %1079, -8
  %1081 = inttoptr i64 %1080 to i64*
  store i64 %1078, i64* %1081, align 8
  store i64 %1080, i64* %6, align 8
  store i64 %1077, i64* %3, align 8
  %call2_400dc7 = tail call %struct.Memory* @sub_402a50.check_FP(%struct.State* %0, i64 %1077, %struct.Memory* %call2_400d96)
  %1082 = load i32, i32* %EAX.i, align 4
  %1083 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %39, align 1
  %1084 = and i32 %1082, 255
  %1085 = tail call i32 @llvm.ctpop.i32(i32 %1084)
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  %1088 = xor i8 %1087, 1
  store i8 %1088, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1089 = icmp eq i32 %1082, 0
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %54, align 1
  %1091 = lshr i32 %1082, 31
  %1092 = trunc i32 %1091 to i8
  store i8 %1092, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v1 = select i1 %1089, i64 9, i64 21
  %1093 = add i64 %1083, %.v1
  store i64 %1093, i64* %3, align 8
  %1094 = load i64, i64* %RBP.i, align 8
  br i1 %1089, label %block_400dd5, label %block_.L_400de1

block_400dd5:                                     ; preds = %block_.L_400db0
  %1095 = add i64 %1094, -44
  %1096 = add i64 %1093, 7
  store i64 %1096, i64* %PC.i, align 8
  %1097 = inttoptr i64 %1095 to i32*
  store i32 1, i32* %1097, align 4
  %1098 = load i64, i64* %PC.i, align 8
  %1099 = add i64 %1098, 411
  store i64 %1099, i64* %3, align 8
  br label %block_.L_400f77

block_.L_400de1:                                  ; preds = %block_.L_400db0
  %1100 = add i64 %1094, -60
  %1101 = add i64 %1093, 3
  store i64 %1101, i64* %PC.i, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RDI.i159, align 8
  %1105 = add i64 %1094, -68
  %1106 = add i64 %1093, 6
  store i64 %1106, i64* %PC.i, align 8
  %1107 = inttoptr i64 %1105 to i32*
  %1108 = load i32, i32* %1107, align 4
  %1109 = zext i32 %1108 to i64
  store i64 %1109, i64* %RSI.i, align 8
  %1110 = add i64 %1094, -64
  %1111 = add i64 %1093, 9
  store i64 %1111, i64* %PC.i, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = zext i32 %1113 to i64
  store i64 %1114, i64* %RDX.i693, align 8
  %1115 = add i64 %1094, -144
  %1116 = add i64 %1093, 16
  store i64 %1116, i64* %PC.i, align 8
  %1117 = inttoptr i64 %1115 to i64*
  %1118 = load i64, i64* %1117, align 8
  store i64 %1118, i64* %RCX.i, align 8
  %1119 = add i64 %1094, -176
  %1120 = add i64 %1093, 23
  store i64 %1120, i64* %PC.i, align 8
  %1121 = inttoptr i64 %1119 to i64*
  %1122 = load i64, i64* %1121, align 8
  store i64 %1122, i64* %R8.i706, align 8
  %1123 = add i64 %1093, 7279
  %1124 = add i64 %1093, 28
  %1125 = load i64, i64* %6, align 8
  %1126 = add i64 %1125, -8
  %1127 = inttoptr i64 %1126 to i64*
  store i64 %1124, i64* %1127, align 8
  store i64 %1126, i64* %6, align 8
  store i64 %1123, i64* %3, align 8
  %call2_400df8 = tail call %struct.Memory* @sub_402a50.check_FP(%struct.State* %0, i64 %1123, %struct.Memory* %call2_400dc7)
  %1128 = load i32, i32* %EAX.i, align 4
  %1129 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %39, align 1
  %1130 = and i32 %1128, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1135 = icmp eq i32 %1128, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %54, align 1
  %1137 = lshr i32 %1128, 31
  %1138 = trunc i32 %1137 to i8
  store i8 %1138, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v2 = select i1 %1135, i64 9, i64 21
  %1139 = add i64 %1129, %.v2
  store i64 %1139, i64* %3, align 8
  %1140 = load i64, i64* %RBP.i, align 8
  br i1 %1135, label %block_400e06, label %block_.L_400e12

block_400e06:                                     ; preds = %block_.L_400de1
  %1141 = add i64 %1140, -44
  %1142 = add i64 %1139, 7
  store i64 %1142, i64* %PC.i, align 8
  %1143 = inttoptr i64 %1141 to i32*
  store i32 1, i32* %1143, align 4
  %1144 = load i64, i64* %PC.i, align 8
  %1145 = add i64 %1144, 362
  store i64 %1145, i64* %3, align 8
  br label %block_.L_400f77

block_.L_400e12:                                  ; preds = %block_.L_400de1
  %1146 = add i64 %1140, -60
  %1147 = add i64 %1139, 3
  store i64 %1147, i64* %PC.i, align 8
  %1148 = inttoptr i64 %1146 to i32*
  %1149 = load i32, i32* %1148, align 4
  %1150 = zext i32 %1149 to i64
  store i64 %1150, i64* %RDI.i159, align 8
  %1151 = add i64 %1140, -68
  %1152 = add i64 %1139, 6
  store i64 %1152, i64* %PC.i, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RSI.i, align 8
  %1156 = add i64 %1140, -64
  %1157 = add i64 %1139, 9
  store i64 %1157, i64* %PC.i, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RDX.i693, align 8
  %1161 = add i64 %1140, -152
  %1162 = add i64 %1139, 16
  store i64 %1162, i64* %PC.i, align 8
  %1163 = inttoptr i64 %1161 to i64*
  %1164 = load i64, i64* %1163, align 8
  store i64 %1164, i64* %RCX.i, align 8
  %1165 = add i64 %1140, -184
  %1166 = add i64 %1139, 23
  store i64 %1166, i64* %PC.i, align 8
  %1167 = inttoptr i64 %1165 to i64*
  %1168 = load i64, i64* %1167, align 8
  store i64 %1168, i64* %R8.i706, align 8
  %1169 = add i64 %1139, 7230
  %1170 = add i64 %1139, 28
  %1171 = load i64, i64* %6, align 8
  %1172 = add i64 %1171, -8
  %1173 = inttoptr i64 %1172 to i64*
  store i64 %1170, i64* %1173, align 8
  store i64 %1172, i64* %6, align 8
  store i64 %1169, i64* %3, align 8
  %call2_400e29 = tail call %struct.Memory* @sub_402a50.check_FP(%struct.State* %0, i64 %1169, %struct.Memory* %call2_400df8)
  %1174 = load i32, i32* %EAX.i, align 4
  %1175 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %39, align 1
  %1176 = and i32 %1174, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1181 = icmp eq i32 %1174, 0
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %54, align 1
  %1183 = lshr i32 %1174, 31
  %1184 = trunc i32 %1183 to i8
  store i8 %1184, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v3 = select i1 %1181, i64 9, i64 21
  %1185 = add i64 %1175, %.v3
  store i64 %1185, i64* %3, align 8
  %1186 = load i64, i64* %RBP.i, align 8
  br i1 %1181, label %block_400e37, label %block_.L_400e43

block_400e37:                                     ; preds = %block_.L_400e12
  %1187 = add i64 %1186, -44
  %1188 = add i64 %1185, 7
  store i64 %1188, i64* %PC.i, align 8
  %1189 = inttoptr i64 %1187 to i32*
  store i32 1, i32* %1189, align 4
  %1190 = load i64, i64* %PC.i, align 8
  %1191 = add i64 %1190, 313
  store i64 %1191, i64* %3, align 8
  br label %block_.L_400f77

block_.L_400e43:                                  ; preds = %block_.L_400e12
  %1192 = add i64 %1186, -60
  %1193 = add i64 %1185, 3
  store i64 %1193, i64* %PC.i, align 8
  %1194 = inttoptr i64 %1192 to i32*
  %1195 = load i32, i32* %1194, align 4
  %1196 = zext i32 %1195 to i64
  store i64 %1196, i64* %RDI.i159, align 8
  %1197 = add i64 %1186, -68
  %1198 = add i64 %1185, 6
  store i64 %1198, i64* %PC.i, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RSI.i, align 8
  %1202 = add i64 %1186, -64
  %1203 = add i64 %1185, 9
  store i64 %1203, i64* %PC.i, align 8
  %1204 = inttoptr i64 %1202 to i32*
  %1205 = load i32, i32* %1204, align 4
  %1206 = zext i32 %1205 to i64
  store i64 %1206, i64* %RDX.i693, align 8
  %1207 = add i64 %1186, -160
  %1208 = add i64 %1185, 16
  store i64 %1208, i64* %PC.i, align 8
  %1209 = inttoptr i64 %1207 to i64*
  %1210 = load i64, i64* %1209, align 8
  store i64 %1210, i64* %RCX.i, align 8
  %1211 = add i64 %1186, -168
  %1212 = add i64 %1185, 23
  store i64 %1212, i64* %PC.i, align 8
  %1213 = inttoptr i64 %1211 to i64*
  %1214 = load i64, i64* %1213, align 8
  store i64 %1214, i64* %R8.i706, align 8
  %1215 = add i64 %1186, -176
  %1216 = add i64 %1185, 30
  store i64 %1216, i64* %PC.i, align 8
  %1217 = inttoptr i64 %1215 to i64*
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %R9.i691, align 8
  %1219 = add i64 %1186, -184
  %1220 = add i64 %1185, 37
  store i64 %1220, i64* %PC.i, align 8
  %1221 = inttoptr i64 %1219 to i64*
  %1222 = load i64, i64* %1221, align 8
  store i64 %1222, i64* %RAX.i78, align 8
  %1223 = bitcast i64* %RSP.i15 to i64**
  %1224 = load i64*, i64** %1223, align 8
  %1225 = add i64 %1185, 41
  store i64 %1225, i64* %PC.i, align 8
  store i64 %1222, i64* %1224, align 8
  %1226 = load i64, i64* %PC.i, align 8
  %1227 = add i64 %1226, 7556
  %1228 = add i64 %1226, 5
  %1229 = load i64, i64* %6, align 8
  %1230 = add i64 %1229, -8
  %1231 = inttoptr i64 %1230 to i64*
  store i64 %1228, i64* %1231, align 8
  store i64 %1230, i64* %6, align 8
  store i64 %1227, i64* %3, align 8
  %call2_400e6c = tail call %struct.Memory* @sub_402bf0.print_array(%struct.State* %0, i64 %1227, %struct.Memory* %call2_400e29)
  %1232 = load i64, i64* %RBP.i, align 8
  %1233 = add i64 %1232, -96
  %1234 = load i64, i64* %PC.i, align 8
  %1235 = add i64 %1234, 4
  store i64 %1235, i64* %PC.i, align 8
  %1236 = inttoptr i64 %1233 to i64*
  %1237 = load i64, i64* %1236, align 8
  store i64 %1237, i64* %RAX.i78, align 8
  store i64 %1237, i64* %RDI.i159, align 8
  %1238 = add i64 %1234, -2337
  %1239 = add i64 %1234, 12
  %1240 = load i64, i64* %6, align 8
  %1241 = add i64 %1240, -8
  %1242 = inttoptr i64 %1241 to i64*
  store i64 %1239, i64* %1242, align 8
  store i64 %1241, i64* %6, align 8
  store i64 %1238, i64* %3, align 8
  %1243 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_400e6c)
  %1244 = load i64, i64* %RBP.i, align 8
  %1245 = add i64 %1244, -104
  %1246 = load i64, i64* %PC.i, align 8
  %1247 = add i64 %1246, 4
  store i64 %1247, i64* %PC.i, align 8
  %1248 = inttoptr i64 %1245 to i64*
  %1249 = load i64, i64* %1248, align 8
  store i64 %1249, i64* %RAX.i78, align 8
  store i64 %1249, i64* %RDI.i159, align 8
  %1250 = add i64 %1246, -2349
  %1251 = add i64 %1246, 12
  %1252 = load i64, i64* %6, align 8
  %1253 = add i64 %1252, -8
  %1254 = inttoptr i64 %1253 to i64*
  store i64 %1251, i64* %1254, align 8
  store i64 %1253, i64* %6, align 8
  store i64 %1250, i64* %3, align 8
  %1255 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1243)
  %1256 = load i64, i64* %RBP.i, align 8
  %1257 = add i64 %1256, -112
  %1258 = load i64, i64* %PC.i, align 8
  %1259 = add i64 %1258, 4
  store i64 %1259, i64* %PC.i, align 8
  %1260 = inttoptr i64 %1257 to i64*
  %1261 = load i64, i64* %1260, align 8
  store i64 %1261, i64* %RAX.i78, align 8
  store i64 %1261, i64* %RDI.i159, align 8
  %1262 = add i64 %1258, -2361
  %1263 = add i64 %1258, 12
  %1264 = load i64, i64* %6, align 8
  %1265 = add i64 %1264, -8
  %1266 = inttoptr i64 %1265 to i64*
  store i64 %1263, i64* %1266, align 8
  store i64 %1265, i64* %6, align 8
  store i64 %1262, i64* %3, align 8
  %1267 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1255)
  %1268 = load i64, i64* %RBP.i, align 8
  %1269 = add i64 %1268, -120
  %1270 = load i64, i64* %PC.i, align 8
  %1271 = add i64 %1270, 4
  store i64 %1271, i64* %PC.i, align 8
  %1272 = inttoptr i64 %1269 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %RAX.i78, align 8
  store i64 %1273, i64* %RDI.i159, align 8
  %1274 = add i64 %1270, -2373
  %1275 = add i64 %1270, 12
  %1276 = load i64, i64* %6, align 8
  %1277 = add i64 %1276, -8
  %1278 = inttoptr i64 %1277 to i64*
  store i64 %1275, i64* %1278, align 8
  store i64 %1277, i64* %6, align 8
  store i64 %1274, i64* %3, align 8
  %1279 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1267)
  %1280 = load i64, i64* %RBP.i, align 8
  %1281 = add i64 %1280, -128
  %1282 = load i64, i64* %PC.i, align 8
  %1283 = add i64 %1282, 4
  store i64 %1283, i64* %PC.i, align 8
  %1284 = inttoptr i64 %1281 to i64*
  %1285 = load i64, i64* %1284, align 8
  store i64 %1285, i64* %RAX.i78, align 8
  store i64 %1285, i64* %RDI.i159, align 8
  %1286 = add i64 %1282, -2385
  %1287 = add i64 %1282, 12
  %1288 = load i64, i64* %6, align 8
  %1289 = add i64 %1288, -8
  %1290 = inttoptr i64 %1289 to i64*
  store i64 %1287, i64* %1290, align 8
  store i64 %1289, i64* %6, align 8
  store i64 %1286, i64* %3, align 8
  %1291 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1279)
  %1292 = load i64, i64* %RBP.i, align 8
  %1293 = add i64 %1292, -136
  %1294 = load i64, i64* %PC.i, align 8
  %1295 = add i64 %1294, 7
  store i64 %1295, i64* %PC.i, align 8
  %1296 = inttoptr i64 %1293 to i64*
  %1297 = load i64, i64* %1296, align 8
  store i64 %1297, i64* %RAX.i78, align 8
  store i64 %1297, i64* %RDI.i159, align 8
  %1298 = add i64 %1294, -2397
  %1299 = add i64 %1294, 15
  %1300 = load i64, i64* %6, align 8
  %1301 = add i64 %1300, -8
  %1302 = inttoptr i64 %1301 to i64*
  store i64 %1299, i64* %1302, align 8
  store i64 %1301, i64* %6, align 8
  store i64 %1298, i64* %3, align 8
  %1303 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1291)
  %1304 = load i64, i64* %RBP.i, align 8
  %1305 = add i64 %1304, -144
  %1306 = load i64, i64* %PC.i, align 8
  %1307 = add i64 %1306, 7
  store i64 %1307, i64* %PC.i, align 8
  %1308 = inttoptr i64 %1305 to i64*
  %1309 = load i64, i64* %1308, align 8
  store i64 %1309, i64* %RAX.i78, align 8
  store i64 %1309, i64* %RDI.i159, align 8
  %1310 = add i64 %1306, -2412
  %1311 = add i64 %1306, 15
  %1312 = load i64, i64* %6, align 8
  %1313 = add i64 %1312, -8
  %1314 = inttoptr i64 %1313 to i64*
  store i64 %1311, i64* %1314, align 8
  store i64 %1313, i64* %6, align 8
  store i64 %1310, i64* %3, align 8
  %1315 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1303)
  %1316 = load i64, i64* %RBP.i, align 8
  %1317 = add i64 %1316, -152
  %1318 = load i64, i64* %PC.i, align 8
  %1319 = add i64 %1318, 7
  store i64 %1319, i64* %PC.i, align 8
  %1320 = inttoptr i64 %1317 to i64*
  %1321 = load i64, i64* %1320, align 8
  store i64 %1321, i64* %RAX.i78, align 8
  store i64 %1321, i64* %RDI.i159, align 8
  %1322 = add i64 %1318, -2427
  %1323 = add i64 %1318, 15
  %1324 = load i64, i64* %6, align 8
  %1325 = add i64 %1324, -8
  %1326 = inttoptr i64 %1325 to i64*
  store i64 %1323, i64* %1326, align 8
  store i64 %1325, i64* %6, align 8
  store i64 %1322, i64* %3, align 8
  %1327 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1315)
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -160
  %1330 = load i64, i64* %PC.i, align 8
  %1331 = add i64 %1330, 7
  store i64 %1331, i64* %PC.i, align 8
  %1332 = inttoptr i64 %1329 to i64*
  %1333 = load i64, i64* %1332, align 8
  store i64 %1333, i64* %RAX.i78, align 8
  store i64 %1333, i64* %RDI.i159, align 8
  %1334 = add i64 %1330, -2442
  %1335 = add i64 %1330, 15
  %1336 = load i64, i64* %6, align 8
  %1337 = add i64 %1336, -8
  %1338 = inttoptr i64 %1337 to i64*
  store i64 %1335, i64* %1338, align 8
  store i64 %1337, i64* %6, align 8
  store i64 %1334, i64* %3, align 8
  %1339 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1327)
  %1340 = load i64, i64* %RBP.i, align 8
  %1341 = add i64 %1340, -168
  %1342 = load i64, i64* %PC.i, align 8
  %1343 = add i64 %1342, 7
  store i64 %1343, i64* %PC.i, align 8
  %1344 = inttoptr i64 %1341 to i64*
  %1345 = load i64, i64* %1344, align 8
  store i64 %1345, i64* %RAX.i78, align 8
  store i64 %1345, i64* %RDI.i159, align 8
  %1346 = add i64 %1342, -2457
  %1347 = add i64 %1342, 15
  %1348 = load i64, i64* %6, align 8
  %1349 = add i64 %1348, -8
  %1350 = inttoptr i64 %1349 to i64*
  store i64 %1347, i64* %1350, align 8
  store i64 %1349, i64* %6, align 8
  store i64 %1346, i64* %3, align 8
  %1351 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1339)
  %1352 = load i64, i64* %RBP.i, align 8
  %1353 = add i64 %1352, -176
  %1354 = load i64, i64* %PC.i, align 8
  %1355 = add i64 %1354, 7
  store i64 %1355, i64* %PC.i, align 8
  %1356 = inttoptr i64 %1353 to i64*
  %1357 = load i64, i64* %1356, align 8
  store i64 %1357, i64* %RAX.i78, align 8
  store i64 %1357, i64* %RDI.i159, align 8
  %1358 = add i64 %1354, -2472
  %1359 = add i64 %1354, 15
  %1360 = load i64, i64* %6, align 8
  %1361 = add i64 %1360, -8
  %1362 = inttoptr i64 %1361 to i64*
  store i64 %1359, i64* %1362, align 8
  store i64 %1361, i64* %6, align 8
  store i64 %1358, i64* %3, align 8
  %1363 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1351)
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -184
  %1366 = load i64, i64* %PC.i, align 8
  %1367 = add i64 %1366, 7
  store i64 %1367, i64* %PC.i, align 8
  %1368 = inttoptr i64 %1365 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %RAX.i78, align 8
  store i64 %1369, i64* %RDI.i159, align 8
  %1370 = add i64 %1366, -2487
  %1371 = add i64 %1366, 15
  %1372 = load i64, i64* %6, align 8
  %1373 = add i64 %1372, -8
  %1374 = inttoptr i64 %1373 to i64*
  store i64 %1371, i64* %1374, align 8
  store i64 %1373, i64* %6, align 8
  store i64 %1370, i64* %3, align 8
  %1375 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1363)
  %1376 = load i64, i64* %RBP.i, align 8
  %1377 = add i64 %1376, -192
  %1378 = load i64, i64* %PC.i, align 8
  %1379 = add i64 %1378, 7
  store i64 %1379, i64* %PC.i, align 8
  %1380 = inttoptr i64 %1377 to i64*
  %1381 = load i64, i64* %1380, align 8
  store i64 %1381, i64* %RAX.i78, align 8
  store i64 %1381, i64* %RDI.i159, align 8
  %1382 = add i64 %1378, -2502
  %1383 = add i64 %1378, 15
  %1384 = load i64, i64* %6, align 8
  %1385 = add i64 %1384, -8
  %1386 = inttoptr i64 %1385 to i64*
  store i64 %1383, i64* %1386, align 8
  store i64 %1385, i64* %6, align 8
  store i64 %1382, i64* %3, align 8
  %1387 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1375)
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -200
  %1390 = load i64, i64* %PC.i, align 8
  %1391 = add i64 %1390, 7
  store i64 %1391, i64* %PC.i, align 8
  %1392 = inttoptr i64 %1389 to i64*
  %1393 = load i64, i64* %1392, align 8
  store i64 %1393, i64* %RAX.i78, align 8
  store i64 %1393, i64* %RDI.i159, align 8
  %1394 = add i64 %1390, -2517
  %1395 = add i64 %1390, 15
  %1396 = load i64, i64* %6, align 8
  %1397 = add i64 %1396, -8
  %1398 = inttoptr i64 %1397 to i64*
  store i64 %1395, i64* %1398, align 8
  store i64 %1397, i64* %6, align 8
  store i64 %1394, i64* %3, align 8
  %1399 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1387)
  %1400 = load i64, i64* %RBP.i, align 8
  %1401 = add i64 %1400, -208
  %1402 = load i64, i64* %PC.i, align 8
  %1403 = add i64 %1402, 7
  store i64 %1403, i64* %PC.i, align 8
  %1404 = inttoptr i64 %1401 to i64*
  %1405 = load i64, i64* %1404, align 8
  store i64 %1405, i64* %RAX.i78, align 8
  store i64 %1405, i64* %RDI.i159, align 8
  %1406 = add i64 %1402, -2532
  %1407 = add i64 %1402, 15
  %1408 = load i64, i64* %6, align 8
  %1409 = add i64 %1408, -8
  %1410 = inttoptr i64 %1409 to i64*
  store i64 %1407, i64* %1410, align 8
  store i64 %1409, i64* %6, align 8
  store i64 %1406, i64* %3, align 8
  %1411 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1399)
  %1412 = load i64, i64* %RBP.i, align 8
  %1413 = add i64 %1412, -216
  %1414 = load i64, i64* %PC.i, align 8
  %1415 = add i64 %1414, 7
  store i64 %1415, i64* %PC.i, align 8
  %1416 = inttoptr i64 %1413 to i64*
  %1417 = load i64, i64* %1416, align 8
  store i64 %1417, i64* %RAX.i78, align 8
  store i64 %1417, i64* %RDI.i159, align 8
  %1418 = add i64 %1414, -2547
  %1419 = add i64 %1414, 15
  %1420 = load i64, i64* %6, align 8
  %1421 = add i64 %1420, -8
  %1422 = inttoptr i64 %1421 to i64*
  store i64 %1419, i64* %1422, align 8
  store i64 %1421, i64* %6, align 8
  store i64 %1418, i64* %3, align 8
  %1423 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1411)
  %1424 = load i64, i64* %RBP.i, align 8
  %1425 = add i64 %1424, -224
  %1426 = load i64, i64* %PC.i, align 8
  %1427 = add i64 %1426, 7
  store i64 %1427, i64* %PC.i, align 8
  %1428 = inttoptr i64 %1425 to i64*
  %1429 = load i64, i64* %1428, align 8
  store i64 %1429, i64* %RAX.i78, align 8
  store i64 %1429, i64* %RDI.i159, align 8
  %1430 = add i64 %1426, -2562
  %1431 = add i64 %1426, 15
  %1432 = load i64, i64* %6, align 8
  %1433 = add i64 %1432, -8
  %1434 = inttoptr i64 %1433 to i64*
  store i64 %1431, i64* %1434, align 8
  store i64 %1433, i64* %6, align 8
  store i64 %1430, i64* %3, align 8
  %1435 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1423)
  %1436 = load i64, i64* %RBP.i, align 8
  %1437 = add i64 %1436, -232
  %1438 = load i64, i64* %PC.i, align 8
  %1439 = add i64 %1438, 7
  store i64 %1439, i64* %PC.i, align 8
  %1440 = inttoptr i64 %1437 to i64*
  %1441 = load i64, i64* %1440, align 8
  store i64 %1441, i64* %RAX.i78, align 8
  store i64 %1441, i64* %RDI.i159, align 8
  %1442 = add i64 %1438, -2577
  %1443 = add i64 %1438, 15
  %1444 = load i64, i64* %6, align 8
  %1445 = add i64 %1444, -8
  %1446 = inttoptr i64 %1445 to i64*
  store i64 %1443, i64* %1446, align 8
  store i64 %1445, i64* %6, align 8
  store i64 %1442, i64* %3, align 8
  %1447 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1435)
  %1448 = load i64, i64* %RBP.i, align 8
  %1449 = add i64 %1448, -44
  %1450 = load i64, i64* %PC.i, align 8
  %1451 = add i64 %1450, 7
  store i64 %1451, i64* %PC.i, align 8
  %1452 = inttoptr i64 %1449 to i32*
  store i32 0, i32* %1452, align 4
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400f77

block_.L_400f77:                                  ; preds = %block_.L_400e43, %block_400e37, %block_400e06, %block_400dd5, %block_400da4
  %1453 = phi i64 [ %.pre, %block_.L_400e43 ], [ %1191, %block_400e37 ], [ %1145, %block_400e06 ], [ %1099, %block_400dd5 ], [ %1053, %block_400da4 ]
  %MEMORY.0 = phi %struct.Memory* [ %1447, %block_.L_400e43 ], [ %call2_400e29, %block_400e37 ], [ %call2_400df8, %block_400e06 ], [ %call2_400dc7, %block_400dd5 ], [ %call2_400d96, %block_400da4 ]
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -44
  %1456 = add i64 %1453, 3
  store i64 %1456, i64* %PC.i, align 8
  %1457 = inttoptr i64 %1455 to i32*
  %1458 = load i32, i32* %1457, align 4
  %1459 = zext i32 %1458 to i64
  store i64 %1459, i64* %RAX.i78, align 8
  %1460 = load i64, i64* %RSP.i15, align 8
  %1461 = add i64 %1460, 392
  store i64 %1461, i64* %RSP.i15, align 8
  %1462 = icmp ugt i64 %1460, -393
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %39, align 1
  %1464 = trunc i64 %1461 to i32
  %1465 = and i32 %1464, 255
  %1466 = tail call i32 @llvm.ctpop.i32(i32 %1465)
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  store i8 %1469, i8* %46, align 1
  %1470 = xor i64 %1460, %1461
  %1471 = lshr i64 %1470, 4
  %1472 = trunc i64 %1471 to i8
  %1473 = and i8 %1472, 1
  store i8 %1473, i8* %51, align 1
  %1474 = icmp eq i64 %1461, 0
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %54, align 1
  %1476 = lshr i64 %1461, 63
  %1477 = trunc i64 %1476 to i8
  store i8 %1477, i8* %57, align 1
  %1478 = lshr i64 %1460, 63
  %1479 = xor i64 %1476, %1478
  %1480 = add nuw nsw i64 %1479, %1476
  %1481 = icmp eq i64 %1480, 2
  %1482 = zext i1 %1481 to i8
  store i8 %1482, i8* %63, align 1
  %1483 = add i64 %1453, 11
  store i64 %1483, i64* %PC.i, align 8
  %1484 = add i64 %1460, 400
  %1485 = inttoptr i64 %1461 to i64*
  %1486 = load i64, i64* %1485, align 8
  store i64 %1486, i64* %RBX.i60, align 8
  store i64 %1484, i64* %6, align 8
  %1487 = add i64 %1453, 13
  store i64 %1487, i64* %PC.i, align 8
  %1488 = add i64 %1460, 408
  %1489 = inttoptr i64 %1484 to i64*
  %1490 = load i64, i64* %1489, align 8
  store i64 %1490, i64* %R12.i51, align 8
  store i64 %1488, i64* %6, align 8
  %1491 = add i64 %1453, 15
  store i64 %1491, i64* %PC.i, align 8
  %1492 = add i64 %1460, 416
  %1493 = inttoptr i64 %1488 to i64*
  %1494 = load i64, i64* %1493, align 8
  store i64 %1494, i64* %R13.i42, align 8
  store i64 %1492, i64* %6, align 8
  %1495 = add i64 %1453, 17
  store i64 %1495, i64* %PC.i, align 8
  %1496 = add i64 %1460, 424
  %1497 = inttoptr i64 %1492 to i64*
  %1498 = load i64, i64* %1497, align 8
  store i64 %1498, i64* %R14.i33, align 8
  store i64 %1496, i64* %6, align 8
  %1499 = add i64 %1453, 19
  store i64 %1499, i64* %PC.i, align 8
  %1500 = add i64 %1460, 432
  %1501 = inttoptr i64 %1496 to i64*
  %1502 = load i64, i64* %1501, align 8
  store i64 %1502, i64* %R15.i24, align 8
  store i64 %1500, i64* %6, align 8
  %1503 = add i64 %1453, 20
  store i64 %1503, i64* %PC.i, align 8
  %1504 = add i64 %1460, 440
  %1505 = inttoptr i64 %1500 to i64*
  %1506 = load i64, i64* %1505, align 8
  store i64 %1506, i64* %RBP.i, align 8
  store i64 %1504, i64* %6, align 8
  %1507 = add i64 %1453, 21
  store i64 %1507, i64* %PC.i, align 8
  %1508 = inttoptr i64 %1504 to i64*
  %1509 = load i64, i64* %1508, align 8
  store i64 %1509, i64* %3, align 8
  %1510 = add i64 %1460, 448
  store i64 %1510, i64* %6, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
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
