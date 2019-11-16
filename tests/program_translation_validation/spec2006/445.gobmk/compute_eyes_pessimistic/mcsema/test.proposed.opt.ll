; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xa777b__rip__type = type <{ [8 x i8] }>
%G_0xa7800__rip__type = type <{ [8 x i8] }>
%G_0xa788c__rip__type = type <{ [4 x i8] }>
%G_0xa789e__rip__type = type <{ [4 x i8] }>
%G_0xa78e0__rip__type = type <{ [4 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G__0x57d7b6_type = type <{ [8 x i8] }>
%G__0x57da5a_type = type <{ [8 x i8] }>
%G__0x57da85_type = type <{ [8 x i8] }>
%G__0x57daab_type = type <{ [8 x i8] }>
%G__0x57dacb_type = type <{ [8 x i8] }>
%G__0x57dafd_type = type <{ [8 x i8] }>
%G__0x57db17_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
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
@G_0xa777b__rip_ = global %G_0xa777b__rip__type zeroinitializer
@G_0xa7800__rip_ = global %G_0xa7800__rip__type zeroinitializer
@G_0xa788c__rip_ = global %G_0xa788c__rip__type zeroinitializer
@G_0xa789e__rip_ = global %G_0xa789e__rip__type zeroinitializer
@G_0xa78e0__rip_ = global %G_0xa78e0__rip__type zeroinitializer
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G__0x57d7b6 = global %G__0x57d7b6_type zeroinitializer
@G__0x57da5a = global %G__0x57da5a_type zeroinitializer
@G__0x57da85 = global %G__0x57da85_type zeroinitializer
@G__0x57daab = global %G__0x57daab_type zeroinitializer
@G__0x57dacb = global %G__0x57dacb_type zeroinitializer
@G__0x57dafd = global %G__0x57dafd_type zeroinitializer
@G__0x57db17 = global %G__0x57db17_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_43b030.is_halfeye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_439a40.print_eye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43a060.read_eye(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43baf0.min_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f200.is_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43bc10.guess_eye_space(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b010.max_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4e26d0.gg_normalize_float2int(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @compute_eyes_pessimistic(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -216
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 208
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i116 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i64*
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %RAX.i116, align 8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %45 to i32*
  %46 = add i64 %7, -12
  %47 = load i32, i32* %EDI.i, align 4
  %48 = add i64 %10, 17
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %49, align 4
  %RSI.i221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -16
  %52 = load i64, i64* %RSI.i221, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %51 to i64*
  store i64 %52, i64* %55, align 8
  %RDX.i1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -24
  %58 = load i64, i64* %RDX.i1053, align 8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %61, align 8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1050 = getelementptr inbounds %union.anon, %union.anon* %62, i64 0, i32 0
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -32
  %65 = load i64, i64* %RCX.i1050, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i1048 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -40
  %72 = load i64, i64* %R8.i1048, align 8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9.i1045 = getelementptr inbounds %union.anon, %union.anon* %76, i64 0, i32 0
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -48
  %79 = load i64, i64* %R9.i1045, align 8
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 4
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %78 to i64*
  store i64 %79, i64* %82, align 8
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -56
  %85 = load i64, i64* %RAX.i116, align 8
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 4
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %84 to i64*
  store i64 %85, i64* %88, align 8
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -68
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 7
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %90 to i32*
  store i32 0, i32* %93, align 4
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -72
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 7
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %95 to i32*
  store i32 0, i32* %98, align 4
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -76
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 7
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %100 to i32*
  store i32 0, i32* %103, align 4
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -84
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 7
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i32*
  store i32 0, i32* %108, align 4
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -60
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 7
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i32*
  store i32 0, i32* %113, align 4
  %EAX.i1026 = bitcast %union.anon* %40 to i32*
  %RDI.i907 = getelementptr inbounds %union.anon, %union.anon* %45, i64 0, i32 0
  %ECX.i883 = bitcast %union.anon* %62 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43b2fd

block_.L_43b2fd:                                  ; preds = %block_.L_43b43a, %entry
  %114 = phi i64 [ %.pre, %entry ], [ %777, %block_.L_43b43a ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.1, %block_.L_43b43a ]
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -60
  %117 = add i64 %114, 3
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %RAX.i116, align 8
  %121 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %122 = sub i32 %119, %121
  %123 = icmp ult i32 %119, %121
  %124 = zext i1 %123 to i8
  store i8 %124, i8* %14, align 1
  %125 = and i32 %122, 255
  %126 = tail call i32 @llvm.ctpop.i32(i32 %125)
  %127 = trunc i32 %126 to i8
  %128 = and i8 %127, 1
  %129 = xor i8 %128, 1
  store i8 %129, i8* %21, align 1
  %130 = xor i32 %121, %119
  %131 = xor i32 %130, %122
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  store i8 %134, i8* %27, align 1
  %135 = icmp eq i32 %122, 0
  %136 = zext i1 %135 to i8
  store i8 %136, i8* %30, align 1
  %137 = lshr i32 %122, 31
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %33, align 1
  %139 = lshr i32 %119, 31
  %140 = lshr i32 %121, 31
  %141 = xor i32 %140, %139
  %142 = xor i32 %137, %139
  %143 = add nuw nsw i32 %142, %141
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i8
  store i8 %145, i8* %39, align 1
  %146 = icmp ne i8 %138, 0
  %147 = xor i1 %146, %144
  %.v115 = select i1 %147, i64 16, i64 336
  %148 = add i64 %114, %.v115
  store i64 %148, i64* %3, align 8
  br i1 %147, label %block_43b30d, label %block_.L_43b44d

block_43b30d:                                     ; preds = %block_.L_43b2fd
  %149 = add i64 %115, -64
  %150 = add i64 %148, 7
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %149 to i32*
  store i32 0, i32* %151, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_43b314

block_.L_43b314:                                  ; preds = %block_.L_43b42c, %block_43b30d
  %152 = phi i64 [ %.pre103, %block_43b30d ], [ %748, %block_.L_43b42c ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_43b30d ], [ %MEMORY.8, %block_.L_43b42c ]
  %153 = load i64, i64* %RBP.i, align 8
  %154 = add i64 %153, -64
  %155 = add i64 %152, 3
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = zext i32 %157 to i64
  store i64 %158, i64* %RAX.i116, align 8
  %159 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %160 = sub i32 %157, %159
  %161 = icmp ult i32 %157, %159
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %14, align 1
  %163 = and i32 %160, 255
  %164 = tail call i32 @llvm.ctpop.i32(i32 %163)
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  %167 = xor i8 %166, 1
  store i8 %167, i8* %21, align 1
  %168 = xor i32 %159, %157
  %169 = xor i32 %168, %160
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %27, align 1
  %173 = icmp eq i32 %160, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %30, align 1
  %175 = lshr i32 %160, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %33, align 1
  %177 = lshr i32 %157, 31
  %178 = lshr i32 %159, 31
  %179 = xor i32 %178, %177
  %180 = xor i32 %175, %177
  %181 = add nuw nsw i32 %180, %179
  %182 = icmp eq i32 %181, 2
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %39, align 1
  %184 = icmp ne i8 %176, 0
  %185 = xor i1 %184, %182
  %.v114 = select i1 %185, i64 16, i64 294
  %186 = add i64 %152, %.v114
  store i64 %186, i64* %3, align 8
  %187 = add i64 %153, -60
  br i1 %185, label %block_43b324, label %block_.L_43b43a

block_43b324:                                     ; preds = %block_.L_43b314
  %188 = add i64 %186, 4
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i32*
  %190 = load i32, i32* %189, align 4
  %191 = mul i32 %190, 20
  %192 = add i32 %191, 21
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX.i116, align 8
  %194 = icmp ugt i32 %191, -22
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %14, align 1
  %196 = and i32 %192, 253
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %21, align 1
  %201 = xor i32 %191, 16
  %202 = xor i32 %201, %192
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %206 = lshr i32 %192, 31
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %33, align 1
  %208 = lshr i32 %191, 31
  %209 = xor i32 %206, %208
  %210 = add nuw nsw i32 %209, %206
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i8
  store i8 %212, i8* %39, align 1
  %213 = add i64 %186, 10
  store i64 %213, i64* %3, align 8
  %214 = load i32, i32* %156, align 4
  %215 = add i32 %214, %192
  %216 = zext i32 %215 to i64
  store i64 %216, i64* %RAX.i116, align 8
  %217 = icmp ult i32 %215, %192
  %218 = icmp ult i32 %215, %214
  %219 = or i1 %217, %218
  %220 = zext i1 %219 to i8
  store i8 %220, i8* %14, align 1
  %221 = and i32 %215, 255
  %222 = tail call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %21, align 1
  %226 = xor i32 %214, %192
  %227 = xor i32 %226, %215
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %27, align 1
  %231 = icmp eq i32 %215, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %30, align 1
  %233 = lshr i32 %215, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %33, align 1
  %235 = lshr i32 %214, 31
  %236 = xor i32 %233, %206
  %237 = xor i32 %233, %235
  %238 = add nuw nsw i32 %236, %237
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %39, align 1
  %241 = add i64 %153, -88
  %242 = add i64 %186, 13
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i32*
  store i32 %215, i32* %243, align 4
  %244 = load i64, i64* %RBP.i, align 8
  %245 = add i64 %244, -48
  %246 = load i64, i64* %3, align 8
  %247 = add i64 %246, 4
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %245 to i64*
  %249 = load i64, i64* %248, align 8
  store i64 %249, i64* %RCX.i1050, align 8
  %250 = add i64 %244, -88
  %251 = add i64 %246, 8
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = mul nsw i64 %254, 36
  store i64 %255, i64* %RDX.i1053, align 8
  %256 = lshr i64 %255, 63
  %257 = add i64 %255, %249
  store i64 %257, i64* %RCX.i1050, align 8
  %258 = icmp ult i64 %257, %249
  %259 = icmp ult i64 %257, %255
  %260 = or i1 %258, %259
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %14, align 1
  %262 = trunc i64 %257 to i32
  %263 = and i32 %262, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263)
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %21, align 1
  %268 = xor i64 %255, %249
  %269 = xor i64 %268, %257
  %270 = lshr i64 %269, 4
  %271 = trunc i64 %270 to i8
  %272 = and i8 %271, 1
  store i8 %272, i8* %27, align 1
  %273 = icmp eq i64 %257, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %30, align 1
  %275 = lshr i64 %257, 63
  %276 = trunc i64 %275 to i8
  store i8 %276, i8* %33, align 1
  %277 = lshr i64 %249, 63
  %278 = xor i64 %275, %277
  %279 = xor i64 %275, %256
  %280 = add nuw nsw i64 %278, %279
  %281 = icmp eq i64 %280, 2
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %39, align 1
  %283 = add i64 %257, 12
  %284 = add i64 %246, 18
  store i64 %284, i64* %3, align 8
  %285 = inttoptr i64 %283 to i32*
  %286 = load i32, i32* %285, align 4
  %287 = zext i32 %286 to i64
  store i64 %287, i64* %RAX.i116, align 8
  %288 = add i64 %244, -4
  %289 = add i64 %246, 21
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = sub i32 %286, %291
  %293 = icmp ult i32 %286, %291
  %294 = zext i1 %293 to i8
  store i8 %294, i8* %14, align 1
  %295 = and i32 %292, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %21, align 1
  %300 = xor i32 %291, %286
  %301 = xor i32 %300, %292
  %302 = lshr i32 %301, 4
  %303 = trunc i32 %302 to i8
  %304 = and i8 %303, 1
  store i8 %304, i8* %27, align 1
  %305 = icmp eq i32 %292, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %30, align 1
  %307 = lshr i32 %292, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %33, align 1
  %309 = lshr i32 %286, 31
  %310 = lshr i32 %291, 31
  %311 = xor i32 %310, %309
  %312 = xor i32 %307, %309
  %313 = add nuw nsw i32 %312, %311
  %314 = icmp eq i32 %313, 2
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %39, align 1
  %.v152 = select i1 %305, i64 32, i64 27
  %316 = add i64 %246, %.v152
  store i64 %316, i64* %3, align 8
  br i1 %305, label %block_.L_43b351, label %block_43b34c

block_43b34c:                                     ; preds = %block_43b324
  %317 = add i64 %316, 224
  br label %block_.L_43b42c

block_.L_43b351:                                  ; preds = %block_43b324
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -48
  %320 = add i64 %316, 4
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RAX.i116, align 8
  %323 = add i64 %318, -88
  %324 = add i64 %316, 8
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i32*
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %327, 36
  store i64 %328, i64* %RCX.i1050, align 8
  %329 = lshr i64 %328, 63
  %330 = add i64 %328, %322
  store i64 %330, i64* %RAX.i116, align 8
  %331 = icmp ult i64 %330, %322
  %332 = icmp ult i64 %330, %328
  %333 = or i1 %331, %332
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %14, align 1
  %335 = trunc i64 %330 to i32
  %336 = and i32 %335, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  %341 = xor i64 %328, %322
  %342 = xor i64 %341, %330
  %343 = lshr i64 %342, 4
  %344 = trunc i64 %343 to i8
  %345 = and i8 %344, 1
  store i8 %345, i8* %27, align 1
  %346 = icmp eq i64 %330, 0
  %347 = zext i1 %346 to i8
  store i8 %347, i8* %30, align 1
  %348 = lshr i64 %330, 63
  %349 = trunc i64 %348 to i8
  store i8 %349, i8* %33, align 1
  %350 = lshr i64 %322, 63
  %351 = xor i64 %348, %350
  %352 = xor i64 %348, %329
  %353 = add nuw nsw i64 %351, %352
  %354 = icmp eq i64 %353, 2
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %39, align 1
  %356 = add i64 %330, 28
  %357 = add i64 %316, 19
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i8*
  %359 = load i8, i8* %358, align 1
  %360 = sext i8 %359 to i64
  %361 = and i64 %360, 4294967295
  store i64 %361, i64* %RDX.i1053, align 8
  %362 = sext i8 %359 to i32
  store i8 0, i8* %14, align 1
  %363 = and i32 %362, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %368 = icmp eq i8 %359, 0
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %30, align 1
  %370 = lshr i32 %362, 31
  %371 = trunc i32 %370 to i8
  store i8 %371, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v153 = select i1 %368, i64 28, i64 49
  %372 = add i64 %316, %.v153
  store i64 %372, i64* %3, align 8
  br i1 %368, label %block_43b36d, label %block_.L_43b382

block_43b36d:                                     ; preds = %block_.L_43b351
  %373 = load i64, i64* %RBP.i, align 8
  %374 = add i64 %373, -56
  %375 = add i64 %372, 4
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i64*
  %377 = load i64, i64* %376, align 8
  store i64 %377, i64* %RDI.i907, align 8
  %378 = add i64 %373, -88
  %379 = add i64 %372, 7
  store i64 %379, i64* %3, align 8
  %380 = inttoptr i64 %378 to i32*
  %381 = load i32, i32* %380, align 4
  %382 = zext i32 %381 to i64
  store i64 %382, i64* %RSI.i221, align 8
  %383 = add i64 %372, -829
  %384 = add i64 %372, 12
  %385 = load i64, i64* %6, align 8
  %386 = add i64 %385, -8
  %387 = inttoptr i64 %386 to i64*
  store i64 %384, i64* %387, align 8
  store i64 %386, i64* %6, align 8
  store i64 %383, i64* %3, align 8
  %call2_43b374 = tail call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* nonnull %0, i64 %383, %struct.Memory* %MEMORY.1)
  %388 = load i32, i32* %EAX.i1026, align 4
  %389 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %390 = and i32 %388, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390)
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %395 = icmp eq i32 %388, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %30, align 1
  %397 = lshr i32 %388, 31
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v157 = select i1 %395, i64 118, i64 9
  %399 = add i64 %389, %.v157
  store i64 %399, i64* %3, align 8
  br i1 %395, label %block_.L_43b3ef, label %block_.L_43b382

block_.L_43b382:                                  ; preds = %block_.L_43b351, %block_43b36d
  %400 = phi i64 [ %399, %block_43b36d ], [ %372, %block_.L_43b351 ]
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -68
  %403 = add i64 %400, 3
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %402 to i32*
  %405 = load i32, i32* %404, align 4
  %406 = add i32 %405, 1
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RAX.i116, align 8
  %408 = icmp eq i32 %405, -1
  %409 = icmp eq i32 %406, 0
  %410 = or i1 %408, %409
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %14, align 1
  %412 = and i32 %406, 255
  %413 = tail call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %21, align 1
  %417 = xor i32 %406, %405
  %418 = lshr i32 %417, 4
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  store i8 %420, i8* %27, align 1
  %421 = zext i1 %409 to i8
  store i8 %421, i8* %30, align 1
  %422 = lshr i32 %406, 31
  %423 = trunc i32 %422 to i8
  store i8 %423, i8* %33, align 1
  %424 = lshr i32 %405, 31
  %425 = xor i32 %422, %424
  %426 = add nuw nsw i32 %425, %422
  %427 = icmp eq i32 %426, 2
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %39, align 1
  %429 = add i64 %400, 9
  store i64 %429, i64* %3, align 8
  store i32 %406, i32* %404, align 4
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -48
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 4
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %431 to i64*
  %435 = load i64, i64* %434, align 8
  store i64 %435, i64* %RCX.i1050, align 8
  %436 = add i64 %430, -88
  %437 = add i64 %432, 8
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = sext i32 %439 to i64
  %441 = mul nsw i64 %440, 36
  store i64 %441, i64* %RDX.i1053, align 8
  %442 = lshr i64 %441, 63
  %443 = add i64 %441, %435
  store i64 %443, i64* %RCX.i1050, align 8
  %444 = icmp ult i64 %443, %435
  %445 = icmp ult i64 %443, %441
  %446 = or i1 %444, %445
  %447 = zext i1 %446 to i8
  store i8 %447, i8* %14, align 1
  %448 = trunc i64 %443 to i32
  %449 = and i32 %448, 255
  %450 = tail call i32 @llvm.ctpop.i32(i32 %449)
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  %453 = xor i8 %452, 1
  store i8 %453, i8* %21, align 1
  %454 = xor i64 %441, %435
  %455 = xor i64 %454, %443
  %456 = lshr i64 %455, 4
  %457 = trunc i64 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, i8* %27, align 1
  %459 = icmp eq i64 %443, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %30, align 1
  %461 = lshr i64 %443, 63
  %462 = trunc i64 %461 to i8
  store i8 %462, i8* %33, align 1
  %463 = lshr i64 %435, 63
  %464 = xor i64 %461, %463
  %465 = xor i64 %461, %442
  %466 = add nuw nsw i64 %464, %465
  %467 = icmp eq i64 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %39, align 1
  %469 = add i64 %443, 28
  %470 = add i64 %432, 19
  store i64 %470, i64* %3, align 8
  %471 = inttoptr i64 %469 to i8*
  %472 = load i8, i8* %471, align 1
  %473 = sext i8 %472 to i64
  %474 = and i64 %473, 4294967295
  store i64 %474, i64* %RAX.i116, align 8
  %475 = sext i8 %472 to i32
  store i8 0, i8* %14, align 1
  %476 = and i32 %475, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %481 = icmp eq i8 %472, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %30, align 1
  %483 = lshr i32 %475, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v154 = select i1 %481, i64 65, i64 28
  %485 = add i64 %432, %.v154
  store i64 %485, i64* %3, align 8
  br i1 %481, label %block_.L_43b3cc, label %block_43b3a7

block_43b3a7:                                     ; preds = %block_.L_43b382
  %486 = load i64, i64* %RBP.i, align 8
  %487 = add i64 %486, -48
  %488 = add i64 %485, 4
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i64*
  %490 = load i64, i64* %489, align 8
  store i64 %490, i64* %RAX.i116, align 8
  %491 = add i64 %486, -88
  %492 = add i64 %485, 8
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = sext i32 %494 to i64
  %496 = mul nsw i64 %495, 36
  store i64 %496, i64* %RCX.i1050, align 8
  %497 = lshr i64 %496, 63
  %498 = add i64 %496, %490
  store i64 %498, i64* %RAX.i116, align 8
  %499 = icmp ult i64 %498, %490
  %500 = icmp ult i64 %498, %496
  %501 = or i1 %499, %500
  %502 = zext i1 %501 to i8
  store i8 %502, i8* %14, align 1
  %503 = trunc i64 %498 to i32
  %504 = and i32 %503, 255
  %505 = tail call i32 @llvm.ctpop.i32(i32 %504)
  %506 = trunc i32 %505 to i8
  %507 = and i8 %506, 1
  %508 = xor i8 %507, 1
  store i8 %508, i8* %21, align 1
  %509 = xor i64 %496, %490
  %510 = xor i64 %509, %498
  %511 = lshr i64 %510, 4
  %512 = trunc i64 %511 to i8
  %513 = and i8 %512, 1
  store i8 %513, i8* %27, align 1
  %514 = icmp eq i64 %498, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %30, align 1
  %516 = lshr i64 %498, 63
  %517 = trunc i64 %516 to i8
  store i8 %517, i8* %33, align 1
  %518 = lshr i64 %490, 63
  %519 = xor i64 %516, %518
  %520 = xor i64 %516, %497
  %521 = add nuw nsw i64 %519, %520
  %522 = icmp eq i64 %521, 2
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %39, align 1
  %524 = add i64 %498, 31
  %525 = add i64 %485, 19
  store i64 %525, i64* %3, align 8
  %526 = inttoptr i64 %524 to i8*
  %527 = load i8, i8* %526, align 1
  %528 = sext i8 %527 to i64
  %529 = and i64 %528, 4294967295
  store i64 %529, i64* %RDX.i1053, align 8
  %530 = sext i8 %527 to i32
  store i8 0, i8* %14, align 1
  %531 = and i32 %530, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531)
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %536 = icmp eq i8 %527, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %30, align 1
  %538 = lshr i32 %530, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %540 = icmp ne i8 %539, 0
  %541 = or i1 %536, %540
  %.v155 = select i1 %541, i64 37, i64 28
  %542 = add i64 %485, %.v155
  store i64 %542, i64* %3, align 8
  br i1 %541, label %block_.L_43b3cc, label %block_43b3c3

block_43b3c3:                                     ; preds = %block_43b3a7
  %543 = load i64, i64* %RBP.i, align 8
  %544 = add i64 %543, -76
  %545 = add i64 %542, 3
  store i64 %545, i64* %3, align 8
  %546 = inttoptr i64 %544 to i32*
  %547 = load i32, i32* %546, align 4
  %548 = add i32 %547, 1
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RAX.i116, align 8
  %550 = icmp eq i32 %547, -1
  %551 = icmp eq i32 %548, 0
  %552 = or i1 %550, %551
  %553 = zext i1 %552 to i8
  store i8 %553, i8* %14, align 1
  %554 = and i32 %548, 255
  %555 = tail call i32 @llvm.ctpop.i32(i32 %554)
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = xor i8 %557, 1
  store i8 %558, i8* %21, align 1
  %559 = xor i32 %548, %547
  %560 = lshr i32 %559, 4
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  store i8 %562, i8* %27, align 1
  %563 = zext i1 %551 to i8
  store i8 %563, i8* %30, align 1
  %564 = lshr i32 %548, 31
  %565 = trunc i32 %564 to i8
  store i8 %565, i8* %33, align 1
  %566 = lshr i32 %547, 31
  %567 = xor i32 %564, %566
  %568 = add nuw nsw i32 %567, %564
  %569 = icmp eq i32 %568, 2
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %39, align 1
  %571 = add i64 %542, 9
  store i64 %571, i64* %3, align 8
  store i32 %548, i32* %546, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_43b3cc

block_.L_43b3cc:                                  ; preds = %block_43b3c3, %block_43b3a7, %block_.L_43b382
  %572 = phi i64 [ %.pre105, %block_43b3c3 ], [ %542, %block_43b3a7 ], [ %485, %block_.L_43b382 ]
  %573 = load i64, i64* %RBP.i, align 8
  %574 = add i64 %573, -56
  %575 = add i64 %572, 4
  store i64 %575, i64* %3, align 8
  %576 = inttoptr i64 %574 to i64*
  %577 = load i64, i64* %576, align 8
  store i64 %577, i64* %RDI.i907, align 8
  %578 = add i64 %573, -88
  %579 = add i64 %572, 7
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = zext i32 %581 to i64
  store i64 %582, i64* %RSI.i221, align 8
  %583 = add i64 %572, -924
  %584 = add i64 %572, 12
  %585 = load i64, i64* %6, align 8
  %586 = add i64 %585, -8
  %587 = inttoptr i64 %586 to i64*
  store i64 %584, i64* %587, align 8
  store i64 %586, i64* %6, align 8
  store i64 %583, i64* %3, align 8
  %call2_43b3d3 = tail call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* nonnull %0, i64 %583, %struct.Memory* %MEMORY.1)
  %588 = load i32, i32* %EAX.i1026, align 4
  %589 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %590 = and i32 %588, 255
  %591 = tail call i32 @llvm.ctpop.i32(i32 %590)
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  %594 = xor i8 %593, 1
  store i8 %594, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %595 = icmp eq i32 %588, 0
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %30, align 1
  %597 = lshr i32 %588, 31
  %598 = trunc i32 %597 to i8
  store i8 %598, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v156 = select i1 %595, i64 18, i64 9
  %599 = add i64 %589, %.v156
  store i64 %599, i64* %3, align 8
  br i1 %595, label %block_.L_43b3ea, label %block_43b3e1

block_43b3e1:                                     ; preds = %block_.L_43b3cc
  %600 = load i64, i64* %RBP.i, align 8
  %601 = add i64 %600, -72
  %602 = add i64 %599, 3
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = add i32 %604, 1
  %606 = zext i32 %605 to i64
  store i64 %606, i64* %RAX.i116, align 8
  %607 = icmp eq i32 %604, -1
  %608 = icmp eq i32 %605, 0
  %609 = or i1 %607, %608
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %14, align 1
  %611 = and i32 %605, 255
  %612 = tail call i32 @llvm.ctpop.i32(i32 %611)
  %613 = trunc i32 %612 to i8
  %614 = and i8 %613, 1
  %615 = xor i8 %614, 1
  store i8 %615, i8* %21, align 1
  %616 = xor i32 %605, %604
  %617 = lshr i32 %616, 4
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  store i8 %619, i8* %27, align 1
  %620 = zext i1 %608 to i8
  store i8 %620, i8* %30, align 1
  %621 = lshr i32 %605, 31
  %622 = trunc i32 %621 to i8
  store i8 %622, i8* %33, align 1
  %623 = lshr i32 %604, 31
  %624 = xor i32 %621, %623
  %625 = add nuw nsw i32 %624, %621
  %626 = icmp eq i32 %625, 2
  %627 = zext i1 %626 to i8
  store i8 %627, i8* %39, align 1
  %628 = add i64 %599, 9
  store i64 %628, i64* %3, align 8
  store i32 %605, i32* %603, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_43b3ea

block_.L_43b3ea:                                  ; preds = %block_43b3e1, %block_.L_43b3cc
  %629 = phi i64 [ %.pre106, %block_43b3e1 ], [ %599, %block_.L_43b3cc ]
  %630 = add i64 %629, 61
  br label %block_.L_43b427

block_.L_43b3ef:                                  ; preds = %block_43b36d
  %631 = load i64, i64* %RBP.i, align 8
  %632 = add i64 %631, -88
  %633 = add i64 %399, 4
  store i64 %633, i64* %3, align 8
  %634 = inttoptr i64 %632 to i32*
  %635 = load i32, i32* %634, align 4
  %636 = sext i32 %635 to i64
  store i64 %636, i64* %RAX.i116, align 8
  %637 = add nsw i64 %636, 12099168
  %638 = add i64 %399, 12
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i8*
  %640 = load i8, i8* %639, align 1
  %641 = zext i8 %640 to i64
  store i64 %641, i64* %RCX.i1050, align 8
  %642 = zext i8 %640 to i32
  %643 = add nsw i32 %642, -1
  %644 = icmp eq i8 %640, 0
  %645 = zext i1 %644 to i8
  store i8 %645, i8* %14, align 1
  %646 = and i32 %643, 255
  %647 = tail call i32 @llvm.ctpop.i32(i32 %646)
  %648 = trunc i32 %647 to i8
  %649 = and i8 %648, 1
  %650 = xor i8 %649, 1
  store i8 %650, i8* %21, align 1
  %651 = xor i32 %643, %642
  %652 = lshr i32 %651, 4
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  store i8 %654, i8* %27, align 1
  %655 = icmp eq i32 %643, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %30, align 1
  %657 = lshr i32 %643, 31
  %658 = trunc i32 %657 to i8
  store i8 %658, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v158 = select i1 %655, i64 42, i64 21
  %659 = add i64 %399, %.v158
  store i64 %659, i64* %3, align 8
  br i1 %655, label %block_.L_43b419, label %block_43b404

block_43b404:                                     ; preds = %block_.L_43b3ef
  %660 = add i64 %659, 4
  store i64 %660, i64* %3, align 8
  %661 = load i32, i32* %634, align 4
  %662 = sext i32 %661 to i64
  store i64 %662, i64* %RAX.i116, align 8
  %663 = add nsw i64 %662, 12099168
  %664 = add i64 %659, 12
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i8*
  %666 = load i8, i8* %665, align 1
  %667 = zext i8 %666 to i64
  store i64 %667, i64* %RCX.i1050, align 8
  %668 = zext i8 %666 to i32
  %669 = add nsw i32 %668, -2
  %670 = icmp ult i8 %666, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %14, align 1
  %672 = and i32 %669, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %21, align 1
  %677 = xor i32 %669, %668
  %678 = lshr i32 %677, 4
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  store i8 %680, i8* %27, align 1
  %681 = icmp eq i32 %669, 0
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %30, align 1
  %683 = lshr i32 %669, 31
  %684 = trunc i32 %683 to i8
  store i8 %684, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v159 = select i1 %681, i64 21, i64 30
  %685 = add i64 %659, %.v159
  store i64 %685, i64* %3, align 8
  br i1 %681, label %block_.L_43b419, label %block_.L_43b422

block_.L_43b419:                                  ; preds = %block_43b404, %block_.L_43b3ef
  %686 = phi i64 [ %685, %block_43b404 ], [ %659, %block_.L_43b3ef ]
  %687 = add i64 %631, -84
  %688 = add i64 %686, 3
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  %690 = load i32, i32* %689, align 4
  %691 = add i32 %690, 1
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %RAX.i116, align 8
  %693 = icmp eq i32 %690, -1
  %694 = icmp eq i32 %691, 0
  %695 = or i1 %693, %694
  %696 = zext i1 %695 to i8
  store i8 %696, i8* %14, align 1
  %697 = and i32 %691, 255
  %698 = tail call i32 @llvm.ctpop.i32(i32 %697)
  %699 = trunc i32 %698 to i8
  %700 = and i8 %699, 1
  %701 = xor i8 %700, 1
  store i8 %701, i8* %21, align 1
  %702 = xor i32 %691, %690
  %703 = lshr i32 %702, 4
  %704 = trunc i32 %703 to i8
  %705 = and i8 %704, 1
  store i8 %705, i8* %27, align 1
  %706 = zext i1 %694 to i8
  store i8 %706, i8* %30, align 1
  %707 = lshr i32 %691, 31
  %708 = trunc i32 %707 to i8
  store i8 %708, i8* %33, align 1
  %709 = lshr i32 %690, 31
  %710 = xor i32 %707, %709
  %711 = add nuw nsw i32 %710, %707
  %712 = icmp eq i32 %711, 2
  %713 = zext i1 %712 to i8
  store i8 %713, i8* %39, align 1
  %714 = add i64 %686, 9
  store i64 %714, i64* %3, align 8
  store i32 %691, i32* %689, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_43b422

block_.L_43b422:                                  ; preds = %block_43b404, %block_.L_43b419
  %715 = phi i64 [ %.pre104, %block_.L_43b419 ], [ %685, %block_43b404 ]
  %716 = add i64 %715, 5
  store i64 %716, i64* %3, align 8
  br label %block_.L_43b427

block_.L_43b427:                                  ; preds = %block_.L_43b422, %block_.L_43b3ea
  %storemerge47 = phi i64 [ %630, %block_.L_43b3ea ], [ %716, %block_.L_43b422 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_43b3d3, %block_.L_43b3ea ], [ %MEMORY.1, %block_.L_43b422 ]
  %717 = add i64 %storemerge47, 5
  store i64 %717, i64* %3, align 8
  br label %block_.L_43b42c

block_.L_43b42c:                                  ; preds = %block_.L_43b427, %block_43b34c
  %storemerge = phi i64 [ %317, %block_43b34c ], [ %717, %block_.L_43b427 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.1, %block_43b34c ], [ %MEMORY.7, %block_.L_43b427 ]
  %718 = load i64, i64* %RBP.i, align 8
  %719 = add i64 %718, -64
  %720 = add i64 %storemerge, 3
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = add i32 %722, 1
  %724 = zext i32 %723 to i64
  store i64 %724, i64* %RAX.i116, align 8
  %725 = icmp eq i32 %722, -1
  %726 = icmp eq i32 %723, 0
  %727 = or i1 %725, %726
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %14, align 1
  %729 = and i32 %723, 255
  %730 = tail call i32 @llvm.ctpop.i32(i32 %729)
  %731 = trunc i32 %730 to i8
  %732 = and i8 %731, 1
  %733 = xor i8 %732, 1
  store i8 %733, i8* %21, align 1
  %734 = xor i32 %723, %722
  %735 = lshr i32 %734, 4
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  store i8 %737, i8* %27, align 1
  %738 = zext i1 %726 to i8
  store i8 %738, i8* %30, align 1
  %739 = lshr i32 %723, 31
  %740 = trunc i32 %739 to i8
  store i8 %740, i8* %33, align 1
  %741 = lshr i32 %722, 31
  %742 = xor i32 %739, %741
  %743 = add nuw nsw i32 %742, %739
  %744 = icmp eq i32 %743, 2
  %745 = zext i1 %744 to i8
  store i8 %745, i8* %39, align 1
  %746 = add i64 %storemerge, 9
  store i64 %746, i64* %3, align 8
  store i32 %723, i32* %721, align 4
  %747 = load i64, i64* %3, align 8
  %748 = add i64 %747, -289
  store i64 %748, i64* %3, align 8
  br label %block_.L_43b314

block_.L_43b43a:                                  ; preds = %block_.L_43b314
  %749 = add i64 %186, 8
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %187 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = add i32 %751, 1
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RAX.i116, align 8
  %754 = icmp eq i32 %751, -1
  %755 = icmp eq i32 %752, 0
  %756 = or i1 %754, %755
  %757 = zext i1 %756 to i8
  store i8 %757, i8* %14, align 1
  %758 = and i32 %752, 255
  %759 = tail call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  store i8 %762, i8* %21, align 1
  %763 = xor i32 %752, %751
  %764 = lshr i32 %763, 4
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  store i8 %766, i8* %27, align 1
  %767 = zext i1 %755 to i8
  store i8 %767, i8* %30, align 1
  %768 = lshr i32 %752, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %33, align 1
  %770 = lshr i32 %751, 31
  %771 = xor i32 %768, %770
  %772 = add nuw nsw i32 %771, %768
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %39, align 1
  %775 = add i64 %186, 14
  store i64 %775, i64* %3, align 8
  store i32 %752, i32* %750, align 4
  %776 = load i64, i64* %3, align 8
  %777 = add i64 %776, -331
  store i64 %777, i64* %3, align 8
  br label %block_.L_43b2fd

block_.L_43b44d:                                  ; preds = %block_.L_43b2fd
  %778 = add i64 %115, -48
  %779 = add i64 %148, 4
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i64*
  %781 = load i64, i64* %780, align 8
  store i64 %781, i64* %RAX.i116, align 8
  %782 = add i64 %115, -4
  %783 = add i64 %148, 8
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to i32*
  %785 = load i32, i32* %784, align 4
  %786 = sext i32 %785 to i64
  %787 = mul nsw i64 %786, 36
  store i64 %787, i64* %RCX.i1050, align 8
  %788 = lshr i64 %787, 63
  %789 = add i64 %787, %781
  store i64 %789, i64* %RAX.i116, align 8
  %790 = icmp ult i64 %789, %781
  %791 = icmp ult i64 %789, %787
  %792 = or i1 %790, %791
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %14, align 1
  %794 = trunc i64 %789 to i32
  %795 = and i32 %794, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %21, align 1
  %800 = xor i64 %787, %781
  %801 = xor i64 %800, %789
  %802 = lshr i64 %801, 4
  %803 = trunc i64 %802 to i8
  %804 = and i8 %803, 1
  store i8 %804, i8* %27, align 1
  %805 = icmp eq i64 %789, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %30, align 1
  %807 = lshr i64 %789, 63
  %808 = trunc i64 %807 to i8
  store i8 %808, i8* %33, align 1
  %809 = lshr i64 %781, 63
  %810 = xor i64 %807, %809
  %811 = xor i64 %807, %788
  %812 = add nuw nsw i64 %810, %811
  %813 = icmp eq i64 %812, 2
  %814 = zext i1 %813 to i8
  store i8 %814, i8* %39, align 1
  %815 = add i64 %789, 4
  %816 = add i64 %148, 18
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RDX.i1053, align 8
  %820 = add i64 %115, -72
  %821 = add i64 %148, 21
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i32*
  %823 = load i32, i32* %822, align 4
  %824 = add i32 %823, %818
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RDX.i1053, align 8
  %826 = icmp ult i32 %824, %818
  %827 = icmp ult i32 %824, %823
  %828 = or i1 %826, %827
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %14, align 1
  %830 = and i32 %824, 255
  %831 = tail call i32 @llvm.ctpop.i32(i32 %830)
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = xor i8 %833, 1
  store i8 %834, i8* %21, align 1
  %835 = xor i32 %823, %818
  %836 = xor i32 %835, %824
  %837 = lshr i32 %836, 4
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  store i8 %839, i8* %27, align 1
  %840 = icmp eq i32 %824, 0
  %841 = zext i1 %840 to i8
  store i8 %841, i8* %30, align 1
  %842 = lshr i32 %824, 31
  %843 = trunc i32 %842 to i8
  store i8 %843, i8* %33, align 1
  %844 = lshr i32 %818, 31
  %845 = lshr i32 %823, 31
  %846 = xor i32 %842, %844
  %847 = xor i32 %842, %845
  %848 = add nuw nsw i32 %846, %847
  %849 = icmp eq i32 %848, 2
  %850 = zext i1 %849 to i8
  store i8 %850, i8* %39, align 1
  %851 = load i64, i64* %RBP.i, align 8
  %852 = add i64 %851, -68
  %853 = add i64 %148, 24
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %852 to i32*
  %855 = load i32, i32* %854, align 4
  %856 = shl i32 %855, 1
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %RSI.i221, align 8
  %858 = sub i32 %824, %856
  %859 = zext i32 %858 to i64
  store i64 %859, i64* %RDX.i1053, align 8
  %860 = icmp ult i32 %824, %856
  %861 = zext i1 %860 to i8
  store i8 %861, i8* %14, align 1
  %862 = and i32 %858, 255
  %863 = tail call i32 @llvm.ctpop.i32(i32 %862)
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  store i8 %866, i8* %21, align 1
  %867 = xor i32 %856, %824
  %868 = xor i32 %867, %858
  %869 = lshr i32 %868, 4
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  store i8 %871, i8* %27, align 1
  %872 = icmp eq i32 %858, 0
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %30, align 1
  %874 = lshr i32 %858, 31
  %875 = trunc i32 %874 to i8
  store i8 %875, i8* %33, align 1
  %876 = lshr i32 %855, 30
  %877 = and i32 %876, 1
  %878 = xor i32 %877, %842
  %879 = xor i32 %874, %842
  %880 = add nuw nsw i32 %879, %878
  %881 = icmp eq i32 %880, 2
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %39, align 1
  %883 = add i64 %851, -76
  %884 = add i64 %148, 31
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = sub i32 %858, %886
  %888 = zext i32 %887 to i64
  store i64 %888, i64* %RDX.i1053, align 8
  %889 = icmp ult i32 %858, %886
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %14, align 1
  %891 = and i32 %887, 255
  %892 = tail call i32 @llvm.ctpop.i32(i32 %891)
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  %895 = xor i8 %894, 1
  store i8 %895, i8* %21, align 1
  %896 = xor i32 %886, %858
  %897 = xor i32 %896, %887
  %898 = lshr i32 %897, 4
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  store i8 %900, i8* %27, align 1
  %901 = icmp eq i32 %887, 0
  %902 = zext i1 %901 to i8
  store i8 %902, i8* %30, align 1
  %903 = lshr i32 %887, 31
  %904 = trunc i32 %903 to i8
  store i8 %904, i8* %33, align 1
  %905 = lshr i32 %886, 31
  %906 = xor i32 %905, %874
  %907 = xor i32 %903, %874
  %908 = add nuw nsw i32 %907, %906
  %909 = icmp eq i32 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %39, align 1
  %911 = load i64, i64* %RBP.i, align 8
  %912 = add i64 %911, -80
  %913 = add i64 %148, 34
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  store i32 %887, i32* %914, align 4
  %915 = load i64, i64* %RBP.i, align 8
  %916 = add i64 %915, -32
  %917 = load i64, i64* %3, align 8
  %918 = add i64 %917, 5
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %916 to i64*
  %920 = load i64, i64* %919, align 8
  store i8 0, i8* %14, align 1
  %921 = trunc i64 %920 to i32
  %922 = and i32 %921, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %927 = icmp eq i64 %920, 0
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %30, align 1
  %929 = lshr i64 %920, 63
  %930 = trunc i64 %929 to i8
  store i8 %930, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v116 = select i1 %927, i64 21, i64 11
  %931 = add i64 %917, %.v116
  store i64 %931, i64* %3, align 8
  br i1 %927, label %block_.L_43b485, label %block_43b47b

block_43b47b:                                     ; preds = %block_.L_43b44d
  %932 = add i64 %931, 4
  store i64 %932, i64* %3, align 8
  %933 = load i64, i64* %919, align 8
  store i64 %933, i64* %RAX.i116, align 8
  %934 = add i64 %931, 10
  store i64 %934, i64* %3, align 8
  %935 = inttoptr i64 %933 to i32*
  store i32 0, i32* %935, align 4
  %.pre66 = load i64, i64* %RBP.i, align 8
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_43b485

block_.L_43b485:                                  ; preds = %block_43b47b, %block_.L_43b44d
  %936 = phi i64 [ %.pre67, %block_43b47b ], [ %931, %block_.L_43b44d ]
  %937 = phi i64 [ %.pre66, %block_43b47b ], [ %915, %block_.L_43b44d ]
  %938 = add i64 %937, -40
  %939 = add i64 %936, 5
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i64*
  %941 = load i64, i64* %940, align 8
  store i8 0, i8* %14, align 1
  %942 = trunc i64 %941 to i32
  %943 = and i32 %942, 255
  %944 = tail call i32 @llvm.ctpop.i32(i32 %943)
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  store i8 %947, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %948 = icmp eq i64 %941, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %30, align 1
  %950 = lshr i64 %941, 63
  %951 = trunc i64 %950 to i8
  store i8 %951, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v117 = select i1 %948, i64 21, i64 11
  %952 = add i64 %936, %.v117
  store i64 %952, i64* %3, align 8
  br i1 %948, label %block_.L_43b49a, label %block_43b490

block_43b490:                                     ; preds = %block_.L_43b485
  %953 = add i64 %952, 4
  store i64 %953, i64* %3, align 8
  %954 = load i64, i64* %940, align 8
  store i64 %954, i64* %RAX.i116, align 8
  %955 = add i64 %952, 10
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  store i32 0, i32* %956, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_43b49a

block_.L_43b49a:                                  ; preds = %block_43b490, %block_.L_43b485
  %957 = phi i64 [ %.pre68, %block_43b490 ], [ %952, %block_.L_43b485 ]
  %958 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %959 = and i32 %958, 2
  %960 = zext i32 %959 to i64
  store i64 %960, i64* %RAX.i116, align 8
  store i8 0, i8* %14, align 1
  %961 = tail call i32 @llvm.ctpop.i32(i32 %959)
  %962 = trunc i32 %961 to i8
  %963 = xor i8 %962, 1
  store i8 %963, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %964 = icmp eq i32 %959, 0
  %.lobit108 = lshr exact i32 %959, 1
  %965 = trunc i32 %.lobit108 to i8
  %966 = xor i8 %965, 1
  store i8 %966, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v118 = select i1 %964, i64 84, i64 19
  %967 = add i64 %957, %.v118
  store i64 %967, i64* %3, align 8
  br i1 %964, label %block_.L_43b4ee, label %block_43b4ad

block_43b4ad:                                     ; preds = %block_.L_43b49a
  %968 = load i64, i64* %RBP.i, align 8
  %969 = add i64 %968, -48
  %970 = add i64 %967, 4
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i64*
  %972 = load i64, i64* %971, align 8
  store i64 %972, i64* %RDI.i907, align 8
  %973 = add i64 %968, -56
  %974 = add i64 %967, 8
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i64*
  %976 = load i64, i64* %975, align 8
  store i64 %976, i64* %RSI.i221, align 8
  %977 = add i64 %968, -4
  %978 = add i64 %967, 11
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RDX.i1053, align 8
  %982 = add i64 %967, -6765
  %983 = add i64 %967, 16
  %984 = load i64, i64* %6, align 8
  %985 = add i64 %984, -8
  %986 = inttoptr i64 %985 to i64*
  store i64 %983, i64* %986, align 8
  store i64 %985, i64* %6, align 8
  store i64 %982, i64* %3, align 8
  %call2_43b4b8 = tail call %struct.Memory* @sub_439a40.print_eye(%struct.State* nonnull %0, i64 %982, %struct.Memory* %MEMORY.0)
  %987 = load i64, i64* %3, align 8
  %988 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %989 = and i32 %988, 2
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RDX.i1053, align 8
  store i8 0, i8* %14, align 1
  %991 = tail call i32 @llvm.ctpop.i32(i32 %989)
  %992 = trunc i32 %991 to i8
  %993 = xor i8 %992, 1
  store i8 %993, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit109 = lshr exact i32 %989, 1
  %994 = trunc i32 %.lobit109 to i8
  %995 = xor i8 %994, 1
  store i8 %995, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %996 = icmp eq i8 %995, 0
  %.v119 = select i1 %996, i64 24, i64 19
  %997 = add i64 %987, %.v119
  store i64 %997, i64* %3, align 8
  br i1 %996, label %block_.L_43b4d5, label %block_43b4d0

block_43b4d0:                                     ; preds = %block_43b4ad
  %998 = add i64 %997, 25
  store i64 %998, i64* %3, align 8
  br label %block_.L_43b4e9

block_.L_43b4d5:                                  ; preds = %block_43b4ad
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i907, align 8
  %AL.i769 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i769, align 1
  %999 = add i64 %997, 92379
  %1000 = add i64 %997, 17
  %1001 = load i64, i64* %6, align 8
  %1002 = add i64 %1001, -8
  %1003 = inttoptr i64 %1002 to i64*
  store i64 %1000, i64* %1003, align 8
  store i64 %1002, i64* %6, align 8
  store i64 %999, i64* %3, align 8
  %call2_43b4e1 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %999, %struct.Memory* %call2_43b4b8)
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -120
  %1006 = load i32, i32* %EAX.i1026, align 4
  %1007 = load i64, i64* %3, align 8
  %1008 = add i64 %1007, 3
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1005 to i32*
  store i32 %1006, i32* %1009, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_43b4e9

block_.L_43b4e9:                                  ; preds = %block_.L_43b4d5, %block_43b4d0
  %1010 = phi i64 [ %.pre69, %block_.L_43b4d5 ], [ %998, %block_43b4d0 ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_43b4e1, %block_.L_43b4d5 ], [ %call2_43b4b8, %block_43b4d0 ]
  %1011 = add i64 %1010, 5
  store i64 %1011, i64* %3, align 8
  %.pre70 = load i64, i64* %RAX.i116, align 8
  br label %block_.L_43b4ee

block_.L_43b4ee:                                  ; preds = %block_.L_43b4e9, %block_.L_43b49a
  %1012 = phi i64 [ %967, %block_.L_43b49a ], [ %1011, %block_.L_43b4e9 ]
  %1013 = phi i64 [ 0, %block_.L_43b49a ], [ %.pre70, %block_.L_43b4e9 ]
  %1014 = phi i64 [ %960, %block_.L_43b49a ], [ %.pre70, %block_.L_43b4e9 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.0, %block_.L_43b49a ], [ %MEMORY.11, %block_.L_43b4e9 ]
  %1015 = and i64 %1013, 4294967295
  %1016 = xor i64 %1015, %1014
  %1017 = trunc i64 %1016 to i32
  %1018 = and i64 %1016, 4294967295
  store i64 %1018, i64* %RAX.i116, align 8
  store i8 0, i8* %14, align 1
  %1019 = and i32 %1017, 255
  %1020 = tail call i32 @llvm.ctpop.i32(i32 %1019)
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = xor i8 %1022, 1
  store i8 %1023, i8* %21, align 1
  %1024 = icmp eq i32 %1017, 0
  %1025 = zext i1 %1024 to i8
  store i8 %1025, i8* %30, align 1
  %1026 = lshr i32 %1017, 31
  %1027 = trunc i32 %1026 to i8
  store i8 %1027, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1028 = load i64, i64* %RBP.i, align 8
  %1029 = add i64 %1028, -4
  %1030 = add i64 %1012, 5
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  %1032 = load i32, i32* %1031, align 4
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RDI.i907, align 8
  %1034 = add i64 %1028, -32
  %1035 = add i64 %1012, 9
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i64*
  %1037 = load i64, i64* %1036, align 8
  store i64 %1037, i64* %RSI.i221, align 8
  %1038 = add i64 %1028, -40
  %1039 = add i64 %1012, 13
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i64*
  %1041 = load i64, i64* %1040, align 8
  store i64 %1041, i64* %RDX.i1053, align 8
  %1042 = add i64 %1028, -16
  %1043 = add i64 %1012, 17
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i64*
  %1045 = load i64, i64* %1044, align 8
  store i64 %1045, i64* %RCX.i1050, align 8
  %1046 = add i64 %1028, -48
  %1047 = add i64 %1012, 21
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i64*
  %1049 = load i64, i64* %1048, align 8
  store i64 %1049, i64* %R8.i1048, align 8
  %1050 = add i64 %1028, -56
  %1051 = add i64 %1012, 25
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i64*
  %1053 = load i64, i64* %1052, align 8
  store i64 %1053, i64* %R9.i1045, align 8
  %1054 = bitcast i64* %6 to i32**
  %1055 = load i32*, i32** %1054, align 8
  %1056 = add i64 %1012, 32
  store i64 %1056, i64* %3, align 8
  store i32 0, i32* %1055, align 4
  %1057 = load i64, i64* %6, align 8
  %1058 = add i64 %1057, 8
  %1059 = load i64, i64* %3, align 8
  %1060 = add i64 %1059, 8
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1058 to i32*
  store i32 0, i32* %1061, align 4
  %1062 = load i64, i64* %RBP.i, align 8
  %1063 = add i64 %1062, -124
  %1064 = load i32, i32* %EAX.i1026, align 4
  %1065 = load i64, i64* %3, align 8
  %1066 = add i64 %1065, 3
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1063 to i32*
  store i32 %1064, i32* %1067, align 4
  %1068 = load i64, i64* %3, align 8
  %1069 = add i64 %1068, -5305
  %1070 = add i64 %1068, 5
  %1071 = load i64, i64* %6, align 8
  %1072 = add i64 %1071, -8
  %1073 = inttoptr i64 %1072 to i64*
  store i64 %1070, i64* %1073, align 8
  store i64 %1072, i64* %6, align 8
  store i64 %1069, i64* %3, align 8
  %call2_43b519 = tail call %struct.Memory* @sub_43a060.read_eye(%struct.State* nonnull %0, i64 %1069, %struct.Memory* %MEMORY.12)
  %1074 = load i32, i32* %EAX.i1026, align 4
  %1075 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1076 = and i32 %1074, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1081 = icmp eq i32 %1074, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %30, align 1
  %1083 = lshr i32 %1074, 31
  %1084 = trunc i32 %1083 to i8
  store i8 %1084, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v120 = select i1 %1081, i64 183, i64 9
  %1085 = add i64 %1075, %.v120
  store i64 %1085, i64* %3, align 8
  %1086 = load i64, i64* %RBP.i, align 8
  br i1 %1081, label %block_.L_43b5d5, label %block_43b527

block_43b527:                                     ; preds = %block_.L_43b4ee
  %1087 = add i64 %1086, -16
  %1088 = add i64 %1085, 4
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i64*
  %1090 = load i64, i64* %1089, align 8
  store i64 %1090, i64* %RDI.i907, align 8
  %1091 = add i64 %1085, 1481
  %1092 = add i64 %1085, 9
  %1093 = load i64, i64* %6, align 8
  %1094 = add i64 %1093, -8
  %1095 = inttoptr i64 %1094 to i64*
  store i64 %1092, i64* %1095, align 8
  store i64 %1094, i64* %6, align 8
  store i64 %1091, i64* %3, align 8
  %call2_43b52b = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %1091, %struct.Memory* %call2_43b519)
  %1096 = load i64, i64* %RAX.i116, align 8
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -68
  %1099 = load i64, i64* %3, align 8
  %1100 = add i64 %1099, 3
  store i64 %1100, i64* %3, align 8
  %1101 = trunc i64 %1096 to i32
  %1102 = inttoptr i64 %1098 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = sub i32 %1101, %1103
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RAX.i116, align 8
  %1106 = icmp ult i32 %1101, %1103
  %1107 = zext i1 %1106 to i8
  store i8 %1107, i8* %14, align 1
  %1108 = and i32 %1104, 255
  %1109 = tail call i32 @llvm.ctpop.i32(i32 %1108)
  %1110 = trunc i32 %1109 to i8
  %1111 = and i8 %1110, 1
  %1112 = xor i8 %1111, 1
  store i8 %1112, i8* %21, align 1
  %1113 = xor i32 %1103, %1101
  %1114 = xor i32 %1113, %1104
  %1115 = lshr i32 %1114, 4
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  store i8 %1117, i8* %27, align 1
  %1118 = icmp eq i32 %1104, 0
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %30, align 1
  %1120 = lshr i32 %1104, 31
  %1121 = trunc i32 %1120 to i8
  store i8 %1121, i8* %33, align 1
  %1122 = lshr i32 %1101, 31
  %1123 = lshr i32 %1103, 31
  %1124 = xor i32 %1123, %1122
  %1125 = xor i32 %1120, %1122
  %1126 = add nuw nsw i32 %1125, %1124
  %1127 = icmp eq i32 %1126, 2
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %39, align 1
  %1129 = add i64 %1097, -24
  %1130 = add i64 %1099, 7
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i64*
  %1132 = load i64, i64* %1131, align 8
  store i64 %1132, i64* %RDI.i907, align 8
  %1133 = add i64 %1099, 9
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i32*
  store i32 %1104, i32* %1134, align 4
  %1135 = load i64, i64* %RBP.i, align 8
  %1136 = add i64 %1135, -48
  %1137 = load i64, i64* %3, align 8
  %1138 = add i64 %1137, 4
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1136 to i64*
  %1140 = load i64, i64* %1139, align 8
  store i64 %1140, i64* %RDI.i907, align 8
  %1141 = add i64 %1135, -4
  %1142 = add i64 %1137, 8
  store i64 %1142, i64* %3, align 8
  %1143 = inttoptr i64 %1141 to i32*
  %1144 = load i32, i32* %1143, align 4
  %1145 = sext i32 %1144 to i64
  %1146 = mul nsw i64 %1145, 36
  store i64 %1146, i64* %RCX.i1050, align 8
  %1147 = lshr i64 %1146, 63
  %1148 = add i64 %1146, %1140
  store i64 %1148, i64* %RDI.i907, align 8
  %1149 = icmp ult i64 %1148, %1140
  %1150 = icmp ult i64 %1148, %1146
  %1151 = or i1 %1149, %1150
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %14, align 1
  %1153 = trunc i64 %1148 to i32
  %1154 = and i32 %1153, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  %1159 = xor i64 %1146, %1140
  %1160 = xor i64 %1159, %1148
  %1161 = lshr i64 %1160, 4
  %1162 = trunc i64 %1161 to i8
  %1163 = and i8 %1162, 1
  store i8 %1163, i8* %27, align 1
  %1164 = icmp eq i64 %1148, 0
  %1165 = zext i1 %1164 to i8
  store i8 %1165, i8* %30, align 1
  %1166 = lshr i64 %1148, 63
  %1167 = trunc i64 %1166 to i8
  store i8 %1167, i8* %33, align 1
  %1168 = lshr i64 %1140, 63
  %1169 = xor i64 %1166, %1168
  %1170 = xor i64 %1166, %1147
  %1171 = add nuw nsw i64 %1169, %1170
  %1172 = icmp eq i64 %1171, 2
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %39, align 1
  %1174 = add i64 %1148, 4
  %1175 = add i64 %1137, 19
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i32*
  %1177 = load i32, i32* %1176, align 4
  %1178 = add i32 %1177, -1
  %1179 = icmp eq i32 %1177, 0
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %14, align 1
  %1181 = and i32 %1178, 255
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %21, align 1
  %1186 = xor i32 %1178, %1177
  %1187 = lshr i32 %1186, 4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  store i8 %1189, i8* %27, align 1
  %1190 = icmp eq i32 %1178, 0
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %30, align 1
  %1192 = lshr i32 %1178, 31
  %1193 = trunc i32 %1192 to i8
  store i8 %1193, i8* %33, align 1
  %1194 = lshr i32 %1177, 31
  %1195 = xor i32 %1192, %1194
  %1196 = add nuw nsw i32 %1195, %1194
  %1197 = icmp eq i32 %1196, 2
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %39, align 1
  %.v121 = select i1 %1190, i64 25, i64 89
  %1199 = add i64 %1137, %.v121
  store i64 %1199, i64* %3, align 8
  br i1 %1190, label %block_43b552, label %block_.L_43b592

block_43b552:                                     ; preds = %block_43b527
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDX.i1053, align 8
  store i64 1, i64* %RAX.i116, align 8
  store i64 2, i64* %RCX.i1050, align 8
  %1200 = load i64, i64* %RBP.i, align 8
  %1201 = add i64 %1200, -4
  %1202 = add i64 %1199, 17
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1201 to i32*
  %1204 = load i32, i32* %1203, align 4
  %1205 = zext i32 %1204 to i64
  store i64 %1205, i64* %RDI.i907, align 8
  %1206 = add i64 %1200, -48
  %1207 = add i64 %1199, 21
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i64*
  %1209 = load i64, i64* %1208, align 8
  store i64 %1209, i64* %RSI.i221, align 8
  %1210 = add i64 %1199, 25
  store i64 %1210, i64* %3, align 8
  %1211 = load i32, i32* %1203, align 4
  %1212 = sext i32 %1211 to i64
  %1213 = mul nsw i64 %1212, 36
  store i64 %1213, i64* %R8.i1048, align 8
  %1214 = lshr i64 %1213, 63
  %1215 = add i64 %1213, %1209
  store i64 %1215, i64* %RSI.i221, align 8
  %1216 = icmp ult i64 %1215, %1209
  %1217 = icmp ult i64 %1215, %1213
  %1218 = or i1 %1216, %1217
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %14, align 1
  %1220 = trunc i64 %1215 to i32
  %1221 = and i32 %1220, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %21, align 1
  %1226 = xor i64 %1213, %1209
  %1227 = xor i64 %1226, %1215
  %1228 = lshr i64 %1227, 4
  %1229 = trunc i64 %1228 to i8
  %1230 = and i8 %1229, 1
  store i8 %1230, i8* %27, align 1
  %1231 = icmp eq i64 %1215, 0
  %1232 = zext i1 %1231 to i8
  store i8 %1232, i8* %30, align 1
  %1233 = lshr i64 %1215, 63
  %1234 = trunc i64 %1233 to i8
  store i8 %1234, i8* %33, align 1
  %1235 = lshr i64 %1209, 63
  %1236 = xor i64 %1233, %1235
  %1237 = xor i64 %1233, %1214
  %1238 = add nuw nsw i64 %1236, %1237
  %1239 = icmp eq i64 %1238, 2
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %39, align 1
  %1241 = inttoptr i64 %1215 to i32*
  %1242 = add i64 %1199, 35
  store i64 %1242, i64* %3, align 8
  %1243 = load i32, i32* %1241, align 4
  %1244 = add i32 %1243, -4
  %1245 = icmp ult i32 %1243, 4
  %1246 = zext i1 %1245 to i8
  store i8 %1246, i8* %14, align 1
  %1247 = and i32 %1244, 255
  %1248 = tail call i32 @llvm.ctpop.i32(i32 %1247)
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  %1251 = xor i8 %1250, 1
  store i8 %1251, i8* %21, align 1
  %1252 = xor i32 %1244, %1243
  %1253 = lshr i32 %1252, 4
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  store i8 %1255, i8* %27, align 1
  %1256 = icmp eq i32 %1244, 0
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %30, align 1
  %1258 = lshr i32 %1244, 31
  %1259 = trunc i32 %1258 to i8
  store i8 %1259, i8* %33, align 1
  %1260 = lshr i32 %1243, 31
  %1261 = xor i32 %1258, %1260
  %1262 = add nuw nsw i32 %1261, %1260
  %1263 = icmp eq i32 %1262, 2
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %39, align 1
  %1265 = load i32, i32* %ECX.i883, align 4
  %1266 = zext i32 %1265 to i64
  %1267 = load i64, i64* %RAX.i116, align 8
  %1268 = select i1 %1256, i64 %1266, i64 %1267
  %1269 = and i64 %1268, 4294967295
  store i64 %1269, i64* %RAX.i116, align 8
  %1270 = and i64 %1268, 4294967295
  store i64 %1270, i64* %RSI.i221, align 8
  %1271 = add i64 %1199, -181074
  %1272 = add i64 %1199, 45
  %1273 = load i64, i64* %6, align 8
  %1274 = add i64 %1273, -8
  %1275 = inttoptr i64 %1274 to i64*
  store i64 %1272, i64* %1275, align 8
  store i64 %1274, i64* %6, align 8
  store i64 %1271, i64* %3, align 8
  %call2_43b57a = tail call %struct.Memory* @sub_40f200.is_ko(%struct.State* nonnull %0, i64 %1271, %struct.Memory* %call2_43b52b)
  %1276 = load i32, i32* %EAX.i1026, align 4
  %1277 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1278 = and i32 %1276, 255
  %1279 = tail call i32 @llvm.ctpop.i32(i32 %1278)
  %1280 = trunc i32 %1279 to i8
  %1281 = and i8 %1280, 1
  %1282 = xor i8 %1281, 1
  store i8 %1282, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1283 = icmp eq i32 %1276, 0
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %30, align 1
  %1285 = lshr i32 %1276, 31
  %1286 = trunc i32 %1285 to i8
  store i8 %1286, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v150 = select i1 %1283, i64 19, i64 9
  %1287 = add i64 %1277, %.v150
  store i64 %1287, i64* %3, align 8
  br i1 %1283, label %block_.L_43b592, label %block_43b588

block_43b588:                                     ; preds = %block_43b552
  %1288 = load i64, i64* %RBP.i, align 8
  %1289 = add i64 %1288, -24
  %1290 = add i64 %1287, 4
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RAX.i116, align 8
  %1293 = add i64 %1287, 10
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  store i32 0, i32* %1294, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_43b592

block_.L_43b592:                                  ; preds = %block_43b527, %block_43b588, %block_43b552
  %1295 = phi i64 [ %1199, %block_43b527 ], [ %1287, %block_43b552 ], [ %.pre71, %block_43b588 ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_43b52b, %block_43b527 ], [ %call2_43b57a, %block_43b552 ], [ %call2_43b57a, %block_43b588 ]
  %1296 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1297 = and i32 %1296, 2
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RAX.i116, align 8
  store i8 0, i8* %14, align 1
  %1299 = tail call i32 @llvm.ctpop.i32(i32 %1297)
  %1300 = trunc i32 %1299 to i8
  %1301 = xor i8 %1300, 1
  store i8 %1301, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit110 = lshr exact i32 %1297, 1
  %1302 = trunc i32 %.lobit110 to i8
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1304 = icmp eq i8 %1303, 0
  %.v122 = select i1 %1304, i64 24, i64 19
  %1305 = add i64 %1295, %.v122
  store i64 %1305, i64* %3, align 8
  br i1 %1304, label %block_.L_43b5aa, label %block_43b5a5

block_43b5a5:                                     ; preds = %block_.L_43b592
  %1306 = add i64 %1305, 43
  store i64 %1306, i64* %3, align 8
  br label %block_.L_43b5d0

block_.L_43b5aa:                                  ; preds = %block_.L_43b592
  %1307 = load i64, i64* %RBP.i, align 8
  %1308 = add i64 %1307, -16
  %1309 = add i64 %1305, 4
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i64*
  %1311 = load i64, i64* %1310, align 8
  store i64 %1311, i64* %RDI.i907, align 8
  %1312 = add i64 %1305, 1382
  %1313 = add i64 %1305, 9
  %1314 = load i64, i64* %6, align 8
  %1315 = add i64 %1314, -8
  %1316 = inttoptr i64 %1315 to i64*
  store i64 %1313, i64* %1316, align 8
  store i64 %1315, i64* %6, align 8
  store i64 %1312, i64* %3, align 8
  %call2_43b5ae = tail call %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* nonnull %0, i64 %1312, %struct.Memory* %MEMORY.13)
  %1317 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57da5a_type* @G__0x57da5a to i64), i64* %RDI.i907, align 8
  %1318 = load i64, i64* %RBP.i, align 8
  %1319 = add i64 %1318, -24
  %1320 = add i64 %1317, 14
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i64*
  %1322 = load i64, i64* %1321, align 8
  store i64 %1322, i64* %RCX.i1050, align 8
  %1323 = add i64 %1317, 16
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  %1325 = load i32, i32* %1324, align 4
  %1326 = zext i32 %1325 to i64
  store i64 %1326, i64* %RDX.i1053, align 8
  %1327 = load i64, i64* %RAX.i116, align 8
  store i64 %1327, i64* %RSI.i221, align 8
  %AL.i639 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i639, align 1
  %1328 = add i64 %1317, 92157
  %1329 = add i64 %1317, 26
  %1330 = load i64, i64* %6, align 8
  %1331 = add i64 %1330, -8
  %1332 = inttoptr i64 %1331 to i64*
  store i64 %1329, i64* %1332, align 8
  store i64 %1331, i64* %6, align 8
  store i64 %1328, i64* %3, align 8
  %call2_43b5c8 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1328, %struct.Memory* %call2_43b5ae)
  %1333 = load i64, i64* %RBP.i, align 8
  %1334 = add i64 %1333, -128
  %1335 = load i32, i32* %EAX.i1026, align 4
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, 3
  store i64 %1337, i64* %3, align 8
  %1338 = inttoptr i64 %1334 to i32*
  store i32 %1335, i32* %1338, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_43b5d0

block_.L_43b5d0:                                  ; preds = %block_.L_43b5aa, %block_43b5a5
  %1339 = phi i64 [ %.pre72, %block_.L_43b5aa ], [ %1306, %block_43b5a5 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_43b5c8, %block_.L_43b5aa ], [ %MEMORY.13, %block_43b5a5 ]
  %1340 = add i64 %1339, 101
  br label %block_.L_43b635

block_.L_43b5d5:                                  ; preds = %block_.L_43b4ee
  %1341 = add i64 %1086, -4
  %1342 = add i64 %1085, 3
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i32*
  %1344 = load i32, i32* %1343, align 4
  %1345 = zext i32 %1344 to i64
  store i64 %1345, i64* %RDI.i907, align 8
  %1346 = add i64 %1086, -80
  %1347 = add i64 %1085, 6
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1346 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = zext i32 %1349 to i64
  store i64 %1350, i64* %RSI.i221, align 8
  %1351 = add i64 %1086, -68
  %1352 = add i64 %1085, 9
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RDX.i1053, align 8
  %1356 = add i64 %1086, -48
  %1357 = add i64 %1085, 13
  store i64 %1357, i64* %3, align 8
  %1358 = inttoptr i64 %1356 to i64*
  %1359 = load i64, i64* %1358, align 8
  store i64 %1359, i64* %RCX.i1050, align 8
  %1360 = add i64 %1086, -16
  %1361 = add i64 %1085, 17
  store i64 %1361, i64* %3, align 8
  %1362 = inttoptr i64 %1360 to i64*
  %1363 = load i64, i64* %1362, align 8
  store i64 %1363, i64* %R8.i1048, align 8
  %1364 = add i64 %1086, -24
  %1365 = add i64 %1085, 21
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366, align 8
  store i64 %1367, i64* %R9.i1045, align 8
  %1368 = add i64 %1085, 1595
  %1369 = add i64 %1085, 26
  %1370 = load i64, i64* %6, align 8
  %1371 = add i64 %1370, -8
  %1372 = inttoptr i64 %1371 to i64*
  store i64 %1369, i64* %1372, align 8
  store i64 %1371, i64* %6, align 8
  store i64 %1368, i64* %3, align 8
  %call2_43b5ea = tail call %struct.Memory* @sub_43bc10.guess_eye_space(%struct.State* nonnull %0, i64 %1368, %struct.Memory* %call2_43b519)
  %1373 = load i64, i64* %3, align 8
  %1374 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1375 = and i32 %1374, 2
  %1376 = zext i32 %1375 to i64
  store i64 %1376, i64* %RDX.i1053, align 8
  store i8 0, i8* %14, align 1
  %1377 = tail call i32 @llvm.ctpop.i32(i32 %1375)
  %1378 = trunc i32 %1377 to i8
  %1379 = xor i8 %1378, 1
  store i8 %1379, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit113 = lshr exact i32 %1375, 1
  %1380 = trunc i32 %.lobit113 to i8
  %1381 = xor i8 %1380, 1
  store i8 %1381, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1382 = icmp eq i8 %1381, 0
  %.v151 = select i1 %1382, i64 24, i64 19
  %1383 = add i64 %1373, %.v151
  store i64 %1383, i64* %3, align 8
  br i1 %1382, label %block_.L_43b607, label %block_43b602

block_43b602:                                     ; preds = %block_.L_43b5d5
  %1384 = add i64 %1383, 46
  store i64 %1384, i64* %3, align 8
  br label %block_.L_43b630

block_.L_43b607:                                  ; preds = %block_.L_43b5d5
  %1385 = load i64, i64* %RBP.i, align 8
  %1386 = add i64 %1385, -16
  %1387 = add i64 %1383, 4
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i64*
  %1389 = load i64, i64* %1388, align 8
  store i64 %1389, i64* %RDI.i907, align 8
  %1390 = add i64 %1383, 1289
  %1391 = add i64 %1383, 9
  %1392 = load i64, i64* %6, align 8
  %1393 = add i64 %1392, -8
  %1394 = inttoptr i64 %1393 to i64*
  store i64 %1391, i64* %1394, align 8
  store i64 %1393, i64* %6, align 8
  store i64 %1390, i64* %3, align 8
  %call2_43b60b = tail call %struct.Memory* @sub_43bb10.eyevalue_to_string(%struct.State* nonnull %0, i64 %1390, %struct.Memory* %call2_43b5ea)
  %1395 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57da85_type* @G__0x57da85 to i64), i64* %RDI.i907, align 8
  %1396 = load i64, i64* %RBP.i, align 8
  %1397 = add i64 %1396, -24
  %1398 = add i64 %1395, 14
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i64*
  %1400 = load i64, i64* %1399, align 8
  store i64 %1400, i64* %RCX.i1050, align 8
  %1401 = add i64 %1395, 16
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = zext i32 %1403 to i64
  store i64 %1404, i64* %RDX.i1053, align 8
  %1405 = load i64, i64* %RAX.i116, align 8
  store i64 %1405, i64* %RSI.i221, align 8
  %AL.i592 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i592, align 1
  %1406 = add i64 %1395, 92064
  %1407 = add i64 %1395, 26
  %1408 = load i64, i64* %6, align 8
  %1409 = add i64 %1408, -8
  %1410 = inttoptr i64 %1409 to i64*
  store i64 %1407, i64* %1410, align 8
  store i64 %1409, i64* %6, align 8
  store i64 %1406, i64* %3, align 8
  %call2_43b625 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1406, %struct.Memory* %call2_43b60b)
  %1411 = load i64, i64* %RBP.i, align 8
  %1412 = add i64 %1411, -132
  %1413 = load i32, i32* %EAX.i1026, align 4
  %1414 = load i64, i64* %3, align 8
  %1415 = add i64 %1414, 6
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1412 to i32*
  store i32 %1413, i32* %1416, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_43b630

block_.L_43b630:                                  ; preds = %block_.L_43b607, %block_43b602
  %1417 = phi i64 [ %.pre73, %block_.L_43b607 ], [ %1384, %block_43b602 ]
  %MEMORY.15 = phi %struct.Memory* [ %call2_43b625, %block_.L_43b607 ], [ %call2_43b5ea, %block_43b602 ]
  %1418 = add i64 %1417, 5
  store i64 %1418, i64* %3, align 8
  br label %block_.L_43b635

block_.L_43b635:                                  ; preds = %block_.L_43b630, %block_.L_43b5d0
  %storemerge51 = phi i64 [ %1340, %block_.L_43b5d0 ], [ %1418, %block_.L_43b630 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.14, %block_.L_43b5d0 ], [ %MEMORY.15, %block_.L_43b630 ]
  %1419 = load i64, i64* %RBP.i, align 8
  %1420 = add i64 %1419, -24
  %1421 = add i64 %storemerge51, 4
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i64*
  %1423 = load i64, i64* %1422, align 8
  store i64 %1423, i64* %RAX.i116, align 8
  %1424 = add i64 %storemerge51, 7
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i32*
  %1426 = load i32, i32* %1425, align 4
  store i8 0, i8* %14, align 1
  %1427 = and i32 %1426, 255
  %1428 = tail call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  store i8 %1431, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1432 = icmp eq i32 %1426, 0
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %30, align 1
  %1434 = lshr i32 %1426, 31
  %1435 = trunc i32 %1434 to i8
  store i8 %1435, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1436 = icmp ne i8 %1435, 0
  %.v = select i1 %1436, i64 6, i64 68
  %1437 = add i64 %1424, %.v
  store i64 %1437, i64* %3, align 8
  br i1 %1436, label %block_43b642, label %block_.L_43b680

block_43b642:                                     ; preds = %block_.L_43b635
  %1438 = add i64 %1437, 4
  store i64 %1438, i64* %3, align 8
  %1439 = load i64, i64* %1422, align 8
  store i64 %1439, i64* %RAX.i116, align 8
  %1440 = add i64 %1437, 10
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i32*
  store i32 0, i32* %1441, align 4
  %1442 = load i64, i64* %3, align 8
  %1443 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1444 = and i32 %1443, 2
  %1445 = zext i32 %1444 to i64
  store i64 %1445, i64* %RCX.i1050, align 8
  store i8 0, i8* %14, align 1
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1444)
  %1447 = trunc i32 %1446 to i8
  %1448 = xor i8 %1447, 1
  store i8 %1448, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit112 = lshr exact i32 %1444, 1
  %1449 = trunc i32 %.lobit112 to i8
  %1450 = xor i8 %1449, 1
  store i8 %1450, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1451 = icmp eq i8 %1450, 0
  %.v149 = select i1 %1451, i64 24, i64 19
  %1452 = add i64 %1442, %.v149
  store i64 %1452, i64* %3, align 8
  br i1 %1451, label %block_.L_43b664, label %block_43b65f

block_43b65f:                                     ; preds = %block_43b642
  %1453 = add i64 %1452, 28
  store i64 %1453, i64* %3, align 8
  br label %block_.L_43b67b

block_.L_43b664:                                  ; preds = %block_43b642
  store i64 ptrtoint (%G__0x57daab_type* @G__0x57daab to i64), i64* %RDI.i907, align 8
  %AL.i564 = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i564, align 1
  %1454 = add i64 %1452, 91980
  %1455 = add i64 %1452, 17
  %1456 = load i64, i64* %6, align 8
  %1457 = add i64 %1456, -8
  %1458 = inttoptr i64 %1457 to i64*
  store i64 %1455, i64* %1458, align 8
  store i64 %1457, i64* %6, align 8
  store i64 %1454, i64* %3, align 8
  %call2_43b670 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1454, %struct.Memory* %MEMORY.16)
  %1459 = load i64, i64* %RBP.i, align 8
  %1460 = add i64 %1459, -136
  %1461 = load i32, i32* %EAX.i1026, align 4
  %1462 = load i64, i64* %3, align 8
  %1463 = add i64 %1462, 6
  store i64 %1463, i64* %3, align 8
  %1464 = inttoptr i64 %1460 to i32*
  store i32 %1461, i32* %1464, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_43b67b

block_.L_43b67b:                                  ; preds = %block_.L_43b664, %block_43b65f
  %1465 = phi i64 [ %.pre74, %block_.L_43b664 ], [ %1453, %block_43b65f ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_43b670, %block_.L_43b664 ], [ %MEMORY.16, %block_43b65f ]
  %1466 = add i64 %1465, 5
  store i64 %1466, i64* %3, align 8
  %.pre75 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43b680

block_.L_43b680:                                  ; preds = %block_.L_43b635, %block_.L_43b67b
  %1467 = phi i64 [ %1437, %block_.L_43b635 ], [ %1466, %block_.L_43b67b ]
  %1468 = phi i64 [ %1419, %block_.L_43b635 ], [ %.pre75, %block_.L_43b67b ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.16, %block_.L_43b635 ], [ %MEMORY.17, %block_.L_43b67b ]
  %1469 = add i64 %1468, -24
  %1470 = add i64 %1467, 4
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to i64*
  %1472 = load i64, i64* %1471, align 8
  store i64 %1472, i64* %RAX.i116, align 8
  %1473 = add i64 %1467, 7
  store i64 %1473, i64* %3, align 8
  %1474 = inttoptr i64 %1472 to i32*
  %1475 = load i32, i32* %1474, align 4
  %1476 = add i32 %1475, -1
  %1477 = icmp eq i32 %1475, 0
  %1478 = zext i1 %1477 to i8
  store i8 %1478, i8* %14, align 1
  %1479 = and i32 %1476, 255
  %1480 = tail call i32 @llvm.ctpop.i32(i32 %1479)
  %1481 = trunc i32 %1480 to i8
  %1482 = and i8 %1481, 1
  %1483 = xor i8 %1482, 1
  store i8 %1483, i8* %21, align 1
  %1484 = xor i32 %1476, %1475
  %1485 = lshr i32 %1484, 4
  %1486 = trunc i32 %1485 to i8
  %1487 = and i8 %1486, 1
  store i8 %1487, i8* %27, align 1
  %1488 = icmp eq i32 %1476, 0
  %1489 = zext i1 %1488 to i8
  store i8 %1489, i8* %30, align 1
  %1490 = lshr i32 %1476, 31
  %1491 = trunc i32 %1490 to i8
  store i8 %1491, i8* %33, align 1
  %1492 = lshr i32 %1475, 31
  %1493 = xor i32 %1490, %1492
  %1494 = add nuw nsw i32 %1493, %1492
  %1495 = icmp eq i32 %1494, 2
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %39, align 1
  %1497 = icmp ne i8 %1491, 0
  %1498 = xor i1 %1497, %1495
  %.v123 = select i1 %1498, i64 13, i64 85
  %1499 = add i64 %1467, %.v123
  store i64 %1499, i64* %3, align 8
  br i1 %1498, label %block_43b68d, label %block_.L_43b6d5

block_43b68d:                                     ; preds = %block_.L_43b680
  %1500 = add i64 %1468, -84
  %1501 = add i64 %1499, 4
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1500 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = add i32 %1503, -2
  %1505 = icmp ult i32 %1503, 2
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %14, align 1
  %1507 = and i32 %1504, 255
  %1508 = tail call i32 @llvm.ctpop.i32(i32 %1507)
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  %1511 = xor i8 %1510, 1
  store i8 %1511, i8* %21, align 1
  %1512 = xor i32 %1504, %1503
  %1513 = lshr i32 %1512, 4
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  store i8 %1515, i8* %27, align 1
  %1516 = icmp eq i32 %1504, 0
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %30, align 1
  %1518 = lshr i32 %1504, 31
  %1519 = trunc i32 %1518 to i8
  store i8 %1519, i8* %33, align 1
  %1520 = lshr i32 %1503, 31
  %1521 = xor i32 %1518, %1520
  %1522 = add nuw nsw i32 %1521, %1520
  %1523 = icmp eq i32 %1522, 2
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %39, align 1
  %1525 = icmp ne i8 %1519, 0
  %1526 = xor i1 %1525, %1523
  %.v147 = select i1 %1526, i64 72, i64 10
  %1527 = add i64 %1499, %.v147
  store i64 %1527, i64* %3, align 8
  br i1 %1526, label %block_.L_43b6d5, label %block_43b697

block_43b697:                                     ; preds = %block_43b68d
  %1528 = add i64 %1527, 4
  store i64 %1528, i64* %3, align 8
  %1529 = load i64, i64* %1471, align 8
  store i64 %1529, i64* %RAX.i116, align 8
  %1530 = add i64 %1527, 10
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1529 to i32*
  store i32 1, i32* %1531, align 4
  %1532 = load i64, i64* %3, align 8
  %1533 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1534 = and i32 %1533, 2
  %1535 = zext i32 %1534 to i64
  store i64 %1535, i64* %RCX.i1050, align 8
  store i8 0, i8* %14, align 1
  %1536 = tail call i32 @llvm.ctpop.i32(i32 %1534)
  %1537 = trunc i32 %1536 to i8
  %1538 = xor i8 %1537, 1
  store i8 %1538, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %.lobit111 = lshr exact i32 %1534, 1
  %1539 = trunc i32 %.lobit111 to i8
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1541 = icmp eq i8 %1540, 0
  %.v148 = select i1 %1541, i64 24, i64 19
  %1542 = add i64 %1532, %.v148
  store i64 %1542, i64* %3, align 8
  br i1 %1541, label %block_.L_43b6b9, label %block_43b6b4

block_43b6b4:                                     ; preds = %block_43b697
  %1543 = add i64 %1542, 28
  store i64 %1543, i64* %3, align 8
  br label %block_.L_43b6d0

block_.L_43b6b9:                                  ; preds = %block_43b697
  store i64 ptrtoint (%G__0x57dacb_type* @G__0x57dacb to i64), i64* %RDI.i907, align 8
  %AL.i = bitcast %union.anon* %40 to i8*
  store i8 0, i8* %AL.i, align 1
  %1544 = add i64 %1542, 91895
  %1545 = add i64 %1542, 17
  %1546 = load i64, i64* %6, align 8
  %1547 = add i64 %1546, -8
  %1548 = inttoptr i64 %1547 to i64*
  store i64 %1545, i64* %1548, align 8
  store i64 %1547, i64* %6, align 8
  store i64 %1544, i64* %3, align 8
  %call2_43b6c5 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1544, %struct.Memory* %MEMORY.18)
  %1549 = load i64, i64* %RBP.i, align 8
  %1550 = add i64 %1549, -140
  %1551 = load i32, i32* %EAX.i1026, align 4
  %1552 = load i64, i64* %3, align 8
  %1553 = add i64 %1552, 6
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1550 to i32*
  store i32 %1551, i32* %1554, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_43b6d0

block_.L_43b6d0:                                  ; preds = %block_.L_43b6b9, %block_43b6b4
  %1555 = phi i64 [ %.pre76, %block_.L_43b6b9 ], [ %1543, %block_43b6b4 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_43b6c5, %block_.L_43b6b9 ], [ %MEMORY.18, %block_43b6b4 ]
  %1556 = add i64 %1555, 5
  store i64 %1556, i64* %3, align 8
  %.pre77 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43b6d5

block_.L_43b6d5:                                  ; preds = %block_.L_43b680, %block_.L_43b6d0, %block_43b68d
  %1557 = phi i64 [ %1499, %block_.L_43b680 ], [ %1527, %block_43b68d ], [ %1556, %block_.L_43b6d0 ]
  %1558 = phi i64 [ %1468, %block_.L_43b680 ], [ %1468, %block_43b68d ], [ %.pre77, %block_.L_43b6d0 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.18, %block_.L_43b680 ], [ %MEMORY.18, %block_43b68d ], [ %MEMORY.19, %block_.L_43b6d0 ]
  %1559 = add i64 %1558, -32
  %1560 = add i64 %1557, 5
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i64*
  %1562 = load i64, i64* %1561, align 8
  store i8 0, i8* %14, align 1
  %1563 = trunc i64 %1562 to i32
  %1564 = and i32 %1563, 255
  %1565 = tail call i32 @llvm.ctpop.i32(i32 %1564)
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  %1568 = xor i8 %1567, 1
  store i8 %1568, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1569 = icmp eq i64 %1562, 0
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %30, align 1
  %1571 = lshr i64 %1562, 63
  %1572 = trunc i64 %1571 to i8
  store i8 %1572, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v124 = select i1 %1569, i64 639, i64 11
  %1573 = add i64 %1557, %.v124
  store i64 %1573, i64* %3, align 8
  br i1 %1569, label %block_.L_43b954, label %block_43b6e0

block_43b6e0:                                     ; preds = %block_.L_43b6d5
  %1574 = add i64 %1573, 4
  store i64 %1574, i64* %3, align 8
  %1575 = load i64, i64* %1561, align 8
  store i64 %1575, i64* %RAX.i116, align 8
  %1576 = add i64 %1573, 7
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  store i8 0, i8* %14, align 1
  %1579 = and i32 %1578, 255
  %1580 = tail call i32 @llvm.ctpop.i32(i32 %1579)
  %1581 = trunc i32 %1580 to i8
  %1582 = and i8 %1581, 1
  %1583 = xor i8 %1582, 1
  store i8 %1583, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1584 = icmp eq i32 %1578, 0
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %30, align 1
  %1586 = lshr i32 %1578, 31
  %1587 = trunc i32 %1586 to i8
  store i8 %1587, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v125 = select i1 %1584, i64 13, i64 628
  %1588 = add i64 %1573, %.v125
  store i64 %1588, i64* %3, align 8
  br i1 %1584, label %block_43b6ed, label %block_.L_43b954

block_43b6ed:                                     ; preds = %block_43b6e0
  %1589 = add i64 %1558, -16
  %1590 = add i64 %1588, 4
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1589 to i64*
  %1592 = load i64, i64* %1591, align 8
  store i64 %1592, i64* %RDI.i907, align 8
  %1593 = add i64 %1588, -1757
  %1594 = add i64 %1588, 9
  %1595 = load i64, i64* %6, align 8
  %1596 = add i64 %1595, -8
  %1597 = inttoptr i64 %1596 to i64*
  store i64 %1594, i64* %1597, align 8
  store i64 %1596, i64* %6, align 8
  store i64 %1593, i64* %3, align 8
  %call2_43b6f1 = tail call %struct.Memory* @sub_43b010.max_eyes(%struct.State* nonnull %0, i64 %1593, %struct.Memory* %MEMORY.20)
  %1598 = load i64, i64* %RBP.i, align 8
  %1599 = add i64 %1598, -24
  %1600 = load i64, i64* %3, align 8
  %1601 = add i64 %1600, 4
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1599 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RDI.i907, align 8
  %1604 = load i32, i32* %EAX.i1026, align 4
  %1605 = add i64 %1600, 6
  store i64 %1605, i64* %3, align 8
  %1606 = inttoptr i64 %1603 to i32*
  %1607 = load i32, i32* %1606, align 4
  %1608 = sub i32 %1604, %1607
  %1609 = icmp ult i32 %1604, %1607
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %14, align 1
  %1611 = and i32 %1608, 255
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = xor i32 %1607, %1604
  %1617 = xor i32 %1616, %1608
  %1618 = lshr i32 %1617, 4
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  store i8 %1620, i8* %27, align 1
  %1621 = icmp eq i32 %1608, 0
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %30, align 1
  %1623 = lshr i32 %1608, 31
  %1624 = trunc i32 %1623 to i8
  store i8 %1624, i8* %33, align 1
  %1625 = lshr i32 %1604, 31
  %1626 = lshr i32 %1607, 31
  %1627 = xor i32 %1626, %1625
  %1628 = xor i32 %1623, %1625
  %1629 = add nuw nsw i32 %1628, %1627
  %1630 = icmp eq i32 %1629, 2
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %39, align 1
  %.v134 = select i1 %1621, i64 606, i64 12
  %1632 = add i64 %1600, %.v134
  store i64 %1632, i64* %3, align 8
  br i1 %1621, label %block_.L_43b954, label %block_43b702

block_43b702:                                     ; preds = %block_43b6ed
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1634 = bitcast [32 x %union.VectorReg]* %1633 to i8*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1636 = bitcast [32 x %union.VectorReg]* %1633 to i32*
  %1637 = getelementptr inbounds i8, i8* %1634, i64 4
  %1638 = bitcast i8* %1637 to i32*
  %1639 = bitcast i64* %1635 to i32*
  %1640 = getelementptr inbounds i8, i8* %1634, i64 12
  %1641 = bitcast i8* %1640 to i32*
  %1642 = bitcast [32 x %union.VectorReg]* %1633 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1642, align 1
  %1643 = add i64 %1598, -92
  %1644 = add i64 %1632, 10
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1643 to i32*
  store i32 0, i32* %1645, align 4
  %1646 = load i64, i64* %RBP.i, align 8
  %1647 = add i64 %1646, -96
  %1648 = load i64, i64* %3, align 8
  %1649 = add i64 %1648, 7
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1647 to i32*
  store i32 0, i32* %1650, align 4
  %1651 = load i64, i64* %RBP.i, align 8
  %1652 = add i64 %1651, -100
  %1653 = load i64, i64* %3, align 8
  %1654 = add i64 %1653, 5
  store i64 %1654, i64* %3, align 8
  %1655 = bitcast [32 x %union.VectorReg]* %1633 to <2 x float>*
  %1656 = load <2 x float>, <2 x float>* %1655, align 1
  %1657 = extractelement <2 x float> %1656, i32 0
  %1658 = inttoptr i64 %1652 to float*
  store float %1657, float* %1658, align 4
  %1659 = load i64, i64* %RBP.i, align 8
  %1660 = add i64 %1659, -104
  %1661 = load i64, i64* %3, align 8
  %1662 = add i64 %1661, 7
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1660 to i32*
  store i32 21, i32* %1663, align 4
  %1664 = bitcast i8* %1637 to float*
  %1665 = bitcast i64* %1635 to float*
  %1666 = bitcast i8* %1640 to float*
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1668 = bitcast %union.VectorReg* %1667 to i8*
  %1669 = bitcast %union.VectorReg* %1667 to i32*
  %1670 = getelementptr inbounds i8, i8* %1668, i64 4
  %1671 = bitcast i8* %1670 to float*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1673 = bitcast i64* %1672 to float*
  %1674 = getelementptr inbounds i8, i8* %1668, i64 12
  %1675 = bitcast i8* %1674 to float*
  %R8B.i413 = bitcast %union.anon* %69 to i8*
  %1676 = bitcast [32 x %union.VectorReg]* %1633 to <2 x i32>*
  %1677 = bitcast i64* %1635 to <2 x i32>*
  %1678 = bitcast [32 x %union.VectorReg]* %1633 to float*
  %1679 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1633, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1680 = bitcast i64* %1635 to double*
  %1681 = bitcast %union.VectorReg* %1667 to double*
  %1682 = bitcast [32 x %union.VectorReg]* %1633 to double*
  %.pre78 = load i64, i64* %3, align 8
  %1683 = bitcast [32 x %union.VectorReg]* %1633 to <4 x i32>*
  br label %block_.L_43b71f

block_.L_43b71f:                                  ; preds = %block_.L_43b902, %block_43b702
  %1684 = phi i64 [ %.pre78, %block_43b702 ], [ %2372, %block_.L_43b902 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_43b6f1, %block_43b702 ], [ %MEMORY.28, %block_.L_43b902 ]
  %1685 = load i64, i64* %RBP.i, align 8
  %1686 = add i64 %1685, -104
  %1687 = add i64 %1684, 7
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i32*
  %1689 = load i32, i32* %1688, align 4
  %1690 = add i32 %1689, -400
  %1691 = icmp ult i32 %1689, 400
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %14, align 1
  %1693 = and i32 %1690, 255
  %1694 = tail call i32 @llvm.ctpop.i32(i32 %1693)
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = xor i8 %1696, 1
  store i8 %1697, i8* %21, align 1
  %1698 = xor i32 %1689, 16
  %1699 = xor i32 %1698, %1690
  %1700 = lshr i32 %1699, 4
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  store i8 %1702, i8* %27, align 1
  %1703 = icmp eq i32 %1690, 0
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %30, align 1
  %1705 = lshr i32 %1690, 31
  %1706 = trunc i32 %1705 to i8
  store i8 %1706, i8* %33, align 1
  %1707 = lshr i32 %1689, 31
  %1708 = xor i32 %1705, %1707
  %1709 = add nuw nsw i32 %1708, %1707
  %1710 = icmp eq i32 %1709, 2
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %39, align 1
  %1712 = icmp ne i8 %1706, 0
  %1713 = xor i1 %1712, %1710
  %.v135 = select i1 %1713, i64 13, i64 497
  %1714 = add i64 %1684, %.v135
  store i64 %1714, i64* %3, align 8
  br i1 %1713, label %block_43b72c, label %block_.L_43b910

block_43b72c:                                     ; preds = %block_.L_43b71f
  %1715 = add i64 %1714, 4
  store i64 %1715, i64* %3, align 8
  %1716 = load i32, i32* %1688, align 4
  %1717 = sext i32 %1716 to i64
  store i64 %1717, i64* %RAX.i116, align 8
  %1718 = add nsw i64 %1717, 12099168
  %1719 = add i64 %1714, 12
  store i64 %1719, i64* %3, align 8
  %1720 = inttoptr i64 %1718 to i8*
  %1721 = load i8, i8* %1720, align 1
  %1722 = zext i8 %1721 to i64
  store i64 %1722, i64* %RCX.i1050, align 8
  %1723 = zext i8 %1721 to i32
  %1724 = add nsw i32 %1723, -3
  %1725 = icmp ult i8 %1721, 3
  %1726 = zext i1 %1725 to i8
  store i8 %1726, i8* %14, align 1
  %1727 = and i32 %1724, 255
  %1728 = tail call i32 @llvm.ctpop.i32(i32 %1727)
  %1729 = trunc i32 %1728 to i8
  %1730 = and i8 %1729, 1
  %1731 = xor i8 %1730, 1
  store i8 %1731, i8* %21, align 1
  %1732 = xor i32 %1724, %1723
  %1733 = lshr i32 %1732, 4
  %1734 = trunc i32 %1733 to i8
  %1735 = and i8 %1734, 1
  store i8 %1735, i8* %27, align 1
  %1736 = icmp eq i32 %1724, 0
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %30, align 1
  %1738 = lshr i32 %1724, 31
  %1739 = trunc i32 %1738 to i8
  store i8 %1739, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v139 = select i1 %1736, i64 465, i64 21
  %1740 = add i64 %1714, %.v139
  store i64 %1740, i64* %3, align 8
  br i1 %1736, label %block_.L_43b8fd, label %block_43b741

block_43b741:                                     ; preds = %block_43b72c
  %1741 = add i64 %1685, -48
  %1742 = add i64 %1740, 4
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1741 to i64*
  %1744 = load i64, i64* %1743, align 8
  store i64 %1744, i64* %RAX.i116, align 8
  %1745 = add i64 %1740, 8
  store i64 %1745, i64* %3, align 8
  %1746 = load i32, i32* %1688, align 4
  %1747 = sext i32 %1746 to i64
  %1748 = mul nsw i64 %1747, 36
  store i64 %1748, i64* %RCX.i1050, align 8
  %1749 = lshr i64 %1748, 63
  %1750 = add i64 %1748, %1744
  store i64 %1750, i64* %RAX.i116, align 8
  %1751 = icmp ult i64 %1750, %1744
  %1752 = icmp ult i64 %1750, %1748
  %1753 = or i1 %1751, %1752
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %14, align 1
  %1755 = trunc i64 %1750 to i32
  %1756 = and i32 %1755, 255
  %1757 = tail call i32 @llvm.ctpop.i32(i32 %1756)
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  store i8 %1760, i8* %21, align 1
  %1761 = xor i64 %1748, %1744
  %1762 = xor i64 %1761, %1750
  %1763 = lshr i64 %1762, 4
  %1764 = trunc i64 %1763 to i8
  %1765 = and i8 %1764, 1
  store i8 %1765, i8* %27, align 1
  %1766 = icmp eq i64 %1750, 0
  %1767 = zext i1 %1766 to i8
  store i8 %1767, i8* %30, align 1
  %1768 = lshr i64 %1750, 63
  %1769 = trunc i64 %1768 to i8
  store i8 %1769, i8* %33, align 1
  %1770 = lshr i64 %1744, 63
  %1771 = xor i64 %1768, %1770
  %1772 = xor i64 %1768, %1749
  %1773 = add nuw nsw i64 %1771, %1772
  %1774 = icmp eq i64 %1773, 2
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %39, align 1
  %1776 = add i64 %1750, 12
  %1777 = add i64 %1740, 18
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i32*
  %1779 = load i32, i32* %1778, align 4
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RDX.i1053, align 8
  %1781 = add i64 %1685, -4
  %1782 = add i64 %1740, 21
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to i32*
  %1784 = load i32, i32* %1783, align 4
  %1785 = sub i32 %1779, %1784
  %1786 = icmp ult i32 %1779, %1784
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %14, align 1
  %1788 = and i32 %1785, 255
  %1789 = tail call i32 @llvm.ctpop.i32(i32 %1788)
  %1790 = trunc i32 %1789 to i8
  %1791 = and i8 %1790, 1
  %1792 = xor i8 %1791, 1
  store i8 %1792, i8* %21, align 1
  %1793 = xor i32 %1784, %1779
  %1794 = xor i32 %1793, %1785
  %1795 = lshr i32 %1794, 4
  %1796 = trunc i32 %1795 to i8
  %1797 = and i8 %1796, 1
  store i8 %1797, i8* %27, align 1
  %1798 = icmp eq i32 %1785, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %30, align 1
  %1800 = lshr i32 %1785, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %33, align 1
  %1802 = lshr i32 %1779, 31
  %1803 = lshr i32 %1784, 31
  %1804 = xor i32 %1803, %1802
  %1805 = xor i32 %1800, %1802
  %1806 = add nuw nsw i32 %1805, %1804
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %39, align 1
  %.v140 = select i1 %1798, i64 27, i64 444
  %1809 = add i64 %1740, %.v140
  store i64 %1809, i64* %3, align 8
  br i1 %1798, label %block_43b75c, label %block_.L_43b8fd

block_43b75c:                                     ; preds = %block_43b741
  store <4 x i32> zeroinitializer, <4 x i32>* %1683, align 1
  %1810 = load i64, i64* %RBP.i, align 8
  %1811 = add i64 %1810, -108
  %1812 = add i64 %1809, 8
  store i64 %1812, i64* %3, align 8
  %1813 = load <2 x float>, <2 x float>* %1655, align 1
  %1814 = extractelement <2 x float> %1813, i32 0
  %1815 = inttoptr i64 %1811 to float*
  store float %1814, float* %1815, align 4
  %1816 = load i64, i64* %RBP.i, align 8
  %1817 = add i64 %1816, -112
  %1818 = load i64, i64* %3, align 8
  %1819 = add i64 %1818, 7
  store i64 %1819, i64* %3, align 8
  %1820 = inttoptr i64 %1817 to i32*
  store i32 0, i32* %1820, align 4
  %1821 = load i64, i64* %RBP.i, align 8
  %1822 = add i64 %1821, -116
  %1823 = load i64, i64* %3, align 8
  %1824 = add i64 %1823, 7
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1822 to i32*
  store i32 0, i32* %1825, align 4
  %1826 = load i64, i64* %RBP.i, align 8
  %1827 = add i64 %1826, -48
  %1828 = load i64, i64* %3, align 8
  %1829 = add i64 %1828, 4
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1827 to i64*
  %1831 = load i64, i64* %1830, align 8
  store i64 %1831, i64* %RAX.i116, align 8
  %1832 = add i64 %1826, -104
  %1833 = add i64 %1828, 8
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i32*
  %1835 = load i32, i32* %1834, align 4
  %1836 = sext i32 %1835 to i64
  %1837 = mul nsw i64 %1836, 36
  store i64 %1837, i64* %RCX.i1050, align 8
  %1838 = lshr i64 %1837, 63
  %1839 = add i64 %1837, %1831
  store i64 %1839, i64* %RAX.i116, align 8
  %1840 = icmp ult i64 %1839, %1831
  %1841 = icmp ult i64 %1839, %1837
  %1842 = or i1 %1840, %1841
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %14, align 1
  %1844 = trunc i64 %1839 to i32
  %1845 = and i32 %1844, 255
  %1846 = tail call i32 @llvm.ctpop.i32(i32 %1845)
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  %1849 = xor i8 %1848, 1
  store i8 %1849, i8* %21, align 1
  %1850 = xor i64 %1837, %1831
  %1851 = xor i64 %1850, %1839
  %1852 = lshr i64 %1851, 4
  %1853 = trunc i64 %1852 to i8
  %1854 = and i8 %1853, 1
  store i8 %1854, i8* %27, align 1
  %1855 = icmp eq i64 %1839, 0
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %30, align 1
  %1857 = lshr i64 %1839, 63
  %1858 = trunc i64 %1857 to i8
  store i8 %1858, i8* %33, align 1
  %1859 = lshr i64 %1831, 63
  %1860 = xor i64 %1857, %1859
  %1861 = xor i64 %1857, %1838
  %1862 = add nuw nsw i64 %1860, %1861
  %1863 = icmp eq i64 %1862, 2
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %39, align 1
  %1865 = add i64 %1839, 28
  %1866 = add i64 %1828, 19
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i8*
  %1868 = load i8, i8* %1867, align 1
  %1869 = sext i8 %1868 to i64
  %1870 = and i64 %1869, 4294967295
  store i64 %1870, i64* %RDX.i1053, align 8
  %1871 = sext i8 %1868 to i32
  store i8 0, i8* %14, align 1
  %1872 = and i32 %1871, 255
  %1873 = tail call i32 @llvm.ctpop.i32(i32 %1872)
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  %1876 = xor i8 %1875, 1
  store i8 %1876, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1877 = icmp eq i8 %1868, 0
  %1878 = zext i1 %1877 to i8
  store i8 %1878, i8* %30, align 1
  %1879 = lshr i32 %1871, 31
  %1880 = trunc i32 %1879 to i8
  store i8 %1880, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v141 = select i1 %1877, i64 221, i64 28
  %1881 = add i64 %1828, %.v141
  store i64 %1881, i64* %3, align 8
  %.pre87 = load i64, i64* %RBP.i, align 8
  br i1 %1877, label %block_.L_43b84f, label %block_43b78e

block_43b78e:                                     ; preds = %block_43b75c
  %1882 = add i64 %.pre87, -104
  %1883 = add i64 %1881, 4
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = sext i32 %1885 to i64
  store i64 %1886, i64* %RAX.i116, align 8
  %1887 = add nsw i64 %1886, 12099168
  %1888 = add i64 %1881, 12
  store i64 %1888, i64* %3, align 8
  %1889 = inttoptr i64 %1887 to i8*
  %1890 = load i8, i8* %1889, align 1
  %1891 = zext i8 %1890 to i64
  store i64 %1891, i64* %RCX.i1050, align 8
  %1892 = zext i8 %1890 to i32
  store i8 0, i8* %14, align 1
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1897 = icmp eq i8 %1890, 0
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v142 = select i1 %1897, i64 21, i64 193
  %1899 = add i64 %1881, %.v142
  store i64 %1899, i64* %3, align 8
  br i1 %1897, label %block_43b7a3, label %block_.L_43b84f

block_43b7a3:                                     ; preds = %block_43b78e
  store i64 1, i64* %RAX.i116, align 8
  store i64 2, i64* %RCX.i1050, align 8
  %1900 = add i64 %.pre87, -48
  %1901 = add i64 %1899, 14
  store i64 %1901, i64* %3, align 8
  %1902 = inttoptr i64 %1900 to i64*
  %1903 = load i64, i64* %1902, align 8
  store i64 %1903, i64* %RDX.i1053, align 8
  %1904 = add i64 %1899, 18
  store i64 %1904, i64* %3, align 8
  %1905 = load i32, i32* %1884, align 4
  %1906 = sext i32 %1905 to i64
  %1907 = mul nsw i64 %1906, 9
  store i64 %1907, i64* %RSI.i221, align 8
  %1908 = mul nsw i64 %1906, 36
  %1909 = add i64 %1908, 30
  %1910 = add i64 %1909, %1903
  %1911 = add i64 %1899, 27
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i8*
  %1913 = load i8, i8* %1912, align 1
  %1914 = sext i8 %1913 to i64
  %1915 = and i64 %1914, 4294967295
  store i64 %1915, i64* %RDI.i907, align 8
  store i8 %1913, i8* %R8B.i413, align 1
  %1916 = load <2 x i32>, <2 x i32>* %1676, align 1
  %1917 = load <2 x i32>, <2 x i32>* %1677, align 1
  %1918 = sitofp i8 %1913 to float
  store float %1918, float* %1678, align 1
  %1919 = extractelement <2 x i32> %1916, i32 1
  store i32 %1919, i32* %1638, align 1
  %1920 = extractelement <2 x i32> %1917, i32 0
  store i32 %1920, i32* %1639, align 1
  %1921 = extractelement <2 x i32> %1917, i32 1
  store i32 %1921, i32* %1641, align 1
  %1922 = add i64 %.pre87, -108
  %1923 = add i64 %1899, 39
  store i64 %1923, i64* %3, align 8
  %1924 = load <2 x float>, <2 x float>* %1655, align 1
  %1925 = extractelement <2 x float> %1924, i32 0
  %1926 = inttoptr i64 %1922 to float*
  store float %1925, float* %1926, align 4
  %1927 = load i64, i64* %RBP.i, align 8
  %1928 = add i64 %1927, -104
  %1929 = load i64, i64* %3, align 8
  %1930 = add i64 %1929, 3
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1928 to i32*
  %1932 = load i32, i32* %1931, align 4
  %1933 = zext i32 %1932 to i64
  store i64 %1933, i64* %RDI.i907, align 8
  %1934 = add i64 %1927, -112
  %1935 = add i64 %1929, 6
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i32*
  store i32 %1932, i32* %1936, align 4
  %1937 = load i64, i64* %RBP.i, align 8
  %1938 = add i64 %1937, -104
  %1939 = load i64, i64* %3, align 8
  %1940 = add i64 %1939, 3
  store i64 %1940, i64* %3, align 8
  %1941 = inttoptr i64 %1938 to i32*
  %1942 = load i32, i32* %1941, align 4
  %1943 = zext i32 %1942 to i64
  store i64 %1943, i64* %RDI.i907, align 8
  %1944 = add i64 %1937, -116
  %1945 = add i64 %1939, 6
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1944 to i32*
  store i32 %1942, i32* %1946, align 4
  %1947 = load i64, i64* %RBP.i, align 8
  %1948 = add i64 %1947, -104
  %1949 = load i64, i64* %3, align 8
  %1950 = add i64 %1949, 3
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1948 to i32*
  %1952 = load i32, i32* %1951, align 4
  %1953 = zext i32 %1952 to i64
  store i64 %1953, i64* %RDI.i907, align 8
  %1954 = add i64 %1947, -48
  %1955 = add i64 %1949, 7
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1954 to i64*
  %1957 = load i64, i64* %1956, align 8
  store i64 %1957, i64* %RDX.i1053, align 8
  %1958 = add i64 %1947, -4
  %1959 = add i64 %1949, 11
  store i64 %1959, i64* %3, align 8
  %1960 = inttoptr i64 %1958 to i32*
  %1961 = load i32, i32* %1960, align 4
  %1962 = sext i32 %1961 to i64
  %1963 = mul nsw i64 %1962, 36
  store i64 %1963, i64* %RSI.i221, align 8
  %1964 = lshr i64 %1963, 63
  %1965 = add i64 %1963, %1957
  store i64 %1965, i64* %RDX.i1053, align 8
  %1966 = icmp ult i64 %1965, %1957
  %1967 = icmp ult i64 %1965, %1963
  %1968 = or i1 %1966, %1967
  %1969 = zext i1 %1968 to i8
  store i8 %1969, i8* %14, align 1
  %1970 = trunc i64 %1965 to i32
  %1971 = and i32 %1970, 255
  %1972 = tail call i32 @llvm.ctpop.i32(i32 %1971)
  %1973 = trunc i32 %1972 to i8
  %1974 = and i8 %1973, 1
  %1975 = xor i8 %1974, 1
  store i8 %1975, i8* %21, align 1
  %1976 = xor i64 %1963, %1957
  %1977 = xor i64 %1976, %1965
  %1978 = lshr i64 %1977, 4
  %1979 = trunc i64 %1978 to i8
  %1980 = and i8 %1979, 1
  store i8 %1980, i8* %27, align 1
  %1981 = icmp eq i64 %1965, 0
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %30, align 1
  %1983 = lshr i64 %1965, 63
  %1984 = trunc i64 %1983 to i8
  store i8 %1984, i8* %33, align 1
  %1985 = lshr i64 %1957, 63
  %1986 = xor i64 %1983, %1985
  %1987 = xor i64 %1983, %1964
  %1988 = add nuw nsw i64 %1986, %1987
  %1989 = icmp eq i64 %1988, 2
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %39, align 1
  %1991 = inttoptr i64 %1965 to i32*
  %1992 = add i64 %1949, 21
  store i64 %1992, i64* %3, align 8
  %1993 = load i32, i32* %1991, align 4
  %1994 = add i32 %1993, -4
  %1995 = icmp ult i32 %1993, 4
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %14, align 1
  %1997 = and i32 %1994, 255
  %1998 = tail call i32 @llvm.ctpop.i32(i32 %1997)
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  store i8 %2001, i8* %21, align 1
  %2002 = xor i32 %1994, %1993
  %2003 = lshr i32 %2002, 4
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %27, align 1
  %2006 = icmp eq i32 %1994, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %30, align 1
  %2008 = lshr i32 %1994, 31
  %2009 = trunc i32 %2008 to i8
  store i8 %2009, i8* %33, align 1
  %2010 = lshr i32 %1993, 31
  %2011 = xor i32 %2008, %2010
  %2012 = add nuw nsw i32 %2011, %2010
  %2013 = icmp eq i32 %2012, 2
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %39, align 1
  %2015 = load i32, i32* %ECX.i883, align 4
  %2016 = zext i32 %2015 to i64
  %2017 = load i64, i64* %RAX.i116, align 8
  %2018 = select i1 %2006, i64 %2016, i64 %2017
  %2019 = and i64 %2018, 4294967295
  store i64 %2019, i64* %RAX.i116, align 8
  %2020 = and i64 %2018, 4294967295
  store i64 %2020, i64* %RSI.i221, align 8
  %2021 = load i64, i64* %RBP.i, align 8
  %2022 = add i64 %2021, -141
  %2023 = load i8, i8* %R8B.i413, align 1
  %2024 = add i64 %1949, 33
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2022 to i8*
  store i8 %2023, i8* %2025, align 1
  %2026 = load i64, i64* %3, align 8
  %2027 = add i64 %2026, -161111
  %2028 = add i64 %2026, 5
  %2029 = load i64, i64* %6, align 8
  %2030 = add i64 %2029, -8
  %2031 = inttoptr i64 %2030 to i64*
  store i64 %2028, i64* %2031, align 8
  store i64 %2030, i64* %6, align 8
  store i64 %2027, i64* %3, align 8
  %call2_43b7f7 = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %2027, %struct.Memory* %MEMORY.21)
  %2032 = load i32, i32* %EAX.i1026, align 4
  %2033 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2034 = and i32 %2032, 255
  %2035 = tail call i32 @llvm.ctpop.i32(i32 %2034)
  %2036 = trunc i32 %2035 to i8
  %2037 = and i8 %2036, 1
  %2038 = xor i8 %2037, 1
  store i8 %2038, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2039 = icmp eq i32 %2032, 0
  %2040 = zext i1 %2039 to i8
  store i8 %2040, i8* %30, align 1
  %2041 = lshr i32 %2032, 31
  %2042 = trunc i32 %2041 to i8
  store i8 %2042, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v145 = select i1 %2039, i64 35, i64 9
  %2043 = add i64 %2033, %.v145
  store i64 %2043, i64* %3, align 8
  br i1 %2039, label %block_.L_43b81f, label %block_43b805

block_43b805:                                     ; preds = %block_43b7a3
  %2044 = add i64 %2043, ptrtoint (%G_0xa777b__rip__type* @G_0xa777b__rip_ to i64)
  %2045 = add i64 %2043, 8
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i64*
  %2047 = load i64, i64* %2046, align 8
  store i64 %2047, i64* %1679, align 1
  store double 0.000000e+00, double* %1680, align 1
  %2048 = load i64, i64* %RBP.i, align 8
  %2049 = add i64 %2048, -108
  %2050 = add i64 %2043, 13
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to float*
  %2052 = load float, float* %2051, align 4
  %2053 = fpext float %2052 to double
  %2054 = bitcast i64 %2047 to double
  %2055 = fsub double %2053, %2054
  store double %2055, double* %1681, align 1
  %.cast = bitcast i64 %2047 to <2 x i32>
  %2056 = fptrunc double %2055 to float
  store float %2056, float* %1678, align 1
  %2057 = extractelement <2 x i32> %.cast, i32 1
  store i32 %2057, i32* %1638, align 1
  store i32 0, i32* %1639, align 1
  store i32 0, i32* %1641, align 1
  %2058 = add i64 %2043, 26
  store i64 %2058, i64* %3, align 8
  %2059 = load <2 x float>, <2 x float>* %1655, align 1
  %2060 = extractelement <2 x float> %2059, i32 0
  store float %2060, float* %2051, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_43b81f

block_.L_43b81f:                                  ; preds = %block_43b805, %block_43b7a3
  %2061 = phi i64 [ %.pre85, %block_43b805 ], [ %2043, %block_43b7a3 ]
  %2062 = load i64, i64* %RBP.i, align 8
  %2063 = add i64 %2062, -104
  %2064 = add i64 %2061, 3
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i32*
  %2066 = load i32, i32* %2065, align 4
  %2067 = zext i32 %2066 to i64
  store i64 %2067, i64* %RDI.i907, align 8
  %2068 = add i64 %2061, -180623
  %2069 = add i64 %2061, 8
  %2070 = load i64, i64* %6, align 8
  %2071 = add i64 %2070, -8
  %2072 = inttoptr i64 %2071 to i64*
  store i64 %2069, i64* %2072, align 8
  store i64 %2071, i64* %6, align 8
  store i64 %2068, i64* %3, align 8
  %call2_43b822 = tail call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* nonnull %0, i64 %2068, %struct.Memory* %MEMORY.21)
  %2073 = load i32, i32* %EAX.i1026, align 4
  %2074 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2075 = and i32 %2073, 255
  %2076 = tail call i32 @llvm.ctpop.i32(i32 %2075)
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  %2079 = xor i8 %2078, 1
  store i8 %2079, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2080 = icmp eq i32 %2073, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %30, align 1
  %2082 = lshr i32 %2073, 31
  %2083 = trunc i32 %2082 to i8
  store i8 %2083, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v146 = select i1 %2080, i64 35, i64 9
  %2084 = add i64 %2074, %.v146
  store i64 %2084, i64* %3, align 8
  br i1 %2080, label %block_.L_43b84a, label %block_43b830

block_43b830:                                     ; preds = %block_.L_43b81f
  %2085 = add i64 %2084, ptrtoint (%G_0xa7800__rip__type* @G_0xa7800__rip_ to i64)
  %2086 = add i64 %2084, 8
  store i64 %2086, i64* %3, align 8
  %2087 = inttoptr i64 %2085 to i64*
  %2088 = load i64, i64* %2087, align 8
  store i64 %2088, i64* %1679, align 1
  store double 0.000000e+00, double* %1680, align 1
  %2089 = load i64, i64* %RBP.i, align 8
  %2090 = add i64 %2089, -108
  %2091 = add i64 %2084, 13
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to float*
  %2093 = load float, float* %2092, align 4
  %2094 = fpext float %2093 to double
  %2095 = bitcast i64 %2088 to double
  %2096 = fsub double %2094, %2095
  store double %2096, double* %1681, align 1
  %.cast62 = bitcast i64 %2088 to <2 x i32>
  %2097 = fptrunc double %2096 to float
  store float %2097, float* %1678, align 1
  %2098 = extractelement <2 x i32> %.cast62, i32 1
  store i32 %2098, i32* %1638, align 1
  store i32 0, i32* %1639, align 1
  store i32 0, i32* %1641, align 1
  %2099 = add i64 %2084, 26
  store i64 %2099, i64* %3, align 8
  %2100 = load <2 x float>, <2 x float>* %1655, align 1
  %2101 = extractelement <2 x float> %2100, i32 0
  store float %2101, float* %2092, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %block_.L_43b84a

block_.L_43b84a:                                  ; preds = %block_43b830, %block_.L_43b81f
  %2102 = phi i64 [ %.pre86, %block_43b830 ], [ %2084, %block_.L_43b81f ]
  %2103 = add i64 %2102, 96
  br label %block_.L_43b8aa

block_.L_43b84f:                                  ; preds = %block_43b75c, %block_43b78e
  %2104 = phi i64 [ %1899, %block_43b78e ], [ %1881, %block_43b75c ]
  %2105 = add i64 %.pre87, -56
  %2106 = add i64 %2104, 4
  store i64 %2106, i64* %3, align 8
  %2107 = inttoptr i64 %2105 to i64*
  %2108 = load i64, i64* %2107, align 8
  store i64 %2108, i64* %RDI.i907, align 8
  %2109 = add i64 %.pre87, -104
  %2110 = add i64 %2104, 7
  store i64 %2110, i64* %3, align 8
  %2111 = inttoptr i64 %2109 to i32*
  %2112 = load i32, i32* %2111, align 4
  %2113 = zext i32 %2112 to i64
  store i64 %2113, i64* %RSI.i221, align 8
  %2114 = add i64 %2104, -2079
  %2115 = add i64 %2104, 12
  %2116 = load i64, i64* %6, align 8
  %2117 = add i64 %2116, -8
  %2118 = inttoptr i64 %2117 to i64*
  store i64 %2115, i64* %2118, align 8
  store i64 %2117, i64* %6, align 8
  store i64 %2114, i64* %3, align 8
  %call2_43b856 = tail call %struct.Memory* @sub_43b030.is_halfeye(%struct.State* nonnull %0, i64 %2114, %struct.Memory* %MEMORY.21)
  %2119 = load i32, i32* %EAX.i1026, align 4
  %2120 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2121 = and i32 %2119, 255
  %2122 = tail call i32 @llvm.ctpop.i32(i32 %2121)
  %2123 = trunc i32 %2122 to i8
  %2124 = and i8 %2123, 1
  %2125 = xor i8 %2124, 1
  store i8 %2125, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2126 = icmp eq i32 %2119, 0
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %30, align 1
  %2128 = lshr i32 %2119, 31
  %2129 = trunc i32 %2128 to i8
  store i8 %2129, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v143 = select i1 %2126, i64 69, i64 9
  %2130 = add i64 %2120, %.v143
  store i64 %2130, i64* %3, align 8
  br i1 %2126, label %block_.L_43b8a0, label %block_43b864

block_43b864:                                     ; preds = %block_.L_43b84f
  %2131 = add i64 %2130, ptrtoint (%G_0xa78e0__rip__type* @G_0xa78e0__rip_ to i64)
  %2132 = add i64 %2130, 8
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2131 to i32*
  %2134 = load i32, i32* %2133, align 4
  store i32 %2134, i32* %1636, align 1
  store float 0.000000e+00, float* %1664, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1666, align 1
  %2135 = load i64, i64* %RBP.i, align 8
  %2136 = add i64 %2135, -108
  %2137 = add i64 %2130, 13
  store i64 %2137, i64* %3, align 8
  %2138 = load <2 x float>, <2 x float>* %1655, align 1
  %2139 = extractelement <2 x float> %2138, i32 0
  %2140 = inttoptr i64 %2136 to float*
  store float %2139, float* %2140, align 4
  %2141 = load i64, i64* %RBP.i, align 8
  %2142 = add i64 %2141, -56
  %2143 = load i64, i64* %3, align 8
  %2144 = add i64 %2143, 4
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2142 to i64*
  %2146 = load i64, i64* %2145, align 8
  store i64 %2146, i64* %RAX.i116, align 8
  %2147 = add i64 %2141, -104
  %2148 = add i64 %2143, 8
  store i64 %2148, i64* %3, align 8
  %2149 = inttoptr i64 %2147 to i32*
  %2150 = load i32, i32* %2149, align 4
  %2151 = sext i32 %2150 to i64
  %2152 = mul nsw i64 %2151, 48
  store i64 %2152, i64* %RCX.i1050, align 8
  %2153 = lshr i64 %2152, 63
  %2154 = add i64 %2152, %2146
  store i64 %2154, i64* %RAX.i116, align 8
  %2155 = icmp ult i64 %2154, %2146
  %2156 = icmp ult i64 %2154, %2152
  %2157 = or i1 %2155, %2156
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %14, align 1
  %2159 = trunc i64 %2154 to i32
  %2160 = and i32 %2159, 255
  %2161 = tail call i32 @llvm.ctpop.i32(i32 %2160)
  %2162 = trunc i32 %2161 to i8
  %2163 = and i8 %2162, 1
  %2164 = xor i8 %2163, 1
  store i8 %2164, i8* %21, align 1
  %2165 = xor i64 %2152, %2146
  %2166 = xor i64 %2165, %2154
  %2167 = lshr i64 %2166, 4
  %2168 = trunc i64 %2167 to i8
  %2169 = and i8 %2168, 1
  store i8 %2169, i8* %27, align 1
  %2170 = icmp eq i64 %2154, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %30, align 1
  %2172 = lshr i64 %2154, 63
  %2173 = trunc i64 %2172 to i8
  store i8 %2173, i8* %33, align 1
  %2174 = lshr i64 %2146, 63
  %2175 = xor i64 %2172, %2174
  %2176 = xor i64 %2172, %2153
  %2177 = add nuw nsw i64 %2175, %2176
  %2178 = icmp eq i64 %2177, 2
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %39, align 1
  %2180 = add i64 %2154, 32
  %2181 = add i64 %2143, 18
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i32*
  %2183 = load i32, i32* %2182, align 4
  %2184 = zext i32 %2183 to i64
  store i64 %2184, i64* %RDX.i1053, align 8
  %2185 = add i64 %2141, -116
  %2186 = add i64 %2143, 21
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i32*
  store i32 %2183, i32* %2187, align 4
  %2188 = load i64, i64* %RBP.i, align 8
  %2189 = add i64 %2188, -56
  %2190 = load i64, i64* %3, align 8
  %2191 = add i64 %2190, 4
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2189 to i64*
  %2193 = load i64, i64* %2192, align 8
  store i64 %2193, i64* %RAX.i116, align 8
  %2194 = add i64 %2188, -104
  %2195 = add i64 %2190, 8
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2194 to i32*
  %2197 = load i32, i32* %2196, align 4
  %2198 = sext i32 %2197 to i64
  %2199 = mul nsw i64 %2198, 48
  store i64 %2199, i64* %RCX.i1050, align 8
  %2200 = lshr i64 %2199, 63
  %2201 = add i64 %2199, %2193
  store i64 %2201, i64* %RAX.i116, align 8
  %2202 = icmp ult i64 %2201, %2193
  %2203 = icmp ult i64 %2201, %2199
  %2204 = or i1 %2202, %2203
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %14, align 1
  %2206 = trunc i64 %2201 to i32
  %2207 = and i32 %2206, 255
  %2208 = tail call i32 @llvm.ctpop.i32(i32 %2207)
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = xor i8 %2210, 1
  store i8 %2211, i8* %21, align 1
  %2212 = xor i64 %2199, %2193
  %2213 = xor i64 %2212, %2201
  %2214 = lshr i64 %2213, 4
  %2215 = trunc i64 %2214 to i8
  %2216 = and i8 %2215, 1
  store i8 %2216, i8* %27, align 1
  %2217 = icmp eq i64 %2201, 0
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %30, align 1
  %2219 = lshr i64 %2201, 63
  %2220 = trunc i64 %2219 to i8
  store i8 %2220, i8* %33, align 1
  %2221 = lshr i64 %2193, 63
  %2222 = xor i64 %2219, %2221
  %2223 = xor i64 %2219, %2200
  %2224 = add nuw nsw i64 %2222, %2223
  %2225 = icmp eq i64 %2224, 2
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %39, align 1
  %2227 = add i64 %2201, 12
  %2228 = add i64 %2190, 18
  store i64 %2228, i64* %3, align 8
  %2229 = inttoptr i64 %2227 to i32*
  %2230 = load i32, i32* %2229, align 4
  %2231 = zext i32 %2230 to i64
  store i64 %2231, i64* %RDX.i1053, align 8
  %2232 = add i64 %2188, -112
  %2233 = add i64 %2190, 21
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  store i32 %2230, i32* %2234, align 4
  %2235 = load i64, i64* %3, align 8
  %2236 = add i64 %2235, 15
  store i64 %2236, i64* %3, align 8
  br label %block_.L_43b8aa

block_.L_43b8a0:                                  ; preds = %block_.L_43b84f
  %2237 = add i64 %2130, 98
  %2238 = add i64 %2130, 5
  store i64 %2238, i64* %3, align 8
  br label %block_.L_43b902

block_.L_43b8aa:                                  ; preds = %block_43b864, %block_.L_43b84a
  %storemerge54 = phi i64 [ %2103, %block_.L_43b84a ], [ %2236, %block_43b864 ]
  %2239 = add i64 %storemerge54, ptrtoint (%G_0xa789e__rip__type* @G_0xa789e__rip_ to i64)
  %2240 = add i64 %storemerge54, 8
  store i64 %2240, i64* %3, align 8
  %2241 = inttoptr i64 %2239 to i32*
  %2242 = load i32, i32* %2241, align 4
  store i32 %2242, i32* %1669, align 1
  store float 0.000000e+00, float* %1671, align 1
  store float 0.000000e+00, float* %1673, align 1
  store float 0.000000e+00, float* %1675, align 1
  %2243 = load i64, i64* %RBP.i, align 8
  %2244 = add i64 %2243, -108
  %2245 = add i64 %storemerge54, 13
  store i64 %2245, i64* %3, align 8
  %2246 = inttoptr i64 %2244 to i32*
  %2247 = load i32, i32* %2246, align 4
  store i32 %2247, i32* %1636, align 1
  store float 0.000000e+00, float* %1664, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1666, align 1
  %2248 = add i64 %storemerge54, 683558
  %2249 = add i64 %storemerge54, 18
  %2250 = load i64, i64* %6, align 8
  %2251 = add i64 %2250, -8
  %2252 = inttoptr i64 %2251 to i64*
  store i64 %2249, i64* %2252, align 8
  store i64 %2251, i64* %6, align 8
  store i64 %2248, i64* %3, align 8
  %call2_43b8b7 = tail call %struct.Memory* @sub_4e26d0.gg_normalize_float2int(%struct.State* nonnull %0, i64 %2248, %struct.Memory* %MEMORY.21)
  %2253 = load i64, i64* %3, align 8
  %2254 = add i64 %2253, ptrtoint (%G_0xa788c__rip__type* @G_0xa788c__rip_ to i64)
  %2255 = add i64 %2253, 8
  store i64 %2255, i64* %3, align 8
  %2256 = inttoptr i64 %2254 to i32*
  %2257 = load i32, i32* %2256, align 4
  store i32 %2257, i32* %1669, align 1
  store float 0.000000e+00, float* %1671, align 1
  store float 0.000000e+00, float* %1673, align 1
  store float 0.000000e+00, float* %1675, align 1
  %2258 = load i64, i64* %RBP.i, align 8
  %2259 = add i64 %2258, -100
  %2260 = add i64 %2253, 13
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i32*
  %2262 = load i32, i32* %2261, align 4
  store i32 %2262, i32* %1636, align 1
  store float 0.000000e+00, float* %1664, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1666, align 1
  %2263 = add i64 %2258, -148
  %2264 = load i32, i32* %EAX.i1026, align 4
  %2265 = add i64 %2253, 19
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2263 to i32*
  store i32 %2264, i32* %2266, align 4
  %2267 = load i64, i64* %3, align 8
  %2268 = add i64 %2267, 683521
  %2269 = add i64 %2267, 5
  %2270 = load i64, i64* %6, align 8
  %2271 = add i64 %2270, -8
  %2272 = inttoptr i64 %2271 to i64*
  store i64 %2269, i64* %2272, align 8
  store i64 %2271, i64* %6, align 8
  store i64 %2268, i64* %3, align 8
  %call2_43b8cf = tail call %struct.Memory* @sub_4e26d0.gg_normalize_float2int(%struct.State* nonnull %0, i64 %2268, %struct.Memory* %call2_43b8b7)
  %2273 = load i64, i64* %RBP.i, align 8
  %2274 = add i64 %2273, -148
  %2275 = load i64, i64* %3, align 8
  %2276 = add i64 %2275, 6
  store i64 %2276, i64* %3, align 8
  %2277 = inttoptr i64 %2274 to i32*
  %2278 = load i32, i32* %2277, align 4
  %2279 = zext i32 %2278 to i64
  store i64 %2279, i64* %RCX.i1050, align 8
  %2280 = load i32, i32* %EAX.i1026, align 4
  %2281 = sub i32 %2278, %2280
  %2282 = icmp ult i32 %2278, %2280
  %2283 = zext i1 %2282 to i8
  store i8 %2283, i8* %14, align 1
  %2284 = and i32 %2281, 255
  %2285 = tail call i32 @llvm.ctpop.i32(i32 %2284)
  %2286 = trunc i32 %2285 to i8
  %2287 = and i8 %2286, 1
  %2288 = xor i8 %2287, 1
  store i8 %2288, i8* %21, align 1
  %2289 = xor i32 %2280, %2278
  %2290 = xor i32 %2289, %2281
  %2291 = lshr i32 %2290, 4
  %2292 = trunc i32 %2291 to i8
  %2293 = and i8 %2292, 1
  store i8 %2293, i8* %27, align 1
  %2294 = icmp eq i32 %2281, 0
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %30, align 1
  %2296 = lshr i32 %2281, 31
  %2297 = trunc i32 %2296 to i8
  store i8 %2297, i8* %33, align 1
  %2298 = lshr i32 %2278, 31
  %2299 = lshr i32 %2280, 31
  %2300 = xor i32 %2299, %2298
  %2301 = xor i32 %2296, %2298
  %2302 = add nuw nsw i32 %2301, %2300
  %2303 = icmp eq i32 %2302, 2
  %2304 = zext i1 %2303 to i8
  store i8 %2304, i8* %39, align 1
  %2305 = icmp ne i8 %2297, 0
  %2306 = xor i1 %2305, %2303
  %2307 = or i1 %2294, %2306
  %.v144 = select i1 %2307, i64 36, i64 14
  %2308 = add i64 %2275, %.v144
  store i64 %2308, i64* %3, align 8
  br i1 %2307, label %block_.L_43b8f8, label %block_43b8e2

block_43b8e2:                                     ; preds = %block_.L_43b8aa
  %2309 = add i64 %2273, -112
  %2310 = add i64 %2308, 3
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i32*
  %2312 = load i32, i32* %2311, align 4
  %2313 = zext i32 %2312 to i64
  store i64 %2313, i64* %RAX.i116, align 8
  %2314 = add i64 %2273, -92
  %2315 = add i64 %2308, 6
  store i64 %2315, i64* %3, align 8
  %2316 = inttoptr i64 %2314 to i32*
  store i32 %2312, i32* %2316, align 4
  %2317 = load i64, i64* %RBP.i, align 8
  %2318 = add i64 %2317, -116
  %2319 = load i64, i64* %3, align 8
  %2320 = add i64 %2319, 3
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2318 to i32*
  %2322 = load i32, i32* %2321, align 4
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RAX.i116, align 8
  %2324 = add i64 %2317, -96
  %2325 = add i64 %2319, 6
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i32*
  store i32 %2322, i32* %2326, align 4
  %2327 = load i64, i64* %RBP.i, align 8
  %2328 = add i64 %2327, -108
  %2329 = load i64, i64* %3, align 8
  %2330 = add i64 %2329, 5
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2328 to i32*
  %2332 = load i32, i32* %2331, align 4
  store i32 %2332, i32* %1636, align 1
  store float 0.000000e+00, float* %1664, align 1
  store float 0.000000e+00, float* %1665, align 1
  store float 0.000000e+00, float* %1666, align 1
  %2333 = add i64 %2327, -100
  %2334 = add i64 %2329, 10
  store i64 %2334, i64* %3, align 8
  %2335 = load <2 x float>, <2 x float>* %1655, align 1
  %2336 = extractelement <2 x float> %2335, i32 0
  %2337 = inttoptr i64 %2333 to float*
  store float %2336, float* %2337, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_43b8f8

block_.L_43b8f8:                                  ; preds = %block_43b8e2, %block_.L_43b8aa
  %2338 = phi i64 [ %.pre88, %block_43b8e2 ], [ %2308, %block_.L_43b8aa ]
  %2339 = add i64 %2338, 5
  store i64 %2339, i64* %3, align 8
  br label %block_.L_43b8fd

block_.L_43b8fd:                                  ; preds = %block_43b741, %block_.L_43b8f8, %block_43b72c
  %2340 = phi i64 [ %1740, %block_43b72c ], [ %1809, %block_43b741 ], [ %2339, %block_.L_43b8f8 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.21, %block_43b72c ], [ %MEMORY.21, %block_43b741 ], [ %call2_43b8cf, %block_.L_43b8f8 ]
  %2341 = add i64 %2340, 5
  br label %block_.L_43b902

block_.L_43b902:                                  ; preds = %block_.L_43b8fd, %block_.L_43b8a0
  %storemerge55 = phi i64 [ %2341, %block_.L_43b8fd ], [ %2237, %block_.L_43b8a0 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.27, %block_.L_43b8fd ], [ %MEMORY.21, %block_.L_43b8a0 ]
  %2342 = load i64, i64* %RBP.i, align 8
  %2343 = add i64 %2342, -104
  %2344 = add i64 %storemerge55, 3
  store i64 %2344, i64* %3, align 8
  %2345 = inttoptr i64 %2343 to i32*
  %2346 = load i32, i32* %2345, align 4
  %2347 = add i32 %2346, 1
  %2348 = zext i32 %2347 to i64
  store i64 %2348, i64* %RAX.i116, align 8
  %2349 = icmp eq i32 %2346, -1
  %2350 = icmp eq i32 %2347, 0
  %2351 = or i1 %2349, %2350
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %14, align 1
  %2353 = and i32 %2347, 255
  %2354 = tail call i32 @llvm.ctpop.i32(i32 %2353)
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  store i8 %2357, i8* %21, align 1
  %2358 = xor i32 %2347, %2346
  %2359 = lshr i32 %2358, 4
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  store i8 %2361, i8* %27, align 1
  %2362 = zext i1 %2350 to i8
  store i8 %2362, i8* %30, align 1
  %2363 = lshr i32 %2347, 31
  %2364 = trunc i32 %2363 to i8
  store i8 %2364, i8* %33, align 1
  %2365 = lshr i32 %2346, 31
  %2366 = xor i32 %2363, %2365
  %2367 = add nuw nsw i32 %2366, %2363
  %2368 = icmp eq i32 %2367, 2
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %39, align 1
  %2370 = add i64 %storemerge55, 9
  store i64 %2370, i64* %3, align 8
  store i32 %2347, i32* %2345, align 4
  %2371 = load i64, i64* %3, align 8
  %2372 = add i64 %2371, -492
  store i64 %2372, i64* %3, align 8
  br label %block_.L_43b71f

block_.L_43b910:                                  ; preds = %block_.L_43b71f
  %2373 = bitcast [32 x %union.VectorReg]* %1633 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2373, align 1
  %2374 = add i64 %1685, -100
  %2375 = add i64 %1714, 8
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to float*
  %2377 = load float, float* %2376, align 4
  %2378 = fpext float %2377 to double
  store double %2378, double* %1681, align 1
  %2379 = add i64 %1714, 12
  store i64 %2379, i64* %3, align 8
  %2380 = load double, double* %1682, align 1
  %2381 = fcmp uno double %2378, %2380
  br i1 %2381, label %2382, label %2392

; <label>:2382:                                   ; preds = %block_.L_43b910
  %2383 = fadd double %2378, %2380
  %2384 = bitcast double %2383 to i64
  %2385 = and i64 %2384, 9221120237041090560
  %2386 = icmp eq i64 %2385, 9218868437227405312
  %2387 = and i64 %2384, 2251799813685247
  %2388 = icmp ne i64 %2387, 0
  %2389 = and i1 %2386, %2388
  br i1 %2389, label %2390, label %2398

; <label>:2390:                                   ; preds = %2382
  %2391 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2379, %struct.Memory* %MEMORY.21)
  %.pre79 = load i64, i64* %3, align 8
  %.pre80 = load i8, i8* %14, align 1
  %.pre81 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:2392:                                   ; preds = %block_.L_43b910
  %2393 = fcmp ogt double %2378, %2380
  br i1 %2393, label %2398, label %2394

; <label>:2394:                                   ; preds = %2392
  %2395 = fcmp olt double %2378, %2380
  br i1 %2395, label %2398, label %2396

; <label>:2396:                                   ; preds = %2394
  %2397 = fcmp oeq double %2378, %2380
  br i1 %2397, label %2398, label %2402

; <label>:2398:                                   ; preds = %2396, %2394, %2392, %2382
  %2399 = phi i8 [ 0, %2392 ], [ 0, %2394 ], [ 1, %2396 ], [ 1, %2382 ]
  %2400 = phi i8 [ 0, %2392 ], [ 0, %2394 ], [ 0, %2396 ], [ 1, %2382 ]
  %2401 = phi i8 [ 0, %2392 ], [ 1, %2394 ], [ 0, %2396 ], [ 1, %2382 ]
  store i8 %2399, i8* %30, align 1
  store i8 %2400, i8* %21, align 1
  store i8 %2401, i8* %14, align 1
  br label %2402

; <label>:2402:                                   ; preds = %2398, %2396
  %2403 = phi i8 [ %2399, %2398 ], [ %1704, %2396 ]
  %2404 = phi i8 [ %2401, %2398 ], [ %1692, %2396 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %2402, %2390
  %2405 = phi i8 [ %.pre81, %2390 ], [ %2403, %2402 ]
  %2406 = phi i8 [ %.pre80, %2390 ], [ %2404, %2402 ]
  %2407 = phi i64 [ %.pre79, %2390 ], [ %2379, %2402 ]
  %2408 = phi %struct.Memory* [ %2391, %2390 ], [ %MEMORY.21, %2402 ]
  %2409 = or i8 %2405, %2406
  %2410 = icmp ne i8 %2409, 0
  %.v136 = select i1 %2410, i64 51, i64 6
  %2411 = add i64 %2407, %.v136
  store i64 %2411, i64* %3, align 8
  br i1 %2410, label %block_.L_43b94f, label %block_43b922

block_43b922:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %2412 = load i64, i64* %RBP.i, align 8
  %2413 = add i64 %2412, -40
  %2414 = add i64 %2411, 5
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i64*
  %2416 = load i64, i64* %2415, align 8
  store i8 0, i8* %14, align 1
  %2417 = trunc i64 %2416 to i32
  %2418 = and i32 %2417, 255
  %2419 = tail call i32 @llvm.ctpop.i32(i32 %2418)
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = xor i8 %2421, 1
  store i8 %2422, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2423 = icmp eq i64 %2416, 0
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %30, align 1
  %2425 = lshr i64 %2416, 63
  %2426 = trunc i64 %2425 to i8
  store i8 %2426, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v137 = select i1 %2423, i64 20, i64 11
  %2427 = add i64 %2411, %.v137
  store i64 %2427, i64* %3, align 8
  br i1 %2423, label %block_.L_43b936, label %block_43b92d

block_43b92d:                                     ; preds = %block_43b922
  %2428 = add i64 %2412, -96
  %2429 = add i64 %2427, 3
  store i64 %2429, i64* %3, align 8
  %2430 = inttoptr i64 %2428 to i32*
  %2431 = load i32, i32* %2430, align 4
  %2432 = zext i32 %2431 to i64
  store i64 %2432, i64* %RAX.i116, align 8
  %2433 = add i64 %2427, 7
  store i64 %2433, i64* %3, align 8
  %2434 = load i64, i64* %2415, align 8
  store i64 %2434, i64* %RCX.i1050, align 8
  %2435 = add i64 %2427, 9
  store i64 %2435, i64* %3, align 8
  %2436 = inttoptr i64 %2434 to i32*
  store i32 %2431, i32* %2436, align 4
  %.pre82 = load i64, i64* %RBP.i, align 8
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_43b936

block_.L_43b936:                                  ; preds = %block_43b92d, %block_43b922
  %2437 = phi i64 [ %.pre83, %block_43b92d ], [ %2427, %block_43b922 ]
  %2438 = phi i64 [ %.pre82, %block_43b92d ], [ %2412, %block_43b922 ]
  %2439 = add i64 %2438, -32
  %2440 = add i64 %2437, 5
  store i64 %2440, i64* %3, align 8
  %2441 = inttoptr i64 %2439 to i64*
  %2442 = load i64, i64* %2441, align 8
  store i8 0, i8* %14, align 1
  %2443 = trunc i64 %2442 to i32
  %2444 = and i32 %2443, 255
  %2445 = tail call i32 @llvm.ctpop.i32(i32 %2444)
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = xor i8 %2447, 1
  store i8 %2448, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2449 = icmp eq i64 %2442, 0
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %30, align 1
  %2451 = lshr i64 %2442, 63
  %2452 = trunc i64 %2451 to i8
  store i8 %2452, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v138 = select i1 %2449, i64 20, i64 11
  %2453 = add i64 %2437, %.v138
  store i64 %2453, i64* %3, align 8
  br i1 %2449, label %block_.L_43b94a, label %block_43b941

block_43b941:                                     ; preds = %block_.L_43b936
  %2454 = add i64 %2438, -92
  %2455 = add i64 %2453, 3
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i32*
  %2457 = load i32, i32* %2456, align 4
  %2458 = zext i32 %2457 to i64
  store i64 %2458, i64* %RAX.i116, align 8
  %2459 = add i64 %2453, 7
  store i64 %2459, i64* %3, align 8
  %2460 = load i64, i64* %2441, align 8
  store i64 %2460, i64* %RCX.i1050, align 8
  %2461 = add i64 %2453, 9
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i32*
  store i32 %2457, i32* %2462, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_43b94a

block_.L_43b94a:                                  ; preds = %block_43b941, %block_.L_43b936
  %2463 = phi i64 [ %.pre84, %block_43b941 ], [ %2453, %block_.L_43b936 ]
  %2464 = add i64 %2463, 5
  store i64 %2464, i64* %3, align 8
  br label %block_.L_43b94f

block_.L_43b94f:                                  ; preds = %block_.L_43b94a, %routine_ucomisd__xmm0___xmm1.exit
  %2465 = phi i64 [ %2464, %block_.L_43b94a ], [ %2411, %routine_ucomisd__xmm0___xmm1.exit ]
  %2466 = add i64 %2465, 5
  store i64 %2466, i64* %3, align 8
  %.pre89 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43b954

block_.L_43b954:                                  ; preds = %block_43b6e0, %block_.L_43b94f, %block_43b6ed, %block_.L_43b6d5
  %2467 = phi i64 [ %1573, %block_.L_43b6d5 ], [ %1588, %block_43b6e0 ], [ %1632, %block_43b6ed ], [ %2466, %block_.L_43b94f ]
  %2468 = phi i64 [ %1558, %block_.L_43b6d5 ], [ %1558, %block_43b6e0 ], [ %1598, %block_43b6ed ], [ %.pre89, %block_.L_43b94f ]
  %MEMORY.32 = phi %struct.Memory* [ %MEMORY.20, %block_.L_43b6d5 ], [ %MEMORY.20, %block_43b6e0 ], [ %call2_43b6f1, %block_43b6ed ], [ %2408, %block_.L_43b94f ]
  %2469 = add i64 %2468, -40
  %2470 = add i64 %2467, 5
  store i64 %2470, i64* %3, align 8
  %2471 = inttoptr i64 %2469 to i64*
  %2472 = load i64, i64* %2471, align 8
  store i8 0, i8* %14, align 1
  %2473 = trunc i64 %2472 to i32
  %2474 = and i32 %2473, 255
  %2475 = tail call i32 @llvm.ctpop.i32(i32 %2474)
  %2476 = trunc i32 %2475 to i8
  %2477 = and i8 %2476, 1
  %2478 = xor i8 %2477, 1
  store i8 %2478, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2479 = icmp eq i64 %2472, 0
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %30, align 1
  %2481 = lshr i64 %2472, 63
  %2482 = trunc i64 %2481 to i8
  store i8 %2482, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v126 = select i1 %2479, i64 198, i64 11
  %2483 = add i64 %2467, %.v126
  store i64 %2483, i64* %3, align 8
  br i1 %2479, label %block_.L_43ba1a, label %block_43b95f

block_43b95f:                                     ; preds = %block_.L_43b954
  %2484 = add i64 %2483, 4
  store i64 %2484, i64* %3, align 8
  %2485 = load i64, i64* %2471, align 8
  store i64 %2485, i64* %RAX.i116, align 8
  %2486 = add i64 %2483, 7
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  %2488 = load i32, i32* %2487, align 4
  store i8 0, i8* %14, align 1
  %2489 = and i32 %2488, 255
  %2490 = tail call i32 @llvm.ctpop.i32(i32 %2489)
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  %2493 = xor i8 %2492, 1
  store i8 %2493, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2494 = icmp eq i32 %2488, 0
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %30, align 1
  %2496 = lshr i32 %2488, 31
  %2497 = trunc i32 %2496 to i8
  store i8 %2497, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v127 = select i1 %2494, i64 187, i64 13
  %2498 = add i64 %2483, %.v127
  store i64 %2498, i64* %3, align 8
  br i1 %2494, label %block_.L_43ba1a, label %block_43b96c

block_43b96c:                                     ; preds = %block_43b95f
  %2499 = add i64 %2498, 4
  store i64 %2499, i64* %3, align 8
  %2500 = load i64, i64* %2471, align 8
  store i64 %2500, i64* %RAX.i116, align 8
  %2501 = add i64 %2498, 10
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2500 to i32*
  %2503 = load i32, i32* %2502, align 4
  %2504 = add i32 %2503, -421
  %2505 = icmp ult i32 %2503, 421
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %14, align 1
  %2507 = and i32 %2504, 255
  %2508 = tail call i32 @llvm.ctpop.i32(i32 %2507)
  %2509 = trunc i32 %2508 to i8
  %2510 = and i8 %2509, 1
  %2511 = xor i8 %2510, 1
  store i8 %2511, i8* %21, align 1
  %2512 = xor i32 %2504, %2503
  %2513 = lshr i32 %2512, 4
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  store i8 %2515, i8* %27, align 1
  %2516 = icmp eq i32 %2504, 0
  %2517 = zext i1 %2516 to i8
  store i8 %2517, i8* %30, align 1
  %2518 = lshr i32 %2504, 31
  %2519 = trunc i32 %2518 to i8
  store i8 %2519, i8* %33, align 1
  %2520 = lshr i32 %2503, 31
  %2521 = xor i32 %2518, %2520
  %2522 = add nuw nsw i32 %2521, %2520
  %2523 = icmp eq i32 %2522, 2
  %2524 = zext i1 %2523 to i8
  store i8 %2524, i8* %39, align 1
  %.v128 = select i1 %2505, i64 16, i64 45
  %2525 = add i64 %2498, %.v128
  store i64 %2525, i64* %3, align 8
  br i1 %2505, label %block_43b97c, label %block_.L_43b999

block_43b97c:                                     ; preds = %block_43b96c
  %2526 = add i64 %2525, 4
  store i64 %2526, i64* %3, align 8
  %2527 = load i64, i64* %2471, align 8
  store i64 %2527, i64* %RAX.i116, align 8
  %2528 = add i64 %2525, 7
  store i64 %2528, i64* %3, align 8
  %2529 = inttoptr i64 %2527 to i32*
  %2530 = load i32, i32* %2529, align 4
  %2531 = sext i32 %2530 to i64
  store i64 %2531, i64* %RAX.i116, align 8
  %2532 = add nsw i64 %2531, 12099168
  %2533 = add i64 %2525, 15
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i8*
  %2535 = load i8, i8* %2534, align 1
  %2536 = zext i8 %2535 to i64
  store i64 %2536, i64* %RCX.i1050, align 8
  %2537 = zext i8 %2535 to i32
  %2538 = add nsw i32 %2537, -3
  %2539 = icmp ult i8 %2535, 3
  %2540 = zext i1 %2539 to i8
  store i8 %2540, i8* %14, align 1
  %2541 = and i32 %2538, 255
  %2542 = tail call i32 @llvm.ctpop.i32(i32 %2541)
  %2543 = trunc i32 %2542 to i8
  %2544 = and i8 %2543, 1
  %2545 = xor i8 %2544, 1
  store i8 %2545, i8* %21, align 1
  %2546 = xor i32 %2538, %2537
  %2547 = lshr i32 %2546, 4
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  store i8 %2549, i8* %27, align 1
  %2550 = icmp eq i32 %2538, 0
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %30, align 1
  %2552 = lshr i32 %2538, 31
  %2553 = trunc i32 %2552 to i8
  store i8 %2553, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v133 = select i1 %2550, i64 29, i64 24
  %2554 = add i64 %2525, %.v133
  store i64 %2554, i64* %3, align 8
  br i1 %2550, label %block_.L_43b999, label %block_43b994

block_43b994:                                     ; preds = %block_43b97c
  %2555 = add i64 %2554, 129
  store i64 %2555, i64* %3, align 8
  br label %block_.L_43ba15

block_.L_43b999:                                  ; preds = %block_43b96c, %block_43b97c
  %2556 = phi i64 [ %2554, %block_43b97c ], [ %2525, %block_43b96c ]
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i907, align 8
  store i64 953, i64* %RSI.i221, align 8
  store i64 ptrtoint (%G__0x57dafd_type* @G__0x57dafd to i64), i64* %RDX.i1053, align 8
  store i64 20, i64* %RAX.i116, align 8
  %2557 = add i64 %2556, 34
  store i64 %2557, i64* %3, align 8
  %2558 = load i64, i64* %2471, align 8
  store i64 %2558, i64* %RCX.i1050, align 8
  %R8D.i152 = bitcast %union.anon* %69 to i32*
  %2559 = add i64 %2556, 37
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2558 to i32*
  %2561 = load i32, i32* %2560, align 4
  %2562 = zext i32 %2561 to i64
  store i64 %2562, i64* %R8.i1048, align 8
  %2563 = add i64 %2468, -152
  %2564 = add i64 %2556, 43
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  store i32 20, i32* %2565, align 4
  %2566 = load i32, i32* %R8D.i152, align 4
  %2567 = zext i32 %2566 to i64
  %2568 = load i64, i64* %3, align 8
  store i64 %2567, i64* %RAX.i116, align 8
  %2569 = load i64, i64* %RBP.i, align 8
  %2570 = add i64 %2569, -160
  %2571 = load i64, i64* %RDX.i1053, align 8
  %2572 = add i64 %2568, 10
  store i64 %2572, i64* %3, align 8
  %2573 = inttoptr i64 %2570 to i64*
  store i64 %2571, i64* %2573, align 8
  %2574 = load i64, i64* %3, align 8
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2576 = load i32, i32* %EAX.i1026, align 8
  %2577 = sext i32 %2576 to i64
  %2578 = lshr i64 %2577, 32
  store i64 %2578, i64* %2575, align 8
  %2579 = load i64, i64* %RBP.i, align 8
  %2580 = add i64 %2579, -152
  %2581 = add i64 %2574, 8
  store i64 %2581, i64* %3, align 8
  %2582 = inttoptr i64 %2580 to i32*
  %2583 = load i32, i32* %2582, align 4
  %2584 = zext i32 %2583 to i64
  store i64 %2584, i64* %R8.i1048, align 8
  %2585 = add i64 %2574, 11
  store i64 %2585, i64* %3, align 8
  %2586 = zext i32 %2576 to i64
  %2587 = sext i32 %2583 to i64
  %2588 = shl nuw i64 %2578, 32
  %2589 = or i64 %2588, %2586
  %2590 = sdiv i64 %2589, %2587
  %2591 = shl i64 %2590, 32
  %2592 = ashr exact i64 %2591, 32
  %2593 = icmp eq i64 %2590, %2592
  br i1 %2593, label %2596, label %2594

; <label>:2594:                                   ; preds = %block_.L_43b999
  %2595 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2585, %struct.Memory* %MEMORY.32)
  %.pre90 = load i64, i64* %RAX.i116, align 8
  %.pre91 = load i64, i64* %3, align 8
  %.pre92 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r8d.exit135

; <label>:2596:                                   ; preds = %block_.L_43b999
  %2597 = srem i64 %2589, %2587
  %2598 = and i64 %2590, 4294967295
  store i64 %2598, i64* %RAX.i116, align 8
  %2599 = and i64 %2597, 4294967295
  store i64 %2599, i64* %RDX.i1053, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__r8d.exit135

routine_idivl__r8d.exit135:                       ; preds = %2596, %2594
  %2600 = phi i64 [ %.pre92, %2594 ], [ %2579, %2596 ]
  %2601 = phi i64 [ %.pre91, %2594 ], [ %2585, %2596 ]
  %2602 = phi i64 [ %.pre90, %2594 ], [ %2598, %2596 ]
  %2603 = phi %struct.Memory* [ %2595, %2594 ], [ %MEMORY.32, %2596 ]
  %2604 = trunc i64 %2602 to i32
  %2605 = add i32 %2604, -1
  %2606 = zext i32 %2605 to i64
  store i64 %2606, i64* %RAX.i116, align 8
  %2607 = icmp eq i32 %2604, 0
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %14, align 1
  %2609 = and i32 %2605, 255
  %2610 = tail call i32 @llvm.ctpop.i32(i32 %2609)
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  %2613 = xor i8 %2612, 1
  store i8 %2613, i8* %21, align 1
  %2614 = xor i32 %2605, %2604
  %2615 = lshr i32 %2614, 4
  %2616 = trunc i32 %2615 to i8
  %2617 = and i8 %2616, 1
  store i8 %2617, i8* %27, align 1
  %2618 = icmp eq i32 %2605, 0
  %2619 = zext i1 %2618 to i8
  store i8 %2619, i8* %30, align 1
  %2620 = lshr i32 %2605, 31
  %2621 = trunc i32 %2620 to i8
  store i8 %2621, i8* %33, align 1
  %2622 = lshr i32 %2604, 31
  %2623 = xor i32 %2620, %2622
  %2624 = add nuw nsw i32 %2623, %2622
  %2625 = icmp eq i32 %2624, 2
  %2626 = zext i1 %2625 to i8
  store i8 %2626, i8* %39, align 1
  %2627 = add i64 %2600, -40
  %2628 = add i64 %2601, 7
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2627 to i64*
  %2630 = load i64, i64* %2629, align 8
  store i64 %2630, i64* %RCX.i1050, align 8
  %R9D.i126 = bitcast %union.anon* %76 to i32*
  %2631 = add i64 %2601, 10
  store i64 %2631, i64* %3, align 8
  %2632 = inttoptr i64 %2630 to i32*
  %2633 = load i32, i32* %2632, align 4
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %R9.i1045, align 8
  %2635 = add i64 %2600, -164
  %2636 = add i64 %2601, 16
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i32*
  store i32 %2605, i32* %2637, align 4
  %2638 = load i32, i32* %R9D.i126, align 4
  %2639 = zext i32 %2638 to i64
  %2640 = load i64, i64* %3, align 8
  store i64 %2639, i64* %RAX.i116, align 8
  %2641 = sext i32 %2638 to i64
  %2642 = lshr i64 %2641, 32
  store i64 %2642, i64* %2575, align 8
  %2643 = load i32, i32* %R8D.i152, align 4
  %2644 = add i64 %2640, 7
  store i64 %2644, i64* %3, align 8
  %2645 = sext i32 %2643 to i64
  %2646 = shl nuw i64 %2642, 32
  %2647 = or i64 %2646, %2639
  %2648 = sdiv i64 %2647, %2645
  %2649 = shl i64 %2648, 32
  %2650 = ashr exact i64 %2649, 32
  %2651 = icmp eq i64 %2648, %2650
  br i1 %2651, label %2654, label %2652

; <label>:2652:                                   ; preds = %routine_idivl__r8d.exit135
  %2653 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2644, %struct.Memory* %2603)
  %.pre93 = load i64, i64* %RDX.i1053, align 8
  %.pre94 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit114

; <label>:2654:                                   ; preds = %routine_idivl__r8d.exit135
  %2655 = srem i64 %2647, %2645
  %2656 = and i64 %2648, 4294967295
  store i64 %2656, i64* %RAX.i116, align 8
  %2657 = and i64 %2655, 4294967295
  store i64 %2657, i64* %RDX.i1053, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__r8d.exit114

routine_idivl__r8d.exit114:                       ; preds = %2654, %2652
  %2658 = phi i64 [ %.pre94, %2652 ], [ %2644, %2654 ]
  %2659 = phi i64 [ %.pre93, %2652 ], [ %2657, %2654 ]
  %2660 = phi %struct.Memory* [ %2653, %2652 ], [ %2603, %2654 ]
  %2661 = trunc i64 %2659 to i32
  %2662 = add i32 %2661, -1
  %2663 = zext i32 %2662 to i64
  store i64 %2663, i64* %RDX.i1053, align 8
  %2664 = icmp eq i32 %2661, 0
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %14, align 1
  %2666 = and i32 %2662, 255
  %2667 = tail call i32 @llvm.ctpop.i32(i32 %2666)
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  store i8 %2670, i8* %21, align 1
  %2671 = xor i32 %2662, %2661
  %2672 = lshr i32 %2671, 4
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  store i8 %2674, i8* %27, align 1
  %2675 = icmp eq i32 %2662, 0
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %30, align 1
  %2677 = lshr i32 %2662, 31
  %2678 = trunc i32 %2677 to i8
  store i8 %2678, i8* %33, align 1
  %2679 = lshr i32 %2661, 31
  %2680 = xor i32 %2677, %2679
  %2681 = add nuw nsw i32 %2680, %2679
  %2682 = icmp eq i32 %2681, 2
  %2683 = zext i1 %2682 to i8
  store i8 %2683, i8* %39, align 1
  %2684 = load i64, i64* %RBP.i, align 8
  %2685 = add i64 %2684, -160
  %2686 = add i64 %2658, 10
  store i64 %2686, i64* %3, align 8
  %2687 = inttoptr i64 %2685 to i64*
  %2688 = load i64, i64* %2687, align 8
  store i64 %2688, i64* %RCX.i1050, align 8
  %2689 = add i64 %2684, -168
  %2690 = add i64 %2658, 16
  store i64 %2690, i64* %3, align 8
  %2691 = inttoptr i64 %2689 to i32*
  store i32 %2662, i32* %2691, align 4
  %2692 = load i64, i64* %RCX.i1050, align 8
  %2693 = load i64, i64* %3, align 8
  store i64 %2692, i64* %RDX.i1053, align 8
  %2694 = load i64, i64* %RBP.i, align 8
  %2695 = add i64 %2694, -164
  %2696 = add i64 %2693, 9
  store i64 %2696, i64* %3, align 8
  %2697 = inttoptr i64 %2695 to i32*
  %2698 = load i32, i32* %2697, align 4
  %2699 = zext i32 %2698 to i64
  store i64 %2699, i64* %RCX.i1050, align 8
  %2700 = add i64 %2694, -168
  %2701 = add i64 %2693, 16
  store i64 %2701, i64* %3, align 8
  %2702 = inttoptr i64 %2700 to i32*
  %2703 = load i32, i32* %2702, align 4
  %2704 = zext i32 %2703 to i64
  store i64 %2704, i64* %R8.i1048, align 8
  %2705 = add i64 %2693, 91792
  %2706 = add i64 %2693, 21
  %2707 = load i64, i64* %6, align 8
  %2708 = add i64 %2707, -8
  %2709 = inttoptr i64 %2708 to i64*
  store i64 %2706, i64* %2709, align 8
  store i64 %2708, i64* %6, align 8
  store i64 %2705, i64* %3, align 8
  %call2_43ba10 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %2705, %struct.Memory* %2660)
  %.pre95 = load i64, i64* %3, align 8
  %.pre96.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_43ba15

block_.L_43ba15:                                  ; preds = %routine_idivl__r8d.exit114, %block_43b994
  %.pre96 = phi i64 [ %.pre96.pre, %routine_idivl__r8d.exit114 ], [ %2468, %block_43b994 ]
  %2710 = phi i64 [ %.pre95, %routine_idivl__r8d.exit114 ], [ %2555, %block_43b994 ]
  %MEMORY.34 = phi %struct.Memory* [ %call2_43ba10, %routine_idivl__r8d.exit114 ], [ %MEMORY.32, %block_43b994 ]
  %2711 = add i64 %2710, 5
  store i64 %2711, i64* %3, align 8
  br label %block_.L_43ba1a

block_.L_43ba1a:                                  ; preds = %block_.L_43ba15, %block_43b95f, %block_.L_43b954
  %2712 = phi i64 [ %2483, %block_.L_43b954 ], [ %2498, %block_43b95f ], [ %2711, %block_.L_43ba15 ]
  %2713 = phi i64 [ %2468, %block_.L_43b954 ], [ %2468, %block_43b95f ], [ %.pre96, %block_.L_43ba15 ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.32, %block_.L_43b954 ], [ %MEMORY.32, %block_43b95f ], [ %MEMORY.34, %block_.L_43ba15 ]
  %2714 = add i64 %2713, -32
  %2715 = add i64 %2712, 5
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2714 to i64*
  %2717 = load i64, i64* %2716, align 8
  store i8 0, i8* %14, align 1
  %2718 = trunc i64 %2717 to i32
  %2719 = and i32 %2718, 255
  %2720 = tail call i32 @llvm.ctpop.i32(i32 %2719)
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  %2723 = xor i8 %2722, 1
  store i8 %2723, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2724 = icmp eq i64 %2717, 0
  %2725 = zext i1 %2724 to i8
  store i8 %2725, i8* %30, align 1
  %2726 = lshr i64 %2717, 63
  %2727 = trunc i64 %2726 to i8
  store i8 %2727, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v129 = select i1 %2724, i64 198, i64 11
  %2728 = add i64 %2712, %.v129
  store i64 %2728, i64* %3, align 8
  br i1 %2724, label %block_.L_43bae0, label %block_43ba25

block_43ba25:                                     ; preds = %block_.L_43ba1a
  %2729 = add i64 %2728, 4
  store i64 %2729, i64* %3, align 8
  %2730 = load i64, i64* %2716, align 8
  store i64 %2730, i64* %RAX.i116, align 8
  %2731 = add i64 %2728, 7
  store i64 %2731, i64* %3, align 8
  %2732 = inttoptr i64 %2730 to i32*
  %2733 = load i32, i32* %2732, align 4
  store i8 0, i8* %14, align 1
  %2734 = and i32 %2733, 255
  %2735 = tail call i32 @llvm.ctpop.i32(i32 %2734)
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  %2738 = xor i8 %2737, 1
  store i8 %2738, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2739 = icmp eq i32 %2733, 0
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %30, align 1
  %2741 = lshr i32 %2733, 31
  %2742 = trunc i32 %2741 to i8
  store i8 %2742, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v130 = select i1 %2739, i64 187, i64 13
  %2743 = add i64 %2728, %.v130
  store i64 %2743, i64* %3, align 8
  br i1 %2739, label %block_.L_43bae0, label %block_43ba32

block_43ba32:                                     ; preds = %block_43ba25
  %2744 = add i64 %2743, 4
  store i64 %2744, i64* %3, align 8
  %2745 = load i64, i64* %2716, align 8
  store i64 %2745, i64* %RAX.i116, align 8
  %2746 = add i64 %2743, 10
  store i64 %2746, i64* %3, align 8
  %2747 = inttoptr i64 %2745 to i32*
  %2748 = load i32, i32* %2747, align 4
  %2749 = add i32 %2748, -421
  %2750 = icmp ult i32 %2748, 421
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %14, align 1
  %2752 = and i32 %2749, 255
  %2753 = tail call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  store i8 %2756, i8* %21, align 1
  %2757 = xor i32 %2749, %2748
  %2758 = lshr i32 %2757, 4
  %2759 = trunc i32 %2758 to i8
  %2760 = and i8 %2759, 1
  store i8 %2760, i8* %27, align 1
  %2761 = icmp eq i32 %2749, 0
  %2762 = zext i1 %2761 to i8
  store i8 %2762, i8* %30, align 1
  %2763 = lshr i32 %2749, 31
  %2764 = trunc i32 %2763 to i8
  store i8 %2764, i8* %33, align 1
  %2765 = lshr i32 %2748, 31
  %2766 = xor i32 %2763, %2765
  %2767 = add nuw nsw i32 %2766, %2765
  %2768 = icmp eq i32 %2767, 2
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %39, align 1
  %.v131 = select i1 %2750, i64 16, i64 45
  %2770 = add i64 %2743, %.v131
  store i64 %2770, i64* %3, align 8
  br i1 %2750, label %block_43ba42, label %block_.L_43ba5f

block_43ba42:                                     ; preds = %block_43ba32
  %2771 = add i64 %2770, 4
  store i64 %2771, i64* %3, align 8
  %2772 = load i64, i64* %2716, align 8
  store i64 %2772, i64* %RAX.i116, align 8
  %2773 = add i64 %2770, 7
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2772 to i32*
  %2775 = load i32, i32* %2774, align 4
  %2776 = sext i32 %2775 to i64
  store i64 %2776, i64* %RAX.i116, align 8
  %2777 = add nsw i64 %2776, 12099168
  %2778 = add i64 %2770, 15
  store i64 %2778, i64* %3, align 8
  %2779 = inttoptr i64 %2777 to i8*
  %2780 = load i8, i8* %2779, align 1
  %2781 = zext i8 %2780 to i64
  store i64 %2781, i64* %RCX.i1050, align 8
  %2782 = zext i8 %2780 to i32
  %2783 = add nsw i32 %2782, -3
  %2784 = icmp ult i8 %2780, 3
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %14, align 1
  %2786 = and i32 %2783, 255
  %2787 = tail call i32 @llvm.ctpop.i32(i32 %2786)
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  %2790 = xor i8 %2789, 1
  store i8 %2790, i8* %21, align 1
  %2791 = xor i32 %2783, %2782
  %2792 = lshr i32 %2791, 4
  %2793 = trunc i32 %2792 to i8
  %2794 = and i8 %2793, 1
  store i8 %2794, i8* %27, align 1
  %2795 = icmp eq i32 %2783, 0
  %2796 = zext i1 %2795 to i8
  store i8 %2796, i8* %30, align 1
  %2797 = lshr i32 %2783, 31
  %2798 = trunc i32 %2797 to i8
  store i8 %2798, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v132 = select i1 %2795, i64 29, i64 24
  %2799 = add i64 %2770, %.v132
  store i64 %2799, i64* %3, align 8
  br i1 %2795, label %block_.L_43ba5f, label %block_43ba5a

block_43ba5a:                                     ; preds = %block_43ba42
  %2800 = add i64 %2799, 129
  store i64 %2800, i64* %3, align 8
  br label %block_.L_43badb

block_.L_43ba5f:                                  ; preds = %block_43ba32, %block_43ba42
  %2801 = phi i64 [ %2799, %block_43ba42 ], [ %2770, %block_43ba32 ]
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i907, align 8
  store i64 956, i64* %RSI.i221, align 8
  store i64 ptrtoint (%G__0x57db17_type* @G__0x57db17 to i64), i64* %RDX.i1053, align 8
  store i64 20, i64* %RAX.i116, align 8
  %2802 = add i64 %2801, 34
  store i64 %2802, i64* %3, align 8
  %2803 = load i64, i64* %2716, align 8
  store i64 %2803, i64* %RCX.i1050, align 8
  %R8D.i56 = bitcast %union.anon* %69 to i32*
  %2804 = add i64 %2801, 37
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i32*
  %2806 = load i32, i32* %2805, align 4
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %R8.i1048, align 8
  %2808 = add i64 %2713, -172
  %2809 = add i64 %2801, 43
  store i64 %2809, i64* %3, align 8
  %2810 = inttoptr i64 %2808 to i32*
  store i32 20, i32* %2810, align 4
  %2811 = load i32, i32* %R8D.i56, align 4
  %2812 = zext i32 %2811 to i64
  %2813 = load i64, i64* %3, align 8
  store i64 %2812, i64* %RAX.i116, align 8
  %2814 = load i64, i64* %RBP.i, align 8
  %2815 = add i64 %2814, -184
  %2816 = load i64, i64* %RDX.i1053, align 8
  %2817 = add i64 %2813, 10
  store i64 %2817, i64* %3, align 8
  %2818 = inttoptr i64 %2815 to i64*
  store i64 %2816, i64* %2818, align 8
  %2819 = load i64, i64* %3, align 8
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2821 = load i32, i32* %EAX.i1026, align 8
  %2822 = sext i32 %2821 to i64
  %2823 = lshr i64 %2822, 32
  store i64 %2823, i64* %2820, align 8
  %2824 = load i64, i64* %RBP.i, align 8
  %2825 = add i64 %2824, -172
  %2826 = add i64 %2819, 8
  store i64 %2826, i64* %3, align 8
  %2827 = inttoptr i64 %2825 to i32*
  %2828 = load i32, i32* %2827, align 4
  %2829 = zext i32 %2828 to i64
  store i64 %2829, i64* %R8.i1048, align 8
  %2830 = add i64 %2819, 11
  store i64 %2830, i64* %3, align 8
  %2831 = zext i32 %2821 to i64
  %2832 = sext i32 %2828 to i64
  %2833 = shl nuw i64 %2823, 32
  %2834 = or i64 %2833, %2831
  %2835 = sdiv i64 %2834, %2832
  %2836 = shl i64 %2835, 32
  %2837 = ashr exact i64 %2836, 32
  %2838 = icmp eq i64 %2835, %2837
  br i1 %2838, label %2841, label %2839

; <label>:2839:                                   ; preds = %block_.L_43ba5f
  %2840 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2830, %struct.Memory* %MEMORY.35)
  %.pre97 = load i64, i64* %RAX.i116, align 8
  %.pre98 = load i64, i64* %3, align 8
  %.pre99 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r8d.exit39

; <label>:2841:                                   ; preds = %block_.L_43ba5f
  %2842 = srem i64 %2834, %2832
  %2843 = and i64 %2835, 4294967295
  store i64 %2843, i64* %RAX.i116, align 8
  %2844 = and i64 %2842, 4294967295
  store i64 %2844, i64* %RDX.i1053, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__r8d.exit39

routine_idivl__r8d.exit39:                        ; preds = %2841, %2839
  %2845 = phi i64 [ %.pre99, %2839 ], [ %2824, %2841 ]
  %2846 = phi i64 [ %.pre98, %2839 ], [ %2830, %2841 ]
  %2847 = phi i64 [ %.pre97, %2839 ], [ %2843, %2841 ]
  %2848 = phi %struct.Memory* [ %2840, %2839 ], [ %MEMORY.35, %2841 ]
  %2849 = trunc i64 %2847 to i32
  %2850 = add i32 %2849, -1
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %RAX.i116, align 8
  %2852 = icmp eq i32 %2849, 0
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %14, align 1
  %2854 = and i32 %2850, 255
  %2855 = tail call i32 @llvm.ctpop.i32(i32 %2854)
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = xor i8 %2857, 1
  store i8 %2858, i8* %21, align 1
  %2859 = xor i32 %2850, %2849
  %2860 = lshr i32 %2859, 4
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  store i8 %2862, i8* %27, align 1
  %2863 = icmp eq i32 %2850, 0
  %2864 = zext i1 %2863 to i8
  store i8 %2864, i8* %30, align 1
  %2865 = lshr i32 %2850, 31
  %2866 = trunc i32 %2865 to i8
  store i8 %2866, i8* %33, align 1
  %2867 = lshr i32 %2849, 31
  %2868 = xor i32 %2865, %2867
  %2869 = add nuw nsw i32 %2868, %2867
  %2870 = icmp eq i32 %2869, 2
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %39, align 1
  %2872 = add i64 %2845, -32
  %2873 = add i64 %2846, 7
  store i64 %2873, i64* %3, align 8
  %2874 = inttoptr i64 %2872 to i64*
  %2875 = load i64, i64* %2874, align 8
  store i64 %2875, i64* %RCX.i1050, align 8
  %R9D.i30 = bitcast %union.anon* %76 to i32*
  %2876 = add i64 %2846, 10
  store i64 %2876, i64* %3, align 8
  %2877 = inttoptr i64 %2875 to i32*
  %2878 = load i32, i32* %2877, align 4
  %2879 = zext i32 %2878 to i64
  store i64 %2879, i64* %R9.i1045, align 8
  %2880 = add i64 %2845, -188
  %2881 = add i64 %2846, 16
  store i64 %2881, i64* %3, align 8
  %2882 = inttoptr i64 %2880 to i32*
  store i32 %2850, i32* %2882, align 4
  %2883 = load i32, i32* %R9D.i30, align 4
  %2884 = zext i32 %2883 to i64
  %2885 = load i64, i64* %3, align 8
  store i64 %2884, i64* %RAX.i116, align 8
  %2886 = sext i32 %2883 to i64
  %2887 = lshr i64 %2886, 32
  store i64 %2887, i64* %2820, align 8
  %2888 = load i32, i32* %R8D.i56, align 4
  %2889 = add i64 %2885, 7
  store i64 %2889, i64* %3, align 8
  %2890 = sext i32 %2888 to i64
  %2891 = shl nuw i64 %2887, 32
  %2892 = or i64 %2891, %2884
  %2893 = sdiv i64 %2892, %2890
  %2894 = shl i64 %2893, 32
  %2895 = ashr exact i64 %2894, 32
  %2896 = icmp eq i64 %2893, %2895
  br i1 %2896, label %2899, label %2897

; <label>:2897:                                   ; preds = %routine_idivl__r8d.exit39
  %2898 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2889, %struct.Memory* %2848)
  %.pre100 = load i64, i64* %RDX.i1053, align 8
  %.pre101 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit

; <label>:2899:                                   ; preds = %routine_idivl__r8d.exit39
  %2900 = srem i64 %2892, %2890
  %2901 = and i64 %2893, 4294967295
  store i64 %2901, i64* %RAX.i116, align 8
  %2902 = and i64 %2900, 4294967295
  store i64 %2902, i64* %RDX.i1053, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %2899, %2897
  %2903 = phi i64 [ %.pre101, %2897 ], [ %2889, %2899 ]
  %2904 = phi i64 [ %.pre100, %2897 ], [ %2902, %2899 ]
  %2905 = phi %struct.Memory* [ %2898, %2897 ], [ %2848, %2899 ]
  %2906 = trunc i64 %2904 to i32
  %2907 = add i32 %2906, -1
  %2908 = zext i32 %2907 to i64
  store i64 %2908, i64* %RDX.i1053, align 8
  %2909 = icmp eq i32 %2906, 0
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %14, align 1
  %2911 = and i32 %2907, 255
  %2912 = tail call i32 @llvm.ctpop.i32(i32 %2911)
  %2913 = trunc i32 %2912 to i8
  %2914 = and i8 %2913, 1
  %2915 = xor i8 %2914, 1
  store i8 %2915, i8* %21, align 1
  %2916 = xor i32 %2907, %2906
  %2917 = lshr i32 %2916, 4
  %2918 = trunc i32 %2917 to i8
  %2919 = and i8 %2918, 1
  store i8 %2919, i8* %27, align 1
  %2920 = icmp eq i32 %2907, 0
  %2921 = zext i1 %2920 to i8
  store i8 %2921, i8* %30, align 1
  %2922 = lshr i32 %2907, 31
  %2923 = trunc i32 %2922 to i8
  store i8 %2923, i8* %33, align 1
  %2924 = lshr i32 %2906, 31
  %2925 = xor i32 %2922, %2924
  %2926 = add nuw nsw i32 %2925, %2924
  %2927 = icmp eq i32 %2926, 2
  %2928 = zext i1 %2927 to i8
  store i8 %2928, i8* %39, align 1
  %2929 = load i64, i64* %RBP.i, align 8
  %2930 = add i64 %2929, -184
  %2931 = add i64 %2903, 10
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i64*
  %2933 = load i64, i64* %2932, align 8
  store i64 %2933, i64* %RCX.i1050, align 8
  %2934 = add i64 %2929, -192
  %2935 = add i64 %2903, 16
  store i64 %2935, i64* %3, align 8
  %2936 = inttoptr i64 %2934 to i32*
  store i32 %2907, i32* %2936, align 4
  %2937 = load i64, i64* %RCX.i1050, align 8
  %2938 = load i64, i64* %3, align 8
  store i64 %2937, i64* %RDX.i1053, align 8
  %2939 = load i64, i64* %RBP.i, align 8
  %2940 = add i64 %2939, -188
  %2941 = add i64 %2938, 9
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  %2944 = zext i32 %2943 to i64
  store i64 %2944, i64* %RCX.i1050, align 8
  %2945 = add i64 %2939, -192
  %2946 = add i64 %2938, 16
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = zext i32 %2948 to i64
  store i64 %2949, i64* %R8.i1048, align 8
  %2950 = add i64 %2938, 91594
  %2951 = add i64 %2938, 21
  %2952 = load i64, i64* %6, align 8
  %2953 = add i64 %2952, -8
  %2954 = inttoptr i64 %2953 to i64*
  store i64 %2951, i64* %2954, align 8
  store i64 %2953, i64* %6, align 8
  store i64 %2950, i64* %3, align 8
  %call2_43bad6 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %2950, %struct.Memory* %2905)
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_43badb

block_.L_43badb:                                  ; preds = %routine_idivl__r8d.exit, %block_43ba5a
  %2955 = phi i64 [ %.pre102, %routine_idivl__r8d.exit ], [ %2800, %block_43ba5a ]
  %MEMORY.37 = phi %struct.Memory* [ %call2_43bad6, %routine_idivl__r8d.exit ], [ %MEMORY.35, %block_43ba5a ]
  %2956 = add i64 %2955, 5
  store i64 %2956, i64* %3, align 8
  br label %block_.L_43bae0

block_.L_43bae0:                                  ; preds = %block_.L_43badb, %block_43ba25, %block_.L_43ba1a
  %2957 = phi i64 [ %2728, %block_.L_43ba1a ], [ %2743, %block_43ba25 ], [ %2956, %block_.L_43badb ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.35, %block_.L_43ba1a ], [ %MEMORY.35, %block_43ba25 ], [ %MEMORY.37, %block_.L_43badb ]
  %2958 = load i64, i64* %6, align 8
  %2959 = add i64 %2958, 208
  store i64 %2959, i64* %6, align 8
  %2960 = icmp ugt i64 %2958, -209
  %2961 = zext i1 %2960 to i8
  store i8 %2961, i8* %14, align 1
  %2962 = trunc i64 %2959 to i32
  %2963 = and i32 %2962, 255
  %2964 = tail call i32 @llvm.ctpop.i32(i32 %2963)
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  %2967 = xor i8 %2966, 1
  store i8 %2967, i8* %21, align 1
  %2968 = xor i64 %2958, 16
  %2969 = xor i64 %2968, %2959
  %2970 = lshr i64 %2969, 4
  %2971 = trunc i64 %2970 to i8
  %2972 = and i8 %2971, 1
  store i8 %2972, i8* %27, align 1
  %2973 = icmp eq i64 %2959, 0
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %30, align 1
  %2975 = lshr i64 %2959, 63
  %2976 = trunc i64 %2975 to i8
  store i8 %2976, i8* %33, align 1
  %2977 = lshr i64 %2958, 63
  %2978 = xor i64 %2975, %2977
  %2979 = add nuw nsw i64 %2978, %2975
  %2980 = icmp eq i64 %2979, 2
  %2981 = zext i1 %2980 to i8
  store i8 %2981, i8* %39, align 1
  %2982 = add i64 %2957, 8
  store i64 %2982, i64* %3, align 8
  %2983 = add i64 %2958, 216
  %2984 = inttoptr i64 %2959 to i64*
  %2985 = load i64, i64* %2984, align 8
  store i64 %2985, i64* %RBP.i, align 8
  store i64 %2983, i64* %6, align 8
  %2986 = add i64 %2957, 9
  store i64 %2986, i64* %3, align 8
  %2987 = inttoptr i64 %2983 to i64*
  %2988 = load i64, i64* %2987, align 8
  store i64 %2988, i64* %3, align 8
  %2989 = add i64 %2958, 224
  store i64 %2989, i64* %6, align 8
  ret %struct.Memory* %MEMORY.38
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
define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 208
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
define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_jge_.L_43b44d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jge_.L_43b43a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_addl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0xc__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_je_.L_43b351(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43b42c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_43b382(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_callq_.is_halfeye(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43b3ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b3cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_0x1f__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 31
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_43b3cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b3ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b427(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_43b419(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43b422(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b314(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b43f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b2fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_addl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_subl__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_subl_MINUS0x4c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_je_.L_43b485(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_je_.L_43b49a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_andl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b4ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_callq_.print_eye(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43b4d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43b4e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b4ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x0__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.read_eye(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43b5d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_addq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x4__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_jne_.L_43b592(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x24___r8___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 36
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R8, align 8
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
define %struct.Memory* @routine_addq__r8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -4
  %9 = icmp ult i32 %7, 4
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = icmp ne i8 %9, 0
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_43b592(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43b5aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43b5d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq__0x57da5a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da5a_type* @G__0x57da5a to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
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
define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b635(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.guess_eye_space(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43b607(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43b630(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57da85___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57da85_type* @G__0x57da85 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %7, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %15, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43b680(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43b664(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43b67b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57daab___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57daab_type* @G__0x57daab to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b680(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -1
  %9 = icmp eq i32 %7, 0
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43b6d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jl_.L_43b6d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 1, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43b6b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43b6d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57dacb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dacb_type* @G__0x57dacb to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b6d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b954(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43b954(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = bitcast i64* %RDI to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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
define %struct.Memory* @routine_jge_.L_43b910(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_43b8fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_jne_.L_43b8fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b84f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43b84f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_leaq___rsi__rsi_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = mul i64 %3, 9
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl_0x1e__rdx__rsi_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 30
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i8*
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i64
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dil___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DIL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl__edi___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl__edi__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x24___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 36
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -4
  %9 = icmp ult i32 %7, 4
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r8b__MINUS0x8d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -141
  %6 = load i8, i8* %R8B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b81f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xa777b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xa777b__rip__type* @G_0xa777b__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x6c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.is_edge_vertex(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43b84a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0xa7800__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0xa7800__rip__type* @G_0xa7800__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b8aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_je_.L_43b8a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xa78e0__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xa78e0__rip__type* @G_0xa78e0__rip_ to i64)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x30___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 48
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b8a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b902(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xa789e__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xa789e__rip__type* @G_0xa789e__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x6c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -108
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gg_normalize_float2int(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xa788c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0xa788c__rip__type* @G_0xa788c__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x64__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jle_.L_43b8f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b8fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -104
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b71f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x64__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400488
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400488
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_43b94f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b936(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b94a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b94f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43b954(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43ba1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1a5____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -421
  %9 = icmp ult i32 %7, 421
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_43b999(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movslq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43b999(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43ba15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d7b6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3b9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 953, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57dafd___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dafd_type* @G__0x57dafd to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x98__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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
define %struct.Memory* @routine_movl___rcx____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = load i32, i32* %5, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
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
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
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
define %struct.Memory* @routine_jmpq_.L_43ba1a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43bae0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jae_.L_43ba5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_je_.L_43ba5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43badb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3bc___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 956, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57db17___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57db17_type* @G__0x57db17 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
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
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
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
define %struct.Memory* @routine_jmpq_.L_43bae0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -209
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
