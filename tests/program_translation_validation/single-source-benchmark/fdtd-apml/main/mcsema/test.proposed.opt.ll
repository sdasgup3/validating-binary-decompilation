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

declare %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400fc0.init_array(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4014b0.kernel_fdtd_apml(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_402260.kernel_fdtd_apml_StrictFP(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_403010.check_FP(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4031b0.print_array(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400580.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

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
  %R15.i893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i893, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i891, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i889, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i887, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %RBX.i885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %30 = load i64, i64* %RBX.i885, align 8
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
  %RAX.i881 = getelementptr inbounds %union.anon, %union.anon* %64, i64 0, i32 0
  %EAX.i878 = bitcast %union.anon* %64 to i32*
  %RCX.i879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 4225, i64* %RCX.i879, align 8
  store i64 8, i64* %RAX.i881, align 8
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
  %RSI.i869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -56
  %78 = load i64, i64* %RSI.i869, align 8
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
  %RDI.i861 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %97 = load i64, i64* %RCX.i879, align 8
  %98 = load i64, i64* %3, align 8
  store i64 %97, i64* %RDI.i861, align 8
  %99 = load i32, i32* %EAX.i878, align 4
  %100 = zext i32 %99 to i64
  store i64 %100, i64* %RSI.i869, align 8
  %101 = add i64 %98, -259
  %102 = add i64 %98, 10
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %102, i64* %105, align 8
  store i64 %104, i64* %6, align 8
  store i64 %101, i64* %3, align 8
  %call2_4008f8 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %101, %struct.Memory* %2)
  %106 = load i64, i64* %3, align 8
  store i64 4225, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -96
  %109 = load i64, i64* %RAX.i881, align 8
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
  %call2_40090d = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %113, %struct.Memory* %call2_4008f8)
  %118 = load i64, i64* %3, align 8
  store i64 4225, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %119 = load i64, i64* %RBP.i, align 8
  %120 = add i64 %119, -104
  %121 = load i64, i64* %RAX.i881, align 8
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
  %call2_400922 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %125, %struct.Memory* %call2_40090d)
  %130 = load i64, i64* %3, align 8
  store i64 4225, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -112
  %133 = load i64, i64* %RAX.i881, align 8
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
  %call2_400937 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %137, %struct.Memory* %call2_400922)
  %142 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -120
  %145 = load i64, i64* %RAX.i881, align 8
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
  %call2_40094c = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %149, %struct.Memory* %call2_400937)
  %154 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -128
  %157 = load i64, i64* %RAX.i881, align 8
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
  %call2_400961 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %161, %struct.Memory* %call2_40094c)
  %166 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -136
  %169 = load i64, i64* %RAX.i881, align 8
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
  %call2_400979 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %173, %struct.Memory* %call2_400961)
  %178 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -144
  %181 = load i64, i64* %RAX.i881, align 8
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
  %call2_400991 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %185, %struct.Memory* %call2_400979)
  %190 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -152
  %193 = load i64, i64* %RAX.i881, align 8
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
  %call2_4009a9 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %197, %struct.Memory* %call2_400991)
  %202 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %203 = load i64, i64* %RBP.i, align 8
  %204 = add i64 %203, -160
  %205 = load i64, i64* %RAX.i881, align 8
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
  %call2_4009c1 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %209, %struct.Memory* %call2_4009a9)
  %214 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -168
  %217 = load i64, i64* %RAX.i881, align 8
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
  %call2_4009d9 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %221, %struct.Memory* %call2_4009c1)
  %226 = load i64, i64* %3, align 8
  store i64 274625, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -176
  %229 = load i64, i64* %RAX.i881, align 8
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
  %call2_4009f1 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %233, %struct.Memory* %call2_4009d9)
  %238 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -184
  %241 = load i64, i64* %RAX.i881, align 8
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
  %call2_400a09 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %245, %struct.Memory* %call2_4009f1)
  %250 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %251 = load i64, i64* %RBP.i, align 8
  %252 = add i64 %251, -192
  %253 = load i64, i64* %RAX.i881, align 8
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
  %call2_400a21 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %257, %struct.Memory* %call2_400a09)
  %262 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %263 = load i64, i64* %RBP.i, align 8
  %264 = add i64 %263, -200
  %265 = load i64, i64* %RAX.i881, align 8
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
  %call2_400a39 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %269, %struct.Memory* %call2_400a21)
  %274 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %275 = load i64, i64* %RBP.i, align 8
  %276 = add i64 %275, -208
  %277 = load i64, i64* %RAX.i881, align 8
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
  %call2_400a51 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %281, %struct.Memory* %call2_400a39)
  %286 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -216
  %289 = load i64, i64* %RAX.i881, align 8
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
  %call2_400a69 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %293, %struct.Memory* %call2_400a51)
  %298 = load i64, i64* %3, align 8
  store i64 65, i64* %RDI.i861, align 8
  store i64 8, i64* %RSI.i869, align 8
  %299 = load i64, i64* %RBP.i, align 8
  %300 = add i64 %299, -224
  %301 = load i64, i64* %RAX.i881, align 8
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
  %call2_400a81 = tail call %struct.Memory* @sub_4007f0.polybench_alloc_data(%struct.State* %0, i64 %305, %struct.Memory* %call2_400a69)
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -80
  %312 = load i64, i64* %3, align 8
  store i64 %311, i64* %RCX.i879, align 8
  %R8.i665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %313 = add i64 %310, -88
  store i64 %313, i64* %R8.i665, align 8
  %314 = add i64 %310, -232
  %315 = load i64, i64* %RAX.i881, align 8
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
  store i64 %324, i64* %RDI.i861, align 8
  %325 = add i64 %318, -68
  %326 = add i64 %320, 6
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RSI.i869, align 8
  %RDX.i652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %330 = add i64 %318, -64
  %331 = add i64 %320, 9
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RDX.i652, align 8
  %R9.i650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %335 = add i64 %318, -96
  %336 = add i64 %320, 13
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %335 to i64*
  %338 = load i64, i64* %337, align 8
  store i64 %338, i64* %R9.i650, align 8
  %339 = add i64 %318, -104
  %340 = add i64 %320, 17
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i64*
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %RAX.i881, align 8
  %R10.i644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %343 = add i64 %318, -136
  %344 = add i64 %320, 24
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %R10.i644, align 8
  %R11.i641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %347 = add i64 %318, -144
  %348 = add i64 %320, 31
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %R11.i641, align 8
  %351 = add i64 %318, -152
  %352 = add i64 %320, 38
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i64*
  %354 = load i64, i64* %353, align 8
  store i64 %354, i64* %RBX.i885, align 8
  %355 = add i64 %318, -192
  %356 = add i64 %320, 45
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %355 to i64*
  %358 = load i64, i64* %357, align 8
  store i64 %358, i64* %R14.i891, align 8
  %359 = add i64 %318, -200
  %360 = add i64 %320, 52
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361, align 8
  store i64 %362, i64* %R15.i893, align 8
  %363 = add i64 %318, -208
  %364 = add i64 %320, 59
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %R12.i887, align 8
  %367 = add i64 %318, -216
  %368 = add i64 %320, 66
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i64*
  %370 = load i64, i64* %369, align 8
  store i64 %370, i64* %R13.i889, align 8
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
  store i64 %379, i64* %RAX.i881, align 8
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
  store i64 %388, i64* %RAX.i881, align 8
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
  store i64 %397, i64* %RAX.i881, align 8
  %398 = bitcast i64* %6 to i64**
  %399 = load i64*, i64** %398, align 8
  %400 = add i64 %394, 11
  store i64 %400, i64* %3, align 8
  store i64 %397, i64* %399, align 8
  %401 = load i64, i64* %6, align 8
  %402 = add i64 %401, 8
  %403 = load i64, i64* %R10.i644, align 8
  %404 = load i64, i64* %3, align 8
  %405 = add i64 %404, 5
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %402 to i64*
  store i64 %403, i64* %406, align 8
  %407 = load i64, i64* %6, align 8
  %408 = add i64 %407, 16
  %409 = load i64, i64* %R11.i641, align 8
  %410 = load i64, i64* %3, align 8
  %411 = add i64 %410, 5
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %408 to i64*
  store i64 %409, i64* %412, align 8
  %413 = load i64, i64* %6, align 8
  %414 = add i64 %413, 24
  %415 = load i64, i64* %RBX.i885, align 8
  %416 = load i64, i64* %3, align 8
  %417 = add i64 %416, 5
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %414 to i64*
  store i64 %415, i64* %418, align 8
  %419 = load i64, i64* %6, align 8
  %420 = add i64 %419, 32
  %421 = load i64, i64* %R14.i891, align 8
  %422 = load i64, i64* %3, align 8
  %423 = add i64 %422, 5
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %420 to i64*
  store i64 %421, i64* %424, align 8
  %425 = load i64, i64* %6, align 8
  %426 = add i64 %425, 40
  %427 = load i64, i64* %R15.i893, align 8
  %428 = load i64, i64* %3, align 8
  %429 = add i64 %428, 5
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %426 to i64*
  store i64 %427, i64* %430, align 8
  %431 = load i64, i64* %6, align 8
  %432 = add i64 %431, 48
  %433 = load i64, i64* %R12.i887, align 8
  %434 = load i64, i64* %3, align 8
  %435 = add i64 %434, 5
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %432 to i64*
  store i64 %433, i64* %436, align 8
  %437 = load i64, i64* %6, align 8
  %438 = add i64 %437, 56
  %439 = load i64, i64* %R13.i889, align 8
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
  store i64 %448, i64* %RAX.i881, align 8
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
  store i64 %458, i64* %RAX.i881, align 8
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
  %call2_400b40 = tail call %struct.Memory* @sub_400fc0.init_array(%struct.State* %0, i64 %464, %struct.Memory* %call2_400a81)
  %469 = load i64, i64* %RBP.i, align 8
  %470 = add i64 %469, -60
  %471 = load i64, i64* %3, align 8
  %472 = add i64 %471, 3
  store i64 %472, i64* %3, align 8
  %473 = inttoptr i64 %470 to i32*
  %474 = load i32, i32* %473, align 4
  %475 = zext i32 %474 to i64
  store i64 %475, i64* %RDI.i861, align 8
  %476 = add i64 %469, -68
  %477 = add i64 %471, 6
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RSI.i869, align 8
  %481 = add i64 %469, -64
  %482 = add i64 %471, 9
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  %485 = zext i32 %484 to i64
  store i64 %485, i64* %RDX.i652, align 8
  %486 = add i64 %469, -80
  %487 = add i64 %471, 14
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i64*
  %489 = load i64, i64* %488, align 8
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %489, i64* %490, align 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %492 = bitcast i64* %491 to double*
  store double 0.000000e+00, double* %492, align 1
  %493 = add i64 %469, -88
  %494 = add i64 %471, 19
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i64*
  %496 = load i64, i64* %495, align 8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %496, i64* %497, align 1
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %499 = bitcast i64* %498 to double*
  store double 0.000000e+00, double* %499, align 1
  %500 = add i64 %469, -96
  %501 = add i64 %471, 23
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i64*
  %503 = load i64, i64* %502, align 8
  store i64 %503, i64* %RCX.i879, align 8
  %504 = add i64 %469, -104
  %505 = add i64 %471, 27
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i64*
  %507 = load i64, i64* %506, align 8
  store i64 %507, i64* %R8.i665, align 8
  %508 = add i64 %469, -112
  %509 = add i64 %471, 31
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i64*
  %511 = load i64, i64* %510, align 8
  store i64 %511, i64* %R9.i650, align 8
  %512 = add i64 %469, -120
  %513 = add i64 %471, 35
  store i64 %513, i64* %3, align 8
  %514 = inttoptr i64 %512 to i64*
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %RAX.i881, align 8
  %516 = add i64 %469, -128
  %517 = add i64 %471, 39
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i64*
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %R10.i644, align 8
  %520 = add i64 %469, -136
  %521 = add i64 %471, 46
  store i64 %521, i64* %3, align 8
  %522 = inttoptr i64 %520 to i64*
  %523 = load i64, i64* %522, align 8
  store i64 %523, i64* %R11.i641, align 8
  %524 = add i64 %469, -144
  %525 = add i64 %471, 53
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i64*
  %527 = load i64, i64* %526, align 8
  store i64 %527, i64* %RBX.i885, align 8
  %528 = add i64 %469, -152
  %529 = add i64 %471, 60
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i64*
  %531 = load i64, i64* %530, align 8
  store i64 %531, i64* %R14.i891, align 8
  %532 = add i64 %469, -192
  %533 = add i64 %471, 67
  store i64 %533, i64* %3, align 8
  %534 = inttoptr i64 %532 to i64*
  %535 = load i64, i64* %534, align 8
  store i64 %535, i64* %R15.i893, align 8
  %536 = add i64 %469, -200
  %537 = add i64 %471, 74
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %R12.i887, align 8
  %540 = load i64, i64* %RBP.i, align 8
  %541 = add i64 %540, -208
  %542 = add i64 %471, 81
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i64*
  %544 = load i64, i64* %543, align 8
  store i64 %544, i64* %R13.i889, align 8
  %545 = add i64 %540, -264
  %546 = add i64 %471, 88
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i64*
  store i64 %515, i64* %547, align 8
  %548 = load i64, i64* %RBP.i, align 8
  %549 = add i64 %548, -216
  %550 = load i64, i64* %3, align 8
  %551 = add i64 %550, 7
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %549 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %RAX.i881, align 8
  %554 = add i64 %548, -272
  %555 = add i64 %550, 14
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i64*
  store i64 %553, i64* %556, align 8
  %557 = load i64, i64* %RBP.i, align 8
  %558 = add i64 %557, -224
  %559 = load i64, i64* %3, align 8
  %560 = add i64 %559, 7
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %558 to i64*
  %562 = load i64, i64* %561, align 8
  store i64 %562, i64* %RAX.i881, align 8
  %563 = add i64 %557, -280
  %564 = add i64 %559, 14
  store i64 %564, i64* %3, align 8
  %565 = inttoptr i64 %563 to i64*
  store i64 %562, i64* %565, align 8
  %566 = load i64, i64* %RBP.i, align 8
  %567 = add i64 %566, -232
  %568 = load i64, i64* %3, align 8
  %569 = add i64 %568, 7
  store i64 %569, i64* %3, align 8
  %570 = inttoptr i64 %567 to i64*
  %571 = load i64, i64* %570, align 8
  store i64 %571, i64* %RAX.i881, align 8
  %572 = add i64 %566, -288
  %573 = add i64 %568, 14
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i64*
  store i64 %571, i64* %574, align 8
  %575 = load i64, i64* %RBP.i, align 8
  %576 = add i64 %575, -264
  %577 = load i64, i64* %3, align 8
  %578 = add i64 %577, 7
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %576 to i64*
  %580 = load i64, i64* %579, align 8
  store i64 %580, i64* %RAX.i881, align 8
  %581 = load i64*, i64** %398, align 8
  %582 = add i64 %577, 11
  store i64 %582, i64* %3, align 8
  store i64 %580, i64* %581, align 8
  %583 = load i64, i64* %6, align 8
  %584 = add i64 %583, 8
  %585 = load i64, i64* %R10.i644, align 8
  %586 = load i64, i64* %3, align 8
  %587 = add i64 %586, 5
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %584 to i64*
  store i64 %585, i64* %588, align 8
  %589 = load i64, i64* %6, align 8
  %590 = add i64 %589, 16
  %591 = load i64, i64* %R11.i641, align 8
  %592 = load i64, i64* %3, align 8
  %593 = add i64 %592, 5
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %590 to i64*
  store i64 %591, i64* %594, align 8
  %595 = load i64, i64* %6, align 8
  %596 = add i64 %595, 24
  %597 = load i64, i64* %RBX.i885, align 8
  %598 = load i64, i64* %3, align 8
  %599 = add i64 %598, 5
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %596 to i64*
  store i64 %597, i64* %600, align 8
  %601 = load i64, i64* %6, align 8
  %602 = add i64 %601, 32
  %603 = load i64, i64* %R14.i891, align 8
  %604 = load i64, i64* %3, align 8
  %605 = add i64 %604, 5
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %602 to i64*
  store i64 %603, i64* %606, align 8
  %607 = load i64, i64* %6, align 8
  %608 = add i64 %607, 40
  %609 = load i64, i64* %R15.i893, align 8
  %610 = load i64, i64* %3, align 8
  %611 = add i64 %610, 5
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %608 to i64*
  store i64 %609, i64* %612, align 8
  %613 = load i64, i64* %6, align 8
  %614 = add i64 %613, 48
  %615 = load i64, i64* %R12.i887, align 8
  %616 = load i64, i64* %3, align 8
  %617 = add i64 %616, 5
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %614 to i64*
  store i64 %615, i64* %618, align 8
  %619 = load i64, i64* %6, align 8
  %620 = add i64 %619, 56
  %621 = load i64, i64* %R13.i889, align 8
  %622 = load i64, i64* %3, align 8
  %623 = add i64 %622, 5
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %620 to i64*
  store i64 %621, i64* %624, align 8
  %625 = load i64, i64* %RBP.i, align 8
  %626 = add i64 %625, -272
  %627 = load i64, i64* %3, align 8
  %628 = add i64 %627, 7
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %626 to i64*
  %630 = load i64, i64* %629, align 8
  store i64 %630, i64* %RAX.i881, align 8
  %631 = load i64, i64* %6, align 8
  %632 = add i64 %631, 64
  %633 = add i64 %627, 12
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i64*
  store i64 %630, i64* %634, align 8
  %635 = load i64, i64* %RBP.i, align 8
  %636 = add i64 %635, -280
  %637 = load i64, i64* %3, align 8
  %638 = add i64 %637, 7
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %636 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %RAX.i881, align 8
  %641 = load i64, i64* %6, align 8
  %642 = add i64 %641, 72
  %643 = add i64 %637, 12
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i64*
  store i64 %640, i64* %644, align 8
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -288
  %647 = load i64, i64* %3, align 8
  %648 = add i64 %647, 7
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %646 to i64*
  %650 = load i64, i64* %649, align 8
  store i64 %650, i64* %RAX.i881, align 8
  %651 = load i64, i64* %6, align 8
  %652 = add i64 %651, 80
  %653 = add i64 %647, 12
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i64*
  store i64 %650, i64* %654, align 8
  %655 = load i64, i64* %3, align 8
  %656 = add i64 %655, 2199
  %657 = add i64 %655, 5
  %658 = load i64, i64* %6, align 8
  %659 = add i64 %658, -8
  %660 = inttoptr i64 %659 to i64*
  store i64 %657, i64* %660, align 8
  store i64 %659, i64* %6, align 8
  store i64 %656, i64* %3, align 8
  %call2_400c19 = tail call %struct.Memory* @sub_4014b0.kernel_fdtd_apml(%struct.State* %0, i64 %656, %struct.Memory* %call2_400b40)
  %661 = load i64, i64* %RBP.i, align 8
  %662 = add i64 %661, -80
  %663 = load i64, i64* %3, align 8
  store i64 %662, i64* %RCX.i879, align 8
  %664 = add i64 %661, -88
  store i64 %664, i64* %R8.i665, align 8
  %665 = add i64 %661, -60
  %666 = add i64 %663, 11
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RDI.i861, align 8
  %670 = add i64 %661, -68
  %671 = add i64 %663, 14
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  %673 = load i32, i32* %672, align 4
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RSI.i869, align 8
  %675 = add i64 %661, -64
  %676 = add i64 %663, 17
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RDX.i652, align 8
  %680 = add i64 %661, -96
  %681 = add i64 %663, 21
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  %683 = load i64, i64* %682, align 8
  store i64 %683, i64* %R9.i650, align 8
  %684 = add i64 %661, -104
  %685 = add i64 %663, 25
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i64*
  %687 = load i64, i64* %686, align 8
  store i64 %687, i64* %RAX.i881, align 8
  %688 = add i64 %661, -168
  %689 = add i64 %663, 32
  store i64 %689, i64* %3, align 8
  %690 = inttoptr i64 %688 to i64*
  %691 = load i64, i64* %690, align 8
  store i64 %691, i64* %R10.i644, align 8
  %692 = add i64 %661, -176
  %693 = add i64 %663, 39
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i64*
  %695 = load i64, i64* %694, align 8
  store i64 %695, i64* %R11.i641, align 8
  %696 = add i64 %661, -184
  %697 = add i64 %663, 46
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RBX.i885, align 8
  %700 = add i64 %661, -192
  %701 = add i64 %663, 53
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i64*
  %703 = load i64, i64* %702, align 8
  store i64 %703, i64* %R14.i891, align 8
  %704 = add i64 %661, -200
  %705 = add i64 %663, 60
  store i64 %705, i64* %3, align 8
  %706 = inttoptr i64 %704 to i64*
  %707 = load i64, i64* %706, align 8
  store i64 %707, i64* %R15.i893, align 8
  %708 = add i64 %661, -208
  %709 = add i64 %663, 67
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i64*
  %711 = load i64, i64* %710, align 8
  store i64 %711, i64* %R12.i887, align 8
  %712 = add i64 %661, -216
  %713 = add i64 %663, 74
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i64*
  %715 = load i64, i64* %714, align 8
  store i64 %715, i64* %R13.i889, align 8
  %716 = add i64 %661, -296
  %717 = add i64 %663, 81
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i64*
  store i64 %687, i64* %718, align 8
  %719 = load i64, i64* %RBP.i, align 8
  %720 = add i64 %719, -224
  %721 = load i64, i64* %3, align 8
  %722 = add i64 %721, 7
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %720 to i64*
  %724 = load i64, i64* %723, align 8
  store i64 %724, i64* %RAX.i881, align 8
  %725 = add i64 %719, -304
  %726 = add i64 %721, 14
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i64*
  store i64 %724, i64* %727, align 8
  %728 = load i64, i64* %RBP.i, align 8
  %729 = add i64 %728, -232
  %730 = load i64, i64* %3, align 8
  %731 = add i64 %730, 7
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %729 to i64*
  %733 = load i64, i64* %732, align 8
  store i64 %733, i64* %RAX.i881, align 8
  %734 = add i64 %728, -312
  %735 = add i64 %730, 14
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i64*
  store i64 %733, i64* %736, align 8
  %737 = load i64, i64* %RBP.i, align 8
  %738 = add i64 %737, -296
  %739 = load i64, i64* %3, align 8
  %740 = add i64 %739, 7
  store i64 %740, i64* %3, align 8
  %741 = inttoptr i64 %738 to i64*
  %742 = load i64, i64* %741, align 8
  store i64 %742, i64* %RAX.i881, align 8
  %743 = load i64*, i64** %398, align 8
  %744 = add i64 %739, 11
  store i64 %744, i64* %3, align 8
  store i64 %742, i64* %743, align 8
  %745 = load i64, i64* %6, align 8
  %746 = add i64 %745, 8
  %747 = load i64, i64* %R10.i644, align 8
  %748 = load i64, i64* %3, align 8
  %749 = add i64 %748, 5
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %746 to i64*
  store i64 %747, i64* %750, align 8
  %751 = load i64, i64* %6, align 8
  %752 = add i64 %751, 16
  %753 = load i64, i64* %R11.i641, align 8
  %754 = load i64, i64* %3, align 8
  %755 = add i64 %754, 5
  store i64 %755, i64* %3, align 8
  %756 = inttoptr i64 %752 to i64*
  store i64 %753, i64* %756, align 8
  %757 = load i64, i64* %6, align 8
  %758 = add i64 %757, 24
  %759 = load i64, i64* %RBX.i885, align 8
  %760 = load i64, i64* %3, align 8
  %761 = add i64 %760, 5
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %758 to i64*
  store i64 %759, i64* %762, align 8
  %763 = load i64, i64* %6, align 8
  %764 = add i64 %763, 32
  %765 = load i64, i64* %R14.i891, align 8
  %766 = load i64, i64* %3, align 8
  %767 = add i64 %766, 5
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %764 to i64*
  store i64 %765, i64* %768, align 8
  %769 = load i64, i64* %6, align 8
  %770 = add i64 %769, 40
  %771 = load i64, i64* %R15.i893, align 8
  %772 = load i64, i64* %3, align 8
  %773 = add i64 %772, 5
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %770 to i64*
  store i64 %771, i64* %774, align 8
  %775 = load i64, i64* %6, align 8
  %776 = add i64 %775, 48
  %777 = load i64, i64* %R12.i887, align 8
  %778 = load i64, i64* %3, align 8
  %779 = add i64 %778, 5
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %776 to i64*
  store i64 %777, i64* %780, align 8
  %781 = load i64, i64* %6, align 8
  %782 = add i64 %781, 56
  %783 = load i64, i64* %R13.i889, align 8
  %784 = load i64, i64* %3, align 8
  %785 = add i64 %784, 5
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %782 to i64*
  store i64 %783, i64* %786, align 8
  %787 = load i64, i64* %RBP.i, align 8
  %788 = add i64 %787, -304
  %789 = load i64, i64* %3, align 8
  %790 = add i64 %789, 7
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %788 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RAX.i881, align 8
  %793 = load i64, i64* %6, align 8
  %794 = add i64 %793, 64
  %795 = add i64 %789, 12
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i64*
  store i64 %792, i64* %796, align 8
  %797 = load i64, i64* %RBP.i, align 8
  %798 = add i64 %797, -312
  %799 = load i64, i64* %3, align 8
  %800 = add i64 %799, 7
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %798 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RAX.i881, align 8
  %803 = load i64, i64* %6, align 8
  %804 = add i64 %803, 72
  %805 = add i64 %799, 12
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i64*
  store i64 %802, i64* %806, align 8
  %807 = load i64, i64* %3, align 8
  %808 = add i64 %807, 751
  %809 = add i64 %807, 5
  %810 = load i64, i64* %6, align 8
  %811 = add i64 %810, -8
  %812 = inttoptr i64 %811 to i64*
  store i64 %809, i64* %812, align 8
  store i64 %811, i64* %6, align 8
  store i64 %808, i64* %3, align 8
  %call2_400cd1 = tail call %struct.Memory* @sub_400fc0.init_array(%struct.State* %0, i64 %808, %struct.Memory* %call2_400c19)
  %813 = load i64, i64* %RBP.i, align 8
  %814 = add i64 %813, -60
  %815 = load i64, i64* %3, align 8
  %816 = add i64 %815, 3
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %814 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RDI.i861, align 8
  %820 = add i64 %813, -68
  %821 = add i64 %815, 6
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = zext i32 %823 to i64
  store i64 %824, i64* %RSI.i869, align 8
  %825 = add i64 %813, -64
  %826 = add i64 %815, 9
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = zext i32 %828 to i64
  store i64 %829, i64* %RDX.i652, align 8
  %830 = add i64 %813, -80
  %831 = add i64 %815, 14
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i64*
  %833 = load i64, i64* %832, align 8
  store i64 %833, i64* %490, align 1
  store double 0.000000e+00, double* %492, align 1
  %834 = add i64 %813, -88
  %835 = add i64 %815, 19
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i64*
  %837 = load i64, i64* %836, align 8
  store i64 %837, i64* %497, align 1
  store double 0.000000e+00, double* %499, align 1
  %838 = add i64 %813, -96
  %839 = add i64 %815, 23
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %838 to i64*
  %841 = load i64, i64* %840, align 8
  store i64 %841, i64* %RCX.i879, align 8
  %842 = add i64 %813, -104
  %843 = add i64 %815, 27
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %842 to i64*
  %845 = load i64, i64* %844, align 8
  store i64 %845, i64* %R8.i665, align 8
  %846 = add i64 %813, -112
  %847 = add i64 %815, 31
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i64*
  %849 = load i64, i64* %848, align 8
  store i64 %849, i64* %R9.i650, align 8
  %850 = add i64 %813, -120
  %851 = add i64 %815, 35
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i64*
  %853 = load i64, i64* %852, align 8
  store i64 %853, i64* %RAX.i881, align 8
  %854 = add i64 %813, -160
  %855 = add i64 %815, 42
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  store i64 %857, i64* %R10.i644, align 8
  %858 = add i64 %813, -168
  %859 = add i64 %815, 49
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i64*
  %861 = load i64, i64* %860, align 8
  store i64 %861, i64* %R11.i641, align 8
  %862 = add i64 %813, -176
  %863 = add i64 %815, 56
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i64*
  %865 = load i64, i64* %864, align 8
  store i64 %865, i64* %RBX.i885, align 8
  %866 = add i64 %813, -184
  %867 = add i64 %815, 63
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %R14.i891, align 8
  %870 = add i64 %813, -192
  %871 = add i64 %815, 70
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i64*
  %873 = load i64, i64* %872, align 8
  store i64 %873, i64* %R15.i893, align 8
  %874 = add i64 %813, -200
  %875 = add i64 %815, 77
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i64*
  %877 = load i64, i64* %876, align 8
  store i64 %877, i64* %R12.i887, align 8
  %878 = add i64 %813, -208
  %879 = add i64 %815, 84
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i64*
  %881 = load i64, i64* %880, align 8
  store i64 %881, i64* %R13.i889, align 8
  %882 = load i64, i64* %RBP.i, align 8
  %883 = add i64 %882, -320
  %884 = add i64 %815, 91
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i64*
  store i64 %853, i64* %885, align 8
  %886 = load i64, i64* %RBP.i, align 8
  %887 = add i64 %886, -216
  %888 = load i64, i64* %3, align 8
  %889 = add i64 %888, 7
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %887 to i64*
  %891 = load i64, i64* %890, align 8
  store i64 %891, i64* %RAX.i881, align 8
  %892 = add i64 %886, -328
  %893 = add i64 %888, 14
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i64*
  store i64 %891, i64* %894, align 8
  %895 = load i64, i64* %RBP.i, align 8
  %896 = add i64 %895, -224
  %897 = load i64, i64* %3, align 8
  %898 = add i64 %897, 7
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %896 to i64*
  %900 = load i64, i64* %899, align 8
  store i64 %900, i64* %RAX.i881, align 8
  %901 = add i64 %895, -336
  %902 = add i64 %897, 14
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i64*
  store i64 %900, i64* %903, align 8
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -232
  %906 = load i64, i64* %3, align 8
  %907 = add i64 %906, 7
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %905 to i64*
  %909 = load i64, i64* %908, align 8
  store i64 %909, i64* %RAX.i881, align 8
  %910 = add i64 %904, -344
  %911 = add i64 %906, 14
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i64*
  store i64 %909, i64* %912, align 8
  %913 = load i64, i64* %RBP.i, align 8
  %914 = add i64 %913, -320
  %915 = load i64, i64* %3, align 8
  %916 = add i64 %915, 7
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %914 to i64*
  %918 = load i64, i64* %917, align 8
  store i64 %918, i64* %RAX.i881, align 8
  %919 = load i64*, i64** %398, align 8
  %920 = add i64 %915, 11
  store i64 %920, i64* %3, align 8
  store i64 %918, i64* %919, align 8
  %921 = load i64, i64* %6, align 8
  %922 = add i64 %921, 8
  %923 = load i64, i64* %R10.i644, align 8
  %924 = load i64, i64* %3, align 8
  %925 = add i64 %924, 5
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %922 to i64*
  store i64 %923, i64* %926, align 8
  %927 = load i64, i64* %6, align 8
  %928 = add i64 %927, 16
  %929 = load i64, i64* %R11.i641, align 8
  %930 = load i64, i64* %3, align 8
  %931 = add i64 %930, 5
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %928 to i64*
  store i64 %929, i64* %932, align 8
  %933 = load i64, i64* %6, align 8
  %934 = add i64 %933, 24
  %935 = load i64, i64* %RBX.i885, align 8
  %936 = load i64, i64* %3, align 8
  %937 = add i64 %936, 5
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %934 to i64*
  store i64 %935, i64* %938, align 8
  %939 = load i64, i64* %6, align 8
  %940 = add i64 %939, 32
  %941 = load i64, i64* %R14.i891, align 8
  %942 = load i64, i64* %3, align 8
  %943 = add i64 %942, 5
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %940 to i64*
  store i64 %941, i64* %944, align 8
  %945 = load i64, i64* %6, align 8
  %946 = add i64 %945, 40
  %947 = load i64, i64* %R15.i893, align 8
  %948 = load i64, i64* %3, align 8
  %949 = add i64 %948, 5
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %946 to i64*
  store i64 %947, i64* %950, align 8
  %951 = load i64, i64* %6, align 8
  %952 = add i64 %951, 48
  %953 = load i64, i64* %R12.i887, align 8
  %954 = load i64, i64* %3, align 8
  %955 = add i64 %954, 5
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %952 to i64*
  store i64 %953, i64* %956, align 8
  %957 = load i64, i64* %6, align 8
  %958 = add i64 %957, 56
  %959 = load i64, i64* %R13.i889, align 8
  %960 = load i64, i64* %3, align 8
  %961 = add i64 %960, 5
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %958 to i64*
  store i64 %959, i64* %962, align 8
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -328
  %965 = load i64, i64* %3, align 8
  %966 = add i64 %965, 7
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %964 to i64*
  %968 = load i64, i64* %967, align 8
  store i64 %968, i64* %RAX.i881, align 8
  %969 = load i64, i64* %6, align 8
  %970 = add i64 %969, 64
  %971 = add i64 %965, 12
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i64*
  store i64 %968, i64* %972, align 8
  %973 = load i64, i64* %RBP.i, align 8
  %974 = add i64 %973, -336
  %975 = load i64, i64* %3, align 8
  %976 = add i64 %975, 7
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %974 to i64*
  %978 = load i64, i64* %977, align 8
  store i64 %978, i64* %RAX.i881, align 8
  %979 = load i64, i64* %6, align 8
  %980 = add i64 %979, 72
  %981 = add i64 %975, 12
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to i64*
  store i64 %978, i64* %982, align 8
  %983 = load i64, i64* %RBP.i, align 8
  %984 = add i64 %983, -344
  %985 = load i64, i64* %3, align 8
  %986 = add i64 %985, 7
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %984 to i64*
  %988 = load i64, i64* %987, align 8
  store i64 %988, i64* %RAX.i881, align 8
  %989 = load i64, i64* %6, align 8
  %990 = add i64 %989, 80
  %991 = add i64 %985, 12
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i64*
  store i64 %988, i64* %992, align 8
  %993 = load i64, i64* %3, align 8
  %994 = add i64 %993, 5299
  %995 = add i64 %993, 5
  %996 = load i64, i64* %6, align 8
  %997 = add i64 %996, -8
  %998 = inttoptr i64 %997 to i64*
  store i64 %995, i64* %998, align 8
  store i64 %997, i64* %6, align 8
  store i64 %994, i64* %3, align 8
  %call2_400dad = tail call %struct.Memory* @sub_402260.kernel_fdtd_apml_StrictFP(%struct.State* %0, i64 %994, %struct.Memory* %call2_400cd1)
  %999 = load i64, i64* %RBP.i, align 8
  %1000 = add i64 %999, -60
  %1001 = load i64, i64* %3, align 8
  %1002 = add i64 %1001, 3
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1000 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RDI.i861, align 8
  %1006 = add i64 %999, -68
  %1007 = add i64 %1001, 6
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RSI.i869, align 8
  %1011 = add i64 %999, -64
  %1012 = add i64 %1001, 9
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RDX.i652, align 8
  %1016 = add i64 %999, -128
  %1017 = add i64 %1001, 13
  store i64 %1017, i64* %3, align 8
  %1018 = inttoptr i64 %1016 to i64*
  %1019 = load i64, i64* %1018, align 8
  store i64 %1019, i64* %RCX.i879, align 8
  %1020 = add i64 %999, -160
  %1021 = add i64 %1001, 20
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i64*
  %1023 = load i64, i64* %1022, align 8
  store i64 %1023, i64* %R8.i665, align 8
  %1024 = add i64 %1001, 8798
  %1025 = add i64 %1001, 25
  %1026 = load i64, i64* %6, align 8
  %1027 = add i64 %1026, -8
  %1028 = inttoptr i64 %1027 to i64*
  store i64 %1025, i64* %1028, align 8
  store i64 %1027, i64* %6, align 8
  store i64 %1024, i64* %3, align 8
  %call2_400dc6 = tail call %struct.Memory* @sub_403010.check_FP(%struct.State* %0, i64 %1024, %struct.Memory* %call2_400dad)
  %1029 = load i32, i32* %EAX.i878, align 4
  %1030 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1031 = and i32 %1029, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1036 = icmp eq i32 %1029, 0
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %54, align 1
  %1038 = lshr i32 %1029, 31
  %1039 = trunc i32 %1038 to i8
  store i8 %1039, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v = select i1 %1036, i64 9, i64 21
  %1040 = add i64 %1030, %.v
  store i64 %1040, i64* %3, align 8
  %1041 = load i64, i64* %RBP.i, align 8
  br i1 %1036, label %block_400dd4, label %block_.L_400de0

block_400dd4:                                     ; preds = %entry
  %1042 = add i64 %1041, -44
  %1043 = add i64 %1040, 7
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  store i32 1, i32* %1044, align 4
  %1045 = load i64, i64* %3, align 8
  %1046 = add i64 %1045, 460
  store i64 %1046, i64* %3, align 8
  br label %block_.L_400fa7

block_.L_400de0:                                  ; preds = %entry
  %1047 = add i64 %1041, -60
  %1048 = add i64 %1040, 3
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i32*
  %1050 = load i32, i32* %1049, align 4
  %1051 = zext i32 %1050 to i64
  store i64 %1051, i64* %RDI.i861, align 8
  %1052 = add i64 %1041, -68
  %1053 = add i64 %1040, 6
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RSI.i869, align 8
  %1057 = add i64 %1041, -64
  %1058 = add i64 %1040, 9
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i32*
  %1060 = load i32, i32* %1059, align 4
  %1061 = zext i32 %1060 to i64
  store i64 %1061, i64* %RDX.i652, align 8
  %1062 = add i64 %1041, -136
  %1063 = add i64 %1040, 16
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %RCX.i879, align 8
  %1066 = add i64 %1041, -168
  %1067 = add i64 %1040, 23
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i64*
  %1069 = load i64, i64* %1068, align 8
  store i64 %1069, i64* %R8.i665, align 8
  %1070 = add i64 %1040, 8752
  %1071 = add i64 %1040, 28
  %1072 = load i64, i64* %6, align 8
  %1073 = add i64 %1072, -8
  %1074 = inttoptr i64 %1073 to i64*
  store i64 %1071, i64* %1074, align 8
  store i64 %1073, i64* %6, align 8
  store i64 %1070, i64* %3, align 8
  %call2_400df7 = tail call %struct.Memory* @sub_403010.check_FP(%struct.State* nonnull %0, i64 %1070, %struct.Memory* %call2_400dc6)
  %1075 = load i32, i32* %EAX.i878, align 4
  %1076 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1077 = and i32 %1075, 255
  %1078 = tail call i32 @llvm.ctpop.i32(i32 %1077)
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  %1081 = xor i8 %1080, 1
  store i8 %1081, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1082 = icmp eq i32 %1075, 0
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %54, align 1
  %1084 = lshr i32 %1075, 31
  %1085 = trunc i32 %1084 to i8
  store i8 %1085, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v4 = select i1 %1082, i64 9, i64 21
  %1086 = add i64 %1076, %.v4
  store i64 %1086, i64* %3, align 8
  %1087 = load i64, i64* %RBP.i, align 8
  br i1 %1082, label %block_400e05, label %block_.L_400e11

block_400e05:                                     ; preds = %block_.L_400de0
  %1088 = add i64 %1087, -44
  %1089 = add i64 %1086, 7
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1088 to i32*
  store i32 1, i32* %1090, align 4
  %1091 = load i64, i64* %3, align 8
  %1092 = add i64 %1091, 411
  store i64 %1092, i64* %3, align 8
  br label %block_.L_400fa7

block_.L_400e11:                                  ; preds = %block_.L_400de0
  %1093 = add i64 %1087, -60
  %1094 = add i64 %1086, 3
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i32*
  %1096 = load i32, i32* %1095, align 4
  %1097 = zext i32 %1096 to i64
  store i64 %1097, i64* %RDI.i861, align 8
  %1098 = add i64 %1087, -68
  %1099 = add i64 %1086, 6
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RSI.i869, align 8
  %1103 = add i64 %1087, -64
  %1104 = add i64 %1086, 9
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RDX.i652, align 8
  %1108 = add i64 %1087, -144
  %1109 = add i64 %1086, 16
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i64*
  %1111 = load i64, i64* %1110, align 8
  store i64 %1111, i64* %RCX.i879, align 8
  %1112 = add i64 %1087, -176
  %1113 = add i64 %1086, 23
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1112 to i64*
  %1115 = load i64, i64* %1114, align 8
  store i64 %1115, i64* %R8.i665, align 8
  %1116 = add i64 %1086, 8703
  %1117 = add i64 %1086, 28
  %1118 = load i64, i64* %6, align 8
  %1119 = add i64 %1118, -8
  %1120 = inttoptr i64 %1119 to i64*
  store i64 %1117, i64* %1120, align 8
  store i64 %1119, i64* %6, align 8
  store i64 %1116, i64* %3, align 8
  %call2_400e28 = tail call %struct.Memory* @sub_403010.check_FP(%struct.State* nonnull %0, i64 %1116, %struct.Memory* %call2_400df7)
  %1121 = load i32, i32* %EAX.i878, align 4
  %1122 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1123 = and i32 %1121, 255
  %1124 = tail call i32 @llvm.ctpop.i32(i32 %1123)
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = xor i8 %1126, 1
  store i8 %1127, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1128 = icmp eq i32 %1121, 0
  %1129 = zext i1 %1128 to i8
  store i8 %1129, i8* %54, align 1
  %1130 = lshr i32 %1121, 31
  %1131 = trunc i32 %1130 to i8
  store i8 %1131, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v5 = select i1 %1128, i64 9, i64 21
  %1132 = add i64 %1122, %.v5
  store i64 %1132, i64* %3, align 8
  %1133 = load i64, i64* %RBP.i, align 8
  br i1 %1128, label %block_400e36, label %block_.L_400e42

block_400e36:                                     ; preds = %block_.L_400e11
  %1134 = add i64 %1133, -44
  %1135 = add i64 %1132, 7
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  store i32 1, i32* %1136, align 4
  %1137 = load i64, i64* %3, align 8
  %1138 = add i64 %1137, 362
  store i64 %1138, i64* %3, align 8
  br label %block_.L_400fa7

block_.L_400e42:                                  ; preds = %block_.L_400e11
  %1139 = add i64 %1133, -60
  %1140 = add i64 %1132, 3
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RDI.i861, align 8
  %1144 = add i64 %1133, -68
  %1145 = add i64 %1132, 6
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RSI.i869, align 8
  %1149 = add i64 %1133, -64
  %1150 = add i64 %1132, 9
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %RDX.i652, align 8
  %1154 = add i64 %1133, -152
  %1155 = add i64 %1132, 16
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i64*
  %1157 = load i64, i64* %1156, align 8
  store i64 %1157, i64* %RCX.i879, align 8
  %1158 = add i64 %1133, -184
  %1159 = add i64 %1132, 23
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i64*
  %1161 = load i64, i64* %1160, align 8
  store i64 %1161, i64* %R8.i665, align 8
  %1162 = add i64 %1132, 8654
  %1163 = add i64 %1132, 28
  %1164 = load i64, i64* %6, align 8
  %1165 = add i64 %1164, -8
  %1166 = inttoptr i64 %1165 to i64*
  store i64 %1163, i64* %1166, align 8
  store i64 %1165, i64* %6, align 8
  store i64 %1162, i64* %3, align 8
  %call2_400e59 = tail call %struct.Memory* @sub_403010.check_FP(%struct.State* nonnull %0, i64 %1162, %struct.Memory* %call2_400e28)
  %1167 = load i32, i32* %EAX.i878, align 4
  %1168 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %1169 = and i32 %1167, 255
  %1170 = tail call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  store i8 %1173, i8* %46, align 1
  store i8 0, i8* %51, align 1
  %1174 = icmp eq i32 %1167, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %54, align 1
  %1176 = lshr i32 %1167, 31
  %1177 = trunc i32 %1176 to i8
  store i8 %1177, i8* %57, align 1
  store i8 0, i8* %63, align 1
  %.v6 = select i1 %1174, i64 9, i64 21
  %1178 = add i64 %1168, %.v6
  store i64 %1178, i64* %3, align 8
  %1179 = load i64, i64* %RBP.i, align 8
  br i1 %1174, label %block_400e67, label %block_.L_400e73

block_400e67:                                     ; preds = %block_.L_400e42
  %1180 = add i64 %1179, -44
  %1181 = add i64 %1178, 7
  store i64 %1181, i64* %3, align 8
  %1182 = inttoptr i64 %1180 to i32*
  store i32 1, i32* %1182, align 4
  %1183 = load i64, i64* %3, align 8
  %1184 = add i64 %1183, 313
  store i64 %1184, i64* %3, align 8
  br label %block_.L_400fa7

block_.L_400e73:                                  ; preds = %block_.L_400e42
  %1185 = add i64 %1179, -60
  %1186 = add i64 %1178, 3
  store i64 %1186, i64* %3, align 8
  %1187 = inttoptr i64 %1185 to i32*
  %1188 = load i32, i32* %1187, align 4
  %1189 = zext i32 %1188 to i64
  store i64 %1189, i64* %RDI.i861, align 8
  %1190 = add i64 %1179, -68
  %1191 = add i64 %1178, 6
  store i64 %1191, i64* %3, align 8
  %1192 = inttoptr i64 %1190 to i32*
  %1193 = load i32, i32* %1192, align 4
  %1194 = zext i32 %1193 to i64
  store i64 %1194, i64* %RSI.i869, align 8
  %1195 = add i64 %1179, -64
  %1196 = add i64 %1178, 9
  store i64 %1196, i64* %3, align 8
  %1197 = inttoptr i64 %1195 to i32*
  %1198 = load i32, i32* %1197, align 4
  %1199 = zext i32 %1198 to i64
  store i64 %1199, i64* %RDX.i652, align 8
  %1200 = add i64 %1179, -160
  %1201 = add i64 %1178, 16
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i64*
  %1203 = load i64, i64* %1202, align 8
  store i64 %1203, i64* %RCX.i879, align 8
  %1204 = add i64 %1179, -168
  %1205 = add i64 %1178, 23
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i64*
  %1207 = load i64, i64* %1206, align 8
  store i64 %1207, i64* %R8.i665, align 8
  %1208 = add i64 %1179, -176
  %1209 = add i64 %1178, 30
  store i64 %1209, i64* %3, align 8
  %1210 = inttoptr i64 %1208 to i64*
  %1211 = load i64, i64* %1210, align 8
  store i64 %1211, i64* %R9.i650, align 8
  %1212 = add i64 %1179, -184
  %1213 = add i64 %1178, 37
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1212 to i64*
  %1215 = load i64, i64* %1214, align 8
  store i64 %1215, i64* %RAX.i881, align 8
  %1216 = load i64*, i64** %398, align 8
  %1217 = add i64 %1178, 41
  store i64 %1217, i64* %3, align 8
  store i64 %1215, i64* %1216, align 8
  %1218 = load i64, i64* %3, align 8
  %1219 = add i64 %1218, 8980
  %1220 = add i64 %1218, 5
  %1221 = load i64, i64* %6, align 8
  %1222 = add i64 %1221, -8
  %1223 = inttoptr i64 %1222 to i64*
  store i64 %1220, i64* %1223, align 8
  store i64 %1222, i64* %6, align 8
  store i64 %1219, i64* %3, align 8
  %call2_400e9c = tail call %struct.Memory* @sub_4031b0.print_array(%struct.State* nonnull %0, i64 %1219, %struct.Memory* %call2_400e59)
  %1224 = load i64, i64* %RBP.i, align 8
  %1225 = add i64 %1224, -96
  %1226 = load i64, i64* %3, align 8
  %1227 = add i64 %1226, 4
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1225 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i64 %1229, i64* %RAX.i881, align 8
  store i64 %1229, i64* %RDI.i861, align 8
  %1230 = add i64 %1226, -2337
  %1231 = add i64 %1226, 12
  %1232 = load i64, i64* %6, align 8
  %1233 = add i64 %1232, -8
  %1234 = inttoptr i64 %1233 to i64*
  store i64 %1231, i64* %1234, align 8
  store i64 %1233, i64* %6, align 8
  store i64 %1230, i64* %3, align 8
  %call2_400ea8 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1230, %struct.Memory* %call2_400e9c)
  %1235 = load i64, i64* %RBP.i, align 8
  %1236 = add i64 %1235, -104
  %1237 = load i64, i64* %3, align 8
  %1238 = add i64 %1237, 4
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1236 to i64*
  %1240 = load i64, i64* %1239, align 8
  store i64 %1240, i64* %RAX.i881, align 8
  store i64 %1240, i64* %RDI.i861, align 8
  %1241 = add i64 %1237, -2349
  %1242 = add i64 %1237, 12
  %1243 = load i64, i64* %6, align 8
  %1244 = add i64 %1243, -8
  %1245 = inttoptr i64 %1244 to i64*
  store i64 %1242, i64* %1245, align 8
  store i64 %1244, i64* %6, align 8
  store i64 %1241, i64* %3, align 8
  %call2_400eb4 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1241, %struct.Memory* %call2_400ea8)
  %1246 = load i64, i64* %RBP.i, align 8
  %1247 = add i64 %1246, -112
  %1248 = load i64, i64* %3, align 8
  %1249 = add i64 %1248, 4
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1247 to i64*
  %1251 = load i64, i64* %1250, align 8
  store i64 %1251, i64* %RAX.i881, align 8
  store i64 %1251, i64* %RDI.i861, align 8
  %1252 = add i64 %1248, -2361
  %1253 = add i64 %1248, 12
  %1254 = load i64, i64* %6, align 8
  %1255 = add i64 %1254, -8
  %1256 = inttoptr i64 %1255 to i64*
  store i64 %1253, i64* %1256, align 8
  store i64 %1255, i64* %6, align 8
  store i64 %1252, i64* %3, align 8
  %call2_400ec0 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1252, %struct.Memory* %call2_400eb4)
  %1257 = load i64, i64* %RBP.i, align 8
  %1258 = add i64 %1257, -120
  %1259 = load i64, i64* %3, align 8
  %1260 = add i64 %1259, 4
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1258 to i64*
  %1262 = load i64, i64* %1261, align 8
  store i64 %1262, i64* %RAX.i881, align 8
  store i64 %1262, i64* %RDI.i861, align 8
  %1263 = add i64 %1259, -2373
  %1264 = add i64 %1259, 12
  %1265 = load i64, i64* %6, align 8
  %1266 = add i64 %1265, -8
  %1267 = inttoptr i64 %1266 to i64*
  store i64 %1264, i64* %1267, align 8
  store i64 %1266, i64* %6, align 8
  store i64 %1263, i64* %3, align 8
  %call2_400ecc = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1263, %struct.Memory* %call2_400ec0)
  %1268 = load i64, i64* %RBP.i, align 8
  %1269 = add i64 %1268, -128
  %1270 = load i64, i64* %3, align 8
  %1271 = add i64 %1270, 4
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1269 to i64*
  %1273 = load i64, i64* %1272, align 8
  store i64 %1273, i64* %RAX.i881, align 8
  store i64 %1273, i64* %RDI.i861, align 8
  %1274 = add i64 %1270, -2385
  %1275 = add i64 %1270, 12
  %1276 = load i64, i64* %6, align 8
  %1277 = add i64 %1276, -8
  %1278 = inttoptr i64 %1277 to i64*
  store i64 %1275, i64* %1278, align 8
  store i64 %1277, i64* %6, align 8
  store i64 %1274, i64* %3, align 8
  %call2_400ed8 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1274, %struct.Memory* %call2_400ecc)
  %1279 = load i64, i64* %RBP.i, align 8
  %1280 = add i64 %1279, -136
  %1281 = load i64, i64* %3, align 8
  %1282 = add i64 %1281, 7
  store i64 %1282, i64* %3, align 8
  %1283 = inttoptr i64 %1280 to i64*
  %1284 = load i64, i64* %1283, align 8
  store i64 %1284, i64* %RAX.i881, align 8
  store i64 %1284, i64* %RDI.i861, align 8
  %1285 = add i64 %1281, -2397
  %1286 = add i64 %1281, 15
  %1287 = load i64, i64* %6, align 8
  %1288 = add i64 %1287, -8
  %1289 = inttoptr i64 %1288 to i64*
  store i64 %1286, i64* %1289, align 8
  store i64 %1288, i64* %6, align 8
  store i64 %1285, i64* %3, align 8
  %call2_400ee7 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1285, %struct.Memory* %call2_400ed8)
  %1290 = load i64, i64* %RBP.i, align 8
  %1291 = add i64 %1290, -144
  %1292 = load i64, i64* %3, align 8
  %1293 = add i64 %1292, 7
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1291 to i64*
  %1295 = load i64, i64* %1294, align 8
  store i64 %1295, i64* %RAX.i881, align 8
  store i64 %1295, i64* %RDI.i861, align 8
  %1296 = add i64 %1292, -2412
  %1297 = add i64 %1292, 15
  %1298 = load i64, i64* %6, align 8
  %1299 = add i64 %1298, -8
  %1300 = inttoptr i64 %1299 to i64*
  store i64 %1297, i64* %1300, align 8
  store i64 %1299, i64* %6, align 8
  store i64 %1296, i64* %3, align 8
  %call2_400ef6 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1296, %struct.Memory* %call2_400ee7)
  %1301 = load i64, i64* %RBP.i, align 8
  %1302 = add i64 %1301, -152
  %1303 = load i64, i64* %3, align 8
  %1304 = add i64 %1303, 7
  store i64 %1304, i64* %3, align 8
  %1305 = inttoptr i64 %1302 to i64*
  %1306 = load i64, i64* %1305, align 8
  store i64 %1306, i64* %RAX.i881, align 8
  store i64 %1306, i64* %RDI.i861, align 8
  %1307 = add i64 %1303, -2427
  %1308 = add i64 %1303, 15
  %1309 = load i64, i64* %6, align 8
  %1310 = add i64 %1309, -8
  %1311 = inttoptr i64 %1310 to i64*
  store i64 %1308, i64* %1311, align 8
  store i64 %1310, i64* %6, align 8
  store i64 %1307, i64* %3, align 8
  %call2_400f05 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1307, %struct.Memory* %call2_400ef6)
  %1312 = load i64, i64* %RBP.i, align 8
  %1313 = add i64 %1312, -160
  %1314 = load i64, i64* %3, align 8
  %1315 = add i64 %1314, 7
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1313 to i64*
  %1317 = load i64, i64* %1316, align 8
  store i64 %1317, i64* %RAX.i881, align 8
  store i64 %1317, i64* %RDI.i861, align 8
  %1318 = add i64 %1314, -2442
  %1319 = add i64 %1314, 15
  %1320 = load i64, i64* %6, align 8
  %1321 = add i64 %1320, -8
  %1322 = inttoptr i64 %1321 to i64*
  store i64 %1319, i64* %1322, align 8
  store i64 %1321, i64* %6, align 8
  store i64 %1318, i64* %3, align 8
  %call2_400f14 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1318, %struct.Memory* %call2_400f05)
  %1323 = load i64, i64* %RBP.i, align 8
  %1324 = add i64 %1323, -168
  %1325 = load i64, i64* %3, align 8
  %1326 = add i64 %1325, 7
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1324 to i64*
  %1328 = load i64, i64* %1327, align 8
  store i64 %1328, i64* %RAX.i881, align 8
  store i64 %1328, i64* %RDI.i861, align 8
  %1329 = add i64 %1325, -2457
  %1330 = add i64 %1325, 15
  %1331 = load i64, i64* %6, align 8
  %1332 = add i64 %1331, -8
  %1333 = inttoptr i64 %1332 to i64*
  store i64 %1330, i64* %1333, align 8
  store i64 %1332, i64* %6, align 8
  store i64 %1329, i64* %3, align 8
  %call2_400f23 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1329, %struct.Memory* %call2_400f14)
  %1334 = load i64, i64* %RBP.i, align 8
  %1335 = add i64 %1334, -176
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, 7
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1335 to i64*
  %1339 = load i64, i64* %1338, align 8
  store i64 %1339, i64* %RAX.i881, align 8
  store i64 %1339, i64* %RDI.i861, align 8
  %1340 = add i64 %1336, -2472
  %1341 = add i64 %1336, 15
  %1342 = load i64, i64* %6, align 8
  %1343 = add i64 %1342, -8
  %1344 = inttoptr i64 %1343 to i64*
  store i64 %1341, i64* %1344, align 8
  store i64 %1343, i64* %6, align 8
  store i64 %1340, i64* %3, align 8
  %call2_400f32 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1340, %struct.Memory* %call2_400f23)
  %1345 = load i64, i64* %RBP.i, align 8
  %1346 = add i64 %1345, -184
  %1347 = load i64, i64* %3, align 8
  %1348 = add i64 %1347, 7
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1346 to i64*
  %1350 = load i64, i64* %1349, align 8
  store i64 %1350, i64* %RAX.i881, align 8
  store i64 %1350, i64* %RDI.i861, align 8
  %1351 = add i64 %1347, -2487
  %1352 = add i64 %1347, 15
  %1353 = load i64, i64* %6, align 8
  %1354 = add i64 %1353, -8
  %1355 = inttoptr i64 %1354 to i64*
  store i64 %1352, i64* %1355, align 8
  store i64 %1354, i64* %6, align 8
  store i64 %1351, i64* %3, align 8
  %call2_400f41 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1351, %struct.Memory* %call2_400f32)
  %1356 = load i64, i64* %RBP.i, align 8
  %1357 = add i64 %1356, -192
  %1358 = load i64, i64* %3, align 8
  %1359 = add i64 %1358, 7
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1357 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %RAX.i881, align 8
  store i64 %1361, i64* %RDI.i861, align 8
  %1362 = add i64 %1358, -2502
  %1363 = add i64 %1358, 15
  %1364 = load i64, i64* %6, align 8
  %1365 = add i64 %1364, -8
  %1366 = inttoptr i64 %1365 to i64*
  store i64 %1363, i64* %1366, align 8
  store i64 %1365, i64* %6, align 8
  store i64 %1362, i64* %3, align 8
  %call2_400f50 = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1362, %struct.Memory* %call2_400f41)
  %1367 = load i64, i64* %RBP.i, align 8
  %1368 = add i64 %1367, -200
  %1369 = load i64, i64* %3, align 8
  %1370 = add i64 %1369, 7
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1368 to i64*
  %1372 = load i64, i64* %1371, align 8
  store i64 %1372, i64* %RAX.i881, align 8
  store i64 %1372, i64* %RDI.i861, align 8
  %1373 = add i64 %1369, -2517
  %1374 = add i64 %1369, 15
  %1375 = load i64, i64* %6, align 8
  %1376 = add i64 %1375, -8
  %1377 = inttoptr i64 %1376 to i64*
  store i64 %1374, i64* %1377, align 8
  store i64 %1376, i64* %6, align 8
  store i64 %1373, i64* %3, align 8
  %call2_400f5f = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1373, %struct.Memory* %call2_400f50)
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -208
  %1380 = load i64, i64* %3, align 8
  %1381 = add i64 %1380, 7
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1379 to i64*
  %1383 = load i64, i64* %1382, align 8
  store i64 %1383, i64* %RAX.i881, align 8
  store i64 %1383, i64* %RDI.i861, align 8
  %1384 = add i64 %1380, -2532
  %1385 = add i64 %1380, 15
  %1386 = load i64, i64* %6, align 8
  %1387 = add i64 %1386, -8
  %1388 = inttoptr i64 %1387 to i64*
  store i64 %1385, i64* %1388, align 8
  store i64 %1387, i64* %6, align 8
  store i64 %1384, i64* %3, align 8
  %call2_400f6e = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1384, %struct.Memory* %call2_400f5f)
  %1389 = load i64, i64* %RBP.i, align 8
  %1390 = add i64 %1389, -216
  %1391 = load i64, i64* %3, align 8
  %1392 = add i64 %1391, 7
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1390 to i64*
  %1394 = load i64, i64* %1393, align 8
  store i64 %1394, i64* %RAX.i881, align 8
  store i64 %1394, i64* %RDI.i861, align 8
  %1395 = add i64 %1391, -2547
  %1396 = add i64 %1391, 15
  %1397 = load i64, i64* %6, align 8
  %1398 = add i64 %1397, -8
  %1399 = inttoptr i64 %1398 to i64*
  store i64 %1396, i64* %1399, align 8
  store i64 %1398, i64* %6, align 8
  store i64 %1395, i64* %3, align 8
  %call2_400f7d = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1395, %struct.Memory* %call2_400f6e)
  %1400 = load i64, i64* %RBP.i, align 8
  %1401 = add i64 %1400, -224
  %1402 = load i64, i64* %3, align 8
  %1403 = add i64 %1402, 7
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1401 to i64*
  %1405 = load i64, i64* %1404, align 8
  store i64 %1405, i64* %RAX.i881, align 8
  store i64 %1405, i64* %RDI.i861, align 8
  %1406 = add i64 %1402, -2562
  %1407 = add i64 %1402, 15
  %1408 = load i64, i64* %6, align 8
  %1409 = add i64 %1408, -8
  %1410 = inttoptr i64 %1409 to i64*
  store i64 %1407, i64* %1410, align 8
  store i64 %1409, i64* %6, align 8
  store i64 %1406, i64* %3, align 8
  %call2_400f8c = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1406, %struct.Memory* %call2_400f7d)
  %1411 = load i64, i64* %RBP.i, align 8
  %1412 = add i64 %1411, -232
  %1413 = load i64, i64* %3, align 8
  %1414 = add i64 %1413, 7
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1412 to i64*
  %1416 = load i64, i64* %1415, align 8
  store i64 %1416, i64* %RAX.i881, align 8
  store i64 %1416, i64* %RDI.i861, align 8
  %1417 = add i64 %1413, -2577
  %1418 = add i64 %1413, 15
  %1419 = load i64, i64* %6, align 8
  %1420 = add i64 %1419, -8
  %1421 = inttoptr i64 %1420 to i64*
  store i64 %1418, i64* %1421, align 8
  store i64 %1420, i64* %6, align 8
  store i64 %1417, i64* %3, align 8
  %call2_400f9b = tail call %struct.Memory* @sub_400580.free_plt(%struct.State* nonnull %0, i64 %1417, %struct.Memory* %call2_400f8c)
  %1422 = load i64, i64* %RBP.i, align 8
  %1423 = add i64 %1422, -44
  %1424 = load i64, i64* %3, align 8
  %1425 = add i64 %1424, 7
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1423 to i32*
  store i32 0, i32* %1426, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_400fa7

block_.L_400fa7:                                  ; preds = %block_.L_400e73, %block_400e67, %block_400e36, %block_400e05, %block_400dd4
  %1427 = phi i64 [ %.pre, %block_.L_400e73 ], [ %1184, %block_400e67 ], [ %1138, %block_400e36 ], [ %1092, %block_400e05 ], [ %1046, %block_400dd4 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_400f9b, %block_.L_400e73 ], [ %call2_400e59, %block_400e67 ], [ %call2_400e28, %block_400e36 ], [ %call2_400df7, %block_400e05 ], [ %call2_400dc6, %block_400dd4 ]
  %1428 = load i64, i64* %RBP.i, align 8
  %1429 = add i64 %1428, -44
  %1430 = add i64 %1427, 3
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = zext i32 %1432 to i64
  store i64 %1433, i64* %RAX.i881, align 8
  %1434 = load i64, i64* %6, align 8
  %1435 = add i64 %1434, 392
  store i64 %1435, i64* %6, align 8
  %1436 = icmp ugt i64 %1434, -393
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %39, align 1
  %1438 = trunc i64 %1435 to i32
  %1439 = and i32 %1438, 255
  %1440 = tail call i32 @llvm.ctpop.i32(i32 %1439)
  %1441 = trunc i32 %1440 to i8
  %1442 = and i8 %1441, 1
  %1443 = xor i8 %1442, 1
  store i8 %1443, i8* %46, align 1
  %1444 = xor i64 %1435, %1434
  %1445 = lshr i64 %1444, 4
  %1446 = trunc i64 %1445 to i8
  %1447 = and i8 %1446, 1
  store i8 %1447, i8* %51, align 1
  %1448 = icmp eq i64 %1435, 0
  %1449 = zext i1 %1448 to i8
  store i8 %1449, i8* %54, align 1
  %1450 = lshr i64 %1435, 63
  %1451 = trunc i64 %1450 to i8
  store i8 %1451, i8* %57, align 1
  %1452 = lshr i64 %1434, 63
  %1453 = xor i64 %1450, %1452
  %1454 = add nuw nsw i64 %1453, %1450
  %1455 = icmp eq i64 %1454, 2
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %63, align 1
  %1457 = add i64 %1427, 11
  store i64 %1457, i64* %3, align 8
  %1458 = add i64 %1434, 400
  %1459 = inttoptr i64 %1435 to i64*
  %1460 = load i64, i64* %1459, align 8
  store i64 %1460, i64* %RBX.i885, align 8
  store i64 %1458, i64* %6, align 8
  %1461 = add i64 %1427, 13
  store i64 %1461, i64* %3, align 8
  %1462 = add i64 %1434, 408
  %1463 = inttoptr i64 %1458 to i64*
  %1464 = load i64, i64* %1463, align 8
  store i64 %1464, i64* %R12.i887, align 8
  store i64 %1462, i64* %6, align 8
  %1465 = add i64 %1427, 15
  store i64 %1465, i64* %3, align 8
  %1466 = add i64 %1434, 416
  %1467 = inttoptr i64 %1462 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %R13.i889, align 8
  store i64 %1466, i64* %6, align 8
  %1469 = add i64 %1427, 17
  store i64 %1469, i64* %3, align 8
  %1470 = add i64 %1434, 424
  %1471 = inttoptr i64 %1466 to i64*
  %1472 = load i64, i64* %1471, align 8
  store i64 %1472, i64* %R14.i891, align 8
  store i64 %1470, i64* %6, align 8
  %1473 = add i64 %1427, 19
  store i64 %1473, i64* %3, align 8
  %1474 = add i64 %1434, 432
  %1475 = inttoptr i64 %1470 to i64*
  %1476 = load i64, i64* %1475, align 8
  store i64 %1476, i64* %R15.i893, align 8
  store i64 %1474, i64* %6, align 8
  %1477 = add i64 %1427, 20
  store i64 %1477, i64* %3, align 8
  %1478 = add i64 %1434, 440
  %1479 = inttoptr i64 %1474 to i64*
  %1480 = load i64, i64* %1479, align 8
  store i64 %1480, i64* %RBP.i, align 8
  store i64 %1478, i64* %6, align 8
  %1481 = add i64 %1427, 21
  store i64 %1481, i64* %3, align 8
  %1482 = inttoptr i64 %1478 to i64*
  %1483 = load i64, i64* %1482, align 8
  store i64 %1483, i64* %3, align 8
  %1484 = add i64 %1434, 448
  store i64 %1484, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x188___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
define %struct.Memory* @routine_movl__0x1081___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4225, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x40__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x40__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x40__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_callq_.polybench_alloc_data(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1081___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4225, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movl__0x430c1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 274625, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x41___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 65, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x58__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movq_MINUS0x88__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc0__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd8__rbp____r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14__0x20__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15__0x28__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r12__0x30__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r13__0x38__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x40__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x48__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.init_array(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movq_MINUS0x80__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x98__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc0__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x108__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x120__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x50__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.kernel_fdtd_apml(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x128__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x130__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x138__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x140__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x148__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x150__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x158__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.kernel_fdtd_apml_StrictFP(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.check_FP(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_400de0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fa7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400e11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400e42(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_400e73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb0__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_callq_.print_array(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x188___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
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
