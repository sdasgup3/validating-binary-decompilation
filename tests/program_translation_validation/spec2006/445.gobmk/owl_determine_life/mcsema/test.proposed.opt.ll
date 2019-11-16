; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xa0e41__rip__type = type <{ [4 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x57dd2e_type = type <{ [8 x i8] }>
%G__0x57e1e9_type = type <{ [8 x i8] }>
%G__0x57e1f4_type = type <{ [8 x i8] }>
%G__0x57e207_type = type <{ [8 x i8] }>
%G__0x57e247_type = type <{ [8 x i8] }>
%G__0x57e273_type = type <{ [8 x i8] }>
%G__0x57e28d_type = type <{ [8 x i8] }>
%G__0x57e2b3_type = type <{ [8 x i8] }>
%G__0x57e2be_type = type <{ [8 x i8] }>
%G__0x57e2e3_type = type <{ [8 x i8] }>
%G__0x58898d_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G_0xa0e41__rip_ = global %G_0xa0e41__rip__type zeroinitializer
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G__0x57dd2e = global %G__0x57dd2e_type zeroinitializer
@G__0x57e1e9 = global %G__0x57e1e9_type zeroinitializer
@G__0x57e1f4 = global %G__0x57e1f4_type zeroinitializer
@G__0x57e207 = global %G__0x57e207_type zeroinitializer
@G__0x57e247 = global %G__0x57e247_type zeroinitializer
@G__0x57e273 = global %G__0x57e273_type zeroinitializer
@G__0x57e28d = global %G__0x57e28d_type zeroinitializer
@G__0x57e2b3 = global %G__0x57e2b3_type zeroinitializer
@G__0x57e2be = global %G__0x57e2be_type zeroinitializer
@G__0x57e2e3 = global %G__0x57e2e3_type zeroinitializer
@G__0x58898d = global %G__0x58898d_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_445190.clear_owl_move_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_441720.owl_find_lunches(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea00.owl_make_domains(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43e310.find_half_and_false_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4393a0.set_eyevalue(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b2b0.compute_eyes_pessimistic(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b010.max_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43baf0.min_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4453f0.modify_stupid_eye_vital_point(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_444230.owl_add_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_443e90.liberty_of_goal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f200.is_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445640.sniff_lunch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4137f0.countstones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445aa0.improve_lunch_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43cc10.add_eyevalues(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445bf0.improve_lunch_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43cbf0.max_eye_threat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @owl_determine_life(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i2010, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i2022, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i2131, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i2129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i2129, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %RBX.i2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %30 = load i64, i64* %RBX.i2127, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  %33 = add i64 %7, -48
  %34 = inttoptr i64 %33 to i64*
  store i64 %30, i64* %34, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %7, -4392
  store i64 %36, i64* %6, align 8
  %37 = icmp ult i64 %33, 4344
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
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i2122 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, 24
  %68 = add i64 %35, 11
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %67 to i64*
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %RAX.i2122, align 8
  %R10.i2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %71 = add i64 %66, 16
  %72 = add i64 %35, 15
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to i64*
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %R10.i2120, align 8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i2117 = bitcast %union.anon* %75 to i32*
  %76 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  store i64 0, i64* %76, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 1600, i64* %R14.i2022, align 8
  %77 = add i64 %66, -2512
  store i64 %77, i64* %R15.i2010, align 8
  store i64 400, i64* %R12.i2129, align 8
  %78 = add i64 %66, -912
  store i64 %78, i64* %R13.i2131, align 8
  %79 = add i64 %66, -512
  store i64 %79, i64* %RBX.i2127, align 8
  %RDI.i2098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %80 = add i64 %66, -48
  %81 = load i64, i64* %RDI.i2098, align 8
  %82 = add i64 %35, 59
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %80 to i64*
  store i64 %81, i64* %83, align 8
  %RSI.i2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -56
  %86 = load i64, i64* %RSI.i2095, align 8
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 4
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %85 to i64*
  store i64 %86, i64* %89, align 8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2092 = bitcast %union.anon* %90 to i32*
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -60
  %93 = load i32, i32* %EDX.i2092, align 4
  %94 = load i64, i64* %3, align 8
  %95 = add i64 %94, 3
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %92 to i32*
  store i32 %93, i32* %96, align 4
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i2089 = bitcast %union.anon* %97 to i32*
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -64
  %100 = load i32, i32* %ECX.i2089, align 4
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 3
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %99 to i32*
  store i32 %100, i32* %103, align 4
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i2087 = getelementptr inbounds %union.anon, %union.anon* %104, i64 0, i32 0
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -72
  %107 = load i64, i64* %R8.i2087, align 8
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 4
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %106 to i64*
  store i64 %107, i64* %110, align 8
  %R9.i2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %111 = load i64, i64* %RBP.i, align 8
  %112 = add i64 %111, -80
  %113 = load i64, i64* %R9.i2084, align 8
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, 4
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %112 to i64*
  store i64 %113, i64* %116, align 8
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -88
  %119 = load i64, i64* %R10.i2120, align 8
  %120 = load i64, i64* %3, align 8
  %121 = add i64 %120, 4
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %118 to i64*
  store i64 %119, i64* %122, align 8
  %123 = load i64, i64* %RBP.i, align 8
  %124 = add i64 %123, -96
  %125 = load i64, i64* %RAX.i2122, align 8
  %126 = load i64, i64* %3, align 8
  %127 = add i64 %126, 4
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %128, align 8
  %129 = load i64, i64* %RBP.i, align 8
  %130 = add i64 %129, -48
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 4
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %130 to i64*
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %RAX.i2122, align 8
  %RCX.i2073 = getelementptr inbounds %union.anon, %union.anon* %97, i64 0, i32 0
  %135 = add i64 %134, 1200
  %136 = add i64 %131, 10
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RCX.i2073, align 8
  %140 = add i64 %129, -100
  %141 = add i64 %131, 13
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  store i32 %138, i32* %142, align 4
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -48
  %145 = load i64, i64* %3, align 8
  %146 = add i64 %145, 4
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %144 to i64*
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1204
  store i64 %149, i64* %RAX.i2122, align 8
  %150 = icmp ugt i64 %148, -1205
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %39, align 1
  %152 = trunc i64 %149 to i32
  %153 = and i32 %152, 255
  %154 = tail call i32 @llvm.ctpop.i32(i32 %153)
  %155 = trunc i32 %154 to i8
  %156 = and i8 %155, 1
  %157 = xor i8 %156, 1
  store i8 %157, i8* %46, align 1
  %158 = xor i64 %148, 16
  %159 = xor i64 %158, %149
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  store i8 %162, i8* %52, align 1
  %163 = icmp eq i64 %149, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %55, align 1
  %165 = lshr i64 %149, 63
  %166 = trunc i64 %165 to i8
  store i8 %166, i8* %58, align 1
  %167 = lshr i64 %148, 63
  %168 = xor i64 %165, %167
  %169 = add nuw nsw i64 %168, %165
  %170 = icmp eq i64 %169, 2
  %171 = zext i1 %170 to i8
  store i8 %171, i8* %64, align 1
  %172 = add i64 %143, -112
  %173 = add i64 %145, 14
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i64*
  store i64 %149, i64* %174, align 8
  %175 = load i64, i64* %RBP.i, align 8
  %176 = add i64 %175, -2516
  %177 = load i64, i64* %3, align 8
  %178 = add i64 %177, 10
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %176 to i32*
  store i32 0, i32* %179, align 4
  %180 = load i64, i64* %RBP.i, align 8
  %181 = add i64 %180, -2520
  %182 = load i64, i64* %3, align 8
  %183 = add i64 %182, 10
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %181 to i32*
  store i32 0, i32* %184, align 4
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -4164
  %187 = load i64, i64* %3, align 8
  %188 = add i64 %187, 10
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %186 to i32*
  store i32 0, i32* %189, align 4
  %190 = load i64, i64* %RBP.i, align 8
  %191 = add i64 %190, -4168
  %192 = load i64, i64* %3, align 8
  %193 = add i64 %192, 10
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %191 to i32*
  store i32 0, i32* %194, align 4
  %195 = load i64, i64* %3, align 8
  %196 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %RCX.i2073, align 8
  %198 = load i64, i64* %RBP.i, align 8
  %199 = add i64 %198, -4172
  %200 = add i64 %195, 13
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %199 to i32*
  store i32 %196, i32* %201, align 4
  %202 = load i64, i64* %RBX.i2127, align 8
  %203 = load i64, i64* %3, align 8
  store i64 %202, i64* %RDI.i2098, align 8
  %204 = load i32, i32* %R11D.i2117, align 4
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RSI.i2095, align 8
  %RDX.i2039 = getelementptr inbounds %union.anon, %union.anon* %90, i64 0, i32 0
  %206 = load i64, i64* %R12.i2129, align 8
  store i64 %206, i64* %RDX.i2039, align 8
  %207 = load i64, i64* %RBP.i, align 8
  %208 = add i64 %207, -4248
  %209 = load i64, i64* %R13.i2131, align 8
  %210 = add i64 %203, 16
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %208 to i64*
  store i64 %209, i64* %211, align 8
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -4252
  %214 = load i32, i32* %R11D.i2117, align 4
  %215 = load i64, i64* %3, align 8
  %216 = add i64 %215, 7
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %213 to i32*
  store i32 %214, i32* %217, align 4
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -4264
  %220 = load i64, i64* %R14.i2022, align 8
  %221 = load i64, i64* %3, align 8
  %222 = add i64 %221, 7
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %219 to i64*
  store i64 %220, i64* %223, align 8
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -4272
  %226 = load i64, i64* %R15.i2010, align 8
  %227 = load i64, i64* %3, align 8
  %228 = add i64 %227, 7
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %225 to i64*
  store i64 %226, i64* %229, align 8
  %230 = load i64, i64* %RBP.i, align 8
  %231 = add i64 %230, -4280
  %232 = load i64, i64* %R12.i2129, align 8
  %233 = load i64, i64* %3, align 8
  %234 = add i64 %233, 7
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %231 to i64*
  store i64 %232, i64* %235, align 8
  %236 = load i64, i64* %3, align 8
  %237 = add i64 %236, -266078
  %238 = add i64 %236, 5
  %239 = load i64, i64* %6, align 8
  %240 = add i64 %239, -8
  %241 = inttoptr i64 %240 to i64*
  store i64 %238, i64* %241, align 8
  store i64 %240, i64* %6, align 8
  store i64 %237, i64* %3, align 8
  %242 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %243 = load i64, i64* %RBP.i, align 8
  %244 = add i64 %243, -4248
  %245 = load i64, i64* %3, align 8
  %246 = add i64 %245, 7
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %244 to i64*
  %248 = load i64, i64* %247, align 8
  store i64 %248, i64* %RDI.i2098, align 8
  %249 = add i64 %243, -4252
  %250 = add i64 %245, 13
  store i64 %250, i64* %3, align 8
  %251 = inttoptr i64 %249 to i32*
  %252 = load i32, i32* %251, align 4
  %253 = zext i32 %252 to i64
  store i64 %253, i64* %RSI.i2095, align 8
  %254 = add i64 %243, -4280
  %255 = add i64 %245, 20
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i64*
  %257 = load i64, i64* %256, align 8
  store i64 %257, i64* %RDX.i2039, align 8
  %258 = add i64 %245, -266083
  %259 = add i64 %245, 25
  %260 = load i64, i64* %6, align 8
  %261 = add i64 %260, -8
  %262 = inttoptr i64 %261 to i64*
  store i64 %259, i64* %262, align 8
  store i64 %261, i64* %6, align 8
  store i64 %258, i64* %3, align 8
  %263 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %242)
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -4272
  %266 = load i64, i64* %3, align 8
  %267 = add i64 %266, 7
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %265 to i64*
  %269 = load i64, i64* %268, align 8
  store i64 %269, i64* %RAX.i2122, align 8
  store i64 %269, i64* %RDI.i2098, align 8
  %270 = add i64 %264, -4252
  %271 = add i64 %266, 16
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RSI.i2095, align 8
  %275 = add i64 %264, -4264
  %276 = add i64 %266, 23
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %RDX.i2039, align 8
  %279 = add i64 %266, -266108
  %280 = add i64 %266, 28
  %281 = load i64, i64* %6, align 8
  %282 = add i64 %281, -8
  %283 = inttoptr i64 %282 to i64*
  store i64 %280, i64* %283, align 8
  store i64 %282, i64* %6, align 8
  store i64 %279, i64* %3, align 8
  %284 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %263)
  %285 = load i64, i64* %RBP.i, align 8
  %286 = add i64 %285, -88
  %287 = load i64, i64* %3, align 8
  %288 = add i64 %287, 5
  store i64 %288, i64* %3, align 8
  %289 = inttoptr i64 %286 to i64*
  %290 = load i64, i64* %289, align 8
  store i8 0, i8* %39, align 1
  %291 = trunc i64 %290 to i32
  %292 = and i32 %291, 255
  %293 = tail call i32 @llvm.ctpop.i32(i32 %292)
  %294 = trunc i32 %293 to i8
  %295 = and i8 %294, 1
  %296 = xor i8 %295, 1
  store i8 %296, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %297 = icmp eq i64 %290, 0
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %55, align 1
  %299 = lshr i64 %290, 63
  %300 = trunc i64 %299 to i8
  store i8 %300, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v197 = select i1 %297, i64 11, i64 22
  %301 = add i64 %287, %.v197
  store i64 %301, i64* %3, align 8
  br i1 %297, label %block_442013, label %block_.L_44201e

block_442013:                                     ; preds = %entry
  %302 = add i64 %285, -2516
  store i64 %302, i64* %RAX.i2122, align 8
  %303 = add i64 %301, 11
  store i64 %303, i64* %3, align 8
  store i64 %302, i64* %289, align 8
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_44201e

block_.L_44201e:                                  ; preds = %entry, %block_442013
  %304 = phi i64 [ %.pre135, %block_442013 ], [ %301, %entry ]
  %305 = phi i64 [ %.pre, %block_442013 ], [ %285, %entry ]
  %306 = add i64 %305, -96
  %307 = add i64 %304, 5
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i64*
  %309 = load i64, i64* %308, align 8
  store i8 0, i8* %39, align 1
  %310 = trunc i64 %309 to i32
  %311 = and i32 %310, 255
  %312 = tail call i32 @llvm.ctpop.i32(i32 %311)
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  store i8 %315, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %316 = icmp eq i64 %309, 0
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %55, align 1
  %318 = lshr i64 %309, 63
  %319 = trunc i64 %318 to i8
  store i8 %319, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v198 = select i1 %316, i64 11, i64 22
  %320 = add i64 %304, %.v198
  store i64 %320, i64* %3, align 8
  br i1 %316, label %block_442029, label %block_.L_442034

block_442029:                                     ; preds = %block_.L_44201e
  %321 = add i64 %305, -2520
  store i64 %321, i64* %RAX.i2122, align 8
  %322 = add i64 %320, 11
  store i64 %322, i64* %3, align 8
  store i64 %321, i64* %308, align 8
  %.pre136 = load i64, i64* %RBP.i, align 8
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_442034

block_.L_442034:                                  ; preds = %block_.L_44201e, %block_442029
  %323 = phi i64 [ %.pre137, %block_442029 ], [ %320, %block_.L_44201e ]
  %324 = phi i64 [ %.pre136, %block_442029 ], [ %305, %block_.L_44201e ]
  %325 = add i64 %324, -88
  %326 = add i64 %323, 4
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i64*
  %328 = load i64, i64* %327, align 8
  store i64 %328, i64* %RAX.i2122, align 8
  %329 = add i64 %323, 10
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i32*
  store i32 0, i32* %330, align 4
  %331 = load i64, i64* %RBP.i, align 8
  %332 = add i64 %331, -96
  %333 = load i64, i64* %3, align 8
  %334 = add i64 %333, 4
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %332 to i64*
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %RAX.i2122, align 8
  %337 = add i64 %333, 10
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  store i32 0, i32* %338, align 4
  %339 = load i64, i64* %3, align 8
  %340 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %341 = zext i32 %340 to i64
  %342 = and i64 %341, 4
  %343 = trunc i64 %342 to i32
  store i64 %342, i64* %RCX.i2073, align 8
  store i8 0, i8* %39, align 1
  %344 = tail call i32 @llvm.ctpop.i32(i32 %343)
  %345 = trunc i32 %344 to i8
  %346 = xor i8 %345, 1
  store i8 %346, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %.lobit182 = lshr exact i32 %343, 2
  %347 = trunc i32 %.lobit182 to i8
  %348 = xor i8 %347, 1
  store i8 %348, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %349 = icmp eq i8 %348, 0
  %.v199 = select i1 %349, i64 36, i64 19
  %350 = add i64 %339, %.v199
  store i64 %350, i64* %3, align 8
  br i1 %349, label %block_.L_44206c, label %block_44205b

block_44205b:                                     ; preds = %block_.L_442034
  %351 = and i32 %340, -3
  %352 = and i64 %341, 4294967293
  store i64 %352, i64* %RAX.i2122, align 8
  store i8 0, i8* %39, align 1
  %353 = and i32 %340, 253
  %354 = tail call i32 @llvm.ctpop.i32(i32 %353)
  %355 = trunc i32 %354 to i8
  %356 = and i8 %355, 1
  %357 = xor i8 %356, 1
  store i8 %357, i8* %46, align 1
  %358 = icmp eq i32 %351, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %55, align 1
  %360 = lshr i32 %340, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %362 = trunc i64 %352 to i32
  %363 = add i64 %350, 17
  store i64 %363, i64* %3, align 8
  store i32 %362, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  br label %block_.L_44206c

block_.L_44206c:                                  ; preds = %block_44205b, %block_.L_442034
  %364 = phi i64 [ %363, %block_44205b ], [ %350, %block_.L_442034 ]
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -72
  %367 = add i64 %364, 4
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i64*
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %RDI.i2098, align 8
  %370 = add i64 %364, 12580
  %371 = add i64 %364, 9
  %372 = load i64, i64* %6, align 8
  %373 = add i64 %372, -8
  %374 = inttoptr i64 %373 to i64*
  store i64 %371, i64* %374, align 8
  store i64 %373, i64* %6, align 8
  store i64 %370, i64* %3, align 8
  %call2_442070 = tail call %struct.Memory* @sub_445190.clear_owl_move_data(%struct.State* nonnull %0, i64 %370, %struct.Memory* %284)
  %375 = load i64, i64* %RBP.i, align 8
  %376 = add i64 %375, -48
  %377 = load i64, i64* %3, align 8
  %378 = add i64 %377, 4
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %376 to i64*
  %380 = load i64, i64* %379, align 8
  store i64 %380, i64* %RDI.i2098, align 8
  %381 = add i64 %380, 35404
  %382 = add i64 %377, 11
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i32*
  %384 = load i32, i32* %383, align 4
  store i8 0, i8* %39, align 1
  %385 = and i32 %384, 255
  %386 = tail call i32 @llvm.ctpop.i32(i32 %385)
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  store i8 %389, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %390 = icmp eq i32 %384, 0
  %391 = zext i1 %390 to i8
  store i8 %391, i8* %55, align 1
  %392 = lshr i32 %384, 31
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v200 = select i1 %390, i64 17, i64 26
  %394 = add i64 %377, %.v200
  store i64 %394, i64* %3, align 8
  br i1 %390, label %block_442086, label %block_.L_44208f

block_442086:                                     ; preds = %block_.L_44206c
  %395 = add i64 %394, 4
  store i64 %395, i64* %3, align 8
  %396 = load i64, i64* %379, align 8
  store i64 %396, i64* %RDI.i2098, align 8
  %397 = add i64 %394, -2406
  %398 = add i64 %394, 9
  %399 = load i64, i64* %6, align 8
  %400 = add i64 %399, -8
  %401 = inttoptr i64 %400 to i64*
  store i64 %398, i64* %401, align 8
  store i64 %400, i64* %6, align 8
  store i64 %397, i64* %3, align 8
  %call2_44208a = tail call %struct.Memory* @sub_441720.owl_find_lunches(%struct.State* nonnull %0, i64 %397, %struct.Memory* %call2_442070)
  %.pre138 = load i64, i64* %RBP.i, align 8
  %.pre139 = load i64, i64* %3, align 8
  br label %block_.L_44208f

block_.L_44208f:                                  ; preds = %block_.L_44206c, %block_442086
  %402 = phi i64 [ %394, %block_.L_44206c ], [ %.pre139, %block_442086 ]
  %403 = phi i64 [ %375, %block_.L_44206c ], [ %.pre138, %block_442086 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_442070, %block_.L_44206c ], [ %call2_44208a, %block_442086 ]
  %404 = add i64 %403, -48
  %405 = add i64 %402, 4
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i64*
  %407 = load i64, i64* %406, align 8
  store i64 %407, i64* %RDI.i2098, align 8
  %408 = add i64 %403, -56
  %409 = add i64 %402, 8
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i64*
  %411 = load i64, i64* %410, align 8
  store i64 %411, i64* %RSI.i2095, align 8
  %412 = add i64 %402, -13967
  %413 = add i64 %402, 13
  %414 = load i64, i64* %6, align 8
  %415 = add i64 %414, -8
  %416 = inttoptr i64 %415 to i64*
  store i64 %413, i64* %416, align 8
  store i64 %415, i64* %6, align 8
  store i64 %412, i64* %3, align 8
  %call2_442097 = tail call %struct.Memory* @sub_43ea00.owl_make_domains(%struct.State* nonnull %0, i64 %412, %struct.Memory* %MEMORY.3)
  %417 = load i64, i64* %RBP.i, align 8
  %418 = add i64 %417, -100
  %419 = load i64, i64* %3, align 8
  %420 = add i64 %419, 4
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %418 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = add i32 %422, -1
  %424 = icmp eq i32 %422, 0
  %425 = zext i1 %424 to i8
  store i8 %425, i8* %39, align 1
  %426 = and i32 %423, 255
  %427 = tail call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  store i8 %430, i8* %46, align 1
  %431 = xor i32 %423, %422
  %432 = lshr i32 %431, 4
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %52, align 1
  %435 = icmp eq i32 %423, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %55, align 1
  %437 = lshr i32 %423, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %58, align 1
  %439 = lshr i32 %422, 31
  %440 = xor i32 %437, %439
  %441 = add nuw nsw i32 %440, %439
  %442 = icmp eq i32 %441, 2
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %64, align 1
  %.v = select i1 %435, i64 10, i64 25
  %444 = add i64 %419, %.v
  %445 = add i64 %417, -4160
  %446 = add i64 %444, 10
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i32*
  br i1 %435, label %block_4420a6, label %block_.L_4420b5

block_4420a6:                                     ; preds = %block_.L_44208f
  store i32 4, i32* %447, align 4
  %448 = load i64, i64* %3, align 8
  %449 = add i64 %448, 15
  store i64 %449, i64* %3, align 8
  br label %block_.L_4420bf

block_.L_4420b5:                                  ; preds = %block_.L_44208f
  store i32 5, i32* %447, align 4
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_4420bf

block_.L_4420bf:                                  ; preds = %block_.L_4420b5, %block_4420a6
  %450 = phi i64 [ %.pre140, %block_.L_4420b5 ], [ %449, %block_4420a6 ]
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -4144
  %453 = add i64 %450, 10
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i32*
  store i32 0, i32* %454, align 4
  %EAX.i1917 = bitcast %union.anon* %65 to i32*
  %DL.i1764 = bitcast %union.anon* %90 to i8*
  %.pre141 = load i64, i64* %3, align 8
  br label %block_.L_4420c9

block_.L_4420c9:                                  ; preds = %block_.L_44226c, %block_.L_4420bf
  %455 = phi i64 [ %1122, %block_.L_44226c ], [ %.pre141, %block_.L_4420bf ]
  %456 = load i64, i64* %RBP.i, align 8
  %457 = add i64 %456, -4144
  %458 = add i64 %455, 6
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %457 to i32*
  %460 = load i32, i32* %459, align 4
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RAX.i2122, align 8
  %462 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %463 = sub i32 %460, %462
  %464 = icmp ult i32 %460, %462
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %39, align 1
  %466 = and i32 %463, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %46, align 1
  %471 = xor i32 %462, %460
  %472 = xor i32 %471, %463
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %52, align 1
  %476 = icmp eq i32 %463, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %55, align 1
  %478 = lshr i32 %463, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %58, align 1
  %480 = lshr i32 %460, 31
  %481 = lshr i32 %462, 31
  %482 = xor i32 %481, %480
  %483 = xor i32 %478, %480
  %484 = add nuw nsw i32 %483, %482
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %64, align 1
  %487 = icmp ne i8 %479, 0
  %488 = xor i1 %487, %485
  %.v201 = select i1 %488, i64 19, i64 444
  %489 = add i64 %455, %.v201
  store i64 %489, i64* %3, align 8
  br i1 %488, label %block_4420dc, label %block_.L_442285

block_4420dc:                                     ; preds = %block_.L_4420c9
  %490 = add i64 %456, -4148
  %491 = add i64 %489, 10
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i32*
  store i32 0, i32* %492, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_4420e6

block_.L_4420e6:                                  ; preds = %block_.L_442253, %block_4420dc
  %493 = phi i64 [ %1093, %block_.L_442253 ], [ %.pre179, %block_4420dc ]
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -4148
  %496 = add i64 %493, 6
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  %498 = load i32, i32* %497, align 4
  %499 = zext i32 %498 to i64
  store i64 %499, i64* %RAX.i2122, align 8
  %500 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %501 = sub i32 %498, %500
  %502 = icmp ult i32 %498, %500
  %503 = zext i1 %502 to i8
  store i8 %503, i8* %39, align 1
  %504 = and i32 %501, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %46, align 1
  %509 = xor i32 %500, %498
  %510 = xor i32 %509, %501
  %511 = lshr i32 %510, 4
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  store i8 %513, i8* %52, align 1
  %514 = icmp eq i32 %501, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %55, align 1
  %516 = lshr i32 %501, 31
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %58, align 1
  %518 = lshr i32 %498, 31
  %519 = lshr i32 %500, 31
  %520 = xor i32 %519, %518
  %521 = xor i32 %516, %518
  %522 = add nuw nsw i32 %521, %520
  %523 = icmp eq i32 %522, 2
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %64, align 1
  %525 = icmp ne i8 %517, 0
  %526 = xor i1 %525, %523
  %.v191 = select i1 %526, i64 19, i64 390
  %527 = add i64 %493, %.v191
  store i64 %527, i64* %3, align 8
  %528 = add i64 %494, -4144
  br i1 %526, label %block_4420f9, label %block_.L_44226c

block_4420f9:                                     ; preds = %block_.L_4420e6
  %529 = add i64 %527, 7
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %528 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = mul i32 %531, 20
  %533 = add i32 %532, 21
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX.i2122, align 8
  %535 = icmp ugt i32 %532, -22
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %39, align 1
  %537 = and i32 %533, 253
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %46, align 1
  %542 = xor i32 %532, 16
  %543 = xor i32 %542, %533
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  store i8 %546, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %547 = lshr i32 %533, 31
  %548 = trunc i32 %547 to i8
  store i8 %548, i8* %58, align 1
  %549 = lshr i32 %532, 31
  %550 = xor i32 %547, %549
  %551 = add nuw nsw i32 %550, %547
  %552 = icmp eq i32 %551, 2
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %64, align 1
  %554 = add i64 %527, 16
  store i64 %554, i64* %3, align 8
  %555 = load i32, i32* %497, align 4
  %556 = add i32 %555, %533
  %557 = zext i32 %556 to i64
  store i64 %557, i64* %RAX.i2122, align 8
  %558 = icmp ult i32 %556, %533
  %559 = icmp ult i32 %556, %555
  %560 = or i1 %558, %559
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %39, align 1
  %562 = and i32 %556, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %46, align 1
  %567 = xor i32 %555, %533
  %568 = xor i32 %567, %556
  %569 = lshr i32 %568, 4
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  store i8 %571, i8* %52, align 1
  %572 = icmp eq i32 %556, 0
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %55, align 1
  %574 = lshr i32 %556, 31
  %575 = trunc i32 %574 to i8
  store i8 %575, i8* %58, align 1
  %576 = lshr i32 %555, 31
  %577 = xor i32 %574, %547
  %578 = xor i32 %574, %576
  %579 = add nuw nsw i32 %577, %578
  %580 = icmp eq i32 %579, 2
  %581 = zext i1 %580 to i8
  store i8 %581, i8* %64, align 1
  %582 = add i64 %494, -4176
  %583 = add i64 %527, 22
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  store i32 %556, i32* %584, align 4
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -4176
  %587 = load i64, i64* %3, align 8
  %588 = add i64 %587, 7
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %586 to i32*
  %590 = load i32, i32* %589, align 4
  %591 = sext i32 %590 to i64
  store i64 %591, i64* %RCX.i2073, align 8
  %592 = add nsw i64 %591, 12099168
  %593 = add i64 %587, 15
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i8*
  %595 = load i8, i8* %594, align 1
  %596 = zext i8 %595 to i64
  store i64 %596, i64* %RAX.i2122, align 8
  %597 = zext i8 %595 to i32
  %598 = add i64 %585, -100
  %599 = add i64 %587, 18
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = sub i32 %597, %601
  %603 = icmp ult i32 %597, %601
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %39, align 1
  %605 = and i32 %602, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %46, align 1
  %610 = xor i32 %601, %597
  %611 = xor i32 %610, %602
  %612 = lshr i32 %611, 4
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  store i8 %614, i8* %52, align 1
  %615 = icmp eq i32 %602, 0
  %616 = zext i1 %615 to i8
  store i8 %616, i8* %55, align 1
  %617 = lshr i32 %602, 31
  %618 = trunc i32 %617 to i8
  store i8 %618, i8* %58, align 1
  %619 = lshr i32 %601, 31
  %620 = add nuw nsw i32 %617, %619
  %621 = icmp eq i32 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %64, align 1
  %.v261 = select i1 %615, i64 24, i64 324
  %623 = add i64 %587, %.v261
  store i64 %623, i64* %3, align 8
  br i1 %615, label %block_442127, label %block_.L_442253

block_442127:                                     ; preds = %block_4420f9
  %624 = add i64 %585, -4152
  %625 = add i64 %623, 10
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  store i32 0, i32* %626, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_442131

block_.L_442131:                                  ; preds = %block_.L_442235, %block_442127
  %627 = phi i64 [ %1060, %block_.L_442235 ], [ %.pre180, %block_442127 ]
  %628 = load i64, i64* %RBP.i, align 8
  %629 = add i64 %628, -4152
  %630 = add i64 %627, 7
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = add i32 %632, -8
  %634 = icmp ult i32 %632, 8
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %39, align 1
  %636 = and i32 %633, 255
  %637 = tail call i32 @llvm.ctpop.i32(i32 %636)
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  %640 = xor i8 %639, 1
  store i8 %640, i8* %46, align 1
  %641 = xor i32 %633, %632
  %642 = lshr i32 %641, 4
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  store i8 %644, i8* %52, align 1
  %645 = icmp eq i32 %633, 0
  %646 = zext i1 %645 to i8
  store i8 %646, i8* %55, align 1
  %647 = lshr i32 %633, 31
  %648 = trunc i32 %647 to i8
  store i8 %648, i8* %58, align 1
  %649 = lshr i32 %632, 31
  %650 = xor i32 %647, %649
  %651 = add nuw nsw i32 %650, %649
  %652 = icmp eq i32 %651, 2
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %64, align 1
  %654 = icmp ne i8 %648, 0
  %655 = xor i1 %654, %652
  %.v262 = select i1 %655, i64 13, i64 285
  %656 = add i64 %627, %.v262
  store i64 %656, i64* %3, align 8
  br i1 %655, label %block_44213e, label %block_.L_44224e

block_44213e:                                     ; preds = %block_.L_442131
  %657 = add i64 %628, -4176
  %658 = add i64 %656, 6
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = zext i32 %660 to i64
  store i64 %661, i64* %RAX.i2122, align 8
  %662 = add i64 %656, 13
  store i64 %662, i64* %3, align 8
  %663 = load i32, i32* %631, align 4
  %664 = sext i32 %663 to i64
  store i64 %664, i64* %RCX.i2073, align 8
  %665 = shl nsw i64 %664, 2
  %666 = add nsw i64 %665, 8053168
  %667 = add i64 %656, 20
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %666 to i32*
  %669 = load i32, i32* %668, align 4
  %670 = add i32 %669, %660
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RAX.i2122, align 8
  %672 = icmp ult i32 %670, %660
  %673 = icmp ult i32 %670, %669
  %674 = or i1 %672, %673
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %39, align 1
  %676 = and i32 %670, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %46, align 1
  %681 = xor i32 %669, %660
  %682 = xor i32 %681, %670
  %683 = lshr i32 %682, 4
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  store i8 %685, i8* %52, align 1
  %686 = icmp eq i32 %670, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %55, align 1
  %688 = lshr i32 %670, 31
  %689 = trunc i32 %688 to i8
  store i8 %689, i8* %58, align 1
  %690 = lshr i32 %660, 31
  %691 = lshr i32 %669, 31
  %692 = xor i32 %688, %690
  %693 = xor i32 %688, %691
  %694 = add nuw nsw i32 %692, %693
  %695 = icmp eq i32 %694, 2
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %64, align 1
  %697 = add i64 %628, -4180
  %698 = add i64 %656, 26
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  store i32 %670, i32* %699, align 4
  %700 = load i64, i64* %RBP.i, align 8
  %701 = add i64 %700, -4180
  %702 = load i64, i64* %3, align 8
  %703 = add i64 %702, 7
  store i64 %703, i64* %3, align 8
  %704 = inttoptr i64 %701 to i32*
  %705 = load i32, i32* %704, align 4
  %706 = sext i32 %705 to i64
  store i64 %706, i64* %RCX.i2073, align 8
  %707 = add nsw i64 %706, 12099168
  %708 = add i64 %702, 15
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %707 to i8*
  %710 = load i8, i8* %709, align 1
  %711 = zext i8 %710 to i64
  store i64 %711, i64* %RAX.i2122, align 8
  %712 = zext i8 %710 to i32
  %713 = add nsw i32 %712, -3
  %714 = icmp ult i8 %710, 3
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %39, align 1
  %716 = and i32 %713, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716)
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %46, align 1
  %721 = xor i32 %713, %712
  %722 = lshr i32 %721, 4
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  store i8 %724, i8* %52, align 1
  %725 = icmp eq i32 %713, 0
  %726 = zext i1 %725 to i8
  store i8 %726, i8* %55, align 1
  %727 = lshr i32 %713, 31
  %728 = trunc i32 %727 to i8
  store i8 %728, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v196 = select i1 %725, i64 221, i64 24
  %729 = add i64 %702, %.v196
  store i64 %729, i64* %3, align 8
  br i1 %725, label %block_.L_442235, label %block_442170

block_442170:                                     ; preds = %block_44213e
  %730 = add i64 %700, -112
  %731 = add i64 %729, 4
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i64*
  %733 = load i64, i64* %732, align 8
  store i64 %733, i64* %RAX.i2122, align 8
  %734 = add i64 %729, 11
  store i64 %734, i64* %3, align 8
  %735 = load i32, i32* %704, align 4
  %736 = sext i32 %735 to i64
  %737 = mul nsw i64 %736, 36
  store i64 %737, i64* %RCX.i2073, align 8
  %738 = lshr i64 %737, 63
  %739 = add i64 %737, %733
  store i64 %739, i64* %RAX.i2122, align 8
  %740 = icmp ult i64 %739, %733
  %741 = icmp ult i64 %739, %737
  %742 = or i1 %740, %741
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %39, align 1
  %744 = trunc i64 %739 to i32
  %745 = and i32 %744, 255
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %46, align 1
  %750 = xor i64 %737, %733
  %751 = xor i64 %750, %739
  %752 = lshr i64 %751, 4
  %753 = trunc i64 %752 to i8
  %754 = and i8 %753, 1
  store i8 %754, i8* %52, align 1
  %755 = icmp eq i64 %739, 0
  %756 = zext i1 %755 to i8
  store i8 %756, i8* %55, align 1
  %757 = lshr i64 %739, 63
  %758 = trunc i64 %757 to i8
  store i8 %758, i8* %58, align 1
  %759 = lshr i64 %733, 63
  %760 = xor i64 %757, %759
  %761 = xor i64 %757, %738
  %762 = add nuw nsw i64 %760, %761
  %763 = icmp eq i64 %762, 2
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %64, align 1
  %765 = inttoptr i64 %739 to i32*
  %766 = add i64 %729, 20
  store i64 %766, i64* %3, align 8
  %767 = load i32, i32* %765, align 4
  %768 = zext i32 %767 to i64
  store i64 %768, i64* %RDX.i2039, align 8
  %769 = add i64 %700, -4160
  %770 = add i64 %729, 26
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  %773 = sub i32 %767, %772
  %774 = icmp ult i32 %767, %772
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %39, align 1
  %776 = and i32 %773, 255
  %777 = tail call i32 @llvm.ctpop.i32(i32 %776)
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  %780 = xor i8 %779, 1
  store i8 %780, i8* %46, align 1
  %781 = xor i32 %772, %767
  %782 = xor i32 %781, %773
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %52, align 1
  %786 = icmp eq i32 %773, 0
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %55, align 1
  %788 = lshr i32 %773, 31
  %789 = trunc i32 %788 to i8
  store i8 %789, i8* %58, align 1
  %790 = lshr i32 %767, 31
  %791 = lshr i32 %772, 31
  %792 = xor i32 %791, %790
  %793 = xor i32 %788, %790
  %794 = add nuw nsw i32 %793, %792
  %795 = icmp eq i32 %794, 2
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %64, align 1
  %.v195 = select i1 %786, i64 32, i64 197
  %797 = add i64 %729, %.v195
  store i64 %797, i64* %3, align 8
  br i1 %786, label %block_442190, label %block_.L_442235

block_442190:                                     ; preds = %block_442170
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -112
  %800 = add i64 %797, 4
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i64*
  %802 = load i64, i64* %801, align 8
  store i64 %802, i64* %RAX.i2122, align 8
  %803 = add i64 %798, -4180
  %804 = add i64 %797, 11
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i32*
  %806 = load i32, i32* %805, align 4
  %807 = sext i32 %806 to i64
  %808 = mul nsw i64 %807, 36
  store i64 %808, i64* %RCX.i2073, align 8
  %809 = lshr i64 %808, 63
  %810 = add i64 %808, %802
  store i64 %810, i64* %RAX.i2122, align 8
  %811 = icmp ult i64 %810, %802
  %812 = icmp ult i64 %810, %808
  %813 = or i1 %811, %812
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %39, align 1
  %815 = trunc i64 %810 to i32
  %816 = and i32 %815, 255
  %817 = tail call i32 @llvm.ctpop.i32(i32 %816)
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  %820 = xor i8 %819, 1
  store i8 %820, i8* %46, align 1
  %821 = xor i64 %808, %802
  %822 = xor i64 %821, %810
  %823 = lshr i64 %822, 4
  %824 = trunc i64 %823 to i8
  %825 = and i8 %824, 1
  store i8 %825, i8* %52, align 1
  %826 = icmp eq i64 %810, 0
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %55, align 1
  %828 = lshr i64 %810, 63
  %829 = trunc i64 %828 to i8
  store i8 %829, i8* %58, align 1
  %830 = lshr i64 %802, 63
  %831 = xor i64 %828, %830
  %832 = xor i64 %828, %809
  %833 = add nuw nsw i64 %831, %832
  %834 = icmp eq i64 %833, 2
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %64, align 1
  %836 = add i64 %810, 12
  %837 = add i64 %797, 22
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  store i8 0, i8* %39, align 1
  %840 = and i32 %839, 255
  %841 = tail call i32 @llvm.ctpop.i32(i32 %840)
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = xor i8 %843, 1
  store i8 %844, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %845 = icmp eq i32 %839, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %55, align 1
  %847 = lshr i32 %839, 31
  %848 = trunc i32 %847 to i8
  store i8 %848, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v194 = select i1 %845, i64 165, i64 28
  %849 = add i64 %797, %.v194
  store i64 %849, i64* %3, align 8
  br i1 %845, label %block_.L_442235, label %block_4421ac

block_4421ac:                                     ; preds = %block_442190
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -112
  %852 = add i64 %849, 4
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %RAX.i2122, align 8
  %855 = add i64 %850, -4180
  %856 = add i64 %849, 11
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = sext i32 %858 to i64
  %860 = mul nsw i64 %859, 36
  store i64 %860, i64* %RCX.i2073, align 8
  %861 = lshr i64 %860, 63
  %862 = add i64 %860, %854
  store i64 %862, i64* %RAX.i2122, align 8
  %863 = icmp ult i64 %862, %854
  %864 = icmp ult i64 %862, %860
  %865 = or i1 %863, %864
  %866 = zext i1 %865 to i8
  store i8 %866, i8* %39, align 1
  %867 = trunc i64 %862 to i32
  %868 = and i32 %867, 255
  %869 = tail call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  store i8 %872, i8* %46, align 1
  %873 = xor i64 %860, %854
  %874 = xor i64 %873, %862
  %875 = lshr i64 %874, 4
  %876 = trunc i64 %875 to i8
  %877 = and i8 %876, 1
  store i8 %877, i8* %52, align 1
  %878 = icmp eq i64 %862, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %55, align 1
  %880 = lshr i64 %862, 63
  %881 = trunc i64 %880 to i8
  store i8 %881, i8* %58, align 1
  %882 = lshr i64 %854, 63
  %883 = xor i64 %880, %882
  %884 = xor i64 %880, %861
  %885 = add nuw nsw i64 %883, %884
  %886 = icmp eq i64 %885, 2
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %64, align 1
  %888 = add i64 %862, 28
  %889 = add i64 %849, 22
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i8*
  %891 = load i8, i8* %890, align 1
  store i8 0, i8* %39, align 1
  %892 = zext i8 %891 to i32
  %893 = tail call i32 @llvm.ctpop.i32(i32 %892)
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  store i8 %896, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %897 = icmp eq i8 %891, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %55, align 1
  %899 = lshr i8 %891, 7
  store i8 %899, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v193 = select i1 %897, i64 28, i64 137
  %900 = add i64 %849, %.v193
  store i64 %900, i64* %3, align 8
  br i1 %897, label %block_4421c8, label %block_.L_442235

block_4421c8:                                     ; preds = %block_4421ac
  %901 = load i64, i64* %RBP.i, align 8
  %902 = add i64 %901, -48
  %903 = add i64 %900, 4
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i64*
  %905 = load i64, i64* %904, align 8
  store i64 %905, i64* %RAX.i2122, align 8
  %906 = add i64 %901, -4176
  %907 = add i64 %900, 11
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %906 to i32*
  %909 = load i32, i32* %908, align 4
  %910 = sext i32 %909 to i64
  store i64 %910, i64* %RCX.i2073, align 8
  %911 = add i64 %905, %910
  %912 = add i64 %900, 15
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i8*
  %914 = load i8, i8* %913, align 1
  store i8 0, i8* %39, align 1
  %915 = zext i8 %914 to i32
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %920 = icmp eq i8 %914, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %55, align 1
  %922 = lshr i8 %914, 7
  store i8 %922, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v192 = select i1 %920, i64 65, i64 21
  %923 = add i64 %900, %.v192
  %924 = add i64 %901, -112
  %925 = add i64 %923, 4
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i64*
  %927 = load i64, i64* %926, align 8
  store i64 %927, i64* %RAX.i2122, align 8
  %928 = add i64 %901, -4180
  %929 = add i64 %923, 11
  store i64 %929, i64* %3, align 8
  %930 = inttoptr i64 %928 to i32*
  %931 = load i32, i32* %930, align 4
  %932 = sext i32 %931 to i64
  %933 = mul nsw i64 %932, 36
  store i64 %933, i64* %RCX.i2073, align 8
  %934 = lshr i64 %933, 63
  %935 = add i64 %933, %927
  store i64 %935, i64* %RAX.i2122, align 8
  %936 = icmp ult i64 %935, %927
  %937 = icmp ult i64 %935, %933
  %938 = or i1 %936, %937
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %39, align 1
  %940 = trunc i64 %935 to i32
  %941 = and i32 %940, 255
  %942 = tail call i32 @llvm.ctpop.i32(i32 %941)
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  store i8 %945, i8* %46, align 1
  %946 = xor i64 %933, %927
  %947 = xor i64 %946, %935
  %948 = lshr i64 %947, 4
  %949 = trunc i64 %948 to i8
  %950 = and i8 %949, 1
  store i8 %950, i8* %52, align 1
  %951 = icmp eq i64 %935, 0
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %55, align 1
  %953 = lshr i64 %935, 63
  %954 = trunc i64 %953 to i8
  store i8 %954, i8* %58, align 1
  %955 = lshr i64 %927, 63
  %956 = xor i64 %953, %955
  %957 = xor i64 %953, %934
  %958 = add nuw nsw i64 %956, %957
  %959 = icmp eq i64 %958, 2
  %960 = zext i1 %959 to i8
  store i8 %960, i8* %64, align 1
  %961 = add i64 %935, 12
  %962 = add i64 %923, 22
  store i64 %962, i64* %3, align 8
  %963 = inttoptr i64 %961 to i32*
  %964 = load i32, i32* %963, align 4
  %965 = sext i32 %964 to i64
  store i64 %965, i64* %RAX.i2122, align 8
  %966 = load i64, i64* %RBP.i, align 8
  br i1 %920, label %block_.L_442209, label %block_4421dd

block_4421dd:                                     ; preds = %block_4421c8
  %967 = add nsw i64 %965, -512
  %968 = add i64 %967, %966
  %969 = add i64 %923, 29
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i8*
  %971 = load i8, i8* %970, align 1
  %972 = add i8 %971, 1
  store i8 %972, i8* %DL.i1764, align 1
  %973 = icmp eq i8 %971, -1
  %974 = icmp eq i8 %972, 0
  %975 = or i1 %973, %974
  %976 = zext i1 %975 to i8
  store i8 %976, i8* %39, align 1
  %977 = zext i8 %972 to i32
  %978 = tail call i32 @llvm.ctpop.i32(i32 %977)
  %979 = trunc i32 %978 to i8
  %980 = and i8 %979, 1
  %981 = xor i8 %980, 1
  store i8 %981, i8* %46, align 1
  %982 = xor i8 %972, %971
  %983 = lshr i8 %982, 4
  %984 = and i8 %983, 1
  store i8 %984, i8* %52, align 1
  %985 = zext i1 %974 to i8
  store i8 %985, i8* %55, align 1
  %986 = lshr i8 %972, 7
  store i8 %986, i8* %58, align 1
  %987 = lshr i8 %971, 7
  %988 = xor i8 %986, %987
  %989 = add nuw nsw i8 %988, %986
  %990 = icmp eq i8 %989, 2
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %64, align 1
  %992 = add i64 %966, -512
  %993 = add i64 %992, %965
  %994 = add i64 %923, 39
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %993 to i8*
  store i8 %972, i8* %995, align 1
  %996 = load i64, i64* %3, align 8
  %997 = add i64 %996, 44
  store i64 %997, i64* %3, align 8
  br label %block_.L_442230

block_.L_442209:                                  ; preds = %block_4421c8
  %998 = add nsw i64 %965, -912
  %999 = add i64 %998, %966
  %1000 = add i64 %923, 29
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %999 to i8*
  %1002 = load i8, i8* %1001, align 1
  %1003 = add i8 %1002, 1
  store i8 %1003, i8* %DL.i1764, align 1
  %1004 = icmp eq i8 %1002, -1
  %1005 = icmp eq i8 %1003, 0
  %1006 = or i1 %1004, %1005
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %39, align 1
  %1008 = zext i8 %1003 to i32
  %1009 = tail call i32 @llvm.ctpop.i32(i32 %1008)
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  store i8 %1012, i8* %46, align 1
  %1013 = xor i8 %1003, %1002
  %1014 = lshr i8 %1013, 4
  %1015 = and i8 %1014, 1
  store i8 %1015, i8* %52, align 1
  %1016 = zext i1 %1005 to i8
  store i8 %1016, i8* %55, align 1
  %1017 = lshr i8 %1003, 7
  store i8 %1017, i8* %58, align 1
  %1018 = lshr i8 %1002, 7
  %1019 = xor i8 %1017, %1018
  %1020 = add nuw nsw i8 %1019, %1017
  %1021 = icmp eq i8 %1020, 2
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %64, align 1
  %1023 = add i64 %966, -912
  %1024 = add i64 %1023, %965
  %1025 = add i64 %923, 39
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i8*
  store i8 %1003, i8* %1026, align 1
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_442230

block_.L_442230:                                  ; preds = %block_.L_442209, %block_4421dd
  %1027 = phi i64 [ %.pre181, %block_.L_442209 ], [ %997, %block_4421dd ]
  %1028 = add i64 %1027, 5
  store i64 %1028, i64* %3, align 8
  br label %block_.L_442235

block_.L_442235:                                  ; preds = %block_4421ac, %block_442170, %block_.L_442230, %block_442190, %block_44213e
  %1029 = phi i64 [ %1028, %block_.L_442230 ], [ %900, %block_4421ac ], [ %849, %block_442190 ], [ %797, %block_442170 ], [ %729, %block_44213e ]
  %1030 = load i64, i64* %RBP.i, align 8
  %1031 = add i64 %1030, -4152
  %1032 = add i64 %1029, 11
  store i64 %1032, i64* %3, align 8
  %1033 = inttoptr i64 %1031 to i32*
  %1034 = load i32, i32* %1033, align 4
  %1035 = add i32 %1034, 1
  %1036 = zext i32 %1035 to i64
  store i64 %1036, i64* %RAX.i2122, align 8
  %1037 = icmp eq i32 %1034, -1
  %1038 = icmp eq i32 %1035, 0
  %1039 = or i1 %1037, %1038
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %39, align 1
  %1041 = and i32 %1035, 255
  %1042 = tail call i32 @llvm.ctpop.i32(i32 %1041)
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = xor i8 %1044, 1
  store i8 %1045, i8* %46, align 1
  %1046 = xor i32 %1035, %1034
  %1047 = lshr i32 %1046, 4
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %52, align 1
  %1050 = zext i1 %1038 to i8
  store i8 %1050, i8* %55, align 1
  %1051 = lshr i32 %1035, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %58, align 1
  %1053 = lshr i32 %1034, 31
  %1054 = xor i32 %1051, %1053
  %1055 = add nuw nsw i32 %1054, %1051
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %64, align 1
  %1058 = add i64 %1029, 20
  store i64 %1058, i64* %3, align 8
  store i32 %1035, i32* %1033, align 4
  %1059 = load i64, i64* %3, align 8
  %1060 = add i64 %1059, -280
  store i64 %1060, i64* %3, align 8
  br label %block_.L_442131

block_.L_44224e:                                  ; preds = %block_.L_442131
  %1061 = add i64 %656, 5
  store i64 %1061, i64* %3, align 8
  br label %block_.L_442253

block_.L_442253:                                  ; preds = %block_4420f9, %block_.L_44224e
  %1062 = phi i64 [ %628, %block_.L_44224e ], [ %585, %block_4420f9 ]
  %1063 = phi i64 [ %1061, %block_.L_44224e ], [ %623, %block_4420f9 ]
  %1064 = add i64 %1062, -4148
  %1065 = add i64 %1063, 11
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  %1067 = load i32, i32* %1066, align 4
  %1068 = add i32 %1067, 1
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RAX.i2122, align 8
  %1070 = icmp eq i32 %1067, -1
  %1071 = icmp eq i32 %1068, 0
  %1072 = or i1 %1070, %1071
  %1073 = zext i1 %1072 to i8
  store i8 %1073, i8* %39, align 1
  %1074 = and i32 %1068, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %46, align 1
  %1079 = xor i32 %1068, %1067
  %1080 = lshr i32 %1079, 4
  %1081 = trunc i32 %1080 to i8
  %1082 = and i8 %1081, 1
  store i8 %1082, i8* %52, align 1
  %1083 = zext i1 %1071 to i8
  store i8 %1083, i8* %55, align 1
  %1084 = lshr i32 %1068, 31
  %1085 = trunc i32 %1084 to i8
  store i8 %1085, i8* %58, align 1
  %1086 = lshr i32 %1067, 31
  %1087 = xor i32 %1084, %1086
  %1088 = add nuw nsw i32 %1087, %1084
  %1089 = icmp eq i32 %1088, 2
  %1090 = zext i1 %1089 to i8
  store i8 %1090, i8* %64, align 1
  %1091 = add i64 %1063, 20
  store i64 %1091, i64* %3, align 8
  store i32 %1068, i32* %1066, align 4
  %1092 = load i64, i64* %3, align 8
  %1093 = add i64 %1092, -385
  store i64 %1093, i64* %3, align 8
  br label %block_.L_4420e6

block_.L_44226c:                                  ; preds = %block_.L_4420e6
  %1094 = add i64 %527, 11
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %528 to i32*
  %1096 = load i32, i32* %1095, align 4
  %1097 = add i32 %1096, 1
  %1098 = zext i32 %1097 to i64
  store i64 %1098, i64* %RAX.i2122, align 8
  %1099 = icmp eq i32 %1096, -1
  %1100 = icmp eq i32 %1097, 0
  %1101 = or i1 %1099, %1100
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %39, align 1
  %1103 = and i32 %1097, 255
  %1104 = tail call i32 @llvm.ctpop.i32(i32 %1103)
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = xor i8 %1106, 1
  store i8 %1107, i8* %46, align 1
  %1108 = xor i32 %1097, %1096
  %1109 = lshr i32 %1108, 4
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  store i8 %1111, i8* %52, align 1
  %1112 = zext i1 %1100 to i8
  store i8 %1112, i8* %55, align 1
  %1113 = lshr i32 %1097, 31
  %1114 = trunc i32 %1113 to i8
  store i8 %1114, i8* %58, align 1
  %1115 = lshr i32 %1096, 31
  %1116 = xor i32 %1113, %1115
  %1117 = add nuw nsw i32 %1116, %1113
  %1118 = icmp eq i32 %1117, 2
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %64, align 1
  %1120 = add i64 %527, 20
  store i64 %1120, i64* %3, align 8
  store i32 %1097, i32* %1095, align 4
  %1121 = load i64, i64* %3, align 8
  %1122 = add i64 %1121, -439
  store i64 %1122, i64* %3, align 8
  br label %block_.L_4420c9

block_.L_442285:                                  ; preds = %block_.L_4420c9
  %1123 = add i64 %489, 10
  store i64 %1123, i64* %3, align 8
  store i32 0, i32* %459, align 4
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %1125 = bitcast %union.VectorReg* %1124 to i8*
  %1126 = bitcast %union.VectorReg* %1124 to i32*
  %1127 = getelementptr inbounds i8, i8* %1125, i64 4
  %1128 = bitcast i8* %1127 to float*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1130 = bitcast i64* %1129 to float*
  %1131 = getelementptr inbounds i8, i8* %1125, i64 12
  %1132 = bitcast i8* %1131 to float*
  %1133 = bitcast %union.VectorReg* %1124 to <2 x float>*
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_44228f

block_.L_44228f:                                  ; preds = %block_.L_44232b, %block_.L_442285
  %1134 = phi i64 [ %1460, %block_.L_44232b ], [ %.pre142, %block_.L_442285 ]
  %1135 = load i64, i64* %RBP.i, align 8
  %1136 = add i64 %1135, -4144
  %1137 = add i64 %1134, 6
  store i64 %1137, i64* %3, align 8
  %1138 = inttoptr i64 %1136 to i32*
  %1139 = load i32, i32* %1138, align 4
  %1140 = zext i32 %1139 to i64
  store i64 %1140, i64* %RAX.i2122, align 8
  %1141 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1142 = sub i32 %1139, %1141
  %1143 = icmp ult i32 %1139, %1141
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %39, align 1
  %1145 = and i32 %1142, 255
  %1146 = tail call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = and i8 %1147, 1
  %1149 = xor i8 %1148, 1
  store i8 %1149, i8* %46, align 1
  %1150 = xor i32 %1141, %1139
  %1151 = xor i32 %1150, %1142
  %1152 = lshr i32 %1151, 4
  %1153 = trunc i32 %1152 to i8
  %1154 = and i8 %1153, 1
  store i8 %1154, i8* %52, align 1
  %1155 = icmp eq i32 %1142, 0
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %55, align 1
  %1157 = lshr i32 %1142, 31
  %1158 = trunc i32 %1157 to i8
  store i8 %1158, i8* %58, align 1
  %1159 = lshr i32 %1139, 31
  %1160 = lshr i32 %1141, 31
  %1161 = xor i32 %1160, %1159
  %1162 = xor i32 %1157, %1159
  %1163 = add nuw nsw i32 %1162, %1161
  %1164 = icmp eq i32 %1163, 2
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %64, align 1
  %1166 = icmp ne i8 %1158, 0
  %1167 = xor i1 %1166, %1164
  %.v202 = select i1 %1167, i64 19, i64 181
  %1168 = add i64 %1134, %.v202
  store i64 %1168, i64* %3, align 8
  br i1 %1167, label %block_4422a2, label %block_.L_442344

block_4422a2:                                     ; preds = %block_.L_44228f
  %1169 = add i64 %1135, -4148
  %1170 = add i64 %1168, 10
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i32*
  store i32 0, i32* %1171, align 4
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_4422ac

block_.L_4422ac:                                  ; preds = %block_4422bf, %block_4422a2
  %1172 = phi i64 [ %1430, %block_4422bf ], [ %.pre178, %block_4422a2 ]
  %1173 = load i64, i64* %RBP.i, align 8
  %1174 = add i64 %1173, -4148
  %1175 = add i64 %1172, 6
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i32*
  %1177 = load i32, i32* %1176, align 4
  %1178 = zext i32 %1177 to i64
  store i64 %1178, i64* %RAX.i2122, align 8
  %1179 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1180 = sub i32 %1177, %1179
  %1181 = icmp ult i32 %1177, %1179
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %39, align 1
  %1183 = and i32 %1180, 255
  %1184 = tail call i32 @llvm.ctpop.i32(i32 %1183)
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  %1187 = xor i8 %1186, 1
  store i8 %1187, i8* %46, align 1
  %1188 = xor i32 %1179, %1177
  %1189 = xor i32 %1188, %1180
  %1190 = lshr i32 %1189, 4
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  store i8 %1192, i8* %52, align 1
  %1193 = icmp eq i32 %1180, 0
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %55, align 1
  %1195 = lshr i32 %1180, 31
  %1196 = trunc i32 %1195 to i8
  store i8 %1196, i8* %58, align 1
  %1197 = lshr i32 %1177, 31
  %1198 = lshr i32 %1179, 31
  %1199 = xor i32 %1198, %1197
  %1200 = xor i32 %1195, %1197
  %1201 = add nuw nsw i32 %1200, %1199
  %1202 = icmp eq i32 %1201, 2
  %1203 = zext i1 %1202 to i8
  store i8 %1203, i8* %64, align 1
  %1204 = icmp ne i8 %1196, 0
  %1205 = xor i1 %1204, %1202
  %.v190 = select i1 %1205, i64 19, i64 127
  %1206 = add i64 %1172, %.v190
  store i64 %1206, i64* %3, align 8
  br i1 %1205, label %block_4422bf, label %block_.L_44232b

block_4422bf:                                     ; preds = %block_.L_4422ac
  %1207 = add i64 %1206, ptrtoint (%G_0xa0e41__rip__type* @G_0xa0e41__rip_ to i64)
  %1208 = add i64 %1206, 8
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i32*
  %1210 = load i32, i32* %1209, align 4
  store i32 %1210, i32* %1126, align 1
  store float 0.000000e+00, float* %1128, align 1
  store float 0.000000e+00, float* %1130, align 1
  store float 0.000000e+00, float* %1132, align 1
  %1211 = add i64 %1173, -48
  %1212 = add i64 %1206, 12
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i64*
  %1214 = load i64, i64* %1213, align 8
  %1215 = add i64 %1214, 15604
  store i64 %1215, i64* %RAX.i2122, align 8
  %1216 = icmp ugt i64 %1214, -15605
  %1217 = zext i1 %1216 to i8
  store i8 %1217, i8* %39, align 1
  %1218 = trunc i64 %1215 to i32
  %1219 = and i32 %1218, 255
  %1220 = tail call i32 @llvm.ctpop.i32(i32 %1219)
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  %1223 = xor i8 %1222, 1
  store i8 %1223, i8* %46, align 1
  %1224 = xor i64 %1214, 16
  %1225 = xor i64 %1224, %1215
  %1226 = lshr i64 %1225, 4
  %1227 = trunc i64 %1226 to i8
  %1228 = and i8 %1227, 1
  store i8 %1228, i8* %52, align 1
  %1229 = icmp eq i64 %1215, 0
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %55, align 1
  %1231 = lshr i64 %1215, 63
  %1232 = trunc i64 %1231 to i8
  store i8 %1232, i8* %58, align 1
  %1233 = lshr i64 %1214, 63
  %1234 = xor i64 %1231, %1233
  %1235 = add nuw nsw i64 %1234, %1231
  %1236 = icmp eq i64 %1235, 2
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %64, align 1
  %1238 = add i64 %1173, -4144
  %1239 = add i64 %1206, 25
  store i64 %1239, i64* %3, align 8
  %1240 = inttoptr i64 %1238 to i32*
  %1241 = load i32, i32* %1240, align 4
  %1242 = mul i32 %1241, 20
  %1243 = add i32 %1242, 21
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RCX.i2073, align 8
  %1245 = icmp ugt i32 %1242, -22
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %39, align 1
  %1247 = and i32 %1243, 253
  %1248 = tail call i32 @llvm.ctpop.i32(i32 %1247)
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  %1251 = xor i8 %1250, 1
  store i8 %1251, i8* %46, align 1
  %1252 = xor i32 %1242, 16
  %1253 = xor i32 %1252, %1243
  %1254 = lshr i32 %1253, 4
  %1255 = trunc i32 %1254 to i8
  %1256 = and i8 %1255, 1
  store i8 %1256, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %1257 = lshr i32 %1243, 31
  %1258 = trunc i32 %1257 to i8
  store i8 %1258, i8* %58, align 1
  %1259 = lshr i32 %1242, 31
  %1260 = xor i32 %1257, %1259
  %1261 = add nuw nsw i32 %1260, %1257
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %64, align 1
  %1264 = load i64, i64* %RBP.i, align 8
  %1265 = add i64 %1264, -4148
  %1266 = add i64 %1206, 34
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i32*
  %1268 = load i32, i32* %1267, align 4
  %1269 = add i32 %1268, %1243
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RCX.i2073, align 8
  %1271 = sext i32 %1269 to i64
  %1272 = mul nsw i64 %1271, 48
  store i64 %1272, i64* %RDX.i2039, align 8
  %1273 = lshr i64 %1272, 63
  %1274 = load i64, i64* %RAX.i2122, align 8
  %1275 = add i64 %1272, %1274
  store i64 %1275, i64* %RAX.i2122, align 8
  %1276 = icmp ult i64 %1275, %1274
  %1277 = icmp ult i64 %1275, %1272
  %1278 = or i1 %1276, %1277
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %39, align 1
  %1280 = trunc i64 %1275 to i32
  %1281 = and i32 %1280, 255
  %1282 = tail call i32 @llvm.ctpop.i32(i32 %1281)
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = xor i8 %1284, 1
  store i8 %1285, i8* %46, align 1
  %1286 = xor i64 %1272, %1274
  %1287 = xor i64 %1286, %1275
  %1288 = lshr i64 %1287, 4
  %1289 = trunc i64 %1288 to i8
  %1290 = and i8 %1289, 1
  store i8 %1290, i8* %52, align 1
  %1291 = icmp eq i64 %1275, 0
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %55, align 1
  %1293 = lshr i64 %1275, 63
  %1294 = trunc i64 %1293 to i8
  store i8 %1294, i8* %58, align 1
  %1295 = lshr i64 %1274, 63
  %1296 = xor i64 %1293, %1295
  %1297 = xor i64 %1293, %1273
  %1298 = add nuw nsw i64 %1296, %1297
  %1299 = icmp eq i64 %1298, 2
  %1300 = zext i1 %1299 to i8
  store i8 %1300, i8* %64, align 1
  %1301 = add i64 %1275, 4
  %1302 = add i64 %1206, 48
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i8*
  store i8 0, i8* %1303, align 1
  %1304 = load i64, i64* %RBP.i, align 8
  %1305 = add i64 %1304, -48
  %1306 = load i64, i64* %3, align 8
  %1307 = add i64 %1306, 4
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1305 to i64*
  %1309 = load i64, i64* %1308, align 8
  %1310 = add i64 %1309, 15604
  store i64 %1310, i64* %RAX.i2122, align 8
  %1311 = icmp ugt i64 %1309, -15605
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %39, align 1
  %1313 = trunc i64 %1310 to i32
  %1314 = and i32 %1313, 255
  %1315 = tail call i32 @llvm.ctpop.i32(i32 %1314)
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  %1318 = xor i8 %1317, 1
  store i8 %1318, i8* %46, align 1
  %1319 = xor i64 %1309, 16
  %1320 = xor i64 %1319, %1310
  %1321 = lshr i64 %1320, 4
  %1322 = trunc i64 %1321 to i8
  %1323 = and i8 %1322, 1
  store i8 %1323, i8* %52, align 1
  %1324 = icmp eq i64 %1310, 0
  %1325 = zext i1 %1324 to i8
  store i8 %1325, i8* %55, align 1
  %1326 = lshr i64 %1310, 63
  %1327 = trunc i64 %1326 to i8
  store i8 %1327, i8* %58, align 1
  %1328 = lshr i64 %1309, 63
  %1329 = xor i64 %1326, %1328
  %1330 = add nuw nsw i64 %1329, %1326
  %1331 = icmp eq i64 %1330, 2
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %64, align 1
  %1333 = add i64 %1304, -4144
  %1334 = add i64 %1306, 17
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = mul i32 %1336, 20
  %1338 = add i32 %1337, 21
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RCX.i2073, align 8
  %1340 = icmp ugt i32 %1337, -22
  %1341 = zext i1 %1340 to i8
  store i8 %1341, i8* %39, align 1
  %1342 = and i32 %1338, 253
  %1343 = tail call i32 @llvm.ctpop.i32(i32 %1342)
  %1344 = trunc i32 %1343 to i8
  %1345 = and i8 %1344, 1
  %1346 = xor i8 %1345, 1
  store i8 %1346, i8* %46, align 1
  %1347 = xor i32 %1337, 16
  %1348 = xor i32 %1347, %1338
  %1349 = lshr i32 %1348, 4
  %1350 = trunc i32 %1349 to i8
  %1351 = and i8 %1350, 1
  store i8 %1351, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %1352 = lshr i32 %1338, 31
  %1353 = trunc i32 %1352 to i8
  store i8 %1353, i8* %58, align 1
  %1354 = lshr i32 %1337, 31
  %1355 = xor i32 %1352, %1354
  %1356 = add nuw nsw i32 %1355, %1352
  %1357 = icmp eq i32 %1356, 2
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %64, align 1
  %1359 = add i64 %1304, -4148
  %1360 = add i64 %1306, 26
  store i64 %1360, i64* %3, align 8
  %1361 = inttoptr i64 %1359 to i32*
  %1362 = load i32, i32* %1361, align 4
  %1363 = add i32 %1362, %1338
  %1364 = zext i32 %1363 to i64
  store i64 %1364, i64* %RCX.i2073, align 8
  %1365 = sext i32 %1363 to i64
  %1366 = mul nsw i64 %1365, 48
  store i64 %1366, i64* %RDX.i2039, align 8
  %1367 = lshr i64 %1366, 63
  %1368 = load i64, i64* %RAX.i2122, align 8
  %1369 = add i64 %1366, %1368
  store i64 %1369, i64* %RAX.i2122, align 8
  %1370 = icmp ult i64 %1369, %1368
  %1371 = icmp ult i64 %1369, %1366
  %1372 = or i1 %1370, %1371
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %39, align 1
  %1374 = trunc i64 %1369 to i32
  %1375 = and i32 %1374, 255
  %1376 = tail call i32 @llvm.ctpop.i32(i32 %1375)
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 1
  %1379 = xor i8 %1378, 1
  store i8 %1379, i8* %46, align 1
  %1380 = xor i64 %1366, %1368
  %1381 = xor i64 %1380, %1369
  %1382 = lshr i64 %1381, 4
  %1383 = trunc i64 %1382 to i8
  %1384 = and i8 %1383, 1
  store i8 %1384, i8* %52, align 1
  %1385 = icmp eq i64 %1369, 0
  %1386 = zext i1 %1385 to i8
  store i8 %1386, i8* %55, align 1
  %1387 = lshr i64 %1369, 63
  %1388 = trunc i64 %1387 to i8
  store i8 %1388, i8* %58, align 1
  %1389 = lshr i64 %1368, 63
  %1390 = xor i64 %1387, %1389
  %1391 = xor i64 %1387, %1367
  %1392 = add nuw nsw i64 %1390, %1391
  %1393 = icmp eq i64 %1392, 2
  %1394 = zext i1 %1393 to i8
  store i8 %1394, i8* %64, align 1
  %1395 = inttoptr i64 %1369 to float*
  %1396 = add i64 %1306, 40
  store i64 %1396, i64* %3, align 8
  %1397 = load <2 x float>, <2 x float>* %1133, align 1
  %1398 = extractelement <2 x float> %1397, i32 0
  store float %1398, float* %1395, align 4
  %1399 = load i64, i64* %RBP.i, align 8
  %1400 = add i64 %1399, -4148
  %1401 = load i64, i64* %3, align 8
  %1402 = add i64 %1401, 6
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1400 to i32*
  %1404 = load i32, i32* %1403, align 4
  %1405 = add i32 %1404, 1
  %1406 = zext i32 %1405 to i64
  store i64 %1406, i64* %RAX.i2122, align 8
  %1407 = icmp eq i32 %1404, -1
  %1408 = icmp eq i32 %1405, 0
  %1409 = or i1 %1407, %1408
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %39, align 1
  %1411 = and i32 %1405, 255
  %1412 = tail call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  store i8 %1415, i8* %46, align 1
  %1416 = xor i32 %1405, %1404
  %1417 = lshr i32 %1416, 4
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  store i8 %1419, i8* %52, align 1
  %1420 = zext i1 %1408 to i8
  store i8 %1420, i8* %55, align 1
  %1421 = lshr i32 %1405, 31
  %1422 = trunc i32 %1421 to i8
  store i8 %1422, i8* %58, align 1
  %1423 = lshr i32 %1404, 31
  %1424 = xor i32 %1421, %1423
  %1425 = add nuw nsw i32 %1424, %1421
  %1426 = icmp eq i32 %1425, 2
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %64, align 1
  %1428 = add i64 %1401, 15
  store i64 %1428, i64* %3, align 8
  store i32 %1405, i32* %1403, align 4
  %1429 = load i64, i64* %3, align 8
  %1430 = add i64 %1429, -122
  store i64 %1430, i64* %3, align 8
  br label %block_.L_4422ac

block_.L_44232b:                                  ; preds = %block_.L_4422ac
  %1431 = add i64 %1173, -4144
  %1432 = add i64 %1206, 11
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = add i32 %1434, 1
  %1436 = zext i32 %1435 to i64
  store i64 %1436, i64* %RAX.i2122, align 8
  %1437 = icmp eq i32 %1434, -1
  %1438 = icmp eq i32 %1435, 0
  %1439 = or i1 %1437, %1438
  %1440 = zext i1 %1439 to i8
  store i8 %1440, i8* %39, align 1
  %1441 = and i32 %1435, 255
  %1442 = tail call i32 @llvm.ctpop.i32(i32 %1441)
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = xor i8 %1444, 1
  store i8 %1445, i8* %46, align 1
  %1446 = xor i32 %1435, %1434
  %1447 = lshr i32 %1446, 4
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  store i8 %1449, i8* %52, align 1
  %1450 = zext i1 %1438 to i8
  store i8 %1450, i8* %55, align 1
  %1451 = lshr i32 %1435, 31
  %1452 = trunc i32 %1451 to i8
  store i8 %1452, i8* %58, align 1
  %1453 = lshr i32 %1434, 31
  %1454 = xor i32 %1451, %1453
  %1455 = add nuw nsw i32 %1454, %1451
  %1456 = icmp eq i32 %1455, 2
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %64, align 1
  %1458 = add i64 %1206, 20
  store i64 %1458, i64* %3, align 8
  store i32 %1435, i32* %1433, align 4
  %1459 = load i64, i64* %3, align 8
  %1460 = add i64 %1459, -176
  store i64 %1460, i64* %3, align 8
  br label %block_.L_44228f

block_.L_442344:                                  ; preds = %block_.L_44228f
  %1461 = add i64 %1135, -512
  store i64 %1461, i64* %RCX.i2073, align 8
  %1462 = add i64 %1135, -100
  %1463 = add i64 %1168, 10
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1462 to i32*
  %1465 = load i32, i32* %1464, align 4
  %1466 = zext i32 %1465 to i64
  store i64 %1466, i64* %RDI.i2098, align 8
  %1467 = add i64 %1135, -112
  %1468 = add i64 %1168, 14
  store i64 %1468, i64* %3, align 8
  %1469 = inttoptr i64 %1467 to i64*
  %1470 = load i64, i64* %1469, align 8
  store i64 %1470, i64* %RSI.i2095, align 8
  %1471 = add i64 %1135, -48
  %1472 = add i64 %1168, 18
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i64*
  %1474 = load i64, i64* %1473, align 8
  %1475 = add i64 %1474, 15604
  store i64 %1475, i64* %RAX.i2122, align 8
  %1476 = icmp ugt i64 %1474, -15605
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %39, align 1
  %1478 = trunc i64 %1475 to i32
  %1479 = and i32 %1478, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %46, align 1
  %1484 = xor i64 %1474, 16
  %1485 = xor i64 %1484, %1475
  %1486 = lshr i64 %1485, 4
  %1487 = trunc i64 %1486 to i8
  %1488 = and i8 %1487, 1
  store i8 %1488, i8* %52, align 1
  %1489 = icmp eq i64 %1475, 0
  %1490 = zext i1 %1489 to i8
  store i8 %1490, i8* %55, align 1
  %1491 = lshr i64 %1475, 63
  %1492 = trunc i64 %1491 to i8
  store i8 %1492, i8* %58, align 1
  %1493 = lshr i64 %1474, 63
  %1494 = xor i64 %1491, %1493
  %1495 = add nuw nsw i64 %1494, %1491
  %1496 = icmp eq i64 %1495, 2
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %64, align 1
  store i64 %1475, i64* %RDX.i2039, align 8
  %1498 = add i64 %1168, -16436
  %1499 = add i64 %1168, 32
  %1500 = load i64, i64* %6, align 8
  %1501 = add i64 %1500, -8
  %1502 = inttoptr i64 %1501 to i64*
  store i64 %1499, i64* %1502, align 8
  store i64 %1501, i64* %6, align 8
  store i64 %1498, i64* %3, align 8
  %call2_44235f = tail call %struct.Memory* @sub_43e310.find_half_and_false_eyes(%struct.State* nonnull %0, i64 %1498, %struct.Memory* %call2_442097)
  %1503 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i2098, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %1504 = load i64, i64* %RBP.i, align 8
  %1505 = add i64 %1504, -80
  %1506 = add i64 %1503, 6
  store i64 %1506, i64* %3, align 8
  %1507 = inttoptr i64 %1505 to i64*
  %1508 = load i64, i64* %1507, align 8
  store i64 %1508, i64* %RAX.i2122, align 8
  %1509 = add i64 %1504, -4284
  %1510 = add i64 %1503, 12
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1509 to i32*
  store i32 0, i32* %1511, align 4
  %1512 = load i64, i64* %RAX.i2122, align 8
  %1513 = load i64, i64* %3, align 8
  store i64 %1512, i64* %RDI.i2098, align 8
  %1514 = load i64, i64* %RBP.i, align 8
  %1515 = add i64 %1514, -4284
  %1516 = add i64 %1513, 9
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i32*
  %1518 = load i32, i32* %1517, align 4
  %1519 = zext i32 %1518 to i64
  store i64 %1519, i64* %RSI.i2095, align 8
  %1520 = add i64 %1513, 15
  store i64 %1520, i64* %3, align 8
  %1521 = load i32, i32* %1517, align 4
  %1522 = zext i32 %1521 to i64
  store i64 %1522, i64* %RDX.i2039, align 8
  %1523 = add i64 %1513, 21
  store i64 %1523, i64* %3, align 8
  %1524 = load i32, i32* %1517, align 4
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RCX.i2073, align 8
  %R8D.i1604 = bitcast %union.anon* %104 to i32*
  %1526 = add i64 %1513, 28
  store i64 %1526, i64* %3, align 8
  %1527 = load i32, i32* %1517, align 4
  %1528 = zext i32 %1527 to i64
  store i64 %1528, i64* %R8.i2087, align 8
  %1529 = add i64 %1513, -36816
  %1530 = add i64 %1513, 33
  %1531 = load i64, i64* %6, align 8
  %1532 = add i64 %1531, -8
  %1533 = inttoptr i64 %1532 to i64*
  store i64 %1530, i64* %1533, align 8
  store i64 %1532, i64* %6, align 8
  store i64 %1529, i64* %3, align 8
  %call2_44238c = tail call %struct.Memory* @sub_4393a0.set_eyevalue(%struct.State* nonnull %0, i64 %1529, %struct.Memory* %call2_44235f)
  %1534 = load i64, i64* %RBP.i, align 8
  %1535 = add i64 %1534, -4144
  %1536 = load i64, i64* %3, align 8
  %1537 = add i64 %1536, 10
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1535 to i32*
  store i32 0, i32* %1538, align 4
  %1539 = bitcast i64* %6 to i64**
  %1540 = bitcast i64* %6 to i32**
  %AL.i795 = bitcast %union.anon* %65 to i8*
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_44239b

block_.L_44239b:                                  ; preds = %block_.L_442c4c, %block_.L_442344
  %1541 = phi i64 [ %.pre143, %block_.L_442344 ], [ %4360, %block_.L_442c4c ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_44238c, %block_.L_442344 ], [ %MEMORY.14, %block_.L_442c4c ]
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -4144
  %1544 = add i64 %1541, 6
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RAX.i2122, align 8
  %1548 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1549 = sub i32 %1546, %1548
  %1550 = icmp ult i32 %1546, %1548
  %1551 = zext i1 %1550 to i8
  store i8 %1551, i8* %39, align 1
  %1552 = and i32 %1549, 255
  %1553 = tail call i32 @llvm.ctpop.i32(i32 %1552)
  %1554 = trunc i32 %1553 to i8
  %1555 = and i8 %1554, 1
  %1556 = xor i8 %1555, 1
  store i8 %1556, i8* %46, align 1
  %1557 = xor i32 %1548, %1546
  %1558 = xor i32 %1557, %1549
  %1559 = lshr i32 %1558, 4
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  store i8 %1561, i8* %52, align 1
  %1562 = icmp eq i32 %1549, 0
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %55, align 1
  %1564 = lshr i32 %1549, 31
  %1565 = trunc i32 %1564 to i8
  store i8 %1565, i8* %58, align 1
  %1566 = lshr i32 %1546, 31
  %1567 = lshr i32 %1548, 31
  %1568 = xor i32 %1567, %1566
  %1569 = xor i32 %1564, %1566
  %1570 = add nuw nsw i32 %1569, %1568
  %1571 = icmp eq i32 %1570, 2
  %1572 = zext i1 %1571 to i8
  store i8 %1572, i8* %64, align 1
  %1573 = icmp ne i8 %1565, 0
  %1574 = xor i1 %1573, %1571
  %.v203 = select i1 %1574, i64 19, i64 2250
  %1575 = add i64 %1541, %.v203
  store i64 %1575, i64* %3, align 8
  br i1 %1574, label %block_4423ae, label %block_.L_442c65

block_4423ae:                                     ; preds = %block_.L_44239b
  %1576 = add i64 %1542, -4148
  %1577 = add i64 %1575, 10
  store i64 %1577, i64* %3, align 8
  %1578 = inttoptr i64 %1576 to i32*
  store i32 0, i32* %1578, align 4
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_4423b8

block_.L_4423b8:                                  ; preds = %block_.L_442c33, %block_4423ae
  %1579 = phi i64 [ %.pre158, %block_4423ae ], [ %4331, %block_.L_442c33 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.13, %block_4423ae ], [ %MEMORY.43, %block_.L_442c33 ]
  %1580 = load i64, i64* %RBP.i, align 8
  %1581 = add i64 %1580, -4148
  %1582 = add i64 %1579, 6
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1581 to i32*
  %1584 = load i32, i32* %1583, align 4
  %1585 = zext i32 %1584 to i64
  store i64 %1585, i64* %RAX.i2122, align 8
  %1586 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1587 = sub i32 %1584, %1586
  %1588 = icmp ult i32 %1584, %1586
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %39, align 1
  %1590 = and i32 %1587, 255
  %1591 = tail call i32 @llvm.ctpop.i32(i32 %1590)
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  %1594 = xor i8 %1593, 1
  store i8 %1594, i8* %46, align 1
  %1595 = xor i32 %1586, %1584
  %1596 = xor i32 %1595, %1587
  %1597 = lshr i32 %1596, 4
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  store i8 %1599, i8* %52, align 1
  %1600 = icmp eq i32 %1587, 0
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %55, align 1
  %1602 = lshr i32 %1587, 31
  %1603 = trunc i32 %1602 to i8
  store i8 %1603, i8* %58, align 1
  %1604 = lshr i32 %1584, 31
  %1605 = lshr i32 %1586, 31
  %1606 = xor i32 %1605, %1604
  %1607 = xor i32 %1602, %1604
  %1608 = add nuw nsw i32 %1607, %1606
  %1609 = icmp eq i32 %1608, 2
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %64, align 1
  %1611 = icmp ne i8 %1603, 0
  %1612 = xor i1 %1611, %1609
  %.v186 = select i1 %1612, i64 19, i64 2196
  %1613 = add i64 %1579, %.v186
  store i64 %1613, i64* %3, align 8
  %1614 = add i64 %1580, -4144
  br i1 %1612, label %block_4423cb, label %block_.L_442c4c

block_4423cb:                                     ; preds = %block_.L_4423b8
  %1615 = add i64 %1613, 7
  store i64 %1615, i64* %3, align 8
  %1616 = inttoptr i64 %1614 to i32*
  %1617 = load i32, i32* %1616, align 4
  %1618 = mul i32 %1617, 20
  %1619 = add i32 %1618, 21
  %1620 = zext i32 %1619 to i64
  store i64 %1620, i64* %RAX.i2122, align 8
  %1621 = icmp ugt i32 %1618, -22
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %39, align 1
  %1623 = and i32 %1619, 253
  %1624 = tail call i32 @llvm.ctpop.i32(i32 %1623)
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = xor i8 %1626, 1
  store i8 %1627, i8* %46, align 1
  %1628 = xor i32 %1618, 16
  %1629 = xor i32 %1628, %1619
  %1630 = lshr i32 %1629, 4
  %1631 = trunc i32 %1630 to i8
  %1632 = and i8 %1631, 1
  store i8 %1632, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %1633 = lshr i32 %1619, 31
  %1634 = trunc i32 %1633 to i8
  store i8 %1634, i8* %58, align 1
  %1635 = lshr i32 %1618, 31
  %1636 = xor i32 %1633, %1635
  %1637 = add nuw nsw i32 %1636, %1633
  %1638 = icmp eq i32 %1637, 2
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %64, align 1
  %1640 = add i64 %1613, 16
  store i64 %1640, i64* %3, align 8
  %1641 = load i32, i32* %1583, align 4
  %1642 = add i32 %1641, %1619
  %1643 = zext i32 %1642 to i64
  store i64 %1643, i64* %RAX.i2122, align 8
  %1644 = icmp ult i32 %1642, %1619
  %1645 = icmp ult i32 %1642, %1641
  %1646 = or i1 %1644, %1645
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %39, align 1
  %1648 = and i32 %1642, 255
  %1649 = tail call i32 @llvm.ctpop.i32(i32 %1648)
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = xor i8 %1651, 1
  store i8 %1652, i8* %46, align 1
  %1653 = xor i32 %1641, %1619
  %1654 = xor i32 %1653, %1642
  %1655 = lshr i32 %1654, 4
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  store i8 %1657, i8* %52, align 1
  %1658 = icmp eq i32 %1642, 0
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %55, align 1
  %1660 = lshr i32 %1642, 31
  %1661 = trunc i32 %1660 to i8
  store i8 %1661, i8* %58, align 1
  %1662 = lshr i32 %1641, 31
  %1663 = xor i32 %1660, %1633
  %1664 = xor i32 %1660, %1662
  %1665 = add nuw nsw i32 %1663, %1664
  %1666 = icmp eq i32 %1665, 2
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %64, align 1
  %1668 = add i64 %1580, -4184
  %1669 = add i64 %1613, 22
  store i64 %1669, i64* %3, align 8
  %1670 = inttoptr i64 %1668 to i32*
  store i32 %1642, i32* %1670, align 4
  %1671 = load i64, i64* %RBP.i, align 8
  %1672 = add i64 %1671, -4184
  %1673 = load i64, i64* %3, align 8
  %1674 = add i64 %1673, 7
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1672 to i32*
  %1676 = load i32, i32* %1675, align 4
  %1677 = sext i32 %1676 to i64
  store i64 %1677, i64* %RCX.i2073, align 8
  %1678 = add nsw i64 %1677, -512
  %1679 = add i64 %1678, %1671
  %1680 = add i64 %1673, 15
  store i64 %1680, i64* %3, align 8
  %1681 = inttoptr i64 %1679 to i8*
  %1682 = load i8, i8* %1681, align 1
  %1683 = sext i8 %1682 to i64
  %1684 = and i64 %1683, 4294967295
  store i64 %1684, i64* %RAX.i2122, align 8
  %1685 = sext i8 %1682 to i32
  %1686 = add nsw i32 %1685, -1
  %1687 = icmp eq i8 %1682, 0
  %1688 = zext i1 %1687 to i8
  store i8 %1688, i8* %39, align 1
  %1689 = and i32 %1686, 255
  %1690 = tail call i32 @llvm.ctpop.i32(i32 %1689)
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = xor i8 %1692, 1
  store i8 %1693, i8* %46, align 1
  %1694 = xor i32 %1686, %1685
  %1695 = lshr i32 %1694, 4
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  store i8 %1697, i8* %52, align 1
  %1698 = icmp eq i32 %1686, 0
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %55, align 1
  %1700 = lshr i32 %1686, 31
  %1701 = trunc i32 %1700 to i8
  store i8 %1701, i8* %58, align 1
  %1702 = lshr i32 %1685, 31
  %1703 = xor i32 %1700, %1702
  %1704 = add nuw nsw i32 %1703, %1702
  %1705 = icmp eq i32 %1704, 2
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %64, align 1
  %1707 = icmp ne i8 %1701, 0
  %1708 = xor i1 %1707, %1705
  %1709 = or i1 %1698, %1708
  %.v223 = select i1 %1709, i64 2130, i64 24
  %1710 = add i64 %1673, %.v223
  store i64 %1710, i64* %3, align 8
  br i1 %1709, label %block_.L_442c33, label %block_4423f9

block_4423f9:                                     ; preds = %block_4423cb
  %1711 = add i64 %1671, -112
  %1712 = add i64 %1710, 4
  store i64 %1712, i64* %3, align 8
  %1713 = inttoptr i64 %1711 to i64*
  %1714 = load i64, i64* %1713, align 8
  store i64 %1714, i64* %RAX.i2122, align 8
  %1715 = add i64 %1710, 11
  store i64 %1715, i64* %3, align 8
  %1716 = load i32, i32* %1675, align 4
  %1717 = sext i32 %1716 to i64
  %1718 = mul nsw i64 %1717, 36
  store i64 %1718, i64* %RCX.i2073, align 8
  %1719 = lshr i64 %1718, 63
  %1720 = add i64 %1718, %1714
  store i64 %1720, i64* %RAX.i2122, align 8
  %1721 = icmp ult i64 %1720, %1714
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
  %1731 = xor i64 %1718, %1714
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
  %1740 = lshr i64 %1714, 63
  %1741 = xor i64 %1738, %1740
  %1742 = xor i64 %1738, %1719
  %1743 = add nuw nsw i64 %1741, %1742
  %1744 = icmp eq i64 %1743, 2
  %1745 = zext i1 %1744 to i8
  store i8 %1745, i8* %64, align 1
  %1746 = add i64 %1720, 12
  %1747 = add i64 %1710, 21
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1746 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = zext i32 %1749 to i64
  store i64 %1750, i64* %RDX.i2039, align 8
  %1751 = add i64 %1710, 27
  store i64 %1751, i64* %3, align 8
  %1752 = load i32, i32* %1675, align 4
  %1753 = sub i32 %1749, %1752
  %1754 = icmp ult i32 %1749, %1752
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %39, align 1
  %1756 = and i32 %1753, 255
  %1757 = tail call i32 @llvm.ctpop.i32(i32 %1756)
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  store i8 %1760, i8* %46, align 1
  %1761 = xor i32 %1752, %1749
  %1762 = xor i32 %1761, %1753
  %1763 = lshr i32 %1762, 4
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  store i8 %1765, i8* %52, align 1
  %1766 = icmp eq i32 %1753, 0
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %55, align 1
  %1768 = lshr i32 %1753, 31
  %1769 = trunc i32 %1768 to i8
  store i8 %1769, i8* %58, align 1
  %1770 = lshr i32 %1749, 31
  %1771 = lshr i32 %1752, 31
  %1772 = xor i32 %1771, %1770
  %1773 = xor i32 %1768, %1770
  %1774 = add nuw nsw i32 %1773, %1772
  %1775 = icmp eq i32 %1774, 2
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %64, align 1
  %.v224 = select i1 %1766, i64 33, i64 2106
  %1777 = add i64 %1710, %.v224
  store i64 %1777, i64* %3, align 8
  br i1 %1766, label %block_44241a, label %block_.L_442c33

block_44241a:                                     ; preds = %block_4423f9
  %1778 = load i64, i64* %RBP.i, align 8
  %1779 = add i64 %1778, -2528
  store i64 %1779, i64* %RSI.i2095, align 8
  %1780 = add i64 %1778, -4132
  store i64 %1780, i64* %RDX.i2039, align 8
  %1781 = add i64 %1778, -4136
  store i64 %1781, i64* %RCX.i2073, align 8
  %1782 = add i64 %1778, -4140
  store i64 %1782, i64* %R8.i2087, align 8
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RAX.i2122, align 8
  %1783 = add i64 %1778, -4188
  %1784 = add i64 %1777, 48
  store i64 %1784, i64* %3, align 8
  %1785 = inttoptr i64 %1783 to i32*
  store i32 0, i32* %1785, align 4
  %1786 = load i64, i64* %RBP.i, align 8
  %1787 = add i64 %1786, -4200
  %1788 = load i64, i64* %RAX.i2122, align 8
  %1789 = load i64, i64* %3, align 8
  %1790 = add i64 %1789, 7
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1787 to i64*
  store i64 %1788, i64* %1791, align 8
  %1792 = load i64, i64* %RBP.i, align 8
  %1793 = add i64 %1792, -4184
  %1794 = load i64, i64* %3, align 8
  %1795 = add i64 %1794, 6
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1793 to i32*
  %1797 = load i32, i32* %1796, align 4
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RDI.i2098, align 8
  %1799 = add i64 %1792, -112
  %1800 = add i64 %1794, 10
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i64*
  %1802 = load i64, i64* %1801, align 8
  store i64 %1802, i64* %R9.i2084, align 8
  %1803 = add i64 %1792, -48
  %1804 = add i64 %1794, 14
  store i64 %1804, i64* %3, align 8
  %1805 = inttoptr i64 %1803 to i64*
  %1806 = load i64, i64* %1805, align 8
  %1807 = add i64 %1806, 15604
  store i64 %1807, i64* %RAX.i2122, align 8
  %1808 = icmp ugt i64 %1806, -15605
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %39, align 1
  %1810 = trunc i64 %1807 to i32
  %1811 = and i32 %1810, 255
  %1812 = tail call i32 @llvm.ctpop.i32(i32 %1811)
  %1813 = trunc i32 %1812 to i8
  %1814 = and i8 %1813, 1
  %1815 = xor i8 %1814, 1
  store i8 %1815, i8* %46, align 1
  %1816 = xor i64 %1806, 16
  %1817 = xor i64 %1816, %1807
  %1818 = lshr i64 %1817, 4
  %1819 = trunc i64 %1818 to i8
  %1820 = and i8 %1819, 1
  store i8 %1820, i8* %52, align 1
  %1821 = icmp eq i64 %1807, 0
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %55, align 1
  %1823 = lshr i64 %1807, 63
  %1824 = trunc i64 %1823 to i8
  store i8 %1824, i8* %58, align 1
  %1825 = lshr i64 %1806, 63
  %1826 = xor i64 %1823, %1825
  %1827 = add nuw nsw i64 %1826, %1823
  %1828 = icmp eq i64 %1827, 2
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %64, align 1
  %1830 = load i64*, i64** %1539, align 8
  %1831 = add i64 %1794, 24
  store i64 %1831, i64* %3, align 8
  store i64 %1807, i64* %1830, align 8
  %1832 = load i64, i64* %3, align 8
  %1833 = add i64 %1832, -29113
  %1834 = add i64 %1832, 5
  %1835 = load i64, i64* %6, align 8
  %1836 = add i64 %1835, -8
  %1837 = inttoptr i64 %1836 to i64*
  store i64 %1834, i64* %1837, align 8
  store i64 %1836, i64* %6, align 8
  store i64 %1833, i64* %3, align 8
  %call2_442469 = tail call %struct.Memory* @sub_43b2b0.compute_eyes_pessimistic(%struct.State* nonnull %0, i64 %1833, %struct.Memory* %MEMORY.14)
  %1838 = load i64, i64* %RBP.i, align 8
  %1839 = add i64 %1838, -4204
  %1840 = load i64, i64* %3, align 8
  %1841 = add i64 %1840, 10
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1839 to i32*
  store i32 0, i32* %1842, align 4
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_442478

block_.L_442478:                                  ; preds = %block_.L_442544, %block_44241a
  %1843 = phi i64 [ %2250, %block_.L_442544 ], [ %.pre159, %block_44241a ]
  %1844 = load i64, i64* %RBP.i, align 8
  %1845 = add i64 %1844, -4204
  %1846 = add i64 %1843, 6
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to i32*
  %1848 = load i32, i32* %1847, align 4
  %1849 = zext i32 %1848 to i64
  store i64 %1849, i64* %RAX.i2122, align 8
  %1850 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1851 = sub i32 %1848, %1850
  %1852 = icmp ult i32 %1848, %1850
  %1853 = zext i1 %1852 to i8
  store i8 %1853, i8* %39, align 1
  %1854 = and i32 %1851, 255
  %1855 = tail call i32 @llvm.ctpop.i32(i32 %1854)
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  %1858 = xor i8 %1857, 1
  store i8 %1858, i8* %46, align 1
  %1859 = xor i32 %1850, %1848
  %1860 = xor i32 %1859, %1851
  %1861 = lshr i32 %1860, 4
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  store i8 %1863, i8* %52, align 1
  %1864 = icmp eq i32 %1851, 0
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %55, align 1
  %1866 = lshr i32 %1851, 31
  %1867 = trunc i32 %1866 to i8
  store i8 %1867, i8* %58, align 1
  %1868 = lshr i32 %1848, 31
  %1869 = lshr i32 %1850, 31
  %1870 = xor i32 %1869, %1868
  %1871 = xor i32 %1866, %1868
  %1872 = add nuw nsw i32 %1871, %1870
  %1873 = icmp eq i32 %1872, 2
  %1874 = zext i1 %1873 to i8
  store i8 %1874, i8* %64, align 1
  %1875 = icmp ne i8 %1867, 0
  %1876 = xor i1 %1875, %1873
  %.v225 = select i1 %1876, i64 19, i64 229
  %1877 = add i64 %1843, %.v225
  store i64 %1877, i64* %3, align 8
  br i1 %1876, label %block_44248b, label %block_.L_44255d

block_44248b:                                     ; preds = %block_.L_442478
  %1878 = add i64 %1844, -4208
  %1879 = add i64 %1877, 10
  store i64 %1879, i64* %3, align 8
  %1880 = inttoptr i64 %1878 to i32*
  store i32 0, i32* %1880, align 4
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_442495

block_.L_442495:                                  ; preds = %block_.L_44252b, %block_44248b
  %1881 = phi i64 [ %2221, %block_.L_44252b ], [ %.pre175, %block_44248b ]
  %1882 = load i64, i64* %RBP.i, align 8
  %1883 = add i64 %1882, -4208
  %1884 = add i64 %1881, 6
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1883 to i32*
  %1886 = load i32, i32* %1885, align 4
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RAX.i2122, align 8
  %1888 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1889 = sub i32 %1886, %1888
  %1890 = icmp ult i32 %1886, %1888
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %39, align 1
  %1892 = and i32 %1889, 255
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %46, align 1
  %1897 = xor i32 %1888, %1886
  %1898 = xor i32 %1897, %1889
  %1899 = lshr i32 %1898, 4
  %1900 = trunc i32 %1899 to i8
  %1901 = and i8 %1900, 1
  store i8 %1901, i8* %52, align 1
  %1902 = icmp eq i32 %1889, 0
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %55, align 1
  %1904 = lshr i32 %1889, 31
  %1905 = trunc i32 %1904 to i8
  store i8 %1905, i8* %58, align 1
  %1906 = lshr i32 %1886, 31
  %1907 = lshr i32 %1888, 31
  %1908 = xor i32 %1907, %1906
  %1909 = xor i32 %1904, %1906
  %1910 = add nuw nsw i32 %1909, %1908
  %1911 = icmp eq i32 %1910, 2
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %64, align 1
  %1913 = icmp ne i8 %1905, 0
  %1914 = xor i1 %1913, %1911
  %.v189 = select i1 %1914, i64 19, i64 175
  %1915 = add i64 %1881, %.v189
  store i64 %1915, i64* %3, align 8
  %1916 = add i64 %1882, -4204
  br i1 %1914, label %block_4424a8, label %block_.L_442544

block_4424a8:                                     ; preds = %block_.L_442495
  %1917 = add i64 %1915, 7
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i32*
  %1919 = load i32, i32* %1918, align 4
  %1920 = mul i32 %1919, 20
  %1921 = add i32 %1920, 21
  %1922 = zext i32 %1921 to i64
  store i64 %1922, i64* %RAX.i2122, align 8
  %1923 = icmp ugt i32 %1920, -22
  %1924 = zext i1 %1923 to i8
  store i8 %1924, i8* %39, align 1
  %1925 = and i32 %1921, 253
  %1926 = tail call i32 @llvm.ctpop.i32(i32 %1925)
  %1927 = trunc i32 %1926 to i8
  %1928 = and i8 %1927, 1
  %1929 = xor i8 %1928, 1
  store i8 %1929, i8* %46, align 1
  %1930 = xor i32 %1920, 16
  %1931 = xor i32 %1930, %1921
  %1932 = lshr i32 %1931, 4
  %1933 = trunc i32 %1932 to i8
  %1934 = and i8 %1933, 1
  store i8 %1934, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %1935 = lshr i32 %1921, 31
  %1936 = trunc i32 %1935 to i8
  store i8 %1936, i8* %58, align 1
  %1937 = lshr i32 %1920, 31
  %1938 = xor i32 %1935, %1937
  %1939 = add nuw nsw i32 %1938, %1935
  %1940 = icmp eq i32 %1939, 2
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %64, align 1
  %1942 = add i64 %1915, 16
  store i64 %1942, i64* %3, align 8
  %1943 = load i32, i32* %1885, align 4
  %1944 = add i32 %1943, %1921
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RAX.i2122, align 8
  %1946 = icmp ult i32 %1944, %1921
  %1947 = icmp ult i32 %1944, %1943
  %1948 = or i1 %1946, %1947
  %1949 = zext i1 %1948 to i8
  store i8 %1949, i8* %39, align 1
  %1950 = and i32 %1944, 255
  %1951 = tail call i32 @llvm.ctpop.i32(i32 %1950)
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  %1954 = xor i8 %1953, 1
  store i8 %1954, i8* %46, align 1
  %1955 = xor i32 %1943, %1921
  %1956 = xor i32 %1955, %1944
  %1957 = lshr i32 %1956, 4
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  store i8 %1959, i8* %52, align 1
  %1960 = icmp eq i32 %1944, 0
  %1961 = zext i1 %1960 to i8
  store i8 %1961, i8* %55, align 1
  %1962 = lshr i32 %1944, 31
  %1963 = trunc i32 %1962 to i8
  store i8 %1963, i8* %58, align 1
  %1964 = lshr i32 %1943, 31
  %1965 = xor i32 %1962, %1935
  %1966 = xor i32 %1962, %1964
  %1967 = add nuw nsw i32 %1965, %1966
  %1968 = icmp eq i32 %1967, 2
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %64, align 1
  %1970 = sext i32 %1944 to i64
  store i64 %1970, i64* %RCX.i2073, align 8
  %1971 = add nsw i64 %1970, -512
  %1972 = add i64 %1971, %1882
  %1973 = add i64 %1915, 27
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i8*
  %1975 = load i8, i8* %1974, align 1
  %1976 = sext i8 %1975 to i64
  %1977 = and i64 %1976, 4294967295
  store i64 %1977, i64* %RAX.i2122, align 8
  %1978 = sext i8 %1975 to i32
  %1979 = add nsw i32 %1978, -1
  %1980 = icmp eq i8 %1975, 0
  %1981 = zext i1 %1980 to i8
  store i8 %1981, i8* %39, align 1
  %1982 = and i32 %1979, 255
  %1983 = tail call i32 @llvm.ctpop.i32(i32 %1982)
  %1984 = trunc i32 %1983 to i8
  %1985 = and i8 %1984, 1
  %1986 = xor i8 %1985, 1
  store i8 %1986, i8* %46, align 1
  %1987 = xor i32 %1979, %1978
  %1988 = lshr i32 %1987, 4
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  store i8 %1990, i8* %52, align 1
  %1991 = icmp eq i32 %1979, 0
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %55, align 1
  %1993 = lshr i32 %1979, 31
  %1994 = trunc i32 %1993 to i8
  store i8 %1994, i8* %58, align 1
  %1995 = lshr i32 %1978, 31
  %1996 = xor i32 %1993, %1995
  %1997 = add nuw nsw i32 %1996, %1995
  %1998 = icmp eq i32 %1997, 2
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %64, align 1
  %2000 = icmp ne i8 %1994, 0
  %2001 = xor i1 %2000, %1998
  %2002 = or i1 %1991, %2001
  %.v258 = select i1 %2002, i64 131, i64 36
  %2003 = add i64 %1915, %.v258
  store i64 %2003, i64* %3, align 8
  br i1 %2002, label %block_.L_44252b, label %block_4424cc

block_4424cc:                                     ; preds = %block_4424a8
  %2004 = load i64, i64* %RBP.i, align 8
  %2005 = add i64 %2004, -112
  %2006 = add i64 %2003, 4
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i64*
  %2008 = load i64, i64* %2007, align 8
  store i64 %2008, i64* %RAX.i2122, align 8
  %2009 = add i64 %2004, -4204
  %2010 = add i64 %2003, 11
  store i64 %2010, i64* %3, align 8
  %2011 = inttoptr i64 %2009 to i32*
  %2012 = load i32, i32* %2011, align 4
  %2013 = mul i32 %2012, 20
  %2014 = add i32 %2013, 21
  %2015 = zext i32 %2014 to i64
  store i64 %2015, i64* %RCX.i2073, align 8
  %2016 = icmp ugt i32 %2013, -22
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %39, align 1
  %2018 = and i32 %2014, 253
  %2019 = tail call i32 @llvm.ctpop.i32(i32 %2018)
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  %2022 = xor i8 %2021, 1
  store i8 %2022, i8* %46, align 1
  %2023 = xor i32 %2013, 16
  %2024 = xor i32 %2023, %2014
  %2025 = lshr i32 %2024, 4
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  store i8 %2027, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %2028 = lshr i32 %2014, 31
  %2029 = trunc i32 %2028 to i8
  store i8 %2029, i8* %58, align 1
  %2030 = lshr i32 %2013, 31
  %2031 = xor i32 %2028, %2030
  %2032 = add nuw nsw i32 %2031, %2028
  %2033 = icmp eq i32 %2032, 2
  %2034 = zext i1 %2033 to i8
  store i8 %2034, i8* %64, align 1
  %2035 = add i64 %2004, -4208
  %2036 = add i64 %2003, 20
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2035 to i32*
  %2038 = load i32, i32* %2037, align 4
  %2039 = add i32 %2038, %2014
  %2040 = zext i32 %2039 to i64
  store i64 %2040, i64* %RCX.i2073, align 8
  %2041 = sext i32 %2039 to i64
  %2042 = mul nsw i64 %2041, 36
  store i64 %2042, i64* %RDX.i2039, align 8
  %2043 = lshr i64 %2042, 63
  %2044 = load i64, i64* %RAX.i2122, align 8
  %2045 = add i64 %2042, %2044
  store i64 %2045, i64* %RAX.i2122, align 8
  %2046 = icmp ult i64 %2045, %2044
  %2047 = icmp ult i64 %2045, %2042
  %2048 = or i1 %2046, %2047
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %39, align 1
  %2050 = trunc i64 %2045 to i32
  %2051 = and i32 %2050, 255
  %2052 = tail call i32 @llvm.ctpop.i32(i32 %2051)
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  %2055 = xor i8 %2054, 1
  store i8 %2055, i8* %46, align 1
  %2056 = xor i64 %2042, %2044
  %2057 = xor i64 %2056, %2045
  %2058 = lshr i64 %2057, 4
  %2059 = trunc i64 %2058 to i8
  %2060 = and i8 %2059, 1
  store i8 %2060, i8* %52, align 1
  %2061 = icmp eq i64 %2045, 0
  %2062 = zext i1 %2061 to i8
  store i8 %2062, i8* %55, align 1
  %2063 = lshr i64 %2045, 63
  %2064 = trunc i64 %2063 to i8
  store i8 %2064, i8* %58, align 1
  %2065 = lshr i64 %2044, 63
  %2066 = xor i64 %2063, %2065
  %2067 = xor i64 %2063, %2043
  %2068 = add nuw nsw i64 %2066, %2067
  %2069 = icmp eq i64 %2068, 2
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %64, align 1
  %2071 = add i64 %2045, 12
  %2072 = add i64 %2003, 33
  store i64 %2072, i64* %3, align 8
  %2073 = inttoptr i64 %2071 to i32*
  %2074 = load i32, i32* %2073, align 4
  %2075 = zext i32 %2074 to i64
  store i64 %2075, i64* %RCX.i2073, align 8
  %2076 = load i64, i64* %RBP.i, align 8
  %2077 = add i64 %2076, -4184
  %2078 = add i64 %2003, 39
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i32*
  %2080 = load i32, i32* %2079, align 4
  %2081 = sub i32 %2074, %2080
  %2082 = icmp ult i32 %2074, %2080
  %2083 = zext i1 %2082 to i8
  store i8 %2083, i8* %39, align 1
  %2084 = and i32 %2081, 255
  %2085 = tail call i32 @llvm.ctpop.i32(i32 %2084)
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  %2088 = xor i8 %2087, 1
  store i8 %2088, i8* %46, align 1
  %2089 = xor i32 %2080, %2074
  %2090 = xor i32 %2089, %2081
  %2091 = lshr i32 %2090, 4
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  store i8 %2093, i8* %52, align 1
  %2094 = icmp eq i32 %2081, 0
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %55, align 1
  %2096 = lshr i32 %2081, 31
  %2097 = trunc i32 %2096 to i8
  store i8 %2097, i8* %58, align 1
  %2098 = lshr i32 %2074, 31
  %2099 = lshr i32 %2080, 31
  %2100 = xor i32 %2099, %2098
  %2101 = xor i32 %2096, %2098
  %2102 = add nuw nsw i32 %2101, %2100
  %2103 = icmp eq i32 %2102, 2
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %64, align 1
  %.v259 = select i1 %2094, i64 45, i64 95
  %2105 = add i64 %2003, %.v259
  store i64 %2105, i64* %3, align 8
  br i1 %2094, label %block_4424f9, label %block_.L_44252b

block_4424f9:                                     ; preds = %block_4424cc
  %2106 = add i64 %2076, -48
  %2107 = add i64 %2105, 4
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2106 to i64*
  %2109 = load i64, i64* %2108, align 8
  store i64 %2109, i64* %RAX.i2122, align 8
  %2110 = add i64 %2076, -4204
  %2111 = add i64 %2105, 11
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2110 to i32*
  %2113 = load i32, i32* %2112, align 4
  %2114 = mul i32 %2113, 20
  %2115 = add i32 %2114, 21
  %2116 = zext i32 %2115 to i64
  store i64 %2116, i64* %RCX.i2073, align 8
  %2117 = icmp ugt i32 %2114, -22
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %39, align 1
  %2119 = and i32 %2115, 253
  %2120 = tail call i32 @llvm.ctpop.i32(i32 %2119)
  %2121 = trunc i32 %2120 to i8
  %2122 = and i8 %2121, 1
  %2123 = xor i8 %2122, 1
  store i8 %2123, i8* %46, align 1
  %2124 = xor i32 %2114, 16
  %2125 = xor i32 %2124, %2115
  %2126 = lshr i32 %2125, 4
  %2127 = trunc i32 %2126 to i8
  %2128 = and i8 %2127, 1
  store i8 %2128, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %2129 = lshr i32 %2115, 31
  %2130 = trunc i32 %2129 to i8
  store i8 %2130, i8* %58, align 1
  %2131 = lshr i32 %2114, 31
  %2132 = xor i32 %2129, %2131
  %2133 = add nuw nsw i32 %2132, %2129
  %2134 = icmp eq i32 %2133, 2
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %64, align 1
  %2136 = add i64 %2076, -4208
  %2137 = add i64 %2105, 20
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  %2139 = load i32, i32* %2138, align 4
  %2140 = add i32 %2139, %2115
  %2141 = zext i32 %2140 to i64
  store i64 %2141, i64* %RCX.i2073, align 8
  %2142 = icmp ult i32 %2140, %2115
  %2143 = icmp ult i32 %2140, %2139
  %2144 = or i1 %2142, %2143
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %39, align 1
  %2146 = and i32 %2140, 255
  %2147 = tail call i32 @llvm.ctpop.i32(i32 %2146)
  %2148 = trunc i32 %2147 to i8
  %2149 = and i8 %2148, 1
  %2150 = xor i8 %2149, 1
  store i8 %2150, i8* %46, align 1
  %2151 = xor i32 %2139, %2115
  %2152 = xor i32 %2151, %2140
  %2153 = lshr i32 %2152, 4
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  store i8 %2155, i8* %52, align 1
  %2156 = icmp eq i32 %2140, 0
  %2157 = zext i1 %2156 to i8
  store i8 %2157, i8* %55, align 1
  %2158 = lshr i32 %2140, 31
  %2159 = trunc i32 %2158 to i8
  store i8 %2159, i8* %58, align 1
  %2160 = lshr i32 %2139, 31
  %2161 = xor i32 %2158, %2129
  %2162 = xor i32 %2158, %2160
  %2163 = add nuw nsw i32 %2161, %2162
  %2164 = icmp eq i32 %2163, 2
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %64, align 1
  %2166 = sext i32 %2140 to i64
  store i64 %2166, i64* %RDX.i2039, align 8
  %2167 = load i64, i64* %RAX.i2122, align 8
  %2168 = add nsw i64 %2166, 35004
  %2169 = add i64 %2168, %2167
  %2170 = add i64 %2105, 31
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i8*
  %2172 = load i8, i8* %2171, align 1
  %2173 = sext i8 %2172 to i64
  %2174 = and i64 %2173, 4294967295
  store i64 %2174, i64* %RCX.i2073, align 8
  %2175 = sext i8 %2172 to i32
  store i8 0, i8* %39, align 1
  %2176 = and i32 %2175, 255
  %2177 = tail call i32 @llvm.ctpop.i32(i32 %2176)
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = xor i8 %2179, 1
  store i8 %2180, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %2181 = icmp eq i8 %2172, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %55, align 1
  %2183 = lshr i32 %2175, 31
  %2184 = trunc i32 %2183 to i8
  store i8 %2184, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v260 = select i1 %2181, i64 50, i64 40
  %2185 = add i64 %2105, %.v260
  store i64 %2185, i64* %3, align 8
  br i1 %2181, label %block_.L_44252b, label %block_442521

block_442521:                                     ; preds = %block_4424f9
  %2186 = load i64, i64* %RBP.i, align 8
  %2187 = add i64 %2186, -4132
  %2188 = add i64 %2185, 10
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2187 to i32*
  store i32 0, i32* %2189, align 4
  %.pre176 = load i64, i64* %3, align 8
  br label %block_.L_44252b

block_.L_44252b:                                  ; preds = %block_4424cc, %block_442521, %block_4424f9, %block_4424a8
  %2190 = phi i64 [ %.pre176, %block_442521 ], [ %2185, %block_4424f9 ], [ %2105, %block_4424cc ], [ %2003, %block_4424a8 ]
  %2191 = load i64, i64* %RBP.i, align 8
  %2192 = add i64 %2191, -4208
  %2193 = add i64 %2190, 11
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i32*
  %2195 = load i32, i32* %2194, align 4
  %2196 = add i32 %2195, 1
  %2197 = zext i32 %2196 to i64
  store i64 %2197, i64* %RAX.i2122, align 8
  %2198 = icmp eq i32 %2195, -1
  %2199 = icmp eq i32 %2196, 0
  %2200 = or i1 %2198, %2199
  %2201 = zext i1 %2200 to i8
  store i8 %2201, i8* %39, align 1
  %2202 = and i32 %2196, 255
  %2203 = tail call i32 @llvm.ctpop.i32(i32 %2202)
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  %2206 = xor i8 %2205, 1
  store i8 %2206, i8* %46, align 1
  %2207 = xor i32 %2196, %2195
  %2208 = lshr i32 %2207, 4
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  store i8 %2210, i8* %52, align 1
  %2211 = zext i1 %2199 to i8
  store i8 %2211, i8* %55, align 1
  %2212 = lshr i32 %2196, 31
  %2213 = trunc i32 %2212 to i8
  store i8 %2213, i8* %58, align 1
  %2214 = lshr i32 %2195, 31
  %2215 = xor i32 %2212, %2214
  %2216 = add nuw nsw i32 %2215, %2212
  %2217 = icmp eq i32 %2216, 2
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %64, align 1
  %2219 = add i64 %2190, 20
  store i64 %2219, i64* %3, align 8
  store i32 %2196, i32* %2194, align 4
  %2220 = load i64, i64* %3, align 8
  %2221 = add i64 %2220, -170
  store i64 %2221, i64* %3, align 8
  br label %block_.L_442495

block_.L_442544:                                  ; preds = %block_.L_442495
  %2222 = add i64 %1915, 11
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %1916 to i32*
  %2224 = load i32, i32* %2223, align 4
  %2225 = add i32 %2224, 1
  %2226 = zext i32 %2225 to i64
  store i64 %2226, i64* %RAX.i2122, align 8
  %2227 = icmp eq i32 %2224, -1
  %2228 = icmp eq i32 %2225, 0
  %2229 = or i1 %2227, %2228
  %2230 = zext i1 %2229 to i8
  store i8 %2230, i8* %39, align 1
  %2231 = and i32 %2225, 255
  %2232 = tail call i32 @llvm.ctpop.i32(i32 %2231)
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  %2235 = xor i8 %2234, 1
  store i8 %2235, i8* %46, align 1
  %2236 = xor i32 %2225, %2224
  %2237 = lshr i32 %2236, 4
  %2238 = trunc i32 %2237 to i8
  %2239 = and i8 %2238, 1
  store i8 %2239, i8* %52, align 1
  %2240 = zext i1 %2228 to i8
  store i8 %2240, i8* %55, align 1
  %2241 = lshr i32 %2225, 31
  %2242 = trunc i32 %2241 to i8
  store i8 %2242, i8* %58, align 1
  %2243 = lshr i32 %2224, 31
  %2244 = xor i32 %2241, %2243
  %2245 = add nuw nsw i32 %2244, %2241
  %2246 = icmp eq i32 %2245, 2
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %64, align 1
  %2248 = add i64 %1915, 20
  store i64 %2248, i64* %3, align 8
  store i32 %2225, i32* %2223, align 4
  %2249 = load i64, i64* %3, align 8
  %2250 = add i64 %2249, -224
  store i64 %2250, i64* %3, align 8
  br label %block_.L_442478

block_.L_44255d:                                  ; preds = %block_.L_442478
  %2251 = add i64 %1877, 10
  store i64 %2251, i64* %3, align 8
  store i32 0, i32* %1847, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_442567

block_.L_442567:                                  ; preds = %block_.L_44268a, %block_.L_44255d
  %2252 = phi i64 [ %2900, %block_.L_44268a ], [ %.pre160, %block_.L_44255d ]
  %2253 = load i64, i64* %RBP.i, align 8
  %2254 = add i64 %2253, -4204
  %2255 = add i64 %2252, 6
  store i64 %2255, i64* %3, align 8
  %2256 = inttoptr i64 %2254 to i32*
  %2257 = load i32, i32* %2256, align 4
  %2258 = zext i32 %2257 to i64
  store i64 %2258, i64* %RAX.i2122, align 8
  %2259 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %2260 = sub i32 %2257, %2259
  %2261 = icmp ult i32 %2257, %2259
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %39, align 1
  %2263 = and i32 %2260, 255
  %2264 = tail call i32 @llvm.ctpop.i32(i32 %2263)
  %2265 = trunc i32 %2264 to i8
  %2266 = and i8 %2265, 1
  %2267 = xor i8 %2266, 1
  store i8 %2267, i8* %46, align 1
  %2268 = xor i32 %2259, %2257
  %2269 = xor i32 %2268, %2260
  %2270 = lshr i32 %2269, 4
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  store i8 %2272, i8* %52, align 1
  %2273 = icmp eq i32 %2260, 0
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %55, align 1
  %2275 = lshr i32 %2260, 31
  %2276 = trunc i32 %2275 to i8
  store i8 %2276, i8* %58, align 1
  %2277 = lshr i32 %2257, 31
  %2278 = lshr i32 %2259, 31
  %2279 = xor i32 %2278, %2277
  %2280 = xor i32 %2275, %2277
  %2281 = add nuw nsw i32 %2280, %2279
  %2282 = icmp eq i32 %2281, 2
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %64, align 1
  %2284 = icmp ne i8 %2276, 0
  %2285 = xor i1 %2284, %2282
  %.v226 = select i1 %2285, i64 19, i64 316
  %2286 = add i64 %2252, %.v226
  store i64 %2286, i64* %3, align 8
  br i1 %2285, label %block_44257a, label %block_.L_4426a3

block_44257a:                                     ; preds = %block_.L_442567
  %2287 = add i64 %2253, -4208
  %2288 = add i64 %2286, 10
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2287 to i32*
  store i32 0, i32* %2289, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_442584

block_.L_442584:                                  ; preds = %block_.L_442671, %block_44257a
  %2290 = phi i64 [ %2870, %block_.L_442671 ], [ %.pre172, %block_44257a ]
  %2291 = load i64, i64* %RBP.i, align 8
  %2292 = add i64 %2291, -4208
  %2293 = add i64 %2290, 6
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = zext i32 %2295 to i64
  store i64 %2296, i64* %RAX.i2122, align 8
  %2297 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %2298 = sub i32 %2295, %2297
  %2299 = icmp ult i32 %2295, %2297
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %39, align 1
  %2301 = and i32 %2298, 255
  %2302 = tail call i32 @llvm.ctpop.i32(i32 %2301)
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  %2305 = xor i8 %2304, 1
  store i8 %2305, i8* %46, align 1
  %2306 = xor i32 %2297, %2295
  %2307 = xor i32 %2306, %2298
  %2308 = lshr i32 %2307, 4
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  store i8 %2310, i8* %52, align 1
  %2311 = icmp eq i32 %2298, 0
  %2312 = zext i1 %2311 to i8
  store i8 %2312, i8* %55, align 1
  %2313 = lshr i32 %2298, 31
  %2314 = trunc i32 %2313 to i8
  store i8 %2314, i8* %58, align 1
  %2315 = lshr i32 %2295, 31
  %2316 = lshr i32 %2297, 31
  %2317 = xor i32 %2316, %2315
  %2318 = xor i32 %2313, %2315
  %2319 = add nuw nsw i32 %2318, %2317
  %2320 = icmp eq i32 %2319, 2
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %64, align 1
  %2322 = icmp ne i8 %2314, 0
  %2323 = xor i1 %2322, %2320
  %.v188 = select i1 %2323, i64 19, i64 262
  %2324 = add i64 %2290, %.v188
  store i64 %2324, i64* %3, align 8
  br i1 %2323, label %block_442597, label %block_.L_44268a

block_442597:                                     ; preds = %block_.L_442584
  %2325 = add i64 %2291, -112
  %2326 = add i64 %2324, 4
  store i64 %2326, i64* %3, align 8
  %2327 = inttoptr i64 %2325 to i64*
  %2328 = load i64, i64* %2327, align 8
  store i64 %2328, i64* %RAX.i2122, align 8
  %2329 = add i64 %2291, -4204
  %2330 = add i64 %2324, 11
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2329 to i32*
  %2332 = load i32, i32* %2331, align 4
  %2333 = mul i32 %2332, 20
  %2334 = add i32 %2333, 21
  %2335 = zext i32 %2334 to i64
  store i64 %2335, i64* %RCX.i2073, align 8
  %2336 = icmp ugt i32 %2333, -22
  %2337 = zext i1 %2336 to i8
  store i8 %2337, i8* %39, align 1
  %2338 = and i32 %2334, 253
  %2339 = tail call i32 @llvm.ctpop.i32(i32 %2338)
  %2340 = trunc i32 %2339 to i8
  %2341 = and i8 %2340, 1
  %2342 = xor i8 %2341, 1
  store i8 %2342, i8* %46, align 1
  %2343 = xor i32 %2333, 16
  %2344 = xor i32 %2343, %2334
  %2345 = lshr i32 %2344, 4
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  store i8 %2347, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %2348 = lshr i32 %2334, 31
  %2349 = trunc i32 %2348 to i8
  store i8 %2349, i8* %58, align 1
  %2350 = lshr i32 %2333, 31
  %2351 = xor i32 %2348, %2350
  %2352 = add nuw nsw i32 %2351, %2348
  %2353 = icmp eq i32 %2352, 2
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %64, align 1
  %2355 = add i64 %2324, 20
  store i64 %2355, i64* %3, align 8
  %2356 = load i32, i32* %2294, align 4
  %2357 = add i32 %2356, %2334
  %2358 = zext i32 %2357 to i64
  store i64 %2358, i64* %RCX.i2073, align 8
  %2359 = sext i32 %2357 to i64
  %2360 = mul nsw i64 %2359, 36
  store i64 %2360, i64* %RDX.i2039, align 8
  %2361 = lshr i64 %2360, 63
  %2362 = load i64, i64* %RAX.i2122, align 8
  %2363 = add i64 %2360, %2362
  store i64 %2363, i64* %RAX.i2122, align 8
  %2364 = icmp ult i64 %2363, %2362
  %2365 = icmp ult i64 %2363, %2360
  %2366 = or i1 %2364, %2365
  %2367 = zext i1 %2366 to i8
  store i8 %2367, i8* %39, align 1
  %2368 = trunc i64 %2363 to i32
  %2369 = and i32 %2368, 255
  %2370 = tail call i32 @llvm.ctpop.i32(i32 %2369)
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = xor i8 %2372, 1
  store i8 %2373, i8* %46, align 1
  %2374 = xor i64 %2360, %2362
  %2375 = xor i64 %2374, %2363
  %2376 = lshr i64 %2375, 4
  %2377 = trunc i64 %2376 to i8
  %2378 = and i8 %2377, 1
  store i8 %2378, i8* %52, align 1
  %2379 = icmp eq i64 %2363, 0
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %55, align 1
  %2381 = lshr i64 %2363, 63
  %2382 = trunc i64 %2381 to i8
  store i8 %2382, i8* %58, align 1
  %2383 = lshr i64 %2362, 63
  %2384 = xor i64 %2381, %2383
  %2385 = xor i64 %2381, %2361
  %2386 = add nuw nsw i64 %2384, %2385
  %2387 = icmp eq i64 %2386, 2
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %64, align 1
  %2389 = add i64 %2363, 12
  %2390 = add i64 %2324, 33
  store i64 %2390, i64* %3, align 8
  %2391 = inttoptr i64 %2389 to i32*
  %2392 = load i32, i32* %2391, align 4
  %2393 = zext i32 %2392 to i64
  store i64 %2393, i64* %RCX.i2073, align 8
  %2394 = load i64, i64* %RBP.i, align 8
  %2395 = add i64 %2394, -4184
  %2396 = add i64 %2324, 39
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i32*
  %2398 = load i32, i32* %2397, align 4
  %2399 = sub i32 %2392, %2398
  %2400 = icmp ult i32 %2392, %2398
  %2401 = zext i1 %2400 to i8
  store i8 %2401, i8* %39, align 1
  %2402 = and i32 %2399, 255
  %2403 = tail call i32 @llvm.ctpop.i32(i32 %2402)
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  %2406 = xor i8 %2405, 1
  store i8 %2406, i8* %46, align 1
  %2407 = xor i32 %2398, %2392
  %2408 = xor i32 %2407, %2399
  %2409 = lshr i32 %2408, 4
  %2410 = trunc i32 %2409 to i8
  %2411 = and i8 %2410, 1
  store i8 %2411, i8* %52, align 1
  %2412 = icmp eq i32 %2399, 0
  %2413 = zext i1 %2412 to i8
  store i8 %2413, i8* %55, align 1
  %2414 = lshr i32 %2399, 31
  %2415 = trunc i32 %2414 to i8
  store i8 %2415, i8* %58, align 1
  %2416 = lshr i32 %2392, 31
  %2417 = lshr i32 %2398, 31
  %2418 = xor i32 %2417, %2416
  %2419 = xor i32 %2414, %2416
  %2420 = add nuw nsw i32 %2419, %2418
  %2421 = icmp eq i32 %2420, 2
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %64, align 1
  %.v254 = select i1 %2412, i64 45, i64 218
  %2423 = add i64 %2324, %.v254
  store i64 %2423, i64* %3, align 8
  br i1 %2412, label %block_4425c4, label %block_.L_442671

block_4425c4:                                     ; preds = %block_442597
  %2424 = add i64 %2394, -4204
  %2425 = add i64 %2423, 7
  store i64 %2425, i64* %3, align 8
  %2426 = inttoptr i64 %2424 to i32*
  %2427 = load i32, i32* %2426, align 4
  %2428 = mul i32 %2427, 20
  %2429 = add i32 %2428, 21
  %2430 = zext i32 %2429 to i64
  store i64 %2430, i64* %RAX.i2122, align 8
  %2431 = icmp ugt i32 %2428, -22
  %2432 = zext i1 %2431 to i8
  store i8 %2432, i8* %39, align 1
  %2433 = and i32 %2429, 253
  %2434 = tail call i32 @llvm.ctpop.i32(i32 %2433)
  %2435 = trunc i32 %2434 to i8
  %2436 = and i8 %2435, 1
  %2437 = xor i8 %2436, 1
  store i8 %2437, i8* %46, align 1
  %2438 = xor i32 %2428, 16
  %2439 = xor i32 %2438, %2429
  %2440 = lshr i32 %2439, 4
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  store i8 %2442, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %2443 = lshr i32 %2429, 31
  %2444 = trunc i32 %2443 to i8
  store i8 %2444, i8* %58, align 1
  %2445 = lshr i32 %2428, 31
  %2446 = xor i32 %2443, %2445
  %2447 = add nuw nsw i32 %2446, %2443
  %2448 = icmp eq i32 %2447, 2
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %64, align 1
  %2450 = add i64 %2394, -4208
  %2451 = add i64 %2423, 16
  store i64 %2451, i64* %3, align 8
  %2452 = inttoptr i64 %2450 to i32*
  %2453 = load i32, i32* %2452, align 4
  %2454 = add i32 %2453, %2429
  %2455 = zext i32 %2454 to i64
  store i64 %2455, i64* %RAX.i2122, align 8
  %2456 = icmp ult i32 %2454, %2429
  %2457 = icmp ult i32 %2454, %2453
  %2458 = or i1 %2456, %2457
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %39, align 1
  %2460 = and i32 %2454, 255
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  store i8 %2464, i8* %46, align 1
  %2465 = xor i32 %2453, %2429
  %2466 = xor i32 %2465, %2454
  %2467 = lshr i32 %2466, 4
  %2468 = trunc i32 %2467 to i8
  %2469 = and i8 %2468, 1
  store i8 %2469, i8* %52, align 1
  %2470 = icmp eq i32 %2454, 0
  %2471 = zext i1 %2470 to i8
  store i8 %2471, i8* %55, align 1
  %2472 = lshr i32 %2454, 31
  %2473 = trunc i32 %2472 to i8
  store i8 %2473, i8* %58, align 1
  %2474 = lshr i32 %2453, 31
  %2475 = xor i32 %2472, %2443
  %2476 = xor i32 %2472, %2474
  %2477 = add nuw nsw i32 %2475, %2476
  %2478 = icmp eq i32 %2477, 2
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %64, align 1
  %2480 = sext i32 %2454 to i64
  store i64 %2480, i64* %RCX.i2073, align 8
  %2481 = load i64, i64* %RBP.i, align 8
  %2482 = add nsw i64 %2480, -512
  %2483 = add i64 %2482, %2481
  %2484 = add i64 %2423, 27
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i8*
  %2486 = load i8, i8* %2485, align 1
  %2487 = sext i8 %2486 to i64
  %2488 = and i64 %2487, 4294967295
  store i64 %2488, i64* %RAX.i2122, align 8
  %2489 = add i64 %2481, -4204
  %2490 = add i64 %2423, 34
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2489 to i32*
  %2492 = load i32, i32* %2491, align 4
  %2493 = mul i32 %2492, 20
  %2494 = add i32 %2493, 21
  %2495 = zext i32 %2494 to i64
  store i64 %2495, i64* %RDX.i2039, align 8
  %2496 = icmp ugt i32 %2493, -22
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %39, align 1
  %2498 = and i32 %2494, 253
  %2499 = tail call i32 @llvm.ctpop.i32(i32 %2498)
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  %2502 = xor i8 %2501, 1
  store i8 %2502, i8* %46, align 1
  %2503 = xor i32 %2493, 16
  %2504 = xor i32 %2503, %2494
  %2505 = lshr i32 %2504, 4
  %2506 = trunc i32 %2505 to i8
  %2507 = and i8 %2506, 1
  store i8 %2507, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %2508 = lshr i32 %2494, 31
  %2509 = trunc i32 %2508 to i8
  store i8 %2509, i8* %58, align 1
  %2510 = lshr i32 %2493, 31
  %2511 = xor i32 %2508, %2510
  %2512 = add nuw nsw i32 %2511, %2508
  %2513 = icmp eq i32 %2512, 2
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %64, align 1
  %2515 = add i64 %2481, -4208
  %2516 = add i64 %2423, 43
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  %2519 = add i32 %2518, %2494
  %2520 = zext i32 %2519 to i64
  store i64 %2520, i64* %RDX.i2039, align 8
  %2521 = icmp ult i32 %2519, %2494
  %2522 = icmp ult i32 %2519, %2518
  %2523 = or i1 %2521, %2522
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %39, align 1
  %2525 = and i32 %2519, 255
  %2526 = tail call i32 @llvm.ctpop.i32(i32 %2525)
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  %2529 = xor i8 %2528, 1
  store i8 %2529, i8* %46, align 1
  %2530 = xor i32 %2518, %2494
  %2531 = xor i32 %2530, %2519
  %2532 = lshr i32 %2531, 4
  %2533 = trunc i32 %2532 to i8
  %2534 = and i8 %2533, 1
  store i8 %2534, i8* %52, align 1
  %2535 = icmp eq i32 %2519, 0
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %55, align 1
  %2537 = lshr i32 %2519, 31
  %2538 = trunc i32 %2537 to i8
  store i8 %2538, i8* %58, align 1
  %2539 = lshr i32 %2518, 31
  %2540 = xor i32 %2537, %2508
  %2541 = xor i32 %2537, %2539
  %2542 = add nuw nsw i32 %2540, %2541
  %2543 = icmp eq i32 %2542, 2
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %64, align 1
  %2545 = sext i32 %2519 to i64
  store i64 %2545, i64* %RCX.i2073, align 8
  %2546 = load i64, i64* %RBP.i, align 8
  %2547 = add nsw i64 %2545, -912
  %2548 = add i64 %2547, %2546
  %2549 = add i64 %2423, 54
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2548 to i8*
  %2551 = load i8, i8* %2550, align 1
  %2552 = sext i8 %2551 to i64
  %2553 = and i64 %2552, 4294967295
  store i64 %2553, i64* %RDX.i2039, align 8
  %2554 = load i32, i32* %EAX.i1917, align 4
  %2555 = sext i8 %2551 to i32
  %2556 = sub i32 %2554, %2555
  %2557 = icmp ult i32 %2554, %2555
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %39, align 1
  %2559 = and i32 %2556, 255
  %2560 = tail call i32 @llvm.ctpop.i32(i32 %2559)
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  %2563 = xor i8 %2562, 1
  store i8 %2563, i8* %46, align 1
  %2564 = xor i32 %2555, %2554
  %2565 = xor i32 %2564, %2556
  %2566 = lshr i32 %2565, 4
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  store i8 %2568, i8* %52, align 1
  %2569 = icmp eq i32 %2556, 0
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %55, align 1
  %2571 = lshr i32 %2556, 31
  %2572 = trunc i32 %2571 to i8
  store i8 %2572, i8* %58, align 1
  %2573 = lshr i32 %2554, 31
  %2574 = lshr i32 %2555, 31
  %2575 = xor i32 %2574, %2573
  %2576 = xor i32 %2571, %2573
  %2577 = add nuw nsw i32 %2576, %2575
  %2578 = icmp eq i32 %2577, 2
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %64, align 1
  %2580 = icmp ne i8 %2572, 0
  %2581 = xor i1 %2580, %2578
  %.v255 = select i1 %2581, i64 163, i64 62
  %2582 = add i64 %2423, %.v255
  store i64 %2582, i64* %3, align 8
  br i1 %2581, label %block_.L_442667, label %block_442602

block_442602:                                     ; preds = %block_4425c4
  %2583 = add i64 %2546, -4204
  %2584 = add i64 %2582, 7
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2583 to i32*
  %2586 = load i32, i32* %2585, align 4
  %2587 = mul i32 %2586, 20
  %2588 = add i32 %2587, 21
  %2589 = zext i32 %2588 to i64
  store i64 %2589, i64* %RAX.i2122, align 8
  %2590 = icmp ugt i32 %2587, -22
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %39, align 1
  %2592 = and i32 %2588, 253
  %2593 = tail call i32 @llvm.ctpop.i32(i32 %2592)
  %2594 = trunc i32 %2593 to i8
  %2595 = and i8 %2594, 1
  %2596 = xor i8 %2595, 1
  store i8 %2596, i8* %46, align 1
  %2597 = xor i32 %2587, 16
  %2598 = xor i32 %2597, %2588
  %2599 = lshr i32 %2598, 4
  %2600 = trunc i32 %2599 to i8
  %2601 = and i8 %2600, 1
  store i8 %2601, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %2602 = lshr i32 %2588, 31
  %2603 = trunc i32 %2602 to i8
  store i8 %2603, i8* %58, align 1
  %2604 = lshr i32 %2587, 31
  %2605 = xor i32 %2602, %2604
  %2606 = add nuw nsw i32 %2605, %2602
  %2607 = icmp eq i32 %2606, 2
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %64, align 1
  %2609 = add i64 %2546, -4208
  %2610 = add i64 %2582, 16
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = add i32 %2612, %2588
  %2614 = zext i32 %2613 to i64
  store i64 %2614, i64* %RAX.i2122, align 8
  %2615 = icmp ult i32 %2613, %2588
  %2616 = icmp ult i32 %2613, %2612
  %2617 = or i1 %2615, %2616
  %2618 = zext i1 %2617 to i8
  store i8 %2618, i8* %39, align 1
  %2619 = and i32 %2613, 255
  %2620 = tail call i32 @llvm.ctpop.i32(i32 %2619)
  %2621 = trunc i32 %2620 to i8
  %2622 = and i8 %2621, 1
  %2623 = xor i8 %2622, 1
  store i8 %2623, i8* %46, align 1
  %2624 = xor i32 %2612, %2588
  %2625 = xor i32 %2624, %2613
  %2626 = lshr i32 %2625, 4
  %2627 = trunc i32 %2626 to i8
  %2628 = and i8 %2627, 1
  store i8 %2628, i8* %52, align 1
  %2629 = icmp eq i32 %2613, 0
  %2630 = zext i1 %2629 to i8
  store i8 %2630, i8* %55, align 1
  %2631 = lshr i32 %2613, 31
  %2632 = trunc i32 %2631 to i8
  store i8 %2632, i8* %58, align 1
  %2633 = lshr i32 %2612, 31
  %2634 = xor i32 %2631, %2602
  %2635 = xor i32 %2631, %2633
  %2636 = add nuw nsw i32 %2634, %2635
  %2637 = icmp eq i32 %2636, 2
  %2638 = zext i1 %2637 to i8
  store i8 %2638, i8* %64, align 1
  %2639 = sext i32 %2613 to i64
  store i64 %2639, i64* %RCX.i2073, align 8
  %2640 = load i64, i64* %RBP.i, align 8
  %2641 = add nsw i64 %2639, -512
  %2642 = add i64 %2641, %2640
  %2643 = add i64 %2582, 27
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i8*
  %2645 = load i8, i8* %2644, align 1
  %2646 = sext i8 %2645 to i64
  %2647 = and i64 %2646, 4294967295
  store i64 %2647, i64* %RAX.i2122, align 8
  %2648 = add i64 %2640, -4204
  %2649 = add i64 %2582, 34
  store i64 %2649, i64* %3, align 8
  %2650 = inttoptr i64 %2648 to i32*
  %2651 = load i32, i32* %2650, align 4
  %2652 = mul i32 %2651, 20
  %2653 = add i32 %2652, 21
  %2654 = zext i32 %2653 to i64
  store i64 %2654, i64* %RDX.i2039, align 8
  %2655 = icmp ugt i32 %2652, -22
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %39, align 1
  %2657 = and i32 %2653, 253
  %2658 = tail call i32 @llvm.ctpop.i32(i32 %2657)
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  %2661 = xor i8 %2660, 1
  store i8 %2661, i8* %46, align 1
  %2662 = xor i32 %2652, 16
  %2663 = xor i32 %2662, %2653
  %2664 = lshr i32 %2663, 4
  %2665 = trunc i32 %2664 to i8
  %2666 = and i8 %2665, 1
  store i8 %2666, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %2667 = lshr i32 %2653, 31
  %2668 = trunc i32 %2667 to i8
  store i8 %2668, i8* %58, align 1
  %2669 = lshr i32 %2652, 31
  %2670 = xor i32 %2667, %2669
  %2671 = add nuw nsw i32 %2670, %2667
  %2672 = icmp eq i32 %2671, 2
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %64, align 1
  %2674 = add i64 %2640, -4208
  %2675 = add i64 %2582, 43
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  %2677 = load i32, i32* %2676, align 4
  %2678 = add i32 %2677, %2653
  %2679 = zext i32 %2678 to i64
  store i64 %2679, i64* %RDX.i2039, align 8
  %2680 = icmp ult i32 %2678, %2653
  %2681 = icmp ult i32 %2678, %2677
  %2682 = or i1 %2680, %2681
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %39, align 1
  %2684 = and i32 %2678, 255
  %2685 = tail call i32 @llvm.ctpop.i32(i32 %2684)
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  %2688 = xor i8 %2687, 1
  store i8 %2688, i8* %46, align 1
  %2689 = xor i32 %2677, %2653
  %2690 = xor i32 %2689, %2678
  %2691 = lshr i32 %2690, 4
  %2692 = trunc i32 %2691 to i8
  %2693 = and i8 %2692, 1
  store i8 %2693, i8* %52, align 1
  %2694 = icmp eq i32 %2678, 0
  %2695 = zext i1 %2694 to i8
  store i8 %2695, i8* %55, align 1
  %2696 = lshr i32 %2678, 31
  %2697 = trunc i32 %2696 to i8
  store i8 %2697, i8* %58, align 1
  %2698 = lshr i32 %2677, 31
  %2699 = xor i32 %2696, %2667
  %2700 = xor i32 %2696, %2698
  %2701 = add nuw nsw i32 %2699, %2700
  %2702 = icmp eq i32 %2701, 2
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %64, align 1
  %2704 = sext i32 %2678 to i64
  store i64 %2704, i64* %RCX.i2073, align 8
  %2705 = load i64, i64* %RBP.i, align 8
  %2706 = add nsw i64 %2704, -912
  %2707 = add i64 %2706, %2705
  %2708 = add i64 %2582, 54
  store i64 %2708, i64* %3, align 8
  %2709 = inttoptr i64 %2707 to i8*
  %2710 = load i8, i8* %2709, align 1
  %2711 = sext i8 %2710 to i64
  %2712 = mul nsw i64 %2711, 3
  %2713 = and i64 %2712, 4294967295
  store i64 %2713, i64* %RDX.i2039, align 8
  %2714 = load i32, i32* %EAX.i1917, align 4
  %2715 = trunc i64 %2712 to i32
  %2716 = sub i32 %2714, %2715
  %2717 = icmp ult i32 %2714, %2715
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %39, align 1
  %2719 = and i32 %2716, 255
  %2720 = tail call i32 @llvm.ctpop.i32(i32 %2719)
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  %2723 = xor i8 %2722, 1
  store i8 %2723, i8* %46, align 1
  %2724 = xor i32 %2715, %2714
  %2725 = xor i32 %2724, %2716
  %2726 = lshr i32 %2725, 4
  %2727 = trunc i32 %2726 to i8
  %2728 = and i8 %2727, 1
  store i8 %2728, i8* %52, align 1
  %2729 = icmp eq i32 %2716, 0
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %55, align 1
  %2731 = lshr i32 %2716, 31
  %2732 = trunc i32 %2731 to i8
  store i8 %2732, i8* %58, align 1
  %2733 = lshr i32 %2714, 31
  %2734 = lshr i32 %2715, 31
  %2735 = xor i32 %2734, %2733
  %2736 = xor i32 %2731, %2733
  %2737 = add nuw nsw i32 %2736, %2735
  %2738 = icmp eq i32 %2737, 2
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %64, align 1
  %2740 = icmp ne i8 %2732, 0
  %2741 = xor i1 %2740, %2738
  %.v256 = select i1 %2741, i64 65, i64 111
  %2742 = add i64 %2582, %.v256
  store i64 %2742, i64* %3, align 8
  br i1 %2741, label %block_442643, label %block_.L_442671

block_442643:                                     ; preds = %block_442602
  %2743 = add i64 %2705, -4204
  %2744 = add i64 %2742, 7
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = mul i32 %2746, 20
  %2748 = add i32 %2747, 21
  %2749 = zext i32 %2748 to i64
  store i64 %2749, i64* %RAX.i2122, align 8
  %2750 = icmp ugt i32 %2747, -22
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %39, align 1
  %2752 = and i32 %2748, 253
  %2753 = tail call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  store i8 %2756, i8* %46, align 1
  %2757 = xor i32 %2747, 16
  %2758 = xor i32 %2757, %2748
  %2759 = lshr i32 %2758, 4
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  store i8 %2761, i8* %52, align 1
  store i8 0, i8* %55, align 1
  %2762 = lshr i32 %2748, 31
  %2763 = trunc i32 %2762 to i8
  store i8 %2763, i8* %58, align 1
  %2764 = lshr i32 %2747, 31
  %2765 = xor i32 %2762, %2764
  %2766 = add nuw nsw i32 %2765, %2762
  %2767 = icmp eq i32 %2766, 2
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %64, align 1
  %2769 = add i64 %2705, -4208
  %2770 = add i64 %2742, 16
  store i64 %2770, i64* %3, align 8
  %2771 = inttoptr i64 %2769 to i32*
  %2772 = load i32, i32* %2771, align 4
  %2773 = add i32 %2772, %2748
  %2774 = zext i32 %2773 to i64
  store i64 %2774, i64* %RAX.i2122, align 8
  %2775 = icmp ult i32 %2773, %2748
  %2776 = icmp ult i32 %2773, %2772
  %2777 = or i1 %2775, %2776
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %39, align 1
  %2779 = and i32 %2773, 255
  %2780 = tail call i32 @llvm.ctpop.i32(i32 %2779)
  %2781 = trunc i32 %2780 to i8
  %2782 = and i8 %2781, 1
  %2783 = xor i8 %2782, 1
  store i8 %2783, i8* %46, align 1
  %2784 = xor i32 %2772, %2748
  %2785 = xor i32 %2784, %2773
  %2786 = lshr i32 %2785, 4
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  store i8 %2788, i8* %52, align 1
  %2789 = icmp eq i32 %2773, 0
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %55, align 1
  %2791 = lshr i32 %2773, 31
  %2792 = trunc i32 %2791 to i8
  store i8 %2792, i8* %58, align 1
  %2793 = lshr i32 %2772, 31
  %2794 = xor i32 %2791, %2762
  %2795 = xor i32 %2791, %2793
  %2796 = add nuw nsw i32 %2794, %2795
  %2797 = icmp eq i32 %2796, 2
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %64, align 1
  %2799 = sext i32 %2773 to i64
  store i64 %2799, i64* %RCX.i2073, align 8
  %2800 = load i64, i64* %RBP.i, align 8
  %2801 = add nsw i64 %2799, -912
  %2802 = add i64 %2801, %2800
  %2803 = add i64 %2742, 27
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i8*
  %2805 = load i8, i8* %2804, align 1
  %2806 = sext i8 %2805 to i64
  %2807 = and i64 %2806, 4294967295
  store i64 %2807, i64* %RAX.i2122, align 8
  %2808 = sext i8 %2805 to i32
  %2809 = add nsw i32 %2808, -5
  %2810 = icmp ult i8 %2805, 5
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %39, align 1
  %2812 = and i32 %2809, 255
  %2813 = tail call i32 @llvm.ctpop.i32(i32 %2812)
  %2814 = trunc i32 %2813 to i8
  %2815 = and i8 %2814, 1
  %2816 = xor i8 %2815, 1
  store i8 %2816, i8* %46, align 1
  %2817 = xor i32 %2809, %2808
  %2818 = lshr i32 %2817, 4
  %2819 = trunc i32 %2818 to i8
  %2820 = and i8 %2819, 1
  store i8 %2820, i8* %52, align 1
  %2821 = icmp eq i32 %2809, 0
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %55, align 1
  %2823 = lshr i32 %2809, 31
  %2824 = trunc i32 %2823 to i8
  store i8 %2824, i8* %58, align 1
  %2825 = lshr i32 %2808, 31
  %2826 = xor i32 %2823, %2825
  %2827 = add nuw nsw i32 %2826, %2825
  %2828 = icmp eq i32 %2827, 2
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %64, align 1
  %2830 = icmp ne i8 %2824, 0
  %2831 = xor i1 %2830, %2828
  %2832 = or i1 %2821, %2831
  %.v257 = select i1 %2832, i64 46, i64 36
  %2833 = add i64 %2742, %.v257
  store i64 %2833, i64* %3, align 8
  br i1 %2832, label %block_.L_442671, label %block_.L_442667

block_.L_442667:                                  ; preds = %block_442643, %block_4425c4
  %2834 = phi i64 [ %2833, %block_442643 ], [ %2582, %block_4425c4 ]
  %2835 = phi i64 [ %2800, %block_442643 ], [ %2546, %block_4425c4 ]
  %2836 = add i64 %2835, -4132
  %2837 = add i64 %2834, 10
  store i64 %2837, i64* %3, align 8
  %2838 = inttoptr i64 %2836 to i32*
  store i32 0, i32* %2838, align 4
  %.pre173 = load i64, i64* %3, align 8
  %.pre174 = load i64, i64* %RBP.i, align 8
  br label %block_.L_442671

block_.L_442671:                                  ; preds = %block_442597, %block_442602, %block_.L_442667, %block_442643
  %2839 = phi i64 [ %2705, %block_442602 ], [ %.pre174, %block_.L_442667 ], [ %2800, %block_442643 ], [ %2394, %block_442597 ]
  %2840 = phi i64 [ %2742, %block_442602 ], [ %.pre173, %block_.L_442667 ], [ %2833, %block_442643 ], [ %2423, %block_442597 ]
  %2841 = add i64 %2839, -4208
  %2842 = add i64 %2840, 11
  store i64 %2842, i64* %3, align 8
  %2843 = inttoptr i64 %2841 to i32*
  %2844 = load i32, i32* %2843, align 4
  %2845 = add i32 %2844, 1
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RAX.i2122, align 8
  %2847 = icmp eq i32 %2844, -1
  %2848 = icmp eq i32 %2845, 0
  %2849 = or i1 %2847, %2848
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %39, align 1
  %2851 = and i32 %2845, 255
  %2852 = tail call i32 @llvm.ctpop.i32(i32 %2851)
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  %2855 = xor i8 %2854, 1
  store i8 %2855, i8* %46, align 1
  %2856 = xor i32 %2845, %2844
  %2857 = lshr i32 %2856, 4
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  store i8 %2859, i8* %52, align 1
  %2860 = zext i1 %2848 to i8
  store i8 %2860, i8* %55, align 1
  %2861 = lshr i32 %2845, 31
  %2862 = trunc i32 %2861 to i8
  store i8 %2862, i8* %58, align 1
  %2863 = lshr i32 %2844, 31
  %2864 = xor i32 %2861, %2863
  %2865 = add nuw nsw i32 %2864, %2861
  %2866 = icmp eq i32 %2865, 2
  %2867 = zext i1 %2866 to i8
  store i8 %2867, i8* %64, align 1
  %2868 = add i64 %2840, 20
  store i64 %2868, i64* %3, align 8
  store i32 %2845, i32* %2843, align 4
  %2869 = load i64, i64* %3, align 8
  %2870 = add i64 %2869, -257
  store i64 %2870, i64* %3, align 8
  br label %block_.L_442584

block_.L_44268a:                                  ; preds = %block_.L_442584
  %2871 = add i64 %2291, -4204
  %2872 = add i64 %2324, 11
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i32*
  %2874 = load i32, i32* %2873, align 4
  %2875 = add i32 %2874, 1
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RAX.i2122, align 8
  %2877 = icmp eq i32 %2874, -1
  %2878 = icmp eq i32 %2875, 0
  %2879 = or i1 %2877, %2878
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %39, align 1
  %2881 = and i32 %2875, 255
  %2882 = tail call i32 @llvm.ctpop.i32(i32 %2881)
  %2883 = trunc i32 %2882 to i8
  %2884 = and i8 %2883, 1
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %46, align 1
  %2886 = xor i32 %2875, %2874
  %2887 = lshr i32 %2886, 4
  %2888 = trunc i32 %2887 to i8
  %2889 = and i8 %2888, 1
  store i8 %2889, i8* %52, align 1
  %2890 = zext i1 %2878 to i8
  store i8 %2890, i8* %55, align 1
  %2891 = lshr i32 %2875, 31
  %2892 = trunc i32 %2891 to i8
  store i8 %2892, i8* %58, align 1
  %2893 = lshr i32 %2874, 31
  %2894 = xor i32 %2891, %2893
  %2895 = add nuw nsw i32 %2894, %2891
  %2896 = icmp eq i32 %2895, 2
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %64, align 1
  %2898 = add i64 %2324, 20
  store i64 %2898, i64* %3, align 8
  store i32 %2875, i32* %2873, align 4
  %2899 = load i64, i64* %3, align 8
  %2900 = add i64 %2899, -311
  store i64 %2900, i64* %3, align 8
  br label %block_.L_442567

block_.L_4426a3:                                  ; preds = %block_.L_442567
  %2901 = add i64 %2253, -2528
  store i64 %2901, i64* %RDI.i2098, align 8
  %2902 = add i64 %2253, -4164
  %2903 = add i64 %2286, 14
  store i64 %2903, i64* %3, align 8
  %2904 = inttoptr i64 %2902 to i32*
  %2905 = load i32, i32* %2904, align 4
  %2906 = sext i32 %2905 to i64
  store i64 %2906, i64* %RAX.i2122, align 8
  %2907 = shl nsw i64 %2906, 2
  %2908 = add i64 %2253, -4128
  %2909 = add i64 %2908, %2907
  %2910 = add i64 %2286, 25
  store i64 %2910, i64* %3, align 8
  %2911 = inttoptr i64 %2909 to i32*
  store i32 0, i32* %2911, align 4
  %2912 = load i64, i64* %RBP.i, align 8
  %2913 = add i64 %2912, -4164
  %2914 = load i64, i64* %3, align 8
  %2915 = add i64 %2914, 7
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2913 to i32*
  %2917 = load i32, i32* %2916, align 4
  %2918 = sext i32 %2917 to i64
  store i64 %2918, i64* %RAX.i2122, align 8
  %2919 = add i64 %2912, -2528
  %2920 = add i64 %2914, 13
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i32*
  %2922 = load i32, i32* %2921, align 4
  %2923 = zext i32 %2922 to i64
  store i64 %2923, i64* %RCX.i2073, align 8
  %2924 = shl nsw i64 %2918, 2
  %2925 = add i64 %2912, -3328
  %2926 = add i64 %2925, %2924
  %2927 = add i64 %2914, 20
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2926 to i32*
  store i32 %2922, i32* %2928, align 4
  %2929 = load i64, i64* %RBP.i, align 8
  %2930 = add i64 %2929, -4132
  %2931 = load i64, i64* %3, align 8
  %2932 = add i64 %2931, 6
  store i64 %2932, i64* %3, align 8
  %2933 = inttoptr i64 %2930 to i32*
  %2934 = load i32, i32* %2933, align 4
  %2935 = zext i32 %2934 to i64
  store i64 %2935, i64* %RCX.i2073, align 8
  %2936 = add i64 %2929, -88
  %2937 = add i64 %2931, 10
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %RAX.i2122, align 8
  %2940 = add i64 %2931, 12
  store i64 %2940, i64* %3, align 8
  %2941 = inttoptr i64 %2939 to i32*
  %2942 = load i32, i32* %2941, align 4
  %2943 = add i32 %2942, %2934
  %2944 = zext i32 %2943 to i64
  store i64 %2944, i64* %RCX.i2073, align 8
  %2945 = icmp ult i32 %2943, %2934
  %2946 = icmp ult i32 %2943, %2942
  %2947 = or i1 %2945, %2946
  %2948 = zext i1 %2947 to i8
  store i8 %2948, i8* %39, align 1
  %2949 = and i32 %2943, 255
  %2950 = tail call i32 @llvm.ctpop.i32(i32 %2949)
  %2951 = trunc i32 %2950 to i8
  %2952 = and i8 %2951, 1
  %2953 = xor i8 %2952, 1
  store i8 %2953, i8* %46, align 1
  %2954 = xor i32 %2942, %2934
  %2955 = xor i32 %2954, %2943
  %2956 = lshr i32 %2955, 4
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  store i8 %2958, i8* %52, align 1
  %2959 = icmp eq i32 %2943, 0
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %55, align 1
  %2961 = lshr i32 %2943, 31
  %2962 = trunc i32 %2961 to i8
  store i8 %2962, i8* %58, align 1
  %2963 = lshr i32 %2934, 31
  %2964 = lshr i32 %2942, 31
  %2965 = xor i32 %2961, %2963
  %2966 = xor i32 %2961, %2964
  %2967 = add nuw nsw i32 %2965, %2966
  %2968 = icmp eq i32 %2967, 2
  %2969 = zext i1 %2968 to i8
  store i8 %2969, i8* %64, align 1
  %2970 = add i64 %2931, 14
  store i64 %2970, i64* %3, align 8
  store i32 %2943, i32* %2941, align 4
  %2971 = load i64, i64* %RBP.i, align 8
  %2972 = add i64 %2971, -112
  %2973 = load i64, i64* %3, align 8
  %2974 = add i64 %2973, 4
  store i64 %2974, i64* %3, align 8
  %2975 = inttoptr i64 %2972 to i64*
  %2976 = load i64, i64* %2975, align 8
  store i64 %2976, i64* %RAX.i2122, align 8
  %2977 = add i64 %2971, -4184
  %2978 = add i64 %2973, 11
  store i64 %2978, i64* %3, align 8
  %2979 = inttoptr i64 %2977 to i32*
  %2980 = load i32, i32* %2979, align 4
  %2981 = sext i32 %2980 to i64
  %2982 = mul nsw i64 %2981, 36
  store i64 %2982, i64* %RDX.i2039, align 8
  %2983 = lshr i64 %2982, 63
  %2984 = add i64 %2982, %2976
  store i64 %2984, i64* %RAX.i2122, align 8
  %2985 = icmp ult i64 %2984, %2976
  %2986 = icmp ult i64 %2984, %2982
  %2987 = or i1 %2985, %2986
  %2988 = zext i1 %2987 to i8
  store i8 %2988, i8* %39, align 1
  %2989 = trunc i64 %2984 to i32
  %2990 = and i32 %2989, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %46, align 1
  %2995 = xor i64 %2982, %2976
  %2996 = xor i64 %2995, %2984
  %2997 = lshr i64 %2996, 4
  %2998 = trunc i64 %2997 to i8
  %2999 = and i8 %2998, 1
  store i8 %2999, i8* %52, align 1
  %3000 = icmp eq i64 %2984, 0
  %3001 = zext i1 %3000 to i8
  store i8 %3001, i8* %55, align 1
  %3002 = lshr i64 %2984, 63
  %3003 = trunc i64 %3002 to i8
  store i8 %3003, i8* %58, align 1
  %3004 = lshr i64 %2976, 63
  %3005 = xor i64 %3002, %3004
  %3006 = xor i64 %3002, %2983
  %3007 = add nuw nsw i64 %3005, %3006
  %3008 = icmp eq i64 %3007, 2
  %3009 = zext i1 %3008 to i8
  store i8 %3009, i8* %64, align 1
  %3010 = add i64 %2971, -2528
  %3011 = add i64 %2973, 24
  store i64 %3011, i64* %3, align 8
  %3012 = inttoptr i64 %3010 to i32*
  %3013 = load i32, i32* %3012, align 4
  %3014 = zext i32 %3013 to i64
  store i64 %3014, i64* %RCX.i2073, align 8
  %3015 = add i64 %2984, 16
  %3016 = add i64 %2973, 27
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i32*
  store i32 %3013, i32* %3017, align 4
  %3018 = load i64, i64* %3, align 8
  %3019 = add i64 %3018, -30041
  %3020 = add i64 %3018, 5
  %3021 = load i64, i64* %6, align 8
  %3022 = add i64 %3021, -8
  %3023 = inttoptr i64 %3022 to i64*
  store i64 %3020, i64* %3023, align 8
  store i64 %3022, i64* %6, align 8
  store i64 %3019, i64* %3, align 8
  %call2_4426f9 = tail call %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* nonnull %0, i64 %3019, %struct.Memory* %MEMORY.14)
  %3024 = load i32, i32* %EAX.i1917, align 4
  %3025 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %3026 = and i32 %3024, 255
  %3027 = tail call i32 @llvm.ctpop.i32(i32 %3026)
  %3028 = trunc i32 %3027 to i8
  %3029 = and i8 %3028, 1
  %3030 = xor i8 %3029, 1
  store i8 %3030, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3031 = icmp eq i32 %3024, 0
  %3032 = zext i1 %3031 to i8
  store i8 %3032, i8* %55, align 1
  %3033 = lshr i32 %3024, 31
  %3034 = trunc i32 %3033 to i8
  store i8 %3034, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v227 = select i1 %3031, i64 145, i64 9
  %3035 = add i64 %3025, %.v227
  %3036 = load i64, i64* %RBP.i, align 8
  %3037 = add i64 %3036, -2528
  %3038 = add i64 %3035, 7
  store i64 %3038, i64* %3, align 8
  store i64 %3037, i64* %RDI.i2098, align 8
  br i1 %3031, label %block_.L_44278f, label %block_442707

block_442707:                                     ; preds = %block_.L_4426a3
  %3039 = add i64 %3036, -4188
  %3040 = add i64 %3035, 17
  store i64 %3040, i64* %3, align 8
  %3041 = inttoptr i64 %3039 to i32*
  store i32 50, i32* %3041, align 4
  %3042 = load i64, i64* %3, align 8
  %3043 = add i64 %3042, -30472
  %3044 = add i64 %3042, 5
  %3045 = load i64, i64* %6, align 8
  %3046 = add i64 %3045, -8
  %3047 = inttoptr i64 %3046 to i64*
  store i64 %3044, i64* %3047, align 8
  store i64 %3046, i64* %6, align 8
  store i64 %3043, i64* %3, align 8
  %call2_442718 = tail call %struct.Memory* @sub_43b010.max_eyes(%struct.State* nonnull %0, i64 %3043, %struct.Memory* %MEMORY.14)
  %3048 = load i64, i64* %RBP.i, align 8
  %3049 = add i64 %3048, -2528
  %3050 = load i64, i64* %3, align 8
  store i64 %3049, i64* %RDI.i2098, align 8
  %3051 = add i64 %3048, -4288
  %3052 = load i32, i32* %EAX.i1917, align 4
  %3053 = add i64 %3050, 13
  store i64 %3053, i64* %3, align 8
  %3054 = inttoptr i64 %3051 to i32*
  store i32 %3052, i32* %3054, align 4
  %3055 = load i64, i64* %3, align 8
  %3056 = add i64 %3055, -27706
  %3057 = add i64 %3055, 5
  %3058 = load i64, i64* %6, align 8
  %3059 = add i64 %3058, -8
  %3060 = inttoptr i64 %3059 to i64*
  store i64 %3057, i64* %3060, align 8
  store i64 %3059, i64* %6, align 8
  store i64 %3056, i64* %3, align 8
  %call2_44272a = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %3056, %struct.Memory* %MEMORY.14)
  %3061 = load i64, i64* %RBP.i, align 8
  %3062 = add i64 %3061, -4288
  %3063 = load i64, i64* %3, align 8
  %3064 = add i64 %3063, 6
  store i64 %3064, i64* %3, align 8
  %3065 = inttoptr i64 %3062 to i32*
  %3066 = load i32, i32* %3065, align 4
  %3067 = load i32, i32* %EAX.i1917, align 4
  %3068 = sub i32 %3066, %3067
  %3069 = zext i32 %3068 to i64
  store i64 %3069, i64* %RCX.i2073, align 8
  %3070 = lshr i32 %3068, 31
  %3071 = add i32 %3068, -2
  %3072 = icmp ult i32 %3068, 2
  %3073 = zext i1 %3072 to i8
  store i8 %3073, i8* %39, align 1
  %3074 = and i32 %3071, 255
  %3075 = tail call i32 @llvm.ctpop.i32(i32 %3074)
  %3076 = trunc i32 %3075 to i8
  %3077 = and i8 %3076, 1
  %3078 = xor i8 %3077, 1
  store i8 %3078, i8* %46, align 1
  %3079 = xor i32 %3071, %3068
  %3080 = lshr i32 %3079, 4
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  store i8 %3082, i8* %52, align 1
  %3083 = icmp eq i32 %3071, 0
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %55, align 1
  %3085 = lshr i32 %3071, 31
  %3086 = trunc i32 %3085 to i8
  store i8 %3086, i8* %58, align 1
  %3087 = xor i32 %3085, %3070
  %3088 = add nuw nsw i32 %3087, %3070
  %3089 = icmp eq i32 %3088, 2
  %3090 = zext i1 %3089 to i8
  store i8 %3090, i8* %64, align 1
  %.v228 = select i1 %3083, i64 17, i64 32
  %3091 = add i64 %3063, %.v228
  store i64 %3091, i64* %3, align 8
  br i1 %3083, label %block_442740, label %block_.L_44274f

block_442740:                                     ; preds = %block_442707
  %3092 = add i64 %3061, -4188
  %3093 = add i64 %3091, 10
  store i64 %3093, i64* %3, align 8
  %3094 = inttoptr i64 %3092 to i32*
  store i32 70, i32* %3094, align 4
  %3095 = load i64, i64* %3, align 8
  %3096 = add i64 %3095, 47
  br label %block_.L_442779

block_.L_44274f:                                  ; preds = %block_442707
  %3097 = add i64 %3061, -2528
  store i64 %3097, i64* %RDI.i2098, align 8
  %3098 = add i64 %3091, -30527
  %3099 = add i64 %3091, 12
  %3100 = load i64, i64* %6, align 8
  %3101 = add i64 %3100, -8
  %3102 = inttoptr i64 %3101 to i64*
  store i64 %3099, i64* %3102, align 8
  store i64 %3101, i64* %6, align 8
  store i64 %3098, i64* %3, align 8
  %call2_442756 = tail call %struct.Memory* @sub_43b010.max_eyes(%struct.State* nonnull %0, i64 %3098, %struct.Memory* %MEMORY.14)
  %3103 = load i64, i64* %RAX.i2122, align 8
  %3104 = load i64, i64* %RBP.i, align 8
  %3105 = add i64 %3104, -4132
  %3106 = load i64, i64* %3, align 8
  %3107 = add i64 %3106, 6
  store i64 %3107, i64* %3, align 8
  %3108 = trunc i64 %3103 to i32
  %3109 = inttoptr i64 %3105 to i32*
  %3110 = load i32, i32* %3109, align 4
  %3111 = sub i32 %3108, %3110
  %3112 = zext i32 %3111 to i64
  store i64 %3112, i64* %RAX.i2122, align 8
  %3113 = lshr i32 %3111, 31
  %3114 = add i32 %3111, -2
  %3115 = icmp ult i32 %3111, 2
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %39, align 1
  %3117 = and i32 %3114, 255
  %3118 = tail call i32 @llvm.ctpop.i32(i32 %3117)
  %3119 = trunc i32 %3118 to i8
  %3120 = and i8 %3119, 1
  %3121 = xor i8 %3120, 1
  store i8 %3121, i8* %46, align 1
  %3122 = xor i32 %3114, %3111
  %3123 = lshr i32 %3122, 4
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  store i8 %3125, i8* %52, align 1
  %3126 = icmp eq i32 %3114, 0
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %55, align 1
  %3128 = lshr i32 %3114, 31
  %3129 = trunc i32 %3128 to i8
  store i8 %3129, i8* %58, align 1
  %3130 = xor i32 %3128, %3113
  %3131 = add nuw nsw i32 %3130, %3113
  %3132 = icmp eq i32 %3131, 2
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %64, align 1
  %.v229 = select i1 %3126, i64 15, i64 25
  %3134 = add i64 %3106, %.v229
  store i64 %3134, i64* %3, align 8
  br i1 %3126, label %block_44276a, label %block_.L_442774

block_44276a:                                     ; preds = %block_.L_44274f
  %3135 = add i64 %3104, -4188
  %3136 = add i64 %3134, 10
  store i64 %3136, i64* %3, align 8
  %3137 = inttoptr i64 %3135 to i32*
  store i32 60, i32* %3137, align 4
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_442774

block_.L_442774:                                  ; preds = %block_.L_44274f, %block_44276a
  %3138 = phi i64 [ %.pre161, %block_44276a ], [ %3134, %block_.L_44274f ]
  %3139 = add i64 %3138, 5
  store i64 %3139, i64* %3, align 8
  br label %block_.L_442779

block_.L_442779:                                  ; preds = %block_.L_442774, %block_442740
  %storemerge = phi i64 [ %3096, %block_442740 ], [ %3139, %block_.L_442774 ]
  store i64 ptrtoint (%G__0x57e1e9_type* @G__0x57e1e9 to i64), i64* %RAX.i2122, align 8
  %3140 = load i64, i64* %RBP.i, align 8
  %3141 = add i64 %3140, -4200
  %3142 = add i64 %storemerge, 17
  store i64 %3142, i64* %3, align 8
  %3143 = inttoptr i64 %3141 to i64*
  store i64 ptrtoint (%G__0x57e1e9_type* @G__0x57e1e9 to i64), i64* %3143, align 8
  %3144 = load i64, i64* %3, align 8
  %3145 = add i64 %3144, 103
  br label %block_.L_4427f1

block_.L_44278f:                                  ; preds = %block_.L_4426a3
  %3146 = add i64 %3035, -30591
  %3147 = add i64 %3035, 12
  %3148 = load i64, i64* %6, align 8
  %3149 = add i64 %3148, -8
  %3150 = inttoptr i64 %3149 to i64*
  store i64 %3147, i64* %3150, align 8
  store i64 %3149, i64* %6, align 8
  store i64 %3146, i64* %3, align 8
  %call2_442796 = tail call %struct.Memory* @sub_43b010.max_eyes(%struct.State* nonnull %0, i64 %3146, %struct.Memory* %MEMORY.14)
  %3151 = load i32, i32* %EAX.i1917, align 4
  %3152 = load i64, i64* %RBP.i, align 8
  %3153 = add i64 %3152, -4132
  %3154 = load i64, i64* %3, align 8
  %3155 = add i64 %3154, 6
  store i64 %3155, i64* %3, align 8
  %3156 = inttoptr i64 %3153 to i32*
  %3157 = load i32, i32* %3156, align 4
  %3158 = sub i32 %3151, %3157
  %3159 = icmp ult i32 %3151, %3157
  %3160 = zext i1 %3159 to i8
  store i8 %3160, i8* %39, align 1
  %3161 = and i32 %3158, 255
  %3162 = tail call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  store i8 %3165, i8* %46, align 1
  %3166 = xor i32 %3157, %3151
  %3167 = xor i32 %3166, %3158
  %3168 = lshr i32 %3167, 4
  %3169 = trunc i32 %3168 to i8
  %3170 = and i8 %3169, 1
  store i8 %3170, i8* %52, align 1
  %3171 = icmp eq i32 %3158, 0
  %3172 = zext i1 %3171 to i8
  store i8 %3172, i8* %55, align 1
  %3173 = lshr i32 %3158, 31
  %3174 = trunc i32 %3173 to i8
  store i8 %3174, i8* %58, align 1
  %3175 = lshr i32 %3151, 31
  %3176 = lshr i32 %3157, 31
  %3177 = xor i32 %3176, %3175
  %3178 = xor i32 %3173, %3175
  %3179 = add nuw nsw i32 %3178, %3177
  %3180 = icmp eq i32 %3179, 2
  %3181 = zext i1 %3180 to i8
  store i8 %3181, i8* %64, align 1
  %.v253 = select i1 %3171, i64 81, i64 12
  %3182 = add i64 %3154, %.v253
  store i64 %3182, i64* %3, align 8
  br i1 %3171, label %block_.L_4427ec, label %block_4427a7

block_4427a7:                                     ; preds = %block_.L_44278f
  %3183 = add i64 %3152, -2528
  store i64 %3183, i64* %RDI.i2098, align 8
  %3184 = add i64 %3182, -30615
  %3185 = add i64 %3182, 12
  %3186 = load i64, i64* %6, align 8
  %3187 = add i64 %3186, -8
  %3188 = inttoptr i64 %3187 to i64*
  store i64 %3185, i64* %3188, align 8
  store i64 %3187, i64* %6, align 8
  store i64 %3184, i64* %3, align 8
  %call2_4427ae = tail call %struct.Memory* @sub_43b010.max_eyes(%struct.State* nonnull %0, i64 %3184, %struct.Memory* %MEMORY.14)
  %3189 = load i64, i64* %RAX.i2122, align 8
  %3190 = load i64, i64* %RBP.i, align 8
  %3191 = add i64 %3190, -4132
  %3192 = load i64, i64* %3, align 8
  %3193 = add i64 %3192, 6
  store i64 %3193, i64* %3, align 8
  %3194 = trunc i64 %3189 to i32
  %3195 = inttoptr i64 %3191 to i32*
  %3196 = load i32, i32* %3195, align 4
  %3197 = sub i32 %3194, %3196
  %3198 = zext i32 %3197 to i64
  store i64 %3198, i64* %RAX.i2122, align 8
  %3199 = lshr i32 %3197, 31
  %3200 = add i32 %3197, -2
  %3201 = icmp ult i32 %3197, 2
  %3202 = zext i1 %3201 to i8
  store i8 %3202, i8* %39, align 1
  %3203 = and i32 %3200, 255
  %3204 = tail call i32 @llvm.ctpop.i32(i32 %3203)
  %3205 = trunc i32 %3204 to i8
  %3206 = and i8 %3205, 1
  %3207 = xor i8 %3206, 1
  store i8 %3207, i8* %46, align 1
  %3208 = xor i32 %3200, %3197
  %3209 = lshr i32 %3208, 4
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  store i8 %3211, i8* %52, align 1
  %3212 = icmp eq i32 %3200, 0
  %3213 = zext i1 %3212 to i8
  store i8 %3213, i8* %55, align 1
  %3214 = lshr i32 %3200, 31
  %3215 = trunc i32 %3214 to i8
  store i8 %3215, i8* %58, align 1
  %3216 = xor i32 %3214, %3199
  %3217 = add nuw nsw i32 %3216, %3199
  %3218 = icmp eq i32 %3217, 2
  %3219 = zext i1 %3218 to i8
  store i8 %3219, i8* %64, align 1
  %.v187 = select i1 %3212, i64 15, i64 30
  %3220 = add i64 %3192, %.v187
  %3221 = add i64 %3190, -4188
  %3222 = add i64 %3220, 10
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i32*
  br i1 %3212, label %block_4427c2, label %block_.L_4427d1

block_4427c2:                                     ; preds = %block_4427a7
  store i32 40, i32* %3223, align 4
  %3224 = load i64, i64* %3, align 8
  %3225 = add i64 %3224, 15
  store i64 %3225, i64* %3, align 8
  br label %block_.L_4427db

block_.L_4427d1:                                  ; preds = %block_4427a7
  store i32 30, i32* %3223, align 4
  %.pre162 = load i64, i64* %3, align 8
  br label %block_.L_4427db

block_.L_4427db:                                  ; preds = %block_.L_4427d1, %block_4427c2
  %3226 = phi i64 [ %.pre162, %block_.L_4427d1 ], [ %3225, %block_4427c2 ]
  store i64 ptrtoint (%G__0x57e1f4_type* @G__0x57e1f4 to i64), i64* %RAX.i2122, align 8
  %3227 = load i64, i64* %RBP.i, align 8
  %3228 = add i64 %3227, -4200
  %3229 = add i64 %3226, 17
  store i64 %3229, i64* %3, align 8
  %3230 = inttoptr i64 %3228 to i64*
  store i64 ptrtoint (%G__0x57e1f4_type* @G__0x57e1f4 to i64), i64* %3230, align 8
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_4427ec

block_.L_4427ec:                                  ; preds = %block_.L_4427db, %block_.L_44278f
  %3231 = phi i64 [ %.pre163, %block_.L_4427db ], [ %3182, %block_.L_44278f ]
  %3232 = add i64 %3231, 5
  store i64 %3232, i64* %3, align 8
  br label %block_.L_4427f1

block_.L_4427f1:                                  ; preds = %block_.L_4427ec, %block_.L_442779
  %storemerge81 = phi i64 [ %3145, %block_.L_442779 ], [ %3232, %block_.L_4427ec ]
  %3233 = load i64, i64* %RBP.i, align 8
  %3234 = add i64 %3233, -4188
  %3235 = add i64 %storemerge81, 7
  store i64 %3235, i64* %3, align 8
  %3236 = inttoptr i64 %3234 to i32*
  %3237 = load i32, i32* %3236, align 4
  store i8 0, i8* %39, align 1
  %3238 = and i32 %3237, 255
  %3239 = tail call i32 @llvm.ctpop.i32(i32 %3238)
  %3240 = trunc i32 %3239 to i8
  %3241 = and i8 %3240, 1
  %3242 = xor i8 %3241, 1
  store i8 %3242, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3243 = icmp eq i32 %3237, 0
  %3244 = zext i1 %3243 to i8
  store i8 %3244, i8* %55, align 1
  %3245 = lshr i32 %3237, 31
  %3246 = trunc i32 %3245 to i8
  store i8 %3246, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %3247 = icmp ne i8 %3246, 0
  %3248 = or i1 %3243, %3247
  %.v230 = select i1 %3248, i64 1075, i64 13
  %3249 = add i64 %storemerge81, %.v230
  store i64 %3249, i64* %3, align 8
  br i1 %3248, label %block_.L_442c24, label %block_4427fe

block_4427fe:                                     ; preds = %block_.L_4427f1
  %3250 = add i64 %3233, -64
  %3251 = add i64 %3249, 4
  store i64 %3251, i64* %3, align 8
  %3252 = inttoptr i64 %3250 to i32*
  %3253 = load i32, i32* %3252, align 4
  store i8 0, i8* %39, align 1
  %3254 = and i32 %3253, 255
  %3255 = tail call i32 @llvm.ctpop.i32(i32 %3254)
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = xor i8 %3257, 1
  store i8 %3258, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3259 = icmp eq i32 %3253, 0
  %3260 = zext i1 %3259 to i8
  store i8 %3260, i8* %55, align 1
  %3261 = lshr i32 %3253, 31
  %3262 = trunc i32 %3261 to i8
  store i8 %3262, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v231 = select i1 %3259, i64 463, i64 10
  %3263 = add i64 %3249, %.v231
  store i64 %3263, i64* %3, align 8
  br i1 %3259, label %block_.L_4429cd, label %block_442808

block_442808:                                     ; preds = %block_4427fe
  %3264 = add i64 %3233, -4136
  %3265 = add i64 %3263, 7
  store i64 %3265, i64* %3, align 8
  %3266 = inttoptr i64 %3264 to i32*
  %3267 = load i32, i32* %3266, align 4
  store i8 0, i8* %39, align 1
  %3268 = and i32 %3267, 255
  %3269 = tail call i32 @llvm.ctpop.i32(i32 %3268)
  %3270 = trunc i32 %3269 to i8
  %3271 = and i8 %3270, 1
  %3272 = xor i8 %3271, 1
  store i8 %3272, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3273 = icmp eq i32 %3267, 0
  %3274 = zext i1 %3273 to i8
  store i8 %3274, i8* %55, align 1
  %3275 = lshr i32 %3267, 31
  %3276 = trunc i32 %3275 to i8
  store i8 %3276, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v232 = select i1 %3273, i64 453, i64 13
  %3277 = add i64 %3263, %.v232
  store i64 %3277, i64* %3, align 8
  br i1 %3273, label %block_.L_4429cd, label %block_442815

block_442815:                                     ; preds = %block_442808
  %3278 = add i64 %3277, 7
  store i64 %3278, i64* %3, align 8
  %3279 = load i32, i32* %3266, align 4
  %3280 = sext i32 %3279 to i64
  store i64 %3280, i64* %RAX.i2122, align 8
  %3281 = shl nsw i64 %3280, 2
  %3282 = add i64 %3233, -2512
  %3283 = add i64 %3282, %3281
  %3284 = add i64 %3277, 15
  store i64 %3284, i64* %3, align 8
  %3285 = inttoptr i64 %3283 to i32*
  %3286 = load i32, i32* %3285, align 4
  store i8 0, i8* %39, align 1
  %3287 = and i32 %3286, 255
  %3288 = tail call i32 @llvm.ctpop.i32(i32 %3287)
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  store i8 %3291, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3292 = icmp eq i32 %3286, 0
  %3293 = zext i1 %3292 to i8
  store i8 %3293, i8* %55, align 1
  %3294 = lshr i32 %3286, 31
  %3295 = trunc i32 %3294 to i8
  store i8 %3295, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %3296 = icmp ne i8 %3295, 0
  %3297 = or i1 %3292, %3296
  %.v233 = select i1 %3297, i64 75, i64 21
  %3298 = add i64 %3277, %.v233
  store i64 %3298, i64* %3, align 8
  br i1 %3297, label %block_.L_442860, label %block_44282a

block_44282a:                                     ; preds = %block_442815
  %3299 = add i64 %3298, 7
  store i64 %3299, i64* %3, align 8
  %3300 = load i32, i32* %3266, align 4
  %3301 = sext i32 %3300 to i64
  store i64 %3301, i64* %RAX.i2122, align 8
  %3302 = shl nsw i64 %3301, 2
  %3303 = add i64 %3282, %3302
  %3304 = add i64 %3298, 14
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3303 to i32*
  %3306 = load i32, i32* %3305, align 4
  %3307 = zext i32 %3306 to i64
  store i64 %3307, i64* %RCX.i2073, align 8
  %3308 = add i64 %3298, 20
  store i64 %3308, i64* %3, align 8
  %3309 = load i32, i32* %3236, align 4
  %3310 = add i32 %3309, %3306
  %3311 = zext i32 %3310 to i64
  store i64 %3311, i64* %RCX.i2073, align 8
  %3312 = icmp ult i32 %3310, %3306
  %3313 = icmp ult i32 %3310, %3309
  %3314 = or i1 %3312, %3313
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %39, align 1
  %3316 = and i32 %3310, 255
  %3317 = tail call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  store i8 %3320, i8* %46, align 1
  %3321 = xor i32 %3309, %3306
  %3322 = xor i32 %3321, %3310
  %3323 = lshr i32 %3322, 4
  %3324 = trunc i32 %3323 to i8
  %3325 = and i8 %3324, 1
  store i8 %3325, i8* %52, align 1
  %3326 = icmp eq i32 %3310, 0
  %3327 = zext i1 %3326 to i8
  store i8 %3327, i8* %55, align 1
  %3328 = lshr i32 %3310, 31
  %3329 = trunc i32 %3328 to i8
  store i8 %3329, i8* %58, align 1
  %3330 = lshr i32 %3306, 31
  %3331 = lshr i32 %3309, 31
  %3332 = xor i32 %3328, %3330
  %3333 = xor i32 %3328, %3331
  %3334 = add nuw nsw i32 %3332, %3333
  %3335 = icmp eq i32 %3334, 2
  %3336 = zext i1 %3335 to i8
  store i8 %3336, i8* %64, align 1
  %3337 = add i64 %3298, 26
  store i64 %3337, i64* %3, align 8
  store i32 %3310, i32* %3236, align 4
  %3338 = load i64, i64* %RBP.i, align 8
  %3339 = add i64 %3338, -4188
  %3340 = load i64, i64* %3, align 8
  %3341 = add i64 %3340, 7
  store i64 %3341, i64* %3, align 8
  %3342 = inttoptr i64 %3339 to i32*
  %3343 = load i32, i32* %3342, align 4
  %3344 = add i32 %3343, -98
  %3345 = icmp ult i32 %3343, 98
  %3346 = zext i1 %3345 to i8
  store i8 %3346, i8* %39, align 1
  %3347 = and i32 %3344, 255
  %3348 = tail call i32 @llvm.ctpop.i32(i32 %3347)
  %3349 = trunc i32 %3348 to i8
  %3350 = and i8 %3349, 1
  %3351 = xor i8 %3350, 1
  store i8 %3351, i8* %46, align 1
  %3352 = xor i32 %3344, %3343
  %3353 = lshr i32 %3352, 4
  %3354 = trunc i32 %3353 to i8
  %3355 = and i8 %3354, 1
  store i8 %3355, i8* %52, align 1
  %3356 = icmp eq i32 %3344, 0
  %3357 = zext i1 %3356 to i8
  store i8 %3357, i8* %55, align 1
  %3358 = lshr i32 %3344, 31
  %3359 = trunc i32 %3358 to i8
  store i8 %3359, i8* %58, align 1
  %3360 = lshr i32 %3343, 31
  %3361 = xor i32 %3358, %3360
  %3362 = add nuw nsw i32 %3361, %3360
  %3363 = icmp eq i32 %3362, 2
  %3364 = zext i1 %3363 to i8
  store i8 %3364, i8* %64, align 1
  %3365 = icmp ne i8 %3359, 0
  %3366 = xor i1 %3365, %3363
  %3367 = or i1 %3356, %3366
  %.v234 = select i1 %3367, i64 23, i64 13
  %3368 = add i64 %3340, %.v234
  store i64 %3368, i64* %3, align 8
  br i1 %3367, label %block_.L_44285b, label %block_442851

block_442851:                                     ; preds = %block_44282a
  %3369 = add i64 %3368, 10
  store i64 %3369, i64* %3, align 8
  store i32 98, i32* %3342, align 4
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_44285b

block_.L_44285b:                                  ; preds = %block_442851, %block_44282a
  %3370 = phi i64 [ %.pre164, %block_442851 ], [ %3368, %block_44282a ]
  %3371 = add i64 %3370, 5
  store i64 %3371, i64* %3, align 8
  br label %block_.L_442860

block_.L_442860:                                  ; preds = %block_.L_44285b, %block_442815
  %3372 = phi i64 [ %3371, %block_.L_44285b ], [ %3298, %block_442815 ]
  %3373 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %39, align 1
  %3374 = and i32 %3373, 255
  %3375 = tail call i32 @llvm.ctpop.i32(i32 %3374)
  %3376 = trunc i32 %3375 to i8
  %3377 = and i8 %3376, 1
  %3378 = xor i8 %3377, 1
  store i8 %3378, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3379 = icmp eq i32 %3373, 0
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %55, align 1
  %3381 = lshr i32 %3373, 31
  %3382 = trunc i32 %3381 to i8
  store i8 %3382, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v235 = select i1 %3379, i64 14, i64 19
  %3383 = add i64 %3372, %.v235
  store i64 %3383, i64* %3, align 8
  br i1 %3379, label %block_44286e, label %block_.L_442873

block_44286e:                                     ; preds = %block_.L_442860
  %3384 = add i64 %3383, 148
  store i64 %3384, i64* %3, align 8
  br label %block_.L_442902

block_.L_442873:                                  ; preds = %block_.L_442860
  %3385 = load i64, i64* %RBP.i, align 8
  %3386 = add i64 %3385, -2528
  store i64 %3386, i64* %RDI.i2098, align 8
  %3387 = add i64 %3385, -4200
  %3388 = add i64 %3383, 14
  store i64 %3388, i64* %3, align 8
  %3389 = inttoptr i64 %3387 to i64*
  %3390 = load i64, i64* %3389, align 8
  store i64 %3390, i64* %RSI.i2095, align 8
  %3391 = add i64 %3385, -4136
  %3392 = add i64 %3383, 20
  store i64 %3392, i64* %3, align 8
  %3393 = inttoptr i64 %3391 to i32*
  %3394 = load i32, i32* %3393, align 4
  %3395 = zext i32 %3394 to i64
  store i64 %3395, i64* %RDX.i2039, align 8
  %3396 = add i64 %3385, -4188
  %3397 = add i64 %3383, 26
  store i64 %3397, i64* %3, align 8
  %3398 = inttoptr i64 %3396 to i32*
  %3399 = load i32, i32* %3398, align 4
  %3400 = zext i32 %3399 to i64
  store i64 %3400, i64* %RCX.i2073, align 8
  %3401 = add i64 %3385, -4184
  %3402 = add i64 %3383, 33
  store i64 %3402, i64* %3, align 8
  %3403 = inttoptr i64 %3401 to i32*
  %3404 = load i32, i32* %3403, align 4
  %3405 = zext i32 %3404 to i64
  store i64 %3405, i64* %R8.i2087, align 8
  %3406 = add i64 %3385, -4292
  %3407 = add i64 %3383, 40
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3406 to i32*
  store i32 %3404, i32* %3408, align 4
  %3409 = load i64, i64* %RBP.i, align 8
  %3410 = add i64 %3409, -4304
  %3411 = load i64, i64* %RSI.i2095, align 8
  %3412 = load i64, i64* %3, align 8
  %3413 = add i64 %3412, 7
  store i64 %3413, i64* %3, align 8
  %3414 = inttoptr i64 %3410 to i64*
  store i64 %3411, i64* %3414, align 8
  %3415 = load i64, i64* %RBP.i, align 8
  %3416 = add i64 %3415, -4308
  %3417 = load i32, i32* %EDX.i2092, align 4
  %3418 = load i64, i64* %3, align 8
  %3419 = add i64 %3418, 6
  store i64 %3419, i64* %3, align 8
  %3420 = inttoptr i64 %3416 to i32*
  store i32 %3417, i32* %3420, align 4
  %3421 = load i64, i64* %RBP.i, align 8
  %3422 = add i64 %3421, -4312
  %3423 = load i32, i32* %ECX.i2089, align 4
  %3424 = load i64, i64* %3, align 8
  %3425 = add i64 %3424, 6
  store i64 %3425, i64* %3, align 8
  %3426 = inttoptr i64 %3422 to i32*
  store i32 %3423, i32* %3426, align 4
  %3427 = load i64, i64* %3, align 8
  %3428 = add i64 %3427, -28062
  %3429 = add i64 %3427, 5
  %3430 = load i64, i64* %6, align 8
  %3431 = add i64 %3430, -8
  %3432 = inttoptr i64 %3431 to i64*
  store i64 %3429, i64* %3432, align 8
  store i64 %3431, i64* %6, align 8
  store i64 %3428, i64* %3, align 8
  %call2_4428ae = tail call %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* nonnull %0, i64 %3428, %struct.Memory* %MEMORY.14)
  %3433 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57e207_type* @G__0x57e207 to i64), i64* %RDI.i2098, align 8
  %3434 = load i64, i64* %RBP.i, align 8
  %3435 = add i64 %3434, -4132
  %3436 = add i64 %3433, 16
  store i64 %3436, i64* %3, align 8
  %3437 = inttoptr i64 %3435 to i32*
  %3438 = load i32, i32* %3437, align 4
  %3439 = zext i32 %3438 to i64
  store i64 %3439, i64* %RCX.i2073, align 8
  %3440 = add i64 %3434, -4304
  %3441 = add i64 %3433, 23
  store i64 %3441, i64* %3, align 8
  %3442 = inttoptr i64 %3440 to i64*
  %3443 = load i64, i64* %3442, align 8
  store i64 %3443, i64* %RSI.i2095, align 8
  %3444 = add i64 %3434, -4308
  %3445 = add i64 %3433, 29
  store i64 %3445, i64* %3, align 8
  %3446 = inttoptr i64 %3444 to i32*
  %3447 = load i32, i32* %3446, align 4
  %3448 = zext i32 %3447 to i64
  store i64 %3448, i64* %RDX.i2039, align 8
  %3449 = add i64 %3434, -4312
  %3450 = add i64 %3433, 36
  store i64 %3450, i64* %3, align 8
  %3451 = inttoptr i64 %3449 to i32*
  %3452 = load i32, i32* %3451, align 4
  %3453 = zext i32 %3452 to i64
  store i64 %3453, i64* %R8.i2087, align 8
  %3454 = add i64 %3434, -4316
  %3455 = add i64 %3433, 42
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3454 to i32*
  store i32 %3438, i32* %3456, align 4
  %3457 = load i32, i32* %R8D.i1604, align 4
  %3458 = zext i32 %3457 to i64
  %3459 = load i64, i64* %3, align 8
  store i64 %3458, i64* %RCX.i2073, align 8
  %3460 = load i64, i64* %RBP.i, align 8
  %3461 = add i64 %3460, -4292
  %3462 = add i64 %3459, 10
  store i64 %3462, i64* %3, align 8
  %3463 = inttoptr i64 %3461 to i32*
  %3464 = load i32, i32* %3463, align 4
  %3465 = zext i32 %3464 to i64
  store i64 %3465, i64* %R8.i2087, align 8
  %3466 = load i64, i64* %RAX.i2122, align 8
  store i64 %3466, i64* %R9.i2084, align 8
  %3467 = add i64 %3460, -4316
  %3468 = add i64 %3459, 20
  store i64 %3468, i64* %3, align 8
  %3469 = inttoptr i64 %3467 to i32*
  %3470 = load i32, i32* %3469, align 4
  %3471 = zext i32 %3470 to i64
  store i64 %3471, i64* %R10.i2120, align 8
  %3472 = load i32*, i32** %1540, align 8
  %3473 = add i64 %3459, 24
  store i64 %3473, i64* %3, align 8
  store i32 %3470, i32* %3472, align 4
  %3474 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i795, align 1
  %3475 = add i64 %3474, 62651
  %3476 = add i64 %3474, 7
  %3477 = load i64, i64* %6, align 8
  %3478 = add i64 %3477, -8
  %3479 = inttoptr i64 %3478 to i64*
  store i64 %3476, i64* %3479, align 8
  store i64 %3478, i64* %6, align 8
  store i64 %3475, i64* %3, align 8
  %call2_4428f7 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3475, %struct.Memory* %call2_4428ae)
  %3480 = load i64, i64* %RBP.i, align 8
  %3481 = add i64 %3480, -4320
  %3482 = load i32, i32* %EAX.i1917, align 4
  %3483 = load i64, i64* %3, align 8
  %3484 = add i64 %3483, 6
  store i64 %3484, i64* %3, align 8
  %3485 = inttoptr i64 %3481 to i32*
  store i32 %3482, i32* %3485, align 4
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_442902

block_.L_442902:                                  ; preds = %block_.L_442873, %block_44286e
  %3486 = phi i64 [ %.pre165, %block_.L_442873 ], [ %3384, %block_44286e ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_4428f7, %block_.L_442873 ], [ %MEMORY.14, %block_44286e ]
  %3487 = load i64, i64* %RBP.i, align 8
  %3488 = add i64 %3487, -112
  %3489 = add i64 %3486, 4
  store i64 %3489, i64* %3, align 8
  %3490 = inttoptr i64 %3488 to i64*
  %3491 = load i64, i64* %3490, align 8
  store i64 %3491, i64* %RAX.i2122, align 8
  %3492 = add i64 %3487, -4136
  %3493 = add i64 %3486, 11
  store i64 %3493, i64* %3, align 8
  %3494 = inttoptr i64 %3492 to i32*
  %3495 = load i32, i32* %3494, align 4
  %3496 = sext i32 %3495 to i64
  %3497 = mul nsw i64 %3496, 36
  store i64 %3497, i64* %RCX.i2073, align 8
  %3498 = lshr i64 %3497, 63
  %3499 = add i64 %3497, %3491
  store i64 %3499, i64* %RAX.i2122, align 8
  %3500 = icmp ult i64 %3499, %3491
  %3501 = icmp ult i64 %3499, %3497
  %3502 = or i1 %3500, %3501
  %3503 = zext i1 %3502 to i8
  store i8 %3503, i8* %39, align 1
  %3504 = trunc i64 %3499 to i32
  %3505 = and i32 %3504, 255
  %3506 = tail call i32 @llvm.ctpop.i32(i32 %3505)
  %3507 = trunc i32 %3506 to i8
  %3508 = and i8 %3507, 1
  %3509 = xor i8 %3508, 1
  store i8 %3509, i8* %46, align 1
  %3510 = xor i64 %3497, %3491
  %3511 = xor i64 %3510, %3499
  %3512 = lshr i64 %3511, 4
  %3513 = trunc i64 %3512 to i8
  %3514 = and i8 %3513, 1
  store i8 %3514, i8* %52, align 1
  %3515 = icmp eq i64 %3499, 0
  %3516 = zext i1 %3515 to i8
  store i8 %3516, i8* %55, align 1
  %3517 = lshr i64 %3499, 63
  %3518 = trunc i64 %3517 to i8
  store i8 %3518, i8* %58, align 1
  %3519 = lshr i64 %3491, 63
  %3520 = xor i64 %3517, %3519
  %3521 = xor i64 %3517, %3498
  %3522 = add nuw nsw i64 %3520, %3521
  %3523 = icmp eq i64 %3522, 2
  %3524 = zext i1 %3523 to i8
  store i8 %3524, i8* %64, align 1
  %3525 = add i64 %3499, 28
  %3526 = add i64 %3486, 22
  store i64 %3526, i64* %3, align 8
  %3527 = inttoptr i64 %3525 to i8*
  %3528 = load i8, i8* %3527, align 1
  %3529 = sext i8 %3528 to i64
  %3530 = and i64 %3529, 4294967295
  store i64 %3530, i64* %RDX.i2039, align 8
  %3531 = sext i8 %3528 to i32
  store i8 0, i8* %39, align 1
  %3532 = and i32 %3531, 255
  %3533 = tail call i32 @llvm.ctpop.i32(i32 %3532)
  %3534 = trunc i32 %3533 to i8
  %3535 = and i8 %3534, 1
  %3536 = xor i8 %3535, 1
  store i8 %3536, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3537 = icmp eq i8 %3528, 0
  %3538 = zext i1 %3537 to i8
  store i8 %3538, i8* %55, align 1
  %3539 = lshr i32 %3531, 31
  %3540 = trunc i32 %3539 to i8
  store i8 %3540, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v236 = select i1 %3537, i64 114, i64 31
  %3541 = add i64 %3486, %.v236
  store i64 %3541, i64* %3, align 8
  br i1 %3537, label %block_.L_442974, label %block_442921

block_442921:                                     ; preds = %block_.L_442902
  %3542 = load i64, i64* %RBP.i, align 8
  %3543 = add i64 %3542, -4136
  store i64 %3543, i64* %RSI.i2095, align 8
  store i64 1, i64* %RDX.i2039, align 8
  %3544 = add i64 %3542, -48
  %3545 = add i64 %3541, 16
  store i64 %3545, i64* %3, align 8
  %3546 = inttoptr i64 %3544 to i64*
  %3547 = load i64, i64* %3546, align 8
  store i64 %3547, i64* %RDI.i2098, align 8
  %3548 = add i64 %3541, 10959
  %3549 = add i64 %3541, 21
  %3550 = load i64, i64* %6, align 8
  %3551 = add i64 %3550, -8
  %3552 = inttoptr i64 %3551 to i64*
  store i64 %3549, i64* %3552, align 8
  store i64 %3551, i64* %6, align 8
  store i64 %3548, i64* %3, align 8
  %call2_442931 = tail call %struct.Memory* @sub_4453f0.modify_stupid_eye_vital_point(%struct.State* nonnull %0, i64 %3548, %struct.Memory* %MEMORY.29)
  %3553 = load i32, i32* %EAX.i1917, align 4
  %3554 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %3555 = and i32 %3553, 255
  %3556 = tail call i32 @llvm.ctpop.i32(i32 %3555)
  %3557 = trunc i32 %3556 to i8
  %3558 = and i8 %3557, 1
  %3559 = xor i8 %3558, 1
  store i8 %3559, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3560 = icmp eq i32 %3553, 0
  %3561 = zext i1 %3560 to i8
  store i8 %3561, i8* %55, align 1
  %3562 = lshr i32 %3553, 31
  %3563 = trunc i32 %3562 to i8
  store i8 %3563, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v237 = select i1 %3560, i64 62, i64 9
  %3564 = add i64 %3554, %.v237
  store i64 %3564, i64* %3, align 8
  br i1 %3560, label %block_.L_442974, label %block_44293f

block_44293f:                                     ; preds = %block_442921
  %3565 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %39, align 1
  %3566 = and i32 %3565, 255
  %3567 = tail call i32 @llvm.ctpop.i32(i32 %3566)
  %3568 = trunc i32 %3567 to i8
  %3569 = and i8 %3568, 1
  %3570 = xor i8 %3569, 1
  store i8 %3570, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3571 = icmp eq i32 %3565, 0
  %3572 = zext i1 %3571 to i8
  store i8 %3572, i8* %55, align 1
  %3573 = lshr i32 %3565, 31
  %3574 = trunc i32 %3573 to i8
  store i8 %3574, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v238 = select i1 %3571, i64 14, i64 19
  %3575 = add i64 %3564, %.v238
  store i64 %3575, i64* %3, align 8
  br i1 %3571, label %block_44294d, label %block_.L_442952

block_44294d:                                     ; preds = %block_44293f
  %3576 = add i64 %3575, 34
  store i64 %3576, i64* %3, align 8
  br label %block_.L_44296f

block_.L_442952:                                  ; preds = %block_44293f
  store i64 ptrtoint (%G__0x57e247_type* @G__0x57e247 to i64), i64* %RDI.i2098, align 8
  %3577 = load i64, i64* %RBP.i, align 8
  %3578 = add i64 %3577, -4136
  %3579 = add i64 %3575, 16
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i32*
  %3581 = load i32, i32* %3580, align 4
  %3582 = zext i32 %3581 to i64
  store i64 %3582, i64* %RSI.i2095, align 8
  store i8 0, i8* %AL.i795, align 1
  %3583 = add i64 %3575, 62558
  %3584 = add i64 %3575, 23
  %3585 = load i64, i64* %6, align 8
  %3586 = add i64 %3585, -8
  %3587 = inttoptr i64 %3586 to i64*
  store i64 %3584, i64* %3587, align 8
  store i64 %3586, i64* %6, align 8
  store i64 %3583, i64* %3, align 8
  %call2_442964 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3583, %struct.Memory* %call2_442931)
  %3588 = load i64, i64* %RBP.i, align 8
  %3589 = add i64 %3588, -4324
  %3590 = load i32, i32* %EAX.i1917, align 4
  %3591 = load i64, i64* %3, align 8
  %3592 = add i64 %3591, 6
  store i64 %3592, i64* %3, align 8
  %3593 = inttoptr i64 %3589 to i32*
  store i32 %3590, i32* %3593, align 4
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_44296f

block_.L_44296f:                                  ; preds = %block_.L_442952, %block_44294d
  %3594 = phi i64 [ %.pre166, %block_.L_442952 ], [ %3576, %block_44294d ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_442964, %block_.L_442952 ], [ %call2_442931, %block_44294d ]
  %3595 = add i64 %3594, 5
  store i64 %3595, i64* %3, align 8
  br label %block_.L_442974

block_.L_442974:                                  ; preds = %block_.L_44296f, %block_442921, %block_.L_442902
  %3596 = phi i64 [ %3541, %block_.L_442902 ], [ %3564, %block_442921 ], [ %3595, %block_.L_44296f ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.29, %block_.L_442902 ], [ %call2_442931, %block_442921 ], [ %MEMORY.30, %block_.L_44296f ]
  store i64 1, i64* %R8.i2087, align 8
  store i64 0, i64* %R9.i2084, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %3597 = load i64, i64* %RBP.i, align 8
  %3598 = add i64 %3597, -72
  %3599 = add i64 %3596, 13
  store i64 %3599, i64* %3, align 8
  %3600 = inttoptr i64 %3598 to i64*
  %3601 = load i64, i64* %3600, align 8
  store i64 %3601, i64* %RDI.i2098, align 8
  %3602 = add i64 %3597, -4136
  %3603 = add i64 %3596, 19
  store i64 %3603, i64* %3, align 8
  %3604 = inttoptr i64 %3602 to i32*
  %3605 = load i32, i32* %3604, align 4
  %3606 = zext i32 %3605 to i64
  store i64 %3606, i64* %RSI.i2095, align 8
  %3607 = add i64 %3597, -4188
  %3608 = add i64 %3596, 25
  store i64 %3608, i64* %3, align 8
  %3609 = inttoptr i64 %3607 to i32*
  %3610 = load i32, i32* %3609, align 4
  %3611 = zext i32 %3610 to i64
  store i64 %3611, i64* %RDX.i2039, align 8
  %3612 = add i64 %3597, -4200
  %3613 = add i64 %3596, 32
  store i64 %3613, i64* %3, align 8
  %3614 = inttoptr i64 %3612 to i64*
  %3615 = load i64, i64* %3614, align 8
  store i64 %3615, i64* %RCX.i2073, align 8
  %3616 = load i32*, i32** %1540, align 8
  %3617 = add i64 %3596, 39
  store i64 %3617, i64* %3, align 8
  store i32 0, i32* %3616, align 4
  %3618 = load i64, i64* %3, align 8
  %3619 = add i64 %3618, 6293
  %3620 = add i64 %3618, 5
  %3621 = load i64, i64* %6, align 8
  %3622 = add i64 %3621, -8
  %3623 = inttoptr i64 %3622 to i64*
  store i64 %3620, i64* %3623, align 8
  store i64 %3622, i64* %6, align 8
  store i64 %3619, i64* %3, align 8
  %call2_44299b = tail call %struct.Memory* @sub_444230.owl_add_move(%struct.State* nonnull %0, i64 %3619, %struct.Memory* %MEMORY.31)
  %3624 = load i64, i64* %RBP.i, align 8
  %3625 = add i64 %3624, -4188
  %3626 = load i64, i64* %3, align 8
  %3627 = add i64 %3626, 6
  store i64 %3627, i64* %3, align 8
  %3628 = inttoptr i64 %3625 to i32*
  %3629 = load i32, i32* %3628, align 4
  %3630 = zext i32 %3629 to i64
  store i64 %3630, i64* %RDX.i2039, align 8
  %3631 = add i64 %3624, -4136
  %3632 = add i64 %3626, 13
  store i64 %3632, i64* %3, align 8
  %3633 = inttoptr i64 %3631 to i32*
  %3634 = load i32, i32* %3633, align 4
  %3635 = sext i32 %3634 to i64
  store i64 %3635, i64* %RCX.i2073, align 8
  %3636 = shl nsw i64 %3635, 2
  %3637 = add i64 %3624, -2512
  %3638 = add i64 %3637, %3636
  %3639 = add i64 %3626, 20
  store i64 %3639, i64* %3, align 8
  %3640 = inttoptr i64 %3638 to i32*
  store i32 %3629, i32* %3640, align 4
  %3641 = load i64, i64* %RBP.i, align 8
  %3642 = add i64 %3641, -4136
  %3643 = load i64, i64* %3, align 8
  %3644 = add i64 %3643, 6
  store i64 %3644, i64* %3, align 8
  %3645 = inttoptr i64 %3642 to i32*
  %3646 = load i32, i32* %3645, align 4
  %3647 = zext i32 %3646 to i64
  store i64 %3647, i64* %RDX.i2039, align 8
  %3648 = add i64 %3641, -4164
  %3649 = add i64 %3643, 13
  store i64 %3649, i64* %3, align 8
  %3650 = inttoptr i64 %3648 to i32*
  %3651 = load i32, i32* %3650, align 4
  %3652 = sext i32 %3651 to i64
  store i64 %3652, i64* %RCX.i2073, align 8
  %3653 = shl nsw i64 %3652, 2
  %3654 = add i64 %3641, -4128
  %3655 = add i64 %3654, %3653
  %3656 = add i64 %3643, 20
  store i64 %3656, i64* %3, align 8
  %3657 = inttoptr i64 %3655 to i32*
  store i32 %3646, i32* %3657, align 4
  %3658 = load i64, i64* %3, align 8
  %3659 = add i64 %3658, 599
  br label %block_.L_442c1f

block_.L_4429cd:                                  ; preds = %block_442808, %block_4427fe
  %3660 = phi i64 [ %3277, %block_442808 ], [ %3263, %block_4427fe ]
  %3661 = add i64 %3660, 4
  store i64 %3661, i64* %3, align 8
  %3662 = load i32, i32* %3252, align 4
  store i8 0, i8* %39, align 1
  %3663 = and i32 %3662, 255
  %3664 = tail call i32 @llvm.ctpop.i32(i32 %3663)
  %3665 = trunc i32 %3664 to i8
  %3666 = and i8 %3665, 1
  %3667 = xor i8 %3666, 1
  store i8 %3667, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3668 = icmp eq i32 %3662, 0
  %3669 = zext i1 %3668 to i8
  store i8 %3669, i8* %55, align 1
  %3670 = lshr i32 %3662, 31
  %3671 = trunc i32 %3670 to i8
  store i8 %3671, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v239 = select i1 %3668, i64 10, i64 589
  %3672 = add i64 %3660, %.v239
  store i64 %3672, i64* %3, align 8
  br i1 %3668, label %block_4429d7, label %block_.L_442c1a

block_4429d7:                                     ; preds = %block_.L_4429cd
  %3673 = add i64 %3233, -4140
  %3674 = add i64 %3672, 7
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i32*
  %3676 = load i32, i32* %3675, align 4
  store i8 0, i8* %39, align 1
  %3677 = and i32 %3676, 255
  %3678 = tail call i32 @llvm.ctpop.i32(i32 %3677)
  %3679 = trunc i32 %3678 to i8
  %3680 = and i8 %3679, 1
  %3681 = xor i8 %3680, 1
  store i8 %3681, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3682 = icmp eq i32 %3676, 0
  %3683 = zext i1 %3682 to i8
  store i8 %3683, i8* %55, align 1
  %3684 = lshr i32 %3676, 31
  %3685 = trunc i32 %3684 to i8
  store i8 %3685, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v240 = select i1 %3682, i64 579, i64 13
  %3686 = add i64 %3672, %.v240
  store i64 %3686, i64* %3, align 8
  br i1 %3682, label %block_.L_442c1a, label %block_4429e4

block_4429e4:                                     ; preds = %block_4429d7
  %3687 = add i64 %3686, 7
  store i64 %3687, i64* %3, align 8
  %3688 = load i32, i32* %3675, align 4
  %3689 = sext i32 %3688 to i64
  store i64 %3689, i64* %RAX.i2122, align 8
  %3690 = add nsw i64 %3689, 12099168
  %3691 = add i64 %3686, 15
  store i64 %3691, i64* %3, align 8
  %3692 = inttoptr i64 %3690 to i8*
  %3693 = load i8, i8* %3692, align 1
  %3694 = zext i8 %3693 to i64
  store i64 %3694, i64* %RCX.i2073, align 8
  %3695 = zext i8 %3693 to i32
  store i8 0, i8* %39, align 1
  %3696 = tail call i32 @llvm.ctpop.i32(i32 %3695)
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  %3699 = xor i8 %3698, 1
  store i8 %3699, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3700 = icmp eq i8 %3693, 0
  %3701 = zext i1 %3700 to i8
  store i8 %3701, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v241 = select i1 %3700, i64 24, i64 566
  %3702 = add i64 %3686, %.v241
  store i64 %3702, i64* %3, align 8
  br i1 %3700, label %block_4429fc, label %block_.L_442c1a

block_4429fc:                                     ; preds = %block_4429e4
  %3703 = add i64 %3702, 6
  store i64 %3703, i64* %3, align 8
  %3704 = load i32, i32* %3675, align 4
  %3705 = zext i32 %3704 to i64
  store i64 %3705, i64* %RDI.i2098, align 8
  %3706 = add i64 %3233, -48
  %3707 = add i64 %3702, 10
  store i64 %3707, i64* %3, align 8
  %3708 = inttoptr i64 %3706 to i64*
  %3709 = load i64, i64* %3708, align 8
  store i64 %3709, i64* %RSI.i2095, align 8
  %3710 = add i64 %3702, 5268
  %3711 = add i64 %3702, 15
  %3712 = load i64, i64* %6, align 8
  %3713 = add i64 %3712, -8
  %3714 = inttoptr i64 %3713 to i64*
  store i64 %3711, i64* %3714, align 8
  store i64 %3713, i64* %6, align 8
  store i64 %3710, i64* %3, align 8
  %call2_442a06 = tail call %struct.Memory* @sub_443e90.liberty_of_goal(%struct.State* nonnull %0, i64 %3710, %struct.Memory* %MEMORY.14)
  %3715 = load i32, i32* %EAX.i1917, align 4
  %3716 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %3717 = and i32 %3715, 255
  %3718 = tail call i32 @llvm.ctpop.i32(i32 %3717)
  %3719 = trunc i32 %3718 to i8
  %3720 = and i8 %3719, 1
  %3721 = xor i8 %3720, 1
  store i8 %3721, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3722 = icmp eq i32 %3715, 0
  %3723 = zext i1 %3722 to i8
  store i8 %3723, i8* %55, align 1
  %3724 = lshr i32 %3715, 31
  %3725 = trunc i32 %3724 to i8
  store i8 %3725, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v242 = select i1 %3722, i64 82, i64 9
  %3726 = add i64 %3716, %.v242
  store i64 %3726, i64* %3, align 8
  br i1 %3722, label %block_.L_442a5d, label %block_442a14

block_442a14:                                     ; preds = %block_4429fc
  %3727 = load i64, i64* %RBP.i, align 8
  %3728 = add i64 %3727, -4140
  %3729 = add i64 %3726, 6
  store i64 %3729, i64* %3, align 8
  %3730 = inttoptr i64 %3728 to i32*
  %3731 = load i32, i32* %3730, align 4
  %3732 = zext i32 %3731 to i64
  store i64 %3732, i64* %RDI.i2098, align 8
  %3733 = add i64 %3727, -100
  %3734 = add i64 %3726, 9
  store i64 %3734, i64* %3, align 8
  %3735 = inttoptr i64 %3733 to i32*
  %3736 = load i32, i32* %3735, align 4
  %3737 = zext i32 %3736 to i64
  store i64 %3737, i64* %RSI.i2095, align 8
  %3738 = add i64 %3726, -190324
  %3739 = add i64 %3726, 14
  %3740 = load i64, i64* %6, align 8
  %3741 = add i64 %3740, -8
  %3742 = inttoptr i64 %3741 to i64*
  store i64 %3739, i64* %3742, align 8
  store i64 %3741, i64* %6, align 8
  store i64 %3738, i64* %3, align 8
  %call2_442a1d = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %3738, %struct.Memory* %call2_442a06)
  %3743 = load i32, i32* %EAX.i1917, align 4
  %3744 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %3745 = and i32 %3743, 255
  %3746 = tail call i32 @llvm.ctpop.i32(i32 %3745)
  %3747 = trunc i32 %3746 to i8
  %3748 = and i8 %3747, 1
  %3749 = xor i8 %3748, 1
  store i8 %3749, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3750 = icmp eq i32 %3743, 0
  %3751 = zext i1 %3750 to i8
  store i8 %3751, i8* %55, align 1
  %3752 = lshr i32 %3743, 31
  %3753 = trunc i32 %3752 to i8
  store i8 %3753, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v243 = select i1 %3750, i64 59, i64 9
  %3754 = add i64 %3744, %.v243
  store i64 %3754, i64* %3, align 8
  br i1 %3750, label %block_.L_442a5d, label %block_442a2b

block_442a2b:                                     ; preds = %block_442a14
  store i64 0, i64* %RAX.i2122, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %RDX.i2039, align 8
  %3755 = load i64, i64* %RBP.i, align 8
  %3756 = add i64 %3755, -4140
  %3757 = add i64 %3754, 10
  store i64 %3757, i64* %3, align 8
  %3758 = inttoptr i64 %3756 to i32*
  %3759 = load i32, i32* %3758, align 4
  %3760 = zext i32 %3759 to i64
  store i64 %3760, i64* %RDI.i2098, align 8
  %3761 = add i64 %3755, -100
  %3762 = add i64 %3754, 13
  store i64 %3762, i64* %3, align 8
  %3763 = inttoptr i64 %3761 to i32*
  %3764 = load i32, i32* %3763, align 4
  %3765 = zext i32 %3764 to i64
  store i64 %3765, i64* %RSI.i2095, align 8
  %3766 = add i64 %3754, -210987
  %3767 = add i64 %3754, 18
  %3768 = load i64, i64* %6, align 8
  %3769 = add i64 %3768, -8
  %3770 = inttoptr i64 %3769 to i64*
  store i64 %3767, i64* %3770, align 8
  store i64 %3769, i64* %6, align 8
  store i64 %3766, i64* %3, align 8
  %call2_442a38 = tail call %struct.Memory* @sub_40f200.is_ko(%struct.State* nonnull %0, i64 %3766, %struct.Memory* %call2_442a1d)
  %3771 = load i32, i32* %EAX.i1917, align 4
  %3772 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %3773 = and i32 %3771, 255
  %3774 = tail call i32 @llvm.ctpop.i32(i32 %3773)
  %3775 = trunc i32 %3774 to i8
  %3776 = and i8 %3775, 1
  %3777 = xor i8 %3776, 1
  store i8 %3777, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3778 = icmp eq i32 %3771, 0
  %3779 = zext i1 %3778 to i8
  store i8 %3779, i8* %55, align 1
  %3780 = lshr i32 %3771, 31
  %3781 = trunc i32 %3780 to i8
  store i8 %3781, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v244 = select i1 %3778, i64 9, i64 32
  %3782 = add i64 %3772, %.v244
  store i64 %3782, i64* %3, align 8
  br i1 %3778, label %block_442a46, label %block_.L_442a5d

block_442a46:                                     ; preds = %block_442a2b
  %3783 = load i64, i64* %RBP.i, align 8
  %3784 = add i64 %3783, -4140
  %3785 = add i64 %3782, 6
  store i64 %3785, i64* %3, align 8
  %3786 = inttoptr i64 %3784 to i32*
  %3787 = load i32, i32* %3786, align 4
  %3788 = zext i32 %3787 to i64
  store i64 %3788, i64* %RDI.i2098, align 8
  %3789 = add i64 %3783, -100
  %3790 = add i64 %3782, 9
  store i64 %3790, i64* %3, align 8
  %3791 = inttoptr i64 %3789 to i32*
  %3792 = load i32, i32* %3791, align 4
  %3793 = zext i32 %3792 to i64
  store i64 %3793, i64* %RSI.i2095, align 8
  %3794 = add i64 %3782, 168426
  %3795 = add i64 %3782, 14
  %3796 = load i64, i64* %6, align 8
  %3797 = add i64 %3796, -8
  %3798 = inttoptr i64 %3797 to i64*
  store i64 %3795, i64* %3798, align 8
  store i64 %3797, i64* %6, align 8
  store i64 %3794, i64* %3, align 8
  %call2_442a4f = tail call %struct.Memory* @sub_46bc30.safe_move(%struct.State* nonnull %0, i64 %3794, %struct.Memory* %call2_442a38)
  %3799 = load i32, i32* %EAX.i1917, align 4
  %3800 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %3801 = and i32 %3799, 255
  %3802 = tail call i32 @llvm.ctpop.i32(i32 %3801)
  %3803 = trunc i32 %3802 to i8
  %3804 = and i8 %3803, 1
  %3805 = xor i8 %3804, 1
  store i8 %3805, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3806 = icmp eq i32 %3799, 0
  %3807 = zext i1 %3806 to i8
  store i8 %3807, i8* %55, align 1
  %3808 = lshr i32 %3799, 31
  %3809 = trunc i32 %3808 to i8
  store i8 %3809, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v252 = select i1 %3806, i64 454, i64 9
  %3810 = add i64 %3800, %.v252
  store i64 %3810, i64* %3, align 8
  br i1 %3806, label %block_.L_442c1a, label %block_.L_442a5d

block_.L_442a5d:                                  ; preds = %block_442a2b, %block_442a46, %block_442a14, %block_4429fc
  %3811 = phi i64 [ %3726, %block_4429fc ], [ %3754, %block_442a14 ], [ %3782, %block_442a2b ], [ %3810, %block_442a46 ]
  %MEMORY.33 = phi %struct.Memory* [ %call2_442a06, %block_4429fc ], [ %call2_442a1d, %block_442a14 ], [ %call2_442a38, %block_442a2b ], [ %call2_442a4f, %block_442a46 ]
  %3812 = load i64, i64* %RBP.i, align 8
  %3813 = add i64 %3812, -4140
  %3814 = add i64 %3811, 7
  store i64 %3814, i64* %3, align 8
  %3815 = inttoptr i64 %3813 to i32*
  %3816 = load i32, i32* %3815, align 4
  %3817 = sext i32 %3816 to i64
  store i64 %3817, i64* %RAX.i2122, align 8
  %3818 = shl nsw i64 %3817, 2
  %3819 = add i64 %3812, -2512
  %3820 = add i64 %3819, %3818
  %3821 = add i64 %3811, 15
  store i64 %3821, i64* %3, align 8
  %3822 = inttoptr i64 %3820 to i32*
  %3823 = load i32, i32* %3822, align 4
  store i8 0, i8* %39, align 1
  %3824 = and i32 %3823, 255
  %3825 = tail call i32 @llvm.ctpop.i32(i32 %3824)
  %3826 = trunc i32 %3825 to i8
  %3827 = and i8 %3826, 1
  %3828 = xor i8 %3827, 1
  store i8 %3828, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3829 = icmp eq i32 %3823, 0
  %3830 = zext i1 %3829 to i8
  store i8 %3830, i8* %55, align 1
  %3831 = lshr i32 %3823, 31
  %3832 = trunc i32 %3831 to i8
  store i8 %3832, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %3833 = icmp ne i8 %3832, 0
  %3834 = or i1 %3829, %3833
  %.v245 = select i1 %3834, i64 75, i64 21
  %3835 = add i64 %3811, %.v245
  store i64 %3835, i64* %3, align 8
  br i1 %3834, label %block_.L_442aa8, label %block_442a72

block_442a72:                                     ; preds = %block_.L_442a5d
  %3836 = add i64 %3835, 7
  store i64 %3836, i64* %3, align 8
  %3837 = load i32, i32* %3815, align 4
  %3838 = sext i32 %3837 to i64
  store i64 %3838, i64* %RAX.i2122, align 8
  %3839 = shl nsw i64 %3838, 2
  %3840 = add i64 %3819, %3839
  %3841 = add i64 %3835, 14
  store i64 %3841, i64* %3, align 8
  %3842 = inttoptr i64 %3840 to i32*
  %3843 = load i32, i32* %3842, align 4
  %3844 = zext i32 %3843 to i64
  store i64 %3844, i64* %RCX.i2073, align 8
  %3845 = add i64 %3812, -4188
  %3846 = add i64 %3835, 20
  store i64 %3846, i64* %3, align 8
  %3847 = inttoptr i64 %3845 to i32*
  %3848 = load i32, i32* %3847, align 4
  %3849 = add i32 %3848, %3843
  %3850 = zext i32 %3849 to i64
  store i64 %3850, i64* %RCX.i2073, align 8
  %3851 = icmp ult i32 %3849, %3843
  %3852 = icmp ult i32 %3849, %3848
  %3853 = or i1 %3851, %3852
  %3854 = zext i1 %3853 to i8
  store i8 %3854, i8* %39, align 1
  %3855 = and i32 %3849, 255
  %3856 = tail call i32 @llvm.ctpop.i32(i32 %3855)
  %3857 = trunc i32 %3856 to i8
  %3858 = and i8 %3857, 1
  %3859 = xor i8 %3858, 1
  store i8 %3859, i8* %46, align 1
  %3860 = xor i32 %3848, %3843
  %3861 = xor i32 %3860, %3849
  %3862 = lshr i32 %3861, 4
  %3863 = trunc i32 %3862 to i8
  %3864 = and i8 %3863, 1
  store i8 %3864, i8* %52, align 1
  %3865 = icmp eq i32 %3849, 0
  %3866 = zext i1 %3865 to i8
  store i8 %3866, i8* %55, align 1
  %3867 = lshr i32 %3849, 31
  %3868 = trunc i32 %3867 to i8
  store i8 %3868, i8* %58, align 1
  %3869 = lshr i32 %3843, 31
  %3870 = lshr i32 %3848, 31
  %3871 = xor i32 %3867, %3869
  %3872 = xor i32 %3867, %3870
  %3873 = add nuw nsw i32 %3871, %3872
  %3874 = icmp eq i32 %3873, 2
  %3875 = zext i1 %3874 to i8
  store i8 %3875, i8* %64, align 1
  %3876 = add i64 %3835, 26
  store i64 %3876, i64* %3, align 8
  store i32 %3849, i32* %3847, align 4
  %3877 = load i64, i64* %RBP.i, align 8
  %3878 = add i64 %3877, -4188
  %3879 = load i64, i64* %3, align 8
  %3880 = add i64 %3879, 7
  store i64 %3880, i64* %3, align 8
  %3881 = inttoptr i64 %3878 to i32*
  %3882 = load i32, i32* %3881, align 4
  %3883 = add i32 %3882, -98
  %3884 = icmp ult i32 %3882, 98
  %3885 = zext i1 %3884 to i8
  store i8 %3885, i8* %39, align 1
  %3886 = and i32 %3883, 255
  %3887 = tail call i32 @llvm.ctpop.i32(i32 %3886)
  %3888 = trunc i32 %3887 to i8
  %3889 = and i8 %3888, 1
  %3890 = xor i8 %3889, 1
  store i8 %3890, i8* %46, align 1
  %3891 = xor i32 %3883, %3882
  %3892 = lshr i32 %3891, 4
  %3893 = trunc i32 %3892 to i8
  %3894 = and i8 %3893, 1
  store i8 %3894, i8* %52, align 1
  %3895 = icmp eq i32 %3883, 0
  %3896 = zext i1 %3895 to i8
  store i8 %3896, i8* %55, align 1
  %3897 = lshr i32 %3883, 31
  %3898 = trunc i32 %3897 to i8
  store i8 %3898, i8* %58, align 1
  %3899 = lshr i32 %3882, 31
  %3900 = xor i32 %3897, %3899
  %3901 = add nuw nsw i32 %3900, %3899
  %3902 = icmp eq i32 %3901, 2
  %3903 = zext i1 %3902 to i8
  store i8 %3903, i8* %64, align 1
  %3904 = icmp ne i8 %3898, 0
  %3905 = xor i1 %3904, %3902
  %3906 = or i1 %3895, %3905
  %.v246 = select i1 %3906, i64 23, i64 13
  %3907 = add i64 %3879, %.v246
  store i64 %3907, i64* %3, align 8
  br i1 %3906, label %block_.L_442aa3, label %block_442a99

block_442a99:                                     ; preds = %block_442a72
  %3908 = add i64 %3907, 10
  store i64 %3908, i64* %3, align 8
  store i32 98, i32* %3881, align 4
  %.pre167 = load i64, i64* %3, align 8
  br label %block_.L_442aa3

block_.L_442aa3:                                  ; preds = %block_442a99, %block_442a72
  %3909 = phi i64 [ %.pre167, %block_442a99 ], [ %3907, %block_442a72 ]
  %3910 = add i64 %3909, 5
  store i64 %3910, i64* %3, align 8
  br label %block_.L_442aa8

block_.L_442aa8:                                  ; preds = %block_.L_442aa3, %block_.L_442a5d
  %3911 = phi i64 [ %3910, %block_.L_442aa3 ], [ %3835, %block_.L_442a5d ]
  %3912 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %39, align 1
  %3913 = and i32 %3912, 255
  %3914 = tail call i32 @llvm.ctpop.i32(i32 %3913)
  %3915 = trunc i32 %3914 to i8
  %3916 = and i8 %3915, 1
  %3917 = xor i8 %3916, 1
  store i8 %3917, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %3918 = icmp eq i32 %3912, 0
  %3919 = zext i1 %3918 to i8
  store i8 %3919, i8* %55, align 1
  %3920 = lshr i32 %3912, 31
  %3921 = trunc i32 %3920 to i8
  store i8 %3921, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v247 = select i1 %3918, i64 14, i64 19
  %3922 = add i64 %3911, %.v247
  store i64 %3922, i64* %3, align 8
  br i1 %3918, label %block_442ab6, label %block_.L_442abb

block_442ab6:                                     ; preds = %block_.L_442aa8
  %3923 = add i64 %3922, 148
  store i64 %3923, i64* %3, align 8
  br label %block_.L_442b4a

block_.L_442abb:                                  ; preds = %block_.L_442aa8
  %3924 = load i64, i64* %RBP.i, align 8
  %3925 = add i64 %3924, -2528
  store i64 %3925, i64* %RDI.i2098, align 8
  %3926 = add i64 %3924, -4200
  %3927 = add i64 %3922, 14
  store i64 %3927, i64* %3, align 8
  %3928 = inttoptr i64 %3926 to i64*
  %3929 = load i64, i64* %3928, align 8
  store i64 %3929, i64* %RSI.i2095, align 8
  %3930 = add i64 %3924, -4140
  %3931 = add i64 %3922, 20
  store i64 %3931, i64* %3, align 8
  %3932 = inttoptr i64 %3930 to i32*
  %3933 = load i32, i32* %3932, align 4
  %3934 = zext i32 %3933 to i64
  store i64 %3934, i64* %RDX.i2039, align 8
  %3935 = add i64 %3924, -4188
  %3936 = add i64 %3922, 26
  store i64 %3936, i64* %3, align 8
  %3937 = inttoptr i64 %3935 to i32*
  %3938 = load i32, i32* %3937, align 4
  %3939 = zext i32 %3938 to i64
  store i64 %3939, i64* %RCX.i2073, align 8
  %3940 = add i64 %3924, -4184
  %3941 = add i64 %3922, 33
  store i64 %3941, i64* %3, align 8
  %3942 = inttoptr i64 %3940 to i32*
  %3943 = load i32, i32* %3942, align 4
  %3944 = zext i32 %3943 to i64
  store i64 %3944, i64* %R8.i2087, align 8
  %3945 = add i64 %3924, -4328
  %3946 = add i64 %3922, 40
  store i64 %3946, i64* %3, align 8
  %3947 = inttoptr i64 %3945 to i32*
  store i32 %3943, i32* %3947, align 4
  %3948 = load i64, i64* %RBP.i, align 8
  %3949 = add i64 %3948, -4336
  %3950 = load i64, i64* %RSI.i2095, align 8
  %3951 = load i64, i64* %3, align 8
  %3952 = add i64 %3951, 7
  store i64 %3952, i64* %3, align 8
  %3953 = inttoptr i64 %3949 to i64*
  store i64 %3950, i64* %3953, align 8
  %3954 = load i64, i64* %RBP.i, align 8
  %3955 = add i64 %3954, -4340
  %3956 = load i32, i32* %EDX.i2092, align 4
  %3957 = load i64, i64* %3, align 8
  %3958 = add i64 %3957, 6
  store i64 %3958, i64* %3, align 8
  %3959 = inttoptr i64 %3955 to i32*
  store i32 %3956, i32* %3959, align 4
  %3960 = load i64, i64* %RBP.i, align 8
  %3961 = add i64 %3960, -4344
  %3962 = load i32, i32* %ECX.i2089, align 4
  %3963 = load i64, i64* %3, align 8
  %3964 = add i64 %3963, 6
  store i64 %3964, i64* %3, align 8
  %3965 = inttoptr i64 %3961 to i32*
  store i32 %3962, i32* %3965, align 4
  %3966 = load i64, i64* %3, align 8
  %3967 = add i64 %3966, -28646
  %3968 = add i64 %3966, 5
  %3969 = load i64, i64* %6, align 8
  %3970 = add i64 %3969, -8
  %3971 = inttoptr i64 %3970 to i64*
  store i64 %3968, i64* %3971, align 8
  store i64 %3970, i64* %6, align 8
  store i64 %3967, i64* %3, align 8
  %call2_442af6 = tail call %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* nonnull %0, i64 %3967, %struct.Memory* %MEMORY.33)
  %3972 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57e207_type* @G__0x57e207 to i64), i64* %RDI.i2098, align 8
  %3973 = load i64, i64* %RBP.i, align 8
  %3974 = add i64 %3973, -4132
  %3975 = add i64 %3972, 16
  store i64 %3975, i64* %3, align 8
  %3976 = inttoptr i64 %3974 to i32*
  %3977 = load i32, i32* %3976, align 4
  %3978 = zext i32 %3977 to i64
  store i64 %3978, i64* %RCX.i2073, align 8
  %3979 = add i64 %3973, -4336
  %3980 = add i64 %3972, 23
  store i64 %3980, i64* %3, align 8
  %3981 = inttoptr i64 %3979 to i64*
  %3982 = load i64, i64* %3981, align 8
  store i64 %3982, i64* %RSI.i2095, align 8
  %3983 = add i64 %3973, -4340
  %3984 = add i64 %3972, 29
  store i64 %3984, i64* %3, align 8
  %3985 = inttoptr i64 %3983 to i32*
  %3986 = load i32, i32* %3985, align 4
  %3987 = zext i32 %3986 to i64
  store i64 %3987, i64* %RDX.i2039, align 8
  %3988 = add i64 %3973, -4344
  %3989 = add i64 %3972, 36
  store i64 %3989, i64* %3, align 8
  %3990 = inttoptr i64 %3988 to i32*
  %3991 = load i32, i32* %3990, align 4
  %3992 = zext i32 %3991 to i64
  store i64 %3992, i64* %R8.i2087, align 8
  %3993 = add i64 %3973, -4348
  %3994 = add i64 %3972, 42
  store i64 %3994, i64* %3, align 8
  %3995 = inttoptr i64 %3993 to i32*
  store i32 %3977, i32* %3995, align 4
  %3996 = load i32, i32* %R8D.i1604, align 4
  %3997 = zext i32 %3996 to i64
  %3998 = load i64, i64* %3, align 8
  store i64 %3997, i64* %RCX.i2073, align 8
  %3999 = load i64, i64* %RBP.i, align 8
  %4000 = add i64 %3999, -4328
  %4001 = add i64 %3998, 10
  store i64 %4001, i64* %3, align 8
  %4002 = inttoptr i64 %4000 to i32*
  %4003 = load i32, i32* %4002, align 4
  %4004 = zext i32 %4003 to i64
  store i64 %4004, i64* %R8.i2087, align 8
  %4005 = load i64, i64* %RAX.i2122, align 8
  store i64 %4005, i64* %R9.i2084, align 8
  %4006 = add i64 %3999, -4348
  %4007 = add i64 %3998, 20
  store i64 %4007, i64* %3, align 8
  %4008 = inttoptr i64 %4006 to i32*
  %4009 = load i32, i32* %4008, align 4
  %4010 = zext i32 %4009 to i64
  store i64 %4010, i64* %R10.i2120, align 8
  %4011 = load i32*, i32** %1540, align 8
  %4012 = add i64 %3998, 24
  store i64 %4012, i64* %3, align 8
  store i32 %4009, i32* %4011, align 4
  %4013 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i795, align 1
  %4014 = add i64 %4013, 62067
  %4015 = add i64 %4013, 7
  %4016 = load i64, i64* %6, align 8
  %4017 = add i64 %4016, -8
  %4018 = inttoptr i64 %4017 to i64*
  store i64 %4015, i64* %4018, align 8
  store i64 %4017, i64* %6, align 8
  store i64 %4014, i64* %3, align 8
  %call2_442b3f = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4014, %struct.Memory* %call2_442af6)
  %4019 = load i64, i64* %RBP.i, align 8
  %4020 = add i64 %4019, -4352
  %4021 = load i32, i32* %EAX.i1917, align 4
  %4022 = load i64, i64* %3, align 8
  %4023 = add i64 %4022, 6
  store i64 %4023, i64* %3, align 8
  %4024 = inttoptr i64 %4020 to i32*
  store i32 %4021, i32* %4024, align 4
  %.pre168 = load i64, i64* %3, align 8
  br label %block_.L_442b4a

block_.L_442b4a:                                  ; preds = %block_.L_442abb, %block_442ab6
  %4025 = phi i64 [ %.pre168, %block_.L_442abb ], [ %3923, %block_442ab6 ]
  %MEMORY.36 = phi %struct.Memory* [ %call2_442b3f, %block_.L_442abb ], [ %MEMORY.33, %block_442ab6 ]
  %4026 = load i64, i64* %RBP.i, align 8
  %4027 = add i64 %4026, -112
  %4028 = add i64 %4025, 4
  store i64 %4028, i64* %3, align 8
  %4029 = inttoptr i64 %4027 to i64*
  %4030 = load i64, i64* %4029, align 8
  store i64 %4030, i64* %RAX.i2122, align 8
  %4031 = add i64 %4026, -4140
  %4032 = add i64 %4025, 11
  store i64 %4032, i64* %3, align 8
  %4033 = inttoptr i64 %4031 to i32*
  %4034 = load i32, i32* %4033, align 4
  %4035 = sext i32 %4034 to i64
  %4036 = mul nsw i64 %4035, 36
  store i64 %4036, i64* %RCX.i2073, align 8
  %4037 = lshr i64 %4036, 63
  %4038 = add i64 %4036, %4030
  store i64 %4038, i64* %RAX.i2122, align 8
  %4039 = icmp ult i64 %4038, %4030
  %4040 = icmp ult i64 %4038, %4036
  %4041 = or i1 %4039, %4040
  %4042 = zext i1 %4041 to i8
  store i8 %4042, i8* %39, align 1
  %4043 = trunc i64 %4038 to i32
  %4044 = and i32 %4043, 255
  %4045 = tail call i32 @llvm.ctpop.i32(i32 %4044)
  %4046 = trunc i32 %4045 to i8
  %4047 = and i8 %4046, 1
  %4048 = xor i8 %4047, 1
  store i8 %4048, i8* %46, align 1
  %4049 = xor i64 %4036, %4030
  %4050 = xor i64 %4049, %4038
  %4051 = lshr i64 %4050, 4
  %4052 = trunc i64 %4051 to i8
  %4053 = and i8 %4052, 1
  store i8 %4053, i8* %52, align 1
  %4054 = icmp eq i64 %4038, 0
  %4055 = zext i1 %4054 to i8
  store i8 %4055, i8* %55, align 1
  %4056 = lshr i64 %4038, 63
  %4057 = trunc i64 %4056 to i8
  store i8 %4057, i8* %58, align 1
  %4058 = lshr i64 %4030, 63
  %4059 = xor i64 %4056, %4058
  %4060 = xor i64 %4056, %4037
  %4061 = add nuw nsw i64 %4059, %4060
  %4062 = icmp eq i64 %4061, 2
  %4063 = zext i1 %4062 to i8
  store i8 %4063, i8* %64, align 1
  %4064 = add i64 %4038, 28
  %4065 = add i64 %4025, 22
  store i64 %4065, i64* %3, align 8
  %4066 = inttoptr i64 %4064 to i8*
  %4067 = load i8, i8* %4066, align 1
  %4068 = sext i8 %4067 to i64
  %4069 = and i64 %4068, 4294967295
  store i64 %4069, i64* %RDX.i2039, align 8
  %4070 = sext i8 %4067 to i32
  store i8 0, i8* %39, align 1
  %4071 = and i32 %4070, 255
  %4072 = tail call i32 @llvm.ctpop.i32(i32 %4071)
  %4073 = trunc i32 %4072 to i8
  %4074 = and i8 %4073, 1
  %4075 = xor i8 %4074, 1
  store i8 %4075, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %4076 = icmp eq i8 %4067, 0
  %4077 = zext i1 %4076 to i8
  store i8 %4077, i8* %55, align 1
  %4078 = lshr i32 %4070, 31
  %4079 = trunc i32 %4078 to i8
  store i8 %4079, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v248 = select i1 %4076, i64 31, i64 64
  %4080 = add i64 %4025, %.v248
  store i64 %4080, i64* %3, align 8
  br i1 %4076, label %block_442b69, label %block_.L_442b8a

block_442b69:                                     ; preds = %block_.L_442b4a
  %4081 = load i64, i64* %RBP.i, align 8
  %4082 = add i64 %4081, -112
  %4083 = add i64 %4080, 4
  store i64 %4083, i64* %3, align 8
  %4084 = inttoptr i64 %4082 to i64*
  %4085 = load i64, i64* %4084, align 8
  store i64 %4085, i64* %RAX.i2122, align 8
  %4086 = add i64 %4081, -4140
  %4087 = add i64 %4080, 11
  store i64 %4087, i64* %3, align 8
  %4088 = inttoptr i64 %4086 to i32*
  %4089 = load i32, i32* %4088, align 4
  %4090 = sext i32 %4089 to i64
  %4091 = mul nsw i64 %4090, 36
  store i64 %4091, i64* %RCX.i2073, align 8
  %4092 = lshr i64 %4091, 63
  %4093 = add i64 %4091, %4085
  store i64 %4093, i64* %RAX.i2122, align 8
  %4094 = icmp ult i64 %4093, %4085
  %4095 = icmp ult i64 %4093, %4091
  %4096 = or i1 %4094, %4095
  %4097 = zext i1 %4096 to i8
  store i8 %4097, i8* %39, align 1
  %4098 = trunc i64 %4093 to i32
  %4099 = and i32 %4098, 255
  %4100 = tail call i32 @llvm.ctpop.i32(i32 %4099)
  %4101 = trunc i32 %4100 to i8
  %4102 = and i8 %4101, 1
  %4103 = xor i8 %4102, 1
  store i8 %4103, i8* %46, align 1
  %4104 = xor i64 %4091, %4085
  %4105 = xor i64 %4104, %4093
  %4106 = lshr i64 %4105, 4
  %4107 = trunc i64 %4106 to i8
  %4108 = and i8 %4107, 1
  store i8 %4108, i8* %52, align 1
  %4109 = icmp eq i64 %4093, 0
  %4110 = zext i1 %4109 to i8
  store i8 %4110, i8* %55, align 1
  %4111 = lshr i64 %4093, 63
  %4112 = trunc i64 %4111 to i8
  store i8 %4112, i8* %58, align 1
  %4113 = lshr i64 %4085, 63
  %4114 = xor i64 %4111, %4113
  %4115 = xor i64 %4111, %4092
  %4116 = add nuw nsw i64 %4114, %4115
  %4117 = icmp eq i64 %4116, 2
  %4118 = zext i1 %4117 to i8
  store i8 %4118, i8* %64, align 1
  %4119 = add i64 %4093, 12
  %4120 = add i64 %4080, 21
  store i64 %4120, i64* %3, align 8
  %4121 = inttoptr i64 %4119 to i32*
  %4122 = load i32, i32* %4121, align 4
  %4123 = zext i32 %4122 to i64
  store i64 %4123, i64* %RDX.i2039, align 8
  %4124 = add i64 %4081, -4184
  %4125 = add i64 %4080, 27
  store i64 %4125, i64* %3, align 8
  %4126 = inttoptr i64 %4124 to i32*
  %4127 = load i32, i32* %4126, align 4
  %4128 = sub i32 %4122, %4127
  %4129 = icmp ult i32 %4122, %4127
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %39, align 1
  %4131 = and i32 %4128, 255
  %4132 = tail call i32 @llvm.ctpop.i32(i32 %4131)
  %4133 = trunc i32 %4132 to i8
  %4134 = and i8 %4133, 1
  %4135 = xor i8 %4134, 1
  store i8 %4135, i8* %46, align 1
  %4136 = xor i32 %4127, %4122
  %4137 = xor i32 %4136, %4128
  %4138 = lshr i32 %4137, 4
  %4139 = trunc i32 %4138 to i8
  %4140 = and i8 %4139, 1
  store i8 %4140, i8* %52, align 1
  %4141 = icmp eq i32 %4128, 0
  %4142 = zext i1 %4141 to i8
  store i8 %4142, i8* %55, align 1
  %4143 = lshr i32 %4128, 31
  %4144 = trunc i32 %4143 to i8
  store i8 %4144, i8* %58, align 1
  %4145 = lshr i32 %4122, 31
  %4146 = lshr i32 %4127, 31
  %4147 = xor i32 %4146, %4145
  %4148 = xor i32 %4143, %4145
  %4149 = add nuw nsw i32 %4148, %4147
  %4150 = icmp eq i32 %4149, 2
  %4151 = zext i1 %4150 to i8
  store i8 %4151, i8* %64, align 1
  %.v251 = select i1 %4141, i64 113, i64 33
  %4152 = add i64 %4080, %.v251
  store i64 %4152, i64* %3, align 8
  br i1 %4141, label %block_.L_442bda, label %block_.L_442b8a

block_.L_442b8a:                                  ; preds = %block_.L_442b4a, %block_442b69
  %4153 = phi i32 [ %4122, %block_442b69 ], [ %4070, %block_.L_442b4a ]
  %4154 = phi i64 [ %4123, %block_442b69 ], [ %4069, %block_.L_442b4a ]
  %4155 = phi i64 [ %4152, %block_442b69 ], [ %4080, %block_.L_442b4a ]
  %4156 = load i64, i64* %RBP.i, align 8
  %4157 = add i64 %4156, -4140
  store i64 %4157, i64* %RSI.i2095, align 8
  %4158 = zext i32 %4153 to i64
  %4159 = xor i64 %4158, %4154
  %4160 = trunc i64 %4159 to i32
  store i64 %4159, i64* %RDX.i2039, align 8
  store i8 0, i8* %39, align 1
  %4161 = and i32 %4160, 255
  %4162 = tail call i32 @llvm.ctpop.i32(i32 %4161)
  %4163 = trunc i32 %4162 to i8
  %4164 = and i8 %4163, 1
  %4165 = xor i8 %4164, 1
  store i8 %4165, i8* %46, align 1
  %4166 = icmp eq i32 %4160, 0
  %4167 = zext i1 %4166 to i8
  store i8 %4167, i8* %55, align 1
  %4168 = lshr i32 %4160, 31
  %4169 = trunc i32 %4168 to i8
  store i8 %4169, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %4170 = add i64 %4156, -48
  %4171 = add i64 %4155, 13
  store i64 %4171, i64* %3, align 8
  %4172 = inttoptr i64 %4170 to i64*
  %4173 = load i64, i64* %4172, align 8
  store i64 %4173, i64* %RDI.i2098, align 8
  %4174 = add i64 %4155, 10342
  %4175 = add i64 %4155, 18
  %4176 = load i64, i64* %6, align 8
  %4177 = add i64 %4176, -8
  %4178 = inttoptr i64 %4177 to i64*
  store i64 %4175, i64* %4178, align 8
  store i64 %4177, i64* %6, align 8
  store i64 %4174, i64* %3, align 8
  %call2_442b97 = tail call %struct.Memory* @sub_4453f0.modify_stupid_eye_vital_point(%struct.State* nonnull %0, i64 %4174, %struct.Memory* %MEMORY.36)
  %4179 = load i32, i32* %EAX.i1917, align 4
  %4180 = load i64, i64* %3, align 8
  store i8 0, i8* %39, align 1
  %4181 = and i32 %4179, 255
  %4182 = tail call i32 @llvm.ctpop.i32(i32 %4181)
  %4183 = trunc i32 %4182 to i8
  %4184 = and i8 %4183, 1
  %4185 = xor i8 %4184, 1
  store i8 %4185, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %4186 = icmp eq i32 %4179, 0
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %55, align 1
  %4188 = lshr i32 %4179, 31
  %4189 = trunc i32 %4188 to i8
  store i8 %4189, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v249 = select i1 %4186, i64 62, i64 9
  %4190 = add i64 %4180, %.v249
  store i64 %4190, i64* %3, align 8
  br i1 %4186, label %block_.L_442bda, label %block_442ba5

block_442ba5:                                     ; preds = %block_.L_442b8a
  %4191 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %39, align 1
  %4192 = and i32 %4191, 255
  %4193 = tail call i32 @llvm.ctpop.i32(i32 %4192)
  %4194 = trunc i32 %4193 to i8
  %4195 = and i8 %4194, 1
  %4196 = xor i8 %4195, 1
  store i8 %4196, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %4197 = icmp eq i32 %4191, 0
  %4198 = zext i1 %4197 to i8
  store i8 %4198, i8* %55, align 1
  %4199 = lshr i32 %4191, 31
  %4200 = trunc i32 %4199 to i8
  store i8 %4200, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v250 = select i1 %4197, i64 14, i64 19
  %4201 = add i64 %4190, %.v250
  store i64 %4201, i64* %3, align 8
  br i1 %4197, label %block_442bb3, label %block_.L_442bb8

block_442bb3:                                     ; preds = %block_442ba5
  %4202 = add i64 %4201, 34
  store i64 %4202, i64* %3, align 8
  br label %block_.L_442bd5

block_.L_442bb8:                                  ; preds = %block_442ba5
  store i64 ptrtoint (%G__0x57e247_type* @G__0x57e247 to i64), i64* %RDI.i2098, align 8
  %4203 = load i64, i64* %RBP.i, align 8
  %4204 = add i64 %4203, -4140
  %4205 = add i64 %4201, 16
  store i64 %4205, i64* %3, align 8
  %4206 = inttoptr i64 %4204 to i32*
  %4207 = load i32, i32* %4206, align 4
  %4208 = zext i32 %4207 to i64
  store i64 %4208, i64* %RSI.i2095, align 8
  store i8 0, i8* %AL.i795, align 1
  %4209 = add i64 %4201, 61944
  %4210 = add i64 %4201, 23
  %4211 = load i64, i64* %6, align 8
  %4212 = add i64 %4211, -8
  %4213 = inttoptr i64 %4212 to i64*
  store i64 %4210, i64* %4213, align 8
  store i64 %4212, i64* %6, align 8
  store i64 %4209, i64* %3, align 8
  %call2_442bca = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4209, %struct.Memory* %call2_442b97)
  %4214 = load i64, i64* %RBP.i, align 8
  %4215 = add i64 %4214, -4356
  %4216 = load i32, i32* %EAX.i1917, align 4
  %4217 = load i64, i64* %3, align 8
  %4218 = add i64 %4217, 6
  store i64 %4218, i64* %3, align 8
  %4219 = inttoptr i64 %4215 to i32*
  store i32 %4216, i32* %4219, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_442bd5

block_.L_442bd5:                                  ; preds = %block_.L_442bb8, %block_442bb3
  %4220 = phi i64 [ %.pre169, %block_.L_442bb8 ], [ %4202, %block_442bb3 ]
  %MEMORY.38 = phi %struct.Memory* [ %call2_442bca, %block_.L_442bb8 ], [ %call2_442b97, %block_442bb3 ]
  %4221 = add i64 %4220, 5
  store i64 %4221, i64* %3, align 8
  br label %block_.L_442bda

block_.L_442bda:                                  ; preds = %block_.L_442bd5, %block_.L_442b8a, %block_442b69
  %4222 = phi i64 [ %4190, %block_.L_442b8a ], [ %4221, %block_.L_442bd5 ], [ %4152, %block_442b69 ]
  %MEMORY.39 = phi %struct.Memory* [ %call2_442b97, %block_.L_442b8a ], [ %MEMORY.38, %block_.L_442bd5 ], [ %MEMORY.36, %block_442b69 ]
  store i64 1, i64* %R8.i2087, align 8
  store i64 0, i64* %R9.i2084, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %4223 = load i64, i64* %RBP.i, align 8
  %4224 = add i64 %4223, -72
  %4225 = add i64 %4222, 13
  store i64 %4225, i64* %3, align 8
  %4226 = inttoptr i64 %4224 to i64*
  %4227 = load i64, i64* %4226, align 8
  store i64 %4227, i64* %RDI.i2098, align 8
  %4228 = add i64 %4223, -4140
  %4229 = add i64 %4222, 19
  store i64 %4229, i64* %3, align 8
  %4230 = inttoptr i64 %4228 to i32*
  %4231 = load i32, i32* %4230, align 4
  %4232 = zext i32 %4231 to i64
  store i64 %4232, i64* %RSI.i2095, align 8
  %4233 = add i64 %4223, -4188
  %4234 = add i64 %4222, 25
  store i64 %4234, i64* %3, align 8
  %4235 = inttoptr i64 %4233 to i32*
  %4236 = load i32, i32* %4235, align 4
  %4237 = zext i32 %4236 to i64
  store i64 %4237, i64* %RDX.i2039, align 8
  %4238 = add i64 %4223, -4200
  %4239 = add i64 %4222, 32
  store i64 %4239, i64* %3, align 8
  %4240 = inttoptr i64 %4238 to i64*
  %4241 = load i64, i64* %4240, align 8
  store i64 %4241, i64* %RCX.i2073, align 8
  %4242 = load i32*, i32** %1540, align 8
  %4243 = add i64 %4222, 39
  store i64 %4243, i64* %3, align 8
  store i32 0, i32* %4242, align 4
  %4244 = load i64, i64* %3, align 8
  %4245 = add i64 %4244, 5679
  %4246 = add i64 %4244, 5
  %4247 = load i64, i64* %6, align 8
  %4248 = add i64 %4247, -8
  %4249 = inttoptr i64 %4248 to i64*
  store i64 %4246, i64* %4249, align 8
  store i64 %4248, i64* %6, align 8
  store i64 %4245, i64* %3, align 8
  %call2_442c01 = tail call %struct.Memory* @sub_444230.owl_add_move(%struct.State* nonnull %0, i64 %4245, %struct.Memory* %MEMORY.39)
  %4250 = load i64, i64* %RBP.i, align 8
  %4251 = add i64 %4250, -4188
  %4252 = load i64, i64* %3, align 8
  %4253 = add i64 %4252, 6
  store i64 %4253, i64* %3, align 8
  %4254 = inttoptr i64 %4251 to i32*
  %4255 = load i32, i32* %4254, align 4
  %4256 = zext i32 %4255 to i64
  store i64 %4256, i64* %RDX.i2039, align 8
  %4257 = add i64 %4250, -4140
  %4258 = add i64 %4252, 13
  store i64 %4258, i64* %3, align 8
  %4259 = inttoptr i64 %4257 to i32*
  %4260 = load i32, i32* %4259, align 4
  %4261 = sext i32 %4260 to i64
  store i64 %4261, i64* %RCX.i2073, align 8
  %4262 = shl nsw i64 %4261, 2
  %4263 = add i64 %4250, -2512
  %4264 = add i64 %4263, %4262
  %4265 = add i64 %4252, 20
  store i64 %4265, i64* %3, align 8
  %4266 = inttoptr i64 %4264 to i32*
  store i32 %4255, i32* %4266, align 4
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_442c1a

block_.L_442c1a:                                  ; preds = %block_4429e4, %block_.L_4429cd, %block_.L_442bda, %block_442a46, %block_4429d7
  %4267 = phi i64 [ %3672, %block_.L_4429cd ], [ %3686, %block_4429d7 ], [ %3702, %block_4429e4 ], [ %.pre170, %block_.L_442bda ], [ %3810, %block_442a46 ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.14, %block_.L_4429cd ], [ %MEMORY.14, %block_4429d7 ], [ %MEMORY.14, %block_4429e4 ], [ %call2_442c01, %block_.L_442bda ], [ %call2_442a4f, %block_442a46 ]
  %4268 = add i64 %4267, 5
  store i64 %4268, i64* %3, align 8
  br label %block_.L_442c1f

block_.L_442c1f:                                  ; preds = %block_.L_442c1a, %block_.L_442974
  %storemerge82 = phi i64 [ %3659, %block_.L_442974 ], [ %4268, %block_.L_442c1a ]
  %MEMORY.41 = phi %struct.Memory* [ %call2_44299b, %block_.L_442974 ], [ %MEMORY.40, %block_.L_442c1a ]
  %4269 = add i64 %storemerge82, 5
  store i64 %4269, i64* %3, align 8
  %.pre171 = load i64, i64* %RBP.i, align 8
  br label %block_.L_442c24

block_.L_442c24:                                  ; preds = %block_.L_442c1f, %block_.L_4427f1
  %4270 = phi i64 [ %3249, %block_.L_4427f1 ], [ %4269, %block_.L_442c1f ]
  %4271 = phi i64 [ %3233, %block_.L_4427f1 ], [ %.pre171, %block_.L_442c1f ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.14, %block_.L_4427f1 ], [ %MEMORY.41, %block_.L_442c1f ]
  %4272 = add i64 %4271, -4164
  %4273 = add i64 %4270, 6
  store i64 %4273, i64* %3, align 8
  %4274 = inttoptr i64 %4272 to i32*
  %4275 = load i32, i32* %4274, align 4
  %4276 = add i32 %4275, 1
  %4277 = zext i32 %4276 to i64
  store i64 %4277, i64* %RAX.i2122, align 8
  %4278 = icmp eq i32 %4275, -1
  %4279 = icmp eq i32 %4276, 0
  %4280 = or i1 %4278, %4279
  %4281 = zext i1 %4280 to i8
  store i8 %4281, i8* %39, align 1
  %4282 = and i32 %4276, 255
  %4283 = tail call i32 @llvm.ctpop.i32(i32 %4282)
  %4284 = trunc i32 %4283 to i8
  %4285 = and i8 %4284, 1
  %4286 = xor i8 %4285, 1
  store i8 %4286, i8* %46, align 1
  %4287 = xor i32 %4276, %4275
  %4288 = lshr i32 %4287, 4
  %4289 = trunc i32 %4288 to i8
  %4290 = and i8 %4289, 1
  store i8 %4290, i8* %52, align 1
  %4291 = zext i1 %4279 to i8
  store i8 %4291, i8* %55, align 1
  %4292 = lshr i32 %4276, 31
  %4293 = trunc i32 %4292 to i8
  store i8 %4293, i8* %58, align 1
  %4294 = lshr i32 %4275, 31
  %4295 = xor i32 %4292, %4294
  %4296 = add nuw nsw i32 %4295, %4292
  %4297 = icmp eq i32 %4296, 2
  %4298 = zext i1 %4297 to i8
  store i8 %4298, i8* %64, align 1
  %4299 = add i64 %4270, 15
  store i64 %4299, i64* %3, align 8
  store i32 %4276, i32* %4274, align 4
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_442c33

block_.L_442c33:                                  ; preds = %block_4423f9, %block_.L_442c24, %block_4423cb
  %4300 = phi i64 [ %1710, %block_4423cb ], [ %1777, %block_4423f9 ], [ %.pre177, %block_.L_442c24 ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.14, %block_4423cb ], [ %MEMORY.14, %block_4423f9 ], [ %MEMORY.42, %block_.L_442c24 ]
  %4301 = load i64, i64* %RBP.i, align 8
  %4302 = add i64 %4301, -4148
  %4303 = add i64 %4300, 11
  store i64 %4303, i64* %3, align 8
  %4304 = inttoptr i64 %4302 to i32*
  %4305 = load i32, i32* %4304, align 4
  %4306 = add i32 %4305, 1
  %4307 = zext i32 %4306 to i64
  store i64 %4307, i64* %RAX.i2122, align 8
  %4308 = icmp eq i32 %4305, -1
  %4309 = icmp eq i32 %4306, 0
  %4310 = or i1 %4308, %4309
  %4311 = zext i1 %4310 to i8
  store i8 %4311, i8* %39, align 1
  %4312 = and i32 %4306, 255
  %4313 = tail call i32 @llvm.ctpop.i32(i32 %4312)
  %4314 = trunc i32 %4313 to i8
  %4315 = and i8 %4314, 1
  %4316 = xor i8 %4315, 1
  store i8 %4316, i8* %46, align 1
  %4317 = xor i32 %4306, %4305
  %4318 = lshr i32 %4317, 4
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  store i8 %4320, i8* %52, align 1
  %4321 = zext i1 %4309 to i8
  store i8 %4321, i8* %55, align 1
  %4322 = lshr i32 %4306, 31
  %4323 = trunc i32 %4322 to i8
  store i8 %4323, i8* %58, align 1
  %4324 = lshr i32 %4305, 31
  %4325 = xor i32 %4322, %4324
  %4326 = add nuw nsw i32 %4325, %4322
  %4327 = icmp eq i32 %4326, 2
  %4328 = zext i1 %4327 to i8
  store i8 %4328, i8* %64, align 1
  %4329 = add i64 %4300, 20
  store i64 %4329, i64* %3, align 8
  store i32 %4306, i32* %4304, align 4
  %4330 = load i64, i64* %3, align 8
  %4331 = add i64 %4330, -2191
  store i64 %4331, i64* %3, align 8
  br label %block_.L_4423b8

block_.L_442c4c:                                  ; preds = %block_.L_4423b8
  %4332 = add i64 %1613, 11
  store i64 %4332, i64* %3, align 8
  %4333 = inttoptr i64 %1614 to i32*
  %4334 = load i32, i32* %4333, align 4
  %4335 = add i32 %4334, 1
  %4336 = zext i32 %4335 to i64
  store i64 %4336, i64* %RAX.i2122, align 8
  %4337 = icmp eq i32 %4334, -1
  %4338 = icmp eq i32 %4335, 0
  %4339 = or i1 %4337, %4338
  %4340 = zext i1 %4339 to i8
  store i8 %4340, i8* %39, align 1
  %4341 = and i32 %4335, 255
  %4342 = tail call i32 @llvm.ctpop.i32(i32 %4341)
  %4343 = trunc i32 %4342 to i8
  %4344 = and i8 %4343, 1
  %4345 = xor i8 %4344, 1
  store i8 %4345, i8* %46, align 1
  %4346 = xor i32 %4335, %4334
  %4347 = lshr i32 %4346, 4
  %4348 = trunc i32 %4347 to i8
  %4349 = and i8 %4348, 1
  store i8 %4349, i8* %52, align 1
  %4350 = zext i1 %4338 to i8
  store i8 %4350, i8* %55, align 1
  %4351 = lshr i32 %4335, 31
  %4352 = trunc i32 %4351 to i8
  store i8 %4352, i8* %58, align 1
  %4353 = lshr i32 %4334, 31
  %4354 = xor i32 %4351, %4353
  %4355 = add nuw nsw i32 %4354, %4351
  %4356 = icmp eq i32 %4355, 2
  %4357 = zext i1 %4356 to i8
  store i8 %4357, i8* %64, align 1
  %4358 = add i64 %1613, 20
  store i64 %4358, i64* %3, align 8
  store i32 %4335, i32* %4333, align 4
  %4359 = load i64, i64* %3, align 8
  %4360 = add i64 %4359, -2245
  store i64 %4360, i64* %3, align 8
  br label %block_.L_44239b

block_.L_442c65:                                  ; preds = %block_.L_44239b
  %4361 = add i64 %1542, -4156
  %4362 = add i64 %1575, 10
  store i64 %4362, i64* %3, align 8
  %4363 = inttoptr i64 %4361 to i32*
  store i32 0, i32* %4363, align 4
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_442c6f

block_.L_442c6f:                                  ; preds = %block_.L_44313e, %block_.L_442c65
  %4364 = phi i64 [ %.pre144, %block_.L_442c65 ], [ %5714, %block_.L_44313e ]
  %MEMORY.44 = phi %struct.Memory* [ %MEMORY.13, %block_.L_442c65 ], [ %MEMORY.60, %block_.L_44313e ]
  %4365 = load i64, i64* %RBP.i, align 8
  %4366 = add i64 %4365, -4156
  %4367 = add i64 %4364, 7
  store i64 %4367, i64* %3, align 8
  %4368 = inttoptr i64 %4366 to i32*
  %4369 = load i32, i32* %4368, align 4
  %4370 = add i32 %4369, -10
  %4371 = icmp ult i32 %4369, 10
  %4372 = zext i1 %4371 to i8
  store i8 %4372, i8* %39, align 1
  %4373 = and i32 %4370, 255
  %4374 = tail call i32 @llvm.ctpop.i32(i32 %4373)
  %4375 = trunc i32 %4374 to i8
  %4376 = and i8 %4375, 1
  %4377 = xor i8 %4376, 1
  store i8 %4377, i8* %46, align 1
  %4378 = xor i32 %4370, %4369
  %4379 = lshr i32 %4378, 4
  %4380 = trunc i32 %4379 to i8
  %4381 = and i8 %4380, 1
  store i8 %4381, i8* %52, align 1
  %4382 = icmp eq i32 %4370, 0
  %4383 = zext i1 %4382 to i8
  store i8 %4383, i8* %55, align 1
  %4384 = lshr i32 %4370, 31
  %4385 = trunc i32 %4384 to i8
  store i8 %4385, i8* %58, align 1
  %4386 = lshr i32 %4369, 31
  %4387 = xor i32 %4384, %4386
  %4388 = add nuw nsw i32 %4387, %4386
  %4389 = icmp eq i32 %4388, 2
  %4390 = zext i1 %4389 to i8
  store i8 %4390, i8* %64, align 1
  %4391 = icmp ne i8 %4385, 0
  %4392 = xor i1 %4391, %4389
  %.v204 = select i1 %4392, i64 13, i64 1251
  %4393 = add i64 %4364, %.v204
  store i64 %4393, i64* %3, align 8
  br i1 %4392, label %block_442c7c, label %block_.L_443152

block_442c7c:                                     ; preds = %block_.L_442c6f
  %4394 = add i64 %4365, -48
  %4395 = add i64 %4393, 4
  store i64 %4395, i64* %3, align 8
  %4396 = inttoptr i64 %4394 to i64*
  %4397 = load i64, i64* %4396, align 8
  store i64 %4397, i64* %RAX.i2122, align 8
  %4398 = add i64 %4393, 11
  store i64 %4398, i64* %3, align 8
  %4399 = load i32, i32* %4368, align 4
  %4400 = sext i32 %4399 to i64
  store i64 %4400, i64* %RCX.i2073, align 8
  %4401 = shl nsw i64 %4400, 2
  %4402 = add i64 %4397, 34804
  %4403 = add i64 %4402, %4401
  %4404 = add i64 %4393, 19
  store i64 %4404, i64* %3, align 8
  %4405 = inttoptr i64 %4403 to i32*
  %4406 = load i32, i32* %4405, align 4
  store i8 0, i8* %39, align 1
  %4407 = and i32 %4406, 255
  %4408 = tail call i32 @llvm.ctpop.i32(i32 %4407)
  %4409 = trunc i32 %4408 to i8
  %4410 = and i8 %4409, 1
  %4411 = xor i8 %4410, 1
  store i8 %4411, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %4412 = icmp eq i32 %4406, 0
  %4413 = zext i1 %4412 to i8
  store i8 %4413, i8* %55, align 1
  %4414 = lshr i32 %4406, 31
  %4415 = trunc i32 %4414 to i8
  store i8 %4415, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v209 = select i1 %4412, i64 1213, i64 25
  %4416 = add i64 %4393, %.v209
  store i64 %4416, i64* %3, align 8
  br i1 %4412, label %block_.L_443139, label %block_442c95

block_442c95:                                     ; preds = %block_442c7c
  %4417 = add i64 %4416, 4
  store i64 %4417, i64* %3, align 8
  %4418 = load i64, i64* %4396, align 8
  store i64 %4418, i64* %RAX.i2122, align 8
  %4419 = add i64 %4416, 11
  store i64 %4419, i64* %3, align 8
  %4420 = load i32, i32* %4368, align 4
  %4421 = sext i32 %4420 to i64
  store i64 %4421, i64* %RCX.i2073, align 8
  %4422 = shl nsw i64 %4421, 2
  %4423 = add i64 %4418, 34964
  %4424 = add i64 %4423, %4422
  %4425 = add i64 %4416, 19
  store i64 %4425, i64* %3, align 8
  %4426 = inttoptr i64 %4424 to i32*
  %4427 = load i32, i32* %4426, align 4
  store i8 0, i8* %39, align 1
  %4428 = and i32 %4427, 255
  %4429 = tail call i32 @llvm.ctpop.i32(i32 %4428)
  %4430 = trunc i32 %4429 to i8
  %4431 = and i8 %4430, 1
  %4432 = xor i8 %4431, 1
  store i8 %4432, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %4433 = icmp eq i32 %4427, 0
  %4434 = zext i1 %4433 to i8
  store i8 %4434, i8* %55, align 1
  %4435 = lshr i32 %4427, 31
  %4436 = trunc i32 %4435 to i8
  store i8 %4436, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v210 = select i1 %4433, i64 1188, i64 25
  %4437 = add i64 %4416, %.v210
  store i64 %4437, i64* %3, align 8
  br i1 %4433, label %block_.L_443139, label %block_442cae

block_442cae:                                     ; preds = %block_442c95
  %4438 = add i64 %4365, -4216
  store i64 %4438, i64* %RSI.i2095, align 8
  %4439 = add i64 %4365, -4220
  store i64 %4439, i64* %RDX.i2039, align 8
  %4440 = add i64 %4365, -4224
  store i64 %4440, i64* %RCX.i2073, align 8
  %4441 = add i64 %4365, -4212
  %4442 = add i64 %4437, 31
  store i64 %4442, i64* %3, align 8
  %4443 = inttoptr i64 %4441 to i32*
  store i32 0, i32* %4443, align 4
  %4444 = load i64, i64* %RBP.i, align 8
  %4445 = add i64 %4444, -48
  %4446 = load i64, i64* %3, align 8
  %4447 = add i64 %4446, 4
  store i64 %4447, i64* %3, align 8
  %4448 = inttoptr i64 %4445 to i64*
  %4449 = load i64, i64* %4448, align 8
  store i64 %4449, i64* %RAX.i2122, align 8
  %4450 = add i64 %4444, -4156
  %4451 = add i64 %4446, 11
  store i64 %4451, i64* %3, align 8
  %4452 = inttoptr i64 %4450 to i32*
  %4453 = load i32, i32* %4452, align 4
  %4454 = sext i32 %4453 to i64
  store i64 %4454, i64* %RDI.i2098, align 8
  %4455 = shl nsw i64 %4454, 2
  %4456 = add i64 %4449, 34804
  %4457 = add i64 %4456, %4455
  %4458 = add i64 %4446, 18
  store i64 %4458, i64* %3, align 8
  %4459 = inttoptr i64 %4457 to i32*
  %4460 = load i32, i32* %4459, align 4
  %4461 = zext i32 %4460 to i64
  store i64 %4461, i64* %RDI.i2098, align 8
  %4462 = add i64 %4446, 22
  store i64 %4462, i64* %3, align 8
  %4463 = load i64, i64* %4448, align 8
  store i64 %4463, i64* %R8.i2087, align 8
  %4464 = add i64 %4446, 10611
  %4465 = add i64 %4446, 27
  %4466 = load i64, i64* %6, align 8
  %4467 = add i64 %4466, -8
  %4468 = inttoptr i64 %4467 to i64*
  store i64 %4465, i64* %4468, align 8
  store i64 %4467, i64* %6, align 8
  store i64 %4464, i64* %3, align 8
  %call2_442ce3 = tail call %struct.Memory* @sub_445640.sniff_lunch(%struct.State* nonnull %0, i64 %4464, %struct.Memory* %MEMORY.44)
  %4469 = load i64, i64* %RBP.i, align 8
  %4470 = add i64 %4469, -4232
  %4471 = load i64, i64* %3, align 8
  store i64 %4470, i64* %RDI.i2098, align 8
  store i64 0, i64* %R9.i2084, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %4472 = add i64 %4469, -4220
  %4473 = add i64 %4471, 16
  store i64 %4473, i64* %3, align 8
  %4474 = inttoptr i64 %4472 to i32*
  %4475 = load i32, i32* %4474, align 4
  %4476 = zext i32 %4475 to i64
  store i64 %4476, i64* %RCX.i2073, align 8
  %4477 = add i64 %4471, 23
  store i64 %4477, i64* %3, align 8
  %4478 = load i32, i32* %4474, align 4
  %4479 = zext i32 %4478 to i64
  store i64 %4479, i64* %R8.i2087, align 8
  store i64 0, i64* %RSI.i2095, align 8
  store i64 0, i64* %RDX.i2039, align 8
  %4480 = add i64 %4471, -39240
  %4481 = add i64 %4471, 34
  %4482 = load i64, i64* %6, align 8
  %4483 = add i64 %4482, -8
  %4484 = inttoptr i64 %4483 to i64*
  store i64 %4481, i64* %4484, align 8
  store i64 %4483, i64* %6, align 8
  store i64 %4480, i64* %3, align 8
  %call2_442d05 = tail call %struct.Memory* @sub_4393a0.set_eyevalue(%struct.State* nonnull %0, i64 %4480, %struct.Memory* %MEMORY.44)
  %4485 = load i64, i64* %RBP.i, align 8
  %4486 = add i64 %4485, -4224
  %4487 = load i64, i64* %3, align 8
  %4488 = add i64 %4487, 6
  store i64 %4488, i64* %3, align 8
  %4489 = inttoptr i64 %4486 to i32*
  %4490 = load i32, i32* %4489, align 4
  %4491 = zext i32 %4490 to i64
  store i64 %4491, i64* %RCX.i2073, align 8
  %4492 = add i64 %4485, -96
  %4493 = add i64 %4487, 10
  store i64 %4493, i64* %3, align 8
  %4494 = inttoptr i64 %4492 to i64*
  %4495 = load i64, i64* %4494, align 8
  store i64 %4495, i64* %RAX.i2122, align 8
  %4496 = add i64 %4487, 12
  store i64 %4496, i64* %3, align 8
  %4497 = inttoptr i64 %4495 to i32*
  %4498 = load i32, i32* %4497, align 4
  %4499 = add i32 %4498, %4490
  %4500 = zext i32 %4499 to i64
  store i64 %4500, i64* %RCX.i2073, align 8
  %4501 = icmp ult i32 %4499, %4490
  %4502 = icmp ult i32 %4499, %4498
  %4503 = or i1 %4501, %4502
  %4504 = zext i1 %4503 to i8
  store i8 %4504, i8* %39, align 1
  %4505 = and i32 %4499, 255
  %4506 = tail call i32 @llvm.ctpop.i32(i32 %4505)
  %4507 = trunc i32 %4506 to i8
  %4508 = and i8 %4507, 1
  %4509 = xor i8 %4508, 1
  store i8 %4509, i8* %46, align 1
  %4510 = xor i32 %4498, %4490
  %4511 = xor i32 %4510, %4499
  %4512 = lshr i32 %4511, 4
  %4513 = trunc i32 %4512 to i8
  %4514 = and i8 %4513, 1
  store i8 %4514, i8* %52, align 1
  %4515 = icmp eq i32 %4499, 0
  %4516 = zext i1 %4515 to i8
  store i8 %4516, i8* %55, align 1
  %4517 = lshr i32 %4499, 31
  %4518 = trunc i32 %4517 to i8
  store i8 %4518, i8* %58, align 1
  %4519 = lshr i32 %4490, 31
  %4520 = lshr i32 %4498, 31
  %4521 = xor i32 %4517, %4519
  %4522 = xor i32 %4517, %4520
  %4523 = add nuw nsw i32 %4521, %4522
  %4524 = icmp eq i32 %4523, 2
  %4525 = zext i1 %4524 to i8
  store i8 %4525, i8* %64, align 1
  %4526 = add i64 %4487, 14
  store i64 %4526, i64* %3, align 8
  store i32 %4499, i32* %4497, align 4
  %4527 = load i64, i64* %RBP.i, align 8
  %4528 = add i64 %4527, -4220
  %4529 = load i64, i64* %3, align 8
  %4530 = add i64 %4529, 7
  store i64 %4530, i64* %3, align 8
  %4531 = inttoptr i64 %4528 to i32*
  %4532 = load i32, i32* %4531, align 4
  store i8 0, i8* %39, align 1
  %4533 = and i32 %4532, 255
  %4534 = tail call i32 @llvm.ctpop.i32(i32 %4533)
  %4535 = trunc i32 %4534 to i8
  %4536 = and i8 %4535, 1
  %4537 = xor i8 %4536, 1
  store i8 %4537, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %4538 = icmp eq i32 %4532, 0
  %4539 = zext i1 %4538 to i8
  store i8 %4539, i8* %55, align 1
  %4540 = lshr i32 %4532, 31
  %4541 = trunc i32 %4540 to i8
  store i8 %4541, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v211 = select i1 %4538, i64 13, i64 28
  %4542 = add i64 %4529, %.v211
  store i64 %4542, i64* %3, align 8
  br i1 %4538, label %block_442d25, label %block_.L_442d34

block_442d25:                                     ; preds = %block_442cae
  %4543 = add i64 %4527, -4212
  %4544 = add i64 %4542, 10
  store i64 %4544, i64* %3, align 8
  %4545 = inttoptr i64 %4543 to i32*
  store i32 20, i32* %4545, align 4
  %4546 = load i64, i64* %3, align 8
  %4547 = add i64 %4546, 173
  br label %block_.L_442ddc

block_.L_442d34:                                  ; preds = %block_442cae
  %4548 = add i64 %4542, 7
  store i64 %4548, i64* %3, align 8
  %4549 = load i32, i32* %4531, align 4
  %4550 = add i32 %4549, -1
  %4551 = icmp eq i32 %4549, 0
  %4552 = zext i1 %4551 to i8
  store i8 %4552, i8* %39, align 1
  %4553 = and i32 %4550, 255
  %4554 = tail call i32 @llvm.ctpop.i32(i32 %4553)
  %4555 = trunc i32 %4554 to i8
  %4556 = and i8 %4555, 1
  %4557 = xor i8 %4556, 1
  store i8 %4557, i8* %46, align 1
  %4558 = xor i32 %4550, %4549
  %4559 = lshr i32 %4558, 4
  %4560 = trunc i32 %4559 to i8
  %4561 = and i8 %4560, 1
  store i8 %4561, i8* %52, align 1
  %4562 = icmp eq i32 %4550, 0
  %4563 = zext i1 %4562 to i8
  store i8 %4563, i8* %55, align 1
  %4564 = lshr i32 %4550, 31
  %4565 = trunc i32 %4564 to i8
  store i8 %4565, i8* %58, align 1
  %4566 = lshr i32 %4549, 31
  %4567 = xor i32 %4564, %4566
  %4568 = add nuw nsw i32 %4567, %4566
  %4569 = icmp eq i32 %4568, 2
  %4570 = zext i1 %4569 to i8
  store i8 %4570, i8* %64, align 1
  %.v212 = select i1 %4562, i64 13, i64 63
  %4571 = add i64 %4542, %.v212
  store i64 %4571, i64* %3, align 8
  br i1 %4562, label %block_442d41, label %block_.L_442d73

block_442d41:                                     ; preds = %block_.L_442d34
  %4572 = add i64 %4527, -4224
  %4573 = add i64 %4571, 7
  store i64 %4573, i64* %3, align 8
  %4574 = inttoptr i64 %4572 to i32*
  %4575 = load i32, i32* %4574, align 4
  %4576 = add i32 %4575, -1
  %4577 = icmp eq i32 %4575, 0
  %4578 = zext i1 %4577 to i8
  store i8 %4578, i8* %39, align 1
  %4579 = and i32 %4576, 255
  %4580 = tail call i32 @llvm.ctpop.i32(i32 %4579)
  %4581 = trunc i32 %4580 to i8
  %4582 = and i8 %4581, 1
  %4583 = xor i8 %4582, 1
  store i8 %4583, i8* %46, align 1
  %4584 = xor i32 %4576, %4575
  %4585 = lshr i32 %4584, 4
  %4586 = trunc i32 %4585 to i8
  %4587 = and i8 %4586, 1
  store i8 %4587, i8* %52, align 1
  %4588 = icmp eq i32 %4576, 0
  %4589 = zext i1 %4588 to i8
  store i8 %4589, i8* %55, align 1
  %4590 = lshr i32 %4576, 31
  %4591 = trunc i32 %4590 to i8
  store i8 %4591, i8* %58, align 1
  %4592 = lshr i32 %4575, 31
  %4593 = xor i32 %4590, %4592
  %4594 = add nuw nsw i32 %4593, %4592
  %4595 = icmp eq i32 %4594, 2
  %4596 = zext i1 %4595 to i8
  store i8 %4596, i8* %64, align 1
  %.v222 = select i1 %4588, i64 13, i64 50
  %4597 = add i64 %4571, %.v222
  store i64 %4597, i64* %3, align 8
  br i1 %4588, label %block_442d4e, label %block_.L_442d73

block_442d4e:                                     ; preds = %block_442d41
  %4598 = add i64 %4527, -48
  %4599 = add i64 %4597, 4
  store i64 %4599, i64* %3, align 8
  %4600 = inttoptr i64 %4598 to i64*
  %4601 = load i64, i64* %4600, align 8
  store i64 %4601, i64* %RAX.i2122, align 8
  %4602 = add i64 %4527, -4156
  %4603 = add i64 %4597, 11
  store i64 %4603, i64* %3, align 8
  %4604 = inttoptr i64 %4602 to i32*
  %4605 = load i32, i32* %4604, align 4
  %4606 = sext i32 %4605 to i64
  store i64 %4606, i64* %RCX.i2073, align 8
  %4607 = shl nsw i64 %4606, 2
  %4608 = add i64 %4601, 34804
  %4609 = add i64 %4608, %4607
  %4610 = add i64 %4597, 18
  store i64 %4610, i64* %3, align 8
  %4611 = inttoptr i64 %4609 to i32*
  %4612 = load i32, i32* %4611, align 4
  %4613 = zext i32 %4612 to i64
  store i64 %4613, i64* %RDI.i2098, align 8
  %4614 = add i64 %4597, -193886
  %4615 = add i64 %4597, 23
  %4616 = load i64, i64* %6, align 8
  %4617 = add i64 %4616, -8
  %4618 = inttoptr i64 %4617 to i64*
  store i64 %4615, i64* %4618, align 8
  store i64 %4617, i64* %6, align 8
  store i64 %4614, i64* %3, align 8
  %call2_442d60 = tail call %struct.Memory* @sub_4137f0.countstones(%struct.State* nonnull %0, i64 %4614, %struct.Memory* %MEMORY.44)
  %4619 = load i64, i64* %RAX.i2122, align 8
  %4620 = load i64, i64* %3, align 8
  %4621 = trunc i64 %4619 to i32
  %4622 = add i32 %4621, 60
  %4623 = zext i32 %4622 to i64
  store i64 %4623, i64* %RAX.i2122, align 8
  %4624 = icmp ugt i32 %4621, -61
  %4625 = zext i1 %4624 to i8
  store i8 %4625, i8* %39, align 1
  %4626 = and i32 %4622, 255
  %4627 = tail call i32 @llvm.ctpop.i32(i32 %4626)
  %4628 = trunc i32 %4627 to i8
  %4629 = and i8 %4628, 1
  %4630 = xor i8 %4629, 1
  store i8 %4630, i8* %46, align 1
  %4631 = xor i32 %4621, 16
  %4632 = xor i32 %4631, %4622
  %4633 = lshr i32 %4632, 4
  %4634 = trunc i32 %4633 to i8
  %4635 = and i8 %4634, 1
  store i8 %4635, i8* %52, align 1
  %4636 = icmp eq i32 %4622, 0
  %4637 = zext i1 %4636 to i8
  store i8 %4637, i8* %55, align 1
  %4638 = lshr i32 %4622, 31
  %4639 = trunc i32 %4638 to i8
  store i8 %4639, i8* %58, align 1
  %4640 = lshr i32 %4621, 31
  %4641 = xor i32 %4638, %4640
  %4642 = add nuw nsw i32 %4641, %4638
  %4643 = icmp eq i32 %4642, 2
  %4644 = zext i1 %4643 to i8
  store i8 %4644, i8* %64, align 1
  %4645 = load i64, i64* %RBP.i, align 8
  %4646 = add i64 %4645, -4212
  %4647 = add i64 %4620, 9
  store i64 %4647, i64* %3, align 8
  %4648 = inttoptr i64 %4646 to i32*
  store i32 %4622, i32* %4648, align 4
  %4649 = load i64, i64* %3, align 8
  %4650 = add i64 %4649, 105
  br label %block_.L_442dd7

block_.L_442d73:                                  ; preds = %block_442d41, %block_.L_442d34
  %4651 = phi i64 [ %4597, %block_442d41 ], [ %4571, %block_.L_442d34 ]
  %4652 = add i64 %4651, 7
  store i64 %4652, i64* %3, align 8
  %4653 = load i32, i32* %4531, align 4
  %4654 = add i32 %4653, -1
  %4655 = icmp eq i32 %4653, 0
  %4656 = zext i1 %4655 to i8
  store i8 %4656, i8* %39, align 1
  %4657 = and i32 %4654, 255
  %4658 = tail call i32 @llvm.ctpop.i32(i32 %4657)
  %4659 = trunc i32 %4658 to i8
  %4660 = and i8 %4659, 1
  %4661 = xor i8 %4660, 1
  store i8 %4661, i8* %46, align 1
  %4662 = xor i32 %4654, %4653
  %4663 = lshr i32 %4662, 4
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  store i8 %4665, i8* %52, align 1
  %4666 = icmp eq i32 %4654, 0
  %4667 = zext i1 %4666 to i8
  store i8 %4667, i8* %55, align 1
  %4668 = lshr i32 %4654, 31
  %4669 = trunc i32 %4668 to i8
  store i8 %4669, i8* %58, align 1
  %4670 = lshr i32 %4653, 31
  %4671 = xor i32 %4668, %4670
  %4672 = add nuw nsw i32 %4671, %4670
  %4673 = icmp eq i32 %4672, 2
  %4674 = zext i1 %4673 to i8
  store i8 %4674, i8* %64, align 1
  %.v213 = select i1 %4666, i64 13, i64 63
  %4675 = add i64 %4651, %.v213
  store i64 %4675, i64* %3, align 8
  br i1 %4666, label %block_442d80, label %block_.L_442db2

block_442d80:                                     ; preds = %block_.L_442d73
  %4676 = add i64 %4527, -4224
  %4677 = add i64 %4675, 7
  store i64 %4677, i64* %3, align 8
  %4678 = inttoptr i64 %4676 to i32*
  %4679 = load i32, i32* %4678, align 4
  %4680 = add i32 %4679, -2
  %4681 = icmp ult i32 %4679, 2
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %39, align 1
  %4683 = and i32 %4680, 255
  %4684 = tail call i32 @llvm.ctpop.i32(i32 %4683)
  %4685 = trunc i32 %4684 to i8
  %4686 = and i8 %4685, 1
  %4687 = xor i8 %4686, 1
  store i8 %4687, i8* %46, align 1
  %4688 = xor i32 %4680, %4679
  %4689 = lshr i32 %4688, 4
  %4690 = trunc i32 %4689 to i8
  %4691 = and i8 %4690, 1
  store i8 %4691, i8* %52, align 1
  %4692 = icmp eq i32 %4680, 0
  %4693 = zext i1 %4692 to i8
  store i8 %4693, i8* %55, align 1
  %4694 = lshr i32 %4680, 31
  %4695 = trunc i32 %4694 to i8
  store i8 %4695, i8* %58, align 1
  %4696 = lshr i32 %4679, 31
  %4697 = xor i32 %4694, %4696
  %4698 = add nuw nsw i32 %4697, %4696
  %4699 = icmp eq i32 %4698, 2
  %4700 = zext i1 %4699 to i8
  store i8 %4700, i8* %64, align 1
  %.v221 = select i1 %4692, i64 13, i64 50
  %4701 = add i64 %4675, %.v221
  store i64 %4701, i64* %3, align 8
  br i1 %4692, label %block_442d8d, label %block_.L_442db2

block_442d8d:                                     ; preds = %block_442d80
  %4702 = add i64 %4527, -48
  %4703 = add i64 %4701, 4
  store i64 %4703, i64* %3, align 8
  %4704 = inttoptr i64 %4702 to i64*
  %4705 = load i64, i64* %4704, align 8
  store i64 %4705, i64* %RAX.i2122, align 8
  %4706 = add i64 %4527, -4156
  %4707 = add i64 %4701, 11
  store i64 %4707, i64* %3, align 8
  %4708 = inttoptr i64 %4706 to i32*
  %4709 = load i32, i32* %4708, align 4
  %4710 = sext i32 %4709 to i64
  store i64 %4710, i64* %RCX.i2073, align 8
  %4711 = shl nsw i64 %4710, 2
  %4712 = add i64 %4705, 34804
  %4713 = add i64 %4712, %4711
  %4714 = add i64 %4701, 18
  store i64 %4714, i64* %3, align 8
  %4715 = inttoptr i64 %4713 to i32*
  %4716 = load i32, i32* %4715, align 4
  %4717 = zext i32 %4716 to i64
  store i64 %4717, i64* %RDI.i2098, align 8
  %4718 = add i64 %4701, -193949
  %4719 = add i64 %4701, 23
  %4720 = load i64, i64* %6, align 8
  %4721 = add i64 %4720, -8
  %4722 = inttoptr i64 %4721 to i64*
  store i64 %4719, i64* %4722, align 8
  store i64 %4721, i64* %6, align 8
  store i64 %4718, i64* %3, align 8
  %call2_442d9f = tail call %struct.Memory* @sub_4137f0.countstones(%struct.State* nonnull %0, i64 %4718, %struct.Memory* %MEMORY.44)
  %4723 = load i64, i64* %RAX.i2122, align 8
  %4724 = load i64, i64* %3, align 8
  %4725 = trunc i64 %4723 to i32
  %4726 = add i32 %4725, 70
  %4727 = zext i32 %4726 to i64
  store i64 %4727, i64* %RAX.i2122, align 8
  %4728 = icmp ugt i32 %4725, -71
  %4729 = zext i1 %4728 to i8
  store i8 %4729, i8* %39, align 1
  %4730 = and i32 %4726, 255
  %4731 = tail call i32 @llvm.ctpop.i32(i32 %4730)
  %4732 = trunc i32 %4731 to i8
  %4733 = and i8 %4732, 1
  %4734 = xor i8 %4733, 1
  store i8 %4734, i8* %46, align 1
  %4735 = xor i32 %4726, %4725
  %4736 = lshr i32 %4735, 4
  %4737 = trunc i32 %4736 to i8
  %4738 = and i8 %4737, 1
  store i8 %4738, i8* %52, align 1
  %4739 = icmp eq i32 %4726, 0
  %4740 = zext i1 %4739 to i8
  store i8 %4740, i8* %55, align 1
  %4741 = lshr i32 %4726, 31
  %4742 = trunc i32 %4741 to i8
  store i8 %4742, i8* %58, align 1
  %4743 = lshr i32 %4725, 31
  %4744 = xor i32 %4741, %4743
  %4745 = add nuw nsw i32 %4744, %4741
  %4746 = icmp eq i32 %4745, 2
  %4747 = zext i1 %4746 to i8
  store i8 %4747, i8* %64, align 1
  %4748 = load i64, i64* %RBP.i, align 8
  %4749 = add i64 %4748, -4212
  %4750 = add i64 %4724, 9
  store i64 %4750, i64* %3, align 8
  %4751 = inttoptr i64 %4749 to i32*
  store i32 %4726, i32* %4751, align 4
  %4752 = load i64, i64* %3, align 8
  %4753 = add i64 %4752, 37
  store i64 %4753, i64* %3, align 8
  br label %block_.L_442dd2

block_.L_442db2:                                  ; preds = %block_442d80, %block_.L_442d73
  %4754 = phi i64 [ %4701, %block_442d80 ], [ %4675, %block_.L_442d73 ]
  %4755 = add i64 %4527, -48
  %4756 = add i64 %4754, 4
  store i64 %4756, i64* %3, align 8
  %4757 = inttoptr i64 %4755 to i64*
  %4758 = load i64, i64* %4757, align 8
  store i64 %4758, i64* %RAX.i2122, align 8
  %4759 = add i64 %4527, -4156
  %4760 = add i64 %4754, 11
  store i64 %4760, i64* %3, align 8
  %4761 = inttoptr i64 %4759 to i32*
  %4762 = load i32, i32* %4761, align 4
  %4763 = sext i32 %4762 to i64
  store i64 %4763, i64* %RCX.i2073, align 8
  %4764 = shl nsw i64 %4763, 2
  %4765 = add i64 %4758, 34804
  %4766 = add i64 %4765, %4764
  %4767 = add i64 %4754, 18
  store i64 %4767, i64* %3, align 8
  %4768 = inttoptr i64 %4766 to i32*
  %4769 = load i32, i32* %4768, align 4
  %4770 = zext i32 %4769 to i64
  store i64 %4770, i64* %RDI.i2098, align 8
  %4771 = add i64 %4754, -193986
  %4772 = add i64 %4754, 23
  %4773 = load i64, i64* %6, align 8
  %4774 = add i64 %4773, -8
  %4775 = inttoptr i64 %4774 to i64*
  store i64 %4772, i64* %4775, align 8
  store i64 %4774, i64* %6, align 8
  store i64 %4771, i64* %3, align 8
  %call2_442dc4 = tail call %struct.Memory* @sub_4137f0.countstones(%struct.State* nonnull %0, i64 %4771, %struct.Memory* %MEMORY.44)
  %4776 = load i64, i64* %RAX.i2122, align 8
  %4777 = load i64, i64* %3, align 8
  %4778 = trunc i64 %4776 to i32
  %4779 = add i32 %4778, 75
  %4780 = zext i32 %4779 to i64
  store i64 %4780, i64* %RAX.i2122, align 8
  %4781 = icmp ugt i32 %4778, -76
  %4782 = zext i1 %4781 to i8
  store i8 %4782, i8* %39, align 1
  %4783 = and i32 %4779, 255
  %4784 = tail call i32 @llvm.ctpop.i32(i32 %4783)
  %4785 = trunc i32 %4784 to i8
  %4786 = and i8 %4785, 1
  %4787 = xor i8 %4786, 1
  store i8 %4787, i8* %46, align 1
  %4788 = xor i32 %4779, %4778
  %4789 = lshr i32 %4788, 4
  %4790 = trunc i32 %4789 to i8
  %4791 = and i8 %4790, 1
  store i8 %4791, i8* %52, align 1
  %4792 = icmp eq i32 %4779, 0
  %4793 = zext i1 %4792 to i8
  store i8 %4793, i8* %55, align 1
  %4794 = lshr i32 %4779, 31
  %4795 = trunc i32 %4794 to i8
  store i8 %4795, i8* %58, align 1
  %4796 = lshr i32 %4778, 31
  %4797 = xor i32 %4794, %4796
  %4798 = add nuw nsw i32 %4797, %4794
  %4799 = icmp eq i32 %4798, 2
  %4800 = zext i1 %4799 to i8
  store i8 %4800, i8* %64, align 1
  %4801 = load i64, i64* %RBP.i, align 8
  %4802 = add i64 %4801, -4212
  %4803 = add i64 %4777, 9
  store i64 %4803, i64* %3, align 8
  %4804 = inttoptr i64 %4802 to i32*
  store i32 %4779, i32* %4804, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_442dd2

block_.L_442dd2:                                  ; preds = %block_.L_442db2, %block_442d8d
  %4805 = phi i64 [ %.pre147, %block_.L_442db2 ], [ %4753, %block_442d8d ]
  %4806 = add i64 %4805, 5
  store i64 %4806, i64* %3, align 8
  br label %block_.L_442dd7

block_.L_442dd7:                                  ; preds = %block_.L_442dd2, %block_442d4e
  %storemerge87 = phi i64 [ %4650, %block_442d4e ], [ %4806, %block_.L_442dd2 ]
  %4807 = add i64 %storemerge87, 5
  store i64 %4807, i64* %3, align 8
  br label %block_.L_442ddc

block_.L_442ddc:                                  ; preds = %block_.L_442dd7, %block_442d25
  %storemerge83 = phi i64 [ %4547, %block_442d25 ], [ %4807, %block_.L_442dd7 ]
  %4808 = load i64, i64* %RBP.i, align 8
  %4809 = add i64 %4808, -48
  %4810 = add i64 %storemerge83, 4
  store i64 %4810, i64* %3, align 8
  %4811 = inttoptr i64 %4809 to i64*
  %4812 = load i64, i64* %4811, align 8
  store i64 %4812, i64* %RAX.i2122, align 8
  %4813 = add i64 %4808, -4156
  %4814 = add i64 %storemerge83, 11
  store i64 %4814, i64* %3, align 8
  %4815 = inttoptr i64 %4813 to i32*
  %4816 = load i32, i32* %4815, align 4
  %4817 = sext i32 %4816 to i64
  store i64 %4817, i64* %RCX.i2073, align 8
  %4818 = shl nsw i64 %4817, 2
  %4819 = add i64 %4812, 34844
  %4820 = add i64 %4819, %4818
  %4821 = add i64 %storemerge83, 19
  store i64 %4821, i64* %3, align 8
  %4822 = inttoptr i64 %4820 to i32*
  %4823 = load i32, i32* %4822, align 4
  %4824 = add i32 %4823, -5
  %4825 = icmp ult i32 %4823, 5
  %4826 = zext i1 %4825 to i8
  store i8 %4826, i8* %39, align 1
  %4827 = and i32 %4824, 255
  %4828 = tail call i32 @llvm.ctpop.i32(i32 %4827)
  %4829 = trunc i32 %4828 to i8
  %4830 = and i8 %4829, 1
  %4831 = xor i8 %4830, 1
  store i8 %4831, i8* %46, align 1
  %4832 = xor i32 %4824, %4823
  %4833 = lshr i32 %4832, 4
  %4834 = trunc i32 %4833 to i8
  %4835 = and i8 %4834, 1
  store i8 %4835, i8* %52, align 1
  %4836 = icmp eq i32 %4824, 0
  %4837 = zext i1 %4836 to i8
  store i8 %4837, i8* %55, align 1
  %4838 = lshr i32 %4824, 31
  %4839 = trunc i32 %4838 to i8
  store i8 %4839, i8* %58, align 1
  %4840 = lshr i32 %4823, 31
  %4841 = xor i32 %4838, %4840
  %4842 = add nuw nsw i32 %4841, %4840
  %4843 = icmp eq i32 %4842, 2
  %4844 = zext i1 %4843 to i8
  store i8 %4844, i8* %64, align 1
  %.v214 = select i1 %4836, i64 40, i64 25
  %4845 = add i64 %storemerge83, %.v214
  store i64 %4845, i64* %3, align 8
  br i1 %4836, label %block_.L_442e04, label %block_442df5

block_442df5:                                     ; preds = %block_.L_442ddc
  %4846 = add i64 %4808, -4212
  %4847 = add i64 %4845, 6
  store i64 %4847, i64* %3, align 8
  %4848 = inttoptr i64 %4846 to i32*
  %4849 = load i32, i32* %4848, align 4
  %4850 = add i32 %4849, -10
  %4851 = zext i32 %4850 to i64
  store i64 %4851, i64* %RAX.i2122, align 8
  %4852 = icmp ult i32 %4849, 10
  %4853 = zext i1 %4852 to i8
  store i8 %4853, i8* %39, align 1
  %4854 = and i32 %4850, 255
  %4855 = tail call i32 @llvm.ctpop.i32(i32 %4854)
  %4856 = trunc i32 %4855 to i8
  %4857 = and i8 %4856, 1
  %4858 = xor i8 %4857, 1
  store i8 %4858, i8* %46, align 1
  %4859 = xor i32 %4850, %4849
  %4860 = lshr i32 %4859, 4
  %4861 = trunc i32 %4860 to i8
  %4862 = and i8 %4861, 1
  store i8 %4862, i8* %52, align 1
  %4863 = icmp eq i32 %4850, 0
  %4864 = zext i1 %4863 to i8
  store i8 %4864, i8* %55, align 1
  %4865 = lshr i32 %4850, 31
  %4866 = trunc i32 %4865 to i8
  store i8 %4866, i8* %58, align 1
  %4867 = lshr i32 %4849, 31
  %4868 = xor i32 %4865, %4867
  %4869 = add nuw nsw i32 %4868, %4867
  %4870 = icmp eq i32 %4869, 2
  %4871 = zext i1 %4870 to i8
  store i8 %4871, i8* %64, align 1
  %4872 = add i64 %4845, 15
  store i64 %4872, i64* %3, align 8
  store i32 %4850, i32* %4848, align 4
  %.pre148 = load i64, i64* %RBP.i, align 8
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_442e04

block_.L_442e04:                                  ; preds = %block_442df5, %block_.L_442ddc
  %4873 = phi i64 [ %.pre149, %block_442df5 ], [ %4845, %block_.L_442ddc ]
  %4874 = phi i64 [ %.pre148, %block_442df5 ], [ %4808, %block_.L_442ddc ]
  %4875 = add i64 %4874, -4212
  %4876 = add i64 %4873, 7
  store i64 %4876, i64* %3, align 8
  %4877 = inttoptr i64 %4875 to i32*
  %4878 = load i32, i32* %4877, align 4
  %4879 = add i32 %4878, -21
  %4880 = icmp ult i32 %4878, 21
  %4881 = zext i1 %4880 to i8
  store i8 %4881, i8* %39, align 1
  %4882 = and i32 %4879, 255
  %4883 = tail call i32 @llvm.ctpop.i32(i32 %4882)
  %4884 = trunc i32 %4883 to i8
  %4885 = and i8 %4884, 1
  %4886 = xor i8 %4885, 1
  store i8 %4886, i8* %46, align 1
  %4887 = xor i32 %4878, 16
  %4888 = xor i32 %4887, %4879
  %4889 = lshr i32 %4888, 4
  %4890 = trunc i32 %4889 to i8
  %4891 = and i8 %4890, 1
  store i8 %4891, i8* %52, align 1
  %4892 = icmp eq i32 %4879, 0
  %4893 = zext i1 %4892 to i8
  store i8 %4893, i8* %55, align 1
  %4894 = lshr i32 %4879, 31
  %4895 = trunc i32 %4894 to i8
  store i8 %4895, i8* %58, align 1
  %4896 = lshr i32 %4878, 31
  %4897 = xor i32 %4894, %4896
  %4898 = add nuw nsw i32 %4897, %4896
  %4899 = icmp eq i32 %4898, 2
  %4900 = zext i1 %4899 to i8
  store i8 %4900, i8* %64, align 1
  %4901 = icmp ne i8 %4895, 0
  %4902 = xor i1 %4901, %4899
  %.v215 = select i1 %4902, i64 13, i64 98
  %4903 = add i64 %4873, %.v215
  store i64 %4903, i64* %3, align 8
  br i1 %4902, label %block_442e11, label %block_.L_442e66

block_442e11:                                     ; preds = %block_.L_442e04
  %4904 = add i64 %4874, -48
  %4905 = add i64 %4903, 4
  store i64 %4905, i64* %3, align 8
  %4906 = inttoptr i64 %4904 to i64*
  %4907 = load i64, i64* %4906, align 8
  store i64 %4907, i64* %RAX.i2122, align 8
  %4908 = add i64 %4874, -4156
  %4909 = add i64 %4903, 11
  store i64 %4909, i64* %3, align 8
  %4910 = inttoptr i64 %4908 to i32*
  %4911 = load i32, i32* %4910, align 4
  %4912 = sext i32 %4911 to i64
  store i64 %4912, i64* %RCX.i2073, align 8
  %4913 = shl nsw i64 %4912, 2
  %4914 = add i64 %4907, 34804
  %4915 = add i64 %4914, %4913
  %4916 = add i64 %4903, 18
  store i64 %4916, i64* %3, align 8
  %4917 = inttoptr i64 %4915 to i32*
  %4918 = load i32, i32* %4917, align 4
  %4919 = zext i32 %4918 to i64
  store i64 %4919, i64* %RDI.i2098, align 8
  %4920 = add i64 %4903, -194081
  %4921 = add i64 %4903, 23
  %4922 = load i64, i64* %6, align 8
  %4923 = add i64 %4922, -8
  %4924 = inttoptr i64 %4923 to i64*
  store i64 %4921, i64* %4924, align 8
  store i64 %4923, i64* %6, align 8
  store i64 %4920, i64* %3, align 8
  %call2_442e23 = tail call %struct.Memory* @sub_4137f0.countstones(%struct.State* nonnull %0, i64 %4920, %struct.Memory* %MEMORY.44)
  %4925 = load i32, i32* %EAX.i1917, align 4
  %4926 = load i64, i64* %3, align 8
  %4927 = add i32 %4925, -1
  %4928 = icmp eq i32 %4925, 0
  %4929 = zext i1 %4928 to i8
  store i8 %4929, i8* %39, align 1
  %4930 = and i32 %4927, 255
  %4931 = tail call i32 @llvm.ctpop.i32(i32 %4930)
  %4932 = trunc i32 %4931 to i8
  %4933 = and i8 %4932, 1
  %4934 = xor i8 %4933, 1
  store i8 %4934, i8* %46, align 1
  %4935 = xor i32 %4927, %4925
  %4936 = lshr i32 %4935, 4
  %4937 = trunc i32 %4936 to i8
  %4938 = and i8 %4937, 1
  store i8 %4938, i8* %52, align 1
  %4939 = icmp eq i32 %4927, 0
  %4940 = zext i1 %4939 to i8
  store i8 %4940, i8* %55, align 1
  %4941 = lshr i32 %4927, 31
  %4942 = trunc i32 %4941 to i8
  store i8 %4942, i8* %58, align 1
  %4943 = lshr i32 %4925, 31
  %4944 = xor i32 %4941, %4943
  %4945 = add nuw nsw i32 %4944, %4943
  %4946 = icmp eq i32 %4945, 2
  %4947 = zext i1 %4946 to i8
  store i8 %4947, i8* %64, align 1
  %.v220 = select i1 %4939, i64 9, i64 62
  %4948 = add i64 %4926, %.v220
  store i64 %4948, i64* %3, align 8
  %4949 = load i64, i64* %RBP.i, align 8
  br i1 %4939, label %block_442e31, label %block_.L_442e66

block_442e31:                                     ; preds = %block_442e11
  %4950 = add i64 %4949, -4168
  %4951 = add i64 %4948, 6
  store i64 %4951, i64* %3, align 8
  %4952 = inttoptr i64 %4950 to i32*
  %4953 = load i32, i32* %4952, align 4
  %4954 = add i32 %4953, 1
  %4955 = zext i32 %4954 to i64
  store i64 %4955, i64* %RAX.i2122, align 8
  %4956 = icmp eq i32 %4953, -1
  %4957 = icmp eq i32 %4954, 0
  %4958 = or i1 %4956, %4957
  %4959 = zext i1 %4958 to i8
  store i8 %4959, i8* %39, align 1
  %4960 = and i32 %4954, 255
  %4961 = tail call i32 @llvm.ctpop.i32(i32 %4960)
  %4962 = trunc i32 %4961 to i8
  %4963 = and i8 %4962, 1
  %4964 = xor i8 %4963, 1
  store i8 %4964, i8* %46, align 1
  %4965 = xor i32 %4954, %4953
  %4966 = lshr i32 %4965, 4
  %4967 = trunc i32 %4966 to i8
  %4968 = and i8 %4967, 1
  store i8 %4968, i8* %52, align 1
  %4969 = zext i1 %4957 to i8
  store i8 %4969, i8* %55, align 1
  %4970 = lshr i32 %4954, 31
  %4971 = trunc i32 %4970 to i8
  store i8 %4971, i8* %58, align 1
  %4972 = lshr i32 %4953, 31
  %4973 = xor i32 %4970, %4972
  %4974 = add nuw nsw i32 %4973, %4970
  %4975 = icmp eq i32 %4974, 2
  %4976 = zext i1 %4975 to i8
  store i8 %4976, i8* %64, align 1
  %4977 = add i64 %4948, 15
  store i64 %4977, i64* %3, align 8
  store i32 %4954, i32* %4952, align 4
  %4978 = load i64, i64* %RBP.i, align 8
  %4979 = add i64 %4978, -4164
  %4980 = load i64, i64* %3, align 8
  %4981 = add i64 %4980, 6
  store i64 %4981, i64* %3, align 8
  %4982 = inttoptr i64 %4979 to i32*
  %4983 = load i32, i32* %4982, align 4
  %4984 = zext i32 %4983 to i64
  store i64 %4984, i64* %RAX.i2122, align 8
  %4985 = add i32 %4983, 1
  %4986 = zext i32 %4985 to i64
  store i64 %4986, i64* %RCX.i2073, align 8
  %4987 = icmp eq i32 %4983, -1
  %4988 = icmp eq i32 %4985, 0
  %4989 = or i1 %4987, %4988
  %4990 = zext i1 %4989 to i8
  store i8 %4990, i8* %39, align 1
  %4991 = and i32 %4985, 255
  %4992 = tail call i32 @llvm.ctpop.i32(i32 %4991)
  %4993 = trunc i32 %4992 to i8
  %4994 = and i8 %4993, 1
  %4995 = xor i8 %4994, 1
  store i8 %4995, i8* %46, align 1
  %4996 = xor i32 %4985, %4983
  %4997 = lshr i32 %4996, 4
  %4998 = trunc i32 %4997 to i8
  %4999 = and i8 %4998, 1
  store i8 %4999, i8* %52, align 1
  %5000 = zext i1 %4988 to i8
  store i8 %5000, i8* %55, align 1
  %5001 = lshr i32 %4985, 31
  %5002 = trunc i32 %5001 to i8
  store i8 %5002, i8* %58, align 1
  %5003 = lshr i32 %4983, 31
  %5004 = xor i32 %5001, %5003
  %5005 = add nuw nsw i32 %5004, %5001
  %5006 = icmp eq i32 %5005, 2
  %5007 = zext i1 %5006 to i8
  store i8 %5007, i8* %64, align 1
  %5008 = add i64 %4980, 17
  store i64 %5008, i64* %3, align 8
  store i32 %4985, i32* %4982, align 4
  %5009 = load i32, i32* %EAX.i1917, align 4
  %5010 = load i64, i64* %3, align 8
  %5011 = sext i32 %5009 to i64
  store i64 %5011, i64* %RDX.i2039, align 8
  %5012 = load i64, i64* %RBP.i, align 8
  %5013 = add i64 %5012, -4232
  %5014 = add i64 %5010, 9
  store i64 %5014, i64* %3, align 8
  %5015 = inttoptr i64 %5013 to i32*
  %5016 = load i32, i32* %5015, align 4
  %5017 = zext i32 %5016 to i64
  store i64 %5017, i64* %RAX.i2122, align 8
  %5018 = shl nsw i64 %5011, 2
  %5019 = add i64 %5012, -3328
  %5020 = add i64 %5019, %5018
  %5021 = add i64 %5010, 16
  store i64 %5021, i64* %3, align 8
  %5022 = inttoptr i64 %5020 to i32*
  store i32 %5016, i32* %5022, align 4
  %5023 = load i64, i64* %3, align 8
  %5024 = add i64 %5023, 733
  br label %block_.L_44313e

block_.L_442e66:                                  ; preds = %block_442e11, %block_.L_442e04
  %5025 = phi i64 [ %4903, %block_.L_442e04 ], [ %4948, %block_442e11 ]
  %5026 = phi i64 [ %4874, %block_.L_442e04 ], [ %4949, %block_442e11 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.44, %block_.L_442e04 ], [ %call2_442e23, %block_442e11 ]
  %5027 = add i64 %5026, -64
  %5028 = add i64 %5025, 4
  store i64 %5028, i64* %3, align 8
  %5029 = inttoptr i64 %5027 to i32*
  %5030 = load i32, i32* %5029, align 4
  store i8 0, i8* %39, align 1
  %5031 = and i32 %5030, 255
  %5032 = tail call i32 @llvm.ctpop.i32(i32 %5031)
  %5033 = trunc i32 %5032 to i8
  %5034 = and i8 %5033, 1
  %5035 = xor i8 %5034, 1
  store i8 %5035, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %5036 = icmp eq i32 %5030, 0
  %5037 = zext i1 %5036 to i8
  store i8 %5037, i8* %55, align 1
  %5038 = lshr i32 %5030, 31
  %5039 = trunc i32 %5038 to i8
  store i8 %5039, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v183 = select i1 %5036, i64 504, i64 10
  %5040 = add i64 %5025, %.v183
  %5041 = add i64 %5026, -48
  %5042 = add i64 %5040, 4
  store i64 %5042, i64* %3, align 8
  %5043 = inttoptr i64 %5041 to i64*
  %5044 = load i64, i64* %5043, align 8
  store i64 %5044, i64* %RAX.i2122, align 8
  %5045 = add i64 %5026, -4156
  %5046 = add i64 %5040, 11
  store i64 %5046, i64* %3, align 8
  %5047 = inttoptr i64 %5045 to i32*
  %5048 = load i32, i32* %5047, align 4
  %5049 = sext i32 %5048 to i64
  store i64 %5049, i64* %RCX.i2073, align 8
  %5050 = shl nsw i64 %5049, 2
  %5051 = add i64 %5044, 34804
  %5052 = add i64 %5051, %5050
  %5053 = add i64 %5040, 18
  store i64 %5053, i64* %3, align 8
  %5054 = inttoptr i64 %5052 to i32*
  %5055 = load i32, i32* %5054, align 4
  %5056 = zext i32 %5055 to i64
  store i64 %5056, i64* %RDI.i2098, align 8
  %5057 = add i64 %5040, 22
  store i64 %5057, i64* %3, align 8
  %5058 = load i64, i64* %5043, align 8
  store i64 %5058, i64* %RAX.i2122, align 8
  %5059 = add i64 %5040, 29
  store i64 %5059, i64* %3, align 8
  %5060 = load i32, i32* %5047, align 4
  %5061 = sext i32 %5060 to i64
  store i64 %5061, i64* %RCX.i2073, align 8
  %5062 = shl nsw i64 %5061, 2
  br i1 %5036, label %block_.L_44305e, label %block_442e70

block_442e70:                                     ; preds = %block_.L_442e66
  %5063 = add i64 %5058, 34964
  %5064 = add i64 %5063, %5062
  %5065 = add i64 %5040, 36
  store i64 %5065, i64* %3, align 8
  %5066 = inttoptr i64 %5064 to i32*
  %5067 = load i32, i32* %5066, align 4
  %5068 = zext i32 %5067 to i64
  store i64 %5068, i64* %RSI.i2095, align 8
  %5069 = add i64 %5040, 11312
  %5070 = add i64 %5040, 41
  %5071 = load i64, i64* %6, align 8
  %5072 = add i64 %5071, -8
  %5073 = inttoptr i64 %5072 to i64*
  store i64 %5070, i64* %5073, align 8
  store i64 %5072, i64* %6, align 8
  store i64 %5069, i64* %3, align 8
  %call2_442e94 = tail call %struct.Memory* @sub_445aa0.improve_lunch_defense(%struct.State* nonnull %0, i64 %5069, %struct.Memory* %MEMORY.51)
  %5074 = load i64, i64* %RBP.i, align 8
  %5075 = add i64 %5074, -4140
  %5076 = load i32, i32* %EAX.i1917, align 4
  %5077 = load i64, i64* %3, align 8
  %5078 = add i64 %5077, 6
  store i64 %5078, i64* %3, align 8
  %5079 = inttoptr i64 %5075 to i32*
  store i32 %5076, i32* %5079, align 4
  %5080 = load i64, i64* %RBP.i, align 8
  %5081 = add i64 %5080, -4140
  %5082 = load i64, i64* %3, align 8
  %5083 = add i64 %5082, 7
  store i64 %5083, i64* %3, align 8
  %5084 = inttoptr i64 %5081 to i32*
  %5085 = load i32, i32* %5084, align 4
  %5086 = sext i32 %5085 to i64
  store i64 %5086, i64* %RCX.i2073, align 8
  %5087 = shl nsw i64 %5086, 2
  %5088 = add i64 %5080, -2512
  %5089 = add i64 %5088, %5087
  %5090 = add i64 %5082, 15
  store i64 %5090, i64* %3, align 8
  %5091 = inttoptr i64 %5089 to i32*
  %5092 = load i32, i32* %5091, align 4
  store i8 0, i8* %39, align 1
  %5093 = and i32 %5092, 255
  %5094 = tail call i32 @llvm.ctpop.i32(i32 %5093)
  %5095 = trunc i32 %5094 to i8
  %5096 = and i8 %5095, 1
  %5097 = xor i8 %5096, 1
  store i8 %5097, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %5098 = icmp eq i32 %5092, 0
  %5099 = zext i1 %5098 to i8
  store i8 %5099, i8* %55, align 1
  %5100 = lshr i32 %5092, 31
  %5101 = trunc i32 %5100 to i8
  store i8 %5101, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v216 = select i1 %5098, i64 275, i64 21
  %5102 = add i64 %5082, %.v216
  store i64 %5102, i64* %3, align 8
  br i1 %5098, label %block_.L_442fb2, label %block_442eb4

block_442eb4:                                     ; preds = %block_442e70
  %5103 = add i64 %5080, -4236
  %5104 = add i64 %5102, 10
  store i64 %5104, i64* %3, align 8
  %5105 = inttoptr i64 %5103 to i32*
  store i32 0, i32* %5105, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_442ebe

block_.L_442ebe:                                  ; preds = %block_.L_442ef7, %block_442eb4
  %5106 = phi i64 [ %5218, %block_.L_442ef7 ], [ %.pre151, %block_442eb4 ]
  %5107 = load i64, i64* %RBP.i, align 8
  %5108 = add i64 %5107, -4236
  %5109 = add i64 %5106, 6
  store i64 %5109, i64* %3, align 8
  %5110 = inttoptr i64 %5108 to i32*
  %5111 = load i32, i32* %5110, align 4
  %5112 = zext i32 %5111 to i64
  store i64 %5112, i64* %RAX.i2122, align 8
  %5113 = add i64 %5107, -4164
  %5114 = add i64 %5106, 12
  store i64 %5114, i64* %3, align 8
  %5115 = inttoptr i64 %5113 to i32*
  %5116 = load i32, i32* %5115, align 4
  %5117 = zext i32 %5116 to i64
  store i64 %5117, i64* %RCX.i2073, align 8
  %5118 = add i64 %5107, -4168
  %5119 = add i64 %5106, 18
  store i64 %5119, i64* %3, align 8
  %5120 = inttoptr i64 %5118 to i32*
  %5121 = load i32, i32* %5120, align 4
  %5122 = sub i32 %5116, %5121
  %5123 = zext i32 %5122 to i64
  store i64 %5123, i64* %RCX.i2073, align 8
  %5124 = lshr i32 %5122, 31
  %5125 = sub i32 %5111, %5122
  %5126 = icmp ult i32 %5111, %5122
  %5127 = zext i1 %5126 to i8
  store i8 %5127, i8* %39, align 1
  %5128 = and i32 %5125, 255
  %5129 = tail call i32 @llvm.ctpop.i32(i32 %5128)
  %5130 = trunc i32 %5129 to i8
  %5131 = and i8 %5130, 1
  %5132 = xor i8 %5131, 1
  store i8 %5132, i8* %46, align 1
  %5133 = xor i32 %5122, %5111
  %5134 = xor i32 %5133, %5125
  %5135 = lshr i32 %5134, 4
  %5136 = trunc i32 %5135 to i8
  %5137 = and i8 %5136, 1
  store i8 %5137, i8* %52, align 1
  %5138 = icmp eq i32 %5125, 0
  %5139 = zext i1 %5138 to i8
  store i8 %5139, i8* %55, align 1
  %5140 = lshr i32 %5125, 31
  %5141 = trunc i32 %5140 to i8
  store i8 %5141, i8* %58, align 1
  %5142 = lshr i32 %5111, 31
  %5143 = xor i32 %5124, %5142
  %5144 = xor i32 %5140, %5142
  %5145 = add nuw nsw i32 %5144, %5143
  %5146 = icmp eq i32 %5145, 2
  %5147 = zext i1 %5146 to i8
  store i8 %5147, i8* %64, align 1
  %5148 = icmp ne i8 %5141, 0
  %5149 = xor i1 %5148, %5146
  %.v185 = select i1 %5149, i64 26, i64 82
  %5150 = add i64 %5106, %.v185
  store i64 %5150, i64* %3, align 8
  br i1 %5149, label %block_442ed8, label %block_.L_442f10.loopexit

block_442ed8:                                     ; preds = %block_.L_442ebe
  %5151 = add i64 %5150, 7
  store i64 %5151, i64* %3, align 8
  %5152 = load i32, i32* %5110, align 4
  %5153 = sext i32 %5152 to i64
  store i64 %5153, i64* %RAX.i2122, align 8
  %5154 = shl nsw i64 %5153, 2
  %5155 = add i64 %5107, -4128
  %5156 = add i64 %5155, %5154
  %5157 = add i64 %5150, 14
  store i64 %5157, i64* %3, align 8
  %5158 = inttoptr i64 %5156 to i32*
  %5159 = load i32, i32* %5158, align 4
  %5160 = zext i32 %5159 to i64
  store i64 %5160, i64* %RCX.i2073, align 8
  %5161 = add i64 %5107, -4140
  %5162 = add i64 %5150, 20
  store i64 %5162, i64* %3, align 8
  %5163 = inttoptr i64 %5161 to i32*
  %5164 = load i32, i32* %5163, align 4
  %5165 = sub i32 %5159, %5164
  %5166 = icmp ult i32 %5159, %5164
  %5167 = zext i1 %5166 to i8
  store i8 %5167, i8* %39, align 1
  %5168 = and i32 %5165, 255
  %5169 = tail call i32 @llvm.ctpop.i32(i32 %5168)
  %5170 = trunc i32 %5169 to i8
  %5171 = and i8 %5170, 1
  %5172 = xor i8 %5171, 1
  store i8 %5172, i8* %46, align 1
  %5173 = xor i32 %5164, %5159
  %5174 = xor i32 %5173, %5165
  %5175 = lshr i32 %5174, 4
  %5176 = trunc i32 %5175 to i8
  %5177 = and i8 %5176, 1
  store i8 %5177, i8* %52, align 1
  %5178 = icmp eq i32 %5165, 0
  %5179 = zext i1 %5178 to i8
  store i8 %5179, i8* %55, align 1
  %5180 = lshr i32 %5165, 31
  %5181 = trunc i32 %5180 to i8
  store i8 %5181, i8* %58, align 1
  %5182 = lshr i32 %5159, 31
  %5183 = lshr i32 %5164, 31
  %5184 = xor i32 %5183, %5182
  %5185 = xor i32 %5180, %5182
  %5186 = add nuw nsw i32 %5185, %5184
  %5187 = icmp eq i32 %5186, 2
  %5188 = zext i1 %5187 to i8
  store i8 %5188, i8* %64, align 1
  %.v184 = select i1 %5178, i64 26, i64 31
  %5189 = add i64 %5150, %.v184
  store i64 %5189, i64* %3, align 8
  br i1 %5178, label %block_442ef2, label %block_.L_442ef7

block_442ef2:                                     ; preds = %block_442ed8
  %5190 = add i64 %5189, 30
  store i64 %5190, i64* %3, align 8
  br label %block_.L_442f10

block_.L_442ef7:                                  ; preds = %block_442ed8
  %5191 = add i64 %5189, 11
  store i64 %5191, i64* %3, align 8
  %5192 = load i32, i32* %5110, align 4
  %5193 = add i32 %5192, 1
  %5194 = zext i32 %5193 to i64
  store i64 %5194, i64* %RAX.i2122, align 8
  %5195 = icmp eq i32 %5192, -1
  %5196 = icmp eq i32 %5193, 0
  %5197 = or i1 %5195, %5196
  %5198 = zext i1 %5197 to i8
  store i8 %5198, i8* %39, align 1
  %5199 = and i32 %5193, 255
  %5200 = tail call i32 @llvm.ctpop.i32(i32 %5199)
  %5201 = trunc i32 %5200 to i8
  %5202 = and i8 %5201, 1
  %5203 = xor i8 %5202, 1
  store i8 %5203, i8* %46, align 1
  %5204 = xor i32 %5193, %5192
  %5205 = lshr i32 %5204, 4
  %5206 = trunc i32 %5205 to i8
  %5207 = and i8 %5206, 1
  store i8 %5207, i8* %52, align 1
  %5208 = zext i1 %5196 to i8
  store i8 %5208, i8* %55, align 1
  %5209 = lshr i32 %5193, 31
  %5210 = trunc i32 %5209 to i8
  store i8 %5210, i8* %58, align 1
  %5211 = lshr i32 %5192, 31
  %5212 = xor i32 %5209, %5211
  %5213 = add nuw nsw i32 %5212, %5209
  %5214 = icmp eq i32 %5213, 2
  %5215 = zext i1 %5214 to i8
  store i8 %5215, i8* %64, align 1
  %5216 = add i64 %5189, 20
  store i64 %5216, i64* %3, align 8
  store i32 %5193, i32* %5110, align 4
  %5217 = load i64, i64* %3, align 8
  %5218 = add i64 %5217, -77
  store i64 %5218, i64* %3, align 8
  br label %block_.L_442ebe

block_.L_442f10.loopexit:                         ; preds = %block_.L_442ebe
  br label %block_.L_442f10

block_.L_442f10:                                  ; preds = %block_.L_442f10.loopexit, %block_442ef2
  %5219 = phi i64 [ %5190, %block_442ef2 ], [ %5150, %block_.L_442f10.loopexit ]
  %5220 = add i64 %5219, 6
  store i64 %5220, i64* %3, align 8
  %5221 = load i32, i32* %5110, align 4
  %5222 = zext i32 %5221 to i64
  store i64 %5222, i64* %RAX.i2122, align 8
  %5223 = add i64 %5219, 12
  store i64 %5223, i64* %3, align 8
  %5224 = load i32, i32* %5115, align 4
  %5225 = zext i32 %5224 to i64
  store i64 %5225, i64* %RCX.i2073, align 8
  %5226 = add i64 %5219, 18
  store i64 %5226, i64* %3, align 8
  %5227 = load i32, i32* %5120, align 4
  %5228 = sub i32 %5224, %5227
  %5229 = zext i32 %5228 to i64
  store i64 %5229, i64* %RCX.i2073, align 8
  %5230 = lshr i32 %5228, 31
  %5231 = sub i32 %5221, %5228
  %5232 = icmp ult i32 %5221, %5228
  %5233 = zext i1 %5232 to i8
  store i8 %5233, i8* %39, align 1
  %5234 = and i32 %5231, 255
  %5235 = tail call i32 @llvm.ctpop.i32(i32 %5234)
  %5236 = trunc i32 %5235 to i8
  %5237 = and i8 %5236, 1
  %5238 = xor i8 %5237, 1
  store i8 %5238, i8* %46, align 1
  %5239 = xor i32 %5228, %5221
  %5240 = xor i32 %5239, %5231
  %5241 = lshr i32 %5240, 4
  %5242 = trunc i32 %5241 to i8
  %5243 = and i8 %5242, 1
  store i8 %5243, i8* %52, align 1
  %5244 = icmp eq i32 %5231, 0
  %5245 = zext i1 %5244 to i8
  store i8 %5245, i8* %55, align 1
  %5246 = lshr i32 %5231, 31
  %5247 = trunc i32 %5246 to i8
  store i8 %5247, i8* %58, align 1
  %5248 = lshr i32 %5221, 31
  %5249 = xor i32 %5230, %5248
  %5250 = xor i32 %5246, %5248
  %5251 = add nuw nsw i32 %5250, %5249
  %5252 = icmp eq i32 %5251, 2
  %5253 = zext i1 %5252 to i8
  store i8 %5253, i8* %64, align 1
  %5254 = icmp ne i8 %5247, 0
  %5255 = xor i1 %5254, %5252
  %.v217 = select i1 %5255, i64 26, i64 31
  %5256 = add i64 %5219, %.v217
  store i64 %5256, i64* %3, align 8
  br i1 %5255, label %block_442f2a, label %block_.L_442f2f

block_442f2a:                                     ; preds = %block_.L_442f10
  %5257 = add i64 %5256, 45
  store i64 %5257, i64* %3, align 8
  br label %block_.L_442f57

block_.L_442f2f:                                  ; preds = %block_.L_442f10
  store i64 ptrtoint (%G__0x57dd2e_type* @G__0x57dd2e to i64), i64* %RDI.i2098, align 8
  store i64 2659, i64* %RSI.i2095, align 8
  store i64 ptrtoint (%G__0x57e273_type* @G__0x57e273 to i64), i64* %RDX.i2039, align 8
  store i64 4294967295, i64* %RAX.i2122, align 8
  store i64 4294967295, i64* %RCX.i2073, align 8
  store i64 4294967295, i64* %R8.i2087, align 8
  %5258 = add i64 %5256, 61793
  %5259 = add i64 %5256, 40
  %5260 = load i64, i64* %6, align 8
  %5261 = add i64 %5260, -8
  %5262 = inttoptr i64 %5261 to i64*
  store i64 %5259, i64* %5262, align 8
  store i64 %5261, i64* %6, align 8
  store i64 %5258, i64* %3, align 8
  %call2_442f52 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %5258, %struct.Memory* %call2_442e94)
  %.pre152 = load i64, i64* %RBP.i, align 8
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_442f57

block_.L_442f57:                                  ; preds = %block_.L_442f2f, %block_442f2a
  %5263 = phi i64 [ %.pre153, %block_.L_442f2f ], [ %5257, %block_442f2a ]
  %5264 = phi i64 [ %.pre152, %block_.L_442f2f ], [ %5107, %block_442f2a ]
  %MEMORY.54 = phi %struct.Memory* [ %call2_442f52, %block_.L_442f2f ], [ %call2_442e94, %block_442f2a ]
  %5265 = add i64 %5264, -4232
  store i64 %5265, i64* %RSI.i2095, align 8
  %5266 = add i64 %5264, -3328
  store i64 %5266, i64* %RAX.i2122, align 8
  %5267 = add i64 %5264, -4236
  %5268 = add i64 %5263, 21
  store i64 %5268, i64* %3, align 8
  %5269 = inttoptr i64 %5267 to i32*
  %5270 = load i32, i32* %5269, align 4
  %5271 = sext i32 %5270 to i64
  %5272 = shl nsw i64 %5271, 2
  store i64 %5272, i64* %RCX.i2073, align 8
  %5273 = add i64 %5272, %5266
  store i64 %5273, i64* %RDX.i2039, align 8
  %5274 = icmp ult i64 %5273, %5266
  %5275 = icmp ult i64 %5273, %5272
  %5276 = or i1 %5274, %5275
  %5277 = zext i1 %5276 to i8
  store i8 %5277, i8* %39, align 1
  %5278 = trunc i64 %5273 to i32
  %5279 = and i32 %5278, 255
  %5280 = tail call i32 @llvm.ctpop.i32(i32 %5279)
  %5281 = trunc i32 %5280 to i8
  %5282 = and i8 %5281, 1
  %5283 = xor i8 %5282, 1
  store i8 %5283, i8* %46, align 1
  %5284 = xor i64 %5272, %5266
  %5285 = xor i64 %5284, %5273
  %5286 = lshr i64 %5285, 4
  %5287 = trunc i64 %5286 to i8
  %5288 = and i8 %5287, 1
  store i8 %5288, i8* %52, align 1
  %5289 = icmp eq i64 %5273, 0
  %5290 = zext i1 %5289 to i8
  store i8 %5290, i8* %55, align 1
  %5291 = lshr i64 %5273, 63
  %5292 = trunc i64 %5291 to i8
  store i8 %5292, i8* %58, align 1
  %5293 = lshr i64 %5266, 63
  %5294 = lshr i64 %5271, 61
  %5295 = and i64 %5294, 1
  %5296 = xor i64 %5291, %5293
  %5297 = xor i64 %5291, %5295
  %5298 = add nuw nsw i64 %5296, %5297
  %5299 = icmp eq i64 %5298, 2
  %5300 = zext i1 %5299 to i8
  store i8 %5300, i8* %64, align 1
  %5301 = add i64 %5263, 38
  store i64 %5301, i64* %3, align 8
  %5302 = load i32, i32* %5269, align 4
  %5303 = sext i32 %5302 to i64
  %5304 = shl nsw i64 %5303, 2
  store i64 %5304, i64* %RCX.i2073, align 8
  %5305 = add i64 %5304, %5266
  store i64 %5305, i64* %RAX.i2122, align 8
  %5306 = icmp ult i64 %5305, %5266
  %5307 = icmp ult i64 %5305, %5304
  %5308 = or i1 %5306, %5307
  %5309 = zext i1 %5308 to i8
  store i8 %5309, i8* %39, align 1
  %5310 = trunc i64 %5305 to i32
  %5311 = and i32 %5310, 255
  %5312 = tail call i32 @llvm.ctpop.i32(i32 %5311)
  %5313 = trunc i32 %5312 to i8
  %5314 = and i8 %5313, 1
  %5315 = xor i8 %5314, 1
  store i8 %5315, i8* %46, align 1
  %5316 = xor i64 %5304, %5266
  %5317 = xor i64 %5316, %5305
  %5318 = lshr i64 %5317, 4
  %5319 = trunc i64 %5318 to i8
  %5320 = and i8 %5319, 1
  store i8 %5320, i8* %52, align 1
  %5321 = icmp eq i64 %5305, 0
  %5322 = zext i1 %5321 to i8
  store i8 %5322, i8* %55, align 1
  %5323 = lshr i64 %5305, 63
  %5324 = trunc i64 %5323 to i8
  store i8 %5324, i8* %58, align 1
  %5325 = lshr i64 %5303, 61
  %5326 = and i64 %5325, 1
  %5327 = xor i64 %5323, %5293
  %5328 = xor i64 %5323, %5326
  %5329 = add nuw nsw i64 %5327, %5328
  %5330 = icmp eq i64 %5329, 2
  %5331 = zext i1 %5330 to i8
  store i8 %5331, i8* %64, align 1
  store i64 %5273, i64* %RDI.i2098, align 8
  store i64 %5305, i64* %RDX.i2039, align 8
  %5332 = add i64 %5263, -25415
  %5333 = add i64 %5263, 56
  %5334 = load i64, i64* %6, align 8
  %5335 = add i64 %5334, -8
  %5336 = inttoptr i64 %5335 to i64*
  store i64 %5333, i64* %5336, align 8
  store i64 %5335, i64* %6, align 8
  store i64 %5332, i64* %3, align 8
  %call2_442f8a = tail call %struct.Memory* @sub_43cc10.add_eyevalues(%struct.State* nonnull %0, i64 %5332, %struct.Memory* %MEMORY.54)
  %5337 = load i64, i64* %RBP.i, align 8
  %5338 = add i64 %5337, -4236
  %5339 = load i64, i64* %3, align 8
  %5340 = add i64 %5339, 7
  store i64 %5340, i64* %3, align 8
  %5341 = inttoptr i64 %5338 to i32*
  %5342 = load i32, i32* %5341, align 4
  %5343 = sext i32 %5342 to i64
  store i64 %5343, i64* %RAX.i2122, align 8
  %5344 = shl nsw i64 %5343, 2
  %5345 = add i64 %5337, -3328
  %5346 = add i64 %5345, %5344
  %5347 = add i64 %5339, 15
  store i64 %5347, i64* %3, align 8
  %5348 = inttoptr i64 %5346 to i8*
  store i8 0, i8* %5348, align 1
  %5349 = load i64, i64* %RBP.i, align 8
  %5350 = add i64 %5349, -4236
  %5351 = load i64, i64* %3, align 8
  %5352 = add i64 %5351, 7
  store i64 %5352, i64* %3, align 8
  %5353 = inttoptr i64 %5350 to i32*
  %5354 = load i32, i32* %5353, align 4
  %5355 = sext i32 %5354 to i64
  store i64 %5355, i64* %RAX.i2122, align 8
  %5356 = shl nsw i64 %5355, 2
  %5357 = add i64 %5349, -3327
  %5358 = add i64 %5357, %5356
  %5359 = add i64 %5351, 15
  store i64 %5359, i64* %3, align 8
  %5360 = inttoptr i64 %5358 to i8*
  store i8 0, i8* %5360, align 1
  %5361 = load i64, i64* %3, align 8
  %5362 = add i64 %5361, 53
  store i64 %5362, i64* %3, align 8
  br label %block_.L_442fe2

block_.L_442fb2:                                  ; preds = %block_442e70
  %5363 = add i64 %5080, -4168
  %5364 = add i64 %5102, 6
  store i64 %5364, i64* %3, align 8
  %5365 = inttoptr i64 %5363 to i32*
  %5366 = load i32, i32* %5365, align 4
  %5367 = add i32 %5366, 1
  %5368 = zext i32 %5367 to i64
  store i64 %5368, i64* %RAX.i2122, align 8
  %5369 = icmp eq i32 %5366, -1
  %5370 = icmp eq i32 %5367, 0
  %5371 = or i1 %5369, %5370
  %5372 = zext i1 %5371 to i8
  store i8 %5372, i8* %39, align 1
  %5373 = and i32 %5367, 255
  %5374 = tail call i32 @llvm.ctpop.i32(i32 %5373)
  %5375 = trunc i32 %5374 to i8
  %5376 = and i8 %5375, 1
  %5377 = xor i8 %5376, 1
  store i8 %5377, i8* %46, align 1
  %5378 = xor i32 %5367, %5366
  %5379 = lshr i32 %5378, 4
  %5380 = trunc i32 %5379 to i8
  %5381 = and i8 %5380, 1
  store i8 %5381, i8* %52, align 1
  %5382 = zext i1 %5370 to i8
  store i8 %5382, i8* %55, align 1
  %5383 = lshr i32 %5367, 31
  %5384 = trunc i32 %5383 to i8
  store i8 %5384, i8* %58, align 1
  %5385 = lshr i32 %5366, 31
  %5386 = xor i32 %5383, %5385
  %5387 = add nuw nsw i32 %5386, %5383
  %5388 = icmp eq i32 %5387, 2
  %5389 = zext i1 %5388 to i8
  store i8 %5389, i8* %64, align 1
  %5390 = add i64 %5102, 15
  store i64 %5390, i64* %3, align 8
  store i32 %5367, i32* %5365, align 4
  %5391 = load i64, i64* %RBP.i, align 8
  %5392 = add i64 %5391, -4164
  %5393 = load i64, i64* %3, align 8
  %5394 = add i64 %5393, 6
  store i64 %5394, i64* %3, align 8
  %5395 = inttoptr i64 %5392 to i32*
  %5396 = load i32, i32* %5395, align 4
  %5397 = zext i32 %5396 to i64
  store i64 %5397, i64* %RAX.i2122, align 8
  %5398 = add i32 %5396, 1
  %5399 = zext i32 %5398 to i64
  store i64 %5399, i64* %RCX.i2073, align 8
  %5400 = icmp eq i32 %5396, -1
  %5401 = icmp eq i32 %5398, 0
  %5402 = or i1 %5400, %5401
  %5403 = zext i1 %5402 to i8
  store i8 %5403, i8* %39, align 1
  %5404 = and i32 %5398, 255
  %5405 = tail call i32 @llvm.ctpop.i32(i32 %5404)
  %5406 = trunc i32 %5405 to i8
  %5407 = and i8 %5406, 1
  %5408 = xor i8 %5407, 1
  store i8 %5408, i8* %46, align 1
  %5409 = xor i32 %5398, %5396
  %5410 = lshr i32 %5409, 4
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  store i8 %5412, i8* %52, align 1
  %5413 = zext i1 %5401 to i8
  store i8 %5413, i8* %55, align 1
  %5414 = lshr i32 %5398, 31
  %5415 = trunc i32 %5414 to i8
  store i8 %5415, i8* %58, align 1
  %5416 = lshr i32 %5396, 31
  %5417 = xor i32 %5414, %5416
  %5418 = add nuw nsw i32 %5417, %5414
  %5419 = icmp eq i32 %5418, 2
  %5420 = zext i1 %5419 to i8
  store i8 %5420, i8* %64, align 1
  %5421 = add i64 %5393, 17
  store i64 %5421, i64* %3, align 8
  store i32 %5398, i32* %5395, align 4
  %5422 = load i32, i32* %EAX.i1917, align 4
  %5423 = load i64, i64* %3, align 8
  %5424 = sext i32 %5422 to i64
  store i64 %5424, i64* %RDX.i2039, align 8
  %5425 = load i64, i64* %RBP.i, align 8
  %5426 = add i64 %5425, -4232
  %5427 = add i64 %5423, 9
  store i64 %5427, i64* %3, align 8
  %5428 = inttoptr i64 %5426 to i32*
  %5429 = load i32, i32* %5428, align 4
  %5430 = zext i32 %5429 to i64
  store i64 %5430, i64* %RAX.i2122, align 8
  %5431 = shl nsw i64 %5424, 2
  %5432 = add i64 %5425, -3328
  %5433 = add i64 %5432, %5431
  %5434 = add i64 %5423, 16
  store i64 %5434, i64* %3, align 8
  %5435 = inttoptr i64 %5433 to i32*
  store i32 %5429, i32* %5435, align 4
  %.pre154 = load i64, i64* %3, align 8
  br label %block_.L_442fe2

block_.L_442fe2:                                  ; preds = %block_.L_442fb2, %block_.L_442f57
  %5436 = phi i64 [ %.pre154, %block_.L_442fb2 ], [ %5362, %block_.L_442f57 ]
  %MEMORY.55 = phi %struct.Memory* [ %call2_442e94, %block_.L_442fb2 ], [ %call2_442f8a, %block_.L_442f57 ]
  %5437 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %39, align 1
  %5438 = and i32 %5437, 255
  %5439 = tail call i32 @llvm.ctpop.i32(i32 %5438)
  %5440 = trunc i32 %5439 to i8
  %5441 = and i8 %5440, 1
  %5442 = xor i8 %5441, 1
  store i8 %5442, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %5443 = icmp eq i32 %5437, 0
  %5444 = zext i1 %5443 to i8
  store i8 %5444, i8* %55, align 1
  %5445 = lshr i32 %5437, 31
  %5446 = trunc i32 %5445 to i8
  store i8 %5446, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v218 = select i1 %5443, i64 14, i64 19
  %5447 = add i64 %5436, %.v218
  store i64 %5447, i64* %3, align 8
  br i1 %5443, label %block_442ff0, label %block_.L_442ff5

block_442ff0:                                     ; preds = %block_.L_442fe2
  %5448 = add i64 %5447, 58
  store i64 %5448, i64* %3, align 8
  br label %block_.L_44302a

block_.L_442ff5:                                  ; preds = %block_.L_442fe2
  store i64 ptrtoint (%G__0x57e28d_type* @G__0x57e28d to i64), i64* %RDI.i2098, align 8
  %5449 = load i64, i64* %RBP.i, align 8
  %5450 = add i64 %5449, -48
  %5451 = add i64 %5447, 14
  store i64 %5451, i64* %3, align 8
  %5452 = inttoptr i64 %5450 to i64*
  %5453 = load i64, i64* %5452, align 8
  store i64 %5453, i64* %RAX.i2122, align 8
  %5454 = add i64 %5449, -4156
  %5455 = add i64 %5447, 21
  store i64 %5455, i64* %3, align 8
  %5456 = inttoptr i64 %5454 to i32*
  %5457 = load i32, i32* %5456, align 4
  %5458 = sext i32 %5457 to i64
  store i64 %5458, i64* %RCX.i2073, align 8
  %5459 = shl nsw i64 %5458, 2
  %5460 = add i64 %5453, 34804
  %5461 = add i64 %5460, %5459
  %5462 = add i64 %5447, 28
  store i64 %5462, i64* %3, align 8
  %5463 = inttoptr i64 %5461 to i32*
  %5464 = load i32, i32* %5463, align 4
  %5465 = zext i32 %5464 to i64
  store i64 %5465, i64* %RSI.i2095, align 8
  %5466 = add i64 %5449, -4140
  %5467 = add i64 %5447, 34
  store i64 %5467, i64* %3, align 8
  %5468 = inttoptr i64 %5466 to i32*
  %5469 = load i32, i32* %5468, align 4
  %5470 = zext i32 %5469 to i64
  store i64 %5470, i64* %RDX.i2039, align 8
  %5471 = add i64 %5449, -4212
  %5472 = add i64 %5447, 40
  store i64 %5472, i64* %3, align 8
  %5473 = inttoptr i64 %5471 to i32*
  %5474 = load i32, i32* %5473, align 4
  %5475 = zext i32 %5474 to i64
  store i64 %5475, i64* %RCX.i2073, align 8
  store i8 0, i8* %AL.i795, align 1
  %5476 = add i64 %5447, 60859
  %5477 = add i64 %5447, 47
  %5478 = load i64, i64* %6, align 8
  %5479 = add i64 %5478, -8
  %5480 = inttoptr i64 %5479 to i64*
  store i64 %5477, i64* %5480, align 8
  store i64 %5479, i64* %6, align 8
  store i64 %5476, i64* %3, align 8
  %call2_44301f = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %5476, %struct.Memory* %MEMORY.55)
  %5481 = load i64, i64* %RBP.i, align 8
  %5482 = add i64 %5481, -4360
  %5483 = load i32, i32* %EAX.i1917, align 4
  %5484 = load i64, i64* %3, align 8
  %5485 = add i64 %5484, 6
  store i64 %5485, i64* %3, align 8
  %5486 = inttoptr i64 %5482 to i32*
  store i32 %5483, i32* %5486, align 4
  %.pre155 = load i64, i64* %3, align 8
  br label %block_.L_44302a

block_.L_44302a:                                  ; preds = %block_.L_442ff5, %block_442ff0
  %5487 = phi i64 [ %.pre155, %block_.L_442ff5 ], [ %5448, %block_442ff0 ]
  %MEMORY.56 = phi %struct.Memory* [ %call2_44301f, %block_.L_442ff5 ], [ %MEMORY.55, %block_442ff0 ]
  store i64 ptrtoint (%G__0x57e2b3_type* @G__0x57e2b3 to i64), i64* %RCX.i2073, align 8
  store i64 1, i64* %R8.i2087, align 8
  store i64 0, i64* %R9.i2084, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %5488 = load i64, i64* %RBP.i, align 8
  %5489 = add i64 %5488, -72
  %5490 = add i64 %5487, 23
  store i64 %5490, i64* %3, align 8
  %5491 = inttoptr i64 %5489 to i64*
  %5492 = load i64, i64* %5491, align 8
  store i64 %5492, i64* %RDI.i2098, align 8
  %5493 = add i64 %5488, -4140
  %5494 = add i64 %5487, 29
  store i64 %5494, i64* %3, align 8
  %5495 = inttoptr i64 %5493 to i32*
  %5496 = load i32, i32* %5495, align 4
  %5497 = zext i32 %5496 to i64
  store i64 %5497, i64* %RSI.i2095, align 8
  %5498 = add i64 %5488, -4212
  %5499 = add i64 %5487, 35
  store i64 %5499, i64* %3, align 8
  %5500 = inttoptr i64 %5498 to i32*
  %5501 = load i32, i32* %5500, align 4
  %5502 = zext i32 %5501 to i64
  store i64 %5502, i64* %RDX.i2039, align 8
  %5503 = load i32*, i32** %1540, align 8
  %5504 = add i64 %5487, 42
  store i64 %5504, i64* %3, align 8
  store i32 0, i32* %5503, align 4
  %5505 = load i64, i64* %3, align 8
  %5506 = add i64 %5505, 4572
  %5507 = add i64 %5505, 5
  %5508 = load i64, i64* %6, align 8
  %5509 = add i64 %5508, -8
  %5510 = inttoptr i64 %5509 to i64*
  store i64 %5507, i64* %5510, align 8
  store i64 %5509, i64* %6, align 8
  store i64 %5506, i64* %3, align 8
  %call2_443054 = tail call %struct.Memory* @sub_444230.owl_add_move(%struct.State* nonnull %0, i64 %5506, %struct.Memory* %MEMORY.56)
  %5511 = load i64, i64* %3, align 8
  %5512 = add i64 %5511, 219
  store i64 %5512, i64* %3, align 8
  br label %block_.L_443134

block_.L_44305e:                                  ; preds = %block_.L_442e66
  %5513 = add i64 %5058, 34884
  %5514 = add i64 %5513, %5062
  %5515 = add i64 %5040, 36
  store i64 %5515, i64* %3, align 8
  %5516 = inttoptr i64 %5514 to i32*
  %5517 = load i32, i32* %5516, align 4
  %5518 = zext i32 %5517 to i64
  store i64 %5518, i64* %RSI.i2095, align 8
  %5519 = add i64 %5040, 11154
  %5520 = add i64 %5040, 41
  %5521 = load i64, i64* %6, align 8
  %5522 = add i64 %5521, -8
  %5523 = inttoptr i64 %5522 to i64*
  store i64 %5520, i64* %5523, align 8
  store i64 %5522, i64* %6, align 8
  store i64 %5519, i64* %3, align 8
  %call2_443082 = tail call %struct.Memory* @sub_445bf0.improve_lunch_attack(%struct.State* nonnull %0, i64 %5519, %struct.Memory* %MEMORY.51)
  %5524 = load i64, i64* %RBP.i, align 8
  %5525 = add i64 %5524, -4136
  %5526 = load i32, i32* %EAX.i1917, align 4
  %5527 = load i64, i64* %3, align 8
  %5528 = add i64 %5527, 6
  store i64 %5528, i64* %3, align 8
  %5529 = inttoptr i64 %5525 to i32*
  store i32 %5526, i32* %5529, align 4
  %5530 = load i64, i64* %3, align 8
  %5531 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %39, align 1
  %5532 = and i32 %5531, 255
  %5533 = tail call i32 @llvm.ctpop.i32(i32 %5532)
  %5534 = trunc i32 %5533 to i8
  %5535 = and i8 %5534, 1
  %5536 = xor i8 %5535, 1
  store i8 %5536, i8* %46, align 1
  store i8 0, i8* %52, align 1
  %5537 = icmp eq i32 %5531, 0
  %5538 = zext i1 %5537 to i8
  store i8 %5538, i8* %55, align 1
  %5539 = lshr i32 %5531, 31
  %5540 = trunc i32 %5539 to i8
  store i8 %5540, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v219 = select i1 %5537, i64 14, i64 19
  %5541 = add i64 %5530, %.v219
  store i64 %5541, i64* %3, align 8
  br i1 %5537, label %block_44309b, label %block_.L_4430a0

block_44309b:                                     ; preds = %block_.L_44305e
  %5542 = add i64 %5541, 58
  store i64 %5542, i64* %3, align 8
  br label %block_.L_4430d5

block_.L_4430a0:                                  ; preds = %block_.L_44305e
  store i64 ptrtoint (%G__0x57e2be_type* @G__0x57e2be to i64), i64* %RDI.i2098, align 8
  %5543 = load i64, i64* %RBP.i, align 8
  %5544 = add i64 %5543, -48
  %5545 = add i64 %5541, 14
  store i64 %5545, i64* %3, align 8
  %5546 = inttoptr i64 %5544 to i64*
  %5547 = load i64, i64* %5546, align 8
  store i64 %5547, i64* %RAX.i2122, align 8
  %5548 = add i64 %5543, -4156
  %5549 = add i64 %5541, 21
  store i64 %5549, i64* %3, align 8
  %5550 = inttoptr i64 %5548 to i32*
  %5551 = load i32, i32* %5550, align 4
  %5552 = sext i32 %5551 to i64
  store i64 %5552, i64* %RCX.i2073, align 8
  %5553 = shl nsw i64 %5552, 2
  %5554 = add i64 %5547, 34804
  %5555 = add i64 %5554, %5553
  %5556 = add i64 %5541, 28
  store i64 %5556, i64* %3, align 8
  %5557 = inttoptr i64 %5555 to i32*
  %5558 = load i32, i32* %5557, align 4
  %5559 = zext i32 %5558 to i64
  store i64 %5559, i64* %RSI.i2095, align 8
  %5560 = add i64 %5543, -4136
  %5561 = add i64 %5541, 34
  store i64 %5561, i64* %3, align 8
  %5562 = inttoptr i64 %5560 to i32*
  %5563 = load i32, i32* %5562, align 4
  %5564 = zext i32 %5563 to i64
  store i64 %5564, i64* %RDX.i2039, align 8
  %5565 = add i64 %5543, -4212
  %5566 = add i64 %5541, 40
  store i64 %5566, i64* %3, align 8
  %5567 = inttoptr i64 %5565 to i32*
  %5568 = load i32, i32* %5567, align 4
  %5569 = zext i32 %5568 to i64
  store i64 %5569, i64* %RCX.i2073, align 8
  store i8 0, i8* %AL.i795, align 1
  %5570 = add i64 %5541, 60688
  %5571 = add i64 %5541, 47
  %5572 = load i64, i64* %6, align 8
  %5573 = add i64 %5572, -8
  %5574 = inttoptr i64 %5573 to i64*
  store i64 %5571, i64* %5574, align 8
  store i64 %5573, i64* %6, align 8
  store i64 %5570, i64* %3, align 8
  %call2_4430ca = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %5570, %struct.Memory* %call2_443082)
  %5575 = load i64, i64* %RBP.i, align 8
  %5576 = add i64 %5575, -4364
  %5577 = load i32, i32* %EAX.i1917, align 4
  %5578 = load i64, i64* %3, align 8
  %5579 = add i64 %5578, 6
  store i64 %5579, i64* %3, align 8
  %5580 = inttoptr i64 %5576 to i32*
  store i32 %5577, i32* %5580, align 4
  %.pre156 = load i64, i64* %3, align 8
  br label %block_.L_4430d5

block_.L_4430d5:                                  ; preds = %block_.L_4430a0, %block_44309b
  %5581 = phi i64 [ %.pre156, %block_.L_4430a0 ], [ %5542, %block_44309b ]
  %MEMORY.57 = phi %struct.Memory* [ %call2_4430ca, %block_.L_4430a0 ], [ %call2_443082, %block_44309b ]
  store i64 ptrtoint (%G__0x57e2e3_type* @G__0x57e2e3 to i64), i64* %RCX.i2073, align 8
  store i64 1, i64* %R8.i2087, align 8
  store i64 0, i64* %R9.i2084, align 8
  store i8 0, i8* %39, align 1
  store i8 1, i8* %46, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %5582 = load i64, i64* %RBP.i, align 8
  %5583 = add i64 %5582, -72
  %5584 = add i64 %5581, 23
  store i64 %5584, i64* %3, align 8
  %5585 = inttoptr i64 %5583 to i64*
  %5586 = load i64, i64* %5585, align 8
  store i64 %5586, i64* %RDI.i2098, align 8
  %5587 = add i64 %5582, -4136
  %5588 = add i64 %5581, 29
  store i64 %5588, i64* %3, align 8
  %5589 = inttoptr i64 %5587 to i32*
  %5590 = load i32, i32* %5589, align 4
  %5591 = zext i32 %5590 to i64
  store i64 %5591, i64* %RSI.i2095, align 8
  %5592 = add i64 %5582, -4212
  %5593 = add i64 %5581, 35
  store i64 %5593, i64* %3, align 8
  %5594 = inttoptr i64 %5592 to i32*
  %5595 = load i32, i32* %5594, align 4
  %5596 = zext i32 %5595 to i64
  store i64 %5596, i64* %RDX.i2039, align 8
  %5597 = load i32*, i32** %1540, align 8
  %5598 = add i64 %5581, 42
  store i64 %5598, i64* %3, align 8
  store i32 0, i32* %5597, align 4
  %5599 = load i64, i64* %3, align 8
  %5600 = add i64 %5599, 4401
  %5601 = add i64 %5599, 5
  %5602 = load i64, i64* %6, align 8
  %5603 = add i64 %5602, -8
  %5604 = inttoptr i64 %5603 to i64*
  store i64 %5601, i64* %5604, align 8
  store i64 %5603, i64* %6, align 8
  store i64 %5600, i64* %3, align 8
  %call2_4430ff = tail call %struct.Memory* @sub_444230.owl_add_move(%struct.State* nonnull %0, i64 %5600, %struct.Memory* %MEMORY.57)
  %5605 = load i64, i64* %RBP.i, align 8
  %5606 = add i64 %5605, -4168
  %5607 = load i64, i64* %3, align 8
  %5608 = add i64 %5607, 6
  store i64 %5608, i64* %3, align 8
  %5609 = inttoptr i64 %5606 to i32*
  %5610 = load i32, i32* %5609, align 4
  %5611 = add i32 %5610, 1
  %5612 = zext i32 %5611 to i64
  store i64 %5612, i64* %RDX.i2039, align 8
  %5613 = icmp eq i32 %5610, -1
  %5614 = icmp eq i32 %5611, 0
  %5615 = or i1 %5613, %5614
  %5616 = zext i1 %5615 to i8
  store i8 %5616, i8* %39, align 1
  %5617 = and i32 %5611, 255
  %5618 = tail call i32 @llvm.ctpop.i32(i32 %5617)
  %5619 = trunc i32 %5618 to i8
  %5620 = and i8 %5619, 1
  %5621 = xor i8 %5620, 1
  store i8 %5621, i8* %46, align 1
  %5622 = xor i32 %5611, %5610
  %5623 = lshr i32 %5622, 4
  %5624 = trunc i32 %5623 to i8
  %5625 = and i8 %5624, 1
  store i8 %5625, i8* %52, align 1
  %5626 = zext i1 %5614 to i8
  store i8 %5626, i8* %55, align 1
  %5627 = lshr i32 %5611, 31
  %5628 = trunc i32 %5627 to i8
  store i8 %5628, i8* %58, align 1
  %5629 = lshr i32 %5610, 31
  %5630 = xor i32 %5627, %5629
  %5631 = add nuw nsw i32 %5630, %5627
  %5632 = icmp eq i32 %5631, 2
  %5633 = zext i1 %5632 to i8
  store i8 %5633, i8* %64, align 1
  %5634 = add i64 %5607, 15
  store i64 %5634, i64* %3, align 8
  store i32 %5611, i32* %5609, align 4
  %5635 = load i64, i64* %RBP.i, align 8
  %5636 = add i64 %5635, -4164
  %5637 = load i64, i64* %3, align 8
  %5638 = add i64 %5637, 6
  store i64 %5638, i64* %3, align 8
  %5639 = inttoptr i64 %5636 to i32*
  %5640 = load i32, i32* %5639, align 4
  %5641 = zext i32 %5640 to i64
  store i64 %5641, i64* %RDX.i2039, align 8
  %5642 = add i32 %5640, 1
  %5643 = zext i32 %5642 to i64
  store i64 %5643, i64* %RSI.i2095, align 8
  %5644 = icmp eq i32 %5640, -1
  %5645 = icmp eq i32 %5642, 0
  %5646 = or i1 %5644, %5645
  %5647 = zext i1 %5646 to i8
  store i8 %5647, i8* %39, align 1
  %5648 = and i32 %5642, 255
  %5649 = tail call i32 @llvm.ctpop.i32(i32 %5648)
  %5650 = trunc i32 %5649 to i8
  %5651 = and i8 %5650, 1
  %5652 = xor i8 %5651, 1
  store i8 %5652, i8* %46, align 1
  %5653 = xor i32 %5642, %5640
  %5654 = lshr i32 %5653, 4
  %5655 = trunc i32 %5654 to i8
  %5656 = and i8 %5655, 1
  store i8 %5656, i8* %52, align 1
  %5657 = zext i1 %5645 to i8
  store i8 %5657, i8* %55, align 1
  %5658 = lshr i32 %5642, 31
  %5659 = trunc i32 %5658 to i8
  store i8 %5659, i8* %58, align 1
  %5660 = lshr i32 %5640, 31
  %5661 = xor i32 %5658, %5660
  %5662 = add nuw nsw i32 %5661, %5658
  %5663 = icmp eq i32 %5662, 2
  %5664 = zext i1 %5663 to i8
  store i8 %5664, i8* %64, align 1
  %5665 = add i64 %5637, 17
  store i64 %5665, i64* %3, align 8
  store i32 %5642, i32* %5639, align 4
  %5666 = load i32, i32* %EDX.i2092, align 4
  %5667 = load i64, i64* %3, align 8
  %5668 = sext i32 %5666 to i64
  store i64 %5668, i64* %RCX.i2073, align 8
  %5669 = load i64, i64* %RBP.i, align 8
  %5670 = add i64 %5669, -4232
  %5671 = add i64 %5667, 9
  store i64 %5671, i64* %3, align 8
  %5672 = inttoptr i64 %5670 to i32*
  %5673 = load i32, i32* %5672, align 4
  %5674 = zext i32 %5673 to i64
  store i64 %5674, i64* %RDX.i2039, align 8
  %5675 = shl nsw i64 %5668, 2
  %5676 = add i64 %5669, -3328
  %5677 = add i64 %5676, %5675
  %5678 = add i64 %5667, 16
  store i64 %5678, i64* %3, align 8
  %5679 = inttoptr i64 %5677 to i32*
  store i32 %5673, i32* %5679, align 4
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_443134

block_.L_443134:                                  ; preds = %block_.L_4430d5, %block_.L_44302a
  %5680 = phi i64 [ %.pre157, %block_.L_4430d5 ], [ %5512, %block_.L_44302a ]
  %MEMORY.58 = phi %struct.Memory* [ %call2_4430ff, %block_.L_4430d5 ], [ %call2_443054, %block_.L_44302a ]
  %5681 = add i64 %5680, 5
  store i64 %5681, i64* %3, align 8
  br label %block_.L_443139

block_.L_443139:                                  ; preds = %block_.L_443134, %block_442c95, %block_442c7c
  %5682 = phi i64 [ %4416, %block_442c7c ], [ %4437, %block_442c95 ], [ %5681, %block_.L_443134 ]
  %MEMORY.59 = phi %struct.Memory* [ %MEMORY.44, %block_442c7c ], [ %MEMORY.44, %block_442c95 ], [ %MEMORY.58, %block_.L_443134 ]
  %5683 = add i64 %5682, 5
  store i64 %5683, i64* %3, align 8
  br label %block_.L_44313e

block_.L_44313e:                                  ; preds = %block_.L_443139, %block_442e31
  %storemerge84 = phi i64 [ %5024, %block_442e31 ], [ %5683, %block_.L_443139 ]
  %MEMORY.60 = phi %struct.Memory* [ %call2_442e23, %block_442e31 ], [ %MEMORY.59, %block_.L_443139 ]
  %5684 = load i64, i64* %RBP.i, align 8
  %5685 = add i64 %5684, -4156
  %5686 = add i64 %storemerge84, 6
  store i64 %5686, i64* %3, align 8
  %5687 = inttoptr i64 %5685 to i32*
  %5688 = load i32, i32* %5687, align 4
  %5689 = add i32 %5688, 1
  %5690 = zext i32 %5689 to i64
  store i64 %5690, i64* %RAX.i2122, align 8
  %5691 = icmp eq i32 %5688, -1
  %5692 = icmp eq i32 %5689, 0
  %5693 = or i1 %5691, %5692
  %5694 = zext i1 %5693 to i8
  store i8 %5694, i8* %39, align 1
  %5695 = and i32 %5689, 255
  %5696 = tail call i32 @llvm.ctpop.i32(i32 %5695)
  %5697 = trunc i32 %5696 to i8
  %5698 = and i8 %5697, 1
  %5699 = xor i8 %5698, 1
  store i8 %5699, i8* %46, align 1
  %5700 = xor i32 %5689, %5688
  %5701 = lshr i32 %5700, 4
  %5702 = trunc i32 %5701 to i8
  %5703 = and i8 %5702, 1
  store i8 %5703, i8* %52, align 1
  %5704 = zext i1 %5692 to i8
  store i8 %5704, i8* %55, align 1
  %5705 = lshr i32 %5689, 31
  %5706 = trunc i32 %5705 to i8
  store i8 %5706, i8* %58, align 1
  %5707 = lshr i32 %5688, 31
  %5708 = xor i32 %5705, %5707
  %5709 = add nuw nsw i32 %5708, %5705
  %5710 = icmp eq i32 %5709, 2
  %5711 = zext i1 %5710 to i8
  store i8 %5711, i8* %64, align 1
  %5712 = add i64 %storemerge84, 15
  store i64 %5712, i64* %3, align 8
  store i32 %5689, i32* %5687, align 4
  %5713 = load i64, i64* %3, align 8
  %5714 = add i64 %5713, -1246
  store i64 %5714, i64* %3, align 8
  br label %block_.L_442c6f

block_.L_443152:                                  ; preds = %block_.L_442c6f
  %5715 = add i64 %4365, -4240
  %5716 = add i64 %4393, 10
  store i64 %5716, i64* %3, align 8
  %5717 = inttoptr i64 %5715 to i32*
  store i32 0, i32* %5717, align 4
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_44315c

block_.L_44315c:                                  ; preds = %block_443176, %block_.L_443152
  %5718 = phi i64 [ %5838, %block_443176 ], [ %.pre145, %block_.L_443152 ]
  %5719 = load i64, i64* %RBP.i, align 8
  %5720 = add i64 %5719, -4240
  %5721 = add i64 %5718, 6
  store i64 %5721, i64* %3, align 8
  %5722 = inttoptr i64 %5720 to i32*
  %5723 = load i32, i32* %5722, align 4
  %5724 = zext i32 %5723 to i64
  store i64 %5724, i64* %RAX.i2122, align 8
  %5725 = add i64 %5719, -4164
  %5726 = add i64 %5718, 12
  store i64 %5726, i64* %3, align 8
  %5727 = inttoptr i64 %5725 to i32*
  %5728 = load i32, i32* %5727, align 4
  %5729 = zext i32 %5728 to i64
  store i64 %5729, i64* %RCX.i2073, align 8
  %5730 = add i64 %5719, -4168
  %5731 = add i64 %5718, 18
  store i64 %5731, i64* %3, align 8
  %5732 = inttoptr i64 %5730 to i32*
  %5733 = load i32, i32* %5732, align 4
  %5734 = sub i32 %5728, %5733
  %5735 = zext i32 %5734 to i64
  store i64 %5735, i64* %RCX.i2073, align 8
  %5736 = lshr i32 %5734, 31
  %5737 = sub i32 %5723, %5734
  %5738 = icmp ult i32 %5723, %5734
  %5739 = zext i1 %5738 to i8
  store i8 %5739, i8* %39, align 1
  %5740 = and i32 %5737, 255
  %5741 = tail call i32 @llvm.ctpop.i32(i32 %5740)
  %5742 = trunc i32 %5741 to i8
  %5743 = and i8 %5742, 1
  %5744 = xor i8 %5743, 1
  store i8 %5744, i8* %46, align 1
  %5745 = xor i32 %5734, %5723
  %5746 = xor i32 %5745, %5737
  %5747 = lshr i32 %5746, 4
  %5748 = trunc i32 %5747 to i8
  %5749 = and i8 %5748, 1
  store i8 %5749, i8* %52, align 1
  %5750 = icmp eq i32 %5737, 0
  %5751 = zext i1 %5750 to i8
  store i8 %5751, i8* %55, align 1
  %5752 = lshr i32 %5737, 31
  %5753 = trunc i32 %5752 to i8
  store i8 %5753, i8* %58, align 1
  %5754 = lshr i32 %5723, 31
  %5755 = xor i32 %5736, %5754
  %5756 = xor i32 %5752, %5754
  %5757 = add nuw nsw i32 %5756, %5755
  %5758 = icmp eq i32 %5757, 2
  %5759 = zext i1 %5758 to i8
  store i8 %5759, i8* %64, align 1
  %5760 = icmp ne i8 %5753, 0
  %5761 = xor i1 %5760, %5758
  %.v205 = select i1 %5761, i64 26, i64 83
  %5762 = add i64 %5718, %.v205
  store i64 %5762, i64* %3, align 8
  br i1 %5761, label %block_443176, label %block_.L_4431af

block_443176:                                     ; preds = %block_.L_44315c
  %5763 = add i64 %5719, -3328
  store i64 %5763, i64* %RAX.i2122, align 8
  %5764 = add i64 %5719, -80
  %5765 = add i64 %5762, 11
  store i64 %5765, i64* %3, align 8
  %5766 = inttoptr i64 %5764 to i64*
  %5767 = load i64, i64* %5766, align 8
  store i64 %5767, i64* %RDI.i2098, align 8
  %5768 = add i64 %5762, 18
  store i64 %5768, i64* %3, align 8
  %5769 = load i32, i32* %5722, align 4
  %5770 = sext i32 %5769 to i64
  %5771 = shl nsw i64 %5770, 2
  store i64 %5771, i64* %RCX.i2073, align 8
  %5772 = add i64 %5771, %5763
  store i64 %5772, i64* %RAX.i2122, align 8
  %5773 = icmp ult i64 %5772, %5763
  %5774 = icmp ult i64 %5772, %5771
  %5775 = or i1 %5773, %5774
  %5776 = zext i1 %5775 to i8
  store i8 %5776, i8* %39, align 1
  %5777 = trunc i64 %5772 to i32
  %5778 = and i32 %5777, 255
  %5779 = tail call i32 @llvm.ctpop.i32(i32 %5778)
  %5780 = trunc i32 %5779 to i8
  %5781 = and i8 %5780, 1
  %5782 = xor i8 %5781, 1
  store i8 %5782, i8* %46, align 1
  %5783 = xor i64 %5771, %5763
  %5784 = xor i64 %5783, %5772
  %5785 = lshr i64 %5784, 4
  %5786 = trunc i64 %5785 to i8
  %5787 = and i8 %5786, 1
  store i8 %5787, i8* %52, align 1
  %5788 = icmp eq i64 %5772, 0
  %5789 = zext i1 %5788 to i8
  store i8 %5789, i8* %55, align 1
  %5790 = lshr i64 %5772, 63
  %5791 = trunc i64 %5790 to i8
  store i8 %5791, i8* %58, align 1
  %5792 = lshr i64 %5763, 63
  %5793 = lshr i64 %5770, 61
  %5794 = and i64 %5793, 1
  %5795 = xor i64 %5790, %5792
  %5796 = xor i64 %5790, %5794
  %5797 = add nuw nsw i64 %5795, %5796
  %5798 = icmp eq i64 %5797, 2
  %5799 = zext i1 %5798 to i8
  store i8 %5799, i8* %64, align 1
  %5800 = add i64 %5762, 29
  store i64 %5800, i64* %3, align 8
  %5801 = load i64, i64* %5766, align 8
  store i64 %5801, i64* %RDX.i2039, align 8
  store i64 %5772, i64* %RSI.i2095, align 8
  %5802 = add i64 %5762, -25958
  %5803 = add i64 %5762, 37
  %5804 = load i64, i64* %6, align 8
  %5805 = add i64 %5804, -8
  %5806 = inttoptr i64 %5805 to i64*
  store i64 %5803, i64* %5806, align 8
  store i64 %5805, i64* %6, align 8
  store i64 %5802, i64* %3, align 8
  %call2_443196 = tail call %struct.Memory* @sub_43cc10.add_eyevalues(%struct.State* nonnull %0, i64 %5802, %struct.Memory* %MEMORY.44)
  %5807 = load i64, i64* %RBP.i, align 8
  %5808 = add i64 %5807, -4240
  %5809 = load i64, i64* %3, align 8
  %5810 = add i64 %5809, 6
  store i64 %5810, i64* %3, align 8
  %5811 = inttoptr i64 %5808 to i32*
  %5812 = load i32, i32* %5811, align 4
  %5813 = add i32 %5812, 1
  %5814 = zext i32 %5813 to i64
  store i64 %5814, i64* %RAX.i2122, align 8
  %5815 = icmp eq i32 %5812, -1
  %5816 = icmp eq i32 %5813, 0
  %5817 = or i1 %5815, %5816
  %5818 = zext i1 %5817 to i8
  store i8 %5818, i8* %39, align 1
  %5819 = and i32 %5813, 255
  %5820 = tail call i32 @llvm.ctpop.i32(i32 %5819)
  %5821 = trunc i32 %5820 to i8
  %5822 = and i8 %5821, 1
  %5823 = xor i8 %5822, 1
  store i8 %5823, i8* %46, align 1
  %5824 = xor i32 %5813, %5812
  %5825 = lshr i32 %5824, 4
  %5826 = trunc i32 %5825 to i8
  %5827 = and i8 %5826, 1
  store i8 %5827, i8* %52, align 1
  %5828 = zext i1 %5816 to i8
  store i8 %5828, i8* %55, align 1
  %5829 = lshr i32 %5813, 31
  %5830 = trunc i32 %5829 to i8
  store i8 %5830, i8* %58, align 1
  %5831 = lshr i32 %5812, 31
  %5832 = xor i32 %5829, %5831
  %5833 = add nuw nsw i32 %5832, %5829
  %5834 = icmp eq i32 %5833, 2
  %5835 = zext i1 %5834 to i8
  store i8 %5835, i8* %64, align 1
  %5836 = add i64 %5809, 15
  store i64 %5836, i64* %3, align 8
  store i32 %5813, i32* %5811, align 4
  %5837 = load i64, i64* %3, align 8
  %5838 = add i64 %5837, -78
  store i64 %5838, i64* %3, align 8
  br label %block_.L_44315c

block_.L_4431af:                                  ; preds = %block_.L_44315c
  %5839 = add i64 %5719, -80
  %5840 = add i64 %5762, 4
  store i64 %5840, i64* %3, align 8
  %5841 = inttoptr i64 %5839 to i64*
  %5842 = load i64, i64* %5841, align 8
  store i64 %5842, i64* %RDI.i2098, align 8
  %5843 = add i64 %5762, -33183
  %5844 = add i64 %5762, 9
  %5845 = load i64, i64* %6, align 8
  %5846 = add i64 %5845, -8
  %5847 = inttoptr i64 %5846 to i64*
  store i64 %5844, i64* %5847, align 8
  store i64 %5846, i64* %6, align 8
  store i64 %5843, i64* %3, align 8
  %call2_4431b3 = tail call %struct.Memory* @sub_43b010.max_eyes(%struct.State* nonnull %0, i64 %5843, %struct.Memory* %MEMORY.44)
  %5848 = load i64, i64* %RBP.i, align 8
  %5849 = add i64 %5848, -96
  %5850 = load i64, i64* %3, align 8
  %5851 = add i64 %5850, 4
  store i64 %5851, i64* %3, align 8
  %5852 = inttoptr i64 %5849 to i64*
  %5853 = load i64, i64* %5852, align 8
  store i64 %5853, i64* %RDI.i2098, align 8
  %5854 = load i64, i64* %RAX.i2122, align 8
  %5855 = add i64 %5850, 6
  store i64 %5855, i64* %3, align 8
  %5856 = trunc i64 %5854 to i32
  %5857 = inttoptr i64 %5853 to i32*
  %5858 = load i32, i32* %5857, align 4
  %5859 = add i32 %5858, %5856
  %5860 = zext i32 %5859 to i64
  store i64 %5860, i64* %RAX.i2122, align 8
  %5861 = icmp ult i32 %5859, %5856
  %5862 = icmp ult i32 %5859, %5858
  %5863 = or i1 %5861, %5862
  %5864 = zext i1 %5863 to i8
  store i8 %5864, i8* %39, align 1
  %5865 = and i32 %5859, 255
  %5866 = tail call i32 @llvm.ctpop.i32(i32 %5865)
  %5867 = trunc i32 %5866 to i8
  %5868 = and i8 %5867, 1
  %5869 = xor i8 %5868, 1
  store i8 %5869, i8* %46, align 1
  %5870 = xor i32 %5858, %5856
  %5871 = xor i32 %5870, %5859
  %5872 = lshr i32 %5871, 4
  %5873 = trunc i32 %5872 to i8
  %5874 = and i8 %5873, 1
  store i8 %5874, i8* %52, align 1
  %5875 = icmp eq i32 %5859, 0
  %5876 = zext i1 %5875 to i8
  store i8 %5876, i8* %55, align 1
  %5877 = lshr i32 %5859, 31
  %5878 = trunc i32 %5877 to i8
  store i8 %5878, i8* %58, align 1
  %5879 = lshr i32 %5856, 31
  %5880 = lshr i32 %5858, 31
  %5881 = xor i32 %5877, %5879
  %5882 = xor i32 %5877, %5880
  %5883 = add nuw nsw i32 %5881, %5882
  %5884 = icmp eq i32 %5883, 2
  %5885 = zext i1 %5884 to i8
  store i8 %5885, i8* %64, align 1
  %5886 = add i64 %5850, 8
  store i64 %5886, i64* %3, align 8
  store i32 %5859, i32* %5857, align 4
  %5887 = load i64, i64* %RBP.i, align 8
  %5888 = add i64 %5887, -4164
  %5889 = load i64, i64* %3, align 8
  %5890 = add i64 %5889, 6
  store i64 %5890, i64* %3, align 8
  %5891 = inttoptr i64 %5888 to i32*
  %5892 = load i32, i32* %5891, align 4
  %5893 = zext i32 %5892 to i64
  store i64 %5893, i64* %RAX.i2122, align 8
  %5894 = add i64 %5887, -4168
  %5895 = add i64 %5889, 12
  store i64 %5895, i64* %3, align 8
  %5896 = inttoptr i64 %5894 to i32*
  %5897 = load i32, i32* %5896, align 4
  %5898 = sub i32 %5892, %5897
  %5899 = zext i32 %5898 to i64
  store i64 %5899, i64* %RAX.i2122, align 8
  %5900 = icmp eq i32 %5898, 0
  %5901 = zext i1 %5900 to i8
  %5902 = lshr i32 %5898, 31
  %5903 = add i32 %5898, -1
  store i8 %5901, i8* %39, align 1
  %5904 = and i32 %5903, 255
  %5905 = tail call i32 @llvm.ctpop.i32(i32 %5904)
  %5906 = trunc i32 %5905 to i8
  %5907 = and i8 %5906, 1
  %5908 = xor i8 %5907, 1
  store i8 %5908, i8* %46, align 1
  %5909 = xor i32 %5903, %5898
  %5910 = lshr i32 %5909, 4
  %5911 = trunc i32 %5910 to i8
  %5912 = and i8 %5911, 1
  store i8 %5912, i8* %52, align 1
  %5913 = icmp eq i32 %5903, 0
  %5914 = zext i1 %5913 to i8
  store i8 %5914, i8* %55, align 1
  %5915 = lshr i32 %5903, 31
  %5916 = trunc i32 %5915 to i8
  store i8 %5916, i8* %58, align 1
  %5917 = xor i32 %5915, %5902
  %5918 = add nuw nsw i32 %5917, %5902
  %5919 = icmp eq i32 %5918, 2
  %5920 = zext i1 %5919 to i8
  store i8 %5920, i8* %64, align 1
  %5921 = icmp ne i8 %5916, 0
  %5922 = xor i1 %5921, %5919
  %5923 = or i1 %5913, %5922
  %.v206 = select i1 %5923, i64 50, i64 21
  %5924 = add i64 %5889, %.v206
  store i64 %5924, i64* %3, align 8
  br i1 %5923, label %block_.L_4431f2, label %block_4431d5

block_4431d5:                                     ; preds = %block_.L_4431af
  %5925 = add i64 %5887, -80
  %5926 = add i64 %5924, 4
  store i64 %5926, i64* %3, align 8
  %5927 = inttoptr i64 %5925 to i64*
  %5928 = load i64, i64* %5927, align 8
  store i64 %5928, i64* %RDI.i2098, align 8
  %5929 = add i64 %5924, -26085
  %5930 = add i64 %5924, 9
  %5931 = load i64, i64* %6, align 8
  %5932 = add i64 %5931, -8
  %5933 = inttoptr i64 %5932 to i64*
  store i64 %5930, i64* %5933, align 8
  store i64 %5932, i64* %6, align 8
  store i64 %5929, i64* %3, align 8
  %call2_4431d9 = tail call %struct.Memory* @sub_43cbf0.max_eye_threat(%struct.State* nonnull %0, i64 %5929, %struct.Memory* %call2_4431b3)
  %5934 = load i32, i32* %EAX.i1917, align 4
  %5935 = load i64, i64* %3, align 8
  %5936 = add i32 %5934, -1
  %5937 = icmp eq i32 %5934, 0
  %5938 = zext i1 %5937 to i8
  store i8 %5938, i8* %39, align 1
  %5939 = and i32 %5936, 255
  %5940 = tail call i32 @llvm.ctpop.i32(i32 %5939)
  %5941 = trunc i32 %5940 to i8
  %5942 = and i8 %5941, 1
  %5943 = xor i8 %5942, 1
  store i8 %5943, i8* %46, align 1
  %5944 = xor i32 %5936, %5934
  %5945 = lshr i32 %5944, 4
  %5946 = trunc i32 %5945 to i8
  %5947 = and i8 %5946, 1
  store i8 %5947, i8* %52, align 1
  %5948 = icmp eq i32 %5936, 0
  %5949 = zext i1 %5948 to i8
  store i8 %5949, i8* %55, align 1
  %5950 = lshr i32 %5936, 31
  %5951 = trunc i32 %5950 to i8
  store i8 %5951, i8* %58, align 1
  %5952 = lshr i32 %5934, 31
  %5953 = xor i32 %5950, %5952
  %5954 = add nuw nsw i32 %5953, %5952
  %5955 = icmp eq i32 %5954, 2
  %5956 = zext i1 %5955 to i8
  store i8 %5956, i8* %64, align 1
  %5957 = icmp ne i8 %5951, 0
  %5958 = xor i1 %5957, %5955
  %5959 = or i1 %5948, %5958
  %.v207 = select i1 %5959, i64 20, i64 9
  %5960 = add i64 %5935, %.v207
  store i64 %5960, i64* %3, align 8
  br i1 %5959, label %block_.L_4431f2, label %block_4431e7

block_4431e7:                                     ; preds = %block_4431d5
  %5961 = load i64, i64* %RBP.i, align 8
  %5962 = add i64 %5961, -96
  %5963 = add i64 %5960, 4
  store i64 %5963, i64* %3, align 8
  %5964 = inttoptr i64 %5962 to i64*
  %5965 = load i64, i64* %5964, align 8
  store i64 %5965, i64* %RAX.i2122, align 8
  %5966 = add i64 %5960, 6
  store i64 %5966, i64* %3, align 8
  %5967 = inttoptr i64 %5965 to i32*
  %5968 = load i32, i32* %5967, align 4
  %5969 = add i32 %5968, 1
  %5970 = zext i32 %5969 to i64
  store i64 %5970, i64* %RCX.i2073, align 8
  %5971 = icmp eq i32 %5968, -1
  %5972 = icmp eq i32 %5969, 0
  %5973 = or i1 %5971, %5972
  %5974 = zext i1 %5973 to i8
  store i8 %5974, i8* %39, align 1
  %5975 = and i32 %5969, 255
  %5976 = tail call i32 @llvm.ctpop.i32(i32 %5975)
  %5977 = trunc i32 %5976 to i8
  %5978 = and i8 %5977, 1
  %5979 = xor i8 %5978, 1
  store i8 %5979, i8* %46, align 1
  %5980 = xor i32 %5969, %5968
  %5981 = lshr i32 %5980, 4
  %5982 = trunc i32 %5981 to i8
  %5983 = and i8 %5982, 1
  store i8 %5983, i8* %52, align 1
  %5984 = zext i1 %5972 to i8
  store i8 %5984, i8* %55, align 1
  %5985 = lshr i32 %5969, 31
  %5986 = trunc i32 %5985 to i8
  store i8 %5986, i8* %58, align 1
  %5987 = lshr i32 %5968, 31
  %5988 = xor i32 %5985, %5987
  %5989 = add nuw nsw i32 %5988, %5985
  %5990 = icmp eq i32 %5989, 2
  %5991 = zext i1 %5990 to i8
  store i8 %5991, i8* %64, align 1
  %5992 = add i64 %5960, 11
  store i64 %5992, i64* %3, align 8
  store i32 %5969, i32* %5967, align 4
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_4431f2

block_.L_4431f2:                                  ; preds = %block_4431e7, %block_4431d5, %block_.L_4431af
  %5993 = phi i64 [ %5924, %block_.L_4431af ], [ %5960, %block_4431d5 ], [ %.pre146, %block_4431e7 ]
  %MEMORY.62 = phi %struct.Memory* [ %call2_4431b3, %block_.L_4431af ], [ %call2_4431d9, %block_4431d5 ], [ %call2_4431d9, %block_4431e7 ]
  %5994 = add i64 %5993, 5
  br label %block_.L_4431f7

block_.L_4431f7:                                  ; preds = %block_443209, %block_.L_4431f2
  %storemerge89 = phi i64 [ %5994, %block_.L_4431f2 ], [ %6107, %block_443209 ]
  %5995 = load i64, i64* %RBP.i, align 8
  %5996 = add i64 %5995, -4240
  %5997 = add i64 %storemerge89, 6
  store i64 %5997, i64* %3, align 8
  %5998 = inttoptr i64 %5996 to i32*
  %5999 = load i32, i32* %5998, align 4
  %6000 = zext i32 %5999 to i64
  store i64 %6000, i64* %RAX.i2122, align 8
  %6001 = add i64 %5995, -4164
  %6002 = add i64 %storemerge89, 12
  store i64 %6002, i64* %3, align 8
  %6003 = inttoptr i64 %6001 to i32*
  %6004 = load i32, i32* %6003, align 4
  %6005 = sub i32 %5999, %6004
  %6006 = icmp ult i32 %5999, %6004
  %6007 = zext i1 %6006 to i8
  store i8 %6007, i8* %39, align 1
  %6008 = and i32 %6005, 255
  %6009 = tail call i32 @llvm.ctpop.i32(i32 %6008)
  %6010 = trunc i32 %6009 to i8
  %6011 = and i8 %6010, 1
  %6012 = xor i8 %6011, 1
  store i8 %6012, i8* %46, align 1
  %6013 = xor i32 %6004, %5999
  %6014 = xor i32 %6013, %6005
  %6015 = lshr i32 %6014, 4
  %6016 = trunc i32 %6015 to i8
  %6017 = and i8 %6016, 1
  store i8 %6017, i8* %52, align 1
  %6018 = icmp eq i32 %6005, 0
  %6019 = zext i1 %6018 to i8
  store i8 %6019, i8* %55, align 1
  %6020 = lshr i32 %6005, 31
  %6021 = trunc i32 %6020 to i8
  store i8 %6021, i8* %58, align 1
  %6022 = lshr i32 %5999, 31
  %6023 = lshr i32 %6004, 31
  %6024 = xor i32 %6023, %6022
  %6025 = xor i32 %6020, %6022
  %6026 = add nuw nsw i32 %6025, %6024
  %6027 = icmp eq i32 %6026, 2
  %6028 = zext i1 %6027 to i8
  store i8 %6028, i8* %64, align 1
  %6029 = icmp ne i8 %6021, 0
  %6030 = xor i1 %6029, %6027
  %.v208 = select i1 %6030, i64 18, i64 75
  %6031 = add i64 %storemerge89, %.v208
  store i64 %6031, i64* %3, align 8
  br i1 %6030, label %block_443209, label %block_.L_443242

block_443209:                                     ; preds = %block_.L_4431f7
  %6032 = add i64 %5995, -3328
  store i64 %6032, i64* %RAX.i2122, align 8
  %6033 = add i64 %5995, -80
  %6034 = add i64 %6031, 11
  store i64 %6034, i64* %3, align 8
  %6035 = inttoptr i64 %6033 to i64*
  %6036 = load i64, i64* %6035, align 8
  store i64 %6036, i64* %RDI.i2098, align 8
  %6037 = add i64 %6031, 18
  store i64 %6037, i64* %3, align 8
  %6038 = load i32, i32* %5998, align 4
  %6039 = sext i32 %6038 to i64
  %6040 = shl nsw i64 %6039, 2
  store i64 %6040, i64* %RCX.i2073, align 8
  %6041 = add i64 %6040, %6032
  store i64 %6041, i64* %RAX.i2122, align 8
  %6042 = icmp ult i64 %6041, %6032
  %6043 = icmp ult i64 %6041, %6040
  %6044 = or i1 %6042, %6043
  %6045 = zext i1 %6044 to i8
  store i8 %6045, i8* %39, align 1
  %6046 = trunc i64 %6041 to i32
  %6047 = and i32 %6046, 255
  %6048 = tail call i32 @llvm.ctpop.i32(i32 %6047)
  %6049 = trunc i32 %6048 to i8
  %6050 = and i8 %6049, 1
  %6051 = xor i8 %6050, 1
  store i8 %6051, i8* %46, align 1
  %6052 = xor i64 %6040, %6032
  %6053 = xor i64 %6052, %6041
  %6054 = lshr i64 %6053, 4
  %6055 = trunc i64 %6054 to i8
  %6056 = and i8 %6055, 1
  store i8 %6056, i8* %52, align 1
  %6057 = icmp eq i64 %6041, 0
  %6058 = zext i1 %6057 to i8
  store i8 %6058, i8* %55, align 1
  %6059 = lshr i64 %6041, 63
  %6060 = trunc i64 %6059 to i8
  store i8 %6060, i8* %58, align 1
  %6061 = lshr i64 %6032, 63
  %6062 = lshr i64 %6039, 61
  %6063 = and i64 %6062, 1
  %6064 = xor i64 %6059, %6061
  %6065 = xor i64 %6059, %6063
  %6066 = add nuw nsw i64 %6064, %6065
  %6067 = icmp eq i64 %6066, 2
  %6068 = zext i1 %6067 to i8
  store i8 %6068, i8* %64, align 1
  %6069 = add i64 %6031, 29
  store i64 %6069, i64* %3, align 8
  %6070 = load i64, i64* %6035, align 8
  store i64 %6070, i64* %RDX.i2039, align 8
  store i64 %6041, i64* %RSI.i2095, align 8
  %6071 = add i64 %6031, -26105
  %6072 = add i64 %6031, 37
  %6073 = load i64, i64* %6, align 8
  %6074 = add i64 %6073, -8
  %6075 = inttoptr i64 %6074 to i64*
  store i64 %6072, i64* %6075, align 8
  store i64 %6074, i64* %6, align 8
  store i64 %6071, i64* %3, align 8
  %call2_443229 = tail call %struct.Memory* @sub_43cc10.add_eyevalues(%struct.State* nonnull %0, i64 %6071, %struct.Memory* %MEMORY.62)
  %6076 = load i64, i64* %RBP.i, align 8
  %6077 = add i64 %6076, -4240
  %6078 = load i64, i64* %3, align 8
  %6079 = add i64 %6078, 6
  store i64 %6079, i64* %3, align 8
  %6080 = inttoptr i64 %6077 to i32*
  %6081 = load i32, i32* %6080, align 4
  %6082 = add i32 %6081, 1
  %6083 = zext i32 %6082 to i64
  store i64 %6083, i64* %RAX.i2122, align 8
  %6084 = icmp eq i32 %6081, -1
  %6085 = icmp eq i32 %6082, 0
  %6086 = or i1 %6084, %6085
  %6087 = zext i1 %6086 to i8
  store i8 %6087, i8* %39, align 1
  %6088 = and i32 %6082, 255
  %6089 = tail call i32 @llvm.ctpop.i32(i32 %6088)
  %6090 = trunc i32 %6089 to i8
  %6091 = and i8 %6090, 1
  %6092 = xor i8 %6091, 1
  store i8 %6092, i8* %46, align 1
  %6093 = xor i32 %6082, %6081
  %6094 = lshr i32 %6093, 4
  %6095 = trunc i32 %6094 to i8
  %6096 = and i8 %6095, 1
  store i8 %6096, i8* %52, align 1
  %6097 = zext i1 %6085 to i8
  store i8 %6097, i8* %55, align 1
  %6098 = lshr i32 %6082, 31
  %6099 = trunc i32 %6098 to i8
  store i8 %6099, i8* %58, align 1
  %6100 = lshr i32 %6081, 31
  %6101 = xor i32 %6098, %6100
  %6102 = add nuw nsw i32 %6101, %6098
  %6103 = icmp eq i32 %6102, 2
  %6104 = zext i1 %6103 to i8
  store i8 %6104, i8* %64, align 1
  %6105 = add i64 %6078, 15
  store i64 %6105, i64* %3, align 8
  store i32 %6082, i32* %6080, align 4
  %6106 = load i64, i64* %3, align 8
  %6107 = add i64 %6106, -70
  %6108 = add i64 %6106, 5
  store i64 %6108, i64* %3, align 8
  br label %block_.L_4431f7

block_.L_443242:                                  ; preds = %block_.L_4431f7
  %6109 = add i64 %5995, -4172
  %6110 = add i64 %6031, 6
  store i64 %6110, i64* %3, align 8
  %6111 = inttoptr i64 %6109 to i32*
  %6112 = load i32, i32* %6111, align 4
  %6113 = zext i32 %6112 to i64
  store i64 %6113, i64* %RAX.i2122, align 8
  store i32 %6112, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6114 = load i64, i64* %6, align 8
  %6115 = add i64 %6114, 4344
  store i64 %6115, i64* %6, align 8
  %6116 = icmp ugt i64 %6114, -4345
  %6117 = zext i1 %6116 to i8
  store i8 %6117, i8* %39, align 1
  %6118 = trunc i64 %6115 to i32
  %6119 = and i32 %6118, 255
  %6120 = tail call i32 @llvm.ctpop.i32(i32 %6119)
  %6121 = trunc i32 %6120 to i8
  %6122 = and i8 %6121, 1
  %6123 = xor i8 %6122, 1
  store i8 %6123, i8* %46, align 1
  %6124 = xor i64 %6114, 16
  %6125 = xor i64 %6124, %6115
  %6126 = lshr i64 %6125, 4
  %6127 = trunc i64 %6126 to i8
  %6128 = and i8 %6127, 1
  store i8 %6128, i8* %52, align 1
  %6129 = icmp eq i64 %6115, 0
  %6130 = zext i1 %6129 to i8
  store i8 %6130, i8* %55, align 1
  %6131 = lshr i64 %6115, 63
  %6132 = trunc i64 %6131 to i8
  store i8 %6132, i8* %58, align 1
  %6133 = lshr i64 %6114, 63
  %6134 = xor i64 %6131, %6133
  %6135 = add nuw nsw i64 %6134, %6131
  %6136 = icmp eq i64 %6135, 2
  %6137 = zext i1 %6136 to i8
  store i8 %6137, i8* %64, align 1
  %6138 = add i64 %6031, 21
  store i64 %6138, i64* %3, align 8
  %6139 = add i64 %6114, 4352
  %6140 = inttoptr i64 %6115 to i64*
  %6141 = load i64, i64* %6140, align 8
  store i64 %6141, i64* %RBX.i2127, align 8
  store i64 %6139, i64* %6, align 8
  %6142 = add i64 %6031, 23
  store i64 %6142, i64* %3, align 8
  %6143 = add i64 %6114, 4360
  %6144 = inttoptr i64 %6139 to i64*
  %6145 = load i64, i64* %6144, align 8
  store i64 %6145, i64* %R12.i2129, align 8
  store i64 %6143, i64* %6, align 8
  %6146 = add i64 %6031, 25
  store i64 %6146, i64* %3, align 8
  %6147 = add i64 %6114, 4368
  %6148 = inttoptr i64 %6143 to i64*
  %6149 = load i64, i64* %6148, align 8
  store i64 %6149, i64* %R13.i2131, align 8
  store i64 %6147, i64* %6, align 8
  %6150 = add i64 %6031, 27
  store i64 %6150, i64* %3, align 8
  %6151 = add i64 %6114, 4376
  %6152 = inttoptr i64 %6147 to i64*
  %6153 = load i64, i64* %6152, align 8
  store i64 %6153, i64* %R14.i2022, align 8
  store i64 %6151, i64* %6, align 8
  %6154 = add i64 %6031, 29
  store i64 %6154, i64* %3, align 8
  %6155 = add i64 %6114, 4384
  %6156 = inttoptr i64 %6151 to i64*
  %6157 = load i64, i64* %6156, align 8
  store i64 %6157, i64* %R15.i2010, align 8
  store i64 %6155, i64* %6, align 8
  %6158 = add i64 %6031, 30
  store i64 %6158, i64* %3, align 8
  %6159 = add i64 %6114, 4392
  %6160 = inttoptr i64 %6155 to i64*
  %6161 = load i64, i64* %6160, align 8
  store i64 %6161, i64* %RBP.i, align 8
  store i64 %6159, i64* %6, align 8
  %6162 = add i64 %6031, 31
  store i64 %6162, i64* %3, align 8
  %6163 = inttoptr i64 %6159 to i64*
  %6164 = load i64, i64* %6163, align 8
  store i64 %6164, i64* %3, align 8
  %6165 = add i64 %6114, 4400
  store i64 %6165, i64* %6, align 8
  ret %struct.Memory* %MEMORY.62
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
define %struct.Memory* @routine_subq__0x10f8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -4344
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 4344
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
define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r11d___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
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
define %struct.Memory* @routine_movl__0x640___ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1600, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx___r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %5 = load i32, i32* %EBX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x9d0__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x190___ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 400, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ebx___r12d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %5 = load i32, i32* %EBX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x390__rbp____r13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -912
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R13, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x200__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__r8__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4b0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1200
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
define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x4b4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1204
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -1205
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
define %struct.Memory* @routine_movl__0x0__MINUS0x9d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2516
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x9d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0f24___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x104c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4172
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r12___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r13__MINUS0x1098__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4248
  %5 = load i64, i64* %R13, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d__MINUS0x109c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4252
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r14__MINUS0x10a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4264
  %5 = load i64, i64* %R14, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r15__MINUS0x10b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4272
  %5 = load i64, i64* %R15, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r12__MINUS0x10b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4280
  %5 = load i64, i64* %R12, align 8
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
define %struct.Memory* @routine_movq_MINUS0x1098__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x109c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4252
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
define %struct.Memory* @routine_movq_MINUS0x10b8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10b0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movq_MINUS0x10a8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_44201e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x9d4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2516
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_jne_.L_442034(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x9d8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RCX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
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
define %struct.Memory* @routine_jne_.L_44206c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0xfffffffd___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i32 %6, -3
  %8 = and i64 %3, 4294967293
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %6, 253
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
  %19 = lshr i32 %6, 31
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
define %struct.Memory* @routine_movl__eax__0xab0f24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.clear_owl_move_data(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8a4c__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 35404
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
define %struct.Memory* @routine_jne_.L_44208f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.owl_find_lunches(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_make_domains(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_jne_.L_4420b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4__MINUS0x1040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4420bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5__MINUS0x1040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1030__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4144
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
define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_442285(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1034__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4148
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
define %struct.Memory* @routine_jge_.L_44226c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x1030__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x15___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -22
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1034__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4148
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
define %struct.Memory* @routine_movl__eax__MINUS0x1050__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4176
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1050__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4176
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
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
define %struct.Memory* @routine_jne_.L_442253(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x1038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4152
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
define %struct.Memory* @routine_jge_.L_44224e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1050__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4176
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
define %struct.Memory* @routine_movslq_MINUS0x1038__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4152
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
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1054__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4180
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1054__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4180
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
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_je_.L_442235(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 36
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1040__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4160
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
define %struct.Memory* @routine_jne_.L_442235(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__0x1c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = zext i8 %8 to i32
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i8 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i8 %8, 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %10, align 1
  %11 = zext i8 %9 to i32
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i8 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i8 %9, 7
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_442209(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x200__rbp__rax_1____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -512
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i8*
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addb__0x1___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i8 %4, 1
  store i8 %7, i8* %DL, align 1
  %8 = icmp eq i8 %4, -1
  %9 = icmp eq i8 %7, 0
  %10 = or i1 %8, %9
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = zext i8 %7 to i32
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i8 %7, %4
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = zext i1 %9 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i8 %7, 7
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i8 %4, 7
  %28 = xor i8 %25, %27
  %29 = add nuw nsw i8 %28, %25
  %30 = icmp eq i8 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x200__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -512
  %7 = add i64 %6, %5
  %8 = load i8, i8* %DL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442230(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x390__rbp__rax_1____dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -912
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i8*
  %11 = load i8, i8* %10, align 1
  store i8 %11, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__MINUS0x390__rbp__rax_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %4, -912
  %7 = add i64 %6, %5
  %8 = load i8, i8* %DL, align 1
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i8*
  store i8 %8, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442235(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44223a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1038__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4152
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
define %struct.Memory* @routine_movl__eax__MINUS0x1038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442131(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442253(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442258(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4420e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442271(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4420c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_442344(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44232b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xa0e41__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xa0e41__rip__type* @G_0xa0e41__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3cf4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 15604
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -15605
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0x1030__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x15___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -22
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1034__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 48
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 240
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
define %struct.Memory* @routine_movb__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  store float %10, float* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4422ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442330(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44228f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x200__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
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
define %struct.Memory* @routine_callq_.find_half_and_false_eyes(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi__MINUS0x10bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4284
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10bc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4284
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
define %struct.Memory* @routine_movl_MINUS0x10bc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4284
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
define %struct.Memory* @routine_movl_MINUS0x10bc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4284
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
define %struct.Memory* @routine_movl_MINUS0x10bc__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4284
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
define %struct.Memory* @routine_callq_.set_eyevalue(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_442c65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_442c4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1058__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4184
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1058__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4184
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
define %struct.Memory* @routine_movsbl_MINUS0x200__rbp__rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -512
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
define %struct.Memory* @routine_jle_.L_442c33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_cmpl_MINUS0x1058__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4184
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
define %struct.Memory* @routine_jne_.L_442c33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1024__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1028__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x102c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58898d___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x105c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1068__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4200
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1058__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4184
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
define %struct.Memory* @routine_callq_.compute_eyes_pessimistic(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x106c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x106c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4204
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
define %struct.Memory* @routine_jge_.L_44255d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1070__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1070__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4208
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
define %struct.Memory* @routine_jge_.L_442544(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1070__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4208
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
define %struct.Memory* @routine_jle_.L_44252b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1070__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4208
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x24___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 36
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_cmpl_MINUS0x1058__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4184
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
define %struct.Memory* @routine_jne_.L_44252b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_0x88bc__rax__rdx_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %3, 35004
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44252b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1024__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1070__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442495(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442549(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x106c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442478(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4426a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_44268a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_442671(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x106c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x15___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -22
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1070__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4208
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
define %struct.Memory* @routine_movsbl_MINUS0x390__rbp__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -912
  %6 = add i64 %5, %4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i8*
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i64
  %12 = and i64 %11, 4294967295
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_jl_.L_442667(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x3___edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  %8 = mul nsw i64 %7, 3
  %9 = trunc i64 %8 to i32
  %10 = and i64 %8, 4294967295
  store i64 %10, i64* %RDX, align 8
  %11 = mul i64 %7, 12884901888
  %12 = ashr exact i64 %11, 32
  %13 = icmp ne i64 %12, %8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 255
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
define %struct.Memory* @routine_jge_.L_442671(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_MINUS0x390__rbp__rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %3, -912
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
define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -5
  %8 = icmp ult i32 %4, 5
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
define %struct.Memory* @routine_jle_.L_442671(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_442676(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442584(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44268f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442567(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x9e0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1044__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4164
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1020__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -4128
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9e0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -2528
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
define %struct.Memory* @routine_movl__ecx__MINUS0xd00__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3328
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
define %struct.Memory* @routine_movl_MINUS0x1024__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4132
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
define %struct.Memory* @routine_addl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
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
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1058__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4184
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
define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.eye_move_urgency(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_44278f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x32__MINUS0x105c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 50, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.max_eyes(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x10c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4288
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.min_eyes(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x10c0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4288
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
define %struct.Memory* @routine_subl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = icmp ult i32 %9, %5
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %10, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_44274f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x46__MINUS0x105c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 70, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442779(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1024__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4132
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
define %struct.Memory* @routine_jne_.L_442774(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3c__MINUS0x105c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 60, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e1e9___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e1e9_type* @G__0x57e1e9 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4427f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1024__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4132
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
define %struct.Memory* @routine_je_.L_4427ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4427d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x28__MINUS0x105c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 40, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4427db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1e__MINUS0x105c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 30, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e1f4___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e1f4_type* @G__0x57e1f4 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x105c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
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
define %struct.Memory* @routine_jle_.L_442c24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_je_.L_4429cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4136
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
define %struct.Memory* @routine_movslq_MINUS0x1028__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4136
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x9d0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2512
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
define %struct.Memory* @routine_jle_.L_442860(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x9d0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2512
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
define %struct.Memory* @routine_addl_MINUS0x105c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4188
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl__ecx__MINUS0x105c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4188
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x62__MINUS0x105c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -98
  %10 = icmp ult i32 %8, 98
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
define %struct.Memory* @routine_jle_.L_44285b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x62__MINUS0x105c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 98, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442860(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_442873(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_442902(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1068__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1028__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4136
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
define %struct.Memory* @routine_movl_MINUS0x105c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
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
define %struct.Memory* @routine_movl_MINUS0x1058__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4184
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
define %struct.Memory* @routine_movl__r8d__MINUS0x10c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4292
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x10d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4304
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x10d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4308
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x10d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4312
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.eyevalue_to_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57e207___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e207_type* @G__0x57e207 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10d0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10d4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4308
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
define %struct.Memory* @routine_movl_MINUS0x10d8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4312
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
define %struct.Memory* @routine_movl__ecx__MINUS0x10dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4316
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10c4__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4292
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
define %struct.Memory* @routine_movq__rax___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10dc__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4316
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
define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4 = bitcast i64* %RSP to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %R10D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x10e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1028__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4136
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
define %struct.Memory* @routine_movsbl_0x1c__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_442974(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x1028__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.modify_stupid_eye_vital_point(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_442952(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44296f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e247___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e247_type* @G__0x57e247 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1028__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4136
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
define %struct.Memory* @routine_jmpq_.L_442974(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 1, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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
define %struct.Memory* @routine_movl_MINUS0x105c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4188
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
define %struct.Memory* @routine_movq_MINUS0x1068__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_add_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x9d0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -2512
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
define %struct.Memory* @routine_movslq_MINUS0x1044__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4164
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
define %struct.Memory* @routine_movl__edx__MINUS0x1020__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -4128
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
define %struct.Memory* @routine_jmpq_.L_442c1f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_442c1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x102c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4140
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
define %struct.Memory* @routine_je_.L_442c1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4140
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x102c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4140
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.liberty_of_goal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_442a5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_442a5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.safe_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_442aa8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_442aa3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_442aa8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_442abb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_442b4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x102c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4140
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
define %struct.Memory* @routine_movl__r8d__MINUS0x10e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4328
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x10f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4336
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x10f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4340
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x10f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4344
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10f0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10f4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4340
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
define %struct.Memory* @routine_movl_MINUS0x10f8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4344
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
define %struct.Memory* @routine_movl__ecx__MINUS0x10fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4348
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10e8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4328
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
define %struct.Memory* @routine_movl_MINUS0x10fc__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4348
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
define %struct.Memory* @routine_movl__eax__MINUS0x1100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4352
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x102c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4140
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
define %struct.Memory* @routine_jne_.L_442b8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_442bda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x102c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_442bb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_442bd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x102c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4140
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
define %struct.Memory* @routine_movl__eax__MINUS0x1104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4356
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442bda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442c24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1044__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4164
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
define %struct.Memory* @routine_movl__eax__MINUS0x1044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442c38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4423b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442c51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44239b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x103c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xa__MINUS0x103c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4156
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -10
  %10 = icmp ult i32 %8, 10
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
define %struct.Memory* @routine_jge_.L_443152(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4156
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
define %struct.Memory* @routine_cmpl__0x0__0x87f4__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 34804
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
define %struct.Memory* @routine_je_.L_443139(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x8894__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 34964
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
define %struct.Memory* @routine_leaq_MINUS0x1078__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x107c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4220
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x1080__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1074__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4212
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x103c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4156
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
define %struct.Memory* @routine_movl_0x87f4__rax__rdi_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 34804
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sniff_lunch(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x1088__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x107c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4220
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
define %struct.Memory* @routine_movl_MINUS0x107c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4220
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
define %struct.Memory* @routine_movl__r9d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1080__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4224
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x107c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4220
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
define %struct.Memory* @routine_jne_.L_442d34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x14__MINUS0x1074__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4212
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 20, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442ddc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x107c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4220
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_442d73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x1080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 34804
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.countstones(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x3c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 60
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -61
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1074__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442dd7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_442db2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x1080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4224
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x46___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 70
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -71
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
define %struct.Memory* @routine_jmpq_.L_442dd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4b___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 75
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -76
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x881c__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 34844
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -5
  %13 = icmp ult i32 %11, 5
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_442e04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1074__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4212
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
define %struct.Memory* @routine_subl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -10
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 10
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x15__MINUS0x1074__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4212
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -21
  %10 = icmp ult i32 %8, 21
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
define %struct.Memory* @routine_jge_.L_442e66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_442e66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1048__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4168
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
define %struct.Memory* @routine_movl__eax__MINUS0x1048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x1044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4164
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1088__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4232
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
define %struct.Memory* @routine_movl__eax__MINUS0xd00__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3328
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
define %struct.Memory* @routine_jmpq_.L_44313e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_44305e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x8894__rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 34964
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.improve_lunch_defense(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x102c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x9d0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -2512
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
define %struct.Memory* @routine_je_.L_442fb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x108c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x108c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4236
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
define %struct.Memory* @routine_movl_MINUS0x1044__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4164
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
define %struct.Memory* @routine_subl_MINUS0x1048__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jge_.L_442f10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x108c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4236
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
define %struct.Memory* @routine_movl_MINUS0x1020__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -4128
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
define %struct.Memory* @routine_cmpl_MINUS0x102c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4140
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
define %struct.Memory* @routine_jne_.L_442ef7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_442f10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442efc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x108c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442ebe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_442f2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_442f57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57dd2e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dd2e_type* @G__0x57dd2e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa63___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2659, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e273___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e273_type* @G__0x57e273 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x1088__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xd00__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x108c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4236
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.add_eyevalues(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x0__MINUS0xd00__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3328
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i8*
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0__MINUS0xcff__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3327
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i8*
  store i8 0, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442fe2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_442ff5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_44302a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e28d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e28d_type* @G__0x57e28d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x87f4__rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 34804
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1074__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4212
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
define %struct.Memory* @routine_movl__eax__MINUS0x1108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4360
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e2b3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e2b3_type* @G__0x57e2b3 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1074__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4212
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
define %struct.Memory* @routine_jmpq_.L_443134(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8844__rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 34884
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.improve_lunch_attack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4430a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4430d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e2be___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e2be_type* @G__0x57e2be to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x110c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4364
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57e2e3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e2e3_type* @G__0x57e2e3 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1048__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4168
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
define %struct.Memory* @routine_movl__edx__MINUS0x1048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4168
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1044__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4164
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
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x1044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4164
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1088__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4232
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
define %struct.Memory* @routine_movl__edx__MINUS0xd00__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3328
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
define %struct.Memory* @routine_jmpq_.L_443139(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x103c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4156
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
define %struct.Memory* @routine_movl__eax__MINUS0x103c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_442c6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1090__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1090__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4240
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
define %struct.Memory* @routine_jge_.L_4431af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1090__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4240
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x1090__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_44315c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = bitcast i64* %RDI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = load i32, i32* %5, align 4
  %10 = add i32 %9, %8
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %10, %8
  %13 = icmp ult i32 %10, %9
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
  %23 = xor i32 %9, %8
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %8, 31
  %36 = lshr i32 %9, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = bitcast i64* %RDI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1048__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4168
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
define %struct.Memory* @routine_jle_.L_4431f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.max_eye_threat(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4431f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1044__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4164
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
define %struct.Memory* @routine_jge_.L_443242(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x104c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4172
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
define %struct.Memory* @routine_addq__0x10f8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 4344
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -4345
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
