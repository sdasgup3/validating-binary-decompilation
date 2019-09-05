; ModuleID = 'test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_400390__init_type = type <{ [26 x i8] }>
%seg_4003b0__plt_type = type <{ [32 x i8] }>
%seg_4003d0__plt_got_type = type <{ [8 x i8] }>
%seg_4003e0__text_type = type <{ [386 x i8] }>
%seg_400564__fini_type = type <{ [9 x i8] }>
%seg_400570__rodata_type = type <{ [4 x i8] }>
%seg_400574__eh_frame_hdr_type = type <{ [60 x i8] }>
%seg_4005b0__eh_frame_type = type <{ [260 x i8] }>
%seg_600e10__init_array_type = type <{ i64, i64 }>
%seg_600e20__jcr_type = type <{ [8 x i8] }>
%seg_600ff8__got_type = type <{ i64 }>
%seg_601000__got_plt_type = type <{ [24 x i8], i64 }>
%seg_601020__data_type = type <{ [16 x i8] }>
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

@switch.table = private unnamed_addr constant [4 x i32] [i32 2048, i32 3072, i32 0, i32 1024]
@DR0 = external global i64, align 8
@DR1 = external global i64, align 8
@DR2 = external global i64, align 8
@DR3 = external global i64, align 8
@DR4 = external global i64, align 8
@DR5 = external global i64, align 8
@DR6 = external global i64, align 8
@DR7 = external global i64, align 8
@gCR0 = external global %union.anon, align 1
@gCR1 = external global %union.anon, align 1
@gCR2 = external global %union.anon, align 1
@gCR3 = external global %union.anon, align 1
@gCR4 = external global %union.anon, align 1
@gCR8 = external global %union.anon, align 1
@seg_400390__init = internal constant %seg_400390__init_type <{ [26 x i8] c"H\83\EC\08H\8B\05]\0C \00H\85\C0t\05\E8+\00\00\00H\83\C4\08\C3" }>
@seg_4003b0__plt = internal constant %seg_4003b0__plt_type <{ [32 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF%R\0C \00\00\00\00\00\00\00\00\00\00\00" }>
@seg_4003d0__plt_got = internal constant %seg_4003d0__plt_got_type <{ [8 x i8] c"\FF%\22\0C \00f\90" }>
@seg_4003e0__text = internal constant %seg_4003e0__text_type <{ [386 x i8] c"f)M\FC\C3f.\0F\1F\84\00\00\00\00\00\901\EDI\89\D1^H\89\E2H\83\E4\F0PTI\C7\C0`\05@\00H\C7\C1\F0\04@\00H\C7\C7\E0\03@\00\E8\A7\FF\FF\FF\F4f\0F\1FD\00\00\B87\10`\00UH-0\10`\00H\83\F8\0EH\89\E5v\1B\B8\00\00\00\00H\85\C0t\11]\BF0\10`\00\FF\E0f\0F\1F\84\00\00\00\00\00]\C3\0F\1F@\00f.\0F\1F\84\00\00\00\00\00\BE0\10`\00UH\81\EE0\10`\00H\C1\FE\03H\89\E5H\89\F0H\C1\E8?H\01\C6H\D1\FEt\15\B8\00\00\00\00H\85\C0t\0B]\BF0\10`\00\FF\E0\0F\1F\00]\C3f\0F\1FD\00\00\80=\89\0B \00\00u\11UH\89\E5\E8n\FF\FF\FF]\C6\05v\0B \00\01\F3\C3\0F\1F@\00\BF \0E`\00H\83?\00u\05\EB\93\0F\1F\00\B8\00\00\00\00H\85\C0t\F1UH\89\E5\FF\D0]\E9z\FF\FF\FFf)M\FC\C3\0F\1FD\00\00AWAVA\89\FFAUATL\8D%\0E\09 \00UH\8D-\0E\09 \00SI\89\F6I\89\D5L)\E5H\83\EC\08H\C1\FD\03\E8o\FE\FF\FFH\85\EDt 1\DB\0F\1F\84\00\00\00\00\00L\89\EAL\89\F6D\89\FFA\FF\14\DCH\83\C3\01H9\EBu\EAH\83\C4\08[]A\5CA]A^A_\C3\90f.\0F\1F\84\00\00\00\00\00\F3\C3" }>
@seg_400564__fini = internal constant %seg_400564__fini_type <{ [9 x i8] c"H\83\EC\08H\83\C4\08\C3" }>
@seg_400570__rodata = internal constant %seg_400570__rodata_type <{ [4 x i8] c"\01\00\02\00" }>
@seg_400574__eh_frame_hdr = internal constant %seg_400574__eh_frame_hdr_type <{ [60 x i8] c"\01\1B\03;8\00\00\00\06\00\00\00<\FE\FF\FF\84\00\00\00l\FE\FF\FF\C4\00\00\00|\FE\FF\FFT\00\00\00r\FF\FF\FF\AC\00\00\00|\FF\FF\FF\DC\00\00\00\EC\FF\FF\FF$\01\00\00" }>
@seg_4005b0__eh_frame = internal constant %seg_4005b0__eh_frame_type <{ [260 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\14\00\00\00\1C\00\00\00 \FE\FF\FF*\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00$\00\00\00\1C\00\00\00\B0\FD\FF\FF \00\00\00\00\0E\10F\0E\18J\0F\0Bw\08\80\00?\1A;*3$\22\00\00\00\00\14\00\00\00D\00\00\00\BE\FE\FF\FF\05\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\5C\00\00\00\A0\FD\FF\FF\05\00\00\00\00\00\00\00\00\00\00\00D\00\00\00t\00\00\00\98\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\14\00\00\00\BC\00\00\00\C0\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
@seg_600e10__init_array = internal global %seg_600e10__init_array_type <{ i64 ptrtoint (void ()* @callback_sub_4004c0_frame_dummy to i64), i64 ptrtoint (void ()* @callback_sub_4004a0___do_global_dtors_aux to i64) }>
@seg_600e20__jcr = internal global %seg_600e20__jcr_type zeroinitializer
@seg_600ff8__got = internal global %seg_600ff8__got_type <{ i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_601000__got_plt = internal global %seg_601000__got_plt_type <{ [24 x i8] zeroinitializer, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64) }>
@seg_601020__data = internal global %seg_601020__data_type zeroinitializer
@__bss_start = global %__bss_start_type zeroinitializer
@0 = internal global i1 false
@1 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004c0_frame_dummy_wrapper
@2 = internal constant void ()* @__mcsema_attach_call
@3 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004a0___do_global_dtors_aux_wrapper
@4 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_400560___libc_csu_fini_wrapper
@5 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @callback_sub_4004f0___libc_csu_init_wrapper
@6 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @main_wrapper
@7 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.term_proc_wrapper
@8 = internal constant %struct.Memory* (%struct.State*, i64, %struct.Memory*)* @.init_proc_wrapper
@llvm.global_dtors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

declare %struct.Memory* @__remill_sync_hyper_call(%struct.State* dereferenceable(3376), %struct.Memory*, i32) #0

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i8 @__remill_read_memory_8(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_8(%struct.Memory*, i64, i8 zeroext) #2

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i16 @__remill_read_memory_16(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_16(%struct.Memory*, i64, i16 zeroext) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i32 @__remill_read_memory_32(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_32(%struct.Memory*, i64, i32) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i64 @__remill_read_memory_64(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_64(%struct.Memory*, i64, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare float @__remill_read_memory_f32(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_read_memory_f64(%struct.Memory*, i64) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i8 @__remill_undefined_8() #2

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #4

; Function Attrs: nounwind readnone
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.cttz.i32(i32, i1) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.cttz.i64(i64, i1) #3

; Function Attrs: nounwind readnone
declare i32 @llvm.ctlz.i32(i32, i1) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.ctlz.i64(i64, i1) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind readnone
declare double @llvm.nearbyint.f64(double) #3

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.nearbyint.v4f64(<4 x double>) #3

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #3

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #3

; Function Attrs: nounwind readnone
declare <4 x double> @llvm.trunc.v4f64(<4 x double>) #3

; Function Attrs: nounwind readnone
declare float @llvm.nearbyint.f32(float) #3

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.nearbyint.v4f32(<4 x float>) #3

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #3

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #3

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.trunc.v4f32(<4 x float>) #3

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f32(%struct.Memory*, i64, float) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f64(%struct.Memory*, i64, double) #2

; Function Attrs: nounwind readnone
declare zeroext i8 @__remill_read_io_port_8(%struct.Memory*, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare zeroext i16 @__remill_read_io_port_16(%struct.Memory*, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i32 @__remill_read_io_port_32(%struct.Memory*, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare %struct.Memory* @__remill_write_io_port_8(%struct.Memory*, i64, i8 zeroext) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare %struct.Memory* @__remill_write_io_port_16(%struct.Memory*, i64, i16 zeroext) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare %struct.Memory* @__remill_write_io_port_32(%struct.Memory*, i64, i32) local_unnamed_addr #5

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_store_load(%struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_store_store(%struct.Memory*) #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_load_load(%struct.Memory*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i64 @__remill_undefined_64() #2

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_undefined_f64() #2

declare %struct.Memory* @__remill_compare_exchange_memory_8(%struct.Memory*, i64, i8* dereferenceable(1), i8 zeroext) #0

declare %struct.Memory* @__remill_compare_exchange_memory_16(%struct.Memory*, i64, i16* dereferenceable(2), i16 zeroext) #0

declare %struct.Memory* @__remill_compare_exchange_memory_32(%struct.Memory*, i64, i32* dereferenceable(4), i32) #0

declare %struct.Memory* @__remill_compare_exchange_memory_64(%struct.Memory*, i64, i64* dereferenceable(8), i64) #0

declare %struct.Memory* @__remill_compare_exchange_memory_128(%struct.Memory*, i64, i128* dereferenceable(16), i128* dereferenceable(16)) local_unnamed_addr #0

declare %struct.Memory* @__remill_fetch_and_add_8(%struct.Memory*, i64, i8* dereferenceable(1)) #0

declare %struct.Memory* @__remill_fetch_and_add_16(%struct.Memory*, i64, i16* dereferenceable(2)) #0

declare %struct.Memory* @__remill_fetch_and_add_32(%struct.Memory*, i64, i32* dereferenceable(4)) #0

declare %struct.Memory* @__remill_fetch_and_add_64(%struct.Memory*, i64, i64* dereferenceable(8)) #0

; Function Attrs: nounwind readnone
declare float @sqrtf(float) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @sqrt(double) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @fesetround(i32) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @fegetround() local_unnamed_addr #7

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare double @__remill_read_memory_f80(%struct.Memory*, i64) #2

; Function Attrs: nounwind
declare i32 @fetestexcept(i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @feraiseexcept(i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @feclearexcept(i32) local_unnamed_addr #6

; Function Attrs: nounwind readnone
declare i32 @__remill_fpu_exception_test_and_clear(i32, i32) #5

; Function Attrs: nounwind readnone
declare double @cos(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @sin(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @tan(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @atan(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @exp2(double) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare double @remainder(double, double) local_unnamed_addr #5

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_write_memory_f80(%struct.Memory*, i64, double) #2

; Function Attrs: nounwind readnone
declare double @log2(double) local_unnamed_addr #5

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_barrier_load_store(%struct.Memory*) #8

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_atomic_begin(%struct.Memory*) #8

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare %struct.Memory* @__remill_atomic_end(%struct.Memory*) #8

declare %struct.Memory* @__remill_fetch_and_sub_8(%struct.Memory*, i64, i8* dereferenceable(1)) #9

declare %struct.Memory* @__remill_fetch_and_sub_16(%struct.Memory*, i64, i16* dereferenceable(2)) #9

declare %struct.Memory* @__remill_fetch_and_sub_32(%struct.Memory*, i64, i32* dereferenceable(4)) #9

declare %struct.Memory* @__remill_fetch_and_sub_64(%struct.Memory*, i64, i64* dereferenceable(8)) #9

declare %struct.Memory* @__remill_fetch_and_or_8(%struct.Memory*, i64, i8* dereferenceable(1)) #9

declare %struct.Memory* @__remill_fetch_and_or_16(%struct.Memory*, i64, i16* dereferenceable(2)) #9

declare %struct.Memory* @__remill_fetch_and_or_32(%struct.Memory*, i64, i32* dereferenceable(4)) #9

declare %struct.Memory* @__remill_fetch_and_or_64(%struct.Memory*, i64, i64* dereferenceable(8)) #9

declare %struct.Memory* @__remill_fetch_and_and_8(%struct.Memory*, i64, i8* dereferenceable(1)) #9

declare %struct.Memory* @__remill_fetch_and_and_16(%struct.Memory*, i64, i16* dereferenceable(2)) #9

declare %struct.Memory* @__remill_fetch_and_and_32(%struct.Memory*, i64, i32* dereferenceable(4)) #9

declare %struct.Memory* @__remill_fetch_and_and_64(%struct.Memory*, i64, i64* dereferenceable(8)) #9

declare %struct.Memory* @__remill_fetch_and_xor_8(%struct.Memory*, i64, i8* dereferenceable(1)) #9

declare %struct.Memory* @__remill_fetch_and_xor_16(%struct.Memory*, i64, i16* dereferenceable(2)) #9

declare %struct.Memory* @__remill_fetch_and_xor_32(%struct.Memory*, i64, i32* dereferenceable(4)) #9

declare %struct.Memory* @__remill_fetch_and_xor_64(%struct.Memory*, i64, i64* dereferenceable(8)) #9

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_function_return(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_jump(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_missing_block(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone
declare %struct.Memory* @__remill_async_hyper_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) #10

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare zeroext i16 @__remill_undefined_16() #8

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare i32 @__remill_undefined_32() #8

; Function Attrs: noduplicate noinline nounwind optnone readnone
declare float @__remill_undefined_f32() #8

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #11

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #11

; Function Attrs: noinline
define %struct.Memory* @sub_400564__term_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_400564:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RSP
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sub i64 %9, 8
  store i64 %12, i64* %RSP, align 8, !tbaa !1256
  %13 = icmp ult i64 %9, 8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1, !tbaa !1260
  %16 = trunc i64 %12 to i32
  %17 = and i32 %16, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17) #14
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1, !tbaa !1274
  %23 = xor i64 8, %9
  %24 = xor i64 %23, %12
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !1275
  %29 = icmp eq i64 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !1276
  %32 = lshr i64 %12, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !1277
  %35 = lshr i64 %9, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !1278
  %41 = load i64, i64* %RSP
  %42 = load i64, i64* %PC
  %43 = add i64 %42, 4
  store i64 %43, i64* %PC
  %44 = add i64 8, %41
  store i64 %44, i64* %RSP, align 8, !tbaa !1256
  %45 = icmp ult i64 %44, %41
  %46 = icmp ult i64 %44, 8
  %47 = or i1 %45, %46
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %48, i8* %49, align 1, !tbaa !1260
  %50 = trunc i64 %44 to i32
  %51 = and i32 %50, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51) #14
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  %55 = xor i8 %54, 1
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %55, i8* %56, align 1, !tbaa !1274
  %57 = xor i64 8, %41
  %58 = xor i64 %57, %44
  %59 = lshr i64 %58, 4
  %60 = trunc i64 %59 to i8
  %61 = and i8 %60, 1
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %61, i8* %62, align 1, !tbaa !1275
  %63 = icmp eq i64 %44, 0
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %64, i8* %65, align 1, !tbaa !1276
  %66 = lshr i64 %44, 63
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %67, i8* %68, align 1, !tbaa !1277
  %69 = lshr i64 %41, 63
  %70 = xor i64 %66, %69
  %71 = add nuw nsw i64 %70, %66
  %72 = icmp eq i64 %71, 2
  %73 = zext i1 %72 to i8
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %73, i8* %74, align 1, !tbaa !1278
  %75 = load i64, i64* %PC
  %76 = add i64 %75, 1
  store i64 %76, i64* %PC
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %79 = load i64, i64* %78, align 8, !tbaa !1256
  %80 = inttoptr i64 %79 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %77, align 8, !tbaa !1256
  %82 = add i64 %79, 8
  store i64 %82, i64* %78, align 8, !tbaa !1256
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_400560___libc_csu_fini(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_400560:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %9, align 8, !tbaa !1256
  %11 = inttoptr i64 %10 to i64*
  %12 = load i64, i64* %11
  store i64 %12, i64* %8, align 8, !tbaa !1256
  %13 = add i64 %10, 8
  store i64 %13, i64* %9, align 8, !tbaa !1256
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4003f0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_4003f0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBP = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RDX = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RSI = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 11
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RDI = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 13
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RSP = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 15
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RBP = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 17
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %R8 = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 19
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %R9 = bitcast %union.anon* %35 to i64*
  %36 = load i64, i64* %RBP
  %37 = load i32, i32* %EBP
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %PC
  %40 = add i64 %39, 2
  store i64 %40, i64* %PC
  %41 = xor i64 %38, %36
  %42 = trunc i64 %41 to i32
  %43 = and i64 %41, 4294967295
  store i64 %43, i64* %RBP, align 8, !tbaa !1256
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %44, align 1, !tbaa !1260
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45) #14
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %49, i8* %50, align 1, !tbaa !1274
  %51 = icmp eq i32 %42, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1, !tbaa !1276
  %54 = lshr i32 %42, 31
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1, !tbaa !1277
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %57, align 1, !tbaa !1278
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %58, align 1, !tbaa !1275
  %59 = load i64, i64* %RDX
  %60 = load i64, i64* %PC
  %61 = add i64 %60, 3
  store i64 %61, i64* %PC
  store i64 %59, i64* %R9, align 8, !tbaa !1256
  %62 = load i64, i64* %PC
  %63 = add i64 %62, 1
  store i64 %63, i64* %PC
  %64 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %65 = load i64, i64* %64, align 8, !tbaa !1256
  %66 = add i64 %65, 8
  %67 = inttoptr i64 %65 to i64*
  %68 = load i64, i64* %67
  store i64 %68, i64* %RSI, align 8, !tbaa !1256
  store i64 %66, i64* %64, align 8, !tbaa !1256
  %69 = load i64, i64* %RSP
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 3
  store i64 %71, i64* %PC
  store i64 %69, i64* %RDX, align 8, !tbaa !1256
  %72 = load i64, i64* %RSP
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 4
  store i64 %74, i64* %PC
  %75 = and i64 -16, %72
  store i64 %75, i64* %RSP, align 8, !tbaa !1256
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %76, align 1, !tbaa !1260
  %77 = trunc i64 %75 to i32
  %78 = and i32 %77, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78) #14
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %82, i8* %83, align 1, !tbaa !1274
  %84 = icmp eq i64 %75, 0
  %85 = zext i1 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %85, i8* %86, align 1, !tbaa !1276
  %87 = lshr i64 %75, 63
  %88 = trunc i64 %87 to i8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %88, i8* %89, align 1, !tbaa !1277
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %90, align 1, !tbaa !1278
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %91, align 1, !tbaa !1275
  %92 = load i64, i64* %RAX
  %93 = load i64, i64* %PC
  %94 = add i64 %93, 1
  store i64 %94, i64* %PC
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %96 = load i64, i64* %95, align 8, !tbaa !1256
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %92, i64* %98
  store i64 %97, i64* %95, align 8, !tbaa !1256
  %99 = load i64, i64* %RSP
  %100 = load i64, i64* %PC
  %101 = add i64 %100, 1
  store i64 %101, i64* %PC
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %103 = load i64, i64* %102, align 8, !tbaa !1256
  %104 = add i64 %103, -8
  %105 = inttoptr i64 %104 to i64*
  store i64 %99, i64* %105
  store i64 %104, i64* %102, align 8, !tbaa !1256
  %106 = load i64, i64* %PC
  %107 = add i64 %106, 7
  store i64 %107, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_400560___libc_csu_fini to i64), i64* %R8, align 8, !tbaa !1256
  %108 = load i64, i64* %PC
  %109 = add i64 %108, 7
  store i64 %109, i64* %PC
  store i64 ptrtoint (void ()* @callback_sub_4004f0___libc_csu_init to i64), i64* %RCX, align 8, !tbaa !1256
  %110 = load i64, i64* %PC
  %111 = add i64 %110, 7
  store i64 %111, i64* %PC
  store i64 ptrtoint (void ()* @main to i64), i64* %RDI, align 8, !tbaa !1256
  %112 = load i64, i64* %PC
  %113 = sub i64 %112, 84
  %114 = load i64, i64* %PC
  %115 = add i64 %114, 5
  %116 = load i64, i64* %PC
  %117 = add i64 %116, 5
  store i64 %117, i64* %PC
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %119 = load i64, i64* %118, align 8, !tbaa !1256
  %120 = add i64 %119, -8
  %121 = inttoptr i64 %120 to i64*
  store i64 %115, i64* %121
  store i64 %120, i64* %118, align 8, !tbaa !1256
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %113, i64* %122, align 8, !tbaa !1256
  %123 = load i64, i64* %PC
  %124 = call %struct.Memory* @ext_601040___libc_start_main(%struct.State* %0, i64 %123, %struct.Memory* %2)
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 1
  store i64 %126, i64* %PC
  %127 = load i64, i64* %PC
  %128 = tail call %struct.Memory* @__remill_error(%struct.State* %0, i64 %127, %struct.Memory* %124)
  ret %struct.Memory* %128
}

; Function Attrs: noinline
define %struct.Memory* @sub_400460_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_400460:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EAX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RAX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 9
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RSI = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RDI = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 13
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RSP = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 15
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RBP = bitcast %union.anon* %26 to i64*
  %27 = load i64, i64* %PC
  %28 = add i64 %27, 5
  store i64 %28, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RSI, align 8, !tbaa !1256
  %29 = load i64, i64* %RBP
  %30 = load i64, i64* %PC
  %31 = add i64 %30, 1
  store i64 %31, i64* %PC
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !tbaa !1256
  %34 = add i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  store i64 %29, i64* %35
  store i64 %34, i64* %32, align 8, !tbaa !1256
  %36 = load i64, i64* %RSI
  %37 = load i64, i64* %PC
  %38 = add i64 %37, 7
  store i64 %38, i64* %PC
  %39 = sub i64 %36, ptrtoint (%__bss_start_type* @__bss_start to i64)
  store i64 %39, i64* %RSI, align 8, !tbaa !1256
  %40 = icmp ult i64 %36, ptrtoint (%__bss_start_type* @__bss_start to i64)
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %41, i8* %42, align 1, !tbaa !1260
  %43 = trunc i64 %39 to i32
  %44 = and i32 %43, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44) #14
  %46 = trunc i32 %45 to i8
  %47 = and i8 %46, 1
  %48 = xor i8 %47, 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %48, i8* %49, align 1, !tbaa !1274
  %50 = xor i64 ptrtoint (%__bss_start_type* @__bss_start to i64), %36
  %51 = xor i64 %50, %39
  %52 = lshr i64 %51, 4
  %53 = trunc i64 %52 to i8
  %54 = and i8 %53, 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %54, i8* %55, align 1, !tbaa !1275
  %56 = icmp eq i64 %39, 0
  %57 = zext i1 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %57, i8* %58, align 1, !tbaa !1276
  %59 = lshr i64 %39, 63
  %60 = trunc i64 %59 to i8
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %60, i8* %61, align 1, !tbaa !1277
  %62 = lshr i64 %36, 63
  %63 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %62
  %64 = xor i64 %59, %62
  %65 = add nuw nsw i64 %64, %63
  %66 = icmp eq i64 %65, 2
  %67 = zext i1 %66 to i8
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %67, i8* %68, align 1, !tbaa !1278
  %69 = load i64, i64* %RSI
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 4
  store i64 %71, i64* %PC
  %72 = ashr i64 %69, 2
  %73 = icmp ne i8 0, 0
  %74 = zext i1 %73 to i8
  %75 = trunc i64 %72 to i8
  %76 = and i8 %75, 1
  %77 = ashr i64 %72, 1
  store i64 %77, i64* %RSI, align 8, !tbaa !1256
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %76, i8* %78, align 1, !tbaa !1279
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %80 = trunc i64 %77 to i32
  %81 = and i32 %80, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81) #14
  %83 = trunc i32 %82 to i8
  %84 = and i8 %83, 1
  %85 = xor i8 %84, 1
  store i8 %85, i8* %79, align 1, !tbaa !1279
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %86, align 1, !tbaa !1279
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %88 = icmp eq i64 %77, 0
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %87, align 1, !tbaa !1279
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %91 = lshr i64 %77, 63
  %92 = trunc i64 %91 to i8
  store i8 %92, i8* %90, align 1, !tbaa !1279
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %74, i8* %93, align 1, !tbaa !1279
  %94 = load i64, i64* %RSP
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 3
  store i64 %96, i64* %PC
  store i64 %94, i64* %RBP, align 8, !tbaa !1256
  %97 = load i64, i64* %RSI
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC
  store i64 %97, i64* %RAX, align 8, !tbaa !1256
  %100 = load i64, i64* %RAX
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 4
  store i64 %102, i64* %PC
  %103 = lshr i64 %100, 62
  %104 = icmp ne i8 0, 0
  %105 = zext i1 %104 to i8
  %106 = trunc i64 %103 to i8
  %107 = and i8 %106, 1
  %108 = lshr i64 %103, 1
  store i64 %108, i64* %RAX, align 8, !tbaa !1256
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %107, i8* %109, align 1, !tbaa !1279
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %111 = trunc i64 %108 to i32
  %112 = and i32 %111, 255
  %113 = call i32 @llvm.ctpop.i32(i32 %112) #14
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %110, align 1, !tbaa !1279
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %117, align 1, !tbaa !1279
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %119 = icmp eq i64 %108, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %118, align 1, !tbaa !1279
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %121, align 1, !tbaa !1279
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %105, i8* %122, align 1, !tbaa !1279
  %123 = load i64, i64* %RSI
  %124 = load i64, i64* %RAX
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 3
  store i64 %126, i64* %PC
  %127 = add i64 %124, %123
  store i64 %127, i64* %RSI, align 8, !tbaa !1256
  %128 = icmp ult i64 %127, %123
  %129 = icmp ult i64 %127, %124
  %130 = or i1 %128, %129
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %131, i8* %132, align 1, !tbaa !1260
  %133 = trunc i64 %127 to i32
  %134 = and i32 %133, 255
  %135 = call i32 @llvm.ctpop.i32(i32 %134) #14
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  %138 = xor i8 %137, 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %138, i8* %139, align 1, !tbaa !1274
  %140 = xor i64 %124, %123
  %141 = xor i64 %140, %127
  %142 = lshr i64 %141, 4
  %143 = trunc i64 %142 to i8
  %144 = and i8 %143, 1
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %144, i8* %145, align 1, !tbaa !1275
  %146 = icmp eq i64 %127, 0
  %147 = zext i1 %146 to i8
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %147, i8* %148, align 1, !tbaa !1276
  %149 = lshr i64 %127, 63
  %150 = trunc i64 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %150, i8* %151, align 1, !tbaa !1277
  %152 = lshr i64 %123, 63
  %153 = lshr i64 %124, 63
  %154 = xor i64 %149, %152
  %155 = xor i64 %149, %153
  %156 = add nuw nsw i64 %154, %155
  %157 = icmp eq i64 %156, 2
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %158, i8* %159, align 1, !tbaa !1278
  %160 = load i64, i64* %RSI
  %161 = load i64, i64* %PC
  %162 = add i64 %161, 3
  store i64 %162, i64* %PC
  %163 = trunc i64 %160 to i8
  %164 = and i8 %163, 1
  %165 = ashr i64 %160, 1
  store i64 %165, i64* %RSI, align 8, !tbaa !1256
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %164, i8* %166, align 1, !tbaa !1279
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %168 = trunc i64 %165 to i32
  %169 = and i32 %168, 255
  %170 = call i32 @llvm.ctpop.i32(i32 %169) #14
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %167, align 1, !tbaa !1279
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %174, align 1, !tbaa !1279
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %176 = icmp eq i64 %165, 0
  %177 = zext i1 %176 to i8
  store i8 %177, i8* %175, align 1, !tbaa !1279
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %179 = lshr i64 %165, 63
  %180 = trunc i64 %179 to i8
  store i8 %180, i8* %178, align 1, !tbaa !1279
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %181, align 1, !tbaa !1279
  %182 = load i64, i64* %PC
  %183 = add i64 %182, 23
  %184 = load i64, i64* %PC
  %185 = add i64 %184, 2
  %186 = load i64, i64* %PC
  %187 = add i64 %186, 2
  store i64 %187, i64* %PC
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %189 = load i8, i8* %188, align 1, !tbaa !1276
  store i8 %189, i8* %BRANCH_TAKEN, align 1, !tbaa !1279
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %191 = icmp ne i8 %189, 0
  %192 = select i1 %191, i64 %183, i64 %185
  store i64 %192, i64* %190, align 8, !tbaa !1256
  %193 = load i8, i8* %BRANCH_TAKEN
  %194 = icmp eq i8 %193, 1
  br i1 %194, label %block_400498, label %block_400483

block_40049a:                                     ; preds = %block_40048d
  %195 = load i64, i64* %RAX
  %196 = load i64, i64* %RAX
  %197 = add i64 %196, %195
  %198 = load i16, i16* %AX
  %199 = zext i16 %198 to i64
  %200 = load i64, i64* %PC
  %201 = add i64 %200, 6
  store i64 %201, i64* %PC
  %202 = load i64, i64* %PC
  %203 = tail call %struct.Memory* @sub_4004a0___do_global_dtors_aux(%struct.State* %0, i64 %202, %struct.Memory* %2)
  ret %struct.Memory* %203

block_400495:                                     ; preds = %block_40048d
  %204 = load i64, i64* %RAX
  %205 = load i32, i32* %EAX
  %206 = zext i32 %205 to i64
  %207 = load i64, i64* %PC
  %208 = add i64 %207, 3
  store i64 %208, i64* %PC
  br label %block_400498

block_40048d:                                     ; preds = %block_400483
  %209 = load i64, i64* %PC
  %210 = add i64 %209, 1
  store i64 %210, i64* %PC
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %212 = load i64, i64* %211, align 8, !tbaa !1256
  %213 = add i64 %212, 8
  %214 = inttoptr i64 %212 to i64*
  %215 = load i64, i64* %214
  store i64 %215, i64* %RBP, align 8, !tbaa !1256
  store i64 %213, i64* %211, align 8, !tbaa !1256
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 5
  store i64 %217, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !1256
  %218 = load i64, i64* %RAX
  %219 = load i64, i64* %PC
  %220 = add i64 %219, 2
  store i64 %220, i64* %PC
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %218, i64* %221, align 8, !tbaa !1256
  %222 = load i64, i64* %PC
  switch i64 %222, label %274 [
    i64 4195482, label %block_40049a
    i64 4195477, label %block_400495
  ]

block_400498:                                     ; preds = %block_400483, %block_400495, %block_400460
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400460 ], [ %2, %block_400483 ], [ %2, %block_400495 ]
  %223 = load i64, i64* %PC
  %224 = add i64 %223, 1
  store i64 %224, i64* %PC
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %226 = load i64, i64* %225, align 8, !tbaa !1256
  %227 = add i64 %226, 8
  %228 = inttoptr i64 %226 to i64*
  %229 = load i64, i64* %228
  store i64 %229, i64* %RBP, align 8, !tbaa !1256
  store i64 %227, i64* %225, align 8, !tbaa !1256
  %230 = load i64, i64* %PC
  %231 = add i64 %230, 1
  store i64 %231, i64* %PC
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %234 = load i64, i64* %233, align 8, !tbaa !1256
  %235 = inttoptr i64 %234 to i64*
  %236 = load i64, i64* %235
  store i64 %236, i64* %232, align 8, !tbaa !1256
  %237 = add i64 %234, 8
  store i64 %237, i64* %233, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.0

block_400483:                                     ; preds = %block_400460
  %238 = load i64, i64* %PC
  %239 = add i64 %238, 5
  store i64 %239, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !1256
  %240 = load i64, i64* %RAX
  %241 = load i64, i64* %RAX
  %242 = load i64, i64* %PC
  %243 = add i64 %242, 3
  store i64 %243, i64* %PC
  %244 = and i64 %241, %240
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %245, align 1, !tbaa !1260
  %246 = trunc i64 %244 to i32
  %247 = and i32 %246, 255
  %248 = call i32 @llvm.ctpop.i32(i32 %247) #14
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  %251 = xor i8 %250, 1
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %251, i8* %252, align 1, !tbaa !1274
  %253 = icmp eq i64 %244, 0
  %254 = zext i1 %253 to i8
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %254, i8* %255, align 1, !tbaa !1276
  %256 = lshr i64 %244, 63
  %257 = trunc i64 %256 to i8
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %257, i8* %258, align 1, !tbaa !1277
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %259, align 1, !tbaa !1278
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %260, align 1, !tbaa !1275
  %261 = load i64, i64* %PC
  %262 = add i64 %261, 13
  %263 = load i64, i64* %PC
  %264 = add i64 %263, 2
  %265 = load i64, i64* %PC
  %266 = add i64 %265, 2
  store i64 %266, i64* %PC
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %268 = load i8, i8* %267, align 1, !tbaa !1276
  store i8 %268, i8* %BRANCH_TAKEN, align 1, !tbaa !1279
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %270 = icmp ne i8 %268, 0
  %271 = select i1 %270, i64 %262, i64 %264
  store i64 %271, i64* %269, align 8, !tbaa !1256
  %272 = load i8, i8* %BRANCH_TAKEN
  %273 = icmp eq i8 %272, 1
  br i1 %273, label %block_400498, label %block_40048d

; <label>:274:                                    ; preds = %block_40048d
  %275 = load i64, i64* %PC
  %276 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %275, %struct.Memory* %2)
  ret %struct.Memory* %276
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004f0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_4004f0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EBX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %EDI = bitcast %union.anon* %14 to i32*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 31
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %R15D = bitcast %union.anon* %17 to i32*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RAX = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RBX = bitcast %union.anon* %23 to i64*
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %25 = getelementptr inbounds %struct.GPR, %struct.GPR* %24, i32 0, i32 7
  %26 = getelementptr inbounds %struct.Reg, %struct.Reg* %25, i32 0, i32 0
  %RDX = bitcast %union.anon* %26 to i64*
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.GPR, %struct.GPR* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.Reg, %struct.Reg* %28, i32 0, i32 0
  %RSI = bitcast %union.anon* %29 to i64*
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %31 = getelementptr inbounds %struct.GPR, %struct.GPR* %30, i32 0, i32 11
  %32 = getelementptr inbounds %struct.Reg, %struct.Reg* %31, i32 0, i32 0
  %RDI = bitcast %union.anon* %32 to i64*
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %34 = getelementptr inbounds %struct.GPR, %struct.GPR* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.Reg, %struct.Reg* %34, i32 0, i32 0
  %RSP = bitcast %union.anon* %35 to i64*
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %37 = getelementptr inbounds %struct.GPR, %struct.GPR* %36, i32 0, i32 15
  %38 = getelementptr inbounds %struct.Reg, %struct.Reg* %37, i32 0, i32 0
  %RBP = bitcast %union.anon* %38 to i64*
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %40 = getelementptr inbounds %struct.GPR, %struct.GPR* %39, i32 0, i32 25
  %41 = getelementptr inbounds %struct.Reg, %struct.Reg* %40, i32 0, i32 0
  %R12 = bitcast %union.anon* %41 to i64*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 27
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %R13 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 29
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %R14 = bitcast %union.anon* %47 to i64*
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %49 = getelementptr inbounds %struct.GPR, %struct.GPR* %48, i32 0, i32 31
  %50 = getelementptr inbounds %struct.Reg, %struct.Reg* %49, i32 0, i32 0
  %R15 = bitcast %union.anon* %50 to i64*
  %51 = load i64, i64* %R15
  %52 = load i64, i64* %PC
  %53 = add i64 %52, 2
  store i64 %53, i64* %PC
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %55 = load i64, i64* %54, align 8, !tbaa !1256
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %51, i64* %57
  store i64 %56, i64* %54, align 8, !tbaa !1256
  %58 = load i64, i64* %R14
  %59 = load i64, i64* %PC
  %60 = add i64 %59, 2
  store i64 %60, i64* %PC
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %62 = load i64, i64* %61, align 8, !tbaa !1256
  %63 = add i64 %62, -8
  %64 = inttoptr i64 %63 to i64*
  store i64 %58, i64* %64
  store i64 %63, i64* %61, align 8, !tbaa !1256
  %65 = bitcast i32* %R15D to i64*
  %66 = load i32, i32* %EDI
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 3
  store i64 %69, i64* %PC
  %70 = and i64 %67, 4294967295
  store i64 %70, i64* %65, align 8, !tbaa !1256
  %71 = load i64, i64* %R13
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %75 = load i64, i64* %74, align 8, !tbaa !1256
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %71, i64* %77
  store i64 %76, i64* %74, align 8, !tbaa !1256
  %78 = load i64, i64* %R12
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8, !tbaa !1256
  %83 = add i64 %82, -8
  %84 = inttoptr i64 %83 to i64*
  store i64 %78, i64* %84
  store i64 %83, i64* %81, align 8, !tbaa !1256
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 7
  store i64 %86, i64* %PC
  store i64 ptrtoint (%seg_600e10__init_array_type* @seg_600e10__init_array to i64), i64* %R12, align 8, !tbaa !1256
  %87 = load i64, i64* %RBP
  %88 = load i64, i64* %PC
  %89 = add i64 %88, 1
  store i64 %89, i64* %PC
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %91 = load i64, i64* %90, align 8, !tbaa !1256
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %87, i64* %93
  store i64 %92, i64* %90, align 8, !tbaa !1256
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 7
  store i64 %95, i64* %PC
  store i64 add (i64 ptrtoint (%seg_600e10__init_array_type* @seg_600e10__init_array to i64), i64 8), i64* %RBP, align 8, !tbaa !1256
  %96 = load i64, i64* %RBX
  %97 = load i64, i64* %PC
  %98 = add i64 %97, 1
  store i64 %98, i64* %PC
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8, !tbaa !1256
  %101 = add i64 %100, -8
  %102 = inttoptr i64 %101 to i64*
  store i64 %96, i64* %102
  store i64 %101, i64* %99, align 8, !tbaa !1256
  %103 = load i64, i64* %RSI
  %104 = load i64, i64* %PC
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC
  store i64 %103, i64* %R14, align 8, !tbaa !1256
  %106 = load i64, i64* %RDX
  %107 = load i64, i64* %PC
  %108 = add i64 %107, 3
  store i64 %108, i64* %PC
  store i64 %106, i64* %R13, align 8, !tbaa !1256
  %109 = load i64, i64* %RBP
  %110 = load i64, i64* %R12
  %111 = load i64, i64* %PC
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC
  %113 = sub i64 %109, %110
  store i64 %113, i64* %RBP, align 8, !tbaa !1256
  %114 = icmp ult i64 %109, %110
  %115 = zext i1 %114 to i8
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %115, i8* %116, align 1, !tbaa !1260
  %117 = trunc i64 %113 to i32
  %118 = and i32 %117, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118) #14
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  %122 = xor i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %122, i8* %123, align 1, !tbaa !1274
  %124 = xor i64 %110, %109
  %125 = xor i64 %124, %113
  %126 = lshr i64 %125, 4
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %128, i8* %129, align 1, !tbaa !1275
  %130 = icmp eq i64 %113, 0
  %131 = zext i1 %130 to i8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %131, i8* %132, align 1, !tbaa !1276
  %133 = lshr i64 %113, 63
  %134 = trunc i64 %133 to i8
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %134, i8* %135, align 1, !tbaa !1277
  %136 = lshr i64 %109, 63
  %137 = lshr i64 %110, 63
  %138 = xor i64 %137, %136
  %139 = xor i64 %133, %136
  %140 = add nuw nsw i64 %139, %138
  %141 = icmp eq i64 %140, 2
  %142 = zext i1 %141 to i8
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %142, i8* %143, align 1, !tbaa !1278
  %144 = load i64, i64* %RSP
  %145 = load i64, i64* %PC
  %146 = add i64 %145, 4
  store i64 %146, i64* %PC
  %147 = sub i64 %144, 8
  store i64 %147, i64* %RSP, align 8, !tbaa !1256
  %148 = icmp ult i64 %144, 8
  %149 = zext i1 %148 to i8
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %149, i8* %150, align 1, !tbaa !1260
  %151 = trunc i64 %147 to i32
  %152 = and i32 %151, 255
  %153 = call i32 @llvm.ctpop.i32(i32 %152) #14
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %156, i8* %157, align 1, !tbaa !1274
  %158 = xor i64 8, %144
  %159 = xor i64 %158, %147
  %160 = lshr i64 %159, 4
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %162, i8* %163, align 1, !tbaa !1275
  %164 = icmp eq i64 %147, 0
  %165 = zext i1 %164 to i8
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %165, i8* %166, align 1, !tbaa !1276
  %167 = lshr i64 %147, 63
  %168 = trunc i64 %167 to i8
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %168, i8* %169, align 1, !tbaa !1277
  %170 = lshr i64 %144, 63
  %171 = xor i64 %167, %170
  %172 = add nuw nsw i64 %171, %170
  %173 = icmp eq i64 %172, 2
  %174 = zext i1 %173 to i8
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %174, i8* %175, align 1, !tbaa !1278
  %176 = load i64, i64* %RBP
  %177 = load i64, i64* %PC
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC
  %179 = ashr i64 %176, 2
  %180 = icmp ne i8 0, 0
  %181 = zext i1 %180 to i8
  %182 = trunc i64 %179 to i8
  %183 = and i8 %182, 1
  %184 = ashr i64 %179, 1
  store i64 %184, i64* %RBP, align 8, !tbaa !1256
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %183, i8* %185, align 1, !tbaa !1279
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %187 = trunc i64 %184 to i32
  %188 = and i32 %187, 255
  %189 = call i32 @llvm.ctpop.i32(i32 %188) #14
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %186, align 1, !tbaa !1279
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %193, align 1, !tbaa !1279
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %195 = icmp eq i64 %184, 0
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %194, align 1, !tbaa !1279
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %198 = lshr i64 %184, 63
  %199 = trunc i64 %198 to i8
  store i8 %199, i8* %197, align 1, !tbaa !1279
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %181, i8* %200, align 1, !tbaa !1279
  %201 = load i64, i64* %PC
  %202 = sub i64 %201, 396
  %203 = load i64, i64* %PC
  %204 = add i64 %203, 5
  %205 = load i64, i64* %PC
  %206 = add i64 %205, 5
  store i64 %206, i64* %PC
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %208 = load i64, i64* %207, align 8, !tbaa !1256
  %209 = add i64 %208, -8
  %210 = inttoptr i64 %209 to i64*
  store i64 %204, i64* %210
  store i64 %209, i64* %207, align 8, !tbaa !1256
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %202, i64* %211, align 8, !tbaa !1256
  %212 = load i64, i64* %PC
  %213 = call %struct.Memory* @sub_400390__init_proc(%struct.State* %0, i64 %212, %struct.Memory* %2)
  %214 = load i64, i64* %RBP
  %215 = load i64, i64* %RBP
  %216 = load i64, i64* %PC
  %217 = add i64 %216, 3
  store i64 %217, i64* %PC
  %218 = and i64 %215, %214
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %219, align 1, !tbaa !1260
  %220 = trunc i64 %218 to i32
  %221 = and i32 %220, 255
  %222 = call i32 @llvm.ctpop.i32(i32 %221) #14
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %225, i8* %226, align 1, !tbaa !1274
  %227 = icmp eq i64 %218, 0
  %228 = zext i1 %227 to i8
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %228, i8* %229, align 1, !tbaa !1276
  %230 = lshr i64 %218, 63
  %231 = trunc i64 %230 to i8
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %231, i8* %232, align 1, !tbaa !1277
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %233, align 1, !tbaa !1278
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %234, align 1, !tbaa !1275
  %235 = load i64, i64* %PC
  %236 = add i64 %235, 34
  %237 = load i64, i64* %PC
  %238 = add i64 %237, 2
  %239 = load i64, i64* %PC
  %240 = add i64 %239, 2
  store i64 %240, i64* %PC
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %242 = load i8, i8* %241, align 1, !tbaa !1276
  store i8 %242, i8* %BRANCH_TAKEN, align 1, !tbaa !1279
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %244 = icmp ne i8 %242, 0
  %245 = select i1 %244, i64 %236, i64 %238
  store i64 %245, i64* %243, align 8, !tbaa !1256
  %246 = load i8, i8* %BRANCH_TAKEN
  %247 = icmp eq i8 %246, 1
  br i1 %247, label %block_400546, label %block_400526

block_400546:                                     ; preds = %block_400530, %block_4004f0
  %MEMORY.0 = phi %struct.Memory* [ %213, %block_4004f0 ], [ %389, %block_400530 ]
  %248 = load i64, i64* %RSP
  %249 = load i64, i64* %PC
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC
  %251 = add i64 8, %248
  store i64 %251, i64* %RSP, align 8, !tbaa !1256
  %252 = icmp ult i64 %251, %248
  %253 = icmp ult i64 %251, 8
  %254 = or i1 %252, %253
  %255 = zext i1 %254 to i8
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %255, i8* %256, align 1, !tbaa !1260
  %257 = trunc i64 %251 to i32
  %258 = and i32 %257, 255
  %259 = call i32 @llvm.ctpop.i32(i32 %258) #14
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %262, i8* %263, align 1, !tbaa !1274
  %264 = xor i64 8, %248
  %265 = xor i64 %264, %251
  %266 = lshr i64 %265, 4
  %267 = trunc i64 %266 to i8
  %268 = and i8 %267, 1
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %268, i8* %269, align 1, !tbaa !1275
  %270 = icmp eq i64 %251, 0
  %271 = zext i1 %270 to i8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %271, i8* %272, align 1, !tbaa !1276
  %273 = lshr i64 %251, 63
  %274 = trunc i64 %273 to i8
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %274, i8* %275, align 1, !tbaa !1277
  %276 = lshr i64 %248, 63
  %277 = xor i64 %273, %276
  %278 = add nuw nsw i64 %277, %273
  %279 = icmp eq i64 %278, 2
  %280 = zext i1 %279 to i8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %280, i8* %281, align 1, !tbaa !1278
  %282 = load i64, i64* %PC
  %283 = add i64 %282, 1
  store i64 %283, i64* %PC
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %285 = load i64, i64* %284, align 8, !tbaa !1256
  %286 = add i64 %285, 8
  %287 = inttoptr i64 %285 to i64*
  %288 = load i64, i64* %287
  store i64 %288, i64* %RBX, align 8, !tbaa !1256
  store i64 %286, i64* %284, align 8, !tbaa !1256
  %289 = load i64, i64* %PC
  %290 = add i64 %289, 1
  store i64 %290, i64* %PC
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %292 = load i64, i64* %291, align 8, !tbaa !1256
  %293 = add i64 %292, 8
  %294 = inttoptr i64 %292 to i64*
  %295 = load i64, i64* %294
  store i64 %295, i64* %RBP, align 8, !tbaa !1256
  store i64 %293, i64* %291, align 8, !tbaa !1256
  %296 = load i64, i64* %PC
  %297 = add i64 %296, 2
  store i64 %297, i64* %PC
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %299 = load i64, i64* %298, align 8, !tbaa !1256
  %300 = add i64 %299, 8
  %301 = inttoptr i64 %299 to i64*
  %302 = load i64, i64* %301
  store i64 %302, i64* %R12, align 8, !tbaa !1256
  store i64 %300, i64* %298, align 8, !tbaa !1256
  %303 = load i64, i64* %PC
  %304 = add i64 %303, 2
  store i64 %304, i64* %PC
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %306 = load i64, i64* %305, align 8, !tbaa !1256
  %307 = add i64 %306, 8
  %308 = inttoptr i64 %306 to i64*
  %309 = load i64, i64* %308
  store i64 %309, i64* %R13, align 8, !tbaa !1256
  store i64 %307, i64* %305, align 8, !tbaa !1256
  %310 = load i64, i64* %PC
  %311 = add i64 %310, 2
  store i64 %311, i64* %PC
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %313 = load i64, i64* %312, align 8, !tbaa !1256
  %314 = add i64 %313, 8
  %315 = inttoptr i64 %313 to i64*
  %316 = load i64, i64* %315
  store i64 %316, i64* %R14, align 8, !tbaa !1256
  store i64 %314, i64* %312, align 8, !tbaa !1256
  %317 = load i64, i64* %PC
  %318 = add i64 %317, 2
  store i64 %318, i64* %PC
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %320 = load i64, i64* %319, align 8, !tbaa !1256
  %321 = add i64 %320, 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322
  store i64 %323, i64* %R15, align 8, !tbaa !1256
  store i64 %321, i64* %319, align 8, !tbaa !1256
  %324 = load i64, i64* %PC
  %325 = add i64 %324, 1
  store i64 %325, i64* %PC
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %328 = load i64, i64* %327, align 8, !tbaa !1256
  %329 = inttoptr i64 %328 to i64*
  %330 = load i64, i64* %329
  store i64 %330, i64* %326, align 8, !tbaa !1256
  %331 = add i64 %328, 8
  store i64 %331, i64* %327, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.0

block_400526:                                     ; preds = %block_4004f0
  %332 = load i64, i64* %RBX
  %333 = load i32, i32* %EBX
  %334 = zext i32 %333 to i64
  %335 = load i64, i64* %PC
  %336 = add i64 %335, 2
  store i64 %336, i64* %PC
  %337 = xor i64 %334, %332
  %338 = trunc i64 %337 to i32
  %339 = and i64 %337, 4294967295
  store i64 %339, i64* %RBX, align 8, !tbaa !1256
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %340, align 1, !tbaa !1260
  %341 = and i32 %338, 255
  %342 = call i32 @llvm.ctpop.i32(i32 %341) #14
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  %345 = xor i8 %344, 1
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %345, i8* %346, align 1, !tbaa !1274
  %347 = icmp eq i32 %338, 0
  %348 = zext i1 %347 to i8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %348, i8* %349, align 1, !tbaa !1276
  %350 = lshr i32 %338, 31
  %351 = trunc i32 %350 to i8
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %351, i8* %352, align 1, !tbaa !1277
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %353, align 1, !tbaa !1278
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %354, align 1, !tbaa !1275
  %355 = load i64, i64* %RAX
  %356 = load i64, i64* %RAX
  %357 = add i64 %356, %355
  %358 = load i32, i32* %EAX
  %359 = zext i32 %358 to i64
  %360 = load i64, i64* %PC
  %361 = add i64 %360, 8
  store i64 %361, i64* %PC
  br label %block_400530

block_400530:                                     ; preds = %block_400530, %block_400526
  %MEMORY.1 = phi %struct.Memory* [ %213, %block_400526 ], [ %389, %block_400530 ]
  %362 = load i64, i64* %R13
  %363 = load i64, i64* %PC
  %364 = add i64 %363, 3
  store i64 %364, i64* %PC
  store i64 %362, i64* %RDX, align 8, !tbaa !1256
  %365 = load i64, i64* %R14
  %366 = load i64, i64* %PC
  %367 = add i64 %366, 3
  store i64 %367, i64* %PC
  store i64 %365, i64* %RSI, align 8, !tbaa !1256
  %368 = load i32, i32* %R15D
  %369 = zext i32 %368 to i64
  %370 = load i64, i64* %PC
  %371 = add i64 %370, 3
  store i64 %371, i64* %PC
  %372 = and i64 %369, 4294967295
  store i64 %372, i64* %RDI, align 8, !tbaa !1256
  %373 = load i64, i64* %R12
  %374 = load i64, i64* %RBX
  %375 = mul i64 %374, 8
  %376 = add i64 %375, %373
  %377 = load i64, i64* %PC
  %378 = add i64 %377, 4
  %379 = load i64, i64* %PC
  %380 = add i64 %379, 4
  store i64 %380, i64* %PC
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %382 = load i64, i64* %381, align 8, !tbaa !1256
  %383 = add i64 %382, -8
  %384 = inttoptr i64 %383 to i64*
  store i64 %378, i64* %384
  store i64 %383, i64* %381, align 8, !tbaa !1256
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %386 = inttoptr i64 %376 to i64*
  %387 = load i64, i64* %386
  store i64 %387, i64* %385, align 8, !tbaa !1256
  %388 = load i64, i64* %PC
  %389 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %388, %struct.Memory* %MEMORY.1)
  %390 = load i64, i64* %RBX
  %391 = load i64, i64* %PC
  %392 = add i64 %391, 4
  store i64 %392, i64* %PC
  %393 = add i64 1, %390
  store i64 %393, i64* %RBX, align 8, !tbaa !1256
  %394 = icmp ult i64 %393, %390
  %395 = icmp ult i64 %393, 1
  %396 = or i1 %394, %395
  %397 = zext i1 %396 to i8
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %397, i8* %398, align 1, !tbaa !1260
  %399 = trunc i64 %393 to i32
  %400 = and i32 %399, 255
  %401 = call i32 @llvm.ctpop.i32(i32 %400) #14
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %404, i8* %405, align 1, !tbaa !1274
  %406 = xor i64 1, %390
  %407 = xor i64 %406, %393
  %408 = lshr i64 %407, 4
  %409 = trunc i64 %408 to i8
  %410 = and i8 %409, 1
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %410, i8* %411, align 1, !tbaa !1275
  %412 = icmp eq i64 %393, 0
  %413 = zext i1 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %413, i8* %414, align 1, !tbaa !1276
  %415 = lshr i64 %393, 63
  %416 = trunc i64 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %416, i8* %417, align 1, !tbaa !1277
  %418 = lshr i64 %390, 63
  %419 = xor i64 %415, %418
  %420 = add nuw nsw i64 %419, %415
  %421 = icmp eq i64 %420, 2
  %422 = zext i1 %421 to i8
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %422, i8* %423, align 1, !tbaa !1278
  %424 = load i64, i64* %RBX
  %425 = load i64, i64* %RBP
  %426 = load i64, i64* %PC
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC
  %428 = sub i64 %424, %425
  %429 = icmp ult i64 %424, %425
  %430 = zext i1 %429 to i8
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %430, i8* %431, align 1, !tbaa !1260
  %432 = trunc i64 %428 to i32
  %433 = and i32 %432, 255
  %434 = call i32 @llvm.ctpop.i32(i32 %433) #14
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %437, i8* %438, align 1, !tbaa !1274
  %439 = xor i64 %425, %424
  %440 = xor i64 %439, %428
  %441 = lshr i64 %440, 4
  %442 = trunc i64 %441 to i8
  %443 = and i8 %442, 1
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %443, i8* %444, align 1, !tbaa !1275
  %445 = icmp eq i64 %428, 0
  %446 = zext i1 %445 to i8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %446, i8* %447, align 1, !tbaa !1276
  %448 = lshr i64 %428, 63
  %449 = trunc i64 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %449, i8* %450, align 1, !tbaa !1277
  %451 = lshr i64 %424, 63
  %452 = lshr i64 %425, 63
  %453 = xor i64 %452, %451
  %454 = xor i64 %448, %451
  %455 = add nuw nsw i64 %454, %453
  %456 = icmp eq i64 %455, 2
  %457 = zext i1 %456 to i8
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %457, i8* %458, align 1, !tbaa !1278
  %459 = load i64, i64* %PC
  %460 = sub i64 %459, 20
  %461 = load i64, i64* %PC
  %462 = add i64 %461, 2
  %463 = load i64, i64* %PC
  %464 = add i64 %463, 2
  store i64 %464, i64* %PC
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %466 = load i8, i8* %465, align 1, !tbaa !1276
  %467 = icmp eq i8 %466, 0
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %BRANCH_TAKEN, align 1, !tbaa !1279
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %470 = select i1 %467, i64 %460, i64 %462
  store i64 %470, i64* %469, align 8, !tbaa !1256
  %471 = load i8, i8* %BRANCH_TAKEN
  %472 = icmp eq i8 %471, 1
  br i1 %472, label %block_400530, label %block_400546
}

; Function Attrs: noinline
define %struct.Memory* @sub_4003e0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_4003e0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %CX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 4
  %16 = load i16, i16* %CX
  %17 = zext i16 %16 to i64
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %15 to i16*
  %21 = load i16, i16* %20
  %22 = sub i16 %21, %16
  %23 = inttoptr i64 %13 to i16*
  store i16 %22, i16* %23
  %24 = icmp ult i16 %21, %16
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %25, i8* %26, align 1, !tbaa !1260
  %27 = and i16 %22, 255
  %28 = zext i16 %27 to i32
  %29 = call i32 @llvm.ctpop.i32(i32 %28) #14
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1, !tbaa !1274
  %34 = xor i16 %21, %16
  %35 = xor i16 %34, %22
  %36 = lshr i16 %35, 4
  %37 = trunc i16 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1, !tbaa !1275
  %40 = icmp eq i16 %22, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1, !tbaa !1276
  %43 = lshr i16 %22, 15
  %44 = trunc i16 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1, !tbaa !1277
  %46 = lshr i16 %21, 15
  %47 = lshr i16 %16, 15
  %48 = xor i16 %46, %47
  %49 = xor i16 %43, %46
  %50 = add nuw nsw i16 %49, %48
  %51 = icmp eq i16 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1, !tbaa !1278
  %54 = load i64, i64* %PC
  %55 = add i64 %54, 1
  store i64 %55, i64* %PC
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %58 = load i64, i64* %57, align 8, !tbaa !1256
  %59 = inttoptr i64 %58 to i64*
  %60 = load i64, i64* %59
  store i64 %60, i64* %56, align 8, !tbaa !1256
  %61 = add i64 %58, 8
  store i64 %61, i64* %57, align 8, !tbaa !1256
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4003d0___gmon_start__(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_4003d0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = load i64, i64* getelementptr inbounds (%seg_600ff8__got_type, %seg_600ff8__got_type* @seg_600ff8__got, i32 0, i32 0)
  store i64 %9, i64* %8, align 8, !tbaa !1256
  %10 = load i64, i64* %PC
  %11 = tail call %struct.Memory* @ext_601050___gmon_start__(%struct.State* %0, i64 %10, %struct.Memory* %2)
  ret %struct.Memory* %11
}

; Function Attrs: noinline
define %struct.Memory* @sub_400390__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_400390:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = sub i64 %12, 8
  store i64 %15, i64* %RSP, align 8, !tbaa !1256
  %16 = icmp ult i64 %12, 8
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1, !tbaa !1260
  %19 = trunc i64 %15 to i32
  %20 = and i32 %19, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20) #14
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1, !tbaa !1274
  %26 = xor i64 8, %12
  %27 = xor i64 %26, %15
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1, !tbaa !1275
  %32 = icmp eq i64 %15, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1, !tbaa !1276
  %35 = lshr i64 %15, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1, !tbaa !1277
  %38 = lshr i64 %12, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1, !tbaa !1278
  %44 = load i64, i64* %PC
  %45 = add i64 %44, 7
  store i64 %45, i64* %PC
  %46 = load i64, i64* getelementptr inbounds (%seg_600ff8__got_type, %seg_600ff8__got_type* @seg_600ff8__got, i32 0, i32 0)
  store i64 %46, i64* %RAX, align 8, !tbaa !1256
  %47 = load i64, i64* %RAX
  %48 = load i64, i64* %RAX
  %49 = load i64, i64* %PC
  %50 = add i64 %49, 3
  store i64 %50, i64* %PC
  %51 = and i64 %48, %47
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %52, align 1, !tbaa !1260
  %53 = trunc i64 %51 to i32
  %54 = and i32 %53, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54) #14
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %58, i8* %59, align 1, !tbaa !1274
  %60 = icmp eq i64 %51, 0
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %61, i8* %62, align 1, !tbaa !1276
  %63 = lshr i64 %51, 63
  %64 = trunc i64 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %64, i8* %65, align 1, !tbaa !1277
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %66, align 1, !tbaa !1278
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %67, align 1, !tbaa !1275
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 7
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 2
  %72 = load i64, i64* %PC
  %73 = add i64 %72, 2
  store i64 %73, i64* %PC
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %75 = load i8, i8* %74, align 1, !tbaa !1276
  store i8 %75, i8* %BRANCH_TAKEN, align 1, !tbaa !1279
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %77 = icmp ne i8 %75, 0
  %78 = select i1 %77, i64 %69, i64 %71
  store i64 %78, i64* %76, align 8, !tbaa !1256
  %79 = load i8, i8* %BRANCH_TAKEN
  %80 = icmp eq i8 %79, 1
  br i1 %80, label %block_4003a5, label %block_4003a0

block_4003a0:                                     ; preds = %block_400390
  %81 = load i64, i64* %PC
  %82 = add i64 %81, 48
  %83 = load i64, i64* %PC
  %84 = add i64 %83, 5
  %85 = load i64, i64* %PC
  %86 = add i64 %85, 5
  store i64 %86, i64* %PC
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %88 = load i64, i64* %87, align 8, !tbaa !1256
  %89 = add i64 %88, -8
  %90 = inttoptr i64 %89 to i64*
  store i64 %84, i64* %90
  store i64 %89, i64* %87, align 8, !tbaa !1256
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %82, i64* %91, align 8, !tbaa !1256
  %92 = load i64, i64* %PC
  %93 = call %struct.Memory* @sub_4003d0___gmon_start__(%struct.State* %0, i64 %92, %struct.Memory* %2)
  br label %block_4003a5

block_4003a5:                                     ; preds = %block_4003a0, %block_400390
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400390 ], [ %93, %block_4003a0 ]
  %94 = load i64, i64* %RSP
  %95 = load i64, i64* %PC
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC
  %97 = add i64 8, %94
  store i64 %97, i64* %RSP, align 8, !tbaa !1256
  %98 = icmp ult i64 %97, %94
  %99 = icmp ult i64 %97, 8
  %100 = or i1 %98, %99
  %101 = zext i1 %100 to i8
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %101, i8* %102, align 1, !tbaa !1260
  %103 = trunc i64 %97 to i32
  %104 = and i32 %103, 255
  %105 = call i32 @llvm.ctpop.i32(i32 %104) #14
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  %108 = xor i8 %107, 1
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %108, i8* %109, align 1, !tbaa !1274
  %110 = xor i64 8, %94
  %111 = xor i64 %110, %97
  %112 = lshr i64 %111, 4
  %113 = trunc i64 %112 to i8
  %114 = and i8 %113, 1
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %114, i8* %115, align 1, !tbaa !1275
  %116 = icmp eq i64 %97, 0
  %117 = zext i1 %116 to i8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %117, i8* %118, align 1, !tbaa !1276
  %119 = lshr i64 %97, 63
  %120 = trunc i64 %119 to i8
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %120, i8* %121, align 1, !tbaa !1277
  %122 = lshr i64 %94, 63
  %123 = xor i64 %119, %122
  %124 = add nuw nsw i64 %123, %119
  %125 = icmp eq i64 %124, 2
  %126 = zext i1 %125 to i8
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %126, i8* %127, align 1, !tbaa !1278
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 1
  store i64 %129, i64* %PC
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %132 = load i64, i64* %131, align 8, !tbaa !1256
  %133 = inttoptr i64 %132 to i64*
  %134 = load i64, i64* %133
  store i64 %134, i64* %130, align 8, !tbaa !1256
  %135 = add i64 %132, 8
  store i64 %135, i64* %131, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004a0___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_4004a0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 13
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RSP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 7
  store i64 %13, i64* %PC
  %14 = load i8, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1, !tbaa !1260
  %16 = zext i8 %14 to i32
  %17 = call i32 @llvm.ctpop.i32(i32 %16) #14
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1, !tbaa !1274
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1, !tbaa !1275
  %23 = icmp eq i8 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1, !tbaa !1276
  %26 = lshr i8 %14, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1, !tbaa !1277
  %28 = lshr i8 %14, 7
  %29 = xor i8 %26, %28
  %30 = add nuw nsw i8 %29, %28
  %31 = icmp eq i8 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1, !tbaa !1278
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 19
  %36 = load i64, i64* %PC
  %37 = add i64 %36, 2
  %38 = load i64, i64* %PC
  %39 = add i64 %38, 2
  store i64 %39, i64* %PC
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %41 = load i8, i8* %40, align 1, !tbaa !1276
  %42 = icmp eq i8 %41, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %BRANCH_TAKEN, align 1, !tbaa !1279
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %45 = select i1 %42, i64 %35, i64 %37
  store i64 %45, i64* %44, align 8, !tbaa !1256
  %46 = load i8, i8* %BRANCH_TAKEN
  %47 = icmp eq i8 %46, 1
  br i1 %47, label %block_4004ba, label %block_4004a9

block_4004ba:                                     ; preds = %block_4004a9, %block_4004a0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004a0 ], [ %78, %block_4004a9 ]
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 2
  store i64 %49, i64* %PC
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8, !tbaa !1256
  %53 = inttoptr i64 %52 to i64*
  %54 = load i64, i64* %53
  store i64 %54, i64* %50, align 8, !tbaa !1256
  %55 = add i64 %52, 8
  store i64 %55, i64* %51, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.0

block_4004a9:                                     ; preds = %block_4004a0
  %56 = load i64, i64* %RBP
  %57 = load i64, i64* %PC
  %58 = add i64 %57, 1
  store i64 %58, i64* %PC
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %60 = load i64, i64* %59, align 8, !tbaa !1256
  %61 = add i64 %60, -8
  %62 = inttoptr i64 %61 to i64*
  store i64 %56, i64* %62
  store i64 %61, i64* %59, align 8, !tbaa !1256
  %63 = load i64, i64* %RSP
  %64 = load i64, i64* %PC
  %65 = add i64 %64, 3
  store i64 %65, i64* %PC
  store i64 %63, i64* %RBP, align 8, !tbaa !1256
  %66 = load i64, i64* %PC
  %67 = sub i64 %66, 141
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 5
  %70 = load i64, i64* %PC
  %71 = add i64 %70, 5
  store i64 %71, i64* %PC
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %73 = load i64, i64* %72, align 8, !tbaa !1256
  %74 = add i64 %73, -8
  %75 = inttoptr i64 %74 to i64*
  store i64 %69, i64* %75
  store i64 %74, i64* %72, align 8, !tbaa !1256
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %67, i64* %76, align 8, !tbaa !1256
  %77 = load i64, i64* %PC
  %78 = call %struct.Memory* @sub_400420_deregister_tm_clones(%struct.State* %0, i64 %77, %struct.Memory* %2)
  %79 = load i64, i64* %PC
  %80 = add i64 %79, 1
  store i64 %80, i64* %PC
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %82 = load i64, i64* %81, align 8, !tbaa !1256
  %83 = add i64 %82, 8
  %84 = inttoptr i64 %82 to i64*
  %85 = load i64, i64* %84
  store i64 %85, i64* %RBP, align 8, !tbaa !1256
  store i64 %83, i64* %81, align 8, !tbaa !1256
  %86 = load i64, i64* %PC
  %87 = add i64 %86, 7
  store i64 %87, i64* %PC
  store i8 1, i8* getelementptr inbounds (%__bss_start_type, %__bss_start_type* @__bss_start, i32 0, i32 0, i32 0)
  br label %block_4004ba
}

; Function Attrs: noinline
define %struct.Memory* @sub_400420_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_400420:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EAX = bitcast %union.anon* %11 to i32*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RAX = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RDI = bitcast %union.anon* %17 to i64*
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %19 = getelementptr inbounds %struct.GPR, %struct.GPR* %18, i32 0, i32 13
  %20 = getelementptr inbounds %struct.Reg, %struct.Reg* %19, i32 0, i32 0
  %RSP = bitcast %union.anon* %20 to i64*
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %22 = getelementptr inbounds %struct.GPR, %struct.GPR* %21, i32 0, i32 15
  %23 = getelementptr inbounds %struct.Reg, %struct.Reg* %22, i32 0, i32 0
  %RBP = bitcast %union.anon* %23 to i64*
  %24 = load i64, i64* %PC
  %25 = add i64 %24, 5
  store i64 %25, i64* %PC
  store i64 and (i64 add (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 7), i64 4294967295), i64* %RAX, align 8, !tbaa !1256
  %26 = load i64, i64* %RBP
  %27 = load i64, i64* %PC
  %28 = add i64 %27, 1
  store i64 %28, i64* %PC
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %30 = load i64, i64* %29, align 8, !tbaa !1256
  %31 = add i64 %30, -8
  %32 = inttoptr i64 %31 to i64*
  store i64 %26, i64* %32
  store i64 %31, i64* %29, align 8, !tbaa !1256
  %33 = load i64, i64* %RAX
  %34 = load i64, i64* %PC
  %35 = add i64 %34, 6
  store i64 %35, i64* %PC
  %36 = sub i64 %33, ptrtoint (%__bss_start_type* @__bss_start to i64)
  store i64 %36, i64* %RAX, align 8, !tbaa !1256
  %37 = icmp ult i64 %33, ptrtoint (%__bss_start_type* @__bss_start to i64)
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %38, i8* %39, align 1, !tbaa !1260
  %40 = trunc i64 %36 to i32
  %41 = and i32 %40, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41) #14
  %43 = trunc i32 %42 to i8
  %44 = and i8 %43, 1
  %45 = xor i8 %44, 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %45, i8* %46, align 1, !tbaa !1274
  %47 = xor i64 ptrtoint (%__bss_start_type* @__bss_start to i64), %33
  %48 = xor i64 %47, %36
  %49 = lshr i64 %48, 4
  %50 = trunc i64 %49 to i8
  %51 = and i8 %50, 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %51, i8* %52, align 1, !tbaa !1275
  %53 = icmp eq i64 %36, 0
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %54, i8* %55, align 1, !tbaa !1276
  %56 = lshr i64 %36, 63
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %57, i8* %58, align 1, !tbaa !1277
  %59 = lshr i64 %33, 63
  %60 = xor i64 lshr (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 63), %59
  %61 = xor i64 %56, %59
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1, !tbaa !1278
  %66 = load i64, i64* %RAX
  %67 = load i64, i64* %PC
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC
  %69 = sub i64 %66, 14
  %70 = icmp ult i64 %66, 14
  %71 = zext i1 %70 to i8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %71, i8* %72, align 1, !tbaa !1260
  %73 = trunc i64 %69 to i32
  %74 = and i32 %73, 255
  %75 = call i32 @llvm.ctpop.i32(i32 %74) #14
  %76 = trunc i32 %75 to i8
  %77 = and i8 %76, 1
  %78 = xor i8 %77, 1
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %78, i8* %79, align 1, !tbaa !1274
  %80 = xor i64 14, %66
  %81 = xor i64 %80, %69
  %82 = lshr i64 %81, 4
  %83 = trunc i64 %82 to i8
  %84 = and i8 %83, 1
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %84, i8* %85, align 1, !tbaa !1275
  %86 = icmp eq i64 %69, 0
  %87 = zext i1 %86 to i8
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %87, i8* %88, align 1, !tbaa !1276
  %89 = lshr i64 %69, 63
  %90 = trunc i64 %89 to i8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %90, i8* %91, align 1, !tbaa !1277
  %92 = lshr i64 %66, 63
  %93 = xor i64 %89, %92
  %94 = add nuw nsw i64 %93, %92
  %95 = icmp eq i64 %94, 2
  %96 = zext i1 %95 to i8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %96, i8* %97, align 1, !tbaa !1278
  %98 = load i64, i64* %RSP
  %99 = load i64, i64* %PC
  %100 = add i64 %99, 3
  store i64 %100, i64* %PC
  store i64 %98, i64* %RBP, align 8, !tbaa !1256
  %101 = load i64, i64* %PC
  %102 = add i64 %101, 29
  %103 = load i64, i64* %PC
  %104 = add i64 %103, 2
  %105 = load i64, i64* %PC
  %106 = add i64 %105, 2
  store i64 %106, i64* %PC
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %108 = load i8, i8* %107, align 1, !tbaa !1260
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %110 = load i8, i8* %109, align 1, !tbaa !1276
  %111 = or i8 %110, %108
  %112 = icmp ne i8 %111, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %BRANCH_TAKEN, align 1, !tbaa !1279
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %115 = select i1 %112, i64 %102, i64 %104
  store i64 %115, i64* %114, align 8, !tbaa !1256
  %116 = load i8, i8* %BRANCH_TAKEN
  %117 = icmp eq i8 %116, 1
  br i1 %117, label %block_400450, label %block_400435

block_40043f:                                     ; preds = %block_400435
  %118 = load i64, i64* %PC
  %119 = add i64 %118, 1
  store i64 %119, i64* %PC
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %121 = load i64, i64* %120, align 8, !tbaa !1256
  %122 = add i64 %121, 8
  %123 = inttoptr i64 %121 to i64*
  %124 = load i64, i64* %123
  store i64 %124, i64* %RBP, align 8, !tbaa !1256
  store i64 %122, i64* %120, align 8, !tbaa !1256
  %125 = load i64, i64* %PC
  %126 = add i64 %125, 5
  store i64 %126, i64* %PC
  store i64 and (i64 ptrtoint (%__bss_start_type* @__bss_start to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !1256
  %127 = load i64, i64* %RAX
  %128 = load i64, i64* %PC
  %129 = add i64 %128, 2
  store i64 %129, i64* %PC
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %127, i64* %130, align 8, !tbaa !1256
  %131 = load i64, i64* %PC
  switch i64 %131, label %204 [
    i64 4195410, label %block_400452
    i64 4195399, label %block_400447
  ]

block_400452:                                     ; preds = %block_40043f
  %132 = load i64, i64* %RAX
  %133 = load i32, i32* %EAX
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %PC
  %136 = add i64 %135, 4
  store i64 %136, i64* %PC
  %137 = load i64, i64* %RAX
  %138 = load i64, i64* %RAX
  %139 = add i64 %138, %137
  %140 = load i16, i16* %AX
  %141 = zext i16 %140 to i64
  %142 = load i64, i64* %PC
  %143 = add i64 %142, 10
  store i64 %143, i64* %PC
  %144 = load i64, i64* %PC
  %145 = tail call %struct.Memory* @sub_400460_register_tm_clones(%struct.State* %0, i64 %144, %struct.Memory* %2)
  ret %struct.Memory* %145

block_400450:                                     ; preds = %block_400435, %block_400447, %block_400420
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_400420 ], [ %2, %block_400435 ], [ %2, %block_400447 ]
  %146 = load i64, i64* %PC
  %147 = add i64 %146, 1
  store i64 %147, i64* %PC
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %149 = load i64, i64* %148, align 8, !tbaa !1256
  %150 = add i64 %149, 8
  %151 = inttoptr i64 %149 to i64*
  %152 = load i64, i64* %151
  store i64 %152, i64* %RBP, align 8, !tbaa !1256
  store i64 %150, i64* %148, align 8, !tbaa !1256
  %153 = load i64, i64* %PC
  %154 = add i64 %153, 1
  store i64 %154, i64* %PC
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %157 = load i64, i64* %156, align 8, !tbaa !1256
  %158 = inttoptr i64 %157 to i64*
  %159 = load i64, i64* %158
  store i64 %159, i64* %155, align 8, !tbaa !1256
  %160 = add i64 %157, 8
  store i64 %160, i64* %156, align 8, !tbaa !1256
  ret %struct.Memory* %MEMORY.0

block_400447:                                     ; preds = %block_40043f
  %161 = load i64, i64* %RAX
  %162 = load i64, i64* %RAX
  %163 = add i64 %162, %161
  %164 = load i16, i16* %AX
  %165 = zext i16 %164 to i64
  %166 = load i64, i64* %PC
  %167 = add i64 %166, 9
  store i64 %167, i64* %PC
  br label %block_400450

block_400435:                                     ; preds = %block_400420
  %168 = load i64, i64* %PC
  %169 = add i64 %168, 5
  store i64 %169, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !1256
  %170 = load i64, i64* %RAX
  %171 = load i64, i64* %RAX
  %172 = load i64, i64* %PC
  %173 = add i64 %172, 3
  store i64 %173, i64* %PC
  %174 = and i64 %171, %170
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %175, align 1, !tbaa !1260
  %176 = trunc i64 %174 to i32
  %177 = and i32 %176, 255
  %178 = call i32 @llvm.ctpop.i32(i32 %177) #14
  %179 = trunc i32 %178 to i8
  %180 = and i8 %179, 1
  %181 = xor i8 %180, 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %181, i8* %182, align 1, !tbaa !1274
  %183 = icmp eq i64 %174, 0
  %184 = zext i1 %183 to i8
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %184, i8* %185, align 1, !tbaa !1276
  %186 = lshr i64 %174, 63
  %187 = trunc i64 %186 to i8
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %187, i8* %188, align 1, !tbaa !1277
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %189, align 1, !tbaa !1278
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %190, align 1, !tbaa !1275
  %191 = load i64, i64* %PC
  %192 = add i64 %191, 19
  %193 = load i64, i64* %PC
  %194 = add i64 %193, 2
  %195 = load i64, i64* %PC
  %196 = add i64 %195, 2
  store i64 %196, i64* %PC
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %198 = load i8, i8* %197, align 1, !tbaa !1276
  store i8 %198, i8* %BRANCH_TAKEN, align 1, !tbaa !1279
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %200 = icmp ne i8 %198, 0
  %201 = select i1 %200, i64 %192, i64 %194
  store i64 %201, i64* %199, align 8, !tbaa !1256
  %202 = load i8, i8* %BRANCH_TAKEN
  %203 = icmp eq i8 %202, 1
  br i1 %203, label %block_400450, label %block_40043f

; <label>:204:                                    ; preds = %block_40043f
  %205 = load i64, i64* %PC
  %206 = tail call %struct.Memory* @__remill_jump(%struct.State* %0, i64 %205, %struct.Memory* %2)
  ret %struct.Memory* %206
}

; Function Attrs: noinline
define %struct.Memory* @sub_4004c0_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) #12 {
block_4004c0:
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  store i64 %1, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 13
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSP = bitcast %union.anon* %14 to i64*
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %16 = getelementptr inbounds %struct.GPR, %struct.GPR* %15, i32 0, i32 15
  %17 = getelementptr inbounds %struct.Reg, %struct.Reg* %16, i32 0, i32 0
  %RBP = bitcast %union.anon* %17 to i64*
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 5
  store i64 %19, i64* %PC
  store i64 and (i64 ptrtoint (%seg_600e20__jcr_type* @seg_600e20__jcr to i64), i64 4294967295), i64* %RDI, align 8, !tbaa !1256
  %20 = load i64, i64* %RDI
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %20 to i64*
  %24 = load i64, i64* %23
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %25, align 1, !tbaa !1260
  %26 = trunc i64 %24 to i32
  %27 = and i32 %26, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27) #14
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1, !tbaa !1274
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1, !tbaa !1275
  %34 = icmp eq i64 %24, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1, !tbaa !1276
  %37 = lshr i64 %24, 63
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1, !tbaa !1277
  %40 = lshr i64 %24, 63
  %41 = xor i64 %37, %40
  %42 = add nuw nsw i64 %41, %40
  %43 = icmp eq i64 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1, !tbaa !1278
  %46 = load i64, i64* %PC
  %47 = add i64 %46, 7
  %48 = load i64, i64* %PC
  %49 = add i64 %48, 2
  %50 = load i64, i64* %PC
  %51 = add i64 %50, 2
  store i64 %51, i64* %PC
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %53 = load i8, i8* %52, align 1, !tbaa !1276
  %54 = icmp eq i8 %53, 0
  %55 = zext i1 %54 to i8
  store i8 %55, i8* %BRANCH_TAKEN, align 1, !tbaa !1279
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %57 = select i1 %54, i64 %47, i64 %49
  store i64 %57, i64* %56, align 8, !tbaa !1256
  %58 = load i8, i8* %BRANCH_TAKEN
  %59 = icmp eq i8 %58, 1
  br i1 %59, label %block_4004d0, label %block_4004cb

block_4004da:                                     ; preds = %block_4004d0
  %60 = load i64, i64* %RBP
  %61 = load i64, i64* %PC
  %62 = add i64 %61, 1
  store i64 %62, i64* %PC
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %64 = load i64, i64* %63, align 8, !tbaa !1256
  %65 = add i64 %64, -8
  %66 = inttoptr i64 %65 to i64*
  store i64 %60, i64* %66
  store i64 %65, i64* %63, align 8, !tbaa !1256
  %67 = load i64, i64* %RSP
  %68 = load i64, i64* %PC
  %69 = add i64 %68, 3
  store i64 %69, i64* %PC
  store i64 %67, i64* %RBP, align 8, !tbaa !1256
  %70 = load i64, i64* %RAX
  %71 = load i64, i64* %PC
  %72 = add i64 %71, 2
  %73 = load i64, i64* %PC
  %74 = add i64 %73, 2
  store i64 %74, i64* %PC
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %76 = load i64, i64* %75, align 8, !tbaa !1256
  %77 = add i64 %76, -8
  %78 = inttoptr i64 %77 to i64*
  store i64 %72, i64* %78
  store i64 %77, i64* %75, align 8, !tbaa !1256
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %70, i64* %79, align 8, !tbaa !1256
  %80 = load i64, i64* %PC
  %81 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 %80, %struct.Memory* %2)
  %82 = load i64, i64* %PC
  %83 = add i64 %82, 1
  store i64 %83, i64* %PC
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %85 = load i64, i64* %84, align 8, !tbaa !1256
  %86 = add i64 %85, 8
  %87 = inttoptr i64 %85 to i64*
  %88 = load i64, i64* %87
  store i64 %88, i64* %RBP, align 8, !tbaa !1256
  store i64 %86, i64* %84, align 8, !tbaa !1256
  %89 = load i64, i64* %PC
  %90 = sub i64 %89, 129
  %91 = load i64, i64* %PC
  %92 = add i64 %91, 5
  store i64 %92, i64* %PC
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %90, i64* %93, align 8, !tbaa !1256
  br label %block_400460

block_4004d0:                                     ; preds = %block_4004c0
  %94 = load i64, i64* %PC
  %95 = add i64 %94, 5
  store i64 %95, i64* %PC
  store i64 0, i64* %RAX, align 8, !tbaa !1256
  %96 = load i64, i64* %RAX
  %97 = load i64, i64* %RAX
  %98 = load i64, i64* %PC
  %99 = add i64 %98, 3
  store i64 %99, i64* %PC
  %100 = and i64 %97, %96
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %101, align 1, !tbaa !1260
  %102 = trunc i64 %100 to i32
  %103 = and i32 %102, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103) #14
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %107, i8* %108, align 1, !tbaa !1274
  %109 = icmp eq i64 %100, 0
  %110 = zext i1 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %110, i8* %111, align 1, !tbaa !1276
  %112 = lshr i64 %100, 63
  %113 = trunc i64 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %113, i8* %114, align 1, !tbaa !1277
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %115, align 1, !tbaa !1278
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %116, align 1, !tbaa !1275
  %117 = load i64, i64* %PC
  %118 = sub i64 %117, 13
  %119 = load i64, i64* %PC
  %120 = add i64 %119, 2
  %121 = load i64, i64* %PC
  %122 = add i64 %121, 2
  store i64 %122, i64* %PC
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %124 = load i8, i8* %123, align 1, !tbaa !1276
  store i8 %124, i8* %BRANCH_TAKEN, align 1, !tbaa !1279
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %126 = icmp ne i8 %124, 0
  %127 = select i1 %126, i64 %118, i64 %120
  store i64 %127, i64* %125, align 8, !tbaa !1256
  %128 = load i8, i8* %BRANCH_TAKEN
  %129 = icmp eq i8 %128, 1
  br i1 %129, label %block_4004cb, label %block_4004da

block_4004cb:                                     ; preds = %block_4004d0, %block_4004c0
  %MEMORY.0 = phi %struct.Memory* [ %2, %block_4004d0 ], [ %2, %block_4004c0 ]
  %130 = load i64, i64* %PC
  %131 = sub i64 %130, 107
  %132 = load i64, i64* %PC
  %133 = add i64 %132, 2
  store i64 %133, i64* %PC
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %131, i64* %134, align 8, !tbaa !1256
  br label %block_400460

block_400460:                                     ; preds = %block_4004cb, %block_4004da
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_4004cb ], [ %81, %block_4004da ]
  %135 = load i64, i64* %PC
  %136 = tail call %struct.Memory* @sub_400460_register_tm_clones(%struct.State* %0, i64 %135, %struct.Memory* %MEMORY.1)
  ret %struct.Memory* %136
}

; Function Attrs: noinline
declare void @__mcsema_attach_call() #11

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004c0_frame_dummy() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x4004c0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @1, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4004c0_frame_dummy_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4004c0_frame_dummy(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004a0___do_global_dtors_aux() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x4004a0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @3, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4004a0___do_global_dtors_aux_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4004a0___do_global_dtors_aux(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_400560___libc_csu_fini() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x400560;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @4, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_400560___libc_csu_fini_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400560___libc_csu_fini(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define internal void @callback_sub_4004f0___libc_csu_init() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x4004f0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @5, void ()** @2)
  ret void
}

define internal %struct.Memory* @callback_sub_4004f0___libc_csu_init_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4004f0___libc_csu_init(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @main() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x4003e0;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @6, void ()** @2)
  ret void
}

define internal %struct.Memory* @main_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_4003e0_main(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_601040___libc_start_main(%struct.State*, i64, %struct.Memory*) #11 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline
define internal %struct.Memory* @ext_601050___gmon_start__(%struct.State*, i64, %struct.Memory*) #11 {
  %4 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 ()* @__gmon_start__ to i64), %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.term_proc() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x400564;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @7, void ()** @2)
  ret void
}

define internal %struct.Memory* @.term_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400564__term_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

; Function Attrs: naked nobuiltin noinline
define dllexport void @.init_proc() #13 {
  call void asm sideeffect "pushq $0;pushq $$0x400390;jmpq *$1;", "*m,*m,~{dirflag},~{fpsr},~{flags}"(%struct.Memory* (%struct.State*, i64, %struct.Memory*)** @8, void ()** @2)
  ret void
}

define internal %struct.Memory* @.init_proc_wrapper(%struct.State*, i64, %struct.Memory*) {
  %4 = load volatile i1, i1* @0
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %3
  br label %__mcsema_early_init.exit

; <label>:6:                                      ; preds = %3
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %6, %5
  %7 = tail call %struct.Memory* @sub_400390__init_proc(%struct.State* %0, i64 %1, %struct.Memory* %2)
  ret %struct.Memory* %7
}

define internal void @__mcsema_destructor() {
  call void @callback_sub_400560___libc_csu_fini()
  ret void
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0
  br i1 %1, label %2, label %3

; <label>:2:                                      ; preds = %0
  br label %__mcsema_early_init.exit

; <label>:3:                                      ; preds = %0
  store volatile i1 true, i1* @0
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %3, %2
  call void @callback_sub_4004f0___libc_csu_init()
  ret void
}

attributes #0 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noduplicate noinline nounwind optnone readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noduplicate noinline nounwind optnone readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noinline }
attributes #12 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { naked nobuiltin noinline }
attributes #14 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1254, !1255}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!12 = !DIEnumerator(name: "kInvalid", value: 0)
!13 = !DIEnumerator(name: "kX86Int1", value: 1)
!14 = !DIEnumerator(name: "kX86Int3", value: 2)
!15 = !DIEnumerator(name: "kX86IntO", value: 3)
!16 = !DIEnumerator(name: "kX86IntN", value: 4)
!17 = !DIEnumerator(name: "kX86Bound", value: 5)
!18 = !DIEnumerator(name: "kX86IRet", value: 6)
!19 = !DIEnumerator(name: "kX86SysCall", value: 7)
!20 = !DIEnumerator(name: "kX86SysRet", value: 8)
!21 = !DIEnumerator(name: "kX86SysEnter", value: 9)
!22 = !DIEnumerator(name: "kX86SysExit", value: 10)
!23 = !DIEnumerator(name: "kX86JmpFar", value: 11)
!24 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 12)
!25 = !DIEnumerator(name: "kInvalidInstruction", value: 13)
!26 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !27, line: 64, baseType: !28, size: 16, elements: !30, identifier: "_ZTS21RequestPrivilegeLevel")
!27 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 218, baseType: !29)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "kRPLRingZero", value: 0)
!32 = !DIEnumerator(name: "kRPLRingOne", value: 1)
!33 = !DIEnumerator(name: "kRPLRingTwo", value: 2)
!34 = !DIEnumerator(name: "kRPLRingThree", value: 3)
!35 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !27, line: 71, baseType: !28, size: 16, elements: !36, identifier: "_ZTS14TableIndicator")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)
!38 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)
!39 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUPrecisionControl", file: !27, line: 123, baseType: !28, size: 16, elements: !40, identifier: "_ZTS19FPUPrecisionControl")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "kPrecisionSingle", value: 0)
!42 = !DIEnumerator(name: "kPrecisionReserved", value: 1)
!43 = !DIEnumerator(name: "kPrecisionDouble", value: 2)
!44 = !DIEnumerator(name: "kPrecisionExtended", value: 3)
!45 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPURoundingControl", file: !27, line: 130, baseType: !28, size: 16, elements: !46, identifier: "_ZTS18FPURoundingControl")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "kFPURoundToNearestEven", value: 0)
!48 = !DIEnumerator(name: "kFPURoundDownNegInf", value: 1)
!49 = !DIEnumerator(name: "kFPURoundUpInf", value: 2)
!50 = !DIEnumerator(name: "kFPURoundToZero", value: 3)
!51 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUInfinityControl", file: !27, line: 137, baseType: !28, size: 16, elements: !52, identifier: "_ZTS18FPUInfinityControl")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "kInfinityProjective", value: 0)
!54 = !DIEnumerator(name: "kInfinityAffine", value: 1)
!55 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUTag", file: !27, line: 214, baseType: !28, size: 16, elements: !56, identifier: "_ZTS6FPUTag")
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "kFPUTagNonZero", value: 0)
!58 = !DIEnumerator(name: "kFPUTagZero", value: 1)
!59 = !DIEnumerator(name: "kFPUTagSpecial", value: 2)
!60 = !DIEnumerator(name: "kFPUTagEmpty", value: 3)
!61 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUAbridgedTag", file: !27, line: 221, baseType: !62, size: 8, elements: !64, identifier: "_ZTS14FPUAbridgedTag")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 237, baseType: !63)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "kFPUAbridgedTagEmpty", value: 0)
!66 = !DIEnumerator(name: "kFPUAbridgedTagValid", value: 1)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!70 = !{!71, !77, !81, !88, !92, !97, !102, !104, !112, !116, !120, !132, !136, !140, !144, !148, !153, !157, !161, !165, !169, !177, !181, !185, !187, !191, !195, !199, !205, !209, !213, !215, !223, !227, !235, !237, !241, !245, !249, !253, !258, !263, !268, !269, !270, !271, !274, !275, !276, !277, !278, !279, !280, !334, !338, !353, !355, !359, !367, !372, !376, !380, !384, !388, !390, !392, !396, !402, !406, !412, !418, !420, !424, !428, !432, !436, !447, !449, !453, !457, !461, !463, !467, !471, !475, !477, !479, !483, !491, !495, !499, !503, !505, !511, !513, !519, !523, !527, !531, !535, !539, !543, !545, !547, !551, !555, !559, !561, !565, !569, !571, !573, !577, !581, !585, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !603, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !631, !632, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !662, !666, !671, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !707, !712, !716, !718, !720, !722, !724, !731, !735, !739, !743, !747, !751, !756, !760, !762, !766, !772, !776, !781, !783, !785, !789, !793, !797, !799, !801, !803, !805, !809, !811, !813, !817, !821, !825, !829, !833, !835, !837, !841, !845, !849, !853, !855, !857, !861, !865, !866, !867, !868, !869, !870, !875, !877, !879, !883, !885, !887, !889, !891, !893, !895, !897, !902, !906, !908, !910, !915, !917, !919, !921, !923, !925, !927, !930, !932, !934, !938, !942, !944, !946, !948, !950, !952, !954, !956, !958, !960, !962, !966, !970, !972, !974, !976, !978, !980, !982, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1004, !1008, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1034, !1038, !1042, !1044, !1046, !1048, !1052, !1056, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1088, !1092, !1096, !1098, !1100, !1102, !1104, !1108, !1112, !1114, !1116, !1118, !1120, !1122, !1124, !1128, !1132, !1134, !1136, !1138, !1140, !1144, !1148, !1152, !1154, !1156, !1158, !1160, !1162, !1164, !1168, !1172, !1176, !1178, !1182, !1186, !1188, !1190, !1192, !1194, !1196, !1198, !1202, !1204, !1207, !1212, !1214, !1220, !1222, !1224, !1226, !1231, !1233, !1239, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !74, line: 58)
!72 = !DINamespace(name: "__gnu_debug", scope: null, file: !73, line: 56)
!73 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/6.5.0/../../../../include/c++/6.5.0/debug/debug.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!74 = !DINamespace(name: "__debug", scope: !75, file: !73, line: 50)
!75 = !DINamespace(name: "std", scope: null, file: !76, line: 199)
!76 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/6.5.0/../../../../include/x86_64-linux-gnu/c++/6.5.0/bits/c++config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !78, line: 124)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !79, line: 101, baseType: !80)
!79 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 97, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!81 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !82, line: 125)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !79, line: 109, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 105, size: 128, elements: !84, identifier: "_ZTS6ldiv_t")
!84 = !{!85, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !83, file: !79, line: 107, baseType: !86, size: 64)
!86 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !83, file: !79, line: 108, baseType: !86, size: 64, offset: 64)
!88 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !89, line: 127)
!89 = !DISubprogram(name: "abort", scope: !79, file: !79, line: 515, type: !90, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!90 = !DISubroutineType(types: !91)
!91 = !{null}
!92 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !93, line: 128)
!93 = !DISubprogram(name: "abs", scope: !79, file: !79, line: 774, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!94 = !DISubroutineType(types: !95)
!95 = !{!96, !96}
!96 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !98, line: 129)
!98 = !DISubprogram(name: "atexit", scope: !79, file: !79, line: 519, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!99 = !DISubroutineType(types: !100)
!100 = !{!96, !101}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !103, line: 132)
!103 = !DISubprogram(name: "at_quick_exit", scope: !79, file: !79, line: 524, type: !99, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !105, line: 135)
!105 = !DISubprogram(name: "atof", scope: !79, file: !79, line: 144, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DISubroutineType(types: !107)
!107 = !{!108, !109}
!108 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !113, line: 136)
!113 = !DISubprogram(name: "atoi", scope: !79, file: !79, line: 147, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!96, !109}
!116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !117, line: 137)
!117 = !DISubprogram(name: "atol", scope: !79, file: !79, line: 150, type: !118, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!118 = !DISubroutineType(types: !119)
!119 = !{!86, !109}
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !121, line: 138)
!121 = !DISubprogram(name: "bsearch", scope: !79, file: !79, line: 754, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !68, !68, !125, !125, !128}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 62, baseType: !127)
!126 = !DIFile(filename: "/home/sdasgup3/Github/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!127 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !79, line: 741, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!96, !68, !68}
!132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !133, line: 139)
!133 = !DISubprogram(name: "calloc", scope: !79, file: !79, line: 468, type: !134, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!134 = !DISubroutineType(types: !135)
!135 = !{!124, !125, !125}
!136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !137, line: 140)
!137 = !DISubprogram(name: "div", scope: !79, file: !79, line: 788, type: !138, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!138 = !DISubroutineType(types: !139)
!139 = !{!78, !96, !96}
!140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !141, line: 141)
!141 = !DISubprogram(name: "exit", scope: !79, file: !79, line: 543, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !96}
!144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !145, line: 142)
!145 = !DISubprogram(name: "free", scope: !79, file: !79, line: 483, type: !146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !124}
!148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !149, line: 143)
!149 = !DISubprogram(name: "getenv", scope: !79, file: !79, line: 564, type: !150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !109}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !154, line: 144)
!154 = !DISubprogram(name: "labs", scope: !79, file: !79, line: 775, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!86, !86}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !158, line: 145)
!158 = !DISubprogram(name: "ldiv", scope: !79, file: !79, line: 790, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!82, !86, !86}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !162, line: 146)
!162 = !DISubprogram(name: "malloc", scope: !79, file: !79, line: 466, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{!124, !125}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !166, line: 148)
!166 = !DISubprogram(name: "mblen", scope: !79, file: !79, line: 862, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!96, !109, !125}
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !170, line: 149)
!170 = !DISubprogram(name: "mbstowcs", scope: !79, file: !79, line: 873, type: !171, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DISubroutineType(types: !172)
!172 = !{!125, !173, !176, !125}
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!176 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !178, line: 150)
!178 = !DISubprogram(name: "mbtowc", scope: !79, file: !79, line: 865, type: !179, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DISubroutineType(types: !180)
!180 = !{!96, !173, !176, !125}
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !182, line: 152)
!182 = !DISubprogram(name: "qsort", scope: !79, file: !79, line: 764, type: !183, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !124, !125, !125, !128}
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !186, line: 155)
!186 = !DISubprogram(name: "quick_exit", scope: !79, file: !79, line: 549, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !188, line: 158)
!188 = !DISubprogram(name: "rand", scope: !79, file: !79, line: 374, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!96}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !192, line: 159)
!192 = !DISubprogram(name: "realloc", scope: !79, file: !79, line: 480, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!124, !124, !125}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !196, line: 160)
!196 = !DISubprogram(name: "srand", scope: !79, file: !79, line: 376, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{null, !10}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !200, line: 161)
!200 = !DISubprogram(name: "strtod", scope: !79, file: !79, line: 164, type: !201, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DISubroutineType(types: !202)
!202 = !{!108, !176, !203}
!203 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !206, line: 162)
!206 = !DISubprogram(name: "strtol", scope: !79, file: !79, line: 183, type: !207, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DISubroutineType(types: !208)
!208 = !{!86, !176, !203, !96}
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !210, line: 163)
!210 = !DISubprogram(name: "strtoul", scope: !79, file: !79, line: 187, type: !211, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DISubroutineType(types: !212)
!212 = !{!127, !176, !203, !96}
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !214, line: 164)
!214 = !DISubprogram(name: "system", scope: !79, file: !79, line: 716, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !216, line: 166)
!216 = !DISubprogram(name: "wcstombs", scope: !79, file: !79, line: 876, type: !217, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DISubroutineType(types: !218)
!218 = !{!125, !219, !220, !125}
!219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!220 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !224, line: 167)
!224 = !DISubprogram(name: "wctomb", scope: !79, file: !79, line: 869, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!96, !152, !175}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !229, line: 220)
!228 = !DINamespace(name: "__gnu_cxx", scope: null, file: !76, line: 225)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !79, line: 121, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 117, size: 128, elements: !231, identifier: "_ZTS7lldiv_t")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !230, file: !79, line: 119, baseType: !233, size: 64)
!233 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !230, file: !79, line: 120, baseType: !233, size: 64, offset: 64)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !236, line: 226)
!236 = !DISubprogram(name: "_Exit", scope: !79, file: !79, line: 557, type: !142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !238, line: 230)
!238 = !DISubprogram(name: "llabs", scope: !79, file: !79, line: 779, type: !239, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DISubroutineType(types: !240)
!240 = !{!233, !233}
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !242, line: 236)
!242 = !DISubprogram(name: "lldiv", scope: !79, file: !79, line: 796, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!229, !233, !233}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !246, line: 247)
!246 = !DISubprogram(name: "atoll", scope: !79, file: !79, line: 157, type: !247, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!247 = !DISubroutineType(types: !248)
!248 = !{!233, !109}
!249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !250, line: 248)
!250 = !DISubprogram(name: "strtoll", scope: !79, file: !79, line: 209, type: !251, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!251 = !DISubroutineType(types: !252)
!252 = !{!233, !176, !203, !96}
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !254, line: 249)
!254 = !DISubprogram(name: "strtoull", scope: !79, file: !79, line: 214, type: !255, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !176, !203, !96}
!257 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !259, line: 251)
!259 = !DISubprogram(name: "strtof", scope: !79, file: !79, line: 172, type: !260, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !176, !203}
!262 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !264, line: 252)
!264 = !DISubprogram(name: "strtold", scope: !79, file: !79, line: 175, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!267, !176, !203}
!267 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !229, line: 260)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !236, line: 262)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !238, line: 264)
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !272, line: 265)
!272 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !228, file: !273, line: 233, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/6.5.0/../../../../include/c++/6.5.0/cstdlib", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !242, line: 266)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !246, line: 268)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !259, line: 269)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !250, line: 270)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !254, line: 271)
!279 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !264, line: 272)
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !281, line: 58)
!281 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !283, file: !282, line: 77, size: 64, elements: !284, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!282 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/6.5.0/../../../../include/c++/6.5.0/bits/exception_ptr.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!283 = !DINamespace(name: "__exception_ptr", scope: !75, file: !282, line: 53)
!284 = !{!285, !286, !290, !293, !294, !299, !300, !304, !309, !313, !317, !320, !321, !324, !328}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !281, file: !282, line: 79, baseType: !124, size: 64)
!286 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 81, type: !287, isLocal: false, isDefinition: false, scopeLine: 81, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289, !124}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!290 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !281, file: !282, line: 83, type: !291, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !289}
!293 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !281, file: !282, line: 84, type: !291, isLocal: false, isDefinition: false, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false)
!294 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !281, file: !282, line: 86, type: !295, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!295 = !DISubroutineType(types: !296)
!296 = !{!124, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!299 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 92, type: !291, isLocal: false, isDefinition: false, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!300 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 94, type: !301, isLocal: false, isDefinition: false, scopeLine: 94, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !289, !303}
!303 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !298, size: 64)
!304 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 97, type: !305, isLocal: false, isDefinition: false, scopeLine: 97, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !289, !307}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !75, file: !76, line: 205, baseType: !308)
!308 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!309 = !DISubprogram(name: "exception_ptr", scope: !281, file: !282, line: 101, type: !310, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !289, !312}
!312 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !281, size: 64)
!313 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !281, file: !282, line: 114, type: !314, isLocal: false, isDefinition: false, scopeLine: 114, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !289, !303}
!316 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !281, size: 64)
!317 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !281, file: !282, line: 118, type: !318, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!318 = !DISubroutineType(types: !319)
!319 = !{!316, !289, !312}
!320 = !DISubprogram(name: "~exception_ptr", scope: !281, file: !282, line: 125, type: !291, isLocal: false, isDefinition: false, scopeLine: 125, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!321 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !281, file: !282, line: 128, type: !322, isLocal: false, isDefinition: false, scopeLine: 128, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !289, !316}
!324 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !281, file: !282, line: 140, type: !325, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !297}
!327 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!328 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !281, file: !282, line: 149, type: !329, isLocal: false, isDefinition: false, scopeLine: 149, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !297}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !75, file: !282, line: 47, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !283, entity: !335, line: 71)
!335 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !75, file: !282, line: 67, type: !336, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !281}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !339, line: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !340, line: 106, baseType: !341)
!340 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !340, line: 94, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !340, line: 82, size: 64, elements: !343, identifier: "_ZTS11__mbstate_t")
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !342, file: !340, line: 84, baseType: !96, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !342, file: !340, line: 93, baseType: !346, size: 32, offset: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !340, line: 85, size: 32, elements: !347, identifier: "_ZTSN11__mbstate_tUt_E")
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !346, file: !340, line: 88, baseType: !10, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !346, file: !340, line: 92, baseType: !350, size: 32)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 32, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 4)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !354, line: 139)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !126, line: 132, baseType: !10)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !356, line: 141)
!356 = !DISubprogram(name: "btowc", scope: !340, file: !340, line: 356, type: !357, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!357 = !DISubroutineType(types: !358)
!358 = !{!354, !96}
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !360, line: 142)
!360 = !DISubprogram(name: "fgetwc", scope: !340, file: !340, line: 748, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!361 = !DISubroutineType(types: !362)
!362 = !{!354, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !365, line: 64, baseType: !366)
!365 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !365, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !368, line: 143)
!368 = !DISubprogram(name: "fgetws", scope: !340, file: !340, line: 777, type: !369, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DISubroutineType(types: !370)
!370 = !{!174, !173, !96, !371}
!371 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !363)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !373, line: 144)
!373 = !DISubprogram(name: "fputwc", scope: !340, file: !340, line: 762, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!374 = !DISubroutineType(types: !375)
!375 = !{!354, !175, !363}
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !377, line: 145)
!377 = !DISubprogram(name: "fputws", scope: !340, file: !340, line: 784, type: !378, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!378 = !DISubroutineType(types: !379)
!379 = !{!96, !220, !371}
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !381, line: 146)
!381 = !DISubprogram(name: "fwide", scope: !340, file: !340, line: 590, type: !382, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!382 = !DISubroutineType(types: !383)
!383 = !{!96, !363, !96}
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !385, line: 147)
!385 = !DISubprogram(name: "fwprintf", scope: !340, file: !340, line: 597, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!386 = !DISubroutineType(types: !387)
!387 = !{!96, !371, !220, null}
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !389, line: 148)
!389 = !DISubprogram(name: "fwscanf", scope: !340, file: !340, line: 638, type: !386, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !391, line: 149)
!391 = !DISubprogram(name: "getwc", scope: !340, file: !340, line: 749, type: !361, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !393, line: 150)
!393 = !DISubprogram(name: "getwchar", scope: !340, file: !340, line: 755, type: !394, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubroutineType(types: !395)
!395 = !{!354}
!396 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !397, line: 151)
!397 = !DISubprogram(name: "mbrlen", scope: !340, file: !340, line: 379, type: !398, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{!125, !176, !125, !400}
!400 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !403, line: 152)
!403 = !DISubprogram(name: "mbrtowc", scope: !340, file: !340, line: 368, type: !404, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!404 = !DISubroutineType(types: !405)
!405 = !{!125, !173, !176, !125, !400}
!406 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !407, line: 153)
!407 = !DISubprogram(name: "mbsinit", scope: !340, file: !340, line: 364, type: !408, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!408 = !DISubroutineType(types: !409)
!409 = !{!96, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !413, line: 154)
!413 = !DISubprogram(name: "mbsrtowcs", scope: !340, file: !340, line: 411, type: !414, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!414 = !DISubroutineType(types: !415)
!415 = !{!125, !173, !416, !125, !400}
!416 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !419, line: 155)
!419 = !DISubprogram(name: "putwc", scope: !340, file: !340, line: 763, type: !374, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !421, line: 156)
!421 = !DISubprogram(name: "putwchar", scope: !340, file: !340, line: 769, type: !422, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!422 = !DISubroutineType(types: !423)
!423 = !{!354, !175}
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !425, line: 158)
!425 = !DISubprogram(name: "swprintf", scope: !340, file: !340, line: 607, type: !426, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DISubroutineType(types: !427)
!427 = !{!96, !173, !125, !220, null}
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !429, line: 160)
!429 = !DISubprogram(name: "swscanf", scope: !340, file: !340, line: 648, type: !430, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DISubroutineType(types: !431)
!431 = !{!96, !220, !220, null}
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !433, line: 161)
!433 = !DISubprogram(name: "ungetwc", scope: !340, file: !340, line: 792, type: !434, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{!354, !354, !363}
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !437, line: 162)
!437 = !DISubprogram(name: "vfwprintf", scope: !340, file: !340, line: 615, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DISubroutineType(types: !439)
!439 = !{!96, !371, !220, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !442, identifier: "_ZTS13__va_list_tag")
!442 = !{!443, !444, !445, !446}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !441, file: !2, baseType: !10, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !441, file: !2, baseType: !10, size: 32, offset: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !441, file: !2, baseType: !124, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !441, file: !2, baseType: !124, size: 64, offset: 128)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !448, line: 164)
!448 = !DISubprogram(name: "vfwscanf", scope: !340, file: !340, line: 692, type: !438, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !450, line: 167)
!450 = !DISubprogram(name: "vswprintf", scope: !340, file: !340, line: 628, type: !451, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!451 = !DISubroutineType(types: !452)
!452 = !{!96, !173, !125, !220, !440}
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !454, line: 170)
!454 = !DISubprogram(name: "vswscanf", scope: !340, file: !340, line: 704, type: !455, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!455 = !DISubroutineType(types: !456)
!456 = !{!96, !220, !220, !440}
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !458, line: 172)
!458 = !DISubprogram(name: "vwprintf", scope: !340, file: !340, line: 623, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!459 = !DISubroutineType(types: !460)
!460 = !{!96, !220, !440}
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !462, line: 174)
!462 = !DISubprogram(name: "vwscanf", scope: !340, file: !340, line: 700, type: !459, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !464, line: 176)
!464 = !DISubprogram(name: "wcrtomb", scope: !340, file: !340, line: 373, type: !465, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!465 = !DISubroutineType(types: !466)
!466 = !{!125, !219, !175, !400}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !468, line: 177)
!468 = !DISubprogram(name: "wcscat", scope: !340, file: !340, line: 157, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DISubroutineType(types: !470)
!470 = !{!174, !173, !220}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !472, line: 178)
!472 = !DISubprogram(name: "wcscmp", scope: !340, file: !340, line: 166, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!473 = !DISubroutineType(types: !474)
!474 = !{!96, !221, !221}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !476, line: 179)
!476 = !DISubprogram(name: "wcscoll", scope: !340, file: !340, line: 195, type: !473, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !478, line: 180)
!478 = !DISubprogram(name: "wcscpy", scope: !340, file: !340, line: 147, type: !469, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !480, line: 181)
!480 = !DISubprogram(name: "wcscspn", scope: !340, file: !340, line: 255, type: !481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DISubroutineType(types: !482)
!482 = !{!125, !221, !221}
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !484, line: 182)
!484 = !DISubprogram(name: "wcsftime", scope: !340, file: !340, line: 858, type: !485, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DISubroutineType(types: !486)
!486 = !{!125, !173, !125, !220, !487}
!487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !340, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !492, line: 183)
!492 = !DISubprogram(name: "wcslen", scope: !340, file: !340, line: 290, type: !493, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!493 = !DISubroutineType(types: !494)
!494 = !{!125, !221}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !496, line: 184)
!496 = !DISubprogram(name: "wcsncat", scope: !340, file: !340, line: 161, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DISubroutineType(types: !498)
!498 = !{!174, !173, !220, !125}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !500, line: 185)
!500 = !DISubprogram(name: "wcsncmp", scope: !340, file: !340, line: 169, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!501 = !DISubroutineType(types: !502)
!502 = !{!96, !221, !221, !125}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !504, line: 186)
!504 = !DISubprogram(name: "wcsncpy", scope: !340, file: !340, line: 152, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !506, line: 187)
!506 = !DISubprogram(name: "wcsrtombs", scope: !340, file: !340, line: 417, type: !507, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!507 = !DISubroutineType(types: !508)
!508 = !{!125, !219, !509, !125, !400}
!509 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !512, line: 188)
!512 = !DISubprogram(name: "wcsspn", scope: !340, file: !340, line: 259, type: !481, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !514, line: 189)
!514 = !DISubprogram(name: "wcstod", scope: !340, file: !340, line: 453, type: !515, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!515 = !DISubroutineType(types: !516)
!516 = !{!108, !220, !517}
!517 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !518)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !520, line: 191)
!520 = !DISubprogram(name: "wcstof", scope: !340, file: !340, line: 460, type: !521, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!521 = !DISubroutineType(types: !522)
!522 = !{!262, !220, !517}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !524, line: 193)
!524 = !DISubprogram(name: "wcstok", scope: !340, file: !340, line: 285, type: !525, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DISubroutineType(types: !526)
!526 = !{!174, !173, !220, !517}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !528, line: 194)
!528 = !DISubprogram(name: "wcstol", scope: !340, file: !340, line: 471, type: !529, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DISubroutineType(types: !530)
!530 = !{!86, !220, !517, !96}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !532, line: 195)
!532 = !DISubprogram(name: "wcstoul", scope: !340, file: !340, line: 476, type: !533, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DISubroutineType(types: !534)
!534 = !{!127, !220, !517, !96}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !536, line: 196)
!536 = !DISubprogram(name: "wcsxfrm", scope: !340, file: !340, line: 199, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!125, !173, !220, !125}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !540, line: 197)
!540 = !DISubprogram(name: "wctob", scope: !340, file: !340, line: 360, type: !541, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!96, !354}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !544, line: 198)
!544 = !DISubprogram(name: "wmemcmp", scope: !340, file: !340, line: 328, type: !501, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !546, line: 199)
!546 = !DISubprogram(name: "wmemcpy", scope: !340, file: !340, line: 332, type: !497, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !548, line: 200)
!548 = !DISubprogram(name: "wmemmove", scope: !340, file: !340, line: 337, type: !549, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DISubroutineType(types: !550)
!550 = !{!174, !174, !221, !125}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !552, line: 201)
!552 = !DISubprogram(name: "wmemset", scope: !340, file: !340, line: 341, type: !553, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DISubroutineType(types: !554)
!554 = !{!174, !174, !175, !125}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !556, line: 202)
!556 = !DISubprogram(name: "wprintf", scope: !340, file: !340, line: 604, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DISubroutineType(types: !558)
!558 = !{!96, !220, null}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !560, line: 203)
!560 = !DISubprogram(name: "wscanf", scope: !340, file: !340, line: 645, type: !557, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !562, line: 204)
!562 = !DISubprogram(name: "wcschr", scope: !340, file: !340, line: 230, type: !563, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!563 = !DISubroutineType(types: !564)
!564 = !{!174, !221, !175}
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !566, line: 205)
!566 = !DISubprogram(name: "wcspbrk", scope: !340, file: !340, line: 269, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!174, !221, !221}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !570, line: 206)
!570 = !DISubprogram(name: "wcsrchr", scope: !340, file: !340, line: 240, type: !563, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !572, line: 207)
!572 = !DISubprogram(name: "wcsstr", scope: !340, file: !340, line: 280, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !574, line: 208)
!574 = !DISubprogram(name: "wmemchr", scope: !340, file: !340, line: 323, type: !575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DISubroutineType(types: !576)
!576 = !{!174, !221, !175, !125}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !578, line: 248)
!578 = !DISubprogram(name: "wcstold", scope: !340, file: !340, line: 462, type: !579, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DISubroutineType(types: !580)
!580 = !{!267, !220, !517}
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !582, line: 257)
!582 = !DISubprogram(name: "wcstoll", scope: !340, file: !340, line: 486, type: !583, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DISubroutineType(types: !584)
!584 = !{!233, !220, !517, !96}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !586, line: 258)
!586 = !DISubprogram(name: "wcstoull", scope: !340, file: !340, line: 493, type: !587, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!587 = !DISubroutineType(types: !588)
!588 = !{!257, !220, !517, !96}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !578, line: 264)
!590 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !582, line: 265)
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !586, line: 266)
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !520, line: 280)
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !448, line: 283)
!594 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !454, line: 286)
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !462, line: 289)
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !578, line: 293)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !582, line: 294)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !586, line: 295)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !600, line: 48)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !601, line: 194, baseType: !602)
!601 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!602 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !604, line: 49)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !601, line: 195, baseType: !605)
!605 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !607, line: 50)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !601, line: 196, baseType: !96)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !609, line: 51)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !601, line: 197, baseType: !86)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !611, line: 53)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !600)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !613, line: 54)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !604)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !615, line: 55)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !607)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !617, line: 56)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !609)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !619, line: 58)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !600)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !621, line: 59)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !604)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !623, line: 60)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !607)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !625, line: 61)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !609)
!626 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !627, line: 63)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !86)
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !629, line: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !609)
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !62, line: 66)
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !28, line: 67)
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !8, line: 68)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !634, line: 69)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !127)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !636, line: 71)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !638, line: 72)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !640, line: 73)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !642, line: 74)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !634)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !644, line: 76)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !646, line: 77)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !648, line: 78)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !650, line: 79)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !634)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !652, line: 81)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !127)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !654, line: 82)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !634)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !656, line: 44)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !75, file: !76, line: 201, baseType: !127)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !658, line: 45)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !75, file: !76, line: 202, baseType: !86)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !660, line: 53)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !661, line: 53, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!661 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !663, line: 54)
!663 = !DISubprogram(name: "setlocale", scope: !661, file: !661, line: 124, type: !664, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!664 = !DISubroutineType(types: !665)
!665 = !{!152, !96, !109}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !667, line: 55)
!667 = !DISubprogram(name: "localeconv", scope: !661, file: !661, line: 127, type: !668, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!668 = !DISubroutineType(types: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !672, line: 64)
!672 = !DISubprogram(name: "isalnum", scope: !673, file: !673, line: 110, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!673 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !675, line: 65)
!675 = !DISubprogram(name: "isalpha", scope: !673, file: !673, line: 111, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !677, line: 66)
!677 = !DISubprogram(name: "iscntrl", scope: !673, file: !673, line: 112, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !679, line: 67)
!679 = !DISubprogram(name: "isdigit", scope: !673, file: !673, line: 113, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !681, line: 68)
!681 = !DISubprogram(name: "isgraph", scope: !673, file: !673, line: 115, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !683, line: 69)
!683 = !DISubprogram(name: "islower", scope: !673, file: !673, line: 114, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!684 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !685, line: 70)
!685 = !DISubprogram(name: "isprint", scope: !673, file: !673, line: 116, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!686 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !687, line: 71)
!687 = !DISubprogram(name: "ispunct", scope: !673, file: !673, line: 117, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !689, line: 72)
!689 = !DISubprogram(name: "isspace", scope: !673, file: !673, line: 118, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !691, line: 73)
!691 = !DISubprogram(name: "isupper", scope: !673, file: !673, line: 119, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!692 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !693, line: 74)
!693 = !DISubprogram(name: "isxdigit", scope: !673, file: !673, line: 120, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!694 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !695, line: 75)
!695 = !DISubprogram(name: "tolower", scope: !673, file: !673, line: 124, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!696 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !697, line: 76)
!697 = !DISubprogram(name: "toupper", scope: !673, file: !673, line: 127, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!698 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !699, line: 87)
!699 = !DISubprogram(name: "isblank", scope: !673, file: !673, line: 136, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!700 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !701, line: 98)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !365, line: 48, baseType: !366)
!702 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !703, line: 99)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !365, line: 110, baseType: !704)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !705, line: 25, baseType: !706)
!705 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !705, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !708, line: 101)
!708 = !DISubprogram(name: "clearerr", scope: !365, file: !365, line: 826, type: !709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !713, line: 102)
!713 = !DISubprogram(name: "fclose", scope: !365, file: !365, line: 237, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!714 = !DISubroutineType(types: !715)
!715 = !{!96, !711}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !717, line: 103)
!717 = !DISubprogram(name: "feof", scope: !365, file: !365, line: 828, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !719, line: 104)
!719 = !DISubprogram(name: "ferror", scope: !365, file: !365, line: 830, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !721, line: 105)
!721 = !DISubprogram(name: "fflush", scope: !365, file: !365, line: 242, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !723, line: 106)
!723 = !DISubprogram(name: "fgetc", scope: !365, file: !365, line: 531, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !725, line: 107)
!725 = !DISubprogram(name: "fgetpos", scope: !365, file: !365, line: 798, type: !726, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!726 = !DISubroutineType(types: !727)
!727 = !{!96, !728, !729}
!728 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !711)
!729 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !732, line: 108)
!732 = !DISubprogram(name: "fgets", scope: !365, file: !365, line: 622, type: !733, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!733 = !DISubroutineType(types: !734)
!734 = !{!152, !219, !96, !728}
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !736, line: 109)
!736 = !DISubprogram(name: "fopen", scope: !365, file: !365, line: 272, type: !737, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!737 = !DISubroutineType(types: !738)
!738 = !{!711, !176, !176}
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !740, line: 110)
!740 = !DISubprogram(name: "fprintf", scope: !365, file: !365, line: 356, type: !741, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!741 = !DISubroutineType(types: !742)
!742 = !{!96, !728, !176, null}
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !744, line: 111)
!744 = !DISubprogram(name: "fputc", scope: !365, file: !365, line: 573, type: !745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!745 = !DISubroutineType(types: !746)
!746 = !{!96, !96, !711}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !748, line: 112)
!748 = !DISubprogram(name: "fputs", scope: !365, file: !365, line: 689, type: !749, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!749 = !DISubroutineType(types: !750)
!750 = !{!96, !176, !728}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !752, line: 113)
!752 = !DISubprogram(name: "fread", scope: !365, file: !365, line: 709, type: !753, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!753 = !DISubroutineType(types: !754)
!754 = !{!125, !755, !125, !125, !728}
!755 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !757, line: 114)
!757 = !DISubprogram(name: "freopen", scope: !365, file: !365, line: 278, type: !758, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!758 = !DISubroutineType(types: !759)
!759 = !{!711, !176, !176, !728}
!760 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !761, line: 115)
!761 = !DISubprogram(name: "fscanf", scope: !365, file: !365, line: 425, type: !741, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !763, line: 116)
!763 = !DISubprogram(name: "fseek", scope: !365, file: !365, line: 749, type: !764, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!764 = !DISubroutineType(types: !765)
!765 = !{!96, !711, !86, !96}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !767, line: 117)
!767 = !DISubprogram(name: "fsetpos", scope: !365, file: !365, line: 803, type: !768, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!768 = !DISubroutineType(types: !769)
!769 = !{!96, !711, !770}
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !773, line: 118)
!773 = !DISubprogram(name: "ftell", scope: !365, file: !365, line: 754, type: !774, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!774 = !DISubroutineType(types: !775)
!775 = !{!86, !711}
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !777, line: 119)
!777 = !DISubprogram(name: "fwrite", scope: !365, file: !365, line: 715, type: !778, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!778 = !DISubroutineType(types: !779)
!779 = !{!125, !780, !125, !125, !728}
!780 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!781 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !782, line: 120)
!782 = !DISubprogram(name: "getc", scope: !365, file: !365, line: 532, type: !714, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!783 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !784, line: 121)
!784 = !DISubprogram(name: "getchar", scope: !365, file: !365, line: 538, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!785 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !786, line: 124)
!786 = !DISubprogram(name: "gets", scope: !365, file: !365, line: 638, type: !787, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!787 = !DISubroutineType(types: !788)
!788 = !{!152, !152}
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !790, line: 126)
!790 = !DISubprogram(name: "perror", scope: !365, file: !365, line: 846, type: !791, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !109}
!793 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !794, line: 127)
!794 = !DISubprogram(name: "printf", scope: !365, file: !365, line: 362, type: !795, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!795 = !DISubroutineType(types: !796)
!796 = !{!96, !176, null}
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !798, line: 128)
!798 = !DISubprogram(name: "putc", scope: !365, file: !365, line: 574, type: !745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!799 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !800, line: 129)
!800 = !DISubprogram(name: "putchar", scope: !365, file: !365, line: 580, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !802, line: 130)
!802 = !DISubprogram(name: "puts", scope: !365, file: !365, line: 695, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !804, line: 131)
!804 = !DISubprogram(name: "remove", scope: !365, file: !365, line: 178, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !806, line: 132)
!806 = !DISubprogram(name: "rename", scope: !365, file: !365, line: 180, type: !807, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!807 = !DISubroutineType(types: !808)
!808 = !{!96, !109, !109}
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !810, line: 133)
!810 = !DISubprogram(name: "rewind", scope: !365, file: !365, line: 759, type: !709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!811 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !812, line: 134)
!812 = !DISubprogram(name: "scanf", scope: !365, file: !365, line: 431, type: !795, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !814, line: 135)
!814 = !DISubprogram(name: "setbuf", scope: !365, file: !365, line: 332, type: !815, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !728, !219}
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !818, line: 136)
!818 = !DISubprogram(name: "setvbuf", scope: !365, file: !365, line: 336, type: !819, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!819 = !DISubroutineType(types: !820)
!820 = !{!96, !728, !219, !96, !125}
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !822, line: 137)
!822 = !DISubprogram(name: "sprintf", scope: !365, file: !365, line: 364, type: !823, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!823 = !DISubroutineType(types: !824)
!824 = !{!96, !219, !176, null}
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !826, line: 138)
!826 = !DISubprogram(name: "sscanf", scope: !365, file: !365, line: 433, type: !827, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!827 = !DISubroutineType(types: !828)
!828 = !{!96, !176, !176, null}
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !830, line: 139)
!830 = !DISubprogram(name: "tmpfile", scope: !365, file: !365, line: 195, type: !831, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!831 = !DISubroutineType(types: !832)
!832 = !{!711}
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !834, line: 141)
!834 = !DISubprogram(name: "tmpnam", scope: !365, file: !365, line: 209, type: !787, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!835 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !836, line: 143)
!836 = !DISubprogram(name: "ungetc", scope: !365, file: !365, line: 702, type: !745, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !838, line: 144)
!838 = !DISubprogram(name: "vfprintf", scope: !365, file: !365, line: 371, type: !839, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!839 = !DISubroutineType(types: !840)
!840 = !{!96, !728, !176, !440}
!841 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !842, line: 145)
!842 = !DISubprogram(name: "vprintf", scope: !365, file: !365, line: 377, type: !843, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!843 = !DISubroutineType(types: !844)
!844 = !{!96, !176, !440}
!845 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !846, line: 146)
!846 = !DISubprogram(name: "vsprintf", scope: !365, file: !365, line: 379, type: !847, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!847 = !DISubroutineType(types: !848)
!848 = !{!96, !219, !176, !440}
!849 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !850, line: 175)
!850 = !DISubprogram(name: "snprintf", scope: !365, file: !365, line: 386, type: !851, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!851 = !DISubroutineType(types: !852)
!852 = !{!96, !219, !125, !176, null}
!853 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !854, line: 176)
!854 = !DISubprogram(name: "vfscanf", scope: !365, file: !365, line: 471, type: !839, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!855 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !856, line: 177)
!856 = !DISubprogram(name: "vscanf", scope: !365, file: !365, line: 479, type: !843, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!857 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !858, line: 178)
!858 = !DISubprogram(name: "vsnprintf", scope: !365, file: !365, line: 390, type: !859, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!859 = !DISubroutineType(types: !860)
!860 = !{!96, !219, !125, !176, !440}
!861 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !228, entity: !862, line: 179)
!862 = !DISubprogram(name: "vsscanf", scope: !365, file: !365, line: 483, type: !863, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!863 = !DISubroutineType(types: !864)
!864 = !{!96, !176, !176, !440}
!865 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !850, line: 185)
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !854, line: 186)
!867 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !856, line: 187)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !858, line: 188)
!869 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !862, line: 189)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !871, line: 106)
!871 = !DISubprogram(name: "acos", scope: !872, file: !872, line: 54, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!872 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!873 = !DISubroutineType(types: !874)
!874 = !{!108, !108}
!875 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !876, line: 125)
!876 = !DISubprogram(name: "asin", scope: !872, file: !872, line: 56, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!877 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !878, line: 144)
!878 = !DISubprogram(name: "atan", scope: !872, file: !872, line: 58, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!879 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !880, line: 163)
!880 = !DISubprogram(name: "atan2", scope: !872, file: !872, line: 60, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!881 = !DISubroutineType(types: !882)
!882 = !{!108, !108, !108}
!883 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !884, line: 184)
!884 = !DISubprogram(name: "ceil", scope: !872, file: !872, line: 178, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!885 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !886, line: 203)
!886 = !DISubprogram(name: "cos", scope: !872, file: !872, line: 63, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!887 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !888, line: 222)
!888 = !DISubprogram(name: "cosh", scope: !872, file: !872, line: 72, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!889 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !890, line: 241)
!890 = !DISubprogram(name: "exp", scope: !872, file: !872, line: 100, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!891 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !892, line: 260)
!892 = !DISubprogram(name: "fabs", scope: !872, file: !872, line: 181, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!893 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !894, line: 279)
!894 = !DISubprogram(name: "floor", scope: !872, file: !872, line: 184, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!895 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !896, line: 298)
!896 = !DISubprogram(name: "fmod", scope: !872, file: !872, line: 187, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!897 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !898, line: 319)
!898 = !DISubprogram(name: "frexp", scope: !872, file: !872, line: 103, type: !899, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!899 = !DISubroutineType(types: !900)
!900 = !{!108, !108, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!902 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !903, line: 338)
!903 = !DISubprogram(name: "ldexp", scope: !872, file: !872, line: 106, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!904 = !DISubroutineType(types: !905)
!905 = !{!108, !108, !96}
!906 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !907, line: 357)
!907 = !DISubprogram(name: "log", scope: !872, file: !872, line: 109, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !909, line: 376)
!909 = !DISubprogram(name: "log10", scope: !872, file: !872, line: 112, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!910 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !911, line: 395)
!911 = !DISubprogram(name: "modf", scope: !872, file: !872, line: 115, type: !912, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!912 = !DISubroutineType(types: !913)
!913 = !{!108, !108, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !916, line: 407)
!916 = !DISubprogram(name: "pow", scope: !872, file: !872, line: 153, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!917 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !918, line: 444)
!918 = !DISubprogram(name: "sin", scope: !872, file: !872, line: 65, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !920, line: 463)
!920 = !DISubprogram(name: "sinh", scope: !872, file: !872, line: 74, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!921 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !922, line: 482)
!922 = !DISubprogram(name: "sqrt", scope: !872, file: !872, line: 156, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!923 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !924, line: 501)
!924 = !DISubprogram(name: "tan", scope: !872, file: !872, line: 67, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!925 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !926, line: 520)
!926 = !DISubprogram(name: "tanh", scope: !872, file: !872, line: 76, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!927 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !928, line: 1101)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !929, line: 29, baseType: !108)
!929 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathdef.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !931, line: 1102)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !929, line: 28, baseType: !262)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !933, line: 1105)
!933 = !DISubprogram(name: "acosh", scope: !872, file: !872, line: 88, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !935, line: 1106)
!935 = !DISubprogram(name: "acoshf", scope: !872, file: !872, line: 88, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!936 = !DISubroutineType(types: !937)
!937 = !{!262, !262}
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !939, line: 1107)
!939 = !DISubprogram(name: "acoshl", scope: !872, file: !872, line: 88, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!940 = !DISubroutineType(types: !941)
!941 = !{!267, !267}
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !943, line: 1109)
!943 = !DISubprogram(name: "asinh", scope: !872, file: !872, line: 90, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !945, line: 1110)
!945 = !DISubprogram(name: "asinhf", scope: !872, file: !872, line: 90, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !947, line: 1111)
!947 = !DISubprogram(name: "asinhl", scope: !872, file: !872, line: 90, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !949, line: 1113)
!949 = !DISubprogram(name: "atanh", scope: !872, file: !872, line: 92, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!950 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !951, line: 1114)
!951 = !DISubprogram(name: "atanhf", scope: !872, file: !872, line: 92, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!952 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !953, line: 1115)
!953 = !DISubprogram(name: "atanhl", scope: !872, file: !872, line: 92, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!954 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !955, line: 1117)
!955 = !DISubprogram(name: "cbrt", scope: !872, file: !872, line: 169, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!956 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !957, line: 1118)
!957 = !DISubprogram(name: "cbrtf", scope: !872, file: !872, line: 169, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!958 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !959, line: 1119)
!959 = !DISubprogram(name: "cbrtl", scope: !872, file: !872, line: 169, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!960 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !961, line: 1121)
!961 = !DISubprogram(name: "copysign", scope: !872, file: !872, line: 221, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!962 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !963, line: 1122)
!963 = !DISubprogram(name: "copysignf", scope: !872, file: !872, line: 221, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!964 = !DISubroutineType(types: !965)
!965 = !{!262, !262, !262}
!966 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !967, line: 1123)
!967 = !DISubprogram(name: "copysignl", scope: !872, file: !872, line: 221, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!968 = !DISubroutineType(types: !969)
!969 = !{!267, !267, !267}
!970 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !971, line: 1125)
!971 = !DISubprogram(name: "erf", scope: !872, file: !872, line: 259, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!972 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !973, line: 1126)
!973 = !DISubprogram(name: "erff", scope: !872, file: !872, line: 259, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!974 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !975, line: 1127)
!975 = !DISubprogram(name: "erfl", scope: !872, file: !872, line: 259, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!976 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !977, line: 1129)
!977 = !DISubprogram(name: "erfc", scope: !872, file: !872, line: 260, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !979, line: 1130)
!979 = !DISubprogram(name: "erfcf", scope: !872, file: !872, line: 260, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!980 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !981, line: 1131)
!981 = !DISubprogram(name: "erfcl", scope: !872, file: !872, line: 260, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !983, line: 1133)
!983 = !DISubprogram(name: "exp2", scope: !872, file: !872, line: 141, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!984 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !985, line: 1134)
!985 = !DISubprogram(name: "exp2f", scope: !872, file: !872, line: 141, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!986 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !987, line: 1135)
!987 = !DISubprogram(name: "exp2l", scope: !872, file: !872, line: 141, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!988 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !989, line: 1137)
!989 = !DISubprogram(name: "expm1", scope: !872, file: !872, line: 128, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !991, line: 1138)
!991 = !DISubprogram(name: "expm1f", scope: !872, file: !872, line: 128, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !993, line: 1139)
!993 = !DISubprogram(name: "expm1l", scope: !872, file: !872, line: 128, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !995, line: 1141)
!995 = !DISubprogram(name: "fdim", scope: !872, file: !872, line: 347, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !997, line: 1142)
!997 = !DISubprogram(name: "fdimf", scope: !872, file: !872, line: 347, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !999, line: 1143)
!999 = !DISubprogram(name: "fdiml", scope: !872, file: !872, line: 347, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1001, line: 1145)
!1001 = !DISubprogram(name: "fma", scope: !872, file: !872, line: 366, type: !1002, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!108, !108, !108, !108}
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1005, line: 1146)
!1005 = !DISubprogram(name: "fmaf", scope: !872, file: !872, line: 366, type: !1006, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!262, !262, !262, !262}
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1009, line: 1147)
!1009 = !DISubprogram(name: "fmal", scope: !872, file: !872, line: 366, type: !1010, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!267, !267, !267, !267}
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1013, line: 1149)
!1013 = !DISubprogram(name: "fmax", scope: !872, file: !872, line: 350, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1015, line: 1150)
!1015 = !DISubprogram(name: "fmaxf", scope: !872, file: !872, line: 350, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1017, line: 1151)
!1017 = !DISubprogram(name: "fmaxl", scope: !872, file: !872, line: 350, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1019, line: 1153)
!1019 = !DISubprogram(name: "fmin", scope: !872, file: !872, line: 353, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1020 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1021, line: 1154)
!1021 = !DISubprogram(name: "fminf", scope: !872, file: !872, line: 353, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1022 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1023, line: 1155)
!1023 = !DISubprogram(name: "fminl", scope: !872, file: !872, line: 353, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1024 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1025, line: 1157)
!1025 = !DISubprogram(name: "hypot", scope: !872, file: !872, line: 162, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1026 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1027, line: 1158)
!1027 = !DISubprogram(name: "hypotf", scope: !872, file: !872, line: 162, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1029, line: 1159)
!1029 = !DISubprogram(name: "hypotl", scope: !872, file: !872, line: 162, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1030 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1031, line: 1161)
!1031 = !DISubprogram(name: "ilogb", scope: !872, file: !872, line: 306, type: !1032, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!96, !108}
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1035, line: 1162)
!1035 = !DISubprogram(name: "ilogbf", scope: !872, file: !872, line: 306, type: !1036, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!96, !262}
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1039, line: 1163)
!1039 = !DISubprogram(name: "ilogbl", scope: !872, file: !872, line: 306, type: !1040, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!96, !267}
!1042 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1043, line: 1165)
!1043 = !DISubprogram(name: "lgamma", scope: !872, file: !872, line: 261, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1044 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1045, line: 1166)
!1045 = !DISubprogram(name: "lgammaf", scope: !872, file: !872, line: 261, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1046 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1047, line: 1167)
!1047 = !DISubprogram(name: "lgammal", scope: !872, file: !872, line: 261, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1048 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1049, line: 1169)
!1049 = !DISubprogram(name: "llrint", scope: !872, file: !872, line: 337, type: !1050, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!233, !108}
!1052 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1053, line: 1170)
!1053 = !DISubprogram(name: "llrintf", scope: !872, file: !872, line: 337, type: !1054, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!233, !262}
!1056 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1057, line: 1171)
!1057 = !DISubprogram(name: "llrintl", scope: !872, file: !872, line: 337, type: !1058, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!233, !267}
!1060 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1061, line: 1173)
!1061 = !DISubprogram(name: "llround", scope: !872, file: !872, line: 343, type: !1050, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1062 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1063, line: 1174)
!1063 = !DISubprogram(name: "llroundf", scope: !872, file: !872, line: 343, type: !1054, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1064 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1065, line: 1175)
!1065 = !DISubprogram(name: "llroundl", scope: !872, file: !872, line: 343, type: !1058, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1066 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1067, line: 1177)
!1067 = !DISubprogram(name: "log1p", scope: !872, file: !872, line: 131, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1068 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1069, line: 1178)
!1069 = !DISubprogram(name: "log1pf", scope: !872, file: !872, line: 131, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1070 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1071, line: 1179)
!1071 = !DISubprogram(name: "log1pl", scope: !872, file: !872, line: 131, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1073, line: 1181)
!1073 = !DISubprogram(name: "log2", scope: !872, file: !872, line: 144, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1074 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1075, line: 1182)
!1075 = !DISubprogram(name: "log2f", scope: !872, file: !872, line: 144, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1077, line: 1183)
!1077 = !DISubprogram(name: "log2l", scope: !872, file: !872, line: 144, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1079, line: 1185)
!1079 = !DISubprogram(name: "logb", scope: !872, file: !872, line: 134, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1080 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1081, line: 1186)
!1081 = !DISubprogram(name: "logbf", scope: !872, file: !872, line: 134, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1083, line: 1187)
!1083 = !DISubprogram(name: "logbl", scope: !872, file: !872, line: 134, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1084 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1085, line: 1189)
!1085 = !DISubprogram(name: "lrint", scope: !872, file: !872, line: 335, type: !1086, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!86, !108}
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1089, line: 1190)
!1089 = !DISubprogram(name: "lrintf", scope: !872, file: !872, line: 335, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!86, !262}
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1093, line: 1191)
!1093 = !DISubprogram(name: "lrintl", scope: !872, file: !872, line: 335, type: !1094, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!86, !267}
!1096 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1097, line: 1193)
!1097 = !DISubprogram(name: "lround", scope: !872, file: !872, line: 341, type: !1086, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1098 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1099, line: 1194)
!1099 = !DISubprogram(name: "lroundf", scope: !872, file: !872, line: 341, type: !1090, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1101, line: 1195)
!1101 = !DISubprogram(name: "lroundl", scope: !872, file: !872, line: 341, type: !1094, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1103, line: 1197)
!1103 = !DISubprogram(name: "nan", scope: !872, file: !872, line: 228, type: !106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1105, line: 1198)
!1105 = !DISubprogram(name: "nanf", scope: !872, file: !872, line: 228, type: !1106, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!262, !109}
!1108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1109, line: 1199)
!1109 = !DISubprogram(name: "nanl", scope: !872, file: !872, line: 228, type: !1110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!267, !109}
!1112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1113, line: 1201)
!1113 = !DISubprogram(name: "nearbyint", scope: !872, file: !872, line: 315, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1115, line: 1202)
!1115 = !DISubprogram(name: "nearbyintf", scope: !872, file: !872, line: 315, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1116 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1117, line: 1203)
!1117 = !DISubprogram(name: "nearbyintl", scope: !872, file: !872, line: 315, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1119, line: 1205)
!1119 = !DISubprogram(name: "nextafter", scope: !872, file: !872, line: 292, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1121, line: 1206)
!1121 = !DISubprogram(name: "nextafterf", scope: !872, file: !872, line: 292, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1122 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1123, line: 1207)
!1123 = !DISubprogram(name: "nextafterl", scope: !872, file: !872, line: 292, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1125, line: 1209)
!1125 = !DISubprogram(name: "nexttoward", scope: !872, file: !872, line: 294, type: !1126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!108, !108, !267}
!1128 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1129, line: 1210)
!1129 = !DISubprogram(name: "nexttowardf", scope: !872, file: !872, line: 294, type: !1130, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!262, !262, !267}
!1132 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1133, line: 1211)
!1133 = !DISubprogram(name: "nexttowardl", scope: !872, file: !872, line: 294, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1135, line: 1213)
!1135 = !DISubprogram(name: "remainder", scope: !872, file: !872, line: 298, type: !881, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1136 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1137, line: 1214)
!1137 = !DISubprogram(name: "remainderf", scope: !872, file: !872, line: 298, type: !964, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1139, line: 1215)
!1139 = !DISubprogram(name: "remainderl", scope: !872, file: !872, line: 298, type: !968, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1140 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1141, line: 1217)
!1141 = !DISubprogram(name: "remquo", scope: !872, file: !872, line: 328, type: !1142, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!108, !108, !108, !901}
!1144 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1145, line: 1218)
!1145 = !DISubprogram(name: "remquof", scope: !872, file: !872, line: 328, type: !1146, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!262, !262, !262, !901}
!1148 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1149, line: 1219)
!1149 = !DISubprogram(name: "remquol", scope: !872, file: !872, line: 328, type: !1150, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!267, !267, !267, !901}
!1152 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1153, line: 1221)
!1153 = !DISubprogram(name: "rint", scope: !872, file: !872, line: 289, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1154 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1155, line: 1222)
!1155 = !DISubprogram(name: "rintf", scope: !872, file: !872, line: 289, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1156 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1157, line: 1223)
!1157 = !DISubprogram(name: "rintl", scope: !872, file: !872, line: 289, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1158 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1159, line: 1225)
!1159 = !DISubprogram(name: "round", scope: !872, file: !872, line: 319, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1160 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1161, line: 1226)
!1161 = !DISubprogram(name: "roundf", scope: !872, file: !872, line: 319, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1162 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1163, line: 1227)
!1163 = !DISubprogram(name: "roundl", scope: !872, file: !872, line: 319, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1164 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1165, line: 1229)
!1165 = !DISubprogram(name: "scalbln", scope: !872, file: !872, line: 311, type: !1166, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!108, !108, !86}
!1168 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1169, line: 1230)
!1169 = !DISubprogram(name: "scalblnf", scope: !872, file: !872, line: 311, type: !1170, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!262, !262, !86}
!1172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1173, line: 1231)
!1173 = !DISubprogram(name: "scalblnl", scope: !872, file: !872, line: 311, type: !1174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!267, !267, !86}
!1176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1177, line: 1233)
!1177 = !DISubprogram(name: "scalbn", scope: !872, file: !872, line: 302, type: !904, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1179, line: 1234)
!1179 = !DISubprogram(name: "scalbnf", scope: !872, file: !872, line: 302, type: !1180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!262, !262, !96}
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1183, line: 1235)
!1183 = !DISubprogram(name: "scalbnl", scope: !872, file: !872, line: 302, type: !1184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!267, !267, !96}
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1187, line: 1237)
!1187 = !DISubprogram(name: "tgamma", scope: !872, file: !872, line: 268, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1188 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1189, line: 1238)
!1189 = !DISubprogram(name: "tgammaf", scope: !872, file: !872, line: 268, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1191, line: 1239)
!1191 = !DISubprogram(name: "tgammal", scope: !872, file: !872, line: 268, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1193, line: 1241)
!1193 = !DISubprogram(name: "trunc", scope: !872, file: !872, line: 323, type: !873, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1195, line: 1242)
!1195 = !DISubprogram(name: "truncf", scope: !872, file: !872, line: 323, type: !936, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1196 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1197, line: 1243)
!1197 = !DISubprogram(name: "truncl", scope: !872, file: !872, line: 323, type: !940, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1199, line: 58)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1200, line: 94, baseType: !1201)
!1200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1200, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1203, line: 59)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1200, line: 68, baseType: !29)
!1204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1205, line: 62)
!1205 = !DISubprogram(name: "feclearexcept", scope: !1206, file: !1206, line: 64, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1206 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/sdasgup3/Github/remill/remill-build/remill/Arch/X86/Runtime")
!1207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1208, line: 63)
!1208 = !DISubprogram(name: "fegetexceptflag", scope: !1206, file: !1206, line: 68, type: !1209, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!96, !1211, !96}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1213, line: 64)
!1213 = !DISubprogram(name: "feraiseexcept", scope: !1206, file: !1206, line: 71, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1215, line: 65)
!1215 = !DISubprogram(name: "fesetexceptflag", scope: !1206, file: !1206, line: 75, type: !1216, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!96, !1218, !96}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1203)
!1220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1221, line: 66)
!1221 = !DISubprogram(name: "fetestexcept", scope: !1206, file: !1206, line: 79, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1222 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1223, line: 68)
!1223 = !DISubprogram(name: "fegetround", scope: !1206, file: !1206, line: 85, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1224 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1225, line: 69)
!1225 = !DISubprogram(name: "fesetround", scope: !1206, file: !1206, line: 88, type: !94, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1226 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1227, line: 71)
!1227 = !DISubprogram(name: "fegetenv", scope: !1206, file: !1206, line: 95, type: !1228, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!96, !1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1232, line: 72)
!1232 = !DISubprogram(name: "feholdexcept", scope: !1206, file: !1206, line: 100, type: !1228, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1234, line: 73)
!1234 = !DISubprogram(name: "fesetenv", scope: !1206, file: !1206, line: 104, type: !1235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!96, !1237}
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1240, line: 74)
!1240 = !DISubprogram(name: "feupdateenv", scope: !1206, file: !1206, line: 109, type: !1235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!1241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1199, line: 61)
!1242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1203, line: 62)
!1243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1205, line: 65)
!1244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1208, line: 66)
!1245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1213, line: 67)
!1246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1215, line: 68)
!1247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1221, line: 69)
!1248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1223, line: 71)
!1249 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1225, line: 72)
!1250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1227, line: 74)
!1251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1232, line: 75)
!1252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1234, line: 76)
!1253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !75, entity: !1240, line: 77)
!1254 = !{i32 2, !"Dwarf Version", i32 4}
!1255 = !{i32 2, !"Debug Info Version", i32 3}
!1256 = !{!1257, !1257, i64 0}
!1257 = !{!"long", !1258, i64 0}
!1258 = !{!"omnipotent char", !1259, i64 0}
!1259 = !{!"Simple C++ TBAA"}
!1260 = !{!1261, !1258, i64 2065}
!1261 = !{!"_ZTS5State", !1258, i64 16, !1262, i64 2064, !1258, i64 2080, !1263, i64 2088, !1265, i64 2112, !1267, i64 2208, !1268, i64 2480, !1269, i64 2608, !1270, i64 2736, !1258, i64 2760, !1258, i64 2768, !1271, i64 3280}
!1262 = !{!"_ZTS10ArithFlags", !1258, i64 0, !1258, i64 1, !1258, i64 2, !1258, i64 3, !1258, i64 4, !1258, i64 5, !1258, i64 6, !1258, i64 7, !1258, i64 8, !1258, i64 9, !1258, i64 10, !1258, i64 11, !1258, i64 12, !1258, i64 13, !1258, i64 14, !1258, i64 15}
!1263 = !{!"_ZTS8Segments", !1264, i64 0, !1258, i64 2, !1264, i64 4, !1258, i64 6, !1264, i64 8, !1258, i64 10, !1264, i64 12, !1258, i64 14, !1264, i64 16, !1258, i64 18, !1264, i64 20, !1258, i64 22}
!1264 = !{!"short", !1258, i64 0}
!1265 = !{!"_ZTS12AddressSpace", !1257, i64 0, !1266, i64 8, !1257, i64 16, !1266, i64 24, !1257, i64 32, !1266, i64 40, !1257, i64 48, !1266, i64 56, !1257, i64 64, !1266, i64 72, !1257, i64 80, !1266, i64 88}
!1266 = !{!"_ZTS3Reg", !1258, i64 0}
!1267 = !{!"_ZTS3GPR", !1257, i64 0, !1266, i64 8, !1257, i64 16, !1266, i64 24, !1257, i64 32, !1266, i64 40, !1257, i64 48, !1266, i64 56, !1257, i64 64, !1266, i64 72, !1257, i64 80, !1266, i64 88, !1257, i64 96, !1266, i64 104, !1257, i64 112, !1266, i64 120, !1257, i64 128, !1266, i64 136, !1257, i64 144, !1266, i64 152, !1257, i64 160, !1266, i64 168, !1257, i64 176, !1266, i64 184, !1257, i64 192, !1266, i64 200, !1257, i64 208, !1266, i64 216, !1257, i64 224, !1266, i64 232, !1257, i64 240, !1266, i64 248, !1257, i64 256, !1266, i64 264}
!1268 = !{!"_ZTS8X87Stack", !1258, i64 0}
!1269 = !{!"_ZTS3MMX", !1258, i64 0}
!1270 = !{!"_ZTS14FPUStatusFlags", !1258, i64 0, !1258, i64 1, !1258, i64 2, !1258, i64 3, !1258, i64 4, !1258, i64 5, !1258, i64 6, !1258, i64 7, !1258, i64 8, !1258, i64 9, !1258, i64 10, !1258, i64 11, !1258, i64 12, !1258, i64 13, !1258, i64 14, !1258, i64 15, !1258, i64 16, !1258, i64 17, !1258, i64 18, !1258, i64 19, !1258, i64 20}
!1271 = !{!"_ZTS13SegmentCaches", !1272, i64 0, !1272, i64 16, !1272, i64 32, !1272, i64 48, !1272, i64 64, !1272, i64 80}
!1272 = !{!"_ZTS13SegmentShadow", !1258, i64 0, !1273, i64 8, !1273, i64 12}
!1273 = !{!"int", !1258, i64 0}
!1274 = !{!1261, !1258, i64 2067}
!1275 = !{!1261, !1258, i64 2069}
!1276 = !{!1261, !1258, i64 2071}
!1277 = !{!1261, !1258, i64 2073}
!1278 = !{!1261, !1258, i64 2077}
!1279 = !{!1258, !1258, i64 0}
