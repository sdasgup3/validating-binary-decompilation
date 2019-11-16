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

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_47bb60.superstring_add_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f200.is_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4141e0.find_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_413930.findstones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @do_find_superstring(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i1372 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R15.i1372, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i1384 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %17 = load i64, i64* %R14.i1384, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 2
  store i64 %19, i64* %3, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13.i1396 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %23 = load i64, i64* %R13.i1396, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 2
  store i64 %25, i64* %3, align 8
  %26 = add i64 %7, -32
  %27 = inttoptr i64 %26 to i64*
  store i64 %23, i64* %27, align 8
  %R12.i1514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %28 = load i64, i64* %R12.i1514, align 8
  %29 = load i64, i64* %3, align 8
  %30 = add i64 %29, 2
  store i64 %30, i64* %3, align 8
  %31 = add i64 %7, -40
  %32 = inttoptr i64 %31 to i64*
  store i64 %28, i64* %32, align 8
  %RBX.i1512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %33 = load i64, i64* %RBX.i1512, align 8
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %3, align 8
  %36 = add i64 %7, -48
  %37 = inttoptr i64 %36 to i64*
  store i64 %33, i64* %37, align 8
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %7, -4648
  store i64 %39, i64* %6, align 8
  %40 = icmp ult i64 %36, 4600
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %41, i8* %42, align 1
  %43 = trunc i64 %39 to i32
  %44 = and i32 %43, 255
  %45 = tail call i32 @llvm.ctpop.i32(i32 %44)
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1
  %50 = xor i64 %36, 16
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1
  %62 = lshr i64 %36, 63
  %63 = xor i64 %59, %62
  %64 = add nuw nsw i64 %63, %62
  %65 = icmp eq i64 %64, 2
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %66, i8* %67, align 1
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1507 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, 48
  %71 = add i64 %38, 10
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  store i64 %74, i64* %RAX.i1507, align 8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i1504 = bitcast %union.anon* %75 to i32*
  %76 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %77 = add i64 %69, 40
  %78 = add i64 %38, 14
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i32*
  %80 = load i32, i32* %79, align 4
  %81 = zext i32 %80 to i64
  store i64 %81, i64* %76, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i1501 = bitcast %union.anon* %82 to i32*
  %83 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  %84 = add i64 %69, 32
  %85 = add i64 %38, 18
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i32*
  %87 = load i32, i32* %86, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %83, align 8
  %89 = add i64 %69, 24
  %90 = add i64 %38, 22
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %89 to i64*
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %RBX.i1512, align 8
  %93 = add i64 %69, 16
  %94 = add i64 %38, 26
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %93 to i64*
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %R14.i1384, align 8
  %R15D.i1493 = bitcast %union.anon* %11 to i32*
  store i64 0, i64* %R15.i1372, align 8
  store i8 0, i8* %42, align 1
  store i8 1, i8* %49, align 1
  store i8 1, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %55, align 1
  %R13D.i1489 = bitcast %union.anon* %22 to i32*
  store i64 400, i64* %R13.i1396, align 8
  %97 = add i64 %69, -2768
  store i64 %97, i64* %R12.i1514, align 8
  %RCX.i1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %98 = add i64 %69, -4312
  %99 = load i64, i64* %RCX.i1483, align 8
  %100 = add i64 %38, 52
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -2368
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %102, -4320
  %106 = add i64 %104, 14
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i64*
  store i64 %103, i64* %107, align 8
  %108 = load i64, i64* %RBP.i, align 8
  %109 = add i64 %108, -1968
  %110 = load i64, i64* %3, align 8
  store i64 %109, i64* %RCX.i1483, align 8
  %EAX.i1471 = bitcast %union.anon* %68 to i32*
  %111 = add i64 %108, -4324
  %112 = load i32, i32* %EAX.i1471, align 4
  %113 = add i64 %110, 13
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %111 to i32*
  store i32 %112, i32* %114, align 4
  %115 = load i64, i64* %3, align 8
  store i64 3, i64* %RAX.i1507, align 8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1466 = bitcast %union.anon* %116 to i32*
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -44
  %119 = load i32, i32* %EDI.i1466, align 4
  %120 = add i64 %115, 8
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %121, align 4
  %RSI.i1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %122 = load i64, i64* %RBP.i, align 8
  %123 = add i64 %122, -56
  %124 = load i64, i64* %RSI.i1463, align 8
  %125 = load i64, i64* %3, align 8
  %126 = add i64 %125, 4
  store i64 %126, i64* %3, align 8
  %127 = inttoptr i64 %123 to i64*
  store i64 %124, i64* %127, align 8
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1460 = getelementptr inbounds %union.anon, %union.anon* %128, i64 0, i32 0
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -64
  %131 = load i64, i64* %RDX.i1460, align 8
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 4
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %130 to i64*
  store i64 %131, i64* %134, align 8
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -4312
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 7
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %136 to i64*
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %RDX.i1460, align 8
  %141 = add i64 %135, -72
  %142 = add i64 %137, 11
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i64*
  store i64 %140, i64* %143, align 8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i1452 = getelementptr inbounds %union.anon, %union.anon* %144, i64 0, i32 0
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -80
  %147 = load i64, i64* %R8.i1452, align 8
  %148 = load i64, i64* %3, align 8
  %149 = add i64 %148, 4
  store i64 %149, i64* %3, align 8
  %150 = inttoptr i64 %146 to i64*
  store i64 %147, i64* %150, align 8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1448 = bitcast %union.anon* %151 to i32*
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -84
  %154 = load i32, i32* %R9D.i1448, align 4
  %155 = load i64, i64* %3, align 8
  %156 = add i64 %155, 4
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %153 to i32*
  store i32 %154, i32* %157, align 4
  %158 = load i64, i64* %RBP.i, align 8
  %159 = add i64 %158, -96
  %160 = load i64, i64* %R14.i1384, align 8
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 4
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %159 to i64*
  store i64 %160, i64* %163, align 8
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -104
  %166 = load i64, i64* %RBX.i1512, align 8
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 4
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %165 to i64*
  store i64 %166, i64* %169, align 8
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -108
  %172 = load i32, i32* %R11D.i1501, align 4
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, 4
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %171 to i32*
  store i32 %172, i32* %175, align 4
  %176 = load i64, i64* %RBP.i, align 8
  %177 = add i64 %176, -112
  %178 = load i32, i32* %R10D.i1504, align 4
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 4
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %177 to i32*
  store i32 %178, i32* %181, align 4
  %RDI.i1435 = getelementptr inbounds %union.anon, %union.anon* %116, i64 0, i32 0
  %182 = load i64, i64* %RBP.i, align 8
  %183 = add i64 %182, -4324
  %184 = load i64, i64* %3, align 8
  %185 = add i64 %184, 6
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %183 to i32*
  %187 = load i32, i32* %186, align 4
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RDI.i1435, align 8
  %189 = add i64 %182, -116
  %190 = add i64 %184, 9
  store i64 %190, i64* %3, align 8
  %191 = inttoptr i64 %189 to i32*
  store i32 %187, i32* %191, align 4
  %192 = load i64, i64* %RBP.i, align 8
  %193 = add i64 %192, -44
  %194 = load i64, i64* %3, align 8
  %195 = add i64 %194, 4
  store i64 %195, i64* %3, align 8
  %196 = inttoptr i64 %193 to i32*
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %RSI.i1463, align 8
  %199 = getelementptr inbounds %union.anon, %union.anon* %151, i64 0, i32 0
  %200 = add nsw i64 %198, 12099168
  %201 = add i64 %194, 13
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i8*
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i64
  store i64 %204, i64* %199, align 8
  %205 = add i64 %192, -2784
  %206 = zext i8 %203 to i32
  %207 = add i64 %194, 20
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %205 to i32*
  store i32 %206, i32* %208, align 4
  %209 = load i64, i64* %RAX.i1507, align 8
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -2784
  %212 = load i64, i64* %3, align 8
  %213 = add i64 %212, 6
  store i64 %213, i64* %3, align 8
  %214 = trunc i64 %209 to i32
  %215 = inttoptr i64 %211 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = sub i32 %214, %216
  %218 = zext i32 %217 to i64
  store i64 %218, i64* %RAX.i1507, align 8
  %219 = icmp ult i32 %214, %216
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %42, align 1
  %221 = and i32 %217, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %49, align 1
  %226 = xor i32 %216, %214
  %227 = xor i32 %226, %217
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %55, align 1
  %231 = icmp eq i32 %217, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %58, align 1
  %233 = lshr i32 %217, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %61, align 1
  %235 = lshr i32 %214, 31
  %236 = lshr i32 %216, 31
  %237 = xor i32 %236, %235
  %238 = xor i32 %233, %235
  %239 = add nuw nsw i32 %238, %237
  %240 = icmp eq i32 %239, 2
  %241 = zext i1 %240 to i8
  store i8 %241, i8* %67, align 1
  %242 = add i64 %210, -2788
  %243 = add i64 %212, 12
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %242 to i32*
  store i32 %217, i32* %244, align 4
  %245 = load i64, i64* %RCX.i1483, align 8
  %246 = load i64, i64* %3, align 8
  store i64 %245, i64* %RDI.i1435, align 8
  %247 = load i32, i32* %R15D.i1493, align 4
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %RSI.i1463, align 8
  %249 = load i64, i64* %R13.i1396, align 8
  store i64 %249, i64* %RDX.i1460, align 8
  %250 = load i64, i64* %RBP.i, align 8
  %251 = add i64 %250, -4328
  %252 = add i64 %246, 16
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %251 to i32*
  store i32 %247, i32* %253, align 4
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -4336
  %256 = load i64, i64* %R12.i1514, align 8
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 7
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %255 to i64*
  store i64 %256, i64* %259, align 8
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -4344
  %262 = load i64, i64* %R13.i1396, align 8
  %263 = load i64, i64* %3, align 8
  %264 = add i64 %263, 7
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %261 to i64*
  store i64 %262, i64* %265, align 8
  %266 = load i64, i64* %3, align 8
  %267 = add i64 %266, -499558
  %268 = add i64 %266, 5
  %269 = load i64, i64* %6, align 8
  %270 = add i64 %269, -8
  %271 = inttoptr i64 %270 to i64*
  store i64 %268, i64* %271, align 8
  store i64 %270, i64* %6, align 8
  store i64 %267, i64* %3, align 8
  %272 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %273 = load i64, i64* %RBP.i, align 8
  %274 = add i64 %273, -4320
  %275 = load i64, i64* %3, align 8
  %276 = add i64 %275, 7
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %274 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %RDI.i1435, align 8
  %279 = add i64 %273, -4328
  %280 = add i64 %275, 13
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %279 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = zext i32 %282 to i64
  store i64 %283, i64* %RSI.i1463, align 8
  %284 = add i64 %273, -4344
  %285 = add i64 %275, 20
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i64*
  %287 = load i64, i64* %286, align 8
  store i64 %287, i64* %RDX.i1460, align 8
  %288 = add i64 %275, -499563
  %289 = add i64 %275, 25
  %290 = load i64, i64* %6, align 8
  %291 = add i64 %290, -8
  %292 = inttoptr i64 %291 to i64*
  store i64 %289, i64* %292, align 8
  store i64 %291, i64* %6, align 8
  store i64 %288, i64* %3, align 8
  %293 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %272)
  %294 = load i64, i64* %RBP.i, align 8
  %295 = add i64 %294, -4336
  %296 = load i64, i64* %3, align 8
  %297 = add i64 %296, 7
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %295 to i64*
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %RDI.i1435, align 8
  %300 = add i64 %294, -4328
  %301 = add i64 %296, 13
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RSI.i1463, align 8
  %305 = add i64 %294, -4344
  %306 = add i64 %296, 20
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i64*
  %308 = load i64, i64* %307, align 8
  store i64 %308, i64* %RDX.i1460, align 8
  %309 = add i64 %296, -499588
  %310 = add i64 %296, 25
  %311 = load i64, i64* %6, align 8
  %312 = add i64 %311, -8
  %313 = inttoptr i64 %312 to i64*
  store i64 %310, i64* %313, align 8
  store i64 %312, i64* %6, align 8
  store i64 %309, i64* %3, align 8
  %314 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %293)
  %315 = load i64, i64* %RBP.i, align 8
  %316 = add i64 %315, -56
  %317 = load i64, i64* %3, align 8
  %318 = add i64 %317, 5
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %316 to i64*
  %320 = load i64, i64* %319, align 8
  store i8 0, i8* %42, align 1
  %321 = trunc i64 %320 to i32
  %322 = and i32 %321, 255
  %323 = tail call i32 @llvm.ctpop.i32(i32 %322)
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  %326 = xor i8 %325, 1
  store i8 %326, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %327 = icmp eq i64 %320, 0
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %58, align 1
  %329 = lshr i64 %320, 63
  %330 = trunc i64 %329 to i8
  store i8 %330, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v90 = select i1 %327, i64 21, i64 11
  %331 = add i64 %317, %.v90
  store i64 %331, i64* %3, align 8
  br i1 %327, label %block_.L_47b022, label %block_47b018

block_47b018:                                     ; preds = %entry
  %332 = add i64 %331, 4
  store i64 %332, i64* %3, align 8
  %333 = load i64, i64* %319, align 8
  store i64 %333, i64* %RAX.i1507, align 8
  %334 = add i64 %331, 10
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i32*
  store i32 0, i32* %335, align 4
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_47b022

block_.L_47b022:                                  ; preds = %block_47b018, %entry
  %336 = phi i64 [ %.pre60, %block_47b018 ], [ %331, %entry ]
  %337 = phi i64 [ %.pre, %block_47b018 ], [ %315, %entry ]
  %338 = add i64 %337, -72
  %339 = add i64 %336, 5
  store i64 %339, i64* %3, align 8
  %340 = inttoptr i64 %338 to i64*
  %341 = load i64, i64* %340, align 8
  store i8 0, i8* %42, align 1
  %342 = trunc i64 %341 to i32
  %343 = and i32 %342, 255
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  %347 = xor i8 %346, 1
  store i8 %347, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %348 = icmp eq i64 %341, 0
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %58, align 1
  %350 = lshr i64 %341, 63
  %351 = trunc i64 %350 to i8
  store i8 %351, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v91 = select i1 %348, i64 21, i64 11
  %352 = add i64 %336, %.v91
  store i64 %352, i64* %3, align 8
  br i1 %348, label %block_.L_47b037, label %block_47b02d

block_47b02d:                                     ; preds = %block_.L_47b022
  %353 = add i64 %352, 4
  store i64 %353, i64* %3, align 8
  %354 = load i64, i64* %340, align 8
  store i64 %354, i64* %RAX.i1507, align 8
  %355 = add i64 %352, 10
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  store i32 0, i32* %356, align 4
  %.pre61 = load i64, i64* %RBP.i, align 8
  %.pre62 = load i64, i64* %3, align 8
  br label %block_.L_47b037

block_.L_47b037:                                  ; preds = %block_47b02d, %block_.L_47b022
  %357 = phi i64 [ %.pre62, %block_47b02d ], [ %352, %block_.L_47b022 ]
  %358 = phi i64 [ %.pre61, %block_47b02d ], [ %337, %block_.L_47b022 ]
  %359 = add i64 %358, -96
  %360 = add i64 %357, 5
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i64*
  %362 = load i64, i64* %361, align 8
  store i8 0, i8* %42, align 1
  %363 = trunc i64 %362 to i32
  %364 = and i32 %363, 255
  %365 = tail call i32 @llvm.ctpop.i32(i32 %364)
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  %368 = xor i8 %367, 1
  store i8 %368, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %369 = icmp eq i64 %362, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %58, align 1
  %371 = lshr i64 %362, 63
  %372 = trunc i64 %371 to i8
  store i8 %372, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v92 = select i1 %369, i64 21, i64 11
  %373 = add i64 %357, %.v92
  store i64 %373, i64* %3, align 8
  br i1 %369, label %block_.L_47b04c, label %block_47b042

block_47b042:                                     ; preds = %block_.L_47b037
  %374 = add i64 %373, 4
  store i64 %374, i64* %3, align 8
  %375 = load i64, i64* %361, align 8
  store i64 %375, i64* %RAX.i1507, align 8
  %376 = add i64 %373, 10
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i32*
  store i32 0, i32* %377, align 4
  %.pre63 = load i64, i64* %RBP.i, align 8
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_47b04c

block_.L_47b04c:                                  ; preds = %block_47b042, %block_.L_47b037
  %378 = phi i64 [ %.pre64, %block_47b042 ], [ %373, %block_.L_47b037 ]
  %379 = phi i64 [ %.pre63, %block_47b042 ], [ %358, %block_.L_47b037 ]
  %380 = add i64 %379, -120
  store i64 %380, i64* %RSI.i1463, align 8
  %381 = add i64 %379, -2768
  store i64 %381, i64* %RAX.i1507, align 8
  %382 = add i64 %379, -2368
  store i64 %382, i64* %RCX.i1483, align 8
  %383 = add i64 %379, -1968
  store i64 %383, i64* %RDX.i1460, align 8
  %384 = add i64 %379, -1568
  store i64 %384, i64* %RDI.i1435, align 8
  %385 = add i64 %378, 39
  store i64 %385, i64* %3, align 8
  %386 = inttoptr i64 %380 to i32*
  store i32 0, i32* %386, align 4
  %R8D.i1328 = bitcast %union.anon* %144 to i32*
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -44
  %389 = load i64, i64* %3, align 8
  %390 = add i64 %389, 4
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %388 to i32*
  %392 = load i32, i32* %391, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %R8.i1452, align 8
  %394 = add i64 %387, -56
  %395 = add i64 %389, 8
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i64*
  %397 = load i64, i64* %396, align 8
  store i64 %397, i64* %199, align 8
  %398 = add i64 %387, -64
  %399 = add i64 %389, 12
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i64*
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %76, align 8
  %402 = add i64 %387, -72
  %403 = add i64 %389, 16
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i64*
  %405 = load i64, i64* %404, align 8
  store i64 %405, i64* %83, align 8
  %406 = add i64 %387, -80
  %407 = add i64 %389, 20
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %RBX.i1512, align 8
  %R14D.i1313 = bitcast %union.anon* %16 to i32*
  %410 = add i64 %387, -84
  %411 = add i64 %389, 24
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %R14.i1384, align 8
  %415 = add i64 %387, -96
  %416 = add i64 %389, 28
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %R15.i1372, align 8
  %419 = add i64 %387, -104
  %420 = add i64 %389, 32
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i64*
  %422 = load i64, i64* %421, align 8
  store i64 %422, i64* %R12.i1514, align 8
  %423 = add i64 %387, -108
  %424 = add i64 %389, 36
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %R13.i1396, align 8
  %428 = add i64 %387, -112
  %429 = add i64 %389, 40
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = icmp eq i32 %431, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %58, align 1
  %434 = add i64 %387, -4352
  %435 = load i64, i64* %RAX.i1507, align 8
  %436 = add i64 %389, 47
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %434 to i64*
  store i64 %435, i64* %437, align 8
  %438 = load i64, i64* %3, align 8
  %439 = load i8, i8* %58, align 1
  %440 = icmp ne i8 %439, 0
  store i8 0, i8* %42, align 1
  %441 = zext i1 %440 to i32
  %442 = tail call i32 @llvm.ctpop.i32(i32 %441)
  %443 = trunc i32 %442 to i8
  %444 = xor i8 %443, 1
  store i8 %444, i8* %49, align 1
  %445 = xor i1 %440, true
  %446 = zext i1 %445 to i8
  store i8 %446, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %55, align 1
  %447 = zext i1 %440 to i64
  store i64 %447, i64* %RAX.i1507, align 8
  %448 = load i64, i64* %RBP.i, align 8
  %449 = add i64 %448, -4360
  %450 = load i64, i64* %RDI.i1435, align 8
  %451 = add i64 %438, 17
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %449 to i64*
  store i64 %450, i64* %452, align 8
  %453 = load i32, i32* %R8D.i1328, align 4
  %454 = zext i32 %453 to i64
  %455 = load i64, i64* %3, align 8
  store i64 %454, i64* %RDI.i1435, align 8
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -4360
  %458 = add i64 %455, 10
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %R8.i1452, align 8
  %461 = add i64 %456, -4368
  %462 = load i64, i64* %RDX.i1460, align 8
  %463 = add i64 %455, 17
  store i64 %463, i64* %3, align 8
  %464 = inttoptr i64 %461 to i64*
  store i64 %462, i64* %464, align 8
  %465 = load i64, i64* %R8.i1452, align 8
  %466 = load i64, i64* %3, align 8
  store i64 %465, i64* %RDX.i1460, align 8
  %467 = load i64, i64* %RBP.i, align 8
  %468 = add i64 %467, -4376
  %469 = load i64, i64* %RCX.i1483, align 8
  %470 = add i64 %466, 10
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %468 to i64*
  store i64 %469, i64* %471, align 8
  %472 = load i64, i64* %199, align 8
  %473 = load i64, i64* %3, align 8
  store i64 %472, i64* %RCX.i1483, align 8
  %474 = load i64, i64* %76, align 8
  store i64 %474, i64* %R8.i1452, align 8
  %475 = load i64, i64* %83, align 8
  store i64 %475, i64* %199, align 8
  %476 = bitcast i64* %6 to i64**
  %477 = load i64*, i64** %476, align 8
  %478 = load i64, i64* %RBX.i1512, align 8
  %479 = add i64 %473, 13
  store i64 %479, i64* %3, align 8
  store i64 %478, i64* %477, align 8
  %480 = load i64, i64* %6, align 8
  %481 = add i64 %480, 8
  %482 = load i32, i32* %R14D.i1313, align 4
  %483 = load i64, i64* %3, align 8
  %484 = add i64 %483, 5
  store i64 %484, i64* %3, align 8
  %485 = inttoptr i64 %481 to i32*
  store i32 %482, i32* %485, align 4
  %486 = load i64, i64* %6, align 8
  %487 = add i64 %486, 16
  %488 = load i64, i64* %R15.i1372, align 8
  %489 = load i64, i64* %3, align 8
  %490 = add i64 %489, 5
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %487 to i64*
  store i64 %488, i64* %491, align 8
  %492 = load i64, i64* %6, align 8
  %493 = add i64 %492, 24
  %494 = load i64, i64* %R12.i1514, align 8
  %495 = load i64, i64* %3, align 8
  %496 = add i64 %495, 5
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %493 to i64*
  store i64 %494, i64* %497, align 8
  %498 = load i64, i64* %6, align 8
  %499 = add i64 %498, 32
  %500 = load i32, i32* %R13D.i1489, align 4
  %501 = load i64, i64* %3, align 8
  %502 = add i64 %501, 5
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %499 to i32*
  store i32 %500, i32* %503, align 4
  %504 = load i64, i64* %RBP.i, align 8
  %505 = add i64 %504, -4368
  %506 = load i64, i64* %3, align 8
  %507 = add i64 %506, 7
  store i64 %507, i64* %3, align 8
  %508 = inttoptr i64 %505 to i64*
  %509 = load i64, i64* %508, align 8
  store i64 %509, i64* %76, align 8
  %510 = load i64, i64* %6, align 8
  %511 = add i64 %510, 40
  %512 = add i64 %506, 12
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i64*
  store i64 %509, i64* %513, align 8
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -4376
  %516 = load i64, i64* %3, align 8
  %517 = add i64 %516, 7
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %515 to i64*
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %83, align 8
  %520 = load i64, i64* %6, align 8
  %521 = add i64 %520, 48
  %522 = add i64 %516, 12
  store i64 %522, i64* %3, align 8
  %523 = inttoptr i64 %521 to i64*
  store i64 %519, i64* %523, align 8
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -4352
  %526 = load i64, i64* %3, align 8
  %527 = add i64 %526, 7
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %525 to i64*
  %529 = load i64, i64* %528, align 8
  store i64 %529, i64* %RBX.i1512, align 8
  %530 = load i64, i64* %6, align 8
  %531 = add i64 %530, 56
  %532 = add i64 %526, 12
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i64*
  store i64 %529, i64* %533, align 8
  %534 = load i64, i64* %6, align 8
  %535 = add i64 %534, 64
  %536 = load i32, i32* %EAX.i1471, align 4
  %537 = load i64, i64* %3, align 8
  %538 = add i64 %537, 4
  store i64 %538, i64* %3, align 8
  %539 = inttoptr i64 %535 to i32*
  store i32 %536, i32* %539, align 4
  %540 = load i64, i64* %3, align 8
  %541 = add i64 %540, 2633
  %542 = add i64 %540, 5
  %543 = load i64, i64* %6, align 8
  %544 = add i64 %543, -8
  %545 = inttoptr i64 %544 to i64*
  store i64 %542, i64* %545, align 8
  store i64 %544, i64* %6, align 8
  store i64 %541, i64* %3, align 8
  %call2_47b117 = tail call %struct.Memory* @sub_47bb60.superstring_add_string(%struct.State* nonnull %0, i64 %541, %struct.Memory* %314)
  %546 = load i64, i64* %RBP.i, align 8
  %547 = add i64 %546, -2780
  %548 = load i64, i64* %3, align 8
  %549 = add i64 %548, 10
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %547 to i32*
  store i32 0, i32* %550, align 4
  %EDX.i1195 = bitcast %union.anon* %128 to i32*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8B.i1041 = bitcast %union.anon* %144 to i8*
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_47b126

block_.L_47b126:                                  ; preds = %block_.L_47bb27, %block_.L_47b04c
  %552 = phi i64 [ %.pre65, %block_.L_47b04c ], [ %3268, %block_.L_47bb27 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_47b117, %block_.L_47b04c ], [ %MEMORY.4, %block_.L_47bb27 ]
  %553 = load i64, i64* %RBP.i, align 8
  %554 = add i64 %553, -2780
  %555 = add i64 %552, 6
  store i64 %555, i64* %3, align 8
  %556 = inttoptr i64 %554 to i32*
  %557 = load i32, i32* %556, align 4
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX.i1507, align 8
  %559 = add i64 %553, -120
  %560 = add i64 %552, 9
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %559 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = sub i32 %557, %562
  %564 = icmp ult i32 %557, %562
  %565 = zext i1 %564 to i8
  store i8 %565, i8* %42, align 1
  %566 = and i32 %563, 255
  %567 = tail call i32 @llvm.ctpop.i32(i32 %566)
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  %570 = xor i8 %569, 1
  store i8 %570, i8* %49, align 1
  %571 = xor i32 %562, %557
  %572 = xor i32 %571, %563
  %573 = lshr i32 %572, 4
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  store i8 %575, i8* %55, align 1
  %576 = icmp eq i32 %563, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %58, align 1
  %578 = lshr i32 %563, 31
  %579 = trunc i32 %578 to i8
  store i8 %579, i8* %61, align 1
  %580 = lshr i32 %557, 31
  %581 = lshr i32 %562, 31
  %582 = xor i32 %581, %580
  %583 = xor i32 %578, %580
  %584 = add nuw nsw i32 %583, %582
  %585 = icmp eq i32 %584, 2
  %586 = zext i1 %585 to i8
  store i8 %586, i8* %67, align 1
  %587 = icmp ne i8 %579, 0
  %588 = xor i1 %587, %585
  %.v93 = select i1 %588, i64 15, i64 2586
  %589 = add i64 %552, %.v93
  store i64 %589, i64* %3, align 8
  br i1 %588, label %block_47b135, label %block_.L_47bb40.loopexit

block_47b135:                                     ; preds = %block_.L_47b126
  %590 = add i64 %589, 7
  store i64 %590, i64* %3, align 8
  %591 = load i32, i32* %556, align 4
  %592 = sext i32 %591 to i64
  store i64 %592, i64* %RAX.i1507, align 8
  %593 = shl nsw i64 %592, 2
  %594 = add i64 %553, -1568
  %595 = add i64 %594, %593
  %596 = add i64 %589, 14
  store i64 %596, i64* %3, align 8
  %597 = inttoptr i64 %595 to i32*
  %598 = load i32, i32* %597, align 4
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RCX.i1483, align 8
  %600 = add i64 %553, -2792
  %601 = add i64 %589, 20
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  store i32 %598, i32* %602, align 4
  %603 = load i64, i64* %RBP.i, align 8
  %604 = add i64 %603, -2772
  %605 = load i64, i64* %3, align 8
  %606 = add i64 %605, 10
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %604 to i32*
  store i32 0, i32* %607, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_47b153

block_.L_47b153:                                  ; preds = %block_.L_47bb13, %block_47b135
  %608 = phi i64 [ %.pre66, %block_47b135 ], [ %3238, %block_.L_47bb13 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_47b135 ], [ %MEMORY.23, %block_.L_47bb13 ]
  %609 = load i64, i64* %RBP.i, align 8
  %610 = add i64 %609, -2772
  %611 = add i64 %608, 7
  store i64 %611, i64* %3, align 8
  %612 = inttoptr i64 %610 to i32*
  %613 = load i32, i32* %612, align 4
  %614 = add i32 %613, -4
  %615 = icmp ult i32 %613, 4
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %42, align 1
  %617 = and i32 %614, 255
  %618 = tail call i32 @llvm.ctpop.i32(i32 %617)
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  %621 = xor i8 %620, 1
  store i8 %621, i8* %49, align 1
  %622 = xor i32 %614, %613
  %623 = lshr i32 %622, 4
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  store i8 %625, i8* %55, align 1
  %626 = icmp eq i32 %614, 0
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %58, align 1
  %628 = lshr i32 %614, 31
  %629 = trunc i32 %628 to i8
  store i8 %629, i8* %61, align 1
  %630 = lshr i32 %613, 31
  %631 = xor i32 %628, %630
  %632 = add nuw nsw i32 %631, %630
  %633 = icmp eq i32 %632, 2
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %67, align 1
  %635 = icmp ne i8 %629, 0
  %636 = xor i1 %635, %633
  %.v94 = select i1 %636, i64 13, i64 2516
  %637 = add i64 %608, %.v94
  %638 = add i64 %637, 5
  store i64 %638, i64* %3, align 8
  br i1 %636, label %block_47b160, label %block_.L_47bb27

block_47b160:                                     ; preds = %block_.L_47b153
  store i64 4, i64* %RAX.i1507, align 8
  %639 = add i64 %637, 12
  store i64 %639, i64* %3, align 8
  %640 = load i32, i32* %612, align 4
  %641 = sext i32 %640 to i64
  store i64 %641, i64* %RCX.i1483, align 8
  %642 = shl nsw i64 %641, 2
  %643 = add nsw i64 %642, 8053168
  %644 = add i64 %637, 19
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RDX.i1460, align 8
  %648 = add i64 %609, -2796
  %649 = add i64 %637, 25
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  store i32 %646, i32* %650, align 4
  %651 = load i64, i64* %RBP.i, align 8
  %652 = add i64 %651, -2772
  %653 = load i64, i64* %3, align 8
  %654 = add i64 %653, 6
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %652 to i32*
  %656 = load i32, i32* %655, align 4
  %657 = add i32 %656, 1
  %658 = zext i32 %657 to i64
  store i64 %658, i64* %RDX.i1460, align 8
  %659 = icmp eq i32 %656, -1
  %660 = icmp eq i32 %657, 0
  %661 = or i1 %659, %660
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %42, align 1
  %663 = and i32 %657, 255
  %664 = tail call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  store i8 %667, i8* %49, align 1
  %668 = xor i32 %657, %656
  %669 = lshr i32 %668, 4
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  store i8 %671, i8* %55, align 1
  %672 = zext i1 %660 to i8
  store i8 %672, i8* %58, align 1
  %673 = lshr i32 %657, 31
  %674 = trunc i32 %673 to i8
  store i8 %674, i8* %61, align 1
  %675 = lshr i32 %656, 31
  %676 = xor i32 %673, %675
  %677 = add nuw nsw i32 %676, %673
  %678 = icmp eq i32 %677, 2
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %67, align 1
  %680 = add i64 %651, -4380
  %681 = load i32, i32* %EAX.i1471, align 4
  %682 = add i64 %653, 15
  store i64 %682, i64* %3, align 8
  %683 = inttoptr i64 %680 to i32*
  store i32 %681, i32* %683, align 4
  %684 = load i32, i32* %EDX.i1195, align 4
  %685 = zext i32 %684 to i64
  %686 = load i64, i64* %3, align 8
  store i64 %685, i64* %RAX.i1507, align 8
  %687 = sext i32 %684 to i64
  %688 = lshr i64 %687, 32
  store i64 %688, i64* %551, align 8
  %689 = load i64, i64* %RBP.i, align 8
  %690 = add i64 %689, -4380
  %691 = add i64 %686, 9
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RSI.i1463, align 8
  %695 = add i64 %686, 11
  store i64 %695, i64* %3, align 8
  %696 = sext i32 %693 to i64
  %697 = shl nuw i64 %688, 32
  %698 = or i64 %697, %685
  %699 = sdiv i64 %698, %696
  %700 = shl i64 %699, 32
  %701 = ashr exact i64 %700, 32
  %702 = icmp eq i64 %699, %701
  br i1 %702, label %705, label %703

; <label>:703:                                    ; preds = %block_47b160
  %704 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %695, %struct.Memory* %MEMORY.4)
  %.pre67 = load i32, i32* %EDX.i1195, align 4
  %.pre68 = load i64, i64* %3, align 8
  %.pre69 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:705:                                    ; preds = %block_47b160
  %706 = srem i64 %698, %696
  %707 = and i64 %699, 4294967295
  store i64 %707, i64* %RAX.i1507, align 8
  %708 = and i64 %706, 4294967295
  store i64 %708, i64* %RDX.i1460, align 8
  store i8 0, i8* %42, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %709 = trunc i64 %706 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %705, %703
  %710 = phi i64 [ %.pre69, %703 ], [ %689, %705 ]
  %711 = phi i64 [ %.pre68, %703 ], [ %695, %705 ]
  %712 = phi i32 [ %.pre67, %703 ], [ %709, %705 ]
  %713 = phi %struct.Memory* [ %704, %703 ], [ %MEMORY.4, %705 ]
  %714 = sext i32 %712 to i64
  store i64 %714, i64* %RCX.i1483, align 8
  %715 = shl nsw i64 %714, 2
  %716 = add nsw i64 %715, 8053168
  %717 = add i64 %711, 10
  store i64 %717, i64* %3, align 8
  %718 = inttoptr i64 %716 to i32*
  %719 = load i32, i32* %718, align 4
  %720 = zext i32 %719 to i64
  store i64 %720, i64* %RDX.i1460, align 8
  %721 = add i64 %710, -2800
  %722 = add i64 %711, 16
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  store i32 %719, i32* %723, align 4
  %724 = load i64, i64* %RBP.i, align 8
  %725 = add i64 %724, -2792
  %726 = load i64, i64* %3, align 8
  %727 = add i64 %726, 6
  store i64 %727, i64* %3, align 8
  %728 = inttoptr i64 %725 to i32*
  %729 = load i32, i32* %728, align 4
  %730 = zext i32 %729 to i64
  store i64 %730, i64* %RDX.i1460, align 8
  %731 = add i64 %724, -2796
  %732 = add i64 %726, 12
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i32*
  %734 = load i32, i32* %733, align 4
  %735 = add i32 %734, %729
  %736 = zext i32 %735 to i64
  store i64 %736, i64* %RDX.i1460, align 8
  %737 = icmp ult i32 %735, %729
  %738 = icmp ult i32 %735, %734
  %739 = or i1 %737, %738
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %42, align 1
  %741 = and i32 %735, 255
  %742 = tail call i32 @llvm.ctpop.i32(i32 %741)
  %743 = trunc i32 %742 to i8
  %744 = and i8 %743, 1
  %745 = xor i8 %744, 1
  store i8 %745, i8* %49, align 1
  %746 = xor i32 %734, %729
  %747 = xor i32 %746, %735
  %748 = lshr i32 %747, 4
  %749 = trunc i32 %748 to i8
  %750 = and i8 %749, 1
  store i8 %750, i8* %55, align 1
  %751 = icmp eq i32 %735, 0
  %752 = zext i1 %751 to i8
  store i8 %752, i8* %58, align 1
  %753 = lshr i32 %735, 31
  %754 = trunc i32 %753 to i8
  store i8 %754, i8* %61, align 1
  %755 = lshr i32 %729, 31
  %756 = lshr i32 %734, 31
  %757 = xor i32 %753, %755
  %758 = xor i32 %753, %756
  %759 = add nuw nsw i32 %757, %758
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %67, align 1
  %762 = add i64 %724, -2804
  %763 = add i64 %726, 18
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  store i32 %735, i32* %764, align 4
  %765 = load i64, i64* %RBP.i, align 8
  %766 = add i64 %765, -2792
  %767 = load i64, i64* %3, align 8
  %768 = add i64 %767, 6
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %766 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RDX.i1460, align 8
  %772 = add i64 %765, -2796
  %773 = add i64 %767, 12
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = add i32 %775, %770
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %RDX.i1460, align 8
  %778 = icmp ult i32 %776, %770
  %779 = icmp ult i32 %776, %775
  %780 = or i1 %778, %779
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %42, align 1
  %782 = and i32 %776, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %49, align 1
  %787 = xor i32 %775, %770
  %788 = xor i32 %787, %776
  %789 = lshr i32 %788, 4
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  store i8 %791, i8* %55, align 1
  %792 = icmp eq i32 %776, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %58, align 1
  %794 = lshr i32 %776, 31
  %795 = trunc i32 %794 to i8
  store i8 %795, i8* %61, align 1
  %796 = lshr i32 %770, 31
  %797 = lshr i32 %775, 31
  %798 = xor i32 %794, %796
  %799 = xor i32 %794, %797
  %800 = add nuw nsw i32 %798, %799
  %801 = icmp eq i32 %800, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %67, align 1
  %803 = add i64 %765, -2800
  %804 = add i64 %767, 18
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = add i32 %806, %776
  %808 = zext i32 %807 to i64
  store i64 %808, i64* %RDX.i1460, align 8
  %809 = icmp ult i32 %807, %776
  %810 = icmp ult i32 %807, %806
  %811 = or i1 %809, %810
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %42, align 1
  %813 = and i32 %807, 255
  %814 = tail call i32 @llvm.ctpop.i32(i32 %813)
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = xor i8 %816, 1
  store i8 %817, i8* %49, align 1
  %818 = xor i32 %806, %776
  %819 = xor i32 %818, %807
  %820 = lshr i32 %819, 4
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  store i8 %822, i8* %55, align 1
  %823 = icmp eq i32 %807, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %58, align 1
  %825 = lshr i32 %807, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %61, align 1
  %827 = lshr i32 %806, 31
  %828 = xor i32 %825, %794
  %829 = xor i32 %825, %827
  %830 = add nuw nsw i32 %828, %829
  %831 = icmp eq i32 %830, 2
  %832 = zext i1 %831 to i8
  store i8 %832, i8* %67, align 1
  %833 = add i64 %765, -2808
  %834 = add i64 %767, 24
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  store i32 %807, i32* %835, align 4
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -2792
  %838 = load i64, i64* %3, align 8
  %839 = add i64 %838, 6
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %837 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RDX.i1460, align 8
  %843 = add i64 %836, -2796
  %844 = add i64 %838, 12
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = shl i32 %846, 1
  %848 = zext i32 %847 to i64
  store i64 %848, i64* %RDI.i1435, align 8
  %849 = add i32 %847, %841
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RDX.i1460, align 8
  %851 = icmp ult i32 %849, %841
  %852 = icmp ult i32 %849, %847
  %853 = or i1 %851, %852
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %42, align 1
  %855 = and i32 %849, 255
  %856 = tail call i32 @llvm.ctpop.i32(i32 %855)
  %857 = trunc i32 %856 to i8
  %858 = and i8 %857, 1
  %859 = xor i8 %858, 1
  store i8 %859, i8* %49, align 1
  %860 = xor i32 %847, %841
  %861 = xor i32 %860, %849
  %862 = lshr i32 %861, 4
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  store i8 %864, i8* %55, align 1
  %865 = icmp eq i32 %849, 0
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %58, align 1
  %867 = lshr i32 %849, 31
  %868 = trunc i32 %867 to i8
  store i8 %868, i8* %61, align 1
  %869 = lshr i32 %841, 31
  %870 = lshr i32 %846, 30
  %871 = and i32 %870, 1
  %872 = xor i32 %867, %869
  %873 = xor i32 %867, %871
  %874 = add nuw nsw i32 %872, %873
  %875 = icmp eq i32 %874, 2
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %67, align 1
  %877 = add i64 %836, -2812
  %878 = add i64 %838, 22
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  store i32 %849, i32* %879, align 4
  %880 = load i64, i64* %RBP.i, align 8
  %881 = add i64 %880, -2792
  %882 = load i64, i64* %3, align 8
  %883 = add i64 %882, 6
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %881 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = zext i32 %885 to i64
  store i64 %886, i64* %RDX.i1460, align 8
  %887 = add i64 %880, -2796
  %888 = add i64 %882, 12
  store i64 %888, i64* %3, align 8
  %889 = inttoptr i64 %887 to i32*
  %890 = load i32, i32* %889, align 4
  %891 = add i32 %890, %885
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %RDX.i1460, align 8
  %893 = icmp ult i32 %891, %885
  %894 = icmp ult i32 %891, %890
  %895 = or i1 %893, %894
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %42, align 1
  %897 = and i32 %891, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %49, align 1
  %902 = xor i32 %890, %885
  %903 = xor i32 %902, %891
  %904 = lshr i32 %903, 4
  %905 = trunc i32 %904 to i8
  %906 = and i8 %905, 1
  store i8 %906, i8* %55, align 1
  %907 = icmp eq i32 %891, 0
  %908 = zext i1 %907 to i8
  store i8 %908, i8* %58, align 1
  %909 = lshr i32 %891, 31
  %910 = trunc i32 %909 to i8
  store i8 %910, i8* %61, align 1
  %911 = lshr i32 %885, 31
  %912 = lshr i32 %890, 31
  %913 = xor i32 %909, %911
  %914 = xor i32 %909, %912
  %915 = add nuw nsw i32 %913, %914
  %916 = icmp eq i32 %915, 2
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %67, align 1
  %918 = add i64 %880, -2800
  %919 = add i64 %882, 18
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i32*
  %921 = load i32, i32* %920, align 4
  %922 = sub i32 %891, %921
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RDX.i1460, align 8
  %924 = icmp ult i32 %891, %921
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %42, align 1
  %926 = and i32 %922, 255
  %927 = tail call i32 @llvm.ctpop.i32(i32 %926)
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  store i8 %930, i8* %49, align 1
  %931 = xor i32 %921, %891
  %932 = xor i32 %931, %922
  %933 = lshr i32 %932, 4
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  store i8 %935, i8* %55, align 1
  %936 = icmp eq i32 %922, 0
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %58, align 1
  %938 = lshr i32 %922, 31
  %939 = trunc i32 %938 to i8
  store i8 %939, i8* %61, align 1
  %940 = lshr i32 %921, 31
  %941 = xor i32 %940, %909
  %942 = xor i32 %938, %909
  %943 = add nuw nsw i32 %942, %941
  %944 = icmp eq i32 %943, 2
  %945 = zext i1 %944 to i8
  store i8 %945, i8* %67, align 1
  %946 = add i64 %880, -2816
  %947 = add i64 %882, 24
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  store i32 %922, i32* %948, align 4
  %949 = load i64, i64* %RBP.i, align 8
  %950 = add i64 %949, -2792
  %951 = load i64, i64* %3, align 8
  %952 = add i64 %951, 6
  store i64 %952, i64* %3, align 8
  %953 = inttoptr i64 %950 to i32*
  %954 = load i32, i32* %953, align 4
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RDX.i1460, align 8
  %956 = add i64 %949, -2800
  %957 = add i64 %951, 12
  store i64 %957, i64* %3, align 8
  %958 = inttoptr i64 %956 to i32*
  %959 = load i32, i32* %958, align 4
  %960 = shl i32 %959, 1
  %961 = zext i32 %960 to i64
  store i64 %961, i64* %RDI.i1435, align 8
  %962 = add i32 %960, %954
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RDX.i1460, align 8
  %964 = icmp ult i32 %962, %954
  %965 = icmp ult i32 %962, %960
  %966 = or i1 %964, %965
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %42, align 1
  %968 = and i32 %962, 255
  %969 = tail call i32 @llvm.ctpop.i32(i32 %968)
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  store i8 %972, i8* %49, align 1
  %973 = xor i32 %960, %954
  %974 = xor i32 %973, %962
  %975 = lshr i32 %974, 4
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  store i8 %977, i8* %55, align 1
  %978 = icmp eq i32 %962, 0
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %58, align 1
  %980 = lshr i32 %962, 31
  %981 = trunc i32 %980 to i8
  store i8 %981, i8* %61, align 1
  %982 = lshr i32 %954, 31
  %983 = lshr i32 %959, 30
  %984 = and i32 %983, 1
  %985 = xor i32 %980, %982
  %986 = xor i32 %980, %984
  %987 = add nuw nsw i32 %985, %986
  %988 = icmp eq i32 %987, 2
  %989 = zext i1 %988 to i8
  store i8 %989, i8* %67, align 1
  %990 = add i64 %949, -2820
  %991 = add i64 %951, 22
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  store i32 %962, i32* %992, align 4
  %993 = load i64, i64* %RBP.i, align 8
  %994 = add i64 %993, -2792
  %995 = load i64, i64* %3, align 8
  %996 = add i64 %995, 6
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %994 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RDX.i1460, align 8
  %1000 = add i64 %993, -2796
  %1001 = add i64 %995, 12
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = add i32 %1003, %998
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %RDX.i1460, align 8
  %1006 = icmp ult i32 %1004, %998
  %1007 = icmp ult i32 %1004, %1003
  %1008 = or i1 %1006, %1007
  %1009 = zext i1 %1008 to i8
  store i8 %1009, i8* %42, align 1
  %1010 = and i32 %1004, 255
  %1011 = tail call i32 @llvm.ctpop.i32(i32 %1010)
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  %1014 = xor i8 %1013, 1
  store i8 %1014, i8* %49, align 1
  %1015 = xor i32 %1003, %998
  %1016 = xor i32 %1015, %1004
  %1017 = lshr i32 %1016, 4
  %1018 = trunc i32 %1017 to i8
  %1019 = and i8 %1018, 1
  store i8 %1019, i8* %55, align 1
  %1020 = icmp eq i32 %1004, 0
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %58, align 1
  %1022 = lshr i32 %1004, 31
  %1023 = trunc i32 %1022 to i8
  store i8 %1023, i8* %61, align 1
  %1024 = lshr i32 %998, 31
  %1025 = lshr i32 %1003, 31
  %1026 = xor i32 %1022, %1024
  %1027 = xor i32 %1022, %1025
  %1028 = add nuw nsw i32 %1026, %1027
  %1029 = icmp eq i32 %1028, 2
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %67, align 1
  %1031 = add i64 %993, -2800
  %1032 = add i64 %995, 18
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = shl i32 %1034, 1
  %1036 = zext i32 %1035 to i64
  store i64 %1036, i64* %RDI.i1435, align 8
  %1037 = add i32 %1035, %1004
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RDX.i1460, align 8
  %1039 = icmp ult i32 %1037, %1004
  %1040 = icmp ult i32 %1037, %1035
  %1041 = or i1 %1039, %1040
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %42, align 1
  %1043 = and i32 %1037, 255
  %1044 = tail call i32 @llvm.ctpop.i32(i32 %1043)
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  %1047 = xor i8 %1046, 1
  store i8 %1047, i8* %49, align 1
  %1048 = xor i32 %1035, %1004
  %1049 = xor i32 %1048, %1037
  %1050 = lshr i32 %1049, 4
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  store i8 %1052, i8* %55, align 1
  %1053 = icmp eq i32 %1037, 0
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %58, align 1
  %1055 = lshr i32 %1037, 31
  %1056 = trunc i32 %1055 to i8
  store i8 %1056, i8* %61, align 1
  %1057 = lshr i32 %1034, 30
  %1058 = and i32 %1057, 1
  %1059 = xor i32 %1055, %1022
  %1060 = xor i32 %1055, %1058
  %1061 = add nuw nsw i32 %1059, %1060
  %1062 = icmp eq i32 %1061, 2
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %67, align 1
  %1064 = load i64, i64* %RBP.i, align 8
  %1065 = add i64 %1064, -2824
  %1066 = add i64 %995, 28
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  store i32 %1037, i32* %1067, align 4
  %1068 = load i64, i64* %RBP.i, align 8
  %1069 = add i64 %1068, -2792
  %1070 = load i64, i64* %3, align 8
  %1071 = add i64 %1070, 6
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1069 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = zext i32 %1073 to i64
  store i64 %1074, i64* %RDX.i1460, align 8
  %1075 = add i64 %1068, -2800
  %1076 = add i64 %1070, 12
  store i64 %1076, i64* %3, align 8
  %1077 = inttoptr i64 %1075 to i32*
  %1078 = load i32, i32* %1077, align 4
  %1079 = add i32 %1078, %1073
  %1080 = zext i32 %1079 to i64
  store i64 %1080, i64* %RDX.i1460, align 8
  %1081 = icmp ult i32 %1079, %1073
  %1082 = icmp ult i32 %1079, %1078
  %1083 = or i1 %1081, %1082
  %1084 = zext i1 %1083 to i8
  store i8 %1084, i8* %42, align 1
  %1085 = and i32 %1079, 255
  %1086 = tail call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %49, align 1
  %1090 = xor i32 %1078, %1073
  %1091 = xor i32 %1090, %1079
  %1092 = lshr i32 %1091, 4
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  store i8 %1094, i8* %55, align 1
  %1095 = icmp eq i32 %1079, 0
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %58, align 1
  %1097 = lshr i32 %1079, 31
  %1098 = trunc i32 %1097 to i8
  store i8 %1098, i8* %61, align 1
  %1099 = lshr i32 %1073, 31
  %1100 = lshr i32 %1078, 31
  %1101 = xor i32 %1097, %1099
  %1102 = xor i32 %1097, %1100
  %1103 = add nuw nsw i32 %1101, %1102
  %1104 = icmp eq i32 %1103, 2
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %67, align 1
  %1106 = add i64 %1068, -2828
  %1107 = add i64 %1070, 18
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  store i32 %1079, i32* %1108, align 4
  %1109 = load i64, i64* %RBP.i, align 8
  %1110 = add i64 %1109, -2804
  %1111 = load i64, i64* %3, align 8
  %1112 = add i64 %1111, 7
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1110 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = sext i32 %1114 to i64
  store i64 %1115, i64* %RCX.i1483, align 8
  %1116 = add nsw i64 %1115, 12099168
  %1117 = add i64 %1111, 15
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i8*
  %1119 = load i8, i8* %1118, align 1
  %1120 = zext i8 %1119 to i64
  store i64 %1120, i64* %RDX.i1460, align 8
  %1121 = zext i8 %1119 to i32
  %1122 = add nsw i32 %1121, -3
  %1123 = icmp ult i8 %1119, 3
  %1124 = zext i1 %1123 to i8
  store i8 %1124, i8* %42, align 1
  %1125 = and i32 %1122, 255
  %1126 = tail call i32 @llvm.ctpop.i32(i32 %1125)
  %1127 = trunc i32 %1126 to i8
  %1128 = and i8 %1127, 1
  %1129 = xor i8 %1128, 1
  store i8 %1129, i8* %49, align 1
  %1130 = xor i32 %1122, %1121
  %1131 = lshr i32 %1130, 4
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  store i8 %1133, i8* %55, align 1
  %1134 = icmp eq i32 %1122, 0
  %1135 = zext i1 %1134 to i8
  store i8 %1135, i8* %58, align 1
  %1136 = lshr i32 %1122, 31
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v95 = select i1 %1134, i64 24, i64 29
  %1138 = add i64 %1111, %.v95
  store i64 %1138, i64* %3, align 8
  br i1 %1134, label %block_47b25a, label %block_.L_47b25f

block_47b25a:                                     ; preds = %routine_idivl__esi.exit
  %1139 = add i64 %1138, 2233
  br label %block_.L_47bb13

block_.L_47b25f:                                  ; preds = %routine_idivl__esi.exit
  %1140 = add i64 %1138, 7
  store i64 %1140, i64* %3, align 8
  %1141 = load i32, i32* %1113, align 4
  %1142 = sext i32 %1141 to i64
  store i64 %1142, i64* %RAX.i1507, align 8
  %1143 = add nsw i64 %1142, 12099168
  %1144 = add i64 %1138, 15
  store i64 %1144, i64* %3, align 8
  %1145 = inttoptr i64 %1143 to i8*
  %1146 = load i8, i8* %1145, align 1
  %1147 = zext i8 %1146 to i64
  store i64 %1147, i64* %RCX.i1483, align 8
  %1148 = zext i8 %1146 to i32
  store i8 0, i8* %42, align 1
  %1149 = tail call i32 @llvm.ctpop.i32(i32 %1148)
  %1150 = trunc i32 %1149 to i8
  %1151 = and i8 %1150, 1
  %1152 = xor i8 %1151, 1
  store i8 %1152, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %1153 = icmp eq i8 %1146, 0
  %1154 = zext i1 %1153 to i8
  store i8 %1154, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v96 = select i1 %1153, i64 24, i64 906
  %1155 = add i64 %1138, %.v96
  store i64 %1155, i64* %3, align 8
  br i1 %1153, label %block_47b277, label %block_.L_47b5e9

block_47b277:                                     ; preds = %block_.L_47b25f
  %1156 = add i64 %1109, -116
  %1157 = add i64 %1155, 4
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = add i32 %1159, -2
  %1161 = icmp ult i32 %1159, 2
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %42, align 1
  %1163 = and i32 %1160, 255
  %1164 = tail call i32 @llvm.ctpop.i32(i32 %1163)
  %1165 = trunc i32 %1164 to i8
  %1166 = and i8 %1165, 1
  %1167 = xor i8 %1166, 1
  store i8 %1167, i8* %49, align 1
  %1168 = xor i32 %1160, %1159
  %1169 = lshr i32 %1168, 4
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  store i8 %1171, i8* %55, align 1
  %1172 = icmp eq i32 %1160, 0
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %58, align 1
  %1174 = lshr i32 %1160, 31
  %1175 = trunc i32 %1174 to i8
  store i8 %1175, i8* %61, align 1
  %1176 = lshr i32 %1159, 31
  %1177 = xor i32 %1174, %1176
  %1178 = add nuw nsw i32 %1177, %1176
  %1179 = icmp eq i32 %1178, 2
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %67, align 1
  %.v120 = select i1 %1172, i64 10, i64 62
  %1181 = add i64 %1155, %.v120
  store i64 %1181, i64* %3, align 8
  br i1 %1172, label %block_47b281, label %block_.L_47b2b5

block_47b281:                                     ; preds = %block_47b277
  store i64 2, i64* %RDX.i1460, align 8
  %1182 = zext i32 %1141 to i64
  %1183 = xor i64 %1182, %1142
  %1184 = trunc i64 %1183 to i32
  %1185 = and i64 %1183, 4294967295
  store i64 %1185, i64* %RAX.i1507, align 8
  store i8 0, i8* %42, align 1
  %1186 = and i32 %1184, 255
  %1187 = tail call i32 @llvm.ctpop.i32(i32 %1186)
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = xor i8 %1189, 1
  store i8 %1190, i8* %49, align 1
  %1191 = icmp eq i32 %1184, 0
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %58, align 1
  %1193 = lshr i32 %1184, 31
  %1194 = trunc i32 %1193 to i8
  store i8 %1194, i8* %61, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %55, align 1
  %1195 = and i64 %1183, 4294967295
  store i64 %1195, i64* %RCX.i1483, align 8
  %1196 = add i64 %1181, 15
  store i64 %1196, i64* %3, align 8
  %1197 = load i32, i32* %1113, align 4
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RDI.i1435, align 8
  %1199 = add i64 %1109, -2788
  %1200 = add i64 %1181, 21
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = zext i32 %1202 to i64
  store i64 %1203, i64* %RSI.i1463, align 8
  %1204 = add i64 %1181, -433361
  %1205 = add i64 %1181, 26
  %1206 = load i64, i64* %6, align 8
  %1207 = add i64 %1206, -8
  %1208 = inttoptr i64 %1207 to i64*
  store i64 %1205, i64* %1208, align 8
  store i64 %1207, i64* %6, align 8
  store i64 %1204, i64* %3, align 8
  %call2_47b296 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %1204, %struct.Memory* %713)
  %1209 = load i32, i32* %EAX.i1471, align 4
  %1210 = load i64, i64* %3, align 8
  %1211 = add i32 %1209, -2
  %1212 = lshr i32 %1211, 31
  %1213 = lshr i32 %1209, 31
  %1214 = xor i32 %1212, %1213
  %1215 = add nuw nsw i32 %1214, %1213
  %1216 = icmp eq i32 %1215, 2
  %1217 = icmp ne i32 %1212, 0
  %1218 = xor i1 %1217, %1216
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %R8B.i1041, align 1
  store i8 0, i8* %42, align 1
  %1220 = zext i1 %1218 to i32
  %1221 = tail call i32 @llvm.ctpop.i32(i32 %1220)
  %1222 = trunc i32 %1221 to i8
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %49, align 1
  %1224 = xor i1 %1218, true
  %1225 = zext i1 %1224 to i8
  store i8 %1225, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %55, align 1
  %1226 = zext i1 %1218 to i64
  store i64 %1226, i64* %RAX.i1507, align 8
  %1227 = load i64, i64* %RBP.i, align 8
  %1228 = add i64 %1227, -2832
  %1229 = zext i1 %1218 to i32
  %1230 = add i64 %1210, 21
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1228 to i32*
  store i32 %1229, i32* %1231, align 4
  %1232 = load i64, i64* %3, align 8
  %1233 = add i64 %1232, 28
  store i64 %1233, i64* %3, align 8
  br label %block_.L_47b2cc

block_.L_47b2b5:                                  ; preds = %block_47b277
  %1234 = add i64 %1181, 6
  store i64 %1234, i64* %3, align 8
  %1235 = load i32, i32* %1113, align 4
  %1236 = zext i32 %1235 to i64
  store i64 %1236, i64* %RDI.i1435, align 8
  %1237 = add i64 %1109, -2788
  %1238 = add i64 %1181, 12
  store i64 %1238, i64* %3, align 8
  %1239 = inttoptr i64 %1237 to i32*
  %1240 = load i32, i32* %1239, align 4
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RSI.i1463, align 8
  %1242 = add i64 %1181, -421909
  %1243 = add i64 %1181, 17
  %1244 = load i64, i64* %6, align 8
  %1245 = add i64 %1244, -8
  %1246 = inttoptr i64 %1245 to i64*
  store i64 %1243, i64* %1246, align 8
  store i64 %1245, i64* %6, align 8
  store i64 %1242, i64* %3, align 8
  %call2_47b2c1 = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %1242, %struct.Memory* %713)
  %1247 = load i64, i64* %RBP.i, align 8
  %1248 = add i64 %1247, -2832
  %1249 = load i32, i32* %EAX.i1471, align 4
  %1250 = load i64, i64* %3, align 8
  %1251 = add i64 %1250, 6
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1248 to i32*
  store i32 %1249, i32* %1252, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_47b2cc

block_.L_47b2cc:                                  ; preds = %block_.L_47b2b5, %block_47b281
  %1253 = phi i64 [ %.pre70, %block_.L_47b2b5 ], [ %1233, %block_47b281 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_47b2c1, %block_.L_47b2b5 ], [ %call2_47b296, %block_47b281 ]
  %1254 = load i64, i64* %RBP.i, align 8
  %1255 = add i64 %1254, -2832
  %1256 = add i64 %1253, 7
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i32*
  %1258 = load i32, i32* %1257, align 4
  store i8 0, i8* %42, align 1
  %1259 = and i32 %1258, 255
  %1260 = tail call i32 @llvm.ctpop.i32(i32 %1259)
  %1261 = trunc i32 %1260 to i8
  %1262 = and i8 %1261, 1
  %1263 = xor i8 %1262, 1
  store i8 %1263, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %1264 = icmp eq i32 %1258, 0
  %1265 = zext i1 %1264 to i8
  store i8 %1265, i8* %58, align 1
  %1266 = lshr i32 %1258, 31
  %1267 = trunc i32 %1266 to i8
  store i8 %1267, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v121 = select i1 %1264, i64 63, i64 13
  %1268 = add i64 %1253, %.v121
  store i64 %1268, i64* %3, align 8
  br i1 %1264, label %block_.L_47b30b, label %block_47b2d9

block_47b2d9:                                     ; preds = %block_.L_47b2cc
  %1269 = add i64 %1254, -116
  %1270 = add i64 %1268, 4
  store i64 %1270, i64* %3, align 8
  %1271 = inttoptr i64 %1269 to i32*
  %1272 = load i32, i32* %1271, align 4
  %1273 = add i32 %1272, -1
  %1274 = icmp eq i32 %1272, 0
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %42, align 1
  %1276 = and i32 %1273, 255
  %1277 = tail call i32 @llvm.ctpop.i32(i32 %1276)
  %1278 = trunc i32 %1277 to i8
  %1279 = and i8 %1278, 1
  %1280 = xor i8 %1279, 1
  store i8 %1280, i8* %49, align 1
  %1281 = xor i32 %1273, %1272
  %1282 = lshr i32 %1281, 4
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  store i8 %1284, i8* %55, align 1
  %1285 = icmp eq i32 %1273, 0
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %58, align 1
  %1287 = lshr i32 %1273, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %61, align 1
  %1289 = lshr i32 %1272, 31
  %1290 = xor i32 %1287, %1289
  %1291 = add nuw nsw i32 %1290, %1289
  %1292 = icmp eq i32 %1291, 2
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %67, align 1
  %.v122 = select i1 %1285, i64 10, i64 50
  %1294 = add i64 %1268, %.v122
  store i64 %1294, i64* %3, align 8
  br i1 %1285, label %block_47b2e3, label %block_.L_47b30b

block_47b2e3:                                     ; preds = %block_47b2d9
  store i64 0, i64* %RAX.i1507, align 8
  store i8 0, i8* %42, align 1
  store i8 1, i8* %49, align 1
  store i8 1, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %55, align 1
  store i64 0, i64* %RDX.i1460, align 8
  %1295 = add i64 %1254, -2804
  %1296 = add i64 %1294, 10
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i32*
  %1298 = load i32, i32* %1297, align 4
  %1299 = zext i32 %1298 to i64
  store i64 %1299, i64* %RDI.i1435, align 8
  %1300 = add i64 %1254, -2788
  %1301 = add i64 %1294, 16
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RSI.i1463, align 8
  %1305 = add i64 %1294, -442595
  %1306 = add i64 %1294, 21
  %1307 = load i64, i64* %6, align 8
  %1308 = add i64 %1307, -8
  %1309 = inttoptr i64 %1308 to i64*
  store i64 %1306, i64* %1309, align 8
  store i64 %1308, i64* %6, align 8
  store i64 %1305, i64* %3, align 8
  %call2_47b2f3 = tail call %struct.Memory* @sub_40f200.is_ko(%struct.State* nonnull %0, i64 %1305, %struct.Memory* %MEMORY.5)
  %1310 = load i32, i32* %EAX.i1471, align 4
  %1311 = load i64, i64* %3, align 8
  store i8 0, i8* %42, align 1
  %1312 = and i32 %1310, 255
  %1313 = tail call i32 @llvm.ctpop.i32(i32 %1312)
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  %1316 = xor i8 %1315, 1
  store i8 %1316, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %1317 = icmp eq i32 %1310, 0
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %58, align 1
  %1319 = lshr i32 %1310, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v130 = select i1 %1317, i64 19, i64 9
  %1321 = add i64 %1311, %.v130
  store i64 %1321, i64* %3, align 8
  br i1 %1317, label %block_.L_47b30b, label %block_47b301

block_47b301:                                     ; preds = %block_47b2e3
  %1322 = load i64, i64* %RBP.i, align 8
  %1323 = add i64 %1322, -2832
  %1324 = add i64 %1321, 10
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i32*
  store i32 0, i32* %1325, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_47b30b

block_.L_47b30b:                                  ; preds = %block_47b2d9, %block_47b301, %block_47b2e3, %block_.L_47b2cc
  %1326 = phi i64 [ %1268, %block_.L_47b2cc ], [ %1294, %block_47b2d9 ], [ %1321, %block_47b2e3 ], [ %.pre71, %block_47b301 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_.L_47b2cc ], [ %MEMORY.5, %block_47b2d9 ], [ %call2_47b2f3, %block_47b2e3 ], [ %call2_47b2f3, %block_47b301 ]
  %1327 = load i64, i64* %RBP.i, align 8
  %1328 = add i64 %1327, -2832
  %1329 = add i64 %1326, 7
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  store i8 0, i8* %42, align 1
  %1332 = and i32 %1331, 255
  %1333 = tail call i32 @llvm.ctpop.i32(i32 %1332)
  %1334 = trunc i32 %1333 to i8
  %1335 = and i8 %1334, 1
  %1336 = xor i8 %1335, 1
  store i8 %1336, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %1337 = icmp eq i32 %1331, 0
  %1338 = zext i1 %1337 to i8
  store i8 %1338, i8* %58, align 1
  %1339 = lshr i32 %1331, 31
  %1340 = trunc i32 %1339 to i8
  store i8 %1340, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v123 = select i1 %1337, i64 729, i64 13
  %1341 = add i64 %1326, %.v123
  store i64 %1341, i64* %3, align 8
  br i1 %1337, label %block_.L_47b5e4, label %block_47b318

block_47b318:                                     ; preds = %block_.L_47b30b
  %1342 = add i64 %1327, -2808
  %1343 = add i64 %1341, 7
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to i32*
  %1345 = load i32, i32* %1344, align 4
  %1346 = sext i32 %1345 to i64
  store i64 %1346, i64* %RAX.i1507, align 8
  %1347 = add nsw i64 %1346, 12099168
  %1348 = add i64 %1341, 15
  store i64 %1348, i64* %3, align 8
  %1349 = inttoptr i64 %1347 to i8*
  %1350 = load i8, i8* %1349, align 1
  %1351 = zext i8 %1350 to i64
  store i64 %1351, i64* %RCX.i1483, align 8
  %1352 = zext i8 %1350 to i32
  %1353 = add i64 %1327, -2784
  %1354 = add i64 %1341, 21
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  %1356 = load i32, i32* %1355, align 4
  %1357 = sub i32 %1352, %1356
  %1358 = icmp ult i32 %1352, %1356
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %42, align 1
  %1360 = and i32 %1357, 255
  %1361 = tail call i32 @llvm.ctpop.i32(i32 %1360)
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %49, align 1
  %1365 = xor i32 %1356, %1352
  %1366 = xor i32 %1365, %1357
  %1367 = lshr i32 %1366, 4
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  store i8 %1369, i8* %55, align 1
  %1370 = icmp eq i32 %1357, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %58, align 1
  %1372 = lshr i32 %1357, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %61, align 1
  %1374 = lshr i32 %1356, 31
  %1375 = add nuw nsw i32 %1372, %1374
  %1376 = icmp eq i32 %1375, 2
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %67, align 1
  %.v124 = select i1 %1370, i64 27, i64 237
  %1378 = add i64 %1341, %.v124
  store i64 %1378, i64* %3, align 8
  br i1 %1370, label %block_47b333, label %block_.L_47b405

block_47b333:                                     ; preds = %block_47b318
  %1379 = add i64 %1378, 7
  store i64 %1379, i64* %3, align 8
  %1380 = load i32, i32* %1344, align 4
  %1381 = sext i32 %1380 to i64
  store i64 %1381, i64* %RAX.i1507, align 8
  %1382 = add nsw i64 %1381, -1968
  %1383 = add i64 %1382, %1327
  %1384 = add i64 %1378, 15
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i8*
  %1386 = load i8, i8* %1385, align 1
  store i8 0, i8* %42, align 1
  %1387 = zext i8 %1386 to i32
  %1388 = tail call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = and i8 %1389, 1
  %1391 = xor i8 %1390, 1
  store i8 %1391, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %1392 = icmp eq i8 %1386, 0
  %1393 = zext i1 %1392 to i8
  store i8 %1393, i8* %58, align 1
  %1394 = lshr i8 %1386, 7
  store i8 %1394, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v129 = select i1 %1392, i64 21, i64 210
  %1395 = add i64 %1378, %.v129
  store i64 %1395, i64* %3, align 8
  br i1 %1392, label %block_47b348, label %block_.L_47b405

block_47b348:                                     ; preds = %block_47b333
  %1396 = add i64 %1327, -120
  store i64 %1396, i64* %RSI.i1463, align 8
  store i64 1, i64* %RAX.i1507, align 8
  %1397 = add i64 %1327, -2768
  store i64 %1397, i64* %RCX.i1483, align 8
  %1398 = add i64 %1327, -2368
  store i64 %1398, i64* %RDX.i1460, align 8
  %1399 = add i64 %1327, -1968
  store i64 %1399, i64* %RDI.i1435, align 8
  %1400 = add i64 %1327, -1568
  store i64 %1400, i64* %R8.i1452, align 8
  %1401 = add i64 %1395, 44
  store i64 %1401, i64* %3, align 8
  %1402 = load i32, i32* %1344, align 4
  %1403 = zext i32 %1402 to i64
  store i64 %1403, i64* %199, align 8
  %1404 = add i64 %1327, -56
  %1405 = add i64 %1395, 48
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i64*
  %1407 = load i64, i64* %1406, align 8
  store i64 %1407, i64* %76, align 8
  %1408 = add i64 %1327, -64
  %1409 = add i64 %1395, 52
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i64*
  %1411 = load i64, i64* %1410, align 8
  store i64 %1411, i64* %83, align 8
  %1412 = add i64 %1327, -72
  %1413 = add i64 %1395, 56
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i64*
  %1415 = load i64, i64* %1414, align 8
  store i64 %1415, i64* %RBX.i1512, align 8
  %1416 = add i64 %1327, -80
  %1417 = add i64 %1395, 60
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %R14.i1384, align 8
  %1420 = add i64 %1327, -84
  %1421 = add i64 %1395, 64
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %R15.i1372, align 8
  %1425 = add i64 %1327, -96
  %1426 = add i64 %1395, 68
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i64*
  %1428 = load i64, i64* %1427, align 8
  store i64 %1428, i64* %R12.i1514, align 8
  %1429 = add i64 %1327, -104
  %1430 = add i64 %1395, 72
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i64*
  %1432 = load i64, i64* %1431, align 8
  store i64 %1432, i64* %R13.i1396, align 8
  %1433 = add i64 %1327, -4384
  %1434 = add i64 %1395, 78
  store i64 %1434, i64* %3, align 8
  %1435 = inttoptr i64 %1433 to i32*
  store i32 1, i32* %1435, align 4
  %1436 = load i64, i64* %RBP.i, align 8
  %1437 = add i64 %1436, -108
  %1438 = load i64, i64* %3, align 8
  %1439 = add i64 %1438, 3
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1437 to i32*
  %1441 = load i32, i32* %1440, align 4
  %1442 = zext i32 %1441 to i64
  store i64 %1442, i64* %RAX.i1507, align 8
  %1443 = add i64 %1436, -4392
  %1444 = load i64, i64* %RDI.i1435, align 8
  %1445 = add i64 %1438, 10
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1443 to i64*
  store i64 %1444, i64* %1446, align 8
  %1447 = load i32, i32* %R9D.i1448, align 4
  %1448 = zext i32 %1447 to i64
  %1449 = load i64, i64* %3, align 8
  store i64 %1448, i64* %RDI.i1435, align 8
  %1450 = load i64, i64* %RBP.i, align 8
  %1451 = add i64 %1450, -4400
  %1452 = load i64, i64* %RDX.i1460, align 8
  %1453 = add i64 %1449, 10
  store i64 %1453, i64* %3, align 8
  %1454 = inttoptr i64 %1451 to i64*
  store i64 %1452, i64* %1454, align 8
  %1455 = load i64, i64* %R8.i1452, align 8
  %1456 = load i64, i64* %3, align 8
  store i64 %1455, i64* %RDX.i1460, align 8
  %1457 = load i64, i64* %RBP.i, align 8
  %1458 = add i64 %1457, -4408
  %1459 = load i64, i64* %RCX.i1483, align 8
  %1460 = add i64 %1456, 10
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1458 to i64*
  store i64 %1459, i64* %1461, align 8
  %1462 = load i64, i64* %76, align 8
  %1463 = load i64, i64* %3, align 8
  store i64 %1462, i64* %RCX.i1483, align 8
  %1464 = load i64, i64* %83, align 8
  store i64 %1464, i64* %R8.i1452, align 8
  %1465 = load i64, i64* %RBX.i1512, align 8
  store i64 %1465, i64* %199, align 8
  %1466 = load i64*, i64** %476, align 8
  %1467 = load i64, i64* %R14.i1384, align 8
  %1468 = add i64 %1463, 13
  store i64 %1468, i64* %3, align 8
  store i64 %1467, i64* %1466, align 8
  %1469 = load i64, i64* %6, align 8
  %1470 = add i64 %1469, 8
  %1471 = load i32, i32* %R15D.i1493, align 4
  %1472 = load i64, i64* %3, align 8
  %1473 = add i64 %1472, 5
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1470 to i32*
  store i32 %1471, i32* %1474, align 4
  %1475 = load i64, i64* %6, align 8
  %1476 = add i64 %1475, 16
  %1477 = load i64, i64* %R12.i1514, align 8
  %1478 = load i64, i64* %3, align 8
  %1479 = add i64 %1478, 5
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1476 to i64*
  store i64 %1477, i64* %1480, align 8
  %1481 = load i64, i64* %6, align 8
  %1482 = add i64 %1481, 24
  %1483 = load i64, i64* %R13.i1396, align 8
  %1484 = load i64, i64* %3, align 8
  %1485 = add i64 %1484, 5
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1482 to i64*
  store i64 %1483, i64* %1486, align 8
  %1487 = load i64, i64* %6, align 8
  %1488 = add i64 %1487, 32
  %1489 = load i32, i32* %EAX.i1471, align 4
  %1490 = load i64, i64* %3, align 8
  %1491 = add i64 %1490, 4
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1488 to i32*
  store i32 %1489, i32* %1492, align 4
  %1493 = load i64, i64* %RBP.i, align 8
  %1494 = add i64 %1493, -4392
  %1495 = load i64, i64* %3, align 8
  %1496 = add i64 %1495, 7
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1494 to i64*
  %1498 = load i64, i64* %1497, align 8
  store i64 %1498, i64* %76, align 8
  %1499 = load i64, i64* %6, align 8
  %1500 = add i64 %1499, 40
  %1501 = add i64 %1495, 12
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1500 to i64*
  store i64 %1498, i64* %1502, align 8
  %1503 = load i64, i64* %RBP.i, align 8
  %1504 = add i64 %1503, -4400
  %1505 = load i64, i64* %3, align 8
  %1506 = add i64 %1505, 7
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1504 to i64*
  %1508 = load i64, i64* %1507, align 8
  store i64 %1508, i64* %83, align 8
  %1509 = load i64, i64* %6, align 8
  %1510 = add i64 %1509, 48
  %1511 = add i64 %1505, 12
  store i64 %1511, i64* %3, align 8
  %1512 = inttoptr i64 %1510 to i64*
  store i64 %1508, i64* %1512, align 8
  %1513 = load i64, i64* %RBP.i, align 8
  %1514 = add i64 %1513, -4408
  %1515 = load i64, i64* %3, align 8
  %1516 = add i64 %1515, 7
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1514 to i64*
  %1518 = load i64, i64* %1517, align 8
  store i64 %1518, i64* %RBX.i1512, align 8
  %1519 = load i64, i64* %6, align 8
  %1520 = add i64 %1519, 56
  %1521 = add i64 %1515, 12
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i64*
  store i64 %1518, i64* %1522, align 8
  %1523 = load i64, i64* %6, align 8
  %1524 = add i64 %1523, 64
  %1525 = load i64, i64* %3, align 8
  %1526 = add i64 %1525, 8
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1524 to i32*
  store i32 1, i32* %1527, align 4
  %1528 = load i64, i64* %3, align 8
  %1529 = add i64 %1528, 1888
  %1530 = add i64 %1528, 5
  %1531 = load i64, i64* %6, align 8
  %1532 = add i64 %1531, -8
  %1533 = inttoptr i64 %1532 to i64*
  store i64 %1530, i64* %1533, align 8
  store i64 %1532, i64* %6, align 8
  store i64 %1529, i64* %3, align 8
  %call2_47b400 = tail call %struct.Memory* @sub_47bb60.superstring_add_string(%struct.State* nonnull %0, i64 %1529, %struct.Memory* %MEMORY.6)
  %.pre72 = load i64, i64* %RBP.i, align 8
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_47b405

block_.L_47b405:                                  ; preds = %block_47b333, %block_47b318, %block_47b348
  %1534 = phi i64 [ %1378, %block_47b318 ], [ %1395, %block_47b333 ], [ %.pre73, %block_47b348 ]
  %1535 = phi i64 [ %1327, %block_47b318 ], [ %1327, %block_47b333 ], [ %.pre72, %block_47b348 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_47b318 ], [ %MEMORY.6, %block_47b333 ], [ %call2_47b400, %block_47b348 ]
  %1536 = add i64 %1535, -2812
  %1537 = add i64 %1534, 7
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1536 to i32*
  %1539 = load i32, i32* %1538, align 4
  %1540 = sext i32 %1539 to i64
  store i64 %1540, i64* %RAX.i1507, align 8
  %1541 = add nsw i64 %1540, 12099168
  %1542 = add i64 %1534, 15
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i8*
  %1544 = load i8, i8* %1543, align 1
  %1545 = zext i8 %1544 to i64
  store i64 %1545, i64* %RCX.i1483, align 8
  %1546 = zext i8 %1544 to i32
  %1547 = add i64 %1535, -2784
  %1548 = add i64 %1534, 21
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = sub i32 %1546, %1550
  %1552 = icmp ult i32 %1546, %1550
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %42, align 1
  %1554 = and i32 %1551, 255
  %1555 = tail call i32 @llvm.ctpop.i32(i32 %1554)
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  store i8 %1558, i8* %49, align 1
  %1559 = xor i32 %1550, %1546
  %1560 = xor i32 %1559, %1551
  %1561 = lshr i32 %1560, 4
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  store i8 %1563, i8* %55, align 1
  %1564 = icmp eq i32 %1551, 0
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %58, align 1
  %1566 = lshr i32 %1551, 31
  %1567 = trunc i32 %1566 to i8
  store i8 %1567, i8* %61, align 1
  %1568 = lshr i32 %1550, 31
  %1569 = add nuw nsw i32 %1566, %1568
  %1570 = icmp eq i32 %1569, 2
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %67, align 1
  %.v125 = select i1 %1564, i64 27, i64 237
  %1572 = add i64 %1534, %.v125
  store i64 %1572, i64* %3, align 8
  br i1 %1564, label %block_47b420, label %block_.L_47b4f2

block_47b420:                                     ; preds = %block_.L_47b405
  %1573 = add i64 %1572, 7
  store i64 %1573, i64* %3, align 8
  %1574 = load i32, i32* %1538, align 4
  %1575 = sext i32 %1574 to i64
  store i64 %1575, i64* %RAX.i1507, align 8
  %1576 = add nsw i64 %1575, -1968
  %1577 = add i64 %1576, %1535
  %1578 = add i64 %1572, 15
  store i64 %1578, i64* %3, align 8
  %1579 = inttoptr i64 %1577 to i8*
  %1580 = load i8, i8* %1579, align 1
  store i8 0, i8* %42, align 1
  %1581 = zext i8 %1580 to i32
  %1582 = tail call i32 @llvm.ctpop.i32(i32 %1581)
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  store i8 %1585, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %1586 = icmp eq i8 %1580, 0
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %58, align 1
  %1588 = lshr i8 %1580, 7
  store i8 %1588, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v128 = select i1 %1586, i64 21, i64 210
  %1589 = add i64 %1572, %.v128
  store i64 %1589, i64* %3, align 8
  br i1 %1586, label %block_47b435, label %block_.L_47b4f2

block_47b435:                                     ; preds = %block_47b420
  %1590 = add i64 %1535, -120
  store i64 %1590, i64* %RSI.i1463, align 8
  store i64 1, i64* %RAX.i1507, align 8
  %1591 = add i64 %1535, -2768
  store i64 %1591, i64* %RCX.i1483, align 8
  %1592 = add i64 %1535, -2368
  store i64 %1592, i64* %RDX.i1460, align 8
  %1593 = add i64 %1535, -1968
  store i64 %1593, i64* %RDI.i1435, align 8
  %1594 = add i64 %1535, -1568
  store i64 %1594, i64* %R8.i1452, align 8
  %1595 = add i64 %1589, 44
  store i64 %1595, i64* %3, align 8
  %1596 = load i32, i32* %1538, align 4
  %1597 = zext i32 %1596 to i64
  store i64 %1597, i64* %199, align 8
  %1598 = add i64 %1535, -56
  %1599 = add i64 %1589, 48
  store i64 %1599, i64* %3, align 8
  %1600 = inttoptr i64 %1598 to i64*
  %1601 = load i64, i64* %1600, align 8
  store i64 %1601, i64* %76, align 8
  %1602 = add i64 %1535, -64
  %1603 = add i64 %1589, 52
  store i64 %1603, i64* %3, align 8
  %1604 = inttoptr i64 %1602 to i64*
  %1605 = load i64, i64* %1604, align 8
  store i64 %1605, i64* %83, align 8
  %1606 = add i64 %1535, -72
  %1607 = add i64 %1589, 56
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i64*
  %1609 = load i64, i64* %1608, align 8
  store i64 %1609, i64* %RBX.i1512, align 8
  %1610 = add i64 %1535, -80
  %1611 = add i64 %1589, 60
  store i64 %1611, i64* %3, align 8
  %1612 = inttoptr i64 %1610 to i64*
  %1613 = load i64, i64* %1612, align 8
  store i64 %1613, i64* %R14.i1384, align 8
  %1614 = add i64 %1535, -84
  %1615 = add i64 %1589, 64
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = zext i32 %1617 to i64
  store i64 %1618, i64* %R15.i1372, align 8
  %1619 = add i64 %1535, -96
  %1620 = add i64 %1589, 68
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i64*
  %1622 = load i64, i64* %1621, align 8
  store i64 %1622, i64* %R12.i1514, align 8
  %1623 = add i64 %1535, -104
  %1624 = add i64 %1589, 72
  store i64 %1624, i64* %3, align 8
  %1625 = inttoptr i64 %1623 to i64*
  %1626 = load i64, i64* %1625, align 8
  store i64 %1626, i64* %R13.i1396, align 8
  %1627 = add i64 %1535, -4412
  %1628 = add i64 %1589, 78
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i32*
  store i32 1, i32* %1629, align 4
  %1630 = load i64, i64* %RBP.i, align 8
  %1631 = add i64 %1630, -108
  %1632 = load i64, i64* %3, align 8
  %1633 = add i64 %1632, 3
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1631 to i32*
  %1635 = load i32, i32* %1634, align 4
  %1636 = zext i32 %1635 to i64
  store i64 %1636, i64* %RAX.i1507, align 8
  %1637 = add i64 %1630, -4424
  %1638 = load i64, i64* %RDI.i1435, align 8
  %1639 = add i64 %1632, 10
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1637 to i64*
  store i64 %1638, i64* %1640, align 8
  %1641 = load i32, i32* %R9D.i1448, align 4
  %1642 = zext i32 %1641 to i64
  %1643 = load i64, i64* %3, align 8
  store i64 %1642, i64* %RDI.i1435, align 8
  %1644 = load i64, i64* %RBP.i, align 8
  %1645 = add i64 %1644, -4432
  %1646 = load i64, i64* %RDX.i1460, align 8
  %1647 = add i64 %1643, 10
  store i64 %1647, i64* %3, align 8
  %1648 = inttoptr i64 %1645 to i64*
  store i64 %1646, i64* %1648, align 8
  %1649 = load i64, i64* %R8.i1452, align 8
  %1650 = load i64, i64* %3, align 8
  store i64 %1649, i64* %RDX.i1460, align 8
  %1651 = load i64, i64* %RBP.i, align 8
  %1652 = add i64 %1651, -4440
  %1653 = load i64, i64* %RCX.i1483, align 8
  %1654 = add i64 %1650, 10
  store i64 %1654, i64* %3, align 8
  %1655 = inttoptr i64 %1652 to i64*
  store i64 %1653, i64* %1655, align 8
  %1656 = load i64, i64* %76, align 8
  %1657 = load i64, i64* %3, align 8
  store i64 %1656, i64* %RCX.i1483, align 8
  %1658 = load i64, i64* %83, align 8
  store i64 %1658, i64* %R8.i1452, align 8
  %1659 = load i64, i64* %RBX.i1512, align 8
  store i64 %1659, i64* %199, align 8
  %1660 = load i64*, i64** %476, align 8
  %1661 = load i64, i64* %R14.i1384, align 8
  %1662 = add i64 %1657, 13
  store i64 %1662, i64* %3, align 8
  store i64 %1661, i64* %1660, align 8
  %1663 = load i64, i64* %6, align 8
  %1664 = add i64 %1663, 8
  %1665 = load i32, i32* %R15D.i1493, align 4
  %1666 = load i64, i64* %3, align 8
  %1667 = add i64 %1666, 5
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1664 to i32*
  store i32 %1665, i32* %1668, align 4
  %1669 = load i64, i64* %6, align 8
  %1670 = add i64 %1669, 16
  %1671 = load i64, i64* %R12.i1514, align 8
  %1672 = load i64, i64* %3, align 8
  %1673 = add i64 %1672, 5
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1670 to i64*
  store i64 %1671, i64* %1674, align 8
  %1675 = load i64, i64* %6, align 8
  %1676 = add i64 %1675, 24
  %1677 = load i64, i64* %R13.i1396, align 8
  %1678 = load i64, i64* %3, align 8
  %1679 = add i64 %1678, 5
  store i64 %1679, i64* %3, align 8
  %1680 = inttoptr i64 %1676 to i64*
  store i64 %1677, i64* %1680, align 8
  %1681 = load i64, i64* %6, align 8
  %1682 = add i64 %1681, 32
  %1683 = load i32, i32* %EAX.i1471, align 4
  %1684 = load i64, i64* %3, align 8
  %1685 = add i64 %1684, 4
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1682 to i32*
  store i32 %1683, i32* %1686, align 4
  %1687 = load i64, i64* %RBP.i, align 8
  %1688 = add i64 %1687, -4424
  %1689 = load i64, i64* %3, align 8
  %1690 = add i64 %1689, 7
  store i64 %1690, i64* %3, align 8
  %1691 = inttoptr i64 %1688 to i64*
  %1692 = load i64, i64* %1691, align 8
  store i64 %1692, i64* %76, align 8
  %1693 = load i64, i64* %6, align 8
  %1694 = add i64 %1693, 40
  %1695 = add i64 %1689, 12
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1694 to i64*
  store i64 %1692, i64* %1696, align 8
  %1697 = load i64, i64* %RBP.i, align 8
  %1698 = add i64 %1697, -4432
  %1699 = load i64, i64* %3, align 8
  %1700 = add i64 %1699, 7
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1698 to i64*
  %1702 = load i64, i64* %1701, align 8
  store i64 %1702, i64* %83, align 8
  %1703 = load i64, i64* %6, align 8
  %1704 = add i64 %1703, 48
  %1705 = add i64 %1699, 12
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i64*
  store i64 %1702, i64* %1706, align 8
  %1707 = load i64, i64* %RBP.i, align 8
  %1708 = add i64 %1707, -4440
  %1709 = load i64, i64* %3, align 8
  %1710 = add i64 %1709, 7
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1708 to i64*
  %1712 = load i64, i64* %1711, align 8
  store i64 %1712, i64* %RBX.i1512, align 8
  %1713 = load i64, i64* %6, align 8
  %1714 = add i64 %1713, 56
  %1715 = add i64 %1709, 12
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i64*
  store i64 %1712, i64* %1716, align 8
  %1717 = load i64, i64* %6, align 8
  %1718 = add i64 %1717, 64
  %1719 = load i64, i64* %3, align 8
  %1720 = add i64 %1719, 8
  store i64 %1720, i64* %3, align 8
  %1721 = inttoptr i64 %1718 to i32*
  store i32 1, i32* %1721, align 4
  %1722 = load i64, i64* %3, align 8
  %1723 = add i64 %1722, 1651
  %1724 = add i64 %1722, 5
  %1725 = load i64, i64* %6, align 8
  %1726 = add i64 %1725, -8
  %1727 = inttoptr i64 %1726 to i64*
  store i64 %1724, i64* %1727, align 8
  store i64 %1726, i64* %6, align 8
  store i64 %1723, i64* %3, align 8
  %call2_47b4ed = tail call %struct.Memory* @sub_47bb60.superstring_add_string(%struct.State* nonnull %0, i64 %1723, %struct.Memory* %MEMORY.7)
  %.pre74 = load i64, i64* %RBP.i, align 8
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_47b4f2

block_.L_47b4f2:                                  ; preds = %block_47b420, %block_.L_47b405, %block_47b435
  %1728 = phi i64 [ %1572, %block_.L_47b405 ], [ %1589, %block_47b420 ], [ %.pre75, %block_47b435 ]
  %1729 = phi i64 [ %1535, %block_.L_47b405 ], [ %1535, %block_47b420 ], [ %.pre74, %block_47b435 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_.L_47b405 ], [ %MEMORY.7, %block_47b420 ], [ %call2_47b4ed, %block_47b435 ]
  %1730 = add i64 %1729, -2816
  %1731 = add i64 %1728, 7
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i32*
  %1733 = load i32, i32* %1732, align 4
  %1734 = sext i32 %1733 to i64
  store i64 %1734, i64* %RAX.i1507, align 8
  %1735 = add nsw i64 %1734, 12099168
  %1736 = add i64 %1728, 15
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1735 to i8*
  %1738 = load i8, i8* %1737, align 1
  %1739 = zext i8 %1738 to i64
  store i64 %1739, i64* %RCX.i1483, align 8
  %1740 = zext i8 %1738 to i32
  %1741 = add i64 %1729, -2784
  %1742 = add i64 %1728, 21
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i32*
  %1744 = load i32, i32* %1743, align 4
  %1745 = sub i32 %1740, %1744
  %1746 = icmp ult i32 %1740, %1744
  %1747 = zext i1 %1746 to i8
  store i8 %1747, i8* %42, align 1
  %1748 = and i32 %1745, 255
  %1749 = tail call i32 @llvm.ctpop.i32(i32 %1748)
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = xor i8 %1751, 1
  store i8 %1752, i8* %49, align 1
  %1753 = xor i32 %1744, %1740
  %1754 = xor i32 %1753, %1745
  %1755 = lshr i32 %1754, 4
  %1756 = trunc i32 %1755 to i8
  %1757 = and i8 %1756, 1
  store i8 %1757, i8* %55, align 1
  %1758 = icmp eq i32 %1745, 0
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %58, align 1
  %1760 = lshr i32 %1745, 31
  %1761 = trunc i32 %1760 to i8
  store i8 %1761, i8* %61, align 1
  %1762 = lshr i32 %1744, 31
  %1763 = add nuw nsw i32 %1760, %1762
  %1764 = icmp eq i32 %1763, 2
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %67, align 1
  %.v126 = select i1 %1758, i64 27, i64 237
  %1766 = add i64 %1728, %.v126
  store i64 %1766, i64* %3, align 8
  br i1 %1758, label %block_47b50d, label %block_.L_47b5df

block_47b50d:                                     ; preds = %block_.L_47b4f2
  %1767 = add i64 %1766, 7
  store i64 %1767, i64* %3, align 8
  %1768 = load i32, i32* %1732, align 4
  %1769 = sext i32 %1768 to i64
  store i64 %1769, i64* %RAX.i1507, align 8
  %1770 = add nsw i64 %1769, -1968
  %1771 = add i64 %1770, %1729
  %1772 = add i64 %1766, 15
  store i64 %1772, i64* %3, align 8
  %1773 = inttoptr i64 %1771 to i8*
  %1774 = load i8, i8* %1773, align 1
  store i8 0, i8* %42, align 1
  %1775 = zext i8 %1774 to i32
  %1776 = tail call i32 @llvm.ctpop.i32(i32 %1775)
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  %1779 = xor i8 %1778, 1
  store i8 %1779, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %1780 = icmp eq i8 %1774, 0
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %58, align 1
  %1782 = lshr i8 %1774, 7
  store i8 %1782, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v127 = select i1 %1780, i64 21, i64 210
  %1783 = add i64 %1766, %.v127
  store i64 %1783, i64* %3, align 8
  br i1 %1780, label %block_47b522, label %block_.L_47b5df

block_47b522:                                     ; preds = %block_47b50d
  %1784 = add i64 %1729, -120
  store i64 %1784, i64* %RSI.i1463, align 8
  store i64 1, i64* %RAX.i1507, align 8
  %1785 = add i64 %1729, -2768
  store i64 %1785, i64* %RCX.i1483, align 8
  %1786 = add i64 %1729, -2368
  store i64 %1786, i64* %RDX.i1460, align 8
  %1787 = add i64 %1729, -1968
  store i64 %1787, i64* %RDI.i1435, align 8
  %1788 = add i64 %1729, -1568
  store i64 %1788, i64* %R8.i1452, align 8
  %1789 = add i64 %1783, 44
  store i64 %1789, i64* %3, align 8
  %1790 = load i32, i32* %1732, align 4
  %1791 = zext i32 %1790 to i64
  store i64 %1791, i64* %199, align 8
  %1792 = add i64 %1729, -56
  %1793 = add i64 %1783, 48
  store i64 %1793, i64* %3, align 8
  %1794 = inttoptr i64 %1792 to i64*
  %1795 = load i64, i64* %1794, align 8
  store i64 %1795, i64* %76, align 8
  %1796 = add i64 %1729, -64
  %1797 = add i64 %1783, 52
  store i64 %1797, i64* %3, align 8
  %1798 = inttoptr i64 %1796 to i64*
  %1799 = load i64, i64* %1798, align 8
  store i64 %1799, i64* %83, align 8
  %1800 = add i64 %1729, -72
  %1801 = add i64 %1783, 56
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i64*
  %1803 = load i64, i64* %1802, align 8
  store i64 %1803, i64* %RBX.i1512, align 8
  %1804 = add i64 %1729, -80
  %1805 = add i64 %1783, 60
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i64*
  %1807 = load i64, i64* %1806, align 8
  store i64 %1807, i64* %R14.i1384, align 8
  %1808 = add i64 %1729, -84
  %1809 = add i64 %1783, 64
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1808 to i32*
  %1811 = load i32, i32* %1810, align 4
  %1812 = zext i32 %1811 to i64
  store i64 %1812, i64* %R15.i1372, align 8
  %1813 = add i64 %1729, -96
  %1814 = add i64 %1783, 68
  store i64 %1814, i64* %3, align 8
  %1815 = inttoptr i64 %1813 to i64*
  %1816 = load i64, i64* %1815, align 8
  store i64 %1816, i64* %R12.i1514, align 8
  %1817 = add i64 %1729, -104
  %1818 = add i64 %1783, 72
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i64*
  %1820 = load i64, i64* %1819, align 8
  store i64 %1820, i64* %R13.i1396, align 8
  %1821 = add i64 %1729, -4444
  %1822 = add i64 %1783, 78
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to i32*
  store i32 1, i32* %1823, align 4
  %1824 = load i64, i64* %RBP.i, align 8
  %1825 = add i64 %1824, -108
  %1826 = load i64, i64* %3, align 8
  %1827 = add i64 %1826, 3
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1825 to i32*
  %1829 = load i32, i32* %1828, align 4
  %1830 = zext i32 %1829 to i64
  store i64 %1830, i64* %RAX.i1507, align 8
  %1831 = add i64 %1824, -4456
  %1832 = load i64, i64* %RDI.i1435, align 8
  %1833 = add i64 %1826, 10
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1831 to i64*
  store i64 %1832, i64* %1834, align 8
  %1835 = load i32, i32* %R9D.i1448, align 4
  %1836 = zext i32 %1835 to i64
  %1837 = load i64, i64* %3, align 8
  store i64 %1836, i64* %RDI.i1435, align 8
  %1838 = load i64, i64* %RBP.i, align 8
  %1839 = add i64 %1838, -4464
  %1840 = load i64, i64* %RDX.i1460, align 8
  %1841 = add i64 %1837, 10
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1839 to i64*
  store i64 %1840, i64* %1842, align 8
  %1843 = load i64, i64* %R8.i1452, align 8
  %1844 = load i64, i64* %3, align 8
  store i64 %1843, i64* %RDX.i1460, align 8
  %1845 = load i64, i64* %RBP.i, align 8
  %1846 = add i64 %1845, -4472
  %1847 = load i64, i64* %RCX.i1483, align 8
  %1848 = add i64 %1844, 10
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1846 to i64*
  store i64 %1847, i64* %1849, align 8
  %1850 = load i64, i64* %76, align 8
  %1851 = load i64, i64* %3, align 8
  store i64 %1850, i64* %RCX.i1483, align 8
  %1852 = load i64, i64* %83, align 8
  store i64 %1852, i64* %R8.i1452, align 8
  %1853 = load i64, i64* %RBX.i1512, align 8
  store i64 %1853, i64* %199, align 8
  %1854 = load i64*, i64** %476, align 8
  %1855 = load i64, i64* %R14.i1384, align 8
  %1856 = add i64 %1851, 13
  store i64 %1856, i64* %3, align 8
  store i64 %1855, i64* %1854, align 8
  %1857 = load i64, i64* %6, align 8
  %1858 = add i64 %1857, 8
  %1859 = load i32, i32* %R15D.i1493, align 4
  %1860 = load i64, i64* %3, align 8
  %1861 = add i64 %1860, 5
  store i64 %1861, i64* %3, align 8
  %1862 = inttoptr i64 %1858 to i32*
  store i32 %1859, i32* %1862, align 4
  %1863 = load i64, i64* %6, align 8
  %1864 = add i64 %1863, 16
  %1865 = load i64, i64* %R12.i1514, align 8
  %1866 = load i64, i64* %3, align 8
  %1867 = add i64 %1866, 5
  store i64 %1867, i64* %3, align 8
  %1868 = inttoptr i64 %1864 to i64*
  store i64 %1865, i64* %1868, align 8
  %1869 = load i64, i64* %6, align 8
  %1870 = add i64 %1869, 24
  %1871 = load i64, i64* %R13.i1396, align 8
  %1872 = load i64, i64* %3, align 8
  %1873 = add i64 %1872, 5
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1870 to i64*
  store i64 %1871, i64* %1874, align 8
  %1875 = load i64, i64* %6, align 8
  %1876 = add i64 %1875, 32
  %1877 = load i32, i32* %EAX.i1471, align 4
  %1878 = load i64, i64* %3, align 8
  %1879 = add i64 %1878, 4
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1876 to i32*
  store i32 %1877, i32* %1880, align 4
  %1881 = load i64, i64* %RBP.i, align 8
  %1882 = add i64 %1881, -4456
  %1883 = load i64, i64* %3, align 8
  %1884 = add i64 %1883, 7
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1882 to i64*
  %1886 = load i64, i64* %1885, align 8
  store i64 %1886, i64* %76, align 8
  %1887 = load i64, i64* %6, align 8
  %1888 = add i64 %1887, 40
  %1889 = add i64 %1883, 12
  store i64 %1889, i64* %3, align 8
  %1890 = inttoptr i64 %1888 to i64*
  store i64 %1886, i64* %1890, align 8
  %1891 = load i64, i64* %RBP.i, align 8
  %1892 = add i64 %1891, -4464
  %1893 = load i64, i64* %3, align 8
  %1894 = add i64 %1893, 7
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1892 to i64*
  %1896 = load i64, i64* %1895, align 8
  store i64 %1896, i64* %83, align 8
  %1897 = load i64, i64* %6, align 8
  %1898 = add i64 %1897, 48
  %1899 = add i64 %1893, 12
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i64*
  store i64 %1896, i64* %1900, align 8
  %1901 = load i64, i64* %RBP.i, align 8
  %1902 = add i64 %1901, -4472
  %1903 = load i64, i64* %3, align 8
  %1904 = add i64 %1903, 7
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1902 to i64*
  %1906 = load i64, i64* %1905, align 8
  store i64 %1906, i64* %RBX.i1512, align 8
  %1907 = load i64, i64* %6, align 8
  %1908 = add i64 %1907, 56
  %1909 = add i64 %1903, 12
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i64*
  store i64 %1906, i64* %1910, align 8
  %1911 = load i64, i64* %6, align 8
  %1912 = add i64 %1911, 64
  %1913 = load i64, i64* %3, align 8
  %1914 = add i64 %1913, 8
  store i64 %1914, i64* %3, align 8
  %1915 = inttoptr i64 %1912 to i32*
  store i32 1, i32* %1915, align 4
  %1916 = load i64, i64* %3, align 8
  %1917 = add i64 %1916, 1414
  %1918 = add i64 %1916, 5
  %1919 = load i64, i64* %6, align 8
  %1920 = add i64 %1919, -8
  %1921 = inttoptr i64 %1920 to i64*
  store i64 %1918, i64* %1921, align 8
  store i64 %1920, i64* %6, align 8
  store i64 %1917, i64* %3, align 8
  %call2_47b5da = tail call %struct.Memory* @sub_47bb60.superstring_add_string(%struct.State* nonnull %0, i64 %1917, %struct.Memory* %MEMORY.8)
  %.pre76 = load i64, i64* %3, align 8
  %.pre77.pre.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_47b5df

block_.L_47b5df:                                  ; preds = %block_47b50d, %block_.L_47b4f2, %block_47b522
  %.pre77.pre = phi i64 [ %1729, %block_.L_47b4f2 ], [ %1729, %block_47b50d ], [ %.pre77.pre.pre, %block_47b522 ]
  %1922 = phi i64 [ %1766, %block_.L_47b4f2 ], [ %1783, %block_47b50d ], [ %.pre76, %block_47b522 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.8, %block_.L_47b4f2 ], [ %MEMORY.8, %block_47b50d ], [ %call2_47b5da, %block_47b522 ]
  %1923 = add i64 %1922, 5
  store i64 %1923, i64* %3, align 8
  br label %block_.L_47b5e4

block_.L_47b5e4:                                  ; preds = %block_.L_47b5df, %block_.L_47b30b
  %.pre77 = phi i64 [ %1327, %block_.L_47b30b ], [ %.pre77.pre, %block_.L_47b5df ]
  %1924 = phi i64 [ %1341, %block_.L_47b30b ], [ %1923, %block_.L_47b5df ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.6, %block_.L_47b30b ], [ %MEMORY.9, %block_.L_47b5df ]
  %1925 = add i64 %1924, 5
  store i64 %1925, i64* %3, align 8
  br label %block_.L_47b5e9

block_.L_47b5e9:                                  ; preds = %block_.L_47b25f, %block_.L_47b5e4
  %1926 = phi i64 [ %1155, %block_.L_47b25f ], [ %1925, %block_.L_47b5e4 ]
  %1927 = phi i64 [ %1109, %block_.L_47b25f ], [ %.pre77, %block_.L_47b5e4 ]
  %MEMORY.11 = phi %struct.Memory* [ %713, %block_.L_47b25f ], [ %MEMORY.10, %block_.L_47b5e4 ]
  %1928 = add i64 %1927, -2804
  %1929 = add i64 %1926, 7
  store i64 %1929, i64* %3, align 8
  %1930 = inttoptr i64 %1928 to i32*
  %1931 = load i32, i32* %1930, align 4
  %1932 = sext i32 %1931 to i64
  store i64 %1932, i64* %RAX.i1507, align 8
  %1933 = add nsw i64 %1932, 12099168
  %1934 = add i64 %1926, 15
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1933 to i8*
  %1936 = load i8, i8* %1935, align 1
  %1937 = zext i8 %1936 to i64
  store i64 %1937, i64* %RCX.i1483, align 8
  %1938 = zext i8 %1936 to i32
  %1939 = add i64 %1927, -2784
  %1940 = add i64 %1926, 21
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1939 to i32*
  %1942 = load i32, i32* %1941, align 4
  %1943 = sub i32 %1938, %1942
  %1944 = icmp ult i32 %1938, %1942
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %42, align 1
  %1946 = and i32 %1943, 255
  %1947 = tail call i32 @llvm.ctpop.i32(i32 %1946)
  %1948 = trunc i32 %1947 to i8
  %1949 = and i8 %1948, 1
  %1950 = xor i8 %1949, 1
  store i8 %1950, i8* %49, align 1
  %1951 = xor i32 %1942, %1938
  %1952 = xor i32 %1951, %1943
  %1953 = lshr i32 %1952, 4
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  store i8 %1955, i8* %55, align 1
  %1956 = icmp eq i32 %1943, 0
  %1957 = zext i1 %1956 to i8
  store i8 %1957, i8* %58, align 1
  %1958 = lshr i32 %1943, 31
  %1959 = trunc i32 %1958 to i8
  store i8 %1959, i8* %61, align 1
  %1960 = lshr i32 %1942, 31
  %1961 = add nuw nsw i32 %1958, %1960
  %1962 = icmp eq i32 %1961, 2
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %67, align 1
  %.v97 = select i1 %1956, i64 27, i64 339
  %1964 = add i64 %1926, %.v97
  store i64 %1964, i64* %3, align 8
  br i1 %1956, label %block_47b604, label %block_.L_47b73c

block_47b604:                                     ; preds = %block_.L_47b5e9
  %1965 = add i64 %1927, -2808
  %1966 = add i64 %1964, 7
  store i64 %1966, i64* %3, align 8
  %1967 = inttoptr i64 %1965 to i32*
  %1968 = load i32, i32* %1967, align 4
  %1969 = sext i32 %1968 to i64
  store i64 %1969, i64* %RAX.i1507, align 8
  %1970 = add nsw i64 %1969, 12099168
  %1971 = add i64 %1964, 15
  store i64 %1971, i64* %3, align 8
  %1972 = inttoptr i64 %1970 to i8*
  %1973 = load i8, i8* %1972, align 1
  %1974 = zext i8 %1973 to i64
  store i64 %1974, i64* %RCX.i1483, align 8
  %1975 = zext i8 %1973 to i32
  store i8 0, i8* %42, align 1
  %1976 = tail call i32 @llvm.ctpop.i32(i32 %1975)
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  %1979 = xor i8 %1978, 1
  store i8 %1979, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %1980 = icmp eq i8 %1973, 0
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v115 = select i1 %1980, i64 24, i64 312
  %1982 = add i64 %1964, %.v115
  store i64 %1982, i64* %3, align 8
  br i1 %1980, label %block_47b61c, label %block_.L_47b73c

block_47b61c:                                     ; preds = %block_47b604
  %1983 = add i64 %1927, -2824
  %1984 = add i64 %1982, 7
  store i64 %1984, i64* %3, align 8
  %1985 = inttoptr i64 %1983 to i32*
  %1986 = load i32, i32* %1985, align 4
  %1987 = sext i32 %1986 to i64
  store i64 %1987, i64* %RAX.i1507, align 8
  %1988 = add nsw i64 %1987, 12099168
  %1989 = add i64 %1982, 15
  store i64 %1989, i64* %3, align 8
  %1990 = inttoptr i64 %1988 to i8*
  %1991 = load i8, i8* %1990, align 1
  %1992 = zext i8 %1991 to i64
  store i64 %1992, i64* %RCX.i1483, align 8
  %1993 = zext i8 %1991 to i32
  %1994 = add i64 %1982, 21
  store i64 %1994, i64* %3, align 8
  %1995 = load i32, i32* %1941, align 4
  %1996 = sub i32 %1993, %1995
  %1997 = icmp ult i32 %1993, %1995
  %1998 = zext i1 %1997 to i8
  store i8 %1998, i8* %42, align 1
  %1999 = and i32 %1996, 255
  %2000 = tail call i32 @llvm.ctpop.i32(i32 %1999)
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  store i8 %2003, i8* %49, align 1
  %2004 = xor i32 %1995, %1993
  %2005 = xor i32 %2004, %1996
  %2006 = lshr i32 %2005, 4
  %2007 = trunc i32 %2006 to i8
  %2008 = and i8 %2007, 1
  store i8 %2008, i8* %55, align 1
  %2009 = icmp eq i32 %1996, 0
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %58, align 1
  %2011 = lshr i32 %1996, 31
  %2012 = trunc i32 %2011 to i8
  store i8 %2012, i8* %61, align 1
  %2013 = lshr i32 %1995, 31
  %2014 = add nuw nsw i32 %2011, %2013
  %2015 = icmp eq i32 %2014, 2
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %67, align 1
  %.v116 = select i1 %2009, i64 27, i64 288
  %2017 = add i64 %1982, %.v116
  store i64 %2017, i64* %3, align 8
  br i1 %2009, label %block_47b637, label %block_.L_47b73c

block_47b637:                                     ; preds = %block_47b61c
  %2018 = add i64 %1927, -2820
  %2019 = add i64 %2017, 7
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i32*
  %2021 = load i32, i32* %2020, align 4
  %2022 = sext i32 %2021 to i64
  store i64 %2022, i64* %RAX.i1507, align 8
  %2023 = add nsw i64 %2022, 12099168
  %2024 = add i64 %2017, 15
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i8*
  %2026 = load i8, i8* %2025, align 1
  %2027 = zext i8 %2026 to i64
  store i64 %2027, i64* %RCX.i1483, align 8
  %2028 = zext i8 %2026 to i32
  %2029 = add i64 %2017, 21
  store i64 %2029, i64* %3, align 8
  %2030 = load i32, i32* %1941, align 4
  %2031 = sub i32 %2028, %2030
  %2032 = icmp ult i32 %2028, %2030
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %42, align 1
  %2034 = and i32 %2031, 255
  %2035 = tail call i32 @llvm.ctpop.i32(i32 %2034)
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  %2038 = xor i8 %2037, 1
  store i8 %2038, i8* %49, align 1
  %2039 = xor i32 %2030, %2028
  %2040 = xor i32 %2039, %2031
  %2041 = lshr i32 %2040, 4
  %2042 = trunc i32 %2041 to i8
  %2043 = and i8 %2042, 1
  store i8 %2043, i8* %55, align 1
  %2044 = icmp eq i32 %2031, 0
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %58, align 1
  %2046 = lshr i32 %2031, 31
  %2047 = trunc i32 %2046 to i8
  store i8 %2047, i8* %61, align 1
  %2048 = lshr i32 %2030, 31
  %2049 = add nuw nsw i32 %2046, %2048
  %2050 = icmp eq i32 %2049, 2
  %2051 = zext i1 %2050 to i8
  store i8 %2051, i8* %67, align 1
  %.v117 = select i1 %2044, i64 27, i64 261
  %2052 = add i64 %2017, %.v117
  store i64 %2052, i64* %3, align 8
  br i1 %2044, label %block_47b652, label %block_.L_47b73c

block_47b652:                                     ; preds = %block_47b637
  %2053 = add i64 %2052, 7
  store i64 %2053, i64* %3, align 8
  %2054 = load i32, i32* %2020, align 4
  %2055 = sext i32 %2054 to i64
  store i64 %2055, i64* %RAX.i1507, align 8
  %2056 = add nsw i64 %2055, -1968
  %2057 = add i64 %2056, %1927
  %2058 = add i64 %2052, 15
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2057 to i8*
  %2060 = load i8, i8* %2059, align 1
  store i8 0, i8* %42, align 1
  %2061 = zext i8 %2060 to i32
  %2062 = tail call i32 @llvm.ctpop.i32(i32 %2061)
  %2063 = trunc i32 %2062 to i8
  %2064 = and i8 %2063, 1
  %2065 = xor i8 %2064, 1
  store i8 %2065, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %2066 = icmp eq i8 %2060, 0
  %2067 = zext i1 %2066 to i8
  store i8 %2067, i8* %58, align 1
  %2068 = lshr i8 %2060, 7
  store i8 %2068, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v118 = select i1 %2066, i64 21, i64 234
  %2069 = add i64 %2052, %.v118
  store i64 %2069, i64* %3, align 8
  br i1 %2066, label %block_47b667, label %block_.L_47b73c

block_47b667:                                     ; preds = %block_47b652
  %2070 = add i64 %1927, -2828
  %2071 = add i64 %2069, 7
  store i64 %2071, i64* %3, align 8
  %2072 = inttoptr i64 %2070 to i32*
  %2073 = load i32, i32* %2072, align 4
  %2074 = sext i32 %2073 to i64
  store i64 %2074, i64* %RAX.i1507, align 8
  %2075 = add nsw i64 %2074, 12099168
  %2076 = add i64 %2069, 15
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i8*
  %2078 = load i8, i8* %2077, align 1
  %2079 = zext i8 %2078 to i64
  store i64 %2079, i64* %RCX.i1483, align 8
  %2080 = zext i8 %2078 to i32
  store i8 0, i8* %42, align 1
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %2085 = icmp eq i8 %2078, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v119 = select i1 %2085, i64 24, i64 213
  %2087 = add i64 %2069, %.v119
  store i64 %2087, i64* %3, align 8
  br i1 %2085, label %block_47b67f, label %block_.L_47b73c

block_47b67f:                                     ; preds = %block_47b667
  %2088 = add i64 %1927, -120
  store i64 %2088, i64* %RSI.i1463, align 8
  store i64 1, i64* %RAX.i1507, align 8
  %2089 = add i64 %1927, -2768
  store i64 %2089, i64* %RCX.i1483, align 8
  %2090 = add i64 %1927, -2368
  store i64 %2090, i64* %RDX.i1460, align 8
  %2091 = add i64 %1927, -1968
  store i64 %2091, i64* %RDI.i1435, align 8
  %2092 = add i64 %1927, -1568
  store i64 %2092, i64* %R8.i1452, align 8
  %2093 = add i64 %2087, 44
  store i64 %2093, i64* %3, align 8
  %2094 = load i32, i32* %2020, align 4
  %2095 = zext i32 %2094 to i64
  store i64 %2095, i64* %199, align 8
  %2096 = add i64 %1927, -56
  %2097 = add i64 %2087, 48
  store i64 %2097, i64* %3, align 8
  %2098 = inttoptr i64 %2096 to i64*
  %2099 = load i64, i64* %2098, align 8
  store i64 %2099, i64* %76, align 8
  %2100 = add i64 %1927, -64
  %2101 = add i64 %2087, 52
  store i64 %2101, i64* %3, align 8
  %2102 = inttoptr i64 %2100 to i64*
  %2103 = load i64, i64* %2102, align 8
  store i64 %2103, i64* %83, align 8
  %2104 = add i64 %1927, -72
  %2105 = add i64 %2087, 56
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i64*
  %2107 = load i64, i64* %2106, align 8
  store i64 %2107, i64* %RBX.i1512, align 8
  %2108 = add i64 %1927, -80
  %2109 = add i64 %2087, 60
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i64*
  %2111 = load i64, i64* %2110, align 8
  store i64 %2111, i64* %R14.i1384, align 8
  %2112 = add i64 %1927, -84
  %2113 = add i64 %2087, 64
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i32*
  %2115 = load i32, i32* %2114, align 4
  %2116 = zext i32 %2115 to i64
  store i64 %2116, i64* %R15.i1372, align 8
  %2117 = add i64 %1927, -96
  %2118 = add i64 %2087, 68
  store i64 %2118, i64* %3, align 8
  %2119 = inttoptr i64 %2117 to i64*
  %2120 = load i64, i64* %2119, align 8
  store i64 %2120, i64* %R12.i1514, align 8
  %2121 = add i64 %1927, -104
  %2122 = add i64 %2087, 72
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i64*
  %2124 = load i64, i64* %2123, align 8
  store i64 %2124, i64* %R13.i1396, align 8
  %2125 = add i64 %1927, -4476
  %2126 = add i64 %2087, 78
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i32*
  store i32 1, i32* %2127, align 4
  %2128 = load i64, i64* %RBP.i, align 8
  %2129 = add i64 %2128, -108
  %2130 = load i64, i64* %3, align 8
  %2131 = add i64 %2130, 3
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2129 to i32*
  %2133 = load i32, i32* %2132, align 4
  %2134 = zext i32 %2133 to i64
  store i64 %2134, i64* %RAX.i1507, align 8
  %2135 = add i64 %2128, -4488
  %2136 = load i64, i64* %RDI.i1435, align 8
  %2137 = add i64 %2130, 10
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2135 to i64*
  store i64 %2136, i64* %2138, align 8
  %2139 = load i32, i32* %R9D.i1448, align 4
  %2140 = zext i32 %2139 to i64
  %2141 = load i64, i64* %3, align 8
  store i64 %2140, i64* %RDI.i1435, align 8
  %2142 = load i64, i64* %RBP.i, align 8
  %2143 = add i64 %2142, -4496
  %2144 = load i64, i64* %RDX.i1460, align 8
  %2145 = add i64 %2141, 10
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2143 to i64*
  store i64 %2144, i64* %2146, align 8
  %2147 = load i64, i64* %R8.i1452, align 8
  %2148 = load i64, i64* %3, align 8
  store i64 %2147, i64* %RDX.i1460, align 8
  %2149 = load i64, i64* %RBP.i, align 8
  %2150 = add i64 %2149, -4504
  %2151 = load i64, i64* %RCX.i1483, align 8
  %2152 = add i64 %2148, 10
  store i64 %2152, i64* %3, align 8
  %2153 = inttoptr i64 %2150 to i64*
  store i64 %2151, i64* %2153, align 8
  %2154 = load i64, i64* %76, align 8
  %2155 = load i64, i64* %3, align 8
  store i64 %2154, i64* %RCX.i1483, align 8
  %2156 = load i64, i64* %83, align 8
  store i64 %2156, i64* %R8.i1452, align 8
  %2157 = load i64, i64* %RBX.i1512, align 8
  store i64 %2157, i64* %199, align 8
  %2158 = load i64*, i64** %476, align 8
  %2159 = load i64, i64* %R14.i1384, align 8
  %2160 = add i64 %2155, 13
  store i64 %2160, i64* %3, align 8
  store i64 %2159, i64* %2158, align 8
  %2161 = load i64, i64* %6, align 8
  %2162 = add i64 %2161, 8
  %2163 = load i32, i32* %R15D.i1493, align 4
  %2164 = load i64, i64* %3, align 8
  %2165 = add i64 %2164, 5
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2162 to i32*
  store i32 %2163, i32* %2166, align 4
  %2167 = load i64, i64* %6, align 8
  %2168 = add i64 %2167, 16
  %2169 = load i64, i64* %R12.i1514, align 8
  %2170 = load i64, i64* %3, align 8
  %2171 = add i64 %2170, 5
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2168 to i64*
  store i64 %2169, i64* %2172, align 8
  %2173 = load i64, i64* %6, align 8
  %2174 = add i64 %2173, 24
  %2175 = load i64, i64* %R13.i1396, align 8
  %2176 = load i64, i64* %3, align 8
  %2177 = add i64 %2176, 5
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2174 to i64*
  store i64 %2175, i64* %2178, align 8
  %2179 = load i64, i64* %6, align 8
  %2180 = add i64 %2179, 32
  %2181 = load i32, i32* %EAX.i1471, align 4
  %2182 = load i64, i64* %3, align 8
  %2183 = add i64 %2182, 4
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2180 to i32*
  store i32 %2181, i32* %2184, align 4
  %2185 = load i64, i64* %RBP.i, align 8
  %2186 = add i64 %2185, -4488
  %2187 = load i64, i64* %3, align 8
  %2188 = add i64 %2187, 7
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2186 to i64*
  %2190 = load i64, i64* %2189, align 8
  store i64 %2190, i64* %76, align 8
  %2191 = load i64, i64* %6, align 8
  %2192 = add i64 %2191, 40
  %2193 = add i64 %2187, 12
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i64*
  store i64 %2190, i64* %2194, align 8
  %2195 = load i64, i64* %RBP.i, align 8
  %2196 = add i64 %2195, -4496
  %2197 = load i64, i64* %3, align 8
  %2198 = add i64 %2197, 7
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2196 to i64*
  %2200 = load i64, i64* %2199, align 8
  store i64 %2200, i64* %83, align 8
  %2201 = load i64, i64* %6, align 8
  %2202 = add i64 %2201, 48
  %2203 = add i64 %2197, 12
  store i64 %2203, i64* %3, align 8
  %2204 = inttoptr i64 %2202 to i64*
  store i64 %2200, i64* %2204, align 8
  %2205 = load i64, i64* %RBP.i, align 8
  %2206 = add i64 %2205, -4504
  %2207 = load i64, i64* %3, align 8
  %2208 = add i64 %2207, 7
  store i64 %2208, i64* %3, align 8
  %2209 = inttoptr i64 %2206 to i64*
  %2210 = load i64, i64* %2209, align 8
  store i64 %2210, i64* %RBX.i1512, align 8
  %2211 = load i64, i64* %6, align 8
  %2212 = add i64 %2211, 56
  %2213 = add i64 %2207, 12
  store i64 %2213, i64* %3, align 8
  %2214 = inttoptr i64 %2212 to i64*
  store i64 %2210, i64* %2214, align 8
  %2215 = load i64, i64* %6, align 8
  %2216 = add i64 %2215, 64
  %2217 = load i64, i64* %3, align 8
  %2218 = add i64 %2217, 8
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2216 to i32*
  store i32 1, i32* %2219, align 4
  %2220 = load i64, i64* %3, align 8
  %2221 = add i64 %2220, 1065
  %2222 = add i64 %2220, 5
  %2223 = load i64, i64* %6, align 8
  %2224 = add i64 %2223, -8
  %2225 = inttoptr i64 %2224 to i64*
  store i64 %2222, i64* %2225, align 8
  store i64 %2224, i64* %6, align 8
  store i64 %2221, i64* %3, align 8
  %call2_47b737 = tail call %struct.Memory* @sub_47bb60.superstring_add_string(%struct.State* nonnull %0, i64 %2221, %struct.Memory* %MEMORY.11)
  %.pre78 = load i64, i64* %RBP.i, align 8
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_47b73c

block_.L_47b73c:                                  ; preds = %block_47b667, %block_47b652, %block_47b637, %block_47b61c, %block_47b604, %block_.L_47b5e9, %block_47b67f
  %2226 = phi i64 [ %1964, %block_.L_47b5e9 ], [ %1982, %block_47b604 ], [ %2017, %block_47b61c ], [ %2052, %block_47b637 ], [ %2069, %block_47b652 ], [ %2087, %block_47b667 ], [ %.pre79, %block_47b67f ]
  %2227 = phi i64 [ %1927, %block_.L_47b5e9 ], [ %1927, %block_47b604 ], [ %1927, %block_47b61c ], [ %1927, %block_47b637 ], [ %1927, %block_47b652 ], [ %1927, %block_47b667 ], [ %.pre78, %block_47b67f ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.11, %block_.L_47b5e9 ], [ %MEMORY.11, %block_47b604 ], [ %MEMORY.11, %block_47b61c ], [ %MEMORY.11, %block_47b637 ], [ %MEMORY.11, %block_47b652 ], [ %MEMORY.11, %block_47b667 ], [ %call2_47b737, %block_47b67f ]
  %2228 = add i64 %2227, -2808
  %2229 = add i64 %2226, 7
  store i64 %2229, i64* %3, align 8
  %2230 = inttoptr i64 %2228 to i32*
  %2231 = load i32, i32* %2230, align 4
  %2232 = sext i32 %2231 to i64
  store i64 %2232, i64* %RAX.i1507, align 8
  %2233 = add nsw i64 %2232, 12099168
  %2234 = add i64 %2226, 15
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2233 to i8*
  %2236 = load i8, i8* %2235, align 1
  %2237 = zext i8 %2236 to i64
  store i64 %2237, i64* %RCX.i1483, align 8
  %2238 = zext i8 %2236 to i32
  %2239 = add i64 %2227, -2784
  %2240 = add i64 %2226, 21
  store i64 %2240, i64* %3, align 8
  %2241 = inttoptr i64 %2239 to i32*
  %2242 = load i32, i32* %2241, align 4
  %2243 = sub i32 %2238, %2242
  %2244 = icmp ult i32 %2238, %2242
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %42, align 1
  %2246 = and i32 %2243, 255
  %2247 = tail call i32 @llvm.ctpop.i32(i32 %2246)
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  %2250 = xor i8 %2249, 1
  store i8 %2250, i8* %49, align 1
  %2251 = xor i32 %2242, %2238
  %2252 = xor i32 %2251, %2243
  %2253 = lshr i32 %2252, 4
  %2254 = trunc i32 %2253 to i8
  %2255 = and i8 %2254, 1
  store i8 %2255, i8* %55, align 1
  %2256 = icmp eq i32 %2243, 0
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %58, align 1
  %2258 = lshr i32 %2243, 31
  %2259 = trunc i32 %2258 to i8
  store i8 %2259, i8* %61, align 1
  %2260 = lshr i32 %2242, 31
  %2261 = add nuw nsw i32 %2258, %2260
  %2262 = icmp eq i32 %2261, 2
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %67, align 1
  %.v98 = select i1 %2256, i64 27, i64 285
  %2264 = add i64 %2226, %.v98
  store i64 %2264, i64* %3, align 8
  br i1 %2256, label %block_47b757, label %block_.L_47b859

block_47b757:                                     ; preds = %block_.L_47b73c
  %2265 = add i64 %2264, 7
  store i64 %2265, i64* %3, align 8
  %2266 = load i32, i32* %2230, align 4
  %2267 = sext i32 %2266 to i64
  store i64 %2267, i64* %RAX.i1507, align 8
  %2268 = add nsw i64 %2267, -1968
  %2269 = add i64 %2268, %2227
  %2270 = add i64 %2264, 15
  store i64 %2270, i64* %3, align 8
  %2271 = inttoptr i64 %2269 to i8*
  %2272 = load i8, i8* %2271, align 1
  store i8 0, i8* %42, align 1
  %2273 = zext i8 %2272 to i32
  %2274 = tail call i32 @llvm.ctpop.i32(i32 %2273)
  %2275 = trunc i32 %2274 to i8
  %2276 = and i8 %2275, 1
  %2277 = xor i8 %2276, 1
  store i8 %2277, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %2278 = icmp eq i8 %2272, 0
  %2279 = zext i1 %2278 to i8
  store i8 %2279, i8* %58, align 1
  %2280 = lshr i8 %2272, 7
  store i8 %2280, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v112 = select i1 %2278, i64 21, i64 258
  %2281 = add i64 %2264, %.v112
  store i64 %2281, i64* %3, align 8
  br i1 %2278, label %block_47b76c, label %block_.L_47b859

block_47b76c:                                     ; preds = %block_47b757
  %2282 = add i64 %2227, -2804
  %2283 = add i64 %2281, 7
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  %2286 = sext i32 %2285 to i64
  store i64 %2286, i64* %RAX.i1507, align 8
  %2287 = add nsw i64 %2286, 12099168
  %2288 = add i64 %2281, 15
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2287 to i8*
  %2290 = load i8, i8* %2289, align 1
  %2291 = zext i8 %2290 to i64
  store i64 %2291, i64* %RCX.i1483, align 8
  %2292 = zext i8 %2290 to i32
  store i8 0, i8* %42, align 1
  %2293 = tail call i32 @llvm.ctpop.i32(i32 %2292)
  %2294 = trunc i32 %2293 to i8
  %2295 = and i8 %2294, 1
  %2296 = xor i8 %2295, 1
  store i8 %2296, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %2297 = icmp eq i8 %2290, 0
  %2298 = zext i1 %2297 to i8
  store i8 %2298, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v113 = select i1 %2297, i64 24, i64 237
  %2299 = add i64 %2281, %.v113
  store i64 %2299, i64* %3, align 8
  br i1 %2297, label %block_47b784, label %block_.L_47b859

block_47b784:                                     ; preds = %block_47b76c
  %2300 = add i64 %2227, -2828
  %2301 = add i64 %2299, 7
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2300 to i32*
  %2303 = load i32, i32* %2302, align 4
  %2304 = sext i32 %2303 to i64
  store i64 %2304, i64* %RAX.i1507, align 8
  %2305 = add nsw i64 %2304, 12099168
  %2306 = add i64 %2299, 15
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i8*
  %2308 = load i8, i8* %2307, align 1
  %2309 = zext i8 %2308 to i64
  store i64 %2309, i64* %RCX.i1483, align 8
  %2310 = zext i8 %2308 to i32
  store i8 0, i8* %42, align 1
  %2311 = tail call i32 @llvm.ctpop.i32(i32 %2310)
  %2312 = trunc i32 %2311 to i8
  %2313 = and i8 %2312, 1
  %2314 = xor i8 %2313, 1
  store i8 %2314, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %2315 = icmp eq i8 %2308, 0
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v114 = select i1 %2315, i64 24, i64 213
  %2317 = add i64 %2299, %.v114
  store i64 %2317, i64* %3, align 8
  br i1 %2315, label %block_47b79c, label %block_.L_47b859

block_47b79c:                                     ; preds = %block_47b784
  %2318 = add i64 %2227, -120
  store i64 %2318, i64* %RSI.i1463, align 8
  store i64 1, i64* %RAX.i1507, align 8
  %2319 = add i64 %2227, -2768
  store i64 %2319, i64* %RCX.i1483, align 8
  %2320 = add i64 %2227, -2368
  store i64 %2320, i64* %RDX.i1460, align 8
  %2321 = add i64 %2227, -1968
  store i64 %2321, i64* %RDI.i1435, align 8
  %2322 = add i64 %2227, -1568
  store i64 %2322, i64* %R8.i1452, align 8
  %2323 = add i64 %2317, 44
  store i64 %2323, i64* %3, align 8
  %2324 = load i32, i32* %2230, align 4
  %2325 = zext i32 %2324 to i64
  store i64 %2325, i64* %199, align 8
  %2326 = add i64 %2227, -56
  %2327 = add i64 %2317, 48
  store i64 %2327, i64* %3, align 8
  %2328 = inttoptr i64 %2326 to i64*
  %2329 = load i64, i64* %2328, align 8
  store i64 %2329, i64* %76, align 8
  %2330 = add i64 %2227, -64
  %2331 = add i64 %2317, 52
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i64*
  %2333 = load i64, i64* %2332, align 8
  store i64 %2333, i64* %83, align 8
  %2334 = add i64 %2227, -72
  %2335 = add i64 %2317, 56
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i64*
  %2337 = load i64, i64* %2336, align 8
  store i64 %2337, i64* %RBX.i1512, align 8
  %2338 = add i64 %2227, -80
  %2339 = add i64 %2317, 60
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2338 to i64*
  %2341 = load i64, i64* %2340, align 8
  store i64 %2341, i64* %R14.i1384, align 8
  %2342 = add i64 %2227, -84
  %2343 = add i64 %2317, 64
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = zext i32 %2345 to i64
  store i64 %2346, i64* %R15.i1372, align 8
  %2347 = add i64 %2227, -96
  %2348 = add i64 %2317, 68
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2347 to i64*
  %2350 = load i64, i64* %2349, align 8
  store i64 %2350, i64* %R12.i1514, align 8
  %2351 = add i64 %2227, -104
  %2352 = add i64 %2317, 72
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i64*
  %2354 = load i64, i64* %2353, align 8
  store i64 %2354, i64* %R13.i1396, align 8
  %2355 = add i64 %2227, -4508
  %2356 = add i64 %2317, 78
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  store i32 1, i32* %2357, align 4
  %2358 = load i64, i64* %RBP.i, align 8
  %2359 = add i64 %2358, -108
  %2360 = load i64, i64* %3, align 8
  %2361 = add i64 %2360, 3
  store i64 %2361, i64* %3, align 8
  %2362 = inttoptr i64 %2359 to i32*
  %2363 = load i32, i32* %2362, align 4
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RAX.i1507, align 8
  %2365 = add i64 %2358, -4520
  %2366 = load i64, i64* %RDI.i1435, align 8
  %2367 = add i64 %2360, 10
  store i64 %2367, i64* %3, align 8
  %2368 = inttoptr i64 %2365 to i64*
  store i64 %2366, i64* %2368, align 8
  %2369 = load i32, i32* %R9D.i1448, align 4
  %2370 = zext i32 %2369 to i64
  %2371 = load i64, i64* %3, align 8
  store i64 %2370, i64* %RDI.i1435, align 8
  %2372 = load i64, i64* %RBP.i, align 8
  %2373 = add i64 %2372, -4528
  %2374 = load i64, i64* %RDX.i1460, align 8
  %2375 = add i64 %2371, 10
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2373 to i64*
  store i64 %2374, i64* %2376, align 8
  %2377 = load i64, i64* %R8.i1452, align 8
  %2378 = load i64, i64* %3, align 8
  store i64 %2377, i64* %RDX.i1460, align 8
  %2379 = load i64, i64* %RBP.i, align 8
  %2380 = add i64 %2379, -4536
  %2381 = load i64, i64* %RCX.i1483, align 8
  %2382 = add i64 %2378, 10
  store i64 %2382, i64* %3, align 8
  %2383 = inttoptr i64 %2380 to i64*
  store i64 %2381, i64* %2383, align 8
  %2384 = load i64, i64* %76, align 8
  %2385 = load i64, i64* %3, align 8
  store i64 %2384, i64* %RCX.i1483, align 8
  %2386 = load i64, i64* %83, align 8
  store i64 %2386, i64* %R8.i1452, align 8
  %2387 = load i64, i64* %RBX.i1512, align 8
  store i64 %2387, i64* %199, align 8
  %2388 = load i64*, i64** %476, align 8
  %2389 = load i64, i64* %R14.i1384, align 8
  %2390 = add i64 %2385, 13
  store i64 %2390, i64* %3, align 8
  store i64 %2389, i64* %2388, align 8
  %2391 = load i64, i64* %6, align 8
  %2392 = add i64 %2391, 8
  %2393 = load i32, i32* %R15D.i1493, align 4
  %2394 = load i64, i64* %3, align 8
  %2395 = add i64 %2394, 5
  store i64 %2395, i64* %3, align 8
  %2396 = inttoptr i64 %2392 to i32*
  store i32 %2393, i32* %2396, align 4
  %2397 = load i64, i64* %6, align 8
  %2398 = add i64 %2397, 16
  %2399 = load i64, i64* %R12.i1514, align 8
  %2400 = load i64, i64* %3, align 8
  %2401 = add i64 %2400, 5
  store i64 %2401, i64* %3, align 8
  %2402 = inttoptr i64 %2398 to i64*
  store i64 %2399, i64* %2402, align 8
  %2403 = load i64, i64* %6, align 8
  %2404 = add i64 %2403, 24
  %2405 = load i64, i64* %R13.i1396, align 8
  %2406 = load i64, i64* %3, align 8
  %2407 = add i64 %2406, 5
  store i64 %2407, i64* %3, align 8
  %2408 = inttoptr i64 %2404 to i64*
  store i64 %2405, i64* %2408, align 8
  %2409 = load i64, i64* %6, align 8
  %2410 = add i64 %2409, 32
  %2411 = load i32, i32* %EAX.i1471, align 4
  %2412 = load i64, i64* %3, align 8
  %2413 = add i64 %2412, 4
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2410 to i32*
  store i32 %2411, i32* %2414, align 4
  %2415 = load i64, i64* %RBP.i, align 8
  %2416 = add i64 %2415, -4520
  %2417 = load i64, i64* %3, align 8
  %2418 = add i64 %2417, 7
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2416 to i64*
  %2420 = load i64, i64* %2419, align 8
  store i64 %2420, i64* %76, align 8
  %2421 = load i64, i64* %6, align 8
  %2422 = add i64 %2421, 40
  %2423 = add i64 %2417, 12
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i64*
  store i64 %2420, i64* %2424, align 8
  %2425 = load i64, i64* %RBP.i, align 8
  %2426 = add i64 %2425, -4528
  %2427 = load i64, i64* %3, align 8
  %2428 = add i64 %2427, 7
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2426 to i64*
  %2430 = load i64, i64* %2429, align 8
  store i64 %2430, i64* %83, align 8
  %2431 = load i64, i64* %6, align 8
  %2432 = add i64 %2431, 48
  %2433 = add i64 %2427, 12
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i64*
  store i64 %2430, i64* %2434, align 8
  %2435 = load i64, i64* %RBP.i, align 8
  %2436 = add i64 %2435, -4536
  %2437 = load i64, i64* %3, align 8
  %2438 = add i64 %2437, 7
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2436 to i64*
  %2440 = load i64, i64* %2439, align 8
  store i64 %2440, i64* %RBX.i1512, align 8
  %2441 = load i64, i64* %6, align 8
  %2442 = add i64 %2441, 56
  %2443 = add i64 %2437, 12
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i64*
  store i64 %2440, i64* %2444, align 8
  %2445 = load i64, i64* %6, align 8
  %2446 = add i64 %2445, 64
  %2447 = load i64, i64* %3, align 8
  %2448 = add i64 %2447, 8
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2446 to i32*
  store i32 1, i32* %2449, align 4
  %2450 = load i64, i64* %3, align 8
  %2451 = add i64 %2450, 780
  %2452 = add i64 %2450, 5
  %2453 = load i64, i64* %6, align 8
  %2454 = add i64 %2453, -8
  %2455 = inttoptr i64 %2454 to i64*
  store i64 %2452, i64* %2455, align 8
  store i64 %2454, i64* %6, align 8
  store i64 %2451, i64* %3, align 8
  %call2_47b854 = tail call %struct.Memory* @sub_47bb60.superstring_add_string(%struct.State* nonnull %0, i64 %2451, %struct.Memory* %MEMORY.12)
  %.pre80 = load i64, i64* %RBP.i, align 8
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_47b859

block_.L_47b859:                                  ; preds = %block_47b784, %block_47b76c, %block_47b757, %block_.L_47b73c, %block_47b79c
  %2456 = phi i64 [ %2264, %block_.L_47b73c ], [ %2281, %block_47b757 ], [ %2299, %block_47b76c ], [ %2317, %block_47b784 ], [ %.pre81, %block_47b79c ]
  %2457 = phi i64 [ %2227, %block_.L_47b73c ], [ %2227, %block_47b757 ], [ %2227, %block_47b76c ], [ %2227, %block_47b784 ], [ %.pre80, %block_47b79c ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_.L_47b73c ], [ %MEMORY.12, %block_47b757 ], [ %MEMORY.12, %block_47b76c ], [ %MEMORY.12, %block_47b784 ], [ %call2_47b854, %block_47b79c ]
  %2458 = add i64 %2457, -116
  %2459 = add i64 %2456, 4
  store i64 %2459, i64* %3, align 8
  %2460 = inttoptr i64 %2458 to i32*
  %2461 = load i32, i32* %2460, align 4
  %2462 = add i32 %2461, -1
  %2463 = icmp eq i32 %2461, 0
  %2464 = zext i1 %2463 to i8
  store i8 %2464, i8* %42, align 1
  %2465 = and i32 %2462, 255
  %2466 = tail call i32 @llvm.ctpop.i32(i32 %2465)
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  %2469 = xor i8 %2468, 1
  store i8 %2469, i8* %49, align 1
  %2470 = xor i32 %2462, %2461
  %2471 = lshr i32 %2470, 4
  %2472 = trunc i32 %2471 to i8
  %2473 = and i8 %2472, 1
  store i8 %2473, i8* %55, align 1
  %2474 = icmp eq i32 %2462, 0
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %58, align 1
  %2476 = lshr i32 %2462, 31
  %2477 = trunc i32 %2476 to i8
  store i8 %2477, i8* %61, align 1
  %2478 = lshr i32 %2461, 31
  %2479 = xor i32 %2476, %2478
  %2480 = add nuw nsw i32 %2479, %2478
  %2481 = icmp eq i32 %2480, 2
  %2482 = zext i1 %2481 to i8
  store i8 %2482, i8* %67, align 1
  %.v99 = select i1 %2474, i64 10, i64 652
  %2483 = add i64 %2456, %.v99
  store i64 %2483, i64* %3, align 8
  br i1 %2474, label %block_47b863, label %block_.L_47bae5

block_47b863:                                     ; preds = %block_.L_47b859
  %2484 = add i64 %2457, -2776
  %2485 = add i64 %2483, 10
  store i64 %2485, i64* %3, align 8
  %2486 = inttoptr i64 %2484 to i32*
  store i32 0, i32* %2486, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_47b86d

block_.L_47b86d:                                  ; preds = %block_.L_47bacc, %block_47b863
  %2487 = phi i64 [ %.pre82, %block_47b863 ], [ %3135, %block_.L_47bacc ]
  %2488 = load i64, i64* %RBP.i, align 8
  %2489 = add i64 %2488, -2776
  %2490 = add i64 %2487, 7
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2489 to i32*
  %2492 = load i32, i32* %2491, align 4
  %2493 = add i32 %2492, -2
  %2494 = icmp ult i32 %2492, 2
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %42, align 1
  %2496 = and i32 %2493, 255
  %2497 = tail call i32 @llvm.ctpop.i32(i32 %2496)
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  %2500 = xor i8 %2499, 1
  store i8 %2500, i8* %49, align 1
  %2501 = xor i32 %2493, %2492
  %2502 = lshr i32 %2501, 4
  %2503 = trunc i32 %2502 to i8
  %2504 = and i8 %2503, 1
  store i8 %2504, i8* %55, align 1
  %2505 = icmp eq i32 %2493, 0
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %58, align 1
  %2507 = lshr i32 %2493, 31
  %2508 = trunc i32 %2507 to i8
  store i8 %2508, i8* %61, align 1
  %2509 = lshr i32 %2492, 31
  %2510 = xor i32 %2507, %2509
  %2511 = add nuw nsw i32 %2510, %2509
  %2512 = icmp eq i32 %2511, 2
  %2513 = zext i1 %2512 to i8
  store i8 %2513, i8* %67, align 1
  %2514 = icmp ne i8 %2508, 0
  %2515 = xor i1 %2514, %2512
  %.v103 = select i1 %2515, i64 13, i64 627
  %2516 = add i64 %2487, %.v103
  store i64 %2516, i64* %3, align 8
  br i1 %2515, label %block_47b87a, label %block_.L_47bae0

block_47b87a:                                     ; preds = %block_.L_47b86d
  %2517 = add i64 %2516, 7
  store i64 %2517, i64* %3, align 8
  %2518 = load i32, i32* %2491, align 4
  store i8 0, i8* %42, align 1
  %2519 = and i32 %2518, 255
  %2520 = tail call i32 @llvm.ctpop.i32(i32 %2519)
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  %2523 = xor i8 %2522, 1
  store i8 %2523, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %2524 = icmp eq i32 %2518, 0
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %58, align 1
  %2526 = lshr i32 %2518, 31
  %2527 = trunc i32 %2526 to i8
  store i8 %2527, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v104 = select i1 %2524, i64 13, i64 30
  %2528 = add i64 %2516, %.v104
  store i64 %2528, i64* %3, align 8
  br i1 %2524, label %block_47b887, label %block_.L_47b898

block_47b887:                                     ; preds = %block_47b87a
  %2529 = add i64 %2488, -2804
  %2530 = add i64 %2528, 6
  store i64 %2530, i64* %3, align 8
  %2531 = inttoptr i64 %2529 to i32*
  %2532 = load i32, i32* %2531, align 4
  %2533 = zext i32 %2532 to i64
  store i64 %2533, i64* %RAX.i1507, align 8
  %2534 = add i64 %2488, -2836
  %2535 = add i64 %2528, 12
  store i64 %2535, i64* %3, align 8
  %2536 = inttoptr i64 %2534 to i32*
  store i32 %2532, i32* %2536, align 4
  %2537 = load i64, i64* %3, align 8
  %2538 = add i64 %2537, 17
  store i64 %2538, i64* %3, align 8
  br label %block_.L_47b8a4

block_.L_47b898:                                  ; preds = %block_47b87a
  %2539 = add i64 %2488, -2808
  %2540 = add i64 %2528, 6
  store i64 %2540, i64* %3, align 8
  %2541 = inttoptr i64 %2539 to i32*
  %2542 = load i32, i32* %2541, align 4
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RAX.i1507, align 8
  %2544 = add i64 %2488, -2836
  %2545 = add i64 %2528, 12
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2544 to i32*
  store i32 %2542, i32* %2546, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_47b8a4

block_.L_47b8a4:                                  ; preds = %block_.L_47b898, %block_47b887
  %2547 = phi i64 [ %.pre83, %block_.L_47b898 ], [ %2538, %block_47b887 ]
  %2548 = load i64, i64* %RBP.i, align 8
  %2549 = add i64 %2548, -2836
  %2550 = add i64 %2547, 7
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to i32*
  %2552 = load i32, i32* %2551, align 4
  %2553 = sext i32 %2552 to i64
  store i64 %2553, i64* %RAX.i1507, align 8
  %2554 = add nsw i64 %2553, 12099168
  %2555 = add i64 %2547, 15
  store i64 %2555, i64* %3, align 8
  %2556 = inttoptr i64 %2554 to i8*
  %2557 = load i8, i8* %2556, align 1
  %2558 = zext i8 %2557 to i64
  store i64 %2558, i64* %RCX.i1483, align 8
  %2559 = zext i8 %2557 to i32
  %2560 = add i64 %2548, -2788
  %2561 = add i64 %2547, 21
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2560 to i32*
  %2563 = load i32, i32* %2562, align 4
  %2564 = sub i32 %2559, %2563
  %2565 = icmp ult i32 %2559, %2563
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %42, align 1
  %2567 = and i32 %2564, 255
  %2568 = tail call i32 @llvm.ctpop.i32(i32 %2567)
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  %2571 = xor i8 %2570, 1
  store i8 %2571, i8* %49, align 1
  %2572 = xor i32 %2563, %2559
  %2573 = xor i32 %2572, %2564
  %2574 = lshr i32 %2573, 4
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  store i8 %2576, i8* %55, align 1
  %2577 = icmp eq i32 %2564, 0
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %58, align 1
  %2579 = lshr i32 %2564, 31
  %2580 = trunc i32 %2579 to i8
  store i8 %2580, i8* %61, align 1
  %2581 = lshr i32 %2563, 31
  %2582 = add nuw nsw i32 %2579, %2581
  %2583 = icmp eq i32 %2582, 2
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %67, align 1
  %.v105 = select i1 %2577, i64 32, i64 27
  %2585 = add i64 %2547, %.v105
  store i64 %2585, i64* %3, align 8
  br i1 %2577, label %block_.L_47b8c4, label %block_.L_47bacc

block_.L_47b8c4:                                  ; preds = %block_.L_47b8a4
  %2586 = add i64 %2585, 6
  store i64 %2586, i64* %3, align 8
  %2587 = load i32, i32* %2551, align 4
  %2588 = zext i32 %2587 to i64
  store i64 %2588, i64* %RDI.i1435, align 8
  %2589 = add i64 %2585, -423652
  %2590 = add i64 %2585, 11
  %2591 = load i64, i64* %6, align 8
  %2592 = add i64 %2591, -8
  %2593 = inttoptr i64 %2592 to i64*
  store i64 %2590, i64* %2593, align 8
  store i64 %2592, i64* %6, align 8
  store i64 %2589, i64* %3, align 8
  %call2_47b8ca = tail call %struct.Memory* @sub_4141e0.find_origin(%struct.State* nonnull %0, i64 %2589, %struct.Memory* %MEMORY.13)
  %2594 = load i64, i64* %RBP.i, align 8
  %2595 = add i64 %2594, -2836
  %2596 = load i32, i32* %EAX.i1471, align 4
  %2597 = load i64, i64* %3, align 8
  %2598 = add i64 %2597, 6
  store i64 %2598, i64* %3, align 8
  %2599 = inttoptr i64 %2595 to i32*
  store i32 %2596, i32* %2599, align 4
  %2600 = load i64, i64* %RBP.i, align 8
  %2601 = add i64 %2600, -2836
  %2602 = load i64, i64* %3, align 8
  %2603 = add i64 %2602, 7
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2601 to i32*
  %2605 = load i32, i32* %2604, align 4
  %2606 = sext i32 %2605 to i64
  store i64 %2606, i64* %RCX.i1483, align 8
  %2607 = add nsw i64 %2606, -1968
  %2608 = add i64 %2607, %2600
  %2609 = add i64 %2602, 15
  store i64 %2609, i64* %3, align 8
  %2610 = inttoptr i64 %2608 to i8*
  %2611 = load i8, i8* %2610, align 1
  %2612 = sext i8 %2611 to i64
  %2613 = and i64 %2612, 4294967295
  store i64 %2613, i64* %RAX.i1507, align 8
  %2614 = sext i8 %2611 to i32
  %2615 = add nsw i32 %2614, -1
  %2616 = icmp eq i8 %2611, 0
  %2617 = zext i1 %2616 to i8
  store i8 %2617, i8* %42, align 1
  %2618 = and i32 %2615, 255
  %2619 = tail call i32 @llvm.ctpop.i32(i32 %2618)
  %2620 = trunc i32 %2619 to i8
  %2621 = and i8 %2620, 1
  %2622 = xor i8 %2621, 1
  store i8 %2622, i8* %49, align 1
  %2623 = xor i32 %2615, %2614
  %2624 = lshr i32 %2623, 4
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  store i8 %2626, i8* %55, align 1
  %2627 = icmp eq i32 %2615, 0
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %58, align 1
  %2629 = lshr i32 %2615, 31
  %2630 = trunc i32 %2629 to i8
  store i8 %2630, i8* %61, align 1
  %2631 = lshr i32 %2614, 31
  %2632 = xor i32 %2629, %2631
  %2633 = add nuw nsw i32 %2632, %2631
  %2634 = icmp eq i32 %2633, 2
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %67, align 1
  %.v106 = select i1 %2627, i64 24, i64 29
  %2636 = add i64 %2602, %.v106
  store i64 %2636, i64* %3, align 8
  br i1 %2627, label %block_.L_47bacc, label %block_.L_47b8f2

block_.L_47b8f2:                                  ; preds = %block_.L_47b8c4
  %2637 = zext i32 %2614 to i64
  %2638 = xor i64 %2637, %2613
  %2639 = trunc i64 %2638 to i32
  store i64 %2638, i64* %RAX.i1507, align 8
  store i8 0, i8* %42, align 1
  %2640 = and i32 %2639, 255
  %2641 = tail call i32 @llvm.ctpop.i32(i32 %2640)
  %2642 = trunc i32 %2641 to i8
  %2643 = and i8 %2642, 1
  %2644 = xor i8 %2643, 1
  store i8 %2644, i8* %49, align 1
  %2645 = icmp eq i32 %2639, 0
  %2646 = zext i1 %2645 to i8
  store i8 %2646, i8* %58, align 1
  %2647 = lshr i32 %2639, 31
  %2648 = trunc i32 %2647 to i8
  store i8 %2648, i8* %61, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %55, align 1
  store i64 %2638, i64* %RSI.i1463, align 8
  %2649 = add i64 %2636, 11
  store i64 %2649, i64* %3, align 8
  %2650 = load i32, i32* %2604, align 4
  %2651 = sext i32 %2650 to i64
  store i64 %2651, i64* %RCX.i1483, align 8
  %2652 = add nsw i64 %2651, -1968
  %2653 = add i64 %2652, %2600
  %2654 = add i64 %2636, 19
  store i64 %2654, i64* %3, align 8
  %2655 = inttoptr i64 %2653 to i8*
  store i8 1, i8* %2655, align 1
  %2656 = load i64, i64* %RBP.i, align 8
  %2657 = add i64 %2656, -2836
  %2658 = load i64, i64* %3, align 8
  %2659 = add i64 %2658, 6
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2657 to i32*
  %2661 = load i32, i32* %2660, align 4
  %2662 = zext i32 %2661 to i64
  store i64 %2662, i64* %RDI.i1435, align 8
  %2663 = add i64 %2658, -122309
  %2664 = add i64 %2658, 11
  %2665 = load i64, i64* %6, align 8
  %2666 = add i64 %2665, -8
  %2667 = inttoptr i64 %2666 to i64*
  store i64 %2664, i64* %2667, align 8
  store i64 %2666, i64* %6, align 8
  store i64 %2663, i64* %3, align 8
  %call2_47b90b = tail call %struct.Memory* @sub_45db40.attack(%struct.State* nonnull %0, i64 %2663, %struct.Memory* %MEMORY.13)
  %2668 = load i32, i32* %EAX.i1471, align 4
  %2669 = load i64, i64* %3, align 8
  store i8 0, i8* %42, align 1
  %2670 = and i32 %2668, 255
  %2671 = tail call i32 @llvm.ctpop.i32(i32 %2670)
  %2672 = trunc i32 %2671 to i8
  %2673 = and i8 %2672, 1
  %2674 = xor i8 %2673, 1
  store i8 %2674, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %2675 = icmp eq i32 %2668, 0
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %58, align 1
  %2677 = lshr i32 %2668, 31
  %2678 = trunc i32 %2677 to i8
  store i8 %2678, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v107 = select i1 %2675, i64 439, i64 9
  %2679 = add i64 %2669, %.v107
  store i64 %2679, i64* %3, align 8
  br i1 %2675, label %block_.L_47bacc, label %block_47b919

block_47b919:                                     ; preds = %block_.L_47b8f2
  store i64 0, i64* %RAX.i1507, align 8
  store i8 0, i8* %42, align 1
  store i8 1, i8* %49, align 1
  store i8 1, i8* %58, align 1
  store i8 0, i8* %61, align 1
  store i8 0, i8* %67, align 1
  store i8 0, i8* %55, align 1
  store i64 0, i64* %RSI.i1463, align 8
  %2680 = load i64, i64* %RBP.i, align 8
  %2681 = add i64 %2680, -2836
  %2682 = add i64 %2679, 10
  store i64 %2682, i64* %3, align 8
  %2683 = inttoptr i64 %2681 to i32*
  %2684 = load i32, i32* %2683, align 4
  %2685 = zext i32 %2684 to i64
  store i64 %2685, i64* %RDI.i1435, align 8
  %2686 = add i64 %2679, -70041
  %2687 = add i64 %2679, 15
  %2688 = load i64, i64* %6, align 8
  %2689 = add i64 %2688, -8
  %2690 = inttoptr i64 %2689 to i64*
  store i64 %2687, i64* %2690, align 8
  store i64 %2689, i64* %6, align 8
  store i64 %2686, i64* %3, align 8
  %call2_47b923 = tail call %struct.Memory* @sub_46a780.find_defense(%struct.State* nonnull %0, i64 %2686, %struct.Memory* %MEMORY.13)
  %2691 = load i32, i32* %EAX.i1471, align 4
  %2692 = load i64, i64* %3, align 8
  store i8 0, i8* %42, align 1
  %2693 = and i32 %2691, 255
  %2694 = tail call i32 @llvm.ctpop.i32(i32 %2693)
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = xor i8 %2696, 1
  store i8 %2697, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %2698 = icmp eq i32 %2691, 0
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %58, align 1
  %2700 = lshr i32 %2691, 31
  %2701 = trunc i32 %2700 to i8
  store i8 %2701, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v108 = select i1 %2698, i64 9, i64 415
  %2702 = add i64 %2692, %.v108
  store i64 %2702, i64* %3, align 8
  br i1 %2698, label %block_47b931, label %block_.L_47bacc

block_47b931:                                     ; preds = %block_47b919
  store i64 361, i64* %RSI.i1463, align 8
  %2703 = load i64, i64* %RBP.i, align 8
  %2704 = add i64 %2703, -4288
  store i64 %2704, i64* %RDX.i1460, align 8
  %2705 = add i64 %2703, -2836
  %2706 = add i64 %2702, 18
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2705 to i32*
  %2708 = load i32, i32* %2707, align 4
  %2709 = zext i32 %2708 to i64
  store i64 %2709, i64* %RDI.i1435, align 8
  %2710 = add i64 %2702, -425985
  %2711 = add i64 %2702, 23
  %2712 = load i64, i64* %6, align 8
  %2713 = add i64 %2712, -8
  %2714 = inttoptr i64 %2713 to i64*
  store i64 %2711, i64* %2714, align 8
  store i64 %2713, i64* %6, align 8
  store i64 %2710, i64* %3, align 8
  %call2_47b943 = tail call %struct.Memory* @sub_413930.findstones(%struct.State* nonnull %0, i64 %2710, %struct.Memory* %MEMORY.13)
  %2715 = load i64, i64* %RBP.i, align 8
  %2716 = add i64 %2715, -4292
  %2717 = load i32, i32* %EAX.i1471, align 4
  %2718 = load i64, i64* %3, align 8
  %2719 = add i64 %2718, 6
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2716 to i32*
  store i32 %2717, i32* %2720, align 4
  %2721 = load i64, i64* %RBP.i, align 8
  %2722 = add i64 %2721, -4296
  %2723 = load i64, i64* %3, align 8
  %2724 = add i64 %2723, 10
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2722 to i32*
  store i32 0, i32* %2725, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_47b958

block_.L_47b958:                                  ; preds = %block_.L_47baa9, %block_47b931
  %2726 = phi i64 [ %.pre84, %block_47b931 ], [ %3101, %block_.L_47baa9 ]
  %2727 = load i64, i64* %RBP.i, align 8
  %2728 = add i64 %2727, -4296
  %2729 = add i64 %2726, 6
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i32*
  %2731 = load i32, i32* %2730, align 4
  %2732 = zext i32 %2731 to i64
  store i64 %2732, i64* %RAX.i1507, align 8
  %2733 = add i64 %2727, -4292
  %2734 = add i64 %2726, 12
  store i64 %2734, i64* %3, align 8
  %2735 = inttoptr i64 %2733 to i32*
  %2736 = load i32, i32* %2735, align 4
  %2737 = sub i32 %2731, %2736
  %2738 = icmp ult i32 %2731, %2736
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %42, align 1
  %2740 = and i32 %2737, 255
  %2741 = tail call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  store i8 %2744, i8* %49, align 1
  %2745 = xor i32 %2736, %2731
  %2746 = xor i32 %2745, %2737
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  store i8 %2749, i8* %55, align 1
  %2750 = icmp eq i32 %2737, 0
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %58, align 1
  %2752 = lshr i32 %2737, 31
  %2753 = trunc i32 %2752 to i8
  store i8 %2753, i8* %61, align 1
  %2754 = lshr i32 %2731, 31
  %2755 = lshr i32 %2736, 31
  %2756 = xor i32 %2755, %2754
  %2757 = xor i32 %2752, %2754
  %2758 = add nuw nsw i32 %2757, %2756
  %2759 = icmp eq i32 %2758, 2
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %67, align 1
  %2761 = icmp ne i8 %2753, 0
  %2762 = xor i1 %2761, %2759
  %.v109 = select i1 %2762, i64 18, i64 362
  %2763 = add i64 %2726, %.v109
  store i64 %2763, i64* %3, align 8
  br i1 %2762, label %block_47b96a, label %block_.L_47bac2

block_47b96a:                                     ; preds = %block_.L_47b958
  %2764 = add i64 %2727, -4300
  %2765 = add i64 %2763, 10
  store i64 %2765, i64* %3, align 8
  %2766 = inttoptr i64 %2764 to i32*
  store i32 0, i32* %2766, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_47b974

block_.L_47b974:                                  ; preds = %block_.L_47ba90, %block_47b96a
  %2767 = phi i64 [ %.pre85, %block_47b96a ], [ %3072, %block_.L_47ba90 ]
  %2768 = load i64, i64* %RBP.i, align 8
  %2769 = add i64 %2768, -4300
  %2770 = add i64 %2767, 7
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = add i32 %2772, -8
  %2774 = icmp ult i32 %2772, 8
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %42, align 1
  %2776 = and i32 %2773, 255
  %2777 = tail call i32 @llvm.ctpop.i32(i32 %2776)
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  %2780 = xor i8 %2779, 1
  store i8 %2780, i8* %49, align 1
  %2781 = xor i32 %2773, %2772
  %2782 = lshr i32 %2781, 4
  %2783 = trunc i32 %2782 to i8
  %2784 = and i8 %2783, 1
  store i8 %2784, i8* %55, align 1
  %2785 = icmp eq i32 %2773, 0
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %58, align 1
  %2787 = lshr i32 %2773, 31
  %2788 = trunc i32 %2787 to i8
  store i8 %2788, i8* %61, align 1
  %2789 = lshr i32 %2772, 31
  %2790 = xor i32 %2787, %2789
  %2791 = add nuw nsw i32 %2790, %2789
  %2792 = icmp eq i32 %2791, 2
  %2793 = zext i1 %2792 to i8
  store i8 %2793, i8* %67, align 1
  %2794 = icmp ne i8 %2788, 0
  %2795 = xor i1 %2794, %2792
  %.v = select i1 %2795, i64 13, i64 309
  %2796 = add i64 %2767, %.v
  store i64 %2796, i64* %3, align 8
  %2797 = add i64 %2768, -4296
  br i1 %2795, label %block_47b981, label %block_.L_47baa9

block_47b981:                                     ; preds = %block_.L_47b974
  %2798 = add i64 %2796, 7
  store i64 %2798, i64* %3, align 8
  %2799 = inttoptr i64 %2797 to i32*
  %2800 = load i32, i32* %2799, align 4
  %2801 = sext i32 %2800 to i64
  store i64 %2801, i64* %RAX.i1507, align 8
  %2802 = shl nsw i64 %2801, 2
  %2803 = add i64 %2768, -4288
  %2804 = add i64 %2803, %2802
  %2805 = add i64 %2796, 14
  store i64 %2805, i64* %3, align 8
  %2806 = inttoptr i64 %2804 to i32*
  %2807 = load i32, i32* %2806, align 4
  %2808 = zext i32 %2807 to i64
  store i64 %2808, i64* %RCX.i1483, align 8
  %2809 = add i64 %2796, 21
  store i64 %2809, i64* %3, align 8
  %2810 = load i32, i32* %2771, align 4
  %2811 = sext i32 %2810 to i64
  store i64 %2811, i64* %RAX.i1507, align 8
  %2812 = shl nsw i64 %2811, 2
  %2813 = add nsw i64 %2812, 8053168
  %2814 = add i64 %2796, 28
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2813 to i32*
  %2816 = load i32, i32* %2815, align 4
  %2817 = add i32 %2816, %2807
  %2818 = zext i32 %2817 to i64
  store i64 %2818, i64* %RCX.i1483, align 8
  %2819 = icmp ult i32 %2817, %2807
  %2820 = icmp ult i32 %2817, %2816
  %2821 = or i1 %2819, %2820
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %42, align 1
  %2823 = and i32 %2817, 255
  %2824 = tail call i32 @llvm.ctpop.i32(i32 %2823)
  %2825 = trunc i32 %2824 to i8
  %2826 = and i8 %2825, 1
  %2827 = xor i8 %2826, 1
  store i8 %2827, i8* %49, align 1
  %2828 = xor i32 %2816, %2807
  %2829 = xor i32 %2828, %2817
  %2830 = lshr i32 %2829, 4
  %2831 = trunc i32 %2830 to i8
  %2832 = and i8 %2831, 1
  store i8 %2832, i8* %55, align 1
  %2833 = icmp eq i32 %2817, 0
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %58, align 1
  %2835 = lshr i32 %2817, 31
  %2836 = trunc i32 %2835 to i8
  store i8 %2836, i8* %61, align 1
  %2837 = lshr i32 %2807, 31
  %2838 = lshr i32 %2816, 31
  %2839 = xor i32 %2835, %2837
  %2840 = xor i32 %2835, %2838
  %2841 = add nuw nsw i32 %2839, %2840
  %2842 = icmp eq i32 %2841, 2
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %67, align 1
  %2844 = add i64 %2768, -4304
  %2845 = add i64 %2796, 34
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to i32*
  store i32 %2817, i32* %2846, align 4
  %2847 = load i64, i64* %RBP.i, align 8
  %2848 = add i64 %2847, -4304
  %2849 = load i64, i64* %3, align 8
  %2850 = add i64 %2849, 7
  store i64 %2850, i64* %3, align 8
  %2851 = inttoptr i64 %2848 to i32*
  %2852 = load i32, i32* %2851, align 4
  %2853 = sext i32 %2852 to i64
  store i64 %2853, i64* %RAX.i1507, align 8
  %2854 = add nsw i64 %2853, 12099168
  %2855 = add i64 %2849, 15
  store i64 %2855, i64* %3, align 8
  %2856 = inttoptr i64 %2854 to i8*
  %2857 = load i8, i8* %2856, align 1
  %2858 = zext i8 %2857 to i64
  store i64 %2858, i64* %RCX.i1483, align 8
  %2859 = zext i8 %2857 to i32
  %2860 = add i64 %2847, -2784
  %2861 = add i64 %2849, 21
  store i64 %2861, i64* %3, align 8
  %2862 = inttoptr i64 %2860 to i32*
  %2863 = load i32, i32* %2862, align 4
  %2864 = sub i32 %2859, %2863
  %2865 = icmp ult i32 %2859, %2863
  %2866 = zext i1 %2865 to i8
  store i8 %2866, i8* %42, align 1
  %2867 = and i32 %2864, 255
  %2868 = tail call i32 @llvm.ctpop.i32(i32 %2867)
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = xor i8 %2870, 1
  store i8 %2871, i8* %49, align 1
  %2872 = xor i32 %2863, %2859
  %2873 = xor i32 %2872, %2864
  %2874 = lshr i32 %2873, 4
  %2875 = trunc i32 %2874 to i8
  %2876 = and i8 %2875, 1
  store i8 %2876, i8* %55, align 1
  %2877 = icmp eq i32 %2864, 0
  %2878 = zext i1 %2877 to i8
  store i8 %2878, i8* %58, align 1
  %2879 = lshr i32 %2864, 31
  %2880 = trunc i32 %2879 to i8
  store i8 %2880, i8* %61, align 1
  %2881 = lshr i32 %2863, 31
  %2882 = add nuw nsw i32 %2879, %2881
  %2883 = icmp eq i32 %2882, 2
  %2884 = zext i1 %2883 to i8
  store i8 %2884, i8* %67, align 1
  %.v110 = select i1 %2877, i64 27, i64 237
  %2885 = add i64 %2849, %.v110
  store i64 %2885, i64* %3, align 8
  br i1 %2877, label %block_47b9be, label %block_.L_47ba90

block_47b9be:                                     ; preds = %block_47b981
  %2886 = add i64 %2885, 7
  store i64 %2886, i64* %3, align 8
  %2887 = load i32, i32* %2851, align 4
  %2888 = sext i32 %2887 to i64
  store i64 %2888, i64* %RAX.i1507, align 8
  %2889 = add nsw i64 %2888, -1968
  %2890 = add i64 %2889, %2847
  %2891 = add i64 %2885, 15
  store i64 %2891, i64* %3, align 8
  %2892 = inttoptr i64 %2890 to i8*
  %2893 = load i8, i8* %2892, align 1
  store i8 0, i8* %42, align 1
  %2894 = zext i8 %2893 to i32
  %2895 = tail call i32 @llvm.ctpop.i32(i32 %2894)
  %2896 = trunc i32 %2895 to i8
  %2897 = and i8 %2896, 1
  %2898 = xor i8 %2897, 1
  store i8 %2898, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %2899 = icmp eq i8 %2893, 0
  %2900 = zext i1 %2899 to i8
  store i8 %2900, i8* %58, align 1
  %2901 = lshr i8 %2893, 7
  store i8 %2901, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v111 = select i1 %2899, i64 21, i64 210
  %2902 = add i64 %2885, %.v111
  store i64 %2902, i64* %3, align 8
  br i1 %2899, label %block_47b9d3, label %block_.L_47ba90

block_47b9d3:                                     ; preds = %block_47b9be
  %2903 = add i64 %2847, -120
  store i64 %2903, i64* %RSI.i1463, align 8
  store i64 1, i64* %RAX.i1507, align 8
  %2904 = add i64 %2847, -2768
  store i64 %2904, i64* %RCX.i1483, align 8
  %2905 = add i64 %2847, -2368
  store i64 %2905, i64* %RDX.i1460, align 8
  %2906 = add i64 %2847, -1968
  store i64 %2906, i64* %RDI.i1435, align 8
  %2907 = add i64 %2847, -1568
  store i64 %2907, i64* %R8.i1452, align 8
  %2908 = add i64 %2902, 44
  store i64 %2908, i64* %3, align 8
  %2909 = load i32, i32* %2851, align 4
  %2910 = zext i32 %2909 to i64
  store i64 %2910, i64* %199, align 8
  %2911 = add i64 %2847, -56
  %2912 = add i64 %2902, 48
  store i64 %2912, i64* %3, align 8
  %2913 = inttoptr i64 %2911 to i64*
  %2914 = load i64, i64* %2913, align 8
  store i64 %2914, i64* %76, align 8
  %2915 = add i64 %2847, -64
  %2916 = add i64 %2902, 52
  store i64 %2916, i64* %3, align 8
  %2917 = inttoptr i64 %2915 to i64*
  %2918 = load i64, i64* %2917, align 8
  store i64 %2918, i64* %83, align 8
  %2919 = add i64 %2847, -72
  %2920 = add i64 %2902, 56
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i64*
  %2922 = load i64, i64* %2921, align 8
  store i64 %2922, i64* %RBX.i1512, align 8
  %2923 = add i64 %2847, -80
  %2924 = add i64 %2902, 60
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i64*
  %2926 = load i64, i64* %2925, align 8
  store i64 %2926, i64* %R14.i1384, align 8
  %2927 = add i64 %2847, -84
  %2928 = add i64 %2902, 64
  store i64 %2928, i64* %3, align 8
  %2929 = inttoptr i64 %2927 to i32*
  %2930 = load i32, i32* %2929, align 4
  %2931 = zext i32 %2930 to i64
  store i64 %2931, i64* %R15.i1372, align 8
  %2932 = add i64 %2847, -96
  %2933 = add i64 %2902, 68
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i64*
  %2935 = load i64, i64* %2934, align 8
  store i64 %2935, i64* %R12.i1514, align 8
  %2936 = add i64 %2847, -104
  %2937 = add i64 %2902, 72
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %R13.i1396, align 8
  %2940 = add i64 %2847, -4540
  %2941 = add i64 %2902, 78
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  store i32 1, i32* %2942, align 4
  %2943 = load i64, i64* %RBP.i, align 8
  %2944 = add i64 %2943, -108
  %2945 = load i64, i64* %3, align 8
  %2946 = add i64 %2945, 3
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2944 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = zext i32 %2948 to i64
  store i64 %2949, i64* %RAX.i1507, align 8
  %2950 = add i64 %2943, -4552
  %2951 = load i64, i64* %RDI.i1435, align 8
  %2952 = add i64 %2945, 10
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2950 to i64*
  store i64 %2951, i64* %2953, align 8
  %2954 = load i32, i32* %R9D.i1448, align 4
  %2955 = zext i32 %2954 to i64
  %2956 = load i64, i64* %3, align 8
  store i64 %2955, i64* %RDI.i1435, align 8
  %2957 = load i64, i64* %RBP.i, align 8
  %2958 = add i64 %2957, -4560
  %2959 = load i64, i64* %RDX.i1460, align 8
  %2960 = add i64 %2956, 10
  store i64 %2960, i64* %3, align 8
  %2961 = inttoptr i64 %2958 to i64*
  store i64 %2959, i64* %2961, align 8
  %2962 = load i64, i64* %R8.i1452, align 8
  %2963 = load i64, i64* %3, align 8
  store i64 %2962, i64* %RDX.i1460, align 8
  %2964 = load i64, i64* %RBP.i, align 8
  %2965 = add i64 %2964, -4568
  %2966 = load i64, i64* %RCX.i1483, align 8
  %2967 = add i64 %2963, 10
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2965 to i64*
  store i64 %2966, i64* %2968, align 8
  %2969 = load i64, i64* %76, align 8
  %2970 = load i64, i64* %3, align 8
  store i64 %2969, i64* %RCX.i1483, align 8
  %2971 = load i64, i64* %83, align 8
  store i64 %2971, i64* %R8.i1452, align 8
  %2972 = load i64, i64* %RBX.i1512, align 8
  store i64 %2972, i64* %199, align 8
  %2973 = load i64*, i64** %476, align 8
  %2974 = load i64, i64* %R14.i1384, align 8
  %2975 = add i64 %2970, 13
  store i64 %2975, i64* %3, align 8
  store i64 %2974, i64* %2973, align 8
  %2976 = load i64, i64* %6, align 8
  %2977 = add i64 %2976, 8
  %2978 = load i32, i32* %R15D.i1493, align 4
  %2979 = load i64, i64* %3, align 8
  %2980 = add i64 %2979, 5
  store i64 %2980, i64* %3, align 8
  %2981 = inttoptr i64 %2977 to i32*
  store i32 %2978, i32* %2981, align 4
  %2982 = load i64, i64* %6, align 8
  %2983 = add i64 %2982, 16
  %2984 = load i64, i64* %R12.i1514, align 8
  %2985 = load i64, i64* %3, align 8
  %2986 = add i64 %2985, 5
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2983 to i64*
  store i64 %2984, i64* %2987, align 8
  %2988 = load i64, i64* %6, align 8
  %2989 = add i64 %2988, 24
  %2990 = load i64, i64* %R13.i1396, align 8
  %2991 = load i64, i64* %3, align 8
  %2992 = add i64 %2991, 5
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2989 to i64*
  store i64 %2990, i64* %2993, align 8
  %2994 = load i64, i64* %6, align 8
  %2995 = add i64 %2994, 32
  %2996 = load i32, i32* %EAX.i1471, align 4
  %2997 = load i64, i64* %3, align 8
  %2998 = add i64 %2997, 4
  store i64 %2998, i64* %3, align 8
  %2999 = inttoptr i64 %2995 to i32*
  store i32 %2996, i32* %2999, align 4
  %3000 = load i64, i64* %RBP.i, align 8
  %3001 = add i64 %3000, -4552
  %3002 = load i64, i64* %3, align 8
  %3003 = add i64 %3002, 7
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3001 to i64*
  %3005 = load i64, i64* %3004, align 8
  store i64 %3005, i64* %76, align 8
  %3006 = load i64, i64* %6, align 8
  %3007 = add i64 %3006, 40
  %3008 = add i64 %3002, 12
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3007 to i64*
  store i64 %3005, i64* %3009, align 8
  %3010 = load i64, i64* %RBP.i, align 8
  %3011 = add i64 %3010, -4560
  %3012 = load i64, i64* %3, align 8
  %3013 = add i64 %3012, 7
  store i64 %3013, i64* %3, align 8
  %3014 = inttoptr i64 %3011 to i64*
  %3015 = load i64, i64* %3014, align 8
  store i64 %3015, i64* %83, align 8
  %3016 = load i64, i64* %6, align 8
  %3017 = add i64 %3016, 48
  %3018 = add i64 %3012, 12
  store i64 %3018, i64* %3, align 8
  %3019 = inttoptr i64 %3017 to i64*
  store i64 %3015, i64* %3019, align 8
  %3020 = load i64, i64* %RBP.i, align 8
  %3021 = add i64 %3020, -4568
  %3022 = load i64, i64* %3, align 8
  %3023 = add i64 %3022, 7
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3021 to i64*
  %3025 = load i64, i64* %3024, align 8
  store i64 %3025, i64* %RBX.i1512, align 8
  %3026 = load i64, i64* %6, align 8
  %3027 = add i64 %3026, 56
  %3028 = add i64 %3022, 12
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3027 to i64*
  store i64 %3025, i64* %3029, align 8
  %3030 = load i64, i64* %6, align 8
  %3031 = add i64 %3030, 64
  %3032 = load i64, i64* %3, align 8
  %3033 = add i64 %3032, 8
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3031 to i32*
  store i32 1, i32* %3034, align 4
  %3035 = load i64, i64* %3, align 8
  %3036 = add i64 %3035, 213
  %3037 = add i64 %3035, 5
  %3038 = load i64, i64* %6, align 8
  %3039 = add i64 %3038, -8
  %3040 = inttoptr i64 %3039 to i64*
  store i64 %3037, i64* %3040, align 8
  store i64 %3039, i64* %6, align 8
  store i64 %3036, i64* %3, align 8
  %call2_47ba8b = tail call %struct.Memory* @sub_47bb60.superstring_add_string(%struct.State* nonnull %0, i64 %3036, %struct.Memory* %MEMORY.13)
  %.pre86 = load i64, i64* %3, align 8
  %.pre87 = load i64, i64* %RBP.i, align 8
  br label %block_.L_47ba90

block_.L_47ba90:                                  ; preds = %block_47b9be, %block_47b981, %block_47b9d3
  %3041 = phi i64 [ %.pre87, %block_47b9d3 ], [ %2847, %block_47b9be ], [ %2847, %block_47b981 ]
  %3042 = phi i64 [ %.pre86, %block_47b9d3 ], [ %2902, %block_47b9be ], [ %2885, %block_47b981 ]
  %3043 = add i64 %3041, -4300
  %3044 = add i64 %3042, 11
  store i64 %3044, i64* %3, align 8
  %3045 = inttoptr i64 %3043 to i32*
  %3046 = load i32, i32* %3045, align 4
  %3047 = add i32 %3046, 1
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RAX.i1507, align 8
  %3049 = icmp eq i32 %3046, -1
  %3050 = icmp eq i32 %3047, 0
  %3051 = or i1 %3049, %3050
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %42, align 1
  %3053 = and i32 %3047, 255
  %3054 = tail call i32 @llvm.ctpop.i32(i32 %3053)
  %3055 = trunc i32 %3054 to i8
  %3056 = and i8 %3055, 1
  %3057 = xor i8 %3056, 1
  store i8 %3057, i8* %49, align 1
  %3058 = xor i32 %3047, %3046
  %3059 = lshr i32 %3058, 4
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  store i8 %3061, i8* %55, align 1
  %3062 = zext i1 %3050 to i8
  store i8 %3062, i8* %58, align 1
  %3063 = lshr i32 %3047, 31
  %3064 = trunc i32 %3063 to i8
  store i8 %3064, i8* %61, align 1
  %3065 = lshr i32 %3046, 31
  %3066 = xor i32 %3063, %3065
  %3067 = add nuw nsw i32 %3066, %3063
  %3068 = icmp eq i32 %3067, 2
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %67, align 1
  %3070 = add i64 %3042, 20
  store i64 %3070, i64* %3, align 8
  store i32 %3047, i32* %3045, align 4
  %3071 = load i64, i64* %3, align 8
  %3072 = add i64 %3071, -304
  store i64 %3072, i64* %3, align 8
  br label %block_.L_47b974

block_.L_47baa9:                                  ; preds = %block_.L_47b974
  %3073 = add i64 %2796, 11
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %2797 to i32*
  %3075 = load i32, i32* %3074, align 4
  %3076 = add i32 %3075, 1
  %3077 = zext i32 %3076 to i64
  store i64 %3077, i64* %RAX.i1507, align 8
  %3078 = icmp eq i32 %3075, -1
  %3079 = icmp eq i32 %3076, 0
  %3080 = or i1 %3078, %3079
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %42, align 1
  %3082 = and i32 %3076, 255
  %3083 = tail call i32 @llvm.ctpop.i32(i32 %3082)
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = xor i8 %3085, 1
  store i8 %3086, i8* %49, align 1
  %3087 = xor i32 %3076, %3075
  %3088 = lshr i32 %3087, 4
  %3089 = trunc i32 %3088 to i8
  %3090 = and i8 %3089, 1
  store i8 %3090, i8* %55, align 1
  %3091 = zext i1 %3079 to i8
  store i8 %3091, i8* %58, align 1
  %3092 = lshr i32 %3076, 31
  %3093 = trunc i32 %3092 to i8
  store i8 %3093, i8* %61, align 1
  %3094 = lshr i32 %3075, 31
  %3095 = xor i32 %3092, %3094
  %3096 = add nuw nsw i32 %3095, %3092
  %3097 = icmp eq i32 %3096, 2
  %3098 = zext i1 %3097 to i8
  store i8 %3098, i8* %67, align 1
  %3099 = add i64 %2796, 20
  store i64 %3099, i64* %3, align 8
  store i32 %3076, i32* %3074, align 4
  %3100 = load i64, i64* %3, align 8
  %3101 = add i64 %3100, -357
  store i64 %3101, i64* %3, align 8
  br label %block_.L_47b958

block_.L_47bac2:                                  ; preds = %block_.L_47b958
  %3102 = add i64 %2763, 5
  store i64 %3102, i64* %3, align 8
  br label %block_.L_47bacc

block_.L_47bacc:                                  ; preds = %block_47b919, %block_.L_47b8c4, %block_.L_47b8a4, %block_.L_47b8f2, %block_.L_47bac2
  %3103 = phi i64 [ %2636, %block_.L_47b8c4 ], [ %3102, %block_.L_47bac2 ], [ %2702, %block_47b919 ], [ %2679, %block_.L_47b8f2 ], [ %2585, %block_.L_47b8a4 ]
  %.sink45 = phi i64 [ 479, %block_.L_47b8c4 ], [ 5, %block_.L_47bac2 ], [ 5, %block_47b919 ], [ 5, %block_.L_47b8f2 ], [ 525, %block_.L_47b8a4 ]
  %3104 = add i64 %3103, %.sink45
  %3105 = load i64, i64* %RBP.i, align 8
  %3106 = add i64 %3105, -2776
  %3107 = add i64 %3104, 6
  store i64 %3107, i64* %3, align 8
  %3108 = inttoptr i64 %3106 to i32*
  %3109 = load i32, i32* %3108, align 4
  %3110 = add i32 %3109, 1
  %3111 = zext i32 %3110 to i64
  store i64 %3111, i64* %RAX.i1507, align 8
  %3112 = icmp eq i32 %3109, -1
  %3113 = icmp eq i32 %3110, 0
  %3114 = or i1 %3112, %3113
  %3115 = zext i1 %3114 to i8
  store i8 %3115, i8* %42, align 1
  %3116 = and i32 %3110, 255
  %3117 = tail call i32 @llvm.ctpop.i32(i32 %3116)
  %3118 = trunc i32 %3117 to i8
  %3119 = and i8 %3118, 1
  %3120 = xor i8 %3119, 1
  store i8 %3120, i8* %49, align 1
  %3121 = xor i32 %3110, %3109
  %3122 = lshr i32 %3121, 4
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  store i8 %3124, i8* %55, align 1
  %3125 = zext i1 %3113 to i8
  store i8 %3125, i8* %58, align 1
  %3126 = lshr i32 %3110, 31
  %3127 = trunc i32 %3126 to i8
  store i8 %3127, i8* %61, align 1
  %3128 = lshr i32 %3109, 31
  %3129 = xor i32 %3126, %3128
  %3130 = add nuw nsw i32 %3129, %3126
  %3131 = icmp eq i32 %3130, 2
  %3132 = zext i1 %3131 to i8
  store i8 %3132, i8* %67, align 1
  %3133 = add i64 %3104, 15
  store i64 %3133, i64* %3, align 8
  store i32 %3110, i32* %3108, align 4
  %3134 = load i64, i64* %3, align 8
  %3135 = add i64 %3134, -622
  store i64 %3135, i64* %3, align 8
  br label %block_.L_47b86d

block_.L_47bae0:                                  ; preds = %block_.L_47b86d
  %3136 = add i64 %2516, 5
  store i64 %3136, i64* %3, align 8
  br label %block_.L_47bae5

block_.L_47bae5:                                  ; preds = %block_.L_47b859, %block_.L_47bae0
  %3137 = phi i64 [ %2483, %block_.L_47b859 ], [ %3136, %block_.L_47bae0 ]
  %3138 = phi i64 [ %2457, %block_.L_47b859 ], [ %2488, %block_.L_47bae0 ]
  %3139 = add i64 %3138, -72
  %3140 = add i64 %3137, 5
  store i64 %3140, i64* %3, align 8
  %3141 = inttoptr i64 %3139 to i64*
  %3142 = load i64, i64* %3141, align 8
  store i8 0, i8* %42, align 1
  %3143 = trunc i64 %3142 to i32
  %3144 = and i32 %3143, 255
  %3145 = tail call i32 @llvm.ctpop.i32(i32 %3144)
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = xor i8 %3147, 1
  store i8 %3148, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %3149 = icmp eq i64 %3142, 0
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %58, align 1
  %3151 = lshr i64 %3142, 63
  %3152 = trunc i64 %3151 to i8
  store i8 %3152, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %.v100 = select i1 %3149, i64 41, i64 11
  %3153 = add i64 %3137, %.v100
  store i64 %3153, i64* %3, align 8
  br i1 %3149, label %block_.L_47bb0e, label %block_47baf0

block_47baf0:                                     ; preds = %block_.L_47bae5
  %3154 = add i64 %3138, -84
  %3155 = add i64 %3153, 4
  store i64 %3155, i64* %3, align 8
  %3156 = inttoptr i64 %3154 to i32*
  %3157 = load i32, i32* %3156, align 4
  store i8 0, i8* %42, align 1
  %3158 = and i32 %3157, 255
  %3159 = tail call i32 @llvm.ctpop.i32(i32 %3158)
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  %3162 = xor i8 %3161, 1
  store i8 %3162, i8* %49, align 1
  store i8 0, i8* %55, align 1
  %3163 = icmp eq i32 %3157, 0
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %58, align 1
  %3165 = lshr i32 %3157, 31
  %3166 = trunc i32 %3165 to i8
  store i8 %3166, i8* %61, align 1
  store i8 0, i8* %67, align 1
  %3167 = icmp ne i8 %3166, 0
  %3168 = or i1 %3163, %3167
  %.v101 = select i1 %3168, i64 30, i64 10
  %3169 = add i64 %3153, %.v101
  store i64 %3169, i64* %3, align 8
  br i1 %3168, label %block_.L_47bb0e, label %block_47bafa

block_47bafa:                                     ; preds = %block_47baf0
  %3170 = add i64 %3169, 4
  store i64 %3170, i64* %3, align 8
  %3171 = load i64, i64* %3141, align 8
  store i64 %3171, i64* %RAX.i1507, align 8
  %3172 = add i64 %3169, 6
  store i64 %3172, i64* %3, align 8
  %3173 = inttoptr i64 %3171 to i32*
  %3174 = load i32, i32* %3173, align 4
  %3175 = zext i32 %3174 to i64
  store i64 %3175, i64* %RCX.i1483, align 8
  %3176 = add i64 %3169, 9
  store i64 %3176, i64* %3, align 8
  %3177 = load i32, i32* %3156, align 4
  %3178 = sub i32 %3174, %3177
  %3179 = icmp ult i32 %3174, %3177
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %42, align 1
  %3181 = and i32 %3178, 255
  %3182 = tail call i32 @llvm.ctpop.i32(i32 %3181)
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = xor i8 %3184, 1
  store i8 %3185, i8* %49, align 1
  %3186 = xor i32 %3177, %3174
  %3187 = xor i32 %3186, %3178
  %3188 = lshr i32 %3187, 4
  %3189 = trunc i32 %3188 to i8
  %3190 = and i8 %3189, 1
  store i8 %3190, i8* %55, align 1
  %3191 = icmp eq i32 %3178, 0
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %58, align 1
  %3193 = lshr i32 %3178, 31
  %3194 = trunc i32 %3193 to i8
  store i8 %3194, i8* %61, align 1
  %3195 = lshr i32 %3174, 31
  %3196 = lshr i32 %3177, 31
  %3197 = xor i32 %3196, %3195
  %3198 = xor i32 %3193, %3195
  %3199 = add nuw nsw i32 %3198, %3197
  %3200 = icmp eq i32 %3199, 2
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %67, align 1
  %3202 = icmp ne i8 %3194, 0
  %3203 = xor i1 %3202, %3200
  %.v102 = select i1 %3203, i64 20, i64 15
  %3204 = add i64 %3169, %.v102
  store i64 %3204, i64* %3, align 8
  br i1 %3203, label %block_.L_47bb0e, label %block_47bb09

block_47bb09:                                     ; preds = %block_47bafa
  %3205 = add i64 %3204, 55
  store i64 %3205, i64* %3, align 8
  br label %block_.L_47bb40

block_.L_47bb0e:                                  ; preds = %block_47bafa, %block_47baf0, %block_.L_47bae5
  %3206 = phi i64 [ %3204, %block_47bafa ], [ %3169, %block_47baf0 ], [ %3153, %block_.L_47bae5 ]
  %3207 = add i64 %3206, 5
  store i64 %3207, i64* %3, align 8
  br label %block_.L_47bb13

block_.L_47bb13:                                  ; preds = %block_.L_47bb0e, %block_47b25a
  %3208 = phi i64 [ %1109, %block_47b25a ], [ %3138, %block_.L_47bb0e ]
  %storemerge = phi i64 [ %1139, %block_47b25a ], [ %3207, %block_.L_47bb0e ]
  %MEMORY.23 = phi %struct.Memory* [ %713, %block_47b25a ], [ %MEMORY.13, %block_.L_47bb0e ]
  %3209 = add i64 %3208, -2772
  %3210 = add i64 %storemerge, 6
  store i64 %3210, i64* %3, align 8
  %3211 = inttoptr i64 %3209 to i32*
  %3212 = load i32, i32* %3211, align 4
  %3213 = add i32 %3212, 1
  %3214 = zext i32 %3213 to i64
  store i64 %3214, i64* %RAX.i1507, align 8
  %3215 = icmp eq i32 %3212, -1
  %3216 = icmp eq i32 %3213, 0
  %3217 = or i1 %3215, %3216
  %3218 = zext i1 %3217 to i8
  store i8 %3218, i8* %42, align 1
  %3219 = and i32 %3213, 255
  %3220 = tail call i32 @llvm.ctpop.i32(i32 %3219)
  %3221 = trunc i32 %3220 to i8
  %3222 = and i8 %3221, 1
  %3223 = xor i8 %3222, 1
  store i8 %3223, i8* %49, align 1
  %3224 = xor i32 %3213, %3212
  %3225 = lshr i32 %3224, 4
  %3226 = trunc i32 %3225 to i8
  %3227 = and i8 %3226, 1
  store i8 %3227, i8* %55, align 1
  %3228 = zext i1 %3216 to i8
  store i8 %3228, i8* %58, align 1
  %3229 = lshr i32 %3213, 31
  %3230 = trunc i32 %3229 to i8
  store i8 %3230, i8* %61, align 1
  %3231 = lshr i32 %3212, 31
  %3232 = xor i32 %3229, %3231
  %3233 = add nuw nsw i32 %3232, %3229
  %3234 = icmp eq i32 %3233, 2
  %3235 = zext i1 %3234 to i8
  store i8 %3235, i8* %67, align 1
  %3236 = add i64 %storemerge, 15
  store i64 %3236, i64* %3, align 8
  store i32 %3213, i32* %3211, align 4
  %3237 = load i64, i64* %3, align 8
  %3238 = add i64 %3237, -2511
  store i64 %3238, i64* %3, align 8
  br label %block_.L_47b153

block_.L_47bb27:                                  ; preds = %block_.L_47b153
  %3239 = add i64 %609, -2780
  %3240 = add i64 %637, 11
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i32*
  %3242 = load i32, i32* %3241, align 4
  %3243 = add i32 %3242, 1
  %3244 = zext i32 %3243 to i64
  store i64 %3244, i64* %RAX.i1507, align 8
  %3245 = icmp eq i32 %3242, -1
  %3246 = icmp eq i32 %3243, 0
  %3247 = or i1 %3245, %3246
  %3248 = zext i1 %3247 to i8
  store i8 %3248, i8* %42, align 1
  %3249 = and i32 %3243, 255
  %3250 = tail call i32 @llvm.ctpop.i32(i32 %3249)
  %3251 = trunc i32 %3250 to i8
  %3252 = and i8 %3251, 1
  %3253 = xor i8 %3252, 1
  store i8 %3253, i8* %49, align 1
  %3254 = xor i32 %3243, %3242
  %3255 = lshr i32 %3254, 4
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  store i8 %3257, i8* %55, align 1
  %3258 = zext i1 %3246 to i8
  store i8 %3258, i8* %58, align 1
  %3259 = lshr i32 %3243, 31
  %3260 = trunc i32 %3259 to i8
  store i8 %3260, i8* %61, align 1
  %3261 = lshr i32 %3242, 31
  %3262 = xor i32 %3259, %3261
  %3263 = add nuw nsw i32 %3262, %3259
  %3264 = icmp eq i32 %3263, 2
  %3265 = zext i1 %3264 to i8
  store i8 %3265, i8* %67, align 1
  %3266 = add i64 %637, 20
  store i64 %3266, i64* %3, align 8
  store i32 %3243, i32* %3241, align 4
  %3267 = load i64, i64* %3, align 8
  %3268 = add i64 %3267, -2581
  store i64 %3268, i64* %3, align 8
  br label %block_.L_47b126

block_.L_47bb40.loopexit:                         ; preds = %block_.L_47b126
  br label %block_.L_47bb40

block_.L_47bb40:                                  ; preds = %block_.L_47bb40.loopexit, %block_47bb09
  %3269 = phi i64 [ %3205, %block_47bb09 ], [ %589, %block_.L_47bb40.loopexit ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.13, %block_47bb09 ], [ %MEMORY.3, %block_.L_47bb40.loopexit ]
  %3270 = load i64, i64* %6, align 8
  %3271 = add i64 %3270, 4600
  store i64 %3271, i64* %6, align 8
  %3272 = icmp ugt i64 %3270, -4601
  %3273 = zext i1 %3272 to i8
  store i8 %3273, i8* %42, align 1
  %3274 = trunc i64 %3271 to i32
  %3275 = and i32 %3274, 255
  %3276 = tail call i32 @llvm.ctpop.i32(i32 %3275)
  %3277 = trunc i32 %3276 to i8
  %3278 = and i8 %3277, 1
  %3279 = xor i8 %3278, 1
  store i8 %3279, i8* %49, align 1
  %3280 = xor i64 %3270, 16
  %3281 = xor i64 %3280, %3271
  %3282 = lshr i64 %3281, 4
  %3283 = trunc i64 %3282 to i8
  %3284 = and i8 %3283, 1
  store i8 %3284, i8* %55, align 1
  %3285 = icmp eq i64 %3271, 0
  %3286 = zext i1 %3285 to i8
  store i8 %3286, i8* %58, align 1
  %3287 = lshr i64 %3271, 63
  %3288 = trunc i64 %3287 to i8
  store i8 %3288, i8* %61, align 1
  %3289 = lshr i64 %3270, 63
  %3290 = xor i64 %3287, %3289
  %3291 = add nuw nsw i64 %3290, %3287
  %3292 = icmp eq i64 %3291, 2
  %3293 = zext i1 %3292 to i8
  store i8 %3293, i8* %67, align 1
  %3294 = add i64 %3269, 8
  store i64 %3294, i64* %3, align 8
  %3295 = add i64 %3270, 4608
  %3296 = inttoptr i64 %3271 to i64*
  %3297 = load i64, i64* %3296, align 8
  store i64 %3297, i64* %RBX.i1512, align 8
  store i64 %3295, i64* %6, align 8
  %3298 = add i64 %3269, 10
  store i64 %3298, i64* %3, align 8
  %3299 = add i64 %3270, 4616
  %3300 = inttoptr i64 %3295 to i64*
  %3301 = load i64, i64* %3300, align 8
  store i64 %3301, i64* %R12.i1514, align 8
  store i64 %3299, i64* %6, align 8
  %3302 = add i64 %3269, 12
  store i64 %3302, i64* %3, align 8
  %3303 = add i64 %3270, 4624
  %3304 = inttoptr i64 %3299 to i64*
  %3305 = load i64, i64* %3304, align 8
  store i64 %3305, i64* %R13.i1396, align 8
  store i64 %3303, i64* %6, align 8
  %3306 = add i64 %3269, 14
  store i64 %3306, i64* %3, align 8
  %3307 = add i64 %3270, 4632
  %3308 = inttoptr i64 %3303 to i64*
  %3309 = load i64, i64* %3308, align 8
  store i64 %3309, i64* %R14.i1384, align 8
  store i64 %3307, i64* %6, align 8
  %3310 = add i64 %3269, 16
  store i64 %3310, i64* %3, align 8
  %3311 = add i64 %3270, 4640
  %3312 = inttoptr i64 %3307 to i64*
  %3313 = load i64, i64* %3312, align 8
  store i64 %3313, i64* %R15.i1372, align 8
  store i64 %3311, i64* %6, align 8
  %3314 = add i64 %3269, 17
  store i64 %3314, i64* %3, align 8
  %3315 = add i64 %3270, 4648
  %3316 = inttoptr i64 %3311 to i64*
  %3317 = load i64, i64* %3316, align 8
  store i64 %3317, i64* %RBP.i, align 8
  store i64 %3315, i64* %6, align 8
  %3318 = add i64 %3269, 18
  store i64 %3318, i64* %3, align 8
  %3319 = inttoptr i64 %3315 to i64*
  %3320 = load i64, i64* %3319, align 8
  store i64 %3320, i64* %3, align 8
  %3321 = add i64 %3270, 4656
  store i64 %3321, i64* %6, align 8
  ret %struct.Memory* %MEMORY.24
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
define %struct.Memory* @routine_subq__0x11f8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -4600
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 4600
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
define %struct.Memory* @routine_movl_0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_movl_0x28__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 40
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
define %struct.Memory* @routine_movl_0x20__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, 32
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
define %struct.Memory* @routine_movq_0x18__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r15d___r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x190___r12d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 400, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r12d___r13d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %5 = load i32, i32* %R12D, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xad0__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2768
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x10d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4312
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x940__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x10e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4320
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x7b0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1968
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10d8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10e4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4324
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
define %struct.Memory* @routine_movl__edi__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 12099168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0xae0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2784
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xae0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2784
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xae4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2788
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__r15d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R15D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r13___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %R13, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r15d__MINUS0x10e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4328
  %6 = load i32, i32* %R15D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r12__MINUS0x10f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4336
  %5 = load i64, i64* %R12, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r13__MINUS0x10f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4344
  %5 = load i64, i64* %R13, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10e0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10e8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10f8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10f0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47b022(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47b037(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47b04c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x78__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xad0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2768
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x7b0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1968
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x620__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____r13d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movq__rax__MINUS0x1100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4352
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setne__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %AL, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x1108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4360
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1108__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4360
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4368
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4376
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %R14D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r12__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %R12, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r13d__0x20__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0
  %R13D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 32
  %6 = load i32, i32* %R13D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1110__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x28__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1118__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__0x30__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1100__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4352
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__0x38__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x40__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.superstring_add_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xadc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2780
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xadc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2780
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
define %struct.Memory* @routine_cmpl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -120
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
define %struct.Memory* @routine_jge_.L_47bb40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xadc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2780
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
define %struct.Memory* @routine_movl_MINUS0x620__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1568
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
define %struct.Memory* @routine_movl__ecx__MINUS0xae8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2792
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xad4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2772
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0xad4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2772
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_47bb27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xad4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2772
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
define %struct.Memory* @routine_movl_0x7ae1b0___rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xaec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2796
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xad4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2772
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
define %struct.Memory* @routine_movl__eax__MINUS0x111c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4380
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x111c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4380
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movl__edx__MINUS0xaf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2800
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xae8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2792
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
define %struct.Memory* @routine_addl_MINUS0xaec__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2796
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0xaf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2804
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0xaf0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2800
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0xaf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2808
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xaec__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2796
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xafc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2812
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xaf0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2800
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xb00__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2816
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xaf0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2800
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
define %struct.Memory* @routine_movl__edx__MINUS0xb04__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2820
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xb08__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2824
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xb0c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2828
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xaf4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2804
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47b25f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47bb13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xaf4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2804
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
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_47b5e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jne_.L_47b2b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0xaf4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2804
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
define %struct.Memory* @routine_movl_MINUS0xae4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2788
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.approxlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setl__r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = zext i1 %12 to i8
  store i8 %13, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R8B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %R8B, align 1
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
define %struct.Memory* @routine_movzbl__r8b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %R8B, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xb10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2832
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b2cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.is_self_atari(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xb10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2832
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
define %struct.Memory* @routine_je_.L_47b30b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp eq i32 %8, 0
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
define %struct.Memory* @routine_jne_.L_47b30b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.is_ko(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xb10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47b5e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xaf8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2808
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
define %struct.Memory* @routine_cmpl_MINUS0xae0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -2784
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
define %struct.Memory* @routine_jne_.L_47b405(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpb__0x0__MINUS0x7b0__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %3, -1968
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = zext i8 %10 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
  %19 = icmp eq i8 %10, 0
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %20, i8* %21, align 1
  %22 = lshr i8 %10, 7
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
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
define %struct.Memory* @routine_leaq_MINUS0xad0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2768
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x940__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x7b0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1968
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x620__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xaf8__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2808
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
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
define %struct.Memory* @routine_movq_MINUS0x60__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4384
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x1128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4392
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4400
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4408
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %R10, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %R11, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r15d__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %R15D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %R12, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r13__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %R13, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x20__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = load i64, i64* %RSP, align 8
  %5 = add i64 %4, 32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1128__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1130__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1138__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x40__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xafc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2812
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
define %struct.Memory* @routine_jne_.L_47b4f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xafc__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2812
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x113c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4412
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x1148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4424
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4432
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4440
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1148__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1150__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1158__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xb00__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2816
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
define %struct.Memory* @routine_jne_.L_47b5df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xb00__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2816
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x115c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4444
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x1168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4456
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4464
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4472
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1168__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1170__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4464
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1178__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b5e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b5e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47b73c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xb08__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2824
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
define %struct.Memory* @routine_movslq_MINUS0xb04__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2820
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
define %struct.Memory* @routine_movslq_MINUS0xb0c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2828
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
define %struct.Memory* @routine_movl_MINUS0xb04__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2820
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x117c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4476
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x1188__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4488
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x1190__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4496
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x1198__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4504
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1188__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1190__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1198__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47b859(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x119c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4508
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x11a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4520
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x11b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4528
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x11b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4536
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x11a8__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x11b0__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x11b8__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47bae5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xad8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2776
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0xad8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2776
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %8, 2
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
define %struct.Memory* @routine_jge_.L_47bae0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xad8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2776
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
define %struct.Memory* @routine_jne_.L_47b898(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xaf4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2804
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
define %struct.Memory* @routine_movl__eax__MINUS0xb14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2836
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b8a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xaf8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2808
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
define %struct.Memory* @routine_movslq_MINUS0xb14__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2836
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
define %struct.Memory* @routine_cmpl_MINUS0xae4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -2788
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
define %struct.Memory* @routine_je_.L_47b8c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47bacc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2836
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
define %struct.Memory* @routine_callq_.find_origin(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xb14__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2836
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
define %struct.Memory* @routine_movsbl_MINUS0x7b0__rbp__rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -1968
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = and i32 %7, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = xor i32 %7, %4
  %18 = lshr i32 %17, 4
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %7, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %7, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %4, 31
  %29 = xor i32 %25, %28
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_47b8f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1__MINUS0x7b0__rbp__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -1968
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  store i8 1, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.attack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_47bac7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.find_defense(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_47bac7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x169___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 361, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x10c0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.findstones(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x10c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4292
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x10c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10c8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4296
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
define %struct.Memory* @routine_cmpl_MINUS0x10c4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4292
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
define %struct.Memory* @routine_jge_.L_47bac2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x10cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4300
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x10cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4300
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_jge_.L_47baa9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10c8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4296
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
define %struct.Memory* @routine_movl_MINUS0x10c0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -4288
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
define %struct.Memory* @routine_movslq_MINUS0x10cc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4300
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
define %struct.Memory* @routine_addl_0x7ae1b0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RCX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
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
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x10d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4304
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x10d0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4304
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
define %struct.Memory* @routine_jne_.L_47ba90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x10d0__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4304
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x11bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4540
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x11c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4552
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x11d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4560
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x11d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4568
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x11c8__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x11d0__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x11d8__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47ba95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10cc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4300
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
define %struct.Memory* @routine_movl__eax__MINUS0x10cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b974(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47baae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x10c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4296
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b958(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bac7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xad8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2776
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
define %struct.Memory* @routine_movl__eax__MINUS0xad8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2776
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b86d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bae5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_47bb0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jle_.L_47bb0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
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
define %struct.Memory* @routine_jl_.L_47bb0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47bb40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xad4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2772
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
define %struct.Memory* @routine_movl__eax__MINUS0xad4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2772
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b153(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47bb2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xadc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -2780
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_47b126(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x11f8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4600
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -4601
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
